	.file	"victim.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	secret
	.section	.rodata
	.align	3
.LC0:
	.string	"cBWTwTwC5eKAcDxpwx88"
	.section	.sdata,"aw"
	.align	3
	.type	secret, @object
	.size	secret, 8
secret:
	.dword	.LC0
	.section	.rodata
	.align	3
.LC1:
	.string	"detected return address corruption!"
	.align	3
.LC2:
	.string	"found: %lx, expected: %lx\n"
	.text
	.align	2
	.globl	raise_alarm
	.type	raise_alarm, @function
raise_alarm:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	puts
	ld	a2,-32(s0)
	ld	a1,-24(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	li	a0,0
	call	exit
	.size	raise_alarm, .-raise_alarm
	.section	.rodata
	.align	3
.LC3:
	.string	"Ah! %s\n"
	.text
	.align	2
	.globl	print_secret
	.type	print_secret, @function
print_secret:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lui	a5,%hi(secret)
	ld	a5,%lo(secret)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	li	a0,0
	call	exit
	.size	print_secret, .-print_secret
	.globl	buffer
	.bss
	.align	3
	.type	buffer, @object
	.size	buffer, 256
buffer:
	.zero	256
	.globl	i
	.section	.sbss,"aw",@nobits
	.align	2
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.section	.rodata
	.align	3
.LC4:
	.string	"calls_b from %s: %d\n"
	.text
	.align	2
	.globl	receive_input
	.type	receive_input, @function
receive_input:
	addi	sp,sp,-160
	sd	ra,152(sp)
	sd	s0,144(sp)
	addi	s0,sp,160
	mv	a5,a0
	sw	a5,-148(s0)
	lw	a5,-148(s0)
	mv	a2,a5
	lui	a5,%hi(__func__.1)
	addi	a1,a5,%lo(__func__.1)
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	lw	a5,-148(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	lui	a5,%hi(_impure_ptr)
	ld	a5,%lo(_impure_ptr)(a5)
	ld	a5,8(a5)
	mv	a2,a5
	li	a1,256
	lui	a5,%hi(buffer)
	addi	a0,a5,%lo(buffer)
	call	fgets
	addi	a4,s0,-144
	lui	a5,%hi(buffer)
	addi	a1,a5,%lo(buffer)
	mv	a0,a4
	call	strcpy
	j	.L6
.L4:
	lw	a5,-148(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	mv	a0,a5
	/*call	receive_input*/
	.word	0xf85ff08b
.L6:
	nop
	ld	ra,152(sp)
	ld	s0,144(sp)
	addi	sp,sp,160
	.word	0x0000902b
	/*jr	ra*/
	.size	receive_input, .-receive_input
	.section	.rodata
	.align	3
.LC5:
	.string	"calls_a from %s: %d\n"
	.align	3
.LC6:
	.string	"Can you obtain the secret?"
	.align	3
.LC7:
	.string	"Returnning Normally"
	.text
	.align	2
	.globl	run
	.type	run, @function
run:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a2,a5
	lui	a5,%hi(__func__.0)
	addi	a1,a5,%lo(__func__.0)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L8
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	puts
	lw	a5,-24(s0)
	mv	a0,a5
	.word	0xf11ff08b
	/*call	receive_input*/
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	puts
	j	.L9
.L8:
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	/*call	run*/
	.word	0xf79ff08b
.L9:
	nop
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	.word	0x0000902b
	/*jr	ra*/
	.size	run, .-run
	.section	.rodata
	.align	3
.LC8:
	.string	"run is called for %d times and receive_input is called for %d times\n"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	mv	a5,a0
	sd	a1,-48(s0)
	sw	a5,-36(s0)
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L11
	ld	a5,-48(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	mv	a0,a5
	call	atoi
	mv	a5,a0
	sw	a5,-20(s0)
	ld	a5,-48(s0)
	addi	a5,a5,16
	ld	a5,0(a5)
	mv	a0,a5
	call	atoi
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L12
.L11:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L12
	ld	a5,-48(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	mv	a0,a5
	call	atoi
	mv	a5,a0
	sw	a5,-20(s0)
.L12:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lw	a4,-24(s0)
	addiw	a4,a4,1
	sext.w	a4,a4
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	printf
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	mv	a1,a4
	mv	a0,a5
	/*call	run*/
	.word	0xe85ff08b
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"receive_input"
	.section	.srodata,"a"
	.align	3
	.type	__func__.0, @object
	.size	__func__.0, 4
__func__.0:
	.string	"run"
	.ident	"GCC: (g5964b5cd727) 11.1.0"
