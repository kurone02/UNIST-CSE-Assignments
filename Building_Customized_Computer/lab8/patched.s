.global _start
_start:
	li	x1, 10
	li	x0, 10
	addi	x2, x1, 10
	add	x3, x2, x1
	.word   0x0080008b
	/*jal	_target*/
halt:
	j	halt

_target:
	.word  0x0000809b
	/*jr	ra*/
