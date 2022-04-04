def countCarry(x, y):
    def digitSum(x):
        return sum(map(int, str(x)))
        
    return (digitSum(x) + digitSum(y) - digitSum(x + y)) // 9

a = int(input('Enter the first number: '))
b = int(input('Enter the second number: '))

nCarry = countCarry(a, b)

if nCarry == 0:
    print('No carry operation.')
else:
    print('# of Carry:', nCarry)