# Project 1. MIPS Assembler
This project is to implement a MIPS ISA assembler and a given code is a basic skeleton for input and output.

## Instructions
Baiscally, the code written in `assembler.py` operates only creation of file for input and output.
Each student requires to implement parsing, converting or any functions based on the skeleton code.
The detailed instructions are desribed in `handout/Project_1.pdf`.

There are two directories for this project. The code will read a `.s` file from `sample_input` and it will produce `.o` file in same directory.

The files in `sample_output` are used when you test your output with them.

At the `assembler.py` part, please do the `make_symbol_table` first with commenting out the `make_binary_file`. (at line 345)
After finish to build `make_symbol_table`, uncomment the `make_binary_file` to finish the assignment.
If not commenting out the `make_binary_file`, it causes error on running code.

The following is an example of command for the skeleton code:

```shell
# Usage
$ python assembler.py sample_input/example1.s   # This will produce sample_input/example1.o

# Test
$ ./test.sh # This will test all examples in sample_output
```

## Q & A
If you find any errors in this code or have a question, please leave it on UNISTBB.
