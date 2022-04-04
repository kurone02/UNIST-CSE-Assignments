# Input
monthly_sales = int(input('Enter the monthly sales: '))
advance_pay = int(input('Enter the advanced pay: '))

# Determine the commision rate
commission_rate = 0
if monthly_sales < 10000:
    commission_rate = 10 / 100
elif monthly_sales < 15000:
    commission_rate = 12 / 100
elif monthly_sales < 18000:
    commission_rate = 14 / 100
elif monthly_sales < 22000:
    commission_rate = 16 / 100
else:
    commission_rate = 18 / 100

# Calculate the final pay
pay = int(monthly_sales * commission_rate - advance_pay)

# Output the final pay
print('The pay is ' + '$' + str(pay))
if pay < 0:
    print('The salesperson must reimburse the company.')
    