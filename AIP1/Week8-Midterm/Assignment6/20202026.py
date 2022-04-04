# Function to solve the quadratic equation
def quadratic(a, b, c):
    discriminant = b * b - 4 * a * c
    if discriminant < 0: # when discriminant < 0, the equation has no root.
        print('No root')
    elif discriminant == 0: # when discriminant = 0, the equation has exactly one root.
        print((-b + discriminant ** 0.5)/(2 * a))
    else: # when discriminant > 0, the equation has two distinct roots.
        x1 = (-b + discriminant ** 0.5)/(2 * a)
        x2 = (-b - discriminant ** 0.5)/(2 * a)
        print(x1, 'and', x2)

# Input the coefficients of the quadratic equation
a = float(input('Enter a: '))
b = float(input('Enter b: '))
c = float(input('Enter c: '))

# Output the result
quadratic(a, b, c)