# Student name: Nguyen Minh Duc
# Student ID: 20202026


import numpy as np
from scipy.stats import spearmanr
import os
import argparse
import json


###############################
#   Definition of constants   #
###############################

# The name of the wiki file
WIKI_FILE = "wiki-1percent.txt"

# List of verbs that are used to analyze part-of-speech tags
PART_OF_SPEECH_VERBS = ["transport", "transports", "transporting", "transported", 
                        'eat', 'eats', 'ate', 'eaten', 'eating',
                        'fly', 'flies', 'flew', 'flown', 'flying']

# List of nouns that are used to analyze part-of-speech tags
PART_OF_SPEECH_NOUNS = ['dog', 'dogs',
                        'city', 'cities',
                        'person', 'people',
                        'leaf', 'leaves',
                        'exception', 'exceptions']

# List of adjectives that are used to analyze part-of-speech tags
PART_OF_SPEECH_ADJECTIVES = ['big', 'bigger', 'biggest',
                             'good', 'better', 'best',
                             'happy', 'exceptional', 'exceptionally',
                             'far', 'farther', 'further']

# List of prepositions that are used to analyze part-of-speech tags
PART_OF_SPEECH_PREPOSITIONS = ['as', 'in', 'on', 'at', 'of', 'to', 'with', 'up']

# List of multiple senses words
MULTIPLE_SENSES_WORDS = ["bank", "cell", "apple", "apples", "axes", "frame", "light", "well",
                         "bat", "book", "break", "change", "date", "watch"]


############################
#   Real functionalities   #
############################


"""
Function to read the vocabs from a file
Input: filename
Output: word list and id mapping
"""
def ReadWords(filename):
    with open(filename) as f:
        word_list = f.read().split('\n')
        if word_list[-1] == "":
            word_list.pop()
        id_word = {}
        for idx, word in enumerate(word_list):
            id_word[word] = idx
        return word_list, id_word


"""
Function to calculate cosine similarity between two vector
Input: two vectors x and y
Output: cosine similarity of x and y
"""
def CosineSimilarity(x, y):
    # Calculating the length of vectors
    len_x = np.linalg.norm(x)
    len_y = np.linalg.norm(y)
    # Checking if either of them is a zero vector
    if len_x * len_y == 0:
        return 0
    # Return the cosine similarity
    return np.dot(x, y) / (len_x * len_y)


"""
Function to calculate spearmanr correlation coefficient
Input: The matrix M, dataset name, and id mapping of vocab
Output: spearmanr correlation coefficient between M and the dataset
"""
def GetCorrelation(M, dataset, id_vocab):
    # Reference score in data set
    ref_score = []
    # Our produced score
    our_score = []

    with open(dataset) as f:
        # Iterate through the data set
        for idx, tokens in enumerate(f):
            # Ignore some unimportant lines
            if idx == 0:
                continue
            if tokens == "":
                continue
            # Split the line into three part: word, word, and score
            tokens = tokens.split()
            word1, word2, score = tokens[0], tokens[1], float(tokens[2])
            # Save the reference score
            ref_score.append(score)
            # If one of the word is not in our vocab, the score is 0
            if (word1 not in id_vocab) or (word2 not in id_vocab):
                our_score.append(0)
            else:
                # Otherwise, search for their ids and compute the similarity
                id1 = id_vocab[word1]
                id2 = id_vocab[word2]
                cosine_sim = CosineSimilarity(M[id1], M[id2])
                # Save our score
                our_score.append(cosine_sim)
    # Return the spearmanr correlation coefficient
    return spearmanr(our_score, ref_score)


"""
EVALWS function specified in the assignment handout
Input: The matrix M, and id mapping of vocab
Output: dictionary contains spearmanr correlation coefficient between M and the two datasets
"""
def EVALWS(M, id_vocab):
    return {
        "MEN": GetCorrelation(M, "men.txt", id_vocab).statistic,
        "SimLex-999": GetCorrelation(M, "simlex-999.txt", id_vocab).statistic
    }


"""
Function to perform distributional counting
Input: List of vocabs, id mapping of vocabs, list of context words, id mapping of context, and context window size
Output: Co-occurrence matrix
"""
def DistributionalCounting(vocab, id_vocab, context, id_context, w=3):
    # Initialize the co-occurrence matrix where all entries are 0
    C = np.zeros((len(vocab), len(context)))
    with open(WIKI_FILE) as f:
        # Iterate through all sentences in the file
        for sentence in f:
            # Add <s> and </s> token to the sentence
            sentence = "<s> " + sentence.strip() + " </s>"
            sentence = sentence.split()
            n = len(sentence)
            # Iterate through every token in the sentence
            for i in range(n):
                # If the word is not in our vocab, ignore
                if sentence[i] not in id_vocab:
                    continue
                # Otherwise, count the context words
                idV = id_vocab[sentence[i]]
                for j in range(max(0, i - w), min(n, i + w + 1)):
                    # Ignore self count
                    if i == j: continue
                    # Increase the context count
                    if sentence[j] in id_context:
                        idVc = id_context[sentence[j]]
                        C[idV, idVc] += 1
    # Return the co-occurrence matrix
    return C


"""
Function to calculate PMI based on Co-occurrence matrix
Input: The co-occurrence matrix, the number of vocab, and the number of context words
Output: Co-occurrence matrix with PMI
"""
def ComputingPMIs(C, len_vocab, len_context):
    # Calculate the sum of the matrix
    total_tokens = np.sum(C)
    # Calculate the p(x, y) probability
    pxy = C / total_tokens
    # Calculate the sum of rows in the matrix
    word_countV = np.add.reduce(C, axis=1)
    # Calculate the sum of cols in the matrix
    word_countVc = np.add.reduce(C, axis=0)
    # Calculate p(x) for every pair (x, y), utilizing matrix multiplication
    px = ((word_countV.reshape(len_vocab, 1)) @ np.ones((1, len_context))) / total_tokens
    # Calculate p(y) for every pair (x, y), utilizing matrix multiplication
    py = (np.ones((len_vocab, 1)) @ (word_countVc.reshape(1, len_context))) / total_tokens
    np.seterr(divide = 'ignore', invalid='ignore') 
    # Compute PMI
    Cpmi = np.log2(pxy / (px * py))
    # Convert all nans and infs into 0
    np.nan_to_num(Cpmi, copy=False, nan=0.0, posinf=0.0, neginf=0.0)
    # Return the matrix with PMI
    Cpmi = Cpmi.reshape(len_vocab, len_context)
    np.seterr(divide = 'warn', invalid='warn') 
    return Cpmi


"""
Function to perform distributional counting for sparse matrix and large vocab size
Input: Context window size, the number of context words, and id mapping of context
Output: Co-occurrence matrix with PMI
"""
def Counting(w, len_context, id_context):
    # Initialize the co-occurrence matrix where all entries are 0
    sparse_count = {}
    # Initialize sum of rows where all entries are 0
    word_count_row = np.zeros(len_context)
    # Initialize sum of cols where all entries are 0
    word_count_col = np.zeros(len_context)
    # Sum of the matrix
    total_tokens = 0
    with open(WIKI_FILE) as f:
        # Iterate through all sentences in the file
        for sentence in f:
            # Add <s> and </s> token to the sentence
            sentence = "<s> " + sentence.strip() + " </s>"
            sentence = sentence.split()
            n = len(sentence)
            # Iterate through every token in the sentence
            for i in range(n):     
                # If the word is not in our context, ignore               
                if sentence[i] not in id_context:
                    continue
                # Otherwise, count the context words
                idV = id_context[sentence[i]]
                if idV not in sparse_count:
                    sparse_count[idV] = {}
                for j in range(max(0, i - w), min(n, i + w + 1)):
                    # Ignore self count
                    if i == j: continue
                    if sentence[j] not in id_context: continue
                    idVc = id_context[sentence[j]]
                    # Increase the context count
                    if idVc not in sparse_count[idV]:
                        sparse_count[idV][idVc] = 0
                    sparse_count[idV][idVc] += 1
                    # Increase rows sum
                    word_count_row[idV] += 1
                    # Increase cols sum
                    word_count_col[idVc] += 1
                    # Increase matrix sum
                    total_tokens += 1

    # Calculating the matrix with PMI
    Cpmi = {}
    # Iterate through all words in context as the center word
    for vocab_word in sparse_count:
        Cpmi[vocab_word] = {}
        # Iterate through all words in context as the context word
        for context_word in sparse_count[vocab_word]:
            # Calculate p(x, y)
            pxy = sparse_count[vocab_word][context_word] / total_tokens
            # Calculate p(x)
            px = word_count_row[vocab_word] / total_tokens
            # Calculate p(y)
            py = word_count_col[context_word] / total_tokens
            if pxy * px * py == 0:
                # If one of them is 0, return 0
                Cpmi[vocab_word][context_word] = 0
            else:
                # Otherwise, compute PMI
                Cpmi[vocab_word][context_word] = np.log2(pxy / (px * py))

    # Save the matrix (in the form of a dictionary) to the disk
    with open(f"nearest_neighbor_{w}.json", 'w') as f:
        json.dump(Cpmi, f)

    # Return the matrix with PMI
    return Cpmi


"""
Function to calculate cosine similarity between two sparse vectors
Input: two vectors x and y (in a form of dictionary)
Output: cosine similarity of x and y
"""
def SparseCosineSimilarity(x, y):
    # Ensure that x has smaller length
    if len(x) > len(y):
        x, y = y, x
    # Compute the dot product
    dot_product = sum(x[key] * y.get(key, 0) for key in x)
    # Compute the length of x
    len_x = sum(x[key] ** 2 for key in x)
    # Compute the length of y
    len_y = sum(y[key] ** 2 for key in y)
    # If one of them is a zero vector, return 0
    if len_x * len_y == 0:
        return 0
    # Otherwise, return cosine similarity
    return dot_product / np.sqrt(len_x * len_y)


"""
Function to find top nearest neighbors of a given word
Input: Context window size, query word, the number of neighbors, and Co-occurrence matrix with PMI
Print: Top nearest neighbors with their similarity scores
"""
def NearestNeighbor(w, query, top=10, CPMI=None):
    if CPMI is None:
        # If the CPMI matrix is not provided, try to read from the current directory
        if os.path.isfile(f"nearest_neighbor_{w}.json"):
            with open(f"nearest_neighbor_{w}.json") as f:
                # If there is CPMI, load it
                Cpmi = json.load(f)
        else:
            # Otherwise, build it from scratch
            Cpmi = Counting(w, len(context), id_context)
    else:
        # If the CPMI matrix is provided, use it
        Cpmi = CPMI

    # Get the id of the query word
    query_id = id_context[query]
    # Get the vector of the query word
    try:
        query_vec = Cpmi[query_id]
    except KeyError:
        query_vec = Cpmi[str(query_id)]

    # Initialize the similarity array where all entries are 0
    similarites = np.zeros(len(context), dtype=float)
    # Loop through every words
    for vec in Cpmi:
        # Read the representation vector of context word
        try:
            current_vec = Cpmi[vec]
        except KeyError:
            current_vec = Cpmi[str(vec)]
        vec = int(vec)
        # Compute and save the similarity
        similarites[vec] = SparseCosineSimilarity(query_vec, current_vec)
    
    # Sort the similarity
    similarites_sorted_id = (-similarites).argsort()

    # Print the top nearest neighbors
    for cnt, i in enumerate(similarites_sorted_id):
        # Ignore itself
        if context[i] == query:
            continue
        if cnt > top:
            break
        print(context[i], similarites[i])


"""
Function to find top nearest neighbors of a given list of words
Input: List of words, and Co-occurrence matrix with PMI
Print: Top nearest neighbors with their similarity scores
"""
def ComputingNN(list_of_words, CPMI=None):
    for word in list_of_words:
        # Try with different context window sizes
        for w in [1, 6]:
            print(f"Computing nearest neighbors of [{word}] with context window size of [{w}]:")
            NearestNeighbor(w, word, top=10, CPMI=CPMI[w])
        print("-" * 20)


"""
The main function of the script if it is run as a stand-alone execution
"""
if __name__ == "__main__":

    # Initialize command line arguments
    argParser = argparse.ArgumentParser()
    argParser.add_argument("-s", "--std", action='store_true', help="Standard run, produce output for 1.3 and 1.4.1")
    argParser.add_argument("-p", "--part-of-speech", action='store_true', help="Standard run, produce output for 1.4.2")
    argParser.add_argument("-m", "--multiple-senses", action='store_true', help="Standard run, produce output for 1.4.3")
    argParser.add_argument("-a", "--all", action='store_true', help="Standard run, produce output for all problems (WARNING: Very slow, consider using [-s] for 1.3 + 1.4.1 and [-n] for checking individual words)")
    argParser.add_argument("-n", "--neighbor", metavar='', nargs="+", type=str, help="Print nearest neighbors of the words")
    argParser.add_argument("-t", "--top", type=int, help="Configure top nearest neighbors of the words, default=10", default=10)
    argParser.add_argument("-w", "--window", type=int, help="Configure context window size for nearest neighbor, default=3", default=3)
    
    # Parse the argument to the parser
    args = argParser.parse_args()

    # Read the vocab and the context file
    vocab, id_vocab = ReadWords("vocab-wordsim.txt")
    context, id_context = ReadWords("vocab-25k.txt")

    # Run the problem 1.3 and 1.4.1
    if args.std or args.all:
        print("PROBLEM 1.3 AND 1.4.1:")
        for w in [1, 3, 6]:
            print(f"Result for w = {w}...")

            # Distributional Counting (1.1)
            print("Distributional Counting Result:")
            C = DistributionalCounting(vocab, id_vocab, context, id_context, w)
            print(EVALWS(C, id_vocab))
            print("-" * 20)

            # Distributional Counting with PMI (1.2)
            print("Computing PMIs Result:")
            Cpmi = ComputingPMIs(C, len(vocab), len(context))
            print(EVALWS(Cpmi, id_vocab))
            print("-" * 20)

            # Computing nearest neighbor of monster (1.4.1)
            print("Computing nearest neighbors of monster:")
            NearestNeighbor(w, "monster")
            print("-" * 40)
        print("=" * 60)

    # Run the problem 1.4.2
    if args.part_of_speech or args.all:
        print("PART OF SPEECH")
        CPMI = {1: None, 6: None}
        for w in [1, 6]:
            # If the matrix has already been computed, just need to load it
            if os.path.isfile(f"nearest_neighbor_{w}.json"):
                with open(f"nearest_neighbor_{w}.json") as f:
                    CPMI[w] = json.load(f)
        ComputingNN(PART_OF_SPEECH_VERBS, CPMI)
        print("-" * 40)
        ComputingNN(PART_OF_SPEECH_NOUNS, CPMI)
        print("-" * 40)
        ComputingNN(PART_OF_SPEECH_ADJECTIVES, CPMI)
        print("-" * 40)
        ComputingNN(PART_OF_SPEECH_PREPOSITIONS, CPMI)
        print("-" * 40)
        print("=" * 60)

    # Run the problem 1.4.3
    if args.multiple_senses or args.all:
        print("MULTIPLE SENSES")
        CPMI = {1: None, 6: None}
        for w in [1, 6]:
            # If the matrix has already been computed, just need to load it
            if os.path.isfile(f"nearest_neighbor_{w}.json"):
                with open(f"nearest_neighbor_{w}.json") as f:
                    CPMI[w] = json.load(f)
        ComputingNN(MULTIPLE_SENSES_WORDS, CPMI)
        print("=" * 60)

    # Individual run, for computing nearest neighbors of words outside the pre-defined lists
    if args.neighbor is not None:
        for word in args.neighbor:
            print(f"Computing nearest neighbors of [{word}] with context window size of [{args.window}]:")
            NearestNeighbor(args.window, word, args.top)
            print("=" * 60)
