# Read data from file arbor day
f = open("arbor_day.txt", "rt")

# Dictionary to store arbor days of countries
arbor_day = {}

# Store data
for line in f:
	token = line.split('\t')

	token[0] = token[0].strip()
	token[1] = token[1].strip()

	arbor_day[token[0]] = token[1]

# User input
country = input('Enter a country: ')

# Output the result
if country in arbor_day:
	print("The arbor day of {} is {}".format(country, arbor_day[country]))
else:
	print("I don't know")

f.close()