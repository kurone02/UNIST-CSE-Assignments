'''
MIPS-32 Instruction Level Simulatr

CSE261 UNIST
parse.py
'''

import util
import initialize
import ctypes


def parse_instr(buffer, index):
    # Write instruction to the memory
    util.mem_write(util.MEM_TEXT_START + index, util.fromBinary(buffer))

    # Initialize instruction
    instr = util.instruction()

    # Obtain instruction's opcode
    instr.opcode = util.fromBinary(buffer[:6])

    if instr.opcode == 0x0: # R-format
        instr.rs = util.fromBinary(buffer[6:11])                        # read rs
        instr.rt = util.fromBinary(buffer[11:16])                       # read rt
        instr.rd = util.fromBinary(buffer[16:21])                       # read rd
        instr.shamt = util.fromBinary(buffer[21:26])                    # read shift amount
        instr.func_code = util.fromBinary(buffer[26:])                  # read funct code
    elif instr.opcode in [0x2, 0x3]: # J-format
        instr.target = util.fromBinary(buffer[6:])                      # read 26-bit target
    else: # I-format
        instr.rs = util.fromBinary(buffer[6:11])                        # read rs
        instr.rt = util.fromBinary(buffer[11:16])                       # read rt
        instr.imm = ctypes.c_short(util.fromBinary(buffer[16:])).value  # read imm and convert to 16-bit signed int

    return instr


def parse_data(buffer, index):
    util.mem_write(util.MEM_DATA_START + index, util.fromBinary(buffer))


def print_parse_result(INST_INFO):
    print("Instruction Information")

    for i in range(initialize.text_size//4):
        print("INST_INFO[", i, "].value : ", "%8x" % INST_INFO[i].value)
        print("INST_INFO[", i, "].opcode : ", INST_INFO[i].opcode)

        # TYPE I
        # 0x9: (0x001001)ADDIU
        # 0xc: (0x001100)ANDI
        # 0xf: (0x001111)LUI
        # 0xd: (0x001101)ORI
        # 0xb: (0x001011)SLTIU
        # 0x23: (0x100011)LW
        # 0x2b: (0x101011)SW
        # 0x4: (0x000100)BEQ
        # 0x5: (0x000101)BNE
        if INST_INFO[i].opcode == 0x9 or INST_INFO[i].opcode == 0xc or INST_INFO[i].opcode == 0xf or INST_INFO[i].opcode == 0xd or INST_INFO[i].opcode == 0xb \
                or INST_INFO[i].opcode == 0x23 or INST_INFO[i].opcode == 0x2b or INST_INFO[i].opcode == 0x4 or INST_INFO[i].opcode == 0x5:
            print("INST_INFO[", i, "].rs : ", INST_INFO[i].rs)
            print("INST_INFO[", i, "].rt : ", INST_INFO[i].rt)
            print("INST_INFO[", i, "].imm : ",
                  INST_INFO[i].imm)

        # TYPE R
        # 0x0: (0x000000)ADDU, AND, NOR, OR, SLTU, SLL, SRL, SUBU  if JR
        elif INST_INFO[i].opcode == 0x0:
            print("INST_INFO[", i, "].func_code : ",
                  INST_INFO[i].func_code)
            print("INST_INFO[", i, "].rs : ",
                  INST_INFO[i].rs)
            print("INST_INFO[", i, "].rt : ",
                  INST_INFO[i].rt)
            print("INST_INFO[", i, "].rd : ",
                  INST_INFO[i].rd)
            print("INST_INFO[", i, "].shamt : ",
                  INST_INFO[i].shamt)

        # TYPE J
        # 0x2: (0x000010)J
        # 0x3: (0x000011)JAL
        elif INST_INFO[i].opcode == 0x2 or INST_INFO[i].opcode == 0x3:
            print("INST_INFO[", i, "].target : ",
                  INST_INFO[i].target)
        else:
            print("Not available instrution\n")

    print("Memory Dump - Text Segment\n")
    for i in range(0, initialize.text_size, 4):
        print("text_seg[", i, "] : ", "%x" %
              util.mem_read(util.MEM_TEXT_START + i))
    for i in range(0, initialize.data_size, 4):
        print("data_seg[", i, "] : ", "%x" %
              util.mem_read(util.MEM_DATA_START + i))
    print("Current PC: %x" % util.CURRENT_STATE.PC)
