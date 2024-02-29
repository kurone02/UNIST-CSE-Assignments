import numpy as np
from scipy.stats import spearmanr
from scipy.sparse import lil_matrix
from tqdm import tqdm
import pickle


WIKI_FILE = "wiki-1percent.txt"


def ReadWords(filename):
    with open(filename) as f:
        word_list = f.read().split('\n')
        if word_list[-1] == "":
            word_list.pop()
        id_word = {}
        for idx, word in tqdm(enumerate(word_list)):
            id_word[word] = idx
        print(f"DONE READING {filename}")
        return word_list, id_word


def CosineSimilarity(x, y):
    len_x = np.linalg.norm(x)
    len_y = np.linalg.norm(y)
    if len_x * len_y == 0:
        return 0
    return np.dot(x, y) / (len_x * len_y)


def GetCorrelation(M, dataset, id_vocab):
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


def EVALWS(M, id_vocab):
    return {
        "MEN": GetCorrelation(M, "men.txt", id_vocab).statistic,
        "SimLex-999": GetCorrelation(M, "simlex-999.txt", id_vocab).statistic
    }


def DistributionalCounting(vocab, id_vocab, context, id_context, w=3):
    C = np.zeros((len(vocab), len(context)))
    total_tokens = 0
    with open(WIKI_FILE) as f:
        for sentence in tqdm(f):
            sentence = "<s> " + sentence.strip() + " </s>"
            sentence = sentence.split()
            n = len(sentence)
            for i in range(n):
                total_tokens += 1
                if sentence[i] not in id_vocab:
                    continue
                idV = id_vocab[sentence[i]]
                for j in range(max(0, i - w), min(n, i + w + 1)):
                    if i == j: continue
                    if sentence[j] in id_context:
                        idVc = id_context[sentence[j]]
                        C[idV, idVc] += 1
    return C, total_tokens


def ComputingPMIs(C, total_tokens, len_vocab, len_context):
    # global C, Cpmi, total_tokens, word_countV, word_countVc
    # C = C / np.sum(C)
    # word_countV = word_countV / total_tokens
    # word_countVc = word_countVc / total_tokens
    # Cpmi = np.zeros((len_vocab, len_context), np.float32)
    # for i in range(len_vocab):
    #     for j in range(len_context):
    #         pxy = C[i, j]
    #         px = word_countV[i]
    #         py = word_countVc[j]
    #         if pxy * px * py == 0:
    #             Cpmi[i, j] = 0
    #         else:
    #             Cpmi[i, j] = np.log2(pxy * px * py)

    pxy = C / total_tokens
    word_countV = np.add.reduce(C, axis=1)
    word_countVc = np.add.reduce(C, axis=0)
    px = ((word_countV.reshape(len_vocab, 1)) @ np.ones((1, len_context))) / total_tokens
    py = (np.ones((len_vocab, 1)) @ (word_countVc.reshape(1, len_context))) / total_tokens
    np.seterr(divide = 'ignore', invalid='ignore') 
    Cpmi = np.log2(pxy / (px * py))
    np.nan_to_num(Cpmi, copy=False, nan=0.0, posinf=0.0, neginf=0.0)
    Cpmi = Cpmi.reshape(len_vocab, len_context)
    np.seterr(divide = 'warn', invalid='warn') 
    return Cpmi


def Counting(w, len_context, id_context):
    sparse_count = {}
    word_countVc = np.zeros(len_context)
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

    Cpmi = {}
    for vocab_word in tqdm(sparse_count):
        Cpmi[vocab_word] = {}
        for context_word in sparse_count[vocab_word]:
            pxy = sparse_count[vocab_word][context_word] / total_pairs
            px = word_countVc[vocab_word] / total_tokens
            py = word_countVc[context_word] / total_tokens
            if pxy * px * py == 0:
                Cpmi[vocab_word][context_word] = 0
            else:
                Cpmi[vocab_word][context_word] = np.log2(pxy / (px * py))

    with open(f'nearest_neighbor_{w}.pkl', 'wb') as f:
        pickle.dump(Cpmi, f)

    return Cpmi


def SparseCosineSimilarity(x, y):
    if len(x) > len(y):
        x, y = y, x
    dot_product = sum(x[key] * y.get(key, 0) for key in x)
    len_x = sum(x[key] ** 2 for key in x)
    len_y = sum(y[key] ** 2 for key in y)
    if len_x * len_y == 0:
        return 0
    return dot_product / np.sqrt(len_x * len_y)


def NearestNeighbor(Cpmi, query, top=10):
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
        print(context[i], similarites[i])


def main():
    global vocab, id_vocab, context, id_context
    vocab, id_vocab = ReadWords("vocab-wordsim.txt")
    context, id_context = ReadWords("vocab-25k.txt")

    for w in [1, 3, 6]:
        print(f"w = {w}")
        print("Distributional Counting Result:")
        C, total_tokens = DistributionalCounting(vocab, id_vocab, context, id_context, w)
        print(EVALWS(C, id_vocab))
        print("=" * 30)

        print("Computing PMIs Result:")
        Cpmi = ComputingPMIs(C, total_tokens, len(vocab), len(context))
        print(EVALWS(Cpmi, id_vocab))
        print("=" * 30)

        # print("Computing nearest neighbor:")
        # Cpmi = Counting(w, len(context), id_context)
        # NearestNeighbor(Cpmi, "monster")
        print("=" * 60)




if __name__ == "__main__":
    main()


# [9, 9, 71, 15, 35, 16, 17, 12, 8, 7, 5, 4, 3, 2, 4, 4, 4, 2, 7, 3, 4, 1, 1, 6, 0, 1, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 1, 0, 2, 0, 1, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 2,
# [29, 18, 70, 36, 54, 23, 27, 20, 10, 48, 14, 3, 5, 12, 6, 6, 0, 4, 2, 21, 6, 1, 2, 8, 5, 4, 3, 0, 4, 2, 1, 0, 0, 2, 2, 3, 0, 1, 3, 1, 1, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 4, 0, 6, 2, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0