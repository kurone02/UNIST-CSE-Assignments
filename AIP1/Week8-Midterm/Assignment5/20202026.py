# Input the weight
weight = float(input('Enter the weight of a package (KG): '))

# Process the rate per KG
rate = 0
if weight <= 2:
    rate = 2000
elif weight <= 6:
    rate = 3500
elif weight <= 10:
    rate = 3800
else:
    rate = 4200

# Output the price
print('Your shipping charges for the package is {:,}.'.format(int(weight * rate)))