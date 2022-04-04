# Create empty dictionary
dict_phone = dict()

# Contact processing
while True:
    cmd = input('Select the instruction (a: add, s: sort, d: done): ')
    if cmd == 'a': # Add phone number.
        name = input('Enter the name: ')
        phone = input('Enter the phone: ')
        dict_phone[name] = phone
    elif cmd == 's': # Sort contact
        name_list = list(dict_phone.keys())
        name_list.sort()
        for name in name_list:
            print(name, dict_phone[name])
    elif cmd == 'd': # Exit the program
        print('Program is done.')
        break