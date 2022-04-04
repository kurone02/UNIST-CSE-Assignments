# Input the number of loops
nLoops = int(input('Enter the # of loops: '))

# Draw the triangle
for row in range(0, nLoops):
    print('#', end='')
    for col in range(0, row):
        if row == nLoops - 1:
            print('#', end='')
        else:
            print(end=' ')
    print('#')