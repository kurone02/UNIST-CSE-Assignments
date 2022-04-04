# Import math module from python standard library.
import math

# Function that adds 2 numbers
def add(x, y): 
    print("{:.2f}".format(x + y))

# Function that substracts 2 numbers
def sub(x, y):
    print("{:.2f}".format(x - y))

# Function that multiplies 2 numbers
def mul(x, y):
    print("{:.2f}".format(x * y))

# Function that divides 2 numbers
def div(x, y):
    try:
        print("{:.2f}".format(x / y))
    except ZeroDivisionError:
        print("{:.2f}".format(0))

# Function that calculate x to the power of y
def pow(x, y):
    print("{:.2f}".format(x ** y))

# Function that calculate the square root of x
def sqrt(x):
    print("{:.2f}".format(math.sqrt(x)))

# Function that calculate sine of x
def sin(x):
    print("{:.2f}".format(math.sin(math.radians(x))))

# Function that calculate cosine of x
def cos(x):
    print("{:.2f}".format(math.cos(math.radians(x))))

# Function that calculate tangent of x
def tan(x):
    print("{:.2f}".format(math.tan(math.radians(x))))