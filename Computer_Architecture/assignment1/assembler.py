import sys
import os
from enum import Enum
from tempfile import TemporaryFile

################################################
# For debug option. 
# If you want to debug, set 1, program will show you some informations
# If not, set 0.
################################################
DEBUG = 0

MAX_SYMBOL_TABLE_SIZE = 1024
MEM_TEXT_START = 0x00400000
MEM_DATA_START = 0x10000000
BYTES_PER_WORD = 4
INST_LIST_LEN = 20


################################################
# Additional Components
################################################

class bcolors:
    BLUE = '\033[94m'
    YELLOW = '\033[93m'
    GREEN = '\033[92m'
    RED = '\033[91m'
    ENDC = '\033[0m'


start = '[' + bcolors.BLUE + 'START' + bcolors.ENDC + ']  '
done = '[' + bcolors.YELLOW + 'DONE' + bcolors.ENDC + ']   '
success = '[' + bcolors.GREEN + 'SUCCESS' + bcolors.ENDC + ']'
error = '[' + bcolors.RED + 'ERROR' + bcolors.ENDC + ']  '

pType = [start, done, success, error]


def log(printType, content):
    print(pType[printType] + content)


################################################
# Structure Declaration
################################################

class inst_t:
    def __init__(self, name, op, type, funct):
        self.name = name
        self.op = op
        self.type = type
        self.funct = funct


class symbol_t:
    def __init__(self):
        self.name = 0
        self.address = 0


class section(Enum):
    DATA = 0
    TEXT = 1
    MAX_SIZE = 2


################################################
# Global Variable Declaration
################################################

ADDIU = inst_t("addiu",   "001001", "I", "")
ADDU = inst_t( "addu",    "000000", 'R', "100001")
AND = inst_t(  "and",     "000000", 'R', "100100")
ANDI = inst_t( "andi",    "001100", 'I', "")
BEQ = inst_t(  "beq",     "000100", 'I', "")
BNE = inst_t(  "bne",     "000101", 'I', "")
J = inst_t(    "j",       "000010", 'J', "")
JAL = inst_t(  "jal",     "000011", 'J', "")
JR = inst_t(   "jr",      "000000", 'R', "001000")
LUI = inst_t(  "lui",     "001111", 'I', "")
LW = inst_t(   "lw",      "100011", 'I', "")
NOR = inst_t(  "nor",     "000000", 'R', "100111")
OR = inst_t(   "or",      "000000", 'R', "100101")
ORI = inst_t(  "ori",     "001101", 'I', "")
SLTIU = inst_t("sltiu",   "001011", 'I', "")
SLTU = inst_t( "sltu",    "000000", 'R', "101011")
SLL = inst_t(  "sll",     "000000", 'R', "000000")
SRL = inst_t(  "srl",     "000000", 'R', "000010")
SW = inst_t(   "sw",      "101011", 'I', "")
SUBU = inst_t( "subu",    "000000", 'R', "100011")

inst_list = [ADDIU, ADDU, AND, ANDI, BEQ, BNE, J, JAL, JR,
             LUI, LW, NOR, OR, ORI, SLTIU, SLTU, SLL, SRL, SW, SUBU]

# Global Symbol Table
symbol_struct = symbol_t()
SYMBOL_TABLE = [symbol_struct] * MAX_SYMBOL_TABLE_SIZE

# For indexing of symbol table
symbol_table_cur_index = 0

# Temporary file stream pointers
data_seg = None
text_seg = None

# Size of each section
data_section_size = 0
text_section_size = 0


# Change file extension form ".s" to ".o"
def change_file_ext(fin_name):
    fname_list = fin_name.split('.')
    fname_list[-1] = 'o'
    fout_name = ('.').join(fname_list)
    return fout_name


# Add symbol to global symbol table
def symbol_table_add_entry(symbol):
    global SYMBOL_TABLE
    global symbol_table_cur_index

    SYMBOL_TABLE[symbol_table_cur_index] = symbol
    symbol_table_cur_index += 1
    if DEBUG:
        log(1, f"{symbol.name}: 0x" + hex(symbol.address)[2:].zfill(8))


# Convert integer number to binary string
def num_to_bits(num, len):
    bit = bin(num & (2**len-1))[2:].zfill(len)
    return bit


def make_symbol_table(input):
    global data_seg
    global text_seg
    global data_section_size
    global text_section_size

    size_bit = 0
    address = 0
    cur_section = section.MAX_SIZE.value

    # Read each section and put the stream
    lines = input.readlines()
    for line in lines:
        line = line.strip().replace(',', '')
        _line = line
        token_line = _line.strip('\n\t').split()
        temp = token_line[0]

        # Check section type
        if temp == ".data":
            address = MEM_DATA_START
            cur_section = section.DATA.value
            data_seg = TemporaryFile('w+')
            continue
        elif temp == '.text':
            address = MEM_TEXT_START
            cur_section = section.TEXT.value
            text_seg = TemporaryFile('w+')
            continue

        # Put the line into each segment stream
        if cur_section == section.DATA.value:
            if temp[-1] == ':':
                new_symbol = symbol_t()
                new_symbol.name = temp[:-1]
                new_symbol.address = address
                symbol_table_add_entry(new_symbol)
                data_seg.write(f"{token_line[1]} {token_line[2]}\n")
            else:
                data_seg.write(f"{token_line[0]} {token_line[1]}\n")
            data_section_size += 4
        elif cur_section == section.TEXT.value:
            if temp[-1] == ':':
                new_symbol = symbol_t()
                new_symbol.name = temp[:-1]
                new_symbol.address = address
                address -= BYTES_PER_WORD
                symbol_table_add_entry(new_symbol)
            else:
                if temp == "la":
                    load_var = token_line[2]
                    load_address = 0
                    for variable in SYMBOL_TABLE:
                        if variable.name == load_var:
                            load_address = variable.address
                    upper_16_bits = load_address >> 16
                    text_seg.write(f"lui {token_line[1]} {hex(upper_16_bits)}\n")
                    mask = (1 << 16) - 1
                    lower_16_bits = load_address & mask
                    if lower_16_bits != 0:
                        text_seg.write(f"ori {token_line[1]} {token_line[1]} {hex(lower_16_bits)}\n")
                        address += BYTES_PER_WORD
                        text_section_size += 4
                else:
                    text_seg.write(f"{_line}\n")
                text_section_size += 4

        address += BYTES_PER_WORD


# Record .text section to output file
def record_text_section(output):
    cur_addr = MEM_TEXT_START

    # Point to text_seg stream
    text_seg.seek(0)

    # Print .text section
    lines = text_seg.readlines()
    for line in lines:
        line = line.strip().split()
        i, idx, type, rs, rt, rd, imm, shamt = 0, 0, '0', 0, 0, 0, 0, 0

        #Find the instruction type that matches the line
        for i, instruction in enumerate(inst_list):
            if instruction.name == line[0]:
                idx = i
        
        op = inst_list[idx].op
        type = inst_list[idx].type
        funct = inst_list[idx].funct
        instruction_name = inst_list[idx].name

        if type == 'R':
            if instruction_name not in ["sll", "srl", "jr"]:
                rd = int(line[1][1:], 0)
                rs = int(line[2][1:], 0)
                rt = int(line[3][1:], 0)
            elif instruction_name != "jr":
                rd = int(line[1][1:], 0)
                rt = int(line[2][1:], 0)
                shamt = int(line[3], 0)
            else:
                rs = int(line[1][1:], 0)
                
            output.write(f"{op}{num_to_bits(rs, 5)}{num_to_bits(rt, 5)}{num_to_bits(rd, 5)}{num_to_bits(shamt, 5)}{funct}")

            if DEBUG:
                log(1, f"0x" + hex(cur_addr)[2:].zfill(
                    8) + f": op: {op} rs:${rs} rt:${rt} rd:${rd} shamt:{shamt} funct:{inst_list[idx].funct}")

        if type == 'I':

            if instruction_name not in ["beq", "bne", "lui", "lw", "sw"]:
                rt = int(line[1][1:], 0)
                rs = int(line[2][1:], 0)
                imm = int(line[3], 0)
            elif instruction_name in ["beq", "bne"]:
                rs = int(line[1][1:], 0)
                rt = int(line[2][1:], 0)
                jump_label = line[3]
                offset = 0
                for symbol in SYMBOL_TABLE:
                    if jump_label == symbol.name:
                        offset = symbol.address
                imm = (offset - cur_addr - 1) >> 2
            elif instruction_name in ["lw", "sw"]:
                rt = int(line[1][1:], 0)
                tokens = line[2].split('(')
                rs = int(tokens[1][1:-1], 0)
                imm = int(tokens[0], 0)
            else:
                rt = int(line[1][1:], 0)
                imm = int(line[2], 0)

            output.write(f"{op}{num_to_bits(rs, 5)}{num_to_bits(rt, 5)}{num_to_bits(imm, 16)}")

            if DEBUG:
                log(1, f"0x" + hex(cur_addr)
                    [2:].zfill(8) + f": op:{op} rs:${rs} rt:${rt} imm:0x{imm}")

        if type == 'J':
            jump_label = line[1]
            offset = 0
            for symbol in SYMBOL_TABLE:
                if jump_label == symbol.name:
                    offset = symbol.address
            imm = (offset >> 2) & ((1 << 26) - 1)
            output.write(f"{op}{num_to_bits(imm, 26)}")

        output.write("\n")
        cur_addr += BYTES_PER_WORD


# Record .data section to output file
def record_data_section(output):
    cur_addr = MEM_DATA_START

    # Point to data segment stream
    data_seg.seek(0)

    # Print .data section
    lines = data_seg.readlines()
    for line in lines:
        line = line.strip().split()
        cur_data = int(line[1], 0)
        output.write(f"{num_to_bits(cur_data, 32)}\n")
        if DEBUG:
            log(1, f"0x" + hex(cur_addr)[2:].zfill(8) + f": {line}")

        cur_addr += BYTES_PER_WORD


def make_binary_file(output):
    if DEBUG:
        # print assembly code of text section
        text_seg.seek(0)
        lines = text_seg.readlines()
        for line in lines:
            line = line.strip()

    if DEBUG:
        log(1,
            f"text size: {text_section_size}, data size: {data_section_size}")

    # Print text section size and data section size
    output.write(f"{num_to_bits(text_section_size, 32)}\n")
    output.write(f"{num_to_bits(data_section_size, 32)}\n")

    # Print .text section
    record_text_section(output)
    # Print .data section
    record_data_section(output)


################################################
# Function: main
#
# Parameters:
#   argc: the number of argument
#   argv[]: the array of a string argument
#
# Return:
#   return success exit value
#
# Info:
#   The typical main function in Python language.
#   It reads system arguments from terminal (or commands)
#   and parse an assembly file(*.s)
#   Then, it converts a certain instruction into
#   object code which is basically binary code
################################################


if __name__ == '__main__':
    argc = len(sys.argv)
    log(1, f"Arguments count: {argc}")

    if argc != 2:
        log(3, f"Usage   : {sys.argv[0]} <*.s>")
        log(3, f"Example : {sys.argv[0]} sample_input/example.s")
        exit(1)

    # Read the input file
    input_filename = sys.argv[1]
    input_filePath = os.path.join(os.curdir, input_filename)

    if os.path.exists(input_filePath) == False:
        log(3,
            f"No input file {input_filename} exists. Please check the file name and path.")
        exit(1)

    f_in = open(input_filePath, 'r')

    if f_in == None:
        log(3,
            f"Input file {input_filename} is not opened. Please check the file")
        exit(1)

    # Create the output file (*.o)
    output_filename = change_file_ext(sys.argv[1])
    output_filePath = os.path.join(os.curdir, output_filename)

    if os.path.exists(output_filePath) == True:
        log(0, f"Output file {output_filename} exists. Remake the file")
        os.remove(output_filePath)
    else:
        log(0, f"Output file {output_filename} does not exist. Make the file")

    f_out = open(output_filePath, 'w')
    if f_out == None:
        log(3,
            f"Output file {output_filename} is not opened. Please check the file")
        exit(1)

    make_symbol_table(f_in)
    
    ################################################
    # At first please make below line as a comments, or it causes error
    ################################################

    make_binary_file(f_out)

    f_in.close()
    f_out.close()
