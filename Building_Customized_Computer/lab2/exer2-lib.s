	.file	"exer2-lib.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	alloc
	.type	alloc, @function
alloc:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	li	a0,1024
	call	malloc
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	alloc, .-alloc
	.section	.rodata
	.align	3
.LC0:
	.string	"detected error! found ret: %lx\n"
	.text
	.align	1
	.globl	report_error
	.type	report_error, @function
report_error:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	sd	a0,-24(s0)
	ld	a1,-24(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	nop
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	report_error, .-report_error
	.ident	"GCC: (g5964b5cd727) 11.1.0"
