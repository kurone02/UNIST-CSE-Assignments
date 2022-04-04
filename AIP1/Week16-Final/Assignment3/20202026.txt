while True:
    cmd = input('Enter command (m, b, or e): ')
    position = [0, 0, 0]

    if cmd == 'm':
        move_cmd = input('Enter the move commands: ')
        for move in move_cmd:
            # Move in x-axis
            if move in ['1', '3', '5', '7', '9']:
                position[0] -= 1
            elif move in ['0', '2', '4', '6', '8']:
                position[0] += 1

            # Move in y-axis
            elif 'a' <= move and move <= 'z':
                position[1] -= 1
            elif 'A' <= move and move <= 'Z':
                position[1] += 1

            # Move in z-axis
            elif move in ['!', '#', '%', '&', '(']:
                position[2] -= 1
            elif move in ['@', '$', '^', '*', ')']:
                position[2] += 1

        print(tuple(position))

    elif cmd == 'b':
        word = input('You say a word: ')

        if len(word) == 0:
            print()
        else:
            if word[-1] in ['!', '?', '.']:
                reversed_word = word[-2::-1] + word[-1]
            else:
                reversed_word = word[::-1]
            print(reversed_word)

    elif cmd == 'e':
        print('Good bye!')
        break

    else:
        print('Wrong robot commands!')