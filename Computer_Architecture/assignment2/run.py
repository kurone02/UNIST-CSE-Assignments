'''
MIPS-32 Instruction Level Simulatr

CSE261 UNIST
run.py
'''

import util
import initialize
import ctypes


def OPCODE(INST):
    return INST.opcode


def SET_OPCODE(INST, VAL):
    INST.opcode = ctypes.c_short(VAL).value


def FUNC(INST):
    return INST.func_code


def SET_FUNC(INST, VAL):
    INST.func_code = ctypes.c_short(VAL).value


def RS(INST):
    return INST.rs


def SET_RS(INST, VAL):
    INST.rs = ctypes.c_ubyte(VAL).value


def RT(INST):
    return INST.rt


def SET_RT(INST, VAL):
    INST.rt = ctypes.c_ubyte(VAL).value


def RD(INST):
    return INST.rd


def SET_RD(INST, VAL):
    INST.rd = ctypes.c_ubyte(VAL).value


def FS(INST):
    return RD(INST)


def SET_FS(INST, VAL):
    SET_RD(INST, VAL)


def FT(INST):
    return RT(INST)


def SET_FT(INST, VAL):
    SET_RT(INST, VAL)


def FD(INST):
    return SHAMT(INST)


def SET_FD(INST, VAL):
    SET_SHAMT(INST, VAL)


def SHAMT(INST):
    return INST.shamt


def SET_SHAMT(INST, VAL):
    INST.shamt = ctypes.c_ubyte(VAL).value


def IMM(INST):
    return INST.imm


def SET_IMM(INST, VAL):
    INST.imm = ctypes.c_short(VAL).value


def BASE(INST):
    return RS(INST)


def SET_BASE(INST, VAL):
    SET_RS(INST, VAL)


def IOFFSET(INST):
    return IMM(INST)


def SET_IOFFSET(INST, VAL):
    SET_IMM(INST, VAL)


def IDISP(INST):
    X = INST.imm << 2
    return SIGN_EX(X)


def COND(INST):
    return RS(INST)


def SET_COND(INST, VAL):
    SET_RS(INST, VAL)


def CC(INST):
    return (RT(INST) >> 2)


def ND(INST):
    return ((RT(INST) & 0x2) >> 1)


def TF(INST):
    return (RT(INST) & 0x1)


def TARGET(INST):
    return INST.target


def SET_TARGET(INST, VAL):
    INST.target = VAL


def ENCODING(INST):
    return INST.encoding


def SET_ENCODIGN(INST, VAL):
    INST.encoding = VAL


def EXPR(INST):
    return INST.expr


def SET_EXPR(INST, VAL):
    INST.expr = VAL


def SOURCE(INST):
    return INST.source_line


def SET_SOURCE(INST, VAL):
    INST.source_line = VAL


# Sign Extension
def SIGN_EX(X):
    if (X) & 0x8000:
        return X | 0xffff0000
    else:
        return X


COND_UN = 0x1
COND_EQ = 0x2
COND_LT = 0x4
COND_IN = 0x8

# Minimum and maximum values that fit in instruction's imm field
IMM_MIN = 0xffff8000
IMM_MAX = 0x00007fff

UIMM_MIN = 0
UIMM_MAX = (1 << 16)-1


def BRANCH_INST(TEST, TARGET):
    if TEST:
        target = TARGET
        JUMP_INST(target)


def JUMP_INST(TARGET):
    import util
    util.CURRENT_STATE.PC = TARGET


def LOAD_INST(LD, MASK):
    return (LD & (MASK))


# Procedure: get_inst_info
# Purpose: Read instruction information
def get_inst_info(pc):
    return initialize.INST_INFO[(pc - util.MEM_TEXT_START) >> 2]


# Procedure: process_instruction
# Purpose: Process one instruction
def process_instruction():
    # If PC passes the number of intruction, halt the program
    if ((util.CURRENT_STATE.PC - util.MEM_TEXT_START) >> 2) >= len(initialize.INST_INFO):
        util.RUN_BIT = False
        return

    # Get instruction info of the current PC
    # print(util.CURRENT_STATE.PC, (util.CURRENT_STATE.PC - util.MEM_TEXT_START) >> 2)
    instr = get_inst_info(util.CURRENT_STATE.PC)
    
    op_code = OPCODE(instr)

    # If the instruction is of R-type
    if op_code == 0x0: 
        rs, rt, rd, shamt = RS(instr), RT(instr), RD(instr), SHAMT(instr)
        
        util.CURRENT_STATE.PC += 4

        func_code = FUNC(instr)

        # Process instruction
        if func_code == 0x21:   # addu
            util.CURRENT_STATE.REGS[rd] = ctypes.c_uint32(ctypes.c_uint32(util.CURRENT_STATE.REGS[rs]).value + ctypes.c_uint32(util.CURRENT_STATE.REGS[rt]).value).value
        elif func_code == 0x24: # and
            util.CURRENT_STATE.REGS[rd] = util.CURRENT_STATE.REGS[rs] & util.CURRENT_STATE.REGS[rt]
        elif func_code == 0x08: # jr
            util.CURRENT_STATE.PC = util.CURRENT_STATE.REGS[rs]
        elif func_code == 0x27: # nor
            util.CURRENT_STATE.REGS[rd] = ~(util.CURRENT_STATE.REGS[rs] | util.CURRENT_STATE.REGS[rt])
        elif func_code == 0x25: # or
            util.CURRENT_STATE.REGS[rd] = util.CURRENT_STATE.REGS[rs] | util.CURRENT_STATE.REGS[rt]
        elif func_code == 0x2B: # sltu
            util.CURRENT_STATE.REGS[rd] = int(ctypes.c_uint32(util.CURRENT_STATE.REGS[rs]).value < ctypes.c_uint32(util.CURRENT_STATE.REGS[rt]).value)
        elif func_code == 0x00: # sll
            util.CURRENT_STATE.REGS[rd] = util.CURRENT_STATE.REGS[rt] << shamt
        elif func_code == 0x02: # srl
            util.CURRENT_STATE.REGS[rd] = util.CURRENT_STATE.REGS[rt] >> shamt
        elif func_code == 0x23: # subu
            util.CURRENT_STATE.REGS[rd] = ctypes.c_uint32(ctypes.c_uint32(util.CURRENT_STATE.REGS[rs]).value - ctypes.c_uint32(util.CURRENT_STATE.REGS[rt]).value).value
    
    # If the instruction is of J-type
    elif op_code in [0x2, 0x3]: 
        target = TARGET(instr)
        if op_code == 0x2: # j
            util.CURRENT_STATE.PC = (util.CURRENT_STATE.PC & 0xf0000000) | (target << 2)
        else: # jal
            util.CURRENT_STATE.REGS[31] = util.CURRENT_STATE.PC + 8
            util.CURRENT_STATE.PC = (util.CURRENT_STATE.PC & 0xf0000000) | (target << 2)
    
    # If the instruction is of I-type
    else: 
        rs, rt, imm = RS(instr), RT(instr), IMM(instr)

        util.CURRENT_STATE.PC += 4

        # Process instruction
        if op_code == 0x09: # addiu
            util.CURRENT_STATE.REGS[rt] = ctypes.c_uint32(util.CURRENT_STATE.REGS[rs] + SIGN_EX(ctypes.c_uint16(imm).value)).value
        elif op_code == 0x0C: # andi
            util.CURRENT_STATE.REGS[rt] = util.CURRENT_STATE.REGS[rs] & imm
        elif op_code == 0x04: # beq
            if util.CURRENT_STATE.REGS[rs] == util.CURRENT_STATE.REGS[rt]:
                util.CURRENT_STATE.PC += SIGN_EX(imm << 2)
        elif op_code == 0x05: #bne
            if util.CURRENT_STATE.REGS[rs] != util.CURRENT_STATE.REGS[rt]:
                util.CURRENT_STATE.PC += SIGN_EX(imm << 2)
        elif op_code == 0x0F: # lui
            util.CURRENT_STATE.REGS[rt] = ctypes.c_int32(imm << 16).value
        elif op_code == 0x23: # lw
            util.CURRENT_STATE.REGS[rt] = util.mem_read(util.CURRENT_STATE.REGS[rs] + SIGN_EX(imm))
        elif op_code == 0x0D: # ori
            util.CURRENT_STATE.REGS[rt] = util.CURRENT_STATE.REGS[rs] | imm
        elif op_code == 0x0B: # sltiu
            util.CURRENT_STATE.REGS[rt] = int(ctypes.c_uint32(util.CURRENT_STATE.REGS[rs]).value < SIGN_EX(ctypes.c_uint16(imm).value))
        elif op_code == 0x2B: # sw
            util.mem_write(util.CURRENT_STATE.REGS[rs] + SIGN_EX(imm), util.CURRENT_STATE.REGS[rt])
