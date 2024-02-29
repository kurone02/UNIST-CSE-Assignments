import numpy as np
from scipy.stats import spearmanr
from scipy.sparse import lil_matrix
from tqdm import tqdm


WIKI_FILE = "wiki-1percent.txt"


vocab = []
id_vocab = {}
context = []
id_context = {}

C = np.array([0])
Cpmi = np.array([0])
word_countV = np.array([0])
word_countVc = np.array([0])
total_tokens = 0

sparse_count = {}


def ReadWords(filename):
    with open(filename) as f:
        word_list = f.read().split('\n')
        if word_list[-1] == "":
            word_list.pop()
        id_word = {}
        for idx, word in enumerate(word_list):
            id_word[word] = idx

        return word_list, id_word
    

def CosineSimilarity(x, y):
    len_x = np.linalg.norm(x)
    len_y = np.linalg.norm(y)
    if len_x * len_y == 0:
        return 0
    return np.dot(x, y) / (len_x * len_y)


def GetCorrelation(M, dataset):
    global id_vocab
    ref_score = []
    our_score = []
    with open(dataset) as f:
        for idx, tokens in enumerate(f):
            if idx == 0:
                continue
            if tokens == "":
                continue
            tokens = tokens.split()
            word1, word2, score = tokens[0], tokens[1], float(tokens[2])
            ref_score.append(score)
            if (word1 not in id_vocab) or (word2 not in id_vocab):
                our_score.append(0)
            else:
                id1 = id_vocab[word1]
                id2 = id_vocab[word2]
                cosine_sim = CosineSimilarity(M[id1], M[id2])
                our_score.append(cosine_sim)
    return spearmanr(our_score, ref_score)


def EVALWS(M):
    return {
        "MEN": GetCorrelation(M, "men.txt").statistic,
        "SimLex-999": GetCorrelation(M, "simlex-999.txt").statistic
    }


def DistributionalCounting(w=3):
    global C, vocab, id_vocab, context, id_context, total_tokens, word_countV, word_countVc
    word_countV = np.zeros(len(vocab))
    word_countVc = np.zeros(len(context))
    C = np.zeros((len(vocab), len(context)))
    total_tokens = 0
    with open(WIKI_FILE) as f:
        for sentence in f:
            sentence = "<s> " + sentence.strip() + " </s>"
            sentence = sentence.split()
            n = len(sentence)
            for i in range(n):
                if sentence[i] in id_vocab:
                    word_countV[id_vocab[sentence[i]]] += 1
                if sentence[i] in id_context:
                    word_countVc[id_context[sentence[i]]] += 1
                total_tokens += 1
                if sentence[i] not in id_vocab:
                    continue
                idV = id_vocab[sentence[i]]
                for k in range(1, w + 1):
                    # left
                    j = i - k
                    if j >= 0 and sentence[j] in id_context:
                        idVc = id_context[sentence[j]]
                        C[idV, idVc] += 1
                    # right
                    j = i + k
                    if j < n and sentence[j] in id_context:
                        idVc = id_context[sentence[j]]
                        C[idV, idVc] += 1
    return EVALWS(C)


def ComputingPMIs():
    global C, Cpmi, total_tokens, word_countV, word_countVc
    pxy = C
    px = (word_countV.reshape(len(vocab), 1)) @ np.ones((1, len(context)))
    py = np.ones((len(vocab), 1)) @ (word_countVc.reshape(1, len(context)))
    np.seterr(divide = 'ignore', invalid='ignore') 
    Cpmi = np.log2(pxy / (px * py) * total_tokens)
    np.nan_to_num(Cpmi, copy=False, nan=0.0, posinf=0.0, neginf=0.0)
    Cpmi = Cpmi.reshape(len(vocab), len(context))
    np.seterr(divide = 'warn', invalid='warn') 
    return EVALWS(Cpmi)


def Counting(w):
    global Cpmi, context, id_context, total_tokens, word_countVc, sparse_count
    word_countVc = np.zeros(len(context))
    total_tokens = 0
    total_pairs = 0
    with open(WIKI_FILE) as f:
        for sentence in tqdm(f):
            sentence = "<s> " + sentence.strip() + " </s>"
            sentence = sentence.split()
            n = len(sentence)
            for i in range(n):                    
                if sentence[i] not in id_context:
                    continue
                total_tokens += 1
                word_countVc[id_context[sentence[i]]] += 1
                idV = id_context[sentence[i]]
                if idV not in sparse_count:
                    sparse_count[idV] = {}
                for j in range(max(0, i - w), min(n, i + w + 1)):
                    if i == j: continue
                    if sentence[j] not in id_context: continue
                    idVc = id_context[sentence[j]]
                    if idVc not in sparse_count[idV]:
                        sparse_count[idV][idVc] = 0
                    sparse_count[idV][idVc] += 1
                    total_pairs += 1

    print("DONE READING THE CORPUS")

    Cpmi = {}
    for vocab_word in sparse_count:
        Cpmi[vocab_word] = {}
        for context_word in sparse_count[vocab_word]:
            pxy = sparse_count[vocab_word][context_word] / total_pairs
            px = word_countVc[vocab_word] / total_tokens
            py = word_countVc[context_word] / total_tokens
            if pxy * px * py == 0:
                Cpmi[vocab_word][context_word] = 0
            else:
                Cpmi[vocab_word][context_word] = np.log2(pxy / (px * py))


def SparseCosineSimilarity(x, y):
    if len(x) > len(y):
        x, y = y, x
    dot_product = sum(x[key] * y.get(key, 0) for key in x)
    len_x = sum(x[key] ** 2 for key in x)
    len_y = sum(y[key] ** 2 for key in y)
    if len_x * len_y == 0:
        return 0
    return dot_product / np.sqrt(len_x * len_y)


def NearestNeighbor(query, top=10):
    global C, Cpmi, total_tokens, word_countVc
    
    query_id = id_context[query]
    query_vec = Cpmi[query_id]

    similarites = np.zeros(len(context), dtype=float)
    for vec in Cpmi:
        similarites[vec] = SparseCosineSimilarity(query_vec, Cpmi[vec])
    
    similarites_sorted_id = (-similarites).argsort()

    for cnt, i in enumerate(similarites_sorted_id):
        if context[i] == query:
            continue
        if cnt >= top:
            break
        print(context[i])


def main():
    global vocab, id_vocab, context, id_context
    vocab, id_vocab = ReadWords("vocab-wordsim.txt")
    context, id_context = ReadWords("vocab-25k.txt")

    for w in [6]:
        print(f"w = {w}")
        # print("Distributional Counting Result:")
        # print(DistributionalCounting(w))
        # print("=" * 30)

        # print("Computing PMIs Result:")
        # print(ComputingPMIs())
        # print("=" * 60)

        Counting(w)
        NearestNeighbor("monster")




if __name__ == "__main__":
    main()


# [9, 9, 71, 15, 35, 16, 17, 12, 8, 7, 5, 4, 3, 2, 4, 4, 4, 2, 7, 3, 4, 1, 1, 6, 0, 1, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 1, 0, 2, 0, 1, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 2,
# [29, 18, 70, 36, 54, 23, 27, 20, 10, 48, 14, 3, 5, 12, 6, 6, 0, 4, 2, 21, 6, 1, 2, 8, 5, 4, 3, 0, 4, 2, 1, 0, 0, 2, 2, 3, 0, 1, 3, 1, 1, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 4, 0, 6, 2, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0