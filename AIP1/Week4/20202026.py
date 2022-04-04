#input
principal_amount = int(input("Enter the principal amount: "))
rate_of_interest = float(input("Enter the rate of interest per year (%): ")) / 100
loan_time_period = int(input("Enter the loan time period (year): "))
interest_type = input("Enter the interest type (S or C): ")

#processing functions
def get_repayment_with_s(principal, rate, time):
    return principal * (1 + rate * time)

def get_repayment_with_c(principal, rate, time):
    return principal * (1 + rate) ** time

#print out the result
if interest_type == "S":
    print("The repayment value is", get_repayment_with_s(principal_amount, rate_of_interest, loan_time_period))
elif interest_type == "C":
    print("The repayment value is", get_repayment_with_c(principal_amount, rate_of_interest, loan_time_period))
else:
    print("Wrong type.")