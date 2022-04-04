# Function to check whether x reaches itself.
def check(n):
    x = n * 3 + 1
    while x != 1:
        x = x // 2 if x % 2 == 0 else x * 3 + 1
        if x == n:
            return 1
    return 0

# Input
limit_value = int(input('Enter the limit value: '))

# Process
result = 0
for i in range(2, limit_value + 1, 2):
    result += check(i)

# Output
print(result)