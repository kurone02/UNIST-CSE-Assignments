street_numbers = []
street_numbers = list(map(int, input('Enter all street numbers of their houses: ').split()))

n = len(street_numbers)
street_numbers = sorted(street_numbers)
prof_house = street_numbers[n // 2]
sum_of_distance = 0

for friend_house in street_numbers:
    sum_of_distance += abs(prof_house - friend_house)

print('The shortest total distance:', sum_of_distance)