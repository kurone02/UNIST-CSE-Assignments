def binary_search(a_list, item):
    first = 0
    last = len(a_list) - 1
    found = False
    
    while first <= last and not found:
        midpoint = (first + last) // 2
        if a_list[midpoint] == item:
            found = True
        elif item < a_list[midpoint]:
            last = midpoint - 1
        else:
            first = midpoint + 1

    return found

def bubble_sort(a_list):
    n = len(a_list)
    for pass_num in range(n - 1, 0, -1):
        for i in range(pass_num):
            if a_list[i] > a_list[i + 1]:
                temp = a_list[i]
                a_list[i] = a_list[i + 1]
                a_list[i + 1] = temp

    return a_list

def selection_sort(a_list):
    n = len(a_list)
    for fill_slot in range(0, n - 1):
        pos_of_min = fill_slot
        for location in range(fill_slot, n):
            if a_list[location] < a_list[pos_of_min]:
                pos_of_min = location
        temp = a_list[fill_slot]
        a_list[fill_slot] = a_list[pos_of_min]
        a_list[pos_of_min] = temp

    return a_list

def insertion_sort(a_list):
    n = len(a_list)
    for index in range(1, n):
        current_value = a_list[index]
        position = index
        while position > 0 and a_list[position - 1] > current_value:
            a_list[position] = a_list[position - 1]
            position -= 1
        a_list[position] = current_value

    return a_list

n = int(input('Enter the number of numbers: '))
num_list = []

for i in range(0, n):
    x = int(input('Enter the number: '))
    num_list.append(x)
    
print("The number list is", num_list)

while True:
    cmd = input('Enter the types of sort (bubble, selection, insertion): ')

    if cmd not in ['bubble', 'selection', 'insertion']:
        print('Wrong sort type, again!')
    else:
        if cmd == 'bubble':
            num_list = bubble_sort(num_list)
        elif cmd == 'selection':
            num_list = selection_sort(num_list)
        else:
            num_list = insertion_sort(num_list)

        print('The sorted number list is ', num_list)

        item = int(input('Enter the target number to find: '))
        if binary_search(num_list, item):
            print('We found!')
        else:
            print('We cannot found!')

        break