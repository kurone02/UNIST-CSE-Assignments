# Function to calculate gcd of two positive integers
def gcd(a, b):
    while b != 0:
        r = b
        b = a % b
        a = r
    return a

# Input two numbers
x = int(input('Enter the first integer number: '))
y = int(input('Enter the second integer number: '))

# Output the gcd
if x < 0 or y < 0:
    print('Not negative!')
else:
    print(gcd(x, y))