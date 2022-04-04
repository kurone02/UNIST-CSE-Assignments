# Function to count the number of strikes
def count_strikes(guess, secret):
    nStrikes = 0
    for i in range(0, 3):
        if guess[i] == secret[i]:
            nStrikes += 1
    return nStrikes

# Function to count the number of balls
def count_balls(guess, secret):
    nBalls = 0
    for i in range(0, 3):
        if guess[i] in secret and guess[i] != secret[i]:
            nBalls += 1
    return nBalls

# Input the secret number 
secret_number = input('Enter three different digits (0-9) without spaces: ')

# Guessing procedure
guessed_incorrectly = True
while guessed_incorrectly:
    guess_number = input('Guess the secret number: ')
    nStrikes = count_strikes(guess_number, secret_number)
    nBalls = count_balls(guess_number, secret_number)
    print(nStrikes, "strikes, ", nBalls, "balls")
    if nStrikes == 3:
        guessed_incorrectly = False

# Output the result
print("You guessed the secret number!")