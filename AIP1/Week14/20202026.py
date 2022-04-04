while True:
    cmd = input('Enter command (i, d, e): ')

    if cmd == 'i':
        n = int(input('Enter a maximum number: '))
        num1 = int(input('Enter a num1: '))
        num2 = int(input('Enter a num2: '))
    elif cmd == 'd':
        line_feed = int(input('The line feed: '))
        output = ""

        if n == 0:
            continue

        for i in range(1, n + 1):
            if i % num1 == 0 and i % num2 == 0:
                output += "{:>4d}".format(i)
            elif i % num1 == 0:
                output += '{:>4s}'.format('*')
            elif i % num2 == 0:
                output += '{:>4s}'.format('#')
            else:
                output += "{:>4d}".format(i)

            if i % line_feed == 0 and i != n:
                output += '\n'
        
        print(output)
    elif cmd == 'e':
        print('Program is done')
        break
    else:
        print('Wrong commands. i, d, or, e!')