num1 = int(input('Enter the 1st number: '))
num2 = int(input('Enter the 2nd number: '))

length = 1
n = num2
print(n, end=' ')

while n != num1 and length <= 100:
    if n % 2 == 1:
        n = 5 * n + 3
    else:
        n //= 2
    
    length += 1
    print(n, end=' ')

print()
if length <= 100:
    print('Length =', length)
else:
    print('Too many length! Stop')