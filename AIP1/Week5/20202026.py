# Create the list
max_num = int(input('Enter the max num (1~max_num): '))
main_list = []
for i in range(1, max_num + 1):
    main_list.append(i)
print('The list is', main_list)

# Circular left-shift 
number_of_left_shift = int(input('Enter the number of left-shift: '))
if number_of_left_shift == 0:
    print(main_list)
else:
    left_shift_step = 1
    while left_shift_step <= number_of_left_shift:
        first_element = main_list[0]
        main_list = main_list[1:]
        main_list.append(first_element)
        print(main_list)
        left_shift_step += 1