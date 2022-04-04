# Input
rate = float(input('Enter the exchange rate from EUR to KRW: '))
convert_type = input('Enter EK to convert EUR to KRW and KE vice versa: ')
amount = float(input('Enter the amount: '))

# Output
if convert_type == "EK":
    print('EUR', amount, 'is KRW', amount * rate)
else:
    print('KRW', amount, 'is EUR', amount / rate)