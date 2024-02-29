	.file	"tut1.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
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
	.string	"Ah! %s\n"
	.text
	.align	1
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
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
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
	.globl	frame
	.align	3
	.type	frame, @object
	.size	frame, 8
frame:
	.zero	8
	.section	.rodata
	.align	3
.LC2:
	.string	"[%p, %d]: %lx\n"
	.text
	.align	1
	.globl	dump_frame
	.type	dump_frame, @function
dump_frame:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	sw	zero,-20(s0)
	sw	zero,-20(s0)
	j	.L3
.L4:
	lw	a5,-20(s0)
	slli	a5,a5,3
	neg	a5,a5
	ld	a4,-32(s0)
	add	a1,a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,3
	neg	a5,a5
	ld	a4,-32(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-20(s0)
	mv	a3,a4
	mv	a2,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	lui	a5,%hi(_impure_ptr)
	ld	a5,%lo(_impure_ptr)(a5)
	ld	a5,16(a5)
	mv	a0,a5
	call	fflush
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L3:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L4
	nop
	nop
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	dump_frame, .-dump_frame
	.align	1
	.globl	receive_input
	.type	receive_input, @function
receive_input:
	addi	sp,sp,-144
	sd	ra,136(sp)
	sd	s0,128(sp)
	addi	s0,sp,144
	mv	a4,s0
	lui	a5,%hi(frame)
	sd	a4,%lo(frame)(a5)
	lui	a5,%hi(frame)
	ld	a5,%lo(frame)(a5)
	mv	a0,a5
	call	dump_frame
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
	lui	a5,%hi(frame)
	ld	a5,%lo(frame)(a5)
	mv	a0,a5
	call	dump_frame
	nop
	ld	ra,136(sp)
	ld	s0,128(sp)
	addi	sp,sp,144
	jr	ra
	.size	receive_input, .-receive_input
	.section	.rodata
	.align	3
.LC3:
	.string	"Can you obtain the secret?"
	.align	3
.LC4:
	.string	"returning correctly"
	.text
	.align	1
	.globl	run
	.type	run, @function
run:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	puts
	call	receive_input
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	puts
	nop
	mv	a0,a5
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	run, .-run
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	call	run
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (g5964b5cd727) 11.1.0"