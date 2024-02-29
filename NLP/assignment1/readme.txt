CSE40201 - Natrual Language Processing

Assignment 1

Tutorials for running the script (main.py)

Student name: Nguyen Minh Duc
Student ID: 20202026

==========================================================================================
==========================================================================================


0. Full result
    - The full output of my code is saved in full_result.txt.


------------------------------------------------------------------------------------------

1. Prerequisite
    - The script is tested with Python 3.8.10 on Linux, 
    it is best to use the same environment.

    - All of the data should be in the same directory as main.py, like this
            assignment1/
            |---> main.py
            |---> men.txt
            |---> simlex999.txt
            |---> vocab-3k.txt
            |---> vocab-25k.txt
            |---> vocab-25k+wordsim.txt
            |---> vocab-wordsim.txt
            |---> wiki-0.1percent.txt
            |---> wiki-1percent.txt

    - It requires scipy and numpy to perform calculations, 
    if you already have them, skip next step.

    - Install the libraries with 
            pip install -r requirements.txt


------------------------------------------------------------------------------------------

2. How to run the script

    - When in doubt, just type
            python3 main.py -h
______________________
|   usage: main.py [-h] [-s] [-p] [-m] [-a] [-n  [...]] [-t TOP] [-w WINDOW]
|
|   optional arguments:
|   -h, --help            show this help message and exit
|   -s, --std             Standard run, produce output for 1.3 and 1.4.1
|   -p, --part-of-speech  Standard run, produce output for 1.4.2
|   -m, --multiple-senses
|                           Standard run, produce output for 1.4.3
|   -a, --all               Standard run, produce output for all problems 
|                           (WARNING: Very slow, consider using [-s] for 1.3 + 1.4.1 
|                           and [-n] for checking individual words)
|   -n  [ ...], --neighbor  [ ...]
|                           Print nearest neighbors of the words
|   -t TOP, --top TOP     Configure top nearest neighbors of the words, default=10
|   -w WINDOW, --window WINDOW
|                           Configure context window size for nearest neighbor, default=3
______________________

    - The flag [-a] will runs everything, which takes about 30~40 minutes.
    Consider using -s to check problem 1.3 and 1.4.1, 
    and using -n for checking individual words in problem 1.4.2 and 1.4.2.

    - Example usage:
            python3 main.py -s
    OUTPUT:
        PROBLEM 1.3 AND 1.4.1:
        Result for w = 1...
        Distributional Counting Result:
        {'MEN': 0.20992265447069547, 'SimLex-999': 0.07635222143159648}
        --------------------
        Computing PMIs Result:
        {'MEN': 0.46530280519315015, 'SimLex-999': 0.26870465219106177}
        --------------------
        Computing nearest neighbors of monster:
        dragon 0.08987698919491952
        tyrant 0.08905071310921059
        creatures 0.07820025970282914
        monsters 0.07533238743657929
        jar 0.07471441364094766
        hornet 0.07385754078158328
        gangster 0.07221965675965239
        invaders 0.07197008829451698
        rhinoceros 0.07189167220041427
        robot 0.07182894004464206
        ----------------------------------------
        Result for w = 3...
        Distributional Counting Result:
        {'MEN': 0.22433852567075044, 'SimLex-999': 0.06016794415696212}
        --------------------
        Computing PMIs Result:
        {'MEN': 0.5340533067559707, 'SimLex-999': 0.22447977506463745}
        --------------------
        Computing nearest neighbors of monster:
        creature 0.10226956654069214
        monsters 0.09816804217178982
        clown 0.09621735831853356
        godzilla 0.0949529392544783
        giant 0.09083243227800529
        ghost 0.08730296994674637
        girl 0.08620737149447054
        duel 0.08453717466145418
        truck 0.08333152344620798
        dragon 0.08299006427982195
        ----------------------------------------
        Result for w = 6...
        Distributional Counting Result:
        {'MEN': 0.23790636810978752, 'SimLex-999': 0.03937517035680782}
        --------------------
        Computing PMIs Result:
        {'MEN': 0.5423454654769123, 'SimLex-999': 0.1826112603240193}
        --------------------
        Computing nearest neighbors of monster:
        evil 0.12809507337502551
        giant 0.12564868062341042
        creature 0.12361393096624235
        monsters 0.12358314162475396
        godzilla 0.12160331569572583
        dragon 0.11530842933918395
        dog 0.1127660793610063
        ghost 0.11051487845297722
        horror 0.11030173365895003
        girl 0.11001330193305471
        ----------------------------------------
        ============================================================
    
    - Another example usage:
            python3 main.py -n apple -w 6
    OUTPUT:
        Computing nearest neighbors of [apple] with context window size of [6]:
        os 0.19675389380402755
        macintosh 0.1962832412380856
        microsoft 0.18102216302168558
        ios 0.17396694891456044
        mac 0.16577274899838243
        software 0.16499553874795958
        ipad 0.1642061844691787
        desktop 0.16403903878125298
        iphone 0.15551367010501588
        atari 0.1501565508315928
        ============================================================


------------------------------------------------------------------------------------------


==========================================================================================
==========================================================================================
