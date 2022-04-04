# Get user's input
year = input('Enter the year: ')
month = input('Enter the month: ')
day = input('Enter the day: ')
type_of_date = input('Enter the type of the date: ')

# Processing
if type_of_date == 'B':
    print(year + '-' + month + '-' + day)
elif type_of_date == 'L':
    print(day + '-' + month + '-' + year)
elif type_of_date == 'M':
    print(month + '-' + day + '-' + year)
else:
    print('Wrong date format')