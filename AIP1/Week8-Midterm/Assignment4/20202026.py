# Input the year
year = int(input('Enter a year: '))

# Algorithm and output
if year % 4 == 0:
    if year % 100 == 0:
        if year % 400 == 0:
            print('Leap year')
        else:
            print('Common year')
    else:
        print('Leap year')
else:
    print('Common year')