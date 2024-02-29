
tut1:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	1141                	addi	sp,sp,-16
   100ea:	4581                	li	a1,0
   100ec:	e022                	sd	s0,0(sp)
   100ee:	e406                	sd	ra,8(sp)
   100f0:	842a                	mv	s0,a0
   100f2:	51c030ef          	jal	ra,1360e <__call_exitprocs>
   100f6:	6301b503          	ld	a0,1584(gp) # 1f748 <_global_impure_ptr>
   100fa:	6d3c                	ld	a5,88(a0)
   100fc:	c391                	beqz	a5,10100 <exit+0x18>
   100fe:	9782                	jalr	a5
   10100:	8522                	mv	a0,s0
   10102:	7310a0ef          	jal	ra,1b032 <_exit>

0000000000010106 <register_fini>:
   10106:	00000793          	li	a5,0
   1010a:	c791                	beqz	a5,10116 <register_fini+0x10>
   1010c:	654d                	lui	a0,0x13
   1010e:	7c850513          	addi	a0,a0,1992 # 137c8 <__libc_fini_array>
   10112:	5be0306f          	j	136d0 <atexit>
   10116:	8082                	ret

0000000000010118 <_start>:
   10118:	0000f197          	auipc	gp,0xf
   1011c:	00018193          	mv	gp,gp
   10120:	66018513          	addi	a0,gp,1632 # 1f778 <i>
   10124:	0000f617          	auipc	a2,0xf
   10128:	7f460613          	addi	a2,a2,2036 # 1f918 <__BSS_END__>
   1012c:	8e09                	sub	a2,a2,a0
   1012e:	4581                	li	a1,0
   10130:	336010ef          	jal	ra,11466 <memset>
   10134:	00003517          	auipc	a0,0x3
   10138:	59c50513          	addi	a0,a0,1436 # 136d0 <atexit>
   1013c:	c519                	beqz	a0,1014a <_start+0x32>
   1013e:	00003517          	auipc	a0,0x3
   10142:	68a50513          	addi	a0,a0,1674 # 137c8 <__libc_fini_array>
   10146:	58a030ef          	jal	ra,136d0 <atexit>
   1014a:	325000ef          	jal	ra,10c6e <__libc_init_array>
   1014e:	4502                	lw	a0,0(sp)
   10150:	002c                	addi	a1,sp,8
   10152:	4601                	li	a2,0
   10154:	16a000ef          	jal	ra,102be <main>
   10158:	bf41                	j	100e8 <exit>

000000000001015a <__do_global_dtors_aux>:
   1015a:	1141                	addi	sp,sp,-16
   1015c:	e022                	sd	s0,0(sp)
   1015e:	6a01c783          	lbu	a5,1696(gp) # 1f7b8 <completed.1>
   10162:	e406                	sd	ra,8(sp)
   10164:	ef91                	bnez	a5,10180 <__do_global_dtors_aux+0x26>
   10166:	00000793          	li	a5,0
   1016a:	cb81                	beqz	a5,1017a <__do_global_dtors_aux+0x20>
   1016c:	6579                	lui	a0,0x1e
   1016e:	5f850513          	addi	a0,a0,1528 # 1e5f8 <__FRAME_END__>
   10172:	00000097          	auipc	ra,0x0
   10176:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   1017a:	4785                	li	a5,1
   1017c:	6af18023          	sb	a5,1696(gp) # 1f7b8 <completed.1>
   10180:	60a2                	ld	ra,8(sp)
   10182:	6402                	ld	s0,0(sp)
   10184:	0141                	addi	sp,sp,16
   10186:	8082                	ret

0000000000010188 <frame_dummy>:
   10188:	00000793          	li	a5,0
   1018c:	cb91                	beqz	a5,101a0 <frame_dummy+0x18>
   1018e:	6579                	lui	a0,0x1e
   10190:	6a818593          	addi	a1,gp,1704 # 1f7c0 <object.0>
   10194:	5f850513          	addi	a0,a0,1528 # 1e5f8 <__FRAME_END__>
   10198:	00000317          	auipc	t1,0x0
   1019c:	00000067          	jr	zero # 0 <exit-0x100e8>
   101a0:	8082                	ret

00000000000101a2 <print_secret>:
   101a2:	1141                	addi	sp,sp,-16
   101a4:	e406                	sd	ra,8(sp)
   101a6:	e022                	sd	s0,0(sp)
   101a8:	0800                	addi	s0,sp,16
   101aa:	6401b783          	ld	a5,1600(gp) # 1f758 <secret>
   101ae:	85be                	mv	a1,a5
   101b0:	67f1                	lui	a5,0x1c
   101b2:	6b878513          	addi	a0,a5,1720 # 1c6b8 <__clzdi2+0x4e>
   101b6:	380010ef          	jal	ra,11536 <printf>
   101ba:	4501                	li	a0,0
   101bc:	f2dff0ef          	jal	ra,100e8 <exit>

00000000000101c0 <dump_frame>:
   101c0:	7179                	addi	sp,sp,-48
   101c2:	f406                	sd	ra,40(sp)
   101c4:	f022                	sd	s0,32(sp)
   101c6:	1800                	addi	s0,sp,48
   101c8:	fca43c23          	sd	a0,-40(s0)
   101cc:	fd843783          	ld	a5,-40(s0)
   101d0:	fef43023          	sd	a5,-32(s0)
   101d4:	fe042623          	sw	zero,-20(s0)
   101d8:	fe042623          	sw	zero,-20(s0)
   101dc:	a0b9                	j	1022a <dump_frame+0x6a>
   101de:	fec42783          	lw	a5,-20(s0)
   101e2:	078e                	slli	a5,a5,0x3
   101e4:	40f007b3          	neg	a5,a5
   101e8:	fe043703          	ld	a4,-32(s0)
   101ec:	00f705b3          	add	a1,a4,a5
   101f0:	fec42783          	lw	a5,-20(s0)
   101f4:	078e                	slli	a5,a5,0x3
   101f6:	40f007b3          	neg	a5,a5
   101fa:	fe043703          	ld	a4,-32(s0)
   101fe:	97ba                	add	a5,a5,a4
   10200:	6398                	ld	a4,0(a5)
   10202:	fec42783          	lw	a5,-20(s0)
   10206:	86ba                	mv	a3,a4
   10208:	863e                	mv	a2,a5
   1020a:	67f1                	lui	a5,0x1c
   1020c:	6c078513          	addi	a0,a5,1728 # 1c6c0 <__clzdi2+0x56>
   10210:	326010ef          	jal	ra,11536 <printf>
   10214:	6481b783          	ld	a5,1608(gp) # 1f760 <_impure_ptr>
   10218:	6b9c                	ld	a5,16(a5)
   1021a:	853e                	mv	a0,a5
   1021c:	282000ef          	jal	ra,1049e <fflush>
   10220:	fec42783          	lw	a5,-20(s0)
   10224:	2785                	addiw	a5,a5,1
   10226:	fef42623          	sw	a5,-20(s0)
   1022a:	fec42783          	lw	a5,-20(s0)
   1022e:	0007871b          	sext.w	a4,a5
   10232:	47bd                	li	a5,15
   10234:	fae7d5e3          	bge	a5,a4,101de <dump_frame+0x1e>
   10238:	0001                	nop
   1023a:	0001                	nop
   1023c:	70a2                	ld	ra,40(sp)
   1023e:	7402                	ld	s0,32(sp)
   10240:	6145                	addi	sp,sp,48
   10242:	8082                	ret

0000000000010244 <receive_input>:
   10244:	7175                	addi	sp,sp,-144
   10246:	e506                	sd	ra,136(sp)
   10248:	e122                	sd	s0,128(sp)
   1024a:	0900                	addi	s0,sp,144
   1024c:	8722                	mv	a4,s0
   1024e:	66e1b423          	sd	a4,1640(gp) # 1f780 <frame>
   10252:	6681b783          	ld	a5,1640(gp) # 1f780 <frame>
   10256:	853e                	mv	a0,a5
   10258:	f69ff0ef          	jal	ra,101c0 <dump_frame>
   1025c:	6481b783          	ld	a5,1608(gp) # 1f760 <_impure_ptr>
   10260:	679c                	ld	a5,8(a5)
   10262:	863e                	mv	a2,a5
   10264:	10000593          	li	a1,256
   10268:	6d818513          	addi	a0,gp,1752 # 1f7f0 <buffer>
   1026c:	33e000ef          	jal	ra,105aa <fgets>
   10270:	f7040713          	addi	a4,s0,-144
   10274:	6d818593          	addi	a1,gp,1752 # 1f7f0 <buffer>
   10278:	853a                	mv	a0,a4
   1027a:	5f8010ef          	jal	ra,11872 <strcpy>
   1027e:	6681b783          	ld	a5,1640(gp) # 1f780 <frame>
   10282:	853e                	mv	a0,a5
   10284:	f3dff0ef          	jal	ra,101c0 <dump_frame>
   10288:	0001                	nop
   1028a:	60aa                	ld	ra,136(sp)
   1028c:	640a                	ld	s0,128(sp)
   1028e:	6149                	addi	sp,sp,144
   10290:	8082                	ret

0000000000010292 <run>:
   10292:	1141                	addi	sp,sp,-16
   10294:	e406                	sd	ra,8(sp)
   10296:	e022                	sd	s0,0(sp)
   10298:	0800                	addi	s0,sp,16
   1029a:	67f1                	lui	a5,0x1c
   1029c:	6d078513          	addi	a0,a5,1744 # 1c6d0 <__clzdi2+0x66>
   102a0:	340010ef          	jal	ra,115e0 <puts>
   102a4:	fa1ff0ef          	jal	ra,10244 <receive_input>
   102a8:	67f1                	lui	a5,0x1c
   102aa:	6f078513          	addi	a0,a5,1776 # 1c6f0 <__clzdi2+0x86>
   102ae:	332010ef          	jal	ra,115e0 <puts>
   102b2:	0001                	nop
   102b4:	853e                	mv	a0,a5
   102b6:	60a2                	ld	ra,8(sp)
   102b8:	6402                	ld	s0,0(sp)
   102ba:	0141                	addi	sp,sp,16
   102bc:	8082                	ret

00000000000102be <main>:
   102be:	1141                	addi	sp,sp,-16
   102c0:	e406                	sd	ra,8(sp)
   102c2:	e022                	sd	s0,0(sp)
   102c4:	0800                	addi	s0,sp,16
   102c6:	fcdff0ef          	jal	ra,10292 <run>
   102ca:	4781                	li	a5,0
   102cc:	853e                	mv	a0,a5
   102ce:	60a2                	ld	ra,8(sp)
   102d0:	6402                	ld	s0,0(sp)
   102d2:	0141                	addi	sp,sp,16
   102d4:	8082                	ret

00000000000102d6 <__sflush_r>:
   102d6:	01059783          	lh	a5,16(a1)
   102da:	7179                	addi	sp,sp,-48
   102dc:	f022                	sd	s0,32(sp)
   102de:	e44e                	sd	s3,8(sp)
   102e0:	f406                	sd	ra,40(sp)
   102e2:	ec26                	sd	s1,24(sp)
   102e4:	e84a                	sd	s2,16(sp)
   102e6:	0087f693          	andi	a3,a5,8
   102ea:	842e                	mv	s0,a1
   102ec:	89aa                	mv	s3,a0
   102ee:	ead5                	bnez	a3,103a2 <__sflush_r+0xcc>
   102f0:	6705                	lui	a4,0x1
   102f2:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8e8>
   102f6:	4594                	lw	a3,8(a1)
   102f8:	8fd9                	or	a5,a5,a4
   102fa:	00f59823          	sh	a5,16(a1)
   102fe:	10d05063          	blez	a3,103fe <__sflush_r+0x128>
   10302:	6438                	ld	a4,72(s0)
   10304:	c759                	beqz	a4,10392 <__sflush_r+0xbc>
   10306:	17c2                	slli	a5,a5,0x30
   10308:	93c1                	srli	a5,a5,0x30
   1030a:	6685                	lui	a3,0x1
   1030c:	0009a483          	lw	s1,0(s3)
   10310:	8efd                	and	a3,a3,a5
   10312:	0009a023          	sw	zero,0(s3)
   10316:	780c                	ld	a1,48(s0)
   10318:	e6fd                	bnez	a3,10406 <__sflush_r+0x130>
   1031a:	4601                	li	a2,0
   1031c:	4685                	li	a3,1
   1031e:	854e                	mv	a0,s3
   10320:	9702                	jalr	a4
   10322:	57fd                	li	a5,-1
   10324:	862a                	mv	a2,a0
   10326:	10f50763          	beq	a0,a5,10434 <__sflush_r+0x15e>
   1032a:	01045783          	lhu	a5,16(s0)
   1032e:	6438                	ld	a4,72(s0)
   10330:	780c                	ld	a1,48(s0)
   10332:	8b91                	andi	a5,a5,4
   10334:	c799                	beqz	a5,10342 <__sflush_r+0x6c>
   10336:	4414                	lw	a3,8(s0)
   10338:	6c3c                	ld	a5,88(s0)
   1033a:	8e15                	sub	a2,a2,a3
   1033c:	c399                	beqz	a5,10342 <__sflush_r+0x6c>
   1033e:	583c                	lw	a5,112(s0)
   10340:	8e1d                	sub	a2,a2,a5
   10342:	4681                	li	a3,0
   10344:	854e                	mv	a0,s3
   10346:	9702                	jalr	a4
   10348:	57fd                	li	a5,-1
   1034a:	0cf51063          	bne	a0,a5,1040a <__sflush_r+0x134>
   1034e:	0009a703          	lw	a4,0(s3)
   10352:	01041783          	lh	a5,16(s0)
   10356:	cf6d                	beqz	a4,10450 <__sflush_r+0x17a>
   10358:	46f5                	li	a3,29
   1035a:	00d70563          	beq	a4,a3,10364 <__sflush_r+0x8e>
   1035e:	46d9                	li	a3,22
   10360:	0ed71e63          	bne	a4,a3,1045c <__sflush_r+0x186>
   10364:	6c14                	ld	a3,24(s0)
   10366:	777d                	lui	a4,0xfffff
   10368:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdfee7>
   1036c:	8ff9                	and	a5,a5,a4
   1036e:	00f41823          	sh	a5,16(s0)
   10372:	00042423          	sw	zero,8(s0)
   10376:	e014                	sd	a3,0(s0)
   10378:	6c2c                	ld	a1,88(s0)
   1037a:	0099a023          	sw	s1,0(s3)
   1037e:	c991                	beqz	a1,10392 <__sflush_r+0xbc>
   10380:	07440793          	addi	a5,s0,116
   10384:	00f58563          	beq	a1,a5,1038e <__sflush_r+0xb8>
   10388:	854e                	mv	a0,s3
   1038a:	586000ef          	jal	ra,10910 <_free_r>
   1038e:	04043c23          	sd	zero,88(s0)
   10392:	4501                	li	a0,0
   10394:	70a2                	ld	ra,40(sp)
   10396:	7402                	ld	s0,32(sp)
   10398:	64e2                	ld	s1,24(sp)
   1039a:	6942                	ld	s2,16(sp)
   1039c:	69a2                	ld	s3,8(sp)
   1039e:	6145                	addi	sp,sp,48
   103a0:	8082                	ret
   103a2:	0185b903          	ld	s2,24(a1)
   103a6:	fe0906e3          	beqz	s2,10392 <__sflush_r+0xbc>
   103aa:	6184                	ld	s1,0(a1)
   103ac:	03079713          	slli	a4,a5,0x30
   103b0:	9341                	srli	a4,a4,0x30
   103b2:	8b0d                	andi	a4,a4,3
   103b4:	0125b023          	sd	s2,0(a1)
   103b8:	412484bb          	subw	s1,s1,s2
   103bc:	4781                	li	a5,0
   103be:	e311                	bnez	a4,103c2 <__sflush_r+0xec>
   103c0:	519c                	lw	a5,32(a1)
   103c2:	c45c                	sw	a5,12(s0)
   103c4:	00904663          	bgtz	s1,103d0 <__sflush_r+0xfa>
   103c8:	b7e9                	j	10392 <__sflush_r+0xbc>
   103ca:	992a                	add	s2,s2,a0
   103cc:	fc9053e3          	blez	s1,10392 <__sflush_r+0xbc>
   103d0:	603c                	ld	a5,64(s0)
   103d2:	780c                	ld	a1,48(s0)
   103d4:	86a6                	mv	a3,s1
   103d6:	864a                	mv	a2,s2
   103d8:	854e                	mv	a0,s3
   103da:	9782                	jalr	a5
   103dc:	9c89                	subw	s1,s1,a0
   103de:	fea046e3          	bgtz	a0,103ca <__sflush_r+0xf4>
   103e2:	01045783          	lhu	a5,16(s0)
   103e6:	70a2                	ld	ra,40(sp)
   103e8:	64e2                	ld	s1,24(sp)
   103ea:	0407e793          	ori	a5,a5,64
   103ee:	00f41823          	sh	a5,16(s0)
   103f2:	7402                	ld	s0,32(sp)
   103f4:	6942                	ld	s2,16(sp)
   103f6:	69a2                	ld	s3,8(sp)
   103f8:	557d                	li	a0,-1
   103fa:	6145                	addi	sp,sp,48
   103fc:	8082                	ret
   103fe:	59b8                	lw	a4,112(a1)
   10400:	f0e041e3          	bgtz	a4,10302 <__sflush_r+0x2c>
   10404:	b779                	j	10392 <__sflush_r+0xbc>
   10406:	6850                	ld	a2,144(s0)
   10408:	b72d                	j	10332 <__sflush_r+0x5c>
   1040a:	01045783          	lhu	a5,16(s0)
   1040e:	777d                	lui	a4,0xfffff
   10410:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdfee7>
   10414:	8ff9                	and	a5,a5,a4
   10416:	6c14                	ld	a3,24(s0)
   10418:	0107979b          	slliw	a5,a5,0x10
   1041c:	4107d79b          	sraiw	a5,a5,0x10
   10420:	6705                	lui	a4,0x1
   10422:	00f41823          	sh	a5,16(s0)
   10426:	00042423          	sw	zero,8(s0)
   1042a:	e014                	sd	a3,0(s0)
   1042c:	8ff9                	and	a5,a5,a4
   1042e:	d7a9                	beqz	a5,10378 <__sflush_r+0xa2>
   10430:	e848                	sd	a0,144(s0)
   10432:	b799                	j	10378 <__sflush_r+0xa2>
   10434:	0009a783          	lw	a5,0(s3)
   10438:	ee0789e3          	beqz	a5,1032a <__sflush_r+0x54>
   1043c:	4775                	li	a4,29
   1043e:	00e78563          	beq	a5,a4,10448 <__sflush_r+0x172>
   10442:	4759                	li	a4,22
   10444:	f8e79fe3          	bne	a5,a4,103e2 <__sflush_r+0x10c>
   10448:	0099a023          	sw	s1,0(s3)
   1044c:	4501                	li	a0,0
   1044e:	b799                	j	10394 <__sflush_r+0xbe>
   10450:	777d                	lui	a4,0xfffff
   10452:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdfee7>
   10456:	6c14                	ld	a3,24(s0)
   10458:	8ff9                	and	a5,a5,a4
   1045a:	b7d9                	j	10420 <__sflush_r+0x14a>
   1045c:	0407e793          	ori	a5,a5,64
   10460:	00f41823          	sh	a5,16(s0)
   10464:	557d                	li	a0,-1
   10466:	b73d                	j	10394 <__sflush_r+0xbe>

0000000000010468 <_fflush_r>:
   10468:	1101                	addi	sp,sp,-32
   1046a:	e822                	sd	s0,16(sp)
   1046c:	ec06                	sd	ra,24(sp)
   1046e:	842a                	mv	s0,a0
   10470:	c119                	beqz	a0,10476 <_fflush_r+0xe>
   10472:	493c                	lw	a5,80(a0)
   10474:	cb89                	beqz	a5,10486 <_fflush_r+0x1e>
   10476:	01059783          	lh	a5,16(a1)
   1047a:	ef89                	bnez	a5,10494 <_fflush_r+0x2c>
   1047c:	60e2                	ld	ra,24(sp)
   1047e:	6442                	ld	s0,16(sp)
   10480:	4501                	li	a0,0
   10482:	6105                	addi	sp,sp,32
   10484:	8082                	ret
   10486:	e42e                	sd	a1,8(sp)
   10488:	38c000ef          	jal	ra,10814 <__sinit>
   1048c:	65a2                	ld	a1,8(sp)
   1048e:	01059783          	lh	a5,16(a1)
   10492:	d7ed                	beqz	a5,1047c <_fflush_r+0x14>
   10494:	8522                	mv	a0,s0
   10496:	6442                	ld	s0,16(sp)
   10498:	60e2                	ld	ra,24(sp)
   1049a:	6105                	addi	sp,sp,32
   1049c:	bd2d                	j	102d6 <__sflush_r>

000000000001049e <fflush>:
   1049e:	cd1d                	beqz	a0,104dc <fflush+0x3e>
   104a0:	1101                	addi	sp,sp,-32
   104a2:	e822                	sd	s0,16(sp)
   104a4:	842a                	mv	s0,a0
   104a6:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   104aa:	ec06                	sd	ra,24(sp)
   104ac:	c119                	beqz	a0,104b2 <fflush+0x14>
   104ae:	493c                	lw	a5,80(a0)
   104b0:	cf91                	beqz	a5,104cc <fflush+0x2e>
   104b2:	01041783          	lh	a5,16(s0)
   104b6:	e791                	bnez	a5,104c2 <fflush+0x24>
   104b8:	60e2                	ld	ra,24(sp)
   104ba:	6442                	ld	s0,16(sp)
   104bc:	4501                	li	a0,0
   104be:	6105                	addi	sp,sp,32
   104c0:	8082                	ret
   104c2:	85a2                	mv	a1,s0
   104c4:	6442                	ld	s0,16(sp)
   104c6:	60e2                	ld	ra,24(sp)
   104c8:	6105                	addi	sp,sp,32
   104ca:	b531                	j	102d6 <__sflush_r>
   104cc:	e42a                	sd	a0,8(sp)
   104ce:	346000ef          	jal	ra,10814 <__sinit>
   104d2:	01041783          	lh	a5,16(s0)
   104d6:	6522                	ld	a0,8(sp)
   104d8:	d3e5                	beqz	a5,104b8 <fflush+0x1a>
   104da:	b7e5                	j	104c2 <fflush+0x24>
   104dc:	6301b503          	ld	a0,1584(gp) # 1f748 <_global_impure_ptr>
   104e0:	65c1                	lui	a1,0x10
   104e2:	46858593          	addi	a1,a1,1128 # 10468 <_fflush_r>
   104e6:	adfd                	j	10be4 <_fwalk_reent>

00000000000104e8 <_fgets_r>:
   104e8:	4785                	li	a5,1
   104ea:	0ac7de63          	bge	a5,a2,105a6 <_fgets_r+0xbe>
   104ee:	7139                	addi	sp,sp,-64
   104f0:	f822                	sd	s0,48(sp)
   104f2:	f04a                	sd	s2,32(sp)
   104f4:	ec4e                	sd	s3,24(sp)
   104f6:	e852                	sd	s4,16(sp)
   104f8:	fc06                	sd	ra,56(sp)
   104fa:	f426                	sd	s1,40(sp)
   104fc:	e456                	sd	s5,8(sp)
   104fe:	e05a                	sd	s6,0(sp)
   10500:	8932                	mv	s2,a2
   10502:	8a2a                	mv	s4,a0
   10504:	89ae                	mv	s3,a1
   10506:	8436                	mv	s0,a3
   10508:	c119                	beqz	a0,1050e <_fgets_r+0x26>
   1050a:	493c                	lw	a5,80(a0)
   1050c:	cbc1                	beqz	a5,1059c <_fgets_r+0xb4>
   1050e:	397d                	addiw	s2,s2,-1
   10510:	8ace                	mv	s5,s3
   10512:	a819                	j	10528 <_fgets_r+0x40>
   10514:	601c                	ld	a5,0(s0)
   10516:	9f05                	subw	a4,a4,s1
   10518:	c418                	sw	a4,8(s0)
   1051a:	97a6                	add	a5,a5,s1
   1051c:	e01c                	sd	a5,0(s0)
   1051e:	9aa6                	add	s5,s5,s1
   10520:	65f000ef          	jal	ra,1137e <memcpy>
   10524:	04090f63          	beqz	s2,10582 <_fgets_r+0x9a>
   10528:	441c                	lw	a5,8(s0)
   1052a:	85a2                	mv	a1,s0
   1052c:	8552                	mv	a0,s4
   1052e:	e789                	bnez	a5,10538 <_fgets_r+0x50>
   10530:	0cc010ef          	jal	ra,115fc <__srefill_r>
   10534:	e529                	bnez	a0,1057e <_fgets_r+0x96>
   10536:	441c                	lw	a5,8(s0)
   10538:	00043b03          	ld	s6,0(s0)
   1053c:	45a9                	li	a1,10
   1053e:	84ca                	mv	s1,s2
   10540:	0127f363          	bgeu	a5,s2,10546 <_fgets_r+0x5e>
   10544:	84be                	mv	s1,a5
   10546:	8626                	mv	a2,s1
   10548:	855a                	mv	a0,s6
   1054a:	5a7000ef          	jal	ra,112f0 <memchr>
   1054e:	0004871b          	sext.w	a4,s1
   10552:	87aa                	mv	a5,a0
   10554:	40e9093b          	subw	s2,s2,a4
   10558:	8556                	mv	a0,s5
   1055a:	4418                	lw	a4,8(s0)
   1055c:	8626                	mv	a2,s1
   1055e:	85da                	mv	a1,s6
   10560:	dbd5                	beqz	a5,10514 <_fgets_r+0x2c>
   10562:	0785                	addi	a5,a5,1
   10564:	416784b3          	sub	s1,a5,s6
   10568:	9f05                	subw	a4,a4,s1
   1056a:	8626                	mv	a2,s1
   1056c:	c418                	sw	a4,8(s0)
   1056e:	e01c                	sd	a5,0(s0)
   10570:	60f000ef          	jal	ra,1137e <memcpy>
   10574:	94d6                	add	s1,s1,s5
   10576:	00048023          	sb	zero,0(s1)
   1057a:	854e                	mv	a0,s3
   1057c:	a031                	j	10588 <_fgets_r+0xa0>
   1057e:	033a8263          	beq	s5,s3,105a2 <_fgets_r+0xba>
   10582:	000a8023          	sb	zero,0(s5)
   10586:	854e                	mv	a0,s3
   10588:	70e2                	ld	ra,56(sp)
   1058a:	7442                	ld	s0,48(sp)
   1058c:	74a2                	ld	s1,40(sp)
   1058e:	7902                	ld	s2,32(sp)
   10590:	69e2                	ld	s3,24(sp)
   10592:	6a42                	ld	s4,16(sp)
   10594:	6aa2                	ld	s5,8(sp)
   10596:	6b02                	ld	s6,0(sp)
   10598:	6121                	addi	sp,sp,64
   1059a:	8082                	ret
   1059c:	278000ef          	jal	ra,10814 <__sinit>
   105a0:	b7bd                	j	1050e <_fgets_r+0x26>
   105a2:	4501                	li	a0,0
   105a4:	b7d5                	j	10588 <_fgets_r+0xa0>
   105a6:	4501                	li	a0,0
   105a8:	8082                	ret

00000000000105aa <fgets>:
   105aa:	87aa                	mv	a5,a0
   105ac:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   105b0:	86b2                	mv	a3,a2
   105b2:	862e                	mv	a2,a1
   105b4:	85be                	mv	a1,a5
   105b6:	bf0d                	j	104e8 <_fgets_r>

00000000000105b8 <__fp_lock>:
   105b8:	4501                	li	a0,0
   105ba:	8082                	ret

00000000000105bc <_cleanup_r>:
   105bc:	65cd                	lui	a1,0x13
   105be:	71258593          	addi	a1,a1,1810 # 13712 <_fclose_r>
   105c2:	a50d                	j	10be4 <_fwalk_reent>

00000000000105c4 <__fp_unlock>:
   105c4:	4501                	li	a0,0
   105c6:	8082                	ret

00000000000105c8 <__sinit.part.0>:
   105c8:	7139                	addi	sp,sp,-64
   105ca:	67c1                	lui	a5,0x10
   105cc:	fc06                	sd	ra,56(sp)
   105ce:	f822                	sd	s0,48(sp)
   105d0:	f426                	sd	s1,40(sp)
   105d2:	f04a                	sd	s2,32(sp)
   105d4:	ec4e                	sd	s3,24(sp)
   105d6:	e852                	sd	s4,16(sp)
   105d8:	e456                	sd	s5,8(sp)
   105da:	e05a                	sd	s6,0(sp)
   105dc:	6500                	ld	s0,8(a0)
   105de:	5bc78793          	addi	a5,a5,1468 # 105bc <_cleanup_r>
   105e2:	ed3c                	sd	a5,88(a0)
   105e4:	53850713          	addi	a4,a0,1336
   105e8:	478d                	li	a5,3
   105ea:	52e53823          	sd	a4,1328(a0)
   105ee:	52f52423          	sw	a5,1320(a0)
   105f2:	52053023          	sd	zero,1312(a0)
   105f6:	4791                	li	a5,4
   105f8:	892a                	mv	s2,a0
   105fa:	c81c                	sw	a5,16(s0)
   105fc:	4621                	li	a2,8
   105fe:	4581                	li	a1,0
   10600:	0a042623          	sw	zero,172(s0)
   10604:	00043023          	sd	zero,0(s0)
   10608:	00043423          	sd	zero,8(s0)
   1060c:	00043c23          	sd	zero,24(s0)
   10610:	02042023          	sw	zero,32(s0)
   10614:	02042423          	sw	zero,40(s0)
   10618:	0a440513          	addi	a0,s0,164
   1061c:	64b000ef          	jal	ra,11466 <memset>
   10620:	6b45                	lui	s6,0x11
   10622:	01093483          	ld	s1,16(s2)
   10626:	6ac5                	lui	s5,0x11
   10628:	6a49                	lui	s4,0x12
   1062a:	69c9                	lui	s3,0x12
   1062c:	798b0b13          	addi	s6,s6,1944 # 11798 <__sread>
   10630:	7d4a8a93          	addi	s5,s5,2004 # 117d4 <__swrite>
   10634:	828a0a13          	addi	s4,s4,-2008 # 11828 <__sseek>
   10638:	86a98993          	addi	s3,s3,-1942 # 1186a <__sclose>
   1063c:	67c1                	lui	a5,0x10
   1063e:	03643c23          	sd	s6,56(s0)
   10642:	05543023          	sd	s5,64(s0)
   10646:	05443423          	sd	s4,72(s0)
   1064a:	05343823          	sd	s3,80(s0)
   1064e:	f800                	sd	s0,48(s0)
   10650:	07a5                	addi	a5,a5,9 # 10009 <exit-0xdf>
   10652:	c89c                	sw	a5,16(s1)
   10654:	4621                	li	a2,8
   10656:	4581                	li	a1,0
   10658:	0a04a623          	sw	zero,172(s1)
   1065c:	0004b023          	sd	zero,0(s1)
   10660:	0004b423          	sd	zero,8(s1)
   10664:	0004bc23          	sd	zero,24(s1)
   10668:	0204a023          	sw	zero,32(s1)
   1066c:	0204a423          	sw	zero,40(s1)
   10670:	0a448513          	addi	a0,s1,164
   10674:	5f3000ef          	jal	ra,11466 <memset>
   10678:	01893403          	ld	s0,24(s2)
   1067c:	000207b7          	lui	a5,0x20
   10680:	0364bc23          	sd	s6,56(s1)
   10684:	0554b023          	sd	s5,64(s1)
   10688:	0544b423          	sd	s4,72(s1)
   1068c:	0534b823          	sd	s3,80(s1)
   10690:	f884                	sd	s1,48(s1)
   10692:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x6fa>
   10694:	c81c                	sw	a5,16(s0)
   10696:	0a042623          	sw	zero,172(s0)
   1069a:	00043023          	sd	zero,0(s0)
   1069e:	00043423          	sd	zero,8(s0)
   106a2:	00043c23          	sd	zero,24(s0)
   106a6:	02042023          	sw	zero,32(s0)
   106aa:	02042423          	sw	zero,40(s0)
   106ae:	0a440513          	addi	a0,s0,164
   106b2:	4621                	li	a2,8
   106b4:	4581                	li	a1,0
   106b6:	5b1000ef          	jal	ra,11466 <memset>
   106ba:	70e2                	ld	ra,56(sp)
   106bc:	03643c23          	sd	s6,56(s0)
   106c0:	05543023          	sd	s5,64(s0)
   106c4:	05443423          	sd	s4,72(s0)
   106c8:	05343823          	sd	s3,80(s0)
   106cc:	f800                	sd	s0,48(s0)
   106ce:	7442                	ld	s0,48(sp)
   106d0:	4785                	li	a5,1
   106d2:	04f92823          	sw	a5,80(s2)
   106d6:	74a2                	ld	s1,40(sp)
   106d8:	7902                	ld	s2,32(sp)
   106da:	69e2                	ld	s3,24(sp)
   106dc:	6a42                	ld	s4,16(sp)
   106de:	6aa2                	ld	s5,8(sp)
   106e0:	6b02                	ld	s6,0(sp)
   106e2:	6121                	addi	sp,sp,64
   106e4:	8082                	ret

00000000000106e6 <__sfmoreglue>:
   106e6:	1101                	addi	sp,sp,-32
   106e8:	e426                	sd	s1,8(sp)
   106ea:	0b000793          	li	a5,176
   106ee:	fff5849b          	addiw	s1,a1,-1
   106f2:	02f484b3          	mul	s1,s1,a5
   106f6:	e04a                	sd	s2,0(sp)
   106f8:	892e                	mv	s2,a1
   106fa:	e822                	sd	s0,16(sp)
   106fc:	ec06                	sd	ra,24(sp)
   106fe:	0c848593          	addi	a1,s1,200
   10702:	5d6000ef          	jal	ra,10cd8 <_malloc_r>
   10706:	842a                	mv	s0,a0
   10708:	cd01                	beqz	a0,10720 <__sfmoreglue+0x3a>
   1070a:	0561                	addi	a0,a0,24
   1070c:	00043023          	sd	zero,0(s0)
   10710:	01242423          	sw	s2,8(s0)
   10714:	e808                	sd	a0,16(s0)
   10716:	0b048613          	addi	a2,s1,176
   1071a:	4581                	li	a1,0
   1071c:	54b000ef          	jal	ra,11466 <memset>
   10720:	60e2                	ld	ra,24(sp)
   10722:	8522                	mv	a0,s0
   10724:	6442                	ld	s0,16(sp)
   10726:	64a2                	ld	s1,8(sp)
   10728:	6902                	ld	s2,0(sp)
   1072a:	6105                	addi	sp,sp,32
   1072c:	8082                	ret

000000000001072e <__sfp>:
   1072e:	7179                	addi	sp,sp,-48
   10730:	ec26                	sd	s1,24(sp)
   10732:	6301b483          	ld	s1,1584(gp) # 1f748 <_global_impure_ptr>
   10736:	e84a                	sd	s2,16(sp)
   10738:	f406                	sd	ra,40(sp)
   1073a:	48bc                	lw	a5,80(s1)
   1073c:	f022                	sd	s0,32(sp)
   1073e:	e44e                	sd	s3,8(sp)
   10740:	e052                	sd	s4,0(sp)
   10742:	892a                	mv	s2,a0
   10744:	c3d9                	beqz	a5,107ca <__sfp+0x9c>
   10746:	52048493          	addi	s1,s1,1312
   1074a:	0b000993          	li	s3,176
   1074e:	4a11                	li	s4,4
   10750:	449c                	lw	a5,8(s1)
   10752:	6880                	ld	s0,16(s1)
   10754:	06f05763          	blez	a5,107c2 <__sfp+0x94>
   10758:	37fd                	addiw	a5,a5,-1
   1075a:	1782                	slli	a5,a5,0x20
   1075c:	9381                	srli	a5,a5,0x20
   1075e:	0785                	addi	a5,a5,1
   10760:	033787b3          	mul	a5,a5,s3
   10764:	97a2                	add	a5,a5,s0
   10766:	a029                	j	10770 <__sfp+0x42>
   10768:	0b040413          	addi	s0,s0,176
   1076c:	04f40b63          	beq	s0,a5,107c2 <__sfp+0x94>
   10770:	01041703          	lh	a4,16(s0)
   10774:	fb75                	bnez	a4,10768 <__sfp+0x3a>
   10776:	77c1                	lui	a5,0xffff0
   10778:	0785                	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffd06e9>
   1077a:	0a042623          	sw	zero,172(s0)
   1077e:	00043023          	sd	zero,0(s0)
   10782:	00043423          	sd	zero,8(s0)
   10786:	c81c                	sw	a5,16(s0)
   10788:	00043c23          	sd	zero,24(s0)
   1078c:	02042023          	sw	zero,32(s0)
   10790:	02042423          	sw	zero,40(s0)
   10794:	4621                	li	a2,8
   10796:	4581                	li	a1,0
   10798:	0a440513          	addi	a0,s0,164
   1079c:	4cb000ef          	jal	ra,11466 <memset>
   107a0:	04043c23          	sd	zero,88(s0)
   107a4:	06042023          	sw	zero,96(s0)
   107a8:	06043c23          	sd	zero,120(s0)
   107ac:	08042023          	sw	zero,128(s0)
   107b0:	70a2                	ld	ra,40(sp)
   107b2:	8522                	mv	a0,s0
   107b4:	7402                	ld	s0,32(sp)
   107b6:	64e2                	ld	s1,24(sp)
   107b8:	6942                	ld	s2,16(sp)
   107ba:	69a2                	ld	s3,8(sp)
   107bc:	6a02                	ld	s4,0(sp)
   107be:	6145                	addi	sp,sp,48
   107c0:	8082                	ret
   107c2:	6080                	ld	s0,0(s1)
   107c4:	c419                	beqz	s0,107d2 <__sfp+0xa4>
   107c6:	84a2                	mv	s1,s0
   107c8:	b761                	j	10750 <__sfp+0x22>
   107ca:	8526                	mv	a0,s1
   107cc:	dfdff0ef          	jal	ra,105c8 <__sinit.part.0>
   107d0:	bf9d                	j	10746 <__sfp+0x18>
   107d2:	2d800593          	li	a1,728
   107d6:	854a                	mv	a0,s2
   107d8:	500000ef          	jal	ra,10cd8 <_malloc_r>
   107dc:	842a                	mv	s0,a0
   107de:	cd19                	beqz	a0,107fc <__sfp+0xce>
   107e0:	0561                	addi	a0,a0,24
   107e2:	00043023          	sd	zero,0(s0)
   107e6:	01442423          	sw	s4,8(s0)
   107ea:	e808                	sd	a0,16(s0)
   107ec:	2c000613          	li	a2,704
   107f0:	4581                	li	a1,0
   107f2:	475000ef          	jal	ra,11466 <memset>
   107f6:	e080                	sd	s0,0(s1)
   107f8:	84a2                	mv	s1,s0
   107fa:	bf99                	j	10750 <__sfp+0x22>
   107fc:	0004b023          	sd	zero,0(s1)
   10800:	47b1                	li	a5,12
   10802:	00f92023          	sw	a5,0(s2)
   10806:	b76d                	j	107b0 <__sfp+0x82>

0000000000010808 <_cleanup>:
   10808:	6301b503          	ld	a0,1584(gp) # 1f748 <_global_impure_ptr>
   1080c:	65cd                	lui	a1,0x13
   1080e:	71258593          	addi	a1,a1,1810 # 13712 <_fclose_r>
   10812:	aec9                	j	10be4 <_fwalk_reent>

0000000000010814 <__sinit>:
   10814:	493c                	lw	a5,80(a0)
   10816:	c391                	beqz	a5,1081a <__sinit+0x6>
   10818:	8082                	ret
   1081a:	b37d                	j	105c8 <__sinit.part.0>

000000000001081c <__sfp_lock_acquire>:
   1081c:	8082                	ret

000000000001081e <__sfp_lock_release>:
   1081e:	8082                	ret

0000000000010820 <__sinit_lock_acquire>:
   10820:	8082                	ret

0000000000010822 <__sinit_lock_release>:
   10822:	8082                	ret

0000000000010824 <__fp_lock_all>:
   10824:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   10828:	65c1                	lui	a1,0x10
   1082a:	5b858593          	addi	a1,a1,1464 # 105b8 <__fp_lock>
   1082e:	ae15                	j	10b62 <_fwalk>

0000000000010830 <__fp_unlock_all>:
   10830:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   10834:	65c1                	lui	a1,0x10
   10836:	5c458593          	addi	a1,a1,1476 # 105c4 <__fp_unlock>
   1083a:	a625                	j	10b62 <_fwalk>

000000000001083c <_malloc_trim_r>:
   1083c:	7179                	addi	sp,sp,-48
   1083e:	e44e                	sd	s3,8(sp)
   10840:	0001f9b7          	lui	s3,0x1f
   10844:	f022                	sd	s0,32(sp)
   10846:	ec26                	sd	s1,24(sp)
   10848:	e84a                	sd	s2,16(sp)
   1084a:	e052                	sd	s4,0(sp)
   1084c:	f406                	sd	ra,40(sp)
   1084e:	8a2e                	mv	s4,a1
   10850:	892a                	mv	s2,a0
   10852:	d6098993          	addi	s3,s3,-672 # 1ed60 <__malloc_av_>
   10856:	4bb000ef          	jal	ra,11510 <__malloc_lock>
   1085a:	0109b703          	ld	a4,16(s3)
   1085e:	6785                	lui	a5,0x1
   10860:	fdf78413          	addi	s0,a5,-33 # fdf <exit-0xf109>
   10864:	6704                	ld	s1,8(a4)
   10866:	41440433          	sub	s0,s0,s4
   1086a:	98f1                	andi	s1,s1,-4
   1086c:	9426                	add	s0,s0,s1
   1086e:	8031                	srli	s0,s0,0xc
   10870:	147d                	addi	s0,s0,-1
   10872:	0432                	slli	s0,s0,0xc
   10874:	00f44b63          	blt	s0,a5,1088a <_malloc_trim_r+0x4e>
   10878:	4581                	li	a1,0
   1087a:	854a                	mv	a0,s2
   1087c:	6e7000ef          	jal	ra,11762 <_sbrk_r>
   10880:	0109b783          	ld	a5,16(s3)
   10884:	97a6                	add	a5,a5,s1
   10886:	00f50e63          	beq	a0,a5,108a2 <_malloc_trim_r+0x66>
   1088a:	854a                	mv	a0,s2
   1088c:	487000ef          	jal	ra,11512 <__malloc_unlock>
   10890:	70a2                	ld	ra,40(sp)
   10892:	7402                	ld	s0,32(sp)
   10894:	64e2                	ld	s1,24(sp)
   10896:	6942                	ld	s2,16(sp)
   10898:	69a2                	ld	s3,8(sp)
   1089a:	6a02                	ld	s4,0(sp)
   1089c:	4501                	li	a0,0
   1089e:	6145                	addi	sp,sp,48
   108a0:	8082                	ret
   108a2:	408005b3          	neg	a1,s0
   108a6:	854a                	mv	a0,s2
   108a8:	6bb000ef          	jal	ra,11762 <_sbrk_r>
   108ac:	57fd                	li	a5,-1
   108ae:	02f50b63          	beq	a0,a5,108e4 <_malloc_trim_r+0xa8>
   108b2:	000207b7          	lui	a5,0x20
   108b6:	8f078793          	addi	a5,a5,-1808 # 1f8f0 <__malloc_current_mallinfo>
   108ba:	4398                	lw	a4,0(a5)
   108bc:	0109b683          	ld	a3,16(s3)
   108c0:	8c81                	sub	s1,s1,s0
   108c2:	0014e493          	ori	s1,s1,1
   108c6:	9f01                	subw	a4,a4,s0
   108c8:	854a                	mv	a0,s2
   108ca:	e684                	sd	s1,8(a3)
   108cc:	c398                	sw	a4,0(a5)
   108ce:	445000ef          	jal	ra,11512 <__malloc_unlock>
   108d2:	70a2                	ld	ra,40(sp)
   108d4:	7402                	ld	s0,32(sp)
   108d6:	64e2                	ld	s1,24(sp)
   108d8:	6942                	ld	s2,16(sp)
   108da:	69a2                	ld	s3,8(sp)
   108dc:	6a02                	ld	s4,0(sp)
   108de:	4505                	li	a0,1
   108e0:	6145                	addi	sp,sp,48
   108e2:	8082                	ret
   108e4:	4581                	li	a1,0
   108e6:	854a                	mv	a0,s2
   108e8:	67b000ef          	jal	ra,11762 <_sbrk_r>
   108ec:	0109b703          	ld	a4,16(s3)
   108f0:	46fd                	li	a3,31
   108f2:	40e507b3          	sub	a5,a0,a4
   108f6:	f8f6dae3          	bge	a3,a5,1088a <_malloc_trim_r+0x4e>
   108fa:	6501b683          	ld	a3,1616(gp) # 1f768 <__malloc_sbrk_base>
   108fe:	0017e793          	ori	a5,a5,1
   10902:	e71c                	sd	a5,8(a4)
   10904:	8d15                	sub	a0,a0,a3
   10906:	000206b7          	lui	a3,0x20
   1090a:	8ea6a823          	sw	a0,-1808(a3) # 1f8f0 <__malloc_current_mallinfo>
   1090e:	bfb5                	j	1088a <_malloc_trim_r+0x4e>

0000000000010910 <_free_r>:
   10910:	c9e5                	beqz	a1,10a00 <_free_r+0xf0>
   10912:	1101                	addi	sp,sp,-32
   10914:	e822                	sd	s0,16(sp)
   10916:	e426                	sd	s1,8(sp)
   10918:	842e                	mv	s0,a1
   1091a:	84aa                	mv	s1,a0
   1091c:	ec06                	sd	ra,24(sp)
   1091e:	3f3000ef          	jal	ra,11510 <__malloc_lock>
   10922:	ff843503          	ld	a0,-8(s0)
   10926:	ff040713          	addi	a4,s0,-16
   1092a:	0001f5b7          	lui	a1,0x1f
   1092e:	ffe57793          	andi	a5,a0,-2
   10932:	00f70633          	add	a2,a4,a5
   10936:	d6058593          	addi	a1,a1,-672 # 1ed60 <__malloc_av_>
   1093a:	6614                	ld	a3,8(a2)
   1093c:	0105b803          	ld	a6,16(a1)
   10940:	9af1                	andi	a3,a3,-4
   10942:	14c80263          	beq	a6,a2,10a86 <_free_r+0x176>
   10946:	e614                	sd	a3,8(a2)
   10948:	8905                	andi	a0,a0,1
   1094a:	00d60833          	add	a6,a2,a3
   1094e:	e149                	bnez	a0,109d0 <_free_r+0xc0>
   10950:	ff043303          	ld	t1,-16(s0)
   10954:	00883803          	ld	a6,8(a6)
   10958:	0001f537          	lui	a0,0x1f
   1095c:	40670733          	sub	a4,a4,t1
   10960:	01073883          	ld	a7,16(a4)
   10964:	d7050513          	addi	a0,a0,-656 # 1ed70 <__malloc_av_+0x10>
   10968:	979a                	add	a5,a5,t1
   1096a:	00187813          	andi	a6,a6,1
   1096e:	0ea88963          	beq	a7,a0,10a60 <_free_r+0x150>
   10972:	01873303          	ld	t1,24(a4)
   10976:	0068bc23          	sd	t1,24(a7)
   1097a:	01133823          	sd	a7,16(t1) # 101a8 <print_secret+0x6>
   1097e:	14080e63          	beqz	a6,10ada <_free_r+0x1ca>
   10982:	0017e693          	ori	a3,a5,1
   10986:	e714                	sd	a3,8(a4)
   10988:	e21c                	sd	a5,0(a2)
   1098a:	1ff00693          	li	a3,511
   1098e:	08f6e363          	bltu	a3,a5,10a14 <_free_r+0x104>
   10992:	838d                	srli	a5,a5,0x3
   10994:	0017869b          	addiw	a3,a5,1
   10998:	0016969b          	slliw	a3,a3,0x1
   1099c:	068e                	slli	a3,a3,0x3
   1099e:	0085b803          	ld	a6,8(a1)
   109a2:	96ae                	add	a3,a3,a1
   109a4:	6288                	ld	a0,0(a3)
   109a6:	4027d61b          	sraiw	a2,a5,0x2
   109aa:	4785                	li	a5,1
   109ac:	00c797b3          	sll	a5,a5,a2
   109b0:	0107e7b3          	or	a5,a5,a6
   109b4:	ff068613          	addi	a2,a3,-16
   109b8:	ef10                	sd	a2,24(a4)
   109ba:	eb08                	sd	a0,16(a4)
   109bc:	e59c                	sd	a5,8(a1)
   109be:	e298                	sd	a4,0(a3)
   109c0:	ed18                	sd	a4,24(a0)
   109c2:	6442                	ld	s0,16(sp)
   109c4:	60e2                	ld	ra,24(sp)
   109c6:	8526                	mv	a0,s1
   109c8:	64a2                	ld	s1,8(sp)
   109ca:	6105                	addi	sp,sp,32
   109cc:	3470006f          	j	11512 <__malloc_unlock>
   109d0:	00883503          	ld	a0,8(a6)
   109d4:	8905                	andi	a0,a0,1
   109d6:	e515                	bnez	a0,10a02 <_free_r+0xf2>
   109d8:	0001f537          	lui	a0,0x1f
   109dc:	97b6                	add	a5,a5,a3
   109de:	d7050513          	addi	a0,a0,-656 # 1ed70 <__malloc_av_+0x10>
   109e2:	6a14                	ld	a3,16(a2)
   109e4:	0017e893          	ori	a7,a5,1
   109e8:	00f70833          	add	a6,a4,a5
   109ec:	10a68163          	beq	a3,a0,10aee <_free_r+0x1de>
   109f0:	6e10                	ld	a2,24(a2)
   109f2:	ee90                	sd	a2,24(a3)
   109f4:	ea14                	sd	a3,16(a2)
   109f6:	01173423          	sd	a7,8(a4)
   109fa:	00f83023          	sd	a5,0(a6)
   109fe:	b771                	j	1098a <_free_r+0x7a>
   10a00:	8082                	ret
   10a02:	0017e693          	ori	a3,a5,1
   10a06:	fed43c23          	sd	a3,-8(s0)
   10a0a:	e21c                	sd	a5,0(a2)
   10a0c:	1ff00693          	li	a3,511
   10a10:	f8f6f1e3          	bgeu	a3,a5,10992 <_free_r+0x82>
   10a14:	0097d693          	srli	a3,a5,0x9
   10a18:	4611                	li	a2,4
   10a1a:	08d66f63          	bltu	a2,a3,10ab8 <_free_r+0x1a8>
   10a1e:	0067d693          	srli	a3,a5,0x6
   10a22:	0396851b          	addiw	a0,a3,57
   10a26:	0015151b          	slliw	a0,a0,0x1
   10a2a:	0386861b          	addiw	a2,a3,56
   10a2e:	050e                	slli	a0,a0,0x3
   10a30:	952e                	add	a0,a0,a1
   10a32:	6114                	ld	a3,0(a0)
   10a34:	1541                	addi	a0,a0,-16
   10a36:	0cd50563          	beq	a0,a3,10b00 <_free_r+0x1f0>
   10a3a:	6690                	ld	a2,8(a3)
   10a3c:	9a71                	andi	a2,a2,-4
   10a3e:	00c7f563          	bgeu	a5,a2,10a48 <_free_r+0x138>
   10a42:	6a94                	ld	a3,16(a3)
   10a44:	fed51be3          	bne	a0,a3,10a3a <_free_r+0x12a>
   10a48:	6e88                	ld	a0,24(a3)
   10a4a:	ef08                	sd	a0,24(a4)
   10a4c:	eb14                	sd	a3,16(a4)
   10a4e:	6442                	ld	s0,16(sp)
   10a50:	e918                	sd	a4,16(a0)
   10a52:	60e2                	ld	ra,24(sp)
   10a54:	8526                	mv	a0,s1
   10a56:	64a2                	ld	s1,8(sp)
   10a58:	ee98                	sd	a4,24(a3)
   10a5a:	6105                	addi	sp,sp,32
   10a5c:	2b70006f          	j	11512 <__malloc_unlock>
   10a60:	0e081c63          	bnez	a6,10b58 <_free_r+0x248>
   10a64:	6e0c                	ld	a1,24(a2)
   10a66:	6a10                	ld	a2,16(a2)
   10a68:	96be                	add	a3,a3,a5
   10a6a:	6442                	ld	s0,16(sp)
   10a6c:	ee0c                	sd	a1,24(a2)
   10a6e:	e990                	sd	a2,16(a1)
   10a70:	0016e793          	ori	a5,a3,1
   10a74:	60e2                	ld	ra,24(sp)
   10a76:	e71c                	sd	a5,8(a4)
   10a78:	8526                	mv	a0,s1
   10a7a:	9736                	add	a4,a4,a3
   10a7c:	64a2                	ld	s1,8(sp)
   10a7e:	e314                	sd	a3,0(a4)
   10a80:	6105                	addi	sp,sp,32
   10a82:	2910006f          	j	11512 <__malloc_unlock>
   10a86:	8905                	andi	a0,a0,1
   10a88:	96be                	add	a3,a3,a5
   10a8a:	e909                	bnez	a0,10a9c <_free_r+0x18c>
   10a8c:	ff043503          	ld	a0,-16(s0)
   10a90:	8f09                	sub	a4,a4,a0
   10a92:	6f1c                	ld	a5,24(a4)
   10a94:	6b10                	ld	a2,16(a4)
   10a96:	96aa                	add	a3,a3,a0
   10a98:	ee1c                	sd	a5,24(a2)
   10a9a:	eb90                	sd	a2,16(a5)
   10a9c:	0016e613          	ori	a2,a3,1
   10aa0:	6581b783          	ld	a5,1624(gp) # 1f770 <__malloc_trim_threshold>
   10aa4:	e710                	sd	a2,8(a4)
   10aa6:	e998                	sd	a4,16(a1)
   10aa8:	f0f6ede3          	bltu	a3,a5,109c2 <_free_r+0xb2>
   10aac:	6801b583          	ld	a1,1664(gp) # 1f798 <__malloc_top_pad>
   10ab0:	8526                	mv	a0,s1
   10ab2:	d8bff0ef          	jal	ra,1083c <_malloc_trim_r>
   10ab6:	b731                	j	109c2 <_free_r+0xb2>
   10ab8:	4651                	li	a2,20
   10aba:	02d67263          	bgeu	a2,a3,10ade <_free_r+0x1ce>
   10abe:	05400613          	li	a2,84
   10ac2:	04d66a63          	bltu	a2,a3,10b16 <_free_r+0x206>
   10ac6:	00c7d693          	srli	a3,a5,0xc
   10aca:	06f6851b          	addiw	a0,a3,111
   10ace:	0015151b          	slliw	a0,a0,0x1
   10ad2:	06e6861b          	addiw	a2,a3,110
   10ad6:	050e                	slli	a0,a0,0x3
   10ad8:	bfa1                	j	10a30 <_free_r+0x120>
   10ada:	97b6                	add	a5,a5,a3
   10adc:	b719                	j	109e2 <_free_r+0xd2>
   10ade:	05c6851b          	addiw	a0,a3,92
   10ae2:	0015151b          	slliw	a0,a0,0x1
   10ae6:	05b6861b          	addiw	a2,a3,91
   10aea:	050e                	slli	a0,a0,0x3
   10aec:	b791                	j	10a30 <_free_r+0x120>
   10aee:	f598                	sd	a4,40(a1)
   10af0:	f198                	sd	a4,32(a1)
   10af2:	ef08                	sd	a0,24(a4)
   10af4:	eb08                	sd	a0,16(a4)
   10af6:	01173423          	sd	a7,8(a4)
   10afa:	00f83023          	sd	a5,0(a6)
   10afe:	b5d1                	j	109c2 <_free_r+0xb2>
   10b00:	0085b803          	ld	a6,8(a1)
   10b04:	4026561b          	sraiw	a2,a2,0x2
   10b08:	4785                	li	a5,1
   10b0a:	00c797b3          	sll	a5,a5,a2
   10b0e:	0107e7b3          	or	a5,a5,a6
   10b12:	e59c                	sd	a5,8(a1)
   10b14:	bf1d                	j	10a4a <_free_r+0x13a>
   10b16:	15400613          	li	a2,340
   10b1a:	00d66c63          	bltu	a2,a3,10b32 <_free_r+0x222>
   10b1e:	00f7d693          	srli	a3,a5,0xf
   10b22:	0786851b          	addiw	a0,a3,120
   10b26:	0015151b          	slliw	a0,a0,0x1
   10b2a:	0776861b          	addiw	a2,a3,119
   10b2e:	050e                	slli	a0,a0,0x3
   10b30:	b701                	j	10a30 <_free_r+0x120>
   10b32:	55400613          	li	a2,1364
   10b36:	00d66c63          	bltu	a2,a3,10b4e <_free_r+0x23e>
   10b3a:	0127d693          	srli	a3,a5,0x12
   10b3e:	07d6851b          	addiw	a0,a3,125
   10b42:	0015151b          	slliw	a0,a0,0x1
   10b46:	07c6861b          	addiw	a2,a3,124
   10b4a:	050e                	slli	a0,a0,0x3
   10b4c:	b5d5                	j	10a30 <_free_r+0x120>
   10b4e:	7f000513          	li	a0,2032
   10b52:	07e00613          	li	a2,126
   10b56:	bde9                	j	10a30 <_free_r+0x120>
   10b58:	0017e693          	ori	a3,a5,1
   10b5c:	e714                	sd	a3,8(a4)
   10b5e:	e21c                	sd	a5,0(a2)
   10b60:	b58d                	j	109c2 <_free_r+0xb2>

0000000000010b62 <_fwalk>:
   10b62:	715d                	addi	sp,sp,-80
   10b64:	f84a                	sd	s2,48(sp)
   10b66:	f44e                	sd	s3,40(sp)
   10b68:	f052                	sd	s4,32(sp)
   10b6a:	ec56                	sd	s5,24(sp)
   10b6c:	e85a                	sd	s6,16(sp)
   10b6e:	e45e                	sd	s7,8(sp)
   10b70:	e486                	sd	ra,72(sp)
   10b72:	e0a2                	sd	s0,64(sp)
   10b74:	fc26                	sd	s1,56(sp)
   10b76:	8a2e                	mv	s4,a1
   10b78:	52050913          	addi	s2,a0,1312
   10b7c:	4b01                	li	s6,0
   10b7e:	0b000a93          	li	s5,176
   10b82:	4b85                	li	s7,1
   10b84:	59fd                	li	s3,-1
   10b86:	00892783          	lw	a5,8(s2)
   10b8a:	01093403          	ld	s0,16(s2)
   10b8e:	02f05b63          	blez	a5,10bc4 <_fwalk+0x62>
   10b92:	fff7849b          	addiw	s1,a5,-1
   10b96:	1482                	slli	s1,s1,0x20
   10b98:	9081                	srli	s1,s1,0x20
   10b9a:	0485                	addi	s1,s1,1
   10b9c:	035484b3          	mul	s1,s1,s5
   10ba0:	94a2                	add	s1,s1,s0
   10ba2:	01045783          	lhu	a5,16(s0)
   10ba6:	00fbfb63          	bgeu	s7,a5,10bbc <_fwalk+0x5a>
   10baa:	01241783          	lh	a5,18(s0)
   10bae:	8522                	mv	a0,s0
   10bb0:	01378663          	beq	a5,s3,10bbc <_fwalk+0x5a>
   10bb4:	9a02                	jalr	s4
   10bb6:	01656b33          	or	s6,a0,s6
   10bba:	2b01                	sext.w	s6,s6
   10bbc:	0b040413          	addi	s0,s0,176
   10bc0:	fe8491e3          	bne	s1,s0,10ba2 <_fwalk+0x40>
   10bc4:	00093903          	ld	s2,0(s2)
   10bc8:	fa091fe3          	bnez	s2,10b86 <_fwalk+0x24>
   10bcc:	60a6                	ld	ra,72(sp)
   10bce:	6406                	ld	s0,64(sp)
   10bd0:	74e2                	ld	s1,56(sp)
   10bd2:	7942                	ld	s2,48(sp)
   10bd4:	79a2                	ld	s3,40(sp)
   10bd6:	7a02                	ld	s4,32(sp)
   10bd8:	6ae2                	ld	s5,24(sp)
   10bda:	6ba2                	ld	s7,8(sp)
   10bdc:	855a                	mv	a0,s6
   10bde:	6b42                	ld	s6,16(sp)
   10be0:	6161                	addi	sp,sp,80
   10be2:	8082                	ret

0000000000010be4 <_fwalk_reent>:
   10be4:	715d                	addi	sp,sp,-80
   10be6:	f84a                	sd	s2,48(sp)
   10be8:	f44e                	sd	s3,40(sp)
   10bea:	f052                	sd	s4,32(sp)
   10bec:	ec56                	sd	s5,24(sp)
   10bee:	e85a                	sd	s6,16(sp)
   10bf0:	e45e                	sd	s7,8(sp)
   10bf2:	e062                	sd	s8,0(sp)
   10bf4:	e486                	sd	ra,72(sp)
   10bf6:	e0a2                	sd	s0,64(sp)
   10bf8:	fc26                	sd	s1,56(sp)
   10bfa:	8c2a                	mv	s8,a0
   10bfc:	8a2e                	mv	s4,a1
   10bfe:	52050913          	addi	s2,a0,1312
   10c02:	4b01                	li	s6,0
   10c04:	0b000a93          	li	s5,176
   10c08:	4b85                	li	s7,1
   10c0a:	59fd                	li	s3,-1
   10c0c:	00892783          	lw	a5,8(s2)
   10c10:	01093403          	ld	s0,16(s2)
   10c14:	02f05c63          	blez	a5,10c4c <_fwalk_reent+0x68>
   10c18:	fff7849b          	addiw	s1,a5,-1
   10c1c:	1482                	slli	s1,s1,0x20
   10c1e:	9081                	srli	s1,s1,0x20
   10c20:	0485                	addi	s1,s1,1
   10c22:	035484b3          	mul	s1,s1,s5
   10c26:	94a2                	add	s1,s1,s0
   10c28:	01045783          	lhu	a5,16(s0)
   10c2c:	00fbfc63          	bgeu	s7,a5,10c44 <_fwalk_reent+0x60>
   10c30:	01241783          	lh	a5,18(s0)
   10c34:	85a2                	mv	a1,s0
   10c36:	8562                	mv	a0,s8
   10c38:	01378663          	beq	a5,s3,10c44 <_fwalk_reent+0x60>
   10c3c:	9a02                	jalr	s4
   10c3e:	01656b33          	or	s6,a0,s6
   10c42:	2b01                	sext.w	s6,s6
   10c44:	0b040413          	addi	s0,s0,176
   10c48:	fe8490e3          	bne	s1,s0,10c28 <_fwalk_reent+0x44>
   10c4c:	00093903          	ld	s2,0(s2)
   10c50:	fa091ee3          	bnez	s2,10c0c <_fwalk_reent+0x28>
   10c54:	60a6                	ld	ra,72(sp)
   10c56:	6406                	ld	s0,64(sp)
   10c58:	74e2                	ld	s1,56(sp)
   10c5a:	7942                	ld	s2,48(sp)
   10c5c:	79a2                	ld	s3,40(sp)
   10c5e:	7a02                	ld	s4,32(sp)
   10c60:	6ae2                	ld	s5,24(sp)
   10c62:	6ba2                	ld	s7,8(sp)
   10c64:	6c02                	ld	s8,0(sp)
   10c66:	855a                	mv	a0,s6
   10c68:	6b42                	ld	s6,16(sp)
   10c6a:	6161                	addi	sp,sp,80
   10c6c:	8082                	ret

0000000000010c6e <__libc_init_array>:
   10c6e:	1101                	addi	sp,sp,-32
   10c70:	e822                	sd	s0,16(sp)
   10c72:	e04a                	sd	s2,0(sp)
   10c74:	6479                	lui	s0,0x1e
   10c76:	6979                	lui	s2,0x1e
   10c78:	5fc40793          	addi	a5,s0,1532 # 1e5fc <__preinit_array_end>
   10c7c:	5fc90913          	addi	s2,s2,1532 # 1e5fc <__preinit_array_end>
   10c80:	40f90933          	sub	s2,s2,a5
   10c84:	ec06                	sd	ra,24(sp)
   10c86:	e426                	sd	s1,8(sp)
   10c88:	40395913          	srai	s2,s2,0x3
   10c8c:	00090b63          	beqz	s2,10ca2 <__libc_init_array+0x34>
   10c90:	5fc40413          	addi	s0,s0,1532
   10c94:	4481                	li	s1,0
   10c96:	601c                	ld	a5,0(s0)
   10c98:	0485                	addi	s1,s1,1
   10c9a:	0421                	addi	s0,s0,8
   10c9c:	9782                	jalr	a5
   10c9e:	fe991ce3          	bne	s2,s1,10c96 <__libc_init_array+0x28>
   10ca2:	6479                	lui	s0,0x1e
   10ca4:	6979                	lui	s2,0x1e
   10ca6:	60040793          	addi	a5,s0,1536 # 1e600 <__init_array_start>
   10caa:	61090913          	addi	s2,s2,1552 # 1e610 <__do_global_dtors_aux_fini_array_entry>
   10cae:	40f90933          	sub	s2,s2,a5
   10cb2:	40395913          	srai	s2,s2,0x3
   10cb6:	00090b63          	beqz	s2,10ccc <__libc_init_array+0x5e>
   10cba:	60040413          	addi	s0,s0,1536
   10cbe:	4481                	li	s1,0
   10cc0:	601c                	ld	a5,0(s0)
   10cc2:	0485                	addi	s1,s1,1
   10cc4:	0421                	addi	s0,s0,8
   10cc6:	9782                	jalr	a5
   10cc8:	fe991ce3          	bne	s2,s1,10cc0 <__libc_init_array+0x52>
   10ccc:	60e2                	ld	ra,24(sp)
   10cce:	6442                	ld	s0,16(sp)
   10cd0:	64a2                	ld	s1,8(sp)
   10cd2:	6902                	ld	s2,0(sp)
   10cd4:	6105                	addi	sp,sp,32
   10cd6:	8082                	ret

0000000000010cd8 <_malloc_r>:
   10cd8:	711d                	addi	sp,sp,-96
   10cda:	e4a6                	sd	s1,72(sp)
   10cdc:	e0ca                	sd	s2,64(sp)
   10cde:	ec86                	sd	ra,88(sp)
   10ce0:	e8a2                	sd	s0,80(sp)
   10ce2:	fc4e                	sd	s3,56(sp)
   10ce4:	f852                	sd	s4,48(sp)
   10ce6:	f456                	sd	s5,40(sp)
   10ce8:	f05a                	sd	s6,32(sp)
   10cea:	ec5e                	sd	s7,24(sp)
   10cec:	e862                	sd	s8,16(sp)
   10cee:	e466                	sd	s9,8(sp)
   10cf0:	01758493          	addi	s1,a1,23
   10cf4:	02e00793          	li	a5,46
   10cf8:	892a                	mv	s2,a0
   10cfa:	0497e863          	bltu	a5,s1,10d4a <_malloc_r+0x72>
   10cfe:	02000793          	li	a5,32
   10d02:	1eb7e663          	bltu	a5,a1,10eee <_malloc_r+0x216>
   10d06:	00b000ef          	jal	ra,11510 <__malloc_lock>
   10d0a:	02000493          	li	s1,32
   10d0e:	05000793          	li	a5,80
   10d12:	4611                	li	a2,4
   10d14:	0001f9b7          	lui	s3,0x1f
   10d18:	d6098993          	addi	s3,s3,-672 # 1ed60 <__malloc_av_>
   10d1c:	97ce                	add	a5,a5,s3
   10d1e:	6780                	ld	s0,8(a5)
   10d20:	ff078713          	addi	a4,a5,-16
   10d24:	1ee40663          	beq	s0,a4,10f10 <_malloc_r+0x238>
   10d28:	641c                	ld	a5,8(s0)
   10d2a:	6c14                	ld	a3,24(s0)
   10d2c:	6810                	ld	a2,16(s0)
   10d2e:	9bf1                	andi	a5,a5,-4
   10d30:	97a2                	add	a5,a5,s0
   10d32:	6798                	ld	a4,8(a5)
   10d34:	ee14                	sd	a3,24(a2)
   10d36:	ea90                	sd	a2,16(a3)
   10d38:	00176713          	ori	a4,a4,1
   10d3c:	854a                	mv	a0,s2
   10d3e:	e798                	sd	a4,8(a5)
   10d40:	7d2000ef          	jal	ra,11512 <__malloc_unlock>
   10d44:	01040513          	addi	a0,s0,16
   10d48:	a27d                	j	10ef6 <_malloc_r+0x21e>
   10d4a:	800007b7          	lui	a5,0x80000
   10d4e:	98c1                	andi	s1,s1,-16
   10d50:	fff7c793          	not	a5,a5
   10d54:	1897ed63          	bltu	a5,s1,10eee <_malloc_r+0x216>
   10d58:	18b4eb63          	bltu	s1,a1,10eee <_malloc_r+0x216>
   10d5c:	7b4000ef          	jal	ra,11510 <__malloc_lock>
   10d60:	1f700793          	li	a5,503
   10d64:	3a97f563          	bgeu	a5,s1,1110e <_malloc_r+0x436>
   10d68:	0094d793          	srli	a5,s1,0x9
   10d6c:	28078163          	beqz	a5,10fee <_malloc_r+0x316>
   10d70:	4711                	li	a4,4
   10d72:	30f76563          	bltu	a4,a5,1107c <_malloc_r+0x3a4>
   10d76:	0064d793          	srli	a5,s1,0x6
   10d7a:	0397861b          	addiw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffe0721>
   10d7e:	0016169b          	slliw	a3,a2,0x1
   10d82:	0387851b          	addiw	a0,a5,56
   10d86:	068e                	slli	a3,a3,0x3
   10d88:	0001f9b7          	lui	s3,0x1f
   10d8c:	d6098993          	addi	s3,s3,-672 # 1ed60 <__malloc_av_>
   10d90:	96ce                	add	a3,a3,s3
   10d92:	6680                	ld	s0,8(a3)
   10d94:	16c1                	addi	a3,a3,-16
   10d96:	18868163          	beq	a3,s0,10f18 <_malloc_r+0x240>
   10d9a:	45fd                	li	a1,31
   10d9c:	a031                	j	10da8 <_malloc_r+0xd0>
   10d9e:	28075963          	bgez	a4,11030 <_malloc_r+0x358>
   10da2:	6c00                	ld	s0,24(s0)
   10da4:	16868a63          	beq	a3,s0,10f18 <_malloc_r+0x240>
   10da8:	641c                	ld	a5,8(s0)
   10daa:	9bf1                	andi	a5,a5,-4
   10dac:	40978733          	sub	a4,a5,s1
   10db0:	fee5d7e3          	bge	a1,a4,10d9e <_malloc_r+0xc6>
   10db4:	0209b403          	ld	s0,32(s3)
   10db8:	0001f837          	lui	a6,0x1f
   10dbc:	d7080813          	addi	a6,a6,-656 # 1ed70 <__malloc_av_+0x10>
   10dc0:	862a                	mv	a2,a0
   10dc2:	17041363          	bne	s0,a6,10f28 <_malloc_r+0x250>
   10dc6:	0089b783          	ld	a5,8(s3)
   10dca:	4026571b          	sraiw	a4,a2,0x2
   10dce:	4585                	li	a1,1
   10dd0:	00e595b3          	sll	a1,a1,a4
   10dd4:	1ab7fa63          	bgeu	a5,a1,10f88 <_malloc_r+0x2b0>
   10dd8:	0109b403          	ld	s0,16(s3)
   10ddc:	00843a83          	ld	s5,8(s0)
   10de0:	ffcafa93          	andi	s5,s5,-4
   10de4:	009ae763          	bltu	s5,s1,10df2 <_malloc_r+0x11a>
   10de8:	409a87b3          	sub	a5,s5,s1
   10dec:	477d                	li	a4,31
   10dee:	22f74263          	blt	a4,a5,11012 <_malloc_r+0x33a>
   10df2:	65018b93          	addi	s7,gp,1616 # 1f768 <__malloc_sbrk_base>
   10df6:	6801ba03          	ld	s4,1664(gp) # 1f798 <__malloc_top_pad>
   10dfa:	000bb703          	ld	a4,0(s7)
   10dfe:	57fd                	li	a5,-1
   10e00:	01540c33          	add	s8,s0,s5
   10e04:	9a26                	add	s4,s4,s1
   10e06:	3af70263          	beq	a4,a5,111aa <_malloc_r+0x4d2>
   10e0a:	6785                	lui	a5,0x1
   10e0c:	07fd                	addi	a5,a5,31 # 101f <exit-0xf0c9>
   10e0e:	9a3e                	add	s4,s4,a5
   10e10:	77fd                	lui	a5,0xfffff
   10e12:	00fa7a33          	and	s4,s4,a5
   10e16:	85d2                	mv	a1,s4
   10e18:	854a                	mv	a0,s2
   10e1a:	149000ef          	jal	ra,11762 <_sbrk_r>
   10e1e:	57fd                	li	a5,-1
   10e20:	8b2a                	mv	s6,a0
   10e22:	30f50b63          	beq	a0,a5,11138 <_malloc_r+0x460>
   10e26:	31856763          	bltu	a0,s8,11134 <_malloc_r+0x45c>
   10e2a:	7d818c93          	addi	s9,gp,2008 # 1f8f0 <__malloc_current_mallinfo>
   10e2e:	000ca703          	lw	a4,0(s9)
   10e32:	014707bb          	addw	a5,a4,s4
   10e36:	00fca023          	sw	a5,0(s9)
   10e3a:	86be                	mv	a3,a5
   10e3c:	3eac0a63          	beq	s8,a0,11230 <_malloc_r+0x558>
   10e40:	000bb703          	ld	a4,0(s7)
   10e44:	57fd                	li	a5,-1
   10e46:	40f70163          	beq	a4,a5,11248 <_malloc_r+0x570>
   10e4a:	418b07b3          	sub	a5,s6,s8
   10e4e:	9fb5                	addw	a5,a5,a3
   10e50:	00fca023          	sw	a5,0(s9)
   10e54:	00fb7c13          	andi	s8,s6,15
   10e58:	360c0763          	beqz	s8,111c6 <_malloc_r+0x4ee>
   10e5c:	6785                	lui	a5,0x1
   10e5e:	418b0b33          	sub	s6,s6,s8
   10e62:	01078b93          	addi	s7,a5,16 # 1010 <exit-0xf0d8>
   10e66:	0b41                	addi	s6,s6,16
   10e68:	418b8bb3          	sub	s7,s7,s8
   10e6c:	9a5a                	add	s4,s4,s6
   10e6e:	17fd                	addi	a5,a5,-1
   10e70:	414b8bb3          	sub	s7,s7,s4
   10e74:	00fbfbb3          	and	s7,s7,a5
   10e78:	85de                	mv	a1,s7
   10e7a:	854a                	mv	a0,s2
   10e7c:	0e7000ef          	jal	ra,11762 <_sbrk_r>
   10e80:	57fd                	li	a5,-1
   10e82:	40f50863          	beq	a0,a5,11292 <_malloc_r+0x5ba>
   10e86:	41650533          	sub	a0,a0,s6
   10e8a:	000b871b          	sext.w	a4,s7
   10e8e:	01750a33          	add	s4,a0,s7
   10e92:	000ca783          	lw	a5,0(s9)
   10e96:	0169b823          	sd	s6,16(s3)
   10e9a:	001a6a13          	ori	s4,s4,1
   10e9e:	9fb9                	addw	a5,a5,a4
   10ea0:	00fca023          	sw	a5,0(s9)
   10ea4:	014b3423          	sd	s4,8(s6)
   10ea8:	3b340363          	beq	s0,s3,1124e <_malloc_r+0x576>
   10eac:	467d                	li	a2,31
   10eae:	3b567263          	bgeu	a2,s5,11252 <_malloc_r+0x57a>
   10eb2:	6414                	ld	a3,8(s0)
   10eb4:	fe8a8713          	addi	a4,s5,-24
   10eb8:	9b41                	andi	a4,a4,-16
   10eba:	8a85                	andi	a3,a3,1
   10ebc:	8ed9                	or	a3,a3,a4
   10ebe:	e414                	sd	a3,8(s0)
   10ec0:	45a5                	li	a1,9
   10ec2:	00e406b3          	add	a3,s0,a4
   10ec6:	e68c                	sd	a1,8(a3)
   10ec8:	ea8c                	sd	a1,16(a3)
   10eca:	3ce66a63          	bltu	a2,a4,1129e <_malloc_r+0x5c6>
   10ece:	008b3a03          	ld	s4,8(s6)
   10ed2:	845a                	mv	s0,s6
   10ed4:	67018713          	addi	a4,gp,1648 # 1f788 <__malloc_max_sbrked_mem>
   10ed8:	6314                	ld	a3,0(a4)
   10eda:	00f6f363          	bgeu	a3,a5,10ee0 <_malloc_r+0x208>
   10ede:	e31c                	sd	a5,0(a4)
   10ee0:	67818713          	addi	a4,gp,1656 # 1f790 <__malloc_max_total_mem>
   10ee4:	6314                	ld	a3,0(a4)
   10ee6:	24f6fd63          	bgeu	a3,a5,11140 <_malloc_r+0x468>
   10eea:	e31c                	sd	a5,0(a4)
   10eec:	ac91                	j	11140 <_malloc_r+0x468>
   10eee:	47b1                	li	a5,12
   10ef0:	00f92023          	sw	a5,0(s2)
   10ef4:	4501                	li	a0,0
   10ef6:	60e6                	ld	ra,88(sp)
   10ef8:	6446                	ld	s0,80(sp)
   10efa:	64a6                	ld	s1,72(sp)
   10efc:	6906                	ld	s2,64(sp)
   10efe:	79e2                	ld	s3,56(sp)
   10f00:	7a42                	ld	s4,48(sp)
   10f02:	7aa2                	ld	s5,40(sp)
   10f04:	7b02                	ld	s6,32(sp)
   10f06:	6be2                	ld	s7,24(sp)
   10f08:	6c42                	ld	s8,16(sp)
   10f0a:	6ca2                	ld	s9,8(sp)
   10f0c:	6125                	addi	sp,sp,96
   10f0e:	8082                	ret
   10f10:	6f80                	ld	s0,24(a5)
   10f12:	2609                	addiw	a2,a2,2
   10f14:	e0879ae3          	bne	a5,s0,10d28 <_malloc_r+0x50>
   10f18:	0209b403          	ld	s0,32(s3)
   10f1c:	0001f837          	lui	a6,0x1f
   10f20:	d7080813          	addi	a6,a6,-656 # 1ed70 <__malloc_av_+0x10>
   10f24:	eb0401e3          	beq	s0,a6,10dc6 <_malloc_r+0xee>
   10f28:	641c                	ld	a5,8(s0)
   10f2a:	46fd                	li	a3,31
   10f2c:	9bf1                	andi	a5,a5,-4
   10f2e:	40978733          	sub	a4,a5,s1
   10f32:	1ae6c763          	blt	a3,a4,110e0 <_malloc_r+0x408>
   10f36:	0309b423          	sd	a6,40(s3)
   10f3a:	0309b023          	sd	a6,32(s3)
   10f3e:	0a075f63          	bgez	a4,10ffc <_malloc_r+0x324>
   10f42:	1ff00713          	li	a4,511
   10f46:	0ef76863          	bltu	a4,a5,11036 <_malloc_r+0x35e>
   10f4a:	838d                	srli	a5,a5,0x3
   10f4c:	0017871b          	addiw	a4,a5,1
   10f50:	0017171b          	slliw	a4,a4,0x1
   10f54:	070e                	slli	a4,a4,0x3
   10f56:	0089b503          	ld	a0,8(s3)
   10f5a:	974e                	add	a4,a4,s3
   10f5c:	630c                	ld	a1,0(a4)
   10f5e:	4027d69b          	sraiw	a3,a5,0x2
   10f62:	4785                	li	a5,1
   10f64:	00d797b3          	sll	a5,a5,a3
   10f68:	8fc9                	or	a5,a5,a0
   10f6a:	ff070693          	addi	a3,a4,-16
   10f6e:	ec14                	sd	a3,24(s0)
   10f70:	e80c                	sd	a1,16(s0)
   10f72:	00f9b423          	sd	a5,8(s3)
   10f76:	e300                	sd	s0,0(a4)
   10f78:	ed80                	sd	s0,24(a1)
   10f7a:	4026571b          	sraiw	a4,a2,0x2
   10f7e:	4585                	li	a1,1
   10f80:	00e595b3          	sll	a1,a1,a4
   10f84:	e4b7eae3          	bltu	a5,a1,10dd8 <_malloc_r+0x100>
   10f88:	00f5f733          	and	a4,a1,a5
   10f8c:	ef01                	bnez	a4,10fa4 <_malloc_r+0x2cc>
   10f8e:	0586                	slli	a1,a1,0x1
   10f90:	9a71                	andi	a2,a2,-4
   10f92:	00f5f733          	and	a4,a1,a5
   10f96:	2611                	addiw	a2,a2,4
   10f98:	e711                	bnez	a4,10fa4 <_malloc_r+0x2cc>
   10f9a:	0586                	slli	a1,a1,0x1
   10f9c:	00f5f733          	and	a4,a1,a5
   10fa0:	2611                	addiw	a2,a2,4
   10fa2:	df65                	beqz	a4,10f9a <_malloc_r+0x2c2>
   10fa4:	48fd                	li	a7,31
   10fa6:	0016031b          	addiw	t1,a2,1
   10faa:	0013131b          	slliw	t1,t1,0x1
   10fae:	030e                	slli	t1,t1,0x3
   10fb0:	1341                	addi	t1,t1,-16
   10fb2:	934e                	add	t1,t1,s3
   10fb4:	851a                	mv	a0,t1
   10fb6:	6d1c                	ld	a5,24(a0)
   10fb8:	8e32                	mv	t3,a2
   10fba:	0ef50263          	beq	a0,a5,1109e <_malloc_r+0x3c6>
   10fbe:	6798                	ld	a4,8(a5)
   10fc0:	843e                	mv	s0,a5
   10fc2:	6f9c                	ld	a5,24(a5)
   10fc4:	9b71                	andi	a4,a4,-4
   10fc6:	409706b3          	sub	a3,a4,s1
   10fca:	0ed8c163          	blt	a7,a3,110ac <_malloc_r+0x3d4>
   10fce:	fe06c6e3          	bltz	a3,10fba <_malloc_r+0x2e2>
   10fd2:	9722                	add	a4,a4,s0
   10fd4:	6714                	ld	a3,8(a4)
   10fd6:	6810                	ld	a2,16(s0)
   10fd8:	854a                	mv	a0,s2
   10fda:	0016e693          	ori	a3,a3,1
   10fde:	e714                	sd	a3,8(a4)
   10fe0:	ee1c                	sd	a5,24(a2)
   10fe2:	eb90                	sd	a2,16(a5)
   10fe4:	52e000ef          	jal	ra,11512 <__malloc_unlock>
   10fe8:	01040513          	addi	a0,s0,16
   10fec:	b729                	j	10ef6 <_malloc_r+0x21e>
   10fee:	40000693          	li	a3,1024
   10ff2:	04000613          	li	a2,64
   10ff6:	03f00513          	li	a0,63
   10ffa:	b379                	j	10d88 <_malloc_r+0xb0>
   10ffc:	97a2                	add	a5,a5,s0
   10ffe:	6798                	ld	a4,8(a5)
   11000:	854a                	mv	a0,s2
   11002:	00176713          	ori	a4,a4,1
   11006:	e798                	sd	a4,8(a5)
   11008:	50a000ef          	jal	ra,11512 <__malloc_unlock>
   1100c:	01040513          	addi	a0,s0,16
   11010:	b5dd                	j	10ef6 <_malloc_r+0x21e>
   11012:	0014e713          	ori	a4,s1,1
   11016:	e418                	sd	a4,8(s0)
   11018:	94a2                	add	s1,s1,s0
   1101a:	0099b823          	sd	s1,16(s3)
   1101e:	0017e793          	ori	a5,a5,1
   11022:	854a                	mv	a0,s2
   11024:	e49c                	sd	a5,8(s1)
   11026:	4ec000ef          	jal	ra,11512 <__malloc_unlock>
   1102a:	01040513          	addi	a0,s0,16
   1102e:	b5e1                	j	10ef6 <_malloc_r+0x21e>
   11030:	6c14                	ld	a3,24(s0)
   11032:	6810                	ld	a2,16(s0)
   11034:	b9f5                	j	10d30 <_malloc_r+0x58>
   11036:	0097d713          	srli	a4,a5,0x9
   1103a:	4691                	li	a3,4
   1103c:	0ee6f263          	bgeu	a3,a4,11120 <_malloc_r+0x448>
   11040:	46d1                	li	a3,20
   11042:	1ae6e263          	bltu	a3,a4,111e6 <_malloc_r+0x50e>
   11046:	05c7059b          	addiw	a1,a4,92
   1104a:	0015959b          	slliw	a1,a1,0x1
   1104e:	05b7069b          	addiw	a3,a4,91
   11052:	058e                	slli	a1,a1,0x3
   11054:	95ce                	add	a1,a1,s3
   11056:	6198                	ld	a4,0(a1)
   11058:	15c1                	addi	a1,a1,-16
   1105a:	14e58b63          	beq	a1,a4,111b0 <_malloc_r+0x4d8>
   1105e:	6714                	ld	a3,8(a4)
   11060:	9af1                	andi	a3,a3,-4
   11062:	00d7f563          	bgeu	a5,a3,1106c <_malloc_r+0x394>
   11066:	6b18                	ld	a4,16(a4)
   11068:	fee59be3          	bne	a1,a4,1105e <_malloc_r+0x386>
   1106c:	6f0c                	ld	a1,24(a4)
   1106e:	0089b783          	ld	a5,8(s3)
   11072:	ec0c                	sd	a1,24(s0)
   11074:	e818                	sd	a4,16(s0)
   11076:	e980                	sd	s0,16(a1)
   11078:	ef00                	sd	s0,24(a4)
   1107a:	b701                	j	10f7a <_malloc_r+0x2a2>
   1107c:	4751                	li	a4,20
   1107e:	0cf77f63          	bgeu	a4,a5,1115c <_malloc_r+0x484>
   11082:	05400713          	li	a4,84
   11086:	16f76e63          	bltu	a4,a5,11202 <_malloc_r+0x52a>
   1108a:	00c4d793          	srli	a5,s1,0xc
   1108e:	06f7861b          	addiw	a2,a5,111
   11092:	0016169b          	slliw	a3,a2,0x1
   11096:	06e7851b          	addiw	a0,a5,110
   1109a:	068e                	slli	a3,a3,0x3
   1109c:	b1f5                	j	10d88 <_malloc_r+0xb0>
   1109e:	2e05                	addiw	t3,t3,1
   110a0:	003e7793          	andi	a5,t3,3
   110a4:	0541                	addi	a0,a0,16
   110a6:	cbe1                	beqz	a5,11176 <_malloc_r+0x49e>
   110a8:	6d1c                	ld	a5,24(a0)
   110aa:	bf01                	j	10fba <_malloc_r+0x2e2>
   110ac:	6810                	ld	a2,16(s0)
   110ae:	0014e593          	ori	a1,s1,1
   110b2:	e40c                	sd	a1,8(s0)
   110b4:	ee1c                	sd	a5,24(a2)
   110b6:	eb90                	sd	a2,16(a5)
   110b8:	94a2                	add	s1,s1,s0
   110ba:	0299b423          	sd	s1,40(s3)
   110be:	0299b023          	sd	s1,32(s3)
   110c2:	0016e793          	ori	a5,a3,1
   110c6:	0104bc23          	sd	a6,24(s1)
   110ca:	0104b823          	sd	a6,16(s1)
   110ce:	e49c                	sd	a5,8(s1)
   110d0:	9722                	add	a4,a4,s0
   110d2:	854a                	mv	a0,s2
   110d4:	e314                	sd	a3,0(a4)
   110d6:	43c000ef          	jal	ra,11512 <__malloc_unlock>
   110da:	01040513          	addi	a0,s0,16
   110de:	bd21                	j	10ef6 <_malloc_r+0x21e>
   110e0:	0014e693          	ori	a3,s1,1
   110e4:	e414                	sd	a3,8(s0)
   110e6:	94a2                	add	s1,s1,s0
   110e8:	0299b423          	sd	s1,40(s3)
   110ec:	0299b023          	sd	s1,32(s3)
   110f0:	00176693          	ori	a3,a4,1
   110f4:	0104bc23          	sd	a6,24(s1)
   110f8:	0104b823          	sd	a6,16(s1)
   110fc:	e494                	sd	a3,8(s1)
   110fe:	97a2                	add	a5,a5,s0
   11100:	854a                	mv	a0,s2
   11102:	e398                	sd	a4,0(a5)
   11104:	40e000ef          	jal	ra,11512 <__malloc_unlock>
   11108:	01040513          	addi	a0,s0,16
   1110c:	b3ed                	j	10ef6 <_malloc_r+0x21e>
   1110e:	0034d613          	srli	a2,s1,0x3
   11112:	0016079b          	addiw	a5,a2,1
   11116:	0017979b          	slliw	a5,a5,0x1
   1111a:	2601                	sext.w	a2,a2
   1111c:	078e                	slli	a5,a5,0x3
   1111e:	bedd                	j	10d14 <_malloc_r+0x3c>
   11120:	0067d713          	srli	a4,a5,0x6
   11124:	0397059b          	addiw	a1,a4,57
   11128:	0015959b          	slliw	a1,a1,0x1
   1112c:	0387069b          	addiw	a3,a4,56
   11130:	058e                	slli	a1,a1,0x3
   11132:	b70d                	j	11054 <_malloc_r+0x37c>
   11134:	0f340563          	beq	s0,s3,1121e <_malloc_r+0x546>
   11138:	0109b403          	ld	s0,16(s3)
   1113c:	00843a03          	ld	s4,8(s0)
   11140:	ffca7a13          	andi	s4,s4,-4
   11144:	409a07b3          	sub	a5,s4,s1
   11148:	009a6563          	bltu	s4,s1,11152 <_malloc_r+0x47a>
   1114c:	477d                	li	a4,31
   1114e:	ecf742e3          	blt	a4,a5,11012 <_malloc_r+0x33a>
   11152:	854a                	mv	a0,s2
   11154:	3be000ef          	jal	ra,11512 <__malloc_unlock>
   11158:	4501                	li	a0,0
   1115a:	bb71                	j	10ef6 <_malloc_r+0x21e>
   1115c:	05c7861b          	addiw	a2,a5,92
   11160:	0016169b          	slliw	a3,a2,0x1
   11164:	05b7851b          	addiw	a0,a5,91
   11168:	068e                	slli	a3,a3,0x3
   1116a:	b939                	j	10d88 <_malloc_r+0xb0>
   1116c:	01033783          	ld	a5,16(t1)
   11170:	367d                	addiw	a2,a2,-1
   11172:	16679c63          	bne	a5,t1,112ea <_malloc_r+0x612>
   11176:	00367793          	andi	a5,a2,3
   1117a:	1341                	addi	t1,t1,-16
   1117c:	fbe5                	bnez	a5,1116c <_malloc_r+0x494>
   1117e:	0089b703          	ld	a4,8(s3)
   11182:	fff5c793          	not	a5,a1
   11186:	8ff9                	and	a5,a5,a4
   11188:	00f9b423          	sd	a5,8(s3)
   1118c:	0586                	slli	a1,a1,0x1
   1118e:	c4b7e5e3          	bltu	a5,a1,10dd8 <_malloc_r+0x100>
   11192:	c40583e3          	beqz	a1,10dd8 <_malloc_r+0x100>
   11196:	00f5f733          	and	a4,a1,a5
   1119a:	e711                	bnez	a4,111a6 <_malloc_r+0x4ce>
   1119c:	0586                	slli	a1,a1,0x1
   1119e:	00f5f733          	and	a4,a1,a5
   111a2:	2e11                	addiw	t3,t3,4
   111a4:	df65                	beqz	a4,1119c <_malloc_r+0x4c4>
   111a6:	8672                	mv	a2,t3
   111a8:	bbfd                	j	10fa6 <_malloc_r+0x2ce>
   111aa:	020a0a13          	addi	s4,s4,32
   111ae:	b1a5                	j	10e16 <_malloc_r+0x13e>
   111b0:	0089b503          	ld	a0,8(s3)
   111b4:	4026d69b          	sraiw	a3,a3,0x2
   111b8:	4785                	li	a5,1
   111ba:	00d797b3          	sll	a5,a5,a3
   111be:	8fc9                	or	a5,a5,a0
   111c0:	00f9b423          	sd	a5,8(s3)
   111c4:	b57d                	j	11072 <_malloc_r+0x39a>
   111c6:	014b0bb3          	add	s7,s6,s4
   111ca:	41700bb3          	neg	s7,s7
   111ce:	1bd2                	slli	s7,s7,0x34
   111d0:	034bdb93          	srli	s7,s7,0x34
   111d4:	85de                	mv	a1,s7
   111d6:	854a                	mv	a0,s2
   111d8:	58a000ef          	jal	ra,11762 <_sbrk_r>
   111dc:	57fd                	li	a5,-1
   111de:	4701                	li	a4,0
   111e0:	caf513e3          	bne	a0,a5,10e86 <_malloc_r+0x1ae>
   111e4:	b17d                	j	10e92 <_malloc_r+0x1ba>
   111e6:	05400693          	li	a3,84
   111ea:	06e6e863          	bltu	a3,a4,1125a <_malloc_r+0x582>
   111ee:	00c7d713          	srli	a4,a5,0xc
   111f2:	06f7059b          	addiw	a1,a4,111
   111f6:	0015959b          	slliw	a1,a1,0x1
   111fa:	06e7069b          	addiw	a3,a4,110
   111fe:	058e                	slli	a1,a1,0x3
   11200:	bd91                	j	11054 <_malloc_r+0x37c>
   11202:	15400713          	li	a4,340
   11206:	06f76863          	bltu	a4,a5,11276 <_malloc_r+0x59e>
   1120a:	00f4d793          	srli	a5,s1,0xf
   1120e:	0787861b          	addiw	a2,a5,120
   11212:	0016169b          	slliw	a3,a2,0x1
   11216:	0777851b          	addiw	a0,a5,119
   1121a:	068e                	slli	a3,a3,0x3
   1121c:	b6b5                	j	10d88 <_malloc_r+0xb0>
   1121e:	7d818c93          	addi	s9,gp,2008 # 1f8f0 <__malloc_current_mallinfo>
   11222:	000ca783          	lw	a5,0(s9)
   11226:	014786bb          	addw	a3,a5,s4
   1122a:	00dca023          	sw	a3,0(s9)
   1122e:	b909                	j	10e40 <_malloc_r+0x168>
   11230:	034c1713          	slli	a4,s8,0x34
   11234:	c00716e3          	bnez	a4,10e40 <_malloc_r+0x168>
   11238:	0109b403          	ld	s0,16(s3)
   1123c:	9a56                	add	s4,s4,s5
   1123e:	001a6a13          	ori	s4,s4,1
   11242:	01443423          	sd	s4,8(s0)
   11246:	b179                	j	10ed4 <_malloc_r+0x1fc>
   11248:	016bb023          	sd	s6,0(s7)
   1124c:	b121                	j	10e54 <_malloc_r+0x17c>
   1124e:	845a                	mv	s0,s6
   11250:	b151                	j	10ed4 <_malloc_r+0x1fc>
   11252:	4785                	li	a5,1
   11254:	00fb3423          	sd	a5,8(s6)
   11258:	bded                	j	11152 <_malloc_r+0x47a>
   1125a:	15400693          	li	a3,340
   1125e:	04e6ec63          	bltu	a3,a4,112b6 <_malloc_r+0x5de>
   11262:	00f7d713          	srli	a4,a5,0xf
   11266:	0787059b          	addiw	a1,a4,120
   1126a:	0015959b          	slliw	a1,a1,0x1
   1126e:	0777069b          	addiw	a3,a4,119
   11272:	058e                	slli	a1,a1,0x3
   11274:	b3c5                	j	11054 <_malloc_r+0x37c>
   11276:	55400713          	li	a4,1364
   1127a:	04f76c63          	bltu	a4,a5,112d2 <_malloc_r+0x5fa>
   1127e:	0124d793          	srli	a5,s1,0x12
   11282:	07d7861b          	addiw	a2,a5,125
   11286:	0016169b          	slliw	a3,a2,0x1
   1128a:	07c7851b          	addiw	a0,a5,124
   1128e:	068e                	slli	a3,a3,0x3
   11290:	bce5                	j	10d88 <_malloc_r+0xb0>
   11292:	1c41                	addi	s8,s8,-16
   11294:	9a62                	add	s4,s4,s8
   11296:	416a0a33          	sub	s4,s4,s6
   1129a:	4701                	li	a4,0
   1129c:	bedd                	j	10e92 <_malloc_r+0x1ba>
   1129e:	01040593          	addi	a1,s0,16
   112a2:	854a                	mv	a0,s2
   112a4:	e6cff0ef          	jal	ra,10910 <_free_r>
   112a8:	0109b403          	ld	s0,16(s3)
   112ac:	000ca783          	lw	a5,0(s9)
   112b0:	00843a03          	ld	s4,8(s0)
   112b4:	b105                	j	10ed4 <_malloc_r+0x1fc>
   112b6:	55400693          	li	a3,1364
   112ba:	02e6e363          	bltu	a3,a4,112e0 <_malloc_r+0x608>
   112be:	0127d713          	srli	a4,a5,0x12
   112c2:	07d7059b          	addiw	a1,a4,125
   112c6:	0015959b          	slliw	a1,a1,0x1
   112ca:	07c7069b          	addiw	a3,a4,124
   112ce:	058e                	slli	a1,a1,0x3
   112d0:	b351                	j	11054 <_malloc_r+0x37c>
   112d2:	7f000693          	li	a3,2032
   112d6:	07f00613          	li	a2,127
   112da:	07e00513          	li	a0,126
   112de:	b46d                	j	10d88 <_malloc_r+0xb0>
   112e0:	7f000593          	li	a1,2032
   112e4:	07e00693          	li	a3,126
   112e8:	b3b5                	j	11054 <_malloc_r+0x37c>
   112ea:	0089b783          	ld	a5,8(s3)
   112ee:	bd79                	j	1118c <_malloc_r+0x4b4>

00000000000112f0 <memchr>:
   112f0:	00757793          	andi	a5,a0,7
   112f4:	0ff5f693          	zext.b	a3,a1
   112f8:	c395                	beqz	a5,1131c <memchr+0x2c>
   112fa:	fff60793          	addi	a5,a2,-1
   112fe:	c605                	beqz	a2,11326 <memchr+0x36>
   11300:	567d                	li	a2,-1
   11302:	a801                	j	11312 <memchr+0x22>
   11304:	0505                	addi	a0,a0,1
   11306:	00757713          	andi	a4,a0,7
   1130a:	cb11                	beqz	a4,1131e <memchr+0x2e>
   1130c:	17fd                	addi	a5,a5,-1
   1130e:	00c78c63          	beq	a5,a2,11326 <memchr+0x36>
   11312:	00054703          	lbu	a4,0(a0)
   11316:	fed717e3          	bne	a4,a3,11304 <memchr+0x14>
   1131a:	8082                	ret
   1131c:	87b2                	mv	a5,a2
   1131e:	471d                	li	a4,7
   11320:	00f76f63          	bltu	a4,a5,1133e <memchr+0x4e>
   11324:	e399                	bnez	a5,1132a <memchr+0x3a>
   11326:	4501                	li	a0,0
   11328:	8082                	ret
   1132a:	97aa                	add	a5,a5,a0
   1132c:	a021                	j	11334 <memchr+0x44>
   1132e:	0505                	addi	a0,a0,1
   11330:	fea78be3          	beq	a5,a0,11326 <memchr+0x36>
   11334:	00054703          	lbu	a4,0(a0)
   11338:	fed71be3          	bne	a4,a3,1132e <memchr+0x3e>
   1133c:	8082                	ret
   1133e:	0ff5f593          	zext.b	a1,a1
   11342:	00859613          	slli	a2,a1,0x8
   11346:	8e4d                	or	a2,a2,a1
   11348:	01061713          	slli	a4,a2,0x10
   1134c:	8f51                	or	a4,a4,a2
   1134e:	6001b883          	ld	a7,1536(gp) # 1f718 <__SDATA_BEGIN__>
   11352:	6081b803          	ld	a6,1544(gp) # 1f720 <__SDATA_BEGIN__+0x8>
   11356:	02071593          	slli	a1,a4,0x20
   1135a:	8dd9                	or	a1,a1,a4
   1135c:	431d                	li	t1,7
   1135e:	6118                	ld	a4,0(a0)
   11360:	8f2d                	xor	a4,a4,a1
   11362:	01170633          	add	a2,a4,a7
   11366:	fff74713          	not	a4,a4
   1136a:	8f71                	and	a4,a4,a2
   1136c:	01077733          	and	a4,a4,a6
   11370:	ff4d                	bnez	a4,1132a <memchr+0x3a>
   11372:	17e1                	addi	a5,a5,-8
   11374:	0521                	addi	a0,a0,8
   11376:	fef364e3          	bltu	t1,a5,1135e <memchr+0x6e>
   1137a:	fbc5                	bnez	a5,1132a <memchr+0x3a>
   1137c:	b76d                	j	11326 <memchr+0x36>

000000000001137e <memcpy>:
   1137e:	00b547b3          	xor	a5,a0,a1
   11382:	8b9d                	andi	a5,a5,7
   11384:	00c508b3          	add	a7,a0,a2
   11388:	eba1                	bnez	a5,113d8 <memcpy+0x5a>
   1138a:	479d                	li	a5,7
   1138c:	04c7f663          	bgeu	a5,a2,113d8 <memcpy+0x5a>
   11390:	00757793          	andi	a5,a0,7
   11394:	872a                	mv	a4,a0
   11396:	e7cd                	bnez	a5,11440 <memcpy+0xc2>
   11398:	ff88f613          	andi	a2,a7,-8
   1139c:	40e606b3          	sub	a3,a2,a4
   113a0:	04000793          	li	a5,64
   113a4:	04000293          	li	t0,64
   113a8:	04d7c463          	blt	a5,a3,113f0 <memcpy+0x72>
   113ac:	86ae                	mv	a3,a1
   113ae:	87ba                	mv	a5,a4
   113b0:	02c77163          	bgeu	a4,a2,113d2 <memcpy+0x54>
   113b4:	0006b803          	ld	a6,0(a3)
   113b8:	07a1                	addi	a5,a5,8
   113ba:	06a1                	addi	a3,a3,8
   113bc:	ff07bc23          	sd	a6,-8(a5)
   113c0:	fec7eae3          	bltu	a5,a2,113b4 <memcpy+0x36>
   113c4:	fff60793          	addi	a5,a2,-1
   113c8:	8f99                	sub	a5,a5,a4
   113ca:	9be1                	andi	a5,a5,-8
   113cc:	07a1                	addi	a5,a5,8
   113ce:	973e                	add	a4,a4,a5
   113d0:	95be                	add	a1,a1,a5
   113d2:	01176663          	bltu	a4,a7,113de <memcpy+0x60>
   113d6:	8082                	ret
   113d8:	872a                	mv	a4,a0
   113da:	ff157ee3          	bgeu	a0,a7,113d6 <memcpy+0x58>
   113de:	0005c783          	lbu	a5,0(a1)
   113e2:	0705                	addi	a4,a4,1
   113e4:	0585                	addi	a1,a1,1
   113e6:	fef70fa3          	sb	a5,-1(a4)
   113ea:	ff176ae3          	bltu	a4,a7,113de <memcpy+0x60>
   113ee:	8082                	ret
   113f0:	6594                	ld	a3,8(a1)
   113f2:	7d9c                	ld	a5,56(a1)
   113f4:	0005bf83          	ld	t6,0(a1)
   113f8:	0105bf03          	ld	t5,16(a1)
   113fc:	0185be83          	ld	t4,24(a1)
   11400:	0205be03          	ld	t3,32(a1)
   11404:	0285b303          	ld	t1,40(a1)
   11408:	0305b803          	ld	a6,48(a1)
   1140c:	e714                	sd	a3,8(a4)
   1140e:	61b4                	ld	a3,64(a1)
   11410:	01f73023          	sd	t6,0(a4)
   11414:	01e73823          	sd	t5,16(a4)
   11418:	01d73c23          	sd	t4,24(a4)
   1141c:	03c73023          	sd	t3,32(a4)
   11420:	02673423          	sd	t1,40(a4)
   11424:	03073823          	sd	a6,48(a4)
   11428:	ff1c                	sd	a5,56(a4)
   1142a:	04870713          	addi	a4,a4,72
   1142e:	40e607b3          	sub	a5,a2,a4
   11432:	fed73c23          	sd	a3,-8(a4)
   11436:	04858593          	addi	a1,a1,72
   1143a:	faf2cbe3          	blt	t0,a5,113f0 <memcpy+0x72>
   1143e:	b7bd                	j	113ac <memcpy+0x2e>
   11440:	0005c683          	lbu	a3,0(a1)
   11444:	0705                	addi	a4,a4,1
   11446:	00777793          	andi	a5,a4,7
   1144a:	fed70fa3          	sb	a3,-1(a4)
   1144e:	0585                	addi	a1,a1,1
   11450:	d7a1                	beqz	a5,11398 <memcpy+0x1a>
   11452:	0005c683          	lbu	a3,0(a1)
   11456:	0705                	addi	a4,a4,1
   11458:	00777793          	andi	a5,a4,7
   1145c:	fed70fa3          	sb	a3,-1(a4)
   11460:	0585                	addi	a1,a1,1
   11462:	fff9                	bnez	a5,11440 <memcpy+0xc2>
   11464:	bf15                	j	11398 <memcpy+0x1a>

0000000000011466 <memset>:
   11466:	433d                	li	t1,15
   11468:	872a                	mv	a4,a0
   1146a:	02c37163          	bgeu	t1,a2,1148c <memset+0x26>
   1146e:	00f77793          	andi	a5,a4,15
   11472:	e3c1                	bnez	a5,114f2 <memset+0x8c>
   11474:	e1bd                	bnez	a1,114da <memset+0x74>
   11476:	ff067693          	andi	a3,a2,-16
   1147a:	8a3d                	andi	a2,a2,15
   1147c:	96ba                	add	a3,a3,a4
   1147e:	e30c                	sd	a1,0(a4)
   11480:	e70c                	sd	a1,8(a4)
   11482:	0741                	addi	a4,a4,16
   11484:	fed76de3          	bltu	a4,a3,1147e <memset+0x18>
   11488:	e211                	bnez	a2,1148c <memset+0x26>
   1148a:	8082                	ret
   1148c:	40c306b3          	sub	a3,t1,a2
   11490:	068a                	slli	a3,a3,0x2
   11492:	00000297          	auipc	t0,0x0
   11496:	9696                	add	a3,a3,t0
   11498:	00a68067          	jr	10(a3)
   1149c:	00b70723          	sb	a1,14(a4)
   114a0:	00b706a3          	sb	a1,13(a4)
   114a4:	00b70623          	sb	a1,12(a4)
   114a8:	00b705a3          	sb	a1,11(a4)
   114ac:	00b70523          	sb	a1,10(a4)
   114b0:	00b704a3          	sb	a1,9(a4)
   114b4:	00b70423          	sb	a1,8(a4)
   114b8:	00b703a3          	sb	a1,7(a4)
   114bc:	00b70323          	sb	a1,6(a4)
   114c0:	00b702a3          	sb	a1,5(a4)
   114c4:	00b70223          	sb	a1,4(a4)
   114c8:	00b701a3          	sb	a1,3(a4)
   114cc:	00b70123          	sb	a1,2(a4)
   114d0:	00b700a3          	sb	a1,1(a4)
   114d4:	00b70023          	sb	a1,0(a4)
   114d8:	8082                	ret
   114da:	0ff5f593          	zext.b	a1,a1
   114de:	00859693          	slli	a3,a1,0x8
   114e2:	8dd5                	or	a1,a1,a3
   114e4:	01059693          	slli	a3,a1,0x10
   114e8:	8dd5                	or	a1,a1,a3
   114ea:	02059693          	slli	a3,a1,0x20
   114ee:	8dd5                	or	a1,a1,a3
   114f0:	b759                	j	11476 <memset+0x10>
   114f2:	00279693          	slli	a3,a5,0x2
   114f6:	00000297          	auipc	t0,0x0
   114fa:	9696                	add	a3,a3,t0
   114fc:	8286                	mv	t0,ra
   114fe:	fa2680e7          	jalr	-94(a3)
   11502:	8096                	mv	ra,t0
   11504:	17c1                	addi	a5,a5,-16
   11506:	8f1d                	sub	a4,a4,a5
   11508:	963e                	add	a2,a2,a5
   1150a:	f8c371e3          	bgeu	t1,a2,1148c <memset+0x26>
   1150e:	b79d                	j	11474 <memset+0xe>

0000000000011510 <__malloc_lock>:
   11510:	8082                	ret

0000000000011512 <__malloc_unlock>:
   11512:	8082                	ret

0000000000011514 <_printf_r>:
   11514:	715d                	addi	sp,sp,-80
   11516:	f032                	sd	a2,32(sp)
   11518:	f436                	sd	a3,40(sp)
   1151a:	f83a                	sd	a4,48(sp)
   1151c:	fc3e                	sd	a5,56(sp)
   1151e:	e0c2                	sd	a6,64(sp)
   11520:	e4c6                	sd	a7,72(sp)
   11522:	862e                	mv	a2,a1
   11524:	690c                	ld	a1,16(a0)
   11526:	1014                	addi	a3,sp,32
   11528:	ec06                	sd	ra,24(sp)
   1152a:	e436                	sd	a3,8(sp)
   1152c:	472000ef          	jal	ra,1199e <_vfprintf_r>
   11530:	60e2                	ld	ra,24(sp)
   11532:	6161                	addi	sp,sp,80
   11534:	8082                	ret

0000000000011536 <printf>:
   11536:	6481b303          	ld	t1,1608(gp) # 1f760 <_impure_ptr>
   1153a:	711d                	addi	sp,sp,-96
   1153c:	f832                	sd	a2,48(sp)
   1153e:	fc36                	sd	a3,56(sp)
   11540:	f42e                	sd	a1,40(sp)
   11542:	e0ba                	sd	a4,64(sp)
   11544:	e4be                	sd	a5,72(sp)
   11546:	e8c2                	sd	a6,80(sp)
   11548:	ecc6                	sd	a7,88(sp)
   1154a:	01033583          	ld	a1,16(t1)
   1154e:	1034                	addi	a3,sp,40
   11550:	862a                	mv	a2,a0
   11552:	851a                	mv	a0,t1
   11554:	ec06                	sd	ra,24(sp)
   11556:	e436                	sd	a3,8(sp)
   11558:	446000ef          	jal	ra,1199e <_vfprintf_r>
   1155c:	60e2                	ld	ra,24(sp)
   1155e:	6125                	addi	sp,sp,96
   11560:	8082                	ret

0000000000011562 <_puts_r>:
   11562:	7159                	addi	sp,sp,-112
   11564:	f0a2                	sd	s0,96(sp)
   11566:	842a                	mv	s0,a0
   11568:	852e                	mv	a0,a1
   1156a:	eca6                	sd	s1,88(sp)
   1156c:	f486                	sd	ra,104(sp)
   1156e:	84ae                	mv	s1,a1
   11570:	39e000ef          	jal	ra,1190e <strlen>
   11574:	67f1                	lui	a5,0x1c
   11576:	70878793          	addi	a5,a5,1800 # 1c708 <__clzdi2+0x9e>
   1157a:	e0be                	sd	a5,64(sp)
   1157c:	4785                	li	a5,1
   1157e:	e4be                	sd	a5,72(sp)
   11580:	4838                	lw	a4,80(s0)
   11582:	181c                	addi	a5,sp,48
   11584:	00150693          	addi	a3,a0,1
   11588:	ec3e                	sd	a5,24(sp)
   1158a:	4789                	li	a5,2
   1158c:	f826                	sd	s1,48(sp)
   1158e:	fc2a                	sd	a0,56(sp)
   11590:	f436                	sd	a3,40(sp)
   11592:	d03e                	sw	a5,32(sp)
   11594:	680c                	ld	a1,16(s0)
   11596:	cf0d                	beqz	a4,115d0 <_puts_r+0x6e>
   11598:	01059783          	lh	a5,16(a1)
   1159c:	03279713          	slli	a4,a5,0x32
   115a0:	00074d63          	bltz	a4,115ba <_puts_r+0x58>
   115a4:	0ac5a703          	lw	a4,172(a1)
   115a8:	6689                	lui	a3,0x2
   115aa:	8fd5                	or	a5,a5,a3
   115ac:	76f9                	lui	a3,0xffffe
   115ae:	16fd                	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde6e7>
   115b0:	8f75                	and	a4,a4,a3
   115b2:	00f59823          	sh	a5,16(a1)
   115b6:	0ae5a623          	sw	a4,172(a1)
   115ba:	0830                	addi	a2,sp,24
   115bc:	8522                	mv	a0,s0
   115be:	23e020ef          	jal	ra,137fc <__sfvwrite_r>
   115c2:	ed09                	bnez	a0,115dc <_puts_r+0x7a>
   115c4:	4529                	li	a0,10
   115c6:	70a6                	ld	ra,104(sp)
   115c8:	7406                	ld	s0,96(sp)
   115ca:	64e6                	ld	s1,88(sp)
   115cc:	6165                	addi	sp,sp,112
   115ce:	8082                	ret
   115d0:	8522                	mv	a0,s0
   115d2:	e42e                	sd	a1,8(sp)
   115d4:	a40ff0ef          	jal	ra,10814 <__sinit>
   115d8:	65a2                	ld	a1,8(sp)
   115da:	bf7d                	j	11598 <_puts_r+0x36>
   115dc:	557d                	li	a0,-1
   115de:	b7e5                	j	115c6 <_puts_r+0x64>

00000000000115e0 <puts>:
   115e0:	85aa                	mv	a1,a0
   115e2:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   115e6:	bfb5                	j	11562 <_puts_r>

00000000000115e8 <lflush>:
   115e8:	01055783          	lhu	a5,16(a0)
   115ec:	4725                	li	a4,9
   115ee:	8ba5                	andi	a5,a5,9
   115f0:	00e78463          	beq	a5,a4,115f8 <lflush+0x10>
   115f4:	4501                	li	a0,0
   115f6:	8082                	ret
   115f8:	ea7fe06f          	j	1049e <fflush>

00000000000115fc <__srefill_r>:
   115fc:	7179                	addi	sp,sp,-48
   115fe:	f022                	sd	s0,32(sp)
   11600:	ec26                	sd	s1,24(sp)
   11602:	f406                	sd	ra,40(sp)
   11604:	e84a                	sd	s2,16(sp)
   11606:	e44e                	sd	s3,8(sp)
   11608:	84aa                	mv	s1,a0
   1160a:	842e                	mv	s0,a1
   1160c:	c119                	beqz	a0,11612 <__srefill_r+0x16>
   1160e:	493c                	lw	a5,80(a0)
   11610:	c7e9                	beqz	a5,116da <__srefill_r+0xde>
   11612:	01041783          	lh	a5,16(s0)
   11616:	6689                	lui	a3,0x2
   11618:	03079713          	slli	a4,a5,0x30
   1161c:	9341                	srli	a4,a4,0x30
   1161e:	00d77633          	and	a2,a4,a3
   11622:	e215                	bnez	a2,11646 <__srefill_r+0x4a>
   11624:	0ac42703          	lw	a4,172(s0)
   11628:	8fd5                	or	a5,a5,a3
   1162a:	76f9                	lui	a3,0xffffe
   1162c:	0107979b          	slliw	a5,a5,0x10
   11630:	16fd                	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde6e7>
   11632:	4107d79b          	sraiw	a5,a5,0x10
   11636:	8f75                	and	a4,a4,a3
   11638:	0ae42623          	sw	a4,172(s0)
   1163c:	03079713          	slli	a4,a5,0x30
   11640:	00f41823          	sh	a5,16(s0)
   11644:	9341                	srli	a4,a4,0x30
   11646:	00042423          	sw	zero,8(s0)
   1164a:	02077693          	andi	a3,a4,32
   1164e:	0e069763          	bnez	a3,1173c <__srefill_r+0x140>
   11652:	00477693          	andi	a3,a4,4
   11656:	eab1                	bnez	a3,116aa <__srefill_r+0xae>
   11658:	01077693          	andi	a3,a4,16
   1165c:	0e068b63          	beqz	a3,11752 <__srefill_r+0x156>
   11660:	8b21                	andi	a4,a4,8
   11662:	e74d                	bnez	a4,1170c <__srefill_r+0x110>
   11664:	0047e793          	ori	a5,a5,4
   11668:	00f41823          	sh	a5,16(s0)
   1166c:	6c1c                	ld	a5,24(s0)
   1166e:	cfc5                	beqz	a5,11726 <__srefill_r+0x12a>
   11670:	01041903          	lh	s2,16(s0)
   11674:	03091993          	slli	s3,s2,0x30
   11678:	00397793          	andi	a5,s2,3
   1167c:	0309d993          	srli	s3,s3,0x30
   11680:	e3a5                	bnez	a5,116e0 <__srefill_r+0xe4>
   11682:	6c10                	ld	a2,24(s0)
   11684:	7c1c                	ld	a5,56(s0)
   11686:	5014                	lw	a3,32(s0)
   11688:	780c                	ld	a1,48(s0)
   1168a:	e010                	sd	a2,0(s0)
   1168c:	8526                	mv	a0,s1
   1168e:	9782                	jalr	a5
   11690:	0005079b          	sext.w	a5,a0
   11694:	c41c                	sw	a5,8(s0)
   11696:	4501                	li	a0,0
   11698:	0af05463          	blez	a5,11740 <__srefill_r+0x144>
   1169c:	70a2                	ld	ra,40(sp)
   1169e:	7402                	ld	s0,32(sp)
   116a0:	64e2                	ld	s1,24(sp)
   116a2:	6942                	ld	s2,16(sp)
   116a4:	69a2                	ld	s3,8(sp)
   116a6:	6145                	addi	sp,sp,48
   116a8:	8082                	ret
   116aa:	6c2c                	ld	a1,88(s0)
   116ac:	d1e1                	beqz	a1,1166c <__srefill_r+0x70>
   116ae:	07440793          	addi	a5,s0,116
   116b2:	00f58563          	beq	a1,a5,116bc <__srefill_r+0xc0>
   116b6:	8526                	mv	a0,s1
   116b8:	a58ff0ef          	jal	ra,10910 <_free_r>
   116bc:	583c                	lw	a5,112(s0)
   116be:	04043c23          	sd	zero,88(s0)
   116c2:	c41c                	sw	a5,8(s0)
   116c4:	d7c5                	beqz	a5,1166c <__srefill_r+0x70>
   116c6:	743c                	ld	a5,104(s0)
   116c8:	70a2                	ld	ra,40(sp)
   116ca:	64e2                	ld	s1,24(sp)
   116cc:	e01c                	sd	a5,0(s0)
   116ce:	7402                	ld	s0,32(sp)
   116d0:	6942                	ld	s2,16(sp)
   116d2:	69a2                	ld	s3,8(sp)
   116d4:	4501                	li	a0,0
   116d6:	6145                	addi	sp,sp,48
   116d8:	8082                	ret
   116da:	93aff0ef          	jal	ra,10814 <__sinit>
   116de:	bf15                	j	11612 <__srefill_r+0x16>
   116e0:	6301b503          	ld	a0,1584(gp) # 1f748 <_global_impure_ptr>
   116e4:	65c5                	lui	a1,0x11
   116e6:	4785                	li	a5,1
   116e8:	00f41823          	sh	a5,16(s0)
   116ec:	5e858593          	addi	a1,a1,1512 # 115e8 <lflush>
   116f0:	c72ff0ef          	jal	ra,10b62 <_fwalk>
   116f4:	0099f993          	andi	s3,s3,9
   116f8:	01241823          	sh	s2,16(s0)
   116fc:	47a5                	li	a5,9
   116fe:	f8f992e3          	bne	s3,a5,11682 <__srefill_r+0x86>
   11702:	85a2                	mv	a1,s0
   11704:	8526                	mv	a0,s1
   11706:	bd1fe0ef          	jal	ra,102d6 <__sflush_r>
   1170a:	bfa5                	j	11682 <__srefill_r+0x86>
   1170c:	85a2                	mv	a1,s0
   1170e:	8526                	mv	a0,s1
   11710:	d59fe0ef          	jal	ra,10468 <_fflush_r>
   11714:	e505                	bnez	a0,1173c <__srefill_r+0x140>
   11716:	01041783          	lh	a5,16(s0)
   1171a:	00042623          	sw	zero,12(s0)
   1171e:	02042423          	sw	zero,40(s0)
   11722:	9bdd                	andi	a5,a5,-9
   11724:	b781                	j	11664 <__srefill_r+0x68>
   11726:	85a2                	mv	a1,s0
   11728:	8526                	mv	a0,s1
   1172a:	49c040ef          	jal	ra,15bc6 <__smakebuf_r>
   1172e:	b789                	j	11670 <__srefill_r+0x74>
   11730:	04076713          	ori	a4,a4,64
   11734:	00042423          	sw	zero,8(s0)
   11738:	00e41823          	sh	a4,16(s0)
   1173c:	557d                	li	a0,-1
   1173e:	bfb9                	j	1169c <__srefill_r+0xa0>
   11740:	01041703          	lh	a4,16(s0)
   11744:	f7f5                	bnez	a5,11730 <__srefill_r+0x134>
   11746:	02076713          	ori	a4,a4,32
   1174a:	00e41823          	sh	a4,16(s0)
   1174e:	557d                	li	a0,-1
   11750:	b7b1                	j	1169c <__srefill_r+0xa0>
   11752:	4725                	li	a4,9
   11754:	c098                	sw	a4,0(s1)
   11756:	0407e793          	ori	a5,a5,64
   1175a:	00f41823          	sh	a5,16(s0)
   1175e:	557d                	li	a0,-1
   11760:	bf35                	j	1169c <__srefill_r+0xa0>

0000000000011762 <_sbrk_r>:
   11762:	1101                	addi	sp,sp,-32
   11764:	e822                	sd	s0,16(sp)
   11766:	e426                	sd	s1,8(sp)
   11768:	842a                	mv	s0,a0
   1176a:	852e                	mv	a0,a1
   1176c:	ec06                	sd	ra,24(sp)
   1176e:	6801a423          	sw	zero,1672(gp) # 1f7a0 <errno>
   11772:	1b9090ef          	jal	ra,1b12a <_sbrk>
   11776:	57fd                	li	a5,-1
   11778:	00f50763          	beq	a0,a5,11786 <_sbrk_r+0x24>
   1177c:	60e2                	ld	ra,24(sp)
   1177e:	6442                	ld	s0,16(sp)
   11780:	64a2                	ld	s1,8(sp)
   11782:	6105                	addi	sp,sp,32
   11784:	8082                	ret
   11786:	6881a783          	lw	a5,1672(gp) # 1f7a0 <errno>
   1178a:	dbed                	beqz	a5,1177c <_sbrk_r+0x1a>
   1178c:	60e2                	ld	ra,24(sp)
   1178e:	c01c                	sw	a5,0(s0)
   11790:	6442                	ld	s0,16(sp)
   11792:	64a2                	ld	s1,8(sp)
   11794:	6105                	addi	sp,sp,32
   11796:	8082                	ret

0000000000011798 <__sread>:
   11798:	1141                	addi	sp,sp,-16
   1179a:	e022                	sd	s0,0(sp)
   1179c:	842e                	mv	s0,a1
   1179e:	01259583          	lh	a1,18(a1)
   117a2:	e406                	sd	ra,8(sp)
   117a4:	33c050ef          	jal	ra,16ae0 <_read_r>
   117a8:	00054963          	bltz	a0,117ba <__sread+0x22>
   117ac:	685c                	ld	a5,144(s0)
   117ae:	60a2                	ld	ra,8(sp)
   117b0:	97aa                	add	a5,a5,a0
   117b2:	e85c                	sd	a5,144(s0)
   117b4:	6402                	ld	s0,0(sp)
   117b6:	0141                	addi	sp,sp,16
   117b8:	8082                	ret
   117ba:	01045783          	lhu	a5,16(s0)
   117be:	777d                	lui	a4,0xfffff
   117c0:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf6e7>
   117c2:	8ff9                	and	a5,a5,a4
   117c4:	60a2                	ld	ra,8(sp)
   117c6:	00f41823          	sh	a5,16(s0)
   117ca:	6402                	ld	s0,0(sp)
   117cc:	0141                	addi	sp,sp,16
   117ce:	8082                	ret

00000000000117d0 <__seofread>:
   117d0:	4501                	li	a0,0
   117d2:	8082                	ret

00000000000117d4 <__swrite>:
   117d4:	01059783          	lh	a5,16(a1)
   117d8:	7179                	addi	sp,sp,-48
   117da:	f022                	sd	s0,32(sp)
   117dc:	ec26                	sd	s1,24(sp)
   117de:	e84a                	sd	s2,16(sp)
   117e0:	e44e                	sd	s3,8(sp)
   117e2:	f406                	sd	ra,40(sp)
   117e4:	1007f713          	andi	a4,a5,256
   117e8:	842e                	mv	s0,a1
   117ea:	84aa                	mv	s1,a0
   117ec:	8932                	mv	s2,a2
   117ee:	89b6                	mv	s3,a3
   117f0:	e31d                	bnez	a4,11816 <__swrite+0x42>
   117f2:	777d                	lui	a4,0xfffff
   117f4:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf6e7>
   117f6:	8ff9                	and	a5,a5,a4
   117f8:	01241583          	lh	a1,18(s0)
   117fc:	00f41823          	sh	a5,16(s0)
   11800:	7402                	ld	s0,32(sp)
   11802:	70a2                	ld	ra,40(sp)
   11804:	86ce                	mv	a3,s3
   11806:	864a                	mv	a2,s2
   11808:	69a2                	ld	s3,8(sp)
   1180a:	6942                	ld	s2,16(sp)
   1180c:	8526                	mv	a0,s1
   1180e:	64e2                	ld	s1,24(sp)
   11810:	6145                	addi	sp,sp,48
   11812:	4c90106f          	j	134da <_write_r>
   11816:	01259583          	lh	a1,18(a1)
   1181a:	4689                	li	a3,2
   1181c:	4601                	li	a2,0
   1181e:	36c040ef          	jal	ra,15b8a <_lseek_r>
   11822:	01041783          	lh	a5,16(s0)
   11826:	b7f1                	j	117f2 <__swrite+0x1e>

0000000000011828 <__sseek>:
   11828:	1141                	addi	sp,sp,-16
   1182a:	e022                	sd	s0,0(sp)
   1182c:	842e                	mv	s0,a1
   1182e:	01259583          	lh	a1,18(a1)
   11832:	e406                	sd	ra,8(sp)
   11834:	356040ef          	jal	ra,15b8a <_lseek_r>
   11838:	57fd                	li	a5,-1
   1183a:	00f50d63          	beq	a0,a5,11854 <__sseek+0x2c>
   1183e:	01045783          	lhu	a5,16(s0)
   11842:	6705                	lui	a4,0x1
   11844:	60a2                	ld	ra,8(sp)
   11846:	8fd9                	or	a5,a5,a4
   11848:	e848                	sd	a0,144(s0)
   1184a:	00f41823          	sh	a5,16(s0)
   1184e:	6402                	ld	s0,0(sp)
   11850:	0141                	addi	sp,sp,16
   11852:	8082                	ret
   11854:	01045783          	lhu	a5,16(s0)
   11858:	777d                	lui	a4,0xfffff
   1185a:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf6e7>
   1185c:	8ff9                	and	a5,a5,a4
   1185e:	60a2                	ld	ra,8(sp)
   11860:	00f41823          	sh	a5,16(s0)
   11864:	6402                	ld	s0,0(sp)
   11866:	0141                	addi	sp,sp,16
   11868:	8082                	ret

000000000001186a <__sclose>:
   1186a:	01259583          	lh	a1,18(a1)
   1186e:	66f0106f          	j	136dc <_close_r>

0000000000011872 <strcpy>:
   11872:	00b567b3          	or	a5,a0,a1
   11876:	8b9d                	andi	a5,a5,7
   11878:	efad                	bnez	a5,118f2 <strcpy+0x80>
   1187a:	6101b683          	ld	a3,1552(gp) # 1f728 <mask>
   1187e:	6198                	ld	a4,0(a1)
   11880:	567d                	li	a2,-1
   11882:	00d777b3          	and	a5,a4,a3
   11886:	97b6                	add	a5,a5,a3
   11888:	8fd9                	or	a5,a5,a4
   1188a:	8fd5                	or	a5,a5,a3
   1188c:	06c79c63          	bne	a5,a2,11904 <strcpy+0x92>
   11890:	862a                	mv	a2,a0
   11892:	587d                	li	a6,-1
   11894:	e218                	sd	a4,0(a2)
   11896:	6598                	ld	a4,8(a1)
   11898:	05a1                	addi	a1,a1,8
   1189a:	0621                	addi	a2,a2,8
   1189c:	00d777b3          	and	a5,a4,a3
   118a0:	97b6                	add	a5,a5,a3
   118a2:	8fd9                	or	a5,a5,a4
   118a4:	8fd5                	or	a5,a5,a3
   118a6:	ff0787e3          	beq	a5,a6,11894 <strcpy+0x22>
   118aa:	0005c783          	lbu	a5,0(a1)
   118ae:	0015c703          	lbu	a4,1(a1)
   118b2:	0025c683          	lbu	a3,2(a1)
   118b6:	00f60023          	sb	a5,0(a2)
   118ba:	cb9d                	beqz	a5,118f0 <strcpy+0x7e>
   118bc:	00e600a3          	sb	a4,1(a2)
   118c0:	cb05                	beqz	a4,118f0 <strcpy+0x7e>
   118c2:	0035c783          	lbu	a5,3(a1)
   118c6:	00d60123          	sb	a3,2(a2)
   118ca:	c29d                	beqz	a3,118f0 <strcpy+0x7e>
   118cc:	0045c703          	lbu	a4,4(a1)
   118d0:	00f601a3          	sb	a5,3(a2)
   118d4:	cf91                	beqz	a5,118f0 <strcpy+0x7e>
   118d6:	0055c783          	lbu	a5,5(a1)
   118da:	00e60223          	sb	a4,4(a2)
   118de:	cb09                	beqz	a4,118f0 <strcpy+0x7e>
   118e0:	0065c703          	lbu	a4,6(a1)
   118e4:	00f602a3          	sb	a5,5(a2)
   118e8:	c781                	beqz	a5,118f0 <strcpy+0x7e>
   118ea:	00e60323          	sb	a4,6(a2)
   118ee:	ef09                	bnez	a4,11908 <strcpy+0x96>
   118f0:	8082                	ret
   118f2:	87aa                	mv	a5,a0
   118f4:	0005c703          	lbu	a4,0(a1)
   118f8:	0785                	addi	a5,a5,1
   118fa:	0585                	addi	a1,a1,1
   118fc:	fee78fa3          	sb	a4,-1(a5)
   11900:	fb75                	bnez	a4,118f4 <strcpy+0x82>
   11902:	8082                	ret
   11904:	862a                	mv	a2,a0
   11906:	b755                	j	118aa <strcpy+0x38>
   11908:	000603a3          	sb	zero,7(a2)
   1190c:	8082                	ret

000000000001190e <strlen>:
   1190e:	00757793          	andi	a5,a0,7
   11912:	872a                	mv	a4,a0
   11914:	eba9                	bnez	a5,11966 <strlen+0x58>
   11916:	6101b683          	ld	a3,1552(gp) # 1f728 <mask>
   1191a:	55fd                	li	a1,-1
   1191c:	6310                	ld	a2,0(a4)
   1191e:	0721                	addi	a4,a4,8
   11920:	00d677b3          	and	a5,a2,a3
   11924:	97b6                	add	a5,a5,a3
   11926:	8fd1                	or	a5,a5,a2
   11928:	8fd5                	or	a5,a5,a3
   1192a:	feb789e3          	beq	a5,a1,1191c <strlen+0xe>
   1192e:	ff874683          	lbu	a3,-8(a4)
   11932:	40a707b3          	sub	a5,a4,a0
   11936:	c6a9                	beqz	a3,11980 <strlen+0x72>
   11938:	ff974683          	lbu	a3,-7(a4)
   1193c:	ce9d                	beqz	a3,1197a <strlen+0x6c>
   1193e:	ffa74683          	lbu	a3,-6(a4)
   11942:	c6a9                	beqz	a3,1198c <strlen+0x7e>
   11944:	ffb74683          	lbu	a3,-5(a4)
   11948:	ce9d                	beqz	a3,11986 <strlen+0x78>
   1194a:	ffc74683          	lbu	a3,-4(a4)
   1194e:	c2b1                	beqz	a3,11992 <strlen+0x84>
   11950:	ffd74683          	lbu	a3,-3(a4)
   11954:	c2b1                	beqz	a3,11998 <strlen+0x8a>
   11956:	ffe74503          	lbu	a0,-2(a4)
   1195a:	00a03533          	snez	a0,a0
   1195e:	953e                	add	a0,a0,a5
   11960:	1579                	addi	a0,a0,-2
   11962:	8082                	ret
   11964:	dacd                	beqz	a3,11916 <strlen+0x8>
   11966:	00074783          	lbu	a5,0(a4)
   1196a:	0705                	addi	a4,a4,1
   1196c:	00777693          	andi	a3,a4,7
   11970:	fbf5                	bnez	a5,11964 <strlen+0x56>
   11972:	8f09                	sub	a4,a4,a0
   11974:	fff70513          	addi	a0,a4,-1
   11978:	8082                	ret
   1197a:	ff978513          	addi	a0,a5,-7
   1197e:	8082                	ret
   11980:	ff878513          	addi	a0,a5,-8
   11984:	8082                	ret
   11986:	ffb78513          	addi	a0,a5,-5
   1198a:	8082                	ret
   1198c:	ffa78513          	addi	a0,a5,-6
   11990:	8082                	ret
   11992:	ffc78513          	addi	a0,a5,-4
   11996:	8082                	ret
   11998:	ffd78513          	addi	a0,a5,-3
   1199c:	8082                	ret

000000000001199e <_vfprintf_r>:
   1199e:	d8010113          	addi	sp,sp,-640
   119a2:	26113c23          	sd	ra,632(sp)
   119a6:	27213023          	sd	s2,608(sp)
   119aa:	25413823          	sd	s4,592(sp)
   119ae:	23913423          	sd	s9,552(sp)
   119b2:	892e                	mv	s2,a1
   119b4:	8cb2                	mv	s9,a2
   119b6:	e836                	sd	a3,16(sp)
   119b8:	26813823          	sd	s0,624(sp)
   119bc:	26913423          	sd	s1,616(sp)
   119c0:	25313c23          	sd	s3,600(sp)
   119c4:	25513423          	sd	s5,584(sp)
   119c8:	25613023          	sd	s6,576(sp)
   119cc:	23713c23          	sd	s7,568(sp)
   119d0:	23813823          	sd	s8,560(sp)
   119d4:	23a13023          	sd	s10,544(sp)
   119d8:	21b13c23          	sd	s11,536(sp)
   119dc:	8a2a                	mv	s4,a0
   119de:	1a0040ef          	jal	ra,15b7e <_localeconv_r>
   119e2:	611c                	ld	a5,0(a0)
   119e4:	853e                	mv	a0,a5
   119e6:	f8be                	sd	a5,112(sp)
   119e8:	f27ff0ef          	jal	ra,1190e <strlen>
   119ec:	f4aa                	sd	a0,104(sp)
   119ee:	e202                	sd	zero,256(sp)
   119f0:	e602                	sd	zero,264(sp)
   119f2:	000a0663          	beqz	s4,119fe <_vfprintf_r+0x60>
   119f6:	050a2783          	lw	a5,80(s4)
   119fa:	5a078863          	beqz	a5,11faa <_vfprintf_r+0x60c>
   119fe:	01091703          	lh	a4,16(s2)
   11a02:	6689                	lui	a3,0x2
   11a04:	03071793          	slli	a5,a4,0x30
   11a08:	93c1                	srli	a5,a5,0x30
   11a0a:	00d7f633          	and	a2,a5,a3
   11a0e:	e215                	bnez	a2,11a32 <_vfprintf_r+0x94>
   11a10:	0ac92603          	lw	a2,172(s2)
   11a14:	00d767b3          	or	a5,a4,a3
   11a18:	0107979b          	slliw	a5,a5,0x10
   11a1c:	7779                	lui	a4,0xffffe
   11a1e:	4107d79b          	sraiw	a5,a5,0x10
   11a22:	177d                	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde6e7>
   11a24:	8f71                	and	a4,a4,a2
   11a26:	00f91823          	sh	a5,16(s2)
   11a2a:	17c2                	slli	a5,a5,0x30
   11a2c:	0ae92623          	sw	a4,172(s2)
   11a30:	93c1                	srli	a5,a5,0x30
   11a32:	0087f713          	andi	a4,a5,8
   11a36:	26070a63          	beqz	a4,11caa <_vfprintf_r+0x30c>
   11a3a:	01893703          	ld	a4,24(s2)
   11a3e:	26070663          	beqz	a4,11caa <_vfprintf_r+0x30c>
   11a42:	8be9                	andi	a5,a5,26
   11a44:	4729                	li	a4,10
   11a46:	26e78f63          	beq	a5,a4,11cc4 <_vfprintf_r+0x326>
   11a4a:	67f5                	lui	a5,0x1d
   11a4c:	9787b783          	ld	a5,-1672(a5) # 1c978 <__clzdi2+0x30e>
   11a50:	19010b13          	addi	s6,sp,400
   11a54:	ea5a                	sd	s6,272(sp)
   11a56:	e93e                	sd	a5,144(sp)
   11a58:	67f5                	lui	a5,0x1d
   11a5a:	9887b783          	ld	a5,-1656(a5) # 1c988 <__clzdi2+0x31e>
   11a5e:	f202                	sd	zero,288(sp)
   11a60:	10012c23          	sw	zero,280(sp)
   11a64:	ed3e                	sd	a5,152(sp)
   11a66:	67f5                	lui	a5,0x1d
   11a68:	9987b783          	ld	a5,-1640(a5) # 1c998 <__clzdi2+0x32e>
   11a6c:	f002                	sd	zero,32(sp)
   11a6e:	f402                	sd	zero,40(sp)
   11a70:	f13e                	sd	a5,160(sp)
   11a72:	000cc783          	lbu	a5,0(s9)
   11a76:	fc82                	sd	zero,120(sp)
   11a78:	f082                	sd	zero,96(sp)
   11a7a:	e102                	sd	zero,128(sp)
   11a7c:	e502                	sd	zero,136(sp)
   11a7e:	e402                	sd	zero,8(sp)
   11a80:	835a                	mv	t1,s6
   11a82:	1c078563          	beqz	a5,11c4c <_vfprintf_r+0x2ae>
   11a86:	8466                	mv	s0,s9
   11a88:	02500713          	li	a4,37
   11a8c:	30e78263          	beq	a5,a4,11d90 <_vfprintf_r+0x3f2>
   11a90:	00144783          	lbu	a5,1(s0)
   11a94:	0405                	addi	s0,s0,1
   11a96:	fbfd                	bnez	a5,11a8c <_vfprintf_r+0xee>
   11a98:	419404bb          	subw	s1,s0,s9
   11a9c:	1a048863          	beqz	s1,11c4c <_vfprintf_r+0x2ae>
   11aa0:	11812783          	lw	a5,280(sp)
   11aa4:	7712                	ld	a4,288(sp)
   11aa6:	01933023          	sd	s9,0(t1)
   11aaa:	2785                	addiw	a5,a5,1
   11aac:	9726                	add	a4,a4,s1
   11aae:	00933423          	sd	s1,8(t1)
   11ab2:	f23a                	sd	a4,288(sp)
   11ab4:	10f12c23          	sw	a5,280(sp)
   11ab8:	0007871b          	sext.w	a4,a5
   11abc:	479d                	li	a5,7
   11abe:	0341                	addi	t1,t1,16
   11ac0:	2ce7cf63          	blt	a5,a4,11d9e <_vfprintf_r+0x400>
   11ac4:	6722                	ld	a4,8(sp)
   11ac6:	00044783          	lbu	a5,0(s0)
   11aca:	9f25                	addw	a4,a4,s1
   11acc:	e43a                	sd	a4,8(sp)
   11ace:	16078f63          	beqz	a5,11c4c <_vfprintf_r+0x2ae>
   11ad2:	67f1                	lui	a5,0x1c
   11ad4:	00144e03          	lbu	t3,1(s0)
   11ad8:	0c010fa3          	sb	zero,223(sp)
   11adc:	0405                	addi	s0,s0,1
   11ade:	5c7d                	li	s8,-1
   11ae0:	4a81                	li	s5,0
   11ae2:	4481                	li	s1,0
   11ae4:	05a00993          	li	s3,90
   11ae8:	76c78b93          	addi	s7,a5,1900 # 1c76c <__clzdi2+0x102>
   11aec:	4da5                	li	s11,9
   11aee:	0405                	addi	s0,s0,1
   11af0:	000e0d1b          	sext.w	s10,t3
   11af4:	02a00693          	li	a3,42
   11af8:	fe0d079b          	addiw	a5,s10,-32
   11afc:	0007871b          	sext.w	a4,a5
   11b00:	04e9e363          	bltu	s3,a4,11b46 <_vfprintf_r+0x1a8>
   11b04:	02079713          	slli	a4,a5,0x20
   11b08:	01e75793          	srli	a5,a4,0x1e
   11b0c:	97de                	add	a5,a5,s7
   11b0e:	439c                	lw	a5,0(a5)
   11b10:	8782                	jr	a5
   11b12:	4a81                	li	s5,0
   11b14:	00044703          	lbu	a4,0(s0)
   11b18:	002a979b          	slliw	a5,s5,0x2
   11b1c:	015787bb          	addw	a5,a5,s5
   11b20:	fd0d0e1b          	addiw	t3,s10,-48
   11b24:	0017979b          	slliw	a5,a5,0x1
   11b28:	fd07061b          	addiw	a2,a4,-48
   11b2c:	0405                	addi	s0,s0,1
   11b2e:	00fe0abb          	addw	s5,t3,a5
   11b32:	00070d1b          	sext.w	s10,a4
   11b36:	fccdffe3          	bgeu	s11,a2,11b14 <_vfprintf_r+0x176>
   11b3a:	fe0d079b          	addiw	a5,s10,-32
   11b3e:	0007871b          	sext.w	a4,a5
   11b42:	fce9f1e3          	bgeu	s3,a4,11b04 <_vfprintf_r+0x166>
   11b46:	100d0363          	beqz	s10,11c4c <_vfprintf_r+0x2ae>
   11b4a:	13a10423          	sb	s10,296(sp)
   11b4e:	0c010fa3          	sb	zero,223(sp)
   11b52:	4985                	li	s3,1
   11b54:	4b85                	li	s7,1
   11b56:	12810c93          	addi	s9,sp,296
   11b5a:	ec02                	sd	zero,24(sp)
   11b5c:	4c01                	li	s8,0
   11b5e:	e882                	sd	zero,80(sp)
   11b60:	ec82                	sd	zero,88(sp)
   11b62:	e482                	sd	zero,72(sp)
   11b64:	0024f293          	andi	t0,s1,2
   11b68:	00028363          	beqz	t0,11b6e <_vfprintf_r+0x1d0>
   11b6c:	2989                	addiw	s3,s3,2
   11b6e:	0844fd93          	andi	s11,s1,132
   11b72:	7792                	ld	a5,288(sp)
   11b74:	000d9663          	bnez	s11,11b80 <_vfprintf_r+0x1e2>
   11b78:	413a86bb          	subw	a3,s5,s3
   11b7c:	08d049e3          	bgtz	a3,1240e <_vfprintf_r+0xa70>
   11b80:	0df14703          	lbu	a4,223(sp)
   11b84:	c70d                	beqz	a4,11bae <_vfprintf_r+0x210>
   11b86:	11812703          	lw	a4,280(sp)
   11b8a:	0df10693          	addi	a3,sp,223
   11b8e:	00d33023          	sd	a3,0(t1)
   11b92:	2705                	addiw	a4,a4,1
   11b94:	4685                	li	a3,1
   11b96:	0785                	addi	a5,a5,1
   11b98:	00d33423          	sd	a3,8(t1)
   11b9c:	10e12c23          	sw	a4,280(sp)
   11ba0:	0007069b          	sext.w	a3,a4
   11ba4:	f23e                	sd	a5,288(sp)
   11ba6:	471d                	li	a4,7
   11ba8:	0341                	addi	t1,t1,16
   11baa:	28d74463          	blt	a4,a3,11e32 <_vfprintf_r+0x494>
   11bae:	02028563          	beqz	t0,11bd8 <_vfprintf_r+0x23a>
   11bb2:	11812703          	lw	a4,280(sp)
   11bb6:	1194                	addi	a3,sp,224
   11bb8:	00d33023          	sd	a3,0(t1)
   11bbc:	2705                	addiw	a4,a4,1
   11bbe:	4689                	li	a3,2
   11bc0:	0789                	addi	a5,a5,2
   11bc2:	00d33423          	sd	a3,8(t1)
   11bc6:	10e12c23          	sw	a4,280(sp)
   11bca:	0007069b          	sext.w	a3,a4
   11bce:	f23e                	sd	a5,288(sp)
   11bd0:	471d                	li	a4,7
   11bd2:	0341                	addi	t1,t1,16
   11bd4:	0cd747e3          	blt	a4,a3,124a2 <_vfprintf_r+0xb04>
   11bd8:	08000713          	li	a4,128
   11bdc:	6eed8263          	beq	s11,a4,122c0 <_vfprintf_r+0x922>
   11be0:	417c0c3b          	subw	s8,s8,s7
   11be4:	77804563          	bgtz	s8,1234e <_vfprintf_r+0x9b0>
   11be8:	1004f713          	andi	a4,s1,256
   11bec:	60071263          	bnez	a4,121f0 <_vfprintf_r+0x852>
   11bf0:	11812703          	lw	a4,280(sp)
   11bf4:	97de                	add	a5,a5,s7
   11bf6:	01933023          	sd	s9,0(t1)
   11bfa:	0017069b          	addiw	a3,a4,1
   11bfe:	8736                	mv	a4,a3
   11c00:	01733423          	sd	s7,8(t1)
   11c04:	10e12c23          	sw	a4,280(sp)
   11c08:	f23e                	sd	a5,288(sp)
   11c0a:	471d                	li	a4,7
   11c0c:	2ed74363          	blt	a4,a3,11ef2 <_vfprintf_r+0x554>
   11c10:	0341                	addi	t1,t1,16
   11c12:	8891                	andi	s1,s1,4
   11c14:	c489                	beqz	s1,11c1e <_vfprintf_r+0x280>
   11c16:	413a84bb          	subw	s1,s5,s3
   11c1a:	08904ee3          	bgtz	s1,124b6 <_vfprintf_r+0xb18>
   11c1e:	8756                	mv	a4,s5
   11c20:	013ad363          	bge	s5,s3,11c26 <_vfprintf_r+0x288>
   11c24:	874e                	mv	a4,s3
   11c26:	66a2                	ld	a3,8(sp)
   11c28:	9f35                	addw	a4,a4,a3
   11c2a:	e43a                	sd	a4,8(sp)
   11c2c:	7a079263          	bnez	a5,123d0 <_vfprintf_r+0xa32>
   11c30:	67e2                	ld	a5,24(sp)
   11c32:	10012c23          	sw	zero,280(sp)
   11c36:	c789                	beqz	a5,11c40 <_vfprintf_r+0x2a2>
   11c38:	65e2                	ld	a1,24(sp)
   11c3a:	8552                	mv	a0,s4
   11c3c:	cd5fe0ef          	jal	ra,10910 <_free_r>
   11c40:	835a                	mv	t1,s6
   11c42:	8ca2                	mv	s9,s0
   11c44:	000cc783          	lbu	a5,0(s9)
   11c48:	e2079fe3          	bnez	a5,11a86 <_vfprintf_r+0xe8>
   11c4c:	7792                	ld	a5,288(sp)
   11c4e:	c399                	beqz	a5,11c54 <_vfprintf_r+0x2b6>
   11c50:	31a0106f          	j	12f6a <_vfprintf_r+0x15cc>
   11c54:	01095783          	lhu	a5,16(s2)
   11c58:	0407f793          	andi	a5,a5,64
   11c5c:	c399                	beqz	a5,11c62 <_vfprintf_r+0x2c4>
   11c5e:	5b00106f          	j	1320e <_vfprintf_r+0x1870>
   11c62:	27813083          	ld	ra,632(sp)
   11c66:	27013403          	ld	s0,624(sp)
   11c6a:	6522                	ld	a0,8(sp)
   11c6c:	26813483          	ld	s1,616(sp)
   11c70:	26013903          	ld	s2,608(sp)
   11c74:	25813983          	ld	s3,600(sp)
   11c78:	25013a03          	ld	s4,592(sp)
   11c7c:	24813a83          	ld	s5,584(sp)
   11c80:	24013b03          	ld	s6,576(sp)
   11c84:	23813b83          	ld	s7,568(sp)
   11c88:	23013c03          	ld	s8,560(sp)
   11c8c:	22813c83          	ld	s9,552(sp)
   11c90:	22013d03          	ld	s10,544(sp)
   11c94:	21813d83          	ld	s11,536(sp)
   11c98:	28010113          	addi	sp,sp,640
   11c9c:	8082                	ret
   11c9e:	0104e493          	ori	s1,s1,16
   11ca2:	00044e03          	lbu	t3,0(s0)
   11ca6:	2481                	sext.w	s1,s1
   11ca8:	b599                	j	11aee <_vfprintf_r+0x150>
   11caa:	85ca                	mv	a1,s2
   11cac:	8552                	mv	a0,s4
   11cae:	069010ef          	jal	ra,13516 <__swsetup_r>
   11cb2:	c119                	beqz	a0,11cb8 <_vfprintf_r+0x31a>
   11cb4:	55a0106f          	j	1320e <_vfprintf_r+0x1870>
   11cb8:	01095783          	lhu	a5,16(s2)
   11cbc:	4729                	li	a4,10
   11cbe:	8be9                	andi	a5,a5,26
   11cc0:	d8e795e3          	bne	a5,a4,11a4a <_vfprintf_r+0xac>
   11cc4:	01291783          	lh	a5,18(s2)
   11cc8:	d807c1e3          	bltz	a5,11a4a <_vfprintf_r+0xac>
   11ccc:	66c2                	ld	a3,16(sp)
   11cce:	8666                	mv	a2,s9
   11cd0:	85ca                	mv	a1,s2
   11cd2:	8552                	mv	a0,s4
   11cd4:	772010ef          	jal	ra,13446 <__sbprintf>
   11cd8:	e42a                	sd	a0,8(sp)
   11cda:	b761                	j	11c62 <_vfprintf_r+0x2c4>
   11cdc:	0104e493          	ori	s1,s1,16
   11ce0:	2481                	sext.w	s1,s1
   11ce2:	66c2                	ld	a3,16(sp)
   11ce4:	0204f793          	andi	a5,s1,32
   11ce8:	00868713          	addi	a4,a3,8 # 2008 <exit-0xe0e0>
   11cec:	22078c63          	beqz	a5,11f24 <_vfprintf_r+0x586>
   11cf0:	629c                	ld	a5,0(a3)
   11cf2:	89be                	mv	s3,a5
   11cf4:	2407ca63          	bltz	a5,11f48 <_vfprintf_r+0x5aa>
   11cf8:	57fd                	li	a5,-1
   11cfa:	26fc01e3          	beq	s8,a5,1275c <_vfprintf_r+0xdbe>
   11cfe:	f7f4fd93          	andi	s11,s1,-129
   11d02:	e83a                	sd	a4,16(sp)
   11d04:	2d81                	sext.w	s11,s11
   11d06:	6e099863          	bnez	s3,123f6 <_vfprintf_r+0xa58>
   11d0a:	6e0c1963          	bnez	s8,123fc <_vfprintf_r+0xa5e>
   11d0e:	84ee                	mv	s1,s11
   11d10:	4c01                	li	s8,0
   11d12:	4b81                	li	s7,0
   11d14:	18c10c93          	addi	s9,sp,396
   11d18:	0df14783          	lbu	a5,223(sp)
   11d1c:	000b899b          	sext.w	s3,s7
   11d20:	018bd463          	bge	s7,s8,11d28 <_vfprintf_r+0x38a>
   11d24:	000c099b          	sext.w	s3,s8
   11d28:	ec02                	sd	zero,24(sp)
   11d2a:	e882                	sd	zero,80(sp)
   11d2c:	ec82                	sd	zero,88(sp)
   11d2e:	e482                	sd	zero,72(sp)
   11d30:	e2078ae3          	beqz	a5,11b64 <_vfprintf_r+0x1c6>
   11d34:	2985                	addiw	s3,s3,1
   11d36:	b53d                	j	11b64 <_vfprintf_r+0x1c6>
   11d38:	0104e493          	ori	s1,s1,16
   11d3c:	2481                	sext.w	s1,s1
   11d3e:	66c2                	ld	a3,16(sp)
   11d40:	0204f793          	andi	a5,s1,32
   11d44:	00868713          	addi	a4,a3,8
   11d48:	1a078f63          	beqz	a5,11f06 <_vfprintf_r+0x568>
   11d4c:	0006b983          	ld	s3,0(a3)
   11d50:	bff4fd93          	andi	s11,s1,-1025
   11d54:	2d81                	sext.w	s11,s11
   11d56:	e83a                	sd	a4,16(sp)
   11d58:	4781                	li	a5,0
   11d5a:	4701                	li	a4,0
   11d5c:	0ce10fa3          	sb	a4,223(sp)
   11d60:	577d                	li	a4,-1
   11d62:	1eec0f63          	beq	s8,a4,11f60 <_vfprintf_r+0x5c2>
   11d66:	f7fdf493          	andi	s1,s11,-129
   11d6a:	2481                	sext.w	s1,s1
   11d6c:	68099163          	bnez	s3,123ee <_vfprintf_r+0xa50>
   11d70:	440c1363          	bnez	s8,121b6 <_vfprintf_r+0x818>
   11d74:	ffd1                	bnez	a5,11d10 <_vfprintf_r+0x372>
   11d76:	001dfb93          	andi	s7,s11,1
   11d7a:	18c10c93          	addi	s9,sp,396
   11d7e:	f80b8de3          	beqz	s7,11d18 <_vfprintf_r+0x37a>
   11d82:	03000793          	li	a5,48
   11d86:	18f105a3          	sb	a5,395(sp)
   11d8a:	18b10c93          	addi	s9,sp,395
   11d8e:	b769                	j	11d18 <_vfprintf_r+0x37a>
   11d90:	419404bb          	subw	s1,s0,s9
   11d94:	d00496e3          	bnez	s1,11aa0 <_vfprintf_r+0x102>
   11d98:	00044783          	lbu	a5,0(s0)
   11d9c:	bb0d                	j	11ace <_vfprintf_r+0x130>
   11d9e:	0a10                	addi	a2,sp,272
   11da0:	85ca                	mv	a1,s2
   11da2:	8552                	mv	a0,s4
   11da4:	6dd060ef          	jal	ra,18c80 <__sprint_r>
   11da8:	ea0516e3          	bnez	a0,11c54 <_vfprintf_r+0x2b6>
   11dac:	835a                	mv	t1,s6
   11dae:	bb19                	j	11ac4 <_vfprintf_r+0x126>
   11db0:	0084f793          	andi	a5,s1,8
   11db4:	180789e3          	beqz	a5,12746 <_vfprintf_r+0xda8>
   11db8:	67c2                	ld	a5,16(sp)
   11dba:	07bd                	addi	a5,a5,15
   11dbc:	ff07f713          	andi	a4,a5,-16
   11dc0:	631c                	ld	a5,0(a4)
   11dc2:	670c                	ld	a1,8(a4)
   11dc4:	0741                	addi	a4,a4,16
   11dc6:	e83a                	sd	a4,16(sp)
   11dc8:	0208                	addi	a0,sp,256
   11dca:	ec1a                	sd	t1,24(sp)
   11dcc:	e23e                	sd	a5,256(sp)
   11dce:	e62e                	sd	a1,264(sp)
   11dd0:	567030ef          	jal	ra,15b36 <_ldcheck>
   11dd4:	d5aa                	sw	a0,232(sp)
   11dd6:	4789                	li	a5,2
   11dd8:	6362                	ld	t1,24(sp)
   11dda:	50f509e3          	beq	a0,a5,12aec <_vfprintf_r+0x114e>
   11dde:	4785                	li	a5,1
   11de0:	68f500e3          	beq	a0,a5,12c60 <_vfprintf_r+0x12c2>
   11de4:	06100793          	li	a5,97
   11de8:	2efd09e3          	beq	s10,a5,128da <_vfprintf_r+0xf3c>
   11dec:	04100793          	li	a5,65
   11df0:	05800713          	li	a4,88
   11df4:	2efd05e3          	beq	s10,a5,128de <_vfprintf_r+0xf40>
   11df8:	fdfd7713          	andi	a4,s10,-33
   11dfc:	57fd                	li	a5,-1
   11dfe:	ecba                	sd	a4,88(sp)
   11e00:	00fc1463          	bne	s8,a5,11e08 <_vfprintf_r+0x46a>
   11e04:	5000106f          	j	13304 <_vfprintf_r+0x1966>
   11e08:	04700793          	li	a5,71
   11e0c:	00f71463          	bne	a4,a5,11e14 <_vfprintf_r+0x476>
   11e10:	4e60106f          	j	132f6 <_vfprintf_r+0x1958>
   11e14:	69b2                	ld	s3,264(sp)
   11e16:	1004e793          	ori	a5,s1,256
   11e1a:	f526                	sd	s1,168(sp)
   11e1c:	6b92                	ld	s7,256(sp)
   11e1e:	2781                	sext.w	a5,a5
   11e20:	0009d463          	bgez	s3,11e28 <_vfprintf_r+0x48a>
   11e24:	15e0106f          	j	12f82 <_vfprintf_r+0x15e4>
   11e28:	e582                	sd	zero,200(sp)
   11e2a:	84be                	mv	s1,a5
   11e2c:	ec02                	sd	zero,24(sp)
   11e2e:	2f10006f          	j	1291e <_vfprintf_r+0xf80>
   11e32:	0a10                	addi	a2,sp,272
   11e34:	85ca                	mv	a1,s2
   11e36:	8552                	mv	a0,s4
   11e38:	f816                	sd	t0,48(sp)
   11e3a:	647060ef          	jal	ra,18c80 <__sprint_r>
   11e3e:	5a051063          	bnez	a0,123de <_vfprintf_r+0xa40>
   11e42:	7792                	ld	a5,288(sp)
   11e44:	72c2                	ld	t0,48(sp)
   11e46:	835a                	mv	t1,s6
   11e48:	b39d                	j	11bae <_vfprintf_r+0x210>
   11e4a:	11812683          	lw	a3,280(sp)
   11e4e:	00178d13          	addi	s10,a5,1
   11e52:	7782                	ld	a5,32(sp)
   11e54:	00168b9b          	addiw	s7,a3,1
   11e58:	4605                	li	a2,1
   11e5a:	01933023          	sd	s9,0(t1)
   11e5e:	86de                	mv	a3,s7
   11e60:	01030c13          	addi	s8,t1,16
   11e64:	7ef65e63          	bge	a2,a5,12660 <_vfprintf_r+0xcc2>
   11e68:	4605                	li	a2,1
   11e6a:	10d12c23          	sw	a3,280(sp)
   11e6e:	00c33423          	sd	a2,8(t1)
   11e72:	f26a                	sd	s10,288(sp)
   11e74:	469d                	li	a3,7
   11e76:	3b76c2e3          	blt	a3,s7,12a1a <_vfprintf_r+0x107c>
   11e7a:	77a6                	ld	a5,104(sp)
   11e7c:	7746                	ld	a4,112(sp)
   11e7e:	2b85                	addiw	s7,s7,1
   11e80:	9d3e                	add	s10,s10,a5
   11e82:	00ec3023          	sd	a4,0(s8)
   11e86:	00fc3423          	sd	a5,8(s8)
   11e8a:	f26a                	sd	s10,288(sp)
   11e8c:	11712c23          	sw	s7,280(sp)
   11e90:	469d                	li	a3,7
   11e92:	0c41                	addi	s8,s8,16
   11e94:	3b76c0e3          	blt	a3,s7,12a34 <_vfprintf_r+0x1096>
   11e98:	6512                	ld	a0,256(sp)
   11e9a:	65b2                	ld	a1,264(sp)
   11e9c:	4681                	li	a3,0
   11e9e:	4601                	li	a2,0
   11ea0:	360090ef          	jal	ra,1b200 <__eqtf2>
   11ea4:	7782                	ld	a5,32(sp)
   11ea6:	fff7869b          	addiw	a3,a5,-1
   11eaa:	7e050463          	beqz	a0,12692 <_vfprintf_r+0xcf4>
   11eae:	2b85                	addiw	s7,s7,1
   11eb0:	001c8813          	addi	a6,s9,1
   11eb4:	865e                	mv	a2,s7
   11eb6:	9d36                	add	s10,s10,a3
   11eb8:	010c3023          	sd	a6,0(s8)
   11ebc:	00dc3423          	sd	a3,8(s8)
   11ec0:	f26a                	sd	s10,288(sp)
   11ec2:	10c12c23          	sw	a2,280(sp)
   11ec6:	469d                	li	a3,7
   11ec8:	0c41                	addi	s8,s8,16
   11eca:	7b76c763          	blt	a3,s7,12678 <_vfprintf_r+0xcda>
   11ece:	7766                	ld	a4,120(sp)
   11ed0:	1994                	addi	a3,sp,240
   11ed2:	001b861b          	addiw	a2,s7,1
   11ed6:	01a707b3          	add	a5,a4,s10
   11eda:	00dc3023          	sd	a3,0(s8)
   11ede:	00ec3423          	sd	a4,8(s8)
   11ee2:	f23e                	sd	a5,288(sp)
   11ee4:	10c12c23          	sw	a2,280(sp)
   11ee8:	469d                	li	a3,7
   11eea:	010c0313          	addi	t1,s8,16
   11eee:	d2c6d2e3          	bge	a3,a2,11c12 <_vfprintf_r+0x274>
   11ef2:	0a10                	addi	a2,sp,272
   11ef4:	85ca                	mv	a1,s2
   11ef6:	8552                	mv	a0,s4
   11ef8:	589060ef          	jal	ra,18c80 <__sprint_r>
   11efc:	4e051163          	bnez	a0,123de <_vfprintf_r+0xa40>
   11f00:	7792                	ld	a5,288(sp)
   11f02:	835a                	mv	t1,s6
   11f04:	b339                	j	11c12 <_vfprintf_r+0x274>
   11f06:	0104f793          	andi	a5,s1,16
   11f0a:	020799e3          	bnez	a5,1273c <_vfprintf_r+0xd9e>
   11f0e:	66c2                	ld	a3,16(sp)
   11f10:	0404f793          	andi	a5,s1,64
   11f14:	0006a983          	lw	s3,0(a3)
   11f18:	4c0782e3          	beqz	a5,12bdc <_vfprintf_r+0x123e>
   11f1c:	19c2                	slli	s3,s3,0x30
   11f1e:	0309d993          	srli	s3,s3,0x30
   11f22:	b53d                	j	11d50 <_vfprintf_r+0x3b2>
   11f24:	0104f793          	andi	a5,s1,16
   11f28:	7e079e63          	bnez	a5,12724 <_vfprintf_r+0xd86>
   11f2c:	66c2                	ld	a3,16(sp)
   11f2e:	0404f793          	andi	a5,s1,64
   11f32:	0006a983          	lw	s3,0(a3)
   11f36:	4a078be3          	beqz	a5,12bec <_vfprintf_r+0x124e>
   11f3a:	0109999b          	slliw	s3,s3,0x10
   11f3e:	4109d99b          	sraiw	s3,s3,0x10
   11f42:	87ce                	mv	a5,s3
   11f44:	da07dae3          	bgez	a5,11cf8 <_vfprintf_r+0x35a>
   11f48:	e83a                	sd	a4,16(sp)
   11f4a:	02d00713          	li	a4,45
   11f4e:	0ce10fa3          	sb	a4,223(sp)
   11f52:	577d                	li	a4,-1
   11f54:	413009b3          	neg	s3,s3
   11f58:	8da6                	mv	s11,s1
   11f5a:	4785                	li	a5,1
   11f5c:	e0ec15e3          	bne	s8,a4,11d66 <_vfprintf_r+0x3c8>
   11f60:	4705                	li	a4,1
   11f62:	48e78a63          	beq	a5,a4,123f6 <_vfprintf_r+0xa58>
   11f66:	4709                	li	a4,2
   11f68:	26e78063          	beq	a5,a4,121c8 <_vfprintf_r+0x82a>
   11f6c:	18c10b93          	addi	s7,sp,396
   11f70:	8cde                	mv	s9,s7
   11f72:	0079f793          	andi	a5,s3,7
   11f76:	03078793          	addi	a5,a5,48
   11f7a:	fefc8fa3          	sb	a5,-1(s9)
   11f7e:	0039d993          	srli	s3,s3,0x3
   11f82:	8766                	mv	a4,s9
   11f84:	1cfd                	addi	s9,s9,-1
   11f86:	fe0996e3          	bnez	s3,11f72 <_vfprintf_r+0x5d4>
   11f8a:	001df693          	andi	a3,s11,1
   11f8e:	24068d63          	beqz	a3,121e8 <_vfprintf_r+0x84a>
   11f92:	03000693          	li	a3,48
   11f96:	24d78963          	beq	a5,a3,121e8 <_vfprintf_r+0x84a>
   11f9a:	1779                	addi	a4,a4,-2
   11f9c:	fedc8fa3          	sb	a3,-1(s9)
   11fa0:	40eb8bbb          	subw	s7,s7,a4
   11fa4:	84ee                	mv	s1,s11
   11fa6:	8cba                	mv	s9,a4
   11fa8:	bb85                	j	11d18 <_vfprintf_r+0x37a>
   11faa:	8552                	mv	a0,s4
   11fac:	869fe0ef          	jal	ra,10814 <__sinit>
   11fb0:	b4b9                	j	119fe <_vfprintf_r+0x60>
   11fb2:	67c2                	ld	a5,16(sp)
   11fb4:	0c010fa3          	sb	zero,223(sp)
   11fb8:	0007bc83          	ld	s9,0(a5)
   11fbc:	00878d93          	addi	s11,a5,8
   11fc0:	0a0c8be3          	beqz	s9,12876 <_vfprintf_r+0xed8>
   11fc4:	57fd                	li	a5,-1
   11fc6:	36fc0ae3          	beq	s8,a5,12b3a <_vfprintf_r+0x119c>
   11fca:	8662                	mv	a2,s8
   11fcc:	4581                	li	a1,0
   11fce:	8566                	mv	a0,s9
   11fd0:	e81a                	sd	t1,16(sp)
   11fd2:	b1eff0ef          	jal	ra,112f0 <memchr>
   11fd6:	ec2a                	sd	a0,24(sp)
   11fd8:	6342                	ld	t1,16(sp)
   11fda:	e119                	bnez	a0,11fe0 <_vfprintf_r+0x642>
   11fdc:	1a40106f          	j	13180 <_vfprintf_r+0x17e2>
   11fe0:	67e2                	ld	a5,24(sp)
   11fe2:	e86e                	sd	s11,16(sp)
   11fe4:	ec02                	sd	zero,24(sp)
   11fe6:	41978bbb          	subw	s7,a5,s9
   11fea:	0df14783          	lbu	a5,223(sp)
   11fee:	fffbc993          	not	s3,s7
   11ff2:	43f9d993          	srai	s3,s3,0x3f
   11ff6:	e882                	sd	zero,80(sp)
   11ff8:	ec82                	sd	zero,88(sp)
   11ffa:	e482                	sd	zero,72(sp)
   11ffc:	0179f9b3          	and	s3,s3,s7
   12000:	4c01                	li	s8,0
   12002:	d20799e3          	bnez	a5,11d34 <_vfprintf_r+0x396>
   12006:	beb9                	j	11b64 <_vfprintf_r+0x1c6>
   12008:	6742                	ld	a4,16(sp)
   1200a:	0c010fa3          	sb	zero,223(sp)
   1200e:	4985                	li	s3,1
   12010:	431c                	lw	a5,0(a4)
   12012:	0721                	addi	a4,a4,8
   12014:	e83a                	sd	a4,16(sp)
   12016:	12f10423          	sb	a5,296(sp)
   1201a:	4b85                	li	s7,1
   1201c:	12810c93          	addi	s9,sp,296
   12020:	be2d                	j	11b5a <_vfprintf_r+0x1bc>
   12022:	67c2                	ld	a5,16(sp)
   12024:	0007aa83          	lw	s5,0(a5)
   12028:	07a1                	addi	a5,a5,8
   1202a:	6e0ad363          	bgez	s5,12710 <_vfprintf_r+0xd72>
   1202e:	41500abb          	negw	s5,s5
   12032:	e83e                	sd	a5,16(sp)
   12034:	0044e493          	ori	s1,s1,4
   12038:	00044e03          	lbu	t3,0(s0)
   1203c:	2481                	sext.w	s1,s1
   1203e:	bc45                	j	11aee <_vfprintf_r+0x150>
   12040:	02b00793          	li	a5,43
   12044:	00044e03          	lbu	t3,0(s0)
   12048:	0cf10fa3          	sb	a5,223(sp)
   1204c:	b44d                	j	11aee <_vfprintf_r+0x150>
   1204e:	0804e493          	ori	s1,s1,128
   12052:	00044e03          	lbu	t3,0(s0)
   12056:	2481                	sext.w	s1,s1
   12058:	bc59                	j	11aee <_vfprintf_r+0x150>
   1205a:	00044d03          	lbu	s10,0(s0)
   1205e:	00140793          	addi	a5,s0,1
   12062:	00dd1463          	bne	s10,a3,1206a <_vfprintf_r+0x6cc>
   12066:	39a0106f          	j	13400 <_vfprintf_r+0x1a62>
   1206a:	fd0d071b          	addiw	a4,s10,-48
   1206e:	843e                	mv	s0,a5
   12070:	4c01                	li	s8,0
   12072:	a8ede3e3          	bltu	s11,a4,11af8 <_vfprintf_r+0x15a>
   12076:	00044d03          	lbu	s10,0(s0)
   1207a:	002c179b          	slliw	a5,s8,0x2
   1207e:	018787bb          	addw	a5,a5,s8
   12082:	0017979b          	slliw	a5,a5,0x1
   12086:	00e78c3b          	addw	s8,a5,a4
   1208a:	fd0d071b          	addiw	a4,s10,-48
   1208e:	0405                	addi	s0,s0,1
   12090:	feedf3e3          	bgeu	s11,a4,12076 <_vfprintf_r+0x6d8>
   12094:	b495                	j	11af8 <_vfprintf_r+0x15a>
   12096:	8552                	mv	a0,s4
   12098:	ec1a                	sd	t1,24(sp)
   1209a:	2e5030ef          	jal	ra,15b7e <_localeconv_r>
   1209e:	651c                	ld	a5,8(a0)
   120a0:	853e                	mv	a0,a5
   120a2:	e53e                	sd	a5,136(sp)
   120a4:	86bff0ef          	jal	ra,1190e <strlen>
   120a8:	87aa                	mv	a5,a0
   120aa:	8552                	mv	a0,s4
   120ac:	8d3e                	mv	s10,a5
   120ae:	e13e                	sd	a5,128(sp)
   120b0:	2cf030ef          	jal	ra,15b7e <_localeconv_r>
   120b4:	691c                	ld	a5,16(a0)
   120b6:	6362                	ld	t1,24(sp)
   120b8:	00044e03          	lbu	t3,0(s0)
   120bc:	f0be                	sd	a5,96(sp)
   120be:	a20d08e3          	beqz	s10,11aee <_vfprintf_r+0x150>
   120c2:	a20786e3          	beqz	a5,11aee <_vfprintf_r+0x150>
   120c6:	0007c783          	lbu	a5,0(a5)
   120ca:	a20782e3          	beqz	a5,11aee <_vfprintf_r+0x150>
   120ce:	4004e493          	ori	s1,s1,1024
   120d2:	2481                	sext.w	s1,s1
   120d4:	bc29                	j	11aee <_vfprintf_r+0x150>
   120d6:	0014e493          	ori	s1,s1,1
   120da:	00044e03          	lbu	t3,0(s0)
   120de:	2481                	sext.w	s1,s1
   120e0:	b439                	j	11aee <_vfprintf_r+0x150>
   120e2:	0df14783          	lbu	a5,223(sp)
   120e6:	00044e03          	lbu	t3,0(s0)
   120ea:	a00792e3          	bnez	a5,11aee <_vfprintf_r+0x150>
   120ee:	02000793          	li	a5,32
   120f2:	0cf10fa3          	sb	a5,223(sp)
   120f6:	bae5                	j	11aee <_vfprintf_r+0x150>
   120f8:	0084e493          	ori	s1,s1,8
   120fc:	00044e03          	lbu	t3,0(s0)
   12100:	2481                	sext.w	s1,s1
   12102:	b2f5                	j	11aee <_vfprintf_r+0x150>
   12104:	0104ed93          	ori	s11,s1,16
   12108:	2d81                	sext.w	s11,s11
   1210a:	66c2                	ld	a3,16(sp)
   1210c:	020df793          	andi	a5,s11,32
   12110:	00868713          	addi	a4,a3,8
   12114:	5c078863          	beqz	a5,126e4 <_vfprintf_r+0xd46>
   12118:	0006b983          	ld	s3,0(a3)
   1211c:	4785                	li	a5,1
   1211e:	e83a                	sd	a4,16(sp)
   12120:	b92d                	j	11d5a <_vfprintf_r+0x3bc>
   12122:	0204e493          	ori	s1,s1,32
   12126:	00044e03          	lbu	t3,0(s0)
   1212a:	2481                	sext.w	s1,s1
   1212c:	b2c9                	j	11aee <_vfprintf_r+0x150>
   1212e:	6742                	ld	a4,16(sp)
   12130:	77e1                	lui	a5,0xffff8
   12132:	8307c793          	xori	a5,a5,-2000
   12136:	0ef11023          	sh	a5,224(sp)
   1213a:	00870793          	addi	a5,a4,8
   1213e:	e83e                	sd	a5,16(sp)
   12140:	67f1                	lui	a5,0x1c
   12142:	73078793          	addi	a5,a5,1840 # 1c730 <__clzdi2+0xc6>
   12146:	0024ed93          	ori	s11,s1,2
   1214a:	f43e                	sd	a5,40(sp)
   1214c:	00073983          	ld	s3,0(a4)
   12150:	2d81                	sext.w	s11,s11
   12152:	4789                	li	a5,2
   12154:	07800d13          	li	s10,120
   12158:	b109                	j	11d5a <_vfprintf_r+0x3bc>
   1215a:	66c2                	ld	a3,16(sp)
   1215c:	0204f793          	andi	a5,s1,32
   12160:	6298                	ld	a4,0(a3)
   12162:	06a1                	addi	a3,a3,8
   12164:	e836                	sd	a3,16(sp)
   12166:	5a079a63          	bnez	a5,1271a <_vfprintf_r+0xd7c>
   1216a:	0104f793          	andi	a5,s1,16
   1216e:	5a079663          	bnez	a5,1271a <_vfprintf_r+0xd7c>
   12172:	0404f793          	andi	a5,s1,64
   12176:	5c0791e3          	bnez	a5,12f38 <_vfprintf_r+0x159a>
   1217a:	2004f493          	andi	s1,s1,512
   1217e:	67a2                	ld	a5,8(sp)
   12180:	e099                	bnez	s1,12186 <_vfprintf_r+0x7e8>
   12182:	1880106f          	j	1330a <_vfprintf_r+0x196c>
   12186:	00f70023          	sb	a5,0(a4)
   1218a:	8ca2                	mv	s9,s0
   1218c:	bc65                	j	11c44 <_vfprintf_r+0x2a6>
   1218e:	00044e03          	lbu	t3,0(s0)
   12192:	06c00793          	li	a5,108
   12196:	6afe0e63          	beq	t3,a5,12852 <_vfprintf_r+0xeb4>
   1219a:	0104e493          	ori	s1,s1,16
   1219e:	2481                	sext.w	s1,s1
   121a0:	b2b9                	j	11aee <_vfprintf_r+0x150>
   121a2:	00044e03          	lbu	t3,0(s0)
   121a6:	06800793          	li	a5,104
   121aa:	68fe0763          	beq	t3,a5,12838 <_vfprintf_r+0xe9a>
   121ae:	0404e493          	ori	s1,s1,64
   121b2:	2481                	sext.w	s1,s1
   121b4:	ba2d                	j	11aee <_vfprintf_r+0x150>
   121b6:	4705                	li	a4,1
   121b8:	00e79463          	bne	a5,a4,121c0 <_vfprintf_r+0x822>
   121bc:	12a0106f          	j	132e6 <_vfprintf_r+0x1948>
   121c0:	4709                	li	a4,2
   121c2:	8da6                	mv	s11,s1
   121c4:	dae794e3          	bne	a5,a4,11f6c <_vfprintf_r+0x5ce>
   121c8:	18c10b93          	addi	s7,sp,396
   121cc:	8cde                	mv	s9,s7
   121ce:	7722                	ld	a4,40(sp)
   121d0:	00f9f793          	andi	a5,s3,15
   121d4:	1cfd                	addi	s9,s9,-1
   121d6:	97ba                	add	a5,a5,a4
   121d8:	0007c783          	lbu	a5,0(a5)
   121dc:	0049d993          	srli	s3,s3,0x4
   121e0:	00fc8023          	sb	a5,0(s9)
   121e4:	fe0995e3          	bnez	s3,121ce <_vfprintf_r+0x830>
   121e8:	419b8bbb          	subw	s7,s7,s9
   121ec:	84ee                	mv	s1,s11
   121ee:	b62d                	j	11d18 <_vfprintf_r+0x37a>
   121f0:	06500713          	li	a4,101
   121f4:	c5a75be3          	bge	a4,s10,11e4a <_vfprintf_r+0x4ac>
   121f8:	6512                	ld	a0,256(sp)
   121fa:	65b2                	ld	a1,264(sp)
   121fc:	4601                	li	a2,0
   121fe:	4681                	li	a3,0
   12200:	fc3e                	sd	a5,56(sp)
   12202:	f81a                	sd	t1,48(sp)
   12204:	7fd080ef          	jal	ra,1b200 <__eqtf2>
   12208:	7342                	ld	t1,48(sp)
   1220a:	77e2                	ld	a5,56(sp)
   1220c:	32051663          	bnez	a0,12538 <_vfprintf_r+0xb9a>
   12210:	11812703          	lw	a4,280(sp)
   12214:	66f1                	lui	a3,0x1c
   12216:	76868693          	addi	a3,a3,1896 # 1c768 <__clzdi2+0xfe>
   1221a:	2705                	addiw	a4,a4,1
   1221c:	00d33023          	sd	a3,0(t1)
   12220:	0785                	addi	a5,a5,1
   12222:	4685                	li	a3,1
   12224:	00d33423          	sd	a3,8(t1)
   12228:	10e12c23          	sw	a4,280(sp)
   1222c:	0007069b          	sext.w	a3,a4
   12230:	f23e                	sd	a5,288(sp)
   12232:	471d                	li	a4,7
   12234:	0341                	addi	t1,t1,16
   12236:	08d748e3          	blt	a4,a3,12ac6 <_vfprintf_r+0x1128>
   1223a:	572e                	lw	a4,232(sp)
   1223c:	7682                	ld	a3,32(sp)
   1223e:	4cd75463          	bge	a4,a3,12706 <_vfprintf_r+0xd68>
   12242:	76a6                	ld	a3,104(sp)
   12244:	11812703          	lw	a4,280(sp)
   12248:	7646                	ld	a2,112(sp)
   1224a:	97b6                	add	a5,a5,a3
   1224c:	2705                	addiw	a4,a4,1
   1224e:	00d33423          	sd	a3,8(t1)
   12252:	00c33023          	sd	a2,0(t1)
   12256:	0007069b          	sext.w	a3,a4
   1225a:	10e12c23          	sw	a4,280(sp)
   1225e:	f23e                	sd	a5,288(sp)
   12260:	471d                	li	a4,7
   12262:	0341                	addi	t1,t1,16
   12264:	5ed74f63          	blt	a4,a3,12862 <_vfprintf_r+0xec4>
   12268:	7702                	ld	a4,32(sp)
   1226a:	fff70b9b          	addiw	s7,a4,-1
   1226e:	9b7052e3          	blez	s7,11c12 <_vfprintf_r+0x274>
   12272:	68f5                	lui	a7,0x1d
   12274:	46c1                	li	a3,16
   12276:	11812703          	lw	a4,280(sp)
   1227a:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   1227e:	4cc1                	li	s9,16
   12280:	4c1d                	li	s8,7
   12282:	0176c763          	blt	a3,s7,12290 <_vfprintf_r+0x8f2>
   12286:	0570006f          	j	12adc <_vfprintf_r+0x113e>
   1228a:	3bc1                	addiw	s7,s7,-16
   1228c:	057cd8e3          	bge	s9,s7,12adc <_vfprintf_r+0x113e>
   12290:	2705                	addiw	a4,a4,1
   12292:	07c1                	addi	a5,a5,16
   12294:	01b33023          	sd	s11,0(t1)
   12298:	01933423          	sd	s9,8(t1)
   1229c:	f23e                	sd	a5,288(sp)
   1229e:	10e12c23          	sw	a4,280(sp)
   122a2:	0341                	addi	t1,t1,16
   122a4:	feec53e3          	bge	s8,a4,1228a <_vfprintf_r+0x8ec>
   122a8:	0a10                	addi	a2,sp,272
   122aa:	85ca                	mv	a1,s2
   122ac:	8552                	mv	a0,s4
   122ae:	1d3060ef          	jal	ra,18c80 <__sprint_r>
   122b2:	12051663          	bnez	a0,123de <_vfprintf_r+0xa40>
   122b6:	7792                	ld	a5,288(sp)
   122b8:	11812703          	lw	a4,280(sp)
   122bc:	835a                	mv	t1,s6
   122be:	b7f1                	j	1228a <_vfprintf_r+0x8ec>
   122c0:	413a86bb          	subw	a3,s5,s3
   122c4:	90d05ee3          	blez	a3,11be0 <_vfprintf_r+0x242>
   122c8:	68f5                	lui	a7,0x1d
   122ca:	4641                	li	a2,16
   122cc:	11812703          	lw	a4,280(sp)
   122d0:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   122d4:	4f41                	li	t5,16
   122d6:	4f9d                	li	t6,7
   122d8:	00d64663          	blt	a2,a3,122e4 <_vfprintf_r+0x946>
   122dc:	a089                	j	1231e <_vfprintf_r+0x980>
   122de:	36c1                	addiw	a3,a3,-16
   122e0:	02df5f63          	bge	t5,a3,1231e <_vfprintf_r+0x980>
   122e4:	2705                	addiw	a4,a4,1
   122e6:	07c1                	addi	a5,a5,16
   122e8:	01b33023          	sd	s11,0(t1)
   122ec:	01e33423          	sd	t5,8(t1)
   122f0:	f23e                	sd	a5,288(sp)
   122f2:	10e12c23          	sw	a4,280(sp)
   122f6:	0341                	addi	t1,t1,16
   122f8:	feefd3e3          	bge	t6,a4,122de <_vfprintf_r+0x940>
   122fc:	0a10                	addi	a2,sp,272
   122fe:	85ca                	mv	a1,s2
   12300:	8552                	mv	a0,s4
   12302:	f836                	sd	a3,48(sp)
   12304:	17d060ef          	jal	ra,18c80 <__sprint_r>
   12308:	e979                	bnez	a0,123de <_vfprintf_r+0xa40>
   1230a:	76c2                	ld	a3,48(sp)
   1230c:	4f41                	li	t5,16
   1230e:	7792                	ld	a5,288(sp)
   12310:	36c1                	addiw	a3,a3,-16
   12312:	11812703          	lw	a4,280(sp)
   12316:	835a                	mv	t1,s6
   12318:	4f9d                	li	t6,7
   1231a:	fcdf45e3          	blt	t5,a3,122e4 <_vfprintf_r+0x946>
   1231e:	2705                	addiw	a4,a4,1
   12320:	97b6                	add	a5,a5,a3
   12322:	00d33423          	sd	a3,8(t1)
   12326:	01b33023          	sd	s11,0(t1)
   1232a:	0007069b          	sext.w	a3,a4
   1232e:	10e12c23          	sw	a4,280(sp)
   12332:	f23e                	sd	a5,288(sp)
   12334:	471d                	li	a4,7
   12336:	0341                	addi	t1,t1,16
   12338:	8ad754e3          	bge	a4,a3,11be0 <_vfprintf_r+0x242>
   1233c:	0a10                	addi	a2,sp,272
   1233e:	85ca                	mv	a1,s2
   12340:	8552                	mv	a0,s4
   12342:	13f060ef          	jal	ra,18c80 <__sprint_r>
   12346:	ed41                	bnez	a0,123de <_vfprintf_r+0xa40>
   12348:	7792                	ld	a5,288(sp)
   1234a:	835a                	mv	t1,s6
   1234c:	b851                	j	11be0 <_vfprintf_r+0x242>
   1234e:	68f5                	lui	a7,0x1d
   12350:	4641                	li	a2,16
   12352:	11812703          	lw	a4,280(sp)
   12356:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   1235a:	4ec1                	li	t4,16
   1235c:	4f1d                	li	t5,7
   1235e:	01864663          	blt	a2,s8,1236a <_vfprintf_r+0x9cc>
   12362:	a83d                	j	123a0 <_vfprintf_r+0xa02>
   12364:	3c41                	addiw	s8,s8,-16
   12366:	038edd63          	bge	t4,s8,123a0 <_vfprintf_r+0xa02>
   1236a:	2705                	addiw	a4,a4,1
   1236c:	07c1                	addi	a5,a5,16
   1236e:	01b33023          	sd	s11,0(t1)
   12372:	01d33423          	sd	t4,8(t1)
   12376:	f23e                	sd	a5,288(sp)
   12378:	10e12c23          	sw	a4,280(sp)
   1237c:	0341                	addi	t1,t1,16
   1237e:	feef53e3          	bge	t5,a4,12364 <_vfprintf_r+0x9c6>
   12382:	0a10                	addi	a2,sp,272
   12384:	85ca                	mv	a1,s2
   12386:	8552                	mv	a0,s4
   12388:	0f9060ef          	jal	ra,18c80 <__sprint_r>
   1238c:	e929                	bnez	a0,123de <_vfprintf_r+0xa40>
   1238e:	4ec1                	li	t4,16
   12390:	3c41                	addiw	s8,s8,-16
   12392:	7792                	ld	a5,288(sp)
   12394:	11812703          	lw	a4,280(sp)
   12398:	835a                	mv	t1,s6
   1239a:	4f1d                	li	t5,7
   1239c:	fd8ec7e3          	blt	t4,s8,1236a <_vfprintf_r+0x9cc>
   123a0:	0017069b          	addiw	a3,a4,1
   123a4:	97e2                	add	a5,a5,s8
   123a6:	01b33023          	sd	s11,0(t1)
   123aa:	01833423          	sd	s8,8(t1)
   123ae:	f23e                	sd	a5,288(sp)
   123b0:	10d12c23          	sw	a3,280(sp)
   123b4:	471d                	li	a4,7
   123b6:	0341                	addi	t1,t1,16
   123b8:	82d758e3          	bge	a4,a3,11be8 <_vfprintf_r+0x24a>
   123bc:	0a10                	addi	a2,sp,272
   123be:	85ca                	mv	a1,s2
   123c0:	8552                	mv	a0,s4
   123c2:	0bf060ef          	jal	ra,18c80 <__sprint_r>
   123c6:	ed01                	bnez	a0,123de <_vfprintf_r+0xa40>
   123c8:	7792                	ld	a5,288(sp)
   123ca:	835a                	mv	t1,s6
   123cc:	81dff06f          	j	11be8 <_vfprintf_r+0x24a>
   123d0:	0a10                	addi	a2,sp,272
   123d2:	85ca                	mv	a1,s2
   123d4:	8552                	mv	a0,s4
   123d6:	0ab060ef          	jal	ra,18c80 <__sprint_r>
   123da:	84050be3          	beqz	a0,11c30 <_vfprintf_r+0x292>
   123de:	67e2                	ld	a5,24(sp)
   123e0:	86078ae3          	beqz	a5,11c54 <_vfprintf_r+0x2b6>
   123e4:	85be                	mv	a1,a5
   123e6:	8552                	mv	a0,s4
   123e8:	d28fe0ef          	jal	ra,10910 <_free_r>
   123ec:	b0a5                	j	11c54 <_vfprintf_r+0x2b6>
   123ee:	4705                	li	a4,1
   123f0:	8da6                	mv	s11,s1
   123f2:	b6e79ae3          	bne	a5,a4,11f66 <_vfprintf_r+0x5c8>
   123f6:	47a5                	li	a5,9
   123f8:	3737e763          	bltu	a5,s3,12766 <_vfprintf_r+0xdc8>
   123fc:	0309899b          	addiw	s3,s3,48
   12400:	193105a3          	sb	s3,395(sp)
   12404:	84ee                	mv	s1,s11
   12406:	4b85                	li	s7,1
   12408:	18b10c93          	addi	s9,sp,395
   1240c:	b231                	j	11d18 <_vfprintf_r+0x37a>
   1240e:	68f5                	lui	a7,0x1d
   12410:	4641                	li	a2,16
   12412:	11812703          	lw	a4,280(sp)
   12416:	9a088893          	addi	a7,a7,-1632 # 1c9a0 <blanks.1>
   1241a:	4f41                	li	t5,16
   1241c:	439d                	li	t2,7
   1241e:	00d64663          	blt	a2,a3,1242a <_vfprintf_r+0xa8c>
   12422:	a0a9                	j	1246c <_vfprintf_r+0xace>
   12424:	36c1                	addiw	a3,a3,-16
   12426:	04df5363          	bge	t5,a3,1246c <_vfprintf_r+0xace>
   1242a:	2705                	addiw	a4,a4,1
   1242c:	07c1                	addi	a5,a5,16
   1242e:	01133023          	sd	a7,0(t1)
   12432:	01e33423          	sd	t5,8(t1)
   12436:	f23e                	sd	a5,288(sp)
   12438:	10e12c23          	sw	a4,280(sp)
   1243c:	0341                	addi	t1,t1,16
   1243e:	fee3d3e3          	bge	t2,a4,12424 <_vfprintf_r+0xa86>
   12442:	0a10                	addi	a2,sp,272
   12444:	85ca                	mv	a1,s2
   12446:	8552                	mv	a0,s4
   12448:	e0c6                	sd	a7,64(sp)
   1244a:	fc36                	sd	a3,56(sp)
   1244c:	f816                	sd	t0,48(sp)
   1244e:	033060ef          	jal	ra,18c80 <__sprint_r>
   12452:	f551                	bnez	a0,123de <_vfprintf_r+0xa40>
   12454:	76e2                	ld	a3,56(sp)
   12456:	4f41                	li	t5,16
   12458:	7792                	ld	a5,288(sp)
   1245a:	36c1                	addiw	a3,a3,-16
   1245c:	11812703          	lw	a4,280(sp)
   12460:	6886                	ld	a7,64(sp)
   12462:	72c2                	ld	t0,48(sp)
   12464:	835a                	mv	t1,s6
   12466:	439d                	li	t2,7
   12468:	fcdf41e3          	blt	t5,a3,1242a <_vfprintf_r+0xa8c>
   1246c:	2705                	addiw	a4,a4,1
   1246e:	97b6                	add	a5,a5,a3
   12470:	00d33423          	sd	a3,8(t1)
   12474:	01133023          	sd	a7,0(t1)
   12478:	0007069b          	sext.w	a3,a4
   1247c:	10e12c23          	sw	a4,280(sp)
   12480:	f23e                	sd	a5,288(sp)
   12482:	471d                	li	a4,7
   12484:	0341                	addi	t1,t1,16
   12486:	eed75d63          	bge	a4,a3,11b80 <_vfprintf_r+0x1e2>
   1248a:	0a10                	addi	a2,sp,272
   1248c:	85ca                	mv	a1,s2
   1248e:	8552                	mv	a0,s4
   12490:	f816                	sd	t0,48(sp)
   12492:	7ee060ef          	jal	ra,18c80 <__sprint_r>
   12496:	f521                	bnez	a0,123de <_vfprintf_r+0xa40>
   12498:	7792                	ld	a5,288(sp)
   1249a:	72c2                	ld	t0,48(sp)
   1249c:	835a                	mv	t1,s6
   1249e:	ee2ff06f          	j	11b80 <_vfprintf_r+0x1e2>
   124a2:	0a10                	addi	a2,sp,272
   124a4:	85ca                	mv	a1,s2
   124a6:	8552                	mv	a0,s4
   124a8:	7d8060ef          	jal	ra,18c80 <__sprint_r>
   124ac:	f90d                	bnez	a0,123de <_vfprintf_r+0xa40>
   124ae:	7792                	ld	a5,288(sp)
   124b0:	835a                	mv	t1,s6
   124b2:	f26ff06f          	j	11bd8 <_vfprintf_r+0x23a>
   124b6:	68f5                	lui	a7,0x1d
   124b8:	46c1                	li	a3,16
   124ba:	11812703          	lw	a4,280(sp)
   124be:	9a088893          	addi	a7,a7,-1632 # 1c9a0 <blanks.1>
   124c2:	4bc1                	li	s7,16
   124c4:	4c1d                	li	s8,7
   124c6:	0096c663          	blt	a3,s1,124d2 <_vfprintf_r+0xb34>
   124ca:	a081                	j	1250a <_vfprintf_r+0xb6c>
   124cc:	34c1                	addiw	s1,s1,-16
   124ce:	029bde63          	bge	s7,s1,1250a <_vfprintf_r+0xb6c>
   124d2:	2705                	addiw	a4,a4,1
   124d4:	07c1                	addi	a5,a5,16
   124d6:	01133023          	sd	a7,0(t1)
   124da:	01733423          	sd	s7,8(t1)
   124de:	f23e                	sd	a5,288(sp)
   124e0:	10e12c23          	sw	a4,280(sp)
   124e4:	0341                	addi	t1,t1,16
   124e6:	feec53e3          	bge	s8,a4,124cc <_vfprintf_r+0xb2e>
   124ea:	0a10                	addi	a2,sp,272
   124ec:	85ca                	mv	a1,s2
   124ee:	8552                	mv	a0,s4
   124f0:	f846                	sd	a7,48(sp)
   124f2:	78e060ef          	jal	ra,18c80 <__sprint_r>
   124f6:	ee0514e3          	bnez	a0,123de <_vfprintf_r+0xa40>
   124fa:	34c1                	addiw	s1,s1,-16
   124fc:	7792                	ld	a5,288(sp)
   124fe:	11812703          	lw	a4,280(sp)
   12502:	78c2                	ld	a7,48(sp)
   12504:	835a                	mv	t1,s6
   12506:	fc9bc6e3          	blt	s7,s1,124d2 <_vfprintf_r+0xb34>
   1250a:	0017069b          	addiw	a3,a4,1
   1250e:	97a6                	add	a5,a5,s1
   12510:	01133023          	sd	a7,0(t1)
   12514:	00933423          	sd	s1,8(t1)
   12518:	f23e                	sd	a5,288(sp)
   1251a:	10d12c23          	sw	a3,280(sp)
   1251e:	471d                	li	a4,7
   12520:	eed75f63          	bge	a4,a3,11c1e <_vfprintf_r+0x280>
   12524:	0a10                	addi	a2,sp,272
   12526:	85ca                	mv	a1,s2
   12528:	8552                	mv	a0,s4
   1252a:	756060ef          	jal	ra,18c80 <__sprint_r>
   1252e:	ea0518e3          	bnez	a0,123de <_vfprintf_r+0xa40>
   12532:	7792                	ld	a5,288(sp)
   12534:	eeaff06f          	j	11c1e <_vfprintf_r+0x280>
   12538:	562e                	lw	a2,232(sp)
   1253a:	50c05a63          	blez	a2,12a4e <_vfprintf_r+0x10b0>
   1253e:	6726                	ld	a4,72(sp)
   12540:	7682                	ld	a3,32(sp)
   12542:	00070b9b          	sext.w	s7,a4
   12546:	2ae6c063          	blt	a3,a4,127e6 <_vfprintf_r+0xe48>
   1254a:	03705263          	blez	s7,1256e <_vfprintf_r+0xbd0>
   1254e:	11812703          	lw	a4,280(sp)
   12552:	97de                	add	a5,a5,s7
   12554:	01933023          	sd	s9,0(t1)
   12558:	0017069b          	addiw	a3,a4,1
   1255c:	01733423          	sd	s7,8(t1)
   12560:	f23e                	sd	a5,288(sp)
   12562:	10d12c23          	sw	a3,280(sp)
   12566:	471d                	li	a4,7
   12568:	0341                	addi	t1,t1,16
   1256a:	0ad74ae3          	blt	a4,a3,12e1e <_vfprintf_r+0x1480>
   1256e:	fffbc713          	not	a4,s7
   12572:	977d                	srai	a4,a4,0x3f
   12574:	00ebfbb3          	and	s7,s7,a4
   12578:	6726                	ld	a4,72(sp)
   1257a:	41770bbb          	subw	s7,a4,s7
   1257e:	31704863          	bgtz	s7,1288e <_vfprintf_r+0xef0>
   12582:	66a6                	ld	a3,72(sp)
   12584:	4004f713          	andi	a4,s1,1024
   12588:	00dc8c33          	add	s8,s9,a3
   1258c:	70071f63          	bnez	a4,12caa <_vfprintf_r+0x130c>
   12590:	572e                	lw	a4,232(sp)
   12592:	7682                	ld	a3,32(sp)
   12594:	00d74663          	blt	a4,a3,125a0 <_vfprintf_r+0xc02>
   12598:	0014f693          	andi	a3,s1,1
   1259c:	08068ee3          	beqz	a3,12e38 <_vfprintf_r+0x149a>
   125a0:	7626                	ld	a2,104(sp)
   125a2:	11812683          	lw	a3,280(sp)
   125a6:	75c6                	ld	a1,112(sp)
   125a8:	97b2                	add	a5,a5,a2
   125aa:	2685                	addiw	a3,a3,1
   125ac:	00c33423          	sd	a2,8(t1)
   125b0:	00b33023          	sd	a1,0(t1)
   125b4:	0006861b          	sext.w	a2,a3
   125b8:	10d12c23          	sw	a3,280(sp)
   125bc:	f23e                	sd	a5,288(sp)
   125be:	469d                	li	a3,7
   125c0:	0341                	addi	t1,t1,16
   125c2:	3ac6c3e3          	blt	a3,a2,13168 <_vfprintf_r+0x17ca>
   125c6:	7682                	ld	a3,32(sp)
   125c8:	00dc8833          	add	a6,s9,a3
   125cc:	41880bb3          	sub	s7,a6,s8
   125d0:	9e99                	subw	a3,a3,a4
   125d2:	000b861b          	sext.w	a2,s7
   125d6:	00c6d363          	bge	a3,a2,125dc <_vfprintf_r+0xc3e>
   125da:	8bb6                	mv	s7,a3
   125dc:	2b81                	sext.w	s7,s7
   125de:	03705263          	blez	s7,12602 <_vfprintf_r+0xc64>
   125e2:	11812703          	lw	a4,280(sp)
   125e6:	97de                	add	a5,a5,s7
   125e8:	01833023          	sd	s8,0(t1)
   125ec:	0017061b          	addiw	a2,a4,1
   125f0:	01733423          	sd	s7,8(t1)
   125f4:	f23e                	sd	a5,288(sp)
   125f6:	10c12c23          	sw	a2,280(sp)
   125fa:	471d                	li	a4,7
   125fc:	0341                	addi	t1,t1,16
   125fe:	38c74fe3          	blt	a4,a2,1319c <_vfprintf_r+0x17fe>
   12602:	fffbc713          	not	a4,s7
   12606:	977d                	srai	a4,a4,0x3f
   12608:	00ebfbb3          	and	s7,s7,a4
   1260c:	41768bbb          	subw	s7,a3,s7
   12610:	e1705163          	blez	s7,11c12 <_vfprintf_r+0x274>
   12614:	68f5                	lui	a7,0x1d
   12616:	46c1                	li	a3,16
   12618:	11812703          	lw	a4,280(sp)
   1261c:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   12620:	4cc1                	li	s9,16
   12622:	4c1d                	li	s8,7
   12624:	0176c663          	blt	a3,s7,12630 <_vfprintf_r+0xc92>
   12628:	a955                	j	12adc <_vfprintf_r+0x113e>
   1262a:	3bc1                	addiw	s7,s7,-16
   1262c:	4b7cd863          	bge	s9,s7,12adc <_vfprintf_r+0x113e>
   12630:	2705                	addiw	a4,a4,1
   12632:	07c1                	addi	a5,a5,16
   12634:	01b33023          	sd	s11,0(t1)
   12638:	01933423          	sd	s9,8(t1)
   1263c:	f23e                	sd	a5,288(sp)
   1263e:	10e12c23          	sw	a4,280(sp)
   12642:	0341                	addi	t1,t1,16
   12644:	feec53e3          	bge	s8,a4,1262a <_vfprintf_r+0xc8c>
   12648:	0a10                	addi	a2,sp,272
   1264a:	85ca                	mv	a1,s2
   1264c:	8552                	mv	a0,s4
   1264e:	632060ef          	jal	ra,18c80 <__sprint_r>
   12652:	d80516e3          	bnez	a0,123de <_vfprintf_r+0xa40>
   12656:	7792                	ld	a5,288(sp)
   12658:	11812703          	lw	a4,280(sp)
   1265c:	835a                	mv	t1,s6
   1265e:	b7f1                	j	1262a <_vfprintf_r+0xc8c>
   12660:	0014f593          	andi	a1,s1,1
   12664:	800592e3          	bnez	a1,11e68 <_vfprintf_r+0x4ca>
   12668:	00c33423          	sd	a2,8(t1)
   1266c:	f26a                	sd	s10,288(sp)
   1266e:	11712c23          	sw	s7,280(sp)
   12672:	469d                	li	a3,7
   12674:	8576dde3          	bge	a3,s7,11ece <_vfprintf_r+0x530>
   12678:	0a10                	addi	a2,sp,272
   1267a:	85ca                	mv	a1,s2
   1267c:	8552                	mv	a0,s4
   1267e:	602060ef          	jal	ra,18c80 <__sprint_r>
   12682:	d4051ee3          	bnez	a0,123de <_vfprintf_r+0xa40>
   12686:	7d12                	ld	s10,288(sp)
   12688:	11812b83          	lw	s7,280(sp)
   1268c:	8c5a                	mv	s8,s6
   1268e:	841ff06f          	j	11ece <_vfprintf_r+0x530>
   12692:	82d05ee3          	blez	a3,11ece <_vfprintf_r+0x530>
   12696:	68f5                	lui	a7,0x1d
   12698:	4641                	li	a2,16
   1269a:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   1269e:	4841                	li	a6,16
   126a0:	4c9d                	li	s9,7
   126a2:	00d64663          	blt	a2,a3,126ae <_vfprintf_r+0xd10>
   126a6:	a159                	j	12b2c <_vfprintf_r+0x118e>
   126a8:	36c1                	addiw	a3,a3,-16
   126aa:	48d85163          	bge	a6,a3,12b2c <_vfprintf_r+0x118e>
   126ae:	2b85                	addiw	s7,s7,1
   126b0:	0d41                	addi	s10,s10,16
   126b2:	01bc3023          	sd	s11,0(s8)
   126b6:	010c3423          	sd	a6,8(s8)
   126ba:	f26a                	sd	s10,288(sp)
   126bc:	11712c23          	sw	s7,280(sp)
   126c0:	0c41                	addi	s8,s8,16
   126c2:	ff7cd3e3          	bge	s9,s7,126a8 <_vfprintf_r+0xd0a>
   126c6:	0a10                	addi	a2,sp,272
   126c8:	85ca                	mv	a1,s2
   126ca:	8552                	mv	a0,s4
   126cc:	f836                	sd	a3,48(sp)
   126ce:	5b2060ef          	jal	ra,18c80 <__sprint_r>
   126d2:	d00516e3          	bnez	a0,123de <_vfprintf_r+0xa40>
   126d6:	7d12                	ld	s10,288(sp)
   126d8:	11812b83          	lw	s7,280(sp)
   126dc:	76c2                	ld	a3,48(sp)
   126de:	8c5a                	mv	s8,s6
   126e0:	4841                	li	a6,16
   126e2:	b7d9                	j	126a8 <_vfprintf_r+0xd0a>
   126e4:	010df793          	andi	a5,s11,16
   126e8:	e3b9                	bnez	a5,1272e <_vfprintf_r+0xd90>
   126ea:	66c2                	ld	a3,16(sp)
   126ec:	040df793          	andi	a5,s11,64
   126f0:	0006a983          	lw	s3,0(a3)
   126f4:	4c078363          	beqz	a5,12bba <_vfprintf_r+0x121c>
   126f8:	19c2                	slli	s3,s3,0x30
   126fa:	0309d993          	srli	s3,s3,0x30
   126fe:	e83a                	sd	a4,16(sp)
   12700:	4785                	li	a5,1
   12702:	e58ff06f          	j	11d5a <_vfprintf_r+0x3bc>
   12706:	0014f713          	andi	a4,s1,1
   1270a:	d0070463          	beqz	a4,11c12 <_vfprintf_r+0x274>
   1270e:	be15                	j	12242 <_vfprintf_r+0x8a4>
   12710:	00044e03          	lbu	t3,0(s0)
   12714:	e83e                	sd	a5,16(sp)
   12716:	bd8ff06f          	j	11aee <_vfprintf_r+0x150>
   1271a:	67a2                	ld	a5,8(sp)
   1271c:	8ca2                	mv	s9,s0
   1271e:	e31c                	sd	a5,0(a4)
   12720:	d24ff06f          	j	11c44 <_vfprintf_r+0x2a6>
   12724:	67c2                	ld	a5,16(sp)
   12726:	639c                	ld	a5,0(a5)
   12728:	89be                	mv	s3,a5
   1272a:	dcaff06f          	j	11cf4 <_vfprintf_r+0x356>
   1272e:	67c2                	ld	a5,16(sp)
   12730:	e83a                	sd	a4,16(sp)
   12732:	0007b983          	ld	s3,0(a5)
   12736:	4785                	li	a5,1
   12738:	e22ff06f          	j	11d5a <_vfprintf_r+0x3bc>
   1273c:	67c2                	ld	a5,16(sp)
   1273e:	0007b983          	ld	s3,0(a5)
   12742:	e0eff06f          	j	11d50 <_vfprintf_r+0x3b2>
   12746:	67c2                	ld	a5,16(sp)
   12748:	ec1a                	sd	t1,24(sp)
   1274a:	2388                	fld	fa0,0(a5)
   1274c:	07a1                	addi	a5,a5,8
   1274e:	e83e                	sd	a5,16(sp)
   12750:	437090ef          	jal	ra,1c386 <__extenddftf2>
   12754:	6362                	ld	t1,24(sp)
   12756:	87aa                	mv	a5,a0
   12758:	e70ff06f          	j	11dc8 <_vfprintf_r+0x42a>
   1275c:	e83a                	sd	a4,16(sp)
   1275e:	47a5                	li	a5,9
   12760:	8da6                	mv	s11,s1
   12762:	c937fde3          	bgeu	a5,s3,123fc <_vfprintf_r+0xa5e>
   12766:	18c10b93          	addi	s7,sp,396
   1276a:	400df713          	andi	a4,s11,1024
   1276e:	f002                	sd	zero,32(sp)
   12770:	865e                	mv	a2,s7
   12772:	44a9                	li	s1,10
   12774:	46a5                	li	a3,9
   12776:	0ff00893          	li	a7,255
   1277a:	a039                	j	12788 <_vfprintf_r+0xdea>
   1277c:	0299d7b3          	divu	a5,s3,s1
   12780:	a736f4e3          	bgeu	a3,s3,121e8 <_vfprintf_r+0x84a>
   12784:	89be                	mv	s3,a5
   12786:	8666                	mv	a2,s9
   12788:	7582                	ld	a1,32(sp)
   1278a:	fff60c93          	addi	s9,a2,-1
   1278e:	2585                	addiw	a1,a1,1
   12790:	f02e                	sd	a1,32(sp)
   12792:	0299f7b3          	remu	a5,s3,s1
   12796:	0307879b          	addiw	a5,a5,48
   1279a:	fef60fa3          	sb	a5,-1(a2)
   1279e:	df79                	beqz	a4,1277c <_vfprintf_r+0xdde>
   127a0:	7786                	ld	a5,96(sp)
   127a2:	0007c783          	lbu	a5,0(a5)
   127a6:	fcf59be3          	bne	a1,a5,1277c <_vfprintf_r+0xdde>
   127aa:	fd1789e3          	beq	a5,a7,1277c <_vfprintf_r+0xdde>
   127ae:	a336fde3          	bgeu	a3,s3,121e8 <_vfprintf_r+0x84a>
   127b2:	678a                	ld	a5,128(sp)
   127b4:	65aa                	ld	a1,136(sp)
   127b6:	f83a                	sd	a4,48(sp)
   127b8:	40fc8cb3          	sub	s9,s9,a5
   127bc:	863e                	mv	a2,a5
   127be:	8566                	mv	a0,s9
   127c0:	ec1a                	sd	t1,24(sp)
   127c2:	15d040ef          	jal	ra,1711e <strncpy>
   127c6:	7706                	ld	a4,96(sp)
   127c8:	0299d7b3          	divu	a5,s3,s1
   127cc:	6362                	ld	t1,24(sp)
   127ce:	00174603          	lbu	a2,1(a4)
   127d2:	f002                	sd	zero,32(sp)
   127d4:	46a5                	li	a3,9
   127d6:	00c03633          	snez	a2,a2
   127da:	9732                	add	a4,a4,a2
   127dc:	f0ba                	sd	a4,96(sp)
   127de:	0ff00893          	li	a7,255
   127e2:	7742                	ld	a4,48(sp)
   127e4:	b745                	j	12784 <_vfprintf_r+0xde6>
   127e6:	00068b9b          	sext.w	s7,a3
   127ea:	d77042e3          	bgtz	s7,1254e <_vfprintf_r+0xbb0>
   127ee:	b341                	j	1256e <_vfprintf_r+0xbd0>
   127f0:	8da6                	mv	s11,s1
   127f2:	ba21                	j	1210a <_vfprintf_r+0x76c>
   127f4:	67f1                	lui	a5,0x1c
   127f6:	73078793          	addi	a5,a5,1840 # 1c730 <__clzdi2+0xc6>
   127fa:	f43e                	sd	a5,40(sp)
   127fc:	66c2                	ld	a3,16(sp)
   127fe:	0204f793          	andi	a5,s1,32
   12802:	00868713          	addi	a4,a3,8
   12806:	20078363          	beqz	a5,12a0c <_vfprintf_r+0x106e>
   1280a:	0006b983          	ld	s3,0(a3)
   1280e:	0014f793          	andi	a5,s1,1
   12812:	cf81                	beqz	a5,1282a <_vfprintf_r+0xe8c>
   12814:	00098b63          	beqz	s3,1282a <_vfprintf_r+0xe8c>
   12818:	0024e493          	ori	s1,s1,2
   1281c:	03000793          	li	a5,48
   12820:	0ef10023          	sb	a5,224(sp)
   12824:	0fa100a3          	sb	s10,225(sp)
   12828:	2481                	sext.w	s1,s1
   1282a:	bff4fd93          	andi	s11,s1,-1025
   1282e:	2d81                	sext.w	s11,s11
   12830:	e83a                	sd	a4,16(sp)
   12832:	4789                	li	a5,2
   12834:	d26ff06f          	j	11d5a <_vfprintf_r+0x3bc>
   12838:	2004e493          	ori	s1,s1,512
   1283c:	00144e03          	lbu	t3,1(s0)
   12840:	2481                	sext.w	s1,s1
   12842:	0405                	addi	s0,s0,1
   12844:	aaaff06f          	j	11aee <_vfprintf_r+0x150>
   12848:	67f1                	lui	a5,0x1c
   1284a:	74878793          	addi	a5,a5,1864 # 1c748 <__clzdi2+0xde>
   1284e:	f43e                	sd	a5,40(sp)
   12850:	b775                	j	127fc <_vfprintf_r+0xe5e>
   12852:	0204e493          	ori	s1,s1,32
   12856:	00144e03          	lbu	t3,1(s0)
   1285a:	2481                	sext.w	s1,s1
   1285c:	0405                	addi	s0,s0,1
   1285e:	a90ff06f          	j	11aee <_vfprintf_r+0x150>
   12862:	0a10                	addi	a2,sp,272
   12864:	85ca                	mv	a1,s2
   12866:	8552                	mv	a0,s4
   12868:	418060ef          	jal	ra,18c80 <__sprint_r>
   1286c:	b60519e3          	bnez	a0,123de <_vfprintf_r+0xa40>
   12870:	7792                	ld	a5,288(sp)
   12872:	835a                	mv	t1,s6
   12874:	bad5                	j	12268 <_vfprintf_r+0x8ca>
   12876:	4799                	li	a5,6
   12878:	000c0b9b          	sext.w	s7,s8
   1287c:	5b87ec63          	bltu	a5,s8,12e34 <_vfprintf_r+0x1496>
   12880:	6871                	lui	a6,0x1c
   12882:	89de                	mv	s3,s7
   12884:	e86e                	sd	s11,16(sp)
   12886:	76080c93          	addi	s9,a6,1888 # 1c760 <__clzdi2+0xf6>
   1288a:	ad0ff06f          	j	11b5a <_vfprintf_r+0x1bc>
   1288e:	68f5                	lui	a7,0x1d
   12890:	46c1                	li	a3,16
   12892:	11812703          	lw	a4,280(sp)
   12896:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   1289a:	4d41                	li	s10,16
   1289c:	4c1d                	li	s8,7
   1289e:	0176c663          	blt	a3,s7,128aa <_vfprintf_r+0xf0c>
   128a2:	aee1                	j	12c7a <_vfprintf_r+0x12dc>
   128a4:	3bc1                	addiw	s7,s7,-16
   128a6:	3d7d5a63          	bge	s10,s7,12c7a <_vfprintf_r+0x12dc>
   128aa:	2705                	addiw	a4,a4,1
   128ac:	07c1                	addi	a5,a5,16
   128ae:	01b33023          	sd	s11,0(t1)
   128b2:	01a33423          	sd	s10,8(t1)
   128b6:	f23e                	sd	a5,288(sp)
   128b8:	10e12c23          	sw	a4,280(sp)
   128bc:	0341                	addi	t1,t1,16
   128be:	feec53e3          	bge	s8,a4,128a4 <_vfprintf_r+0xf06>
   128c2:	0a10                	addi	a2,sp,272
   128c4:	85ca                	mv	a1,s2
   128c6:	8552                	mv	a0,s4
   128c8:	3b8060ef          	jal	ra,18c80 <__sprint_r>
   128cc:	b00519e3          	bnez	a0,123de <_vfprintf_r+0xa40>
   128d0:	7792                	ld	a5,288(sp)
   128d2:	11812703          	lw	a4,280(sp)
   128d6:	835a                	mv	t1,s6
   128d8:	b7f1                	j	128a4 <_vfprintf_r+0xf06>
   128da:	07800713          	li	a4,120
   128de:	0024e793          	ori	a5,s1,2
   128e2:	03000693          	li	a3,48
   128e6:	2781                	sext.w	a5,a5
   128e8:	0ee100a3          	sb	a4,225(sp)
   128ec:	0ed10023          	sb	a3,224(sp)
   128f0:	06300713          	li	a4,99
   128f4:	f53e                	sd	a5,168(sp)
   128f6:	ec02                	sd	zero,24(sp)
   128f8:	12810c93          	addi	s9,sp,296
   128fc:	6b874a63          	blt	a4,s8,12fb0 <_vfprintf_r+0x1612>
   12900:	69b2                	ld	s3,264(sp)
   12902:	fdfd7793          	andi	a5,s10,-33
   12906:	1024e493          	ori	s1,s1,258
   1290a:	ecbe                	sd	a5,88(sp)
   1290c:	e582                	sd	zero,200(sp)
   1290e:	6b92                	ld	s7,256(sp)
   12910:	2481                	sext.w	s1,s1
   12912:	6609ca63          	bltz	s3,12f86 <_vfprintf_r+0x15e8>
   12916:	06100793          	li	a5,97
   1291a:	1efd0ce3          	beq	s10,a5,13312 <_vfprintf_r+0x1974>
   1291e:	fbfd079b          	addiw	a5,s10,-65
   12922:	0007869b          	sext.w	a3,a5
   12926:	02500713          	li	a4,37
   1292a:	00d76c63          	bltu	a4,a3,12942 <_vfprintf_r+0xfa4>
   1292e:	02079713          	slli	a4,a5,0x20
   12932:	01e75793          	srli	a5,a4,0x1e
   12936:	6775                	lui	a4,0x1d
   12938:	8d870713          	addi	a4,a4,-1832 # 1c8d8 <__clzdi2+0x26e>
   1293c:	97ba                	add	a5,a5,a4
   1293e:	439c                	lw	a5,0(a5)
   12940:	8782                	jr	a5
   12942:	8de2                	mv	s11,s8
   12944:	4689                	li	a3,2
   12946:	11bc                	addi	a5,sp,232
   12948:	876e                	mv	a4,s11
   1294a:	0f810893          	addi	a7,sp,248
   1294e:	0ec10813          	addi	a6,sp,236
   12952:	85de                	mv	a1,s7
   12954:	864e                	mv	a2,s3
   12956:	8552                	mv	a0,s4
   12958:	f01a                	sd	t1,32(sp)
   1295a:	3cc020ef          	jal	ra,14d26 <_ldtoa_r>
   1295e:	6766                	ld	a4,88(sp)
   12960:	04700793          	li	a5,71
   12964:	7302                	ld	t1,32(sp)
   12966:	8caa                	mv	s9,a0
   12968:	7cf70463          	beq	a4,a5,13130 <_vfprintf_r+0x1792>
   1296c:	04600793          	li	a5,70
   12970:	01b508b3          	add	a7,a0,s11
   12974:	00f71a63          	bne	a4,a5,12988 <_vfprintf_r+0xfea>
   12978:	00054703          	lbu	a4,0(a0)
   1297c:	03000793          	li	a5,48
   12980:	64f70463          	beq	a4,a5,12fc8 <_vfprintf_r+0x162a>
   12984:	572e                	lw	a4,232(sp)
   12986:	98ba                	add	a7,a7,a4
   12988:	4681                	li	a3,0
   1298a:	4601                	li	a2,0
   1298c:	855e                	mv	a0,s7
   1298e:	85ce                	mv	a1,s3
   12990:	f846                	sd	a7,48(sp)
   12992:	f01a                	sd	t1,32(sp)
   12994:	06d080ef          	jal	ra,1b200 <__eqtf2>
   12998:	78c2                	ld	a7,48(sp)
   1299a:	7302                	ld	t1,32(sp)
   1299c:	86c6                	mv	a3,a7
   1299e:	e929                	bnez	a0,129f0 <_vfprintf_r+0x1052>
   129a0:	419687bb          	subw	a5,a3,s9
   129a4:	f03e                	sd	a5,32(sp)
   129a6:	572e                	lw	a4,232(sp)
   129a8:	04700793          	li	a5,71
   129ac:	e4ba                	sd	a4,72(sp)
   129ae:	6766                	ld	a4,88(sp)
   129b0:	24f70963          	beq	a4,a5,12c02 <_vfprintf_r+0x1264>
   129b4:	6766                	ld	a4,88(sp)
   129b6:	04600793          	li	a5,70
   129ba:	4af71163          	bne	a4,a5,12e5c <_vfprintf_r+0x14be>
   129be:	77aa                	ld	a5,168(sp)
   129c0:	6726                	ld	a4,72(sp)
   129c2:	8b85                	andi	a5,a5,1
   129c4:	00fc67b3          	or	a5,s8,a5
   129c8:	20e055e3          	blez	a4,133d2 <_vfprintf_r+0x1a34>
   129cc:	1e079ae3          	bnez	a5,133c0 <_vfprintf_r+0x1a22>
   129d0:	6ba6                	ld	s7,72(sp)
   129d2:	06600d13          	li	s10,102
   129d6:	77aa                	ld	a5,168(sp)
   129d8:	4007f793          	andi	a5,a5,1024
   129dc:	16079be3          	bnez	a5,13352 <_vfprintf_r+0x19b4>
   129e0:	fffbc993          	not	s3,s7
   129e4:	43f9d993          	srai	s3,s3,0x3f
   129e8:	013bf9b3          	and	s3,s7,s3
   129ec:	2981                	sext.w	s3,s3
   129ee:	aca1                	j	12c46 <_vfprintf_r+0x12a8>
   129f0:	76ee                	ld	a3,248(sp)
   129f2:	fb16f7e3          	bgeu	a3,a7,129a0 <_vfprintf_r+0x1002>
   129f6:	03000713          	li	a4,48
   129fa:	00168793          	addi	a5,a3,1
   129fe:	fdbe                	sd	a5,248(sp)
   12a00:	00e68023          	sb	a4,0(a3)
   12a04:	76ee                	ld	a3,248(sp)
   12a06:	ff16eae3          	bltu	a3,a7,129fa <_vfprintf_r+0x105c>
   12a0a:	bf59                	j	129a0 <_vfprintf_r+0x1002>
   12a0c:	0104f793          	andi	a5,s1,16
   12a10:	c3c5                	beqz	a5,12ab0 <_vfprintf_r+0x1112>
   12a12:	67c2                	ld	a5,16(sp)
   12a14:	0007b983          	ld	s3,0(a5)
   12a18:	bbdd                	j	1280e <_vfprintf_r+0xe70>
   12a1a:	0a10                	addi	a2,sp,272
   12a1c:	85ca                	mv	a1,s2
   12a1e:	8552                	mv	a0,s4
   12a20:	260060ef          	jal	ra,18c80 <__sprint_r>
   12a24:	9a051de3          	bnez	a0,123de <_vfprintf_r+0xa40>
   12a28:	7d12                	ld	s10,288(sp)
   12a2a:	11812b83          	lw	s7,280(sp)
   12a2e:	8c5a                	mv	s8,s6
   12a30:	c4aff06f          	j	11e7a <_vfprintf_r+0x4dc>
   12a34:	0a10                	addi	a2,sp,272
   12a36:	85ca                	mv	a1,s2
   12a38:	8552                	mv	a0,s4
   12a3a:	246060ef          	jal	ra,18c80 <__sprint_r>
   12a3e:	9a0510e3          	bnez	a0,123de <_vfprintf_r+0xa40>
   12a42:	7d12                	ld	s10,288(sp)
   12a44:	11812b83          	lw	s7,280(sp)
   12a48:	8c5a                	mv	s8,s6
   12a4a:	c4eff06f          	j	11e98 <_vfprintf_r+0x4fa>
   12a4e:	11812703          	lw	a4,280(sp)
   12a52:	66f1                	lui	a3,0x1c
   12a54:	76868693          	addi	a3,a3,1896 # 1c768 <__clzdi2+0xfe>
   12a58:	2705                	addiw	a4,a4,1
   12a5a:	00d33023          	sd	a3,0(t1)
   12a5e:	0785                	addi	a5,a5,1
   12a60:	4685                	li	a3,1
   12a62:	00d33423          	sd	a3,8(t1)
   12a66:	10e12c23          	sw	a4,280(sp)
   12a6a:	0007069b          	sext.w	a3,a4
   12a6e:	f23e                	sd	a5,288(sp)
   12a70:	471d                	li	a4,7
   12a72:	0341                	addi	t1,t1,16
   12a74:	38d74663          	blt	a4,a3,12e00 <_vfprintf_r+0x1462>
   12a78:	0e061a63          	bnez	a2,12b6c <_vfprintf_r+0x11ce>
   12a7c:	7682                	ld	a3,32(sp)
   12a7e:	0014f713          	andi	a4,s1,1
   12a82:	8f55                	or	a4,a4,a3
   12a84:	98070763          	beqz	a4,11c12 <_vfprintf_r+0x274>
   12a88:	76a6                	ld	a3,104(sp)
   12a8a:	11812703          	lw	a4,280(sp)
   12a8e:	7646                	ld	a2,112(sp)
   12a90:	97b6                	add	a5,a5,a3
   12a92:	2705                	addiw	a4,a4,1
   12a94:	00d33423          	sd	a3,8(t1)
   12a98:	10e12c23          	sw	a4,280(sp)
   12a9c:	0007069b          	sext.w	a3,a4
   12aa0:	00c33023          	sd	a2,0(t1)
   12aa4:	f23e                	sd	a5,288(sp)
   12aa6:	471d                	li	a4,7
   12aa8:	4ed74763          	blt	a4,a3,12f96 <_vfprintf_r+0x15f8>
   12aac:	0341                	addi	t1,t1,16
   12aae:	a0e5                	j	12b96 <_vfprintf_r+0x11f8>
   12ab0:	66c2                	ld	a3,16(sp)
   12ab2:	0404f793          	andi	a5,s1,64
   12ab6:	0006a983          	lw	s3,0(a3)
   12aba:	10078a63          	beqz	a5,12bce <_vfprintf_r+0x1230>
   12abe:	19c2                	slli	s3,s3,0x30
   12ac0:	0309d993          	srli	s3,s3,0x30
   12ac4:	b3a9                	j	1280e <_vfprintf_r+0xe70>
   12ac6:	0a10                	addi	a2,sp,272
   12ac8:	85ca                	mv	a1,s2
   12aca:	8552                	mv	a0,s4
   12acc:	1b4060ef          	jal	ra,18c80 <__sprint_r>
   12ad0:	900517e3          	bnez	a0,123de <_vfprintf_r+0xa40>
   12ad4:	7792                	ld	a5,288(sp)
   12ad6:	835a                	mv	t1,s6
   12ad8:	f62ff06f          	j	1223a <_vfprintf_r+0x89c>
   12adc:	0017069b          	addiw	a3,a4,1
   12ae0:	8736                	mv	a4,a3
   12ae2:	97de                	add	a5,a5,s7
   12ae4:	01b33023          	sd	s11,0(t1)
   12ae8:	918ff06f          	j	11c00 <_vfprintf_r+0x262>
   12aec:	6512                	ld	a0,256(sp)
   12aee:	65b2                	ld	a1,264(sp)
   12af0:	4601                	li	a2,0
   12af2:	4681                	li	a3,0
   12af4:	053080ef          	jal	ra,1b346 <__letf2>
   12af8:	6362                	ld	t1,24(sp)
   12afa:	66054263          	bltz	a0,1315e <_vfprintf_r+0x17c0>
   12afe:	0df14783          	lbu	a5,223(sp)
   12b02:	04700713          	li	a4,71
   12b06:	31a75863          	bge	a4,s10,12e16 <_vfprintf_r+0x1478>
   12b0a:	6871                	lui	a6,0x1c
   12b0c:	71880c93          	addi	s9,a6,1816 # 1c718 <__clzdi2+0xae>
   12b10:	f7f4f493          	andi	s1,s1,-129
   12b14:	ec02                	sd	zero,24(sp)
   12b16:	e882                	sd	zero,80(sp)
   12b18:	ec82                	sd	zero,88(sp)
   12b1a:	e482                	sd	zero,72(sp)
   12b1c:	2481                	sext.w	s1,s1
   12b1e:	498d                	li	s3,3
   12b20:	4b8d                	li	s7,3
   12b22:	4c01                	li	s8,0
   12b24:	a0079863          	bnez	a5,11d34 <_vfprintf_r+0x396>
   12b28:	83cff06f          	j	11b64 <_vfprintf_r+0x1c6>
   12b2c:	2b85                	addiw	s7,s7,1
   12b2e:	865e                	mv	a2,s7
   12b30:	9d36                	add	s10,s10,a3
   12b32:	01bc3023          	sd	s11,0(s8)
   12b36:	b86ff06f          	j	11ebc <_vfprintf_r+0x51e>
   12b3a:	8566                	mv	a0,s9
   12b3c:	f81a                	sd	t1,48(sp)
   12b3e:	dd1fe0ef          	jal	ra,1190e <strlen>
   12b42:	00050b9b          	sext.w	s7,a0
   12b46:	0df14783          	lbu	a5,223(sp)
   12b4a:	fffbc993          	not	s3,s7
   12b4e:	43f9d993          	srai	s3,s3,0x3f
   12b52:	e86e                	sd	s11,16(sp)
   12b54:	ec02                	sd	zero,24(sp)
   12b56:	e882                	sd	zero,80(sp)
   12b58:	ec82                	sd	zero,88(sp)
   12b5a:	e482                	sd	zero,72(sp)
   12b5c:	7342                	ld	t1,48(sp)
   12b5e:	0179f9b3          	and	s3,s3,s7
   12b62:	4c01                	li	s8,0
   12b64:	9c079863          	bnez	a5,11d34 <_vfprintf_r+0x396>
   12b68:	ffdfe06f          	j	11b64 <_vfprintf_r+0x1c6>
   12b6c:	76a6                	ld	a3,104(sp)
   12b6e:	11812703          	lw	a4,280(sp)
   12b72:	75c6                	ld	a1,112(sp)
   12b74:	97b6                	add	a5,a5,a3
   12b76:	2705                	addiw	a4,a4,1
   12b78:	00d33423          	sd	a3,8(t1)
   12b7c:	00b33023          	sd	a1,0(t1)
   12b80:	0007069b          	sext.w	a3,a4
   12b84:	10e12c23          	sw	a4,280(sp)
   12b88:	f23e                	sd	a5,288(sp)
   12b8a:	471d                	li	a4,7
   12b8c:	0341                	addi	t1,t1,16
   12b8e:	40d74463          	blt	a4,a3,12f96 <_vfprintf_r+0x15f8>
   12b92:	62064863          	bltz	a2,131c2 <_vfprintf_r+0x1824>
   12b96:	7702                	ld	a4,32(sp)
   12b98:	0016861b          	addiw	a2,a3,1
   12b9c:	01933023          	sd	s9,0(t1)
   12ba0:	97ba                	add	a5,a5,a4
   12ba2:	00e33423          	sd	a4,8(t1)
   12ba6:	f23e                	sd	a5,288(sp)
   12ba8:	10c12c23          	sw	a2,280(sp)
   12bac:	471d                	li	a4,7
   12bae:	00c74463          	blt	a4,a2,12bb6 <_vfprintf_r+0x1218>
   12bb2:	85eff06f          	j	11c10 <_vfprintf_r+0x272>
   12bb6:	b3cff06f          	j	11ef2 <_vfprintf_r+0x554>
   12bba:	200df793          	andi	a5,s11,512
   12bbe:	38078f63          	beqz	a5,12f5c <_vfprintf_r+0x15be>
   12bc2:	0ff9f993          	zext.b	s3,s3
   12bc6:	e83a                	sd	a4,16(sp)
   12bc8:	4785                	li	a5,1
   12bca:	990ff06f          	j	11d5a <_vfprintf_r+0x3bc>
   12bce:	2004f793          	andi	a5,s1,512
   12bd2:	38078163          	beqz	a5,12f54 <_vfprintf_r+0x15b6>
   12bd6:	0ff9f993          	zext.b	s3,s3
   12bda:	b915                	j	1280e <_vfprintf_r+0xe70>
   12bdc:	2004f793          	andi	a5,s1,512
   12be0:	36078563          	beqz	a5,12f4a <_vfprintf_r+0x15ac>
   12be4:	0ff9f993          	zext.b	s3,s3
   12be8:	968ff06f          	j	11d50 <_vfprintf_r+0x3b2>
   12bec:	2004f793          	andi	a5,s1,512
   12bf0:	34078a63          	beqz	a5,12f44 <_vfprintf_r+0x15a6>
   12bf4:	0189999b          	slliw	s3,s3,0x18
   12bf8:	4189d99b          	sraiw	s3,s3,0x18
   12bfc:	87ce                	mv	a5,s3
   12bfe:	8f6ff06f          	j	11cf4 <_vfprintf_r+0x356>
   12c02:	6726                	ld	a4,72(sp)
   12c04:	57f5                	li	a5,-3
   12c06:	24f74763          	blt	a4,a5,12e54 <_vfprintf_r+0x14b6>
   12c0a:	24ec4563          	blt	s8,a4,12e54 <_vfprintf_r+0x14b6>
   12c0e:	7782                	ld	a5,32(sp)
   12c10:	6726                	ld	a4,72(sp)
   12c12:	60f74263          	blt	a4,a5,13216 <_vfprintf_r+0x1878>
   12c16:	77aa                	ld	a5,168(sp)
   12c18:	6726                	ld	a4,72(sp)
   12c1a:	8b85                	andi	a5,a5,1
   12c1c:	8bba                	mv	s7,a4
   12c1e:	c781                	beqz	a5,12c26 <_vfprintf_r+0x1288>
   12c20:	77a6                	ld	a5,104(sp)
   12c22:	00e78bbb          	addw	s7,a5,a4
   12c26:	77aa                	ld	a5,168(sp)
   12c28:	4007f793          	andi	a5,a5,1024
   12c2c:	c781                	beqz	a5,12c34 <_vfprintf_r+0x1296>
   12c2e:	67a6                	ld	a5,72(sp)
   12c30:	70f04f63          	bgtz	a5,1334e <_vfprintf_r+0x19b0>
   12c34:	fffbc993          	not	s3,s7
   12c38:	43f9d993          	srai	s3,s3,0x3f
   12c3c:	013bf9b3          	and	s3,s7,s3
   12c40:	2981                	sext.w	s3,s3
   12c42:	06700d13          	li	s10,103
   12c46:	e882                	sd	zero,80(sp)
   12c48:	ec82                	sd	zero,88(sp)
   12c4a:	67ae                	ld	a5,200(sp)
   12c4c:	4c078a63          	beqz	a5,13120 <_vfprintf_r+0x1782>
   12c50:	02d00793          	li	a5,45
   12c54:	0cf10fa3          	sb	a5,223(sp)
   12c58:	4c01                	li	s8,0
   12c5a:	2985                	addiw	s3,s3,1
   12c5c:	f09fe06f          	j	11b64 <_vfprintf_r+0x1c6>
   12c60:	67b2                	ld	a5,264(sp)
   12c62:	3007cb63          	bltz	a5,12f78 <_vfprintf_r+0x15da>
   12c66:	0df14783          	lbu	a5,223(sp)
   12c6a:	04700713          	li	a4,71
   12c6e:	55a75663          	bge	a4,s10,131ba <_vfprintf_r+0x181c>
   12c72:	6871                	lui	a6,0x1c
   12c74:	72880c93          	addi	s9,a6,1832 # 1c728 <__clzdi2+0xbe>
   12c78:	bd61                	j	12b10 <_vfprintf_r+0x1172>
   12c7a:	0017069b          	addiw	a3,a4,1
   12c7e:	97de                	add	a5,a5,s7
   12c80:	01b33023          	sd	s11,0(t1)
   12c84:	01733423          	sd	s7,8(t1)
   12c88:	f23e                	sd	a5,288(sp)
   12c8a:	10d12c23          	sw	a3,280(sp)
   12c8e:	471d                	li	a4,7
   12c90:	0341                	addi	t1,t1,16
   12c92:	8ed758e3          	bge	a4,a3,12582 <_vfprintf_r+0xbe4>
   12c96:	0a10                	addi	a2,sp,272
   12c98:	85ca                	mv	a1,s2
   12c9a:	8552                	mv	a0,s4
   12c9c:	7e5050ef          	jal	ra,18c80 <__sprint_r>
   12ca0:	f2051f63          	bnez	a0,123de <_vfprintf_r+0xa40>
   12ca4:	7792                	ld	a5,288(sp)
   12ca6:	835a                	mv	t1,s6
   12ca8:	b8e9                	j	12582 <_vfprintf_r+0xbe4>
   12caa:	7702                	ld	a4,32(sp)
   12cac:	6ef5                	lui	t4,0x1d
   12cae:	4b9d                	li	s7,7
   12cb0:	9766                	add	a4,a4,s9
   12cb2:	fc3a                	sd	a4,56(sp)
   12cb4:	6766                	ld	a4,88(sp)
   12cb6:	4dc1                	li	s11,16
   12cb8:	9b0e8d13          	addi	s10,t4,-1616 # 1c9b0 <zeroes.0>
   12cbc:	cb49                	beqz	a4,12d4e <_vfprintf_r+0x13b0>
   12cbe:	6746                	ld	a4,80(sp)
   12cc0:	eb51                	bnez	a4,12d54 <_vfprintf_r+0x13b6>
   12cc2:	7706                	ld	a4,96(sp)
   12cc4:	177d                	addi	a4,a4,-1
   12cc6:	f0ba                	sd	a4,96(sp)
   12cc8:	6766                	ld	a4,88(sp)
   12cca:	377d                	addiw	a4,a4,-1
   12ccc:	ecba                	sd	a4,88(sp)
   12cce:	668a                	ld	a3,128(sp)
   12cd0:	11812703          	lw	a4,280(sp)
   12cd4:	662a                	ld	a2,136(sp)
   12cd6:	97b6                	add	a5,a5,a3
   12cd8:	2705                	addiw	a4,a4,1
   12cda:	00d33423          	sd	a3,8(t1)
   12cde:	00c33023          	sd	a2,0(t1)
   12ce2:	f23e                	sd	a5,288(sp)
   12ce4:	0007069b          	sext.w	a3,a4
   12ce8:	10e12c23          	sw	a4,280(sp)
   12cec:	0341                	addi	t1,t1,16
   12cee:	0cdbce63          	blt	s7,a3,12dca <_vfprintf_r+0x142c>
   12cf2:	7706                	ld	a4,96(sp)
   12cf4:	00074603          	lbu	a2,0(a4)
   12cf8:	7762                	ld	a4,56(sp)
   12cfa:	418706b3          	sub	a3,a4,s8
   12cfe:	0006859b          	sext.w	a1,a3
   12d02:	0006071b          	sext.w	a4,a2
   12d06:	00b65363          	bge	a2,a1,12d0c <_vfprintf_r+0x136e>
   12d0a:	86ba                	mv	a3,a4
   12d0c:	2681                	sext.w	a3,a3
   12d0e:	02d05663          	blez	a3,12d3a <_vfprintf_r+0x139c>
   12d12:	11812703          	lw	a4,280(sp)
   12d16:	97b6                	add	a5,a5,a3
   12d18:	01833023          	sd	s8,0(t1)
   12d1c:	0017061b          	addiw	a2,a4,1
   12d20:	00d33423          	sd	a3,8(t1)
   12d24:	f23e                	sd	a5,288(sp)
   12d26:	10c12c23          	sw	a2,280(sp)
   12d2a:	0acbca63          	blt	s7,a2,12dde <_vfprintf_r+0x1440>
   12d2e:	7706                	ld	a4,96(sp)
   12d30:	0341                	addi	t1,t1,16
   12d32:	00074603          	lbu	a2,0(a4)
   12d36:	0006071b          	sext.w	a4,a2
   12d3a:	fff6c593          	not	a1,a3
   12d3e:	95fd                	srai	a1,a1,0x3f
   12d40:	8eed                	and	a3,a3,a1
   12d42:	9f15                	subw	a4,a4,a3
   12d44:	00e04c63          	bgtz	a4,12d5c <_vfprintf_r+0x13be>
   12d48:	9c32                	add	s8,s8,a2
   12d4a:	6766                	ld	a4,88(sp)
   12d4c:	fb2d                	bnez	a4,12cbe <_vfprintf_r+0x1320>
   12d4e:	6746                	ld	a4,80(sp)
   12d50:	3c070163          	beqz	a4,13112 <_vfprintf_r+0x1774>
   12d54:	6746                	ld	a4,80(sp)
   12d56:	377d                	addiw	a4,a4,-1
   12d58:	e8ba                	sd	a4,80(sp)
   12d5a:	bf95                	j	12cce <_vfprintf_r+0x1330>
   12d5c:	11812683          	lw	a3,280(sp)
   12d60:	00edc663          	blt	s11,a4,12d6c <_vfprintf_r+0x13ce>
   12d64:	a081                	j	12da4 <_vfprintf_r+0x1406>
   12d66:	3741                	addiw	a4,a4,-16
   12d68:	02edde63          	bge	s11,a4,12da4 <_vfprintf_r+0x1406>
   12d6c:	2685                	addiw	a3,a3,1
   12d6e:	07c1                	addi	a5,a5,16
   12d70:	01a33023          	sd	s10,0(t1)
   12d74:	01b33423          	sd	s11,8(t1)
   12d78:	f23e                	sd	a5,288(sp)
   12d7a:	10d12c23          	sw	a3,280(sp)
   12d7e:	0341                	addi	t1,t1,16
   12d80:	fedbd3e3          	bge	s7,a3,12d66 <_vfprintf_r+0x13c8>
   12d84:	0a10                	addi	a2,sp,272
   12d86:	85ca                	mv	a1,s2
   12d88:	8552                	mv	a0,s4
   12d8a:	f83a                	sd	a4,48(sp)
   12d8c:	6f5050ef          	jal	ra,18c80 <__sprint_r>
   12d90:	e4051763          	bnez	a0,123de <_vfprintf_r+0xa40>
   12d94:	7742                	ld	a4,48(sp)
   12d96:	7792                	ld	a5,288(sp)
   12d98:	11812683          	lw	a3,280(sp)
   12d9c:	3741                	addiw	a4,a4,-16
   12d9e:	835a                	mv	t1,s6
   12da0:	fcedc6e3          	blt	s11,a4,12d6c <_vfprintf_r+0x13ce>
   12da4:	2685                	addiw	a3,a3,1
   12da6:	97ba                	add	a5,a5,a4
   12da8:	00e33423          	sd	a4,8(t1)
   12dac:	01a33023          	sd	s10,0(t1)
   12db0:	f23e                	sd	a5,288(sp)
   12db2:	0006871b          	sext.w	a4,a3
   12db6:	10d12c23          	sw	a3,280(sp)
   12dba:	38ebc463          	blt	s7,a4,13142 <_vfprintf_r+0x17a4>
   12dbe:	7706                	ld	a4,96(sp)
   12dc0:	0341                	addi	t1,t1,16
   12dc2:	00074603          	lbu	a2,0(a4)
   12dc6:	9c32                	add	s8,s8,a2
   12dc8:	b749                	j	12d4a <_vfprintf_r+0x13ac>
   12dca:	0a10                	addi	a2,sp,272
   12dcc:	85ca                	mv	a1,s2
   12dce:	8552                	mv	a0,s4
   12dd0:	6b1050ef          	jal	ra,18c80 <__sprint_r>
   12dd4:	e0051563          	bnez	a0,123de <_vfprintf_r+0xa40>
   12dd8:	7792                	ld	a5,288(sp)
   12dda:	835a                	mv	t1,s6
   12ddc:	bf19                	j	12cf2 <_vfprintf_r+0x1354>
   12dde:	0a10                	addi	a2,sp,272
   12de0:	85ca                	mv	a1,s2
   12de2:	8552                	mv	a0,s4
   12de4:	f836                	sd	a3,48(sp)
   12de6:	69b050ef          	jal	ra,18c80 <__sprint_r>
   12dea:	de051a63          	bnez	a0,123de <_vfprintf_r+0xa40>
   12dee:	7786                	ld	a5,96(sp)
   12df0:	76c2                	ld	a3,48(sp)
   12df2:	835a                	mv	t1,s6
   12df4:	0007c603          	lbu	a2,0(a5)
   12df8:	7792                	ld	a5,288(sp)
   12dfa:	0006071b          	sext.w	a4,a2
   12dfe:	bf35                	j	12d3a <_vfprintf_r+0x139c>
   12e00:	0a10                	addi	a2,sp,272
   12e02:	85ca                	mv	a1,s2
   12e04:	8552                	mv	a0,s4
   12e06:	67b050ef          	jal	ra,18c80 <__sprint_r>
   12e0a:	dc051a63          	bnez	a0,123de <_vfprintf_r+0xa40>
   12e0e:	562e                	lw	a2,232(sp)
   12e10:	7792                	ld	a5,288(sp)
   12e12:	835a                	mv	t1,s6
   12e14:	b195                	j	12a78 <_vfprintf_r+0x10da>
   12e16:	6871                	lui	a6,0x1c
   12e18:	71080c93          	addi	s9,a6,1808 # 1c710 <__clzdi2+0xa6>
   12e1c:	b9d5                	j	12b10 <_vfprintf_r+0x1172>
   12e1e:	0a10                	addi	a2,sp,272
   12e20:	85ca                	mv	a1,s2
   12e22:	8552                	mv	a0,s4
   12e24:	65d050ef          	jal	ra,18c80 <__sprint_r>
   12e28:	da051b63          	bnez	a0,123de <_vfprintf_r+0xa40>
   12e2c:	7792                	ld	a5,288(sp)
   12e2e:	835a                	mv	t1,s6
   12e30:	f3eff06f          	j	1256e <_vfprintf_r+0xbd0>
   12e34:	4b99                	li	s7,6
   12e36:	b4a9                	j	12880 <_vfprintf_r+0xee2>
   12e38:	7682                	ld	a3,32(sp)
   12e3a:	00dc8bb3          	add	s7,s9,a3
   12e3e:	418b8bb3          	sub	s7,s7,s8
   12e42:	9e99                	subw	a3,a3,a4
   12e44:	000b861b          	sext.w	a2,s7
   12e48:	00c6d363          	bge	a3,a2,12e4e <_vfprintf_r+0x14b0>
   12e4c:	8bb6                	mv	s7,a3
   12e4e:	2b81                	sext.w	s7,s7
   12e50:	fb2ff06f          	j	12602 <_vfprintf_r+0xc64>
   12e54:	3d79                	addiw	s10,s10,-2
   12e56:	fdfd7793          	andi	a5,s10,-33
   12e5a:	ecbe                	sd	a5,88(sp)
   12e5c:	67a6                	ld	a5,72(sp)
   12e5e:	65e6                	ld	a1,88(sp)
   12e60:	04100713          	li	a4,65
   12e64:	fff7869b          	addiw	a3,a5,-1
   12e68:	d5b6                	sw	a3,232(sp)
   12e6a:	0ffd7793          	zext.b	a5,s10
   12e6e:	4601                	li	a2,0
   12e70:	00e59663          	bne	a1,a4,12e7c <_vfprintf_r+0x14de>
   12e74:	27bd                	addiw	a5,a5,15
   12e76:	0ff7f793          	zext.b	a5,a5
   12e7a:	4605                	li	a2,1
   12e7c:	0ef10823          	sb	a5,240(sp)
   12e80:	02b00793          	li	a5,43
   12e84:	0006d763          	bgez	a3,12e92 <_vfprintf_r+0x14f4>
   12e88:	67a6                	ld	a5,72(sp)
   12e8a:	4685                	li	a3,1
   12e8c:	9e9d                	subw	a3,a3,a5
   12e8e:	02d00793          	li	a5,45
   12e92:	0ef108a3          	sb	a5,241(sp)
   12e96:	47a5                	li	a5,9
   12e98:	3cd7dc63          	bge	a5,a3,13270 <_vfprintf_r+0x18d2>
   12e9c:	0ff10e93          	addi	t4,sp,255
   12ea0:	8676                	mv	a2,t4
   12ea2:	45a9                	li	a1,10
   12ea4:	06300793          	li	a5,99
   12ea8:	02b6e73b          	remw	a4,a3,a1
   12eac:	88b2                	mv	a7,a2
   12eae:	8536                	mv	a0,a3
   12eb0:	167d                	addi	a2,a2,-1
   12eb2:	0307071b          	addiw	a4,a4,48
   12eb6:	fee88fa3          	sb	a4,-1(a7)
   12eba:	02b6c6bb          	divw	a3,a3,a1
   12ebe:	fea7c5e3          	blt	a5,a0,12ea8 <_vfprintf_r+0x150a>
   12ec2:	0306869b          	addiw	a3,a3,48
   12ec6:	0ff6f693          	zext.b	a3,a3
   12eca:	ffe88793          	addi	a5,a7,-2
   12ece:	fed60fa3          	sb	a3,-1(a2)
   12ed2:	55d7f763          	bgeu	a5,t4,13420 <_vfprintf_r+0x1a82>
   12ed6:	0f210713          	addi	a4,sp,242
   12eda:	a019                	j	12ee0 <_vfprintf_r+0x1542>
   12edc:	0007c683          	lbu	a3,0(a5)
   12ee0:	00d70023          	sb	a3,0(a4)
   12ee4:	0785                	addi	a5,a5,1
   12ee6:	0705                	addi	a4,a4,1
   12ee8:	ffd79ae3          	bne	a5,t4,12edc <_vfprintf_r+0x153e>
   12eec:	10110793          	addi	a5,sp,257
   12ef0:	0f210713          	addi	a4,sp,242
   12ef4:	411787b3          	sub	a5,a5,a7
   12ef8:	97ba                	add	a5,a5,a4
   12efa:	1998                	addi	a4,sp,240
   12efc:	9f99                	subw	a5,a5,a4
   12efe:	fcbe                	sd	a5,120(sp)
   12f00:	77e6                	ld	a5,120(sp)
   12f02:	7682                	ld	a3,32(sp)
   12f04:	4705                	li	a4,1
   12f06:	00f68bbb          	addw	s7,a3,a5
   12f0a:	87de                	mv	a5,s7
   12f0c:	3ed75063          	bge	a4,a3,132ec <_vfprintf_r+0x194e>
   12f10:	7726                	ld	a4,104(sp)
   12f12:	00e78bbb          	addw	s7,a5,a4
   12f16:	77aa                	ld	a5,168(sp)
   12f18:	fffbc993          	not	s3,s7
   12f1c:	43f9d993          	srai	s3,s3,0x3f
   12f20:	bff7f493          	andi	s1,a5,-1025
   12f24:	2481                	sext.w	s1,s1
   12f26:	013bf9b3          	and	s3,s7,s3
   12f2a:	1004e493          	ori	s1,s1,256
   12f2e:	2981                	sext.w	s3,s3
   12f30:	e882                	sd	zero,80(sp)
   12f32:	ec82                	sd	zero,88(sp)
   12f34:	e482                	sd	zero,72(sp)
   12f36:	bb11                	j	12c4a <_vfprintf_r+0x12ac>
   12f38:	67a2                	ld	a5,8(sp)
   12f3a:	8ca2                	mv	s9,s0
   12f3c:	00f71023          	sh	a5,0(a4)
   12f40:	d05fe06f          	j	11c44 <_vfprintf_r+0x2a6>
   12f44:	87ce                	mv	a5,s3
   12f46:	daffe06f          	j	11cf4 <_vfprintf_r+0x356>
   12f4a:	1982                	slli	s3,s3,0x20
   12f4c:	0209d993          	srli	s3,s3,0x20
   12f50:	e01fe06f          	j	11d50 <_vfprintf_r+0x3b2>
   12f54:	1982                	slli	s3,s3,0x20
   12f56:	0209d993          	srli	s3,s3,0x20
   12f5a:	b855                	j	1280e <_vfprintf_r+0xe70>
   12f5c:	1982                	slli	s3,s3,0x20
   12f5e:	0209d993          	srli	s3,s3,0x20
   12f62:	e83a                	sd	a4,16(sp)
   12f64:	4785                	li	a5,1
   12f66:	df5fe06f          	j	11d5a <_vfprintf_r+0x3bc>
   12f6a:	0a10                	addi	a2,sp,272
   12f6c:	85ca                	mv	a1,s2
   12f6e:	8552                	mv	a0,s4
   12f70:	511050ef          	jal	ra,18c80 <__sprint_r>
   12f74:	ce1fe06f          	j	11c54 <_vfprintf_r+0x2b6>
   12f78:	02d00793          	li	a5,45
   12f7c:	0cf10fa3          	sb	a5,223(sp)
   12f80:	b1ed                	j	12c6a <_vfprintf_r+0x12cc>
   12f82:	ec02                	sd	zero,24(sp)
   12f84:	84be                	mv	s1,a5
   12f86:	57fd                	li	a5,-1
   12f88:	17fe                	slli	a5,a5,0x3f
   12f8a:	00f9c9b3          	xor	s3,s3,a5
   12f8e:	02d00793          	li	a5,45
   12f92:	e5be                	sd	a5,200(sp)
   12f94:	b249                	j	12916 <_vfprintf_r+0xf78>
   12f96:	0a10                	addi	a2,sp,272
   12f98:	85ca                	mv	a1,s2
   12f9a:	8552                	mv	a0,s4
   12f9c:	4e5050ef          	jal	ra,18c80 <__sprint_r>
   12fa0:	c2051f63          	bnez	a0,123de <_vfprintf_r+0xa40>
   12fa4:	562e                	lw	a2,232(sp)
   12fa6:	7792                	ld	a5,288(sp)
   12fa8:	11812683          	lw	a3,280(sp)
   12fac:	835a                	mv	t1,s6
   12fae:	b6d5                	j	12b92 <_vfprintf_r+0x11f4>
   12fb0:	001c059b          	addiw	a1,s8,1
   12fb4:	8552                	mv	a0,s4
   12fb6:	ec1a                	sd	t1,24(sp)
   12fb8:	d21fd0ef          	jal	ra,10cd8 <_malloc_r>
   12fbc:	6362                	ld	t1,24(sp)
   12fbe:	8caa                	mv	s9,a0
   12fc0:	46050363          	beqz	a0,13426 <_vfprintf_r+0x1a88>
   12fc4:	ec2a                	sd	a0,24(sp)
   12fc6:	ba2d                	j	12900 <_vfprintf_r+0xf62>
   12fc8:	4601                	li	a2,0
   12fca:	4681                	li	a3,0
   12fcc:	855e                	mv	a0,s7
   12fce:	85ce                	mv	a1,s3
   12fd0:	f846                	sd	a7,48(sp)
   12fd2:	f01a                	sd	t1,32(sp)
   12fd4:	22c080ef          	jal	ra,1b200 <__eqtf2>
   12fd8:	7302                	ld	t1,32(sp)
   12fda:	78c2                	ld	a7,48(sp)
   12fdc:	9a0504e3          	beqz	a0,12984 <_vfprintf_r+0xfe6>
   12fe0:	4785                	li	a5,1
   12fe2:	41b7873b          	subw	a4,a5,s11
   12fe6:	d5ba                	sw	a4,232(sp)
   12fe8:	98ba                	add	a7,a7,a4
   12fea:	ba79                	j	12988 <_vfprintf_r+0xfea>
   12fec:	001c0d9b          	addiw	s11,s8,1
   12ff0:	4689                	li	a3,2
   12ff2:	ba91                	j	12946 <_vfprintf_r+0xfa8>
   12ff4:	8de2                	mv	s11,s8
   12ff6:	468d                	li	a3,3
   12ff8:	b2b9                	j	12946 <_vfprintf_r+0xfa8>
   12ffa:	85ce                	mv	a1,s3
   12ffc:	855e                	mv	a0,s7
   12ffe:	f81a                	sd	t1,48(sp)
   13000:	44a090ef          	jal	ra,1c44a <__trunctfdf2>
   13004:	11a8                	addi	a0,sp,232
   13006:	010040ef          	jal	ra,17016 <frexp>
   1300a:	37c090ef          	jal	ra,1c386 <__extenddftf2>
   1300e:	768a                	ld	a3,160(sp)
   13010:	4601                	li	a2,0
   13012:	3da080ef          	jal	ra,1b3ec <__multf3>
   13016:	4601                	li	a2,0
   13018:	4681                	li	a3,0
   1301a:	8baa                	mv	s7,a0
   1301c:	f02e                	sd	a1,32(sp)
   1301e:	1e2080ef          	jal	ra,1b200 <__eqtf2>
   13022:	7f82                	ld	t6,32(sp)
   13024:	7342                	ld	t1,48(sp)
   13026:	e119                	bnez	a0,1302c <_vfprintf_r+0x168e>
   13028:	4785                	li	a5,1
   1302a:	d5be                	sw	a5,232(sp)
   1302c:	67f1                	lui	a5,0x1c
   1302e:	74878793          	addi	a5,a5,1864 # 1c748 <__clzdi2+0xde>
   13032:	e4be                	sd	a5,72(sp)
   13034:	020c1793          	slli	a5,s8,0x20
   13038:	9381                	srli	a5,a5,0x20
   1303a:	0785                	addi	a5,a5,1
   1303c:	97e6                	add	a5,a5,s9
   1303e:	f93e                	sd	a5,176(sp)
   13040:	018c87bb          	addw	a5,s9,s8
   13044:	8de6                	mv	s11,s9
   13046:	c3be                	sw	a5,196(sp)
   13048:	a829                	j	13062 <_vfprintf_r+0x16c4>
   1304a:	4601                	li	a2,0
   1304c:	4681                	li	a3,0
   1304e:	f01a                	sd	t1,32(sp)
   13050:	fc2e                	sd	a1,56(sp)
   13052:	f82a                	sd	a0,48(sp)
   13054:	1ac080ef          	jal	ra,1b200 <__eqtf2>
   13058:	77e2                	ld	a5,56(sp)
   1305a:	7302                	ld	t1,32(sp)
   1305c:	88de                	mv	a7,s7
   1305e:	8fbe                	mv	t6,a5
   13060:	cd31                	beqz	a0,130bc <_vfprintf_r+0x171e>
   13062:	66ca                	ld	a3,144(sp)
   13064:	4601                	li	a2,0
   13066:	85fe                	mv	a1,t6
   13068:	855e                	mv	a0,s7
   1306a:	f81a                	sd	t1,48(sp)
   1306c:	380080ef          	jal	ra,1b3ec <__multf3>
   13070:	8bae                	mv	s7,a1
   13072:	f02a                	sd	a0,32(sp)
   13074:	22a090ef          	jal	ra,1c29e <__fixtfsi>
   13078:	0005099b          	sext.w	s3,a0
   1307c:	854e                	mv	a0,s3
   1307e:	2b2090ef          	jal	ra,1c330 <__floatsitf>
   13082:	7782                	ld	a5,32(sp)
   13084:	86ae                	mv	a3,a1
   13086:	862a                	mv	a2,a0
   13088:	85de                	mv	a1,s7
   1308a:	853e                	mv	a0,a5
   1308c:	18b080ef          	jal	ra,1ba16 <__subtf3>
   13090:	67a6                	ld	a5,72(sp)
   13092:	471e                	lw	a4,196(sp)
   13094:	fd6e                	sd	s11,184(sp)
   13096:	97ce                	add	a5,a5,s3
   13098:	0d85                	addi	s11,s11,1
   1309a:	0007c683          	lbu	a3,0(a5)
   1309e:	41b7073b          	subw	a4,a4,s11
   130a2:	e8ba                	sd	a4,80(sp)
   130a4:	774a                	ld	a4,176(sp)
   130a6:	fedd8fa3          	sb	a3,-1(s11)
   130aa:	e0ae                	sd	a1,64(sp)
   130ac:	7342                	ld	t1,48(sp)
   130ae:	87ae                	mv	a5,a1
   130b0:	88aa                	mv	a7,a0
   130b2:	8baa                	mv	s7,a0
   130b4:	f9b71be3          	bne	a4,s11,1304a <_vfprintf_r+0x16ac>
   130b8:	577d                	li	a4,-1
   130ba:	e8ba                	sd	a4,80(sp)
   130bc:	66ea                	ld	a3,152(sp)
   130be:	4601                	li	a2,0
   130c0:	8546                	mv	a0,a7
   130c2:	85be                	mv	a1,a5
   130c4:	f01a                	sd	t1,32(sp)
   130c6:	fc46                	sd	a7,56(sp)
   130c8:	f83e                	sd	a5,48(sp)
   130ca:	1d6080ef          	jal	ra,1b2a0 <__getf2>
   130ce:	7302                	ld	t1,32(sp)
   130d0:	1ca04463          	bgtz	a0,13298 <_vfprintf_r+0x18fa>
   130d4:	78e2                	ld	a7,56(sp)
   130d6:	77c2                	ld	a5,48(sp)
   130d8:	66ea                	ld	a3,152(sp)
   130da:	4601                	li	a2,0
   130dc:	8546                	mv	a0,a7
   130de:	85be                	mv	a1,a5
   130e0:	120080ef          	jal	ra,1b200 <__eqtf2>
   130e4:	7302                	ld	t1,32(sp)
   130e6:	e509                	bnez	a0,130f0 <_vfprintf_r+0x1752>
   130e8:	0019f993          	andi	s3,s3,1
   130ec:	1a099663          	bnez	s3,13298 <_vfprintf_r+0x18fa>
   130f0:	6746                	ld	a4,80(sp)
   130f2:	03000693          	li	a3,48
   130f6:	0017079b          	addiw	a5,a4,1
   130fa:	97ee                	add	a5,a5,s11
   130fc:	00074763          	bltz	a4,1310a <_vfprintf_r+0x176c>
   13100:	0d85                	addi	s11,s11,1
   13102:	fedd8fa3          	sb	a3,-1(s11)
   13106:	ffb79de3          	bne	a5,s11,13100 <_vfprintf_r+0x1762>
   1310a:	419d87bb          	subw	a5,s11,s9
   1310e:	f03e                	sd	a5,32(sp)
   13110:	b859                	j	129a6 <_vfprintf_r+0x1008>
   13112:	7702                	ld	a4,32(sp)
   13114:	9766                	add	a4,a4,s9
   13116:	c7877d63          	bgeu	a4,s8,12590 <_vfprintf_r+0xbf2>
   1311a:	8c3a                	mv	s8,a4
   1311c:	c74ff06f          	j	12590 <_vfprintf_r+0xbf2>
   13120:	0df14783          	lbu	a5,223(sp)
   13124:	4c01                	li	s8,0
   13126:	c399                	beqz	a5,1312c <_vfprintf_r+0x178e>
   13128:	c0dfe06f          	j	11d34 <_vfprintf_r+0x396>
   1312c:	a39fe06f          	j	11b64 <_vfprintf_r+0x1c6>
   13130:	77aa                	ld	a5,168(sp)
   13132:	01b508b3          	add	a7,a0,s11
   13136:	8b85                	andi	a5,a5,1
   13138:	840798e3          	bnez	a5,12988 <_vfprintf_r+0xfea>
   1313c:	76ee                	ld	a3,248(sp)
   1313e:	863ff06f          	j	129a0 <_vfprintf_r+0x1002>
   13142:	0a10                	addi	a2,sp,272
   13144:	85ca                	mv	a1,s2
   13146:	8552                	mv	a0,s4
   13148:	339050ef          	jal	ra,18c80 <__sprint_r>
   1314c:	a8051963          	bnez	a0,123de <_vfprintf_r+0xa40>
   13150:	7786                	ld	a5,96(sp)
   13152:	835a                	mv	t1,s6
   13154:	0007c603          	lbu	a2,0(a5)
   13158:	7792                	ld	a5,288(sp)
   1315a:	9c32                	add	s8,s8,a2
   1315c:	b6fd                	j	12d4a <_vfprintf_r+0x13ac>
   1315e:	02d00793          	li	a5,45
   13162:	0cf10fa3          	sb	a5,223(sp)
   13166:	ba71                	j	12b02 <_vfprintf_r+0x1164>
   13168:	0a10                	addi	a2,sp,272
   1316a:	85ca                	mv	a1,s2
   1316c:	8552                	mv	a0,s4
   1316e:	313050ef          	jal	ra,18c80 <__sprint_r>
   13172:	a6051663          	bnez	a0,123de <_vfprintf_r+0xa40>
   13176:	572e                	lw	a4,232(sp)
   13178:	7792                	ld	a5,288(sp)
   1317a:	835a                	mv	t1,s6
   1317c:	c4aff06f          	j	125c6 <_vfprintf_r+0xc28>
   13180:	0df14783          	lbu	a5,223(sp)
   13184:	e86e                	sd	s11,16(sp)
   13186:	e882                	sd	zero,80(sp)
   13188:	ec82                	sd	zero,88(sp)
   1318a:	e482                	sd	zero,72(sp)
   1318c:	89e2                	mv	s3,s8
   1318e:	8be2                	mv	s7,s8
   13190:	4c01                	li	s8,0
   13192:	c399                	beqz	a5,13198 <_vfprintf_r+0x17fa>
   13194:	ba1fe06f          	j	11d34 <_vfprintf_r+0x396>
   13198:	9cdfe06f          	j	11b64 <_vfprintf_r+0x1c6>
   1319c:	0a10                	addi	a2,sp,272
   1319e:	85ca                	mv	a1,s2
   131a0:	8552                	mv	a0,s4
   131a2:	2df050ef          	jal	ra,18c80 <__sprint_r>
   131a6:	a2051c63          	bnez	a0,123de <_vfprintf_r+0xa40>
   131aa:	56ae                	lw	a3,232(sp)
   131ac:	7702                	ld	a4,32(sp)
   131ae:	7792                	ld	a5,288(sp)
   131b0:	835a                	mv	t1,s6
   131b2:	40d706bb          	subw	a3,a4,a3
   131b6:	c4cff06f          	j	12602 <_vfprintf_r+0xc64>
   131ba:	6871                	lui	a6,0x1c
   131bc:	72080c93          	addi	s9,a6,1824 # 1c720 <__clzdi2+0xb6>
   131c0:	ba81                	j	12b10 <_vfprintf_r+0x1172>
   131c2:	68f5                	lui	a7,0x1d
   131c4:	5741                	li	a4,-16
   131c6:	40c00c3b          	negw	s8,a2
   131ca:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   131ce:	4bc1                	li	s7,16
   131d0:	4d1d                	li	s10,7
   131d2:	00e64663          	blt	a2,a4,131de <_vfprintf_r+0x1840>
   131d6:	a0ad                	j	13240 <_vfprintf_r+0x18a2>
   131d8:	3c41                	addiw	s8,s8,-16
   131da:	078bd363          	bge	s7,s8,13240 <_vfprintf_r+0x18a2>
   131de:	2685                	addiw	a3,a3,1
   131e0:	07c1                	addi	a5,a5,16
   131e2:	01b33023          	sd	s11,0(t1)
   131e6:	01733423          	sd	s7,8(t1)
   131ea:	f23e                	sd	a5,288(sp)
   131ec:	10d12c23          	sw	a3,280(sp)
   131f0:	0341                	addi	t1,t1,16
   131f2:	fedd53e3          	bge	s10,a3,131d8 <_vfprintf_r+0x183a>
   131f6:	0a10                	addi	a2,sp,272
   131f8:	85ca                	mv	a1,s2
   131fa:	8552                	mv	a0,s4
   131fc:	285050ef          	jal	ra,18c80 <__sprint_r>
   13200:	9c051f63          	bnez	a0,123de <_vfprintf_r+0xa40>
   13204:	7792                	ld	a5,288(sp)
   13206:	11812683          	lw	a3,280(sp)
   1320a:	835a                	mv	t1,s6
   1320c:	b7f1                	j	131d8 <_vfprintf_r+0x183a>
   1320e:	57fd                	li	a5,-1
   13210:	e43e                	sd	a5,8(sp)
   13212:	a51fe06f          	j	11c62 <_vfprintf_r+0x2c4>
   13216:	7702                	ld	a4,32(sp)
   13218:	77a6                	ld	a5,104(sp)
   1321a:	06700d13          	li	s10,103
   1321e:	00e78bbb          	addw	s7,a5,a4
   13222:	6726                	ld	a4,72(sp)
   13224:	fae04963          	bgtz	a4,129d6 <_vfprintf_r+0x1038>
   13228:	40eb87bb          	subw	a5,s7,a4
   1322c:	2785                	addiw	a5,a5,1
   1322e:	00078b9b          	sext.w	s7,a5
   13232:	fffbc713          	not	a4,s7
   13236:	977d                	srai	a4,a4,0x3f
   13238:	8ff9                	and	a5,a5,a4
   1323a:	0007899b          	sext.w	s3,a5
   1323e:	b421                	j	12c46 <_vfprintf_r+0x12a8>
   13240:	2685                	addiw	a3,a3,1
   13242:	97e2                	add	a5,a5,s8
   13244:	01b33023          	sd	s11,0(t1)
   13248:	01833423          	sd	s8,8(t1)
   1324c:	f23e                	sd	a5,288(sp)
   1324e:	10d12c23          	sw	a3,280(sp)
   13252:	471d                	li	a4,7
   13254:	84d75ce3          	bge	a4,a3,12aac <_vfprintf_r+0x110e>
   13258:	0a10                	addi	a2,sp,272
   1325a:	85ca                	mv	a1,s2
   1325c:	8552                	mv	a0,s4
   1325e:	223050ef          	jal	ra,18c80 <__sprint_r>
   13262:	96051e63          	bnez	a0,123de <_vfprintf_r+0xa40>
   13266:	7792                	ld	a5,288(sp)
   13268:	11812683          	lw	a3,280(sp)
   1326c:	835a                	mv	t1,s6
   1326e:	b225                	j	12b96 <_vfprintf_r+0x11f8>
   13270:	0f210713          	addi	a4,sp,242
   13274:	e619                	bnez	a2,13282 <_vfprintf_r+0x18e4>
   13276:	03000793          	li	a5,48
   1327a:	0ef10923          	sb	a5,242(sp)
   1327e:	0f310713          	addi	a4,sp,243
   13282:	0306879b          	addiw	a5,a3,48
   13286:	0c14                	addi	a3,sp,528
   13288:	40d706b3          	sub	a3,a4,a3
   1328c:	00f70023          	sb	a5,0(a4)
   13290:	1216879b          	addiw	a5,a3,289
   13294:	fcbe                	sd	a5,120(sp)
   13296:	b1ad                	j	12f00 <_vfprintf_r+0x1562>
   13298:	77ea                	ld	a5,184(sp)
   1329a:	fdbe                	sd	a5,248(sp)
   1329c:	67a6                	ld	a5,72(sp)
   1329e:	fffdc683          	lbu	a3,-1(s11)
   132a2:	00f7c603          	lbu	a2,15(a5)
   132a6:	87ee                	mv	a5,s11
   132a8:	00d61e63          	bne	a2,a3,132c4 <_vfprintf_r+0x1926>
   132ac:	03000593          	li	a1,48
   132b0:	feb78fa3          	sb	a1,-1(a5)
   132b4:	77ee                	ld	a5,248(sp)
   132b6:	fff78693          	addi	a3,a5,-1
   132ba:	fdb6                	sd	a3,248(sp)
   132bc:	fff7c683          	lbu	a3,-1(a5)
   132c0:	fed608e3          	beq	a2,a3,132b0 <_vfprintf_r+0x1912>
   132c4:	0016861b          	addiw	a2,a3,1
   132c8:	03900593          	li	a1,57
   132cc:	0ff67613          	zext.b	a2,a2
   132d0:	00b68563          	beq	a3,a1,132da <_vfprintf_r+0x193c>
   132d4:	fec78fa3          	sb	a2,-1(a5)
   132d8:	bd0d                	j	1310a <_vfprintf_r+0x176c>
   132da:	6726                	ld	a4,72(sp)
   132dc:	00a74603          	lbu	a2,10(a4)
   132e0:	fec78fa3          	sb	a2,-1(a5)
   132e4:	b51d                	j	1310a <_vfprintf_r+0x176c>
   132e6:	8da6                	mv	s11,s1
   132e8:	914ff06f          	j	123fc <_vfprintf_r+0xa5e>
   132ec:	772a                	ld	a4,168(sp)
   132ee:	8b05                	andi	a4,a4,1
   132f0:	c20703e3          	beqz	a4,12f16 <_vfprintf_r+0x1578>
   132f4:	b931                	j	12f10 <_vfprintf_r+0x1572>
   132f6:	000c0463          	beqz	s8,132fe <_vfprintf_r+0x1960>
   132fa:	b1bfe06f          	j	11e14 <_vfprintf_r+0x476>
   132fe:	4c05                	li	s8,1
   13300:	b15fe06f          	j	11e14 <_vfprintf_r+0x476>
   13304:	4c19                	li	s8,6
   13306:	b0ffe06f          	j	11e14 <_vfprintf_r+0x476>
   1330a:	c31c                	sw	a5,0(a4)
   1330c:	8ca2                	mv	s9,s0
   1330e:	937fe06f          	j	11c44 <_vfprintf_r+0x2a6>
   13312:	85ce                	mv	a1,s3
   13314:	855e                	mv	a0,s7
   13316:	f81a                	sd	t1,48(sp)
   13318:	132090ef          	jal	ra,1c44a <__trunctfdf2>
   1331c:	11a8                	addi	a0,sp,232
   1331e:	4f9030ef          	jal	ra,17016 <frexp>
   13322:	064090ef          	jal	ra,1c386 <__extenddftf2>
   13326:	768a                	ld	a3,160(sp)
   13328:	4601                	li	a2,0
   1332a:	0c2080ef          	jal	ra,1b3ec <__multf3>
   1332e:	4601                	li	a2,0
   13330:	4681                	li	a3,0
   13332:	8baa                	mv	s7,a0
   13334:	f02e                	sd	a1,32(sp)
   13336:	6cb070ef          	jal	ra,1b200 <__eqtf2>
   1333a:	7f82                	ld	t6,32(sp)
   1333c:	7342                	ld	t1,48(sp)
   1333e:	e119                	bnez	a0,13344 <_vfprintf_r+0x19a6>
   13340:	4785                	li	a5,1
   13342:	d5be                	sw	a5,232(sp)
   13344:	67f1                	lui	a5,0x1c
   13346:	73078793          	addi	a5,a5,1840 # 1c730 <__clzdi2+0xc6>
   1334a:	e4be                	sd	a5,72(sp)
   1334c:	b1e5                	j	13034 <_vfprintf_r+0x1696>
   1334e:	06700d13          	li	s10,103
   13352:	7786                	ld	a5,96(sp)
   13354:	0ff00713          	li	a4,255
   13358:	e882                	sd	zero,80(sp)
   1335a:	0007c783          	lbu	a5,0(a5)
   1335e:	ec82                	sd	zero,88(sp)
   13360:	02e78863          	beq	a5,a4,13390 <_vfprintf_r+0x19f2>
   13364:	0ff00693          	li	a3,255
   13368:	6626                	ld	a2,72(sp)
   1336a:	0007871b          	sext.w	a4,a5
   1336e:	02c7d163          	bge	a5,a2,13390 <_vfprintf_r+0x19f2>
   13372:	7586                	ld	a1,96(sp)
   13374:	40e6073b          	subw	a4,a2,a4
   13378:	e4ba                	sd	a4,72(sp)
   1337a:	0015c783          	lbu	a5,1(a1)
   1337e:	cb95                	beqz	a5,133b2 <_vfprintf_r+0x1a14>
   13380:	6766                	ld	a4,88(sp)
   13382:	2705                	addiw	a4,a4,1
   13384:	ecba                	sd	a4,88(sp)
   13386:	00158713          	addi	a4,a1,1
   1338a:	f0ba                	sd	a4,96(sp)
   1338c:	fcd79ee3          	bne	a5,a3,13368 <_vfprintf_r+0x19ca>
   13390:	6766                	ld	a4,88(sp)
   13392:	67c6                	ld	a5,80(sp)
   13394:	9fb9                	addw	a5,a5,a4
   13396:	670a                	ld	a4,128(sp)
   13398:	02e787bb          	mulw	a5,a5,a4
   1339c:	017787bb          	addw	a5,a5,s7
   133a0:	00078b9b          	sext.w	s7,a5
   133a4:	fffbc713          	not	a4,s7
   133a8:	977d                	srai	a4,a4,0x3f
   133aa:	8ff9                	and	a5,a5,a4
   133ac:	0007899b          	sext.w	s3,a5
   133b0:	b869                	j	12c4a <_vfprintf_r+0x12ac>
   133b2:	6746                	ld	a4,80(sp)
   133b4:	7786                	ld	a5,96(sp)
   133b6:	2705                	addiw	a4,a4,1
   133b8:	0007c783          	lbu	a5,0(a5)
   133bc:	e8ba                	sd	a4,80(sp)
   133be:	b7f9                	j	1338c <_vfprintf_r+0x19ee>
   133c0:	77a6                	ld	a5,104(sp)
   133c2:	06600d13          	li	s10,102
   133c6:	00e78bbb          	addw	s7,a5,a4
   133ca:	018b8bbb          	addw	s7,s7,s8
   133ce:	e08ff06f          	j	129d6 <_vfprintf_r+0x1038>
   133d2:	e799                	bnez	a5,133e0 <_vfprintf_r+0x1a42>
   133d4:	4985                	li	s3,1
   133d6:	06600d13          	li	s10,102
   133da:	4b85                	li	s7,1
   133dc:	86bff06f          	j	12c46 <_vfprintf_r+0x12a8>
   133e0:	77a6                	ld	a5,104(sp)
   133e2:	06600d13          	li	s10,102
   133e6:	2785                	addiw	a5,a5,1
   133e8:	018787bb          	addw	a5,a5,s8
   133ec:	00078b9b          	sext.w	s7,a5
   133f0:	fffbc713          	not	a4,s7
   133f4:	977d                	srai	a4,a4,0x3f
   133f6:	8ff9                	and	a5,a5,a4
   133f8:	0007899b          	sext.w	s3,a5
   133fc:	84bff06f          	j	12c46 <_vfprintf_r+0x12a8>
   13400:	66c2                	ld	a3,16(sp)
   13402:	4298                	lw	a4,0(a3)
   13404:	00868613          	addi	a2,a3,8
   13408:	86ba                	mv	a3,a4
   1340a:	00075363          	bgez	a4,13410 <_vfprintf_r+0x1a72>
   1340e:	56fd                	li	a3,-1
   13410:	00144e03          	lbu	t3,1(s0)
   13414:	00068c1b          	sext.w	s8,a3
   13418:	e832                	sd	a2,16(sp)
   1341a:	843e                	mv	s0,a5
   1341c:	ed2fe06f          	j	11aee <_vfprintf_r+0x150>
   13420:	4789                	li	a5,2
   13422:	fcbe                	sd	a5,120(sp)
   13424:	bcf1                	j	12f00 <_vfprintf_r+0x1562>
   13426:	01095783          	lhu	a5,16(s2)
   1342a:	0407e793          	ori	a5,a5,64
   1342e:	00f91823          	sh	a5,16(s2)
   13432:	823fe06f          	j	11c54 <_vfprintf_r+0x2b6>

0000000000013436 <vfprintf>:
   13436:	87aa                	mv	a5,a0
   13438:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   1343c:	86b2                	mv	a3,a2
   1343e:	862e                	mv	a2,a1
   13440:	85be                	mv	a1,a5
   13442:	d5cfe06f          	j	1199e <_vfprintf_r>

0000000000013446 <__sbprintf>:
   13446:	0105d783          	lhu	a5,16(a1)
   1344a:	0ac5ae03          	lw	t3,172(a1)
   1344e:	0125d303          	lhu	t1,18(a1)
   13452:	0305b883          	ld	a7,48(a1)
   13456:	0405b803          	ld	a6,64(a1)
   1345a:	b3010113          	addi	sp,sp,-1232
   1345e:	9bf5                	andi	a5,a5,-3
   13460:	40000713          	li	a4,1024
   13464:	4c813023          	sd	s0,1216(sp)
   13468:	00f11823          	sh	a5,16(sp)
   1346c:	842e                	mv	s0,a1
   1346e:	191c                	addi	a5,sp,176
   13470:	858a                	mv	a1,sp
   13472:	4a913c23          	sd	s1,1208(sp)
   13476:	4b213823          	sd	s2,1200(sp)
   1347a:	4c113423          	sd	ra,1224(sp)
   1347e:	892a                	mv	s2,a0
   13480:	d772                	sw	t3,172(sp)
   13482:	00611923          	sh	t1,18(sp)
   13486:	f846                	sd	a7,48(sp)
   13488:	e0c2                	sd	a6,64(sp)
   1348a:	e03e                	sd	a5,0(sp)
   1348c:	ec3e                	sd	a5,24(sp)
   1348e:	c63a                	sw	a4,12(sp)
   13490:	d03a                	sw	a4,32(sp)
   13492:	d402                	sw	zero,40(sp)
   13494:	d0afe0ef          	jal	ra,1199e <_vfprintf_r>
   13498:	84aa                	mv	s1,a0
   1349a:	02055963          	bgez	a0,134cc <__sbprintf+0x86>
   1349e:	01015783          	lhu	a5,16(sp)
   134a2:	0407f793          	andi	a5,a5,64
   134a6:	c799                	beqz	a5,134b4 <__sbprintf+0x6e>
   134a8:	01045783          	lhu	a5,16(s0)
   134ac:	0407e793          	ori	a5,a5,64
   134b0:	00f41823          	sh	a5,16(s0)
   134b4:	4c813083          	ld	ra,1224(sp)
   134b8:	4c013403          	ld	s0,1216(sp)
   134bc:	4b013903          	ld	s2,1200(sp)
   134c0:	8526                	mv	a0,s1
   134c2:	4b813483          	ld	s1,1208(sp)
   134c6:	4d010113          	addi	sp,sp,1232
   134ca:	8082                	ret
   134cc:	858a                	mv	a1,sp
   134ce:	854a                	mv	a0,s2
   134d0:	f99fc0ef          	jal	ra,10468 <_fflush_r>
   134d4:	d569                	beqz	a0,1349e <__sbprintf+0x58>
   134d6:	54fd                	li	s1,-1
   134d8:	b7d9                	j	1349e <__sbprintf+0x58>

00000000000134da <_write_r>:
   134da:	1101                	addi	sp,sp,-32
   134dc:	872e                	mv	a4,a1
   134de:	e822                	sd	s0,16(sp)
   134e0:	e426                	sd	s1,8(sp)
   134e2:	85b2                	mv	a1,a2
   134e4:	842a                	mv	s0,a0
   134e6:	8636                	mv	a2,a3
   134e8:	853a                	mv	a0,a4
   134ea:	ec06                	sd	ra,24(sp)
   134ec:	6801a423          	sw	zero,1672(gp) # 1f7a0 <errno>
   134f0:	48b070ef          	jal	ra,1b17a <_write>
   134f4:	57fd                	li	a5,-1
   134f6:	00f50763          	beq	a0,a5,13504 <_write_r+0x2a>
   134fa:	60e2                	ld	ra,24(sp)
   134fc:	6442                	ld	s0,16(sp)
   134fe:	64a2                	ld	s1,8(sp)
   13500:	6105                	addi	sp,sp,32
   13502:	8082                	ret
   13504:	6881a783          	lw	a5,1672(gp) # 1f7a0 <errno>
   13508:	dbed                	beqz	a5,134fa <_write_r+0x20>
   1350a:	60e2                	ld	ra,24(sp)
   1350c:	c01c                	sw	a5,0(s0)
   1350e:	6442                	ld	s0,16(sp)
   13510:	64a2                	ld	s1,8(sp)
   13512:	6105                	addi	sp,sp,32
   13514:	8082                	ret

0000000000013516 <__swsetup_r>:
   13516:	6481b783          	ld	a5,1608(gp) # 1f760 <_impure_ptr>
   1351a:	1101                	addi	sp,sp,-32
   1351c:	e822                	sd	s0,16(sp)
   1351e:	e426                	sd	s1,8(sp)
   13520:	ec06                	sd	ra,24(sp)
   13522:	84aa                	mv	s1,a0
   13524:	842e                	mv	s0,a1
   13526:	c399                	beqz	a5,1352c <__swsetup_r+0x16>
   13528:	4bb8                	lw	a4,80(a5)
   1352a:	cf21                	beqz	a4,13582 <__swsetup_r+0x6c>
   1352c:	01041703          	lh	a4,16(s0)
   13530:	03071793          	slli	a5,a4,0x30
   13534:	00877693          	andi	a3,a4,8
   13538:	93c1                	srli	a5,a5,0x30
   1353a:	ceb9                	beqz	a3,13598 <__swsetup_r+0x82>
   1353c:	6c14                	ld	a3,24(s0)
   1353e:	cabd                	beqz	a3,135b4 <__swsetup_r+0x9e>
   13540:	0017f613          	andi	a2,a5,1
   13544:	ce11                	beqz	a2,13560 <__swsetup_r+0x4a>
   13546:	5010                	lw	a2,32(s0)
   13548:	00042623          	sw	zero,12(s0)
   1354c:	4501                	li	a0,0
   1354e:	40c0063b          	negw	a2,a2
   13552:	d410                	sw	a2,40(s0)
   13554:	ce91                	beqz	a3,13570 <__swsetup_r+0x5a>
   13556:	60e2                	ld	ra,24(sp)
   13558:	6442                	ld	s0,16(sp)
   1355a:	64a2                	ld	s1,8(sp)
   1355c:	6105                	addi	sp,sp,32
   1355e:	8082                	ret
   13560:	0027f613          	andi	a2,a5,2
   13564:	4581                	li	a1,0
   13566:	e211                	bnez	a2,1356a <__swsetup_r+0x54>
   13568:	500c                	lw	a1,32(s0)
   1356a:	c44c                	sw	a1,12(s0)
   1356c:	4501                	li	a0,0
   1356e:	f6e5                	bnez	a3,13556 <__swsetup_r+0x40>
   13570:	0807f793          	andi	a5,a5,128
   13574:	d3ed                	beqz	a5,13556 <__swsetup_r+0x40>
   13576:	04076713          	ori	a4,a4,64
   1357a:	00e41823          	sh	a4,16(s0)
   1357e:	557d                	li	a0,-1
   13580:	bfd9                	j	13556 <__swsetup_r+0x40>
   13582:	853e                	mv	a0,a5
   13584:	a90fd0ef          	jal	ra,10814 <__sinit>
   13588:	01041703          	lh	a4,16(s0)
   1358c:	03071793          	slli	a5,a4,0x30
   13590:	00877693          	andi	a3,a4,8
   13594:	93c1                	srli	a5,a5,0x30
   13596:	f2dd                	bnez	a3,1353c <__swsetup_r+0x26>
   13598:	0107f693          	andi	a3,a5,16
   1359c:	c2ad                	beqz	a3,135fe <__swsetup_r+0xe8>
   1359e:	8b91                	andi	a5,a5,4
   135a0:	eb9d                	bnez	a5,135d6 <__swsetup_r+0xc0>
   135a2:	6c14                	ld	a3,24(s0)
   135a4:	00876713          	ori	a4,a4,8
   135a8:	03071793          	slli	a5,a4,0x30
   135ac:	00e41823          	sh	a4,16(s0)
   135b0:	93c1                	srli	a5,a5,0x30
   135b2:	f6d9                	bnez	a3,13540 <__swsetup_r+0x2a>
   135b4:	2807f613          	andi	a2,a5,640
   135b8:	20000593          	li	a1,512
   135bc:	f8b602e3          	beq	a2,a1,13540 <__swsetup_r+0x2a>
   135c0:	85a2                	mv	a1,s0
   135c2:	8526                	mv	a0,s1
   135c4:	602020ef          	jal	ra,15bc6 <__smakebuf_r>
   135c8:	01041703          	lh	a4,16(s0)
   135cc:	6c14                	ld	a3,24(s0)
   135ce:	03071793          	slli	a5,a4,0x30
   135d2:	93c1                	srli	a5,a5,0x30
   135d4:	b7b5                	j	13540 <__swsetup_r+0x2a>
   135d6:	6c2c                	ld	a1,88(s0)
   135d8:	cd81                	beqz	a1,135f0 <__swsetup_r+0xda>
   135da:	07440793          	addi	a5,s0,116
   135de:	00f58763          	beq	a1,a5,135ec <__swsetup_r+0xd6>
   135e2:	8526                	mv	a0,s1
   135e4:	b2cfd0ef          	jal	ra,10910 <_free_r>
   135e8:	01041703          	lh	a4,16(s0)
   135ec:	04043c23          	sd	zero,88(s0)
   135f0:	6c14                	ld	a3,24(s0)
   135f2:	fdb77713          	andi	a4,a4,-37
   135f6:	00042423          	sw	zero,8(s0)
   135fa:	e014                	sd	a3,0(s0)
   135fc:	b765                	j	135a4 <__swsetup_r+0x8e>
   135fe:	47a5                	li	a5,9
   13600:	c09c                	sw	a5,0(s1)
   13602:	04076713          	ori	a4,a4,64
   13606:	00e41823          	sh	a4,16(s0)
   1360a:	557d                	li	a0,-1
   1360c:	b7a9                	j	13556 <__swsetup_r+0x40>

000000000001360e <__call_exitprocs>:
   1360e:	715d                	addi	sp,sp,-80
   13610:	f052                	sd	s4,32(sp)
   13612:	6301ba03          	ld	s4,1584(gp) # 1f748 <_global_impure_ptr>
   13616:	f84a                	sd	s2,48(sp)
   13618:	e486                	sd	ra,72(sp)
   1361a:	1f8a3903          	ld	s2,504(s4)
   1361e:	e0a2                	sd	s0,64(sp)
   13620:	fc26                	sd	s1,56(sp)
   13622:	f44e                	sd	s3,40(sp)
   13624:	ec56                	sd	s5,24(sp)
   13626:	e85a                	sd	s6,16(sp)
   13628:	e45e                	sd	s7,8(sp)
   1362a:	e062                	sd	s8,0(sp)
   1362c:	02090863          	beqz	s2,1365c <__call_exitprocs+0x4e>
   13630:	8b2a                	mv	s6,a0
   13632:	8bae                	mv	s7,a1
   13634:	4a85                	li	s5,1
   13636:	59fd                	li	s3,-1
   13638:	00892483          	lw	s1,8(s2)
   1363c:	fff4841b          	addiw	s0,s1,-1
   13640:	00044e63          	bltz	s0,1365c <__call_exitprocs+0x4e>
   13644:	048e                	slli	s1,s1,0x3
   13646:	94ca                	add	s1,s1,s2
   13648:	020b8663          	beqz	s7,13674 <__call_exitprocs+0x66>
   1364c:	2084b783          	ld	a5,520(s1)
   13650:	03778263          	beq	a5,s7,13674 <__call_exitprocs+0x66>
   13654:	347d                	addiw	s0,s0,-1
   13656:	14e1                	addi	s1,s1,-8
   13658:	ff3418e3          	bne	s0,s3,13648 <__call_exitprocs+0x3a>
   1365c:	60a6                	ld	ra,72(sp)
   1365e:	6406                	ld	s0,64(sp)
   13660:	74e2                	ld	s1,56(sp)
   13662:	7942                	ld	s2,48(sp)
   13664:	79a2                	ld	s3,40(sp)
   13666:	7a02                	ld	s4,32(sp)
   13668:	6ae2                	ld	s5,24(sp)
   1366a:	6b42                	ld	s6,16(sp)
   1366c:	6ba2                	ld	s7,8(sp)
   1366e:	6c02                	ld	s8,0(sp)
   13670:	6161                	addi	sp,sp,80
   13672:	8082                	ret
   13674:	00892783          	lw	a5,8(s2)
   13678:	6498                	ld	a4,8(s1)
   1367a:	37fd                	addiw	a5,a5,-1
   1367c:	04878463          	beq	a5,s0,136c4 <__call_exitprocs+0xb6>
   13680:	0004b423          	sd	zero,8(s1)
   13684:	db61                	beqz	a4,13654 <__call_exitprocs+0x46>
   13686:	31092783          	lw	a5,784(s2)
   1368a:	008a96bb          	sllw	a3,s5,s0
   1368e:	00892c03          	lw	s8,8(s2)
   13692:	8ff5                	and	a5,a5,a3
   13694:	2781                	sext.w	a5,a5
   13696:	ef89                	bnez	a5,136b0 <__call_exitprocs+0xa2>
   13698:	9702                	jalr	a4
   1369a:	00892703          	lw	a4,8(s2)
   1369e:	1f8a3783          	ld	a5,504(s4)
   136a2:	01871463          	bne	a4,s8,136aa <__call_exitprocs+0x9c>
   136a6:	fb2787e3          	beq	a5,s2,13654 <__call_exitprocs+0x46>
   136aa:	dbcd                	beqz	a5,1365c <__call_exitprocs+0x4e>
   136ac:	893e                	mv	s2,a5
   136ae:	b769                	j	13638 <__call_exitprocs+0x2a>
   136b0:	31492783          	lw	a5,788(s2)
   136b4:	1084b583          	ld	a1,264(s1)
   136b8:	8ff5                	and	a5,a5,a3
   136ba:	2781                	sext.w	a5,a5
   136bc:	e799                	bnez	a5,136ca <__call_exitprocs+0xbc>
   136be:	855a                	mv	a0,s6
   136c0:	9702                	jalr	a4
   136c2:	bfe1                	j	1369a <__call_exitprocs+0x8c>
   136c4:	00892423          	sw	s0,8(s2)
   136c8:	bf75                	j	13684 <__call_exitprocs+0x76>
   136ca:	852e                	mv	a0,a1
   136cc:	9702                	jalr	a4
   136ce:	b7f1                	j	1369a <__call_exitprocs+0x8c>

00000000000136d0 <atexit>:
   136d0:	85aa                	mv	a1,a0
   136d2:	4681                	li	a3,0
   136d4:	4601                	li	a2,0
   136d6:	4501                	li	a0,0
   136d8:	29c0606f          	j	19974 <__register_exitproc>

00000000000136dc <_close_r>:
   136dc:	1101                	addi	sp,sp,-32
   136de:	e822                	sd	s0,16(sp)
   136e0:	e426                	sd	s1,8(sp)
   136e2:	842a                	mv	s0,a0
   136e4:	852e                	mv	a0,a1
   136e6:	ec06                	sd	ra,24(sp)
   136e8:	6801a423          	sw	zero,1672(gp) # 1f7a0 <errno>
   136ec:	11b070ef          	jal	ra,1b006 <_close>
   136f0:	57fd                	li	a5,-1
   136f2:	00f50763          	beq	a0,a5,13700 <_close_r+0x24>
   136f6:	60e2                	ld	ra,24(sp)
   136f8:	6442                	ld	s0,16(sp)
   136fa:	64a2                	ld	s1,8(sp)
   136fc:	6105                	addi	sp,sp,32
   136fe:	8082                	ret
   13700:	6881a783          	lw	a5,1672(gp) # 1f7a0 <errno>
   13704:	dbed                	beqz	a5,136f6 <_close_r+0x1a>
   13706:	60e2                	ld	ra,24(sp)
   13708:	c01c                	sw	a5,0(s0)
   1370a:	6442                	ld	s0,16(sp)
   1370c:	64a2                	ld	s1,8(sp)
   1370e:	6105                	addi	sp,sp,32
   13710:	8082                	ret

0000000000013712 <_fclose_r>:
   13712:	1101                	addi	sp,sp,-32
   13714:	ec06                	sd	ra,24(sp)
   13716:	e822                	sd	s0,16(sp)
   13718:	e426                	sd	s1,8(sp)
   1371a:	e04a                	sd	s2,0(sp)
   1371c:	c989                	beqz	a1,1372e <_fclose_r+0x1c>
   1371e:	842e                	mv	s0,a1
   13720:	84aa                	mv	s1,a0
   13722:	c119                	beqz	a0,13728 <_fclose_r+0x16>
   13724:	493c                	lw	a5,80(a0)
   13726:	cfa5                	beqz	a5,1379e <_fclose_r+0x8c>
   13728:	01041783          	lh	a5,16(s0)
   1372c:	eb89                	bnez	a5,1373e <_fclose_r+0x2c>
   1372e:	60e2                	ld	ra,24(sp)
   13730:	6442                	ld	s0,16(sp)
   13732:	4901                	li	s2,0
   13734:	64a2                	ld	s1,8(sp)
   13736:	854a                	mv	a0,s2
   13738:	6902                	ld	s2,0(sp)
   1373a:	6105                	addi	sp,sp,32
   1373c:	8082                	ret
   1373e:	85a2                	mv	a1,s0
   13740:	8526                	mv	a0,s1
   13742:	b95fc0ef          	jal	ra,102d6 <__sflush_r>
   13746:	683c                	ld	a5,80(s0)
   13748:	892a                	mv	s2,a0
   1374a:	c791                	beqz	a5,13756 <_fclose_r+0x44>
   1374c:	780c                	ld	a1,48(s0)
   1374e:	8526                	mv	a0,s1
   13750:	9782                	jalr	a5
   13752:	04054c63          	bltz	a0,137aa <_fclose_r+0x98>
   13756:	01045783          	lhu	a5,16(s0)
   1375a:	0807f793          	andi	a5,a5,128
   1375e:	efa1                	bnez	a5,137b6 <_fclose_r+0xa4>
   13760:	6c2c                	ld	a1,88(s0)
   13762:	c991                	beqz	a1,13776 <_fclose_r+0x64>
   13764:	07440793          	addi	a5,s0,116
   13768:	00f58563          	beq	a1,a5,13772 <_fclose_r+0x60>
   1376c:	8526                	mv	a0,s1
   1376e:	9a2fd0ef          	jal	ra,10910 <_free_r>
   13772:	04043c23          	sd	zero,88(s0)
   13776:	7c2c                	ld	a1,120(s0)
   13778:	c591                	beqz	a1,13784 <_fclose_r+0x72>
   1377a:	8526                	mv	a0,s1
   1377c:	994fd0ef          	jal	ra,10910 <_free_r>
   13780:	06043c23          	sd	zero,120(s0)
   13784:	898fd0ef          	jal	ra,1081c <__sfp_lock_acquire>
   13788:	00041823          	sh	zero,16(s0)
   1378c:	892fd0ef          	jal	ra,1081e <__sfp_lock_release>
   13790:	60e2                	ld	ra,24(sp)
   13792:	6442                	ld	s0,16(sp)
   13794:	64a2                	ld	s1,8(sp)
   13796:	854a                	mv	a0,s2
   13798:	6902                	ld	s2,0(sp)
   1379a:	6105                	addi	sp,sp,32
   1379c:	8082                	ret
   1379e:	876fd0ef          	jal	ra,10814 <__sinit>
   137a2:	01041783          	lh	a5,16(s0)
   137a6:	d7c1                	beqz	a5,1372e <_fclose_r+0x1c>
   137a8:	bf59                	j	1373e <_fclose_r+0x2c>
   137aa:	01045783          	lhu	a5,16(s0)
   137ae:	597d                	li	s2,-1
   137b0:	0807f793          	andi	a5,a5,128
   137b4:	d7d5                	beqz	a5,13760 <_fclose_r+0x4e>
   137b6:	6c0c                	ld	a1,24(s0)
   137b8:	8526                	mv	a0,s1
   137ba:	956fd0ef          	jal	ra,10910 <_free_r>
   137be:	b74d                	j	13760 <_fclose_r+0x4e>

00000000000137c0 <fclose>:
   137c0:	85aa                	mv	a1,a0
   137c2:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   137c6:	b7b1                	j	13712 <_fclose_r>

00000000000137c8 <__libc_fini_array>:
   137c8:	1101                	addi	sp,sp,-32
   137ca:	e822                	sd	s0,16(sp)
   137cc:	67f9                	lui	a5,0x1e
   137ce:	6479                	lui	s0,0x1e
   137d0:	61078793          	addi	a5,a5,1552 # 1e610 <__do_global_dtors_aux_fini_array_entry>
   137d4:	61840413          	addi	s0,s0,1560 # 1e618 <impure_data>
   137d8:	8c1d                	sub	s0,s0,a5
   137da:	e426                	sd	s1,8(sp)
   137dc:	ec06                	sd	ra,24(sp)
   137de:	40345493          	srai	s1,s0,0x3
   137e2:	c881                	beqz	s1,137f2 <__libc_fini_array+0x2a>
   137e4:	1461                	addi	s0,s0,-8
   137e6:	943e                	add	s0,s0,a5
   137e8:	601c                	ld	a5,0(s0)
   137ea:	14fd                	addi	s1,s1,-1
   137ec:	1461                	addi	s0,s0,-8
   137ee:	9782                	jalr	a5
   137f0:	fce5                	bnez	s1,137e8 <__libc_fini_array+0x20>
   137f2:	60e2                	ld	ra,24(sp)
   137f4:	6442                	ld	s0,16(sp)
   137f6:	64a2                	ld	s1,8(sp)
   137f8:	6105                	addi	sp,sp,32
   137fa:	8082                	ret

00000000000137fc <__sfvwrite_r>:
   137fc:	6a1c                	ld	a5,16(a2)
   137fe:	1a078b63          	beqz	a5,139b4 <__sfvwrite_r+0x1b8>
   13802:	0105d683          	lhu	a3,16(a1)
   13806:	711d                	addi	sp,sp,-96
   13808:	e8a2                	sd	s0,80(sp)
   1380a:	f852                	sd	s4,48(sp)
   1380c:	f456                	sd	s5,40(sp)
   1380e:	ec86                	sd	ra,88(sp)
   13810:	e4a6                	sd	s1,72(sp)
   13812:	e0ca                	sd	s2,64(sp)
   13814:	fc4e                	sd	s3,56(sp)
   13816:	f05a                	sd	s6,32(sp)
   13818:	ec5e                	sd	s7,24(sp)
   1381a:	e862                	sd	s8,16(sp)
   1381c:	e466                	sd	s9,8(sp)
   1381e:	e06a                	sd	s10,0(sp)
   13820:	0086f793          	andi	a5,a3,8
   13824:	8a32                	mv	s4,a2
   13826:	8aaa                	mv	s5,a0
   13828:	842e                	mv	s0,a1
   1382a:	cfb9                	beqz	a5,13888 <__sfvwrite_r+0x8c>
   1382c:	6d9c                	ld	a5,24(a1)
   1382e:	cfa9                	beqz	a5,13888 <__sfvwrite_r+0x8c>
   13830:	0026f793          	andi	a5,a3,2
   13834:	000a3903          	ld	s2,0(s4)
   13838:	c7ad                	beqz	a5,138a2 <__sfvwrite_r+0xa6>
   1383a:	603c                	ld	a5,64(s0)
   1383c:	780c                	ld	a1,48(s0)
   1383e:	80000b37          	lui	s6,0x80000
   13842:	4981                	li	s3,0
   13844:	4481                	li	s1,0
   13846:	c00b4b13          	xori	s6,s6,-1024
   1384a:	864e                	mv	a2,s3
   1384c:	8556                	mv	a0,s5
   1384e:	c49d                	beqz	s1,1387c <__sfvwrite_r+0x80>
   13850:	86a6                	mv	a3,s1
   13852:	009b7363          	bgeu	s6,s1,13858 <__sfvwrite_r+0x5c>
   13856:	86da                	mv	a3,s6
   13858:	2681                	sext.w	a3,a3
   1385a:	9782                	jalr	a5
   1385c:	14a05463          	blez	a0,139a4 <__sfvwrite_r+0x1a8>
   13860:	010a3783          	ld	a5,16(s4)
   13864:	99aa                	add	s3,s3,a0
   13866:	8c89                	sub	s1,s1,a0
   13868:	8f89                	sub	a5,a5,a0
   1386a:	00fa3823          	sd	a5,16(s4)
   1386e:	10078763          	beqz	a5,1397c <__sfvwrite_r+0x180>
   13872:	603c                	ld	a5,64(s0)
   13874:	780c                	ld	a1,48(s0)
   13876:	864e                	mv	a2,s3
   13878:	8556                	mv	a0,s5
   1387a:	f8f9                	bnez	s1,13850 <__sfvwrite_r+0x54>
   1387c:	00093983          	ld	s3,0(s2)
   13880:	00893483          	ld	s1,8(s2)
   13884:	0941                	addi	s2,s2,16
   13886:	b7d1                	j	1384a <__sfvwrite_r+0x4e>
   13888:	85a2                	mv	a1,s0
   1388a:	8556                	mv	a0,s5
   1388c:	c8bff0ef          	jal	ra,13516 <__swsetup_r>
   13890:	28051b63          	bnez	a0,13b26 <__sfvwrite_r+0x32a>
   13894:	01045683          	lhu	a3,16(s0)
   13898:	000a3903          	ld	s2,0(s4)
   1389c:	0026f793          	andi	a5,a3,2
   138a0:	ffc9                	bnez	a5,1383a <__sfvwrite_r+0x3e>
   138a2:	0016f793          	andi	a5,a3,1
   138a6:	ebbd                	bnez	a5,1391c <__sfvwrite_r+0x120>
   138a8:	4444                	lw	s1,12(s0)
   138aa:	601c                	ld	a5,0(s0)
   138ac:	80000b37          	lui	s6,0x80000
   138b0:	ffeb4b93          	xori	s7,s6,-2
   138b4:	4c01                	li	s8,0
   138b6:	4981                	li	s3,0
   138b8:	fffb4b13          	not	s6,s6
   138bc:	853e                	mv	a0,a5
   138be:	8ca6                	mv	s9,s1
   138c0:	04098863          	beqz	s3,13910 <__sfvwrite_r+0x114>
   138c4:	2006f713          	andi	a4,a3,512
   138c8:	12070a63          	beqz	a4,139fc <__sfvwrite_r+0x200>
   138cc:	8d26                	mv	s10,s1
   138ce:	1899f863          	bgeu	s3,s1,13a5e <__sfvwrite_r+0x262>
   138d2:	8cce                	mv	s9,s3
   138d4:	8d4e                	mv	s10,s3
   138d6:	866a                	mv	a2,s10
   138d8:	85e2                	mv	a1,s8
   138da:	48a020ef          	jal	ra,15d64 <memmove>
   138de:	4458                	lw	a4,12(s0)
   138e0:	601c                	ld	a5,0(s0)
   138e2:	84ce                	mv	s1,s3
   138e4:	4197073b          	subw	a4,a4,s9
   138e8:	9d3e                	add	s10,s10,a5
   138ea:	c458                	sw	a4,12(s0)
   138ec:	01a43023          	sd	s10,0(s0)
   138f0:	4981                	li	s3,0
   138f2:	010a3783          	ld	a5,16(s4)
   138f6:	9c26                	add	s8,s8,s1
   138f8:	8f85                	sub	a5,a5,s1
   138fa:	00fa3823          	sd	a5,16(s4)
   138fe:	cfbd                	beqz	a5,1397c <__sfvwrite_r+0x180>
   13900:	4444                	lw	s1,12(s0)
   13902:	601c                	ld	a5,0(s0)
   13904:	01045683          	lhu	a3,16(s0)
   13908:	8ca6                	mv	s9,s1
   1390a:	853e                	mv	a0,a5
   1390c:	fa099ce3          	bnez	s3,138c4 <__sfvwrite_r+0xc8>
   13910:	00093c03          	ld	s8,0(s2)
   13914:	00893983          	ld	s3,8(s2)
   13918:	0941                	addi	s2,s2,16
   1391a:	b74d                	j	138bc <__sfvwrite_r+0xc0>
   1391c:	4b81                	li	s7,0
   1391e:	4501                	li	a0,0
   13920:	4c81                	li	s9,0
   13922:	4c01                	li	s8,0
   13924:	080c0a63          	beqz	s8,139b8 <__sfvwrite_r+0x1bc>
   13928:	c145                	beqz	a0,139c8 <__sfvwrite_r+0x1cc>
   1392a:	8b5e                	mv	s6,s7
   1392c:	017c7363          	bgeu	s8,s7,13932 <__sfvwrite_r+0x136>
   13930:	8b62                	mv	s6,s8
   13932:	6008                	ld	a0,0(s0)
   13934:	6c18                	ld	a4,24(s0)
   13936:	445c                	lw	a5,12(s0)
   13938:	5014                	lw	a3,32(s0)
   1393a:	84da                	mv	s1,s6
   1393c:	00a77663          	bgeu	a4,a0,13948 <__sfvwrite_r+0x14c>
   13940:	00d789bb          	addw	s3,a5,a3
   13944:	0969cd63          	blt	s3,s6,139de <__sfvwrite_r+0x1e2>
   13948:	18db4663          	blt	s6,a3,13ad4 <__sfvwrite_r+0x2d8>
   1394c:	603c                	ld	a5,64(s0)
   1394e:	780c                	ld	a1,48(s0)
   13950:	8666                	mv	a2,s9
   13952:	8556                	mv	a0,s5
   13954:	9782                	jalr	a5
   13956:	84aa                	mv	s1,a0
   13958:	04a05663          	blez	a0,139a4 <__sfvwrite_r+0x1a8>
   1395c:	0005079b          	sext.w	a5,a0
   13960:	40fb8bbb          	subw	s7,s7,a5
   13964:	4505                	li	a0,1
   13966:	020b8a63          	beqz	s7,1399a <__sfvwrite_r+0x19e>
   1396a:	010a3783          	ld	a5,16(s4)
   1396e:	9ca6                	add	s9,s9,s1
   13970:	409c0c33          	sub	s8,s8,s1
   13974:	8f85                	sub	a5,a5,s1
   13976:	00fa3823          	sd	a5,16(s4)
   1397a:	f7cd                	bnez	a5,13924 <__sfvwrite_r+0x128>
   1397c:	4501                	li	a0,0
   1397e:	60e6                	ld	ra,88(sp)
   13980:	6446                	ld	s0,80(sp)
   13982:	64a6                	ld	s1,72(sp)
   13984:	6906                	ld	s2,64(sp)
   13986:	79e2                	ld	s3,56(sp)
   13988:	7a42                	ld	s4,48(sp)
   1398a:	7aa2                	ld	s5,40(sp)
   1398c:	7b02                	ld	s6,32(sp)
   1398e:	6be2                	ld	s7,24(sp)
   13990:	6c42                	ld	s8,16(sp)
   13992:	6ca2                	ld	s9,8(sp)
   13994:	6d02                	ld	s10,0(sp)
   13996:	6125                	addi	sp,sp,96
   13998:	8082                	ret
   1399a:	85a2                	mv	a1,s0
   1399c:	8556                	mv	a0,s5
   1399e:	acbfc0ef          	jal	ra,10468 <_fflush_r>
   139a2:	d561                	beqz	a0,1396a <__sfvwrite_r+0x16e>
   139a4:	01041783          	lh	a5,16(s0)
   139a8:	0407e793          	ori	a5,a5,64
   139ac:	00f41823          	sh	a5,16(s0)
   139b0:	557d                	li	a0,-1
   139b2:	b7f1                	j	1397e <__sfvwrite_r+0x182>
   139b4:	4501                	li	a0,0
   139b6:	8082                	ret
   139b8:	00893c03          	ld	s8,8(s2)
   139bc:	87ca                	mv	a5,s2
   139be:	0941                	addi	s2,s2,16
   139c0:	fe0c0ce3          	beqz	s8,139b8 <__sfvwrite_r+0x1bc>
   139c4:	0007bc83          	ld	s9,0(a5)
   139c8:	8662                	mv	a2,s8
   139ca:	45a9                	li	a1,10
   139cc:	8566                	mv	a0,s9
   139ce:	923fd0ef          	jal	ra,112f0 <memchr>
   139d2:	14050163          	beqz	a0,13b14 <__sfvwrite_r+0x318>
   139d6:	0505                	addi	a0,a0,1
   139d8:	41950bbb          	subw	s7,a0,s9
   139dc:	b7b9                	j	1392a <__sfvwrite_r+0x12e>
   139de:	85e6                	mv	a1,s9
   139e0:	864e                	mv	a2,s3
   139e2:	382020ef          	jal	ra,15d64 <memmove>
   139e6:	601c                	ld	a5,0(s0)
   139e8:	85a2                	mv	a1,s0
   139ea:	8556                	mv	a0,s5
   139ec:	97ce                	add	a5,a5,s3
   139ee:	e01c                	sd	a5,0(s0)
   139f0:	a79fc0ef          	jal	ra,10468 <_fflush_r>
   139f4:	f945                	bnez	a0,139a4 <__sfvwrite_r+0x1a8>
   139f6:	87ce                	mv	a5,s3
   139f8:	84ce                	mv	s1,s3
   139fa:	b79d                	j	13960 <__sfvwrite_r+0x164>
   139fc:	6c18                	ld	a4,24(s0)
   139fe:	02f76863          	bltu	a4,a5,13a2e <__sfvwrite_r+0x232>
   13a02:	5018                	lw	a4,32(s0)
   13a04:	02e9e563          	bltu	s3,a4,13a2e <__sfvwrite_r+0x232>
   13a08:	86ce                	mv	a3,s3
   13a0a:	013bf363          	bgeu	s7,s3,13a10 <__sfvwrite_r+0x214>
   13a0e:	86da                	mv	a3,s6
   13a10:	02e6c6bb          	divw	a3,a3,a4
   13a14:	603c                	ld	a5,64(s0)
   13a16:	780c                	ld	a1,48(s0)
   13a18:	8662                	mv	a2,s8
   13a1a:	8556                	mv	a0,s5
   13a1c:	02e686bb          	mulw	a3,a3,a4
   13a20:	9782                	jalr	a5
   13a22:	84aa                	mv	s1,a0
   13a24:	f8a050e3          	blez	a0,139a4 <__sfvwrite_r+0x1a8>
   13a28:	409989b3          	sub	s3,s3,s1
   13a2c:	b5d9                	j	138f2 <__sfvwrite_r+0xf6>
   13a2e:	0099f363          	bgeu	s3,s1,13a34 <__sfvwrite_r+0x238>
   13a32:	84ce                	mv	s1,s3
   13a34:	853e                	mv	a0,a5
   13a36:	8626                	mv	a2,s1
   13a38:	85e2                	mv	a1,s8
   13a3a:	32a020ef          	jal	ra,15d64 <memmove>
   13a3e:	4458                	lw	a4,12(s0)
   13a40:	601c                	ld	a5,0(s0)
   13a42:	409706bb          	subw	a3,a4,s1
   13a46:	97a6                	add	a5,a5,s1
   13a48:	c454                	sw	a3,12(s0)
   13a4a:	e01c                	sd	a5,0(s0)
   13a4c:	fef1                	bnez	a3,13a28 <__sfvwrite_r+0x22c>
   13a4e:	85a2                	mv	a1,s0
   13a50:	8556                	mv	a0,s5
   13a52:	a17fc0ef          	jal	ra,10468 <_fflush_r>
   13a56:	f539                	bnez	a0,139a4 <__sfvwrite_r+0x1a8>
   13a58:	409989b3          	sub	s3,s3,s1
   13a5c:	bd59                	j	138f2 <__sfvwrite_r+0xf6>
   13a5e:	4806f713          	andi	a4,a3,1152
   13a62:	e6070ae3          	beqz	a4,138d6 <__sfvwrite_r+0xda>
   13a66:	5010                	lw	a2,32(s0)
   13a68:	6c0c                	ld	a1,24(s0)
   13a6a:	0016171b          	slliw	a4,a2,0x1
   13a6e:	9f31                	addw	a4,a4,a2
   13a70:	8f8d                	sub	a5,a5,a1
   13a72:	01f7549b          	srliw	s1,a4,0x1f
   13a76:	00078d1b          	sext.w	s10,a5
   13a7a:	9cb9                	addw	s1,s1,a4
   13a7c:	001d0713          	addi	a4,s10,1
   13a80:	4014d49b          	sraiw	s1,s1,0x1
   13a84:	974e                	add	a4,a4,s3
   13a86:	00e4f663          	bgeu	s1,a4,13a92 <__sfvwrite_r+0x296>
   13a8a:	0017871b          	addiw	a4,a5,1
   13a8e:	013704bb          	addw	s1,a4,s3
   13a92:	4006f693          	andi	a3,a3,1024
   13a96:	cea9                	beqz	a3,13af0 <__sfvwrite_r+0x2f4>
   13a98:	85a6                	mv	a1,s1
   13a9a:	8556                	mv	a0,s5
   13a9c:	a3cfd0ef          	jal	ra,10cd8 <_malloc_r>
   13aa0:	8caa                	mv	s9,a0
   13aa2:	cd25                	beqz	a0,13b1a <__sfvwrite_r+0x31e>
   13aa4:	6c0c                	ld	a1,24(s0)
   13aa6:	866a                	mv	a2,s10
   13aa8:	8d7fd0ef          	jal	ra,1137e <memcpy>
   13aac:	01045783          	lhu	a5,16(s0)
   13ab0:	b7f7f793          	andi	a5,a5,-1153
   13ab4:	0807e793          	ori	a5,a5,128
   13ab8:	00f41823          	sh	a5,16(s0)
   13abc:	01ac8533          	add	a0,s9,s10
   13ac0:	41a487bb          	subw	a5,s1,s10
   13ac4:	01943c23          	sd	s9,24(s0)
   13ac8:	e008                	sd	a0,0(s0)
   13aca:	d004                	sw	s1,32(s0)
   13acc:	8cce                	mv	s9,s3
   13ace:	c45c                	sw	a5,12(s0)
   13ad0:	8d4e                	mv	s10,s3
   13ad2:	b511                	j	138d6 <__sfvwrite_r+0xda>
   13ad4:	865a                	mv	a2,s6
   13ad6:	85e6                	mv	a1,s9
   13ad8:	28c020ef          	jal	ra,15d64 <memmove>
   13adc:	4454                	lw	a3,12(s0)
   13ade:	6018                	ld	a4,0(s0)
   13ae0:	000b079b          	sext.w	a5,s6
   13ae4:	416686bb          	subw	a3,a3,s6
   13ae8:	975a                	add	a4,a4,s6
   13aea:	c454                	sw	a3,12(s0)
   13aec:	e018                	sd	a4,0(s0)
   13aee:	bd8d                	j	13960 <__sfvwrite_r+0x164>
   13af0:	8626                	mv	a2,s1
   13af2:	8556                	mv	a0,s5
   13af4:	028030ef          	jal	ra,16b1c <_realloc_r>
   13af8:	8caa                	mv	s9,a0
   13afa:	f169                	bnez	a0,13abc <__sfvwrite_r+0x2c0>
   13afc:	6c0c                	ld	a1,24(s0)
   13afe:	8556                	mv	a0,s5
   13b00:	e11fc0ef          	jal	ra,10910 <_free_r>
   13b04:	01041783          	lh	a5,16(s0)
   13b08:	4731                	li	a4,12
   13b0a:	00eaa023          	sw	a4,0(s5)
   13b0e:	f7f7f793          	andi	a5,a5,-129
   13b12:	bd59                	j	139a8 <__sfvwrite_r+0x1ac>
   13b14:	001c0b9b          	addiw	s7,s8,1
   13b18:	bd09                	j	1392a <__sfvwrite_r+0x12e>
   13b1a:	4731                	li	a4,12
   13b1c:	01041783          	lh	a5,16(s0)
   13b20:	00eaa023          	sw	a4,0(s5)
   13b24:	b551                	j	139a8 <__sfvwrite_r+0x1ac>
   13b26:	557d                	li	a0,-1
   13b28:	bd99                	j	1397e <__sfvwrite_r+0x182>

0000000000013b2a <eshdn1>:
   13b2a:	00450693          	addi	a3,a0,4
   13b2e:	4781                	li	a5,0
   13b30:	0569                	addi	a0,a0,26
   13b32:	7861                	lui	a6,0xffff8
   13b34:	a811                	j	13b48 <eshdn1+0x1e>
   13b36:	0017979b          	slliw	a5,a5,0x1
   13b3a:	00e69023          	sh	a4,0(a3)
   13b3e:	17c2                	slli	a5,a5,0x30
   13b40:	0689                	addi	a3,a3,2
   13b42:	93c1                	srli	a5,a5,0x30
   13b44:	02d50863          	beq	a0,a3,13b74 <eshdn1+0x4a>
   13b48:	0006d703          	lhu	a4,0(a3)
   13b4c:	00177613          	andi	a2,a4,1
   13b50:	c219                	beqz	a2,13b56 <eshdn1+0x2c>
   13b52:	0017e793          	ori	a5,a5,1
   13b56:	8305                	srli	a4,a4,0x1
   13b58:	0027f613          	andi	a2,a5,2
   13b5c:	010765b3          	or	a1,a4,a6
   13b60:	da79                	beqz	a2,13b36 <eshdn1+0xc>
   13b62:	0017979b          	slliw	a5,a5,0x1
   13b66:	00b69023          	sh	a1,0(a3)
   13b6a:	17c2                	slli	a5,a5,0x30
   13b6c:	0689                	addi	a3,a3,2
   13b6e:	93c1                	srli	a5,a5,0x30
   13b70:	fcd51ce3          	bne	a0,a3,13b48 <eshdn1+0x1e>
   13b74:	8082                	ret

0000000000013b76 <eshup1>:
   13b76:	01850693          	addi	a3,a0,24
   13b7a:	4701                	li	a4,0
   13b7c:	0509                	addi	a0,a0,2
   13b7e:	a811                	j	13b92 <eshup1+0x1c>
   13b80:	0017171b          	slliw	a4,a4,0x1
   13b84:	00f69023          	sh	a5,0(a3)
   13b88:	1742                	slli	a4,a4,0x30
   13b8a:	16f9                	addi	a3,a3,-2
   13b8c:	9341                	srli	a4,a4,0x30
   13b8e:	02d50b63          	beq	a0,a3,13bc4 <eshup1+0x4e>
   13b92:	0006d783          	lhu	a5,0(a3)
   13b96:	00f7d613          	srli	a2,a5,0xf
   13b9a:	0017979b          	slliw	a5,a5,0x1
   13b9e:	c219                	beqz	a2,13ba4 <eshup1+0x2e>
   13ba0:	00176713          	ori	a4,a4,1
   13ba4:	17c2                	slli	a5,a5,0x30
   13ba6:	93c1                	srli	a5,a5,0x30
   13ba8:	00277613          	andi	a2,a4,2
   13bac:	0017e593          	ori	a1,a5,1
   13bb0:	da61                	beqz	a2,13b80 <eshup1+0xa>
   13bb2:	0017171b          	slliw	a4,a4,0x1
   13bb6:	00b69023          	sh	a1,0(a3)
   13bba:	1742                	slli	a4,a4,0x30
   13bbc:	16f9                	addi	a3,a3,-2
   13bbe:	9341                	srli	a4,a4,0x30
   13bc0:	fcd519e3          	bne	a0,a3,13b92 <eshup1+0x1c>
   13bc4:	8082                	ret

0000000000013bc6 <m16m>:
   13bc6:	1101                	addi	sp,sp,-32
   13bc8:	6e41                	lui	t3,0x10
   13bca:	00011b23          	sh	zero,22(sp)
   13bce:	00011c23          	sh	zero,24(sp)
   13bd2:	05e1                	addi	a1,a1,24
   13bd4:	083c                	addi	a5,sp,24
   13bd6:	00410813          	addi	a6,sp,4
   13bda:	1e7d                	addi	t3,t3,-1 # ffff <exit-0xe9>
   13bdc:	0005d703          	lhu	a4,0(a1)
   13be0:	17f9                	addi	a5,a5,-2
   13be2:	15f9                	addi	a1,a1,-2
   13be4:	c705                	beqz	a4,13c0c <m16m+0x46>
   13be6:	02a70733          	mul	a4,a4,a0
   13bea:	0027d883          	lhu	a7,2(a5)
   13bee:	0007d303          	lhu	t1,0(a5)
   13bf2:	01c776b3          	and	a3,a4,t3
   13bf6:	96c6                	add	a3,a3,a7
   13bf8:	8341                	srli	a4,a4,0x10
   13bfa:	0106d893          	srli	a7,a3,0x10
   13bfe:	971a                	add	a4,a4,t1
   13c00:	9746                	add	a4,a4,a7
   13c02:	00e79023          	sh	a4,0(a5)
   13c06:	00d79123          	sh	a3,2(a5)
   13c0a:	8341                	srli	a4,a4,0x10
   13c0c:	fee79f23          	sh	a4,-2(a5)
   13c10:	fd0796e3          	bne	a5,a6,13bdc <m16m+0x16>
   13c14:	0611                	addi	a2,a2,4
   13c16:	01a10693          	addi	a3,sp,26
   13c1a:	0007d703          	lhu	a4,0(a5)
   13c1e:	0789                	addi	a5,a5,2
   13c20:	0609                	addi	a2,a2,2
   13c22:	fee61f23          	sh	a4,-2(a2)
   13c26:	fed79ae3          	bne	a5,a3,13c1a <m16m+0x54>
   13c2a:	6105                	addi	sp,sp,32
   13c2c:	8082                	ret

0000000000013c2e <emovo.constprop.0>:
   13c2e:	00055703          	lhu	a4,0(a0)
   13c32:	00255783          	lhu	a5,2(a0)
   13c36:	c319                	beqz	a4,13c3c <emovo.constprop.0+0xe>
   13c38:	6721                	lui	a4,0x8
   13c3a:	8fd9                	or	a5,a5,a4
   13c3c:	00f59923          	sh	a5,18(a1)
   13c40:	00255703          	lhu	a4,2(a0)
   13c44:	67a1                	lui	a5,0x8
   13c46:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13c48:	00f70f63          	beq	a4,a5,13c66 <emovo.constprop.0+0x38>
   13c4c:	00650793          	addi	a5,a0,6
   13c50:	05c1                	addi	a1,a1,16
   13c52:	0561                	addi	a0,a0,24
   13c54:	0007d703          	lhu	a4,0(a5)
   13c58:	0789                	addi	a5,a5,2
   13c5a:	15f9                	addi	a1,a1,-2
   13c5c:	00e59123          	sh	a4,2(a1)
   13c60:	fea79ae3          	bne	a5,a0,13c54 <emovo.constprop.0+0x26>
   13c64:	8082                	ret
   13c66:	00650793          	addi	a5,a0,6
   13c6a:	0569                	addi	a0,a0,26
   13c6c:	0007d703          	lhu	a4,0(a5)
   13c70:	0789                	addi	a5,a5,2
   13c72:	e31d                	bnez	a4,13c98 <emovo.constprop.0+0x6a>
   13c74:	fea79ce3          	bne	a5,a0,13c6c <emovo.constprop.0+0x3e>
   13c78:	01258713          	addi	a4,a1,18
   13c7c:	87ae                	mv	a5,a1
   13c7e:	0789                	addi	a5,a5,2
   13c80:	fe079f23          	sh	zero,-2(a5)
   13c84:	fef71de3          	bne	a4,a5,13c7e <emovo.constprop.0+0x50>
   13c88:	0125d783          	lhu	a5,18(a1)
   13c8c:	6721                	lui	a4,0x8
   13c8e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   13c90:	8fd9                	or	a5,a5,a4
   13c92:	00f59923          	sh	a5,18(a1)
   13c96:	8082                	ret
   13c98:	01058713          	addi	a4,a1,16
   13c9c:	87ae                	mv	a5,a1
   13c9e:	0789                	addi	a5,a5,2
   13ca0:	fe079f23          	sh	zero,-2(a5)
   13ca4:	fef71de3          	bne	a4,a5,13c9e <emovo.constprop.0+0x70>
   13ca8:	77f1                	lui	a5,0xffffc
   13caa:	00f59823          	sh	a5,16(a1)
   13cae:	77e1                	lui	a5,0xffff8
   13cb0:	fff7c793          	not	a5,a5
   13cb4:	00f59923          	sh	a5,18(a1)
   13cb8:	8082                	ret

0000000000013cba <enormlz>:
   13cba:	00455783          	lhu	a5,4(a0)
   13cbe:	1101                	addi	sp,sp,-32
   13cc0:	e426                	sd	s1,8(sp)
   13cc2:	ec06                	sd	ra,24(sp)
   13cc4:	e822                	sd	s0,16(sp)
   13cc6:	e04a                	sd	s2,0(sp)
   13cc8:	84aa                	mv	s1,a0
   13cca:	efc9                	bnez	a5,13d64 <enormlz+0xaa>
   13ccc:	00655703          	lhu	a4,6(a0)
   13cd0:	4401                	li	s0,0
   13cd2:	00f75793          	srli	a5,a4,0xf
   13cd6:	e3c1                	bnez	a5,13d56 <enormlz+0x9c>
   13cd8:	01a50693          	addi	a3,a0,26
   13cdc:	0a000613          	li	a2,160
   13ce0:	e31d                	bnez	a4,13d06 <enormlz+0x4c>
   13ce2:	00648793          	addi	a5,s1,6
   13ce6:	a019                	j	13cec <enormlz+0x32>
   13ce8:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd86e8>
   13cec:	0789                	addi	a5,a5,2
   13cee:	fee79e23          	sh	a4,-4(a5)
   13cf2:	fed79be3          	bne	a5,a3,13ce8 <enormlz+0x2e>
   13cf6:	00049c23          	sh	zero,24(s1)
   13cfa:	2441                	addiw	s0,s0,16
   13cfc:	04c40d63          	beq	s0,a2,13d56 <enormlz+0x9c>
   13d00:	0064d703          	lhu	a4,6(s1)
   13d04:	df79                	beqz	a4,13ce2 <enormlz+0x28>
   13d06:	f0077793          	andi	a5,a4,-256
   13d0a:	eb8d                	bnez	a5,13d3c <enormlz+0x82>
   13d0c:	01848513          	addi	a0,s1,24
   13d10:	00248593          	addi	a1,s1,2
   13d14:	4781                	li	a5,0
   13d16:	872a                	mv	a4,a0
   13d18:	00075683          	lhu	a3,0(a4)
   13d1c:	1779                	addi	a4,a4,-2
   13d1e:	0086961b          	slliw	a2,a3,0x8
   13d22:	8fd1                	or	a5,a5,a2
   13d24:	00f71123          	sh	a5,2(a4)
   13d28:	0086d793          	srli	a5,a3,0x8
   13d2c:	feb716e3          	bne	a4,a1,13d18 <enormlz+0x5e>
   13d30:	0064d703          	lhu	a4,6(s1)
   13d34:	2421                	addiw	s0,s0,8
   13d36:	f0077793          	andi	a5,a4,-256
   13d3a:	dfe9                	beqz	a5,13d14 <enormlz+0x5a>
   13d3c:	0a000913          	li	s2,160
   13d40:	a801                	j	13d50 <enormlz+0x96>
   13d42:	2405                	addiw	s0,s0,1
   13d44:	e33ff0ef          	jal	ra,13b76 <eshup1>
   13d48:	00894763          	blt	s2,s0,13d56 <enormlz+0x9c>
   13d4c:	0064d703          	lhu	a4,6(s1)
   13d50:	833d                	srli	a4,a4,0xf
   13d52:	8526                	mv	a0,s1
   13d54:	d77d                	beqz	a4,13d42 <enormlz+0x88>
   13d56:	60e2                	ld	ra,24(sp)
   13d58:	8522                	mv	a0,s0
   13d5a:	6442                	ld	s0,16(sp)
   13d5c:	64a2                	ld	s1,8(sp)
   13d5e:	6902                	ld	s2,0(sp)
   13d60:	6105                	addi	sp,sp,32
   13d62:	8082                	ret
   13d64:	f007f713          	andi	a4,a5,-256
   13d68:	4401                	li	s0,0
   13d6a:	e705                	bnez	a4,13d92 <enormlz+0xd8>
   13d6c:	f6f00913          	li	s2,-145
   13d70:	a801                	j	13d80 <enormlz+0xc6>
   13d72:	347d                	addiw	s0,s0,-1
   13d74:	db7ff0ef          	jal	ra,13b2a <eshdn1>
   13d78:	fd240fe3          	beq	s0,s2,13d56 <enormlz+0x9c>
   13d7c:	0044d783          	lhu	a5,4(s1)
   13d80:	8526                	mv	a0,s1
   13d82:	fbe5                	bnez	a5,13d72 <enormlz+0xb8>
   13d84:	60e2                	ld	ra,24(sp)
   13d86:	8522                	mv	a0,s0
   13d88:	6442                	ld	s0,16(sp)
   13d8a:	64a2                	ld	s1,8(sp)
   13d8c:	6902                	ld	s2,0(sp)
   13d8e:	6105                	addi	sp,sp,32
   13d90:	8082                	ret
   13d92:	00450693          	addi	a3,a0,4
   13d96:	01a50593          	addi	a1,a0,26
   13d9a:	4701                	li	a4,0
   13d9c:	a019                	j	13da2 <enormlz+0xe8>
   13d9e:	0006d783          	lhu	a5,0(a3)
   13da2:	0087d61b          	srliw	a2,a5,0x8
   13da6:	8f51                	or	a4,a4,a2
   13da8:	0087979b          	slliw	a5,a5,0x8
   13dac:	00e69023          	sh	a4,0(a3)
   13db0:	03079713          	slli	a4,a5,0x30
   13db4:	0689                	addi	a3,a3,2
   13db6:	9341                	srli	a4,a4,0x30
   13db8:	fed593e3          	bne	a1,a3,13d9e <enormlz+0xe4>
   13dbc:	0044d783          	lhu	a5,4(s1)
   13dc0:	5461                	li	s0,-8
   13dc2:	b76d                	j	13d6c <enormlz+0xb2>

0000000000013dc4 <eshift.part.0>:
   13dc4:	7179                	addi	sp,sp,-48
   13dc6:	f022                	sd	s0,32(sp)
   13dc8:	ec26                	sd	s1,24(sp)
   13dca:	f406                	sd	ra,40(sp)
   13dcc:	e84a                	sd	s2,16(sp)
   13dce:	e44e                	sd	s3,8(sp)
   13dd0:	84ae                	mv	s1,a1
   13dd2:	842a                	mv	s0,a0
   13dd4:	0605cb63          	bltz	a1,13e4a <eshift.part.0+0x86>
   13dd8:	47bd                	li	a5,15
   13dda:	862e                	mv	a2,a1
   13ddc:	0511                	addi	a0,a0,4
   13dde:	01840693          	addi	a3,s0,24
   13de2:	45bd                	li	a1,15
   13de4:	0297d063          	bge	a5,s1,13e04 <eshift.part.0+0x40>
   13de8:	87aa                	mv	a5,a0
   13dea:	0027d703          	lhu	a4,2(a5)
   13dee:	0789                	addi	a5,a5,2
   13df0:	fee79f23          	sh	a4,-2(a5)
   13df4:	fef69be3          	bne	a3,a5,13dea <eshift.part.0+0x26>
   13df8:	00041c23          	sh	zero,24(s0)
   13dfc:	3641                	addiw	a2,a2,-16
   13dfe:	fec5c5e3          	blt	a1,a2,13de8 <eshift.part.0+0x24>
   13e02:	88bd                	andi	s1,s1,15
   13e04:	479d                	li	a5,7
   13e06:	0297d463          	bge	a5,s1,13e2e <eshift.part.0+0x6a>
   13e0a:	01840713          	addi	a4,s0,24
   13e0e:	00240593          	addi	a1,s0,2
   13e12:	4781                	li	a5,0
   13e14:	00075683          	lhu	a3,0(a4)
   13e18:	1779                	addi	a4,a4,-2
   13e1a:	0086961b          	slliw	a2,a3,0x8
   13e1e:	8fd1                	or	a5,a5,a2
   13e20:	00f71123          	sh	a5,2(a4)
   13e24:	0086d793          	srli	a5,a3,0x8
   13e28:	fee596e3          	bne	a1,a4,13e14 <eshift.part.0+0x50>
   13e2c:	34e1                	addiw	s1,s1,-8
   13e2e:	c491                	beqz	s1,13e3a <eshift.part.0+0x76>
   13e30:	34fd                	addiw	s1,s1,-1
   13e32:	8522                	mv	a0,s0
   13e34:	d43ff0ef          	jal	ra,13b76 <eshup1>
   13e38:	fce5                	bnez	s1,13e30 <eshift.part.0+0x6c>
   13e3a:	70a2                	ld	ra,40(sp)
   13e3c:	7402                	ld	s0,32(sp)
   13e3e:	64e2                	ld	s1,24(sp)
   13e40:	6942                	ld	s2,16(sp)
   13e42:	69a2                	ld	s3,8(sp)
   13e44:	4501                	li	a0,0
   13e46:	6145                	addi	sp,sp,48
   13e48:	8082                	ret
   13e4a:	57c5                	li	a5,-15
   13e4c:	40b0093b          	negw	s2,a1
   13e50:	06f5db63          	bge	a1,a5,13ec6 <eshift.part.0+0x102>
   13e54:	01850593          	addi	a1,a0,24
   13e58:	4981                	li	s3,0
   13e5a:	00450693          	addi	a3,a0,4
   13e5e:	463d                	li	a2,15
   13e60:	01845703          	lhu	a4,24(s0)
   13e64:	87ae                	mv	a5,a1
   13e66:	00e9e9b3          	or	s3,s3,a4
   13e6a:	ffe7d703          	lhu	a4,-2(a5)
   13e6e:	17f9                	addi	a5,a5,-2
   13e70:	00e79123          	sh	a4,2(a5)
   13e74:	fed79be3          	bne	a5,a3,13e6a <eshift.part.0+0xa6>
   13e78:	00041223          	sh	zero,4(s0)
   13e7c:	3941                	addiw	s2,s2,-16
   13e7e:	ff2641e3          	blt	a2,s2,13e60 <eshift.part.0+0x9c>
   13e82:	5941                	li	s2,-16
   13e84:	5745                	li	a4,-15
   13e86:	4099093b          	subw	s2,s2,s1
   13e8a:	4781                	li	a5,0
   13e8c:	06e4cb63          	blt	s1,a4,13f02 <eshift.part.0+0x13e>
   13e90:	00f9093b          	addw	s2,s2,a5
   13e94:	479d                	li	a5,7
   13e96:	0327ce63          	blt	a5,s2,13ed2 <eshift.part.0+0x10e>
   13e9a:	00090d63          	beqz	s2,13eb4 <eshift.part.0+0xf0>
   13e9e:	01845783          	lhu	a5,24(s0)
   13ea2:	397d                	addiw	s2,s2,-1
   13ea4:	8522                	mv	a0,s0
   13ea6:	8b85                	andi	a5,a5,1
   13ea8:	00f9e9b3          	or	s3,s3,a5
   13eac:	c7fff0ef          	jal	ra,13b2a <eshdn1>
   13eb0:	fe0917e3          	bnez	s2,13e9e <eshift.part.0+0xda>
   13eb4:	70a2                	ld	ra,40(sp)
   13eb6:	7402                	ld	s0,32(sp)
   13eb8:	64e2                	ld	s1,24(sp)
   13eba:	6942                	ld	s2,16(sp)
   13ebc:	01303533          	snez	a0,s3
   13ec0:	69a2                	ld	s3,8(sp)
   13ec2:	6145                	addi	sp,sp,48
   13ec4:	8082                	ret
   13ec6:	57e5                	li	a5,-7
   13ec8:	4981                	li	s3,0
   13eca:	00450693          	addi	a3,a0,4
   13ece:	fcf5d8e3          	bge	a1,a5,13e9e <eshift.part.0+0xda>
   13ed2:	01844783          	lbu	a5,24(s0)
   13ed6:	01a40593          	addi	a1,s0,26
   13eda:	00f9e9b3          	or	s3,s3,a5
   13ede:	4781                	li	a5,0
   13ee0:	0006d703          	lhu	a4,0(a3)
   13ee4:	0689                	addi	a3,a3,2
   13ee6:	0087561b          	srliw	a2,a4,0x8
   13eea:	8fd1                	or	a5,a5,a2
   13eec:	0087171b          	slliw	a4,a4,0x8
   13ef0:	fef69f23          	sh	a5,-2(a3)
   13ef4:	03071793          	slli	a5,a4,0x30
   13ef8:	93c1                	srli	a5,a5,0x30
   13efa:	feb693e3          	bne	a3,a1,13ee0 <eshift.part.0+0x11c>
   13efe:	3961                	addiw	s2,s2,-8
   13f00:	bf69                	j	13e9a <eshift.part.0+0xd6>
   13f02:	ff097793          	andi	a5,s2,-16
   13f06:	40f007bb          	negw	a5,a5
   13f0a:	00f9093b          	addw	s2,s2,a5
   13f0e:	479d                	li	a5,7
   13f10:	f927d5e3          	bge	a5,s2,13e9a <eshift.part.0+0xd6>
   13f14:	bf7d                	j	13ed2 <eshift.part.0+0x10e>

0000000000013f16 <emovi>:
   13f16:	01255783          	lhu	a5,18(a0)
   13f1a:	6621                	lui	a2,0x8
   13f1c:	167d                	addi	a2,a2,-1 # 7fff <exit-0x80e9>
   13f1e:	00f7d79b          	srliw	a5,a5,0xf
   13f22:	40f007bb          	negw	a5,a5
   13f26:	00f59023          	sh	a5,0(a1)
   13f2a:	01255683          	lhu	a3,18(a0)
   13f2e:	01050793          	addi	a5,a0,16
   13f32:	00458713          	addi	a4,a1,4
   13f36:	8ef1                	and	a3,a3,a2
   13f38:	00d59123          	sh	a3,2(a1)
   13f3c:	0006881b          	sext.w	a6,a3
   13f40:	02c68263          	beq	a3,a2,13f64 <emovi+0x4e>
   13f44:	00658713          	addi	a4,a1,6
   13f48:	00059223          	sh	zero,4(a1)
   13f4c:	1579                	addi	a0,a0,-2
   13f4e:	0007d683          	lhu	a3,0(a5)
   13f52:	17f9                	addi	a5,a5,-2
   13f54:	0709                	addi	a4,a4,2
   13f56:	fed71f23          	sh	a3,-2(a4)
   13f5a:	fef51ae3          	bne	a0,a5,13f4e <emovi+0x38>
   13f5e:	00059c23          	sh	zero,24(a1)
   13f62:	8082                	ret
   13f64:	01255683          	lhu	a3,18(a0)
   13f68:	0106f6b3          	and	a3,a3,a6
   13f6c:	01069b63          	bne	a3,a6,13f82 <emovi+0x6c>
   13f70:	01250813          	addi	a6,a0,18
   13f74:	86aa                	mv	a3,a0
   13f76:	0006d603          	lhu	a2,0(a3)
   13f7a:	0689                	addi	a3,a3,2
   13f7c:	ea11                	bnez	a2,13f90 <emovi+0x7a>
   13f7e:	ff069ce3          	bne	a3,a6,13f76 <emovi+0x60>
   13f82:	05e9                	addi	a1,a1,26
   13f84:	0709                	addi	a4,a4,2
   13f86:	fe071f23          	sh	zero,-2(a4)
   13f8a:	fee59de3          	bne	a1,a4,13f84 <emovi+0x6e>
   13f8e:	8082                	ret
   13f90:	00658713          	addi	a4,a1,6
   13f94:	00059223          	sh	zero,4(a1)
   13f98:	1571                	addi	a0,a0,-4
   13f9a:	0007d683          	lhu	a3,0(a5)
   13f9e:	17f9                	addi	a5,a5,-2
   13fa0:	0709                	addi	a4,a4,2
   13fa2:	fed71f23          	sh	a3,-2(a4)
   13fa6:	fea79ae3          	bne	a5,a0,13f9a <emovi+0x84>
   13faa:	8082                	ret

0000000000013fac <ecmp>:
   13fac:	01255783          	lhu	a5,18(a0)
   13fb0:	715d                	addi	sp,sp,-80
   13fb2:	e0a2                	sd	s0,64(sp)
   13fb4:	fff7c793          	not	a5,a5
   13fb8:	e486                	sd	ra,72(sp)
   13fba:	03179713          	slli	a4,a5,0x31
   13fbe:	842e                	mv	s0,a1
   13fc0:	eb11                	bnez	a4,13fd4 <ecmp+0x28>
   13fc2:	01250693          	addi	a3,a0,18
   13fc6:	87aa                	mv	a5,a0
   13fc8:	0007d703          	lhu	a4,0(a5)
   13fcc:	0789                	addi	a5,a5,2
   13fce:	eb25                	bnez	a4,1403e <ecmp+0x92>
   13fd0:	fed79ce3          	bne	a5,a3,13fc8 <ecmp+0x1c>
   13fd4:	01245783          	lhu	a5,18(s0)
   13fd8:	fff7c793          	not	a5,a5
   13fdc:	03179713          	slli	a4,a5,0x31
   13fe0:	c331                	beqz	a4,14024 <ecmp+0x78>
   13fe2:	858a                	mv	a1,sp
   13fe4:	f33ff0ef          	jal	ra,13f16 <emovi>
   13fe8:	100c                	addi	a1,sp,32
   13fea:	8522                	mv	a0,s0
   13fec:	f2bff0ef          	jal	ra,13f16 <emovi>
   13ff0:	00015583          	lhu	a1,0(sp)
   13ff4:	02015783          	lhu	a5,32(sp)
   13ff8:	04b78863          	beq	a5,a1,14048 <ecmp+0x9c>
   13ffc:	00210793          	addi	a5,sp,2
   14000:	02210713          	addi	a4,sp,34
   14004:	0830                	addi	a2,sp,24
   14006:	0007d683          	lhu	a3,0(a5)
   1400a:	0789                	addi	a5,a5,2
   1400c:	eea5                	bnez	a3,14084 <ecmp+0xd8>
   1400e:	00075683          	lhu	a3,0(a4)
   14012:	0709                	addi	a4,a4,2
   14014:	eaa5                	bnez	a3,14084 <ecmp+0xd8>
   14016:	fef618e3          	bne	a2,a5,14006 <ecmp+0x5a>
   1401a:	4501                	li	a0,0
   1401c:	60a6                	ld	ra,72(sp)
   1401e:	6406                	ld	s0,64(sp)
   14020:	6161                	addi	sp,sp,80
   14022:	8082                	ret
   14024:	87a2                	mv	a5,s0
   14026:	0007d703          	lhu	a4,0(a5)
   1402a:	01240693          	addi	a3,s0,18
   1402e:	0789                	addi	a5,a5,2
   14030:	e719                	bnez	a4,1403e <ecmp+0x92>
   14032:	fad788e3          	beq	a5,a3,13fe2 <ecmp+0x36>
   14036:	0007d703          	lhu	a4,0(a5)
   1403a:	0789                	addi	a5,a5,2
   1403c:	db7d                	beqz	a4,14032 <ecmp+0x86>
   1403e:	60a6                	ld	ra,72(sp)
   14040:	6406                	ld	s0,64(sp)
   14042:	5579                	li	a0,-2
   14044:	6161                	addi	sp,sp,80
   14046:	8082                	ret
   14048:	4505                	li	a0,1
   1404a:	e1a9                	bnez	a1,1408c <ecmp+0xe0>
   1404c:	00215603          	lhu	a2,2(sp)
   14050:	02215683          	lhu	a3,34(sp)
   14054:	00210713          	addi	a4,sp,2
   14058:	02210793          	addi	a5,sp,34
   1405c:	182c                	addi	a1,sp,56
   1405e:	0789                	addi	a5,a5,2
   14060:	0709                	addi	a4,a4,2
   14062:	00d61c63          	bne	a2,a3,1407a <ecmp+0xce>
   14066:	fab78ae3          	beq	a5,a1,1401a <ecmp+0x6e>
   1406a:	00075603          	lhu	a2,0(a4)
   1406e:	0007d683          	lhu	a3,0(a5)
   14072:	0709                	addi	a4,a4,2
   14074:	0789                	addi	a5,a5,2
   14076:	fed608e3          	beq	a2,a3,14066 <ecmp+0xba>
   1407a:	fac6e1e3          	bltu	a3,a2,1401c <ecmp+0x70>
   1407e:	40a0053b          	negw	a0,a0
   14082:	bf69                	j	1401c <ecmp+0x70>
   14084:	4505                	li	a0,1
   14086:	d9d9                	beqz	a1,1401c <ecmp+0x70>
   14088:	557d                	li	a0,-1
   1408a:	bf49                	j	1401c <ecmp+0x70>
   1408c:	557d                	li	a0,-1
   1408e:	bf7d                	j	1404c <ecmp+0xa0>

0000000000014090 <emdnorm>:
   14090:	715d                	addi	sp,sp,-80
   14092:	e0a2                	sd	s0,64(sp)
   14094:	fc26                	sd	s1,56(sp)
   14096:	f84a                	sd	s2,48(sp)
   14098:	f44e                	sd	s3,40(sp)
   1409a:	f052                	sd	s4,32(sp)
   1409c:	ec56                	sd	s5,24(sp)
   1409e:	8936                	mv	s2,a3
   140a0:	84be                	mv	s1,a5
   140a2:	e486                	sd	ra,72(sp)
   140a4:	e85a                	sd	s6,16(sp)
   140a6:	e45e                	sd	s7,8(sp)
   140a8:	842a                	mv	s0,a0
   140aa:	89ae                	mv	s3,a1
   140ac:	8a32                	mv	s4,a2
   140ae:	8aba                	mv	s5,a4
   140b0:	c0bff0ef          	jal	ra,13cba <enormlz>
   140b4:	09000793          	li	a5,144
   140b8:	40a90933          	sub	s2,s2,a0
   140bc:	10a7dc63          	bge	a5,a0,141d4 <emdnorm+0x144>
   140c0:	67a1                	lui	a5,0x8
   140c2:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   140c4:	1f27dd63          	bge	a5,s2,142be <emdnorm+0x22e>
   140c8:	1c0a8b63          	beqz	s5,1429e <emdnorm+0x20e>
   140cc:	0044aa83          	lw	s5,4(s1)
   140d0:	4094                	lw	a3,0(s1)
   140d2:	01a48713          	addi	a4,s1,26
   140d6:	03448793          	addi	a5,s1,52
   140da:	23568463          	beq	a3,s5,14302 <emdnorm+0x272>
   140de:	0709                	addi	a4,a4,2
   140e0:	fe071f23          	sh	zero,-2(a4)
   140e4:	fef71de3          	bne	a4,a5,140de <emdnorm+0x4e>
   140e8:	03800793          	li	a5,56
   140ec:	28fa8363          	beq	s5,a5,14372 <emdnorm+0x2e2>
   140f0:	1157d163          	bge	a5,s5,141f2 <emdnorm+0x162>
   140f4:	04000793          	li	a5,64
   140f8:	22fa8b63          	beq	s5,a5,1432e <emdnorm+0x29e>
   140fc:	07100793          	li	a5,113
   14100:	28fa9363          	bne	s5,a5,14386 <emdnorm+0x2f6>
   14104:	6721                	lui	a4,0x8
   14106:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14108:	6591                	lui	a1,0x4
   1410a:	4b51                	li	s6,20
   1410c:	4ba9                	li	s7,10
   1410e:	67a1                	lui	a5,0x8
   14110:	4629                	li	a2,10
   14112:	00860693          	addi	a3,a2,8
   14116:	0686                	slli	a3,a3,0x1
   14118:	00e49a23          	sh	a4,20(s1)
   1411c:	0174a423          	sw	s7,8(s1)
   14120:	00b49b23          	sh	a1,22(s1)
   14124:	00f49c23          	sh	a5,24(s1)
   14128:	c4d0                	sw	a2,12(s1)
   1412a:	00d48733          	add	a4,s1,a3
   1412e:	00f71523          	sh	a5,10(a4)
   14132:	0154a023          	sw	s5,0(s1)
   14136:	9b22                	add	s6,s6,s0
   14138:	1d205c63          	blez	s2,14310 <emdnorm+0x280>
   1413c:	000b5703          	lhu	a4,0(s6) # ffffffff80000000 <__BSS_END__+0xffffffff7ffe06e8>
   14140:	0144d683          	lhu	a3,20(s1)
   14144:	08f00793          	li	a5,143
   14148:	00d77633          	and	a2,a4,a3
   1414c:	0557c163          	blt	a5,s5,1418e <emdnorm+0xfe>
   14150:	001b879b          	addiw	a5,s7,1
   14154:	45b1                	li	a1,12
   14156:	02f5cc63          	blt	a1,a5,1418e <emdnorm+0xfe>
   1415a:	472d                	li	a4,11
   1415c:	4177073b          	subw	a4,a4,s7
   14160:	1702                	slli	a4,a4,0x20
   14162:	9301                	srli	a4,a4,0x20
   14164:	975e                	add	a4,a4,s7
   14166:	0786                	slli	a5,a5,0x1
   14168:	0706                	slli	a4,a4,0x1
   1416a:	00440693          	addi	a3,s0,4
   1416e:	97a2                	add	a5,a5,s0
   14170:	9736                	add	a4,a4,a3
   14172:	0007d683          	lhu	a3,0(a5) # 8000 <exit-0x80e8>
   14176:	c299                	beqz	a3,1417c <emdnorm+0xec>
   14178:	00166613          	ori	a2,a2,1
   1417c:	00079023          	sh	zero,0(a5)
   14180:	0789                	addi	a5,a5,2
   14182:	fee798e3          	bne	a5,a4,14172 <emdnorm+0xe2>
   14186:	000b5703          	lhu	a4,0(s6)
   1418a:	0144d683          	lhu	a3,20(s1)
   1418e:	fff6c693          	not	a3,a3
   14192:	8f75                	and	a4,a4,a3
   14194:	00eb1023          	sh	a4,0(s6)
   14198:	0164d783          	lhu	a5,22(s1)
   1419c:	00c7f733          	and	a4,a5,a2
   141a0:	eb51                	bnez	a4,14234 <emdnorm+0x1a4>
   141a2:	0d205d63          	blez	s2,1427c <emdnorm+0x1ec>
   141a6:	00445783          	lhu	a5,4(s0)
   141aa:	1a079463          	bnez	a5,14352 <emdnorm+0x2c2>
   141ae:	67a1                	lui	a5,0x8
   141b0:	00041c23          	sh	zero,24(s0)
   141b4:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   141b6:	0f27c663          	blt	a5,s2,142a2 <emdnorm+0x212>
   141ba:	01241123          	sh	s2,2(s0)
   141be:	60a6                	ld	ra,72(sp)
   141c0:	6406                	ld	s0,64(sp)
   141c2:	74e2                	ld	s1,56(sp)
   141c4:	7942                	ld	s2,48(sp)
   141c6:	79a2                	ld	s3,40(sp)
   141c8:	7a02                	ld	s4,32(sp)
   141ca:	6ae2                	ld	s5,24(sp)
   141cc:	6b42                	ld	s6,16(sp)
   141ce:	6ba2                	ld	s7,8(sp)
   141d0:	6161                	addi	sp,sp,80
   141d2:	8082                	ret
   141d4:	10095c63          	bgez	s2,142ec <emdnorm+0x25c>
   141d8:	f7000793          	li	a5,-144
   141dc:	0ef95a63          	bge	s2,a5,142d0 <emdnorm+0x240>
   141e0:	00240793          	addi	a5,s0,2
   141e4:	0469                	addi	s0,s0,26
   141e6:	0789                	addi	a5,a5,2
   141e8:	fe079f23          	sh	zero,-2(a5)
   141ec:	fe879de3          	bne	a5,s0,141e6 <emdnorm+0x156>
   141f0:	b7f9                	j	141be <emdnorm+0x12e>
   141f2:	47e1                	li	a5,24
   141f4:	14fa8563          	beq	s5,a5,1433e <emdnorm+0x2ae>
   141f8:	03500793          	li	a5,53
   141fc:	18fa9563          	bne	s5,a5,14386 <emdnorm+0x2f6>
   14200:	6785                	lui	a5,0x1
   14202:	7ff00713          	li	a4,2047
   14206:	40000593          	li	a1,1024
   1420a:	4b31                	li	s6,12
   1420c:	4b99                	li	s7,6
   1420e:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8e8>
   14212:	4619                	li	a2,6
   14214:	bdfd                	j	14112 <emdnorm+0x82>
   14216:	0144d703          	lhu	a4,20(s1)
   1421a:	000b5603          	lhu	a2,0(s6)
   1421e:	fff74793          	not	a5,a4
   14222:	8ff1                	and	a5,a5,a2
   14224:	00fb1023          	sh	a5,0(s6)
   14228:	0164d783          	lhu	a5,22(s1)
   1422c:	8e79                	and	a2,a2,a4
   1422e:	00c7f733          	and	a4,a5,a2
   14232:	cf21                	beqz	a4,1428a <emdnorm+0x1fa>
   14234:	00c79d63          	bne	a5,a2,1424e <emdnorm+0x1be>
   14238:	12099a63          	bnez	s3,1436c <emdnorm+0x2dc>
   1423c:	44dc                	lw	a5,12(s1)
   1423e:	0184d703          	lhu	a4,24(s1)
   14242:	0786                	slli	a5,a5,0x1
   14244:	97a2                	add	a5,a5,s0
   14246:	0007d783          	lhu	a5,0(a5)
   1424a:	8ff9                	and	a5,a5,a4
   1424c:	dbb9                	beqz	a5,141a2 <emdnorm+0x112>
   1424e:	03248613          	addi	a2,s1,50
   14252:	01840693          	addi	a3,s0,24
   14256:	04f1                	addi	s1,s1,28
   14258:	4781                	li	a5,0
   1425a:	00065703          	lhu	a4,0(a2)
   1425e:	0006d583          	lhu	a1,0(a3)
   14262:	16f9                	addi	a3,a3,-2
   14264:	1679                	addi	a2,a2,-2
   14266:	972e                	add	a4,a4,a1
   14268:	973e                	add	a4,a4,a5
   1426a:	01075793          	srli	a5,a4,0x10
   1426e:	00e69123          	sh	a4,2(a3)
   14272:	8b85                	andi	a5,a5,1
   14274:	fec493e3          	bne	s1,a2,1425a <emdnorm+0x1ca>
   14278:	f32047e3          	bgtz	s2,141a6 <emdnorm+0x116>
   1427c:	09000793          	li	a5,144
   14280:	00fa8563          	beq	s5,a5,1428a <emdnorm+0x1fa>
   14284:	8522                	mv	a0,s0
   14286:	8f1ff0ef          	jal	ra,13b76 <eshup1>
   1428a:	00445783          	lhu	a5,4(s0)
   1428e:	e3f1                	bnez	a5,14352 <emdnorm+0x2c2>
   14290:	00041c23          	sh	zero,24(s0)
   14294:	f20953e3          	bgez	s2,141ba <emdnorm+0x12a>
   14298:	00041123          	sh	zero,2(s0)
   1429c:	b70d                	j	141be <emdnorm+0x12e>
   1429e:	00041c23          	sh	zero,24(s0)
   142a2:	77e1                	lui	a5,0xffff8
   142a4:	fff7c793          	not	a5,a5
   142a8:	00f41123          	sh	a5,2(s0)
   142ac:	00440793          	addi	a5,s0,4
   142b0:	0461                	addi	s0,s0,24
   142b2:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd86e8>
   142b6:	0789                	addi	a5,a5,2
   142b8:	fe879de3          	bne	a5,s0,142b2 <emdnorm+0x222>
   142bc:	b709                	j	141be <emdnorm+0x12e>
   142be:	00240793          	addi	a5,s0,2
   142c2:	0469                	addi	s0,s0,26
   142c4:	0789                	addi	a5,a5,2
   142c6:	fe079f23          	sh	zero,-2(a5)
   142ca:	fef41de3          	bne	s0,a5,142c4 <emdnorm+0x234>
   142ce:	bdc5                	j	141be <emdnorm+0x12e>
   142d0:	0009059b          	sext.w	a1,s2
   142d4:	8522                	mv	a0,s0
   142d6:	aefff0ef          	jal	ra,13dc4 <eshift.part.0>
   142da:	c111                	beqz	a0,142de <emdnorm+0x24e>
   142dc:	4985                	li	s3,1
   142de:	de0a97e3          	bnez	s5,140cc <emdnorm+0x3c>
   142e2:	00041c23          	sh	zero,24(s0)
   142e6:	00041123          	sh	zero,2(s0)
   142ea:	bdd1                	j	141be <emdnorm+0x12e>
   142ec:	ec0a81e3          	beqz	s5,141ae <emdnorm+0x11e>
   142f0:	0044aa83          	lw	s5,4(s1)
   142f4:	4094                	lw	a3,0(s1)
   142f6:	01a48713          	addi	a4,s1,26
   142fa:	03448793          	addi	a5,s1,52
   142fe:	df5690e3          	bne	a3,s5,140de <emdnorm+0x4e>
   14302:	0084ab83          	lw	s7,8(s1)
   14306:	001b9b13          	slli	s6,s7,0x1
   1430a:	9b22                	add	s6,s6,s0
   1430c:	e32048e3          	bgtz	s2,1413c <emdnorm+0xac>
   14310:	09000793          	li	a5,144
   14314:	f0fa81e3          	beq	s5,a5,14216 <emdnorm+0x186>
   14318:	01845783          	lhu	a5,24(s0)
   1431c:	8522                	mv	a0,s0
   1431e:	8b85                	andi	a5,a5,1
   14320:	00f9e7b3          	or	a5,s3,a5
   14324:	0007899b          	sext.w	s3,a5
   14328:	803ff0ef          	jal	ra,13b2a <eshdn1>
   1432c:	bd01                	j	1413c <emdnorm+0xac>
   1432e:	6741                	lui	a4,0x10
   14330:	177d                	addi	a4,a4,-1 # ffff <exit-0xe9>
   14332:	65a1                	lui	a1,0x8
   14334:	4b39                	li	s6,14
   14336:	4b9d                	li	s7,7
   14338:	4785                	li	a5,1
   1433a:	4619                	li	a2,6
   1433c:	bbd9                	j	14112 <emdnorm+0x82>
   1433e:	0ff00713          	li	a4,255
   14342:	08000593          	li	a1,128
   14346:	4b21                	li	s6,8
   14348:	4b91                	li	s7,4
   1434a:	10000793          	li	a5,256
   1434e:	4611                	li	a2,4
   14350:	b3c9                	j	14112 <emdnorm+0x82>
   14352:	8522                	mv	a0,s0
   14354:	fd6ff0ef          	jal	ra,13b2a <eshdn1>
   14358:	67a1                	lui	a5,0x8
   1435a:	0905                	addi	s2,s2,1
   1435c:	00041c23          	sh	zero,24(s0)
   14360:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   14362:	f527c0e3          	blt	a5,s2,142a2 <emdnorm+0x212>
   14366:	f20949e3          	bltz	s2,14298 <emdnorm+0x208>
   1436a:	bd81                	j	141ba <emdnorm+0x12a>
   1436c:	ee0a01e3          	beqz	s4,1424e <emdnorm+0x1be>
   14370:	bd0d                	j	141a2 <emdnorm+0x112>
   14372:	0ff00713          	li	a4,255
   14376:	08000593          	li	a1,128
   1437a:	4b31                	li	s6,12
   1437c:	4b99                	li	s7,6
   1437e:	10000793          	li	a5,256
   14382:	4619                	li	a2,6
   14384:	b379                	j	14112 <emdnorm+0x82>
   14386:	6741                	lui	a4,0x10
   14388:	177d                	addi	a4,a4,-1 # ffff <exit-0xe9>
   1438a:	65a1                	lui	a1,0x8
   1438c:	4b61                	li	s6,24
   1438e:	4bb1                	li	s7,12
   14390:	4785                	li	a5,1
   14392:	462d                	li	a2,11
   14394:	bbbd                	j	14112 <emdnorm+0x82>

0000000000014396 <eiremain>:
   14396:	711d                	addi	sp,sp,-96
   14398:	e0ca                	sd	s2,64(sp)
   1439a:	fc4e                	sd	s3,56(sp)
   1439c:	892e                	mv	s2,a1
   1439e:	00255983          	lhu	s3,2(a0)
   143a2:	ec86                	sd	ra,88(sp)
   143a4:	e8a2                	sd	s0,80(sp)
   143a6:	e4a6                	sd	s1,72(sp)
   143a8:	f852                	sd	s4,48(sp)
   143aa:	84b2                	mv	s1,a2
   143ac:	ec5e                	sd	s7,24(sp)
   143ae:	f456                	sd	s5,40(sp)
   143b0:	f05a                	sd	s6,32(sp)
   143b2:	e862                	sd	s8,16(sp)
   143b4:	e466                	sd	s9,8(sp)
   143b6:	e06a                	sd	s10,0(sp)
   143b8:	8baa                	mv	s7,a0
   143ba:	901ff0ef          	jal	ra,13cba <enormlz>
   143be:	00295403          	lhu	s0,2(s2)
   143c2:	87aa                	mv	a5,a0
   143c4:	854a                	mv	a0,s2
   143c6:	40f989b3          	sub	s3,s3,a5
   143ca:	03448a13          	addi	s4,s1,52
   143ce:	8edff0ef          	jal	ra,13cba <enormlz>
   143d2:	8c09                	sub	s0,s0,a0
   143d4:	04e48713          	addi	a4,s1,78
   143d8:	87d2                	mv	a5,s4
   143da:	0789                	addi	a5,a5,2
   143dc:	fe079f23          	sh	zero,-2(a5)
   143e0:	fee79de3          	bne	a5,a4,143da <eiremain+0x44>
   143e4:	07344a63          	blt	s0,s3,14458 <eiremain+0xc2>
   143e8:	004b8b13          	addi	s6,s7,4
   143ec:	00490a93          	addi	s5,s2,4
   143f0:	01ab8c13          	addi	s8,s7,26
   143f4:	00290d13          	addi	s10,s2,2
   143f8:	8756                	mv	a4,s5
   143fa:	87da                	mv	a5,s6
   143fc:	0007d603          	lhu	a2,0(a5)
   14400:	00075683          	lhu	a3,0(a4)
   14404:	0789                	addi	a5,a5,2
   14406:	0709                	addi	a4,a4,2
   14408:	06d61d63          	bne	a2,a3,14482 <eiremain+0xec>
   1440c:	ff8798e3          	bne	a5,s8,143fc <eiremain+0x66>
   14410:	018b8613          	addi	a2,s7,24
   14414:	01890713          	addi	a4,s2,24
   14418:	4681                	li	a3,0
   1441a:	00075783          	lhu	a5,0(a4)
   1441e:	00065583          	lhu	a1,0(a2)
   14422:	1779                	addi	a4,a4,-2
   14424:	8f95                	sub	a5,a5,a3
   14426:	8f8d                	sub	a5,a5,a1
   14428:	0107d693          	srli	a3,a5,0x10
   1442c:	00f71123          	sh	a5,2(a4)
   14430:	8a85                	andi	a3,a3,1
   14432:	1679                	addi	a2,a2,-2
   14434:	feed13e3          	bne	s10,a4,1441a <eiremain+0x84>
   14438:	4c85                	li	s9,1
   1443a:	8552                	mv	a0,s4
   1443c:	f3aff0ef          	jal	ra,13b76 <eshup1>
   14440:	04c4d783          	lhu	a5,76(s1)
   14444:	147d                	addi	s0,s0,-1
   14446:	854a                	mv	a0,s2
   14448:	00fce7b3          	or	a5,s9,a5
   1444c:	04f49623          	sh	a5,76(s1)
   14450:	f26ff0ef          	jal	ra,13b76 <eshup1>
   14454:	fb3452e3          	bge	s0,s3,143f8 <eiremain+0x62>
   14458:	86a2                	mv	a3,s0
   1445a:	6446                	ld	s0,80(sp)
   1445c:	60e6                	ld	ra,88(sp)
   1445e:	79e2                	ld	s3,56(sp)
   14460:	7a42                	ld	s4,48(sp)
   14462:	7aa2                	ld	s5,40(sp)
   14464:	7b02                	ld	s6,32(sp)
   14466:	6be2                	ld	s7,24(sp)
   14468:	6c42                	ld	s8,16(sp)
   1446a:	6ca2                	ld	s9,8(sp)
   1446c:	6d02                	ld	s10,0(sp)
   1446e:	87a6                	mv	a5,s1
   14470:	854a                	mv	a0,s2
   14472:	64a6                	ld	s1,72(sp)
   14474:	6906                	ld	s2,64(sp)
   14476:	4701                	li	a4,0
   14478:	4601                	li	a2,0
   1447a:	4581                	li	a1,0
   1447c:	6125                	addi	sp,sp,96
   1447e:	c13ff06f          	j	14090 <emdnorm>
   14482:	4c81                	li	s9,0
   14484:	fac6ebe3          	bltu	a3,a2,1443a <eiremain+0xa4>
   14488:	b761                	j	14410 <eiremain+0x7a>

000000000001448a <e113toe.isra.0>:
   1448a:	7179                	addi	sp,sp,-48
   1448c:	f022                	sd	s0,32(sp)
   1448e:	f406                	sd	ra,40(sp)
   14490:	842e                	mv	s0,a1
   14492:	878a                	mv	a5,sp
   14494:	01a10713          	addi	a4,sp,26
   14498:	0789                	addi	a5,a5,2
   1449a:	fe079f23          	sh	zero,-2(a5)
   1449e:	fee79de3          	bne	a5,a4,14498 <e113toe.isra.0+0xe>
   144a2:	00e55783          	lhu	a5,14(a0)
   144a6:	6721                	lui	a4,0x8
   144a8:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   144aa:	03079693          	slli	a3,a5,0x30
   144ae:	96fd                	srai	a3,a3,0x3f
   144b0:	00d11023          	sh	a3,0(sp)
   144b4:	00e7f6b3          	and	a3,a5,a4
   144b8:	8636                	mv	a2,a3
   144ba:	04e68363          	beq	a3,a4,14500 <e113toe.isra.0+0x76>
   144be:	00e50793          	addi	a5,a0,14
   144c2:	00d11123          	sh	a3,2(sp)
   144c6:	00610713          	addi	a4,sp,6
   144ca:	ffe7d683          	lhu	a3,-2(a5)
   144ce:	17f9                	addi	a5,a5,-2
   144d0:	0709                	addi	a4,a4,2
   144d2:	fed71f23          	sh	a3,-2(a4)
   144d6:	fef51ae3          	bne	a0,a5,144ca <e113toe.isra.0+0x40>
   144da:	ea19                	bnez	a2,144f0 <e113toe.isra.0+0x66>
   144dc:	00011223          	sh	zero,4(sp)
   144e0:	85a2                	mv	a1,s0
   144e2:	850a                	mv	a0,sp
   144e4:	f4aff0ef          	jal	ra,13c2e <emovo.constprop.0>
   144e8:	70a2                	ld	ra,40(sp)
   144ea:	7402                	ld	s0,32(sp)
   144ec:	6145                	addi	sp,sp,48
   144ee:	8082                	ret
   144f0:	4785                	li	a5,1
   144f2:	55fd                	li	a1,-1
   144f4:	850a                	mv	a0,sp
   144f6:	00f11223          	sh	a5,4(sp)
   144fa:	8cbff0ef          	jal	ra,13dc4 <eshift.part.0>
   144fe:	b7cd                	j	144e0 <e113toe.isra.0+0x56>
   14500:	87aa                	mv	a5,a0
   14502:	00e50693          	addi	a3,a0,14
   14506:	0007d703          	lhu	a4,0(a5)
   1450a:	0789                	addi	a5,a5,2
   1450c:	ef21                	bnez	a4,14564 <e113toe.isra.0+0xda>
   1450e:	fef69ce3          	bne	a3,a5,14506 <e113toe.isra.0+0x7c>
   14512:	01440713          	addi	a4,s0,20
   14516:	87a2                	mv	a5,s0
   14518:	0789                	addi	a5,a5,2
   1451a:	fe079f23          	sh	zero,-2(a5)
   1451e:	fee79de3          	bne	a5,a4,14518 <e113toe.isra.0+0x8e>
   14522:	01240713          	addi	a4,s0,18
   14526:	87a2                	mv	a5,s0
   14528:	0789                	addi	a5,a5,2
   1452a:	fe079f23          	sh	zero,-2(a5)
   1452e:	fef71de3          	bne	a4,a5,14528 <e113toe.isra.0+0x9e>
   14532:	01245783          	lhu	a5,18(s0)
   14536:	66a1                	lui	a3,0x8
   14538:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1453a:	8fd5                	or	a5,a5,a3
   1453c:	17c2                	slli	a5,a5,0x30
   1453e:	93c1                	srli	a5,a5,0x30
   14540:	00f41923          	sh	a5,18(s0)
   14544:	00e51683          	lh	a3,14(a0)
   14548:	fa06d0e3          	bgez	a3,144e8 <e113toe.isra.0+0x5e>
   1454c:	86a2                	mv	a3,s0
   1454e:	0006d603          	lhu	a2,0(a3)
   14552:	0689                	addi	a3,a3,2
   14554:	fa51                	bnez	a2,144e8 <e113toe.isra.0+0x5e>
   14556:	fed71ce3          	bne	a4,a3,1454e <e113toe.isra.0+0xc4>
   1455a:	7761                	lui	a4,0xffff8
   1455c:	8fb9                	xor	a5,a5,a4
   1455e:	00f41923          	sh	a5,18(s0)
   14562:	b759                	j	144e8 <e113toe.isra.0+0x5e>
   14564:	01040713          	addi	a4,s0,16
   14568:	87a2                	mv	a5,s0
   1456a:	0789                	addi	a5,a5,2
   1456c:	fe079f23          	sh	zero,-2(a5)
   14570:	fee79de3          	bne	a5,a4,1456a <e113toe.isra.0+0xe0>
   14574:	77f1                	lui	a5,0xffffc
   14576:	00f41823          	sh	a5,16(s0)
   1457a:	77e1                	lui	a5,0xffff8
   1457c:	fff7c793          	not	a5,a5
   14580:	00f41923          	sh	a5,18(s0)
   14584:	b795                	j	144e8 <e113toe.isra.0+0x5e>

0000000000014586 <ediv>:
   14586:	01255783          	lhu	a5,18(a0)
   1458a:	7115                	addi	sp,sp,-224
   1458c:	e9a2                	sd	s0,208(sp)
   1458e:	fff7c793          	not	a5,a5
   14592:	e5a6                	sd	s1,200(sp)
   14594:	e1ca                	sd	s2,192(sp)
   14596:	fd4e                	sd	s3,184(sp)
   14598:	ed86                	sd	ra,216(sp)
   1459a:	f952                	sd	s4,176(sp)
   1459c:	f556                	sd	s5,168(sp)
   1459e:	f15a                	sd	s6,160(sp)
   145a0:	ed5e                	sd	s7,152(sp)
   145a2:	e962                	sd	s8,144(sp)
   145a4:	e566                	sd	s9,136(sp)
   145a6:	e16a                	sd	s10,128(sp)
   145a8:	fcee                	sd	s11,120(sp)
   145aa:	03179713          	slli	a4,a5,0x31
   145ae:	84aa                	mv	s1,a0
   145b0:	89ae                	mv	s3,a1
   145b2:	8432                	mv	s0,a2
   145b4:	8936                	mv	s2,a3
   145b6:	eb19                	bnez	a4,145cc <ediv+0x46>
   145b8:	01250693          	addi	a3,a0,18
   145bc:	87aa                	mv	a5,a0
   145be:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd86e8>
   145c2:	0789                	addi	a5,a5,2
   145c4:	22071a63          	bnez	a4,147f8 <ediv+0x272>
   145c8:	fed79be3          	bne	a5,a3,145be <ediv+0x38>
   145cc:	0129d783          	lhu	a5,18(s3)
   145d0:	fff7c793          	not	a5,a5
   145d4:	03179713          	slli	a4,a5,0x31
   145d8:	eb19                	bnez	a4,145ee <ediv+0x68>
   145da:	01298693          	addi	a3,s3,18
   145de:	87ce                	mv	a5,s3
   145e0:	0007d703          	lhu	a4,0(a5)
   145e4:	0789                	addi	a5,a5,2
   145e6:	22071463          	bnez	a4,1480e <ediv+0x288>
   145ea:	fed79be3          	bne	a5,a3,145e0 <ediv+0x5a>
   145ee:	6a75                	lui	s4,0x1d
   145f0:	cc0a0593          	addi	a1,s4,-832 # 1ccc0 <ezero>
   145f4:	8526                	mv	a0,s1
   145f6:	9b7ff0ef          	jal	ra,13fac <ecmp>
   145fa:	22050563          	beqz	a0,14824 <ediv+0x29e>
   145fe:	0124d603          	lhu	a2,18(s1)
   14602:	0129d703          	lhu	a4,18(s3)
   14606:	67a1                	lui	a5,0x8
   14608:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1460a:	00f67533          	and	a0,a2,a5
   1460e:	00f775b3          	and	a1,a4,a5
   14612:	06f51a63          	bne	a0,a5,14686 <ediv+0x100>
   14616:	01248813          	addi	a6,s1,18
   1461a:	87a6                	mv	a5,s1
   1461c:	0007d683          	lhu	a3,0(a5)
   14620:	0789                	addi	a5,a5,2
   14622:	e2a5                	bnez	a3,14682 <ediv+0xfc>
   14624:	ff079ce3          	bne	a5,a6,1461c <ediv+0x96>
   14628:	67a1                	lui	a5,0x8
   1462a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1462c:	20f59663          	bne	a1,a5,14838 <ediv+0x2b2>
   14630:	01298693          	addi	a3,s3,18
   14634:	87ce                	mv	a5,s3
   14636:	0007d583          	lhu	a1,0(a5)
   1463a:	0789                	addi	a5,a5,2
   1463c:	36059163          	bnez	a1,1499e <ediv+0x418>
   14640:	fed79be3          	bne	a5,a3,14636 <ediv+0xb0>
   14644:	01040713          	addi	a4,s0,16
   14648:	87a2                	mv	a5,s0
   1464a:	0789                	addi	a5,a5,2
   1464c:	fe079f23          	sh	zero,-2(a5)
   14650:	fee79de3          	bne	a5,a4,1464a <ediv+0xc4>
   14654:	77f1                	lui	a5,0xffffc
   14656:	00f41823          	sh	a5,16(s0)
   1465a:	77e1                	lui	a5,0xffff8
   1465c:	fff7c793          	not	a5,a5
   14660:	00f41923          	sh	a5,18(s0)
   14664:	60ee                	ld	ra,216(sp)
   14666:	644e                	ld	s0,208(sp)
   14668:	64ae                	ld	s1,200(sp)
   1466a:	690e                	ld	s2,192(sp)
   1466c:	79ea                	ld	s3,184(sp)
   1466e:	7a4a                	ld	s4,176(sp)
   14670:	7aaa                	ld	s5,168(sp)
   14672:	7b0a                	ld	s6,160(sp)
   14674:	6bea                	ld	s7,152(sp)
   14676:	6c4a                	ld	s8,144(sp)
   14678:	6caa                	ld	s9,136(sp)
   1467a:	6d0a                	ld	s10,128(sp)
   1467c:	7de6                	ld	s11,120(sp)
   1467e:	612d                	addi	sp,sp,224
   14680:	8082                	ret
   14682:	67a1                	lui	a5,0x8
   14684:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14686:	1cf58163          	beq	a1,a5,14848 <ediv+0x2c2>
   1468a:	8526                	mv	a0,s1
   1468c:	080c                	addi	a1,sp,16
   1468e:	889ff0ef          	jal	ra,13f16 <emovi>
   14692:	180c                	addi	a1,sp,48
   14694:	854e                	mv	a0,s3
   14696:	881ff0ef          	jal	ra,13f16 <emovi>
   1469a:	03215a83          	lhu	s5,50(sp)
   1469e:	01215483          	lhu	s1,18(sp)
   146a2:	200a8963          	beqz	s5,148b4 <ediv+0x32e>
   146a6:	e456                	sd	s5,8(sp)
   146a8:	8726                	mv	a4,s1
   146aa:	e026                	sd	s1,0(sp)
   146ac:	085c                	addi	a5,sp,20
   146ae:	1034                	addi	a3,sp,40
   146b0:	ef09                	bnez	a4,146ca <ediv+0x144>
   146b2:	2af68e63          	beq	a3,a5,1496e <ediv+0x3e8>
   146b6:	0007d703          	lhu	a4,0(a5)
   146ba:	0789                	addi	a5,a5,2
   146bc:	db7d                	beqz	a4,146b2 <ediv+0x12c>
   146be:	0808                	addi	a0,sp,16
   146c0:	dfaff0ef          	jal	ra,13cba <enormlz>
   146c4:	40a487b3          	sub	a5,s1,a0
   146c8:	e03e                	sd	a5,0(sp)
   146ca:	5742                	lw	a4,48(sp)
   146cc:	03890a93          	addi	s5,s2,56
   146d0:	87d6                	mv	a5,s5
   146d2:	02e92a23          	sw	a4,52(s2)
   146d6:	04e90493          	addi	s1,s2,78
   146da:	0789                	addi	a5,a5,2
   146dc:	fe079f23          	sh	zero,-2(a5)
   146e0:	fef49de3          	bne	s1,a5,146da <ediv+0x154>
   146e4:	1808                	addi	a0,sp,48
   146e6:	c44ff0ef          	jal	ra,13b2a <eshdn1>
   146ea:	01615b03          	lhu	s6,22(sp)
   146ee:	69c1                	lui	s3,0x10
   146f0:	04810c13          	addi	s8,sp,72
   146f4:	010b1a13          	slli	s4,s6,0x10
   146f8:	416a0a33          	sub	s4,s4,s6
   146fc:	03210c93          	addi	s9,sp,50
   14700:	19fd                	addi	s3,s3,-1 # ffff <exit-0xe9>
   14702:	06a10d13          	addi	s10,sp,106
   14706:	05210d93          	addi	s11,sp,82
   1470a:	03415783          	lhu	a5,52(sp)
   1470e:	03615703          	lhu	a4,54(sp)
   14712:	8bce                	mv	s7,s3
   14714:	07c2                	slli	a5,a5,0x10
   14716:	97ba                	add	a5,a5,a4
   14718:	00fa6863          	bltu	s4,a5,14728 <ediv+0x1a2>
   1471c:	0367d7b3          	divu	a5,a5,s6
   14720:	03079b93          	slli	s7,a5,0x30
   14724:	030bdb93          	srli	s7,s7,0x30
   14728:	0890                	addi	a2,sp,80
   1472a:	080c                	addi	a1,sp,16
   1472c:	855e                	mv	a0,s7
   1472e:	c98ff0ef          	jal	ra,13bc6 <m16m>
   14732:	1858                	addi	a4,sp,52
   14734:	08dc                	addi	a5,sp,84
   14736:	0007d603          	lhu	a2,0(a5)
   1473a:	00075683          	lhu	a3,0(a4) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd86e8>
   1473e:	0789                	addi	a5,a5,2
   14740:	0709                	addi	a4,a4,2
   14742:	18d61b63          	bne	a2,a3,148d8 <ediv+0x352>
   14746:	ffa798e3          	bne	a5,s10,14736 <ediv+0x1b0>
   1474a:	4781                	li	a5,0
   1474c:	10b4                	addi	a3,sp,104
   1474e:	8662                	mv	a2,s8
   14750:	00065703          	lhu	a4,0(a2)
   14754:	0006d583          	lhu	a1,0(a3)
   14758:	1679                	addi	a2,a2,-2
   1475a:	8f1d                	sub	a4,a4,a5
   1475c:	8f0d                	sub	a4,a4,a1
   1475e:	01075793          	srli	a5,a4,0x10
   14762:	00e61123          	sh	a4,2(a2)
   14766:	8b85                	andi	a5,a5,1
   14768:	16f9                	addi	a3,a3,-2
   1476a:	ff9613e3          	bne	a2,s9,14750 <ediv+0x1ca>
   1476e:	017a9023          	sh	s7,0(s5)
   14772:	185c                	addi	a5,sp,52
   14774:	0027d703          	lhu	a4,2(a5)
   14778:	0789                	addi	a5,a5,2
   1477a:	fee79f23          	sh	a4,-2(a5)
   1477e:	ff879be3          	bne	a5,s8,14774 <ediv+0x1ee>
   14782:	04011423          	sh	zero,72(sp)
   14786:	0a89                	addi	s5,s5,2
   14788:	f95491e3          	bne	s1,s5,1470a <ediv+0x184>
   1478c:	4701                	li	a4,0
   1478e:	185c                	addi	a5,sp,52
   14790:	04a10613          	addi	a2,sp,74
   14794:	0007d683          	lhu	a3,0(a5)
   14798:	0789                	addi	a5,a5,2
   1479a:	8f55                	or	a4,a4,a3
   1479c:	fec79ce3          	bne	a5,a2,14794 <ediv+0x20e>
   147a0:	2701                	sext.w	a4,a4
   147a2:	00e035b3          	snez	a1,a4
   147a6:	181c                	addi	a5,sp,48
   147a8:	03490713          	addi	a4,s2,52
   147ac:	00075683          	lhu	a3,0(a4)
   147b0:	0789                	addi	a5,a5,2
   147b2:	0709                	addi	a4,a4,2
   147b4:	fed79f23          	sh	a3,-2(a5)
   147b8:	fef61ae3          	bne	a2,a5,147ac <ediv+0x226>
   147bc:	67a2                	ld	a5,8(sp)
   147be:	6702                	ld	a4,0(sp)
   147c0:	6691                	lui	a3,0x4
   147c2:	16fd                	addi	a3,a3,-1 # 3fff <exit-0xc0e9>
   147c4:	40e78ab3          	sub	s5,a5,a4
   147c8:	1808                	addi	a0,sp,48
   147ca:	87ca                	mv	a5,s2
   147cc:	04000713          	li	a4,64
   147d0:	96d6                	add	a3,a3,s5
   147d2:	4601                	li	a2,0
   147d4:	8bdff0ef          	jal	ra,14090 <emdnorm>
   147d8:	03015703          	lhu	a4,48(sp)
   147dc:	01015783          	lhu	a5,16(sp)
   147e0:	85a2                	mv	a1,s0
   147e2:	1808                	addi	a0,sp,48
   147e4:	8f99                	sub	a5,a5,a4
   147e6:	00f037b3          	snez	a5,a5
   147ea:	40f007bb          	negw	a5,a5
   147ee:	02f11823          	sh	a5,48(sp)
   147f2:	c3cff0ef          	jal	ra,13c2e <emovo.constprop.0>
   147f6:	b5bd                	j	14664 <ediv+0xde>
   147f8:	01448713          	addi	a4,s1,20
   147fc:	0004d783          	lhu	a5,0(s1)
   14800:	0489                	addi	s1,s1,2
   14802:	0409                	addi	s0,s0,2
   14804:	fef41f23          	sh	a5,-2(s0)
   14808:	fee49ae3          	bne	s1,a4,147fc <ediv+0x276>
   1480c:	bda1                	j	14664 <ediv+0xde>
   1480e:	01440713          	addi	a4,s0,20
   14812:	0009d783          	lhu	a5,0(s3)
   14816:	0409                	addi	s0,s0,2
   14818:	0989                	addi	s3,s3,2
   1481a:	fef41f23          	sh	a5,-2(s0)
   1481e:	fee41ae3          	bne	s0,a4,14812 <ediv+0x28c>
   14822:	b589                	j	14664 <ediv+0xde>
   14824:	cc0a0593          	addi	a1,s4,-832
   14828:	854e                	mv	a0,s3
   1482a:	f82ff0ef          	jal	ra,13fac <ecmp>
   1482e:	dc0518e3          	bnez	a0,145fe <ediv+0x78>
   14832:	bd09                	j	14644 <ediv+0xbe>
   14834:	e4080be3          	beqz	a6,1468a <ediv+0x104>
   14838:	01440793          	addi	a5,s0,20
   1483c:	0409                	addi	s0,s0,2
   1483e:	fe041f23          	sh	zero,-2(s0)
   14842:	fef41de3          	bne	s0,a5,1483c <ediv+0x2b6>
   14846:	bd39                	j	14664 <ediv+0xde>
   14848:	4801                	li	a6,0
   1484a:	01298693          	addi	a3,s3,18
   1484e:	87ce                	mv	a5,s3
   14850:	0007d583          	lhu	a1,0(a5)
   14854:	0789                	addi	a5,a5,2
   14856:	fdf9                	bnez	a1,14834 <ediv+0x2ae>
   14858:	fed79ce3          	bne	a5,a3,14850 <ediv+0x2ca>
   1485c:	67a1                	lui	a5,0x8
   1485e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14860:	04f50163          	beq	a0,a5,148a2 <ediv+0x31c>
   14864:	823d                	srli	a2,a2,0xf
   14866:	0009d783          	lhu	a5,0(s3)
   1486a:	0989                	addi	s3,s3,2
   1486c:	12079563          	bnez	a5,14996 <ediv+0x410>
   14870:	fed99be3          	bne	s3,a3,14866 <ediv+0x2e0>
   14874:	00f75793          	srli	a5,a4,0xf
   14878:	8fb1                	xor	a5,a5,a2
   1487a:	00f7979b          	slliw	a5,a5,0xf
   1487e:	00f41923          	sh	a5,18(s0)
   14882:	01240713          	addi	a4,s0,18
   14886:	87a2                	mv	a5,s0
   14888:	0789                	addi	a5,a5,2
   1488a:	fe079f23          	sh	zero,-2(a5)
   1488e:	fef71de3          	bne	a4,a5,14888 <ediv+0x302>
   14892:	01245783          	lhu	a5,18(s0)
   14896:	6721                	lui	a4,0x8
   14898:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1489a:	8fd9                	or	a5,a5,a4
   1489c:	00f41923          	sh	a5,18(s0)
   148a0:	b3d1                	j	14664 <ediv+0xde>
   148a2:	01248593          	addi	a1,s1,18
   148a6:	0004d783          	lhu	a5,0(s1)
   148aa:	0489                	addi	s1,s1,2
   148ac:	e7fd                	bnez	a5,1499a <ediv+0x414>
   148ae:	feb49ce3          	bne	s1,a1,148a6 <ediv+0x320>
   148b2:	bf4d                	j	14864 <ediv+0x2de>
   148b4:	185c                	addi	a5,sp,52
   148b6:	04810c13          	addi	s8,sp,72
   148ba:	0afc0263          	beq	s8,a5,1495e <ediv+0x3d8>
   148be:	0007d703          	lhu	a4,0(a5)
   148c2:	0789                	addi	a5,a5,2
   148c4:	db7d                	beqz	a4,148ba <ediv+0x334>
   148c6:	1808                	addi	a0,sp,48
   148c8:	bf2ff0ef          	jal	ra,13cba <enormlz>
   148cc:	40a007b3          	neg	a5,a0
   148d0:	01215703          	lhu	a4,18(sp)
   148d4:	e43e                	sd	a5,8(sp)
   148d6:	bbd1                	j	146aa <ediv+0x124>
   148d8:	e6c6f9e3          	bgeu	a3,a2,1474a <ediv+0x1c4>
   148dc:	fffb879b          	addiw	a5,s7,-1
   148e0:	03079893          	slli	a7,a5,0x30
   148e4:	0308d893          	srli	a7,a7,0x30
   148e8:	4681                	li	a3,0
   148ea:	1030                	addi	a2,sp,40
   148ec:	10b8                	addi	a4,sp,104
   148ee:	00075783          	lhu	a5,0(a4)
   148f2:	00065583          	lhu	a1,0(a2)
   148f6:	1779                	addi	a4,a4,-2
   148f8:	8f95                	sub	a5,a5,a3
   148fa:	8f8d                	sub	a5,a5,a1
   148fc:	0107d693          	srli	a3,a5,0x10
   14900:	00f71123          	sh	a5,2(a4)
   14904:	8a85                	andi	a3,a3,1
   14906:	1679                	addi	a2,a2,-2
   14908:	ffb713e3          	bne	a4,s11,148ee <ediv+0x368>
   1490c:	1858                	addi	a4,sp,52
   1490e:	08dc                	addi	a5,sp,84
   14910:	0007d603          	lhu	a2,0(a5)
   14914:	00075683          	lhu	a3,0(a4)
   14918:	0789                	addi	a5,a5,2
   1491a:	0709                	addi	a4,a4,2
   1491c:	00d61663          	bne	a2,a3,14928 <ediv+0x3a2>
   14920:	ffa798e3          	bne	a5,s10,14910 <ediv+0x38a>
   14924:	8bc6                	mv	s7,a7
   14926:	b515                	j	1474a <ediv+0x1c4>
   14928:	fec6fee3          	bgeu	a3,a2,14924 <ediv+0x39e>
   1492c:	ffeb851b          	addiw	a0,s7,-2
   14930:	03051b93          	slli	s7,a0,0x30
   14934:	030bdb93          	srli	s7,s7,0x30
   14938:	4681                	li	a3,0
   1493a:	1030                	addi	a2,sp,40
   1493c:	10b8                	addi	a4,sp,104
   1493e:	00075783          	lhu	a5,0(a4)
   14942:	00065583          	lhu	a1,0(a2)
   14946:	1779                	addi	a4,a4,-2
   14948:	8f95                	sub	a5,a5,a3
   1494a:	8f8d                	sub	a5,a5,a1
   1494c:	0107d693          	srli	a3,a5,0x10
   14950:	00f71123          	sh	a5,2(a4)
   14954:	8a85                	andi	a3,a3,1
   14956:	1679                	addi	a2,a2,-2
   14958:	ffb713e3          	bne	a4,s11,1493e <ediv+0x3b8>
   1495c:	b3fd                	j	1474a <ediv+0x1c4>
   1495e:	01440793          	addi	a5,s0,20
   14962:	0409                	addi	s0,s0,2
   14964:	fe041f23          	sh	zero,-2(s0)
   14968:	fef41de3          	bne	s0,a5,14962 <ediv+0x3dc>
   1496c:	b9e5                	j	14664 <ediv+0xde>
   1496e:	01015683          	lhu	a3,16(sp)
   14972:	03015603          	lhu	a2,48(sp)
   14976:	01240713          	addi	a4,s0,18
   1497a:	87a2                	mv	a5,s0
   1497c:	8e91                	sub	a3,a3,a2
   1497e:	00d036b3          	snez	a3,a3
   14982:	00f6969b          	slliw	a3,a3,0xf
   14986:	00d41923          	sh	a3,18(s0)
   1498a:	0789                	addi	a5,a5,2
   1498c:	fe079f23          	sh	zero,-2(a5)
   14990:	fef71de3          	bne	a4,a5,1498a <ediv+0x404>
   14994:	bdfd                	j	14892 <ediv+0x30c>
   14996:	4781                	li	a5,0
   14998:	b5c5                	j	14878 <ediv+0x2f2>
   1499a:	4601                	li	a2,0
   1499c:	b5e9                	j	14866 <ediv+0x2e0>
   1499e:	4805                	li	a6,1
   149a0:	b57d                	j	1484e <ediv+0x2c8>

00000000000149a2 <emul>:
   149a2:	7131                	addi	sp,sp,-192
   149a4:	f526                	sd	s1,168(sp)
   149a6:	84aa                	mv	s1,a0
   149a8:	01255503          	lhu	a0,18(a0)
   149ac:	6721                	lui	a4,0x8
   149ae:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   149b0:	f922                	sd	s0,176(sp)
   149b2:	f14a                	sd	s2,160(sp)
   149b4:	e952                	sd	s4,144(sp)
   149b6:	fd06                	sd	ra,184(sp)
   149b8:	ed4e                	sd	s3,152(sp)
   149ba:	e556                	sd	s5,136(sp)
   149bc:	e15a                	sd	s6,128(sp)
   149be:	fcde                	sd	s7,120(sp)
   149c0:	f8e2                	sd	s8,112(sp)
   149c2:	f4e6                	sd	s9,104(sp)
   149c4:	00e57833          	and	a6,a0,a4
   149c8:	892e                	mv	s2,a1
   149ca:	8432                	mv	s0,a2
   149cc:	8a36                	mv	s4,a3
   149ce:	00e81b63          	bne	a6,a4,149e4 <emul+0x42>
   149d2:	01248993          	addi	s3,s1,18
   149d6:	8726                	mv	a4,s1
   149d8:	00075603          	lhu	a2,0(a4)
   149dc:	0709                	addi	a4,a4,2
   149de:	e67d                	bnez	a2,14acc <emul+0x12a>
   149e0:	ff371ce3          	bne	a4,s3,149d8 <emul+0x36>
   149e4:	01295603          	lhu	a2,18(s2)
   149e8:	67a1                	lui	a5,0x8
   149ea:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   149ec:	00f675b3          	and	a1,a2,a5
   149f0:	06f58c63          	beq	a1,a5,14a68 <emul+0xc6>
   149f4:	10f81363          	bne	a6,a5,14afa <emul+0x158>
   149f8:	01248993          	addi	s3,s1,18
   149fc:	87a6                	mv	a5,s1
   149fe:	0007d703          	lhu	a4,0(a5)
   14a02:	0789                	addi	a5,a5,2
   14a04:	1c071b63          	bnez	a4,14bda <emul+0x238>
   14a08:	fef99be3          	bne	s3,a5,149fe <emul+0x5c>
   14a0c:	65f5                	lui	a1,0x1d
   14a0e:	cc058593          	addi	a1,a1,-832 # 1ccc0 <ezero>
   14a12:	854a                	mv	a0,s2
   14a14:	d98ff0ef          	jal	ra,13fac <ecmp>
   14a18:	1a050063          	beqz	a0,14bb8 <emul+0x216>
   14a1c:	01295603          	lhu	a2,18(s2)
   14a20:	67a1                	lui	a5,0x8
   14a22:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14a24:	00f675b3          	and	a1,a2,a5
   14a28:	1af58d63          	beq	a1,a5,14be2 <emul+0x240>
   14a2c:	0124d503          	lhu	a0,18(s1)
   14a30:	00f57733          	and	a4,a0,a5
   14a34:	0cf71363          	bne	a4,a5,14afa <emul+0x158>
   14a38:	87a6                	mv	a5,s1
   14a3a:	0007d703          	lhu	a4,0(a5)
   14a3e:	0789                	addi	a5,a5,2
   14a40:	0e071a63          	bnez	a4,14b34 <emul+0x192>
   14a44:	fef99be3          	bne	s3,a5,14a3a <emul+0x98>
   14a48:	0004d783          	lhu	a5,0(s1)
   14a4c:	0489                	addi	s1,s1,2
   14a4e:	28079e63          	bnez	a5,14cea <emul+0x348>
   14a52:	ff349be3          	bne	s1,s3,14a48 <emul+0xa6>
   14a56:	00f55713          	srli	a4,a0,0xf
   14a5a:	67a1                	lui	a5,0x8
   14a5c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14a5e:	10f59b63          	bne	a1,a5,14b74 <emul+0x1d2>
   14a62:	01290693          	addi	a3,s2,18
   14a66:	a201                	j	14b66 <emul+0x1c4>
   14a68:	01290693          	addi	a3,s2,18
   14a6c:	874a                	mv	a4,s2
   14a6e:	00075783          	lhu	a5,0(a4)
   14a72:	0709                	addi	a4,a4,2
   14a74:	12079763          	bnez	a5,14ba2 <emul+0x200>
   14a78:	fee69be3          	bne	a3,a4,14a6e <emul+0xcc>
   14a7c:	67a1                	lui	a5,0x8
   14a7e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14a80:	f6f80ce3          	beq	a6,a5,149f8 <emul+0x56>
   14a84:	87ca                	mv	a5,s2
   14a86:	0007d703          	lhu	a4,0(a5)
   14a8a:	0789                	addi	a5,a5,2
   14a8c:	28071163          	bnez	a4,14d0e <emul+0x36c>
   14a90:	fef69be3          	bne	a3,a5,14a86 <emul+0xe4>
   14a94:	65f5                	lui	a1,0x1d
   14a96:	cc058593          	addi	a1,a1,-832 # 1ccc0 <ezero>
   14a9a:	8526                	mv	a0,s1
   14a9c:	d10ff0ef          	jal	ra,13fac <ecmp>
   14aa0:	10050c63          	beqz	a0,14bb8 <emul+0x216>
   14aa4:	0124d503          	lhu	a0,18(s1)
   14aa8:	01295603          	lhu	a2,18(s2)
   14aac:	67a1                	lui	a5,0x8
   14aae:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14ab0:	00f576b3          	and	a3,a0,a5
   14ab4:	00f67733          	and	a4,a2,a5
   14ab8:	8836                	mv	a6,a3
   14aba:	0007059b          	sext.w	a1,a4
   14abe:	06f69d63          	bne	a3,a5,14b38 <emul+0x196>
   14ac2:	01248993          	addi	s3,s1,18
   14ac6:	0007059b          	sext.w	a1,a4
   14aca:	b7bd                	j	14a38 <emul+0x96>
   14acc:	01440713          	addi	a4,s0,20
   14ad0:	0004d783          	lhu	a5,0(s1)
   14ad4:	0409                	addi	s0,s0,2
   14ad6:	0489                	addi	s1,s1,2
   14ad8:	fef41f23          	sh	a5,-2(s0)
   14adc:	fee41ae3          	bne	s0,a4,14ad0 <emul+0x12e>
   14ae0:	70ea                	ld	ra,184(sp)
   14ae2:	744a                	ld	s0,176(sp)
   14ae4:	74aa                	ld	s1,168(sp)
   14ae6:	790a                	ld	s2,160(sp)
   14ae8:	69ea                	ld	s3,152(sp)
   14aea:	6a4a                	ld	s4,144(sp)
   14aec:	6aaa                	ld	s5,136(sp)
   14aee:	6b0a                	ld	s6,128(sp)
   14af0:	7be6                	ld	s7,120(sp)
   14af2:	7c46                	ld	s8,112(sp)
   14af4:	7ca6                	ld	s9,104(sp)
   14af6:	6129                	addi	sp,sp,192
   14af8:	8082                	ret
   14afa:	8526                	mv	a0,s1
   14afc:	858a                	mv	a1,sp
   14afe:	c18ff0ef          	jal	ra,13f16 <emovi>
   14b02:	100c                	addi	a1,sp,32
   14b04:	854a                	mv	a0,s2
   14b06:	c10ff0ef          	jal	ra,13f16 <emovi>
   14b0a:	00215483          	lhu	s1,2(sp)
   14b0e:	02215983          	lhu	s3,34(sp)
   14b12:	e8f9                	bnez	s1,14be8 <emul+0x246>
   14b14:	005c                	addi	a5,sp,4
   14b16:	0834                	addi	a3,sp,24
   14b18:	1cf68b63          	beq	a3,a5,14cee <emul+0x34c>
   14b1c:	0007d703          	lhu	a4,0(a5)
   14b20:	0789                	addi	a5,a5,2
   14b22:	db7d                	beqz	a4,14b18 <emul+0x176>
   14b24:	850a                	mv	a0,sp
   14b26:	994ff0ef          	jal	ra,13cba <enormlz>
   14b2a:	02215703          	lhu	a4,34(sp)
   14b2e:	40a004b3          	neg	s1,a0
   14b32:	a865                	j	14bea <emul+0x248>
   14b34:	6821                	lui	a6,0x8
   14b36:	187d                	addi	a6,a6,-1 # 7fff <exit-0x80e9>
   14b38:	67a1                	lui	a5,0x8
   14b3a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14b3c:	faf59fe3          	bne	a1,a5,14afa <emul+0x158>
   14b40:	01290693          	addi	a3,s2,18
   14b44:	87ca                	mv	a5,s2
   14b46:	0007d703          	lhu	a4,0(a5)
   14b4a:	0789                	addi	a5,a5,2
   14b4c:	f75d                	bnez	a4,14afa <emul+0x158>
   14b4e:	fed79ce3          	bne	a5,a3,14b46 <emul+0x1a4>
   14b52:	67a1                	lui	a5,0x8
   14b54:	2801                	sext.w	a6,a6
   14b56:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14b58:	00f55713          	srli	a4,a0,0xf
   14b5c:	01248993          	addi	s3,s1,18
   14b60:	85c2                	mv	a1,a6
   14b62:	eef803e3          	beq	a6,a5,14a48 <emul+0xa6>
   14b66:	00095783          	lhu	a5,0(s2)
   14b6a:	0909                	addi	s2,s2,2
   14b6c:	16079d63          	bnez	a5,14ce6 <emul+0x344>
   14b70:	fed91be3          	bne	s2,a3,14b66 <emul+0x1c4>
   14b74:	00f65793          	srli	a5,a2,0xf
   14b78:	8fb9                	xor	a5,a5,a4
   14b7a:	00f7979b          	slliw	a5,a5,0xf
   14b7e:	00f41923          	sh	a5,18(s0)
   14b82:	01240713          	addi	a4,s0,18
   14b86:	87a2                	mv	a5,s0
   14b88:	0789                	addi	a5,a5,2
   14b8a:	fe079f23          	sh	zero,-2(a5)
   14b8e:	fee79de3          	bne	a5,a4,14b88 <emul+0x1e6>
   14b92:	01245783          	lhu	a5,18(s0)
   14b96:	6721                	lui	a4,0x8
   14b98:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14b9a:	8fd9                	or	a5,a5,a4
   14b9c:	00f41923          	sh	a5,18(s0)
   14ba0:	b781                	j	14ae0 <emul+0x13e>
   14ba2:	01490713          	addi	a4,s2,20
   14ba6:	00095783          	lhu	a5,0(s2)
   14baa:	0909                	addi	s2,s2,2
   14bac:	0409                	addi	s0,s0,2
   14bae:	fef41f23          	sh	a5,-2(s0)
   14bb2:	fee91ae3          	bne	s2,a4,14ba6 <emul+0x204>
   14bb6:	b72d                	j	14ae0 <emul+0x13e>
   14bb8:	01040713          	addi	a4,s0,16
   14bbc:	87a2                	mv	a5,s0
   14bbe:	0789                	addi	a5,a5,2
   14bc0:	fe079f23          	sh	zero,-2(a5)
   14bc4:	fee79de3          	bne	a5,a4,14bbe <emul+0x21c>
   14bc8:	77f1                	lui	a5,0xffffc
   14bca:	00f41823          	sh	a5,16(s0)
   14bce:	77e1                	lui	a5,0xffff8
   14bd0:	fff7c793          	not	a5,a5
   14bd4:	00f41923          	sh	a5,18(s0)
   14bd8:	b721                	j	14ae0 <emul+0x13e>
   14bda:	67a1                	lui	a5,0x8
   14bdc:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14bde:	e4f59de3          	bne	a1,a5,14a38 <emul+0x96>
   14be2:	01290693          	addi	a3,s2,18
   14be6:	bd79                	j	14a84 <emul+0xe2>
   14be8:	874e                	mv	a4,s3
   14bea:	894e                	mv	s2,s3
   14bec:	105c                	addi	a5,sp,36
   14bee:	1834                	addi	a3,sp,56
   14bf0:	ef11                	bnez	a4,14c0c <emul+0x26a>
   14bf2:	10d78663          	beq	a5,a3,14cfe <emul+0x35c>
   14bf6:	0007d703          	lhu	a4,0(a5)
   14bfa:	0789                	addi	a5,a5,2
   14bfc:	db7d                	beqz	a4,14bf2 <emul+0x250>
   14bfe:	1008                	addi	a0,sp,32
   14c00:	8baff0ef          	jal	ra,13cba <enormlz>
   14c04:	02215703          	lhu	a4,34(sp)
   14c08:	40a98933          	sub	s2,s3,a0
   14c0c:	02015783          	lhu	a5,32(sp)
   14c10:	038a0993          	addi	s3,s4,56
   14c14:	02ea1b23          	sh	a4,54(s4)
   14c18:	02fa1a23          	sh	a5,52(s4)
   14c1c:	04ea0713          	addi	a4,s4,78
   14c20:	87ce                	mv	a5,s3
   14c22:	00079023          	sh	zero,0(a5)
   14c26:	0789                	addi	a5,a5,2
   14c28:	fee79de3          	bne	a5,a4,14c22 <emul+0x280>
   14c2c:	04ca0c13          	addi	s8,s4,76
   14c30:	4b81                	li	s7,0
   14c32:	01810a93          	addi	s5,sp,24
   14c36:	00410c93          	addi	s9,sp,4
   14c3a:	04210b13          	addi	s6,sp,66
   14c3e:	000ad503          	lhu	a0,0(s5)
   14c42:	1af9                	addi	s5,s5,-2
   14c44:	e935                	bnez	a0,14cb8 <emul+0x316>
   14c46:	04ca5783          	lhu	a5,76(s4)
   14c4a:	8762                	mv	a4,s8
   14c4c:	00fbebb3          	or	s7,s7,a5
   14c50:	ffe75603          	lhu	a2,-2(a4)
   14c54:	1779                	addi	a4,a4,-2
   14c56:	00c71123          	sh	a2,2(a4)
   14c5a:	fee99be3          	bne	s3,a4,14c50 <emul+0x2ae>
   14c5e:	020a1c23          	sh	zero,56(s4)
   14c62:	fd9a9ee3          	bne	s5,s9,14c3e <emul+0x29c>
   14c66:	034a0713          	addi	a4,s4,52
   14c6a:	101c                	addi	a5,sp,32
   14c6c:	03a10613          	addi	a2,sp,58
   14c70:	00075683          	lhu	a3,0(a4)
   14c74:	0789                	addi	a5,a5,2
   14c76:	0709                	addi	a4,a4,2
   14c78:	fed79f23          	sh	a3,-2(a5)
   14c7c:	fec79ae3          	bne	a5,a2,14c70 <emul+0x2ce>
   14c80:	76f1                	lui	a3,0xffffc
   14c82:	94ca                	add	s1,s1,s2
   14c84:	0689                	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffdc6ea>
   14c86:	85de                	mv	a1,s7
   14c88:	1008                	addi	a0,sp,32
   14c8a:	87d2                	mv	a5,s4
   14c8c:	04000713          	li	a4,64
   14c90:	96a6                	add	a3,a3,s1
   14c92:	4601                	li	a2,0
   14c94:	bfcff0ef          	jal	ra,14090 <emdnorm>
   14c98:	02015703          	lhu	a4,32(sp)
   14c9c:	00015783          	lhu	a5,0(sp)
   14ca0:	85a2                	mv	a1,s0
   14ca2:	1008                	addi	a0,sp,32
   14ca4:	8f99                	sub	a5,a5,a4
   14ca6:	00f037b3          	snez	a5,a5
   14caa:	40f007bb          	negw	a5,a5
   14cae:	02f11023          	sh	a5,32(sp)
   14cb2:	f7dfe0ef          	jal	ra,13c2e <emovo.constprop.0>
   14cb6:	b52d                	j	14ae0 <emul+0x13e>
   14cb8:	0090                	addi	a2,sp,64
   14cba:	100c                	addi	a1,sp,32
   14cbc:	f0bfe0ef          	jal	ra,13bc6 <m16m>
   14cc0:	8562                	mv	a0,s8
   14cc2:	4581                	li	a1,0
   14cc4:	08b0                	addi	a2,sp,88
   14cc6:	00055783          	lhu	a5,0(a0)
   14cca:	00065703          	lhu	a4,0(a2)
   14cce:	1579                	addi	a0,a0,-2
   14cd0:	1679                	addi	a2,a2,-2
   14cd2:	973e                	add	a4,a4,a5
   14cd4:	972e                	add	a4,a4,a1
   14cd6:	01075593          	srli	a1,a4,0x10
   14cda:	00e51123          	sh	a4,2(a0)
   14cde:	8985                	andi	a1,a1,1
   14ce0:	ff6613e3          	bne	a2,s6,14cc6 <emul+0x324>
   14ce4:	b78d                	j	14c46 <emul+0x2a4>
   14ce6:	4781                	li	a5,0
   14ce8:	bd41                	j	14b78 <emul+0x1d6>
   14cea:	4701                	li	a4,0
   14cec:	b3bd                	j	14a5a <emul+0xb8>
   14cee:	01440793          	addi	a5,s0,20
   14cf2:	0409                	addi	s0,s0,2
   14cf4:	fe041f23          	sh	zero,-2(s0)
   14cf8:	fef41de3          	bne	s0,a5,14cf2 <emul+0x350>
   14cfc:	b3d5                	j	14ae0 <emul+0x13e>
   14cfe:	01440793          	addi	a5,s0,20
   14d02:	0409                	addi	s0,s0,2
   14d04:	fe041f23          	sh	zero,-2(s0)
   14d08:	fef41de3          	bne	s0,a5,14d02 <emul+0x360>
   14d0c:	bbd1                	j	14ae0 <emul+0x13e>
   14d0e:	0124d503          	lhu	a0,18(s1)
   14d12:	67a1                	lui	a5,0x8
   14d14:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14d16:	00f575b3          	and	a1,a0,a5
   14d1a:	01248993          	addi	s3,s1,18
   14d1e:	882e                	mv	a6,a1
   14d20:	e2f592e3          	bne	a1,a5,14b44 <emul+0x1a2>
   14d24:	bb11                	j	14a38 <emul+0x96>

0000000000014d26 <_ldtoa_r>:
   14d26:	d9010113          	addi	sp,sp,-624
   14d2a:	09100313          	li	t1,145
   14d2e:	f4b2                	sd	a2,104(sp)
   14d30:	06053e03          	ld	t3,96(a0)
   14d34:	02031613          	slli	a2,t1,0x20
   14d38:	167d                	addi	a2,a2,-1
   14d3a:	ec3e                	sd	a5,24(sp)
   14d3c:	09000793          	li	a5,144
   14d40:	26813023          	sd	s0,608(sp)
   14d44:	23513c23          	sd	s5,568(sp)
   14d48:	23713423          	sd	s7,552(sp)
   14d4c:	26113423          	sd	ra,616(sp)
   14d50:	24913c23          	sd	s1,600(sp)
   14d54:	25213823          	sd	s2,592(sp)
   14d58:	25313423          	sd	s3,584(sp)
   14d5c:	25413023          	sd	s4,576(sp)
   14d60:	23613823          	sd	s6,560(sp)
   14d64:	23813023          	sd	s8,544(sp)
   14d68:	21913c23          	sd	s9,536(sp)
   14d6c:	21a13823          	sd	s10,528(sp)
   14d70:	21b13423          	sd	s11,520(sp)
   14d74:	f0ae                	sd	a1,96(sp)
   14d76:	fb32                	sd	a2,432(sp)
   14d78:	e43a                	sd	a4,8(sp)
   14d7a:	f046                	sd	a7,32(sp)
   14d7c:	e83e                	sd	a5,16(sp)
   14d7e:	8aaa                	mv	s5,a0
   14d80:	8bb6                	mv	s7,a3
   14d82:	8442                	mv	s0,a6
   14d84:	020e0263          	beqz	t3,14da8 <_ldtoa_r+0x82>
   14d88:	5538                	lw	a4,104(a0)
   14d8a:	4785                	li	a5,1
   14d8c:	85f2                	mv	a1,t3
   14d8e:	00e797bb          	sllw	a5,a5,a4
   14d92:	00fe2623          	sw	a5,12(t3)
   14d96:	00ee2423          	sw	a4,8(t3)
   14d9a:	102010ef          	jal	ra,15e9c <_Bfree>
   14d9e:	1b412783          	lw	a5,436(sp)
   14da2:	060ab023          	sd	zero,96(s5)
   14da6:	e83e                	sd	a5,16(sp)
   14da8:	090c                	addi	a1,sp,144
   14daa:	1088                	addi	a0,sp,96
   14dac:	edeff0ef          	jal	ra,1448a <e113toe.isra.0>
   14db0:	0a215683          	lhu	a3,162(sp)
   14db4:	67a1                	lui	a5,0x8
   14db6:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14db8:	00f6f5b3          	and	a1,a3,a5
   14dbc:	00f59c63          	bne	a1,a5,14dd4 <_ldtoa_r+0xae>
   14dc0:	091c                	addi	a5,sp,144
   14dc2:	0a210613          	addi	a2,sp,162
   14dc6:	0007d703          	lhu	a4,0(a5)
   14dca:	0789                	addi	a5,a5,2
   14dcc:	0e0714e3          	bnez	a4,156b4 <_ldtoa_r+0x98e>
   14dd0:	fec79be3          	bne	a5,a2,14dc6 <_ldtoa_r+0xa0>
   14dd4:	82bd                	srli	a3,a3,0xf
   14dd6:	c014                	sw	a3,0(s0)
   14dd8:	478d                	li	a5,3
   14dda:	68fb8163          	beq	s7,a5,1545c <_ldtoa_r+0x736>
   14dde:	47d1                	li	a5,20
   14de0:	e03e                	sd	a5,0(sp)
   14de2:	0c0b9ce3          	bnez	s7,156ba <_ldtoa_r+0x994>
   14de6:	67a1                	lui	a5,0x8
   14de8:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14dea:	00f59c63          	bne	a1,a5,14e02 <_ldtoa_r+0xdc>
   14dee:	091c                	addi	a5,sp,144
   14df0:	0a210693          	addi	a3,sp,162
   14df4:	0007d703          	lhu	a4,0(a5)
   14df8:	0789                	addi	a5,a5,2
   14dfa:	6c071263          	bnez	a4,154be <_ldtoa_r+0x798>
   14dfe:	fed79be3          	bne	a5,a3,14df4 <_ldtoa_r+0xce>
   14e02:	09000793          	li	a5,144
   14e06:	1af12a23          	sw	a5,436(sp)
   14e0a:	1918                	addi	a4,sp,176
   14e0c:	091c                	addi	a5,sp,144
   14e0e:	1150                	addi	a2,sp,164
   14e10:	0007d683          	lhu	a3,0(a5)
   14e14:	0789                	addi	a5,a5,2
   14e16:	0709                	addi	a4,a4,2
   14e18:	fed71f23          	sh	a3,-2(a4)
   14e1c:	fec79ae3          	bne	a5,a2,14e10 <_ldtoa_r+0xea>
   14e20:	0c215603          	lhu	a2,194(sp)
   14e24:	f402                	sd	zero,40(sp)
   14e26:	00f65793          	srli	a5,a2,0xf
   14e2a:	40079463          	bnez	a5,15232 <_ldtoa_r+0x50c>
   14e2e:	6d75                	lui	s10,0x1d
   14e30:	4681                	li	a3,0
   14e32:	099c                	addi	a5,sp,208
   14e34:	ba0d0713          	addi	a4,s10,-1120 # 1cba0 <eone>
   14e38:	0e410c13          	addi	s8,sp,228
   14e3c:	a019                	j	14e42 <_ldtoa_r+0x11c>
   14e3e:	00075683          	lhu	a3,0(a4)
   14e42:	0789                	addi	a5,a5,2
   14e44:	fed79f23          	sh	a3,-2(a5)
   14e48:	0709                	addi	a4,a4,2
   14e4a:	ff879ae3          	bne	a5,s8,14e3e <_ldtoa_r+0x118>
   14e4e:	10060363          	beqz	a2,14f54 <_ldtoa_r+0x22e>
   14e52:	67a1                	lui	a5,0x8
   14e54:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14e56:	1af605e3          	beq	a2,a5,15800 <_ldtoa_r+0xada>
   14e5a:	0c011783          	lh	a5,192(sp)
   14e5e:	2007d3e3          	bgez	a5,15864 <_ldtoa_r+0xb3e>
   14e62:	190c                	addi	a1,sp,176
   14e64:	ba0d0513          	addi	a0,s10,-1120
   14e68:	944ff0ef          	jal	ra,13fac <ecmp>
   14e6c:	0e050e63          	beqz	a0,14f68 <_ldtoa_r+0x242>
   14e70:	66054363          	bltz	a0,154d6 <_ldtoa_r+0x7b0>
   14e74:	0c215783          	lhu	a5,194(sp)
   14e78:	260794e3          	bnez	a5,158e0 <_ldtoa_r+0xbba>
   14e7c:	0c011783          	lh	a5,192(sp)
   14e80:	3607c3e3          	bltz	a5,159e6 <_ldtoa_r+0xcc0>
   14e84:	67f5                	lui	a5,0x1d
   14e86:	bb878793          	addi	a5,a5,-1096 # 1cbb8 <etens>
   14e8a:	6df5                	lui	s11,0x1d
   14e8c:	4481                	li	s1,0
   14e8e:	e4be                	sd	a5,72(sp)
   14e90:	1b010a13          	addi	s4,sp,432
   14e94:	ca8d8d93          	addi	s11,s11,-856 # 1cca8 <etens+0xf0>
   14e98:	1910                	addi	a2,sp,176
   14e9a:	86d2                	mv	a3,s4
   14e9c:	85b2                	mv	a1,a2
   14e9e:	856e                	mv	a0,s11
   14ea0:	b03ff0ef          	jal	ra,149a2 <emul>
   14ea4:	0c011783          	lh	a5,192(sp)
   14ea8:	34fd                	addiw	s1,s1,-1
   14eaa:	fe07d7e3          	bgez	a5,14e98 <_ldtoa_r+0x172>
   14eae:	0a00                	addi	s0,sp,272
   14eb0:	12810993          	addi	s3,sp,296
   14eb4:	8722                	mv	a4,s0
   14eb6:	191c                	addi	a5,sp,176
   14eb8:	01d0                	addi	a2,sp,196
   14eba:	0007d683          	lhu	a3,0(a5)
   14ebe:	0789                	addi	a5,a5,2
   14ec0:	0709                	addi	a4,a4,2
   14ec2:	fed71f23          	sh	a3,-2(a4)
   14ec6:	fec79ae3          	bne	a5,a2,14eba <_ldtoa_r+0x194>
   14eca:	6775                	lui	a4,0x1d
   14ecc:	4681                	li	a3,0
   14ece:	099c                	addi	a5,sp,208
   14ed0:	ba070713          	addi	a4,a4,-1120 # 1cba0 <eone>
   14ed4:	a019                	j	14eda <_ldtoa_r+0x1b4>
   14ed6:	00075683          	lhu	a3,0(a4)
   14eda:	0789                	addi	a5,a5,2
   14edc:	fed79f23          	sh	a3,-2(a5)
   14ee0:	0709                	addi	a4,a4,2
   14ee2:	ff879ae3          	bne	a5,s8,14ed6 <_ldtoa_r+0x1b0>
   14ee6:	6975                	lui	s2,0x1d
   14ee8:	a9890913          	addi	s2,s2,-1384 # 1ca98 <emtens>
   14eec:	6da6                	ld	s11,72(sp)
   14eee:	7b7d                	lui	s6,0xfffff
   14ef0:	0f090c13          	addi	s8,s2,240
   14ef4:	a019                	j	14efa <_ldtoa_r+0x1d4>
   14ef6:	0951                	addi	s2,s2,20
   14ef8:	0dd1                	addi	s11,s11,20
   14efa:	85a2                	mv	a1,s0
   14efc:	ba0d0513          	addi	a0,s10,-1120
   14f00:	8acff0ef          	jal	ra,13fac <ecmp>
   14f04:	02a05e63          	blez	a0,14f40 <_ldtoa_r+0x21a>
   14f08:	85a2                	mv	a1,s0
   14f0a:	854a                	mv	a0,s2
   14f0c:	8a0ff0ef          	jal	ra,13fac <ecmp>
   14f10:	02054063          	bltz	a0,14f30 <_ldtoa_r+0x20a>
   14f14:	86d2                	mv	a3,s4
   14f16:	8622                	mv	a2,s0
   14f18:	85a2                	mv	a1,s0
   14f1a:	856e                	mv	a0,s11
   14f1c:	a87ff0ef          	jal	ra,149a2 <emul>
   14f20:	0990                	addi	a2,sp,208
   14f22:	86d2                	mv	a3,s4
   14f24:	85b2                	mv	a1,a2
   14f26:	856e                	mv	a0,s11
   14f28:	a7bff0ef          	jal	ra,149a2 <emul>
   14f2c:	009b04bb          	addw	s1,s6,s1
   14f30:	01fb579b          	srliw	a5,s6,0x1f
   14f34:	016787bb          	addw	a5,a5,s6
   14f38:	4017db1b          	sraiw	s6,a5,0x1
   14f3c:	fb891de3          	bne	s2,s8,14ef6 <_ldtoa_r+0x1d0>
   14f40:	0990                	addi	a2,sp,208
   14f42:	86d2                	mv	a3,s4
   14f44:	ba0d0593          	addi	a1,s10,-1120
   14f48:	8532                	mv	a0,a2
   14f4a:	e3cff0ef          	jal	ra,14586 <ediv>
   14f4e:	17010913          	addi	s2,sp,368
   14f52:	a01d                	j	14f78 <_ldtoa_r+0x252>
   14f54:	191c                	addi	a5,sp,176
   14f56:	0c210693          	addi	a3,sp,194
   14f5a:	0007d703          	lhu	a4,0(a5)
   14f5e:	f00712e3          	bnez	a4,14e62 <_ldtoa_r+0x13c>
   14f62:	0789                	addi	a5,a5,2
   14f64:	fed79be3          	bne	a5,a3,14f5a <_ldtoa_r+0x234>
   14f68:	4481                	li	s1,0
   14f6a:	17010913          	addi	s2,sp,368
   14f6e:	1b010a13          	addi	s4,sp,432
   14f72:	0a00                	addi	s0,sp,272
   14f74:	12810993          	addi	s3,sp,296
   14f78:	85a2                	mv	a1,s0
   14f7a:	0988                	addi	a0,sp,208
   14f7c:	f9bfe0ef          	jal	ra,13f16 <emovi>
   14f80:	0998                	addi	a4,sp,208
   14f82:	87a2                	mv	a5,s0
   14f84:	0007d683          	lhu	a3,0(a5)
   14f88:	0789                	addi	a5,a5,2
   14f8a:	0709                	addi	a4,a4,2
   14f8c:	fed71f23          	sh	a3,-2(a4)
   14f90:	ff379ae3          	bne	a5,s3,14f84 <_ldtoa_r+0x25e>
   14f94:	85a2                	mv	a1,s0
   14f96:	1908                	addi	a0,sp,176
   14f98:	0e011423          	sh	zero,232(sp)
   14f9c:	f7bfe0ef          	jal	ra,13f16 <emovi>
   14fa0:	191c                	addi	a5,sp,176
   14fa2:	00045703          	lhu	a4,0(s0)
   14fa6:	0409                	addi	s0,s0,2
   14fa8:	0789                	addi	a5,a5,2
   14faa:	fee79f23          	sh	a4,-2(a5)
   14fae:	ff341ae3          	bne	s0,s3,14fa2 <_ldtoa_r+0x27c>
   14fb2:	8652                	mv	a2,s4
   14fb4:	190c                	addi	a1,sp,176
   14fb6:	0988                	addi	a0,sp,208
   14fb8:	0c011423          	sh	zero,200(sp)
   14fbc:	bdaff0ef          	jal	ra,14396 <eiremain>
   14fc0:	1fc15b03          	lhu	s6,508(sp)
   14fc4:	6475                	lui	s0,0x1d
   14fc6:	100b1863          	bnez	s6,150d6 <_ldtoa_r+0x3b0>
   14fca:	0c810d93          	addi	s11,sp,200
   14fce:	0b210993          	addi	s3,sp,178
   14fd2:	0f210d13          	addi	s10,sp,242
   14fd6:	cc040593          	addi	a1,s0,-832 # 1ccc0 <ezero>
   14fda:	1908                	addi	a0,sp,176
   14fdc:	fd1fe0ef          	jal	ra,13fac <ecmp>
   14fe0:	c97d                	beqz	a0,150d6 <_ldtoa_r+0x3b0>
   14fe2:	4681                	li	a3,0
   14fe4:	866e                	mv	a2,s11
   14fe6:	00065783          	lhu	a5,0(a2)
   14fea:	00f7d593          	srli	a1,a5,0xf
   14fee:	c199                	beqz	a1,14ff4 <_ldtoa_r+0x2ce>
   14ff0:	0016e693          	ori	a3,a3,1
   14ff4:	0017979b          	slliw	a5,a5,0x1
   14ff8:	17c2                	slli	a5,a5,0x30
   14ffa:	0026f593          	andi	a1,a3,2
   14ffe:	93c1                	srli	a5,a5,0x30
   15000:	c199                	beqz	a1,15006 <_ldtoa_r+0x2e0>
   15002:	0017e793          	ori	a5,a5,1
   15006:	0016969b          	slliw	a3,a3,0x1
   1500a:	00f61023          	sh	a5,0(a2)
   1500e:	16c2                	slli	a3,a3,0x30
   15010:	1679                	addi	a2,a2,-2
   15012:	92c1                	srli	a3,a3,0x30
   15014:	fd3619e3          	bne	a2,s3,14fe6 <_ldtoa_r+0x2c0>
   15018:	1994                	addi	a3,sp,240
   1501a:	191c                	addi	a5,sp,176
   1501c:	0007d603          	lhu	a2,0(a5)
   15020:	0789                	addi	a5,a5,2
   15022:	0689                	addi	a3,a3,2
   15024:	fec69f23          	sh	a2,-2(a3)
   15028:	ffb79ae3          	bne	a5,s11,1501c <_ldtoa_r+0x2f6>
   1502c:	10011423          	sh	zero,264(sp)
   15030:	4681                	li	a3,0
   15032:	0230                	addi	a2,sp,264
   15034:	00065783          	lhu	a5,0(a2)
   15038:	00f7d593          	srli	a1,a5,0xf
   1503c:	c199                	beqz	a1,15042 <_ldtoa_r+0x31c>
   1503e:	0016e693          	ori	a3,a3,1
   15042:	0017979b          	slliw	a5,a5,0x1
   15046:	17c2                	slli	a5,a5,0x30
   15048:	0026f593          	andi	a1,a3,2
   1504c:	93c1                	srli	a5,a5,0x30
   1504e:	c199                	beqz	a1,15054 <_ldtoa_r+0x32e>
   15050:	0017e793          	ori	a5,a5,1
   15054:	0016969b          	slliw	a3,a3,0x1
   15058:	00f61023          	sh	a5,0(a2)
   1505c:	16c2                	slli	a3,a3,0x30
   1505e:	1679                	addi	a2,a2,-2
   15060:	92c1                	srli	a3,a3,0x30
   15062:	fda619e3          	bne	a2,s10,15034 <_ldtoa_r+0x30e>
   15066:	4681                	li	a3,0
   15068:	0230                	addi	a2,sp,264
   1506a:	00065783          	lhu	a5,0(a2)
   1506e:	00f7d593          	srli	a1,a5,0xf
   15072:	c199                	beqz	a1,15078 <_ldtoa_r+0x352>
   15074:	0016e693          	ori	a3,a3,1
   15078:	0017979b          	slliw	a5,a5,0x1
   1507c:	17c2                	slli	a5,a5,0x30
   1507e:	0026f593          	andi	a1,a3,2
   15082:	93c1                	srli	a5,a5,0x30
   15084:	c199                	beqz	a1,1508a <_ldtoa_r+0x364>
   15086:	0017e793          	ori	a5,a5,1
   1508a:	0016969b          	slliw	a3,a3,0x1
   1508e:	00f61023          	sh	a5,0(a2)
   15092:	16c2                	slli	a3,a3,0x30
   15094:	1679                	addi	a2,a2,-2
   15096:	92c1                	srli	a3,a3,0x30
   15098:	fda619e3          	bne	a2,s10,1506a <_ldtoa_r+0x344>
   1509c:	4581                	li	a1,0
   1509e:	866e                	mv	a2,s11
   150a0:	0234                	addi	a3,sp,264
   150a2:	00065503          	lhu	a0,0(a2)
   150a6:	0006d783          	lhu	a5,0(a3)
   150aa:	1679                	addi	a2,a2,-2
   150ac:	16f9                	addi	a3,a3,-2
   150ae:	97aa                	add	a5,a5,a0
   150b0:	97ae                	add	a5,a5,a1
   150b2:	0107d593          	srli	a1,a5,0x10
   150b6:	00f61123          	sh	a5,2(a2)
   150ba:	8985                	andi	a1,a1,1
   150bc:	ffa693e3          	bne	a3,s10,150a2 <_ldtoa_r+0x37c>
   150c0:	8652                	mv	a2,s4
   150c2:	190c                	addi	a1,sp,176
   150c4:	0988                	addi	a0,sp,208
   150c6:	ad0ff0ef          	jal	ra,14396 <eiremain>
   150ca:	1fc15783          	lhu	a5,508(sp)
   150ce:	34fd                	addiw	s1,s1,-1
   150d0:	f00783e3          	beqz	a5,14fd6 <_ldtoa_r+0x2b0>
   150d4:	8b3e                	mv	s6,a5
   150d6:	7722                	ld	a4,40(sp)
   150d8:	02d00793          	li	a5,45
   150dc:	e319                	bnez	a4,150e2 <_ldtoa_r+0x3bc>
   150de:	02000793          	li	a5,32
   150e2:	16f10823          	sb	a5,368(sp)
   150e6:	470d                	li	a4,3
   150e8:	6782                	ld	a5,0(sp)
   150ea:	00eb9363          	bne	s7,a4,150f0 <_ldtoa_r+0x3ca>
   150ee:	9fa5                	addw	a5,a5,s1
   150f0:	02a00713          	li	a4,42
   150f4:	0007841b          	sext.w	s0,a5
   150f8:	00f75463          	bge	a4,a5,15100 <_ldtoa_r+0x3da>
   150fc:	02a00413          	li	s0,42
   15100:	4729                	li	a4,10
   15102:	38eb0b63          	beq	s6,a4,15498 <_ldtoa_r+0x772>
   15106:	030b0b1b          	addiw	s6,s6,48 # fffffffffffff030 <__BSS_END__+0xfffffffffffdf718>
   1510a:	02e00713          	li	a4,46
   1510e:	176108a3          	sb	s6,369(sp)
   15112:	16e10923          	sb	a4,370(sp)
   15116:	1207c663          	bltz	a5,15242 <_ldtoa_r+0x51c>
   1511a:	17310c13          	addi	s8,sp,371
   1511e:	4c81                	li	s9,0
   15120:	0f010b13          	addi	s6,sp,240
   15124:	0c810d93          	addi	s11,sp,200
   15128:	0b210993          	addi	s3,sp,178
   1512c:	0f210d13          	addi	s10,sp,242
   15130:	4601                	li	a2,0
   15132:	85ee                	mv	a1,s11
   15134:	0005d783          	lhu	a5,0(a1)
   15138:	00f7d513          	srli	a0,a5,0xf
   1513c:	c119                	beqz	a0,15142 <_ldtoa_r+0x41c>
   1513e:	00166613          	ori	a2,a2,1
   15142:	0017979b          	slliw	a5,a5,0x1
   15146:	17c2                	slli	a5,a5,0x30
   15148:	00267513          	andi	a0,a2,2
   1514c:	93c1                	srli	a5,a5,0x30
   1514e:	c119                	beqz	a0,15154 <_ldtoa_r+0x42e>
   15150:	0017e793          	ori	a5,a5,1
   15154:	0016161b          	slliw	a2,a2,0x1
   15158:	00f59023          	sh	a5,0(a1)
   1515c:	1642                	slli	a2,a2,0x30
   1515e:	15f9                	addi	a1,a1,-2
   15160:	9241                	srli	a2,a2,0x30
   15162:	fd3599e3          	bne	a1,s3,15134 <_ldtoa_r+0x40e>
   15166:	865a                	mv	a2,s6
   15168:	191c                	addi	a5,sp,176
   1516a:	0007d583          	lhu	a1,0(a5)
   1516e:	0789                	addi	a5,a5,2
   15170:	0609                	addi	a2,a2,2
   15172:	feb61f23          	sh	a1,-2(a2)
   15176:	ffb79ae3          	bne	a5,s11,1516a <_ldtoa_r+0x444>
   1517a:	10011423          	sh	zero,264(sp)
   1517e:	4601                	li	a2,0
   15180:	022c                	addi	a1,sp,264
   15182:	0005d783          	lhu	a5,0(a1)
   15186:	00f7d513          	srli	a0,a5,0xf
   1518a:	c119                	beqz	a0,15190 <_ldtoa_r+0x46a>
   1518c:	00166613          	ori	a2,a2,1
   15190:	0017979b          	slliw	a5,a5,0x1
   15194:	17c2                	slli	a5,a5,0x30
   15196:	00267513          	andi	a0,a2,2
   1519a:	93c1                	srli	a5,a5,0x30
   1519c:	c119                	beqz	a0,151a2 <_ldtoa_r+0x47c>
   1519e:	0017e793          	ori	a5,a5,1
   151a2:	0016161b          	slliw	a2,a2,0x1
   151a6:	00f59023          	sh	a5,0(a1)
   151aa:	1642                	slli	a2,a2,0x30
   151ac:	15f9                	addi	a1,a1,-2
   151ae:	9241                	srli	a2,a2,0x30
   151b0:	fda599e3          	bne	a1,s10,15182 <_ldtoa_r+0x45c>
   151b4:	4601                	li	a2,0
   151b6:	022c                	addi	a1,sp,264
   151b8:	0005d783          	lhu	a5,0(a1)
   151bc:	00f7d513          	srli	a0,a5,0xf
   151c0:	c119                	beqz	a0,151c6 <_ldtoa_r+0x4a0>
   151c2:	00166613          	ori	a2,a2,1
   151c6:	0017979b          	slliw	a5,a5,0x1
   151ca:	17c2                	slli	a5,a5,0x30
   151cc:	00267513          	andi	a0,a2,2
   151d0:	93c1                	srli	a5,a5,0x30
   151d2:	c119                	beqz	a0,151d8 <_ldtoa_r+0x4b2>
   151d4:	0017e793          	ori	a5,a5,1
   151d8:	0016161b          	slliw	a2,a2,0x1
   151dc:	00f59023          	sh	a5,0(a1)
   151e0:	1642                	slli	a2,a2,0x30
   151e2:	15f9                	addi	a1,a1,-2
   151e4:	9241                	srli	a2,a2,0x30
   151e6:	fda599e3          	bne	a1,s10,151b8 <_ldtoa_r+0x492>
   151ea:	4501                	li	a0,0
   151ec:	85ee                	mv	a1,s11
   151ee:	0230                	addi	a2,sp,264
   151f0:	0005d883          	lhu	a7,0(a1)
   151f4:	00065783          	lhu	a5,0(a2)
   151f8:	15f9                	addi	a1,a1,-2
   151fa:	1679                	addi	a2,a2,-2
   151fc:	97c6                	add	a5,a5,a7
   151fe:	97aa                	add	a5,a5,a0
   15200:	0107d513          	srli	a0,a5,0x10
   15204:	00f59123          	sh	a5,2(a1)
   15208:	8905                	andi	a0,a0,1
   1520a:	ffa613e3          	bne	a2,s10,151f0 <_ldtoa_r+0x4ca>
   1520e:	8652                	mv	a2,s4
   15210:	190c                	addi	a1,sp,176
   15212:	0988                	addi	a0,sp,208
   15214:	982ff0ef          	jal	ra,14396 <eiremain>
   15218:	1fc15603          	lhu	a2,508(sp)
   1521c:	001c0793          	addi	a5,s8,1
   15220:	2c85                	addiw	s9,s9,1
   15222:	0306059b          	addiw	a1,a2,48
   15226:	feb78fa3          	sb	a1,-1(a5)
   1522a:	03944263          	blt	s0,s9,1524e <_ldtoa_r+0x528>
   1522e:	8c3e                	mv	s8,a5
   15230:	b701                	j	15130 <_ldtoa_r+0x40a>
   15232:	1646                	slli	a2,a2,0x31
   15234:	67c1                	lui	a5,0x10
   15236:	9245                	srli	a2,a2,0x31
   15238:	17fd                	addi	a5,a5,-1 # ffff <exit-0xe9>
   1523a:	0cc11123          	sh	a2,194(sp)
   1523e:	f43e                	sd	a5,40(sp)
   15240:	b6fd                	j	14e2e <_ldtoa_r+0x108>
   15242:	1fc15603          	lhu	a2,508(sp)
   15246:	17210c13          	addi	s8,sp,370
   1524a:	17310793          	addi	a5,sp,371
   1524e:	4711                	li	a4,4
   15250:	04c75663          	bge	a4,a2,1529c <_ldtoa_r+0x576>
   15254:	4715                	li	a4,5
   15256:	62e60363          	beq	a2,a4,1587c <_ldtoa_r+0xb56>
   1525a:	ffe7c703          	lbu	a4,-2(a5)
   1525e:	ffe78693          	addi	a3,a5,-2
   15262:	07f77613          	andi	a2,a4,127
   15266:	8732                	mv	a4,a2
   15268:	02044563          	bltz	s0,15292 <_ldtoa_r+0x56c>
   1526c:	02e00593          	li	a1,46
   15270:	03800513          	li	a0,56
   15274:	03000893          	li	a7,48
   15278:	5ab60663          	beq	a2,a1,15824 <_ldtoa_r+0xafe>
   1527c:	5ce55063          	bge	a0,a4,1583c <_ldtoa_r+0xb16>
   15280:	fff6c783          	lbu	a5,-1(a3)
   15284:	01168023          	sb	a7,0(a3)
   15288:	16fd                	addi	a3,a3,-1
   1528a:	07f7f613          	andi	a2,a5,127
   1528e:	8732                	mv	a4,a2
   15290:	b7e5                	j	15278 <_ldtoa_r+0x552>
   15292:	03100713          	li	a4,49
   15296:	fee78f23          	sb	a4,-2(a5)
   1529a:	2485                	addiw	s1,s1,1
   1529c:	65f5                	lui	a1,0x1d
   1529e:	8626                	mv	a2,s1
   152a0:	9e858593          	addi	a1,a1,-1560 # 1c9e8 <zeroes.0+0x38>
   152a4:	8562                	mv	a0,s8
   152a6:	62f010ef          	jal	ra,170d4 <sprintf>
   152aa:	0a215783          	lhu	a5,162(sp)
   152ae:	6742                	ld	a4,16(sp)
   152b0:	1c912023          	sw	s1,448(sp)
   152b4:	fff7c793          	not	a5,a5
   152b8:	1ae12a23          	sw	a4,436(sp)
   152bc:	03179713          	slli	a4,a5,0x31
   152c0:	14070163          	beqz	a4,15402 <_ldtoa_r+0x6dc>
   152c4:	66e2                	ld	a3,24(sp)
   152c6:	17014703          	lbu	a4,368(sp)
   152ca:	0014879b          	addiw	a5,s1,1
   152ce:	c29c                	sw	a5,0(a3)
   152d0:	87ca                	mv	a5,s2
   152d2:	c70d                	beqz	a4,152fc <_ldtoa_r+0x5d6>
   152d4:	02e00693          	li	a3,46
   152d8:	18d70e63          	beq	a4,a3,15474 <_ldtoa_r+0x74e>
   152dc:	0017c703          	lbu	a4,1(a5)
   152e0:	0785                	addi	a5,a5,1
   152e2:	fb7d                	bnez	a4,152d8 <_ldtoa_r+0x5b2>
   152e4:	04500693          	li	a3,69
   152e8:	00f96563          	bltu	s2,a5,152f2 <_ldtoa_r+0x5cc>
   152ec:	a801                	j	152fc <_ldtoa_r+0x5d6>
   152ee:	01278763          	beq	a5,s2,152fc <_ldtoa_r+0x5d6>
   152f2:	fff7c703          	lbu	a4,-1(a5)
   152f6:	17fd                	addi	a5,a5,-1
   152f8:	fed71be3          	bne	a4,a3,152ee <_ldtoa_r+0x5c8>
   152fc:	00078023          	sb	zero,0(a5)
   15300:	87ca                	mv	a5,s2
   15302:	02000693          	li	a3,32
   15306:	02d00613          	li	a2,45
   1530a:	0007c703          	lbu	a4,0(a5)
   1530e:	00d70463          	beq	a4,a3,15316 <_ldtoa_r+0x5f0>
   15312:	00c71463          	bne	a4,a2,1531a <_ldtoa_r+0x5f4>
   15316:	0785                	addi	a5,a5,1
   15318:	bfcd                	j	1530a <_ldtoa_r+0x5e4>
   1531a:	844a                	mv	s0,s2
   1531c:	a021                	j	15324 <_ldtoa_r+0x5fe>
   1531e:	0007c703          	lbu	a4,0(a5)
   15322:	8436                	mv	s0,a3
   15324:	00e40023          	sb	a4,0(s0)
   15328:	00140693          	addi	a3,s0,1
   1532c:	0785                	addi	a5,a5,1
   1532e:	fb65                	bnez	a4,1531e <_ldtoa_r+0x5f8>
   15330:	4789                	li	a5,2
   15332:	fff44683          	lbu	a3,-1(s0)
   15336:	0efb8663          	beq	s7,a5,15422 <_ldtoa_r+0x6fc>
   1533a:	6702                	ld	a4,0(sp)
   1533c:	87ba                	mv	a5,a4
   1533e:	00975363          	bge	a4,s1,15344 <_ldtoa_r+0x61e>
   15342:	87a6                	mv	a5,s1
   15344:	03000613          	li	a2,48
   15348:	0007871b          	sext.w	a4,a5
   1534c:	02c69463          	bne	a3,a2,15374 <_ldtoa_r+0x64e>
   15350:	412407b3          	sub	a5,s0,s2
   15354:	02f75063          	bge	a4,a5,15374 <_ldtoa_r+0x64e>
   15358:	03000693          	li	a3,48
   1535c:	a029                	j	15366 <_ldtoa_r+0x640>
   1535e:	412407b3          	sub	a5,s0,s2
   15362:	00f75963          	bge	a4,a5,15374 <_ldtoa_r+0x64e>
   15366:	ffe44783          	lbu	a5,-2(s0)
   1536a:	fe040fa3          	sb	zero,-1(s0)
   1536e:	147d                	addi	s0,s0,-1
   15370:	fed787e3          	beq	a5,a3,1535e <_ldtoa_r+0x638>
   15374:	478d                	li	a5,3
   15376:	0cfb8063          	beq	s7,a5,15436 <_ldtoa_r+0x710>
   1537a:	67a2                	ld	a5,8(sp)
   1537c:	060aa423          	sw	zero,104(s5)
   15380:	0097899b          	addiw	s3,a5,9
   15384:	47fd                	li	a5,31
   15386:	0d37f963          	bgeu	a5,s3,15458 <_ldtoa_r+0x732>
   1538a:	4705                	li	a4,1
   1538c:	4791                	li	a5,4
   1538e:	0017979b          	slliw	a5,a5,0x1
   15392:	01c78693          	addi	a3,a5,28
   15396:	0007059b          	sext.w	a1,a4
   1539a:	2705                	addiw	a4,a4,1
   1539c:	fed9f9e3          	bgeu	s3,a3,1538e <_ldtoa_r+0x668>
   153a0:	06baa423          	sw	a1,104(s5)
   153a4:	8556                	mv	a0,s5
   153a6:	295000ef          	jal	ra,15e3a <_Balloc>
   153aa:	84aa                	mv	s1,a0
   153ac:	68050263          	beqz	a0,15a30 <_ldtoa_r+0xd0a>
   153b0:	06aab023          	sd	a0,96(s5)
   153b4:	85ca                	mv	a1,s2
   153b6:	cbcfc0ef          	jal	ra,11872 <strcpy>
   153ba:	7702                	ld	a4,32(sp)
   153bc:	c709                	beqz	a4,153c6 <_ldtoa_r+0x6a0>
   153be:	412407b3          	sub	a5,s0,s2
   153c2:	97a6                	add	a5,a5,s1
   153c4:	e31c                	sd	a5,0(a4)
   153c6:	26813083          	ld	ra,616(sp)
   153ca:	26013403          	ld	s0,608(sp)
   153ce:	25013903          	ld	s2,592(sp)
   153d2:	24813983          	ld	s3,584(sp)
   153d6:	24013a03          	ld	s4,576(sp)
   153da:	23813a83          	ld	s5,568(sp)
   153de:	23013b03          	ld	s6,560(sp)
   153e2:	22813b83          	ld	s7,552(sp)
   153e6:	22013c03          	ld	s8,544(sp)
   153ea:	21813c83          	ld	s9,536(sp)
   153ee:	21013d03          	ld	s10,528(sp)
   153f2:	20813d83          	ld	s11,520(sp)
   153f6:	8526                	mv	a0,s1
   153f8:	25813483          	ld	s1,600(sp)
   153fc:	27010113          	addi	sp,sp,624
   15400:	8082                	ret
   15402:	091c                	addi	a5,sp,144
   15404:	0a210693          	addi	a3,sp,162
   15408:	0007d703          	lhu	a4,0(a5)
   1540c:	0789                	addi	a5,a5,2
   1540e:	42071b63          	bnez	a4,15844 <_ldtoa_r+0xb1e>
   15412:	fed79be3          	bne	a5,a3,15408 <_ldtoa_r+0x6e2>
   15416:	6762                	ld	a4,24(sp)
   15418:	6789                	lui	a5,0x2
   1541a:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   1541e:	c31c                	sw	a5,0(a4)
   15420:	b5c5                	j	15300 <_ldtoa_r+0x5da>
   15422:	03000793          	li	a5,48
   15426:	f4f69ae3          	bne	a3,a5,1537a <_ldtoa_r+0x654>
   1542a:	412407b3          	sub	a5,s0,s2
   1542e:	4705                	li	a4,1
   15430:	f2f744e3          	blt	a4,a5,15358 <_ldtoa_r+0x632>
   15434:	b799                	j	1537a <_ldtoa_r+0x654>
   15436:	6782                	ld	a5,0(sp)
   15438:	9cbd                	addw	s1,s1,a5
   1543a:	3a04c463          	bltz	s1,157e2 <_ldtoa_r+0xabc>
   1543e:	67e2                	ld	a5,24(sp)
   15440:	6722                	ld	a4,8(sp)
   15442:	439c                	lw	a5,0(a5)
   15444:	9fb9                	addw	a5,a5,a4
   15446:	e43e                	sd	a5,8(sp)
   15448:	67a2                	ld	a5,8(sp)
   1544a:	060aa423          	sw	zero,104(s5)
   1544e:	0037899b          	addiw	s3,a5,3
   15452:	47fd                	li	a5,31
   15454:	f337ebe3          	bltu	a5,s3,1538a <_ldtoa_r+0x664>
   15458:	4581                	li	a1,0
   1545a:	b7a9                	j	153a4 <_ldtoa_r+0x67e>
   1545c:	67a2                	ld	a5,8(sp)
   1545e:	02a00713          	li	a4,42
   15462:	8cbe                	mv	s9,a5
   15464:	00f75463          	bge	a4,a5,1546c <_ldtoa_r+0x746>
   15468:	02a00c93          	li	s9,42
   1546c:	000c879b          	sext.w	a5,s9
   15470:	e03e                	sd	a5,0(sp)
   15472:	ba95                	j	14de6 <_ldtoa_r+0xc0>
   15474:	0007c703          	lbu	a4,0(a5)
   15478:	e60706e3          	beqz	a4,152e4 <_ldtoa_r+0x5be>
   1547c:	0017c703          	lbu	a4,1(a5)
   15480:	0785                	addi	a5,a5,1
   15482:	fee78fa3          	sb	a4,-1(a5)
   15486:	e4070fe3          	beqz	a4,152e4 <_ldtoa_r+0x5be>
   1548a:	0017c703          	lbu	a4,1(a5)
   1548e:	0785                	addi	a5,a5,1
   15490:	fee78fa3          	sb	a4,-1(a5)
   15494:	f765                	bnez	a4,1547c <_ldtoa_r+0x756>
   15496:	b5b9                	j	152e4 <_ldtoa_r+0x5be>
   15498:	03100713          	li	a4,49
   1549c:	16e108a3          	sb	a4,369(sp)
   154a0:	02e00713          	li	a4,46
   154a4:	16e10923          	sb	a4,370(sp)
   154a8:	2485                	addiw	s1,s1,1
   154aa:	20f05063          	blez	a5,156aa <_ldtoa_r+0x984>
   154ae:	03000793          	li	a5,48
   154b2:	16f109a3          	sb	a5,371(sp)
   154b6:	347d                	addiw	s0,s0,-1
   154b8:	17410c13          	addi	s8,sp,372
   154bc:	b18d                	j	1511e <_ldtoa_r+0x3f8>
   154be:	17010913          	addi	s2,sp,368
   154c2:	65f5                	lui	a1,0x1d
   154c4:	a6858593          	addi	a1,a1,-1432 # 1ca68 <zeroes.0+0xb8>
   154c8:	854a                	mv	a0,s2
   154ca:	6489                	lui	s1,0x2
   154cc:	409010ef          	jal	ra,170d4 <sprintf>
   154d0:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   154d4:	bbd9                	j	152aa <_ldtoa_r+0x584>
   154d6:	0f010b13          	addi	s6,sp,240
   154da:	875a                	mv	a4,s6
   154dc:	191c                	addi	a5,sp,176
   154de:	01d0                	addi	a2,sp,196
   154e0:	0007d683          	lhu	a3,0(a5)
   154e4:	0789                	addi	a5,a5,2
   154e6:	0709                	addi	a4,a4,2
   154e8:	fed71f23          	sh	a3,-2(a4)
   154ec:	fec79ae3          	bne	a5,a2,154e0 <_ldtoa_r+0x7ba>
   154f0:	67f5                	lui	a5,0x1d
   154f2:	bb878713          	addi	a4,a5,-1096 # 1cbb8 <etens>
   154f6:	6791                	lui	a5,0x4
   154f8:	08e78793          	addi	a5,a5,142 # 408e <exit-0xc05a>
   154fc:	10f11123          	sh	a5,258(sp)
   15500:	67f5                	lui	a5,0x1d
   15502:	cbc78793          	addi	a5,a5,-836 # 1ccbc <etens+0x104>
   15506:	e0be                	sd	a5,64(sp)
   15508:	67a1                	lui	a5,0x8
   1550a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1550c:	f83e                	sd	a5,48(sp)
   1550e:	77f1                	lui	a5,0xffffc
   15510:	2789                	addiw	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffdc6ea>
   15512:	de3e                	sw	a5,60(sp)
   15514:	67f5                	lui	a5,0x1d
   15516:	a7078793          	addi	a5,a5,-1424 # 1ca70 <bmask>
   1551a:	e4ba                	sd	a4,72(sp)
   1551c:	4dc1                	li	s11,16
   1551e:	4481                	li	s1,0
   15520:	0a070993          	addi	s3,a4,160
   15524:	17010913          	addi	s2,sp,368
   15528:	1b010a13          	addi	s4,sp,432
   1552c:	0a00                	addi	s0,sp,272
   1552e:	0e210c93          	addi	s9,sp,226
   15532:	e8be                	sd	a5,80(sp)
   15534:	86d2                	mv	a3,s4
   15536:	0990                	addi	a2,sp,208
   15538:	85da                	mv	a1,s6
   1553a:	854e                	mv	a0,s3
   1553c:	84aff0ef          	jal	ra,14586 <ediv>
   15540:	18b8                	addi	a4,sp,120
   15542:	099c                	addi	a5,sp,208
   15544:	0007d683          	lhu	a3,0(a5)
   15548:	0789                	addi	a5,a5,2
   1554a:	0709                	addi	a4,a4,2
   1554c:	fed71f23          	sh	a3,-2(a4)
   15550:	ff879ae3          	bne	a5,s8,15544 <_ldtoa_r+0x81e>
   15554:	77c2                	ld	a5,48(sp)
   15556:	08a15503          	lhu	a0,138(sp)
   1555a:	00f57e33          	and	t3,a0,a5
   1555e:	57f2                	lw	a5,60(sp)
   15560:	00fe07bb          	addw	a5,t3,a5
   15564:	8e3e                	mv	t3,a5
   15566:	28f05563          	blez	a5,157f0 <_ldtoa_r+0xaca>
   1556a:	09000593          	li	a1,144
   1556e:	9d9d                	subw	a1,a1,a5
   15570:	8722                	mv	a4,s0
   15572:	18bc                	addi	a5,sp,120
   15574:	0170                	addi	a2,sp,140
   15576:	0007d683          	lhu	a3,0(a5)
   1557a:	0789                	addi	a5,a5,2
   1557c:	0709                	addi	a4,a4,2
   1557e:	fed71f23          	sh	a3,-2(a4)
   15582:	fec79ae3          	bne	a5,a2,15576 <_ldtoa_r+0x850>
   15586:	04b05a63          	blez	a1,155da <_ldtoa_r+0x8b4>
   1558a:	47bd                	li	a5,15
   1558c:	8722                	mv	a4,s0
   1558e:	02b7d963          	bge	a5,a1,155c0 <_ldtoa_r+0x89a>
   15592:	08000693          	li	a3,128
   15596:	41c686bb          	subw	a3,a3,t3
   1559a:	0046d69b          	srliw	a3,a3,0x4
   1559e:	0016871b          	addiw	a4,a3,1
   155a2:	0706                	slli	a4,a4,0x1
   155a4:	9722                	add	a4,a4,s0
   155a6:	87a2                	mv	a5,s0
   155a8:	0789                	addi	a5,a5,2
   155aa:	fe079f23          	sh	zero,-2(a5)
   155ae:	fee79de3          	bne	a5,a4,155a8 <_ldtoa_r+0x882>
   155b2:	08000593          	li	a1,128
   155b6:	41c585bb          	subw	a1,a1,t3
   155ba:	0046969b          	slliw	a3,a3,0x4
   155be:	9d95                	subw	a1,a1,a3
   155c0:	66c6                	ld	a3,80(sp)
   155c2:	00159793          	slli	a5,a1,0x1
   155c6:	97b6                	add	a5,a5,a3
   155c8:	0007d783          	lhu	a5,0(a5)
   155cc:	00075683          	lhu	a3,0(a4)
   155d0:	8ff5                	and	a5,a5,a3
   155d2:	00f71023          	sh	a5,0(a4)
   155d6:	813d                	srli	a0,a0,0xf
   155d8:	e565                	bnez	a0,156c0 <_ldtoa_r+0x99a>
   155da:	099c                	addi	a5,sp,208
   155dc:	8722                	mv	a4,s0
   155de:	0007d603          	lhu	a2,0(a5)
   155e2:	00075683          	lhu	a3,0(a4)
   155e6:	02d61263          	bne	a2,a3,1560a <_ldtoa_r+0x8e4>
   155ea:	0789                	addi	a5,a5,2
   155ec:	0709                	addi	a4,a4,2
   155ee:	fefc98e3          	bne	s9,a5,155de <_ldtoa_r+0x8b8>
   155f2:	875a                	mv	a4,s6
   155f4:	099c                	addi	a5,sp,208
   155f6:	0007d683          	lhu	a3,0(a5)
   155fa:	0789                	addi	a5,a5,2
   155fc:	0709                	addi	a4,a4,2
   155fe:	fed71f23          	sh	a3,-2(a4)
   15602:	ff879ae3          	bne	a5,s8,155f6 <_ldtoa_r+0x8d0>
   15606:	009d84bb          	addw	s1,s11,s1
   1560a:	6786                	ld	a5,64(sp)
   1560c:	09d1                	addi	s3,s3,20
   1560e:	001ddd93          	srli	s11,s11,0x1
   15612:	f2f991e3          	bne	s3,a5,15534 <_ldtoa_r+0x80e>
   15616:	10215783          	lhu	a5,258(sp)
   1561a:	0c215703          	lhu	a4,194(sp)
   1561e:	0250                	addi	a2,sp,260
   15620:	9fb9                	addw	a5,a5,a4
   15622:	7771                	lui	a4,0xffffc
   15624:	f727071b          	addiw	a4,a4,-142 # ffffffffffffbf72 <__BSS_END__+0xfffffffffffdc65a>
   15628:	9fb9                	addw	a5,a5,a4
   1562a:	10f11123          	sh	a5,258(sp)
   1562e:	1918                	addi	a4,sp,176
   15630:	87da                	mv	a5,s6
   15632:	0007d683          	lhu	a3,0(a5)
   15636:	0789                	addi	a5,a5,2
   15638:	0709                	addi	a4,a4,2
   1563a:	fed71f23          	sh	a3,-2(a4)
   1563e:	fec79ae3          	bne	a5,a2,15632 <_ldtoa_r+0x90c>
   15642:	6775                	lui	a4,0x1d
   15644:	4681                	li	a3,0
   15646:	099c                	addi	a5,sp,208
   15648:	ba070713          	addi	a4,a4,-1120 # 1cba0 <eone>
   1564c:	a019                	j	15652 <_ldtoa_r+0x92c>
   1564e:	00075683          	lhu	a3,0(a4)
   15652:	0789                	addi	a5,a5,2
   15654:	fed79f23          	sh	a3,-2(a5)
   15658:	0709                	addi	a4,a4,2
   1565a:	ff879ae3          	bne	a5,s8,1564e <_ldtoa_r+0x928>
   1565e:	6df5                	lui	s11,0x1d
   15660:	6ca6                	ld	s9,72(sp)
   15662:	6d05                	lui	s10,0x1
   15664:	ca8d8d93          	addi	s11,s11,-856 # 1cca8 <etens+0xf0>
   15668:	a031                	j	15674 <_ldtoa_r+0x94e>
   1566a:	001d5d13          	srli	s10,s10,0x1
   1566e:	1bbc8763          	beq	s9,s11,1581c <_ldtoa_r+0xaf6>
   15672:	0cd1                	addi	s9,s9,20
   15674:	85da                	mv	a1,s6
   15676:	856e                	mv	a0,s11
   15678:	935fe0ef          	jal	ra,13fac <ecmp>
   1567c:	1aa04063          	bgtz	a0,1581c <_ldtoa_r+0xaf6>
   15680:	85da                	mv	a1,s6
   15682:	8566                	mv	a0,s9
   15684:	929fe0ef          	jal	ra,13fac <ecmp>
   15688:	fea041e3          	bgtz	a0,1566a <_ldtoa_r+0x944>
   1568c:	86d2                	mv	a3,s4
   1568e:	865a                	mv	a2,s6
   15690:	85da                	mv	a1,s6
   15692:	8566                	mv	a0,s9
   15694:	ef3fe0ef          	jal	ra,14586 <ediv>
   15698:	0990                	addi	a2,sp,208
   1569a:	86d2                	mv	a3,s4
   1569c:	85b2                	mv	a1,a2
   1569e:	8566                	mv	a0,s9
   156a0:	b02ff0ef          	jal	ra,149a2 <emul>
   156a4:	009d04bb          	addw	s1,s10,s1
   156a8:	b7c9                	j	1566a <_ldtoa_r+0x944>
   156aa:	17310c13          	addi	s8,sp,371
   156ae:	be0797e3          	bnez	a5,1529c <_ldtoa_r+0x576>
   156b2:	b4b5                	j	1511e <_ldtoa_r+0x3f8>
   156b4:	4681                	li	a3,0
   156b6:	f20ff06f          	j	14dd6 <_ldtoa_r+0xb0>
   156ba:	67a2                	ld	a5,8(sp)
   156bc:	37fd                	addiw	a5,a5,-1
   156be:	b345                	j	1545e <_ldtoa_r+0x738>
   156c0:	18bc                	addi	a5,sp,120
   156c2:	8722                	mv	a4,s0
   156c4:	08a10593          	addi	a1,sp,138
   156c8:	a029                	j	156d2 <_ldtoa_r+0x9ac>
   156ca:	0789                	addi	a5,a5,2
   156cc:	0709                	addi	a4,a4,2
   156ce:	f0b786e3          	beq	a5,a1,155da <_ldtoa_r+0x8b4>
   156d2:	0007d603          	lhu	a2,0(a5)
   156d6:	00075683          	lhu	a3,0(a4)
   156da:	fed608e3          	beq	a2,a3,156ca <_ldtoa_r+0x9a4>
   156de:	12215783          	lhu	a5,290(sp)
   156e2:	7742                	ld	a4,48(sp)
   156e4:	8ff9                	and	a5,a5,a4
   156e6:	2ce78b63          	beq	a5,a4,159bc <_ldtoa_r+0xc96>
   156ea:	1a0c                	addi	a1,sp,304
   156ec:	ba0d0513          	addi	a0,s10,-1120 # ba0 <exit-0xf548>
   156f0:	827fe0ef          	jal	ra,13f16 <emovi>
   156f4:	0a8c                	addi	a1,sp,336
   156f6:	8522                	mv	a0,s0
   156f8:	81ffe0ef          	jal	ra,13f16 <emovi>
   156fc:	13015703          	lhu	a4,304(sp)
   15700:	15215603          	lhu	a2,338(sp)
   15704:	13215e03          	lhu	t3,306(sp)
   15708:	fff74713          	not	a4,a4
   1570c:	1742                	slli	a4,a4,0x30
   1570e:	9341                	srli	a4,a4,0x30
   15710:	12e11823          	sh	a4,304(sp)
   15714:	40ce05b3          	sub	a1,t3,a2
   15718:	86b2                	mv	a3,a2
   1571a:	04b05e63          	blez	a1,15776 <_ldtoa_r+0xa50>
   1571e:	85ca                	mv	a1,s2
   15720:	0a94                	addi	a3,sp,336
   15722:	12bc                	addi	a5,sp,360
   15724:	0006d503          	lhu	a0,0(a3)
   15728:	0689                	addi	a3,a3,2
   1572a:	0589                	addi	a1,a1,2
   1572c:	fea59f23          	sh	a0,-2(a1)
   15730:	fef69ae3          	bne	a3,a5,15724 <_ldtoa_r+0x9fe>
   15734:	18011423          	sh	zero,392(sp)
   15738:	0a94                	addi	a3,sp,336
   1573a:	1a0c                	addi	a1,sp,304
   1573c:	a019                	j	15742 <_ldtoa_r+0xa1c>
   1573e:	0005d703          	lhu	a4,0(a1)
   15742:	0689                	addi	a3,a3,2
   15744:	fee69f23          	sh	a4,-2(a3)
   15748:	0589                	addi	a1,a1,2
   1574a:	fef69ae3          	bne	a3,a5,1573e <_ldtoa_r+0xa18>
   1574e:	16011423          	sh	zero,360(sp)
   15752:	1a18                	addi	a4,sp,304
   15754:	87ca                	mv	a5,s2
   15756:	0328                	addi	a0,sp,392
   15758:	0007d683          	lhu	a3,0(a5)
   1575c:	0789                	addi	a5,a5,2
   1575e:	0709                	addi	a4,a4,2
   15760:	fed71f23          	sh	a3,-2(a4)
   15764:	fea79ae3          	bne	a5,a0,15758 <_ldtoa_r+0xa32>
   15768:	15215683          	lhu	a3,338(sp)
   1576c:	41c605b3          	sub	a1,a2,t3
   15770:	14011423          	sh	zero,328(sp)
   15774:	8636                	mv	a2,a3
   15776:	28058163          	beqz	a1,159f8 <_ldtoa_r+0xcd2>
   1577a:	ecb6                	sd	a3,88(sp)
   1577c:	f6f00793          	li	a5,-145
   15780:	04f5cc63          	blt	a1,a5,157d8 <_ldtoa_r+0xab2>
   15784:	2581                	sext.w	a1,a1
   15786:	1a08                	addi	a0,sp,304
   15788:	e3cfe0ef          	jal	ra,13dc4 <eshift.part.0>
   1578c:	66e6                	ld	a3,88(sp)
   1578e:	85aa                	mv	a1,a0
   15790:	12bc                	addi	a5,sp,360
   15792:	02b8                	addi	a4,sp,328
   15794:	13015503          	lhu	a0,304(sp)
   15798:	15015603          	lhu	a2,336(sp)
   1579c:	2cc50e63          	beq	a0,a2,15a78 <_ldtoa_r+0xd52>
   157a0:	4e01                	li	t3,0
   157a2:	15210513          	addi	a0,sp,338
   157a6:	0007d603          	lhu	a2,0(a5)
   157aa:	00075e83          	lhu	t4,0(a4)
   157ae:	17f9                	addi	a5,a5,-2
   157b0:	41c60633          	sub	a2,a2,t3
   157b4:	41d60633          	sub	a2,a2,t4
   157b8:	01065e13          	srli	t3,a2,0x10
   157bc:	00c79123          	sh	a2,2(a5)
   157c0:	001e7e13          	andi	t3,t3,1
   157c4:	1779                	addi	a4,a4,-2
   157c6:	fea790e3          	bne	a5,a0,157a6 <_ldtoa_r+0xa80>
   157ca:	4605                	li	a2,1
   157cc:	87d2                	mv	a5,s4
   157ce:	04000713          	li	a4,64
   157d2:	0a88                	addi	a0,sp,336
   157d4:	8bdfe0ef          	jal	ra,14090 <emdnorm>
   157d8:	85a2                	mv	a1,s0
   157da:	0a88                	addi	a0,sp,336
   157dc:	c52fe0ef          	jal	ra,13c2e <emovo.constprop.0>
   157e0:	bbed                	j	155da <_ldtoa_r+0x8b4>
   157e2:	67e2                	ld	a5,24(sp)
   157e4:	16010823          	sb	zero,368(sp)
   157e8:	844a                	mv	s0,s2
   157ea:	0007a023          	sw	zero,0(a5)
   157ee:	b9a9                	j	15448 <_ldtoa_r+0x722>
   157f0:	87a2                	mv	a5,s0
   157f2:	1258                	addi	a4,sp,292
   157f4:	0789                	addi	a5,a5,2
   157f6:	fe079f23          	sh	zero,-2(a5)
   157fa:	fee79de3          	bne	a5,a4,157f4 <_ldtoa_r+0xace>
   157fe:	bbe1                	j	155d6 <_ldtoa_r+0x8b0>
   15800:	77a2                	ld	a5,40(sp)
   15802:	17010913          	addi	s2,sp,368
   15806:	cfdd                	beqz	a5,158c4 <_ldtoa_r+0xb9e>
   15808:	65f5                	lui	a1,0x1d
   1580a:	9c058593          	addi	a1,a1,-1600 # 1c9c0 <zeroes.0+0x10>
   1580e:	854a                	mv	a0,s2
   15810:	6489                	lui	s1,0x2
   15812:	0c3010ef          	jal	ra,170d4 <sprintf>
   15816:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   1581a:	bc41                	j	152aa <_ldtoa_r+0x584>
   1581c:	12810993          	addi	s3,sp,296
   15820:	f58ff06f          	j	14f78 <_ldtoa_r+0x252>
   15824:	fff6c783          	lbu	a5,-1(a3)
   15828:	03800713          	li	a4,56
   1582c:	0af77663          	bgeu	a4,a5,158d8 <_ldtoa_r+0xbb2>
   15830:	03100793          	li	a5,49
   15834:	2485                	addiw	s1,s1,1
   15836:	fef68fa3          	sb	a5,-1(a3)
   1583a:	b48d                	j	1529c <_ldtoa_r+0x576>
   1583c:	2605                	addiw	a2,a2,1
   1583e:	00c68023          	sb	a2,0(a3)
   15842:	bca9                	j	1529c <_ldtoa_r+0x576>
   15844:	091c                	addi	a5,sp,144
   15846:	0a210693          	addi	a3,sp,162
   1584a:	a019                	j	15850 <_ldtoa_r+0xb2a>
   1584c:	a6d78ce3          	beq	a5,a3,152c4 <_ldtoa_r+0x59e>
   15850:	0007d703          	lhu	a4,0(a5)
   15854:	0789                	addi	a5,a5,2
   15856:	db7d                	beqz	a4,1584c <_ldtoa_r+0xb26>
   15858:	6762                	ld	a4,24(sp)
   1585a:	6789                	lui	a5,0x2
   1585c:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   15860:	c31c                	sw	a5,0(a4)
   15862:	bc79                	j	15300 <_ldtoa_r+0x5da>
   15864:	17010913          	addi	s2,sp,368
   15868:	65f5                	lui	a1,0x1d
   1586a:	9e058593          	addi	a1,a1,-1568 # 1c9e0 <zeroes.0+0x30>
   1586e:	854a                	mv	a0,s2
   15870:	6489                	lui	s1,0x2
   15872:	063010ef          	jal	ra,170d4 <sprintf>
   15876:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   1587a:	bc05                	j	152aa <_ldtoa_r+0x584>
   1587c:	098c                	addi	a1,sp,208
   1587e:	1908                	addi	a0,sp,176
   15880:	f43e                	sd	a5,40(sp)
   15882:	bacfe0ef          	jal	ra,13c2e <emovo.constprop.0>
   15886:	65f5                	lui	a1,0x1d
   15888:	cc058593          	addi	a1,a1,-832 # 1ccc0 <ezero>
   1588c:	0988                	addi	a0,sp,208
   1588e:	f1efe0ef          	jal	ra,13fac <ecmp>
   15892:	77a2                	ld	a5,40(sp)
   15894:	9c0513e3          	bnez	a0,1525a <_ldtoa_r+0x534>
   15898:	a00442e3          	bltz	s0,1529c <_ldtoa_r+0x576>
   1589c:	ffe7c703          	lbu	a4,-2(a5)
   158a0:	fd270693          	addi	a3,a4,-46
   158a4:	0016b693          	seqz	a3,a3
   158a8:	fff6c693          	not	a3,a3
   158ac:	96e2                	add	a3,a3,s8
   158ae:	0006c683          	lbu	a3,0(a3)
   158b2:	8a85                	andi	a3,a3,1
   158b4:	9e0684e3          	beqz	a3,1529c <_ldtoa_r+0x576>
   158b8:	07f77613          	andi	a2,a4,127
   158bc:	ffe78693          	addi	a3,a5,-2
   158c0:	8732                	mv	a4,a2
   158c2:	b26d                	j	1526c <_ldtoa_r+0x546>
   158c4:	65f5                	lui	a1,0x1d
   158c6:	9d058593          	addi	a1,a1,-1584 # 1c9d0 <zeroes.0+0x20>
   158ca:	854a                	mv	a0,s2
   158cc:	6489                	lui	s1,0x2
   158ce:	007010ef          	jal	ra,170d4 <sprintf>
   158d2:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   158d6:	bad1                	j	152aa <_ldtoa_r+0x584>
   158d8:	2785                	addiw	a5,a5,1
   158da:	fef68fa3          	sb	a5,-1(a3)
   158de:	ba7d                	j	1529c <_ldtoa_r+0x576>
   158e0:	0a00                	addi	s0,sp,272
   158e2:	85a2                	mv	a1,s0
   158e4:	1908                	addi	a0,sp,176
   158e6:	e30fe0ef          	jal	ra,13f16 <emovi>
   158ea:	6791                	lui	a5,0x4
   158ec:	4481                	li	s1,0
   158ee:	12810993          	addi	s3,sp,296
   158f2:	10810913          	addi	s2,sp,264
   158f6:	11210a13          	addi	s4,sp,274
   158fa:	ffe78b13          	addi	s6,a5,-2 # 3ffe <exit-0xc0ea>
   158fe:	fd500d93          	li	s11,-43
   15902:	12815783          	lhu	a5,296(sp)
   15906:	8b9d                	andi	a5,a5,7
   15908:	efd1                	bnez	a5,159a4 <_ldtoa_r+0xc7e>
   1590a:	1998                	addi	a4,sp,240
   1590c:	87a2                	mv	a5,s0
   1590e:	0007d683          	lhu	a3,0(a5)
   15912:	0789                	addi	a5,a5,2
   15914:	0709                	addi	a4,a4,2
   15916:	fed71f23          	sh	a3,-2(a4)
   1591a:	ff379ae3          	bne	a5,s3,1590e <_ldtoa_r+0xbe8>
   1591e:	1988                	addi	a0,sp,240
   15920:	10011423          	sh	zero,264(sp)
   15924:	a06fe0ef          	jal	ra,13b2a <eshdn1>
   15928:	1988                	addi	a0,sp,240
   1592a:	a00fe0ef          	jal	ra,13b2a <eshdn1>
   1592e:	4601                	li	a2,0
   15930:	86ca                	mv	a3,s2
   15932:	874e                	mv	a4,s3
   15934:	0006d583          	lhu	a1,0(a3)
   15938:	00075783          	lhu	a5,0(a4)
   1593c:	16f9                	addi	a3,a3,-2
   1593e:	1779                	addi	a4,a4,-2
   15940:	97ae                	add	a5,a5,a1
   15942:	97b2                	add	a5,a5,a2
   15944:	0107d613          	srli	a2,a5,0x10
   15948:	00f69123          	sh	a5,2(a3)
   1594c:	8a05                	andi	a2,a2,1
   1594e:	ff4713e3          	bne	a4,s4,15934 <_ldtoa_r+0xc0e>
   15952:	0f215783          	lhu	a5,242(sp)
   15956:	0f415703          	lhu	a4,244(sp)
   1595a:	278d                	addiw	a5,a5,3
   1595c:	0ef11923          	sh	a5,242(sp)
   15960:	cf01                	beqz	a4,15978 <_ldtoa_r+0xc52>
   15962:	1988                	addi	a0,sp,240
   15964:	9c6fe0ef          	jal	ra,13b2a <eshdn1>
   15968:	0f215783          	lhu	a5,242(sp)
   1596c:	0f415703          	lhu	a4,244(sp)
   15970:	2785                	addiw	a5,a5,1
   15972:	0ef11923          	sh	a5,242(sp)
   15976:	f775                	bnez	a4,15962 <_ldtoa_r+0xc3c>
   15978:	10815783          	lhu	a5,264(sp)
   1597c:	e785                	bnez	a5,159a4 <_ldtoa_r+0xc7e>
   1597e:	0f215783          	lhu	a5,242(sp)
   15982:	02fb6163          	bltu	s6,a5,159a4 <_ldtoa_r+0xc7e>
   15986:	8722                	mv	a4,s0
   15988:	199c                	addi	a5,sp,240
   1598a:	0007d683          	lhu	a3,0(a5)
   1598e:	0789                	addi	a5,a5,2
   15990:	0709                	addi	a4,a4,2
   15992:	fed71f23          	sh	a3,-2(a4)
   15996:	ff279ae3          	bne	a5,s2,1598a <_ldtoa_r+0xc64>
   1599a:	12011423          	sh	zero,296(sp)
   1599e:	34fd                	addiw	s1,s1,-1
   159a0:	f7b491e3          	bne	s1,s11,15902 <_ldtoa_r+0xbdc>
   159a4:	190c                	addi	a1,sp,176
   159a6:	8522                	mv	a0,s0
   159a8:	a86fe0ef          	jal	ra,13c2e <emovo.constprop.0>
   159ac:	67f5                	lui	a5,0x1d
   159ae:	bb878793          	addi	a5,a5,-1096 # 1cbb8 <etens>
   159b2:	e4be                	sd	a5,72(sp)
   159b4:	1b010a13          	addi	s4,sp,432
   159b8:	cfcff06f          	j	14eb4 <_ldtoa_r+0x18e>
   159bc:	87a2                	mv	a5,s0
   159be:	0007d703          	lhu	a4,0(a5)
   159c2:	0789                	addi	a5,a5,2
   159c4:	c0071be3          	bnez	a4,155da <_ldtoa_r+0x8b4>
   159c8:	12210713          	addi	a4,sp,290
   159cc:	fee799e3          	bne	a5,a4,159be <_ldtoa_r+0xc98>
   159d0:	87a2                	mv	a5,s0
   159d2:	0007d703          	lhu	a4,0(a5)
   159d6:	0789                	addi	a5,a5,2
   159d8:	d00719e3          	bnez	a4,156ea <_ldtoa_r+0x9c4>
   159dc:	12210713          	addi	a4,sp,290
   159e0:	fee799e3          	bne	a5,a4,159d2 <_ldtoa_r+0xcac>
   159e4:	bedd                	j	155da <_ldtoa_r+0x8b4>
   159e6:	67f5                	lui	a5,0x1d
   159e8:	bb878793          	addi	a5,a5,-1096 # 1cbb8 <etens>
   159ec:	4481                	li	s1,0
   159ee:	e4be                	sd	a5,72(sp)
   159f0:	1b010a13          	addi	s4,sp,432
   159f4:	cbaff06f          	j	14eae <_ldtoa_r+0x188>
   159f8:	0ad8                	addi	a4,sp,340
   159fa:	1a5c                	addi	a5,sp,308
   159fc:	0007d503          	lhu	a0,0(a5)
   15a00:	00075583          	lhu	a1,0(a4)
   15a04:	0789                	addi	a5,a5,2
   15a06:	0709                	addi	a4,a4,2
   15a08:	04b51063          	bne	a0,a1,15a48 <_ldtoa_r+0xd22>
   15a0c:	14a10593          	addi	a1,sp,330
   15a10:	feb796e3          	bne	a5,a1,159fc <_ldtoa_r+0xcd6>
   15a14:	13015703          	lhu	a4,304(sp)
   15a18:	15015783          	lhu	a5,336(sp)
   15a1c:	02f70c63          	beq	a4,a5,15a54 <_ldtoa_r+0xd2e>
   15a20:	87a2                	mv	a5,s0
   15a22:	1258                	addi	a4,sp,292
   15a24:	0789                	addi	a5,a5,2
   15a26:	fe079f23          	sh	zero,-2(a5)
   15a2a:	fee79de3          	bne	a5,a4,15a24 <_ldtoa_r+0xcfe>
   15a2e:	b675                	j	155da <_ldtoa_r+0x8b4>
   15a30:	66f5                	lui	a3,0x1d
   15a32:	6585                	lui	a1,0x1
   15a34:	6575                	lui	a0,0x1d
   15a36:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   15a3a:	4601                	li	a2,0
   15a3c:	b6e58593          	addi	a1,a1,-1170 # b6e <exit-0xf57a>
   15a40:	a0850513          	addi	a0,a0,-1528 # 1ca08 <zeroes.0+0x58>
   15a44:	7a7030ef          	jal	ra,199ea <__assert_func>
   15a48:	04a5ec63          	bltu	a1,a0,15aa0 <_ldtoa_r+0xd7a>
   15a4c:	4581                	li	a1,0
   15a4e:	12bc                	addi	a5,sp,360
   15a50:	02b8                	addi	a4,sp,328
   15a52:	b389                	j	15794 <_ldtoa_r+0xa6e>
   15a54:	8736                	mv	a4,a3
   15a56:	e689                	bnez	a3,15a60 <_ldtoa_r+0xd3a>
   15a58:	15611783          	lh	a5,342(sp)
   15a5c:	0807db63          	bgez	a5,15af2 <_ldtoa_r+0xdcc>
   15a60:	15210713          	addi	a4,sp,338
   15a64:	12bc                	addi	a5,sp,360
   15a66:	00075583          	lhu	a1,0(a4)
   15a6a:	e1e9                	bnez	a1,15b2c <_ldtoa_r+0xe06>
   15a6c:	0709                	addi	a4,a4,2
   15a6e:	fee79ce3          	bne	a5,a4,15a66 <_ldtoa_r+0xd40>
   15a72:	14c11923          	sh	a2,338(sp)
   15a76:	b38d                	j	157d8 <_ldtoa_r+0xab2>
   15a78:	4501                	li	a0,0
   15a7a:	13210e13          	addi	t3,sp,306
   15a7e:	0007de83          	lhu	t4,0(a5)
   15a82:	00075603          	lhu	a2,0(a4)
   15a86:	17f9                	addi	a5,a5,-2
   15a88:	1779                	addi	a4,a4,-2
   15a8a:	9676                	add	a2,a2,t4
   15a8c:	962a                	add	a2,a2,a0
   15a8e:	01065513          	srli	a0,a2,0x10
   15a92:	00c79123          	sh	a2,2(a5)
   15a96:	8905                	andi	a0,a0,1
   15a98:	ffc713e3          	bne	a4,t3,15a7e <_ldtoa_r+0xd58>
   15a9c:	4601                	li	a2,0
   15a9e:	b33d                	j	157cc <_ldtoa_r+0xaa6>
   15aa0:	864a                	mv	a2,s2
   15aa2:	0a98                	addi	a4,sp,336
   15aa4:	12bc                	addi	a5,sp,360
   15aa6:	00075583          	lhu	a1,0(a4)
   15aaa:	0709                	addi	a4,a4,2
   15aac:	0609                	addi	a2,a2,2
   15aae:	feb61f23          	sh	a1,-2(a2)
   15ab2:	fef71ae3          	bne	a4,a5,15aa6 <_ldtoa_r+0xd80>
   15ab6:	18011423          	sh	zero,392(sp)
   15aba:	0a8c                	addi	a1,sp,336
   15abc:	1a10                	addi	a2,sp,304
   15abe:	02b8                	addi	a4,sp,328
   15ac0:	00065503          	lhu	a0,0(a2)
   15ac4:	0609                	addi	a2,a2,2
   15ac6:	0589                	addi	a1,a1,2
   15ac8:	fea59f23          	sh	a0,-2(a1)
   15acc:	fee61ae3          	bne	a2,a4,15ac0 <_ldtoa_r+0xd9a>
   15ad0:	16011423          	sh	zero,360(sp)
   15ad4:	1a10                	addi	a2,sp,304
   15ad6:	85ca                	mv	a1,s2
   15ad8:	0328                	addi	a0,sp,392
   15ada:	0005de03          	lhu	t3,0(a1)
   15ade:	0589                	addi	a1,a1,2
   15ae0:	0609                	addi	a2,a2,2
   15ae2:	ffc61f23          	sh	t3,-2(a2)
   15ae6:	fea59ae3          	bne	a1,a0,15ada <_ldtoa_r+0xdb4>
   15aea:	14011423          	sh	zero,328(sp)
   15aee:	4581                	li	a1,0
   15af0:	b155                	j	15794 <_ldtoa_r+0xa6e>
   15af2:	12b4                	addi	a3,sp,360
   15af4:	15210513          	addi	a0,sp,338
   15af8:	0006d783          	lhu	a5,0(a3)
   15afc:	00f7d613          	srli	a2,a5,0xf
   15b00:	c219                	beqz	a2,15b06 <_ldtoa_r+0xde0>
   15b02:	00176713          	ori	a4,a4,1
   15b06:	0017979b          	slliw	a5,a5,0x1
   15b0a:	17c2                	slli	a5,a5,0x30
   15b0c:	00277613          	andi	a2,a4,2
   15b10:	93c1                	srli	a5,a5,0x30
   15b12:	c219                	beqz	a2,15b18 <_ldtoa_r+0xdf2>
   15b14:	0017e793          	ori	a5,a5,1
   15b18:	0017171b          	slliw	a4,a4,0x1
   15b1c:	00f69023          	sh	a5,0(a3)
   15b20:	1742                	slli	a4,a4,0x30
   15b22:	16f9                	addi	a3,a3,-2
   15b24:	9341                	srli	a4,a4,0x30
   15b26:	fca699e3          	bne	a3,a0,15af8 <_ldtoa_r+0xdd2>
   15b2a:	b17d                	j	157d8 <_ldtoa_r+0xab2>
   15b2c:	00168613          	addi	a2,a3,1
   15b30:	14c11923          	sh	a2,338(sp)
   15b34:	b155                	j	157d8 <_ldtoa_r+0xab2>

0000000000015b36 <_ldcheck>:
   15b36:	6118                	ld	a4,0(a0)
   15b38:	651c                	ld	a5,8(a0)
   15b3a:	7139                	addi	sp,sp,-64
   15b3c:	850a                	mv	a0,sp
   15b3e:	080c                	addi	a1,sp,16
   15b40:	e03a                	sd	a4,0(sp)
   15b42:	e43e                	sd	a5,8(sp)
   15b44:	fc06                	sd	ra,56(sp)
   15b46:	945fe0ef          	jal	ra,1448a <e113toe.isra.0>
   15b4a:	02215783          	lhu	a5,34(sp)
   15b4e:	4501                	li	a0,0
   15b50:	fff7c793          	not	a5,a5
   15b54:	03179713          	slli	a4,a5,0x31
   15b58:	eb19                	bnez	a4,15b6e <_ldcheck+0x38>
   15b5a:	081c                	addi	a5,sp,16
   15b5c:	02210693          	addi	a3,sp,34
   15b60:	0007d703          	lhu	a4,0(a5)
   15b64:	0789                	addi	a5,a5,2
   15b66:	e719                	bnez	a4,15b74 <_ldcheck+0x3e>
   15b68:	fed79ce3          	bne	a5,a3,15b60 <_ldcheck+0x2a>
   15b6c:	4509                	li	a0,2
   15b6e:	70e2                	ld	ra,56(sp)
   15b70:	6121                	addi	sp,sp,64
   15b72:	8082                	ret
   15b74:	4505                	li	a0,1
   15b76:	bfe5                	j	15b6e <_ldcheck+0x38>

0000000000015b78 <__localeconv_l>:
   15b78:	10050513          	addi	a0,a0,256
   15b7c:	8082                	ret

0000000000015b7e <_localeconv_r>:
   15b7e:	55818513          	addi	a0,gp,1368 # 1f670 <__global_locale+0x100>
   15b82:	8082                	ret

0000000000015b84 <localeconv>:
   15b84:	55818513          	addi	a0,gp,1368 # 1f670 <__global_locale+0x100>
   15b88:	8082                	ret

0000000000015b8a <_lseek_r>:
   15b8a:	1101                	addi	sp,sp,-32
   15b8c:	872e                	mv	a4,a1
   15b8e:	e822                	sd	s0,16(sp)
   15b90:	e426                	sd	s1,8(sp)
   15b92:	85b2                	mv	a1,a2
   15b94:	842a                	mv	s0,a0
   15b96:	8636                	mv	a2,a3
   15b98:	853a                	mv	a0,a4
   15b9a:	ec06                	sd	ra,24(sp)
   15b9c:	6801a423          	sw	zero,1672(gp) # 1f7a0 <errno>
   15ba0:	532050ef          	jal	ra,1b0d2 <_lseek>
   15ba4:	57fd                	li	a5,-1
   15ba6:	00f50763          	beq	a0,a5,15bb4 <_lseek_r+0x2a>
   15baa:	60e2                	ld	ra,24(sp)
   15bac:	6442                	ld	s0,16(sp)
   15bae:	64a2                	ld	s1,8(sp)
   15bb0:	6105                	addi	sp,sp,32
   15bb2:	8082                	ret
   15bb4:	6881a783          	lw	a5,1672(gp) # 1f7a0 <errno>
   15bb8:	dbed                	beqz	a5,15baa <_lseek_r+0x20>
   15bba:	60e2                	ld	ra,24(sp)
   15bbc:	c01c                	sw	a5,0(s0)
   15bbe:	6442                	ld	s0,16(sp)
   15bc0:	64a2                	ld	s1,8(sp)
   15bc2:	6105                	addi	sp,sp,32
   15bc4:	8082                	ret

0000000000015bc6 <__smakebuf_r>:
   15bc6:	0105d783          	lhu	a5,16(a1)
   15bca:	7135                	addi	sp,sp,-160
   15bcc:	e922                	sd	s0,144(sp)
   15bce:	ed06                	sd	ra,152(sp)
   15bd0:	e526                	sd	s1,136(sp)
   15bd2:	e14a                	sd	s2,128(sp)
   15bd4:	fcce                	sd	s3,120(sp)
   15bd6:	f8d2                	sd	s4,112(sp)
   15bd8:	0027f713          	andi	a4,a5,2
   15bdc:	842e                	mv	s0,a1
   15bde:	cf19                	beqz	a4,15bfc <__smakebuf_r+0x36>
   15be0:	07758793          	addi	a5,a1,119
   15be4:	e19c                	sd	a5,0(a1)
   15be6:	ed9c                	sd	a5,24(a1)
   15be8:	4785                	li	a5,1
   15bea:	d19c                	sw	a5,32(a1)
   15bec:	60ea                	ld	ra,152(sp)
   15bee:	644a                	ld	s0,144(sp)
   15bf0:	64aa                	ld	s1,136(sp)
   15bf2:	690a                	ld	s2,128(sp)
   15bf4:	79e6                	ld	s3,120(sp)
   15bf6:	7a46                	ld	s4,112(sp)
   15bf8:	610d                	addi	sp,sp,160
   15bfa:	8082                	ret
   15bfc:	01259583          	lh	a1,18(a1)
   15c00:	84aa                	mv	s1,a0
   15c02:	0605c863          	bltz	a1,15c72 <__smakebuf_r+0xac>
   15c06:	0030                	addi	a2,sp,8
   15c08:	062040ef          	jal	ra,19c6a <_fstat_r>
   15c0c:	06054163          	bltz	a0,15c6e <__smakebuf_r+0xa8>
   15c10:	4932                	lw	s2,12(sp)
   15c12:	67bd                	lui	a5,0xf
   15c14:	6985                	lui	s3,0x1
   15c16:	00f97933          	and	s2,s2,a5
   15c1a:	6789                	lui	a5,0x2
   15c1c:	40f90933          	sub	s2,s2,a5
   15c20:	00193913          	seqz	s2,s2
   15c24:	40000a13          	li	s4,1024
   15c28:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf8e8>
   15c2c:	85d2                	mv	a1,s4
   15c2e:	8526                	mv	a0,s1
   15c30:	8a8fb0ef          	jal	ra,10cd8 <_malloc_r>
   15c34:	01041783          	lh	a5,16(s0)
   15c38:	c939                	beqz	a0,15c8e <__smakebuf_r+0xc8>
   15c3a:	6741                	lui	a4,0x10
   15c3c:	5bc70713          	addi	a4,a4,1468 # 105bc <_cleanup_r>
   15c40:	ecb8                	sd	a4,88(s1)
   15c42:	0807e793          	ori	a5,a5,128
   15c46:	00f41823          	sh	a5,16(s0)
   15c4a:	e008                	sd	a0,0(s0)
   15c4c:	ec08                	sd	a0,24(s0)
   15c4e:	03442023          	sw	s4,32(s0)
   15c52:	06091163          	bnez	s2,15cb4 <__smakebuf_r+0xee>
   15c56:	0137e7b3          	or	a5,a5,s3
   15c5a:	60ea                	ld	ra,152(sp)
   15c5c:	00f41823          	sh	a5,16(s0)
   15c60:	644a                	ld	s0,144(sp)
   15c62:	64aa                	ld	s1,136(sp)
   15c64:	690a                	ld	s2,128(sp)
   15c66:	79e6                	ld	s3,120(sp)
   15c68:	7a46                	ld	s4,112(sp)
   15c6a:	610d                	addi	sp,sp,160
   15c6c:	8082                	ret
   15c6e:	01045783          	lhu	a5,16(s0)
   15c72:	0807f793          	andi	a5,a5,128
   15c76:	4901                	li	s2,0
   15c78:	cb95                	beqz	a5,15cac <__smakebuf_r+0xe6>
   15c7a:	04000a13          	li	s4,64
   15c7e:	85d2                	mv	a1,s4
   15c80:	8526                	mv	a0,s1
   15c82:	856fb0ef          	jal	ra,10cd8 <_malloc_r>
   15c86:	01041783          	lh	a5,16(s0)
   15c8a:	4981                	li	s3,0
   15c8c:	f55d                	bnez	a0,15c3a <__smakebuf_r+0x74>
   15c8e:	2007f713          	andi	a4,a5,512
   15c92:	ff29                	bnez	a4,15bec <__smakebuf_r+0x26>
   15c94:	9bf1                	andi	a5,a5,-4
   15c96:	0027e793          	ori	a5,a5,2
   15c9a:	07740713          	addi	a4,s0,119
   15c9e:	00f41823          	sh	a5,16(s0)
   15ca2:	4785                	li	a5,1
   15ca4:	e018                	sd	a4,0(s0)
   15ca6:	ec18                	sd	a4,24(s0)
   15ca8:	d01c                	sw	a5,32(s0)
   15caa:	b789                	j	15bec <__smakebuf_r+0x26>
   15cac:	40000a13          	li	s4,1024
   15cb0:	4981                	li	s3,0
   15cb2:	bfad                	j	15c2c <__smakebuf_r+0x66>
   15cb4:	01241583          	lh	a1,18(s0)
   15cb8:	8526                	mv	a0,s1
   15cba:	7eb030ef          	jal	ra,19ca4 <_isatty_r>
   15cbe:	e501                	bnez	a0,15cc6 <__smakebuf_r+0x100>
   15cc0:	01041783          	lh	a5,16(s0)
   15cc4:	bf49                	j	15c56 <__smakebuf_r+0x90>
   15cc6:	01045783          	lhu	a5,16(s0)
   15cca:	9bf1                	andi	a5,a5,-4
   15ccc:	0017e793          	ori	a5,a5,1
   15cd0:	0107979b          	slliw	a5,a5,0x10
   15cd4:	4107d79b          	sraiw	a5,a5,0x10
   15cd8:	bfbd                	j	15c56 <__smakebuf_r+0x90>

0000000000015cda <__swhatbuf_r>:
   15cda:	7175                	addi	sp,sp,-144
   15cdc:	e122                	sd	s0,128(sp)
   15cde:	842e                	mv	s0,a1
   15ce0:	01259583          	lh	a1,18(a1)
   15ce4:	fca6                	sd	s1,120(sp)
   15ce6:	f8ca                	sd	s2,112(sp)
   15ce8:	e506                	sd	ra,136(sp)
   15cea:	84b2                	mv	s1,a2
   15cec:	8936                	mv	s2,a3
   15cee:	0205cc63          	bltz	a1,15d26 <__swhatbuf_r+0x4c>
   15cf2:	0030                	addi	a2,sp,8
   15cf4:	777030ef          	jal	ra,19c6a <_fstat_r>
   15cf8:	02054763          	bltz	a0,15d26 <__swhatbuf_r+0x4c>
   15cfc:	47b2                	lw	a5,12(sp)
   15cfe:	673d                	lui	a4,0xf
   15d00:	60aa                	ld	ra,136(sp)
   15d02:	8ff9                	and	a5,a5,a4
   15d04:	6709                	lui	a4,0x2
   15d06:	8f99                	sub	a5,a5,a4
   15d08:	640a                	ld	s0,128(sp)
   15d0a:	0017b793          	seqz	a5,a5
   15d0e:	00f92023          	sw	a5,0(s2)
   15d12:	40000713          	li	a4,1024
   15d16:	e098                	sd	a4,0(s1)
   15d18:	6505                	lui	a0,0x1
   15d1a:	74e6                	ld	s1,120(sp)
   15d1c:	7946                	ld	s2,112(sp)
   15d1e:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8e8>
   15d22:	6149                	addi	sp,sp,144
   15d24:	8082                	ret
   15d26:	01045783          	lhu	a5,16(s0)
   15d2a:	0807f793          	andi	a5,a5,128
   15d2e:	cf91                	beqz	a5,15d4a <__swhatbuf_r+0x70>
   15d30:	60aa                	ld	ra,136(sp)
   15d32:	640a                	ld	s0,128(sp)
   15d34:	4781                	li	a5,0
   15d36:	00f92023          	sw	a5,0(s2)
   15d3a:	04000713          	li	a4,64
   15d3e:	e098                	sd	a4,0(s1)
   15d40:	7946                	ld	s2,112(sp)
   15d42:	74e6                	ld	s1,120(sp)
   15d44:	4501                	li	a0,0
   15d46:	6149                	addi	sp,sp,144
   15d48:	8082                	ret
   15d4a:	60aa                	ld	ra,136(sp)
   15d4c:	640a                	ld	s0,128(sp)
   15d4e:	4781                	li	a5,0
   15d50:	00f92023          	sw	a5,0(s2)
   15d54:	40000713          	li	a4,1024
   15d58:	e098                	sd	a4,0(s1)
   15d5a:	7946                	ld	s2,112(sp)
   15d5c:	74e6                	ld	s1,120(sp)
   15d5e:	4501                	li	a0,0
   15d60:	6149                	addi	sp,sp,144
   15d62:	8082                	ret

0000000000015d64 <memmove>:
   15d64:	02a5f263          	bgeu	a1,a0,15d88 <memmove+0x24>
   15d68:	00c587b3          	add	a5,a1,a2
   15d6c:	00f57e63          	bgeu	a0,a5,15d88 <memmove+0x24>
   15d70:	00c50733          	add	a4,a0,a2
   15d74:	ca5d                	beqz	a2,15e2a <memmove+0xc6>
   15d76:	fff7c683          	lbu	a3,-1(a5) # 1fff <exit-0xe0e9>
   15d7a:	17fd                	addi	a5,a5,-1
   15d7c:	177d                	addi	a4,a4,-1 # 1fff <exit-0xe0e9>
   15d7e:	00d70023          	sb	a3,0(a4)
   15d82:	fef59ae3          	bne	a1,a5,15d76 <memmove+0x12>
   15d86:	8082                	ret
   15d88:	47fd                	li	a5,31
   15d8a:	02c7e163          	bltu	a5,a2,15dac <memmove+0x48>
   15d8e:	87aa                	mv	a5,a0
   15d90:	fff60693          	addi	a3,a2,-1
   15d94:	c245                	beqz	a2,15e34 <memmove+0xd0>
   15d96:	0685                	addi	a3,a3,1
   15d98:	96be                	add	a3,a3,a5
   15d9a:	0005c703          	lbu	a4,0(a1)
   15d9e:	0785                	addi	a5,a5,1
   15da0:	0585                	addi	a1,a1,1
   15da2:	fee78fa3          	sb	a4,-1(a5)
   15da6:	fed79ae3          	bne	a5,a3,15d9a <memmove+0x36>
   15daa:	8082                	ret
   15dac:	00b567b3          	or	a5,a0,a1
   15db0:	8b9d                	andi	a5,a5,7
   15db2:	efad                	bnez	a5,15e2c <memmove+0xc8>
   15db4:	fe060893          	addi	a7,a2,-32
   15db8:	fe08f893          	andi	a7,a7,-32
   15dbc:	02088893          	addi	a7,a7,32
   15dc0:	01150833          	add	a6,a0,a7
   15dc4:	872e                	mv	a4,a1
   15dc6:	87aa                	mv	a5,a0
   15dc8:	6314                	ld	a3,0(a4)
   15dca:	02070713          	addi	a4,a4,32
   15dce:	02078793          	addi	a5,a5,32
   15dd2:	fed7b023          	sd	a3,-32(a5)
   15dd6:	fe873683          	ld	a3,-24(a4)
   15dda:	fed7b423          	sd	a3,-24(a5)
   15dde:	ff073683          	ld	a3,-16(a4)
   15de2:	fed7b823          	sd	a3,-16(a5)
   15de6:	ff873683          	ld	a3,-8(a4)
   15dea:	fed7bc23          	sd	a3,-8(a5)
   15dee:	fcf81de3          	bne	a6,a5,15dc8 <memmove+0x64>
   15df2:	01867713          	andi	a4,a2,24
   15df6:	95c6                	add	a1,a1,a7
   15df8:	01f67813          	andi	a6,a2,31
   15dfc:	cf0d                	beqz	a4,15e36 <memmove+0xd2>
   15dfe:	872e                	mv	a4,a1
   15e00:	88be                	mv	a7,a5
   15e02:	4e1d                	li	t3,7
   15e04:	00073303          	ld	t1,0(a4)
   15e08:	0721                	addi	a4,a4,8
   15e0a:	40e806b3          	sub	a3,a6,a4
   15e0e:	0068b023          	sd	t1,0(a7)
   15e12:	96ae                	add	a3,a3,a1
   15e14:	08a1                	addi	a7,a7,8
   15e16:	fede67e3          	bltu	t3,a3,15e04 <memmove+0xa0>
   15e1a:	ff880713          	addi	a4,a6,-8
   15e1e:	9b61                	andi	a4,a4,-8
   15e20:	0721                	addi	a4,a4,8
   15e22:	8a1d                	andi	a2,a2,7
   15e24:	97ba                	add	a5,a5,a4
   15e26:	95ba                	add	a1,a1,a4
   15e28:	b7a5                	j	15d90 <memmove+0x2c>
   15e2a:	8082                	ret
   15e2c:	fff60693          	addi	a3,a2,-1
   15e30:	87aa                	mv	a5,a0
   15e32:	b795                	j	15d96 <memmove+0x32>
   15e34:	8082                	ret
   15e36:	8642                	mv	a2,a6
   15e38:	bfa1                	j	15d90 <memmove+0x2c>

0000000000015e3a <_Balloc>:
   15e3a:	7d3c                	ld	a5,120(a0)
   15e3c:	1101                	addi	sp,sp,-32
   15e3e:	e822                	sd	s0,16(sp)
   15e40:	e426                	sd	s1,8(sp)
   15e42:	ec06                	sd	ra,24(sp)
   15e44:	e04a                	sd	s2,0(sp)
   15e46:	842a                	mv	s0,a0
   15e48:	84ae                	mv	s1,a1
   15e4a:	c385                	beqz	a5,15e6a <_Balloc+0x30>
   15e4c:	00349713          	slli	a4,s1,0x3
   15e50:	97ba                	add	a5,a5,a4
   15e52:	6388                	ld	a0,0(a5)
   15e54:	c50d                	beqz	a0,15e7e <_Balloc+0x44>
   15e56:	6118                	ld	a4,0(a0)
   15e58:	e398                	sd	a4,0(a5)
   15e5a:	00053823          	sd	zero,16(a0)
   15e5e:	60e2                	ld	ra,24(sp)
   15e60:	6442                	ld	s0,16(sp)
   15e62:	64a2                	ld	s1,8(sp)
   15e64:	6902                	ld	s2,0(sp)
   15e66:	6105                	addi	sp,sp,32
   15e68:	8082                	ret
   15e6a:	04100613          	li	a2,65
   15e6e:	45a1                	li	a1,8
   15e70:	3c3030ef          	jal	ra,19a32 <_calloc_r>
   15e74:	fc28                	sd	a0,120(s0)
   15e76:	87aa                	mv	a5,a0
   15e78:	f971                	bnez	a0,15e4c <_Balloc+0x12>
   15e7a:	4501                	li	a0,0
   15e7c:	b7cd                	j	15e5e <_Balloc+0x24>
   15e7e:	4905                	li	s2,1
   15e80:	0099163b          	sllw	a2,s2,s1
   15e84:	8932                	mv	s2,a2
   15e86:	061d                	addi	a2,a2,7
   15e88:	060a                	slli	a2,a2,0x2
   15e8a:	4585                	li	a1,1
   15e8c:	8522                	mv	a0,s0
   15e8e:	3a5030ef          	jal	ra,19a32 <_calloc_r>
   15e92:	d565                	beqz	a0,15e7a <_Balloc+0x40>
   15e94:	c504                	sw	s1,8(a0)
   15e96:	01252623          	sw	s2,12(a0)
   15e9a:	b7c1                	j	15e5a <_Balloc+0x20>

0000000000015e9c <_Bfree>:
   15e9c:	c981                	beqz	a1,15eac <_Bfree+0x10>
   15e9e:	4598                	lw	a4,8(a1)
   15ea0:	7d3c                	ld	a5,120(a0)
   15ea2:	070e                	slli	a4,a4,0x3
   15ea4:	97ba                	add	a5,a5,a4
   15ea6:	6398                	ld	a4,0(a5)
   15ea8:	e198                	sd	a4,0(a1)
   15eaa:	e38c                	sd	a1,0(a5)
   15eac:	8082                	ret

0000000000015eae <__multadd>:
   15eae:	7179                	addi	sp,sp,-48
   15eb0:	ec26                	sd	s1,24(sp)
   15eb2:	49c4                	lw	s1,20(a1)
   15eb4:	6341                	lui	t1,0x10
   15eb6:	f022                	sd	s0,32(sp)
   15eb8:	e84a                	sd	s2,16(sp)
   15eba:	e44e                	sd	s3,8(sp)
   15ebc:	f406                	sd	ra,40(sp)
   15ebe:	e052                	sd	s4,0(sp)
   15ec0:	892e                	mv	s2,a1
   15ec2:	89aa                	mv	s3,a0
   15ec4:	8436                	mv	s0,a3
   15ec6:	01858813          	addi	a6,a1,24
   15eca:	4881                	li	a7,0
   15ecc:	137d                	addi	t1,t1,-1 # ffff <exit-0xe9>
   15ece:	00082783          	lw	a5,0(a6)
   15ed2:	0811                	addi	a6,a6,4
   15ed4:	2885                	addiw	a7,a7,1
   15ed6:	0067f733          	and	a4,a5,t1
   15eda:	02c7073b          	mulw	a4,a4,a2
   15ede:	0107d69b          	srliw	a3,a5,0x10
   15ee2:	02c686bb          	mulw	a3,a3,a2
   15ee6:	008707bb          	addw	a5,a4,s0
   15eea:	0107d71b          	srliw	a4,a5,0x10
   15eee:	00f377b3          	and	a5,t1,a5
   15ef2:	9eb9                	addw	a3,a3,a4
   15ef4:	0106971b          	slliw	a4,a3,0x10
   15ef8:	9fb9                	addw	a5,a5,a4
   15efa:	fef82e23          	sw	a5,-4(a6)
   15efe:	0106d41b          	srliw	s0,a3,0x10
   15f02:	fc98c6e3          	blt	a7,s1,15ece <__multadd+0x20>
   15f06:	cc09                	beqz	s0,15f20 <__multadd+0x72>
   15f08:	00c92783          	lw	a5,12(s2)
   15f0c:	02f4d363          	bge	s1,a5,15f32 <__multadd+0x84>
   15f10:	00448793          	addi	a5,s1,4
   15f14:	078a                	slli	a5,a5,0x2
   15f16:	97ca                	add	a5,a5,s2
   15f18:	c780                	sw	s0,8(a5)
   15f1a:	2485                	addiw	s1,s1,1
   15f1c:	00992a23          	sw	s1,20(s2)
   15f20:	70a2                	ld	ra,40(sp)
   15f22:	7402                	ld	s0,32(sp)
   15f24:	64e2                	ld	s1,24(sp)
   15f26:	69a2                	ld	s3,8(sp)
   15f28:	6a02                	ld	s4,0(sp)
   15f2a:	854a                	mv	a0,s2
   15f2c:	6942                	ld	s2,16(sp)
   15f2e:	6145                	addi	sp,sp,48
   15f30:	8082                	ret
   15f32:	00892583          	lw	a1,8(s2)
   15f36:	854e                	mv	a0,s3
   15f38:	2585                	addiw	a1,a1,1
   15f3a:	f01ff0ef          	jal	ra,15e3a <_Balloc>
   15f3e:	8a2a                	mv	s4,a0
   15f40:	cd1d                	beqz	a0,15f7e <__multadd+0xd0>
   15f42:	01492603          	lw	a2,20(s2)
   15f46:	01090593          	addi	a1,s2,16
   15f4a:	0541                	addi	a0,a0,16
   15f4c:	0609                	addi	a2,a2,2
   15f4e:	060a                	slli	a2,a2,0x2
   15f50:	c2efb0ef          	jal	ra,1137e <memcpy>
   15f54:	00892703          	lw	a4,8(s2)
   15f58:	0789b783          	ld	a5,120(s3)
   15f5c:	070e                	slli	a4,a4,0x3
   15f5e:	97ba                	add	a5,a5,a4
   15f60:	6398                	ld	a4,0(a5)
   15f62:	00e93023          	sd	a4,0(s2)
   15f66:	0127b023          	sd	s2,0(a5)
   15f6a:	00448793          	addi	a5,s1,4
   15f6e:	8952                	mv	s2,s4
   15f70:	078a                	slli	a5,a5,0x2
   15f72:	97ca                	add	a5,a5,s2
   15f74:	c780                	sw	s0,8(a5)
   15f76:	2485                	addiw	s1,s1,1
   15f78:	00992a23          	sw	s1,20(s2)
   15f7c:	b755                	j	15f20 <__multadd+0x72>
   15f7e:	66f5                	lui	a3,0x1d
   15f80:	6575                	lui	a0,0x1d
   15f82:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   15f86:	4601                	li	a2,0
   15f88:	0b500593          	li	a1,181
   15f8c:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   15f90:	25b030ef          	jal	ra,199ea <__assert_func>

0000000000015f94 <__s2b>:
   15f94:	7139                	addi	sp,sp,-64
   15f96:	f822                	sd	s0,48(sp)
   15f98:	f426                	sd	s1,40(sp)
   15f9a:	f04a                	sd	s2,32(sp)
   15f9c:	ec4e                	sd	s3,24(sp)
   15f9e:	e852                	sd	s4,16(sp)
   15fa0:	84b6                	mv	s1,a3
   15fa2:	842e                	mv	s0,a1
   15fa4:	26a1                	addiw	a3,a3,8
   15fa6:	45a5                	li	a1,9
   15fa8:	fc06                	sd	ra,56(sp)
   15faa:	e456                	sd	s5,8(sp)
   15fac:	e05a                	sd	s6,0(sp)
   15fae:	47a5                	li	a5,9
   15fb0:	02b6c6bb          	divw	a3,a3,a1
   15fb4:	892a                	mv	s2,a0
   15fb6:	89b2                	mv	s3,a2
   15fb8:	8a3a                	mv	s4,a4
   15fba:	0a97d363          	bge	a5,s1,16060 <__s2b+0xcc>
   15fbe:	4785                	li	a5,1
   15fc0:	4581                	li	a1,0
   15fc2:	0017979b          	slliw	a5,a5,0x1
   15fc6:	2585                	addiw	a1,a1,1
   15fc8:	fed7cde3          	blt	a5,a3,15fc2 <__s2b+0x2e>
   15fcc:	854a                	mv	a0,s2
   15fce:	e6dff0ef          	jal	ra,15e3a <_Balloc>
   15fd2:	85aa                	mv	a1,a0
   15fd4:	c941                	beqz	a0,16064 <__s2b+0xd0>
   15fd6:	4785                	li	a5,1
   15fd8:	c95c                	sw	a5,20(a0)
   15fda:	01452c23          	sw	s4,24(a0)
   15fde:	47a5                	li	a5,9
   15fe0:	0737dd63          	bge	a5,s3,1605a <__s2b+0xc6>
   15fe4:	02099793          	slli	a5,s3,0x20
   15fe8:	00940b13          	addi	s6,s0,9
   15fec:	9381                	srli	a5,a5,0x20
   15fee:	00098a9b          	sext.w	s5,s3
   15ff2:	943e                	add	s0,s0,a5
   15ff4:	8a5a                	mv	s4,s6
   15ff6:	000a4683          	lbu	a3,0(s4)
   15ffa:	4629                	li	a2,10
   15ffc:	854a                	mv	a0,s2
   15ffe:	fd06869b          	addiw	a3,a3,-48
   16002:	eadff0ef          	jal	ra,15eae <__multadd>
   16006:	0a05                	addi	s4,s4,1
   16008:	85aa                	mv	a1,a0
   1600a:	fe8a16e3          	bne	s4,s0,15ff6 <__s2b+0x62>
   1600e:	3ae1                	addiw	s5,s5,-8
   16010:	1a82                	slli	s5,s5,0x20
   16012:	020ada93          	srli	s5,s5,0x20
   16016:	015b0433          	add	s0,s6,s5
   1601a:	0299d563          	bge	s3,s1,16044 <__s2b+0xb0>
   1601e:	34fd                	addiw	s1,s1,-1
   16020:	413484bb          	subw	s1,s1,s3
   16024:	1482                	slli	s1,s1,0x20
   16026:	9081                	srli	s1,s1,0x20
   16028:	0485                	addi	s1,s1,1
   1602a:	94a2                	add	s1,s1,s0
   1602c:	00044683          	lbu	a3,0(s0)
   16030:	4629                	li	a2,10
   16032:	854a                	mv	a0,s2
   16034:	fd06869b          	addiw	a3,a3,-48
   16038:	e77ff0ef          	jal	ra,15eae <__multadd>
   1603c:	0405                	addi	s0,s0,1
   1603e:	85aa                	mv	a1,a0
   16040:	fe9416e3          	bne	s0,s1,1602c <__s2b+0x98>
   16044:	70e2                	ld	ra,56(sp)
   16046:	7442                	ld	s0,48(sp)
   16048:	74a2                	ld	s1,40(sp)
   1604a:	7902                	ld	s2,32(sp)
   1604c:	69e2                	ld	s3,24(sp)
   1604e:	6a42                	ld	s4,16(sp)
   16050:	6aa2                	ld	s5,8(sp)
   16052:	6b02                	ld	s6,0(sp)
   16054:	852e                	mv	a0,a1
   16056:	6121                	addi	sp,sp,64
   16058:	8082                	ret
   1605a:	0429                	addi	s0,s0,10
   1605c:	49a5                	li	s3,9
   1605e:	bf75                	j	1601a <__s2b+0x86>
   16060:	4581                	li	a1,0
   16062:	b7ad                	j	15fcc <__s2b+0x38>
   16064:	66f5                	lui	a3,0x1d
   16066:	6575                	lui	a0,0x1d
   16068:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   1606c:	4601                	li	a2,0
   1606e:	0ce00593          	li	a1,206
   16072:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   16076:	175030ef          	jal	ra,199ea <__assert_func>

000000000001607a <__hi0bits>:
   1607a:	7741                	lui	a4,0xffff0
   1607c:	8f69                	and	a4,a4,a0
   1607e:	87aa                	mv	a5,a0
   16080:	4501                	li	a0,0
   16082:	e701                	bnez	a4,1608a <__hi0bits+0x10>
   16084:	0107979b          	slliw	a5,a5,0x10
   16088:	4541                	li	a0,16
   1608a:	ff000737          	lui	a4,0xff000
   1608e:	8f7d                	and	a4,a4,a5
   16090:	e701                	bnez	a4,16098 <__hi0bits+0x1e>
   16092:	0087979b          	slliw	a5,a5,0x8
   16096:	2521                	addiw	a0,a0,8
   16098:	f0000737          	lui	a4,0xf0000
   1609c:	8f7d                	and	a4,a4,a5
   1609e:	e701                	bnez	a4,160a6 <__hi0bits+0x2c>
   160a0:	0047979b          	slliw	a5,a5,0x4
   160a4:	2511                	addiw	a0,a0,4
   160a6:	c0000737          	lui	a4,0xc0000
   160aa:	8f7d                	and	a4,a4,a5
   160ac:	e701                	bnez	a4,160b4 <__hi0bits+0x3a>
   160ae:	0027979b          	slliw	a5,a5,0x2
   160b2:	2509                	addiw	a0,a0,2
   160b4:	0007c663          	bltz	a5,160c0 <__hi0bits+0x46>
   160b8:	83f9                	srli	a5,a5,0x1e
   160ba:	8b85                	andi	a5,a5,1
   160bc:	2505                	addiw	a0,a0,1
   160be:	c391                	beqz	a5,160c2 <__hi0bits+0x48>
   160c0:	8082                	ret
   160c2:	02000513          	li	a0,32
   160c6:	8082                	ret

00000000000160c8 <__lo0bits>:
   160c8:	411c                	lw	a5,0(a0)
   160ca:	872a                	mv	a4,a0
   160cc:	0077f693          	andi	a3,a5,7
   160d0:	863e                	mv	a2,a5
   160d2:	ce81                	beqz	a3,160ea <__lo0bits+0x22>
   160d4:	0017f693          	andi	a3,a5,1
   160d8:	4501                	li	a0,0
   160da:	ee9d                	bnez	a3,16118 <__lo0bits+0x50>
   160dc:	8a09                	andi	a2,a2,2
   160de:	ce25                	beqz	a2,16156 <__lo0bits+0x8e>
   160e0:	0017d79b          	srliw	a5,a5,0x1
   160e4:	c31c                	sw	a5,0(a4)
   160e6:	4505                	li	a0,1
   160e8:	8082                	ret
   160ea:	03079693          	slli	a3,a5,0x30
   160ee:	92c1                	srli	a3,a3,0x30
   160f0:	4501                	li	a0,0
   160f2:	cab9                	beqz	a3,16148 <__lo0bits+0x80>
   160f4:	0ff7f693          	zext.b	a3,a5
   160f8:	c2a9                	beqz	a3,1613a <__lo0bits+0x72>
   160fa:	00f7f693          	andi	a3,a5,15
   160fe:	c69d                	beqz	a3,1612c <__lo0bits+0x64>
   16100:	0037f693          	andi	a3,a5,3
   16104:	ce89                	beqz	a3,1611e <__lo0bits+0x56>
   16106:	0017f693          	andi	a3,a5,1
   1610a:	ea81                	bnez	a3,1611a <__lo0bits+0x52>
   1610c:	0017d79b          	srliw	a5,a5,0x1
   16110:	2505                	addiw	a0,a0,1
   16112:	e781                	bnez	a5,1611a <__lo0bits+0x52>
   16114:	02000513          	li	a0,32
   16118:	8082                	ret
   1611a:	c31c                	sw	a5,0(a4)
   1611c:	8082                	ret
   1611e:	0027d79b          	srliw	a5,a5,0x2
   16122:	0017f693          	andi	a3,a5,1
   16126:	2509                	addiw	a0,a0,2
   16128:	faed                	bnez	a3,1611a <__lo0bits+0x52>
   1612a:	b7cd                	j	1610c <__lo0bits+0x44>
   1612c:	0047d79b          	srliw	a5,a5,0x4
   16130:	0037f693          	andi	a3,a5,3
   16134:	2511                	addiw	a0,a0,4
   16136:	fae1                	bnez	a3,16106 <__lo0bits+0x3e>
   16138:	b7dd                	j	1611e <__lo0bits+0x56>
   1613a:	0087d79b          	srliw	a5,a5,0x8
   1613e:	00f7f693          	andi	a3,a5,15
   16142:	2521                	addiw	a0,a0,8
   16144:	fed5                	bnez	a3,16100 <__lo0bits+0x38>
   16146:	b7dd                	j	1612c <__lo0bits+0x64>
   16148:	0107d79b          	srliw	a5,a5,0x10
   1614c:	0ff7f693          	zext.b	a3,a5
   16150:	4541                	li	a0,16
   16152:	f6c5                	bnez	a3,160fa <__lo0bits+0x32>
   16154:	b7dd                	j	1613a <__lo0bits+0x72>
   16156:	0027d79b          	srliw	a5,a5,0x2
   1615a:	c31c                	sw	a5,0(a4)
   1615c:	4509                	li	a0,2
   1615e:	8082                	ret

0000000000016160 <__i2b>:
   16160:	7d3c                	ld	a5,120(a0)
   16162:	1101                	addi	sp,sp,-32
   16164:	e822                	sd	s0,16(sp)
   16166:	e426                	sd	s1,8(sp)
   16168:	ec06                	sd	ra,24(sp)
   1616a:	842a                	mv	s0,a0
   1616c:	84ae                	mv	s1,a1
   1616e:	cf91                	beqz	a5,1618a <__i2b+0x2a>
   16170:	6788                	ld	a0,8(a5)
   16172:	cd1d                	beqz	a0,161b0 <__i2b+0x50>
   16174:	6118                	ld	a4,0(a0)
   16176:	e798                	sd	a4,8(a5)
   16178:	60e2                	ld	ra,24(sp)
   1617a:	6442                	ld	s0,16(sp)
   1617c:	4785                	li	a5,1
   1617e:	1782                	slli	a5,a5,0x20
   16180:	cd04                	sw	s1,24(a0)
   16182:	e91c                	sd	a5,16(a0)
   16184:	64a2                	ld	s1,8(sp)
   16186:	6105                	addi	sp,sp,32
   16188:	8082                	ret
   1618a:	04100613          	li	a2,65
   1618e:	45a1                	li	a1,8
   16190:	0a3030ef          	jal	ra,19a32 <_calloc_r>
   16194:	fc28                	sd	a0,120(s0)
   16196:	87aa                	mv	a5,a0
   16198:	fd61                	bnez	a0,16170 <__i2b+0x10>
   1619a:	66f5                	lui	a3,0x1d
   1619c:	6575                	lui	a0,0x1d
   1619e:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   161a2:	4601                	li	a2,0
   161a4:	14000593          	li	a1,320
   161a8:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   161ac:	03f030ef          	jal	ra,199ea <__assert_func>
   161b0:	02400613          	li	a2,36
   161b4:	4585                	li	a1,1
   161b6:	8522                	mv	a0,s0
   161b8:	07b030ef          	jal	ra,19a32 <_calloc_r>
   161bc:	dd79                	beqz	a0,1619a <__i2b+0x3a>
   161be:	4785                	li	a5,1
   161c0:	1786                	slli	a5,a5,0x21
   161c2:	0785                	addi	a5,a5,1
   161c4:	e51c                	sd	a5,8(a0)
   161c6:	bf4d                	j	16178 <__i2b+0x18>

00000000000161c8 <__multiply>:
   161c8:	7179                	addi	sp,sp,-48
   161ca:	e84a                	sd	s2,16(sp)
   161cc:	e44e                	sd	s3,8(sp)
   161ce:	01462903          	lw	s2,20(a2)
   161d2:	0145a983          	lw	s3,20(a1)
   161d6:	ec26                	sd	s1,24(sp)
   161d8:	e052                	sd	s4,0(sp)
   161da:	f406                	sd	ra,40(sp)
   161dc:	f022                	sd	s0,32(sp)
   161de:	8a2e                	mv	s4,a1
   161e0:	84b2                	mv	s1,a2
   161e2:	0129c763          	blt	s3,s2,161f0 <__multiply+0x28>
   161e6:	87ca                	mv	a5,s2
   161e8:	84ae                	mv	s1,a1
   161ea:	894e                	mv	s2,s3
   161ec:	8a32                	mv	s4,a2
   161ee:	89be                	mv	s3,a5
   161f0:	44dc                	lw	a5,12(s1)
   161f2:	0139043b          	addw	s0,s2,s3
   161f6:	448c                	lw	a1,8(s1)
   161f8:	0087d363          	bge	a5,s0,161fe <__multiply+0x36>
   161fc:	2585                	addiw	a1,a1,1
   161fe:	c3dff0ef          	jal	ra,15e3a <_Balloc>
   16202:	14050b63          	beqz	a0,16358 <__multiply+0x190>
   16206:	01850313          	addi	t1,a0,24
   1620a:	00241893          	slli	a7,s0,0x2
   1620e:	989a                	add	a7,a7,t1
   16210:	879a                	mv	a5,t1
   16212:	01137763          	bgeu	t1,a7,16220 <__multiply+0x58>
   16216:	0007a023          	sw	zero,0(a5)
   1621a:	0791                	addi	a5,a5,4
   1621c:	ff17ede3          	bltu	a5,a7,16216 <__multiply+0x4e>
   16220:	018a0813          	addi	a6,s4,24
   16224:	00299e13          	slli	t3,s3,0x2
   16228:	01848e93          	addi	t4,s1,24
   1622c:	00291593          	slli	a1,s2,0x2
   16230:	9e42                	add	t3,t3,a6
   16232:	95f6                	add	a1,a1,t4
   16234:	0fc87963          	bgeu	a6,t3,16326 <__multiply+0x15e>
   16238:	01948793          	addi	a5,s1,25
   1623c:	4f11                	li	t5,4
   1623e:	10f5f663          	bgeu	a1,a5,1634a <__multiply+0x182>
   16242:	66c1                	lui	a3,0x10
   16244:	16fd                	addi	a3,a3,-1 # ffff <exit-0xe9>
   16246:	a809                	j	16258 <__multiply+0x90>
   16248:	0102d29b          	srliw	t0,t0,0x10
   1624c:	06029b63          	bnez	t0,162c2 <__multiply+0xfa>
   16250:	0811                	addi	a6,a6,4
   16252:	0311                	addi	t1,t1,4
   16254:	0dc87963          	bgeu	a6,t3,16326 <__multiply+0x15e>
   16258:	00082283          	lw	t0,0(a6)
   1625c:	00d2f3b3          	and	t2,t0,a3
   16260:	fe0384e3          	beqz	t2,16248 <__multiply+0x80>
   16264:	829a                	mv	t0,t1
   16266:	8ff6                	mv	t6,t4
   16268:	4481                	li	s1,0
   1626a:	000fa703          	lw	a4,0(t6)
   1626e:	0002a603          	lw	a2,0(t0) # 114f6 <memset+0x90>
   16272:	0291                	addi	t0,t0,4
   16274:	00d777b3          	and	a5,a4,a3
   16278:	027787bb          	mulw	a5,a5,t2
   1627c:	0107571b          	srliw	a4,a4,0x10
   16280:	00d67933          	and	s2,a2,a3
   16284:	0106561b          	srliw	a2,a2,0x10
   16288:	0f91                	addi	t6,t6,4
   1628a:	0277073b          	mulw	a4,a4,t2
   1628e:	012787bb          	addw	a5,a5,s2
   16292:	9fa5                	addw	a5,a5,s1
   16294:	0107d49b          	srliw	s1,a5,0x10
   16298:	8ff5                	and	a5,a5,a3
   1629a:	9f31                	addw	a4,a4,a2
   1629c:	9f25                	addw	a4,a4,s1
   1629e:	0107161b          	slliw	a2,a4,0x10
   162a2:	8fd1                	or	a5,a5,a2
   162a4:	fef2ae23          	sw	a5,-4(t0)
   162a8:	0107549b          	srliw	s1,a4,0x10
   162ac:	fabfefe3          	bltu	t6,a1,1626a <__multiply+0xa2>
   162b0:	01e307b3          	add	a5,t1,t5
   162b4:	c384                	sw	s1,0(a5)
   162b6:	00082283          	lw	t0,0(a6)
   162ba:	0102d29b          	srliw	t0,t0,0x10
   162be:	f80289e3          	beqz	t0,16250 <__multiply+0x88>
   162c2:	00032603          	lw	a2,0(t1)
   162c6:	839a                	mv	t2,t1
   162c8:	8ff6                	mv	t6,t4
   162ca:	84b2                	mv	s1,a2
   162cc:	4701                	li	a4,0
   162ce:	000fa783          	lw	a5,0(t6)
   162d2:	0104d99b          	srliw	s3,s1,0x10
   162d6:	8e75                	and	a2,a2,a3
   162d8:	8ff5                	and	a5,a5,a3
   162da:	025787bb          	mulw	a5,a5,t0
   162de:	0043a483          	lw	s1,4(t2)
   162e2:	0391                	addi	t2,t2,4
   162e4:	0f91                	addi	t6,t6,4
   162e6:	00d4f933          	and	s2,s1,a3
   162ea:	013787bb          	addw	a5,a5,s3
   162ee:	9fb9                	addw	a5,a5,a4
   162f0:	0107971b          	slliw	a4,a5,0x10
   162f4:	8e59                	or	a2,a2,a4
   162f6:	fec3ae23          	sw	a2,-4(t2)
   162fa:	ffefd703          	lhu	a4,-2(t6)
   162fe:	0107d79b          	srliw	a5,a5,0x10
   16302:	0257073b          	mulw	a4,a4,t0
   16306:	0127073b          	addw	a4,a4,s2
   1630a:	9fb9                	addw	a5,a5,a4
   1630c:	0007861b          	sext.w	a2,a5
   16310:	0107d71b          	srliw	a4,a5,0x10
   16314:	fabfede3          	bltu	t6,a1,162ce <__multiply+0x106>
   16318:	01e307b3          	add	a5,t1,t5
   1631c:	c390                	sw	a2,0(a5)
   1631e:	0811                	addi	a6,a6,4
   16320:	0311                	addi	t1,t1,4
   16322:	f3c86be3          	bltu	a6,t3,16258 <__multiply+0x90>
   16326:	00804563          	bgtz	s0,16330 <__multiply+0x168>
   1632a:	a039                	j	16338 <__multiply+0x170>
   1632c:	347d                	addiw	s0,s0,-1
   1632e:	c409                	beqz	s0,16338 <__multiply+0x170>
   16330:	ffc8a783          	lw	a5,-4(a7)
   16334:	18f1                	addi	a7,a7,-4
   16336:	dbfd                	beqz	a5,1632c <__multiply+0x164>
   16338:	70a2                	ld	ra,40(sp)
   1633a:	c940                	sw	s0,20(a0)
   1633c:	7402                	ld	s0,32(sp)
   1633e:	64e2                	ld	s1,24(sp)
   16340:	6942                	ld	s2,16(sp)
   16342:	69a2                	ld	s3,8(sp)
   16344:	6a02                	ld	s4,0(sp)
   16346:	6145                	addi	sp,sp,48
   16348:	8082                	ret
   1634a:	409587b3          	sub	a5,a1,s1
   1634e:	179d                	addi	a5,a5,-25
   16350:	9bf1                	andi	a5,a5,-4
   16352:	00478f13          	addi	t5,a5,4
   16356:	b5f5                	j	16242 <__multiply+0x7a>
   16358:	66f5                	lui	a3,0x1d
   1635a:	6575                	lui	a0,0x1d
   1635c:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   16360:	4601                	li	a2,0
   16362:	15d00593          	li	a1,349
   16366:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   1636a:	680030ef          	jal	ra,199ea <__assert_func>

000000000001636e <__pow5mult>:
   1636e:	7179                	addi	sp,sp,-48
   16370:	f022                	sd	s0,32(sp)
   16372:	e84a                	sd	s2,16(sp)
   16374:	e44e                	sd	s3,8(sp)
   16376:	f406                	sd	ra,40(sp)
   16378:	ec26                	sd	s1,24(sp)
   1637a:	00367793          	andi	a5,a2,3
   1637e:	8432                	mv	s0,a2
   16380:	89aa                	mv	s3,a0
   16382:	892e                	mv	s2,a1
   16384:	ebb5                	bnez	a5,163f8 <__pow5mult+0x8a>
   16386:	8409                	srai	s0,s0,0x2
   16388:	c421                	beqz	s0,163d0 <__pow5mult+0x62>
   1638a:	0709b483          	ld	s1,112(s3)
   1638e:	c0c9                	beqz	s1,16410 <__pow5mult+0xa2>
   16390:	00147793          	andi	a5,s0,1
   16394:	eb89                	bnez	a5,163a6 <__pow5mult+0x38>
   16396:	8405                	srai	s0,s0,0x1
   16398:	cc05                	beqz	s0,163d0 <__pow5mult+0x62>
   1639a:	6088                	ld	a0,0(s1)
   1639c:	c131                	beqz	a0,163e0 <__pow5mult+0x72>
   1639e:	84aa                	mv	s1,a0
   163a0:	00147793          	andi	a5,s0,1
   163a4:	dbed                	beqz	a5,16396 <__pow5mult+0x28>
   163a6:	8626                	mv	a2,s1
   163a8:	85ca                	mv	a1,s2
   163aa:	854e                	mv	a0,s3
   163ac:	e1dff0ef          	jal	ra,161c8 <__multiply>
   163b0:	04090263          	beqz	s2,163f4 <__pow5mult+0x86>
   163b4:	00892703          	lw	a4,8(s2)
   163b8:	0789b783          	ld	a5,120(s3)
   163bc:	8405                	srai	s0,s0,0x1
   163be:	070e                	slli	a4,a4,0x3
   163c0:	97ba                	add	a5,a5,a4
   163c2:	6398                	ld	a4,0(a5)
   163c4:	00e93023          	sd	a4,0(s2)
   163c8:	0127b023          	sd	s2,0(a5)
   163cc:	892a                	mv	s2,a0
   163ce:	f471                	bnez	s0,1639a <__pow5mult+0x2c>
   163d0:	70a2                	ld	ra,40(sp)
   163d2:	7402                	ld	s0,32(sp)
   163d4:	64e2                	ld	s1,24(sp)
   163d6:	69a2                	ld	s3,8(sp)
   163d8:	854a                	mv	a0,s2
   163da:	6942                	ld	s2,16(sp)
   163dc:	6145                	addi	sp,sp,48
   163de:	8082                	ret
   163e0:	8626                	mv	a2,s1
   163e2:	85a6                	mv	a1,s1
   163e4:	854e                	mv	a0,s3
   163e6:	de3ff0ef          	jal	ra,161c8 <__multiply>
   163ea:	e088                	sd	a0,0(s1)
   163ec:	00053023          	sd	zero,0(a0)
   163f0:	84aa                	mv	s1,a0
   163f2:	b77d                	j	163a0 <__pow5mult+0x32>
   163f4:	892a                	mv	s2,a0
   163f6:	b745                	j	16396 <__pow5mult+0x28>
   163f8:	37fd                	addiw	a5,a5,-1
   163fa:	6775                	lui	a4,0x1d
   163fc:	e5070713          	addi	a4,a4,-432 # 1ce50 <p05.0>
   16400:	078a                	slli	a5,a5,0x2
   16402:	97ba                	add	a5,a5,a4
   16404:	4390                	lw	a2,0(a5)
   16406:	4681                	li	a3,0
   16408:	aa7ff0ef          	jal	ra,15eae <__multadd>
   1640c:	892a                	mv	s2,a0
   1640e:	bfa5                	j	16386 <__pow5mult+0x18>
   16410:	4585                	li	a1,1
   16412:	854e                	mv	a0,s3
   16414:	a27ff0ef          	jal	ra,15e3a <_Balloc>
   16418:	84aa                	mv	s1,a0
   1641a:	c919                	beqz	a0,16430 <__pow5mult+0xc2>
   1641c:	27100793          	li	a5,625
   16420:	cd1c                	sw	a5,24(a0)
   16422:	4785                	li	a5,1
   16424:	c95c                	sw	a5,20(a0)
   16426:	06a9b823          	sd	a0,112(s3)
   1642a:	00053023          	sd	zero,0(a0)
   1642e:	b78d                	j	16390 <__pow5mult+0x22>
   16430:	66f5                	lui	a3,0x1d
   16432:	6575                	lui	a0,0x1d
   16434:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   16438:	4601                	li	a2,0
   1643a:	14000593          	li	a1,320
   1643e:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   16442:	5a8030ef          	jal	ra,199ea <__assert_func>

0000000000016446 <__lshift>:
   16446:	7139                	addi	sp,sp,-64
   16448:	f04a                	sd	s2,32(sp)
   1644a:	0145a903          	lw	s2,20(a1)
   1644e:	45dc                	lw	a5,12(a1)
   16450:	e456                	sd	s5,8(sp)
   16452:	40565a9b          	sraiw	s5,a2,0x5
   16456:	012a893b          	addw	s2,s5,s2
   1645a:	f822                	sd	s0,48(sp)
   1645c:	f426                	sd	s1,40(sp)
   1645e:	ec4e                	sd	s3,24(sp)
   16460:	e852                	sd	s4,16(sp)
   16462:	e05a                	sd	s6,0(sp)
   16464:	fc06                	sd	ra,56(sp)
   16466:	0019049b          	addiw	s1,s2,1
   1646a:	842e                	mv	s0,a1
   1646c:	8a32                	mv	s4,a2
   1646e:	458c                	lw	a1,8(a1)
   16470:	89aa                	mv	s3,a0
   16472:	40565b13          	srai	s6,a2,0x5
   16476:	0097d763          	bge	a5,s1,16484 <__lshift+0x3e>
   1647a:	0017979b          	slliw	a5,a5,0x1
   1647e:	2585                	addiw	a1,a1,1
   16480:	fe97cde3          	blt	a5,s1,1647a <__lshift+0x34>
   16484:	854e                	mv	a0,s3
   16486:	9b5ff0ef          	jal	ra,15e3a <_Balloc>
   1648a:	c969                	beqz	a0,1655c <__lshift+0x116>
   1648c:	01850693          	addi	a3,a0,24
   16490:	03605563          	blez	s6,164ba <__lshift+0x74>
   16494:	fffa871b          	addiw	a4,s5,-1
   16498:	02071793          	slli	a5,a4,0x20
   1649c:	01e7d713          	srli	a4,a5,0x1e
   164a0:	0771                	addi	a4,a4,28
   164a2:	972a                	add	a4,a4,a0
   164a4:	87b6                	mv	a5,a3
   164a6:	0791                	addi	a5,a5,4
   164a8:	fe07ae23          	sw	zero,-4(a5)
   164ac:	fee79de3          	bne	a5,a4,164a6 <__lshift+0x60>
   164b0:	020a9793          	slli	a5,s5,0x20
   164b4:	01e7da93          	srli	s5,a5,0x1e
   164b8:	96d6                	add	a3,a3,s5
   164ba:	01442883          	lw	a7,20(s0)
   164be:	01840793          	addi	a5,s0,24
   164c2:	01fa7613          	andi	a2,s4,31
   164c6:	088a                	slli	a7,a7,0x2
   164c8:	98be                	add	a7,a7,a5
   164ca:	ca35                	beqz	a2,1653e <__lshift+0xf8>
   164cc:	02000313          	li	t1,32
   164d0:	40c3033b          	subw	t1,t1,a2
   164d4:	85b6                	mv	a1,a3
   164d6:	4701                	li	a4,0
   164d8:	0007a803          	lw	a6,0(a5)
   164dc:	0591                	addi	a1,a1,4
   164de:	0791                	addi	a5,a5,4
   164e0:	00c8183b          	sllw	a6,a6,a2
   164e4:	01076733          	or	a4,a4,a6
   164e8:	fee5ae23          	sw	a4,-4(a1)
   164ec:	ffc7a703          	lw	a4,-4(a5)
   164f0:	0067573b          	srlw	a4,a4,t1
   164f4:	ff17e2e3          	bltu	a5,a7,164d8 <__lshift+0x92>
   164f8:	01940793          	addi	a5,s0,25
   164fc:	4611                	li	a2,4
   164fe:	00f8e863          	bltu	a7,a5,1650e <__lshift+0xc8>
   16502:	408887b3          	sub	a5,a7,s0
   16506:	179d                	addi	a5,a5,-25
   16508:	9bf1                	andi	a5,a5,-4
   1650a:	00478613          	addi	a2,a5,4
   1650e:	96b2                	add	a3,a3,a2
   16510:	c298                	sw	a4,0(a3)
   16512:	c311                	beqz	a4,16516 <__lshift+0xd0>
   16514:	8926                	mv	s2,s1
   16516:	4418                	lw	a4,8(s0)
   16518:	0789b783          	ld	a5,120(s3)
   1651c:	01252a23          	sw	s2,20(a0)
   16520:	070e                	slli	a4,a4,0x3
   16522:	97ba                	add	a5,a5,a4
   16524:	6398                	ld	a4,0(a5)
   16526:	70e2                	ld	ra,56(sp)
   16528:	74a2                	ld	s1,40(sp)
   1652a:	e018                	sd	a4,0(s0)
   1652c:	e380                	sd	s0,0(a5)
   1652e:	7442                	ld	s0,48(sp)
   16530:	7902                	ld	s2,32(sp)
   16532:	69e2                	ld	s3,24(sp)
   16534:	6a42                	ld	s4,16(sp)
   16536:	6aa2                	ld	s5,8(sp)
   16538:	6b02                	ld	s6,0(sp)
   1653a:	6121                	addi	sp,sp,64
   1653c:	8082                	ret
   1653e:	4398                	lw	a4,0(a5)
   16540:	0791                	addi	a5,a5,4
   16542:	0691                	addi	a3,a3,4
   16544:	fee6ae23          	sw	a4,-4(a3)
   16548:	fd17f7e3          	bgeu	a5,a7,16516 <__lshift+0xd0>
   1654c:	4398                	lw	a4,0(a5)
   1654e:	0791                	addi	a5,a5,4
   16550:	0691                	addi	a3,a3,4
   16552:	fee6ae23          	sw	a4,-4(a3)
   16556:	ff17e4e3          	bltu	a5,a7,1653e <__lshift+0xf8>
   1655a:	bf75                	j	16516 <__lshift+0xd0>
   1655c:	66f5                	lui	a3,0x1d
   1655e:	6575                	lui	a0,0x1d
   16560:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   16564:	4601                	li	a2,0
   16566:	1d900593          	li	a1,473
   1656a:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   1656e:	47c030ef          	jal	ra,199ea <__assert_func>

0000000000016572 <__mcmp>:
   16572:	49dc                	lw	a5,20(a1)
   16574:	882a                	mv	a6,a0
   16576:	4948                	lw	a0,20(a0)
   16578:	9d1d                	subw	a0,a0,a5
   1657a:	e50d                	bnez	a0,165a4 <__mcmp+0x32>
   1657c:	078a                	slli	a5,a5,0x2
   1657e:	0861                	addi	a6,a6,24
   16580:	05e1                	addi	a1,a1,24
   16582:	00f80733          	add	a4,a6,a5
   16586:	97ae                	add	a5,a5,a1
   16588:	a019                	j	1658e <__mcmp+0x1c>
   1658a:	00e87d63          	bgeu	a6,a4,165a4 <__mcmp+0x32>
   1658e:	ffc72603          	lw	a2,-4(a4)
   16592:	ffc7a683          	lw	a3,-4(a5)
   16596:	1771                	addi	a4,a4,-4
   16598:	17f1                	addi	a5,a5,-4
   1659a:	fed608e3          	beq	a2,a3,1658a <__mcmp+0x18>
   1659e:	557d                	li	a0,-1
   165a0:	00d67363          	bgeu	a2,a3,165a6 <__mcmp+0x34>
   165a4:	8082                	ret
   165a6:	4505                	li	a0,1
   165a8:	8082                	ret

00000000000165aa <__mdiff>:
   165aa:	1101                	addi	sp,sp,-32
   165ac:	4a5c                	lw	a5,20(a2)
   165ae:	e04a                	sd	s2,0(sp)
   165b0:	0145a903          	lw	s2,20(a1)
   165b4:	e822                	sd	s0,16(sp)
   165b6:	e426                	sd	s1,8(sp)
   165b8:	ec06                	sd	ra,24(sp)
   165ba:	40f9093b          	subw	s2,s2,a5
   165be:	84ae                	mv	s1,a1
   165c0:	8432                	mv	s0,a2
   165c2:	14091163          	bnez	s2,16704 <__mdiff+0x15a>
   165c6:	00279693          	slli	a3,a5,0x2
   165ca:	05e1                	addi	a1,a1,24
   165cc:	01860713          	addi	a4,a2,24
   165d0:	00d587b3          	add	a5,a1,a3
   165d4:	9736                	add	a4,a4,a3
   165d6:	a019                	j	165dc <__mdiff+0x32>
   165d8:	12f5fa63          	bgeu	a1,a5,1670c <__mdiff+0x162>
   165dc:	ffc7a603          	lw	a2,-4(a5)
   165e0:	ffc72683          	lw	a3,-4(a4)
   165e4:	17f1                	addi	a5,a5,-4
   165e6:	1771                	addi	a4,a4,-4
   165e8:	fed608e3          	beq	a2,a3,165d8 <__mdiff+0x2e>
   165ec:	10d66763          	bltu	a2,a3,166fa <__mdiff+0x150>
   165f0:	448c                	lw	a1,8(s1)
   165f2:	849ff0ef          	jal	ra,15e3a <_Balloc>
   165f6:	12050963          	beqz	a0,16728 <__mdiff+0x17e>
   165fa:	0144a303          	lw	t1,20(s1)
   165fe:	01442f83          	lw	t6,20(s0)
   16602:	04e1                	addi	s1,s1,24
   16604:	00231e13          	slli	t3,t1,0x2
   16608:	01840813          	addi	a6,s0,24
   1660c:	0f8a                	slli	t6,t6,0x2
   1660e:	01850593          	addi	a1,a0,24
   16612:	6ec1                	lui	t4,0x10
   16614:	01252823          	sw	s2,16(a0)
   16618:	9e26                	add	t3,t3,s1
   1661a:	9fc2                	add	t6,t6,a6
   1661c:	862e                	mv	a2,a1
   1661e:	8f26                	mv	t5,s1
   16620:	4881                	li	a7,0
   16622:	1efd                	addi	t4,t4,-1 # ffff <exit-0xe9>
   16624:	000f2703          	lw	a4,0(t5)
   16628:	00082683          	lw	a3,0(a6)
   1662c:	0611                	addi	a2,a2,4
   1662e:	01d777b3          	and	a5,a4,t4
   16632:	011787bb          	addw	a5,a5,a7
   16636:	01d6f8b3          	and	a7,a3,t4
   1663a:	411787bb          	subw	a5,a5,a7
   1663e:	0106d69b          	srliw	a3,a3,0x10
   16642:	0107571b          	srliw	a4,a4,0x10
   16646:	9f15                	subw	a4,a4,a3
   16648:	4107d69b          	sraiw	a3,a5,0x10
   1664c:	9f35                	addw	a4,a4,a3
   1664e:	0107169b          	slliw	a3,a4,0x10
   16652:	01d7f7b3          	and	a5,a5,t4
   16656:	8fd5                	or	a5,a5,a3
   16658:	2781                	sext.w	a5,a5
   1665a:	0811                	addi	a6,a6,4
   1665c:	fef62e23          	sw	a5,-4(a2)
   16660:	0f11                	addi	t5,t5,4
   16662:	4107589b          	sraiw	a7,a4,0x10
   16666:	fbf86fe3          	bltu	a6,t6,16624 <__mdiff+0x7a>
   1666a:	408f86b3          	sub	a3,t6,s0
   1666e:	169d                	addi	a3,a3,-25
   16670:	0465                	addi	s0,s0,25
   16672:	8289                	srli	a3,a3,0x2
   16674:	4701                	li	a4,0
   16676:	008fe463          	bltu	t6,s0,1667e <__mdiff+0xd4>
   1667a:	00269713          	slli	a4,a3,0x2
   1667e:	972e                	add	a4,a4,a1
   16680:	4611                	li	a2,4
   16682:	008fe563          	bltu	t6,s0,1668c <__mdiff+0xe2>
   16686:	0685                	addi	a3,a3,1
   16688:	00269613          	slli	a2,a3,0x2
   1668c:	94b2                	add	s1,s1,a2
   1668e:	00c58eb3          	add	t4,a1,a2
   16692:	05c4f663          	bgeu	s1,t3,166de <__mdiff+0x134>
   16696:	65c1                	lui	a1,0x10
   16698:	8676                	mv	a2,t4
   1669a:	86a6                	mv	a3,s1
   1669c:	15fd                	addi	a1,a1,-1 # ffff <exit-0xe9>
   1669e:	4298                	lw	a4,0(a3)
   166a0:	0611                	addi	a2,a2,4
   166a2:	0691                	addi	a3,a3,4
   166a4:	00b777b3          	and	a5,a4,a1
   166a8:	011787bb          	addw	a5,a5,a7
   166ac:	4107d81b          	sraiw	a6,a5,0x10
   166b0:	0107571b          	srliw	a4,a4,0x10
   166b4:	0107073b          	addw	a4,a4,a6
   166b8:	0107181b          	slliw	a6,a4,0x10
   166bc:	8fed                	and	a5,a5,a1
   166be:	0107e7b3          	or	a5,a5,a6
   166c2:	2781                	sext.w	a5,a5
   166c4:	fef62e23          	sw	a5,-4(a2)
   166c8:	4107589b          	sraiw	a7,a4,0x10
   166cc:	fdc6e9e3          	bltu	a3,t3,1669e <__mdiff+0xf4>
   166d0:	1e7d                	addi	t3,t3,-1
   166d2:	409e0e33          	sub	t3,t3,s1
   166d6:	ffce7e13          	andi	t3,t3,-4
   166da:	01ce8733          	add	a4,t4,t3
   166de:	e791                	bnez	a5,166ea <__mdiff+0x140>
   166e0:	ffc72783          	lw	a5,-4(a4)
   166e4:	337d                	addiw	t1,t1,-1
   166e6:	1771                	addi	a4,a4,-4
   166e8:	dfe5                	beqz	a5,166e0 <__mdiff+0x136>
   166ea:	60e2                	ld	ra,24(sp)
   166ec:	6442                	ld	s0,16(sp)
   166ee:	00652a23          	sw	t1,20(a0)
   166f2:	64a2                	ld	s1,8(sp)
   166f4:	6902                	ld	s2,0(sp)
   166f6:	6105                	addi	sp,sp,32
   166f8:	8082                	ret
   166fa:	87a6                	mv	a5,s1
   166fc:	4905                	li	s2,1
   166fe:	84a2                	mv	s1,s0
   16700:	843e                	mv	s0,a5
   16702:	b5fd                	j	165f0 <__mdiff+0x46>
   16704:	fe094be3          	bltz	s2,166fa <__mdiff+0x150>
   16708:	4901                	li	s2,0
   1670a:	b5dd                	j	165f0 <__mdiff+0x46>
   1670c:	4581                	li	a1,0
   1670e:	f2cff0ef          	jal	ra,15e3a <_Balloc>
   16712:	c515                	beqz	a0,1673e <__mdiff+0x194>
   16714:	60e2                	ld	ra,24(sp)
   16716:	6442                	ld	s0,16(sp)
   16718:	4785                	li	a5,1
   1671a:	c95c                	sw	a5,20(a0)
   1671c:	00052c23          	sw	zero,24(a0)
   16720:	64a2                	ld	s1,8(sp)
   16722:	6902                	ld	s2,0(sp)
   16724:	6105                	addi	sp,sp,32
   16726:	8082                	ret
   16728:	66f5                	lui	a3,0x1d
   1672a:	6575                	lui	a0,0x1d
   1672c:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   16730:	4601                	li	a2,0
   16732:	24000593          	li	a1,576
   16736:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   1673a:	2b0030ef          	jal	ra,199ea <__assert_func>
   1673e:	66f5                	lui	a3,0x1d
   16740:	6575                	lui	a0,0x1d
   16742:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   16746:	4601                	li	a2,0
   16748:	23200593          	li	a1,562
   1674c:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   16750:	29a030ef          	jal	ra,199ea <__assert_func>

0000000000016754 <__ulp>:
   16754:	e20507d3          	fmv.x.d	a5,fa0
   16758:	7ff00737          	lui	a4,0x7ff00
   1675c:	4681                	li	a3,0
   1675e:	9381                	srli	a5,a5,0x20
   16760:	8ff9                	and	a5,a5,a4
   16762:	fcc00737          	lui	a4,0xfcc00
   16766:	9fb9                	addw	a5,a5,a4
   16768:	00f05963          	blez	a5,1677a <__ulp+0x26>
   1676c:	1682                	slli	a3,a3,0x20
   1676e:	9281                	srli	a3,a3,0x20
   16770:	1782                	slli	a5,a5,0x20
   16772:	8fd5                	or	a5,a5,a3
   16774:	f2078553          	fmv.d.x	fa0,a5
   16778:	8082                	ret
   1677a:	40f0073b          	negw	a4,a5
   1677e:	4147569b          	sraiw	a3,a4,0x14
   16782:	47cd                	li	a5,19
   16784:	00d7ce63          	blt	a5,a3,167a0 <__ulp+0x4c>
   16788:	000807b7          	lui	a5,0x80
   1678c:	40d7d7bb          	sraw	a5,a5,a3
   16790:	4681                	li	a3,0
   16792:	1682                	slli	a3,a3,0x20
   16794:	9281                	srli	a3,a3,0x20
   16796:	1782                	slli	a5,a5,0x20
   16798:	8fd5                	or	a5,a5,a3
   1679a:	f2078553          	fmv.d.x	fa0,a5
   1679e:	8082                	ret
   167a0:	fec6871b          	addiw	a4,a3,-20
   167a4:	47f9                	li	a5,30
   167a6:	4685                	li	a3,1
   167a8:	00e7c663          	blt	a5,a4,167b4 <__ulp+0x60>
   167ac:	800006b7          	lui	a3,0x80000
   167b0:	00e6d6bb          	srlw	a3,a3,a4
   167b4:	4781                	li	a5,0
   167b6:	1682                	slli	a3,a3,0x20
   167b8:	9281                	srli	a3,a3,0x20
   167ba:	1782                	slli	a5,a5,0x20
   167bc:	8fd5                	or	a5,a5,a3
   167be:	f2078553          	fmv.d.x	fa0,a5
   167c2:	8082                	ret

00000000000167c4 <__b2d>:
   167c4:	7179                	addi	sp,sp,-48
   167c6:	ec26                	sd	s1,24(sp)
   167c8:	4944                	lw	s1,20(a0)
   167ca:	f022                	sd	s0,32(sp)
   167cc:	01850413          	addi	s0,a0,24
   167d0:	048a                	slli	s1,s1,0x2
   167d2:	94a2                	add	s1,s1,s0
   167d4:	e84a                	sd	s2,16(sp)
   167d6:	ffc4a903          	lw	s2,-4(s1)
   167da:	e44e                	sd	s3,8(sp)
   167dc:	e052                	sd	s4,0(sp)
   167de:	854a                	mv	a0,s2
   167e0:	89ae                	mv	s3,a1
   167e2:	f406                	sd	ra,40(sp)
   167e4:	897ff0ef          	jal	ra,1607a <__hi0bits>
   167e8:	02000793          	li	a5,32
   167ec:	40a7873b          	subw	a4,a5,a0
   167f0:	00e9a023          	sw	a4,0(s3)
   167f4:	4729                	li	a4,10
   167f6:	ffc48a13          	addi	s4,s1,-4
   167fa:	06a75d63          	bge	a4,a0,16874 <__b2d+0xb0>
   167fe:	ff55061b          	addiw	a2,a0,-11
   16802:	05447263          	bgeu	s0,s4,16846 <__b2d+0x82>
   16806:	ff84a703          	lw	a4,-8(s1)
   1680a:	c221                	beqz	a2,1684a <__b2d+0x86>
   1680c:	40c786bb          	subw	a3,a5,a2
   16810:	00d757bb          	srlw	a5,a4,a3
   16814:	00c9193b          	sllw	s2,s2,a2
   16818:	00f96933          	or	s2,s2,a5
   1681c:	3ff007b7          	lui	a5,0x3ff00
   16820:	00f96933          	or	s2,s2,a5
   16824:	00c7163b          	sllw	a2,a4,a2
   16828:	ff848593          	addi	a1,s1,-8
   1682c:	02091793          	slli	a5,s2,0x20
   16830:	0006071b          	sext.w	a4,a2
   16834:	02b47163          	bgeu	s0,a1,16856 <__b2d+0x92>
   16838:	ff44a703          	lw	a4,-12(s1)
   1683c:	00d7573b          	srlw	a4,a4,a3
   16840:	8f51                	or	a4,a4,a2
   16842:	2701                	sext.w	a4,a4
   16844:	a809                	j	16856 <__b2d+0x92>
   16846:	4701                	li	a4,0
   16848:	ee21                	bnez	a2,168a0 <__b2d+0xdc>
   1684a:	3ff007b7          	lui	a5,0x3ff00
   1684e:	00f96933          	or	s2,s2,a5
   16852:	02091793          	slli	a5,s2,0x20
   16856:	70a2                	ld	ra,40(sp)
   16858:	7402                	ld	s0,32(sp)
   1685a:	9381                	srli	a5,a5,0x20
   1685c:	1702                	slli	a4,a4,0x20
   1685e:	9301                	srli	a4,a4,0x20
   16860:	1782                	slli	a5,a5,0x20
   16862:	8fd9                	or	a5,a5,a4
   16864:	64e2                	ld	s1,24(sp)
   16866:	6942                	ld	s2,16(sp)
   16868:	69a2                	ld	s3,8(sp)
   1686a:	6a02                	ld	s4,0(sp)
   1686c:	f2078553          	fmv.d.x	fa0,a5
   16870:	6145                	addi	sp,sp,48
   16872:	8082                	ret
   16874:	46ad                	li	a3,11
   16876:	9e89                	subw	a3,a3,a0
   16878:	3ff00737          	lui	a4,0x3ff00
   1687c:	00d957bb          	srlw	a5,s2,a3
   16880:	8fd9                	or	a5,a5,a4
   16882:	1782                	slli	a5,a5,0x20
   16884:	4701                	li	a4,0
   16886:	01447663          	bgeu	s0,s4,16892 <__b2d+0xce>
   1688a:	ff84a703          	lw	a4,-8(s1)
   1688e:	00d7573b          	srlw	a4,a4,a3
   16892:	2555                	addiw	a0,a0,21
   16894:	00a9193b          	sllw	s2,s2,a0
   16898:	01276733          	or	a4,a4,s2
   1689c:	2701                	sext.w	a4,a4
   1689e:	bf65                	j	16856 <__b2d+0x92>
   168a0:	3ff007b7          	lui	a5,0x3ff00
   168a4:	00c9193b          	sllw	s2,s2,a2
   168a8:	00f96933          	or	s2,s2,a5
   168ac:	02091793          	slli	a5,s2,0x20
   168b0:	4701                	li	a4,0
   168b2:	b755                	j	16856 <__b2d+0x92>

00000000000168b4 <__d2b>:
   168b4:	7139                	addi	sp,sp,-64
   168b6:	e852                	sd	s4,16(sp)
   168b8:	8a2e                	mv	s4,a1
   168ba:	4585                	li	a1,1
   168bc:	f822                	sd	s0,48(sp)
   168be:	f04a                	sd	s2,32(sp)
   168c0:	fc06                	sd	ra,56(sp)
   168c2:	f426                	sd	s1,40(sp)
   168c4:	ec4e                	sd	s3,24(sp)
   168c6:	e2050453          	fmv.x.d	s0,fa0
   168ca:	8932                	mv	s2,a2
   168cc:	d6eff0ef          	jal	ra,15e3a <_Balloc>
   168d0:	cd5d                	beqz	a0,1698e <__d2b+0xda>
   168d2:	42045793          	srai	a5,s0,0x20
   168d6:	0147d99b          	srliw	s3,a5,0x14
   168da:	7ff9f993          	andi	s3,s3,2047
   168de:	17b2                	slli	a5,a5,0x2c
   168e0:	84aa                	mv	s1,a0
   168e2:	93b1                	srli	a5,a5,0x2c
   168e4:	00098563          	beqz	s3,168ee <__d2b+0x3a>
   168e8:	00100737          	lui	a4,0x100
   168ec:	8fd9                	or	a5,a5,a4
   168ee:	c63e                	sw	a5,12(sp)
   168f0:	2401                	sext.w	s0,s0
   168f2:	e029                	bnez	s0,16934 <__d2b+0x80>
   168f4:	0068                	addi	a0,sp,12
   168f6:	fd2ff0ef          	jal	ra,160c8 <__lo0bits>
   168fa:	47b2                	lw	a5,12(sp)
   168fc:	4405                	li	s0,1
   168fe:	c8c0                	sw	s0,20(s1)
   16900:	cc9c                	sw	a5,24(s1)
   16902:	0205051b          	addiw	a0,a0,32
   16906:	06098263          	beqz	s3,1696a <__d2b+0xb6>
   1690a:	bcd9899b          	addiw	s3,s3,-1075
   1690e:	00a989bb          	addw	s3,s3,a0
   16912:	03500413          	li	s0,53
   16916:	013a2023          	sw	s3,0(s4)
   1691a:	40a4053b          	subw	a0,s0,a0
   1691e:	70e2                	ld	ra,56(sp)
   16920:	7442                	ld	s0,48(sp)
   16922:	00a92023          	sw	a0,0(s2)
   16926:	69e2                	ld	s3,24(sp)
   16928:	7902                	ld	s2,32(sp)
   1692a:	6a42                	ld	s4,16(sp)
   1692c:	8526                	mv	a0,s1
   1692e:	74a2                	ld	s1,40(sp)
   16930:	6121                	addi	sp,sp,64
   16932:	8082                	ret
   16934:	0028                	addi	a0,sp,8
   16936:	c422                	sw	s0,8(sp)
   16938:	f90ff0ef          	jal	ra,160c8 <__lo0bits>
   1693c:	47b2                	lw	a5,12(sp)
   1693e:	c529                	beqz	a0,16988 <__d2b+0xd4>
   16940:	46a2                	lw	a3,8(sp)
   16942:	02000713          	li	a4,32
   16946:	9f09                	subw	a4,a4,a0
   16948:	00e7973b          	sllw	a4,a5,a4
   1694c:	00a7d63b          	srlw	a2,a5,a0
   16950:	00e6e7b3          	or	a5,a3,a4
   16954:	cc9c                	sw	a5,24(s1)
   16956:	c632                	sw	a2,12(sp)
   16958:	0006079b          	sext.w	a5,a2
   1695c:	00f03433          	snez	s0,a5
   16960:	0405                	addi	s0,s0,1
   16962:	ccdc                	sw	a5,28(s1)
   16964:	c8c0                	sw	s0,20(s1)
   16966:	fa0992e3          	bnez	s3,1690a <__d2b+0x56>
   1696a:	bce5051b          	addiw	a0,a0,-1074
   1696e:	00241793          	slli	a5,s0,0x2
   16972:	00aa2023          	sw	a0,0(s4)
   16976:	97a6                	add	a5,a5,s1
   16978:	4bc8                	lw	a0,20(a5)
   1697a:	0054141b          	slliw	s0,s0,0x5
   1697e:	efcff0ef          	jal	ra,1607a <__hi0bits>
   16982:	40a4053b          	subw	a0,s0,a0
   16986:	bf61                	j	1691e <__d2b+0x6a>
   16988:	4722                	lw	a4,8(sp)
   1698a:	cc98                	sw	a4,24(s1)
   1698c:	bfc1                	j	1695c <__d2b+0xa8>
   1698e:	66f5                	lui	a3,0x1d
   16990:	6575                	lui	a0,0x1d
   16992:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   16996:	4601                	li	a2,0
   16998:	30a00593          	li	a1,778
   1699c:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   169a0:	04a030ef          	jal	ra,199ea <__assert_func>

00000000000169a4 <__ratio>:
   169a4:	7179                	addi	sp,sp,-48
   169a6:	ec26                	sd	s1,24(sp)
   169a8:	84ae                	mv	s1,a1
   169aa:	002c                	addi	a1,sp,8
   169ac:	f406                	sd	ra,40(sp)
   169ae:	f022                	sd	s0,32(sp)
   169b0:	e84a                	sd	s2,16(sp)
   169b2:	892a                	mv	s2,a0
   169b4:	e11ff0ef          	jal	ra,167c4 <__b2d>
   169b8:	006c                	addi	a1,sp,12
   169ba:	8526                	mv	a0,s1
   169bc:	e2050453          	fmv.x.d	s0,fa0
   169c0:	e05ff0ef          	jal	ra,167c4 <__b2d>
   169c4:	01492783          	lw	a5,20(s2)
   169c8:	48d0                	lw	a2,20(s1)
   169ca:	46b2                	lw	a3,12(sp)
   169cc:	4722                	lw	a4,8(sp)
   169ce:	9f91                	subw	a5,a5,a2
   169d0:	0057979b          	slliw	a5,a5,0x5
   169d4:	9f15                	subw	a4,a4,a3
   169d6:	00e786bb          	addw	a3,a5,a4
   169da:	87b6                	mv	a5,a3
   169dc:	e2050753          	fmv.x.d	a4,fa0
   169e0:	02d05963          	blez	a3,16a12 <__ratio+0x6e>
   169e4:	02045693          	srli	a3,s0,0x20
   169e8:	0147979b          	slliw	a5,a5,0x14
   169ec:	9fb5                	addw	a5,a5,a3
   169ee:	56fd                	li	a3,-1
   169f0:	9281                	srli	a3,a3,0x20
   169f2:	1782                	slli	a5,a5,0x20
   169f4:	8ee1                	and	a3,a3,s0
   169f6:	00f6e433          	or	s0,a3,a5
   169fa:	f20407d3          	fmv.d.x	fa5,s0
   169fe:	70a2                	ld	ra,40(sp)
   16a00:	7402                	ld	s0,32(sp)
   16a02:	f2070753          	fmv.d.x	fa4,a4
   16a06:	64e2                	ld	s1,24(sp)
   16a08:	6942                	ld	s2,16(sp)
   16a0a:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   16a0e:	6145                	addi	sp,sp,48
   16a10:	8082                	ret
   16a12:	02075693          	srli	a3,a4,0x20
   16a16:	0147979b          	slliw	a5,a5,0x14
   16a1a:	40f687bb          	subw	a5,a3,a5
   16a1e:	56fd                	li	a3,-1
   16a20:	9281                	srli	a3,a3,0x20
   16a22:	1782                	slli	a5,a5,0x20
   16a24:	8f75                	and	a4,a4,a3
   16a26:	8f5d                	or	a4,a4,a5
   16a28:	bfc9                	j	169fa <__ratio+0x56>

0000000000016a2a <_mprec_log10>:
   16a2a:	47dd                	li	a5,23
   16a2c:	00a7db63          	bge	a5,a0,16a42 <_mprec_log10+0x18>
   16a30:	6181b507          	fld	fa0,1560(gp) # 1f730 <mask+0x8>
   16a34:	6201b787          	fld	fa5,1568(gp) # 1f738 <mask+0x10>
   16a38:	357d                	addiw	a0,a0,-1
   16a3a:	12f57553          	fmul.d	fa0,fa0,fa5
   16a3e:	fd6d                	bnez	a0,16a38 <_mprec_log10+0xe>
   16a40:	8082                	ret
   16a42:	67f5                	lui	a5,0x1d
   16a44:	050e                	slli	a0,a0,0x3
   16a46:	d6078793          	addi	a5,a5,-672 # 1cd60 <__mprec_tens>
   16a4a:	97aa                	add	a5,a5,a0
   16a4c:	2388                	fld	fa0,0(a5)
   16a4e:	8082                	ret

0000000000016a50 <__copybits>:
   16a50:	4a54                	lw	a3,20(a2)
   16a52:	35fd                	addiw	a1,a1,-1
   16a54:	4055d59b          	sraiw	a1,a1,0x5
   16a58:	2585                	addiw	a1,a1,1
   16a5a:	01860793          	addi	a5,a2,24
   16a5e:	068a                	slli	a3,a3,0x2
   16a60:	058a                	slli	a1,a1,0x2
   16a62:	96be                	add	a3,a3,a5
   16a64:	95aa                	add	a1,a1,a0
   16a66:	02d7f163          	bgeu	a5,a3,16a88 <__copybits+0x38>
   16a6a:	872a                	mv	a4,a0
   16a6c:	0007a803          	lw	a6,0(a5)
   16a70:	0791                	addi	a5,a5,4
   16a72:	0711                	addi	a4,a4,4 # 100004 <__BSS_END__+0xe06ec>
   16a74:	ff072e23          	sw	a6,-4(a4)
   16a78:	fed7eae3          	bltu	a5,a3,16a6c <__copybits+0x1c>
   16a7c:	40c687b3          	sub	a5,a3,a2
   16a80:	179d                	addi	a5,a5,-25
   16a82:	9bf1                	andi	a5,a5,-4
   16a84:	0791                	addi	a5,a5,4
   16a86:	953e                	add	a0,a0,a5
   16a88:	00b57763          	bgeu	a0,a1,16a96 <__copybits+0x46>
   16a8c:	0511                	addi	a0,a0,4
   16a8e:	fe052e23          	sw	zero,-4(a0)
   16a92:	feb56de3          	bltu	a0,a1,16a8c <__copybits+0x3c>
   16a96:	8082                	ret

0000000000016a98 <__any_on>:
   16a98:	4958                	lw	a4,20(a0)
   16a9a:	4055d613          	srai	a2,a1,0x5
   16a9e:	01850693          	addi	a3,a0,24
   16aa2:	00c75d63          	bge	a4,a2,16abc <__any_on+0x24>
   16aa6:	070a                	slli	a4,a4,0x2
   16aa8:	00e687b3          	add	a5,a3,a4
   16aac:	02f6f863          	bgeu	a3,a5,16adc <__any_on+0x44>
   16ab0:	ffc7a703          	lw	a4,-4(a5)
   16ab4:	17f1                	addi	a5,a5,-4
   16ab6:	db7d                	beqz	a4,16aac <__any_on+0x14>
   16ab8:	4505                	li	a0,1
   16aba:	8082                	ret
   16abc:	00261793          	slli	a5,a2,0x2
   16ac0:	97b6                	add	a5,a5,a3
   16ac2:	fee655e3          	bge	a2,a4,16aac <__any_on+0x14>
   16ac6:	89fd                	andi	a1,a1,31
   16ac8:	d1f5                	beqz	a1,16aac <__any_on+0x14>
   16aca:	4390                	lw	a2,0(a5)
   16acc:	4505                	li	a0,1
   16ace:	00b6573b          	srlw	a4,a2,a1
   16ad2:	00b7173b          	sllw	a4,a4,a1
   16ad6:	fcc70be3          	beq	a4,a2,16aac <__any_on+0x14>
   16ada:	8082                	ret
   16adc:	4501                	li	a0,0
   16ade:	8082                	ret

0000000000016ae0 <_read_r>:
   16ae0:	1101                	addi	sp,sp,-32
   16ae2:	872e                	mv	a4,a1
   16ae4:	e822                	sd	s0,16(sp)
   16ae6:	e426                	sd	s1,8(sp)
   16ae8:	85b2                	mv	a1,a2
   16aea:	842a                	mv	s0,a0
   16aec:	8636                	mv	a2,a3
   16aee:	853a                	mv	a0,a4
   16af0:	ec06                	sd	ra,24(sp)
   16af2:	6801a423          	sw	zero,1672(gp) # 1f7a0 <errno>
   16af6:	608040ef          	jal	ra,1b0fe <_read>
   16afa:	57fd                	li	a5,-1
   16afc:	00f50763          	beq	a0,a5,16b0a <_read_r+0x2a>
   16b00:	60e2                	ld	ra,24(sp)
   16b02:	6442                	ld	s0,16(sp)
   16b04:	64a2                	ld	s1,8(sp)
   16b06:	6105                	addi	sp,sp,32
   16b08:	8082                	ret
   16b0a:	6881a783          	lw	a5,1672(gp) # 1f7a0 <errno>
   16b0e:	dbed                	beqz	a5,16b00 <_read_r+0x20>
   16b10:	60e2                	ld	ra,24(sp)
   16b12:	c01c                	sw	a5,0(s0)
   16b14:	6442                	ld	s0,16(sp)
   16b16:	64a2                	ld	s1,8(sp)
   16b18:	6105                	addi	sp,sp,32
   16b1a:	8082                	ret

0000000000016b1c <_realloc_r>:
   16b1c:	715d                	addi	sp,sp,-80
   16b1e:	f84a                	sd	s2,48(sp)
   16b20:	e486                	sd	ra,72(sp)
   16b22:	e0a2                	sd	s0,64(sp)
   16b24:	fc26                	sd	s1,56(sp)
   16b26:	f44e                	sd	s3,40(sp)
   16b28:	f052                	sd	s4,32(sp)
   16b2a:	ec56                	sd	s5,24(sp)
   16b2c:	e85a                	sd	s6,16(sp)
   16b2e:	e45e                	sd	s7,8(sp)
   16b30:	e062                	sd	s8,0(sp)
   16b32:	8932                	mv	s2,a2
   16b34:	14058863          	beqz	a1,16c84 <_realloc_r+0x168>
   16b38:	842e                	mv	s0,a1
   16b3a:	8a2a                	mv	s4,a0
   16b3c:	9d5fa0ef          	jal	ra,11510 <__malloc_lock>
   16b40:	ff843783          	ld	a5,-8(s0)
   16b44:	01790493          	addi	s1,s2,23
   16b48:	02e00713          	li	a4,46
   16b4c:	ff040a93          	addi	s5,s0,-16
   16b50:	ffc7f993          	andi	s3,a5,-4
   16b54:	0a977d63          	bgeu	a4,s1,16c0e <_realloc_r+0xf2>
   16b58:	80000737          	lui	a4,0x80000
   16b5c:	98c1                	andi	s1,s1,-16
   16b5e:	fff74713          	not	a4,a4
   16b62:	0a976a63          	bltu	a4,s1,16c16 <_realloc_r+0xfa>
   16b66:	0b24e863          	bltu	s1,s2,16c16 <_realloc_r+0xfa>
   16b6a:	0c99dc63          	bge	s3,s1,16c42 <_realloc_r+0x126>
   16b6e:	0001f737          	lui	a4,0x1f
   16b72:	d6070c13          	addi	s8,a4,-672 # 1ed60 <__malloc_av_>
   16b76:	010c3603          	ld	a2,16(s8)
   16b7a:	013a86b3          	add	a3,s5,s3
   16b7e:	6698                	ld	a4,8(a3)
   16b80:	14d60163          	beq	a2,a3,16cc2 <_realloc_r+0x1a6>
   16b84:	ffe77613          	andi	a2,a4,-2
   16b88:	9636                	add	a2,a2,a3
   16b8a:	6610                	ld	a2,8(a2)
   16b8c:	8a05                	andi	a2,a2,1
   16b8e:	e26d                	bnez	a2,16c70 <_realloc_r+0x154>
   16b90:	9b71                	andi	a4,a4,-4
   16b92:	00e98633          	add	a2,s3,a4
   16b96:	0a965163          	bge	a2,s1,16c38 <_realloc_r+0x11c>
   16b9a:	8b85                	andi	a5,a5,1
   16b9c:	e38d                	bnez	a5,16bbe <_realloc_r+0xa2>
   16b9e:	ff043b83          	ld	s7,-16(s0)
   16ba2:	417a8bb3          	sub	s7,s5,s7
   16ba6:	008bb783          	ld	a5,8(s7)
   16baa:	9bf1                	andi	a5,a5,-4
   16bac:	973e                	add	a4,a4,a5
   16bae:	01370b33          	add	s6,a4,s3
   16bb2:	269b5463          	bge	s6,s1,16e1a <_realloc_r+0x2fe>
   16bb6:	00f98b33          	add	s6,s3,a5
   16bba:	1e9b5963          	bge	s6,s1,16dac <_realloc_r+0x290>
   16bbe:	85ca                	mv	a1,s2
   16bc0:	8552                	mv	a0,s4
   16bc2:	916fa0ef          	jal	ra,10cd8 <_malloc_r>
   16bc6:	892a                	mv	s2,a0
   16bc8:	cd1d                	beqz	a0,16c06 <_realloc_r+0xea>
   16bca:	ff843783          	ld	a5,-8(s0)
   16bce:	ff050713          	addi	a4,a0,-16
   16bd2:	9bf9                	andi	a5,a5,-2
   16bd4:	97d6                	add	a5,a5,s5
   16bd6:	1ce78663          	beq	a5,a4,16da2 <_realloc_r+0x286>
   16bda:	ff898613          	addi	a2,s3,-8
   16bde:	04800793          	li	a5,72
   16be2:	22c7e863          	bltu	a5,a2,16e12 <_realloc_r+0x2f6>
   16be6:	02700713          	li	a4,39
   16bea:	16c76b63          	bltu	a4,a2,16d60 <_realloc_r+0x244>
   16bee:	87aa                	mv	a5,a0
   16bf0:	8722                	mv	a4,s0
   16bf2:	6314                	ld	a3,0(a4)
   16bf4:	e394                	sd	a3,0(a5)
   16bf6:	6714                	ld	a3,8(a4)
   16bf8:	e794                	sd	a3,8(a5)
   16bfa:	6b18                	ld	a4,16(a4)
   16bfc:	eb98                	sd	a4,16(a5)
   16bfe:	85a2                	mv	a1,s0
   16c00:	8552                	mv	a0,s4
   16c02:	d0ff90ef          	jal	ra,10910 <_free_r>
   16c06:	8552                	mv	a0,s4
   16c08:	90bfa0ef          	jal	ra,11512 <__malloc_unlock>
   16c0c:	a809                	j	16c1e <_realloc_r+0x102>
   16c0e:	02000493          	li	s1,32
   16c12:	f524fce3          	bgeu	s1,s2,16b6a <_realloc_r+0x4e>
   16c16:	47b1                	li	a5,12
   16c18:	00fa2023          	sw	a5,0(s4)
   16c1c:	4901                	li	s2,0
   16c1e:	60a6                	ld	ra,72(sp)
   16c20:	6406                	ld	s0,64(sp)
   16c22:	74e2                	ld	s1,56(sp)
   16c24:	79a2                	ld	s3,40(sp)
   16c26:	7a02                	ld	s4,32(sp)
   16c28:	6ae2                	ld	s5,24(sp)
   16c2a:	6b42                	ld	s6,16(sp)
   16c2c:	6ba2                	ld	s7,8(sp)
   16c2e:	6c02                	ld	s8,0(sp)
   16c30:	854a                	mv	a0,s2
   16c32:	7942                	ld	s2,48(sp)
   16c34:	6161                	addi	sp,sp,80
   16c36:	8082                	ret
   16c38:	6e9c                	ld	a5,24(a3)
   16c3a:	6a98                	ld	a4,16(a3)
   16c3c:	89b2                	mv	s3,a2
   16c3e:	ef1c                	sd	a5,24(a4)
   16c40:	eb98                	sd	a4,16(a5)
   16c42:	008ab783          	ld	a5,8(s5)
   16c46:	409986b3          	sub	a3,s3,s1
   16c4a:	467d                	li	a2,31
   16c4c:	8b85                	andi	a5,a5,1
   16c4e:	013a8733          	add	a4,s5,s3
   16c52:	04d66763          	bltu	a2,a3,16ca0 <_realloc_r+0x184>
   16c56:	00f9e7b3          	or	a5,s3,a5
   16c5a:	00fab423          	sd	a5,8(s5)
   16c5e:	671c                	ld	a5,8(a4)
   16c60:	0017e793          	ori	a5,a5,1
   16c64:	e71c                	sd	a5,8(a4)
   16c66:	8552                	mv	a0,s4
   16c68:	8abfa0ef          	jal	ra,11512 <__malloc_unlock>
   16c6c:	8922                	mv	s2,s0
   16c6e:	bf45                	j	16c1e <_realloc_r+0x102>
   16c70:	8b85                	andi	a5,a5,1
   16c72:	f7b1                	bnez	a5,16bbe <_realloc_r+0xa2>
   16c74:	ff043b83          	ld	s7,-16(s0)
   16c78:	417a8bb3          	sub	s7,s5,s7
   16c7c:	008bb783          	ld	a5,8(s7)
   16c80:	9bf1                	andi	a5,a5,-4
   16c82:	bf15                	j	16bb6 <_realloc_r+0x9a>
   16c84:	6406                	ld	s0,64(sp)
   16c86:	60a6                	ld	ra,72(sp)
   16c88:	74e2                	ld	s1,56(sp)
   16c8a:	7942                	ld	s2,48(sp)
   16c8c:	79a2                	ld	s3,40(sp)
   16c8e:	7a02                	ld	s4,32(sp)
   16c90:	6ae2                	ld	s5,24(sp)
   16c92:	6b42                	ld	s6,16(sp)
   16c94:	6ba2                	ld	s7,8(sp)
   16c96:	6c02                	ld	s8,0(sp)
   16c98:	85b2                	mv	a1,a2
   16c9a:	6161                	addi	sp,sp,80
   16c9c:	83cfa06f          	j	10cd8 <_malloc_r>
   16ca0:	8fc5                	or	a5,a5,s1
   16ca2:	00fab423          	sd	a5,8(s5)
   16ca6:	009a85b3          	add	a1,s5,s1
   16caa:	0016e693          	ori	a3,a3,1
   16cae:	e594                	sd	a3,8(a1)
   16cb0:	671c                	ld	a5,8(a4)
   16cb2:	05c1                	addi	a1,a1,16
   16cb4:	8552                	mv	a0,s4
   16cb6:	0017e793          	ori	a5,a5,1
   16cba:	e71c                	sd	a5,8(a4)
   16cbc:	c55f90ef          	jal	ra,10910 <_free_r>
   16cc0:	b75d                	j	16c66 <_realloc_r+0x14a>
   16cc2:	9b71                	andi	a4,a4,-4
   16cc4:	00e986b3          	add	a3,s3,a4
   16cc8:	02048613          	addi	a2,s1,32
   16ccc:	0ac6d763          	bge	a3,a2,16d7a <_realloc_r+0x25e>
   16cd0:	8b85                	andi	a5,a5,1
   16cd2:	ee0796e3          	bnez	a5,16bbe <_realloc_r+0xa2>
   16cd6:	ff043b83          	ld	s7,-16(s0)
   16cda:	417a8bb3          	sub	s7,s5,s7
   16cde:	008bb783          	ld	a5,8(s7)
   16ce2:	9bf1                	andi	a5,a5,-4
   16ce4:	973e                	add	a4,a4,a5
   16ce6:	01370b33          	add	s6,a4,s3
   16cea:	eccb46e3          	blt	s6,a2,16bb6 <_realloc_r+0x9a>
   16cee:	018bb783          	ld	a5,24(s7)
   16cf2:	010bb703          	ld	a4,16(s7)
   16cf6:	ff898613          	addi	a2,s3,-8
   16cfa:	04800693          	li	a3,72
   16cfe:	ef1c                	sd	a5,24(a4)
   16d00:	eb98                	sd	a4,16(a5)
   16d02:	010b8913          	addi	s2,s7,16
   16d06:	1cc6e163          	bltu	a3,a2,16ec8 <_realloc_r+0x3ac>
   16d0a:	02700713          	li	a4,39
   16d0e:	87ca                	mv	a5,s2
   16d10:	00c77f63          	bgeu	a4,a2,16d2e <_realloc_r+0x212>
   16d14:	6018                	ld	a4,0(s0)
   16d16:	03700793          	li	a5,55
   16d1a:	00ebb823          	sd	a4,16(s7)
   16d1e:	6418                	ld	a4,8(s0)
   16d20:	00ebbc23          	sd	a4,24(s7)
   16d24:	1ac7e763          	bltu	a5,a2,16ed2 <_realloc_r+0x3b6>
   16d28:	0441                	addi	s0,s0,16
   16d2a:	020b8793          	addi	a5,s7,32
   16d2e:	6018                	ld	a4,0(s0)
   16d30:	e398                	sd	a4,0(a5)
   16d32:	6418                	ld	a4,8(s0)
   16d34:	e798                	sd	a4,8(a5)
   16d36:	6818                	ld	a4,16(s0)
   16d38:	eb98                	sd	a4,16(a5)
   16d3a:	009b8733          	add	a4,s7,s1
   16d3e:	409b07b3          	sub	a5,s6,s1
   16d42:	00ec3823          	sd	a4,16(s8)
   16d46:	0017e793          	ori	a5,a5,1
   16d4a:	e71c                	sd	a5,8(a4)
   16d4c:	008bb783          	ld	a5,8(s7)
   16d50:	8552                	mv	a0,s4
   16d52:	8b85                	andi	a5,a5,1
   16d54:	8fc5                	or	a5,a5,s1
   16d56:	00fbb423          	sd	a5,8(s7)
   16d5a:	fb8fa0ef          	jal	ra,11512 <__malloc_unlock>
   16d5e:	b5c1                	j	16c1e <_realloc_r+0x102>
   16d60:	6014                	ld	a3,0(s0)
   16d62:	03700713          	li	a4,55
   16d66:	e114                	sd	a3,0(a0)
   16d68:	6414                	ld	a3,8(s0)
   16d6a:	e514                	sd	a3,8(a0)
   16d6c:	12c76663          	bltu	a4,a2,16e98 <_realloc_r+0x37c>
   16d70:	01040713          	addi	a4,s0,16
   16d74:	01050793          	addi	a5,a0,16
   16d78:	bdad                	j	16bf2 <_realloc_r+0xd6>
   16d7a:	9aa6                	add	s5,s5,s1
   16d7c:	409687b3          	sub	a5,a3,s1
   16d80:	015c3823          	sd	s5,16(s8)
   16d84:	0017e793          	ori	a5,a5,1
   16d88:	00fab423          	sd	a5,8(s5)
   16d8c:	ff843783          	ld	a5,-8(s0)
   16d90:	8552                	mv	a0,s4
   16d92:	8922                	mv	s2,s0
   16d94:	8b85                	andi	a5,a5,1
   16d96:	8fc5                	or	a5,a5,s1
   16d98:	fef43c23          	sd	a5,-8(s0)
   16d9c:	f76fa0ef          	jal	ra,11512 <__malloc_unlock>
   16da0:	bdbd                	j	16c1e <_realloc_r+0x102>
   16da2:	ff853783          	ld	a5,-8(a0)
   16da6:	9bf1                	andi	a5,a5,-4
   16da8:	99be                	add	s3,s3,a5
   16daa:	bd61                	j	16c42 <_realloc_r+0x126>
   16dac:	018bb783          	ld	a5,24(s7)
   16db0:	010bb703          	ld	a4,16(s7)
   16db4:	ff898613          	addi	a2,s3,-8
   16db8:	04800693          	li	a3,72
   16dbc:	ef1c                	sd	a5,24(a4)
   16dbe:	eb98                	sd	a4,16(a5)
   16dc0:	010b8913          	addi	s2,s7,16
   16dc4:	0cc6e263          	bltu	a3,a2,16e88 <_realloc_r+0x36c>
   16dc8:	02700713          	li	a4,39
   16dcc:	87ca                	mv	a5,s2
   16dce:	02c77863          	bgeu	a4,a2,16dfe <_realloc_r+0x2e2>
   16dd2:	6018                	ld	a4,0(s0)
   16dd4:	03700793          	li	a5,55
   16dd8:	00ebb823          	sd	a4,16(s7)
   16ddc:	6418                	ld	a4,8(s0)
   16dde:	00ebbc23          	sd	a4,24(s7)
   16de2:	0cc7f663          	bgeu	a5,a2,16eae <_realloc_r+0x392>
   16de6:	681c                	ld	a5,16(s0)
   16de8:	02fbb023          	sd	a5,32(s7)
   16dec:	6c1c                	ld	a5,24(s0)
   16dee:	02fbb423          	sd	a5,40(s7)
   16df2:	06d60f63          	beq	a2,a3,16e70 <_realloc_r+0x354>
   16df6:	02040413          	addi	s0,s0,32
   16dfa:	030b8793          	addi	a5,s7,48
   16dfe:	6018                	ld	a4,0(s0)
   16e00:	89da                	mv	s3,s6
   16e02:	8ade                	mv	s5,s7
   16e04:	e398                	sd	a4,0(a5)
   16e06:	6418                	ld	a4,8(s0)
   16e08:	e798                	sd	a4,8(a5)
   16e0a:	6818                	ld	a4,16(s0)
   16e0c:	844a                	mv	s0,s2
   16e0e:	eb98                	sd	a4,16(a5)
   16e10:	bd0d                	j	16c42 <_realloc_r+0x126>
   16e12:	85a2                	mv	a1,s0
   16e14:	f51fe0ef          	jal	ra,15d64 <memmove>
   16e18:	b3dd                	j	16bfe <_realloc_r+0xe2>
   16e1a:	6e9c                	ld	a5,24(a3)
   16e1c:	6a98                	ld	a4,16(a3)
   16e1e:	ff898613          	addi	a2,s3,-8
   16e22:	04800693          	li	a3,72
   16e26:	ef1c                	sd	a5,24(a4)
   16e28:	eb98                	sd	a4,16(a5)
   16e2a:	010bb703          	ld	a4,16(s7)
   16e2e:	018bb783          	ld	a5,24(s7)
   16e32:	010b8913          	addi	s2,s7,16
   16e36:	ef1c                	sd	a5,24(a4)
   16e38:	eb98                	sd	a4,16(a5)
   16e3a:	04c6e763          	bltu	a3,a2,16e88 <_realloc_r+0x36c>
   16e3e:	02700713          	li	a4,39
   16e42:	87ca                	mv	a5,s2
   16e44:	fac77de3          	bgeu	a4,a2,16dfe <_realloc_r+0x2e2>
   16e48:	6018                	ld	a4,0(s0)
   16e4a:	03700793          	li	a5,55
   16e4e:	00ebb823          	sd	a4,16(s7)
   16e52:	6418                	ld	a4,8(s0)
   16e54:	00ebbc23          	sd	a4,24(s7)
   16e58:	04c7fb63          	bgeu	a5,a2,16eae <_realloc_r+0x392>
   16e5c:	6818                	ld	a4,16(s0)
   16e5e:	04800793          	li	a5,72
   16e62:	02ebb023          	sd	a4,32(s7)
   16e66:	6c18                	ld	a4,24(s0)
   16e68:	02ebb423          	sd	a4,40(s7)
   16e6c:	f8f615e3          	bne	a2,a5,16df6 <_realloc_r+0x2da>
   16e70:	7018                	ld	a4,32(s0)
   16e72:	040b8793          	addi	a5,s7,64
   16e76:	03040413          	addi	s0,s0,48
   16e7a:	02ebb823          	sd	a4,48(s7)
   16e7e:	ff843703          	ld	a4,-8(s0)
   16e82:	02ebbc23          	sd	a4,56(s7)
   16e86:	bfa5                	j	16dfe <_realloc_r+0x2e2>
   16e88:	85a2                	mv	a1,s0
   16e8a:	854a                	mv	a0,s2
   16e8c:	ed9fe0ef          	jal	ra,15d64 <memmove>
   16e90:	844a                	mv	s0,s2
   16e92:	89da                	mv	s3,s6
   16e94:	8ade                	mv	s5,s7
   16e96:	b375                	j	16c42 <_realloc_r+0x126>
   16e98:	6818                	ld	a4,16(s0)
   16e9a:	e918                	sd	a4,16(a0)
   16e9c:	6c18                	ld	a4,24(s0)
   16e9e:	ed18                	sd	a4,24(a0)
   16ea0:	00f60b63          	beq	a2,a5,16eb6 <_realloc_r+0x39a>
   16ea4:	02040713          	addi	a4,s0,32
   16ea8:	02050793          	addi	a5,a0,32
   16eac:	b399                	j	16bf2 <_realloc_r+0xd6>
   16eae:	0441                	addi	s0,s0,16
   16eb0:	020b8793          	addi	a5,s7,32
   16eb4:	b7a9                	j	16dfe <_realloc_r+0x2e2>
   16eb6:	7014                	ld	a3,32(s0)
   16eb8:	03040713          	addi	a4,s0,48
   16ebc:	03050793          	addi	a5,a0,48
   16ec0:	f114                	sd	a3,32(a0)
   16ec2:	7414                	ld	a3,40(s0)
   16ec4:	f514                	sd	a3,40(a0)
   16ec6:	b335                	j	16bf2 <_realloc_r+0xd6>
   16ec8:	85a2                	mv	a1,s0
   16eca:	854a                	mv	a0,s2
   16ecc:	e99fe0ef          	jal	ra,15d64 <memmove>
   16ed0:	b5ad                	j	16d3a <_realloc_r+0x21e>
   16ed2:	681c                	ld	a5,16(s0)
   16ed4:	02fbb023          	sd	a5,32(s7)
   16ed8:	6c1c                	ld	a5,24(s0)
   16eda:	02fbb423          	sd	a5,40(s7)
   16ede:	00d60763          	beq	a2,a3,16eec <_realloc_r+0x3d0>
   16ee2:	02040413          	addi	s0,s0,32
   16ee6:	030b8793          	addi	a5,s7,48
   16eea:	b591                	j	16d2e <_realloc_r+0x212>
   16eec:	7018                	ld	a4,32(s0)
   16eee:	040b8793          	addi	a5,s7,64
   16ef2:	03040413          	addi	s0,s0,48
   16ef6:	02ebb823          	sd	a4,48(s7)
   16efa:	ff843703          	ld	a4,-8(s0)
   16efe:	02ebbc23          	sd	a4,56(s7)
   16f02:	b535                	j	16d2e <_realloc_r+0x212>

0000000000016f04 <cleanup_glue>:
   16f04:	7179                	addi	sp,sp,-48
   16f06:	e84a                	sd	s2,16(sp)
   16f08:	0005b903          	ld	s2,0(a1)
   16f0c:	f022                	sd	s0,32(sp)
   16f0e:	ec26                	sd	s1,24(sp)
   16f10:	f406                	sd	ra,40(sp)
   16f12:	e44e                	sd	s3,8(sp)
   16f14:	e052                	sd	s4,0(sp)
   16f16:	842e                	mv	s0,a1
   16f18:	84aa                	mv	s1,a0
   16f1a:	02090b63          	beqz	s2,16f50 <cleanup_glue+0x4c>
   16f1e:	00093983          	ld	s3,0(s2)
   16f22:	02098363          	beqz	s3,16f48 <cleanup_glue+0x44>
   16f26:	0009ba03          	ld	s4,0(s3)
   16f2a:	000a0b63          	beqz	s4,16f40 <cleanup_glue+0x3c>
   16f2e:	000a3583          	ld	a1,0(s4)
   16f32:	c199                	beqz	a1,16f38 <cleanup_glue+0x34>
   16f34:	fd1ff0ef          	jal	ra,16f04 <cleanup_glue>
   16f38:	85d2                	mv	a1,s4
   16f3a:	8526                	mv	a0,s1
   16f3c:	9d5f90ef          	jal	ra,10910 <_free_r>
   16f40:	85ce                	mv	a1,s3
   16f42:	8526                	mv	a0,s1
   16f44:	9cdf90ef          	jal	ra,10910 <_free_r>
   16f48:	85ca                	mv	a1,s2
   16f4a:	8526                	mv	a0,s1
   16f4c:	9c5f90ef          	jal	ra,10910 <_free_r>
   16f50:	85a2                	mv	a1,s0
   16f52:	7402                	ld	s0,32(sp)
   16f54:	70a2                	ld	ra,40(sp)
   16f56:	6942                	ld	s2,16(sp)
   16f58:	69a2                	ld	s3,8(sp)
   16f5a:	6a02                	ld	s4,0(sp)
   16f5c:	8526                	mv	a0,s1
   16f5e:	64e2                	ld	s1,24(sp)
   16f60:	6145                	addi	sp,sp,48
   16f62:	9aff906f          	j	10910 <_free_r>

0000000000016f66 <_reclaim_reent>:
   16f66:	6481b783          	ld	a5,1608(gp) # 1f760 <_impure_ptr>
   16f6a:	0aa78563          	beq	a5,a0,17014 <_reclaim_reent+0xae>
   16f6e:	7d2c                	ld	a1,120(a0)
   16f70:	7179                	addi	sp,sp,-48
   16f72:	ec26                	sd	s1,24(sp)
   16f74:	f406                	sd	ra,40(sp)
   16f76:	f022                	sd	s0,32(sp)
   16f78:	e84a                	sd	s2,16(sp)
   16f7a:	e44e                	sd	s3,8(sp)
   16f7c:	84aa                	mv	s1,a0
   16f7e:	c58d                	beqz	a1,16fa8 <_reclaim_reent+0x42>
   16f80:	4901                	li	s2,0
   16f82:	20000993          	li	s3,512
   16f86:	012587b3          	add	a5,a1,s2
   16f8a:	6380                	ld	s0,0(a5)
   16f8c:	c801                	beqz	s0,16f9c <_reclaim_reent+0x36>
   16f8e:	85a2                	mv	a1,s0
   16f90:	6000                	ld	s0,0(s0)
   16f92:	8526                	mv	a0,s1
   16f94:	97df90ef          	jal	ra,10910 <_free_r>
   16f98:	f87d                	bnez	s0,16f8e <_reclaim_reent+0x28>
   16f9a:	7cac                	ld	a1,120(s1)
   16f9c:	0921                	addi	s2,s2,8
   16f9e:	ff3914e3          	bne	s2,s3,16f86 <_reclaim_reent+0x20>
   16fa2:	8526                	mv	a0,s1
   16fa4:	96df90ef          	jal	ra,10910 <_free_r>
   16fa8:	70ac                	ld	a1,96(s1)
   16faa:	c581                	beqz	a1,16fb2 <_reclaim_reent+0x4c>
   16fac:	8526                	mv	a0,s1
   16fae:	963f90ef          	jal	ra,10910 <_free_r>
   16fb2:	1f84b403          	ld	s0,504(s1)
   16fb6:	cc01                	beqz	s0,16fce <_reclaim_reent+0x68>
   16fb8:	20048913          	addi	s2,s1,512
   16fbc:	01240963          	beq	s0,s2,16fce <_reclaim_reent+0x68>
   16fc0:	85a2                	mv	a1,s0
   16fc2:	6000                	ld	s0,0(s0)
   16fc4:	8526                	mv	a0,s1
   16fc6:	94bf90ef          	jal	ra,10910 <_free_r>
   16fca:	fe891be3          	bne	s2,s0,16fc0 <_reclaim_reent+0x5a>
   16fce:	64cc                	ld	a1,136(s1)
   16fd0:	c581                	beqz	a1,16fd8 <_reclaim_reent+0x72>
   16fd2:	8526                	mv	a0,s1
   16fd4:	93df90ef          	jal	ra,10910 <_free_r>
   16fd8:	48bc                	lw	a5,80(s1)
   16fda:	c795                	beqz	a5,17006 <_reclaim_reent+0xa0>
   16fdc:	6cbc                	ld	a5,88(s1)
   16fde:	8526                	mv	a0,s1
   16fe0:	9782                	jalr	a5
   16fe2:	5204b403          	ld	s0,1312(s1)
   16fe6:	c005                	beqz	s0,17006 <_reclaim_reent+0xa0>
   16fe8:	600c                	ld	a1,0(s0)
   16fea:	c581                	beqz	a1,16ff2 <_reclaim_reent+0x8c>
   16fec:	8526                	mv	a0,s1
   16fee:	f17ff0ef          	jal	ra,16f04 <cleanup_glue>
   16ff2:	85a2                	mv	a1,s0
   16ff4:	7402                	ld	s0,32(sp)
   16ff6:	70a2                	ld	ra,40(sp)
   16ff8:	6942                	ld	s2,16(sp)
   16ffa:	69a2                	ld	s3,8(sp)
   16ffc:	8526                	mv	a0,s1
   16ffe:	64e2                	ld	s1,24(sp)
   17000:	6145                	addi	sp,sp,48
   17002:	90ff906f          	j	10910 <_free_r>
   17006:	70a2                	ld	ra,40(sp)
   17008:	7402                	ld	s0,32(sp)
   1700a:	64e2                	ld	s1,24(sp)
   1700c:	6942                	ld	s2,16(sp)
   1700e:	69a2                	ld	s3,8(sp)
   17010:	6145                	addi	sp,sp,48
   17012:	8082                	ret
   17014:	8082                	ret

0000000000017016 <frexp>:
   17016:	e20507d3          	fmv.x.d	a5,fa0
   1701a:	80000637          	lui	a2,0x80000
   1701e:	fff64613          	not	a2,a2
   17022:	4207d593          	srai	a1,a5,0x20
   17026:	00c5f733          	and	a4,a1,a2
   1702a:	00052023          	sw	zero,0(a0)
   1702e:	7ff00837          	lui	a6,0x7ff00
   17032:	86ae                	mv	a3,a1
   17034:	05075c63          	bge	a4,a6,1708c <frexp+0x76>
   17038:	00f76833          	or	a6,a4,a5
   1703c:	2801                	sext.w	a6,a6
   1703e:	04080763          	beqz	a6,1708c <frexp+0x76>
   17042:	7ff00837          	lui	a6,0x7ff00
   17046:	0105f5b3          	and	a1,a1,a6
   1704a:	4801                	li	a6,0
   1704c:	ed89                	bnez	a1,17066 <frexp+0x50>
   1704e:	6281b787          	fld	fa5,1576(gp) # 1f740 <mask+0x18>
   17052:	fca00813          	li	a6,-54
   17056:	12f577d3          	fmul.d	fa5,fa0,fa5
   1705a:	e20787d3          	fmv.x.d	a5,fa5
   1705e:	4207d693          	srai	a3,a5,0x20
   17062:	00c6f733          	and	a4,a3,a2
   17066:	80100637          	lui	a2,0x80100
   1706a:	167d                	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800e06e7>
   1706c:	8ef1                	and	a3,a3,a2
   1706e:	3fe00637          	lui	a2,0x3fe00
   17072:	8ed1                	or	a3,a3,a2
   17074:	4147571b          	sraiw	a4,a4,0x14
   17078:	567d                	li	a2,-1
   1707a:	c027071b          	addiw	a4,a4,-1022
   1707e:	9201                	srli	a2,a2,0x20
   17080:	0107073b          	addw	a4,a4,a6
   17084:	1682                	slli	a3,a3,0x20
   17086:	8ff1                	and	a5,a5,a2
   17088:	c118                	sw	a4,0(a0)
   1708a:	8fd5                	or	a5,a5,a3
   1708c:	f2078553          	fmv.d.x	fa0,a5
   17090:	8082                	ret

0000000000017092 <_sprintf_r>:
   17092:	7111                	addi	sp,sp,-256
   17094:	0d810e93          	addi	t4,sp,216
   17098:	f5be                	sd	a5,232(sp)
   1709a:	80000337          	lui	t1,0x80000
   1709e:	77c1                	lui	a5,0xffff0
   170a0:	8e2e                	mv	t3,a1
   170a2:	fff34313          	not	t1,t1
   170a6:	edb6                	sd	a3,216(sp)
   170a8:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd08f0>
   170ac:	080c                	addi	a1,sp,16
   170ae:	86f6                	mv	a3,t4
   170b0:	e586                	sd	ra,200(sp)
   170b2:	d03e                	sw	a5,32(sp)
   170b4:	f1ba                	sd	a4,224(sp)
   170b6:	f9c2                	sd	a6,240(sp)
   170b8:	fdc6                	sd	a7,248(sp)
   170ba:	e872                	sd	t3,16(sp)
   170bc:	f472                	sd	t3,40(sp)
   170be:	d81a                	sw	t1,48(sp)
   170c0:	ce1a                	sw	t1,28(sp)
   170c2:	e476                	sd	t4,8(sp)
   170c4:	0cc000ef          	jal	ra,17190 <_svfprintf_r>
   170c8:	67c2                	ld	a5,16(sp)
   170ca:	00078023          	sb	zero,0(a5)
   170ce:	60ae                	ld	ra,200(sp)
   170d0:	6111                	addi	sp,sp,256
   170d2:	8082                	ret

00000000000170d4 <sprintf>:
   170d4:	8e2a                	mv	t3,a0
   170d6:	7111                	addi	sp,sp,-256
   170d8:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   170dc:	0d010e93          	addi	t4,sp,208
   170e0:	f5be                	sd	a5,232(sp)
   170e2:	80000337          	lui	t1,0x80000
   170e6:	77c1                	lui	a5,0xffff0
   170e8:	fff34313          	not	t1,t1
   170ec:	e9b2                	sd	a2,208(sp)
   170ee:	edb6                	sd	a3,216(sp)
   170f0:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd08f0>
   170f4:	862e                	mv	a2,a1
   170f6:	86f6                	mv	a3,t4
   170f8:	080c                	addi	a1,sp,16
   170fa:	e586                	sd	ra,200(sp)
   170fc:	d03e                	sw	a5,32(sp)
   170fe:	f1ba                	sd	a4,224(sp)
   17100:	f9c2                	sd	a6,240(sp)
   17102:	fdc6                	sd	a7,248(sp)
   17104:	e872                	sd	t3,16(sp)
   17106:	f472                	sd	t3,40(sp)
   17108:	d81a                	sw	t1,48(sp)
   1710a:	ce1a                	sw	t1,28(sp)
   1710c:	e476                	sd	t4,8(sp)
   1710e:	082000ef          	jal	ra,17190 <_svfprintf_r>
   17112:	67c2                	ld	a5,16(sp)
   17114:	00078023          	sb	zero,0(a5)
   17118:	60ae                	ld	ra,200(sp)
   1711a:	6111                	addi	sp,sp,256
   1711c:	8082                	ret

000000000001711e <strncpy>:
   1711e:	00b567b3          	or	a5,a0,a1
   17122:	8b9d                	andi	a5,a5,7
   17124:	872a                	mv	a4,a0
   17126:	e7b1                	bnez	a5,17172 <strncpy+0x54>
   17128:	479d                	li	a5,7
   1712a:	04c7f463          	bgeu	a5,a2,17172 <strncpy+0x54>
   1712e:	6001b303          	ld	t1,1536(gp) # 1f718 <__SDATA_BEGIN__>
   17132:	6081b883          	ld	a7,1544(gp) # 1f720 <__SDATA_BEGIN__+0x8>
   17136:	4e1d                	li	t3,7
   17138:	6194                	ld	a3,0(a1)
   1713a:	006687b3          	add	a5,a3,t1
   1713e:	fff6c813          	not	a6,a3
   17142:	0107f7b3          	and	a5,a5,a6
   17146:	0117f7b3          	and	a5,a5,a7
   1714a:	e785                	bnez	a5,17172 <strncpy+0x54>
   1714c:	e314                	sd	a3,0(a4)
   1714e:	1661                	addi	a2,a2,-8 # 3fdffff8 <__BSS_END__+0x3fde06e0>
   17150:	0721                	addi	a4,a4,8
   17152:	05a1                	addi	a1,a1,8
   17154:	fece62e3          	bltu	t3,a2,17138 <strncpy+0x1a>
   17158:	0585                	addi	a1,a1,1
   1715a:	00170793          	addi	a5,a4,1
   1715e:	ce11                	beqz	a2,1717a <strncpy+0x5c>
   17160:	fff5c683          	lbu	a3,-1(a1)
   17164:	fff60813          	addi	a6,a2,-1
   17168:	fed78fa3          	sb	a3,-1(a5)
   1716c:	ca81                	beqz	a3,1717c <strncpy+0x5e>
   1716e:	873e                	mv	a4,a5
   17170:	8642                	mv	a2,a6
   17172:	0585                	addi	a1,a1,1
   17174:	00170793          	addi	a5,a4,1
   17178:	f665                	bnez	a2,17160 <strncpy+0x42>
   1717a:	8082                	ret
   1717c:	9732                	add	a4,a4,a2
   1717e:	00080863          	beqz	a6,1718e <strncpy+0x70>
   17182:	0785                	addi	a5,a5,1
   17184:	fe078fa3          	sb	zero,-1(a5)
   17188:	fee79de3          	bne	a5,a4,17182 <strncpy+0x64>
   1718c:	8082                	ret
   1718e:	8082                	ret

0000000000017190 <_svfprintf_r>:
   17190:	d8010113          	addi	sp,sp,-640
   17194:	26113c23          	sd	ra,632(sp)
   17198:	25313c23          	sd	s3,600(sp)
   1719c:	25413823          	sd	s4,592(sp)
   171a0:	23913423          	sd	s9,552(sp)
   171a4:	8a2e                	mv	s4,a1
   171a6:	8cb2                	mv	s9,a2
   171a8:	e836                	sd	a3,16(sp)
   171aa:	26813823          	sd	s0,624(sp)
   171ae:	26913423          	sd	s1,616(sp)
   171b2:	27213023          	sd	s2,608(sp)
   171b6:	25513423          	sd	s5,584(sp)
   171ba:	25613023          	sd	s6,576(sp)
   171be:	23713c23          	sd	s7,568(sp)
   171c2:	23813823          	sd	s8,560(sp)
   171c6:	23a13023          	sd	s10,544(sp)
   171ca:	21b13c23          	sd	s11,536(sp)
   171ce:	89aa                	mv	s3,a0
   171d0:	9affe0ef          	jal	ra,15b7e <_localeconv_r>
   171d4:	611c                	ld	a5,0(a0)
   171d6:	853e                	mv	a0,a5
   171d8:	f8be                	sd	a5,112(sp)
   171da:	f34fa0ef          	jal	ra,1190e <strlen>
   171de:	010a5783          	lhu	a5,16(s4)
   171e2:	e202                	sd	zero,256(sp)
   171e4:	e602                	sd	zero,264(sp)
   171e6:	0807f793          	andi	a5,a5,128
   171ea:	f4aa                	sd	a0,104(sp)
   171ec:	c789                	beqz	a5,171f6 <_svfprintf_r+0x66>
   171ee:	018a3783          	ld	a5,24(s4)
   171f2:	5a0782e3          	beqz	a5,17f96 <_svfprintf_r+0xe06>
   171f6:	67f5                	lui	a5,0x1d
   171f8:	9787b783          	ld	a5,-1672(a5) # 1c978 <__clzdi2+0x30e>
   171fc:	19010b13          	addi	s6,sp,400
   17200:	ea5a                	sd	s6,272(sp)
   17202:	e93e                	sd	a5,144(sp)
   17204:	67f5                	lui	a5,0x1d
   17206:	9887b783          	ld	a5,-1656(a5) # 1c988 <__clzdi2+0x31e>
   1720a:	f202                	sd	zero,288(sp)
   1720c:	10012c23          	sw	zero,280(sp)
   17210:	ed3e                	sd	a5,152(sp)
   17212:	67f5                	lui	a5,0x1d
   17214:	9987b783          	ld	a5,-1640(a5) # 1c998 <__clzdi2+0x32e>
   17218:	f002                	sd	zero,32(sp)
   1721a:	f402                	sd	zero,40(sp)
   1721c:	f13e                	sd	a5,160(sp)
   1721e:	000cc783          	lbu	a5,0(s9)
   17222:	fc82                	sd	zero,120(sp)
   17224:	f082                	sd	zero,96(sp)
   17226:	e102                	sd	zero,128(sp)
   17228:	e502                	sd	zero,136(sp)
   1722a:	e402                	sd	zero,8(sp)
   1722c:	835a                	mv	t1,s6
   1722e:	1c078563          	beqz	a5,173f8 <_svfprintf_r+0x268>
   17232:	8466                	mv	s0,s9
   17234:	02500713          	li	a4,37
   17238:	2ce78e63          	beq	a5,a4,17514 <_svfprintf_r+0x384>
   1723c:	00144783          	lbu	a5,1(s0)
   17240:	0405                	addi	s0,s0,1
   17242:	fbfd                	bnez	a5,17238 <_svfprintf_r+0xa8>
   17244:	419404bb          	subw	s1,s0,s9
   17248:	1a048863          	beqz	s1,173f8 <_svfprintf_r+0x268>
   1724c:	11812783          	lw	a5,280(sp)
   17250:	7712                	ld	a4,288(sp)
   17252:	01933023          	sd	s9,0(t1) # ffffffff80000000 <__BSS_END__+0xffffffff7ffe06e8>
   17256:	2785                	addiw	a5,a5,1
   17258:	9726                	add	a4,a4,s1
   1725a:	00933423          	sd	s1,8(t1)
   1725e:	f23a                	sd	a4,288(sp)
   17260:	10f12c23          	sw	a5,280(sp)
   17264:	0007871b          	sext.w	a4,a5
   17268:	479d                	li	a5,7
   1726a:	0341                	addi	t1,t1,16
   1726c:	2ae7cb63          	blt	a5,a4,17522 <_svfprintf_r+0x392>
   17270:	6722                	ld	a4,8(sp)
   17272:	00044783          	lbu	a5,0(s0)
   17276:	9f25                	addw	a4,a4,s1
   17278:	e43a                	sd	a4,8(sp)
   1727a:	16078f63          	beqz	a5,173f8 <_svfprintf_r+0x268>
   1727e:	67f5                	lui	a5,0x1d
   17280:	00144e03          	lbu	t3,1(s0)
   17284:	0c010fa3          	sb	zero,223(sp)
   17288:	0405                	addi	s0,s0,1
   1728a:	5c7d                	li	s8,-1
   1728c:	4a81                	li	s5,0
   1728e:	4481                	li	s1,0
   17290:	05a00913          	li	s2,90
   17294:	e5c78b93          	addi	s7,a5,-420 # 1ce5c <p05.0+0xc>
   17298:	4da5                	li	s11,9
   1729a:	0405                	addi	s0,s0,1
   1729c:	000e0d1b          	sext.w	s10,t3
   172a0:	02a00693          	li	a3,42
   172a4:	fe0d079b          	addiw	a5,s10,-32
   172a8:	0007871b          	sext.w	a4,a5
   172ac:	04e96363          	bltu	s2,a4,172f2 <_svfprintf_r+0x162>
   172b0:	02079713          	slli	a4,a5,0x20
   172b4:	01e75793          	srli	a5,a4,0x1e
   172b8:	97de                	add	a5,a5,s7
   172ba:	439c                	lw	a5,0(a5)
   172bc:	8782                	jr	a5
   172be:	4a81                	li	s5,0
   172c0:	00044703          	lbu	a4,0(s0)
   172c4:	002a979b          	slliw	a5,s5,0x2
   172c8:	015787bb          	addw	a5,a5,s5
   172cc:	fd0d0e1b          	addiw	t3,s10,-48
   172d0:	0017979b          	slliw	a5,a5,0x1
   172d4:	fd07061b          	addiw	a2,a4,-48
   172d8:	0405                	addi	s0,s0,1
   172da:	00fe0abb          	addw	s5,t3,a5
   172de:	00070d1b          	sext.w	s10,a4
   172e2:	fccdffe3          	bgeu	s11,a2,172c0 <_svfprintf_r+0x130>
   172e6:	fe0d079b          	addiw	a5,s10,-32
   172ea:	0007871b          	sext.w	a4,a5
   172ee:	fce971e3          	bgeu	s2,a4,172b0 <_svfprintf_r+0x120>
   172f2:	100d0363          	beqz	s10,173f8 <_svfprintf_r+0x268>
   172f6:	13a10423          	sb	s10,296(sp)
   172fa:	0c010fa3          	sb	zero,223(sp)
   172fe:	4905                	li	s2,1
   17300:	4b85                	li	s7,1
   17302:	12810c93          	addi	s9,sp,296
   17306:	ec02                	sd	zero,24(sp)
   17308:	4c01                	li	s8,0
   1730a:	e882                	sd	zero,80(sp)
   1730c:	ec82                	sd	zero,88(sp)
   1730e:	e482                	sd	zero,72(sp)
   17310:	0024f293          	andi	t0,s1,2
   17314:	00028363          	beqz	t0,1731a <_svfprintf_r+0x18a>
   17318:	2909                	addiw	s2,s2,2
   1731a:	0844fd93          	andi	s11,s1,132
   1731e:	7792                	ld	a5,288(sp)
   17320:	000d9663          	bnez	s11,1732c <_svfprintf_r+0x19c>
   17324:	412a86bb          	subw	a3,s5,s2
   17328:	04d04be3          	bgtz	a3,17b7e <_svfprintf_r+0x9ee>
   1732c:	0df14703          	lbu	a4,223(sp)
   17330:	c70d                	beqz	a4,1735a <_svfprintf_r+0x1ca>
   17332:	11812703          	lw	a4,280(sp)
   17336:	0df10693          	addi	a3,sp,223
   1733a:	00d33023          	sd	a3,0(t1)
   1733e:	2705                	addiw	a4,a4,1
   17340:	4685                	li	a3,1
   17342:	0785                	addi	a5,a5,1
   17344:	00d33423          	sd	a3,8(t1)
   17348:	10e12c23          	sw	a4,280(sp)
   1734c:	0007069b          	sext.w	a3,a4
   17350:	f23e                	sd	a5,288(sp)
   17352:	471d                	li	a4,7
   17354:	0341                	addi	t1,t1,16
   17356:	26d74363          	blt	a4,a3,175bc <_svfprintf_r+0x42c>
   1735a:	02028563          	beqz	t0,17384 <_svfprintf_r+0x1f4>
   1735e:	11812703          	lw	a4,280(sp)
   17362:	1194                	addi	a3,sp,224
   17364:	00d33023          	sd	a3,0(t1)
   17368:	2705                	addiw	a4,a4,1
   1736a:	4689                	li	a3,2
   1736c:	0789                	addi	a5,a5,2
   1736e:	00d33423          	sd	a3,8(t1)
   17372:	10e12c23          	sw	a4,280(sp)
   17376:	0007069b          	sext.w	a3,a4
   1737a:	f23e                	sd	a5,288(sp)
   1737c:	471d                	li	a4,7
   1737e:	0341                	addi	t1,t1,16
   17380:	08d749e3          	blt	a4,a3,17c12 <_svfprintf_r+0xa82>
   17384:	08000713          	li	a4,128
   17388:	6aed8f63          	beq	s11,a4,17a46 <_svfprintf_r+0x8b6>
   1738c:	417c0c3b          	subw	s8,s8,s7
   17390:	75804563          	bgtz	s8,17ada <_svfprintf_r+0x94a>
   17394:	1004f713          	andi	a4,s1,256
   17398:	5a071263          	bnez	a4,1793c <_svfprintf_r+0x7ac>
   1739c:	11812703          	lw	a4,280(sp)
   173a0:	97de                	add	a5,a5,s7
   173a2:	01933023          	sd	s9,0(t1)
   173a6:	0017069b          	addiw	a3,a4,1
   173aa:	8736                	mv	a4,a3
   173ac:	01733423          	sd	s7,8(t1)
   173b0:	10e12c23          	sw	a4,280(sp)
   173b4:	f23e                	sd	a5,288(sp)
   173b6:	471d                	li	a4,7
   173b8:	2cd74263          	blt	a4,a3,1767c <_svfprintf_r+0x4ec>
   173bc:	0341                	addi	t1,t1,16
   173be:	8891                	andi	s1,s1,4
   173c0:	c489                	beqz	s1,173ca <_svfprintf_r+0x23a>
   173c2:	412a84bb          	subw	s1,s5,s2
   173c6:	069040e3          	bgtz	s1,17c26 <_svfprintf_r+0xa96>
   173ca:	8756                	mv	a4,s5
   173cc:	012ad363          	bge	s5,s2,173d2 <_svfprintf_r+0x242>
   173d0:	874a                	mv	a4,s2
   173d2:	66a2                	ld	a3,8(sp)
   173d4:	9f35                	addw	a4,a4,a3
   173d6:	e43a                	sd	a4,8(sp)
   173d8:	78079263          	bnez	a5,17b5c <_svfprintf_r+0x9cc>
   173dc:	67e2                	ld	a5,24(sp)
   173de:	10012c23          	sw	zero,280(sp)
   173e2:	c789                	beqz	a5,173ec <_svfprintf_r+0x25c>
   173e4:	65e2                	ld	a1,24(sp)
   173e6:	854e                	mv	a0,s3
   173e8:	d28f90ef          	jal	ra,10910 <_free_r>
   173ec:	835a                	mv	t1,s6
   173ee:	8ca2                	mv	s9,s0
   173f0:	000cc783          	lbu	a5,0(s9)
   173f4:	e2079fe3          	bnez	a5,17232 <_svfprintf_r+0xa2>
   173f8:	7792                	ld	a5,288(sp)
   173fa:	c399                	beqz	a5,17400 <_svfprintf_r+0x270>
   173fc:	35c0106f          	j	18758 <_svfprintf_r+0x15c8>
   17400:	010a5783          	lhu	a5,16(s4)
   17404:	0407f793          	andi	a5,a5,64
   17408:	c399                	beqz	a5,1740e <_svfprintf_r+0x27e>
   1740a:	6960106f          	j	18aa0 <_svfprintf_r+0x1910>
   1740e:	27813083          	ld	ra,632(sp)
   17412:	27013403          	ld	s0,624(sp)
   17416:	6522                	ld	a0,8(sp)
   17418:	26813483          	ld	s1,616(sp)
   1741c:	26013903          	ld	s2,608(sp)
   17420:	25813983          	ld	s3,600(sp)
   17424:	25013a03          	ld	s4,592(sp)
   17428:	24813a83          	ld	s5,584(sp)
   1742c:	24013b03          	ld	s6,576(sp)
   17430:	23813b83          	ld	s7,568(sp)
   17434:	23013c03          	ld	s8,560(sp)
   17438:	22813c83          	ld	s9,552(sp)
   1743c:	22013d03          	ld	s10,544(sp)
   17440:	21813d83          	ld	s11,536(sp)
   17444:	28010113          	addi	sp,sp,640
   17448:	8082                	ret
   1744a:	0104e493          	ori	s1,s1,16
   1744e:	00044e03          	lbu	t3,0(s0)
   17452:	2481                	sext.w	s1,s1
   17454:	b599                	j	1729a <_svfprintf_r+0x10a>
   17456:	0104e493          	ori	s1,s1,16
   1745a:	2481                	sext.w	s1,s1
   1745c:	66c2                	ld	a3,16(sp)
   1745e:	0204f793          	andi	a5,s1,32
   17462:	00868713          	addi	a4,a3,8
   17466:	24078463          	beqz	a5,176ae <_svfprintf_r+0x51e>
   1746a:	629c                	ld	a5,0(a3)
   1746c:	893e                	mv	s2,a5
   1746e:	2607c263          	bltz	a5,176d2 <_svfprintf_r+0x542>
   17472:	57fd                	li	a5,-1
   17474:	62fc09e3          	beq	s8,a5,182a6 <_svfprintf_r+0x1116>
   17478:	f7f4fd93          	andi	s11,s1,-129
   1747c:	e83a                	sd	a4,16(sp)
   1747e:	2d81                	sext.w	s11,s11
   17480:	140908e3          	beqz	s2,17dd0 <_svfprintf_r+0xc40>
   17484:	47a5                	li	a5,9
   17486:	4f27eae3          	bltu	a5,s2,1817a <_svfprintf_r+0xfea>
   1748a:	0309091b          	addiw	s2,s2,48
   1748e:	192105a3          	sb	s2,395(sp)
   17492:	84ee                	mv	s1,s11
   17494:	4b85                	li	s7,1
   17496:	18b10c93          	addi	s9,sp,395
   1749a:	0df14783          	lbu	a5,223(sp)
   1749e:	000c091b          	sext.w	s2,s8
   174a2:	017c5463          	bge	s8,s7,174aa <_svfprintf_r+0x31a>
   174a6:	000b891b          	sext.w	s2,s7
   174aa:	ec02                	sd	zero,24(sp)
   174ac:	e882                	sd	zero,80(sp)
   174ae:	ec82                	sd	zero,88(sp)
   174b0:	e482                	sd	zero,72(sp)
   174b2:	e4078fe3          	beqz	a5,17310 <_svfprintf_r+0x180>
   174b6:	2905                	addiw	s2,s2,1
   174b8:	bda1                	j	17310 <_svfprintf_r+0x180>
   174ba:	0104e493          	ori	s1,s1,16
   174be:	2481                	sext.w	s1,s1
   174c0:	66c2                	ld	a3,16(sp)
   174c2:	0204f793          	andi	a5,s1,32
   174c6:	00868713          	addi	a4,a3,8
   174ca:	1c078363          	beqz	a5,17690 <_svfprintf_r+0x500>
   174ce:	0006b903          	ld	s2,0(a3)
   174d2:	bff4fd93          	andi	s11,s1,-1025
   174d6:	2d81                	sext.w	s11,s11
   174d8:	e83a                	sd	a4,16(sp)
   174da:	4781                	li	a5,0
   174dc:	4701                	li	a4,0
   174de:	0ce10fa3          	sb	a4,223(sp)
   174e2:	577d                	li	a4,-1
   174e4:	20ec0363          	beq	s8,a4,176ea <_svfprintf_r+0x55a>
   174e8:	f7fdf493          	andi	s1,s11,-129
   174ec:	2481                	sext.w	s1,s1
   174ee:	68091663          	bnez	s2,17b7a <_svfprintf_r+0x9ea>
   174f2:	500c1d63          	bnez	s8,17a0c <_svfprintf_r+0x87c>
   174f6:	0e0790e3          	bnez	a5,17dd6 <_svfprintf_r+0xc46>
   174fa:	001dfb93          	andi	s7,s11,1
   174fe:	18c10c93          	addi	s9,sp,396
   17502:	f80b8ce3          	beqz	s7,1749a <_svfprintf_r+0x30a>
   17506:	03000793          	li	a5,48
   1750a:	18f105a3          	sb	a5,395(sp)
   1750e:	18b10c93          	addi	s9,sp,395
   17512:	b761                	j	1749a <_svfprintf_r+0x30a>
   17514:	419404bb          	subw	s1,s0,s9
   17518:	d2049ae3          	bnez	s1,1724c <_svfprintf_r+0xbc>
   1751c:	00044783          	lbu	a5,0(s0)
   17520:	bba9                	j	1727a <_svfprintf_r+0xea>
   17522:	0a10                	addi	a2,sp,272
   17524:	85d2                	mv	a1,s4
   17526:	854e                	mv	a0,s3
   17528:	181020ef          	jal	ra,19ea8 <__ssprint_r>
   1752c:	ec051ae3          	bnez	a0,17400 <_svfprintf_r+0x270>
   17530:	835a                	mv	t1,s6
   17532:	bb3d                	j	17270 <_svfprintf_r+0xe0>
   17534:	0084f793          	andi	a5,s1,8
   17538:	1a079de3          	bnez	a5,17ef2 <_svfprintf_r+0xd62>
   1753c:	67c2                	ld	a5,16(sp)
   1753e:	ec1a                	sd	t1,24(sp)
   17540:	2388                	fld	fa0,0(a5)
   17542:	07a1                	addi	a5,a5,8
   17544:	e83e                	sd	a5,16(sp)
   17546:	641040ef          	jal	ra,1c386 <__extenddftf2>
   1754a:	6362                	ld	t1,24(sp)
   1754c:	87aa                	mv	a5,a0
   1754e:	0208                	addi	a0,sp,256
   17550:	ec1a                	sd	t1,24(sp)
   17552:	e23e                	sd	a5,256(sp)
   17554:	e62e                	sd	a1,264(sp)
   17556:	de0fe0ef          	jal	ra,15b36 <_ldcheck>
   1755a:	d5aa                	sw	a0,232(sp)
   1755c:	4789                	li	a5,2
   1755e:	6362                	ld	t1,24(sp)
   17560:	58f50be3          	beq	a0,a5,182f6 <_svfprintf_r+0x1166>
   17564:	4785                	li	a5,1
   17566:	00f51463          	bne	a0,a5,1756e <_svfprintf_r+0x3de>
   1756a:	1300106f          	j	1869a <_svfprintf_r+0x150a>
   1756e:	06100793          	li	a5,97
   17572:	6afd04e3          	beq	s10,a5,1841a <_svfprintf_r+0x128a>
   17576:	04100793          	li	a5,65
   1757a:	05800713          	li	a4,88
   1757e:	6afd00e3          	beq	s10,a5,1841e <_svfprintf_r+0x128e>
   17582:	fdfd7713          	andi	a4,s10,-33
   17586:	57fd                	li	a5,-1
   17588:	ecba                	sd	a4,88(sp)
   1758a:	00fc1463          	bne	s8,a5,17592 <_svfprintf_r+0x402>
   1758e:	2180106f          	j	187a6 <_svfprintf_r+0x1616>
   17592:	04700793          	li	a5,71
   17596:	00f71463          	bne	a4,a5,1759e <_svfprintf_r+0x40e>
   1759a:	4f80106f          	j	18a92 <_svfprintf_r+0x1902>
   1759e:	6932                	ld	s2,264(sp)
   175a0:	1004e793          	ori	a5,s1,256
   175a4:	f526                	sd	s1,168(sp)
   175a6:	6b92                	ld	s7,256(sp)
   175a8:	2781                	sext.w	a5,a5
   175aa:	00095463          	bgez	s2,175b2 <_svfprintf_r+0x422>
   175ae:	7830006f          	j	18530 <_svfprintf_r+0x13a0>
   175b2:	e582                	sd	zero,200(sp)
   175b4:	84be                	mv	s1,a5
   175b6:	ec02                	sd	zero,24(sp)
   175b8:	6a70006f          	j	1845e <_svfprintf_r+0x12ce>
   175bc:	0a10                	addi	a2,sp,272
   175be:	85d2                	mv	a1,s4
   175c0:	854e                	mv	a0,s3
   175c2:	f816                	sd	t0,48(sp)
   175c4:	0e5020ef          	jal	ra,19ea8 <__ssprint_r>
   175c8:	5a051163          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   175cc:	7792                	ld	a5,288(sp)
   175ce:	72c2                	ld	t0,48(sp)
   175d0:	835a                	mv	t1,s6
   175d2:	b361                	j	1735a <_svfprintf_r+0x1ca>
   175d4:	11812683          	lw	a3,280(sp)
   175d8:	00178d13          	addi	s10,a5,1
   175dc:	7782                	ld	a5,32(sp)
   175de:	00168b9b          	addiw	s7,a3,1
   175e2:	4605                	li	a2,1
   175e4:	01933023          	sd	s9,0(t1)
   175e8:	86de                	mv	a3,s7
   175ea:	01030c13          	addi	s8,t1,16
   175ee:	7ef65a63          	bge	a2,a5,17de2 <_svfprintf_r+0xc52>
   175f2:	4605                	li	a2,1
   175f4:	10d12c23          	sw	a3,280(sp)
   175f8:	00c33423          	sd	a2,8(t1)
   175fc:	f26a                	sd	s10,288(sp)
   175fe:	469d                	li	a3,7
   17600:	0976c4e3          	blt	a3,s7,17e88 <_svfprintf_r+0xcf8>
   17604:	77a6                	ld	a5,104(sp)
   17606:	7746                	ld	a4,112(sp)
   17608:	2b85                	addiw	s7,s7,1
   1760a:	9d3e                	add	s10,s10,a5
   1760c:	00ec3023          	sd	a4,0(s8)
   17610:	00fc3423          	sd	a5,8(s8)
   17614:	f26a                	sd	s10,288(sp)
   17616:	11712c23          	sw	s7,280(sp)
   1761a:	469d                	li	a3,7
   1761c:	0c41                	addi	s8,s8,16
   1761e:	0976c2e3          	blt	a3,s7,17ea2 <_svfprintf_r+0xd12>
   17622:	6512                	ld	a0,256(sp)
   17624:	65b2                	ld	a1,264(sp)
   17626:	4681                	li	a3,0
   17628:	4601                	li	a2,0
   1762a:	3d7030ef          	jal	ra,1b200 <__eqtf2>
   1762e:	7782                	ld	a5,32(sp)
   17630:	fff7869b          	addiw	a3,a5,-1
   17634:	7e050063          	beqz	a0,17e14 <_svfprintf_r+0xc84>
   17638:	2b85                	addiw	s7,s7,1
   1763a:	001c8813          	addi	a6,s9,1
   1763e:	865e                	mv	a2,s7
   17640:	9d36                	add	s10,s10,a3
   17642:	010c3023          	sd	a6,0(s8)
   17646:	00dc3423          	sd	a3,8(s8)
   1764a:	f26a                	sd	s10,288(sp)
   1764c:	10c12c23          	sw	a2,280(sp)
   17650:	469d                	li	a3,7
   17652:	0c41                	addi	s8,s8,16
   17654:	7b76c363          	blt	a3,s7,17dfa <_svfprintf_r+0xc6a>
   17658:	7766                	ld	a4,120(sp)
   1765a:	1994                	addi	a3,sp,240
   1765c:	001b861b          	addiw	a2,s7,1
   17660:	01a707b3          	add	a5,a4,s10
   17664:	00dc3023          	sd	a3,0(s8)
   17668:	00ec3423          	sd	a4,8(s8)
   1766c:	f23e                	sd	a5,288(sp)
   1766e:	10c12c23          	sw	a2,280(sp)
   17672:	469d                	li	a3,7
   17674:	010c0313          	addi	t1,s8,16
   17678:	d4c6d3e3          	bge	a3,a2,173be <_svfprintf_r+0x22e>
   1767c:	0a10                	addi	a2,sp,272
   1767e:	85d2                	mv	a1,s4
   17680:	854e                	mv	a0,s3
   17682:	027020ef          	jal	ra,19ea8 <__ssprint_r>
   17686:	4e051263          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   1768a:	7792                	ld	a5,288(sp)
   1768c:	835a                	mv	t1,s6
   1768e:	bb05                	j	173be <_svfprintf_r+0x22e>
   17690:	0104f793          	andi	a5,s1,16
   17694:	04079ae3          	bnez	a5,17ee8 <_svfprintf_r+0xd58>
   17698:	66c2                	ld	a3,16(sp)
   1769a:	0404f793          	andi	a5,s1,64
   1769e:	0006a903          	lw	s2,0(a3)
   176a2:	52078fe3          	beqz	a5,183e0 <_svfprintf_r+0x1250>
   176a6:	1942                	slli	s2,s2,0x30
   176a8:	03095913          	srli	s2,s2,0x30
   176ac:	b51d                	j	174d2 <_svfprintf_r+0x342>
   176ae:	0104f793          	andi	a5,s1,16
   176b2:	020796e3          	bnez	a5,17ede <_svfprintf_r+0xd4e>
   176b6:	66c2                	ld	a3,16(sp)
   176b8:	0404f793          	andi	a5,s1,64
   176bc:	0006a903          	lw	s2,0(a3)
   176c0:	520788e3          	beqz	a5,183f0 <_svfprintf_r+0x1260>
   176c4:	0109191b          	slliw	s2,s2,0x10
   176c8:	4109591b          	sraiw	s2,s2,0x10
   176cc:	87ca                	mv	a5,s2
   176ce:	da07d2e3          	bgez	a5,17472 <_svfprintf_r+0x2e2>
   176d2:	e83a                	sd	a4,16(sp)
   176d4:	02d00713          	li	a4,45
   176d8:	0ce10fa3          	sb	a4,223(sp)
   176dc:	577d                	li	a4,-1
   176de:	41200933          	neg	s2,s2
   176e2:	8da6                	mv	s11,s1
   176e4:	4785                	li	a5,1
   176e6:	e0ec11e3          	bne	s8,a4,174e8 <_svfprintf_r+0x358>
   176ea:	4705                	li	a4,1
   176ec:	d8e78ce3          	beq	a5,a4,17484 <_svfprintf_r+0x2f4>
   176f0:	4709                	li	a4,2
   176f2:	32e78663          	beq	a5,a4,17a1e <_svfprintf_r+0x88e>
   176f6:	18c10b93          	addi	s7,sp,396
   176fa:	8cde                	mv	s9,s7
   176fc:	00797793          	andi	a5,s2,7
   17700:	03078793          	addi	a5,a5,48
   17704:	fefc8fa3          	sb	a5,-1(s9)
   17708:	00395913          	srli	s2,s2,0x3
   1770c:	8766                	mv	a4,s9
   1770e:	1cfd                	addi	s9,s9,-1
   17710:	fe0916e3          	bnez	s2,176fc <_svfprintf_r+0x56c>
   17714:	001df693          	andi	a3,s11,1
   17718:	32068363          	beqz	a3,17a3e <_svfprintf_r+0x8ae>
   1771c:	03000693          	li	a3,48
   17720:	30d78f63          	beq	a5,a3,17a3e <_svfprintf_r+0x8ae>
   17724:	1779                	addi	a4,a4,-2
   17726:	fedc8fa3          	sb	a3,-1(s9)
   1772a:	40eb8bbb          	subw	s7,s7,a4
   1772e:	84ee                	mv	s1,s11
   17730:	8cba                	mv	s9,a4
   17732:	b3a5                	j	1749a <_svfprintf_r+0x30a>
   17734:	6742                	ld	a4,16(sp)
   17736:	0c010fa3          	sb	zero,223(sp)
   1773a:	4905                	li	s2,1
   1773c:	431c                	lw	a5,0(a4)
   1773e:	0721                	addi	a4,a4,8
   17740:	e83a                	sd	a4,16(sp)
   17742:	12f10423          	sb	a5,296(sp)
   17746:	4b85                	li	s7,1
   17748:	12810c93          	addi	s9,sp,296
   1774c:	be6d                	j	17306 <_svfprintf_r+0x176>
   1774e:	67c2                	ld	a5,16(sp)
   17750:	0c010fa3          	sb	zero,223(sp)
   17754:	0007bc83          	ld	s9,0(a5)
   17758:	00878d93          	addi	s11,a5,8
   1775c:	3c0c8de3          	beqz	s9,18336 <_svfprintf_r+0x11a6>
   17760:	57fd                	li	a5,-1
   17762:	0afc01e3          	beq	s8,a5,18004 <_svfprintf_r+0xe74>
   17766:	8662                	mv	a2,s8
   17768:	4581                	li	a1,0
   1776a:	8566                	mv	a0,s9
   1776c:	e81a                	sd	t1,16(sp)
   1776e:	b83f90ef          	jal	ra,112f0 <memchr>
   17772:	ec2a                	sd	a0,24(sp)
   17774:	6342                	ld	t1,16(sp)
   17776:	e119                	bnez	a0,1777c <_svfprintf_r+0x5ec>
   17778:	1f60106f          	j	1896e <_svfprintf_r+0x17de>
   1777c:	67e2                	ld	a5,24(sp)
   1777e:	e86e                	sd	s11,16(sp)
   17780:	ec02                	sd	zero,24(sp)
   17782:	41978bbb          	subw	s7,a5,s9
   17786:	0df14783          	lbu	a5,223(sp)
   1778a:	fffbc913          	not	s2,s7
   1778e:	43f95913          	srai	s2,s2,0x3f
   17792:	e882                	sd	zero,80(sp)
   17794:	ec82                	sd	zero,88(sp)
   17796:	e482                	sd	zero,72(sp)
   17798:	01797933          	and	s2,s2,s7
   1779c:	4c01                	li	s8,0
   1779e:	d0079ce3          	bnez	a5,174b6 <_svfprintf_r+0x326>
   177a2:	b6bd                	j	17310 <_svfprintf_r+0x180>
   177a4:	67c2                	ld	a5,16(sp)
   177a6:	0007aa83          	lw	s5,0(a5)
   177aa:	07a1                	addi	a5,a5,8
   177ac:	700add63          	bgez	s5,17ec6 <_svfprintf_r+0xd36>
   177b0:	41500abb          	negw	s5,s5
   177b4:	e83e                	sd	a5,16(sp)
   177b6:	0044e493          	ori	s1,s1,4
   177ba:	00044e03          	lbu	t3,0(s0)
   177be:	2481                	sext.w	s1,s1
   177c0:	bce9                	j	1729a <_svfprintf_r+0x10a>
   177c2:	0104ed93          	ori	s11,s1,16
   177c6:	2d81                	sext.w	s11,s11
   177c8:	66c2                	ld	a3,16(sp)
   177ca:	020df793          	andi	a5,s11,32
   177ce:	00868713          	addi	a4,a3,8
   177d2:	68078a63          	beqz	a5,17e66 <_svfprintf_r+0xcd6>
   177d6:	0006b903          	ld	s2,0(a3)
   177da:	4785                	li	a5,1
   177dc:	e83a                	sd	a4,16(sp)
   177de:	b9fd                	j	174dc <_svfprintf_r+0x34c>
   177e0:	02b00793          	li	a5,43
   177e4:	00044e03          	lbu	t3,0(s0)
   177e8:	0cf10fa3          	sb	a5,223(sp)
   177ec:	b47d                	j	1729a <_svfprintf_r+0x10a>
   177ee:	0204e493          	ori	s1,s1,32
   177f2:	00044e03          	lbu	t3,0(s0)
   177f6:	2481                	sext.w	s1,s1
   177f8:	b44d                	j	1729a <_svfprintf_r+0x10a>
   177fa:	6742                	ld	a4,16(sp)
   177fc:	77e1                	lui	a5,0xffff8
   177fe:	8307c793          	xori	a5,a5,-2000
   17802:	0ef11023          	sh	a5,224(sp)
   17806:	00870793          	addi	a5,a4,8
   1780a:	e83e                	sd	a5,16(sp)
   1780c:	67f1                	lui	a5,0x1c
   1780e:	73078793          	addi	a5,a5,1840 # 1c730 <__clzdi2+0xc6>
   17812:	0024ed93          	ori	s11,s1,2
   17816:	f43e                	sd	a5,40(sp)
   17818:	00073903          	ld	s2,0(a4)
   1781c:	2d81                	sext.w	s11,s11
   1781e:	4789                	li	a5,2
   17820:	07800d13          	li	s10,120
   17824:	b965                	j	174dc <_svfprintf_r+0x34c>
   17826:	66c2                	ld	a3,16(sp)
   17828:	0204f793          	andi	a5,s1,32
   1782c:	6298                	ld	a4,0(a3)
   1782e:	06a1                	addi	a3,a3,8
   17830:	e836                	sd	a3,16(sp)
   17832:	e395                	bnez	a5,17856 <_svfprintf_r+0x6c6>
   17834:	0104f793          	andi	a5,s1,16
   17838:	ef99                	bnez	a5,17856 <_svfprintf_r+0x6c6>
   1783a:	0404f793          	andi	a5,s1,64
   1783e:	6e079fe3          	bnez	a5,1873c <_svfprintf_r+0x15ac>
   17842:	2004f493          	andi	s1,s1,512
   17846:	67a2                	ld	a5,8(sp)
   17848:	e099                	bnez	s1,1784e <_svfprintf_r+0x6be>
   1784a:	25e0106f          	j	18aa8 <_svfprintf_r+0x1918>
   1784e:	00f70023          	sb	a5,0(a4)
   17852:	8ca2                	mv	s9,s0
   17854:	be71                	j	173f0 <_svfprintf_r+0x260>
   17856:	67a2                	ld	a5,8(sp)
   17858:	8ca2                	mv	s9,s0
   1785a:	e31c                	sd	a5,0(a4)
   1785c:	be51                	j	173f0 <_svfprintf_r+0x260>
   1785e:	00044e03          	lbu	t3,0(s0)
   17862:	06c00793          	li	a5,108
   17866:	70fe0363          	beq	t3,a5,17f6c <_svfprintf_r+0xddc>
   1786a:	0104e493          	ori	s1,s1,16
   1786e:	2481                	sext.w	s1,s1
   17870:	b42d                	j	1729a <_svfprintf_r+0x10a>
   17872:	00044e03          	lbu	t3,0(s0)
   17876:	06800793          	li	a5,104
   1787a:	70fe0163          	beq	t3,a5,17f7c <_svfprintf_r+0xdec>
   1787e:	0404e493          	ori	s1,s1,64
   17882:	2481                	sext.w	s1,s1
   17884:	bc19                	j	1729a <_svfprintf_r+0x10a>
   17886:	0084e493          	ori	s1,s1,8
   1788a:	00044e03          	lbu	t3,0(s0)
   1788e:	2481                	sext.w	s1,s1
   17890:	b429                	j	1729a <_svfprintf_r+0x10a>
   17892:	854e                	mv	a0,s3
   17894:	ec1a                	sd	t1,24(sp)
   17896:	ae8fe0ef          	jal	ra,15b7e <_localeconv_r>
   1789a:	651c                	ld	a5,8(a0)
   1789c:	853e                	mv	a0,a5
   1789e:	e53e                	sd	a5,136(sp)
   178a0:	86efa0ef          	jal	ra,1190e <strlen>
   178a4:	87aa                	mv	a5,a0
   178a6:	854e                	mv	a0,s3
   178a8:	8d3e                	mv	s10,a5
   178aa:	e13e                	sd	a5,128(sp)
   178ac:	ad2fe0ef          	jal	ra,15b7e <_localeconv_r>
   178b0:	691c                	ld	a5,16(a0)
   178b2:	6362                	ld	t1,24(sp)
   178b4:	00044e03          	lbu	t3,0(s0)
   178b8:	f0be                	sd	a5,96(sp)
   178ba:	9e0d00e3          	beqz	s10,1729a <_svfprintf_r+0x10a>
   178be:	9c078ee3          	beqz	a5,1729a <_svfprintf_r+0x10a>
   178c2:	0007c783          	lbu	a5,0(a5)
   178c6:	9c078ae3          	beqz	a5,1729a <_svfprintf_r+0x10a>
   178ca:	4004e493          	ori	s1,s1,1024
   178ce:	2481                	sext.w	s1,s1
   178d0:	b2e9                	j	1729a <_svfprintf_r+0x10a>
   178d2:	0014e493          	ori	s1,s1,1
   178d6:	00044e03          	lbu	t3,0(s0)
   178da:	2481                	sext.w	s1,s1
   178dc:	ba7d                	j	1729a <_svfprintf_r+0x10a>
   178de:	0df14783          	lbu	a5,223(sp)
   178e2:	00044e03          	lbu	t3,0(s0)
   178e6:	9a079ae3          	bnez	a5,1729a <_svfprintf_r+0x10a>
   178ea:	02000793          	li	a5,32
   178ee:	0cf10fa3          	sb	a5,223(sp)
   178f2:	b265                	j	1729a <_svfprintf_r+0x10a>
   178f4:	0804e493          	ori	s1,s1,128
   178f8:	00044e03          	lbu	t3,0(s0)
   178fc:	2481                	sext.w	s1,s1
   178fe:	ba71                	j	1729a <_svfprintf_r+0x10a>
   17900:	00044d03          	lbu	s10,0(s0)
   17904:	00140793          	addi	a5,s0,1
   17908:	00dd1463          	bne	s10,a3,17910 <_svfprintf_r+0x780>
   1790c:	2620106f          	j	18b6e <_svfprintf_r+0x19de>
   17910:	fd0d071b          	addiw	a4,s10,-48
   17914:	843e                	mv	s0,a5
   17916:	4c01                	li	s8,0
   17918:	98ede6e3          	bltu	s11,a4,172a4 <_svfprintf_r+0x114>
   1791c:	00044d03          	lbu	s10,0(s0)
   17920:	002c179b          	slliw	a5,s8,0x2
   17924:	018787bb          	addw	a5,a5,s8
   17928:	0017979b          	slliw	a5,a5,0x1
   1792c:	00e78c3b          	addw	s8,a5,a4
   17930:	fd0d071b          	addiw	a4,s10,-48
   17934:	0405                	addi	s0,s0,1
   17936:	feedf3e3          	bgeu	s11,a4,1791c <_svfprintf_r+0x78c>
   1793a:	b2ad                	j	172a4 <_svfprintf_r+0x114>
   1793c:	06500713          	li	a4,101
   17940:	c9a75ae3          	bge	a4,s10,175d4 <_svfprintf_r+0x444>
   17944:	6512                	ld	a0,256(sp)
   17946:	65b2                	ld	a1,264(sp)
   17948:	4601                	li	a2,0
   1794a:	4681                	li	a3,0
   1794c:	fc3e                	sd	a5,56(sp)
   1794e:	f81a                	sd	t1,48(sp)
   17950:	0b1030ef          	jal	ra,1b200 <__eqtf2>
   17954:	7342                	ld	t1,48(sp)
   17956:	77e2                	ld	a5,56(sp)
   17958:	34051863          	bnez	a0,17ca8 <_svfprintf_r+0xb18>
   1795c:	11812703          	lw	a4,280(sp)
   17960:	66f1                	lui	a3,0x1c
   17962:	76868693          	addi	a3,a3,1896 # 1c768 <__clzdi2+0xfe>
   17966:	2705                	addiw	a4,a4,1
   17968:	00d33023          	sd	a3,0(t1)
   1796c:	0785                	addi	a5,a5,1
   1796e:	4685                	li	a3,1
   17970:	00d33423          	sd	a3,8(t1)
   17974:	10e12c23          	sw	a4,280(sp)
   17978:	0007069b          	sext.w	a3,a4
   1797c:	f23e                	sd	a5,288(sp)
   1797e:	471d                	li	a4,7
   17980:	0341                	addi	t1,t1,16
   17982:	12d746e3          	blt	a4,a3,182ae <_svfprintf_r+0x111e>
   17986:	572e                	lw	a4,232(sp)
   17988:	7682                	ld	a3,32(sp)
   1798a:	52d75963          	bge	a4,a3,17ebc <_svfprintf_r+0xd2c>
   1798e:	76a6                	ld	a3,104(sp)
   17990:	11812703          	lw	a4,280(sp)
   17994:	7646                	ld	a2,112(sp)
   17996:	97b6                	add	a5,a5,a3
   17998:	2705                	addiw	a4,a4,1
   1799a:	00d33423          	sd	a3,8(t1)
   1799e:	00c33023          	sd	a2,0(t1)
   179a2:	0007069b          	sext.w	a3,a4
   179a6:	10e12c23          	sw	a4,280(sp)
   179aa:	f23e                	sd	a5,288(sp)
   179ac:	471d                	li	a4,7
   179ae:	0341                	addi	t1,t1,16
   179b0:	5ad74463          	blt	a4,a3,17f58 <_svfprintf_r+0xdc8>
   179b4:	7702                	ld	a4,32(sp)
   179b6:	fff70b9b          	addiw	s7,a4,-1
   179ba:	a17052e3          	blez	s7,173be <_svfprintf_r+0x22e>
   179be:	68f5                	lui	a7,0x1d
   179c0:	46c1                	li	a3,16
   179c2:	11812703          	lw	a4,280(sp)
   179c6:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   179ca:	4cc1                	li	s9,16
   179cc:	4c1d                	li	s8,7
   179ce:	0176c763          	blt	a3,s7,179dc <_svfprintf_r+0x84c>
   179d2:	0f30006f          	j	182c4 <_svfprintf_r+0x1134>
   179d6:	3bc1                	addiw	s7,s7,-16
   179d8:	0f7cd6e3          	bge	s9,s7,182c4 <_svfprintf_r+0x1134>
   179dc:	2705                	addiw	a4,a4,1
   179de:	07c1                	addi	a5,a5,16
   179e0:	01b33023          	sd	s11,0(t1)
   179e4:	01933423          	sd	s9,8(t1)
   179e8:	f23e                	sd	a5,288(sp)
   179ea:	10e12c23          	sw	a4,280(sp)
   179ee:	0341                	addi	t1,t1,16
   179f0:	feec53e3          	bge	s8,a4,179d6 <_svfprintf_r+0x846>
   179f4:	0a10                	addi	a2,sp,272
   179f6:	85d2                	mv	a1,s4
   179f8:	854e                	mv	a0,s3
   179fa:	4ae020ef          	jal	ra,19ea8 <__ssprint_r>
   179fe:	16051663          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17a02:	7792                	ld	a5,288(sp)
   17a04:	11812703          	lw	a4,280(sp)
   17a08:	835a                	mv	t1,s6
   17a0a:	b7f1                	j	179d6 <_svfprintf_r+0x846>
   17a0c:	4705                	li	a4,1
   17a0e:	00e79463          	bne	a5,a4,17a16 <_svfprintf_r+0x886>
   17a12:	0160106f          	j	18a28 <_svfprintf_r+0x1898>
   17a16:	4709                	li	a4,2
   17a18:	8da6                	mv	s11,s1
   17a1a:	cce79ee3          	bne	a5,a4,176f6 <_svfprintf_r+0x566>
   17a1e:	18c10b93          	addi	s7,sp,396
   17a22:	8cde                	mv	s9,s7
   17a24:	7722                	ld	a4,40(sp)
   17a26:	00f97793          	andi	a5,s2,15
   17a2a:	1cfd                	addi	s9,s9,-1
   17a2c:	97ba                	add	a5,a5,a4
   17a2e:	0007c783          	lbu	a5,0(a5)
   17a32:	00495913          	srli	s2,s2,0x4
   17a36:	00fc8023          	sb	a5,0(s9)
   17a3a:	fe0915e3          	bnez	s2,17a24 <_svfprintf_r+0x894>
   17a3e:	419b8bbb          	subw	s7,s7,s9
   17a42:	84ee                	mv	s1,s11
   17a44:	bc99                	j	1749a <_svfprintf_r+0x30a>
   17a46:	412a86bb          	subw	a3,s5,s2
   17a4a:	94d051e3          	blez	a3,1738c <_svfprintf_r+0x1fc>
   17a4e:	68f5                	lui	a7,0x1d
   17a50:	4641                	li	a2,16
   17a52:	11812703          	lw	a4,280(sp)
   17a56:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   17a5a:	4f41                	li	t5,16
   17a5c:	4f9d                	li	t6,7
   17a5e:	00d64663          	blt	a2,a3,17a6a <_svfprintf_r+0x8da>
   17a62:	a089                	j	17aa4 <_svfprintf_r+0x914>
   17a64:	36c1                	addiw	a3,a3,-16
   17a66:	02df5f63          	bge	t5,a3,17aa4 <_svfprintf_r+0x914>
   17a6a:	2705                	addiw	a4,a4,1
   17a6c:	07c1                	addi	a5,a5,16
   17a6e:	01b33023          	sd	s11,0(t1)
   17a72:	01e33423          	sd	t5,8(t1)
   17a76:	f23e                	sd	a5,288(sp)
   17a78:	10e12c23          	sw	a4,280(sp)
   17a7c:	0341                	addi	t1,t1,16
   17a7e:	feefd3e3          	bge	t6,a4,17a64 <_svfprintf_r+0x8d4>
   17a82:	0a10                	addi	a2,sp,272
   17a84:	85d2                	mv	a1,s4
   17a86:	854e                	mv	a0,s3
   17a88:	f836                	sd	a3,48(sp)
   17a8a:	41e020ef          	jal	ra,19ea8 <__ssprint_r>
   17a8e:	ed71                	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17a90:	76c2                	ld	a3,48(sp)
   17a92:	4f41                	li	t5,16
   17a94:	7792                	ld	a5,288(sp)
   17a96:	36c1                	addiw	a3,a3,-16
   17a98:	11812703          	lw	a4,280(sp)
   17a9c:	835a                	mv	t1,s6
   17a9e:	4f9d                	li	t6,7
   17aa0:	fcdf45e3          	blt	t5,a3,17a6a <_svfprintf_r+0x8da>
   17aa4:	2705                	addiw	a4,a4,1
   17aa6:	97b6                	add	a5,a5,a3
   17aa8:	00d33423          	sd	a3,8(t1)
   17aac:	01b33023          	sd	s11,0(t1)
   17ab0:	0007069b          	sext.w	a3,a4
   17ab4:	10e12c23          	sw	a4,280(sp)
   17ab8:	f23e                	sd	a5,288(sp)
   17aba:	471d                	li	a4,7
   17abc:	0341                	addi	t1,t1,16
   17abe:	8cd757e3          	bge	a4,a3,1738c <_svfprintf_r+0x1fc>
   17ac2:	0a10                	addi	a2,sp,272
   17ac4:	85d2                	mv	a1,s4
   17ac6:	854e                	mv	a0,s3
   17ac8:	3e0020ef          	jal	ra,19ea8 <__ssprint_r>
   17acc:	ed59                	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17ace:	417c0c3b          	subw	s8,s8,s7
   17ad2:	7792                	ld	a5,288(sp)
   17ad4:	835a                	mv	t1,s6
   17ad6:	8b805fe3          	blez	s8,17394 <_svfprintf_r+0x204>
   17ada:	68f5                	lui	a7,0x1d
   17adc:	4641                	li	a2,16
   17ade:	11812703          	lw	a4,280(sp)
   17ae2:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   17ae6:	4ec1                	li	t4,16
   17ae8:	4f1d                	li	t5,7
   17aea:	01864663          	blt	a2,s8,17af6 <_svfprintf_r+0x966>
   17aee:	a83d                	j	17b2c <_svfprintf_r+0x99c>
   17af0:	3c41                	addiw	s8,s8,-16
   17af2:	038edd63          	bge	t4,s8,17b2c <_svfprintf_r+0x99c>
   17af6:	2705                	addiw	a4,a4,1
   17af8:	07c1                	addi	a5,a5,16
   17afa:	01b33023          	sd	s11,0(t1)
   17afe:	01d33423          	sd	t4,8(t1)
   17b02:	f23e                	sd	a5,288(sp)
   17b04:	10e12c23          	sw	a4,280(sp)
   17b08:	0341                	addi	t1,t1,16
   17b0a:	feef53e3          	bge	t5,a4,17af0 <_svfprintf_r+0x960>
   17b0e:	0a10                	addi	a2,sp,272
   17b10:	85d2                	mv	a1,s4
   17b12:	854e                	mv	a0,s3
   17b14:	394020ef          	jal	ra,19ea8 <__ssprint_r>
   17b18:	e929                	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17b1a:	4ec1                	li	t4,16
   17b1c:	3c41                	addiw	s8,s8,-16
   17b1e:	7792                	ld	a5,288(sp)
   17b20:	11812703          	lw	a4,280(sp)
   17b24:	835a                	mv	t1,s6
   17b26:	4f1d                	li	t5,7
   17b28:	fd8ec7e3          	blt	t4,s8,17af6 <_svfprintf_r+0x966>
   17b2c:	0017069b          	addiw	a3,a4,1
   17b30:	97e2                	add	a5,a5,s8
   17b32:	01b33023          	sd	s11,0(t1)
   17b36:	01833423          	sd	s8,8(t1)
   17b3a:	f23e                	sd	a5,288(sp)
   17b3c:	10d12c23          	sw	a3,280(sp)
   17b40:	471d                	li	a4,7
   17b42:	0341                	addi	t1,t1,16
   17b44:	84d758e3          	bge	a4,a3,17394 <_svfprintf_r+0x204>
   17b48:	0a10                	addi	a2,sp,272
   17b4a:	85d2                	mv	a1,s4
   17b4c:	854e                	mv	a0,s3
   17b4e:	35a020ef          	jal	ra,19ea8 <__ssprint_r>
   17b52:	ed01                	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17b54:	7792                	ld	a5,288(sp)
   17b56:	835a                	mv	t1,s6
   17b58:	83dff06f          	j	17394 <_svfprintf_r+0x204>
   17b5c:	0a10                	addi	a2,sp,272
   17b5e:	85d2                	mv	a1,s4
   17b60:	854e                	mv	a0,s3
   17b62:	346020ef          	jal	ra,19ea8 <__ssprint_r>
   17b66:	86050be3          	beqz	a0,173dc <_svfprintf_r+0x24c>
   17b6a:	67e2                	ld	a5,24(sp)
   17b6c:	88078ae3          	beqz	a5,17400 <_svfprintf_r+0x270>
   17b70:	85be                	mv	a1,a5
   17b72:	854e                	mv	a0,s3
   17b74:	d9df80ef          	jal	ra,10910 <_free_r>
   17b78:	b061                	j	17400 <_svfprintf_r+0x270>
   17b7a:	8da6                	mv	s11,s1
   17b7c:	b6bd                	j	176ea <_svfprintf_r+0x55a>
   17b7e:	68f5                	lui	a7,0x1d
   17b80:	4641                	li	a2,16
   17b82:	11812703          	lw	a4,280(sp)
   17b86:	06088893          	addi	a7,a7,96 # 1d060 <blanks.1>
   17b8a:	4f41                	li	t5,16
   17b8c:	439d                	li	t2,7
   17b8e:	00d64663          	blt	a2,a3,17b9a <_svfprintf_r+0xa0a>
   17b92:	a0a9                	j	17bdc <_svfprintf_r+0xa4c>
   17b94:	36c1                	addiw	a3,a3,-16
   17b96:	04df5363          	bge	t5,a3,17bdc <_svfprintf_r+0xa4c>
   17b9a:	2705                	addiw	a4,a4,1
   17b9c:	07c1                	addi	a5,a5,16
   17b9e:	01133023          	sd	a7,0(t1)
   17ba2:	01e33423          	sd	t5,8(t1)
   17ba6:	f23e                	sd	a5,288(sp)
   17ba8:	10e12c23          	sw	a4,280(sp)
   17bac:	0341                	addi	t1,t1,16
   17bae:	fee3d3e3          	bge	t2,a4,17b94 <_svfprintf_r+0xa04>
   17bb2:	0a10                	addi	a2,sp,272
   17bb4:	85d2                	mv	a1,s4
   17bb6:	854e                	mv	a0,s3
   17bb8:	e0c6                	sd	a7,64(sp)
   17bba:	fc36                	sd	a3,56(sp)
   17bbc:	f816                	sd	t0,48(sp)
   17bbe:	2ea020ef          	jal	ra,19ea8 <__ssprint_r>
   17bc2:	f545                	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17bc4:	76e2                	ld	a3,56(sp)
   17bc6:	4f41                	li	t5,16
   17bc8:	7792                	ld	a5,288(sp)
   17bca:	36c1                	addiw	a3,a3,-16
   17bcc:	11812703          	lw	a4,280(sp)
   17bd0:	6886                	ld	a7,64(sp)
   17bd2:	72c2                	ld	t0,48(sp)
   17bd4:	835a                	mv	t1,s6
   17bd6:	439d                	li	t2,7
   17bd8:	fcdf41e3          	blt	t5,a3,17b9a <_svfprintf_r+0xa0a>
   17bdc:	2705                	addiw	a4,a4,1
   17bde:	97b6                	add	a5,a5,a3
   17be0:	00d33423          	sd	a3,8(t1)
   17be4:	01133023          	sd	a7,0(t1)
   17be8:	0007069b          	sext.w	a3,a4
   17bec:	10e12c23          	sw	a4,280(sp)
   17bf0:	f23e                	sd	a5,288(sp)
   17bf2:	471d                	li	a4,7
   17bf4:	0341                	addi	t1,t1,16
   17bf6:	f2d75b63          	bge	a4,a3,1732c <_svfprintf_r+0x19c>
   17bfa:	0a10                	addi	a2,sp,272
   17bfc:	85d2                	mv	a1,s4
   17bfe:	854e                	mv	a0,s3
   17c00:	f816                	sd	t0,48(sp)
   17c02:	2a6020ef          	jal	ra,19ea8 <__ssprint_r>
   17c06:	f135                	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17c08:	7792                	ld	a5,288(sp)
   17c0a:	72c2                	ld	t0,48(sp)
   17c0c:	835a                	mv	t1,s6
   17c0e:	f1eff06f          	j	1732c <_svfprintf_r+0x19c>
   17c12:	0a10                	addi	a2,sp,272
   17c14:	85d2                	mv	a1,s4
   17c16:	854e                	mv	a0,s3
   17c18:	290020ef          	jal	ra,19ea8 <__ssprint_r>
   17c1c:	f539                	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17c1e:	7792                	ld	a5,288(sp)
   17c20:	835a                	mv	t1,s6
   17c22:	f62ff06f          	j	17384 <_svfprintf_r+0x1f4>
   17c26:	68f5                	lui	a7,0x1d
   17c28:	46c1                	li	a3,16
   17c2a:	11812703          	lw	a4,280(sp)
   17c2e:	06088893          	addi	a7,a7,96 # 1d060 <blanks.1>
   17c32:	4bc1                	li	s7,16
   17c34:	4c1d                	li	s8,7
   17c36:	0096c663          	blt	a3,s1,17c42 <_svfprintf_r+0xab2>
   17c3a:	a081                	j	17c7a <_svfprintf_r+0xaea>
   17c3c:	34c1                	addiw	s1,s1,-16
   17c3e:	029bde63          	bge	s7,s1,17c7a <_svfprintf_r+0xaea>
   17c42:	2705                	addiw	a4,a4,1
   17c44:	07c1                	addi	a5,a5,16
   17c46:	01133023          	sd	a7,0(t1)
   17c4a:	01733423          	sd	s7,8(t1)
   17c4e:	f23e                	sd	a5,288(sp)
   17c50:	10e12c23          	sw	a4,280(sp)
   17c54:	0341                	addi	t1,t1,16
   17c56:	feec53e3          	bge	s8,a4,17c3c <_svfprintf_r+0xaac>
   17c5a:	0a10                	addi	a2,sp,272
   17c5c:	85d2                	mv	a1,s4
   17c5e:	854e                	mv	a0,s3
   17c60:	f846                	sd	a7,48(sp)
   17c62:	246020ef          	jal	ra,19ea8 <__ssprint_r>
   17c66:	f00512e3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17c6a:	34c1                	addiw	s1,s1,-16
   17c6c:	7792                	ld	a5,288(sp)
   17c6e:	11812703          	lw	a4,280(sp)
   17c72:	78c2                	ld	a7,48(sp)
   17c74:	835a                	mv	t1,s6
   17c76:	fc9bc6e3          	blt	s7,s1,17c42 <_svfprintf_r+0xab2>
   17c7a:	0017069b          	addiw	a3,a4,1
   17c7e:	97a6                	add	a5,a5,s1
   17c80:	01133023          	sd	a7,0(t1)
   17c84:	00933423          	sd	s1,8(t1)
   17c88:	f23e                	sd	a5,288(sp)
   17c8a:	10d12c23          	sw	a3,280(sp)
   17c8e:	471d                	li	a4,7
   17c90:	f2d75d63          	bge	a4,a3,173ca <_svfprintf_r+0x23a>
   17c94:	0a10                	addi	a2,sp,272
   17c96:	85d2                	mv	a1,s4
   17c98:	854e                	mv	a0,s3
   17c9a:	20e020ef          	jal	ra,19ea8 <__ssprint_r>
   17c9e:	ec0516e3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17ca2:	7792                	ld	a5,288(sp)
   17ca4:	f26ff06f          	j	173ca <_svfprintf_r+0x23a>
   17ca8:	562e                	lw	a2,232(sp)
   17caa:	54c05863          	blez	a2,181fa <_svfprintf_r+0x106a>
   17cae:	6726                	ld	a4,72(sp)
   17cb0:	7682                	ld	a3,32(sp)
   17cb2:	00070b9b          	sext.w	s7,a4
   17cb6:	24e6c863          	blt	a3,a4,17f06 <_svfprintf_r+0xd76>
   17cba:	03705263          	blez	s7,17cde <_svfprintf_r+0xb4e>
   17cbe:	11812703          	lw	a4,280(sp)
   17cc2:	97de                	add	a5,a5,s7
   17cc4:	01933023          	sd	s9,0(t1)
   17cc8:	0017069b          	addiw	a3,a4,1
   17ccc:	01733423          	sd	s7,8(t1)
   17cd0:	f23e                	sd	a5,288(sp)
   17cd2:	10d12c23          	sw	a3,280(sp)
   17cd6:	471d                	li	a4,7
   17cd8:	0341                	addi	t1,t1,16
   17cda:	20d74ae3          	blt	a4,a3,186ee <_svfprintf_r+0x155e>
   17cde:	fffbc713          	not	a4,s7
   17ce2:	977d                	srai	a4,a4,0x3f
   17ce4:	00ebfbb3          	and	s7,s7,a4
   17ce8:	6726                	ld	a4,72(sp)
   17cea:	41770bbb          	subw	s7,a4,s7
   17cee:	2d704563          	bgtz	s7,17fb8 <_svfprintf_r+0xe28>
   17cf2:	66a6                	ld	a3,72(sp)
   17cf4:	4004f713          	andi	a4,s1,1024
   17cf8:	00dc8c33          	add	s8,s9,a3
   17cfc:	32071d63          	bnez	a4,18036 <_svfprintf_r+0xea6>
   17d00:	572e                	lw	a4,232(sp)
   17d02:	7682                	ld	a3,32(sp)
   17d04:	00d74663          	blt	a4,a3,17d10 <_svfprintf_r+0xb80>
   17d08:	0014f693          	andi	a3,s1,1
   17d0c:	1e068ee3          	beqz	a3,18708 <_svfprintf_r+0x1578>
   17d10:	7626                	ld	a2,104(sp)
   17d12:	11812683          	lw	a3,280(sp)
   17d16:	75c6                	ld	a1,112(sp)
   17d18:	97b2                	add	a5,a5,a2
   17d1a:	2685                	addiw	a3,a3,1
   17d1c:	00c33423          	sd	a2,8(t1)
   17d20:	00b33023          	sd	a1,0(t1)
   17d24:	0006861b          	sext.w	a2,a3
   17d28:	10d12c23          	sw	a3,280(sp)
   17d2c:	f23e                	sd	a5,288(sp)
   17d2e:	469d                	li	a3,7
   17d30:	0341                	addi	t1,t1,16
   17d32:	42c6c2e3          	blt	a3,a2,18956 <_svfprintf_r+0x17c6>
   17d36:	7682                	ld	a3,32(sp)
   17d38:	00dc8833          	add	a6,s9,a3
   17d3c:	41880bb3          	sub	s7,a6,s8
   17d40:	9e99                	subw	a3,a3,a4
   17d42:	000b861b          	sext.w	a2,s7
   17d46:	00c6d363          	bge	a3,a2,17d4c <_svfprintf_r+0xbbc>
   17d4a:	8bb6                	mv	s7,a3
   17d4c:	2b81                	sext.w	s7,s7
   17d4e:	03705263          	blez	s7,17d72 <_svfprintf_r+0xbe2>
   17d52:	11812703          	lw	a4,280(sp)
   17d56:	97de                	add	a5,a5,s7
   17d58:	01833023          	sd	s8,0(t1)
   17d5c:	0017061b          	addiw	a2,a4,1
   17d60:	01733423          	sd	s7,8(t1)
   17d64:	f23e                	sd	a5,288(sp)
   17d66:	10c12c23          	sw	a2,280(sp)
   17d6a:	471d                	li	a4,7
   17d6c:	0341                	addi	t1,t1,16
   17d6e:	40c74ee3          	blt	a4,a2,1898a <_svfprintf_r+0x17fa>
   17d72:	fffbc713          	not	a4,s7
   17d76:	977d                	srai	a4,a4,0x3f
   17d78:	00ebfbb3          	and	s7,s7,a4
   17d7c:	41768bbb          	subw	s7,a3,s7
   17d80:	e3705f63          	blez	s7,173be <_svfprintf_r+0x22e>
   17d84:	68f5                	lui	a7,0x1d
   17d86:	46c1                	li	a3,16
   17d88:	11812703          	lw	a4,280(sp)
   17d8c:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   17d90:	4cc1                	li	s9,16
   17d92:	4c1d                	li	s8,7
   17d94:	0176c663          	blt	a3,s7,17da0 <_svfprintf_r+0xc10>
   17d98:	a335                	j	182c4 <_svfprintf_r+0x1134>
   17d9a:	3bc1                	addiw	s7,s7,-16
   17d9c:	537cd463          	bge	s9,s7,182c4 <_svfprintf_r+0x1134>
   17da0:	2705                	addiw	a4,a4,1
   17da2:	07c1                	addi	a5,a5,16
   17da4:	01b33023          	sd	s11,0(t1)
   17da8:	01933423          	sd	s9,8(t1)
   17dac:	f23e                	sd	a5,288(sp)
   17dae:	10e12c23          	sw	a4,280(sp)
   17db2:	0341                	addi	t1,t1,16
   17db4:	feec53e3          	bge	s8,a4,17d9a <_svfprintf_r+0xc0a>
   17db8:	0a10                	addi	a2,sp,272
   17dba:	85d2                	mv	a1,s4
   17dbc:	854e                	mv	a0,s3
   17dbe:	0ea020ef          	jal	ra,19ea8 <__ssprint_r>
   17dc2:	da0514e3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17dc6:	7792                	ld	a5,288(sp)
   17dc8:	11812703          	lw	a4,280(sp)
   17dcc:	835a                	mv	t1,s6
   17dce:	b7f1                	j	17d9a <_svfprintf_r+0xc0a>
   17dd0:	ea0c1d63          	bnez	s8,1748a <_svfprintf_r+0x2fa>
   17dd4:	84ee                	mv	s1,s11
   17dd6:	4c01                	li	s8,0
   17dd8:	4b81                	li	s7,0
   17dda:	18c10c93          	addi	s9,sp,396
   17dde:	ebcff06f          	j	1749a <_svfprintf_r+0x30a>
   17de2:	0014f593          	andi	a1,s1,1
   17de6:	800596e3          	bnez	a1,175f2 <_svfprintf_r+0x462>
   17dea:	00c33423          	sd	a2,8(t1)
   17dee:	f26a                	sd	s10,288(sp)
   17df0:	11712c23          	sw	s7,280(sp)
   17df4:	469d                	li	a3,7
   17df6:	8776d1e3          	bge	a3,s7,17658 <_svfprintf_r+0x4c8>
   17dfa:	0a10                	addi	a2,sp,272
   17dfc:	85d2                	mv	a1,s4
   17dfe:	854e                	mv	a0,s3
   17e00:	0a8020ef          	jal	ra,19ea8 <__ssprint_r>
   17e04:	d60513e3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17e08:	7d12                	ld	s10,288(sp)
   17e0a:	11812b83          	lw	s7,280(sp)
   17e0e:	8c5a                	mv	s8,s6
   17e10:	849ff06f          	j	17658 <_svfprintf_r+0x4c8>
   17e14:	84d052e3          	blez	a3,17658 <_svfprintf_r+0x4c8>
   17e18:	68f5                	lui	a7,0x1d
   17e1a:	4641                	li	a2,16
   17e1c:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   17e20:	4841                	li	a6,16
   17e22:	4c9d                	li	s9,7
   17e24:	00d64663          	blt	a2,a3,17e30 <_svfprintf_r+0xca0>
   17e28:	ab71                	j	183c4 <_svfprintf_r+0x1234>
   17e2a:	36c1                	addiw	a3,a3,-16
   17e2c:	58d85c63          	bge	a6,a3,183c4 <_svfprintf_r+0x1234>
   17e30:	2b85                	addiw	s7,s7,1
   17e32:	0d41                	addi	s10,s10,16
   17e34:	01bc3023          	sd	s11,0(s8)
   17e38:	010c3423          	sd	a6,8(s8)
   17e3c:	f26a                	sd	s10,288(sp)
   17e3e:	11712c23          	sw	s7,280(sp)
   17e42:	0c41                	addi	s8,s8,16
   17e44:	ff7cd3e3          	bge	s9,s7,17e2a <_svfprintf_r+0xc9a>
   17e48:	0a10                	addi	a2,sp,272
   17e4a:	85d2                	mv	a1,s4
   17e4c:	854e                	mv	a0,s3
   17e4e:	f836                	sd	a3,48(sp)
   17e50:	058020ef          	jal	ra,19ea8 <__ssprint_r>
   17e54:	d0051be3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17e58:	7d12                	ld	s10,288(sp)
   17e5a:	11812b83          	lw	s7,280(sp)
   17e5e:	76c2                	ld	a3,48(sp)
   17e60:	8c5a                	mv	s8,s6
   17e62:	4841                	li	a6,16
   17e64:	b7d9                	j	17e2a <_svfprintf_r+0xc9a>
   17e66:	010df793          	andi	a5,s11,16
   17e6a:	e3bd                	bnez	a5,17ed0 <_svfprintf_r+0xd40>
   17e6c:	66c2                	ld	a3,16(sp)
   17e6e:	040df793          	andi	a5,s11,64
   17e72:	0006a903          	lw	s2,0(a3)
   17e76:	58078863          	beqz	a5,18406 <_svfprintf_r+0x1276>
   17e7a:	1942                	slli	s2,s2,0x30
   17e7c:	03095913          	srli	s2,s2,0x30
   17e80:	e83a                	sd	a4,16(sp)
   17e82:	4785                	li	a5,1
   17e84:	e58ff06f          	j	174dc <_svfprintf_r+0x34c>
   17e88:	0a10                	addi	a2,sp,272
   17e8a:	85d2                	mv	a1,s4
   17e8c:	854e                	mv	a0,s3
   17e8e:	01a020ef          	jal	ra,19ea8 <__ssprint_r>
   17e92:	cc051ce3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17e96:	7d12                	ld	s10,288(sp)
   17e98:	11812b83          	lw	s7,280(sp)
   17e9c:	8c5a                	mv	s8,s6
   17e9e:	f66ff06f          	j	17604 <_svfprintf_r+0x474>
   17ea2:	0a10                	addi	a2,sp,272
   17ea4:	85d2                	mv	a1,s4
   17ea6:	854e                	mv	a0,s3
   17ea8:	000020ef          	jal	ra,19ea8 <__ssprint_r>
   17eac:	ca051fe3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17eb0:	7d12                	ld	s10,288(sp)
   17eb2:	11812b83          	lw	s7,280(sp)
   17eb6:	8c5a                	mv	s8,s6
   17eb8:	f6aff06f          	j	17622 <_svfprintf_r+0x492>
   17ebc:	0014f713          	andi	a4,s1,1
   17ec0:	ce070f63          	beqz	a4,173be <_svfprintf_r+0x22e>
   17ec4:	b4e9                	j	1798e <_svfprintf_r+0x7fe>
   17ec6:	00044e03          	lbu	t3,0(s0)
   17eca:	e83e                	sd	a5,16(sp)
   17ecc:	bceff06f          	j	1729a <_svfprintf_r+0x10a>
   17ed0:	67c2                	ld	a5,16(sp)
   17ed2:	e83a                	sd	a4,16(sp)
   17ed4:	0007b903          	ld	s2,0(a5)
   17ed8:	4785                	li	a5,1
   17eda:	e02ff06f          	j	174dc <_svfprintf_r+0x34c>
   17ede:	67c2                	ld	a5,16(sp)
   17ee0:	639c                	ld	a5,0(a5)
   17ee2:	893e                	mv	s2,a5
   17ee4:	d8aff06f          	j	1746e <_svfprintf_r+0x2de>
   17ee8:	67c2                	ld	a5,16(sp)
   17eea:	0007b903          	ld	s2,0(a5)
   17eee:	de4ff06f          	j	174d2 <_svfprintf_r+0x342>
   17ef2:	67c2                	ld	a5,16(sp)
   17ef4:	07bd                	addi	a5,a5,15
   17ef6:	ff07f713          	andi	a4,a5,-16
   17efa:	631c                	ld	a5,0(a4)
   17efc:	670c                	ld	a1,8(a4)
   17efe:	0741                	addi	a4,a4,16
   17f00:	e83a                	sd	a4,16(sp)
   17f02:	e4cff06f          	j	1754e <_svfprintf_r+0x3be>
   17f06:	00068b9b          	sext.w	s7,a3
   17f0a:	db704ae3          	bgtz	s7,17cbe <_svfprintf_r+0xb2e>
   17f0e:	bbc1                	j	17cde <_svfprintf_r+0xb4e>
   17f10:	67f1                	lui	a5,0x1c
   17f12:	73078793          	addi	a5,a5,1840 # 1c730 <__clzdi2+0xc6>
   17f16:	f43e                	sd	a5,40(sp)
   17f18:	66c2                	ld	a3,16(sp)
   17f1a:	0204f793          	andi	a5,s1,32
   17f1e:	00868713          	addi	a4,a3,8
   17f22:	22078a63          	beqz	a5,18156 <_svfprintf_r+0xfc6>
   17f26:	0006b903          	ld	s2,0(a3)
   17f2a:	0014f793          	andi	a5,s1,1
   17f2e:	cf81                	beqz	a5,17f46 <_svfprintf_r+0xdb6>
   17f30:	00090b63          	beqz	s2,17f46 <_svfprintf_r+0xdb6>
   17f34:	0024e493          	ori	s1,s1,2
   17f38:	03000793          	li	a5,48
   17f3c:	0ef10023          	sb	a5,224(sp)
   17f40:	0fa100a3          	sb	s10,225(sp)
   17f44:	2481                	sext.w	s1,s1
   17f46:	bff4fd93          	andi	s11,s1,-1025
   17f4a:	2d81                	sext.w	s11,s11
   17f4c:	e83a                	sd	a4,16(sp)
   17f4e:	4789                	li	a5,2
   17f50:	d8cff06f          	j	174dc <_svfprintf_r+0x34c>
   17f54:	8da6                	mv	s11,s1
   17f56:	b88d                	j	177c8 <_svfprintf_r+0x638>
   17f58:	0a10                	addi	a2,sp,272
   17f5a:	85d2                	mv	a1,s4
   17f5c:	854e                	mv	a0,s3
   17f5e:	74b010ef          	jal	ra,19ea8 <__ssprint_r>
   17f62:	c00514e3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17f66:	7792                	ld	a5,288(sp)
   17f68:	835a                	mv	t1,s6
   17f6a:	b4a9                	j	179b4 <_svfprintf_r+0x824>
   17f6c:	0204e493          	ori	s1,s1,32
   17f70:	00144e03          	lbu	t3,1(s0)
   17f74:	2481                	sext.w	s1,s1
   17f76:	0405                	addi	s0,s0,1
   17f78:	b22ff06f          	j	1729a <_svfprintf_r+0x10a>
   17f7c:	2004e493          	ori	s1,s1,512
   17f80:	00144e03          	lbu	t3,1(s0)
   17f84:	2481                	sext.w	s1,s1
   17f86:	0405                	addi	s0,s0,1
   17f88:	b12ff06f          	j	1729a <_svfprintf_r+0x10a>
   17f8c:	67f1                	lui	a5,0x1c
   17f8e:	74878793          	addi	a5,a5,1864 # 1c748 <__clzdi2+0xde>
   17f92:	f43e                	sd	a5,40(sp)
   17f94:	b751                	j	17f18 <_svfprintf_r+0xd88>
   17f96:	04000593          	li	a1,64
   17f9a:	854e                	mv	a0,s3
   17f9c:	d3df80ef          	jal	ra,10cd8 <_malloc_r>
   17fa0:	00aa3023          	sd	a0,0(s4)
   17fa4:	00aa3c23          	sd	a0,24(s4)
   17fa8:	420503e3          	beqz	a0,18bce <_svfprintf_r+0x1a3e>
   17fac:	04000793          	li	a5,64
   17fb0:	02fa2023          	sw	a5,32(s4)
   17fb4:	a42ff06f          	j	171f6 <_svfprintf_r+0x66>
   17fb8:	68f5                	lui	a7,0x1d
   17fba:	46c1                	li	a3,16
   17fbc:	11812703          	lw	a4,280(sp)
   17fc0:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   17fc4:	4d41                	li	s10,16
   17fc6:	4c1d                	li	s8,7
   17fc8:	0176c663          	blt	a3,s7,17fd4 <_svfprintf_r+0xe44>
   17fcc:	a5e5                	j	186b4 <_svfprintf_r+0x1524>
   17fce:	3bc1                	addiw	s7,s7,-16
   17fd0:	6f7d5263          	bge	s10,s7,186b4 <_svfprintf_r+0x1524>
   17fd4:	2705                	addiw	a4,a4,1
   17fd6:	07c1                	addi	a5,a5,16
   17fd8:	01b33023          	sd	s11,0(t1)
   17fdc:	01a33423          	sd	s10,8(t1)
   17fe0:	f23e                	sd	a5,288(sp)
   17fe2:	10e12c23          	sw	a4,280(sp)
   17fe6:	0341                	addi	t1,t1,16
   17fe8:	feec53e3          	bge	s8,a4,17fce <_svfprintf_r+0xe3e>
   17fec:	0a10                	addi	a2,sp,272
   17fee:	85d2                	mv	a1,s4
   17ff0:	854e                	mv	a0,s3
   17ff2:	6b7010ef          	jal	ra,19ea8 <__ssprint_r>
   17ff6:	b6051ae3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   17ffa:	7792                	ld	a5,288(sp)
   17ffc:	11812703          	lw	a4,280(sp)
   18000:	835a                	mv	t1,s6
   18002:	b7f1                	j	17fce <_svfprintf_r+0xe3e>
   18004:	8566                	mv	a0,s9
   18006:	f81a                	sd	t1,48(sp)
   18008:	907f90ef          	jal	ra,1190e <strlen>
   1800c:	00050b9b          	sext.w	s7,a0
   18010:	0df14783          	lbu	a5,223(sp)
   18014:	fffbc913          	not	s2,s7
   18018:	43f95913          	srai	s2,s2,0x3f
   1801c:	e86e                	sd	s11,16(sp)
   1801e:	ec02                	sd	zero,24(sp)
   18020:	e882                	sd	zero,80(sp)
   18022:	ec82                	sd	zero,88(sp)
   18024:	e482                	sd	zero,72(sp)
   18026:	7342                	ld	t1,48(sp)
   18028:	01797933          	and	s2,s2,s7
   1802c:	4c01                	li	s8,0
   1802e:	c8079463          	bnez	a5,174b6 <_svfprintf_r+0x326>
   18032:	adeff06f          	j	17310 <_svfprintf_r+0x180>
   18036:	7702                	ld	a4,32(sp)
   18038:	6ef5                	lui	t4,0x1d
   1803a:	4b9d                	li	s7,7
   1803c:	9766                	add	a4,a4,s9
   1803e:	fc3a                	sd	a4,56(sp)
   18040:	6766                	ld	a4,88(sp)
   18042:	4dc1                	li	s11,16
   18044:	070e8d13          	addi	s10,t4,112 # 1d070 <zeroes.0>
   18048:	cb49                	beqz	a4,180da <_svfprintf_r+0xf4a>
   1804a:	6746                	ld	a4,80(sp)
   1804c:	eb51                	bnez	a4,180e0 <_svfprintf_r+0xf50>
   1804e:	7706                	ld	a4,96(sp)
   18050:	177d                	addi	a4,a4,-1
   18052:	f0ba                	sd	a4,96(sp)
   18054:	6766                	ld	a4,88(sp)
   18056:	377d                	addiw	a4,a4,-1
   18058:	ecba                	sd	a4,88(sp)
   1805a:	668a                	ld	a3,128(sp)
   1805c:	11812703          	lw	a4,280(sp)
   18060:	662a                	ld	a2,136(sp)
   18062:	97b6                	add	a5,a5,a3
   18064:	2705                	addiw	a4,a4,1
   18066:	00d33423          	sd	a3,8(t1)
   1806a:	00c33023          	sd	a2,0(t1)
   1806e:	f23e                	sd	a5,288(sp)
   18070:	0007069b          	sext.w	a3,a4
   18074:	10e12c23          	sw	a4,280(sp)
   18078:	0341                	addi	t1,t1,16
   1807a:	0edbc663          	blt	s7,a3,18166 <_svfprintf_r+0xfd6>
   1807e:	7706                	ld	a4,96(sp)
   18080:	00074603          	lbu	a2,0(a4)
   18084:	7762                	ld	a4,56(sp)
   18086:	418706b3          	sub	a3,a4,s8
   1808a:	0006859b          	sext.w	a1,a3
   1808e:	0006071b          	sext.w	a4,a2
   18092:	00b65363          	bge	a2,a1,18098 <_svfprintf_r+0xf08>
   18096:	86ba                	mv	a3,a4
   18098:	2681                	sext.w	a3,a3
   1809a:	02d05663          	blez	a3,180c6 <_svfprintf_r+0xf36>
   1809e:	11812703          	lw	a4,280(sp)
   180a2:	97b6                	add	a5,a5,a3
   180a4:	01833023          	sd	s8,0(t1)
   180a8:	0017061b          	addiw	a2,a4,1
   180ac:	00d33423          	sd	a3,8(t1)
   180b0:	f23e                	sd	a5,288(sp)
   180b2:	10c12c23          	sw	a2,280(sp)
   180b6:	20cbcf63          	blt	s7,a2,182d4 <_svfprintf_r+0x1144>
   180ba:	7706                	ld	a4,96(sp)
   180bc:	0341                	addi	t1,t1,16
   180be:	00074603          	lbu	a2,0(a4)
   180c2:	0006071b          	sext.w	a4,a2
   180c6:	fff6c593          	not	a1,a3
   180ca:	95fd                	srai	a1,a1,0x3f
   180cc:	8eed                	and	a3,a3,a1
   180ce:	9f15                	subw	a4,a4,a3
   180d0:	00e04c63          	bgtz	a4,180e8 <_svfprintf_r+0xf58>
   180d4:	9c32                	add	s8,s8,a2
   180d6:	6766                	ld	a4,88(sp)
   180d8:	fb2d                	bnez	a4,1804a <_svfprintf_r+0xeba>
   180da:	6746                	ld	a4,80(sp)
   180dc:	020702e3          	beqz	a4,18900 <_svfprintf_r+0x1770>
   180e0:	6746                	ld	a4,80(sp)
   180e2:	377d                	addiw	a4,a4,-1
   180e4:	e8ba                	sd	a4,80(sp)
   180e6:	bf95                	j	1805a <_svfprintf_r+0xeca>
   180e8:	11812683          	lw	a3,280(sp)
   180ec:	00edc663          	blt	s11,a4,180f8 <_svfprintf_r+0xf68>
   180f0:	a081                	j	18130 <_svfprintf_r+0xfa0>
   180f2:	3741                	addiw	a4,a4,-16
   180f4:	02edde63          	bge	s11,a4,18130 <_svfprintf_r+0xfa0>
   180f8:	2685                	addiw	a3,a3,1
   180fa:	07c1                	addi	a5,a5,16
   180fc:	01a33023          	sd	s10,0(t1)
   18100:	01b33423          	sd	s11,8(t1)
   18104:	f23e                	sd	a5,288(sp)
   18106:	10d12c23          	sw	a3,280(sp)
   1810a:	0341                	addi	t1,t1,16
   1810c:	fedbd3e3          	bge	s7,a3,180f2 <_svfprintf_r+0xf62>
   18110:	0a10                	addi	a2,sp,272
   18112:	85d2                	mv	a1,s4
   18114:	854e                	mv	a0,s3
   18116:	f83a                	sd	a4,48(sp)
   18118:	591010ef          	jal	ra,19ea8 <__ssprint_r>
   1811c:	a40517e3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   18120:	7742                	ld	a4,48(sp)
   18122:	7792                	ld	a5,288(sp)
   18124:	11812683          	lw	a3,280(sp)
   18128:	3741                	addiw	a4,a4,-16
   1812a:	835a                	mv	t1,s6
   1812c:	fcedc6e3          	blt	s11,a4,180f8 <_svfprintf_r+0xf68>
   18130:	2685                	addiw	a3,a3,1
   18132:	97ba                	add	a5,a5,a4
   18134:	00e33423          	sd	a4,8(t1)
   18138:	01a33023          	sd	s10,0(t1)
   1813c:	f23e                	sd	a5,288(sp)
   1813e:	0006871b          	sext.w	a4,a3
   18142:	10d12c23          	sw	a3,280(sp)
   18146:	7eebc463          	blt	s7,a4,1892e <_svfprintf_r+0x179e>
   1814a:	7706                	ld	a4,96(sp)
   1814c:	0341                	addi	t1,t1,16
   1814e:	00074603          	lbu	a2,0(a4)
   18152:	9c32                	add	s8,s8,a2
   18154:	b749                	j	180d6 <_svfprintf_r+0xf46>
   18156:	0104f793          	andi	a5,s1,16
   1815a:	12078b63          	beqz	a5,18290 <_svfprintf_r+0x1100>
   1815e:	67c2                	ld	a5,16(sp)
   18160:	0007b903          	ld	s2,0(a5)
   18164:	b3d9                	j	17f2a <_svfprintf_r+0xd9a>
   18166:	0a10                	addi	a2,sp,272
   18168:	85d2                	mv	a1,s4
   1816a:	854e                	mv	a0,s3
   1816c:	53d010ef          	jal	ra,19ea8 <__ssprint_r>
   18170:	9e051de3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   18174:	7792                	ld	a5,288(sp)
   18176:	835a                	mv	t1,s6
   18178:	b719                	j	1807e <_svfprintf_r+0xeee>
   1817a:	18c10b93          	addi	s7,sp,396
   1817e:	400df713          	andi	a4,s11,1024
   18182:	f002                	sd	zero,32(sp)
   18184:	865e                	mv	a2,s7
   18186:	44a9                	li	s1,10
   18188:	46a5                	li	a3,9
   1818a:	0ff00893          	li	a7,255
   1818e:	a039                	j	1819c <_svfprintf_r+0x100c>
   18190:	029957b3          	divu	a5,s2,s1
   18194:	8b26f5e3          	bgeu	a3,s2,17a3e <_svfprintf_r+0x8ae>
   18198:	893e                	mv	s2,a5
   1819a:	8666                	mv	a2,s9
   1819c:	7582                	ld	a1,32(sp)
   1819e:	fff60c93          	addi	s9,a2,-1
   181a2:	2585                	addiw	a1,a1,1
   181a4:	f02e                	sd	a1,32(sp)
   181a6:	029977b3          	remu	a5,s2,s1
   181aa:	0307879b          	addiw	a5,a5,48
   181ae:	fef60fa3          	sb	a5,-1(a2)
   181b2:	df79                	beqz	a4,18190 <_svfprintf_r+0x1000>
   181b4:	7786                	ld	a5,96(sp)
   181b6:	0007c783          	lbu	a5,0(a5)
   181ba:	fcf59be3          	bne	a1,a5,18190 <_svfprintf_r+0x1000>
   181be:	fd1789e3          	beq	a5,a7,18190 <_svfprintf_r+0x1000>
   181c2:	8726fee3          	bgeu	a3,s2,17a3e <_svfprintf_r+0x8ae>
   181c6:	678a                	ld	a5,128(sp)
   181c8:	65aa                	ld	a1,136(sp)
   181ca:	f83a                	sd	a4,48(sp)
   181cc:	40fc8cb3          	sub	s9,s9,a5
   181d0:	863e                	mv	a2,a5
   181d2:	8566                	mv	a0,s9
   181d4:	ec1a                	sd	t1,24(sp)
   181d6:	f49fe0ef          	jal	ra,1711e <strncpy>
   181da:	7706                	ld	a4,96(sp)
   181dc:	029957b3          	divu	a5,s2,s1
   181e0:	6362                	ld	t1,24(sp)
   181e2:	00174603          	lbu	a2,1(a4)
   181e6:	f002                	sd	zero,32(sp)
   181e8:	46a5                	li	a3,9
   181ea:	00c03633          	snez	a2,a2
   181ee:	9732                	add	a4,a4,a2
   181f0:	f0ba                	sd	a4,96(sp)
   181f2:	0ff00893          	li	a7,255
   181f6:	7742                	ld	a4,48(sp)
   181f8:	b745                	j	18198 <_svfprintf_r+0x1008>
   181fa:	11812703          	lw	a4,280(sp)
   181fe:	66f1                	lui	a3,0x1c
   18200:	76868693          	addi	a3,a3,1896 # 1c768 <__clzdi2+0xfe>
   18204:	2705                	addiw	a4,a4,1
   18206:	00d33023          	sd	a3,0(t1)
   1820a:	0785                	addi	a5,a5,1
   1820c:	4685                	li	a3,1
   1820e:	00d33423          	sd	a3,8(t1)
   18212:	10e12c23          	sw	a4,280(sp)
   18216:	0007069b          	sext.w	a3,a4
   1821a:	f23e                	sd	a5,288(sp)
   1821c:	471d                	li	a4,7
   1821e:	0341                	addi	t1,t1,16
   18220:	04d74d63          	blt	a4,a3,1827a <_svfprintf_r+0x10ea>
   18224:	12061563          	bnez	a2,1834e <_svfprintf_r+0x11be>
   18228:	7682                	ld	a3,32(sp)
   1822a:	0014f713          	andi	a4,s1,1
   1822e:	8f55                	or	a4,a4,a3
   18230:	98070763          	beqz	a4,173be <_svfprintf_r+0x22e>
   18234:	76a6                	ld	a3,104(sp)
   18236:	11812703          	lw	a4,280(sp)
   1823a:	7646                	ld	a2,112(sp)
   1823c:	97b6                	add	a5,a5,a3
   1823e:	2705                	addiw	a4,a4,1
   18240:	00d33423          	sd	a3,8(t1)
   18244:	10e12c23          	sw	a4,280(sp)
   18248:	0007069b          	sext.w	a3,a4
   1824c:	00c33023          	sd	a2,0(t1)
   18250:	f23e                	sd	a5,288(sp)
   18252:	471d                	li	a4,7
   18254:	50d74e63          	blt	a4,a3,18770 <_svfprintf_r+0x15e0>
   18258:	0341                	addi	t1,t1,16
   1825a:	7702                	ld	a4,32(sp)
   1825c:	0016861b          	addiw	a2,a3,1
   18260:	01933023          	sd	s9,0(t1)
   18264:	97ba                	add	a5,a5,a4
   18266:	00e33423          	sd	a4,8(t1)
   1826a:	f23e                	sd	a5,288(sp)
   1826c:	10c12c23          	sw	a2,280(sp)
   18270:	471d                	li	a4,7
   18272:	94c75563          	bge	a4,a2,173bc <_svfprintf_r+0x22c>
   18276:	c06ff06f          	j	1767c <_svfprintf_r+0x4ec>
   1827a:	0a10                	addi	a2,sp,272
   1827c:	85d2                	mv	a1,s4
   1827e:	854e                	mv	a0,s3
   18280:	429010ef          	jal	ra,19ea8 <__ssprint_r>
   18284:	8e0513e3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   18288:	562e                	lw	a2,232(sp)
   1828a:	7792                	ld	a5,288(sp)
   1828c:	835a                	mv	t1,s6
   1828e:	bf59                	j	18224 <_svfprintf_r+0x1094>
   18290:	66c2                	ld	a3,16(sp)
   18292:	0404f793          	andi	a5,s1,64
   18296:	0006a903          	lw	s2,0(a3)
   1829a:	12078c63          	beqz	a5,183d2 <_svfprintf_r+0x1242>
   1829e:	1942                	slli	s2,s2,0x30
   182a0:	03095913          	srli	s2,s2,0x30
   182a4:	b159                	j	17f2a <_svfprintf_r+0xd9a>
   182a6:	8da6                	mv	s11,s1
   182a8:	e83a                	sd	a4,16(sp)
   182aa:	9daff06f          	j	17484 <_svfprintf_r+0x2f4>
   182ae:	0a10                	addi	a2,sp,272
   182b0:	85d2                	mv	a1,s4
   182b2:	854e                	mv	a0,s3
   182b4:	3f5010ef          	jal	ra,19ea8 <__ssprint_r>
   182b8:	8a0519e3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   182bc:	7792                	ld	a5,288(sp)
   182be:	835a                	mv	t1,s6
   182c0:	ec6ff06f          	j	17986 <_svfprintf_r+0x7f6>
   182c4:	0017069b          	addiw	a3,a4,1
   182c8:	8736                	mv	a4,a3
   182ca:	97de                	add	a5,a5,s7
   182cc:	01b33023          	sd	s11,0(t1)
   182d0:	8dcff06f          	j	173ac <_svfprintf_r+0x21c>
   182d4:	0a10                	addi	a2,sp,272
   182d6:	85d2                	mv	a1,s4
   182d8:	854e                	mv	a0,s3
   182da:	f836                	sd	a3,48(sp)
   182dc:	3cd010ef          	jal	ra,19ea8 <__ssprint_r>
   182e0:	880515e3          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   182e4:	7786                	ld	a5,96(sp)
   182e6:	76c2                	ld	a3,48(sp)
   182e8:	835a                	mv	t1,s6
   182ea:	0007c603          	lbu	a2,0(a5)
   182ee:	7792                	ld	a5,288(sp)
   182f0:	0006071b          	sext.w	a4,a2
   182f4:	bbc9                	j	180c6 <_svfprintf_r+0xf36>
   182f6:	6512                	ld	a0,256(sp)
   182f8:	65b2                	ld	a1,264(sp)
   182fa:	4601                	li	a2,0
   182fc:	4681                	li	a3,0
   182fe:	048030ef          	jal	ra,1b346 <__letf2>
   18302:	6362                	ld	t1,24(sp)
   18304:	64054463          	bltz	a0,1894c <_svfprintf_r+0x17bc>
   18308:	0df14783          	lbu	a5,223(sp)
   1830c:	04700713          	li	a4,71
   18310:	3da75b63          	bge	a4,s10,186e6 <_svfprintf_r+0x1556>
   18314:	6871                	lui	a6,0x1c
   18316:	71880c93          	addi	s9,a6,1816 # 1c718 <__clzdi2+0xae>
   1831a:	f7f4f493          	andi	s1,s1,-129
   1831e:	ec02                	sd	zero,24(sp)
   18320:	e882                	sd	zero,80(sp)
   18322:	ec82                	sd	zero,88(sp)
   18324:	e482                	sd	zero,72(sp)
   18326:	2481                	sext.w	s1,s1
   18328:	490d                	li	s2,3
   1832a:	4b8d                	li	s7,3
   1832c:	4c01                	li	s8,0
   1832e:	98079463          	bnez	a5,174b6 <_svfprintf_r+0x326>
   18332:	fdffe06f          	j	17310 <_svfprintf_r+0x180>
   18336:	4799                	li	a5,6
   18338:	000c0b9b          	sext.w	s7,s8
   1833c:	3d87e463          	bltu	a5,s8,18704 <_svfprintf_r+0x1574>
   18340:	6871                	lui	a6,0x1c
   18342:	895e                	mv	s2,s7
   18344:	e86e                	sd	s11,16(sp)
   18346:	76080c93          	addi	s9,a6,1888 # 1c760 <__clzdi2+0xf6>
   1834a:	fbdfe06f          	j	17306 <_svfprintf_r+0x176>
   1834e:	76a6                	ld	a3,104(sp)
   18350:	11812703          	lw	a4,280(sp)
   18354:	75c6                	ld	a1,112(sp)
   18356:	97b6                	add	a5,a5,a3
   18358:	2705                	addiw	a4,a4,1
   1835a:	00d33423          	sd	a3,8(t1)
   1835e:	00b33023          	sd	a1,0(t1)
   18362:	0007069b          	sext.w	a3,a4
   18366:	10e12c23          	sw	a4,280(sp)
   1836a:	f23e                	sd	a5,288(sp)
   1836c:	471d                	li	a4,7
   1836e:	0341                	addi	t1,t1,16
   18370:	40d74063          	blt	a4,a3,18770 <_svfprintf_r+0x15e0>
   18374:	ee0653e3          	bgez	a2,1825a <_svfprintf_r+0x10ca>
   18378:	68f5                	lui	a7,0x1d
   1837a:	5741                	li	a4,-16
   1837c:	40c00c3b          	negw	s8,a2
   18380:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   18384:	4bc1                	li	s7,16
   18386:	4d1d                	li	s10,7
   18388:	00e64663          	blt	a2,a4,18394 <_svfprintf_r+0x1204>
   1838c:	a54d                	j	18a2e <_svfprintf_r+0x189e>
   1838e:	3c41                	addiw	s8,s8,-16
   18390:	698bdf63          	bge	s7,s8,18a2e <_svfprintf_r+0x189e>
   18394:	2685                	addiw	a3,a3,1
   18396:	07c1                	addi	a5,a5,16
   18398:	01b33023          	sd	s11,0(t1)
   1839c:	01733423          	sd	s7,8(t1)
   183a0:	f23e                	sd	a5,288(sp)
   183a2:	10d12c23          	sw	a3,280(sp)
   183a6:	0341                	addi	t1,t1,16
   183a8:	fedd53e3          	bge	s10,a3,1838e <_svfprintf_r+0x11fe>
   183ac:	0a10                	addi	a2,sp,272
   183ae:	85d2                	mv	a1,s4
   183b0:	854e                	mv	a0,s3
   183b2:	2f7010ef          	jal	ra,19ea8 <__ssprint_r>
   183b6:	fa051a63          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   183ba:	7792                	ld	a5,288(sp)
   183bc:	11812683          	lw	a3,280(sp)
   183c0:	835a                	mv	t1,s6
   183c2:	b7f1                	j	1838e <_svfprintf_r+0x11fe>
   183c4:	2b85                	addiw	s7,s7,1
   183c6:	865e                	mv	a2,s7
   183c8:	9d36                	add	s10,s10,a3
   183ca:	01bc3023          	sd	s11,0(s8)
   183ce:	a78ff06f          	j	17646 <_svfprintf_r+0x4b6>
   183d2:	2004f793          	andi	a5,s1,512
   183d6:	34078763          	beqz	a5,18724 <_svfprintf_r+0x1594>
   183da:	0ff97913          	zext.b	s2,s2
   183de:	b6b1                	j	17f2a <_svfprintf_r+0xd9a>
   183e0:	2004f793          	andi	a5,s1,512
   183e4:	36078563          	beqz	a5,1874e <_svfprintf_r+0x15be>
   183e8:	0ff97913          	zext.b	s2,s2
   183ec:	8e6ff06f          	j	174d2 <_svfprintf_r+0x342>
   183f0:	2004f793          	andi	a5,s1,512
   183f4:	34078a63          	beqz	a5,18748 <_svfprintf_r+0x15b8>
   183f8:	0189191b          	slliw	s2,s2,0x18
   183fc:	4189591b          	sraiw	s2,s2,0x18
   18400:	87ca                	mv	a5,s2
   18402:	86cff06f          	j	1746e <_svfprintf_r+0x2de>
   18406:	200df793          	andi	a5,s11,512
   1840a:	32078263          	beqz	a5,1872e <_svfprintf_r+0x159e>
   1840e:	0ff97913          	zext.b	s2,s2
   18412:	e83a                	sd	a4,16(sp)
   18414:	4785                	li	a5,1
   18416:	8c6ff06f          	j	174dc <_svfprintf_r+0x34c>
   1841a:	07800713          	li	a4,120
   1841e:	0024e793          	ori	a5,s1,2
   18422:	03000693          	li	a3,48
   18426:	2781                	sext.w	a5,a5
   18428:	0ee100a3          	sb	a4,225(sp)
   1842c:	0ed10023          	sb	a3,224(sp)
   18430:	06300713          	li	a4,99
   18434:	f53e                	sd	a5,168(sp)
   18436:	ec02                	sd	zero,24(sp)
   18438:	12810c93          	addi	s9,sp,296
   1843c:	35874963          	blt	a4,s8,1878e <_svfprintf_r+0x15fe>
   18440:	6932                	ld	s2,264(sp)
   18442:	fdfd7793          	andi	a5,s10,-33
   18446:	1024e493          	ori	s1,s1,258
   1844a:	ecbe                	sd	a5,88(sp)
   1844c:	e582                	sd	zero,200(sp)
   1844e:	6b92                	ld	s7,256(sp)
   18450:	2481                	sext.w	s1,s1
   18452:	0e094163          	bltz	s2,18534 <_svfprintf_r+0x13a4>
   18456:	06100793          	li	a5,97
   1845a:	64fd0b63          	beq	s10,a5,18ab0 <_svfprintf_r+0x1920>
   1845e:	fbfd079b          	addiw	a5,s10,-65
   18462:	0007869b          	sext.w	a3,a5
   18466:	02500713          	li	a4,37
   1846a:	00d76c63          	bltu	a4,a3,18482 <_svfprintf_r+0x12f2>
   1846e:	02079713          	slli	a4,a5,0x20
   18472:	01e75793          	srli	a5,a4,0x1e
   18476:	6775                	lui	a4,0x1d
   18478:	fc870713          	addi	a4,a4,-56 # 1cfc8 <p05.0+0x178>
   1847c:	97ba                	add	a5,a5,a4
   1847e:	439c                	lw	a5,0(a5)
   18480:	8782                	jr	a5
   18482:	8de2                	mv	s11,s8
   18484:	4689                	li	a3,2
   18486:	11bc                	addi	a5,sp,232
   18488:	876e                	mv	a4,s11
   1848a:	0f810893          	addi	a7,sp,248
   1848e:	0ec10813          	addi	a6,sp,236
   18492:	85de                	mv	a1,s7
   18494:	864a                	mv	a2,s2
   18496:	854e                	mv	a0,s3
   18498:	f01a                	sd	t1,32(sp)
   1849a:	88dfc0ef          	jal	ra,14d26 <_ldtoa_r>
   1849e:	6766                	ld	a4,88(sp)
   184a0:	04700793          	li	a5,71
   184a4:	7302                	ld	t1,32(sp)
   184a6:	8caa                	mv	s9,a0
   184a8:	46f70b63          	beq	a4,a5,1891e <_svfprintf_r+0x178e>
   184ac:	04600793          	li	a5,70
   184b0:	01b508b3          	add	a7,a0,s11
   184b4:	00f71a63          	bne	a4,a5,184c8 <_svfprintf_r+0x1338>
   184b8:	00054703          	lbu	a4,0(a0)
   184bc:	03000793          	li	a5,48
   184c0:	2ef70b63          	beq	a4,a5,187b6 <_svfprintf_r+0x1626>
   184c4:	572e                	lw	a4,232(sp)
   184c6:	98ba                	add	a7,a7,a4
   184c8:	4681                	li	a3,0
   184ca:	4601                	li	a2,0
   184cc:	855e                	mv	a0,s7
   184ce:	85ca                	mv	a1,s2
   184d0:	f846                	sd	a7,48(sp)
   184d2:	f01a                	sd	t1,32(sp)
   184d4:	52d020ef          	jal	ra,1b200 <__eqtf2>
   184d8:	78c2                	ld	a7,48(sp)
   184da:	7302                	ld	t1,32(sp)
   184dc:	86c6                	mv	a3,a7
   184de:	e13d                	bnez	a0,18544 <_svfprintf_r+0x13b4>
   184e0:	419687bb          	subw	a5,a3,s9
   184e4:	f03e                	sd	a5,32(sp)
   184e6:	572e                	lw	a4,232(sp)
   184e8:	04700793          	li	a5,71
   184ec:	e4ba                	sd	a4,72(sp)
   184ee:	6766                	ld	a4,88(sp)
   184f0:	06f70863          	beq	a4,a5,18560 <_svfprintf_r+0x13d0>
   184f4:	6766                	ld	a4,88(sp)
   184f6:	04600793          	li	a5,70
   184fa:	0cf71663          	bne	a4,a5,185c6 <_svfprintf_r+0x1436>
   184fe:	77aa                	ld	a5,168(sp)
   18500:	6726                	ld	a4,72(sp)
   18502:	8b85                	andi	a5,a5,1
   18504:	00fc67b3          	or	a5,s8,a5
   18508:	68e05363          	blez	a4,18b8e <_svfprintf_r+0x19fe>
   1850c:	64079963          	bnez	a5,18b5e <_svfprintf_r+0x19ce>
   18510:	6ba6                	ld	s7,72(sp)
   18512:	06600d13          	li	s10,102
   18516:	77aa                	ld	a5,168(sp)
   18518:	4007f793          	andi	a5,a5,1024
   1851c:	5c079a63          	bnez	a5,18af0 <_svfprintf_r+0x1960>
   18520:	fffbc913          	not	s2,s7
   18524:	43f95913          	srai	s2,s2,0x3f
   18528:	012bf933          	and	s2,s7,s2
   1852c:	2901                	sext.w	s2,s2
   1852e:	a89d                	j	185a4 <_svfprintf_r+0x1414>
   18530:	ec02                	sd	zero,24(sp)
   18532:	84be                	mv	s1,a5
   18534:	57fd                	li	a5,-1
   18536:	17fe                	slli	a5,a5,0x3f
   18538:	00f94933          	xor	s2,s2,a5
   1853c:	02d00793          	li	a5,45
   18540:	e5be                	sd	a5,200(sp)
   18542:	bf11                	j	18456 <_svfprintf_r+0x12c6>
   18544:	76ee                	ld	a3,248(sp)
   18546:	f916fde3          	bgeu	a3,a7,184e0 <_svfprintf_r+0x1350>
   1854a:	03000713          	li	a4,48
   1854e:	00168793          	addi	a5,a3,1
   18552:	fdbe                	sd	a5,248(sp)
   18554:	00e68023          	sb	a4,0(a3)
   18558:	76ee                	ld	a3,248(sp)
   1855a:	ff16eae3          	bltu	a3,a7,1854e <_svfprintf_r+0x13be>
   1855e:	b749                	j	184e0 <_svfprintf_r+0x1350>
   18560:	6726                	ld	a4,72(sp)
   18562:	57f5                	li	a5,-3
   18564:	04f74d63          	blt	a4,a5,185be <_svfprintf_r+0x142e>
   18568:	04ec4b63          	blt	s8,a4,185be <_svfprintf_r+0x142e>
   1856c:	7782                	ld	a5,32(sp)
   1856e:	6726                	ld	a4,72(sp)
   18570:	44f74063          	blt	a4,a5,189b0 <_svfprintf_r+0x1820>
   18574:	77aa                	ld	a5,168(sp)
   18576:	6726                	ld	a4,72(sp)
   18578:	8b85                	andi	a5,a5,1
   1857a:	8bba                	mv	s7,a4
   1857c:	c781                	beqz	a5,18584 <_svfprintf_r+0x13f4>
   1857e:	77a6                	ld	a5,104(sp)
   18580:	00e78bbb          	addw	s7,a5,a4
   18584:	77aa                	ld	a5,168(sp)
   18586:	4007f793          	andi	a5,a5,1024
   1858a:	c781                	beqz	a5,18592 <_svfprintf_r+0x1402>
   1858c:	67a6                	ld	a5,72(sp)
   1858e:	54f04f63          	bgtz	a5,18aec <_svfprintf_r+0x195c>
   18592:	fffbc913          	not	s2,s7
   18596:	43f95913          	srai	s2,s2,0x3f
   1859a:	012bf933          	and	s2,s7,s2
   1859e:	2901                	sext.w	s2,s2
   185a0:	06700d13          	li	s10,103
   185a4:	e882                	sd	zero,80(sp)
   185a6:	ec82                	sd	zero,88(sp)
   185a8:	67ae                	ld	a5,200(sp)
   185aa:	36078263          	beqz	a5,1890e <_svfprintf_r+0x177e>
   185ae:	02d00793          	li	a5,45
   185b2:	0cf10fa3          	sb	a5,223(sp)
   185b6:	4c01                	li	s8,0
   185b8:	2905                	addiw	s2,s2,1
   185ba:	d57fe06f          	j	17310 <_svfprintf_r+0x180>
   185be:	3d79                	addiw	s10,s10,-2
   185c0:	fdfd7793          	andi	a5,s10,-33
   185c4:	ecbe                	sd	a5,88(sp)
   185c6:	67a6                	ld	a5,72(sp)
   185c8:	65e6                	ld	a1,88(sp)
   185ca:	04100713          	li	a4,65
   185ce:	fff7869b          	addiw	a3,a5,-1
   185d2:	d5b6                	sw	a3,232(sp)
   185d4:	0ffd7793          	zext.b	a5,s10
   185d8:	4601                	li	a2,0
   185da:	1ce58963          	beq	a1,a4,187ac <_svfprintf_r+0x161c>
   185de:	0ef10823          	sb	a5,240(sp)
   185e2:	02b00793          	li	a5,43
   185e6:	0006d763          	bgez	a3,185f4 <_svfprintf_r+0x1464>
   185ea:	67a6                	ld	a5,72(sp)
   185ec:	4685                	li	a3,1
   185ee:	9e9d                	subw	a3,a3,a5
   185f0:	02d00793          	li	a5,45
   185f4:	0ef108a3          	sb	a5,241(sp)
   185f8:	47a5                	li	a5,9
   185fa:	46d7d363          	bge	a5,a3,18a60 <_svfprintf_r+0x18d0>
   185fe:	0ff10e93          	addi	t4,sp,255
   18602:	8676                	mv	a2,t4
   18604:	45a9                	li	a1,10
   18606:	06300793          	li	a5,99
   1860a:	02b6e73b          	remw	a4,a3,a1
   1860e:	88b2                	mv	a7,a2
   18610:	8536                	mv	a0,a3
   18612:	167d                	addi	a2,a2,-1
   18614:	0307071b          	addiw	a4,a4,48
   18618:	fee88fa3          	sb	a4,-1(a7)
   1861c:	02b6c6bb          	divw	a3,a3,a1
   18620:	fea7c5e3          	blt	a5,a0,1860a <_svfprintf_r+0x147a>
   18624:	0306869b          	addiw	a3,a3,48
   18628:	0ff6f693          	zext.b	a3,a3
   1862c:	ffe88793          	addi	a5,a7,-2
   18630:	fed60fa3          	sb	a3,-1(a2)
   18634:	59d7f263          	bgeu	a5,t4,18bb8 <_svfprintf_r+0x1a28>
   18638:	0f210713          	addi	a4,sp,242
   1863c:	a019                	j	18642 <_svfprintf_r+0x14b2>
   1863e:	0007c683          	lbu	a3,0(a5)
   18642:	00d70023          	sb	a3,0(a4)
   18646:	0785                	addi	a5,a5,1
   18648:	0705                	addi	a4,a4,1
   1864a:	ffd79ae3          	bne	a5,t4,1863e <_svfprintf_r+0x14ae>
   1864e:	10110793          	addi	a5,sp,257
   18652:	0f210713          	addi	a4,sp,242
   18656:	411787b3          	sub	a5,a5,a7
   1865a:	97ba                	add	a5,a5,a4
   1865c:	1998                	addi	a4,sp,240
   1865e:	9f99                	subw	a5,a5,a4
   18660:	fcbe                	sd	a5,120(sp)
   18662:	77e6                	ld	a5,120(sp)
   18664:	7682                	ld	a3,32(sp)
   18666:	4705                	li	a4,1
   18668:	00f68bbb          	addw	s7,a3,a5
   1866c:	87de                	mv	a5,s7
   1866e:	40d75d63          	bge	a4,a3,18a88 <_svfprintf_r+0x18f8>
   18672:	7726                	ld	a4,104(sp)
   18674:	00e78bbb          	addw	s7,a5,a4
   18678:	77aa                	ld	a5,168(sp)
   1867a:	fffbc913          	not	s2,s7
   1867e:	43f95913          	srai	s2,s2,0x3f
   18682:	bff7f493          	andi	s1,a5,-1025
   18686:	2481                	sext.w	s1,s1
   18688:	012bf933          	and	s2,s7,s2
   1868c:	1004e493          	ori	s1,s1,256
   18690:	2901                	sext.w	s2,s2
   18692:	e882                	sd	zero,80(sp)
   18694:	ec82                	sd	zero,88(sp)
   18696:	e482                	sd	zero,72(sp)
   18698:	bf01                	j	185a8 <_svfprintf_r+0x1418>
   1869a:	67b2                	ld	a5,264(sp)
   1869c:	0c07c563          	bltz	a5,18766 <_svfprintf_r+0x15d6>
   186a0:	0df14783          	lbu	a5,223(sp)
   186a4:	04700713          	li	a4,71
   186a8:	31a75063          	bge	a4,s10,189a8 <_svfprintf_r+0x1818>
   186ac:	6871                	lui	a6,0x1c
   186ae:	72880c93          	addi	s9,a6,1832 # 1c728 <__clzdi2+0xbe>
   186b2:	b1a5                	j	1831a <_svfprintf_r+0x118a>
   186b4:	0017069b          	addiw	a3,a4,1
   186b8:	97de                	add	a5,a5,s7
   186ba:	01b33023          	sd	s11,0(t1)
   186be:	01733423          	sd	s7,8(t1)
   186c2:	f23e                	sd	a5,288(sp)
   186c4:	10d12c23          	sw	a3,280(sp)
   186c8:	471d                	li	a4,7
   186ca:	0341                	addi	t1,t1,16
   186cc:	e2d75363          	bge	a4,a3,17cf2 <_svfprintf_r+0xb62>
   186d0:	0a10                	addi	a2,sp,272
   186d2:	85d2                	mv	a1,s4
   186d4:	854e                	mv	a0,s3
   186d6:	7d2010ef          	jal	ra,19ea8 <__ssprint_r>
   186da:	c8051863          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   186de:	7792                	ld	a5,288(sp)
   186e0:	835a                	mv	t1,s6
   186e2:	e10ff06f          	j	17cf2 <_svfprintf_r+0xb62>
   186e6:	6871                	lui	a6,0x1c
   186e8:	71080c93          	addi	s9,a6,1808 # 1c710 <__clzdi2+0xa6>
   186ec:	b13d                	j	1831a <_svfprintf_r+0x118a>
   186ee:	0a10                	addi	a2,sp,272
   186f0:	85d2                	mv	a1,s4
   186f2:	854e                	mv	a0,s3
   186f4:	7b4010ef          	jal	ra,19ea8 <__ssprint_r>
   186f8:	c6051963          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   186fc:	7792                	ld	a5,288(sp)
   186fe:	835a                	mv	t1,s6
   18700:	ddeff06f          	j	17cde <_svfprintf_r+0xb4e>
   18704:	4b99                	li	s7,6
   18706:	b92d                	j	18340 <_svfprintf_r+0x11b0>
   18708:	7682                	ld	a3,32(sp)
   1870a:	00dc8bb3          	add	s7,s9,a3
   1870e:	418b8bb3          	sub	s7,s7,s8
   18712:	9e99                	subw	a3,a3,a4
   18714:	000b861b          	sext.w	a2,s7
   18718:	00c6d363          	bge	a3,a2,1871e <_svfprintf_r+0x158e>
   1871c:	8bb6                	mv	s7,a3
   1871e:	2b81                	sext.w	s7,s7
   18720:	e52ff06f          	j	17d72 <_svfprintf_r+0xbe2>
   18724:	1902                	slli	s2,s2,0x20
   18726:	02095913          	srli	s2,s2,0x20
   1872a:	801ff06f          	j	17f2a <_svfprintf_r+0xd9a>
   1872e:	1902                	slli	s2,s2,0x20
   18730:	02095913          	srli	s2,s2,0x20
   18734:	e83a                	sd	a4,16(sp)
   18736:	4785                	li	a5,1
   18738:	da5fe06f          	j	174dc <_svfprintf_r+0x34c>
   1873c:	67a2                	ld	a5,8(sp)
   1873e:	8ca2                	mv	s9,s0
   18740:	00f71023          	sh	a5,0(a4)
   18744:	cadfe06f          	j	173f0 <_svfprintf_r+0x260>
   18748:	87ca                	mv	a5,s2
   1874a:	d25fe06f          	j	1746e <_svfprintf_r+0x2de>
   1874e:	1902                	slli	s2,s2,0x20
   18750:	02095913          	srli	s2,s2,0x20
   18754:	d7ffe06f          	j	174d2 <_svfprintf_r+0x342>
   18758:	0a10                	addi	a2,sp,272
   1875a:	85d2                	mv	a1,s4
   1875c:	854e                	mv	a0,s3
   1875e:	74a010ef          	jal	ra,19ea8 <__ssprint_r>
   18762:	c9ffe06f          	j	17400 <_svfprintf_r+0x270>
   18766:	02d00793          	li	a5,45
   1876a:	0cf10fa3          	sb	a5,223(sp)
   1876e:	bf1d                	j	186a4 <_svfprintf_r+0x1514>
   18770:	0a10                	addi	a2,sp,272
   18772:	85d2                	mv	a1,s4
   18774:	854e                	mv	a0,s3
   18776:	732010ef          	jal	ra,19ea8 <__ssprint_r>
   1877a:	be051863          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   1877e:	562e                	lw	a2,232(sp)
   18780:	7792                	ld	a5,288(sp)
   18782:	11812683          	lw	a3,280(sp)
   18786:	835a                	mv	t1,s6
   18788:	ac0659e3          	bgez	a2,1825a <_svfprintf_r+0x10ca>
   1878c:	b6f5                	j	18378 <_svfprintf_r+0x11e8>
   1878e:	001c059b          	addiw	a1,s8,1
   18792:	854e                	mv	a0,s3
   18794:	ec1a                	sd	t1,24(sp)
   18796:	d42f80ef          	jal	ra,10cd8 <_malloc_r>
   1879a:	6362                	ld	t1,24(sp)
   1879c:	8caa                	mv	s9,a0
   1879e:	42050063          	beqz	a0,18bbe <_svfprintf_r+0x1a2e>
   187a2:	ec2a                	sd	a0,24(sp)
   187a4:	b971                	j	18440 <_svfprintf_r+0x12b0>
   187a6:	4c19                	li	s8,6
   187a8:	df7fe06f          	j	1759e <_svfprintf_r+0x40e>
   187ac:	27bd                	addiw	a5,a5,15
   187ae:	0ff7f793          	zext.b	a5,a5
   187b2:	4605                	li	a2,1
   187b4:	b52d                	j	185de <_svfprintf_r+0x144e>
   187b6:	4601                	li	a2,0
   187b8:	4681                	li	a3,0
   187ba:	855e                	mv	a0,s7
   187bc:	85ca                	mv	a1,s2
   187be:	f846                	sd	a7,48(sp)
   187c0:	f01a                	sd	t1,32(sp)
   187c2:	23f020ef          	jal	ra,1b200 <__eqtf2>
   187c6:	7302                	ld	t1,32(sp)
   187c8:	78c2                	ld	a7,48(sp)
   187ca:	ce050de3          	beqz	a0,184c4 <_svfprintf_r+0x1334>
   187ce:	4785                	li	a5,1
   187d0:	41b7873b          	subw	a4,a5,s11
   187d4:	d5ba                	sw	a4,232(sp)
   187d6:	98ba                	add	a7,a7,a4
   187d8:	b9c5                	j	184c8 <_svfprintf_r+0x1338>
   187da:	001c0d9b          	addiw	s11,s8,1
   187de:	4689                	li	a3,2
   187e0:	b15d                	j	18486 <_svfprintf_r+0x12f6>
   187e2:	8de2                	mv	s11,s8
   187e4:	468d                	li	a3,3
   187e6:	b145                	j	18486 <_svfprintf_r+0x12f6>
   187e8:	85ca                	mv	a1,s2
   187ea:	855e                	mv	a0,s7
   187ec:	f81a                	sd	t1,48(sp)
   187ee:	45d030ef          	jal	ra,1c44a <__trunctfdf2>
   187f2:	11a8                	addi	a0,sp,232
   187f4:	823fe0ef          	jal	ra,17016 <frexp>
   187f8:	38f030ef          	jal	ra,1c386 <__extenddftf2>
   187fc:	768a                	ld	a3,160(sp)
   187fe:	4601                	li	a2,0
   18800:	3ed020ef          	jal	ra,1b3ec <__multf3>
   18804:	4601                	li	a2,0
   18806:	4681                	li	a3,0
   18808:	8baa                	mv	s7,a0
   1880a:	f02e                	sd	a1,32(sp)
   1880c:	1f5020ef          	jal	ra,1b200 <__eqtf2>
   18810:	7f82                	ld	t6,32(sp)
   18812:	7342                	ld	t1,48(sp)
   18814:	e119                	bnez	a0,1881a <_svfprintf_r+0x168a>
   18816:	4785                	li	a5,1
   18818:	d5be                	sw	a5,232(sp)
   1881a:	67f1                	lui	a5,0x1c
   1881c:	74878793          	addi	a5,a5,1864 # 1c748 <__clzdi2+0xde>
   18820:	e4be                	sd	a5,72(sp)
   18822:	020c1793          	slli	a5,s8,0x20
   18826:	9381                	srli	a5,a5,0x20
   18828:	0785                	addi	a5,a5,1
   1882a:	97e6                	add	a5,a5,s9
   1882c:	f93e                	sd	a5,176(sp)
   1882e:	018c87bb          	addw	a5,s9,s8
   18832:	8de6                	mv	s11,s9
   18834:	c3be                	sw	a5,196(sp)
   18836:	a829                	j	18850 <_svfprintf_r+0x16c0>
   18838:	4601                	li	a2,0
   1883a:	4681                	li	a3,0
   1883c:	f01a                	sd	t1,32(sp)
   1883e:	fc2e                	sd	a1,56(sp)
   18840:	f82a                	sd	a0,48(sp)
   18842:	1bf020ef          	jal	ra,1b200 <__eqtf2>
   18846:	77e2                	ld	a5,56(sp)
   18848:	7302                	ld	t1,32(sp)
   1884a:	88de                	mv	a7,s7
   1884c:	8fbe                	mv	t6,a5
   1884e:	cd31                	beqz	a0,188aa <_svfprintf_r+0x171a>
   18850:	66ca                	ld	a3,144(sp)
   18852:	4601                	li	a2,0
   18854:	85fe                	mv	a1,t6
   18856:	855e                	mv	a0,s7
   18858:	f81a                	sd	t1,48(sp)
   1885a:	393020ef          	jal	ra,1b3ec <__multf3>
   1885e:	8bae                	mv	s7,a1
   18860:	f02a                	sd	a0,32(sp)
   18862:	23d030ef          	jal	ra,1c29e <__fixtfsi>
   18866:	0005091b          	sext.w	s2,a0
   1886a:	854a                	mv	a0,s2
   1886c:	2c5030ef          	jal	ra,1c330 <__floatsitf>
   18870:	7782                	ld	a5,32(sp)
   18872:	86ae                	mv	a3,a1
   18874:	862a                	mv	a2,a0
   18876:	85de                	mv	a1,s7
   18878:	853e                	mv	a0,a5
   1887a:	19c030ef          	jal	ra,1ba16 <__subtf3>
   1887e:	67a6                	ld	a5,72(sp)
   18880:	471e                	lw	a4,196(sp)
   18882:	fd6e                	sd	s11,184(sp)
   18884:	97ca                	add	a5,a5,s2
   18886:	0d85                	addi	s11,s11,1
   18888:	0007c683          	lbu	a3,0(a5)
   1888c:	41b7073b          	subw	a4,a4,s11
   18890:	e8ba                	sd	a4,80(sp)
   18892:	774a                	ld	a4,176(sp)
   18894:	fedd8fa3          	sb	a3,-1(s11)
   18898:	e0ae                	sd	a1,64(sp)
   1889a:	7342                	ld	t1,48(sp)
   1889c:	87ae                	mv	a5,a1
   1889e:	88aa                	mv	a7,a0
   188a0:	8baa                	mv	s7,a0
   188a2:	f9b71be3          	bne	a4,s11,18838 <_svfprintf_r+0x16a8>
   188a6:	577d                	li	a4,-1
   188a8:	e8ba                	sd	a4,80(sp)
   188aa:	66ea                	ld	a3,152(sp)
   188ac:	4601                	li	a2,0
   188ae:	8546                	mv	a0,a7
   188b0:	85be                	mv	a1,a5
   188b2:	f01a                	sd	t1,32(sp)
   188b4:	fc46                	sd	a7,56(sp)
   188b6:	f83e                	sd	a5,48(sp)
   188b8:	1e9020ef          	jal	ra,1b2a0 <__getf2>
   188bc:	7302                	ld	t1,32(sp)
   188be:	10a04e63          	bgtz	a0,189da <_svfprintf_r+0x184a>
   188c2:	78e2                	ld	a7,56(sp)
   188c4:	77c2                	ld	a5,48(sp)
   188c6:	66ea                	ld	a3,152(sp)
   188c8:	4601                	li	a2,0
   188ca:	8546                	mv	a0,a7
   188cc:	85be                	mv	a1,a5
   188ce:	133020ef          	jal	ra,1b200 <__eqtf2>
   188d2:	7302                	ld	t1,32(sp)
   188d4:	e509                	bnez	a0,188de <_svfprintf_r+0x174e>
   188d6:	00197913          	andi	s2,s2,1
   188da:	10091063          	bnez	s2,189da <_svfprintf_r+0x184a>
   188de:	6746                	ld	a4,80(sp)
   188e0:	03000693          	li	a3,48
   188e4:	0017079b          	addiw	a5,a4,1
   188e8:	97ee                	add	a5,a5,s11
   188ea:	00074763          	bltz	a4,188f8 <_svfprintf_r+0x1768>
   188ee:	0d85                	addi	s11,s11,1
   188f0:	fedd8fa3          	sb	a3,-1(s11)
   188f4:	ffb79de3          	bne	a5,s11,188ee <_svfprintf_r+0x175e>
   188f8:	419d87bb          	subw	a5,s11,s9
   188fc:	f03e                	sd	a5,32(sp)
   188fe:	b6e5                	j	184e6 <_svfprintf_r+0x1356>
   18900:	7702                	ld	a4,32(sp)
   18902:	9766                	add	a4,a4,s9
   18904:	bf877e63          	bgeu	a4,s8,17d00 <_svfprintf_r+0xb70>
   18908:	8c3a                	mv	s8,a4
   1890a:	bf6ff06f          	j	17d00 <_svfprintf_r+0xb70>
   1890e:	0df14783          	lbu	a5,223(sp)
   18912:	4c01                	li	s8,0
   18914:	c399                	beqz	a5,1891a <_svfprintf_r+0x178a>
   18916:	ba1fe06f          	j	174b6 <_svfprintf_r+0x326>
   1891a:	9f7fe06f          	j	17310 <_svfprintf_r+0x180>
   1891e:	77aa                	ld	a5,168(sp)
   18920:	01b508b3          	add	a7,a0,s11
   18924:	8b85                	andi	a5,a5,1
   18926:	ba0791e3          	bnez	a5,184c8 <_svfprintf_r+0x1338>
   1892a:	76ee                	ld	a3,248(sp)
   1892c:	be55                	j	184e0 <_svfprintf_r+0x1350>
   1892e:	0a10                	addi	a2,sp,272
   18930:	85d2                	mv	a1,s4
   18932:	854e                	mv	a0,s3
   18934:	574010ef          	jal	ra,19ea8 <__ssprint_r>
   18938:	a2051963          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   1893c:	7786                	ld	a5,96(sp)
   1893e:	835a                	mv	t1,s6
   18940:	0007c603          	lbu	a2,0(a5)
   18944:	7792                	ld	a5,288(sp)
   18946:	9c32                	add	s8,s8,a2
   18948:	f8eff06f          	j	180d6 <_svfprintf_r+0xf46>
   1894c:	02d00793          	li	a5,45
   18950:	0cf10fa3          	sb	a5,223(sp)
   18954:	ba65                	j	1830c <_svfprintf_r+0x117c>
   18956:	0a10                	addi	a2,sp,272
   18958:	85d2                	mv	a1,s4
   1895a:	854e                	mv	a0,s3
   1895c:	54c010ef          	jal	ra,19ea8 <__ssprint_r>
   18960:	a0051563          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   18964:	572e                	lw	a4,232(sp)
   18966:	7792                	ld	a5,288(sp)
   18968:	835a                	mv	t1,s6
   1896a:	bccff06f          	j	17d36 <_svfprintf_r+0xba6>
   1896e:	0df14783          	lbu	a5,223(sp)
   18972:	e86e                	sd	s11,16(sp)
   18974:	e882                	sd	zero,80(sp)
   18976:	ec82                	sd	zero,88(sp)
   18978:	e482                	sd	zero,72(sp)
   1897a:	8962                	mv	s2,s8
   1897c:	8be2                	mv	s7,s8
   1897e:	4c01                	li	s8,0
   18980:	c399                	beqz	a5,18986 <_svfprintf_r+0x17f6>
   18982:	b35fe06f          	j	174b6 <_svfprintf_r+0x326>
   18986:	98bfe06f          	j	17310 <_svfprintf_r+0x180>
   1898a:	0a10                	addi	a2,sp,272
   1898c:	85d2                	mv	a1,s4
   1898e:	854e                	mv	a0,s3
   18990:	518010ef          	jal	ra,19ea8 <__ssprint_r>
   18994:	9c051b63          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   18998:	56ae                	lw	a3,232(sp)
   1899a:	7702                	ld	a4,32(sp)
   1899c:	7792                	ld	a5,288(sp)
   1899e:	835a                	mv	t1,s6
   189a0:	40d706bb          	subw	a3,a4,a3
   189a4:	bceff06f          	j	17d72 <_svfprintf_r+0xbe2>
   189a8:	6871                	lui	a6,0x1c
   189aa:	72080c93          	addi	s9,a6,1824 # 1c720 <__clzdi2+0xb6>
   189ae:	b2b5                	j	1831a <_svfprintf_r+0x118a>
   189b0:	7702                	ld	a4,32(sp)
   189b2:	77a6                	ld	a5,104(sp)
   189b4:	06700d13          	li	s10,103
   189b8:	00e78bbb          	addw	s7,a5,a4
   189bc:	6726                	ld	a4,72(sp)
   189be:	b4e04ce3          	bgtz	a4,18516 <_svfprintf_r+0x1386>
   189c2:	40eb87bb          	subw	a5,s7,a4
   189c6:	2785                	addiw	a5,a5,1
   189c8:	00078b9b          	sext.w	s7,a5
   189cc:	fffbc713          	not	a4,s7
   189d0:	977d                	srai	a4,a4,0x3f
   189d2:	8ff9                	and	a5,a5,a4
   189d4:	0007891b          	sext.w	s2,a5
   189d8:	b6f1                	j	185a4 <_svfprintf_r+0x1414>
   189da:	77ea                	ld	a5,184(sp)
   189dc:	fdbe                	sd	a5,248(sp)
   189de:	67a6                	ld	a5,72(sp)
   189e0:	fffdc683          	lbu	a3,-1(s11)
   189e4:	00f7c603          	lbu	a2,15(a5)
   189e8:	87ee                	mv	a5,s11
   189ea:	00d61e63          	bne	a2,a3,18a06 <_svfprintf_r+0x1876>
   189ee:	03000593          	li	a1,48
   189f2:	feb78fa3          	sb	a1,-1(a5)
   189f6:	77ee                	ld	a5,248(sp)
   189f8:	fff78693          	addi	a3,a5,-1
   189fc:	fdb6                	sd	a3,248(sp)
   189fe:	fff7c683          	lbu	a3,-1(a5)
   18a02:	fed608e3          	beq	a2,a3,189f2 <_svfprintf_r+0x1862>
   18a06:	0016861b          	addiw	a2,a3,1
   18a0a:	03900593          	li	a1,57
   18a0e:	0ff67613          	zext.b	a2,a2
   18a12:	00b68563          	beq	a3,a1,18a1c <_svfprintf_r+0x188c>
   18a16:	fec78fa3          	sb	a2,-1(a5)
   18a1a:	bdf9                	j	188f8 <_svfprintf_r+0x1768>
   18a1c:	6726                	ld	a4,72(sp)
   18a1e:	00a74603          	lbu	a2,10(a4)
   18a22:	fec78fa3          	sb	a2,-1(a5)
   18a26:	bdc9                	j	188f8 <_svfprintf_r+0x1768>
   18a28:	8da6                	mv	s11,s1
   18a2a:	a61fe06f          	j	1748a <_svfprintf_r+0x2fa>
   18a2e:	2685                	addiw	a3,a3,1
   18a30:	97e2                	add	a5,a5,s8
   18a32:	01b33023          	sd	s11,0(t1)
   18a36:	01833423          	sd	s8,8(t1)
   18a3a:	f23e                	sd	a5,288(sp)
   18a3c:	10d12c23          	sw	a3,280(sp)
   18a40:	471d                	li	a4,7
   18a42:	80d75be3          	bge	a4,a3,18258 <_svfprintf_r+0x10c8>
   18a46:	0a10                	addi	a2,sp,272
   18a48:	85d2                	mv	a1,s4
   18a4a:	854e                	mv	a0,s3
   18a4c:	45c010ef          	jal	ra,19ea8 <__ssprint_r>
   18a50:	90051d63          	bnez	a0,17b6a <_svfprintf_r+0x9da>
   18a54:	7792                	ld	a5,288(sp)
   18a56:	11812683          	lw	a3,280(sp)
   18a5a:	835a                	mv	t1,s6
   18a5c:	ffeff06f          	j	1825a <_svfprintf_r+0x10ca>
   18a60:	0f210713          	addi	a4,sp,242
   18a64:	e619                	bnez	a2,18a72 <_svfprintf_r+0x18e2>
   18a66:	03000793          	li	a5,48
   18a6a:	0ef10923          	sb	a5,242(sp)
   18a6e:	0f310713          	addi	a4,sp,243
   18a72:	0306879b          	addiw	a5,a3,48
   18a76:	0c14                	addi	a3,sp,528
   18a78:	40d706b3          	sub	a3,a4,a3
   18a7c:	00f70023          	sb	a5,0(a4)
   18a80:	1216879b          	addiw	a5,a3,289
   18a84:	fcbe                	sd	a5,120(sp)
   18a86:	bef1                	j	18662 <_svfprintf_r+0x14d2>
   18a88:	772a                	ld	a4,168(sp)
   18a8a:	8b05                	andi	a4,a4,1
   18a8c:	be0706e3          	beqz	a4,18678 <_svfprintf_r+0x14e8>
   18a90:	b6cd                	j	18672 <_svfprintf_r+0x14e2>
   18a92:	000c0463          	beqz	s8,18a9a <_svfprintf_r+0x190a>
   18a96:	b09fe06f          	j	1759e <_svfprintf_r+0x40e>
   18a9a:	4c05                	li	s8,1
   18a9c:	b03fe06f          	j	1759e <_svfprintf_r+0x40e>
   18aa0:	57fd                	li	a5,-1
   18aa2:	e43e                	sd	a5,8(sp)
   18aa4:	96bfe06f          	j	1740e <_svfprintf_r+0x27e>
   18aa8:	c31c                	sw	a5,0(a4)
   18aaa:	8ca2                	mv	s9,s0
   18aac:	945fe06f          	j	173f0 <_svfprintf_r+0x260>
   18ab0:	85ca                	mv	a1,s2
   18ab2:	855e                	mv	a0,s7
   18ab4:	f81a                	sd	t1,48(sp)
   18ab6:	195030ef          	jal	ra,1c44a <__trunctfdf2>
   18aba:	11a8                	addi	a0,sp,232
   18abc:	d5afe0ef          	jal	ra,17016 <frexp>
   18ac0:	0c7030ef          	jal	ra,1c386 <__extenddftf2>
   18ac4:	768a                	ld	a3,160(sp)
   18ac6:	4601                	li	a2,0
   18ac8:	125020ef          	jal	ra,1b3ec <__multf3>
   18acc:	4601                	li	a2,0
   18ace:	4681                	li	a3,0
   18ad0:	8baa                	mv	s7,a0
   18ad2:	f02e                	sd	a1,32(sp)
   18ad4:	72c020ef          	jal	ra,1b200 <__eqtf2>
   18ad8:	7f82                	ld	t6,32(sp)
   18ada:	7342                	ld	t1,48(sp)
   18adc:	e119                	bnez	a0,18ae2 <_svfprintf_r+0x1952>
   18ade:	4785                	li	a5,1
   18ae0:	d5be                	sw	a5,232(sp)
   18ae2:	67f1                	lui	a5,0x1c
   18ae4:	73078793          	addi	a5,a5,1840 # 1c730 <__clzdi2+0xc6>
   18ae8:	e4be                	sd	a5,72(sp)
   18aea:	bb25                	j	18822 <_svfprintf_r+0x1692>
   18aec:	06700d13          	li	s10,103
   18af0:	7786                	ld	a5,96(sp)
   18af2:	0ff00713          	li	a4,255
   18af6:	e882                	sd	zero,80(sp)
   18af8:	0007c783          	lbu	a5,0(a5)
   18afc:	ec82                	sd	zero,88(sp)
   18afe:	02e78863          	beq	a5,a4,18b2e <_svfprintf_r+0x199e>
   18b02:	0ff00693          	li	a3,255
   18b06:	6626                	ld	a2,72(sp)
   18b08:	0007871b          	sext.w	a4,a5
   18b0c:	02c7d163          	bge	a5,a2,18b2e <_svfprintf_r+0x199e>
   18b10:	7586                	ld	a1,96(sp)
   18b12:	40e6073b          	subw	a4,a2,a4
   18b16:	e4ba                	sd	a4,72(sp)
   18b18:	0015c783          	lbu	a5,1(a1)
   18b1c:	cb95                	beqz	a5,18b50 <_svfprintf_r+0x19c0>
   18b1e:	6766                	ld	a4,88(sp)
   18b20:	2705                	addiw	a4,a4,1
   18b22:	ecba                	sd	a4,88(sp)
   18b24:	00158713          	addi	a4,a1,1
   18b28:	f0ba                	sd	a4,96(sp)
   18b2a:	fcd79ee3          	bne	a5,a3,18b06 <_svfprintf_r+0x1976>
   18b2e:	6766                	ld	a4,88(sp)
   18b30:	67c6                	ld	a5,80(sp)
   18b32:	9fb9                	addw	a5,a5,a4
   18b34:	670a                	ld	a4,128(sp)
   18b36:	02e787bb          	mulw	a5,a5,a4
   18b3a:	017787bb          	addw	a5,a5,s7
   18b3e:	00078b9b          	sext.w	s7,a5
   18b42:	fffbc713          	not	a4,s7
   18b46:	977d                	srai	a4,a4,0x3f
   18b48:	8ff9                	and	a5,a5,a4
   18b4a:	0007891b          	sext.w	s2,a5
   18b4e:	bca9                	j	185a8 <_svfprintf_r+0x1418>
   18b50:	6746                	ld	a4,80(sp)
   18b52:	7786                	ld	a5,96(sp)
   18b54:	2705                	addiw	a4,a4,1
   18b56:	0007c783          	lbu	a5,0(a5)
   18b5a:	e8ba                	sd	a4,80(sp)
   18b5c:	b7f9                	j	18b2a <_svfprintf_r+0x199a>
   18b5e:	77a6                	ld	a5,104(sp)
   18b60:	06600d13          	li	s10,102
   18b64:	00e78bbb          	addw	s7,a5,a4
   18b68:	018b8bbb          	addw	s7,s7,s8
   18b6c:	b26d                	j	18516 <_svfprintf_r+0x1386>
   18b6e:	66c2                	ld	a3,16(sp)
   18b70:	4298                	lw	a4,0(a3)
   18b72:	00868613          	addi	a2,a3,8
   18b76:	86ba                	mv	a3,a4
   18b78:	00075363          	bgez	a4,18b7e <_svfprintf_r+0x19ee>
   18b7c:	56fd                	li	a3,-1
   18b7e:	00144e03          	lbu	t3,1(s0)
   18b82:	00068c1b          	sext.w	s8,a3
   18b86:	e832                	sd	a2,16(sp)
   18b88:	843e                	mv	s0,a5
   18b8a:	f10fe06f          	j	1729a <_svfprintf_r+0x10a>
   18b8e:	e791                	bnez	a5,18b9a <_svfprintf_r+0x1a0a>
   18b90:	4905                	li	s2,1
   18b92:	06600d13          	li	s10,102
   18b96:	4b85                	li	s7,1
   18b98:	b431                	j	185a4 <_svfprintf_r+0x1414>
   18b9a:	77a6                	ld	a5,104(sp)
   18b9c:	06600d13          	li	s10,102
   18ba0:	2785                	addiw	a5,a5,1
   18ba2:	018787bb          	addw	a5,a5,s8
   18ba6:	00078b9b          	sext.w	s7,a5
   18baa:	fffbc713          	not	a4,s7
   18bae:	977d                	srai	a4,a4,0x3f
   18bb0:	8ff9                	and	a5,a5,a4
   18bb2:	0007891b          	sext.w	s2,a5
   18bb6:	b2fd                	j	185a4 <_svfprintf_r+0x1414>
   18bb8:	4789                	li	a5,2
   18bba:	fcbe                	sd	a5,120(sp)
   18bbc:	b45d                	j	18662 <_svfprintf_r+0x14d2>
   18bbe:	010a5783          	lhu	a5,16(s4)
   18bc2:	0407e793          	ori	a5,a5,64
   18bc6:	00fa1823          	sh	a5,16(s4)
   18bca:	837fe06f          	j	17400 <_svfprintf_r+0x270>
   18bce:	47b1                	li	a5,12
   18bd0:	00f9a023          	sw	a5,0(s3)
   18bd4:	57fd                	li	a5,-1
   18bd6:	e43e                	sd	a5,8(sp)
   18bd8:	837fe06f          	j	1740e <_svfprintf_r+0x27e>

0000000000018bdc <__sprint_r.part.0>:
   18bdc:	0ac5a783          	lw	a5,172(a1)
   18be0:	715d                	addi	sp,sp,-80
   18be2:	ec56                	sd	s5,24(sp)
   18be4:	83b5                	srli	a5,a5,0xd
   18be6:	e486                	sd	ra,72(sp)
   18be8:	e0a2                	sd	s0,64(sp)
   18bea:	fc26                	sd	s1,56(sp)
   18bec:	f84a                	sd	s2,48(sp)
   18bee:	f44e                	sd	s3,40(sp)
   18bf0:	f052                	sd	s4,32(sp)
   18bf2:	e85a                	sd	s6,16(sp)
   18bf4:	e45e                	sd	s7,8(sp)
   18bf6:	8b85                	andi	a5,a5,1
   18bf8:	8ab2                	mv	s5,a2
   18bfa:	c3c1                	beqz	a5,18c7a <__sprint_r.part.0+0x9e>
   18bfc:	6a1c                	ld	a5,16(a2)
   18bfe:	00063b03          	ld	s6,0(a2)
   18c02:	892e                	mv	s2,a1
   18c04:	89aa                	mv	s3,a0
   18c06:	5a7d                	li	s4,-1
   18c08:	c7bd                	beqz	a5,18c76 <__sprint_r.part.0+0x9a>
   18c0a:	008b3483          	ld	s1,8(s6)
   18c0e:	000b3403          	ld	s0,0(s6)
   18c12:	8089                	srli	s1,s1,0x2
   18c14:	00048b9b          	sext.w	s7,s1
   18c18:	05705863          	blez	s7,18c68 <__sprint_r.part.0+0x8c>
   18c1c:	34fd                	addiw	s1,s1,-1
   18c1e:	02049793          	slli	a5,s1,0x20
   18c22:	01e7d493          	srli	s1,a5,0x1e
   18c26:	00440793          	addi	a5,s0,4
   18c2a:	94be                	add	s1,s1,a5
   18c2c:	a019                	j	18c32 <__sprint_r.part.0+0x56>
   18c2e:	02848b63          	beq	s1,s0,18c64 <__sprint_r.part.0+0x88>
   18c32:	400c                	lw	a1,0(s0)
   18c34:	864a                	mv	a2,s2
   18c36:	854e                	mv	a0,s3
   18c38:	7bf000ef          	jal	ra,19bf6 <_fputwc_r>
   18c3c:	2501                	sext.w	a0,a0
   18c3e:	0411                	addi	s0,s0,4
   18c40:	ff4517e3          	bne	a0,s4,18c2e <__sprint_r.part.0+0x52>
   18c44:	557d                	li	a0,-1
   18c46:	60a6                	ld	ra,72(sp)
   18c48:	6406                	ld	s0,64(sp)
   18c4a:	000ab823          	sd	zero,16(s5)
   18c4e:	000aa423          	sw	zero,8(s5)
   18c52:	74e2                	ld	s1,56(sp)
   18c54:	7942                	ld	s2,48(sp)
   18c56:	79a2                	ld	s3,40(sp)
   18c58:	7a02                	ld	s4,32(sp)
   18c5a:	6ae2                	ld	s5,24(sp)
   18c5c:	6b42                	ld	s6,16(sp)
   18c5e:	6ba2                	ld	s7,8(sp)
   18c60:	6161                	addi	sp,sp,80
   18c62:	8082                	ret
   18c64:	010ab783          	ld	a5,16(s5)
   18c68:	0b8a                	slli	s7,s7,0x2
   18c6a:	417787b3          	sub	a5,a5,s7
   18c6e:	00fab823          	sd	a5,16(s5)
   18c72:	0b41                	addi	s6,s6,16
   18c74:	fbd9                	bnez	a5,18c0a <__sprint_r.part.0+0x2e>
   18c76:	4501                	li	a0,0
   18c78:	b7f9                	j	18c46 <__sprint_r.part.0+0x6a>
   18c7a:	b83fa0ef          	jal	ra,137fc <__sfvwrite_r>
   18c7e:	b7e1                	j	18c46 <__sprint_r.part.0+0x6a>

0000000000018c80 <__sprint_r>:
   18c80:	6a18                	ld	a4,16(a2)
   18c82:	c319                	beqz	a4,18c88 <__sprint_r+0x8>
   18c84:	f59ff06f          	j	18bdc <__sprint_r.part.0>
   18c88:	00062423          	sw	zero,8(a2)
   18c8c:	4501                	li	a0,0
   18c8e:	8082                	ret

0000000000018c90 <_vfiprintf_r>:
   18c90:	7145                	addi	sp,sp,-464
   18c92:	f74e                	sd	s3,424(sp)
   18c94:	ef56                	sd	s5,408(sp)
   18c96:	f6ee                	sd	s11,360(sp)
   18c98:	e786                	sd	ra,456(sp)
   18c9a:	e3a2                	sd	s0,448(sp)
   18c9c:	ff26                	sd	s1,440(sp)
   18c9e:	fb4a                	sd	s2,432(sp)
   18ca0:	f352                	sd	s4,416(sp)
   18ca2:	eb5a                	sd	s6,400(sp)
   18ca4:	e75e                	sd	s7,392(sp)
   18ca6:	e362                	sd	s8,384(sp)
   18ca8:	fee6                	sd	s9,376(sp)
   18caa:	faea                	sd	s10,368(sp)
   18cac:	e436                	sd	a3,8(sp)
   18cae:	8aaa                	mv	s5,a0
   18cb0:	89ae                	mv	s3,a1
   18cb2:	8db2                	mv	s11,a2
   18cb4:	c501                	beqz	a0,18cbc <_vfiprintf_r+0x2c>
   18cb6:	493c                	lw	a5,80(a0)
   18cb8:	42078563          	beqz	a5,190e2 <_vfiprintf_r+0x452>
   18cbc:	01099703          	lh	a4,16(s3)
   18cc0:	6689                	lui	a3,0x2
   18cc2:	03071793          	slli	a5,a4,0x30
   18cc6:	93c1                	srli	a5,a5,0x30
   18cc8:	00d7f633          	and	a2,a5,a3
   18ccc:	e215                	bnez	a2,18cf0 <_vfiprintf_r+0x60>
   18cce:	0ac9a603          	lw	a2,172(s3)
   18cd2:	00d767b3          	or	a5,a4,a3
   18cd6:	0107979b          	slliw	a5,a5,0x10
   18cda:	7779                	lui	a4,0xffffe
   18cdc:	4107d79b          	sraiw	a5,a5,0x10
   18ce0:	177d                	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde6e7>
   18ce2:	8f71                	and	a4,a4,a2
   18ce4:	00f99823          	sh	a5,16(s3)
   18ce8:	17c2                	slli	a5,a5,0x30
   18cea:	0ae9a623          	sw	a4,172(s3)
   18cee:	93c1                	srli	a5,a5,0x30
   18cf0:	0087f713          	andi	a4,a5,8
   18cf4:	28070d63          	beqz	a4,18f8e <_vfiprintf_r+0x2fe>
   18cf8:	0189b703          	ld	a4,24(s3)
   18cfc:	28070963          	beqz	a4,18f8e <_vfiprintf_r+0x2fe>
   18d00:	8be9                	andi	a5,a5,26
   18d02:	4729                	li	a4,10
   18d04:	2ae78163          	beq	a5,a4,18fa6 <_vfiprintf_r+0x316>
   18d08:	67f5                	lui	a5,0x1d
   18d0a:	1180                	addi	s0,sp,224
   18d0c:	08078793          	addi	a5,a5,128 # 1d080 <zeroes.0+0x10>
   18d10:	6b75                	lui	s6,0x1d
   18d12:	6975                	lui	s2,0x1d
   18d14:	f0a2                	sd	s0,96(sp)
   18d16:	f882                	sd	zero,112(sp)
   18d18:	d482                	sw	zero,104(sp)
   18d1a:	8722                	mv	a4,s0
   18d1c:	e802                	sd	zero,16(sp)
   18d1e:	fc02                	sd	zero,56(sp)
   18d20:	e482                	sd	zero,72(sp)
   18d22:	e082                	sd	zero,64(sp)
   18d24:	e002                	sd	zero,0(sp)
   18d26:	ec3e                	sd	a5,24(sp)
   18d28:	1f0b0b13          	addi	s6,s6,496 # 1d1f0 <blanks.1>
   18d2c:	20090913          	addi	s2,s2,512 # 1d200 <zeroes.0>
   18d30:	000dc783          	lbu	a5,0(s11)
   18d34:	1c078263          	beqz	a5,18ef8 <_vfiprintf_r+0x268>
   18d38:	84ee                	mv	s1,s11
   18d3a:	02500693          	li	a3,37
   18d3e:	2ed78963          	beq	a5,a3,19030 <_vfiprintf_r+0x3a0>
   18d42:	0014c783          	lbu	a5,1(s1)
   18d46:	0485                	addi	s1,s1,1
   18d48:	fbfd                	bnez	a5,18d3e <_vfiprintf_r+0xae>
   18d4a:	41b48a3b          	subw	s4,s1,s11
   18d4e:	1a0a0563          	beqz	s4,18ef8 <_vfiprintf_r+0x268>
   18d52:	57a6                	lw	a5,104(sp)
   18d54:	76c6                	ld	a3,112(sp)
   18d56:	01b73023          	sd	s11,0(a4)
   18d5a:	0017861b          	addiw	a2,a5,1
   18d5e:	96d2                	add	a3,a3,s4
   18d60:	01473423          	sd	s4,8(a4)
   18d64:	f8b6                	sd	a3,112(sp)
   18d66:	d4b2                	sw	a2,104(sp)
   18d68:	479d                	li	a5,7
   18d6a:	0741                	addi	a4,a4,16
   18d6c:	00c7dc63          	bge	a5,a2,18d84 <_vfiprintf_r+0xf4>
   18d70:	060688e3          	beqz	a3,195e0 <_vfiprintf_r+0x950>
   18d74:	1090                	addi	a2,sp,96
   18d76:	85ce                	mv	a1,s3
   18d78:	8556                	mv	a0,s5
   18d7a:	e63ff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   18d7e:	18051063          	bnez	a0,18efe <_vfiprintf_r+0x26e>
   18d82:	8722                	mv	a4,s0
   18d84:	6682                	ld	a3,0(sp)
   18d86:	0004c783          	lbu	a5,0(s1)
   18d8a:	014686bb          	addw	a3,a3,s4
   18d8e:	e036                	sd	a3,0(sp)
   18d90:	16078463          	beqz	a5,18ef8 <_vfiprintf_r+0x268>
   18d94:	0014c783          	lbu	a5,1(s1)
   18d98:	00148d93          	addi	s11,s1,1
   18d9c:	04010ba3          	sb	zero,87(sp)
   18da0:	5cfd                	li	s9,-1
   18da2:	4481                	li	s1,0
   18da4:	4d01                	li	s10,0
   18da6:	05a00a13          	li	s4,90
   18daa:	4ba5                	li	s7,9
   18dac:	0d85                	addi	s11,s11,1
   18dae:	2781                	sext.w	a5,a5
   18db0:	02a00593          	li	a1,42
   18db4:	fe07869b          	addiw	a3,a5,-32
   18db8:	0006861b          	sext.w	a2,a3
   18dbc:	04ca6363          	bltu	s4,a2,18e02 <_vfiprintf_r+0x172>
   18dc0:	02069613          	slli	a2,a3,0x20
   18dc4:	01e65693          	srli	a3,a2,0x1e
   18dc8:	6662                	ld	a2,24(sp)
   18dca:	96b2                	add	a3,a3,a2
   18dcc:	4294                	lw	a3,0(a3)
   18dce:	8682                	jr	a3
   18dd0:	4481                	li	s1,0
   18dd2:	000dc603          	lbu	a2,0(s11)
   18dd6:	0024969b          	slliw	a3,s1,0x2
   18dda:	9ea5                	addw	a3,a3,s1
   18ddc:	fd07879b          	addiw	a5,a5,-48
   18de0:	0016969b          	slliw	a3,a3,0x1
   18de4:	fd06051b          	addiw	a0,a2,-48
   18de8:	00d784bb          	addw	s1,a5,a3
   18dec:	0d85                	addi	s11,s11,1
   18dee:	0006079b          	sext.w	a5,a2
   18df2:	feabf0e3          	bgeu	s7,a0,18dd2 <_vfiprintf_r+0x142>
   18df6:	fe07869b          	addiw	a3,a5,-32
   18dfa:	0006861b          	sext.w	a2,a3
   18dfe:	fcca71e3          	bgeu	s4,a2,18dc0 <_vfiprintf_r+0x130>
   18e02:	cbfd                	beqz	a5,18ef8 <_vfiprintf_r+0x268>
   18e04:	06f10c23          	sb	a5,120(sp)
   18e08:	04010ba3          	sb	zero,87(sp)
   18e0c:	4b85                	li	s7,1
   18e0e:	4a05                	li	s4,1
   18e10:	07810c13          	addi	s8,sp,120
   18e14:	4c81                	li	s9,0
   18e16:	002d7293          	andi	t0,s10,2
   18e1a:	00028363          	beqz	t0,18e20 <_vfiprintf_r+0x190>
   18e1e:	2b89                	addiw	s7,s7,2
   18e20:	56a6                	lw	a3,104(sp)
   18e22:	084d7f93          	andi	t6,s10,132
   18e26:	77c6                	ld	a5,112(sp)
   18e28:	0016861b          	addiw	a2,a3,1 # 2001 <exit-0xe0e7>
   18e2c:	85b2                	mv	a1,a2
   18e2e:	000f9663          	bnez	t6,18e3a <_vfiprintf_r+0x1aa>
   18e32:	41748ebb          	subw	t4,s1,s7
   18e36:	65d04f63          	bgtz	t4,19494 <_vfiprintf_r+0x804>
   18e3a:	05714583          	lbu	a1,87(sp)
   18e3e:	cd99                	beqz	a1,18e5c <_vfiprintf_r+0x1cc>
   18e40:	05710693          	addi	a3,sp,87
   18e44:	0785                	addi	a5,a5,1
   18e46:	e314                	sd	a3,0(a4)
   18e48:	4685                	li	a3,1
   18e4a:	e714                	sd	a3,8(a4)
   18e4c:	f8be                	sd	a5,112(sp)
   18e4e:	d4b2                	sw	a2,104(sp)
   18e50:	469d                	li	a3,7
   18e52:	5cc6cb63          	blt	a3,a2,19428 <_vfiprintf_r+0x798>
   18e56:	86b2                	mv	a3,a2
   18e58:	0741                	addi	a4,a4,16
   18e5a:	2605                	addiw	a2,a2,1
   18e5c:	02028b63          	beqz	t0,18e92 <_vfiprintf_r+0x202>
   18e60:	08b4                	addi	a3,sp,88
   18e62:	0789                	addi	a5,a5,2
   18e64:	e314                	sd	a3,0(a4)
   18e66:	4689                	li	a3,2
   18e68:	e714                	sd	a3,8(a4)
   18e6a:	f8be                	sd	a5,112(sp)
   18e6c:	d4b2                	sw	a2,104(sp)
   18e6e:	469d                	li	a3,7
   18e70:	5ec6dd63          	bge	a3,a2,1946a <_vfiprintf_r+0x7da>
   18e74:	78078a63          	beqz	a5,19608 <_vfiprintf_r+0x978>
   18e78:	1090                	addi	a2,sp,96
   18e7a:	85ce                	mv	a1,s3
   18e7c:	8556                	mv	a0,s5
   18e7e:	f07e                	sd	t6,32(sp)
   18e80:	d5dff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   18e84:	ed2d                	bnez	a0,18efe <_vfiprintf_r+0x26e>
   18e86:	56a6                	lw	a3,104(sp)
   18e88:	77c6                	ld	a5,112(sp)
   18e8a:	7f82                	ld	t6,32(sp)
   18e8c:	8722                	mv	a4,s0
   18e8e:	0016861b          	addiw	a2,a3,1
   18e92:	08000593          	li	a1,128
   18e96:	46bf8663          	beq	t6,a1,19302 <_vfiprintf_r+0x672>
   18e9a:	414c8cbb          	subw	s9,s9,s4
   18e9e:	4f904e63          	bgtz	s9,1939a <_vfiprintf_r+0x70a>
   18ea2:	97d2                	add	a5,a5,s4
   18ea4:	01873023          	sd	s8,0(a4)
   18ea8:	01473423          	sd	s4,8(a4)
   18eac:	f8be                	sd	a5,112(sp)
   18eae:	d4b2                	sw	a2,104(sp)
   18eb0:	469d                	li	a3,7
   18eb2:	42c6d163          	bge	a3,a2,192d4 <_vfiprintf_r+0x644>
   18eb6:	66078463          	beqz	a5,1951e <_vfiprintf_r+0x88e>
   18eba:	1090                	addi	a2,sp,96
   18ebc:	85ce                	mv	a1,s3
   18ebe:	8556                	mv	a0,s5
   18ec0:	d1dff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   18ec4:	ed0d                	bnez	a0,18efe <_vfiprintf_r+0x26e>
   18ec6:	77c6                	ld	a5,112(sp)
   18ec8:	8722                	mv	a4,s0
   18eca:	004d7313          	andi	t1,s10,4
   18ece:	00030663          	beqz	t1,18eda <_vfiprintf_r+0x24a>
   18ed2:	41748a3b          	subw	s4,s1,s7
   18ed6:	65404e63          	bgtz	s4,19532 <_vfiprintf_r+0x8a2>
   18eda:	8726                	mv	a4,s1
   18edc:	0174d363          	bge	s1,s7,18ee2 <_vfiprintf_r+0x252>
   18ee0:	875e                	mv	a4,s7
   18ee2:	6682                	ld	a3,0(sp)
   18ee4:	9f35                	addw	a4,a4,a3
   18ee6:	e03a                	sd	a4,0(sp)
   18ee8:	52079463          	bnez	a5,19410 <_vfiprintf_r+0x780>
   18eec:	000dc783          	lbu	a5,0(s11)
   18ef0:	d482                	sw	zero,104(sp)
   18ef2:	8722                	mv	a4,s0
   18ef4:	e40792e3          	bnez	a5,18d38 <_vfiprintf_r+0xa8>
   18ef8:	77c6                	ld	a5,112(sp)
   18efa:	16079fe3          	bnez	a5,19878 <_vfiprintf_r+0xbe8>
   18efe:	0109d783          	lhu	a5,16(s3)
   18f02:	0407f793          	andi	a5,a5,64
   18f06:	18079ae3          	bnez	a5,1989a <_vfiprintf_r+0xc0a>
   18f0a:	60be                	ld	ra,456(sp)
   18f0c:	641e                	ld	s0,448(sp)
   18f0e:	6502                	ld	a0,0(sp)
   18f10:	74fa                	ld	s1,440(sp)
   18f12:	795a                	ld	s2,432(sp)
   18f14:	79ba                	ld	s3,424(sp)
   18f16:	7a1a                	ld	s4,416(sp)
   18f18:	6afa                	ld	s5,408(sp)
   18f1a:	6b5a                	ld	s6,400(sp)
   18f1c:	6bba                	ld	s7,392(sp)
   18f1e:	6c1a                	ld	s8,384(sp)
   18f20:	7cf6                	ld	s9,376(sp)
   18f22:	7d56                	ld	s10,368(sp)
   18f24:	7db6                	ld	s11,360(sp)
   18f26:	6179                	addi	sp,sp,464
   18f28:	8082                	ret
   18f2a:	010d6313          	ori	t1,s10,16
   18f2e:	000dc783          	lbu	a5,0(s11)
   18f32:	00030d1b          	sext.w	s10,t1
   18f36:	bd9d                	j	18dac <_vfiprintf_r+0x11c>
   18f38:	010d6313          	ori	t1,s10,16
   18f3c:	00030d1b          	sext.w	s10,t1
   18f40:	66a2                	ld	a3,8(sp)
   18f42:	020d7793          	andi	a5,s10,32
   18f46:	00868613          	addi	a2,a3,8
   18f4a:	cbf5                	beqz	a5,1903e <_vfiprintf_r+0x3ae>
   18f4c:	629c                	ld	a5,0(a3)
   18f4e:	8bbe                	mv	s7,a5
   18f50:	1007c963          	bltz	a5,19062 <_vfiprintf_r+0x3d2>
   18f54:	57fd                	li	a5,-1
   18f56:	04fc80e3          	beq	s9,a5,19796 <_vfiprintf_r+0xb06>
   18f5a:	f7fd7693          	andi	a3,s10,-129
   18f5e:	2681                	sext.w	a3,a3
   18f60:	7a0b9063          	bnez	s7,19700 <_vfiprintf_r+0xa70>
   18f64:	140c94e3          	bnez	s9,198ac <_vfiprintf_r+0xc1c>
   18f68:	8d36                	mv	s10,a3
   18f6a:	e432                	sd	a2,8(sp)
   18f6c:	4c81                	li	s9,0
   18f6e:	4a01                	li	s4,0
   18f70:	0dc10c13          	addi	s8,sp,220
   18f74:	87e6                	mv	a5,s9
   18f76:	014cd363          	bge	s9,s4,18f7c <_vfiprintf_r+0x2ec>
   18f7a:	87d2                	mv	a5,s4
   18f7c:	05714683          	lbu	a3,87(sp)
   18f80:	00078b9b          	sext.w	s7,a5
   18f84:	e80689e3          	beqz	a3,18e16 <_vfiprintf_r+0x186>
   18f88:	00178b9b          	addiw	s7,a5,1
   18f8c:	b569                	j	18e16 <_vfiprintf_r+0x186>
   18f8e:	85ce                	mv	a1,s3
   18f90:	8556                	mv	a0,s5
   18f92:	d84fa0ef          	jal	ra,13516 <__swsetup_r>
   18f96:	100512e3          	bnez	a0,1989a <_vfiprintf_r+0xc0a>
   18f9a:	0109d783          	lhu	a5,16(s3)
   18f9e:	4729                	li	a4,10
   18fa0:	8be9                	andi	a5,a5,26
   18fa2:	d6e793e3          	bne	a5,a4,18d08 <_vfiprintf_r+0x78>
   18fa6:	01299783          	lh	a5,18(s3)
   18faa:	d407cfe3          	bltz	a5,18d08 <_vfiprintf_r+0x78>
   18fae:	641e                	ld	s0,448(sp)
   18fb0:	66a2                	ld	a3,8(sp)
   18fb2:	60be                	ld	ra,456(sp)
   18fb4:	74fa                	ld	s1,440(sp)
   18fb6:	795a                	ld	s2,432(sp)
   18fb8:	7a1a                	ld	s4,416(sp)
   18fba:	6b5a                	ld	s6,400(sp)
   18fbc:	6bba                	ld	s7,392(sp)
   18fbe:	6c1a                	ld	s8,384(sp)
   18fc0:	7cf6                	ld	s9,376(sp)
   18fc2:	7d56                	ld	s10,368(sp)
   18fc4:	866e                	mv	a2,s11
   18fc6:	85ce                	mv	a1,s3
   18fc8:	7db6                	ld	s11,360(sp)
   18fca:	79ba                	ld	s3,424(sp)
   18fcc:	8556                	mv	a0,s5
   18fce:	6afa                	ld	s5,408(sp)
   18fd0:	6179                	addi	sp,sp,464
   18fd2:	10f0006f          	j	198e0 <__sbprintf>
   18fd6:	010d6313          	ori	t1,s10,16
   18fda:	00030d1b          	sext.w	s10,t1
   18fde:	66a2                	ld	a3,8(sp)
   18fe0:	020d7793          	andi	a5,s10,32
   18fe4:	00868613          	addi	a2,a3,8
   18fe8:	cff1                	beqz	a5,190c4 <_vfiprintf_r+0x434>
   18fea:	0006bb83          	ld	s7,0(a3)
   18fee:	bffd7693          	andi	a3,s10,-1025
   18ff2:	2681                	sext.w	a3,a3
   18ff4:	e432                	sd	a2,8(sp)
   18ff6:	4781                	li	a5,0
   18ff8:	4601                	li	a2,0
   18ffa:	04c10ba3          	sb	a2,87(sp)
   18ffe:	567d                	li	a2,-1
   19000:	06cc8d63          	beq	s9,a2,1907a <_vfiprintf_r+0x3ea>
   19004:	f7f6f313          	andi	t1,a3,-129
   19008:	00030d1b          	sext.w	s10,t1
   1900c:	460b9463          	bnez	s7,19474 <_vfiprintf_r+0x7e4>
   19010:	780c9663          	bnez	s9,1979c <_vfiprintf_r+0xb0c>
   19014:	ffa1                	bnez	a5,18f6c <_vfiprintf_r+0x2dc>
   19016:	0016fa13          	andi	s4,a3,1
   1901a:	0dc10c13          	addi	s8,sp,220
   1901e:	f40a0be3          	beqz	s4,18f74 <_vfiprintf_r+0x2e4>
   19022:	03000793          	li	a5,48
   19026:	0cf10da3          	sb	a5,219(sp)
   1902a:	0db10c13          	addi	s8,sp,219
   1902e:	b799                	j	18f74 <_vfiprintf_r+0x2e4>
   19030:	41b48a3b          	subw	s4,s1,s11
   19034:	d00a1fe3          	bnez	s4,18d52 <_vfiprintf_r+0xc2>
   19038:	0004c783          	lbu	a5,0(s1)
   1903c:	bb91                	j	18d90 <_vfiprintf_r+0x100>
   1903e:	010d7793          	andi	a5,s10,16
   19042:	6a079463          	bnez	a5,196ea <_vfiprintf_r+0xa5a>
   19046:	66a2                	ld	a3,8(sp)
   19048:	040d7793          	andi	a5,s10,64
   1904c:	0006ab83          	lw	s7,0(a3)
   19050:	7a078c63          	beqz	a5,19808 <_vfiprintf_r+0xb78>
   19054:	010b9b9b          	slliw	s7,s7,0x10
   19058:	410bdb9b          	sraiw	s7,s7,0x10
   1905c:	87de                	mv	a5,s7
   1905e:	ee07dbe3          	bgez	a5,18f54 <_vfiprintf_r+0x2c4>
   19062:	e432                	sd	a2,8(sp)
   19064:	02d00613          	li	a2,45
   19068:	04c10ba3          	sb	a2,87(sp)
   1906c:	567d                	li	a2,-1
   1906e:	41700bb3          	neg	s7,s7
   19072:	86ea                	mv	a3,s10
   19074:	4785                	li	a5,1
   19076:	f8cc97e3          	bne	s9,a2,19004 <_vfiprintf_r+0x374>
   1907a:	4605                	li	a2,1
   1907c:	40c78063          	beq	a5,a2,1947c <_vfiprintf_r+0x7ec>
   19080:	4609                	li	a2,2
   19082:	24c78c63          	beq	a5,a2,192da <_vfiprintf_r+0x64a>
   19086:	0dc10a13          	addi	s4,sp,220
   1908a:	8c52                	mv	s8,s4
   1908c:	007bf793          	andi	a5,s7,7
   19090:	03078793          	addi	a5,a5,48
   19094:	fefc0fa3          	sb	a5,-1(s8)
   19098:	003bdb93          	srli	s7,s7,0x3
   1909c:	8662                	mv	a2,s8
   1909e:	1c7d                	addi	s8,s8,-1
   190a0:	fe0b96e3          	bnez	s7,1908c <_vfiprintf_r+0x3fc>
   190a4:	0016f593          	andi	a1,a3,1
   190a8:	24058963          	beqz	a1,192fa <_vfiprintf_r+0x66a>
   190ac:	03000593          	li	a1,48
   190b0:	24b78563          	beq	a5,a1,192fa <_vfiprintf_r+0x66a>
   190b4:	1679                	addi	a2,a2,-2
   190b6:	febc0fa3          	sb	a1,-1(s8)
   190ba:	40ca0a3b          	subw	s4,s4,a2
   190be:	8d36                	mv	s10,a3
   190c0:	8c32                	mv	s8,a2
   190c2:	bd4d                	j	18f74 <_vfiprintf_r+0x2e4>
   190c4:	010d7793          	andi	a5,s10,16
   190c8:	60079d63          	bnez	a5,196e2 <_vfiprintf_r+0xa52>
   190cc:	66a2                	ld	a3,8(sp)
   190ce:	040d7793          	andi	a5,s10,64
   190d2:	0006ab83          	lw	s7,0(a3)
   190d6:	72078263          	beqz	a5,197fa <_vfiprintf_r+0xb6a>
   190da:	1bc2                	slli	s7,s7,0x30
   190dc:	030bdb93          	srli	s7,s7,0x30
   190e0:	b739                	j	18fee <_vfiprintf_r+0x35e>
   190e2:	f32f70ef          	jal	ra,10814 <__sinit>
   190e6:	bed9                	j	18cbc <_vfiprintf_r+0x2c>
   190e8:	67a2                	ld	a5,8(sp)
   190ea:	04010ba3          	sb	zero,87(sp)
   190ee:	0007bc03          	ld	s8,0(a5)
   190f2:	00878693          	addi	a3,a5,8
   190f6:	6c0c0d63          	beqz	s8,197d0 <_vfiprintf_r+0xb40>
   190fa:	57fd                	li	a5,-1
   190fc:	66fc8863          	beq	s9,a5,1976c <_vfiprintf_r+0xadc>
   19100:	8666                	mv	a2,s9
   19102:	4581                	li	a1,0
   19104:	8562                	mv	a0,s8
   19106:	f036                	sd	a3,32(sp)
   19108:	e43a                	sd	a4,8(sp)
   1910a:	9e6f80ef          	jal	ra,112f0 <memchr>
   1910e:	6722                	ld	a4,8(sp)
   19110:	7682                	ld	a3,32(sp)
   19112:	76050a63          	beqz	a0,19886 <_vfiprintf_r+0xbf6>
   19116:	41850a3b          	subw	s4,a0,s8
   1911a:	e436                	sd	a3,8(sp)
   1911c:	4c81                	li	s9,0
   1911e:	bd99                	j	18f74 <_vfiprintf_r+0x2e4>
   19120:	66a2                	ld	a3,8(sp)
   19122:	04010ba3          	sb	zero,87(sp)
   19126:	4b85                	li	s7,1
   19128:	429c                	lw	a5,0(a3)
   1912a:	06a1                	addi	a3,a3,8
   1912c:	e436                	sd	a3,8(sp)
   1912e:	06f10c23          	sb	a5,120(sp)
   19132:	4a05                	li	s4,1
   19134:	07810c13          	addi	s8,sp,120
   19138:	b9f1                	j	18e14 <_vfiprintf_r+0x184>
   1913a:	67a2                	ld	a5,8(sp)
   1913c:	4384                	lw	s1,0(a5)
   1913e:	00878c13          	addi	s8,a5,8
   19142:	5404dd63          	bgez	s1,1969c <_vfiprintf_r+0xa0c>
   19146:	409004bb          	negw	s1,s1
   1914a:	e462                	sd	s8,8(sp)
   1914c:	004d6313          	ori	t1,s10,4
   19150:	000dc783          	lbu	a5,0(s11)
   19154:	00030d1b          	sext.w	s10,t1
   19158:	b991                	j	18dac <_vfiprintf_r+0x11c>
   1915a:	020d6313          	ori	t1,s10,32
   1915e:	000dc783          	lbu	a5,0(s11)
   19162:	00030d1b          	sext.w	s10,t1
   19166:	b199                	j	18dac <_vfiprintf_r+0x11c>
   19168:	6622                	ld	a2,8(sp)
   1916a:	77e1                	lui	a5,0xffff8
   1916c:	8307c793          	xori	a5,a5,-2000
   19170:	002d6693          	ori	a3,s10,2
   19174:	04f11c23          	sh	a5,88(sp)
   19178:	6d71                	lui	s10,0x1c
   1917a:	00860793          	addi	a5,a2,8
   1917e:	e43e                	sd	a5,8(sp)
   19180:	730d0793          	addi	a5,s10,1840 # 1c730 <__clzdi2+0xc6>
   19184:	e83e                	sd	a5,16(sp)
   19186:	00063b83          	ld	s7,0(a2)
   1918a:	2681                	sext.w	a3,a3
   1918c:	4789                	li	a5,2
   1918e:	b5ad                	j	18ff8 <_vfiprintf_r+0x368>
   19190:	6622                	ld	a2,8(sp)
   19192:	020d7793          	andi	a5,s10,32
   19196:	6214                	ld	a3,0(a2)
   19198:	0621                	addi	a2,a2,8
   1919a:	e432                	sd	a2,8(sp)
   1919c:	e385                	bnez	a5,191bc <_vfiprintf_r+0x52c>
   1919e:	010d7793          	andi	a5,s10,16
   191a2:	ef89                	bnez	a5,191bc <_vfiprintf_r+0x52c>
   191a4:	040d7793          	andi	a5,s10,64
   191a8:	6a079063          	bnez	a5,19848 <_vfiprintf_r+0xbb8>
   191ac:	200d7313          	andi	t1,s10,512
   191b0:	6782                	ld	a5,0(sp)
   191b2:	6e030a63          	beqz	t1,198a6 <_vfiprintf_r+0xc16>
   191b6:	00f68023          	sb	a5,0(a3)
   191ba:	be9d                	j	18d30 <_vfiprintf_r+0xa0>
   191bc:	6782                	ld	a5,0(sp)
   191be:	e29c                	sd	a5,0(a3)
   191c0:	be85                	j	18d30 <_vfiprintf_r+0xa0>
   191c2:	02b00693          	li	a3,43
   191c6:	000dc783          	lbu	a5,0(s11)
   191ca:	04d10ba3          	sb	a3,87(sp)
   191ce:	bef9                	j	18dac <_vfiprintf_r+0x11c>
   191d0:	080d6313          	ori	t1,s10,128
   191d4:	000dc783          	lbu	a5,0(s11)
   191d8:	00030d1b          	sext.w	s10,t1
   191dc:	bec1                	j	18dac <_vfiprintf_r+0x11c>
   191de:	000dc783          	lbu	a5,0(s11)
   191e2:	001d8693          	addi	a3,s11,1
   191e6:	6cb78563          	beq	a5,a1,198b0 <_vfiprintf_r+0xc20>
   191ea:	fd07861b          	addiw	a2,a5,-48 # ffffffffffff7fd0 <__BSS_END__+0xfffffffffffd86b8>
   191ee:	8db6                	mv	s11,a3
   191f0:	4c81                	li	s9,0
   191f2:	bccbe1e3          	bltu	s7,a2,18db4 <_vfiprintf_r+0x124>
   191f6:	000dc783          	lbu	a5,0(s11)
   191fa:	002c969b          	slliw	a3,s9,0x2
   191fe:	019686bb          	addw	a3,a3,s9
   19202:	0016969b          	slliw	a3,a3,0x1
   19206:	00c68cbb          	addw	s9,a3,a2
   1920a:	fd07861b          	addiw	a2,a5,-48
   1920e:	0d85                	addi	s11,s11,1
   19210:	fecbf3e3          	bgeu	s7,a2,191f6 <_vfiprintf_r+0x566>
   19214:	b645                	j	18db4 <_vfiprintf_r+0x124>
   19216:	8556                	mv	a0,s5
   19218:	f03a                	sd	a4,32(sp)
   1921a:	965fc0ef          	jal	ra,15b7e <_localeconv_r>
   1921e:	651c                	ld	a5,8(a0)
   19220:	853e                	mv	a0,a5
   19222:	e0be                	sd	a5,64(sp)
   19224:	eeaf80ef          	jal	ra,1190e <strlen>
   19228:	87aa                	mv	a5,a0
   1922a:	8556                	mv	a0,s5
   1922c:	8c3e                	mv	s8,a5
   1922e:	e4be                	sd	a5,72(sp)
   19230:	94ffc0ef          	jal	ra,15b7e <_localeconv_r>
   19234:	6914                	ld	a3,16(a0)
   19236:	7702                	ld	a4,32(sp)
   19238:	000dc783          	lbu	a5,0(s11)
   1923c:	fc36                	sd	a3,56(sp)
   1923e:	b60c07e3          	beqz	s8,18dac <_vfiprintf_r+0x11c>
   19242:	b60685e3          	beqz	a3,18dac <_vfiprintf_r+0x11c>
   19246:	0006c683          	lbu	a3,0(a3)
   1924a:	b60681e3          	beqz	a3,18dac <_vfiprintf_r+0x11c>
   1924e:	400d6313          	ori	t1,s10,1024
   19252:	00030d1b          	sext.w	s10,t1
   19256:	be99                	j	18dac <_vfiprintf_r+0x11c>
   19258:	001d6313          	ori	t1,s10,1
   1925c:	000dc783          	lbu	a5,0(s11)
   19260:	00030d1b          	sext.w	s10,t1
   19264:	b6a1                	j	18dac <_vfiprintf_r+0x11c>
   19266:	05714683          	lbu	a3,87(sp)
   1926a:	000dc783          	lbu	a5,0(s11)
   1926e:	b2069fe3          	bnez	a3,18dac <_vfiprintf_r+0x11c>
   19272:	02000693          	li	a3,32
   19276:	04d10ba3          	sb	a3,87(sp)
   1927a:	be0d                	j	18dac <_vfiprintf_r+0x11c>
   1927c:	000dc783          	lbu	a5,0(s11)
   19280:	06c00693          	li	a3,108
   19284:	52d78d63          	beq	a5,a3,197be <_vfiprintf_r+0xb2e>
   19288:	010d6313          	ori	t1,s10,16
   1928c:	00030d1b          	sext.w	s10,t1
   19290:	be31                	j	18dac <_vfiprintf_r+0x11c>
   19292:	000dc783          	lbu	a5,0(s11)
   19296:	06800693          	li	a3,104
   1929a:	50d78963          	beq	a5,a3,197ac <_vfiprintf_r+0xb1c>
   1929e:	040d6313          	ori	t1,s10,64
   192a2:	00030d1b          	sext.w	s10,t1
   192a6:	b619                	j	18dac <_vfiprintf_r+0x11c>
   192a8:	010d6693          	ori	a3,s10,16
   192ac:	2681                	sext.w	a3,a3
   192ae:	65a2                	ld	a1,8(sp)
   192b0:	0206f793          	andi	a5,a3,32
   192b4:	00858613          	addi	a2,a1,8
   192b8:	32078863          	beqz	a5,195e8 <_vfiprintf_r+0x958>
   192bc:	0005bb83          	ld	s7,0(a1)
   192c0:	4785                	li	a5,1
   192c2:	e432                	sd	a2,8(sp)
   192c4:	bb15                	j	18ff8 <_vfiprintf_r+0x368>
   192c6:	4705                	li	a4,1
   192c8:	d4ba                	sw	a4,104(sp)
   192ca:	87d2                	mv	a5,s4
   192cc:	f1e2                	sd	s8,224(sp)
   192ce:	f5d2                	sd	s4,232(sp)
   192d0:	f8d2                	sd	s4,112(sp)
   192d2:	8722                	mv	a4,s0
   192d4:	0741                	addi	a4,a4,16
   192d6:	bed5                	j	18eca <_vfiprintf_r+0x23a>
   192d8:	86ea                	mv	a3,s10
   192da:	0dc10a13          	addi	s4,sp,220
   192de:	8c52                	mv	s8,s4
   192e0:	6642                	ld	a2,16(sp)
   192e2:	00fbf793          	andi	a5,s7,15
   192e6:	1c7d                	addi	s8,s8,-1
   192e8:	97b2                	add	a5,a5,a2
   192ea:	0007c783          	lbu	a5,0(a5)
   192ee:	004bdb93          	srli	s7,s7,0x4
   192f2:	00fc0023          	sb	a5,0(s8)
   192f6:	fe0b95e3          	bnez	s7,192e0 <_vfiprintf_r+0x650>
   192fa:	418a0a3b          	subw	s4,s4,s8
   192fe:	8d36                	mv	s10,a3
   19300:	b995                	j	18f74 <_vfiprintf_r+0x2e4>
   19302:	41748ebb          	subw	t4,s1,s7
   19306:	b9d05ae3          	blez	t4,18e9a <_vfiprintf_r+0x20a>
   1930a:	45c1                	li	a1,16
   1930c:	59d5db63          	bge	a1,t4,198a2 <_vfiprintf_r+0xc12>
   19310:	4f41                	li	t5,16
   19312:	4f9d                	li	t6,7
   19314:	a801                	j	19324 <_vfiprintf_r+0x694>
   19316:	0026851b          	addiw	a0,a3,2
   1931a:	0741                	addi	a4,a4,16
   1931c:	86ae                	mv	a3,a1
   1931e:	3ec1                	addiw	t4,t4,-16
   19320:	05df5163          	bge	t5,t4,19362 <_vfiprintf_r+0x6d2>
   19324:	0016859b          	addiw	a1,a3,1
   19328:	07c1                	addi	a5,a5,16
   1932a:	01273023          	sd	s2,0(a4)
   1932e:	01e73423          	sd	t5,8(a4)
   19332:	f8be                	sd	a5,112(sp)
   19334:	d4ae                	sw	a1,104(sp)
   19336:	febfd0e3          	bge	t6,a1,19316 <_vfiprintf_r+0x686>
   1933a:	c3fd                	beqz	a5,19420 <_vfiprintf_r+0x790>
   1933c:	1090                	addi	a2,sp,96
   1933e:	85ce                	mv	a1,s3
   19340:	8556                	mv	a0,s5
   19342:	f076                	sd	t4,32(sp)
   19344:	899ff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   19348:	ba051be3          	bnez	a0,18efe <_vfiprintf_r+0x26e>
   1934c:	7e82                	ld	t4,32(sp)
   1934e:	56a6                	lw	a3,104(sp)
   19350:	4f41                	li	t5,16
   19352:	3ec1                	addiw	t4,t4,-16
   19354:	77c6                	ld	a5,112(sp)
   19356:	8722                	mv	a4,s0
   19358:	0016851b          	addiw	a0,a3,1
   1935c:	4f9d                	li	t6,7
   1935e:	fddf43e3          	blt	t5,t4,19324 <_vfiprintf_r+0x694>
   19362:	97f6                	add	a5,a5,t4
   19364:	01273023          	sd	s2,0(a4)
   19368:	01d73423          	sd	t4,8(a4)
   1936c:	f8be                	sd	a5,112(sp)
   1936e:	d4aa                	sw	a0,104(sp)
   19370:	469d                	li	a3,7
   19372:	34a6dc63          	bge	a3,a0,196ca <_vfiprintf_r+0xa3a>
   19376:	4a078963          	beqz	a5,19828 <_vfiprintf_r+0xb98>
   1937a:	1090                	addi	a2,sp,96
   1937c:	85ce                	mv	a1,s3
   1937e:	8556                	mv	a0,s5
   19380:	85dff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   19384:	b6051de3          	bnez	a0,18efe <_vfiprintf_r+0x26e>
   19388:	56a6                	lw	a3,104(sp)
   1938a:	414c8cbb          	subw	s9,s9,s4
   1938e:	77c6                	ld	a5,112(sp)
   19390:	8722                	mv	a4,s0
   19392:	0016861b          	addiw	a2,a3,1
   19396:	b19056e3          	blez	s9,18ea2 <_vfiprintf_r+0x212>
   1939a:	45c1                	li	a1,16
   1939c:	0595d963          	bge	a1,s9,193ee <_vfiprintf_r+0x75e>
   193a0:	4ec1                	li	t4,16
   193a2:	4f1d                	li	t5,7
   193a4:	a801                	j	193b4 <_vfiprintf_r+0x724>
   193a6:	0026861b          	addiw	a2,a3,2
   193aa:	0741                	addi	a4,a4,16
   193ac:	86ae                	mv	a3,a1
   193ae:	3cc1                	addiw	s9,s9,-16
   193b0:	039edf63          	bge	t4,s9,193ee <_vfiprintf_r+0x75e>
   193b4:	0016859b          	addiw	a1,a3,1
   193b8:	07c1                	addi	a5,a5,16
   193ba:	01273023          	sd	s2,0(a4)
   193be:	01d73423          	sd	t4,8(a4)
   193c2:	f8be                	sd	a5,112(sp)
   193c4:	d4ae                	sw	a1,104(sp)
   193c6:	febf50e3          	bge	t5,a1,193a6 <_vfiprintf_r+0x716>
   193ca:	cf9d                	beqz	a5,19408 <_vfiprintf_r+0x778>
   193cc:	1090                	addi	a2,sp,96
   193ce:	85ce                	mv	a1,s3
   193d0:	8556                	mv	a0,s5
   193d2:	80bff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   193d6:	b20514e3          	bnez	a0,18efe <_vfiprintf_r+0x26e>
   193da:	56a6                	lw	a3,104(sp)
   193dc:	4ec1                	li	t4,16
   193de:	3cc1                	addiw	s9,s9,-16
   193e0:	77c6                	ld	a5,112(sp)
   193e2:	8722                	mv	a4,s0
   193e4:	0016861b          	addiw	a2,a3,1
   193e8:	4f1d                	li	t5,7
   193ea:	fd9ec5e3          	blt	t4,s9,193b4 <_vfiprintf_r+0x724>
   193ee:	97e6                	add	a5,a5,s9
   193f0:	01273023          	sd	s2,0(a4)
   193f4:	01973423          	sd	s9,8(a4)
   193f8:	f8be                	sd	a5,112(sp)
   193fa:	d4b2                	sw	a2,104(sp)
   193fc:	469d                	li	a3,7
   193fe:	1cc6c363          	blt	a3,a2,195c4 <_vfiprintf_r+0x934>
   19402:	0741                	addi	a4,a4,16
   19404:	2605                	addiw	a2,a2,1
   19406:	bc71                	j	18ea2 <_vfiprintf_r+0x212>
   19408:	4605                	li	a2,1
   1940a:	4681                	li	a3,0
   1940c:	8722                	mv	a4,s0
   1940e:	b745                	j	193ae <_vfiprintf_r+0x71e>
   19410:	1090                	addi	a2,sp,96
   19412:	85ce                	mv	a1,s3
   19414:	8556                	mv	a0,s5
   19416:	fc6ff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   1941a:	ac0509e3          	beqz	a0,18eec <_vfiprintf_r+0x25c>
   1941e:	b4c5                	j	18efe <_vfiprintf_r+0x26e>
   19420:	4505                	li	a0,1
   19422:	4681                	li	a3,0
   19424:	8722                	mv	a4,s0
   19426:	bde5                	j	1931e <_vfiprintf_r+0x68e>
   19428:	1e078463          	beqz	a5,19610 <_vfiprintf_r+0x980>
   1942c:	1090                	addi	a2,sp,96
   1942e:	85ce                	mv	a1,s3
   19430:	8556                	mv	a0,s5
   19432:	f47e                	sd	t6,40(sp)
   19434:	f016                	sd	t0,32(sp)
   19436:	fa6ff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   1943a:	ac0512e3          	bnez	a0,18efe <_vfiprintf_r+0x26e>
   1943e:	56a6                	lw	a3,104(sp)
   19440:	77c6                	ld	a5,112(sp)
   19442:	7fa2                	ld	t6,40(sp)
   19444:	7282                	ld	t0,32(sp)
   19446:	8722                	mv	a4,s0
   19448:	0016861b          	addiw	a2,a3,1
   1944c:	bc01                	j	18e5c <_vfiprintf_r+0x1cc>
   1944e:	24079c63          	bnez	a5,196a6 <_vfiprintf_r+0xa16>
   19452:	05714703          	lbu	a4,87(sp)
   19456:	3e071063          	bnez	a4,19836 <_vfiprintf_r+0xba6>
   1945a:	1a028d63          	beqz	t0,19614 <_vfiprintf_r+0x984>
   1945e:	08bc                	addi	a5,sp,88
   19460:	f1be                	sd	a5,224(sp)
   19462:	4789                	li	a5,2
   19464:	f5be                	sd	a5,232(sp)
   19466:	4605                	li	a2,1
   19468:	8722                	mv	a4,s0
   1946a:	86b2                	mv	a3,a2
   1946c:	0741                	addi	a4,a4,16
   1946e:	0016861b          	addiw	a2,a3,1
   19472:	b405                	j	18e92 <_vfiprintf_r+0x202>
   19474:	4605                	li	a2,1
   19476:	86ea                	mv	a3,s10
   19478:	c0c794e3          	bne	a5,a2,19080 <_vfiprintf_r+0x3f0>
   1947c:	47a5                	li	a5,9
   1947e:	1977ef63          	bltu	a5,s7,1961c <_vfiprintf_r+0x98c>
   19482:	030b8b9b          	addiw	s7,s7,48
   19486:	0d710da3          	sb	s7,219(sp)
   1948a:	8d36                	mv	s10,a3
   1948c:	4a05                	li	s4,1
   1948e:	0db10c13          	addi	s8,sp,219
   19492:	b4cd                	j	18f74 <_vfiprintf_r+0x2e4>
   19494:	4541                	li	a0,16
   19496:	07d55163          	bge	a0,t4,194f8 <_vfiprintf_r+0x868>
   1949a:	4f41                	li	t5,16
   1949c:	439d                	li	t2,7
   1949e:	a811                	j	194b2 <_vfiprintf_r+0x822>
   194a0:	0026859b          	addiw	a1,a3,2
   194a4:	0741                	addi	a4,a4,16
   194a6:	86b2                	mv	a3,a2
   194a8:	3ec1                	addiw	t4,t4,-16
   194aa:	05df5763          	bge	t5,t4,194f8 <_vfiprintf_r+0x868>
   194ae:	0016859b          	addiw	a1,a3,1
   194b2:	07c1                	addi	a5,a5,16
   194b4:	01673023          	sd	s6,0(a4)
   194b8:	01e73423          	sd	t5,8(a4)
   194bc:	f8be                	sd	a5,112(sp)
   194be:	0005861b          	sext.w	a2,a1
   194c2:	d4ae                	sw	a1,104(sp)
   194c4:	fcc3dee3          	bge	t2,a2,194a0 <_vfiprintf_r+0x810>
   194c8:	c7b9                	beqz	a5,19516 <_vfiprintf_r+0x886>
   194ca:	1090                	addi	a2,sp,96
   194cc:	85ce                	mv	a1,s3
   194ce:	8556                	mv	a0,s5
   194d0:	f876                	sd	t4,48(sp)
   194d2:	f47e                	sd	t6,40(sp)
   194d4:	f016                	sd	t0,32(sp)
   194d6:	f06ff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   194da:	a20512e3          	bnez	a0,18efe <_vfiprintf_r+0x26e>
   194de:	7ec2                	ld	t4,48(sp)
   194e0:	56a6                	lw	a3,104(sp)
   194e2:	4f41                	li	t5,16
   194e4:	3ec1                	addiw	t4,t4,-16
   194e6:	77c6                	ld	a5,112(sp)
   194e8:	7fa2                	ld	t6,40(sp)
   194ea:	7282                	ld	t0,32(sp)
   194ec:	8722                	mv	a4,s0
   194ee:	0016859b          	addiw	a1,a3,1
   194f2:	439d                	li	t2,7
   194f4:	fbdf4de3          	blt	t5,t4,194ae <_vfiprintf_r+0x81e>
   194f8:	97f6                	add	a5,a5,t4
   194fa:	01673023          	sd	s6,0(a4)
   194fe:	01d73423          	sd	t4,8(a4)
   19502:	f8be                	sd	a5,112(sp)
   19504:	d4ae                	sw	a1,104(sp)
   19506:	469d                	li	a3,7
   19508:	f4b6c3e3          	blt	a3,a1,1944e <_vfiprintf_r+0x7be>
   1950c:	0741                	addi	a4,a4,16
   1950e:	0015861b          	addiw	a2,a1,1
   19512:	86ae                	mv	a3,a1
   19514:	b21d                	j	18e3a <_vfiprintf_r+0x1aa>
   19516:	4681                	li	a3,0
   19518:	4585                	li	a1,1
   1951a:	8722                	mv	a4,s0
   1951c:	b771                	j	194a8 <_vfiprintf_r+0x818>
   1951e:	d482                	sw	zero,104(sp)
   19520:	004d7313          	andi	t1,s10,4
   19524:	08030863          	beqz	t1,195b4 <_vfiprintf_r+0x924>
   19528:	41748a3b          	subw	s4,s1,s7
   1952c:	09405463          	blez	s4,195b4 <_vfiprintf_r+0x924>
   19530:	8722                	mv	a4,s0
   19532:	46c1                	li	a3,16
   19534:	5626                	lw	a2,104(sp)
   19536:	3546dd63          	bge	a3,s4,19890 <_vfiprintf_r+0xc00>
   1953a:	4cc1                	li	s9,16
   1953c:	4c1d                	li	s8,7
   1953e:	a801                	j	1954e <_vfiprintf_r+0x8be>
   19540:	0026069b          	addiw	a3,a2,2
   19544:	0741                	addi	a4,a4,16
   19546:	862e                	mv	a2,a1
   19548:	3a41                	addiw	s4,s4,-16
   1954a:	034cdd63          	bge	s9,s4,19584 <_vfiprintf_r+0x8f4>
   1954e:	0016059b          	addiw	a1,a2,1
   19552:	07c1                	addi	a5,a5,16
   19554:	01673023          	sd	s6,0(a4)
   19558:	01973423          	sd	s9,8(a4)
   1955c:	f8be                	sd	a5,112(sp)
   1955e:	d4ae                	sw	a1,104(sp)
   19560:	febc50e3          	bge	s8,a1,19540 <_vfiprintf_r+0x8b0>
   19564:	c7a1                	beqz	a5,195ac <_vfiprintf_r+0x91c>
   19566:	1090                	addi	a2,sp,96
   19568:	85ce                	mv	a1,s3
   1956a:	8556                	mv	a0,s5
   1956c:	e70ff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   19570:	980517e3          	bnez	a0,18efe <_vfiprintf_r+0x26e>
   19574:	5626                	lw	a2,104(sp)
   19576:	3a41                	addiw	s4,s4,-16
   19578:	77c6                	ld	a5,112(sp)
   1957a:	8722                	mv	a4,s0
   1957c:	0016069b          	addiw	a3,a2,1
   19580:	fd4cc7e3          	blt	s9,s4,1954e <_vfiprintf_r+0x8be>
   19584:	97d2                	add	a5,a5,s4
   19586:	01673023          	sd	s6,0(a4)
   1958a:	01473423          	sd	s4,8(a4)
   1958e:	f8be                	sd	a5,112(sp)
   19590:	d4b6                	sw	a3,104(sp)
   19592:	471d                	li	a4,7
   19594:	94d753e3          	bge	a4,a3,18eda <_vfiprintf_r+0x24a>
   19598:	cf91                	beqz	a5,195b4 <_vfiprintf_r+0x924>
   1959a:	1090                	addi	a2,sp,96
   1959c:	85ce                	mv	a1,s3
   1959e:	8556                	mv	a0,s5
   195a0:	e3cff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   195a4:	94051de3          	bnez	a0,18efe <_vfiprintf_r+0x26e>
   195a8:	77c6                	ld	a5,112(sp)
   195aa:	ba05                	j	18eda <_vfiprintf_r+0x24a>
   195ac:	4685                	li	a3,1
   195ae:	4601                	li	a2,0
   195b0:	8722                	mv	a4,s0
   195b2:	bf59                	j	19548 <_vfiprintf_r+0x8b8>
   195b4:	87a6                	mv	a5,s1
   195b6:	0174d363          	bge	s1,s7,195bc <_vfiprintf_r+0x92c>
   195ba:	87de                	mv	a5,s7
   195bc:	6702                	ld	a4,0(sp)
   195be:	9fb9                	addw	a5,a5,a4
   195c0:	e03e                	sd	a5,0(sp)
   195c2:	b22d                	j	18eec <_vfiprintf_r+0x25c>
   195c4:	d00781e3          	beqz	a5,192c6 <_vfiprintf_r+0x636>
   195c8:	1090                	addi	a2,sp,96
   195ca:	85ce                	mv	a1,s3
   195cc:	8556                	mv	a0,s5
   195ce:	e0eff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   195d2:	920516e3          	bnez	a0,18efe <_vfiprintf_r+0x26e>
   195d6:	5626                	lw	a2,104(sp)
   195d8:	77c6                	ld	a5,112(sp)
   195da:	8722                	mv	a4,s0
   195dc:	2605                	addiw	a2,a2,1
   195de:	b0d1                	j	18ea2 <_vfiprintf_r+0x212>
   195e0:	d482                	sw	zero,104(sp)
   195e2:	8722                	mv	a4,s0
   195e4:	fa0ff06f          	j	18d84 <_vfiprintf_r+0xf4>
   195e8:	0106f793          	andi	a5,a3,16
   195ec:	e7ed                	bnez	a5,196d6 <_vfiprintf_r+0xa46>
   195ee:	65a2                	ld	a1,8(sp)
   195f0:	0406f793          	andi	a5,a3,64
   195f4:	0005ab83          	lw	s7,0(a1)
   195f8:	1e078863          	beqz	a5,197e8 <_vfiprintf_r+0xb58>
   195fc:	1bc2                	slli	s7,s7,0x30
   195fe:	030bdb93          	srli	s7,s7,0x30
   19602:	e432                	sd	a2,8(sp)
   19604:	4785                	li	a5,1
   19606:	bacd                	j	18ff8 <_vfiprintf_r+0x368>
   19608:	4605                	li	a2,1
   1960a:	4681                	li	a3,0
   1960c:	8722                	mv	a4,s0
   1960e:	b051                	j	18e92 <_vfiprintf_r+0x202>
   19610:	0e029163          	bnez	t0,196f2 <_vfiprintf_r+0xa62>
   19614:	4681                	li	a3,0
   19616:	4605                	li	a2,1
   19618:	8722                	mv	a4,s0
   1961a:	b8a5                	j	18e92 <_vfiprintf_r+0x202>
   1961c:	0dc10a13          	addi	s4,sp,220
   19620:	4006ff13          	andi	t5,a3,1024
   19624:	4581                	li	a1,0
   19626:	8652                	mv	a2,s4
   19628:	4329                	li	t1,10
   1962a:	4ea5                	li	t4,9
   1962c:	0ff00d13          	li	s10,255
   19630:	a039                	j	1963e <_vfiprintf_r+0x9ae>
   19632:	026bd7b3          	divu	a5,s7,t1
   19636:	cd7ef2e3          	bgeu	t4,s7,192fa <_vfiprintf_r+0x66a>
   1963a:	8bbe                	mv	s7,a5
   1963c:	8662                	mv	a2,s8
   1963e:	fff60c13          	addi	s8,a2,-1
   19642:	2585                	addiw	a1,a1,1
   19644:	026bf7b3          	remu	a5,s7,t1
   19648:	0307879b          	addiw	a5,a5,48
   1964c:	fef60fa3          	sb	a5,-1(a2)
   19650:	fe0f01e3          	beqz	t5,19632 <_vfiprintf_r+0x9a2>
   19654:	77e2                	ld	a5,56(sp)
   19656:	0007c783          	lbu	a5,0(a5)
   1965a:	fcb79ce3          	bne	a5,a1,19632 <_vfiprintf_r+0x9a2>
   1965e:	fda78ae3          	beq	a5,s10,19632 <_vfiprintf_r+0x9a2>
   19662:	c97efce3          	bgeu	t4,s7,192fa <_vfiprintf_r+0x66a>
   19666:	67a6                	ld	a5,72(sp)
   19668:	6586                	ld	a1,64(sp)
   1966a:	f87a                	sd	t5,48(sp)
   1966c:	40fc0c33          	sub	s8,s8,a5
   19670:	863e                	mv	a2,a5
   19672:	8562                	mv	a0,s8
   19674:	f43a                	sd	a4,40(sp)
   19676:	f036                	sd	a3,32(sp)
   19678:	aa7fd0ef          	jal	ra,1711e <strncpy>
   1967c:	7762                	ld	a4,56(sp)
   1967e:	4329                	li	t1,10
   19680:	026bd7b3          	divu	a5,s7,t1
   19684:	00174603          	lbu	a2,1(a4)
   19688:	7682                	ld	a3,32(sp)
   1968a:	7f42                	ld	t5,48(sp)
   1968c:	00c03633          	snez	a2,a2
   19690:	9732                	add	a4,a4,a2
   19692:	fc3a                	sd	a4,56(sp)
   19694:	4581                	li	a1,0
   19696:	7722                	ld	a4,40(sp)
   19698:	4ea5                	li	t4,9
   1969a:	b745                	j	1963a <_vfiprintf_r+0x9aa>
   1969c:	000dc783          	lbu	a5,0(s11)
   196a0:	e462                	sd	s8,8(sp)
   196a2:	f0aff06f          	j	18dac <_vfiprintf_r+0x11c>
   196a6:	1090                	addi	a2,sp,96
   196a8:	85ce                	mv	a1,s3
   196aa:	8556                	mv	a0,s5
   196ac:	f47e                	sd	t6,40(sp)
   196ae:	f016                	sd	t0,32(sp)
   196b0:	d2cff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   196b4:	840515e3          	bnez	a0,18efe <_vfiprintf_r+0x26e>
   196b8:	56a6                	lw	a3,104(sp)
   196ba:	77c6                	ld	a5,112(sp)
   196bc:	7fa2                	ld	t6,40(sp)
   196be:	7282                	ld	t0,32(sp)
   196c0:	8722                	mv	a4,s0
   196c2:	0016861b          	addiw	a2,a3,1
   196c6:	f74ff06f          	j	18e3a <_vfiprintf_r+0x1aa>
   196ca:	0741                	addi	a4,a4,16
   196cc:	0015061b          	addiw	a2,a0,1
   196d0:	86aa                	mv	a3,a0
   196d2:	fc8ff06f          	j	18e9a <_vfiprintf_r+0x20a>
   196d6:	67a2                	ld	a5,8(sp)
   196d8:	e432                	sd	a2,8(sp)
   196da:	0007bb83          	ld	s7,0(a5)
   196de:	4785                	li	a5,1
   196e0:	ba21                	j	18ff8 <_vfiprintf_r+0x368>
   196e2:	67a2                	ld	a5,8(sp)
   196e4:	0007bb83          	ld	s7,0(a5)
   196e8:	b219                	j	18fee <_vfiprintf_r+0x35e>
   196ea:	67a2                	ld	a5,8(sp)
   196ec:	639c                	ld	a5,0(a5)
   196ee:	8bbe                	mv	s7,a5
   196f0:	b085                	j	18f50 <_vfiprintf_r+0x2c0>
   196f2:	08bc                	addi	a5,sp,88
   196f4:	f1be                	sd	a5,224(sp)
   196f6:	4789                	li	a5,2
   196f8:	f5be                	sd	a5,232(sp)
   196fa:	4685                	li	a3,1
   196fc:	8722                	mv	a4,s0
   196fe:	b3bd                	j	1946c <_vfiprintf_r+0x7dc>
   19700:	e432                	sd	a2,8(sp)
   19702:	bbad                	j	1947c <_vfiprintf_r+0x7ec>
   19704:	65a2                	ld	a1,8(sp)
   19706:	66f1                	lui	a3,0x1c
   19708:	73068693          	addi	a3,a3,1840 # 1c730 <__clzdi2+0xc6>
   1970c:	e836                	sd	a3,16(sp)
   1970e:	020d7693          	andi	a3,s10,32
   19712:	00858613          	addi	a2,a1,8
   19716:	c6a1                	beqz	a3,1975e <_vfiprintf_r+0xace>
   19718:	0005bb83          	ld	s7,0(a1)
   1971c:	001d7693          	andi	a3,s10,1
   19720:	ce89                	beqz	a3,1973a <_vfiprintf_r+0xaaa>
   19722:	000b8c63          	beqz	s7,1973a <_vfiprintf_r+0xaaa>
   19726:	002d6313          	ori	t1,s10,2
   1972a:	03000693          	li	a3,48
   1972e:	04d10c23          	sb	a3,88(sp)
   19732:	04f10ca3          	sb	a5,89(sp)
   19736:	00030d1b          	sext.w	s10,t1
   1973a:	bffd7693          	andi	a3,s10,-1025
   1973e:	2681                	sext.w	a3,a3
   19740:	e432                	sd	a2,8(sp)
   19742:	4789                	li	a5,2
   19744:	b855                	j	18ff8 <_vfiprintf_r+0x368>
   19746:	86ea                	mv	a3,s10
   19748:	b69d                	j	192ae <_vfiprintf_r+0x61e>
   1974a:	65a2                	ld	a1,8(sp)
   1974c:	66f1                	lui	a3,0x1c
   1974e:	74868693          	addi	a3,a3,1864 # 1c748 <__clzdi2+0xde>
   19752:	e836                	sd	a3,16(sp)
   19754:	020d7693          	andi	a3,s10,32
   19758:	00858613          	addi	a2,a1,8
   1975c:	fed5                	bnez	a3,19718 <_vfiprintf_r+0xa88>
   1975e:	010d7693          	andi	a3,s10,16
   19762:	c285                	beqz	a3,19782 <_vfiprintf_r+0xaf2>
   19764:	66a2                	ld	a3,8(sp)
   19766:	0006bb83          	ld	s7,0(a3)
   1976a:	bf4d                	j	1971c <_vfiprintf_r+0xa8c>
   1976c:	8562                	mv	a0,s8
   1976e:	f03a                	sd	a4,32(sp)
   19770:	e436                	sd	a3,8(sp)
   19772:	99cf80ef          	jal	ra,1190e <strlen>
   19776:	7702                	ld	a4,32(sp)
   19778:	00050a1b          	sext.w	s4,a0
   1977c:	4c81                	li	s9,0
   1977e:	ff6ff06f          	j	18f74 <_vfiprintf_r+0x2e4>
   19782:	65a2                	ld	a1,8(sp)
   19784:	040d7693          	andi	a3,s10,64
   19788:	0005ab83          	lw	s7,0(a1)
   1978c:	cac1                	beqz	a3,1981c <_vfiprintf_r+0xb8c>
   1978e:	1bc2                	slli	s7,s7,0x30
   19790:	030bdb93          	srli	s7,s7,0x30
   19794:	b761                	j	1971c <_vfiprintf_r+0xa8c>
   19796:	86ea                	mv	a3,s10
   19798:	e432                	sd	a2,8(sp)
   1979a:	b1cd                	j	1947c <_vfiprintf_r+0x7ec>
   1979c:	4685                	li	a3,1
   1979e:	0ed78c63          	beq	a5,a3,19896 <_vfiprintf_r+0xc06>
   197a2:	4689                	li	a3,2
   197a4:	b2d78ae3          	beq	a5,a3,192d8 <_vfiprintf_r+0x648>
   197a8:	86ea                	mv	a3,s10
   197aa:	b8f1                	j	19086 <_vfiprintf_r+0x3f6>
   197ac:	200d6313          	ori	t1,s10,512
   197b0:	001dc783          	lbu	a5,1(s11)
   197b4:	00030d1b          	sext.w	s10,t1
   197b8:	0d85                	addi	s11,s11,1
   197ba:	df2ff06f          	j	18dac <_vfiprintf_r+0x11c>
   197be:	020d6313          	ori	t1,s10,32
   197c2:	001dc783          	lbu	a5,1(s11)
   197c6:	00030d1b          	sext.w	s10,t1
   197ca:	0d85                	addi	s11,s11,1
   197cc:	de0ff06f          	j	18dac <_vfiprintf_r+0x11c>
   197d0:	4799                	li	a5,6
   197d2:	000c8a1b          	sext.w	s4,s9
   197d6:	0597ee63          	bltu	a5,s9,19832 <_vfiprintf_r+0xba2>
   197da:	6e71                	lui	t3,0x1c
   197dc:	8bd2                	mv	s7,s4
   197de:	e436                	sd	a3,8(sp)
   197e0:	760e0c13          	addi	s8,t3,1888 # 1c760 <__clzdi2+0xf6>
   197e4:	e30ff06f          	j	18e14 <_vfiprintf_r+0x184>
   197e8:	2006f793          	andi	a5,a3,512
   197ec:	cbbd                	beqz	a5,19862 <_vfiprintf_r+0xbd2>
   197ee:	0ffbfb93          	zext.b	s7,s7
   197f2:	e432                	sd	a2,8(sp)
   197f4:	4785                	li	a5,1
   197f6:	803ff06f          	j	18ff8 <_vfiprintf_r+0x368>
   197fa:	200d7793          	andi	a5,s10,512
   197fe:	cfa9                	beqz	a5,19858 <_vfiprintf_r+0xbc8>
   19800:	0ffbfb93          	zext.b	s7,s7
   19804:	feaff06f          	j	18fee <_vfiprintf_r+0x35e>
   19808:	200d7793          	andi	a5,s10,512
   1980c:	c3b9                	beqz	a5,19852 <_vfiprintf_r+0xbc2>
   1980e:	018b9b9b          	slliw	s7,s7,0x18
   19812:	418bdb9b          	sraiw	s7,s7,0x18
   19816:	87de                	mv	a5,s7
   19818:	f38ff06f          	j	18f50 <_vfiprintf_r+0x2c0>
   1981c:	200d7693          	andi	a3,s10,512
   19820:	caa1                	beqz	a3,19870 <_vfiprintf_r+0xbe0>
   19822:	0ffbfb93          	zext.b	s7,s7
   19826:	bddd                	j	1971c <_vfiprintf_r+0xa8c>
   19828:	4605                	li	a2,1
   1982a:	4681                	li	a3,0
   1982c:	8722                	mv	a4,s0
   1982e:	e6cff06f          	j	18e9a <_vfiprintf_r+0x20a>
   19832:	4a19                	li	s4,6
   19834:	b75d                	j	197da <_vfiprintf_r+0xb4a>
   19836:	05710793          	addi	a5,sp,87
   1983a:	f1be                	sd	a5,224(sp)
   1983c:	4785                	li	a5,1
   1983e:	f5be                	sd	a5,232(sp)
   19840:	4605                	li	a2,1
   19842:	8722                	mv	a4,s0
   19844:	e12ff06f          	j	18e56 <_vfiprintf_r+0x1c6>
   19848:	6782                	ld	a5,0(sp)
   1984a:	00f69023          	sh	a5,0(a3)
   1984e:	ce2ff06f          	j	18d30 <_vfiprintf_r+0xa0>
   19852:	87de                	mv	a5,s7
   19854:	efcff06f          	j	18f50 <_vfiprintf_r+0x2c0>
   19858:	1b82                	slli	s7,s7,0x20
   1985a:	020bdb93          	srli	s7,s7,0x20
   1985e:	f90ff06f          	j	18fee <_vfiprintf_r+0x35e>
   19862:	1b82                	slli	s7,s7,0x20
   19864:	020bdb93          	srli	s7,s7,0x20
   19868:	e432                	sd	a2,8(sp)
   1986a:	4785                	li	a5,1
   1986c:	f8cff06f          	j	18ff8 <_vfiprintf_r+0x368>
   19870:	1b82                	slli	s7,s7,0x20
   19872:	020bdb93          	srli	s7,s7,0x20
   19876:	b55d                	j	1971c <_vfiprintf_r+0xa8c>
   19878:	1090                	addi	a2,sp,96
   1987a:	85ce                	mv	a1,s3
   1987c:	8556                	mv	a0,s5
   1987e:	b5eff0ef          	jal	ra,18bdc <__sprint_r.part.0>
   19882:	e7cff06f          	j	18efe <_vfiprintf_r+0x26e>
   19886:	8a66                	mv	s4,s9
   19888:	e436                	sd	a3,8(sp)
   1988a:	4c81                	li	s9,0
   1988c:	ee8ff06f          	j	18f74 <_vfiprintf_r+0x2e4>
   19890:	0016069b          	addiw	a3,a2,1
   19894:	b9c5                	j	19584 <_vfiprintf_r+0x8f4>
   19896:	86ea                	mv	a3,s10
   19898:	b6ed                	j	19482 <_vfiprintf_r+0x7f2>
   1989a:	57fd                	li	a5,-1
   1989c:	e03e                	sd	a5,0(sp)
   1989e:	e6cff06f          	j	18f0a <_vfiprintf_r+0x27a>
   198a2:	8532                	mv	a0,a2
   198a4:	bc7d                	j	19362 <_vfiprintf_r+0x6d2>
   198a6:	c29c                	sw	a5,0(a3)
   198a8:	c88ff06f          	j	18d30 <_vfiprintf_r+0xa0>
   198ac:	e432                	sd	a2,8(sp)
   198ae:	bed1                	j	19482 <_vfiprintf_r+0x7f2>
   198b0:	6622                	ld	a2,8(sp)
   198b2:	421c                	lw	a5,0(a2)
   198b4:	00860c13          	addi	s8,a2,8
   198b8:	883e                	mv	a6,a5
   198ba:	0007d363          	bgez	a5,198c0 <_vfiprintf_r+0xc30>
   198be:	587d                	li	a6,-1
   198c0:	001dc783          	lbu	a5,1(s11)
   198c4:	00080c9b          	sext.w	s9,a6
   198c8:	e462                	sd	s8,8(sp)
   198ca:	8db6                	mv	s11,a3
   198cc:	ce0ff06f          	j	18dac <_vfiprintf_r+0x11c>

00000000000198d0 <vfiprintf>:
   198d0:	87aa                	mv	a5,a0
   198d2:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   198d6:	86b2                	mv	a3,a2
   198d8:	862e                	mv	a2,a1
   198da:	85be                	mv	a1,a5
   198dc:	bb4ff06f          	j	18c90 <_vfiprintf_r>

00000000000198e0 <__sbprintf>:
   198e0:	0105d783          	lhu	a5,16(a1)
   198e4:	0ac5ae03          	lw	t3,172(a1)
   198e8:	0125d303          	lhu	t1,18(a1)
   198ec:	0305b883          	ld	a7,48(a1)
   198f0:	0405b803          	ld	a6,64(a1)
   198f4:	b3010113          	addi	sp,sp,-1232
   198f8:	9bf5                	andi	a5,a5,-3
   198fa:	40000713          	li	a4,1024
   198fe:	4c813023          	sd	s0,1216(sp)
   19902:	00f11823          	sh	a5,16(sp)
   19906:	842e                	mv	s0,a1
   19908:	191c                	addi	a5,sp,176
   1990a:	858a                	mv	a1,sp
   1990c:	4a913c23          	sd	s1,1208(sp)
   19910:	4b213823          	sd	s2,1200(sp)
   19914:	4c113423          	sd	ra,1224(sp)
   19918:	892a                	mv	s2,a0
   1991a:	d772                	sw	t3,172(sp)
   1991c:	00611923          	sh	t1,18(sp)
   19920:	f846                	sd	a7,48(sp)
   19922:	e0c2                	sd	a6,64(sp)
   19924:	e03e                	sd	a5,0(sp)
   19926:	ec3e                	sd	a5,24(sp)
   19928:	c63a                	sw	a4,12(sp)
   1992a:	d03a                	sw	a4,32(sp)
   1992c:	d402                	sw	zero,40(sp)
   1992e:	b62ff0ef          	jal	ra,18c90 <_vfiprintf_r>
   19932:	84aa                	mv	s1,a0
   19934:	02055963          	bgez	a0,19966 <__sbprintf+0x86>
   19938:	01015783          	lhu	a5,16(sp)
   1993c:	0407f793          	andi	a5,a5,64
   19940:	c799                	beqz	a5,1994e <__sbprintf+0x6e>
   19942:	01045783          	lhu	a5,16(s0)
   19946:	0407e793          	ori	a5,a5,64
   1994a:	00f41823          	sh	a5,16(s0)
   1994e:	4c813083          	ld	ra,1224(sp)
   19952:	4c013403          	ld	s0,1216(sp)
   19956:	4b013903          	ld	s2,1200(sp)
   1995a:	8526                	mv	a0,s1
   1995c:	4b813483          	ld	s1,1208(sp)
   19960:	4d010113          	addi	sp,sp,1232
   19964:	8082                	ret
   19966:	858a                	mv	a1,sp
   19968:	854a                	mv	a0,s2
   1996a:	afff60ef          	jal	ra,10468 <_fflush_r>
   1996e:	d569                	beqz	a0,19938 <__sbprintf+0x58>
   19970:	54fd                	li	s1,-1
   19972:	b7d9                	j	19938 <__sbprintf+0x58>

0000000000019974 <__register_exitproc>:
   19974:	6301b703          	ld	a4,1584(gp) # 1f748 <_global_impure_ptr>
   19978:	1f873783          	ld	a5,504(a4)
   1997c:	c3b1                	beqz	a5,199c0 <__register_exitproc+0x4c>
   1997e:	4798                	lw	a4,8(a5)
   19980:	487d                	li	a6,31
   19982:	06e84263          	blt	a6,a4,199e6 <__register_exitproc+0x72>
   19986:	c505                	beqz	a0,199ae <__register_exitproc+0x3a>
   19988:	00371813          	slli	a6,a4,0x3
   1998c:	983e                	add	a6,a6,a5
   1998e:	10c83823          	sd	a2,272(a6)
   19992:	3107a883          	lw	a7,784(a5)
   19996:	4605                	li	a2,1
   19998:	00e6163b          	sllw	a2,a2,a4
   1999c:	00c8e8b3          	or	a7,a7,a2
   199a0:	3117a823          	sw	a7,784(a5)
   199a4:	20d83823          	sd	a3,528(a6)
   199a8:	4689                	li	a3,2
   199aa:	02d50063          	beq	a0,a3,199ca <__register_exitproc+0x56>
   199ae:	00270693          	addi	a3,a4,2
   199b2:	068e                	slli	a3,a3,0x3
   199b4:	2705                	addiw	a4,a4,1
   199b6:	c798                	sw	a4,8(a5)
   199b8:	97b6                	add	a5,a5,a3
   199ba:	e38c                	sd	a1,0(a5)
   199bc:	4501                	li	a0,0
   199be:	8082                	ret
   199c0:	20070793          	addi	a5,a4,512
   199c4:	1ef73c23          	sd	a5,504(a4)
   199c8:	bf5d                	j	1997e <__register_exitproc+0xa>
   199ca:	3147a683          	lw	a3,788(a5)
   199ce:	4501                	li	a0,0
   199d0:	8ed1                	or	a3,a3,a2
   199d2:	30d7aa23          	sw	a3,788(a5)
   199d6:	00270693          	addi	a3,a4,2
   199da:	068e                	slli	a3,a3,0x3
   199dc:	2705                	addiw	a4,a4,1
   199de:	c798                	sw	a4,8(a5)
   199e0:	97b6                	add	a5,a5,a3
   199e2:	e38c                	sd	a1,0(a5)
   199e4:	8082                	ret
   199e6:	557d                	li	a0,-1
   199e8:	8082                	ret

00000000000199ea <__assert_func>:
   199ea:	6481b703          	ld	a4,1608(gp) # 1f760 <_impure_ptr>
   199ee:	1141                	addi	sp,sp,-16
   199f0:	87b6                	mv	a5,a3
   199f2:	8832                	mv	a6,a2
   199f4:	e406                	sd	ra,8(sp)
   199f6:	01873883          	ld	a7,24(a4)
   199fa:	86aa                	mv	a3,a0
   199fc:	872e                	mv	a4,a1
   199fe:	863e                	mv	a2,a5
   19a00:	00080d63          	beqz	a6,19a1a <__assert_func+0x30>
   19a04:	67f5                	lui	a5,0x1d
   19a06:	21078793          	addi	a5,a5,528 # 1d210 <zeroes.0+0x10>
   19a0a:	65f5                	lui	a1,0x1d
   19a0c:	22058593          	addi	a1,a1,544 # 1d220 <zeroes.0+0x20>
   19a10:	8546                	mv	a0,a7
   19a12:	0f2000ef          	jal	ra,19b04 <fiprintf>
   19a16:	250010ef          	jal	ra,1ac66 <abort>
   19a1a:	6871                	lui	a6,0x1c
   19a1c:	75880793          	addi	a5,a6,1880 # 1c758 <__clzdi2+0xee>
   19a20:	75880813          	addi	a6,a6,1880
   19a24:	b7dd                	j	19a0a <__assert_func+0x20>

0000000000019a26 <__assert>:
   19a26:	1141                	addi	sp,sp,-16
   19a28:	86b2                	mv	a3,a2
   19a2a:	4601                	li	a2,0
   19a2c:	e406                	sd	ra,8(sp)
   19a2e:	fbdff0ef          	jal	ra,199ea <__assert_func>

0000000000019a32 <_calloc_r>:
   19a32:	02c5b7b3          	mulhu	a5,a1,a2
   19a36:	1141                	addi	sp,sp,-16
   19a38:	e406                	sd	ra,8(sp)
   19a3a:	e022                	sd	s0,0(sp)
   19a3c:	02c585b3          	mul	a1,a1,a2
   19a40:	efb5                	bnez	a5,19abc <_calloc_r+0x8a>
   19a42:	a96f70ef          	jal	ra,10cd8 <_malloc_r>
   19a46:	842a                	mv	s0,a0
   19a48:	c521                	beqz	a0,19a90 <_calloc_r+0x5e>
   19a4a:	ff853603          	ld	a2,-8(a0)
   19a4e:	04800713          	li	a4,72
   19a52:	9a71                	andi	a2,a2,-4
   19a54:	1661                	addi	a2,a2,-8
   19a56:	04c76263          	bltu	a4,a2,19a9a <_calloc_r+0x68>
   19a5a:	02700693          	li	a3,39
   19a5e:	87aa                	mv	a5,a0
   19a60:	02c6f263          	bgeu	a3,a2,19a84 <_calloc_r+0x52>
   19a64:	00053023          	sd	zero,0(a0)
   19a68:	00053423          	sd	zero,8(a0)
   19a6c:	03700793          	li	a5,55
   19a70:	02c7fd63          	bgeu	a5,a2,19aaa <_calloc_r+0x78>
   19a74:	00053823          	sd	zero,16(a0)
   19a78:	00053c23          	sd	zero,24(a0)
   19a7c:	02050793          	addi	a5,a0,32
   19a80:	04e60863          	beq	a2,a4,19ad0 <_calloc_r+0x9e>
   19a84:	0007b023          	sd	zero,0(a5)
   19a88:	0007b423          	sd	zero,8(a5)
   19a8c:	0007b823          	sd	zero,16(a5)
   19a90:	60a2                	ld	ra,8(sp)
   19a92:	8522                	mv	a0,s0
   19a94:	6402                	ld	s0,0(sp)
   19a96:	0141                	addi	sp,sp,16
   19a98:	8082                	ret
   19a9a:	4581                	li	a1,0
   19a9c:	9cbf70ef          	jal	ra,11466 <memset>
   19aa0:	60a2                	ld	ra,8(sp)
   19aa2:	8522                	mv	a0,s0
   19aa4:	6402                	ld	s0,0(sp)
   19aa6:	0141                	addi	sp,sp,16
   19aa8:	8082                	ret
   19aaa:	01050793          	addi	a5,a0,16
   19aae:	0007b023          	sd	zero,0(a5)
   19ab2:	0007b423          	sd	zero,8(a5)
   19ab6:	0007b823          	sd	zero,16(a5)
   19aba:	bfd9                	j	19a90 <_calloc_r+0x5e>
   19abc:	022000ef          	jal	ra,19ade <__errno>
   19ac0:	4401                	li	s0,0
   19ac2:	47b1                	li	a5,12
   19ac4:	60a2                	ld	ra,8(sp)
   19ac6:	c11c                	sw	a5,0(a0)
   19ac8:	8522                	mv	a0,s0
   19aca:	6402                	ld	s0,0(sp)
   19acc:	0141                	addi	sp,sp,16
   19ace:	8082                	ret
   19ad0:	02053023          	sd	zero,32(a0)
   19ad4:	03050793          	addi	a5,a0,48
   19ad8:	02053423          	sd	zero,40(a0)
   19adc:	b765                	j	19a84 <_calloc_r+0x52>

0000000000019ade <__errno>:
   19ade:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   19ae2:	8082                	ret

0000000000019ae4 <_fiprintf_r>:
   19ae4:	715d                	addi	sp,sp,-80
   19ae6:	02810313          	addi	t1,sp,40
   19aea:	f436                	sd	a3,40(sp)
   19aec:	869a                	mv	a3,t1
   19aee:	ec06                	sd	ra,24(sp)
   19af0:	f83a                	sd	a4,48(sp)
   19af2:	fc3e                	sd	a5,56(sp)
   19af4:	e0c2                	sd	a6,64(sp)
   19af6:	e4c6                	sd	a7,72(sp)
   19af8:	e41a                	sd	t1,8(sp)
   19afa:	996ff0ef          	jal	ra,18c90 <_vfiprintf_r>
   19afe:	60e2                	ld	ra,24(sp)
   19b00:	6161                	addi	sp,sp,80
   19b02:	8082                	ret

0000000000019b04 <fiprintf>:
   19b04:	8e2a                	mv	t3,a0
   19b06:	715d                	addi	sp,sp,-80
   19b08:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   19b0c:	02010313          	addi	t1,sp,32
   19b10:	f032                	sd	a2,32(sp)
   19b12:	f436                	sd	a3,40(sp)
   19b14:	862e                	mv	a2,a1
   19b16:	869a                	mv	a3,t1
   19b18:	85f2                	mv	a1,t3
   19b1a:	ec06                	sd	ra,24(sp)
   19b1c:	f83a                	sd	a4,48(sp)
   19b1e:	fc3e                	sd	a5,56(sp)
   19b20:	e0c2                	sd	a6,64(sp)
   19b22:	e4c6                	sd	a7,72(sp)
   19b24:	e41a                	sd	t1,8(sp)
   19b26:	96aff0ef          	jal	ra,18c90 <_vfiprintf_r>
   19b2a:	60e2                	ld	ra,24(sp)
   19b2c:	6161                	addi	sp,sp,80
   19b2e:	8082                	ret

0000000000019b30 <__fputwc>:
   19b30:	715d                	addi	sp,sp,-80
   19b32:	e0a2                	sd	s0,64(sp)
   19b34:	f44e                	sd	s3,40(sp)
   19b36:	e85a                	sd	s6,16(sp)
   19b38:	e486                	sd	ra,72(sp)
   19b3a:	fc26                	sd	s1,56(sp)
   19b3c:	f84a                	sd	s2,48(sp)
   19b3e:	f052                	sd	s4,32(sp)
   19b40:	ec56                	sd	s5,24(sp)
   19b42:	8b2a                	mv	s6,a0
   19b44:	89ae                	mv	s3,a1
   19b46:	8432                	mv	s0,a2
   19b48:	1de000ef          	jal	ra,19d26 <__locale_mb_cur_max>
   19b4c:	4785                	li	a5,1
   19b4e:	00f51e63          	bne	a0,a5,19b6a <__fputwc+0x3a>
   19b52:	fff9879b          	addiw	a5,s3,-1
   19b56:	0fe00713          	li	a4,254
   19b5a:	00f76863          	bltu	a4,a5,19b6a <__fputwc+0x3a>
   19b5e:	0ff9f713          	zext.b	a4,s3
   19b62:	00e10423          	sb	a4,8(sp)
   19b66:	4905                	li	s2,1
   19b68:	a839                	j	19b86 <__fputwc+0x56>
   19b6a:	0a440693          	addi	a3,s0,164
   19b6e:	864e                	mv	a2,s3
   19b70:	002c                	addi	a1,sp,8
   19b72:	855a                	mv	a0,s6
   19b74:	032010ef          	jal	ra,1aba6 <_wcrtomb_r>
   19b78:	57fd                	li	a5,-1
   19b7a:	892a                	mv	s2,a0
   19b7c:	06f50563          	beq	a0,a5,19be6 <__fputwc+0xb6>
   19b80:	c125                	beqz	a0,19be0 <__fputwc+0xb0>
   19b82:	00814703          	lbu	a4,8(sp)
   19b86:	4481                	li	s1,0
   19b88:	5a7d                	li	s4,-1
   19b8a:	4aa9                	li	s5,10
   19b8c:	a831                	j	19ba8 <__fputwc+0x78>
   19b8e:	601c                	ld	a5,0(s0)
   19b90:	00178693          	addi	a3,a5,1
   19b94:	e014                	sd	a3,0(s0)
   19b96:	00e78023          	sb	a4,0(a5)
   19b9a:	0485                	addi	s1,s1,1
   19b9c:	003c                	addi	a5,sp,8
   19b9e:	97a6                	add	a5,a5,s1
   19ba0:	0524f063          	bgeu	s1,s2,19be0 <__fputwc+0xb0>
   19ba4:	0007c703          	lbu	a4,0(a5)
   19ba8:	445c                	lw	a5,12(s0)
   19baa:	37fd                	addiw	a5,a5,-1
   19bac:	c45c                	sw	a5,12(s0)
   19bae:	fe07d0e3          	bgez	a5,19b8e <__fputwc+0x5e>
   19bb2:	5414                	lw	a3,40(s0)
   19bb4:	85ba                	mv	a1,a4
   19bb6:	8622                	mv	a2,s0
   19bb8:	855a                	mv	a0,s6
   19bba:	00d7c463          	blt	a5,a3,19bc2 <__fputwc+0x92>
   19bbe:	fd5718e3          	bne	a4,s5,19b8e <__fputwc+0x5e>
   19bc2:	6df000ef          	jal	ra,1aaa0 <__swbuf_r>
   19bc6:	fd451ae3          	bne	a0,s4,19b9a <__fputwc+0x6a>
   19bca:	557d                	li	a0,-1
   19bcc:	60a6                	ld	ra,72(sp)
   19bce:	6406                	ld	s0,64(sp)
   19bd0:	74e2                	ld	s1,56(sp)
   19bd2:	7942                	ld	s2,48(sp)
   19bd4:	79a2                	ld	s3,40(sp)
   19bd6:	7a02                	ld	s4,32(sp)
   19bd8:	6ae2                	ld	s5,24(sp)
   19bda:	6b42                	ld	s6,16(sp)
   19bdc:	6161                	addi	sp,sp,80
   19bde:	8082                	ret
   19be0:	0009851b          	sext.w	a0,s3
   19be4:	b7e5                	j	19bcc <__fputwc+0x9c>
   19be6:	01045783          	lhu	a5,16(s0)
   19bea:	557d                	li	a0,-1
   19bec:	0407e793          	ori	a5,a5,64
   19bf0:	00f41823          	sh	a5,16(s0)
   19bf4:	bfe1                	j	19bcc <__fputwc+0x9c>

0000000000019bf6 <_fputwc_r>:
   19bf6:	01061783          	lh	a5,16(a2)
   19bfa:	03279713          	slli	a4,a5,0x32
   19bfe:	00074c63          	bltz	a4,19c16 <_fputwc_r+0x20>
   19c02:	0ac62703          	lw	a4,172(a2)
   19c06:	6689                	lui	a3,0x2
   19c08:	8fd5                	or	a5,a5,a3
   19c0a:	6689                	lui	a3,0x2
   19c0c:	8f55                	or	a4,a4,a3
   19c0e:	00f61823          	sh	a5,16(a2)
   19c12:	0ae62623          	sw	a4,172(a2)
   19c16:	f1bff06f          	j	19b30 <__fputwc>

0000000000019c1a <fputwc>:
   19c1a:	1101                	addi	sp,sp,-32
   19c1c:	e822                	sd	s0,16(sp)
   19c1e:	6481b403          	ld	s0,1608(gp) # 1f760 <_impure_ptr>
   19c22:	ec06                	sd	ra,24(sp)
   19c24:	862e                	mv	a2,a1
   19c26:	85aa                	mv	a1,a0
   19c28:	c019                	beqz	s0,19c2e <fputwc+0x14>
   19c2a:	483c                	lw	a5,80(s0)
   19c2c:	c79d                	beqz	a5,19c5a <fputwc+0x40>
   19c2e:	01061783          	lh	a5,16(a2)
   19c32:	03279713          	slli	a4,a5,0x32
   19c36:	00074c63          	bltz	a4,19c4e <fputwc+0x34>
   19c3a:	0ac62703          	lw	a4,172(a2)
   19c3e:	6689                	lui	a3,0x2
   19c40:	8fd5                	or	a5,a5,a3
   19c42:	6689                	lui	a3,0x2
   19c44:	8f55                	or	a4,a4,a3
   19c46:	00f61823          	sh	a5,16(a2)
   19c4a:	0ae62623          	sw	a4,172(a2)
   19c4e:	8522                	mv	a0,s0
   19c50:	6442                	ld	s0,16(sp)
   19c52:	60e2                	ld	ra,24(sp)
   19c54:	6105                	addi	sp,sp,32
   19c56:	edbff06f          	j	19b30 <__fputwc>
   19c5a:	e02a                	sd	a0,0(sp)
   19c5c:	8522                	mv	a0,s0
   19c5e:	e432                	sd	a2,8(sp)
   19c60:	bb5f60ef          	jal	ra,10814 <__sinit>
   19c64:	6622                	ld	a2,8(sp)
   19c66:	6582                	ld	a1,0(sp)
   19c68:	b7d9                	j	19c2e <fputwc+0x14>

0000000000019c6a <_fstat_r>:
   19c6a:	1101                	addi	sp,sp,-32
   19c6c:	872e                	mv	a4,a1
   19c6e:	e822                	sd	s0,16(sp)
   19c70:	e426                	sd	s1,8(sp)
   19c72:	842a                	mv	s0,a0
   19c74:	85b2                	mv	a1,a2
   19c76:	853a                	mv	a0,a4
   19c78:	ec06                	sd	ra,24(sp)
   19c7a:	6801a423          	sw	zero,1672(gp) # 1f7a0 <errno>
   19c7e:	3d6010ef          	jal	ra,1b054 <_fstat>
   19c82:	57fd                	li	a5,-1
   19c84:	00f50763          	beq	a0,a5,19c92 <_fstat_r+0x28>
   19c88:	60e2                	ld	ra,24(sp)
   19c8a:	6442                	ld	s0,16(sp)
   19c8c:	64a2                	ld	s1,8(sp)
   19c8e:	6105                	addi	sp,sp,32
   19c90:	8082                	ret
   19c92:	6881a783          	lw	a5,1672(gp) # 1f7a0 <errno>
   19c96:	dbed                	beqz	a5,19c88 <_fstat_r+0x1e>
   19c98:	60e2                	ld	ra,24(sp)
   19c9a:	c01c                	sw	a5,0(s0)
   19c9c:	6442                	ld	s0,16(sp)
   19c9e:	64a2                	ld	s1,8(sp)
   19ca0:	6105                	addi	sp,sp,32
   19ca2:	8082                	ret

0000000000019ca4 <_isatty_r>:
   19ca4:	1101                	addi	sp,sp,-32
   19ca6:	e822                	sd	s0,16(sp)
   19ca8:	e426                	sd	s1,8(sp)
   19caa:	842a                	mv	s0,a0
   19cac:	852e                	mv	a0,a1
   19cae:	ec06                	sd	ra,24(sp)
   19cb0:	6801a423          	sw	zero,1672(gp) # 1f7a0 <errno>
   19cb4:	3e4010ef          	jal	ra,1b098 <_isatty>
   19cb8:	57fd                	li	a5,-1
   19cba:	00f50763          	beq	a0,a5,19cc8 <_isatty_r+0x24>
   19cbe:	60e2                	ld	ra,24(sp)
   19cc0:	6442                	ld	s0,16(sp)
   19cc2:	64a2                	ld	s1,8(sp)
   19cc4:	6105                	addi	sp,sp,32
   19cc6:	8082                	ret
   19cc8:	6881a783          	lw	a5,1672(gp) # 1f7a0 <errno>
   19ccc:	dbed                	beqz	a5,19cbe <_isatty_r+0x1a>
   19cce:	60e2                	ld	ra,24(sp)
   19cd0:	c01c                	sw	a5,0(s0)
   19cd2:	6442                	ld	s0,16(sp)
   19cd4:	64a2                	ld	s1,8(sp)
   19cd6:	6105                	addi	sp,sp,32
   19cd8:	8082                	ret

0000000000019cda <_setlocale_r>:
   19cda:	1101                	addi	sp,sp,-32
   19cdc:	ec06                	sd	ra,24(sp)
   19cde:	e822                	sd	s0,16(sp)
   19ce0:	e426                	sd	s1,8(sp)
   19ce2:	c20d                	beqz	a2,19d04 <_setlocale_r+0x2a>
   19ce4:	65f5                	lui	a1,0x1d
   19ce6:	25858593          	addi	a1,a1,600 # 1d258 <zeroes.0+0x58>
   19cea:	8532                	mv	a0,a2
   19cec:	8432                	mv	s0,a2
   19cee:	0d0000ef          	jal	ra,19dbe <strcmp>
   19cf2:	64f5                	lui	s1,0x1d
   19cf4:	e911                	bnez	a0,19d08 <_setlocale_r+0x2e>
   19cf6:	25048513          	addi	a0,s1,592 # 1d250 <zeroes.0+0x50>
   19cfa:	60e2                	ld	ra,24(sp)
   19cfc:	6442                	ld	s0,16(sp)
   19cfe:	64a2                	ld	s1,8(sp)
   19d00:	6105                	addi	sp,sp,32
   19d02:	8082                	ret
   19d04:	64f5                	lui	s1,0x1d
   19d06:	bfc5                	j	19cf6 <_setlocale_r+0x1c>
   19d08:	25048593          	addi	a1,s1,592 # 1d250 <zeroes.0+0x50>
   19d0c:	8522                	mv	a0,s0
   19d0e:	0b0000ef          	jal	ra,19dbe <strcmp>
   19d12:	d175                	beqz	a0,19cf6 <_setlocale_r+0x1c>
   19d14:	65f1                	lui	a1,0x1c
   19d16:	75858593          	addi	a1,a1,1880 # 1c758 <__clzdi2+0xee>
   19d1a:	8522                	mv	a0,s0
   19d1c:	0a2000ef          	jal	ra,19dbe <strcmp>
   19d20:	d979                	beqz	a0,19cf6 <_setlocale_r+0x1c>
   19d22:	4501                	li	a0,0
   19d24:	bfd9                	j	19cfa <_setlocale_r+0x20>

0000000000019d26 <__locale_mb_cur_max>:
   19d26:	5b81c503          	lbu	a0,1464(gp) # 1f6d0 <__global_locale+0x160>
   19d2a:	8082                	ret

0000000000019d2c <setlocale>:
   19d2c:	1101                	addi	sp,sp,-32
   19d2e:	ec06                	sd	ra,24(sp)
   19d30:	e822                	sd	s0,16(sp)
   19d32:	e426                	sd	s1,8(sp)
   19d34:	c18d                	beqz	a1,19d56 <setlocale+0x2a>
   19d36:	842e                	mv	s0,a1
   19d38:	65f5                	lui	a1,0x1d
   19d3a:	25858593          	addi	a1,a1,600 # 1d258 <zeroes.0+0x58>
   19d3e:	8522                	mv	a0,s0
   19d40:	07e000ef          	jal	ra,19dbe <strcmp>
   19d44:	64f5                	lui	s1,0x1d
   19d46:	e911                	bnez	a0,19d5a <setlocale+0x2e>
   19d48:	25048513          	addi	a0,s1,592 # 1d250 <zeroes.0+0x50>
   19d4c:	60e2                	ld	ra,24(sp)
   19d4e:	6442                	ld	s0,16(sp)
   19d50:	64a2                	ld	s1,8(sp)
   19d52:	6105                	addi	sp,sp,32
   19d54:	8082                	ret
   19d56:	64f5                	lui	s1,0x1d
   19d58:	bfc5                	j	19d48 <setlocale+0x1c>
   19d5a:	25048593          	addi	a1,s1,592 # 1d250 <zeroes.0+0x50>
   19d5e:	8522                	mv	a0,s0
   19d60:	05e000ef          	jal	ra,19dbe <strcmp>
   19d64:	d175                	beqz	a0,19d48 <setlocale+0x1c>
   19d66:	65f1                	lui	a1,0x1c
   19d68:	75858593          	addi	a1,a1,1880 # 1c758 <__clzdi2+0xee>
   19d6c:	8522                	mv	a0,s0
   19d6e:	050000ef          	jal	ra,19dbe <strcmp>
   19d72:	d979                	beqz	a0,19d48 <setlocale+0x1c>
   19d74:	4501                	li	a0,0
   19d76:	bfd9                	j	19d4c <setlocale+0x20>

0000000000019d78 <_mbtowc_r>:
   19d78:	5401b783          	ld	a5,1344(gp) # 1f658 <__global_locale+0xe8>
   19d7c:	8782                	jr	a5

0000000000019d7e <__ascii_mbtowc>:
   19d7e:	c999                	beqz	a1,19d94 <__ascii_mbtowc+0x16>
   19d80:	c61d                	beqz	a2,19dae <__ascii_mbtowc+0x30>
   19d82:	ca95                	beqz	a3,19db6 <__ascii_mbtowc+0x38>
   19d84:	00064783          	lbu	a5,0(a2)
   19d88:	c19c                	sw	a5,0(a1)
   19d8a:	00064503          	lbu	a0,0(a2)
   19d8e:	00a03533          	snez	a0,a0
   19d92:	8082                	ret
   19d94:	1141                	addi	sp,sp,-16
   19d96:	006c                	addi	a1,sp,12
   19d98:	ce09                	beqz	a2,19db2 <__ascii_mbtowc+0x34>
   19d9a:	c285                	beqz	a3,19dba <__ascii_mbtowc+0x3c>
   19d9c:	00064783          	lbu	a5,0(a2)
   19da0:	c19c                	sw	a5,0(a1)
   19da2:	00064503          	lbu	a0,0(a2)
   19da6:	00a03533          	snez	a0,a0
   19daa:	0141                	addi	sp,sp,16
   19dac:	8082                	ret
   19dae:	4501                	li	a0,0
   19db0:	8082                	ret
   19db2:	4501                	li	a0,0
   19db4:	bfdd                	j	19daa <__ascii_mbtowc+0x2c>
   19db6:	5579                	li	a0,-2
   19db8:	8082                	ret
   19dba:	5579                	li	a0,-2
   19dbc:	b7fd                	j	19daa <__ascii_mbtowc+0x2c>

0000000000019dbe <strcmp>:
   19dbe:	00b56733          	or	a4,a0,a1
   19dc2:	53fd                	li	t2,-1
   19dc4:	8b1d                	andi	a4,a4,7
   19dc6:	eb4d                	bnez	a4,19e78 <strcmp+0xba>
   19dc8:	00006797          	auipc	a5,0x6
   19dcc:	9607b783          	ld	a5,-1696(a5) # 1f728 <mask>
   19dd0:	6110                	ld	a2,0(a0)
   19dd2:	6194                	ld	a3,0(a1)
   19dd4:	00f672b3          	and	t0,a2,a5
   19dd8:	00f66333          	or	t1,a2,a5
   19ddc:	92be                	add	t0,t0,a5
   19dde:	0062e2b3          	or	t0,t0,t1
   19de2:	0a729963          	bne	t0,t2,19e94 <strcmp+0xd6>
   19de6:	02d61e63          	bne	a2,a3,19e22 <strcmp+0x64>
   19dea:	6510                	ld	a2,8(a0)
   19dec:	6594                	ld	a3,8(a1)
   19dee:	00f672b3          	and	t0,a2,a5
   19df2:	00f66333          	or	t1,a2,a5
   19df6:	92be                	add	t0,t0,a5
   19df8:	0062e2b3          	or	t0,t0,t1
   19dfc:	08729a63          	bne	t0,t2,19e90 <strcmp+0xd2>
   19e00:	02d61163          	bne	a2,a3,19e22 <strcmp+0x64>
   19e04:	6910                	ld	a2,16(a0)
   19e06:	6994                	ld	a3,16(a1)
   19e08:	00f672b3          	and	t0,a2,a5
   19e0c:	00f66333          	or	t1,a2,a5
   19e10:	92be                	add	t0,t0,a5
   19e12:	0062e2b3          	or	t0,t0,t1
   19e16:	08729363          	bne	t0,t2,19e9c <strcmp+0xde>
   19e1a:	0561                	addi	a0,a0,24
   19e1c:	05e1                	addi	a1,a1,24
   19e1e:	fad609e3          	beq	a2,a3,19dd0 <strcmp+0x12>
   19e22:	03061713          	slli	a4,a2,0x30
   19e26:	03069793          	slli	a5,a3,0x30
   19e2a:	02f71863          	bne	a4,a5,19e5a <strcmp+0x9c>
   19e2e:	02061713          	slli	a4,a2,0x20
   19e32:	02069793          	slli	a5,a3,0x20
   19e36:	02f71263          	bne	a4,a5,19e5a <strcmp+0x9c>
   19e3a:	01061713          	slli	a4,a2,0x10
   19e3e:	01069793          	slli	a5,a3,0x10
   19e42:	00f71c63          	bne	a4,a5,19e5a <strcmp+0x9c>
   19e46:	03065713          	srli	a4,a2,0x30
   19e4a:	0306d793          	srli	a5,a3,0x30
   19e4e:	40f70533          	sub	a0,a4,a5
   19e52:	0ff57593          	zext.b	a1,a0
   19e56:	e991                	bnez	a1,19e6a <strcmp+0xac>
   19e58:	8082                	ret
   19e5a:	9341                	srli	a4,a4,0x30
   19e5c:	93c1                	srli	a5,a5,0x30
   19e5e:	40f70533          	sub	a0,a4,a5
   19e62:	0ff57593          	zext.b	a1,a0
   19e66:	e191                	bnez	a1,19e6a <strcmp+0xac>
   19e68:	8082                	ret
   19e6a:	0ff77713          	zext.b	a4,a4
   19e6e:	0ff7f793          	zext.b	a5,a5
   19e72:	40f70533          	sub	a0,a4,a5
   19e76:	8082                	ret
   19e78:	00054603          	lbu	a2,0(a0)
   19e7c:	0005c683          	lbu	a3,0(a1)
   19e80:	0505                	addi	a0,a0,1
   19e82:	0585                	addi	a1,a1,1
   19e84:	00d61363          	bne	a2,a3,19e8a <strcmp+0xcc>
   19e88:	fa65                	bnez	a2,19e78 <strcmp+0xba>
   19e8a:	40d60533          	sub	a0,a2,a3
   19e8e:	8082                	ret
   19e90:	0521                	addi	a0,a0,8
   19e92:	05a1                	addi	a1,a1,8
   19e94:	fed612e3          	bne	a2,a3,19e78 <strcmp+0xba>
   19e98:	4501                	li	a0,0
   19e9a:	8082                	ret
   19e9c:	0541                	addi	a0,a0,16
   19e9e:	05c1                	addi	a1,a1,16
   19ea0:	fcd61ce3          	bne	a2,a3,19e78 <strcmp+0xba>
   19ea4:	4501                	li	a0,0
   19ea6:	8082                	ret

0000000000019ea8 <__ssprint_r>:
   19ea8:	6a1c                	ld	a5,16(a2)
   19eaa:	715d                	addi	sp,sp,-80
   19eac:	f44e                	sd	s3,40(sp)
   19eae:	ec56                	sd	s5,24(sp)
   19eb0:	e486                	sd	ra,72(sp)
   19eb2:	e0a2                	sd	s0,64(sp)
   19eb4:	fc26                	sd	s1,56(sp)
   19eb6:	f84a                	sd	s2,48(sp)
   19eb8:	f052                	sd	s4,32(sp)
   19eba:	e85a                	sd	s6,16(sp)
   19ebc:	e45e                	sd	s7,8(sp)
   19ebe:	e062                	sd	s8,0(sp)
   19ec0:	00063983          	ld	s3,0(a2)
   19ec4:	8ab2                	mv	s5,a2
   19ec6:	10078d63          	beqz	a5,19fe0 <__ssprint_r+0x138>
   19eca:	45d8                	lw	a4,12(a1)
   19ecc:	619c                	ld	a5,0(a1)
   19ece:	8b2a                	mv	s6,a0
   19ed0:	84ae                	mv	s1,a1
   19ed2:	4a01                	li	s4,0
   19ed4:	4401                	li	s0,0
   19ed6:	893a                	mv	s2,a4
   19ed8:	853e                	mv	a0,a5
   19eda:	c029                	beqz	s0,19f1c <__ssprint_r+0x74>
   19edc:	04e47663          	bgeu	s0,a4,19f28 <__ssprint_r+0x80>
   19ee0:	0004071b          	sext.w	a4,s0
   19ee4:	893a                	mv	s2,a4
   19ee6:	8bba                	mv	s7,a4
   19ee8:	853e                	mv	a0,a5
   19eea:	85d2                	mv	a1,s4
   19eec:	864a                	mv	a2,s2
   19eee:	e77fb0ef          	jal	ra,15d64 <memmove>
   19ef2:	44d4                	lw	a3,12(s1)
   19ef4:	609c                	ld	a5,0(s1)
   19ef6:	010ab703          	ld	a4,16(s5)
   19efa:	412686bb          	subw	a3,a3,s2
   19efe:	97ca                	add	a5,a5,s2
   19f00:	c4d4                	sw	a3,12(s1)
   19f02:	e09c                	sd	a5,0(s1)
   19f04:	41770733          	sub	a4,a4,s7
   19f08:	00eab823          	sd	a4,16(s5)
   19f0c:	9a5e                	add	s4,s4,s7
   19f0e:	41740433          	sub	s0,s0,s7
   19f12:	c779                	beqz	a4,19fe0 <__ssprint_r+0x138>
   19f14:	44d8                	lw	a4,12(s1)
   19f16:	853e                	mv	a0,a5
   19f18:	893a                	mv	s2,a4
   19f1a:	f069                	bnez	s0,19edc <__ssprint_r+0x34>
   19f1c:	0009ba03          	ld	s4,0(s3)
   19f20:	0089b403          	ld	s0,8(s3)
   19f24:	09c1                	addi	s3,s3,16
   19f26:	bf45                	j	19ed6 <__ssprint_r+0x2e>
   19f28:	0104d703          	lhu	a4,16(s1)
   19f2c:	00040b9b          	sext.w	s7,s0
   19f30:	48077693          	andi	a3,a4,1152
   19f34:	dadd                	beqz	a3,19eea <__ssprint_r+0x42>
   19f36:	5090                	lw	a2,32(s1)
   19f38:	6c8c                	ld	a1,24(s1)
   19f3a:	0016169b          	slliw	a3,a2,0x1
   19f3e:	9eb1                	addw	a3,a3,a2
   19f40:	8f8d                	sub	a5,a5,a1
   19f42:	01f6d91b          	srliw	s2,a3,0x1f
   19f46:	00078b9b          	sext.w	s7,a5
   19f4a:	00d9093b          	addw	s2,s2,a3
   19f4e:	001b8693          	addi	a3,s7,1
   19f52:	4019591b          	sraiw	s2,s2,0x1
   19f56:	96a2                	add	a3,a3,s0
   19f58:	00d97563          	bgeu	s2,a3,19f62 <__ssprint_r+0xba>
   19f5c:	2785                	addiw	a5,a5,1
   19f5e:	0087893b          	addw	s2,a5,s0
   19f62:	40077713          	andi	a4,a4,1024
   19f66:	c731                	beqz	a4,19fb2 <__ssprint_r+0x10a>
   19f68:	85ca                	mv	a1,s2
   19f6a:	855a                	mv	a0,s6
   19f6c:	d6df60ef          	jal	ra,10cd8 <_malloc_r>
   19f70:	8c2a                	mv	s8,a0
   19f72:	c931                	beqz	a0,19fc6 <__ssprint_r+0x11e>
   19f74:	6c8c                	ld	a1,24(s1)
   19f76:	865e                	mv	a2,s7
   19f78:	c06f70ef          	jal	ra,1137e <memcpy>
   19f7c:	0104d783          	lhu	a5,16(s1)
   19f80:	b7f7f793          	andi	a5,a5,-1153
   19f84:	0807e793          	ori	a5,a5,128
   19f88:	00f49823          	sh	a5,16(s1)
   19f8c:	017c0533          	add	a0,s8,s7
   19f90:	41790bbb          	subw	s7,s2,s7
   19f94:	0004071b          	sext.w	a4,s0
   19f98:	0324a023          	sw	s2,32(s1)
   19f9c:	0174a623          	sw	s7,12(s1)
   19fa0:	0184bc23          	sd	s8,24(s1)
   19fa4:	e088                	sd	a0,0(s1)
   19fa6:	893a                	mv	s2,a4
   19fa8:	8bba                	mv	s7,a4
   19faa:	87aa                	mv	a5,a0
   19fac:	f2e47fe3          	bgeu	s0,a4,19eea <__ssprint_r+0x42>
   19fb0:	bf15                	j	19ee4 <__ssprint_r+0x3c>
   19fb2:	864a                	mv	a2,s2
   19fb4:	855a                	mv	a0,s6
   19fb6:	b67fc0ef          	jal	ra,16b1c <_realloc_r>
   19fba:	8c2a                	mv	s8,a0
   19fbc:	f961                	bnez	a0,19f8c <__ssprint_r+0xe4>
   19fbe:	6c8c                	ld	a1,24(s1)
   19fc0:	855a                	mv	a0,s6
   19fc2:	94ff60ef          	jal	ra,10910 <_free_r>
   19fc6:	0104d783          	lhu	a5,16(s1)
   19fca:	4731                	li	a4,12
   19fcc:	00eb2023          	sw	a4,0(s6)
   19fd0:	0407e793          	ori	a5,a5,64
   19fd4:	00f49823          	sh	a5,16(s1)
   19fd8:	000ab823          	sd	zero,16(s5)
   19fdc:	557d                	li	a0,-1
   19fde:	a011                	j	19fe2 <__ssprint_r+0x13a>
   19fe0:	4501                	li	a0,0
   19fe2:	60a6                	ld	ra,72(sp)
   19fe4:	6406                	ld	s0,64(sp)
   19fe6:	000aa423          	sw	zero,8(s5)
   19fea:	74e2                	ld	s1,56(sp)
   19fec:	7942                	ld	s2,48(sp)
   19fee:	79a2                	ld	s3,40(sp)
   19ff0:	7a02                	ld	s4,32(sp)
   19ff2:	6ae2                	ld	s5,24(sp)
   19ff4:	6b42                	ld	s6,16(sp)
   19ff6:	6ba2                	ld	s7,8(sp)
   19ff8:	6c02                	ld	s8,0(sp)
   19ffa:	6161                	addi	sp,sp,80
   19ffc:	8082                	ret

0000000000019ffe <_svfiprintf_r>:
   19ffe:	0105d783          	lhu	a5,16(a1)
   1a002:	7105                	addi	sp,sp,-480
   1a004:	ff4e                	sd	s3,440(sp)
   1a006:	f756                	sd	s5,424(sp)
   1a008:	feee                	sd	s11,376(sp)
   1a00a:	ef86                	sd	ra,472(sp)
   1a00c:	eba2                	sd	s0,464(sp)
   1a00e:	e7a6                	sd	s1,456(sp)
   1a010:	e3ca                	sd	s2,448(sp)
   1a012:	fb52                	sd	s4,432(sp)
   1a014:	f35a                	sd	s6,416(sp)
   1a016:	ef5e                	sd	s7,408(sp)
   1a018:	eb62                	sd	s8,400(sp)
   1a01a:	e766                	sd	s9,392(sp)
   1a01c:	e36a                	sd	s10,384(sp)
   1a01e:	0807f793          	andi	a5,a5,128
   1a022:	e836                	sd	a3,16(sp)
   1a024:	89ae                	mv	s3,a1
   1a026:	8aaa                	mv	s5,a0
   1a028:	8db2                	mv	s11,a2
   1a02a:	c781                	beqz	a5,1a032 <_svfiprintf_r+0x34>
   1a02c:	6d9c                	ld	a5,24(a1)
   1a02e:	12078be3          	beqz	a5,1a964 <_svfiprintf_r+0x966>
   1a032:	66f5                	lui	a3,0x1d
   1a034:	0f010a13          	addi	s4,sp,240
   1a038:	26468693          	addi	a3,a3,612 # 1d264 <zeroes.0+0x64>
   1a03c:	6b75                	lui	s6,0x1d
   1a03e:	64f5                	lui	s1,0x1d
   1a040:	f8d2                	sd	s4,112(sp)
   1a042:	e102                	sd	zero,128(sp)
   1a044:	dc82                	sw	zero,120(sp)
   1a046:	4701                	li	a4,0
   1a048:	87d2                	mv	a5,s4
   1a04a:	ec02                	sd	zero,24(sp)
   1a04c:	e082                	sd	zero,64(sp)
   1a04e:	e882                	sd	zero,80(sp)
   1a050:	e482                	sd	zero,72(sp)
   1a052:	e402                	sd	zero,8(sp)
   1a054:	f036                	sd	a3,32(sp)
   1a056:	3d0b0b13          	addi	s6,s6,976 # 1d3d0 <blanks.1>
   1a05a:	3e048493          	addi	s1,s1,992 # 1d3e0 <zeroes.0>
   1a05e:	000dc683          	lbu	a3,0(s11)
   1a062:	16068e63          	beqz	a3,1a1de <_svfiprintf_r+0x1e0>
   1a066:	846e                	mv	s0,s11
   1a068:	02500613          	li	a2,37
   1a06c:	28c68063          	beq	a3,a2,1a2ec <_svfiprintf_r+0x2ee>
   1a070:	00144683          	lbu	a3,1(s0)
   1a074:	0405                	addi	s0,s0,1
   1a076:	fafd                	bnez	a3,1a06c <_svfiprintf_r+0x6e>
   1a078:	41b4093b          	subw	s2,s0,s11
   1a07c:	16090163          	beqz	s2,1a1de <_svfiprintf_r+0x1e0>
   1a080:	56e6                	lw	a3,120(sp)
   1a082:	974a                	add	a4,a4,s2
   1a084:	01b7b023          	sd	s11,0(a5)
   1a088:	0016861b          	addiw	a2,a3,1
   1a08c:	0127b423          	sd	s2,8(a5)
   1a090:	e13a                	sd	a4,128(sp)
   1a092:	dcb2                	sw	a2,120(sp)
   1a094:	469d                	li	a3,7
   1a096:	07c1                	addi	a5,a5,16
   1a098:	26c6c163          	blt	a3,a2,1a2fa <_svfiprintf_r+0x2fc>
   1a09c:	6622                	ld	a2,8(sp)
   1a09e:	00044683          	lbu	a3,0(s0)
   1a0a2:	0126063b          	addw	a2,a2,s2
   1a0a6:	e432                	sd	a2,8(sp)
   1a0a8:	12068b63          	beqz	a3,1a1de <_svfiprintf_r+0x1e0>
   1a0ac:	00144683          	lbu	a3,1(s0)
   1a0b0:	00140d93          	addi	s11,s0,1
   1a0b4:	060103a3          	sb	zero,103(sp)
   1a0b8:	5cfd                	li	s9,-1
   1a0ba:	4401                	li	s0,0
   1a0bc:	4d01                	li	s10,0
   1a0be:	05a00913          	li	s2,90
   1a0c2:	4ba5                	li	s7,9
   1a0c4:	0d85                	addi	s11,s11,1
   1a0c6:	2681                	sext.w	a3,a3
   1a0c8:	02a00513          	li	a0,42
   1a0cc:	fe06861b          	addiw	a2,a3,-32
   1a0d0:	0006059b          	sext.w	a1,a2
   1a0d4:	04b96363          	bltu	s2,a1,1a11a <_svfiprintf_r+0x11c>
   1a0d8:	02061593          	slli	a1,a2,0x20
   1a0dc:	01e5d613          	srli	a2,a1,0x1e
   1a0e0:	7582                	ld	a1,32(sp)
   1a0e2:	962e                	add	a2,a2,a1
   1a0e4:	4210                	lw	a2,0(a2)
   1a0e6:	8602                	jr	a2
   1a0e8:	4401                	li	s0,0
   1a0ea:	000dc583          	lbu	a1,0(s11)
   1a0ee:	0024161b          	slliw	a2,s0,0x2
   1a0f2:	9e21                	addw	a2,a2,s0
   1a0f4:	fd06869b          	addiw	a3,a3,-48
   1a0f8:	0016161b          	slliw	a2,a2,0x1
   1a0fc:	fd05881b          	addiw	a6,a1,-48
   1a100:	00c6843b          	addw	s0,a3,a2
   1a104:	0d85                	addi	s11,s11,1
   1a106:	0005869b          	sext.w	a3,a1
   1a10a:	ff0bf0e3          	bgeu	s7,a6,1a0ea <_svfiprintf_r+0xec>
   1a10e:	fe06861b          	addiw	a2,a3,-32
   1a112:	0006059b          	sext.w	a1,a2
   1a116:	fcb971e3          	bgeu	s2,a1,1a0d8 <_svfiprintf_r+0xda>
   1a11a:	c2f1                	beqz	a3,1a1de <_svfiprintf_r+0x1e0>
   1a11c:	08d10423          	sb	a3,136(sp)
   1a120:	060103a3          	sb	zero,103(sp)
   1a124:	4b85                	li	s7,1
   1a126:	4905                	li	s2,1
   1a128:	08810c13          	addi	s8,sp,136
   1a12c:	4c81                	li	s9,0
   1a12e:	002d7293          	andi	t0,s10,2
   1a132:	00028363          	beqz	t0,1a138 <_svfiprintf_r+0x13a>
   1a136:	2b89                	addiw	s7,s7,2
   1a138:	084d7f93          	andi	t6,s10,132
   1a13c:	56e6                	lw	a3,120(sp)
   1a13e:	000f9663          	bnez	t6,1a14a <_svfiprintf_r+0x14c>
   1a142:	41740ebb          	subw	t4,s0,s7
   1a146:	5bd04b63          	bgtz	t4,1a6fc <_svfiprintf_r+0x6fe>
   1a14a:	06714603          	lbu	a2,103(sp)
   1a14e:	ce11                	beqz	a2,1a16a <_svfiprintf_r+0x16c>
   1a150:	06710593          	addi	a1,sp,103
   1a154:	e38c                	sd	a1,0(a5)
   1a156:	2685                	addiw	a3,a3,1
   1a158:	0705                	addi	a4,a4,1
   1a15a:	4585                	li	a1,1
   1a15c:	e78c                	sd	a1,8(a5)
   1a15e:	e13a                	sd	a4,128(sp)
   1a160:	dcb6                	sw	a3,120(sp)
   1a162:	461d                	li	a2,7
   1a164:	07c1                	addi	a5,a5,16
   1a166:	1ad64463          	blt	a2,a3,1a30e <_svfiprintf_r+0x310>
   1a16a:	00028e63          	beqz	t0,1a186 <_svfiprintf_r+0x188>
   1a16e:	10ac                	addi	a1,sp,104
   1a170:	e38c                	sd	a1,0(a5)
   1a172:	2685                	addiw	a3,a3,1
   1a174:	0709                	addi	a4,a4,2
   1a176:	4589                	li	a1,2
   1a178:	e78c                	sd	a1,8(a5)
   1a17a:	e13a                	sd	a4,128(sp)
   1a17c:	dcb6                	sw	a3,120(sp)
   1a17e:	461d                	li	a2,7
   1a180:	07c1                	addi	a5,a5,16
   1a182:	60d64163          	blt	a2,a3,1a784 <_svfiprintf_r+0x786>
   1a186:	08000613          	li	a2,128
   1a18a:	44cf8b63          	beq	t6,a2,1a5e0 <_svfiprintf_r+0x5e2>
   1a18e:	412c8cbb          	subw	s9,s9,s2
   1a192:	4d904863          	bgtz	s9,1a662 <_svfiprintf_r+0x664>
   1a196:	0016861b          	addiw	a2,a3,1
   1a19a:	974a                	add	a4,a4,s2
   1a19c:	0187b023          	sd	s8,0(a5)
   1a1a0:	0127b423          	sd	s2,8(a5)
   1a1a4:	e13a                	sd	a4,128(sp)
   1a1a6:	dcb2                	sw	a2,120(sp)
   1a1a8:	469d                	li	a3,7
   1a1aa:	07c1                	addi	a5,a5,16
   1a1ac:	52c6c363          	blt	a3,a2,1a6d2 <_svfiprintf_r+0x6d4>
   1a1b0:	004d7e13          	andi	t3,s10,4
   1a1b4:	000e0663          	beqz	t3,1a1c0 <_svfiprintf_r+0x1c2>
   1a1b8:	4174093b          	subw	s2,s0,s7
   1a1bc:	5f204163          	bgtz	s2,1a79e <_svfiprintf_r+0x7a0>
   1a1c0:	87a2                	mv	a5,s0
   1a1c2:	01745363          	bge	s0,s7,1a1c8 <_svfiprintf_r+0x1ca>
   1a1c6:	87de                	mv	a5,s7
   1a1c8:	66a2                	ld	a3,8(sp)
   1a1ca:	9fb5                	addw	a5,a5,a3
   1a1cc:	e43e                	sd	a5,8(sp)
   1a1ce:	50071c63          	bnez	a4,1a6e6 <_svfiprintf_r+0x6e8>
   1a1d2:	000dc683          	lbu	a3,0(s11)
   1a1d6:	dc82                	sw	zero,120(sp)
   1a1d8:	87d2                	mv	a5,s4
   1a1da:	e80696e3          	bnez	a3,1a066 <_svfiprintf_r+0x68>
   1a1de:	060715e3          	bnez	a4,1aa48 <_svfiprintf_r+0xa4a>
   1a1e2:	0109d783          	lhu	a5,16(s3)
   1a1e6:	0407f793          	andi	a5,a5,64
   1a1ea:	080790e3          	bnez	a5,1aa6a <_svfiprintf_r+0xa6c>
   1a1ee:	60fe                	ld	ra,472(sp)
   1a1f0:	645e                	ld	s0,464(sp)
   1a1f2:	6522                	ld	a0,8(sp)
   1a1f4:	64be                	ld	s1,456(sp)
   1a1f6:	691e                	ld	s2,448(sp)
   1a1f8:	79fa                	ld	s3,440(sp)
   1a1fa:	7a5a                	ld	s4,432(sp)
   1a1fc:	7aba                	ld	s5,424(sp)
   1a1fe:	7b1a                	ld	s6,416(sp)
   1a200:	6bfa                	ld	s7,408(sp)
   1a202:	6c5a                	ld	s8,400(sp)
   1a204:	6cba                	ld	s9,392(sp)
   1a206:	6d1a                	ld	s10,384(sp)
   1a208:	7df6                	ld	s11,376(sp)
   1a20a:	613d                	addi	sp,sp,480
   1a20c:	8082                	ret
   1a20e:	010d6e13          	ori	t3,s10,16
   1a212:	000dc683          	lbu	a3,0(s11)
   1a216:	000e0d1b          	sext.w	s10,t3
   1a21a:	b56d                	j	1a0c4 <_svfiprintf_r+0xc6>
   1a21c:	010d6e13          	ori	t3,s10,16
   1a220:	000e0d1b          	sext.w	s10,t3
   1a224:	65c2                	ld	a1,16(sp)
   1a226:	020d7693          	andi	a3,s10,32
   1a22a:	00858613          	addi	a2,a1,8
   1a22e:	10068e63          	beqz	a3,1a34a <_svfiprintf_r+0x34c>
   1a232:	6194                	ld	a3,0(a1)
   1a234:	8bb6                	mv	s7,a3
   1a236:	1206cc63          	bltz	a3,1a36e <_svfiprintf_r+0x370>
   1a23a:	56fd                	li	a3,-1
   1a23c:	74dc8e63          	beq	s9,a3,1a998 <_svfiprintf_r+0x99a>
   1a240:	f7fd7e93          	andi	t4,s10,-129
   1a244:	e832                	sd	a2,16(sp)
   1a246:	2e81                	sext.w	t4,t4
   1a248:	5c0b8263          	beqz	s7,1a80c <_svfiprintf_r+0x80e>
   1a24c:	46a5                	li	a3,9
   1a24e:	5f76e763          	bltu	a3,s7,1a83c <_svfiprintf_r+0x83e>
   1a252:	030b8b9b          	addiw	s7,s7,48
   1a256:	0f7105a3          	sb	s7,235(sp)
   1a25a:	8d76                	mv	s10,t4
   1a25c:	4905                	li	s2,1
   1a25e:	0eb10c13          	addi	s8,sp,235
   1a262:	a8b1                	j	1a2be <_svfiprintf_r+0x2c0>
   1a264:	010d6e13          	ori	t3,s10,16
   1a268:	000e0d1b          	sext.w	s10,t3
   1a26c:	65c2                	ld	a1,16(sp)
   1a26e:	020d7693          	andi	a3,s10,32
   1a272:	00858613          	addi	a2,a1,8
   1a276:	cadd                	beqz	a3,1a32c <_svfiprintf_r+0x32e>
   1a278:	0005bb83          	ld	s7,0(a1)
   1a27c:	bffd7e93          	andi	t4,s10,-1025
   1a280:	2e81                	sext.w	t4,t4
   1a282:	e832                	sd	a2,16(sp)
   1a284:	4681                	li	a3,0
   1a286:	4601                	li	a2,0
   1a288:	06c103a3          	sb	a2,103(sp)
   1a28c:	567d                	li	a2,-1
   1a28e:	0ecc8c63          	beq	s9,a2,1a386 <_svfiprintf_r+0x388>
   1a292:	f7fefe13          	andi	t3,t4,-129
   1a296:	000e0d1b          	sext.w	s10,t3
   1a29a:	440b9f63          	bnez	s7,1a6f8 <_svfiprintf_r+0x6fa>
   1a29e:	300c9663          	bnez	s9,1a5aa <_svfiprintf_r+0x5ac>
   1a2a2:	56069863          	bnez	a3,1a812 <_svfiprintf_r+0x814>
   1a2a6:	001ef913          	andi	s2,t4,1
   1a2aa:	0ec10c13          	addi	s8,sp,236
   1a2ae:	00090863          	beqz	s2,1a2be <_svfiprintf_r+0x2c0>
   1a2b2:	03000693          	li	a3,48
   1a2b6:	0ed105a3          	sb	a3,235(sp)
   1a2ba:	0eb10c13          	addi	s8,sp,235
   1a2be:	86e6                	mv	a3,s9
   1a2c0:	012cd363          	bge	s9,s2,1a2c6 <_svfiprintf_r+0x2c8>
   1a2c4:	86ca                	mv	a3,s2
   1a2c6:	06714603          	lbu	a2,103(sp)
   1a2ca:	00068b9b          	sext.w	s7,a3
   1a2ce:	e60600e3          	beqz	a2,1a12e <_svfiprintf_r+0x130>
   1a2d2:	00168b9b          	addiw	s7,a3,1
   1a2d6:	bda1                	j	1a12e <_svfiprintf_r+0x130>
   1a2d8:	4080043b          	negw	s0,s0
   1a2dc:	e862                	sd	s8,16(sp)
   1a2de:	004d6e13          	ori	t3,s10,4
   1a2e2:	000dc683          	lbu	a3,0(s11)
   1a2e6:	000e0d1b          	sext.w	s10,t3
   1a2ea:	bbe9                	j	1a0c4 <_svfiprintf_r+0xc6>
   1a2ec:	41b4093b          	subw	s2,s0,s11
   1a2f0:	d80918e3          	bnez	s2,1a080 <_svfiprintf_r+0x82>
   1a2f4:	00044683          	lbu	a3,0(s0)
   1a2f8:	bb45                	j	1a0a8 <_svfiprintf_r+0xaa>
   1a2fa:	1890                	addi	a2,sp,112
   1a2fc:	85ce                	mv	a1,s3
   1a2fe:	8556                	mv	a0,s5
   1a300:	ba9ff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a304:	ec051fe3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a308:	670a                	ld	a4,128(sp)
   1a30a:	87d2                	mv	a5,s4
   1a30c:	bb41                	j	1a09c <_svfiprintf_r+0x9e>
   1a30e:	1890                	addi	a2,sp,112
   1a310:	85ce                	mv	a1,s3
   1a312:	8556                	mv	a0,s5
   1a314:	f87e                	sd	t6,48(sp)
   1a316:	f416                	sd	t0,40(sp)
   1a318:	b91ff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a31c:	ec0513e3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a320:	670a                	ld	a4,128(sp)
   1a322:	56e6                	lw	a3,120(sp)
   1a324:	7fc2                	ld	t6,48(sp)
   1a326:	72a2                	ld	t0,40(sp)
   1a328:	87d2                	mv	a5,s4
   1a32a:	b581                	j	1a16a <_svfiprintf_r+0x16c>
   1a32c:	010d7693          	andi	a3,s10,16
   1a330:	5a069063          	bnez	a3,1a8d0 <_svfiprintf_r+0x8d2>
   1a334:	65c2                	ld	a1,16(sp)
   1a336:	040d7693          	andi	a3,s10,64
   1a33a:	0005ab83          	lw	s7,0(a1)
   1a33e:	6c068163          	beqz	a3,1aa00 <_svfiprintf_r+0xa02>
   1a342:	1bc2                	slli	s7,s7,0x30
   1a344:	030bdb93          	srli	s7,s7,0x30
   1a348:	bf15                	j	1a27c <_svfiprintf_r+0x27e>
   1a34a:	010d7693          	andi	a3,s10,16
   1a34e:	56069d63          	bnez	a3,1a8c8 <_svfiprintf_r+0x8ca>
   1a352:	65c2                	ld	a1,16(sp)
   1a354:	040d7693          	andi	a3,s10,64
   1a358:	0005ab83          	lw	s7,0(a1)
   1a35c:	68068063          	beqz	a3,1a9dc <_svfiprintf_r+0x9de>
   1a360:	010b9b9b          	slliw	s7,s7,0x10
   1a364:	410bdb9b          	sraiw	s7,s7,0x10
   1a368:	86de                	mv	a3,s7
   1a36a:	ec06d8e3          	bgez	a3,1a23a <_svfiprintf_r+0x23c>
   1a36e:	e832                	sd	a2,16(sp)
   1a370:	02d00613          	li	a2,45
   1a374:	06c103a3          	sb	a2,103(sp)
   1a378:	567d                	li	a2,-1
   1a37a:	41700bb3          	neg	s7,s7
   1a37e:	8eea                	mv	t4,s10
   1a380:	4685                	li	a3,1
   1a382:	f0cc98e3          	bne	s9,a2,1a292 <_svfiprintf_r+0x294>
   1a386:	4605                	li	a2,1
   1a388:	ecc682e3          	beq	a3,a2,1a24c <_svfiprintf_r+0x24e>
   1a38c:	4609                	li	a2,2
   1a38e:	22c68563          	beq	a3,a2,1a5b8 <_svfiprintf_r+0x5ba>
   1a392:	0ec10913          	addi	s2,sp,236
   1a396:	8c4a                	mv	s8,s2
   1a398:	007bf693          	andi	a3,s7,7
   1a39c:	03068693          	addi	a3,a3,48
   1a3a0:	fedc0fa3          	sb	a3,-1(s8)
   1a3a4:	003bdb93          	srli	s7,s7,0x3
   1a3a8:	8662                	mv	a2,s8
   1a3aa:	1c7d                	addi	s8,s8,-1
   1a3ac:	fe0b96e3          	bnez	s7,1a398 <_svfiprintf_r+0x39a>
   1a3b0:	001ef593          	andi	a1,t4,1
   1a3b4:	22058263          	beqz	a1,1a5d8 <_svfiprintf_r+0x5da>
   1a3b8:	03000593          	li	a1,48
   1a3bc:	20b68e63          	beq	a3,a1,1a5d8 <_svfiprintf_r+0x5da>
   1a3c0:	1679                	addi	a2,a2,-2
   1a3c2:	febc0fa3          	sb	a1,-1(s8)
   1a3c6:	40c9093b          	subw	s2,s2,a2
   1a3ca:	8d76                	mv	s10,t4
   1a3cc:	8c32                	mv	s8,a2
   1a3ce:	bdc5                	j	1a2be <_svfiprintf_r+0x2c0>
   1a3d0:	66c2                	ld	a3,16(sp)
   1a3d2:	060103a3          	sb	zero,103(sp)
   1a3d6:	0006bc03          	ld	s8,0(a3)
   1a3da:	00868813          	addi	a6,a3,8
   1a3de:	5e0c0263          	beqz	s8,1a9c2 <_svfiprintf_r+0x9c4>
   1a3e2:	56fd                	li	a3,-1
   1a3e4:	56dc8463          	beq	s9,a3,1a94c <_svfiprintf_r+0x94e>
   1a3e8:	8666                	mv	a2,s9
   1a3ea:	4581                	li	a1,0
   1a3ec:	8562                	mv	a0,s8
   1a3ee:	f842                	sd	a6,48(sp)
   1a3f0:	f43e                	sd	a5,40(sp)
   1a3f2:	e83a                	sd	a4,16(sp)
   1a3f4:	efdf60ef          	jal	ra,112f0 <memchr>
   1a3f8:	6742                	ld	a4,16(sp)
   1a3fa:	77a2                	ld	a5,40(sp)
   1a3fc:	7842                	ld	a6,48(sp)
   1a3fe:	64050c63          	beqz	a0,1aa56 <_svfiprintf_r+0xa58>
   1a402:	4185093b          	subw	s2,a0,s8
   1a406:	e842                	sd	a6,16(sp)
   1a408:	4c81                	li	s9,0
   1a40a:	bd55                	j	1a2be <_svfiprintf_r+0x2c0>
   1a40c:	6642                	ld	a2,16(sp)
   1a40e:	060103a3          	sb	zero,103(sp)
   1a412:	4b85                	li	s7,1
   1a414:	4214                	lw	a3,0(a2)
   1a416:	0621                	addi	a2,a2,8
   1a418:	e832                	sd	a2,16(sp)
   1a41a:	08d10423          	sb	a3,136(sp)
   1a41e:	4905                	li	s2,1
   1a420:	08810c13          	addi	s8,sp,136
   1a424:	b321                	j	1a12c <_svfiprintf_r+0x12e>
   1a426:	080d6e13          	ori	t3,s10,128
   1a42a:	000dc683          	lbu	a3,0(s11)
   1a42e:	000e0d1b          	sext.w	s10,t3
   1a432:	b949                	j	1a0c4 <_svfiprintf_r+0xc6>
   1a434:	020d6e13          	ori	t3,s10,32
   1a438:	000dc683          	lbu	a3,0(s11)
   1a43c:	000e0d1b          	sext.w	s10,t3
   1a440:	b151                	j	1a0c4 <_svfiprintf_r+0xc6>
   1a442:	6642                	ld	a2,16(sp)
   1a444:	76e1                	lui	a3,0xffff8
   1a446:	8306c693          	xori	a3,a3,-2000
   1a44a:	002d6e93          	ori	t4,s10,2
   1a44e:	06d11423          	sh	a3,104(sp)
   1a452:	6d71                	lui	s10,0x1c
   1a454:	00860693          	addi	a3,a2,8
   1a458:	e836                	sd	a3,16(sp)
   1a45a:	730d0693          	addi	a3,s10,1840 # 1c730 <__clzdi2+0xc6>
   1a45e:	ec36                	sd	a3,24(sp)
   1a460:	00063b83          	ld	s7,0(a2)
   1a464:	2e81                	sext.w	t4,t4
   1a466:	4689                	li	a3,2
   1a468:	bd39                	j	1a286 <_svfiprintf_r+0x288>
   1a46a:	010d6e93          	ori	t4,s10,16
   1a46e:	2e81                	sext.w	t4,t4
   1a470:	65c2                	ld	a1,16(sp)
   1a472:	020ef693          	andi	a3,t4,32
   1a476:	00858613          	addi	a2,a1,8
   1a47a:	3a068163          	beqz	a3,1a81c <_svfiprintf_r+0x81e>
   1a47e:	0005bb83          	ld	s7,0(a1)
   1a482:	4685                	li	a3,1
   1a484:	e832                	sd	a2,16(sp)
   1a486:	b501                	j	1a286 <_svfiprintf_r+0x288>
   1a488:	000dc683          	lbu	a3,0(s11)
   1a48c:	001d8613          	addi	a2,s11,1
   1a490:	5ea68163          	beq	a3,a0,1aa72 <_svfiprintf_r+0xa74>
   1a494:	fd06859b          	addiw	a1,a3,-48 # ffffffffffff7fd0 <__BSS_END__+0xfffffffffffd86b8>
   1a498:	8db2                	mv	s11,a2
   1a49a:	4c81                	li	s9,0
   1a49c:	c2bbe8e3          	bltu	s7,a1,1a0cc <_svfiprintf_r+0xce>
   1a4a0:	000dc683          	lbu	a3,0(s11)
   1a4a4:	002c961b          	slliw	a2,s9,0x2
   1a4a8:	0196063b          	addw	a2,a2,s9
   1a4ac:	0016161b          	slliw	a2,a2,0x1
   1a4b0:	00b60cbb          	addw	s9,a2,a1
   1a4b4:	fd06859b          	addiw	a1,a3,-48
   1a4b8:	0d85                	addi	s11,s11,1
   1a4ba:	febbf3e3          	bgeu	s7,a1,1a4a0 <_svfiprintf_r+0x4a2>
   1a4be:	b139                	j	1a0cc <_svfiprintf_r+0xce>
   1a4c0:	65c2                	ld	a1,16(sp)
   1a4c2:	020d7693          	andi	a3,s10,32
   1a4c6:	6190                	ld	a2,0(a1)
   1a4c8:	05a1                	addi	a1,a1,8
   1a4ca:	e82e                	sd	a1,16(sp)
   1a4cc:	e285                	bnez	a3,1a4ec <_svfiprintf_r+0x4ee>
   1a4ce:	010d7693          	andi	a3,s10,16
   1a4d2:	ee89                	bnez	a3,1a4ec <_svfiprintf_r+0x4ee>
   1a4d4:	040d7693          	andi	a3,s10,64
   1a4d8:	56069363          	bnez	a3,1aa3e <_svfiprintf_r+0xa40>
   1a4dc:	200d7e13          	andi	t3,s10,512
   1a4e0:	66a2                	ld	a3,8(sp)
   1a4e2:	580e0163          	beqz	t3,1aa64 <_svfiprintf_r+0xa66>
   1a4e6:	00d60023          	sb	a3,0(a2)
   1a4ea:	be95                	j	1a05e <_svfiprintf_r+0x60>
   1a4ec:	66a2                	ld	a3,8(sp)
   1a4ee:	e214                	sd	a3,0(a2)
   1a4f0:	b6bd                	j	1a05e <_svfiprintf_r+0x60>
   1a4f2:	000dc683          	lbu	a3,0(s11)
   1a4f6:	06c00613          	li	a2,108
   1a4fa:	4ac68263          	beq	a3,a2,1a99e <_svfiprintf_r+0x9a0>
   1a4fe:	010d6e13          	ori	t3,s10,16
   1a502:	000e0d1b          	sext.w	s10,t3
   1a506:	be7d                	j	1a0c4 <_svfiprintf_r+0xc6>
   1a508:	000dc683          	lbu	a3,0(s11)
   1a50c:	06800613          	li	a2,104
   1a510:	4ac68063          	beq	a3,a2,1a9b0 <_svfiprintf_r+0x9b2>
   1a514:	040d6e13          	ori	t3,s10,64
   1a518:	000e0d1b          	sext.w	s10,t3
   1a51c:	b665                	j	1a0c4 <_svfiprintf_r+0xc6>
   1a51e:	66c2                	ld	a3,16(sp)
   1a520:	4280                	lw	s0,0(a3)
   1a522:	00868c13          	addi	s8,a3,8
   1a526:	da0449e3          	bltz	s0,1a2d8 <_svfiprintf_r+0x2da>
   1a52a:	000dc683          	lbu	a3,0(s11)
   1a52e:	e862                	sd	s8,16(sp)
   1a530:	be51                	j	1a0c4 <_svfiprintf_r+0xc6>
   1a532:	8556                	mv	a0,s5
   1a534:	f43a                	sd	a4,40(sp)
   1a536:	f83e                	sd	a5,48(sp)
   1a538:	e46fb0ef          	jal	ra,15b7e <_localeconv_r>
   1a53c:	651c                	ld	a5,8(a0)
   1a53e:	853e                	mv	a0,a5
   1a540:	e4be                	sd	a5,72(sp)
   1a542:	bccf70ef          	jal	ra,1190e <strlen>
   1a546:	86aa                	mv	a3,a0
   1a548:	8556                	mv	a0,s5
   1a54a:	8c36                	mv	s8,a3
   1a54c:	e8b6                	sd	a3,80(sp)
   1a54e:	e30fb0ef          	jal	ra,15b7e <_localeconv_r>
   1a552:	6910                	ld	a2,16(a0)
   1a554:	7722                	ld	a4,40(sp)
   1a556:	77c2                	ld	a5,48(sp)
   1a558:	e0b2                	sd	a2,64(sp)
   1a55a:	360c0363          	beqz	s8,1a8c0 <_svfiprintf_r+0x8c2>
   1a55e:	000dc683          	lbu	a3,0(s11)
   1a562:	b60601e3          	beqz	a2,1a0c4 <_svfiprintf_r+0xc6>
   1a566:	00064603          	lbu	a2,0(a2)
   1a56a:	b4060de3          	beqz	a2,1a0c4 <_svfiprintf_r+0xc6>
   1a56e:	400d6e13          	ori	t3,s10,1024
   1a572:	000e0d1b          	sext.w	s10,t3
   1a576:	b6b9                	j	1a0c4 <_svfiprintf_r+0xc6>
   1a578:	001d6e13          	ori	t3,s10,1
   1a57c:	000dc683          	lbu	a3,0(s11)
   1a580:	000e0d1b          	sext.w	s10,t3
   1a584:	b681                	j	1a0c4 <_svfiprintf_r+0xc6>
   1a586:	06714603          	lbu	a2,103(sp)
   1a58a:	000dc683          	lbu	a3,0(s11)
   1a58e:	b2061be3          	bnez	a2,1a0c4 <_svfiprintf_r+0xc6>
   1a592:	02000613          	li	a2,32
   1a596:	06c103a3          	sb	a2,103(sp)
   1a59a:	b62d                	j	1a0c4 <_svfiprintf_r+0xc6>
   1a59c:	02b00613          	li	a2,43
   1a5a0:	000dc683          	lbu	a3,0(s11)
   1a5a4:	06c103a3          	sb	a2,103(sp)
   1a5a8:	be31                	j	1a0c4 <_svfiprintf_r+0xc6>
   1a5aa:	4605                	li	a2,1
   1a5ac:	4ac68963          	beq	a3,a2,1aa5e <_svfiprintf_r+0xa60>
   1a5b0:	4609                	li	a2,2
   1a5b2:	8eea                	mv	t4,s10
   1a5b4:	dcc69fe3          	bne	a3,a2,1a392 <_svfiprintf_r+0x394>
   1a5b8:	0ec10913          	addi	s2,sp,236
   1a5bc:	8c4a                	mv	s8,s2
   1a5be:	6662                	ld	a2,24(sp)
   1a5c0:	00fbf693          	andi	a3,s7,15
   1a5c4:	1c7d                	addi	s8,s8,-1
   1a5c6:	96b2                	add	a3,a3,a2
   1a5c8:	0006c683          	lbu	a3,0(a3)
   1a5cc:	004bdb93          	srli	s7,s7,0x4
   1a5d0:	00dc0023          	sb	a3,0(s8)
   1a5d4:	fe0b95e3          	bnez	s7,1a5be <_svfiprintf_r+0x5c0>
   1a5d8:	4189093b          	subw	s2,s2,s8
   1a5dc:	8d76                	mv	s10,t4
   1a5de:	b1c5                	j	1a2be <_svfiprintf_r+0x2c0>
   1a5e0:	41740ebb          	subw	t4,s0,s7
   1a5e4:	bbd055e3          	blez	t4,1a18e <_svfiprintf_r+0x190>
   1a5e8:	4641                	li	a2,16
   1a5ea:	05d65363          	bge	a2,t4,1a630 <_svfiprintf_r+0x632>
   1a5ee:	4f41                	li	t5,16
   1a5f0:	4f9d                	li	t6,7
   1a5f2:	a021                	j	1a5fa <_svfiprintf_r+0x5fc>
   1a5f4:	3ec1                	addiw	t4,t4,-16
   1a5f6:	03df5d63          	bge	t5,t4,1a630 <_svfiprintf_r+0x632>
   1a5fa:	2685                	addiw	a3,a3,1
   1a5fc:	0741                	addi	a4,a4,16
   1a5fe:	e384                	sd	s1,0(a5)
   1a600:	01e7b423          	sd	t5,8(a5)
   1a604:	e13a                	sd	a4,128(sp)
   1a606:	dcb6                	sw	a3,120(sp)
   1a608:	07c1                	addi	a5,a5,16
   1a60a:	fedfd5e3          	bge	t6,a3,1a5f4 <_svfiprintf_r+0x5f6>
   1a60e:	1890                	addi	a2,sp,112
   1a610:	85ce                	mv	a1,s3
   1a612:	8556                	mv	a0,s5
   1a614:	f476                	sd	t4,40(sp)
   1a616:	893ff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a61a:	bc0514e3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a61e:	7ea2                	ld	t4,40(sp)
   1a620:	4f41                	li	t5,16
   1a622:	670a                	ld	a4,128(sp)
   1a624:	3ec1                	addiw	t4,t4,-16
   1a626:	56e6                	lw	a3,120(sp)
   1a628:	87d2                	mv	a5,s4
   1a62a:	4f9d                	li	t6,7
   1a62c:	fddf47e3          	blt	t5,t4,1a5fa <_svfiprintf_r+0x5fc>
   1a630:	2685                	addiw	a3,a3,1
   1a632:	9776                	add	a4,a4,t4
   1a634:	e384                	sd	s1,0(a5)
   1a636:	01d7b423          	sd	t4,8(a5)
   1a63a:	e13a                	sd	a4,128(sp)
   1a63c:	dcb6                	sw	a3,120(sp)
   1a63e:	461d                	li	a2,7
   1a640:	07c1                	addi	a5,a5,16
   1a642:	b4d656e3          	bge	a2,a3,1a18e <_svfiprintf_r+0x190>
   1a646:	1890                	addi	a2,sp,112
   1a648:	85ce                	mv	a1,s3
   1a64a:	8556                	mv	a0,s5
   1a64c:	85dff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a650:	b80519e3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a654:	412c8cbb          	subw	s9,s9,s2
   1a658:	670a                	ld	a4,128(sp)
   1a65a:	56e6                	lw	a3,120(sp)
   1a65c:	87d2                	mv	a5,s4
   1a65e:	b3905ce3          	blez	s9,1a196 <_svfiprintf_r+0x198>
   1a662:	4641                	li	a2,16
   1a664:	05965163          	bge	a2,s9,1a6a6 <_svfiprintf_r+0x6a8>
   1a668:	4ec1                	li	t4,16
   1a66a:	4f1d                	li	t5,7
   1a66c:	a021                	j	1a674 <_svfiprintf_r+0x676>
   1a66e:	3cc1                	addiw	s9,s9,-16
   1a670:	039edb63          	bge	t4,s9,1a6a6 <_svfiprintf_r+0x6a8>
   1a674:	2685                	addiw	a3,a3,1
   1a676:	0741                	addi	a4,a4,16
   1a678:	e384                	sd	s1,0(a5)
   1a67a:	01d7b423          	sd	t4,8(a5)
   1a67e:	e13a                	sd	a4,128(sp)
   1a680:	dcb6                	sw	a3,120(sp)
   1a682:	07c1                	addi	a5,a5,16
   1a684:	fedf55e3          	bge	t5,a3,1a66e <_svfiprintf_r+0x670>
   1a688:	1890                	addi	a2,sp,112
   1a68a:	85ce                	mv	a1,s3
   1a68c:	8556                	mv	a0,s5
   1a68e:	81bff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a692:	b40518e3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a696:	4ec1                	li	t4,16
   1a698:	3cc1                	addiw	s9,s9,-16
   1a69a:	670a                	ld	a4,128(sp)
   1a69c:	56e6                	lw	a3,120(sp)
   1a69e:	87d2                	mv	a5,s4
   1a6a0:	4f1d                	li	t5,7
   1a6a2:	fd9ec9e3          	blt	t4,s9,1a674 <_svfiprintf_r+0x676>
   1a6a6:	2685                	addiw	a3,a3,1
   1a6a8:	9766                	add	a4,a4,s9
   1a6aa:	e384                	sd	s1,0(a5)
   1a6ac:	0197b423          	sd	s9,8(a5)
   1a6b0:	e13a                	sd	a4,128(sp)
   1a6b2:	dcb6                	sw	a3,120(sp)
   1a6b4:	461d                	li	a2,7
   1a6b6:	07c1                	addi	a5,a5,16
   1a6b8:	acd65fe3          	bge	a2,a3,1a196 <_svfiprintf_r+0x198>
   1a6bc:	1890                	addi	a2,sp,112
   1a6be:	85ce                	mv	a1,s3
   1a6c0:	8556                	mv	a0,s5
   1a6c2:	fe6ff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a6c6:	b0051ee3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a6ca:	670a                	ld	a4,128(sp)
   1a6cc:	56e6                	lw	a3,120(sp)
   1a6ce:	87d2                	mv	a5,s4
   1a6d0:	b4d9                	j	1a196 <_svfiprintf_r+0x198>
   1a6d2:	1890                	addi	a2,sp,112
   1a6d4:	85ce                	mv	a1,s3
   1a6d6:	8556                	mv	a0,s5
   1a6d8:	fd0ff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a6dc:	b00513e3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a6e0:	670a                	ld	a4,128(sp)
   1a6e2:	87d2                	mv	a5,s4
   1a6e4:	b4f1                	j	1a1b0 <_svfiprintf_r+0x1b2>
   1a6e6:	1890                	addi	a2,sp,112
   1a6e8:	85ce                	mv	a1,s3
   1a6ea:	8556                	mv	a0,s5
   1a6ec:	fbcff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a6f0:	ae0519e3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a6f4:	670a                	ld	a4,128(sp)
   1a6f6:	bcf1                	j	1a1d2 <_svfiprintf_r+0x1d4>
   1a6f8:	8eea                	mv	t4,s10
   1a6fa:	b171                	j	1a386 <_svfiprintf_r+0x388>
   1a6fc:	4641                	li	a2,16
   1a6fe:	05d65863          	bge	a2,t4,1a74e <_svfiprintf_r+0x750>
   1a702:	4f41                	li	t5,16
   1a704:	439d                	li	t2,7
   1a706:	a021                	j	1a70e <_svfiprintf_r+0x710>
   1a708:	3ec1                	addiw	t4,t4,-16
   1a70a:	05df5263          	bge	t5,t4,1a74e <_svfiprintf_r+0x750>
   1a70e:	2685                	addiw	a3,a3,1
   1a710:	0741                	addi	a4,a4,16
   1a712:	0167b023          	sd	s6,0(a5)
   1a716:	01e7b423          	sd	t5,8(a5)
   1a71a:	e13a                	sd	a4,128(sp)
   1a71c:	dcb6                	sw	a3,120(sp)
   1a71e:	07c1                	addi	a5,a5,16
   1a720:	fed3d4e3          	bge	t2,a3,1a708 <_svfiprintf_r+0x70a>
   1a724:	1890                	addi	a2,sp,112
   1a726:	85ce                	mv	a1,s3
   1a728:	8556                	mv	a0,s5
   1a72a:	fc76                	sd	t4,56(sp)
   1a72c:	f87e                	sd	t6,48(sp)
   1a72e:	f416                	sd	t0,40(sp)
   1a730:	f78ff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a734:	aa0517e3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a738:	7ee2                	ld	t4,56(sp)
   1a73a:	4f41                	li	t5,16
   1a73c:	670a                	ld	a4,128(sp)
   1a73e:	3ec1                	addiw	t4,t4,-16
   1a740:	56e6                	lw	a3,120(sp)
   1a742:	7fc2                	ld	t6,48(sp)
   1a744:	72a2                	ld	t0,40(sp)
   1a746:	87d2                	mv	a5,s4
   1a748:	439d                	li	t2,7
   1a74a:	fddf42e3          	blt	t5,t4,1a70e <_svfiprintf_r+0x710>
   1a74e:	2685                	addiw	a3,a3,1
   1a750:	9776                	add	a4,a4,t4
   1a752:	0167b023          	sd	s6,0(a5)
   1a756:	01d7b423          	sd	t4,8(a5)
   1a75a:	e13a                	sd	a4,128(sp)
   1a75c:	dcb6                	sw	a3,120(sp)
   1a75e:	461d                	li	a2,7
   1a760:	07c1                	addi	a5,a5,16
   1a762:	9ed654e3          	bge	a2,a3,1a14a <_svfiprintf_r+0x14c>
   1a766:	1890                	addi	a2,sp,112
   1a768:	85ce                	mv	a1,s3
   1a76a:	8556                	mv	a0,s5
   1a76c:	f87e                	sd	t6,48(sp)
   1a76e:	f416                	sd	t0,40(sp)
   1a770:	f38ff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a774:	a60517e3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a778:	670a                	ld	a4,128(sp)
   1a77a:	56e6                	lw	a3,120(sp)
   1a77c:	7fc2                	ld	t6,48(sp)
   1a77e:	72a2                	ld	t0,40(sp)
   1a780:	87d2                	mv	a5,s4
   1a782:	b2e1                	j	1a14a <_svfiprintf_r+0x14c>
   1a784:	1890                	addi	a2,sp,112
   1a786:	85ce                	mv	a1,s3
   1a788:	8556                	mv	a0,s5
   1a78a:	f47e                	sd	t6,40(sp)
   1a78c:	f1cff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a790:	a40519e3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a794:	670a                	ld	a4,128(sp)
   1a796:	56e6                	lw	a3,120(sp)
   1a798:	7fa2                	ld	t6,40(sp)
   1a79a:	87d2                	mv	a5,s4
   1a79c:	b2ed                	j	1a186 <_svfiprintf_r+0x188>
   1a79e:	4641                	li	a2,16
   1a7a0:	56e6                	lw	a3,120(sp)
   1a7a2:	05265063          	bge	a2,s2,1a7e2 <_svfiprintf_r+0x7e4>
   1a7a6:	4cc1                	li	s9,16
   1a7a8:	4c1d                	li	s8,7
   1a7aa:	a021                	j	1a7b2 <_svfiprintf_r+0x7b4>
   1a7ac:	3941                	addiw	s2,s2,-16
   1a7ae:	032cda63          	bge	s9,s2,1a7e2 <_svfiprintf_r+0x7e4>
   1a7b2:	2685                	addiw	a3,a3,1
   1a7b4:	0741                	addi	a4,a4,16
   1a7b6:	0167b023          	sd	s6,0(a5)
   1a7ba:	0197b423          	sd	s9,8(a5)
   1a7be:	e13a                	sd	a4,128(sp)
   1a7c0:	dcb6                	sw	a3,120(sp)
   1a7c2:	07c1                	addi	a5,a5,16
   1a7c4:	fedc54e3          	bge	s8,a3,1a7ac <_svfiprintf_r+0x7ae>
   1a7c8:	1890                	addi	a2,sp,112
   1a7ca:	85ce                	mv	a1,s3
   1a7cc:	8556                	mv	a0,s5
   1a7ce:	edaff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a7d2:	a00518e3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a7d6:	3941                	addiw	s2,s2,-16
   1a7d8:	670a                	ld	a4,128(sp)
   1a7da:	56e6                	lw	a3,120(sp)
   1a7dc:	87d2                	mv	a5,s4
   1a7de:	fd2ccae3          	blt	s9,s2,1a7b2 <_svfiprintf_r+0x7b4>
   1a7e2:	0016861b          	addiw	a2,a3,1
   1a7e6:	974a                	add	a4,a4,s2
   1a7e8:	0167b023          	sd	s6,0(a5)
   1a7ec:	0127b423          	sd	s2,8(a5)
   1a7f0:	e13a                	sd	a4,128(sp)
   1a7f2:	dcb2                	sw	a2,120(sp)
   1a7f4:	479d                	li	a5,7
   1a7f6:	9cc7d5e3          	bge	a5,a2,1a1c0 <_svfiprintf_r+0x1c2>
   1a7fa:	1890                	addi	a2,sp,112
   1a7fc:	85ce                	mv	a1,s3
   1a7fe:	8556                	mv	a0,s5
   1a800:	ea8ff0ef          	jal	ra,19ea8 <__ssprint_r>
   1a804:	9c051fe3          	bnez	a0,1a1e2 <_svfiprintf_r+0x1e4>
   1a808:	670a                	ld	a4,128(sp)
   1a80a:	ba5d                	j	1a1c0 <_svfiprintf_r+0x1c2>
   1a80c:	a40c93e3          	bnez	s9,1a252 <_svfiprintf_r+0x254>
   1a810:	8d76                	mv	s10,t4
   1a812:	4c81                	li	s9,0
   1a814:	4901                	li	s2,0
   1a816:	0ec10c13          	addi	s8,sp,236
   1a81a:	b455                	j	1a2be <_svfiprintf_r+0x2c0>
   1a81c:	010ef693          	andi	a3,t4,16
   1a820:	eec5                	bnez	a3,1a8d8 <_svfiprintf_r+0x8da>
   1a822:	65c2                	ld	a1,16(sp)
   1a824:	040ef693          	andi	a3,t4,64
   1a828:	0005ab83          	lw	s7,0(a1)
   1a82c:	1c068263          	beqz	a3,1a9f0 <_svfiprintf_r+0x9f2>
   1a830:	1bc2                	slli	s7,s7,0x30
   1a832:	030bdb93          	srli	s7,s7,0x30
   1a836:	e832                	sd	a2,16(sp)
   1a838:	4685                	li	a3,1
   1a83a:	b4b1                	j	1a286 <_svfiprintf_r+0x288>
   1a83c:	0ec10913          	addi	s2,sp,236
   1a840:	400eff13          	andi	t5,t4,1024
   1a844:	4501                	li	a0,0
   1a846:	85ca                	mv	a1,s2
   1a848:	46a9                	li	a3,10
   1a84a:	4e25                	li	t3,9
   1a84c:	0ff00d13          	li	s10,255
   1a850:	a039                	j	1a85e <_svfiprintf_r+0x860>
   1a852:	02dbd633          	divu	a2,s7,a3
   1a856:	d97e71e3          	bgeu	t3,s7,1a5d8 <_svfiprintf_r+0x5da>
   1a85a:	8bb2                	mv	s7,a2
   1a85c:	85e2                	mv	a1,s8
   1a85e:	fff58c13          	addi	s8,a1,-1
   1a862:	2505                	addiw	a0,a0,1
   1a864:	02dbf633          	remu	a2,s7,a3
   1a868:	0306061b          	addiw	a2,a2,48
   1a86c:	fec58fa3          	sb	a2,-1(a1)
   1a870:	fe0f01e3          	beqz	t5,1a852 <_svfiprintf_r+0x854>
   1a874:	6606                	ld	a2,64(sp)
   1a876:	00064603          	lbu	a2,0(a2)
   1a87a:	fca61ce3          	bne	a2,a0,1a852 <_svfiprintf_r+0x854>
   1a87e:	fda60ae3          	beq	a2,s10,1a852 <_svfiprintf_r+0x854>
   1a882:	d57e7be3          	bgeu	t3,s7,1a5d8 <_svfiprintf_r+0x5da>
   1a886:	fc3e                	sd	a5,56(sp)
   1a888:	67c6                	ld	a5,80(sp)
   1a88a:	65a6                	ld	a1,72(sp)
   1a88c:	ecfa                	sd	t5,88(sp)
   1a88e:	40fc0c33          	sub	s8,s8,a5
   1a892:	863e                	mv	a2,a5
   1a894:	8562                	mv	a0,s8
   1a896:	f876                	sd	t4,48(sp)
   1a898:	f43a                	sd	a4,40(sp)
   1a89a:	885fc0ef          	jal	ra,1711e <strncpy>
   1a89e:	6786                	ld	a5,64(sp)
   1a8a0:	46a9                	li	a3,10
   1a8a2:	02dbd633          	divu	a2,s7,a3
   1a8a6:	0017c583          	lbu	a1,1(a5)
   1a8aa:	7722                	ld	a4,40(sp)
   1a8ac:	7ec2                	ld	t4,48(sp)
   1a8ae:	00b035b3          	snez	a1,a1
   1a8b2:	97ae                	add	a5,a5,a1
   1a8b4:	e0be                	sd	a5,64(sp)
   1a8b6:	6f66                	ld	t5,88(sp)
   1a8b8:	77e2                	ld	a5,56(sp)
   1a8ba:	4501                	li	a0,0
   1a8bc:	4e25                	li	t3,9
   1a8be:	bf71                	j	1a85a <_svfiprintf_r+0x85c>
   1a8c0:	000dc683          	lbu	a3,0(s11)
   1a8c4:	801ff06f          	j	1a0c4 <_svfiprintf_r+0xc6>
   1a8c8:	66c2                	ld	a3,16(sp)
   1a8ca:	6294                	ld	a3,0(a3)
   1a8cc:	8bb6                	mv	s7,a3
   1a8ce:	b2a5                	j	1a236 <_svfiprintf_r+0x238>
   1a8d0:	66c2                	ld	a3,16(sp)
   1a8d2:	0006bb83          	ld	s7,0(a3)
   1a8d6:	b25d                	j	1a27c <_svfiprintf_r+0x27e>
   1a8d8:	66c2                	ld	a3,16(sp)
   1a8da:	e832                	sd	a2,16(sp)
   1a8dc:	0006bb83          	ld	s7,0(a3)
   1a8e0:	4685                	li	a3,1
   1a8e2:	b255                	j	1a286 <_svfiprintf_r+0x288>
   1a8e4:	6542                	ld	a0,16(sp)
   1a8e6:	6671                	lui	a2,0x1c
   1a8e8:	73060613          	addi	a2,a2,1840 # 1c730 <__clzdi2+0xc6>
   1a8ec:	ec32                	sd	a2,24(sp)
   1a8ee:	020d7613          	andi	a2,s10,32
   1a8f2:	00850593          	addi	a1,a0,8
   1a8f6:	c621                	beqz	a2,1a93e <_svfiprintf_r+0x940>
   1a8f8:	00053b83          	ld	s7,0(a0)
   1a8fc:	001d7613          	andi	a2,s10,1
   1a900:	ce09                	beqz	a2,1a91a <_svfiprintf_r+0x91c>
   1a902:	000b8c63          	beqz	s7,1a91a <_svfiprintf_r+0x91c>
   1a906:	002d6e13          	ori	t3,s10,2
   1a90a:	03000613          	li	a2,48
   1a90e:	06c10423          	sb	a2,104(sp)
   1a912:	06d104a3          	sb	a3,105(sp)
   1a916:	000e0d1b          	sext.w	s10,t3
   1a91a:	bffd7e93          	andi	t4,s10,-1025
   1a91e:	2e81                	sext.w	t4,t4
   1a920:	e82e                	sd	a1,16(sp)
   1a922:	4689                	li	a3,2
   1a924:	b28d                	j	1a286 <_svfiprintf_r+0x288>
   1a926:	8eea                	mv	t4,s10
   1a928:	b6a1                	j	1a470 <_svfiprintf_r+0x472>
   1a92a:	6542                	ld	a0,16(sp)
   1a92c:	6671                	lui	a2,0x1c
   1a92e:	74860613          	addi	a2,a2,1864 # 1c748 <__clzdi2+0xde>
   1a932:	ec32                	sd	a2,24(sp)
   1a934:	020d7613          	andi	a2,s10,32
   1a938:	00850593          	addi	a1,a0,8
   1a93c:	fe55                	bnez	a2,1a8f8 <_svfiprintf_r+0x8fa>
   1a93e:	010d7613          	andi	a2,s10,16
   1a942:	c229                	beqz	a2,1a984 <_svfiprintf_r+0x986>
   1a944:	6642                	ld	a2,16(sp)
   1a946:	00063b83          	ld	s7,0(a2)
   1a94a:	bf4d                	j	1a8fc <_svfiprintf_r+0x8fe>
   1a94c:	8562                	mv	a0,s8
   1a94e:	f83e                	sd	a5,48(sp)
   1a950:	f43a                	sd	a4,40(sp)
   1a952:	e842                	sd	a6,16(sp)
   1a954:	fbbf60ef          	jal	ra,1190e <strlen>
   1a958:	7722                	ld	a4,40(sp)
   1a95a:	77c2                	ld	a5,48(sp)
   1a95c:	0005091b          	sext.w	s2,a0
   1a960:	4c81                	li	s9,0
   1a962:	bab1                	j	1a2be <_svfiprintf_r+0x2c0>
   1a964:	04000593          	li	a1,64
   1a968:	b70f60ef          	jal	ra,10cd8 <_malloc_r>
   1a96c:	00a9b023          	sd	a0,0(s3)
   1a970:	00a9bc23          	sd	a0,24(s3)
   1a974:	10050f63          	beqz	a0,1aa92 <_svfiprintf_r+0xa94>
   1a978:	04000793          	li	a5,64
   1a97c:	02f9a023          	sw	a5,32(s3)
   1a980:	eb2ff06f          	j	1a032 <_svfiprintf_r+0x34>
   1a984:	6542                	ld	a0,16(sp)
   1a986:	040d7613          	andi	a2,s10,64
   1a98a:	00052b83          	lw	s7,0(a0)
   1a98e:	ce3d                	beqz	a2,1aa0c <_svfiprintf_r+0xa0e>
   1a990:	1bc2                	slli	s7,s7,0x30
   1a992:	030bdb93          	srli	s7,s7,0x30
   1a996:	b79d                	j	1a8fc <_svfiprintf_r+0x8fe>
   1a998:	8eea                	mv	t4,s10
   1a99a:	e832                	sd	a2,16(sp)
   1a99c:	b845                	j	1a24c <_svfiprintf_r+0x24e>
   1a99e:	020d6e13          	ori	t3,s10,32
   1a9a2:	001dc683          	lbu	a3,1(s11)
   1a9a6:	000e0d1b          	sext.w	s10,t3
   1a9aa:	0d85                	addi	s11,s11,1
   1a9ac:	f18ff06f          	j	1a0c4 <_svfiprintf_r+0xc6>
   1a9b0:	200d6e13          	ori	t3,s10,512
   1a9b4:	001dc683          	lbu	a3,1(s11)
   1a9b8:	000e0d1b          	sext.w	s10,t3
   1a9bc:	0d85                	addi	s11,s11,1
   1a9be:	f06ff06f          	j	1a0c4 <_svfiprintf_r+0xc6>
   1a9c2:	4699                	li	a3,6
   1a9c4:	000c891b          	sext.w	s2,s9
   1a9c8:	0196f363          	bgeu	a3,s9,1a9ce <_svfiprintf_r+0x9d0>
   1a9cc:	4919                	li	s2,6
   1a9ce:	e842                	sd	a6,16(sp)
   1a9d0:	6871                	lui	a6,0x1c
   1a9d2:	8bca                	mv	s7,s2
   1a9d4:	76080c13          	addi	s8,a6,1888 # 1c760 <__clzdi2+0xf6>
   1a9d8:	f54ff06f          	j	1a12c <_svfiprintf_r+0x12e>
   1a9dc:	200d7693          	andi	a3,s10,512
   1a9e0:	cea1                	beqz	a3,1aa38 <_svfiprintf_r+0xa3a>
   1a9e2:	018b9b9b          	slliw	s7,s7,0x18
   1a9e6:	418bdb9b          	sraiw	s7,s7,0x18
   1a9ea:	86de                	mv	a3,s7
   1a9ec:	84bff06f          	j	1a236 <_svfiprintf_r+0x238>
   1a9f0:	200ef693          	andi	a3,t4,512
   1a9f4:	ca9d                	beqz	a3,1aa2a <_svfiprintf_r+0xa2c>
   1a9f6:	0ffbfb93          	zext.b	s7,s7
   1a9fa:	e832                	sd	a2,16(sp)
   1a9fc:	4685                	li	a3,1
   1a9fe:	b061                	j	1a286 <_svfiprintf_r+0x288>
   1aa00:	200d7693          	andi	a3,s10,512
   1aa04:	ce91                	beqz	a3,1aa20 <_svfiprintf_r+0xa22>
   1aa06:	0ffbfb93          	zext.b	s7,s7
   1aa0a:	b88d                	j	1a27c <_svfiprintf_r+0x27e>
   1aa0c:	200d7613          	andi	a2,s10,512
   1aa10:	c601                	beqz	a2,1aa18 <_svfiprintf_r+0xa1a>
   1aa12:	0ffbfb93          	zext.b	s7,s7
   1aa16:	b5dd                	j	1a8fc <_svfiprintf_r+0x8fe>
   1aa18:	1b82                	slli	s7,s7,0x20
   1aa1a:	020bdb93          	srli	s7,s7,0x20
   1aa1e:	bdf9                	j	1a8fc <_svfiprintf_r+0x8fe>
   1aa20:	1b82                	slli	s7,s7,0x20
   1aa22:	020bdb93          	srli	s7,s7,0x20
   1aa26:	857ff06f          	j	1a27c <_svfiprintf_r+0x27e>
   1aa2a:	1b82                	slli	s7,s7,0x20
   1aa2c:	020bdb93          	srli	s7,s7,0x20
   1aa30:	e832                	sd	a2,16(sp)
   1aa32:	4685                	li	a3,1
   1aa34:	853ff06f          	j	1a286 <_svfiprintf_r+0x288>
   1aa38:	86de                	mv	a3,s7
   1aa3a:	ffcff06f          	j	1a236 <_svfiprintf_r+0x238>
   1aa3e:	66a2                	ld	a3,8(sp)
   1aa40:	00d61023          	sh	a3,0(a2)
   1aa44:	e1aff06f          	j	1a05e <_svfiprintf_r+0x60>
   1aa48:	1890                	addi	a2,sp,112
   1aa4a:	85ce                	mv	a1,s3
   1aa4c:	8556                	mv	a0,s5
   1aa4e:	c5aff0ef          	jal	ra,19ea8 <__ssprint_r>
   1aa52:	f90ff06f          	j	1a1e2 <_svfiprintf_r+0x1e4>
   1aa56:	8966                	mv	s2,s9
   1aa58:	e842                	sd	a6,16(sp)
   1aa5a:	4c81                	li	s9,0
   1aa5c:	b08d                	j	1a2be <_svfiprintf_r+0x2c0>
   1aa5e:	8eea                	mv	t4,s10
   1aa60:	ff2ff06f          	j	1a252 <_svfiprintf_r+0x254>
   1aa64:	c214                	sw	a3,0(a2)
   1aa66:	df8ff06f          	j	1a05e <_svfiprintf_r+0x60>
   1aa6a:	57fd                	li	a5,-1
   1aa6c:	e43e                	sd	a5,8(sp)
   1aa6e:	f80ff06f          	j	1a1ee <_svfiprintf_r+0x1f0>
   1aa72:	65c2                	ld	a1,16(sp)
   1aa74:	4194                	lw	a3,0(a1)
   1aa76:	00858c13          	addi	s8,a1,8
   1aa7a:	88b6                	mv	a7,a3
   1aa7c:	0006d363          	bgez	a3,1aa82 <_svfiprintf_r+0xa84>
   1aa80:	58fd                	li	a7,-1
   1aa82:	001dc683          	lbu	a3,1(s11)
   1aa86:	00088c9b          	sext.w	s9,a7
   1aa8a:	e862                	sd	s8,16(sp)
   1aa8c:	8db2                	mv	s11,a2
   1aa8e:	e36ff06f          	j	1a0c4 <_svfiprintf_r+0xc6>
   1aa92:	47b1                	li	a5,12
   1aa94:	00faa023          	sw	a5,0(s5)
   1aa98:	57fd                	li	a5,-1
   1aa9a:	e43e                	sd	a5,8(sp)
   1aa9c:	f52ff06f          	j	1a1ee <_svfiprintf_r+0x1f0>

000000000001aaa0 <__swbuf_r>:
   1aaa0:	7179                	addi	sp,sp,-48
   1aaa2:	f022                	sd	s0,32(sp)
   1aaa4:	ec26                	sd	s1,24(sp)
   1aaa6:	e84a                	sd	s2,16(sp)
   1aaa8:	f406                	sd	ra,40(sp)
   1aaaa:	e44e                	sd	s3,8(sp)
   1aaac:	892a                	mv	s2,a0
   1aaae:	84ae                	mv	s1,a1
   1aab0:	8432                	mv	s0,a2
   1aab2:	c119                	beqz	a0,1aab8 <__swbuf_r+0x18>
   1aab4:	493c                	lw	a5,80(a0)
   1aab6:	cff1                	beqz	a5,1ab92 <__swbuf_r+0xf2>
   1aab8:	01041703          	lh	a4,16(s0)
   1aabc:	5414                	lw	a3,40(s0)
   1aabe:	00877793          	andi	a5,a4,8
   1aac2:	c454                	sw	a3,12(s0)
   1aac4:	03071693          	slli	a3,a4,0x30
   1aac8:	92c1                	srli	a3,a3,0x30
   1aaca:	cbb1                	beqz	a5,1ab1e <__swbuf_r+0x7e>
   1aacc:	6c1c                	ld	a5,24(s0)
   1aace:	cba1                	beqz	a5,1ab1e <__swbuf_r+0x7e>
   1aad0:	6609                	lui	a2,0x2
   1aad2:	0ff4f993          	zext.b	s3,s1
   1aad6:	8ef1                	and	a3,a3,a2
   1aad8:	84ce                	mv	s1,s3
   1aada:	c2bd                	beqz	a3,1ab40 <__swbuf_r+0xa0>
   1aadc:	6018                	ld	a4,0(s0)
   1aade:	5014                	lw	a3,32(s0)
   1aae0:	40f707bb          	subw	a5,a4,a5
   1aae4:	06d7de63          	bge	a5,a3,1ab60 <__swbuf_r+0xc0>
   1aae8:	4454                	lw	a3,12(s0)
   1aaea:	00170613          	addi	a2,a4,1
   1aaee:	e010                	sd	a2,0(s0)
   1aaf0:	36fd                	addiw	a3,a3,-1
   1aaf2:	c454                	sw	a3,12(s0)
   1aaf4:	01370023          	sb	s3,0(a4)
   1aaf8:	5018                	lw	a4,32(s0)
   1aafa:	2785                	addiw	a5,a5,1
   1aafc:	08f70463          	beq	a4,a5,1ab84 <__swbuf_r+0xe4>
   1ab00:	01045783          	lhu	a5,16(s0)
   1ab04:	8b85                	andi	a5,a5,1
   1ab06:	c781                	beqz	a5,1ab0e <__swbuf_r+0x6e>
   1ab08:	47a9                	li	a5,10
   1ab0a:	06f48d63          	beq	s1,a5,1ab84 <__swbuf_r+0xe4>
   1ab0e:	70a2                	ld	ra,40(sp)
   1ab10:	7402                	ld	s0,32(sp)
   1ab12:	6942                	ld	s2,16(sp)
   1ab14:	69a2                	ld	s3,8(sp)
   1ab16:	8526                	mv	a0,s1
   1ab18:	64e2                	ld	s1,24(sp)
   1ab1a:	6145                	addi	sp,sp,48
   1ab1c:	8082                	ret
   1ab1e:	85a2                	mv	a1,s0
   1ab20:	854a                	mv	a0,s2
   1ab22:	9f5f80ef          	jal	ra,13516 <__swsetup_r>
   1ab26:	e525                	bnez	a0,1ab8e <__swbuf_r+0xee>
   1ab28:	01041703          	lh	a4,16(s0)
   1ab2c:	6609                	lui	a2,0x2
   1ab2e:	0ff4f993          	zext.b	s3,s1
   1ab32:	03071693          	slli	a3,a4,0x30
   1ab36:	92c1                	srli	a3,a3,0x30
   1ab38:	8ef1                	and	a3,a3,a2
   1ab3a:	6c1c                	ld	a5,24(s0)
   1ab3c:	84ce                	mv	s1,s3
   1ab3e:	fed9                	bnez	a3,1aadc <__swbuf_r+0x3c>
   1ab40:	0ac42683          	lw	a3,172(s0)
   1ab44:	8f51                	or	a4,a4,a2
   1ab46:	7679                	lui	a2,0xffffe
   1ab48:	167d                	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde6e7>
   1ab4a:	8ef1                	and	a3,a3,a2
   1ab4c:	00e41823          	sh	a4,16(s0)
   1ab50:	6018                	ld	a4,0(s0)
   1ab52:	0ad42623          	sw	a3,172(s0)
   1ab56:	5014                	lw	a3,32(s0)
   1ab58:	40f707bb          	subw	a5,a4,a5
   1ab5c:	f8d7c6e3          	blt	a5,a3,1aae8 <__swbuf_r+0x48>
   1ab60:	85a2                	mv	a1,s0
   1ab62:	854a                	mv	a0,s2
   1ab64:	905f50ef          	jal	ra,10468 <_fflush_r>
   1ab68:	e11d                	bnez	a0,1ab8e <__swbuf_r+0xee>
   1ab6a:	6018                	ld	a4,0(s0)
   1ab6c:	4454                	lw	a3,12(s0)
   1ab6e:	4785                	li	a5,1
   1ab70:	00170613          	addi	a2,a4,1
   1ab74:	36fd                	addiw	a3,a3,-1
   1ab76:	e010                	sd	a2,0(s0)
   1ab78:	c454                	sw	a3,12(s0)
   1ab7a:	01370023          	sb	s3,0(a4)
   1ab7e:	5018                	lw	a4,32(s0)
   1ab80:	f8f710e3          	bne	a4,a5,1ab00 <__swbuf_r+0x60>
   1ab84:	85a2                	mv	a1,s0
   1ab86:	854a                	mv	a0,s2
   1ab88:	8e1f50ef          	jal	ra,10468 <_fflush_r>
   1ab8c:	d149                	beqz	a0,1ab0e <__swbuf_r+0x6e>
   1ab8e:	54fd                	li	s1,-1
   1ab90:	bfbd                	j	1ab0e <__swbuf_r+0x6e>
   1ab92:	c83f50ef          	jal	ra,10814 <__sinit>
   1ab96:	b70d                	j	1aab8 <__swbuf_r+0x18>

000000000001ab98 <__swbuf>:
   1ab98:	87aa                	mv	a5,a0
   1ab9a:	6481b503          	ld	a0,1608(gp) # 1f760 <_impure_ptr>
   1ab9e:	862e                	mv	a2,a1
   1aba0:	85be                	mv	a1,a5
   1aba2:	effff06f          	j	1aaa0 <__swbuf_r>

000000000001aba6 <_wcrtomb_r>:
   1aba6:	7179                	addi	sp,sp,-48
   1aba8:	f022                	sd	s0,32(sp)
   1abaa:	ec26                	sd	s1,24(sp)
   1abac:	f406                	sd	ra,40(sp)
   1abae:	5381b783          	ld	a5,1336(gp) # 1f650 <__global_locale+0xe0>
   1abb2:	842a                	mv	s0,a0
   1abb4:	84b6                	mv	s1,a3
   1abb6:	c991                	beqz	a1,1abca <_wcrtomb_r+0x24>
   1abb8:	9782                	jalr	a5
   1abba:	57fd                	li	a5,-1
   1abbc:	00f50d63          	beq	a0,a5,1abd6 <_wcrtomb_r+0x30>
   1abc0:	70a2                	ld	ra,40(sp)
   1abc2:	7402                	ld	s0,32(sp)
   1abc4:	64e2                	ld	s1,24(sp)
   1abc6:	6145                	addi	sp,sp,48
   1abc8:	8082                	ret
   1abca:	4601                	li	a2,0
   1abcc:	858a                	mv	a1,sp
   1abce:	9782                	jalr	a5
   1abd0:	57fd                	li	a5,-1
   1abd2:	fef517e3          	bne	a0,a5,1abc0 <_wcrtomb_r+0x1a>
   1abd6:	0004a023          	sw	zero,0(s1)
   1abda:	08a00793          	li	a5,138
   1abde:	70a2                	ld	ra,40(sp)
   1abe0:	c01c                	sw	a5,0(s0)
   1abe2:	7402                	ld	s0,32(sp)
   1abe4:	64e2                	ld	s1,24(sp)
   1abe6:	6145                	addi	sp,sp,48
   1abe8:	8082                	ret

000000000001abea <wcrtomb>:
   1abea:	7179                	addi	sp,sp,-48
   1abec:	f022                	sd	s0,32(sp)
   1abee:	ec26                	sd	s1,24(sp)
   1abf0:	f406                	sd	ra,40(sp)
   1abf2:	6481b483          	ld	s1,1608(gp) # 1f760 <_impure_ptr>
   1abf6:	5381b783          	ld	a5,1336(gp) # 1f650 <__global_locale+0xe0>
   1abfa:	8432                	mv	s0,a2
   1abfc:	cd11                	beqz	a0,1ac18 <wcrtomb+0x2e>
   1abfe:	862e                	mv	a2,a1
   1ac00:	86a2                	mv	a3,s0
   1ac02:	85aa                	mv	a1,a0
   1ac04:	8526                	mv	a0,s1
   1ac06:	9782                	jalr	a5
   1ac08:	57fd                	li	a5,-1
   1ac0a:	00f50f63          	beq	a0,a5,1ac28 <wcrtomb+0x3e>
   1ac0e:	70a2                	ld	ra,40(sp)
   1ac10:	7402                	ld	s0,32(sp)
   1ac12:	64e2                	ld	s1,24(sp)
   1ac14:	6145                	addi	sp,sp,48
   1ac16:	8082                	ret
   1ac18:	86b2                	mv	a3,a2
   1ac1a:	858a                	mv	a1,sp
   1ac1c:	4601                	li	a2,0
   1ac1e:	8526                	mv	a0,s1
   1ac20:	9782                	jalr	a5
   1ac22:	57fd                	li	a5,-1
   1ac24:	fef515e3          	bne	a0,a5,1ac0e <wcrtomb+0x24>
   1ac28:	00042023          	sw	zero,0(s0)
   1ac2c:	70a2                	ld	ra,40(sp)
   1ac2e:	7402                	ld	s0,32(sp)
   1ac30:	08a00793          	li	a5,138
   1ac34:	c09c                	sw	a5,0(s1)
   1ac36:	64e2                	ld	s1,24(sp)
   1ac38:	6145                	addi	sp,sp,48
   1ac3a:	8082                	ret

000000000001ac3c <_wctomb_r>:
   1ac3c:	5381b783          	ld	a5,1336(gp) # 1f650 <__global_locale+0xe0>
   1ac40:	8782                	jr	a5

000000000001ac42 <__ascii_wctomb>:
   1ac42:	0006079b          	sext.w	a5,a2
   1ac46:	cd91                	beqz	a1,1ac62 <__ascii_wctomb+0x20>
   1ac48:	0ff00713          	li	a4,255
   1ac4c:	00f76663          	bltu	a4,a5,1ac58 <__ascii_wctomb+0x16>
   1ac50:	00c58023          	sb	a2,0(a1)
   1ac54:	4505                	li	a0,1
   1ac56:	8082                	ret
   1ac58:	08a00793          	li	a5,138
   1ac5c:	c11c                	sw	a5,0(a0)
   1ac5e:	557d                	li	a0,-1
   1ac60:	8082                	ret
   1ac62:	4501                	li	a0,0
   1ac64:	8082                	ret

000000000001ac66 <abort>:
   1ac66:	1141                	addi	sp,sp,-16
   1ac68:	4519                	li	a0,6
   1ac6a:	e406                	sd	ra,8(sp)
   1ac6c:	1ae000ef          	jal	ra,1ae1a <raise>
   1ac70:	4505                	li	a0,1
   1ac72:	3c0000ef          	jal	ra,1b032 <_exit>

000000000001ac76 <_init_signal_r>:
   1ac76:	51853783          	ld	a5,1304(a0)
   1ac7a:	c399                	beqz	a5,1ac80 <_init_signal_r+0xa>
   1ac7c:	4501                	li	a0,0
   1ac7e:	8082                	ret
   1ac80:	1141                	addi	sp,sp,-16
   1ac82:	10000593          	li	a1,256
   1ac86:	e022                	sd	s0,0(sp)
   1ac88:	e406                	sd	ra,8(sp)
   1ac8a:	842a                	mv	s0,a0
   1ac8c:	84cf60ef          	jal	ra,10cd8 <_malloc_r>
   1ac90:	50a43c23          	sd	a0,1304(s0)
   1ac94:	cd09                	beqz	a0,1acae <_init_signal_r+0x38>
   1ac96:	10050793          	addi	a5,a0,256
   1ac9a:	00053023          	sd	zero,0(a0)
   1ac9e:	0521                	addi	a0,a0,8
   1aca0:	fef51de3          	bne	a0,a5,1ac9a <_init_signal_r+0x24>
   1aca4:	4501                	li	a0,0
   1aca6:	60a2                	ld	ra,8(sp)
   1aca8:	6402                	ld	s0,0(sp)
   1acaa:	0141                	addi	sp,sp,16
   1acac:	8082                	ret
   1acae:	557d                	li	a0,-1
   1acb0:	bfdd                	j	1aca6 <_init_signal_r+0x30>

000000000001acb2 <_signal_r>:
   1acb2:	7179                	addi	sp,sp,-48
   1acb4:	ec26                	sd	s1,24(sp)
   1acb6:	f406                	sd	ra,40(sp)
   1acb8:	f022                	sd	s0,32(sp)
   1acba:	47fd                	li	a5,31
   1acbc:	84aa                	mv	s1,a0
   1acbe:	00b7ef63          	bltu	a5,a1,1acdc <_signal_r+0x2a>
   1acc2:	51853703          	ld	a4,1304(a0)
   1acc6:	842e                	mv	s0,a1
   1acc8:	c315                	beqz	a4,1acec <_signal_r+0x3a>
   1acca:	040e                	slli	s0,s0,0x3
   1accc:	9722                	add	a4,a4,s0
   1acce:	6308                	ld	a0,0(a4)
   1acd0:	e310                	sd	a2,0(a4)
   1acd2:	70a2                	ld	ra,40(sp)
   1acd4:	7402                	ld	s0,32(sp)
   1acd6:	64e2                	ld	s1,24(sp)
   1acd8:	6145                	addi	sp,sp,48
   1acda:	8082                	ret
   1acdc:	70a2                	ld	ra,40(sp)
   1acde:	7402                	ld	s0,32(sp)
   1ace0:	47d9                	li	a5,22
   1ace2:	c11c                	sw	a5,0(a0)
   1ace4:	64e2                	ld	s1,24(sp)
   1ace6:	557d                	li	a0,-1
   1ace8:	6145                	addi	sp,sp,48
   1acea:	8082                	ret
   1acec:	10000593          	li	a1,256
   1acf0:	e432                	sd	a2,8(sp)
   1acf2:	fe7f50ef          	jal	ra,10cd8 <_malloc_r>
   1acf6:	50a4bc23          	sd	a0,1304(s1)
   1acfa:	872a                	mv	a4,a0
   1acfc:	c919                	beqz	a0,1ad12 <_signal_r+0x60>
   1acfe:	6622                	ld	a2,8(sp)
   1ad00:	87aa                	mv	a5,a0
   1ad02:	10050693          	addi	a3,a0,256
   1ad06:	0007b023          	sd	zero,0(a5)
   1ad0a:	07a1                	addi	a5,a5,8
   1ad0c:	fef69de3          	bne	a3,a5,1ad06 <_signal_r+0x54>
   1ad10:	bf6d                	j	1acca <_signal_r+0x18>
   1ad12:	557d                	li	a0,-1
   1ad14:	bf7d                	j	1acd2 <_signal_r+0x20>

000000000001ad16 <_raise_r>:
   1ad16:	1101                	addi	sp,sp,-32
   1ad18:	e426                	sd	s1,8(sp)
   1ad1a:	ec06                	sd	ra,24(sp)
   1ad1c:	e822                	sd	s0,16(sp)
   1ad1e:	47fd                	li	a5,31
   1ad20:	84aa                	mv	s1,a0
   1ad22:	06b7e463          	bltu	a5,a1,1ad8a <_raise_r+0x74>
   1ad26:	51853783          	ld	a5,1304(a0)
   1ad2a:	842e                	mv	s0,a1
   1ad2c:	c795                	beqz	a5,1ad58 <_raise_r+0x42>
   1ad2e:	00359713          	slli	a4,a1,0x3
   1ad32:	97ba                	add	a5,a5,a4
   1ad34:	6398                	ld	a4,0(a5)
   1ad36:	c30d                	beqz	a4,1ad58 <_raise_r+0x42>
   1ad38:	4685                	li	a3,1
   1ad3a:	04d70263          	beq	a4,a3,1ad7e <_raise_r+0x68>
   1ad3e:	56fd                	li	a3,-1
   1ad40:	02d70763          	beq	a4,a3,1ad6e <_raise_r+0x58>
   1ad44:	852e                	mv	a0,a1
   1ad46:	0007b023          	sd	zero,0(a5)
   1ad4a:	9702                	jalr	a4
   1ad4c:	4501                	li	a0,0
   1ad4e:	60e2                	ld	ra,24(sp)
   1ad50:	6442                	ld	s0,16(sp)
   1ad52:	64a2                	ld	s1,8(sp)
   1ad54:	6105                	addi	sp,sp,32
   1ad56:	8082                	ret
   1ad58:	8526                	mv	a0,s1
   1ad5a:	2aa000ef          	jal	ra,1b004 <_getpid_r>
   1ad5e:	8622                	mv	a2,s0
   1ad60:	6442                	ld	s0,16(sp)
   1ad62:	60e2                	ld	ra,24(sp)
   1ad64:	85aa                	mv	a1,a0
   1ad66:	8526                	mv	a0,s1
   1ad68:	64a2                	ld	s1,8(sp)
   1ad6a:	6105                	addi	sp,sp,32
   1ad6c:	acb9                	j	1afca <_kill_r>
   1ad6e:	60e2                	ld	ra,24(sp)
   1ad70:	6442                	ld	s0,16(sp)
   1ad72:	47d9                	li	a5,22
   1ad74:	c11c                	sw	a5,0(a0)
   1ad76:	64a2                	ld	s1,8(sp)
   1ad78:	4505                	li	a0,1
   1ad7a:	6105                	addi	sp,sp,32
   1ad7c:	8082                	ret
   1ad7e:	60e2                	ld	ra,24(sp)
   1ad80:	6442                	ld	s0,16(sp)
   1ad82:	64a2                	ld	s1,8(sp)
   1ad84:	4501                	li	a0,0
   1ad86:	6105                	addi	sp,sp,32
   1ad88:	8082                	ret
   1ad8a:	47d9                	li	a5,22
   1ad8c:	c11c                	sw	a5,0(a0)
   1ad8e:	557d                	li	a0,-1
   1ad90:	bf7d                	j	1ad4e <_raise_r+0x38>

000000000001ad92 <__sigtramp_r>:
   1ad92:	47fd                	li	a5,31
   1ad94:	08b7e163          	bltu	a5,a1,1ae16 <__sigtramp_r+0x84>
   1ad98:	51853703          	ld	a4,1304(a0)
   1ad9c:	1101                	addi	sp,sp,-32
   1ad9e:	e822                	sd	s0,16(sp)
   1ada0:	e426                	sd	s1,8(sp)
   1ada2:	ec06                	sd	ra,24(sp)
   1ada4:	842e                	mv	s0,a1
   1ada6:	84aa                	mv	s1,a0
   1ada8:	cf05                	beqz	a4,1ade0 <__sigtramp_r+0x4e>
   1adaa:	00341793          	slli	a5,s0,0x3
   1adae:	973e                	add	a4,a4,a5
   1adb0:	631c                	ld	a5,0(a4)
   1adb2:	c38d                	beqz	a5,1add4 <__sigtramp_r+0x42>
   1adb4:	56fd                	li	a3,-1
   1adb6:	04d78c63          	beq	a5,a3,1ae0e <__sigtramp_r+0x7c>
   1adba:	4685                	li	a3,1
   1adbc:	04d78363          	beq	a5,a3,1ae02 <__sigtramp_r+0x70>
   1adc0:	8522                	mv	a0,s0
   1adc2:	00073023          	sd	zero,0(a4)
   1adc6:	9782                	jalr	a5
   1adc8:	4501                	li	a0,0
   1adca:	60e2                	ld	ra,24(sp)
   1adcc:	6442                	ld	s0,16(sp)
   1adce:	64a2                	ld	s1,8(sp)
   1add0:	6105                	addi	sp,sp,32
   1add2:	8082                	ret
   1add4:	60e2                	ld	ra,24(sp)
   1add6:	6442                	ld	s0,16(sp)
   1add8:	64a2                	ld	s1,8(sp)
   1adda:	4505                	li	a0,1
   1addc:	6105                	addi	sp,sp,32
   1adde:	8082                	ret
   1ade0:	10000593          	li	a1,256
   1ade4:	ef5f50ef          	jal	ra,10cd8 <_malloc_r>
   1ade8:	50a4bc23          	sd	a0,1304(s1)
   1adec:	872a                	mv	a4,a0
   1adee:	c115                	beqz	a0,1ae12 <__sigtramp_r+0x80>
   1adf0:	87aa                	mv	a5,a0
   1adf2:	10050693          	addi	a3,a0,256
   1adf6:	0007b023          	sd	zero,0(a5)
   1adfa:	07a1                	addi	a5,a5,8
   1adfc:	fed79de3          	bne	a5,a3,1adf6 <__sigtramp_r+0x64>
   1ae00:	b76d                	j	1adaa <__sigtramp_r+0x18>
   1ae02:	60e2                	ld	ra,24(sp)
   1ae04:	6442                	ld	s0,16(sp)
   1ae06:	64a2                	ld	s1,8(sp)
   1ae08:	450d                	li	a0,3
   1ae0a:	6105                	addi	sp,sp,32
   1ae0c:	8082                	ret
   1ae0e:	4509                	li	a0,2
   1ae10:	bf6d                	j	1adca <__sigtramp_r+0x38>
   1ae12:	557d                	li	a0,-1
   1ae14:	bf5d                	j	1adca <__sigtramp_r+0x38>
   1ae16:	557d                	li	a0,-1
   1ae18:	8082                	ret

000000000001ae1a <raise>:
   1ae1a:	1101                	addi	sp,sp,-32
   1ae1c:	e426                	sd	s1,8(sp)
   1ae1e:	ec06                	sd	ra,24(sp)
   1ae20:	e822                	sd	s0,16(sp)
   1ae22:	47fd                	li	a5,31
   1ae24:	6481b483          	ld	s1,1608(gp) # 1f760 <_impure_ptr>
   1ae28:	06a7e363          	bltu	a5,a0,1ae8e <raise+0x74>
   1ae2c:	5184b783          	ld	a5,1304(s1)
   1ae30:	842a                	mv	s0,a0
   1ae32:	c78d                	beqz	a5,1ae5c <raise+0x42>
   1ae34:	00351713          	slli	a4,a0,0x3
   1ae38:	97ba                	add	a5,a5,a4
   1ae3a:	6398                	ld	a4,0(a5)
   1ae3c:	c305                	beqz	a4,1ae5c <raise+0x42>
   1ae3e:	4685                	li	a3,1
   1ae40:	04d70163          	beq	a4,a3,1ae82 <raise+0x68>
   1ae44:	56fd                	li	a3,-1
   1ae46:	02d70663          	beq	a4,a3,1ae72 <raise+0x58>
   1ae4a:	0007b023          	sd	zero,0(a5)
   1ae4e:	9702                	jalr	a4
   1ae50:	4501                	li	a0,0
   1ae52:	60e2                	ld	ra,24(sp)
   1ae54:	6442                	ld	s0,16(sp)
   1ae56:	64a2                	ld	s1,8(sp)
   1ae58:	6105                	addi	sp,sp,32
   1ae5a:	8082                	ret
   1ae5c:	8526                	mv	a0,s1
   1ae5e:	1a6000ef          	jal	ra,1b004 <_getpid_r>
   1ae62:	8622                	mv	a2,s0
   1ae64:	6442                	ld	s0,16(sp)
   1ae66:	60e2                	ld	ra,24(sp)
   1ae68:	85aa                	mv	a1,a0
   1ae6a:	8526                	mv	a0,s1
   1ae6c:	64a2                	ld	s1,8(sp)
   1ae6e:	6105                	addi	sp,sp,32
   1ae70:	aaa9                	j	1afca <_kill_r>
   1ae72:	60e2                	ld	ra,24(sp)
   1ae74:	6442                	ld	s0,16(sp)
   1ae76:	47d9                	li	a5,22
   1ae78:	c09c                	sw	a5,0(s1)
   1ae7a:	4505                	li	a0,1
   1ae7c:	64a2                	ld	s1,8(sp)
   1ae7e:	6105                	addi	sp,sp,32
   1ae80:	8082                	ret
   1ae82:	60e2                	ld	ra,24(sp)
   1ae84:	6442                	ld	s0,16(sp)
   1ae86:	64a2                	ld	s1,8(sp)
   1ae88:	4501                	li	a0,0
   1ae8a:	6105                	addi	sp,sp,32
   1ae8c:	8082                	ret
   1ae8e:	47d9                	li	a5,22
   1ae90:	c09c                	sw	a5,0(s1)
   1ae92:	557d                	li	a0,-1
   1ae94:	bf7d                	j	1ae52 <raise+0x38>

000000000001ae96 <signal>:
   1ae96:	1101                	addi	sp,sp,-32
   1ae98:	e04a                	sd	s2,0(sp)
   1ae9a:	ec06                	sd	ra,24(sp)
   1ae9c:	e822                	sd	s0,16(sp)
   1ae9e:	e426                	sd	s1,8(sp)
   1aea0:	47fd                	li	a5,31
   1aea2:	6481b903          	ld	s2,1608(gp) # 1f760 <_impure_ptr>
   1aea6:	02a7e263          	bltu	a5,a0,1aeca <signal+0x34>
   1aeaa:	842a                	mv	s0,a0
   1aeac:	51893503          	ld	a0,1304(s2)
   1aeb0:	84ae                	mv	s1,a1
   1aeb2:	c515                	beqz	a0,1aede <signal+0x48>
   1aeb4:	040e                	slli	s0,s0,0x3
   1aeb6:	008507b3          	add	a5,a0,s0
   1aeba:	6388                	ld	a0,0(a5)
   1aebc:	e384                	sd	s1,0(a5)
   1aebe:	60e2                	ld	ra,24(sp)
   1aec0:	6442                	ld	s0,16(sp)
   1aec2:	64a2                	ld	s1,8(sp)
   1aec4:	6902                	ld	s2,0(sp)
   1aec6:	6105                	addi	sp,sp,32
   1aec8:	8082                	ret
   1aeca:	60e2                	ld	ra,24(sp)
   1aecc:	6442                	ld	s0,16(sp)
   1aece:	47d9                	li	a5,22
   1aed0:	00f92023          	sw	a5,0(s2)
   1aed4:	64a2                	ld	s1,8(sp)
   1aed6:	6902                	ld	s2,0(sp)
   1aed8:	557d                	li	a0,-1
   1aeda:	6105                	addi	sp,sp,32
   1aedc:	8082                	ret
   1aede:	10000593          	li	a1,256
   1aee2:	854a                	mv	a0,s2
   1aee4:	df5f50ef          	jal	ra,10cd8 <_malloc_r>
   1aee8:	50a93c23          	sd	a0,1304(s2)
   1aeec:	c911                	beqz	a0,1af00 <signal+0x6a>
   1aeee:	87aa                	mv	a5,a0
   1aef0:	10050713          	addi	a4,a0,256
   1aef4:	0007b023          	sd	zero,0(a5)
   1aef8:	07a1                	addi	a5,a5,8
   1aefa:	fef71de3          	bne	a4,a5,1aef4 <signal+0x5e>
   1aefe:	bf5d                	j	1aeb4 <signal+0x1e>
   1af00:	557d                	li	a0,-1
   1af02:	bf75                	j	1aebe <signal+0x28>

000000000001af04 <_init_signal>:
   1af04:	1141                	addi	sp,sp,-16
   1af06:	e022                	sd	s0,0(sp)
   1af08:	6481b403          	ld	s0,1608(gp) # 1f760 <_impure_ptr>
   1af0c:	e406                	sd	ra,8(sp)
   1af0e:	51843783          	ld	a5,1304(s0)
   1af12:	c791                	beqz	a5,1af1e <_init_signal+0x1a>
   1af14:	4501                	li	a0,0
   1af16:	60a2                	ld	ra,8(sp)
   1af18:	6402                	ld	s0,0(sp)
   1af1a:	0141                	addi	sp,sp,16
   1af1c:	8082                	ret
   1af1e:	10000593          	li	a1,256
   1af22:	8522                	mv	a0,s0
   1af24:	db5f50ef          	jal	ra,10cd8 <_malloc_r>
   1af28:	50a43c23          	sd	a0,1304(s0)
   1af2c:	c909                	beqz	a0,1af3e <_init_signal+0x3a>
   1af2e:	10050793          	addi	a5,a0,256
   1af32:	00053023          	sd	zero,0(a0)
   1af36:	0521                	addi	a0,a0,8
   1af38:	fef51de3          	bne	a0,a5,1af32 <_init_signal+0x2e>
   1af3c:	bfe1                	j	1af14 <_init_signal+0x10>
   1af3e:	557d                	li	a0,-1
   1af40:	bfd9                	j	1af16 <_init_signal+0x12>

000000000001af42 <__sigtramp>:
   1af42:	1101                	addi	sp,sp,-32
   1af44:	e426                	sd	s1,8(sp)
   1af46:	ec06                	sd	ra,24(sp)
   1af48:	e822                	sd	s0,16(sp)
   1af4a:	47fd                	li	a5,31
   1af4c:	6481b483          	ld	s1,1608(gp) # 1f760 <_impure_ptr>
   1af50:	06a7eb63          	bltu	a5,a0,1afc6 <__sigtramp+0x84>
   1af54:	5184b703          	ld	a4,1304(s1)
   1af58:	842a                	mv	s0,a0
   1af5a:	cf05                	beqz	a4,1af92 <__sigtramp+0x50>
   1af5c:	00341793          	slli	a5,s0,0x3
   1af60:	973e                	add	a4,a4,a5
   1af62:	631c                	ld	a5,0(a4)
   1af64:	c38d                	beqz	a5,1af86 <__sigtramp+0x44>
   1af66:	56fd                	li	a3,-1
   1af68:	04d78d63          	beq	a5,a3,1afc2 <__sigtramp+0x80>
   1af6c:	4685                	li	a3,1
   1af6e:	04d78463          	beq	a5,a3,1afb6 <__sigtramp+0x74>
   1af72:	8522                	mv	a0,s0
   1af74:	00073023          	sd	zero,0(a4)
   1af78:	9782                	jalr	a5
   1af7a:	4501                	li	a0,0
   1af7c:	60e2                	ld	ra,24(sp)
   1af7e:	6442                	ld	s0,16(sp)
   1af80:	64a2                	ld	s1,8(sp)
   1af82:	6105                	addi	sp,sp,32
   1af84:	8082                	ret
   1af86:	60e2                	ld	ra,24(sp)
   1af88:	6442                	ld	s0,16(sp)
   1af8a:	64a2                	ld	s1,8(sp)
   1af8c:	4505                	li	a0,1
   1af8e:	6105                	addi	sp,sp,32
   1af90:	8082                	ret
   1af92:	10000593          	li	a1,256
   1af96:	8526                	mv	a0,s1
   1af98:	d41f50ef          	jal	ra,10cd8 <_malloc_r>
   1af9c:	50a4bc23          	sd	a0,1304(s1)
   1afa0:	872a                	mv	a4,a0
   1afa2:	c115                	beqz	a0,1afc6 <__sigtramp+0x84>
   1afa4:	87aa                	mv	a5,a0
   1afa6:	10050693          	addi	a3,a0,256
   1afaa:	0007b023          	sd	zero,0(a5)
   1afae:	07a1                	addi	a5,a5,8
   1afb0:	fed79de3          	bne	a5,a3,1afaa <__sigtramp+0x68>
   1afb4:	b765                	j	1af5c <__sigtramp+0x1a>
   1afb6:	60e2                	ld	ra,24(sp)
   1afb8:	6442                	ld	s0,16(sp)
   1afba:	64a2                	ld	s1,8(sp)
   1afbc:	450d                	li	a0,3
   1afbe:	6105                	addi	sp,sp,32
   1afc0:	8082                	ret
   1afc2:	4509                	li	a0,2
   1afc4:	bf65                	j	1af7c <__sigtramp+0x3a>
   1afc6:	557d                	li	a0,-1
   1afc8:	bf55                	j	1af7c <__sigtramp+0x3a>

000000000001afca <_kill_r>:
   1afca:	1101                	addi	sp,sp,-32
   1afcc:	872e                	mv	a4,a1
   1afce:	e822                	sd	s0,16(sp)
   1afd0:	e426                	sd	s1,8(sp)
   1afd2:	842a                	mv	s0,a0
   1afd4:	85b2                	mv	a1,a2
   1afd6:	853a                	mv	a0,a4
   1afd8:	ec06                	sd	ra,24(sp)
   1afda:	6801a423          	sw	zero,1672(gp) # 1f7a0 <errno>
   1afde:	0e0000ef          	jal	ra,1b0be <_kill>
   1afe2:	57fd                	li	a5,-1
   1afe4:	00f50763          	beq	a0,a5,1aff2 <_kill_r+0x28>
   1afe8:	60e2                	ld	ra,24(sp)
   1afea:	6442                	ld	s0,16(sp)
   1afec:	64a2                	ld	s1,8(sp)
   1afee:	6105                	addi	sp,sp,32
   1aff0:	8082                	ret
   1aff2:	6881a783          	lw	a5,1672(gp) # 1f7a0 <errno>
   1aff6:	dbed                	beqz	a5,1afe8 <_kill_r+0x1e>
   1aff8:	60e2                	ld	ra,24(sp)
   1affa:	c01c                	sw	a5,0(s0)
   1affc:	6442                	ld	s0,16(sp)
   1affe:	64a2                	ld	s1,8(sp)
   1b000:	6105                	addi	sp,sp,32
   1b002:	8082                	ret

000000000001b004 <_getpid_r>:
   1b004:	a841                	j	1b094 <_getpid>

000000000001b006 <_close>:
   1b006:	1141                	addi	sp,sp,-16
   1b008:	e406                	sd	ra,8(sp)
   1b00a:	e022                	sd	s0,0(sp)
   1b00c:	03900893          	li	a7,57
   1b010:	00000073          	ecall
   1b014:	842a                	mv	s0,a0
   1b016:	00054763          	bltz	a0,1b024 <_close+0x1e>
   1b01a:	2501                	sext.w	a0,a0
   1b01c:	60a2                	ld	ra,8(sp)
   1b01e:	6402                	ld	s0,0(sp)
   1b020:	0141                	addi	sp,sp,16
   1b022:	8082                	ret
   1b024:	abbfe0ef          	jal	ra,19ade <__errno>
   1b028:	4080043b          	negw	s0,s0
   1b02c:	c100                	sw	s0,0(a0)
   1b02e:	557d                	li	a0,-1
   1b030:	b7f5                	j	1b01c <_close+0x16>

000000000001b032 <_exit>:
   1b032:	05d00893          	li	a7,93
   1b036:	00000073          	ecall
   1b03a:	00054363          	bltz	a0,1b040 <_exit+0xe>
   1b03e:	a001                	j	1b03e <_exit+0xc>
   1b040:	1141                	addi	sp,sp,-16
   1b042:	e022                	sd	s0,0(sp)
   1b044:	842a                	mv	s0,a0
   1b046:	e406                	sd	ra,8(sp)
   1b048:	4080043b          	negw	s0,s0
   1b04c:	a93fe0ef          	jal	ra,19ade <__errno>
   1b050:	c100                	sw	s0,0(a0)
   1b052:	a001                	j	1b052 <_exit+0x20>

000000000001b054 <_fstat>:
   1b054:	7135                	addi	sp,sp,-160
   1b056:	e526                	sd	s1,136(sp)
   1b058:	ed06                	sd	ra,152(sp)
   1b05a:	84ae                	mv	s1,a1
   1b05c:	e922                	sd	s0,144(sp)
   1b05e:	05000893          	li	a7,80
   1b062:	858a                	mv	a1,sp
   1b064:	00000073          	ecall
   1b068:	842a                	mv	s0,a0
   1b06a:	00054e63          	bltz	a0,1b086 <_fstat+0x32>
   1b06e:	0005041b          	sext.w	s0,a0
   1b072:	8526                	mv	a0,s1
   1b074:	858a                	mv	a1,sp
   1b076:	130000ef          	jal	ra,1b1a6 <_conv_stat>
   1b07a:	60ea                	ld	ra,152(sp)
   1b07c:	8522                	mv	a0,s0
   1b07e:	644a                	ld	s0,144(sp)
   1b080:	64aa                	ld	s1,136(sp)
   1b082:	610d                	addi	sp,sp,160
   1b084:	8082                	ret
   1b086:	4080043b          	negw	s0,s0
   1b08a:	a55fe0ef          	jal	ra,19ade <__errno>
   1b08e:	c100                	sw	s0,0(a0)
   1b090:	547d                	li	s0,-1
   1b092:	b7c5                	j	1b072 <_fstat+0x1e>

000000000001b094 <_getpid>:
   1b094:	4505                	li	a0,1
   1b096:	8082                	ret

000000000001b098 <_isatty>:
   1b098:	7119                	addi	sp,sp,-128
   1b09a:	002c                	addi	a1,sp,8
   1b09c:	fc86                	sd	ra,120(sp)
   1b09e:	fb7ff0ef          	jal	ra,1b054 <_fstat>
   1b0a2:	57fd                	li	a5,-1
   1b0a4:	00f50963          	beq	a0,a5,1b0b6 <_isatty+0x1e>
   1b0a8:	4532                	lw	a0,12(sp)
   1b0aa:	70e6                	ld	ra,120(sp)
   1b0ac:	40d5551b          	sraiw	a0,a0,0xd
   1b0b0:	8905                	andi	a0,a0,1
   1b0b2:	6109                	addi	sp,sp,128
   1b0b4:	8082                	ret
   1b0b6:	70e6                	ld	ra,120(sp)
   1b0b8:	4501                	li	a0,0
   1b0ba:	6109                	addi	sp,sp,128
   1b0bc:	8082                	ret

000000000001b0be <_kill>:
   1b0be:	1141                	addi	sp,sp,-16
   1b0c0:	e406                	sd	ra,8(sp)
   1b0c2:	a1dfe0ef          	jal	ra,19ade <__errno>
   1b0c6:	60a2                	ld	ra,8(sp)
   1b0c8:	47d9                	li	a5,22
   1b0ca:	c11c                	sw	a5,0(a0)
   1b0cc:	557d                	li	a0,-1
   1b0ce:	0141                	addi	sp,sp,16
   1b0d0:	8082                	ret

000000000001b0d2 <_lseek>:
   1b0d2:	1141                	addi	sp,sp,-16
   1b0d4:	e406                	sd	ra,8(sp)
   1b0d6:	e022                	sd	s0,0(sp)
   1b0d8:	03e00893          	li	a7,62
   1b0dc:	00000073          	ecall
   1b0e0:	842a                	mv	s0,a0
   1b0e2:	00054763          	bltz	a0,1b0f0 <_lseek+0x1e>
   1b0e6:	60a2                	ld	ra,8(sp)
   1b0e8:	8522                	mv	a0,s0
   1b0ea:	6402                	ld	s0,0(sp)
   1b0ec:	0141                	addi	sp,sp,16
   1b0ee:	8082                	ret
   1b0f0:	4080043b          	negw	s0,s0
   1b0f4:	9ebfe0ef          	jal	ra,19ade <__errno>
   1b0f8:	c100                	sw	s0,0(a0)
   1b0fa:	547d                	li	s0,-1
   1b0fc:	b7ed                	j	1b0e6 <_lseek+0x14>

000000000001b0fe <_read>:
   1b0fe:	1141                	addi	sp,sp,-16
   1b100:	e406                	sd	ra,8(sp)
   1b102:	e022                	sd	s0,0(sp)
   1b104:	03f00893          	li	a7,63
   1b108:	00000073          	ecall
   1b10c:	842a                	mv	s0,a0
   1b10e:	00054763          	bltz	a0,1b11c <_read+0x1e>
   1b112:	60a2                	ld	ra,8(sp)
   1b114:	8522                	mv	a0,s0
   1b116:	6402                	ld	s0,0(sp)
   1b118:	0141                	addi	sp,sp,16
   1b11a:	8082                	ret
   1b11c:	4080043b          	negw	s0,s0
   1b120:	9bffe0ef          	jal	ra,19ade <__errno>
   1b124:	c100                	sw	s0,0(a0)
   1b126:	547d                	li	s0,-1
   1b128:	b7ed                	j	1b112 <_read+0x14>

000000000001b12a <_sbrk>:
   1b12a:	69818693          	addi	a3,gp,1688 # 1f7b0 <heap_end.0>
   1b12e:	6298                	ld	a4,0(a3)
   1b130:	1141                	addi	sp,sp,-16
   1b132:	e406                	sd	ra,8(sp)
   1b134:	87aa                	mv	a5,a0
   1b136:	eb19                	bnez	a4,1b14c <_sbrk+0x22>
   1b138:	0d600893          	li	a7,214
   1b13c:	4501                	li	a0,0
   1b13e:	00000073          	ecall
   1b142:	567d                	li	a2,-1
   1b144:	872a                	mv	a4,a0
   1b146:	02c50263          	beq	a0,a2,1b16a <_sbrk+0x40>
   1b14a:	e288                	sd	a0,0(a3)
   1b14c:	0d600893          	li	a7,214
   1b150:	00e78533          	add	a0,a5,a4
   1b154:	00000073          	ecall
   1b158:	6298                	ld	a4,0(a3)
   1b15a:	97ba                	add	a5,a5,a4
   1b15c:	00f51763          	bne	a0,a5,1b16a <_sbrk+0x40>
   1b160:	60a2                	ld	ra,8(sp)
   1b162:	e288                	sd	a0,0(a3)
   1b164:	853a                	mv	a0,a4
   1b166:	0141                	addi	sp,sp,16
   1b168:	8082                	ret
   1b16a:	975fe0ef          	jal	ra,19ade <__errno>
   1b16e:	60a2                	ld	ra,8(sp)
   1b170:	47b1                	li	a5,12
   1b172:	c11c                	sw	a5,0(a0)
   1b174:	557d                	li	a0,-1
   1b176:	0141                	addi	sp,sp,16
   1b178:	8082                	ret

000000000001b17a <_write>:
   1b17a:	1141                	addi	sp,sp,-16
   1b17c:	e406                	sd	ra,8(sp)
   1b17e:	e022                	sd	s0,0(sp)
   1b180:	04000893          	li	a7,64
   1b184:	00000073          	ecall
   1b188:	842a                	mv	s0,a0
   1b18a:	00054763          	bltz	a0,1b198 <_write+0x1e>
   1b18e:	60a2                	ld	ra,8(sp)
   1b190:	8522                	mv	a0,s0
   1b192:	6402                	ld	s0,0(sp)
   1b194:	0141                	addi	sp,sp,16
   1b196:	8082                	ret
   1b198:	4080043b          	negw	s0,s0
   1b19c:	943fe0ef          	jal	ra,19ade <__errno>
   1b1a0:	c100                	sw	s0,0(a0)
   1b1a2:	547d                	li	s0,-1
   1b1a4:	b7ed                	j	1b18e <_write+0x14>

000000000001b1a6 <_conv_stat>:
   1b1a6:	0005b383          	ld	t2,0(a1)
   1b1aa:	0085b283          	ld	t0,8(a1)
   1b1ae:	0105af83          	lw	t6,16(a1)
   1b1b2:	0145af03          	lw	t5,20(a1)
   1b1b6:	0185ae83          	lw	t4,24(a1)
   1b1ba:	01c5ae03          	lw	t3,28(a1)
   1b1be:	0205b303          	ld	t1,32(a1)
   1b1c2:	0305b883          	ld	a7,48(a1)
   1b1c6:	0405b803          	ld	a6,64(a1)
   1b1ca:	5d90                	lw	a2,56(a1)
   1b1cc:	65b4                	ld	a3,72(a1)
   1b1ce:	6db8                	ld	a4,88(a1)
   1b1d0:	75bc                	ld	a5,104(a1)
   1b1d2:	00751023          	sh	t2,0(a0)
   1b1d6:	00551123          	sh	t0,2(a0)
   1b1da:	01f52223          	sw	t6,4(a0)
   1b1de:	01e51423          	sh	t5,8(a0)
   1b1e2:	01d51523          	sh	t4,10(a0)
   1b1e6:	01c51623          	sh	t3,12(a0)
   1b1ea:	00651723          	sh	t1,14(a0)
   1b1ee:	01153823          	sd	a7,16(a0)
   1b1f2:	05053823          	sd	a6,80(a0)
   1b1f6:	e530                	sd	a2,72(a0)
   1b1f8:	ed14                	sd	a3,24(a0)
   1b1fa:	f518                	sd	a4,40(a0)
   1b1fc:	fd1c                	sd	a5,56(a0)
   1b1fe:	8082                	ret

000000000001b200 <__eqtf2>:
   1b200:	882a                	mv	a6,a0
   1b202:	002027f3          	frrm	a5
   1b206:	6521                	lui	a0,0x8
   1b208:	0305d893          	srli	a7,a1,0x30
   1b20c:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1b20e:	57fd                	li	a5,-1
   1b210:	83c1                	srli	a5,a5,0x10
   1b212:	0306d313          	srli	t1,a3,0x30
   1b216:	00a8f8b3          	and	a7,a7,a0
   1b21a:	00f5f733          	and	a4,a1,a5
   1b21e:	00a37333          	and	t1,t1,a0
   1b222:	8ff5                	and	a5,a5,a3
   1b224:	91fd                	srli	a1,a1,0x3f
   1b226:	92fd                	srli	a3,a3,0x3f
   1b228:	00a89863          	bne	a7,a0,1b238 <__eqtf2+0x38>
   1b22c:	01076533          	or	a0,a4,a6
   1b230:	e10d                	bnez	a0,1b252 <__eqtf2+0x52>
   1b232:	03131f63          	bne	t1,a7,1b270 <__eqtf2+0x70>
   1b236:	a019                	j	1b23c <__eqtf2+0x3c>
   1b238:	02a31e63          	bne	t1,a0,1b274 <__eqtf2+0x74>
   1b23c:	00c7e533          	or	a0,a5,a2
   1b240:	c915                	beqz	a0,1b274 <__eqtf2+0x74>
   1b242:	66a1                	lui	a3,0x8
   1b244:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1b246:	00d89f63          	bne	a7,a3,1b264 <__eqtf2+0x64>
   1b24a:	01076833          	or	a6,a4,a6
   1b24e:	00080b63          	beqz	a6,1b264 <__eqtf2+0x64>
   1b252:	933d                	srli	a4,a4,0x2f
   1b254:	c331                	beqz	a4,1b298 <__eqtf2+0x98>
   1b256:	6721                	lui	a4,0x8
   1b258:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b25a:	4505                	li	a0,1
   1b25c:	00e31b63          	bne	t1,a4,1b272 <__eqtf2+0x72>
   1b260:	8e5d                	or	a2,a2,a5
   1b262:	ca01                	beqz	a2,1b272 <__eqtf2+0x72>
   1b264:	93bd                	srli	a5,a5,0x2f
   1b266:	0017c793          	xori	a5,a5,1
   1b26a:	00479713          	slli	a4,a5,0x4
   1b26e:	e795                	bnez	a5,1b29a <__eqtf2+0x9a>
   1b270:	4505                	li	a0,1
   1b272:	8082                	ret
   1b274:	4505                	li	a0,1
   1b276:	fe689ee3          	bne	a7,t1,1b272 <__eqtf2+0x72>
   1b27a:	fef71ce3          	bne	a4,a5,1b272 <__eqtf2+0x72>
   1b27e:	fec81ae3          	bne	a6,a2,1b272 <__eqtf2+0x72>
   1b282:	00d58963          	beq	a1,a3,1b294 <__eqtf2+0x94>
   1b286:	fe0896e3          	bnez	a7,1b272 <__eqtf2+0x72>
   1b28a:	01076733          	or	a4,a4,a6
   1b28e:	00e03533          	snez	a0,a4
   1b292:	8082                	ret
   1b294:	4501                	li	a0,0
   1b296:	8082                	ret
   1b298:	4741                	li	a4,16
   1b29a:	00172073          	csrs	fflags,a4
   1b29e:	bfc9                	j	1b270 <__eqtf2+0x70>

000000000001b2a0 <__getf2>:
   1b2a0:	88aa                	mv	a7,a0
   1b2a2:	002027f3          	frrm	a5
   1b2a6:	6321                	lui	t1,0x8
   1b2a8:	137d                	addi	t1,t1,-1 # 7fff <exit-0x80e9>
   1b2aa:	57fd                	li	a5,-1
   1b2ac:	0305d813          	srli	a6,a1,0x30
   1b2b0:	83c1                	srli	a5,a5,0x10
   1b2b2:	0306d713          	srli	a4,a3,0x30
   1b2b6:	00687833          	and	a6,a6,t1
   1b2ba:	00f5fe33          	and	t3,a1,a5
   1b2be:	03f5d513          	srli	a0,a1,0x3f
   1b2c2:	8ff5                	and	a5,a5,a3
   1b2c4:	00677733          	and	a4,a4,t1
   1b2c8:	92fd                	srli	a3,a3,0x3f
   1b2ca:	00681963          	bne	a6,t1,1b2dc <__getf2+0x3c>
   1b2ce:	011e65b3          	or	a1,t3,a7
   1b2d2:	c5ad                	beqz	a1,1b33c <__getf2+0x9c>
   1b2d4:	00186073          	csrsi	fflags,16
   1b2d8:	5579                	li	a0,-2
   1b2da:	8082                	ret
   1b2dc:	00671563          	bne	a4,t1,1b2e6 <__getf2+0x46>
   1b2e0:	00c7e5b3          	or	a1,a5,a2
   1b2e4:	f9e5                	bnez	a1,1b2d4 <__getf2+0x34>
   1b2e6:	04081d63          	bnez	a6,1b340 <__getf2+0xa0>
   1b2ea:	011e65b3          	or	a1,t3,a7
   1b2ee:	0015b593          	seqz	a1,a1
   1b2f2:	eb0d                	bnez	a4,1b324 <__getf2+0x84>
   1b2f4:	00c7e333          	or	t1,a5,a2
   1b2f8:	02031663          	bnez	t1,1b324 <__getf2+0x84>
   1b2fc:	e185                	bnez	a1,1b31c <__getf2+0x7c>
   1b2fe:	c10d                	beqz	a0,1b320 <__getf2+0x80>
   1b300:	557d                	li	a0,-1
   1b302:	8082                	ret
   1b304:	557d                	li	a0,-1
   1b306:	c69d                	beqz	a3,1b334 <__getf2+0x94>
   1b308:	8536                	mv	a0,a3
   1b30a:	8082                	ret
   1b30c:	ffc7e9e3          	bltu	a5,t3,1b2fe <__getf2+0x5e>
   1b310:	02fe1363          	bne	t3,a5,1b336 <__getf2+0x96>
   1b314:	ff1665e3          	bltu	a2,a7,1b2fe <__getf2+0x5e>
   1b318:	00c8ed63          	bltu	a7,a2,1b332 <__getf2+0x92>
   1b31c:	4501                	li	a0,0
   1b31e:	8082                	ret
   1b320:	4505                	li	a0,1
   1b322:	8082                	ret
   1b324:	f1e5                	bnez	a1,1b304 <__getf2+0x64>
   1b326:	fcd51ce3          	bne	a0,a3,1b2fe <__getf2+0x5e>
   1b32a:	fd074ae3          	blt	a4,a6,1b2fe <__getf2+0x5e>
   1b32e:	fce85fe3          	bge	a6,a4,1b30c <__getf2+0x6c>
   1b332:	d579                	beqz	a0,1b300 <__getf2+0x60>
   1b334:	8082                	ret
   1b336:	fefe6ee3          	bltu	t3,a5,1b332 <__getf2+0x92>
   1b33a:	b7cd                	j	1b31c <__getf2+0x7c>
   1b33c:	fb0702e3          	beq	a4,a6,1b2e0 <__getf2+0x40>
   1b340:	f37d                	bnez	a4,1b326 <__getf2+0x86>
   1b342:	4581                	li	a1,0
   1b344:	bf45                	j	1b2f4 <__getf2+0x54>

000000000001b346 <__letf2>:
   1b346:	88aa                	mv	a7,a0
   1b348:	002027f3          	frrm	a5
   1b34c:	6321                	lui	t1,0x8
   1b34e:	137d                	addi	t1,t1,-1 # 7fff <exit-0x80e9>
   1b350:	57fd                	li	a5,-1
   1b352:	0305d813          	srli	a6,a1,0x30
   1b356:	83c1                	srli	a5,a5,0x10
   1b358:	0306d713          	srli	a4,a3,0x30
   1b35c:	00687833          	and	a6,a6,t1
   1b360:	00f5fe33          	and	t3,a1,a5
   1b364:	03f5d513          	srli	a0,a1,0x3f
   1b368:	8ff5                	and	a5,a5,a3
   1b36a:	00677733          	and	a4,a4,t1
   1b36e:	92fd                	srli	a3,a3,0x3f
   1b370:	00681963          	bne	a6,t1,1b382 <__letf2+0x3c>
   1b374:	011e65b3          	or	a1,t3,a7
   1b378:	c5ad                	beqz	a1,1b3e2 <__letf2+0x9c>
   1b37a:	00186073          	csrsi	fflags,16
   1b37e:	4509                	li	a0,2
   1b380:	8082                	ret
   1b382:	00671563          	bne	a4,t1,1b38c <__letf2+0x46>
   1b386:	00c7e5b3          	or	a1,a5,a2
   1b38a:	f9e5                	bnez	a1,1b37a <__letf2+0x34>
   1b38c:	04081d63          	bnez	a6,1b3e6 <__letf2+0xa0>
   1b390:	011e65b3          	or	a1,t3,a7
   1b394:	0015b593          	seqz	a1,a1
   1b398:	eb0d                	bnez	a4,1b3ca <__letf2+0x84>
   1b39a:	00c7e333          	or	t1,a5,a2
   1b39e:	02031663          	bnez	t1,1b3ca <__letf2+0x84>
   1b3a2:	e185                	bnez	a1,1b3c2 <__letf2+0x7c>
   1b3a4:	c10d                	beqz	a0,1b3c6 <__letf2+0x80>
   1b3a6:	557d                	li	a0,-1
   1b3a8:	8082                	ret
   1b3aa:	557d                	li	a0,-1
   1b3ac:	c69d                	beqz	a3,1b3da <__letf2+0x94>
   1b3ae:	8536                	mv	a0,a3
   1b3b0:	8082                	ret
   1b3b2:	ffc7e9e3          	bltu	a5,t3,1b3a4 <__letf2+0x5e>
   1b3b6:	02fe1363          	bne	t3,a5,1b3dc <__letf2+0x96>
   1b3ba:	ff1665e3          	bltu	a2,a7,1b3a4 <__letf2+0x5e>
   1b3be:	00c8ed63          	bltu	a7,a2,1b3d8 <__letf2+0x92>
   1b3c2:	4501                	li	a0,0
   1b3c4:	8082                	ret
   1b3c6:	4505                	li	a0,1
   1b3c8:	8082                	ret
   1b3ca:	f1e5                	bnez	a1,1b3aa <__letf2+0x64>
   1b3cc:	fcd51ce3          	bne	a0,a3,1b3a4 <__letf2+0x5e>
   1b3d0:	fd074ae3          	blt	a4,a6,1b3a4 <__letf2+0x5e>
   1b3d4:	fce85fe3          	bge	a6,a4,1b3b2 <__letf2+0x6c>
   1b3d8:	d579                	beqz	a0,1b3a6 <__letf2+0x60>
   1b3da:	8082                	ret
   1b3dc:	fefe6ee3          	bltu	t3,a5,1b3d8 <__letf2+0x92>
   1b3e0:	b7cd                	j	1b3c2 <__letf2+0x7c>
   1b3e2:	fb0702e3          	beq	a4,a6,1b386 <__letf2+0x40>
   1b3e6:	f37d                	bnez	a4,1b3cc <__letf2+0x86>
   1b3e8:	4581                	li	a1,0
   1b3ea:	bf45                	j	1b39a <__letf2+0x54>

000000000001b3ec <__multf3>:
   1b3ec:	711d                	addi	sp,sp,-96
   1b3ee:	e8a2                	sd	s0,80(sp)
   1b3f0:	f456                	sd	s5,40(sp)
   1b3f2:	e862                	sd	s8,16(sp)
   1b3f4:	ec86                	sd	ra,88(sp)
   1b3f6:	e4a6                	sd	s1,72(sp)
   1b3f8:	e0ca                	sd	s2,64(sp)
   1b3fa:	fc4e                	sd	s3,56(sp)
   1b3fc:	f852                	sd	s4,48(sp)
   1b3fe:	f05a                	sd	s6,32(sp)
   1b400:	ec5e                	sd	s7,24(sp)
   1b402:	e466                	sd	s9,8(sp)
   1b404:	842a                	mv	s0,a0
   1b406:	8c32                	mv	s8,a2
   1b408:	8ab6                	mv	s5,a3
   1b40a:	00202973          	frrm	s2
   1b40e:	6721                	lui	a4,0x8
   1b410:	0305d793          	srli	a5,a1,0x30
   1b414:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b416:	01059993          	slli	s3,a1,0x10
   1b41a:	8ff9                	and	a5,a5,a4
   1b41c:	2901                	sext.w	s2,s2
   1b41e:	0109d993          	srli	s3,s3,0x10
   1b422:	03f5db13          	srli	s6,a1,0x3f
   1b426:	c795                	beqz	a5,1b452 <__multf3+0x66>
   1b428:	00078b9b          	sext.w	s7,a5
   1b42c:	08e78463          	beq	a5,a4,1b4b4 <__multf3+0xc8>
   1b430:	098e                	slli	s3,s3,0x3
   1b432:	03d55713          	srli	a4,a0,0x3d
   1b436:	01376733          	or	a4,a4,s3
   1b43a:	7bf1                	lui	s7,0xffffc
   1b43c:	4985                	li	s3,1
   1b43e:	19ce                	slli	s3,s3,0x33
   1b440:	0b85                	addi	s7,s7,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdc6e9>
   1b442:	013769b3          	or	s3,a4,s3
   1b446:	00351a13          	slli	s4,a0,0x3
   1b44a:	9bbe                	add	s7,s7,a5
   1b44c:	4c81                	li	s9,0
   1b44e:	4481                	li	s1,0
   1b450:	a8b5                	j	1b4cc <__multf3+0xe0>
   1b452:	00a9ea33          	or	s4,s3,a0
   1b456:	2c0a0263          	beqz	s4,1b71a <__multf3+0x32e>
   1b45a:	04098263          	beqz	s3,1b49e <__multf3+0xb2>
   1b45e:	854e                	mv	a0,s3
   1b460:	20a010ef          	jal	ra,1c66a <__clzdi2>
   1b464:	0005079b          	sext.w	a5,a0
   1b468:	ff178693          	addi	a3,a5,-15
   1b46c:	03c00613          	li	a2,60
   1b470:	0006871b          	sext.w	a4,a3
   1b474:	02d64a63          	blt	a2,a3,1b4a8 <__multf3+0xbc>
   1b478:	03d00693          	li	a3,61
   1b47c:	00370a1b          	addiw	s4,a4,3
   1b480:	40e6873b          	subw	a4,a3,a4
   1b484:	014999b3          	sll	s3,s3,s4
   1b488:	00e45733          	srl	a4,s0,a4
   1b48c:	013769b3          	or	s3,a4,s3
   1b490:	01441a33          	sll	s4,s0,s4
   1b494:	7bf1                	lui	s7,0xffffc
   1b496:	0bc5                	addi	s7,s7,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc6f9>
   1b498:	40fb8bb3          	sub	s7,s7,a5
   1b49c:	bf45                	j	1b44c <__multf3+0x60>
   1b49e:	1cc010ef          	jal	ra,1c66a <__clzdi2>
   1b4a2:	0405079b          	addiw	a5,a0,64
   1b4a6:	b7c9                	j	1b468 <__multf3+0x7c>
   1b4a8:	fc37071b          	addiw	a4,a4,-61
   1b4ac:	00e419b3          	sll	s3,s0,a4
   1b4b0:	4a01                	li	s4,0
   1b4b2:	b7cd                	j	1b494 <__multf3+0xa8>
   1b4b4:	00a9ea33          	or	s4,s3,a0
   1b4b8:	260a0563          	beqz	s4,1b722 <__multf3+0x336>
   1b4bc:	02f9d493          	srli	s1,s3,0x2f
   1b4c0:	0014c493          	xori	s1,s1,1
   1b4c4:	8885                	andi	s1,s1,1
   1b4c6:	0492                	slli	s1,s1,0x4
   1b4c8:	8a2a                	mv	s4,a0
   1b4ca:	4c8d                	li	s9,3
   1b4cc:	66a1                	lui	a3,0x8
   1b4ce:	030ad613          	srli	a2,s5,0x30
   1b4d2:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1b4d4:	010a9413          	slli	s0,s5,0x10
   1b4d8:	8e75                	and	a2,a2,a3
   1b4da:	87e2                	mv	a5,s8
   1b4dc:	8041                	srli	s0,s0,0x10
   1b4de:	03fada93          	srli	s5,s5,0x3f
   1b4e2:	24060363          	beqz	a2,1b728 <__multf3+0x33c>
   1b4e6:	0006071b          	sext.w	a4,a2
   1b4ea:	28d60c63          	beq	a2,a3,1b782 <__multf3+0x396>
   1b4ee:	040e                	slli	s0,s0,0x3
   1b4f0:	03dc5713          	srli	a4,s8,0x3d
   1b4f4:	8f41                	or	a4,a4,s0
   1b4f6:	4405                	li	s0,1
   1b4f8:	144e                	slli	s0,s0,0x33
   1b4fa:	8c59                	or	s0,s0,a4
   1b4fc:	7771                	lui	a4,0xffffc
   1b4fe:	0705                	addi	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdc6e9>
   1b500:	003c1793          	slli	a5,s8,0x3
   1b504:	9732                	add	a4,a4,a2
   1b506:	4881                	li	a7,0
   1b508:	017706b3          	add	a3,a4,s7
   1b50c:	002c9713          	slli	a4,s9,0x2
   1b510:	01176733          	or	a4,a4,a7
   1b514:	45a9                	li	a1,10
   1b516:	015b4633          	xor	a2,s6,s5
   1b51a:	00168813          	addi	a6,a3,1
   1b51e:	2ce5c163          	blt	a1,a4,1b7e0 <__multf3+0x3f4>
   1b522:	4589                	li	a1,2
   1b524:	28e5c363          	blt	a1,a4,1b7aa <__multf3+0x3be>
   1b528:	177d                	addi	a4,a4,-1
   1b52a:	4585                	li	a1,1
   1b52c:	28e5fe63          	bgeu	a1,a4,1b7c8 <__multf3+0x3dc>
   1b530:	577d                	li	a4,-1
   1b532:	9301                	srli	a4,a4,0x20
   1b534:	014983b3          	add	t2,s3,s4
   1b538:	00878f33          	add	t5,a5,s0
   1b53c:	020a5593          	srli	a1,s4,0x20
   1b540:	0207d513          	srli	a0,a5,0x20
   1b544:	0143bfb3          	sltu	t6,t2,s4
   1b548:	00ff32b3          	sltu	t0,t5,a5
   1b54c:	00ea7a33          	and	s4,s4,a4
   1b550:	8ff9                	and	a5,a5,a4
   1b552:	034788b3          	mul	a7,a5,s4
   1b556:	8e7e                	mv	t3,t6
   1b558:	8316                	mv	t1,t0
   1b55a:	02a58733          	mul	a4,a1,a0
   1b55e:	02f587b3          	mul	a5,a1,a5
   1b562:	03450533          	mul	a0,a0,s4
   1b566:	00f505b3          	add	a1,a0,a5
   1b56a:	0208d513          	srli	a0,a7,0x20
   1b56e:	952e                	add	a0,a0,a1
   1b570:	00f57563          	bgeu	a0,a5,1b57a <__multf3+0x18e>
   1b574:	4785                	li	a5,1
   1b576:	1782                	slli	a5,a5,0x20
   1b578:	973e                	add	a4,a4,a5
   1b57a:	57fd                	li	a5,-1
   1b57c:	9381                	srli	a5,a5,0x20
   1b57e:	02055e93          	srli	t4,a0,0x20
   1b582:	8d7d                	and	a0,a0,a5
   1b584:	00f8f8b3          	and	a7,a7,a5
   1b588:	1502                	slli	a0,a0,0x20
   1b58a:	0203da93          	srli	s5,t2,0x20
   1b58e:	9eba                	add	t4,t4,a4
   1b590:	9546                	add	a0,a0,a7
   1b592:	020f5713          	srli	a4,t5,0x20
   1b596:	00f3f8b3          	and	a7,t2,a5
   1b59a:	00ff77b3          	and	a5,t5,a5
   1b59e:	031785b3          	mul	a1,a5,a7
   1b5a2:	02fa87b3          	mul	a5,s5,a5
   1b5a6:	02ea8ab3          	mul	s5,s5,a4
   1b5aa:	03170733          	mul	a4,a4,a7
   1b5ae:	00f708b3          	add	a7,a4,a5
   1b5b2:	0205d713          	srli	a4,a1,0x20
   1b5b6:	9746                	add	a4,a4,a7
   1b5b8:	00f77563          	bgeu	a4,a5,1b5c2 <__multf3+0x1d6>
   1b5bc:	4785                	li	a5,1
   1b5be:	1782                	slli	a5,a5,0x20
   1b5c0:	9abe                	add	s5,s5,a5
   1b5c2:	57fd                	li	a5,-1
   1b5c4:	9381                	srli	a5,a5,0x20
   1b5c6:	02075a13          	srli	s4,a4,0x20
   1b5ca:	8f7d                	and	a4,a4,a5
   1b5cc:	8dfd                	and	a1,a1,a5
   1b5ce:	1702                	slli	a4,a4,0x20
   1b5d0:	0209d893          	srli	a7,s3,0x20
   1b5d4:	972e                	add	a4,a4,a1
   1b5d6:	00f9f9b3          	and	s3,s3,a5
   1b5da:	02045593          	srli	a1,s0,0x20
   1b5de:	8fe1                	and	a5,a5,s0
   1b5e0:	02f98b33          	mul	s6,s3,a5
   1b5e4:	02b88433          	mul	s0,a7,a1
   1b5e8:	02f887b3          	mul	a5,a7,a5
   1b5ec:	020b5893          	srli	a7,s6,0x20
   1b5f0:	033585b3          	mul	a1,a1,s3
   1b5f4:	95be                	add	a1,a1,a5
   1b5f6:	98ae                	add	a7,a7,a1
   1b5f8:	00f8f563          	bgeu	a7,a5,1b602 <__multf3+0x216>
   1b5fc:	4785                	li	a5,1
   1b5fe:	1782                	slli	a5,a5,0x20
   1b600:	943e                	add	s0,s0,a5
   1b602:	0208d593          	srli	a1,a7,0x20
   1b606:	95a2                	add	a1,a1,s0
   1b608:	547d                	li	s0,-1
   1b60a:	9001                	srli	s0,s0,0x20
   1b60c:	9776                	add	a4,a4,t4
   1b60e:	0088f7b3          	and	a5,a7,s0
   1b612:	01d738b3          	sltu	a7,a4,t4
   1b616:	008b7b33          	and	s6,s6,s0
   1b61a:	40600333          	neg	t1,t1
   1b61e:	011a0433          	add	s0,s4,a7
   1b622:	9456                	add	s0,s0,s5
   1b624:	00737333          	and	t1,t1,t2
   1b628:	41c00e33          	neg	t3,t3
   1b62c:	9322                	add	t1,t1,s0
   1b62e:	005fffb3          	and	t6,t6,t0
   1b632:	01ee7e33          	and	t3,t3,t5
   1b636:	011438b3          	sltu	a7,s0,a7
   1b63a:	9e1a                	add	t3,t3,t1
   1b63c:	98fe                	add	a7,a7,t6
   1b63e:	00833433          	sltu	s0,t1,s0
   1b642:	98a2                	add	a7,a7,s0
   1b644:	006e3333          	sltu	t1,t3,t1
   1b648:	40a70f33          	sub	t5,a4,a0
   1b64c:	01e73fb3          	sltu	t6,a4,t5
   1b650:	1782                	slli	a5,a5,0x20
   1b652:	989a                	add	a7,a7,t1
   1b654:	41de0333          	sub	t1,t3,t4
   1b658:	006e32b3          	sltu	t0,t3,t1
   1b65c:	97da                	add	a5,a5,s6
   1b65e:	41f30333          	sub	t1,t1,t6
   1b662:	4f81                	li	t6,0
   1b664:	01e77663          	bgeu	a4,t5,1b670 <__multf3+0x284>
   1b668:	41ce8eb3          	sub	t4,t4,t3
   1b66c:	001ebf93          	seqz	t6,t4
   1b670:	40ff0e33          	sub	t3,t5,a5
   1b674:	98ae                	add	a7,a7,a1
   1b676:	01cf3733          	sltu	a4,t5,t3
   1b67a:	40b305b3          	sub	a1,t1,a1
   1b67e:	005fefb3          	or	t6,t6,t0
   1b682:	00b33333          	sltu	t1,t1,a1
   1b686:	40e78733          	sub	a4,a5,a4
   1b68a:	4e81                	li	t4,0
   1b68c:	01cf7463          	bgeu	t5,t3,1b694 <__multf3+0x2a8>
   1b690:	0015be93          	seqz	t4,a1
   1b694:	95ba                	add	a1,a1,a4
   1b696:	00f5b733          	sltu	a4,a1,a5
   1b69a:	9746                	add	a4,a4,a7
   1b69c:	41f70733          	sub	a4,a4,t6
   1b6a0:	006eeeb3          	or	t4,t4,t1
   1b6a4:	41d70733          	sub	a4,a4,t4
   1b6a8:	00de1793          	slli	a5,t3,0xd
   1b6ac:	0736                	slli	a4,a4,0xd
   1b6ae:	0335d413          	srli	s0,a1,0x33
   1b6b2:	8fc9                	or	a5,a5,a0
   1b6b4:	8c59                	or	s0,s0,a4
   1b6b6:	00f037b3          	snez	a5,a5
   1b6ba:	033e5513          	srli	a0,t3,0x33
   1b6be:	9351                	srli	a4,a4,0x34
   1b6c0:	8fc9                	or	a5,a5,a0
   1b6c2:	05b6                	slli	a1,a1,0xd
   1b6c4:	8b05                	andi	a4,a4,1
   1b6c6:	8fcd                	or	a5,a5,a1
   1b6c8:	12070d63          	beqz	a4,1b802 <__multf3+0x416>
   1b6cc:	0017d713          	srli	a4,a5,0x1
   1b6d0:	8b85                	andi	a5,a5,1
   1b6d2:	8f5d                	or	a4,a4,a5
   1b6d4:	03f41793          	slli	a5,s0,0x3f
   1b6d8:	8fd9                	or	a5,a5,a4
   1b6da:	8005                	srli	s0,s0,0x1
   1b6dc:	6711                	lui	a4,0x4
   1b6de:	177d                	addi	a4,a4,-1 # 3fff <exit-0xc0e9>
   1b6e0:	9742                	add	a4,a4,a6
   1b6e2:	1ae05c63          	blez	a4,1b89a <__multf3+0x4ae>
   1b6e6:	0077f693          	andi	a3,a5,7
   1b6ea:	12068363          	beqz	a3,1b810 <__multf3+0x424>
   1b6ee:	4689                	li	a3,2
   1b6f0:	0014e493          	ori	s1,s1,1
   1b6f4:	10d90d63          	beq	s2,a3,1b80e <__multf3+0x422>
   1b6f8:	468d                	li	a3,3
   1b6fa:	10d90663          	beq	s2,a3,1b806 <__multf3+0x41a>
   1b6fe:	10091963          	bnez	s2,1b810 <__multf3+0x424>
   1b702:	00f7f693          	andi	a3,a5,15
   1b706:	4591                	li	a1,4
   1b708:	10b68463          	beq	a3,a1,1b810 <__multf3+0x424>
   1b70c:	00478693          	addi	a3,a5,4
   1b710:	00f6b7b3          	sltu	a5,a3,a5
   1b714:	943e                	add	s0,s0,a5
   1b716:	87b6                	mv	a5,a3
   1b718:	a8e5                	j	1b810 <__multf3+0x424>
   1b71a:	4981                	li	s3,0
   1b71c:	4b81                	li	s7,0
   1b71e:	4c85                	li	s9,1
   1b720:	b33d                	j	1b44e <__multf3+0x62>
   1b722:	4981                	li	s3,0
   1b724:	4c89                	li	s9,2
   1b726:	b325                	j	1b44e <__multf3+0x62>
   1b728:	008c67b3          	or	a5,s8,s0
   1b72c:	c7b5                	beqz	a5,1b798 <__multf3+0x3ac>
   1b72e:	cc15                	beqz	s0,1b76a <__multf3+0x37e>
   1b730:	8522                	mv	a0,s0
   1b732:	739000ef          	jal	ra,1c66a <__clzdi2>
   1b736:	2501                	sext.w	a0,a0
   1b738:	ff150793          	addi	a5,a0,-15
   1b73c:	03c00693          	li	a3,60
   1b740:	0007871b          	sext.w	a4,a5
   1b744:	02f6c963          	blt	a3,a5,1b776 <__multf3+0x38a>
   1b748:	03d00693          	li	a3,61
   1b74c:	0037079b          	addiw	a5,a4,3
   1b750:	40e6873b          	subw	a4,a3,a4
   1b754:	00f41433          	sll	s0,s0,a5
   1b758:	00ec5733          	srl	a4,s8,a4
   1b75c:	8c59                	or	s0,s0,a4
   1b75e:	00fc17b3          	sll	a5,s8,a5
   1b762:	7771                	lui	a4,0xffffc
   1b764:	0745                	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc6f9>
   1b766:	8f09                	sub	a4,a4,a0
   1b768:	bb79                	j	1b506 <__multf3+0x11a>
   1b76a:	8562                	mv	a0,s8
   1b76c:	6ff000ef          	jal	ra,1c66a <__clzdi2>
   1b770:	0405051b          	addiw	a0,a0,64
   1b774:	b7d1                	j	1b738 <__multf3+0x34c>
   1b776:	fc37071b          	addiw	a4,a4,-61
   1b77a:	00ec1433          	sll	s0,s8,a4
   1b77e:	4781                	li	a5,0
   1b780:	b7cd                	j	1b762 <__multf3+0x376>
   1b782:	008c66b3          	or	a3,s8,s0
   1b786:	ce91                	beqz	a3,1b7a2 <__multf3+0x3b6>
   1b788:	02f45693          	srli	a3,s0,0x2f
   1b78c:	8a85                	andi	a3,a3,1
   1b78e:	488d                	li	a7,3
   1b790:	d6069ce3          	bnez	a3,1b508 <__multf3+0x11c>
   1b794:	44c1                	li	s1,16
   1b796:	bb8d                	j	1b508 <__multf3+0x11c>
   1b798:	4401                	li	s0,0
   1b79a:	4781                	li	a5,0
   1b79c:	4701                	li	a4,0
   1b79e:	4885                	li	a7,1
   1b7a0:	b3a5                	j	1b508 <__multf3+0x11c>
   1b7a2:	4401                	li	s0,0
   1b7a4:	4781                	li	a5,0
   1b7a6:	4889                	li	a7,2
   1b7a8:	b385                	j	1b508 <__multf3+0x11c>
   1b7aa:	4585                	li	a1,1
   1b7ac:	00e59733          	sll	a4,a1,a4
   1b7b0:	53077513          	andi	a0,a4,1328
   1b7b4:	ed0d                	bnez	a0,1b7ee <__multf3+0x402>
   1b7b6:	24077313          	andi	t1,a4,576
   1b7ba:	22031c63          	bnez	t1,1b9f2 <__multf3+0x606>
   1b7be:	08877713          	andi	a4,a4,136
   1b7c2:	d60707e3          	beqz	a4,1b530 <__multf3+0x144>
   1b7c6:	8656                	mv	a2,s5
   1b7c8:	4709                	li	a4,2
   1b7ca:	22e88a63          	beq	a7,a4,1b9fe <__multf3+0x612>
   1b7ce:	470d                	li	a4,3
   1b7d0:	22e88c63          	beq	a7,a4,1ba08 <__multf3+0x61c>
   1b7d4:	4705                	li	a4,1
   1b7d6:	f0e893e3          	bne	a7,a4,1b6dc <__multf3+0x2f0>
   1b7da:	4581                	li	a1,0
   1b7dc:	4501                	li	a0,0
   1b7de:	a409                	j	1b9e0 <__multf3+0x5f4>
   1b7e0:	46bd                	li	a3,15
   1b7e2:	00d70a63          	beq	a4,a3,1b7f6 <__multf3+0x40a>
   1b7e6:	46ad                	li	a3,11
   1b7e8:	fcd70fe3          	beq	a4,a3,1b7c6 <__multf3+0x3da>
   1b7ec:	865a                	mv	a2,s6
   1b7ee:	844e                	mv	s0,s3
   1b7f0:	87d2                	mv	a5,s4
   1b7f2:	88e6                	mv	a7,s9
   1b7f4:	bfd1                	j	1b7c8 <__multf3+0x3dc>
   1b7f6:	4405                	li	s0,1
   1b7f8:	143e                	slli	s0,s0,0x2f
   1b7fa:	4781                	li	a5,0
   1b7fc:	4601                	li	a2,0
   1b7fe:	488d                	li	a7,3
   1b800:	b7f9                	j	1b7ce <__multf3+0x3e2>
   1b802:	8836                	mv	a6,a3
   1b804:	bde1                	j	1b6dc <__multf3+0x2f0>
   1b806:	e609                	bnez	a2,1b810 <__multf3+0x424>
   1b808:	00878693          	addi	a3,a5,8
   1b80c:	b711                	j	1b710 <__multf3+0x324>
   1b80e:	fe6d                	bnez	a2,1b808 <__multf3+0x41c>
   1b810:	03445693          	srli	a3,s0,0x34
   1b814:	8a85                	andi	a3,a3,1
   1b816:	c699                	beqz	a3,1b824 <__multf3+0x438>
   1b818:	577d                	li	a4,-1
   1b81a:	1752                	slli	a4,a4,0x34
   1b81c:	177d                	addi	a4,a4,-1
   1b81e:	8c79                	and	s0,s0,a4
   1b820:	6711                	lui	a4,0x4
   1b822:	9742                	add	a4,a4,a6
   1b824:	66a1                	lui	a3,0x8
   1b826:	ffe68593          	addi	a1,a3,-2 # 7ffe <exit-0x80ea>
   1b82a:	04e5c063          	blt	a1,a4,1b86a <__multf3+0x47e>
   1b82e:	838d                	srli	a5,a5,0x3
   1b830:	03d41513          	slli	a0,s0,0x3d
   1b834:	8d5d                	or	a0,a0,a5
   1b836:	00345593          	srli	a1,s0,0x3
   1b83a:	1746                	slli	a4,a4,0x31
   1b83c:	9345                	srli	a4,a4,0x31
   1b83e:	063e                	slli	a2,a2,0xf
   1b840:	05c2                	slli	a1,a1,0x10
   1b842:	8e59                	or	a2,a2,a4
   1b844:	1642                	slli	a2,a2,0x30
   1b846:	81c1                	srli	a1,a1,0x10
   1b848:	8dd1                	or	a1,a1,a2
   1b84a:	c099                	beqz	s1,1b850 <__multf3+0x464>
   1b84c:	0014a073          	csrs	fflags,s1
   1b850:	60e6                	ld	ra,88(sp)
   1b852:	6446                	ld	s0,80(sp)
   1b854:	64a6                	ld	s1,72(sp)
   1b856:	6906                	ld	s2,64(sp)
   1b858:	79e2                	ld	s3,56(sp)
   1b85a:	7a42                	ld	s4,48(sp)
   1b85c:	7aa2                	ld	s5,40(sp)
   1b85e:	7b02                	ld	s6,32(sp)
   1b860:	6be2                	ld	s7,24(sp)
   1b862:	6c42                	ld	s8,16(sp)
   1b864:	6ca2                	ld	s9,8(sp)
   1b866:	6125                	addi	sp,sp,96
   1b868:	8082                	ret
   1b86a:	4789                	li	a5,2
   1b86c:	02f90263          	beq	s2,a5,1b890 <__multf3+0x4a4>
   1b870:	478d                	li	a5,3
   1b872:	16fd                	addi	a3,a3,-1
   1b874:	00f90763          	beq	s2,a5,1b882 <__multf3+0x496>
   1b878:	00091663          	bnez	s2,1b884 <__multf3+0x498>
   1b87c:	4501                	li	a0,0
   1b87e:	8736                	mv	a4,a3
   1b880:	a021                	j	1b888 <__multf3+0x49c>
   1b882:	de6d                	beqz	a2,1b87c <__multf3+0x490>
   1b884:	557d                	li	a0,-1
   1b886:	872e                	mv	a4,a1
   1b888:	0054e493          	ori	s1,s1,5
   1b88c:	85aa                	mv	a1,a0
   1b88e:	b775                	j	1b83a <__multf3+0x44e>
   1b890:	da75                	beqz	a2,1b884 <__multf3+0x498>
   1b892:	4501                	li	a0,0
   1b894:	fff68713          	addi	a4,a3,-1
   1b898:	bfc5                	j	1b888 <__multf3+0x49c>
   1b89a:	4685                	li	a3,1
   1b89c:	e729                	bnez	a4,1b8e6 <__multf3+0x4fa>
   1b89e:	0077f593          	andi	a1,a5,7
   1b8a2:	86a2                	mv	a3,s0
   1b8a4:	cd8d                	beqz	a1,1b8de <__multf3+0x4f2>
   1b8a6:	4589                	li	a1,2
   1b8a8:	0014e493          	ori	s1,s1,1
   1b8ac:	02b90863          	beq	s2,a1,1b8dc <__multf3+0x4f0>
   1b8b0:	458d                	li	a1,3
   1b8b2:	02b90163          	beq	s2,a1,1b8d4 <__multf3+0x4e8>
   1b8b6:	02091463          	bnez	s2,1b8de <__multf3+0x4f2>
   1b8ba:	00f7f593          	andi	a1,a5,15
   1b8be:	4511                	li	a0,4
   1b8c0:	00a58f63          	beq	a1,a0,1b8de <__multf3+0x4f2>
   1b8c4:	ffc7b693          	sltiu	a3,a5,-4
   1b8c8:	0016c693          	xori	a3,a3,1
   1b8cc:	1682                	slli	a3,a3,0x20
   1b8ce:	9281                	srli	a3,a3,0x20
   1b8d0:	96a2                	add	a3,a3,s0
   1b8d2:	a031                	j	1b8de <__multf3+0x4f2>
   1b8d4:	e609                	bnez	a2,1b8de <__multf3+0x4f2>
   1b8d6:	ff87b693          	sltiu	a3,a5,-8
   1b8da:	b7fd                	j	1b8c8 <__multf3+0x4dc>
   1b8dc:	fe6d                	bnez	a2,1b8d6 <__multf3+0x4ea>
   1b8de:	92d1                	srli	a3,a3,0x34
   1b8e0:	0016c693          	xori	a3,a3,1
   1b8e4:	8a85                	andi	a3,a3,1
   1b8e6:	4805                	li	a6,1
   1b8e8:	40e80833          	sub	a6,a6,a4
   1b8ec:	07400713          	li	a4,116
   1b8f0:	0d074563          	blt	a4,a6,1b9ba <__multf3+0x5ce>
   1b8f4:	03f00713          	li	a4,63
   1b8f8:	0008059b          	sext.w	a1,a6
   1b8fc:	05074b63          	blt	a4,a6,1b952 <__multf3+0x566>
   1b900:	04000713          	li	a4,64
   1b904:	9f0d                	subw	a4,a4,a1
   1b906:	00e41533          	sll	a0,s0,a4
   1b90a:	00b7d833          	srl	a6,a5,a1
   1b90e:	00e79733          	sll	a4,a5,a4
   1b912:	01056533          	or	a0,a0,a6
   1b916:	00e03733          	snez	a4,a4
   1b91a:	8d59                	or	a0,a0,a4
   1b91c:	00b455b3          	srl	a1,s0,a1
   1b920:	00757793          	andi	a5,a0,7
   1b924:	c3a5                	beqz	a5,1b984 <__multf3+0x598>
   1b926:	4789                	li	a5,2
   1b928:	0014e493          	ori	s1,s1,1
   1b92c:	04f90b63          	beq	s2,a5,1b982 <__multf3+0x596>
   1b930:	478d                	li	a5,3
   1b932:	04f90463          	beq	s2,a5,1b97a <__multf3+0x58e>
   1b936:	04091763          	bnez	s2,1b984 <__multf3+0x598>
   1b93a:	00f57793          	andi	a5,a0,15
   1b93e:	4711                	li	a4,4
   1b940:	04e78263          	beq	a5,a4,1b984 <__multf3+0x598>
   1b944:	00450793          	addi	a5,a0,4
   1b948:	00a7b533          	sltu	a0,a5,a0
   1b94c:	95aa                	add	a1,a1,a0
   1b94e:	853e                	mv	a0,a5
   1b950:	a815                	j	1b984 <__multf3+0x598>
   1b952:	fc05851b          	addiw	a0,a1,-64
   1b956:	04000893          	li	a7,64
   1b95a:	00a45533          	srl	a0,s0,a0
   1b95e:	4701                	li	a4,0
   1b960:	01180763          	beq	a6,a7,1b96e <__multf3+0x582>
   1b964:	08000713          	li	a4,128
   1b968:	9f0d                	subw	a4,a4,a1
   1b96a:	00e41733          	sll	a4,s0,a4
   1b96e:	8f5d                	or	a4,a4,a5
   1b970:	00e03733          	snez	a4,a4
   1b974:	8d59                	or	a0,a0,a4
   1b976:	4581                	li	a1,0
   1b978:	b765                	j	1b920 <__multf3+0x534>
   1b97a:	e609                	bnez	a2,1b984 <__multf3+0x598>
   1b97c:	00850793          	addi	a5,a0,8
   1b980:	b7e1                	j	1b948 <__multf3+0x55c>
   1b982:	fe6d                	bnez	a2,1b97c <__multf3+0x590>
   1b984:	0335d793          	srli	a5,a1,0x33
   1b988:	8b85                	andi	a5,a5,1
   1b98a:	cb99                	beqz	a5,1b9a0 <__multf3+0x5b4>
   1b98c:	0014e493          	ori	s1,s1,1
   1b990:	4581                	li	a1,0
   1b992:	4501                	li	a0,0
   1b994:	4705                	li	a4,1
   1b996:	ea0682e3          	beqz	a3,1b83a <__multf3+0x44e>
   1b99a:	0024e493          	ori	s1,s1,2
   1b99e:	bd71                	j	1b83a <__multf3+0x44e>
   1b9a0:	03d59793          	slli	a5,a1,0x3d
   1b9a4:	810d                	srli	a0,a0,0x3
   1b9a6:	8d5d                	or	a0,a0,a5
   1b9a8:	818d                	srli	a1,a1,0x3
   1b9aa:	4701                	li	a4,0
   1b9ac:	e80687e3          	beqz	a3,1b83a <__multf3+0x44e>
   1b9b0:	0014f793          	andi	a5,s1,1
   1b9b4:	e80783e3          	beqz	a5,1b83a <__multf3+0x44e>
   1b9b8:	b7cd                	j	1b99a <__multf3+0x5ae>
   1b9ba:	0087e533          	or	a0,a5,s0
   1b9be:	cd11                	beqz	a0,1b9da <__multf3+0x5ee>
   1b9c0:	4789                	li	a5,2
   1b9c2:	0014e493          	ori	s1,s1,1
   1b9c6:	02f90363          	beq	s2,a5,1b9ec <__multf3+0x600>
   1b9ca:	478d                	li	a5,3
   1b9cc:	00f90c63          	beq	s2,a5,1b9e4 <__multf3+0x5f8>
   1b9d0:	4505                	li	a0,1
   1b9d2:	00091363          	bnez	s2,1b9d8 <__multf3+0x5ec>
   1b9d6:	4515                	li	a0,5
   1b9d8:	810d                	srli	a0,a0,0x3
   1b9da:	0024e493          	ori	s1,s1,2
   1b9de:	4581                	li	a1,0
   1b9e0:	4701                	li	a4,0
   1b9e2:	bda1                	j	1b83a <__multf3+0x44e>
   1b9e4:	4525                	li	a0,9
   1b9e6:	da6d                	beqz	a2,1b9d8 <__multf3+0x5ec>
   1b9e8:	4505                	li	a0,1
   1b9ea:	b7fd                	j	1b9d8 <__multf3+0x5ec>
   1b9ec:	4525                	li	a0,9
   1b9ee:	f66d                	bnez	a2,1b9d8 <__multf3+0x5ec>
   1b9f0:	bfe5                	j	1b9e8 <__multf3+0x5fc>
   1b9f2:	6721                	lui	a4,0x8
   1b9f4:	15be                	slli	a1,a1,0x2f
   1b9f6:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b9f8:	4601                	li	a2,0
   1b9fa:	44c1                	li	s1,16
   1b9fc:	bd3d                	j	1b83a <__multf3+0x44e>
   1b9fe:	6721                	lui	a4,0x8
   1ba00:	4581                	li	a1,0
   1ba02:	4501                	li	a0,0
   1ba04:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1ba06:	bd15                	j	1b83a <__multf3+0x44e>
   1ba08:	4585                	li	a1,1
   1ba0a:	6721                	lui	a4,0x8
   1ba0c:	15be                	slli	a1,a1,0x2f
   1ba0e:	4501                	li	a0,0
   1ba10:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1ba12:	4601                	li	a2,0
   1ba14:	b51d                	j	1b83a <__multf3+0x44e>

000000000001ba16 <__subtf3>:
   1ba16:	7179                	addi	sp,sp,-48
   1ba18:	f406                	sd	ra,40(sp)
   1ba1a:	f022                	sd	s0,32(sp)
   1ba1c:	ec26                	sd	s1,24(sp)
   1ba1e:	e84a                	sd	s2,16(sp)
   1ba20:	e44e                	sd	s3,8(sp)
   1ba22:	e052                	sd	s4,0(sp)
   1ba24:	002024f3          	frrm	s1
   1ba28:	577d                	li	a4,-1
   1ba2a:	8341                	srli	a4,a4,0x10
   1ba2c:	6e21                	lui	t3,0x8
   1ba2e:	0305d813          	srli	a6,a1,0x30
   1ba32:	1e7d                	addi	t3,t3,-1 # 7fff <exit-0x80e9>
   1ba34:	0306d893          	srli	a7,a3,0x30
   1ba38:	03f5d913          	srli	s2,a1,0x3f
   1ba3c:	03f6d313          	srli	t1,a3,0x3f
   1ba40:	8df9                	and	a1,a1,a4
   1ba42:	8ef9                	and	a3,a3,a4
   1ba44:	03d55793          	srli	a5,a0,0x3d
   1ba48:	00369713          	slli	a4,a3,0x3
   1ba4c:	01c87833          	and	a6,a6,t3
   1ba50:	03d65693          	srli	a3,a2,0x3d
   1ba54:	058e                	slli	a1,a1,0x3
   1ba56:	01c8f8b3          	and	a7,a7,t3
   1ba5a:	2481                	sext.w	s1,s1
   1ba5c:	8442                	mv	s0,a6
   1ba5e:	8fcd                	or	a5,a5,a1
   1ba60:	050e                	slli	a0,a0,0x3
   1ba62:	8ed9                	or	a3,a3,a4
   1ba64:	060e                	slli	a2,a2,0x3
   1ba66:	01c89563          	bne	a7,t3,1ba70 <__subtf3+0x5a>
   1ba6a:	00c6e733          	or	a4,a3,a2
   1ba6e:	e319                	bnez	a4,1ba74 <__subtf3+0x5e>
   1ba70:	00134313          	xori	t1,t1,1
   1ba74:	4118073b          	subw	a4,a6,a7
   1ba78:	6e21                	lui	t3,0x8
   1ba7a:	0007059b          	sext.w	a1,a4
   1ba7e:	fffe0e93          	addi	t4,t3,-1 # 7fff <exit-0x80e9>
   1ba82:	3b231a63          	bne	t1,s2,1be36 <__subtf3+0x420>
   1ba86:	10b05563          	blez	a1,1bb90 <__subtf3+0x17a>
   1ba8a:	08089163          	bnez	a7,1bb0c <__subtf3+0xf6>
   1ba8e:	00c6e5b3          	or	a1,a3,a2
   1ba92:	ed91                	bnez	a1,1baae <__subtf3+0x98>
   1ba94:	75d81663          	bne	a6,t4,1c1e0 <__subtf3+0x7ca>
   1ba98:	00a7e733          	or	a4,a5,a0
   1ba9c:	78070a63          	beqz	a4,1c230 <__subtf3+0x81a>
   1baa0:	0327d713          	srli	a4,a5,0x32
   1baa4:	00174713          	xori	a4,a4,1
   1baa8:	8b05                	andi	a4,a4,1
   1baaa:	0712                	slli	a4,a4,0x4
   1baac:	aa01                	j	1bbbc <__subtf3+0x1a6>
   1baae:	fff7059b          	addiw	a1,a4,-1
   1bab2:	e1a1                	bnez	a1,1baf2 <__subtf3+0xdc>
   1bab4:	962a                	add	a2,a2,a0
   1bab6:	96be                	add	a3,a3,a5
   1bab8:	00a637b3          	sltu	a5,a2,a0
   1babc:	97b6                	add	a5,a5,a3
   1babe:	8532                	mv	a0,a2
   1bac0:	0337d713          	srli	a4,a5,0x33
   1bac4:	8b05                	andi	a4,a4,1
   1bac6:	70070d63          	beqz	a4,1c1e0 <__subtf3+0x7ca>
   1baca:	6721                	lui	a4,0x8
   1bacc:	0405                	addi	s0,s0,1
   1bace:	fff70693          	addi	a3,a4,-1 # 7fff <exit-0x80e9>
   1bad2:	34d40063          	beq	s0,a3,1be12 <__subtf3+0x3fc>
   1bad6:	577d                	li	a4,-1
   1bad8:	174e                	slli	a4,a4,0x33
   1bada:	177d                	addi	a4,a4,-1
   1badc:	8ff9                	and	a5,a5,a4
   1bade:	00155713          	srli	a4,a0,0x1
   1bae2:	8905                	andi	a0,a0,1
   1bae4:	8f49                	or	a4,a4,a0
   1bae6:	03f79513          	slli	a0,a5,0x3f
   1baea:	8d59                	or	a0,a0,a4
   1baec:	8385                	srli	a5,a5,0x1
   1baee:	4581                	li	a1,0
   1baf0:	a4e9                	j	1bdba <__subtf3+0x3a4>
   1baf2:	03d81263          	bne	a6,t4,1bb16 <__subtf3+0x100>
   1baf6:	00a7e733          	or	a4,a5,a0
   1bafa:	72070b63          	beqz	a4,1c230 <__subtf3+0x81a>
   1bafe:	0327d713          	srli	a4,a5,0x32
   1bb02:	00174713          	xori	a4,a4,1
   1bb06:	8b05                	andi	a4,a4,1
   1bb08:	0712                	slli	a4,a4,0x4
   1bb0a:	a209                	j	1bc0c <__subtf3+0x1f6>
   1bb0c:	ffd805e3          	beq	a6,t4,1baf6 <__subtf3+0xe0>
   1bb10:	4705                	li	a4,1
   1bb12:	174e                	slli	a4,a4,0x33
   1bb14:	8ed9                	or	a3,a3,a4
   1bb16:	07400713          	li	a4,116
   1bb1a:	06b74663          	blt	a4,a1,1bb86 <__subtf3+0x170>
   1bb1e:	03f00713          	li	a4,63
   1bb22:	02b74b63          	blt	a4,a1,1bb58 <__subtf3+0x142>
   1bb26:	04000813          	li	a6,64
   1bb2a:	40b8083b          	subw	a6,a6,a1
   1bb2e:	01069733          	sll	a4,a3,a6
   1bb32:	00b658b3          	srl	a7,a2,a1
   1bb36:	01061833          	sll	a6,a2,a6
   1bb3a:	01176733          	or	a4,a4,a7
   1bb3e:	01003833          	snez	a6,a6
   1bb42:	01076733          	or	a4,a4,a6
   1bb46:	00b6d5b3          	srl	a1,a3,a1
   1bb4a:	972a                	add	a4,a4,a0
   1bb4c:	95be                	add	a1,a1,a5
   1bb4e:	00a737b3          	sltu	a5,a4,a0
   1bb52:	97ae                	add	a5,a5,a1
   1bb54:	853a                	mv	a0,a4
   1bb56:	b7ad                	j	1bac0 <__subtf3+0xaa>
   1bb58:	fc05871b          	addiw	a4,a1,-64
   1bb5c:	04000893          	li	a7,64
   1bb60:	00e6d733          	srl	a4,a3,a4
   1bb64:	4801                	li	a6,0
   1bb66:	01158863          	beq	a1,a7,1bb76 <__subtf3+0x160>
   1bb6a:	08000813          	li	a6,128
   1bb6e:	40b8083b          	subw	a6,a6,a1
   1bb72:	01069833          	sll	a6,a3,a6
   1bb76:	00c86833          	or	a6,a6,a2
   1bb7a:	01003833          	snez	a6,a6
   1bb7e:	01076733          	or	a4,a4,a6
   1bb82:	4581                	li	a1,0
   1bb84:	b7d9                	j	1bb4a <__subtf3+0x134>
   1bb86:	00c6e733          	or	a4,a3,a2
   1bb8a:	00e03733          	snez	a4,a4
   1bb8e:	bfd5                	j	1bb82 <__subtf3+0x16c>
   1bb90:	10058563          	beqz	a1,1bc9a <__subtf3+0x284>
   1bb94:	06081e63          	bnez	a6,1bc10 <__subtf3+0x1fa>
   1bb98:	00a7e5b3          	or	a1,a5,a0
   1bb9c:	ed8d                	bnez	a1,1bbd6 <__subtf3+0x1c0>
   1bb9e:	65d89463          	bne	a7,t4,1c1e6 <__subtf3+0x7d0>
   1bba2:	00c6e533          	or	a0,a3,a2
   1bba6:	68050163          	beqz	a0,1c228 <__subtf3+0x812>
   1bbaa:	0326d713          	srli	a4,a3,0x32
   1bbae:	00174713          	xori	a4,a4,1
   1bbb2:	8b05                	andi	a4,a4,1
   1bbb4:	0712                	slli	a4,a4,0x4
   1bbb6:	87b6                	mv	a5,a3
   1bbb8:	8532                	mv	a0,a2
   1bbba:	8446                	mv	s0,a7
   1bbbc:	00757693          	andi	a3,a0,7
   1bbc0:	22069263          	bnez	a3,1bde4 <__subtf3+0x3ce>
   1bbc4:	16058963          	beqz	a1,1bd36 <__subtf3+0x320>
   1bbc8:	00177693          	andi	a3,a4,1
   1bbcc:	16068563          	beqz	a3,1bd36 <__subtf3+0x320>
   1bbd0:	00276713          	ori	a4,a4,2
   1bbd4:	a28d                	j	1bd36 <__subtf3+0x320>
   1bbd6:	fff74713          	not	a4,a4
   1bbda:	2701                	sext.w	a4,a4
   1bbdc:	eb09                	bnez	a4,1bbee <__subtf3+0x1d8>
   1bbde:	9532                	add	a0,a0,a2
   1bbe0:	96be                	add	a3,a3,a5
   1bbe2:	00c53633          	sltu	a2,a0,a2
   1bbe6:	00c687b3          	add	a5,a3,a2
   1bbea:	8446                	mv	s0,a7
   1bbec:	bdd1                	j	1bac0 <__subtf3+0xaa>
   1bbee:	03d89863          	bne	a7,t4,1bc1e <__subtf3+0x208>
   1bbf2:	00c6e533          	or	a0,a3,a2
   1bbf6:	62050963          	beqz	a0,1c228 <__subtf3+0x812>
   1bbfa:	0326d713          	srli	a4,a3,0x32
   1bbfe:	00174713          	xori	a4,a4,1
   1bc02:	8b05                	andi	a4,a4,1
   1bc04:	0712                	slli	a4,a4,0x4
   1bc06:	87b6                	mv	a5,a3
   1bc08:	8532                	mv	a0,a2
   1bc0a:	8446                	mv	s0,a7
   1bc0c:	4581                	li	a1,0
   1bc0e:	b77d                	j	1bbbc <__subtf3+0x1a6>
   1bc10:	ffd881e3          	beq	a7,t4,1bbf2 <__subtf3+0x1dc>
   1bc14:	4585                	li	a1,1
   1bc16:	15ce                	slli	a1,a1,0x33
   1bc18:	40e0073b          	negw	a4,a4
   1bc1c:	8fcd                	or	a5,a5,a1
   1bc1e:	07400593          	li	a1,116
   1bc22:	06e5c763          	blt	a1,a4,1bc90 <__subtf3+0x27a>
   1bc26:	03f00593          	li	a1,63
   1bc2a:	02e5cc63          	blt	a1,a4,1bc62 <__subtf3+0x24c>
   1bc2e:	04000813          	li	a6,64
   1bc32:	40e8083b          	subw	a6,a6,a4
   1bc36:	010795b3          	sll	a1,a5,a6
   1bc3a:	00e55333          	srl	t1,a0,a4
   1bc3e:	01051833          	sll	a6,a0,a6
   1bc42:	0065e5b3          	or	a1,a1,t1
   1bc46:	01003833          	snez	a6,a6
   1bc4a:	0105e5b3          	or	a1,a1,a6
   1bc4e:	00e7d733          	srl	a4,a5,a4
   1bc52:	00c58533          	add	a0,a1,a2
   1bc56:	9736                	add	a4,a4,a3
   1bc58:	00c53633          	sltu	a2,a0,a2
   1bc5c:	00c707b3          	add	a5,a4,a2
   1bc60:	b769                	j	1bbea <__subtf3+0x1d4>
   1bc62:	fc07059b          	addiw	a1,a4,-64
   1bc66:	04000313          	li	t1,64
   1bc6a:	00b7d5b3          	srl	a1,a5,a1
   1bc6e:	4801                	li	a6,0
   1bc70:	00670863          	beq	a4,t1,1bc80 <__subtf3+0x26a>
   1bc74:	08000813          	li	a6,128
   1bc78:	40e8083b          	subw	a6,a6,a4
   1bc7c:	01079833          	sll	a6,a5,a6
   1bc80:	00a86833          	or	a6,a6,a0
   1bc84:	01003833          	snez	a6,a6
   1bc88:	0105e5b3          	or	a1,a1,a6
   1bc8c:	4701                	li	a4,0
   1bc8e:	b7d1                	j	1bc52 <__subtf3+0x23c>
   1bc90:	00a7e5b3          	or	a1,a5,a0
   1bc94:	00b035b3          	snez	a1,a1
   1bc98:	bfd5                	j	1bc8c <__subtf3+0x276>
   1bc9a:	00180413          	addi	s0,a6,1
   1bc9e:	ffee0713          	addi	a4,t3,-2
   1bca2:	00e47333          	and	t1,s0,a4
   1bca6:	0e031d63          	bnez	t1,1bda0 <__subtf3+0x38a>
   1bcaa:	00a7e333          	or	t1,a5,a0
   1bcae:	02081a63          	bnez	a6,1bce2 <__subtf3+0x2cc>
   1bcb2:	54030363          	beqz	t1,1c1f8 <__subtf3+0x7e2>
   1bcb6:	00c6e733          	or	a4,a3,a2
   1bcba:	36070863          	beqz	a4,1c02a <__subtf3+0x614>
   1bcbe:	962a                	add	a2,a2,a0
   1bcc0:	96be                	add	a3,a3,a5
   1bcc2:	00a637b3          	sltu	a5,a2,a0
   1bcc6:	97b6                	add	a5,a5,a3
   1bcc8:	0337d713          	srli	a4,a5,0x33
   1bccc:	8b05                	andi	a4,a4,1
   1bcce:	52070663          	beqz	a4,1c1fa <__subtf3+0x7e4>
   1bcd2:	577d                	li	a4,-1
   1bcd4:	174e                	slli	a4,a4,0x33
   1bcd6:	177d                	addi	a4,a4,-1
   1bcd8:	8ff9                	and	a5,a5,a4
   1bcda:	8532                	mv	a0,a2
   1bcdc:	4701                	li	a4,0
   1bcde:	4405                	li	s0,1
   1bce0:	bdf1                	j	1bbbc <__subtf3+0x1a6>
   1bce2:	03d81863          	bne	a6,t4,1bd12 <__subtf3+0x2fc>
   1bce6:	5a030863          	beqz	t1,1c296 <__subtf3+0x880>
   1bcea:	0327d713          	srli	a4,a5,0x32
   1bcee:	00174713          	xori	a4,a4,1
   1bcf2:	8b05                	andi	a4,a4,1
   1bcf4:	0712                	slli	a4,a4,0x4
   1bcf6:	03089863          	bne	a7,a6,1bd26 <__subtf3+0x310>
   1bcfa:	00c6e833          	or	a6,a3,a2
   1bcfe:	00080d63          	beqz	a6,1bd18 <__subtf3+0x302>
   1bd02:	0326d813          	srli	a6,a3,0x32
   1bd06:	00187813          	andi	a6,a6,1
   1bd0a:	00081763          	bnez	a6,1bd18 <__subtf3+0x302>
   1bd0e:	4741                	li	a4,16
   1bd10:	a021                	j	1bd18 <__subtf3+0x302>
   1bd12:	4701                	li	a4,0
   1bd14:	ffd883e3          	beq	a7,t4,1bcfa <__subtf3+0x2e4>
   1bd18:	00031763          	bnez	t1,1bd26 <__subtf3+0x310>
   1bd1c:	87b6                	mv	a5,a3
   1bd1e:	8532                	mv	a0,a2
   1bd20:	6421                	lui	s0,0x8
   1bd22:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1bd24:	bd61                	j	1bbbc <__subtf3+0x1a6>
   1bd26:	8ed1                	or	a3,a3,a2
   1bd28:	dee5                	beqz	a3,1bd20 <__subtf3+0x30a>
   1bd2a:	4785                	li	a5,1
   1bd2c:	6421                	lui	s0,0x8
   1bd2e:	4901                	li	s2,0
   1bd30:	17ca                	slli	a5,a5,0x32
   1bd32:	4501                	li	a0,0
   1bd34:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1bd36:	0337d693          	srli	a3,a5,0x33
   1bd3a:	8a85                	andi	a3,a3,1
   1bd3c:	ca99                	beqz	a3,1bd52 <__subtf3+0x33c>
   1bd3e:	66a1                	lui	a3,0x8
   1bd40:	0405                	addi	s0,s0,1
   1bd42:	fff68613          	addi	a2,a3,-1 # 7fff <exit-0x80e9>
   1bd46:	52c40063          	beq	s0,a2,1c266 <__subtf3+0x850>
   1bd4a:	56fd                	li	a3,-1
   1bd4c:	16ce                	slli	a3,a3,0x33
   1bd4e:	16fd                	addi	a3,a3,-1
   1bd50:	8ff5                	and	a5,a5,a3
   1bd52:	00355693          	srli	a3,a0,0x3
   1bd56:	03d79513          	slli	a0,a5,0x3d
   1bd5a:	8d55                	or	a0,a0,a3
   1bd5c:	66a1                	lui	a3,0x8
   1bd5e:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1bd60:	838d                	srli	a5,a5,0x3
   1bd62:	00d41963          	bne	s0,a3,1bd74 <__subtf3+0x35e>
   1bd66:	8d5d                	or	a0,a0,a5
   1bd68:	4781                	li	a5,0
   1bd6a:	c509                	beqz	a0,1bd74 <__subtf3+0x35e>
   1bd6c:	4785                	li	a5,1
   1bd6e:	17be                	slli	a5,a5,0x2f
   1bd70:	4501                	li	a0,0
   1bd72:	4901                	li	s2,0
   1bd74:	1446                	slli	s0,s0,0x31
   1bd76:	00f9191b          	slliw	s2,s2,0xf
   1bd7a:	9045                	srli	s0,s0,0x31
   1bd7c:	07c2                	slli	a5,a5,0x10
   1bd7e:	01246433          	or	s0,s0,s2
   1bd82:	1442                	slli	s0,s0,0x30
   1bd84:	0107d593          	srli	a1,a5,0x10
   1bd88:	8dc1                	or	a1,a1,s0
   1bd8a:	c319                	beqz	a4,1bd90 <__subtf3+0x37a>
   1bd8c:	00172073          	csrs	fflags,a4
   1bd90:	70a2                	ld	ra,40(sp)
   1bd92:	7402                	ld	s0,32(sp)
   1bd94:	64e2                	ld	s1,24(sp)
   1bd96:	6942                	ld	s2,16(sp)
   1bd98:	69a2                	ld	s3,8(sp)
   1bd9a:	6a02                	ld	s4,0(sp)
   1bd9c:	6145                	addi	sp,sp,48
   1bd9e:	8082                	ret
   1bda0:	01d40f63          	beq	s0,t4,1bdbe <__subtf3+0x3a8>
   1bda4:	962a                	add	a2,a2,a0
   1bda6:	00a63533          	sltu	a0,a2,a0
   1bdaa:	96be                	add	a3,a3,a5
   1bdac:	96aa                	add	a3,a3,a0
   1bdae:	03f69513          	slli	a0,a3,0x3f
   1bdb2:	8205                	srli	a2,a2,0x1
   1bdb4:	8d51                	or	a0,a0,a2
   1bdb6:	0016d793          	srli	a5,a3,0x1
   1bdba:	4701                	li	a4,0
   1bdbc:	b501                	j	1bbbc <__subtf3+0x1a6>
   1bdbe:	c491                	beqz	s1,1bdca <__subtf3+0x3b4>
   1bdc0:	478d                	li	a5,3
   1bdc2:	00f49863          	bne	s1,a5,1bdd2 <__subtf3+0x3bc>
   1bdc6:	00091b63          	bnez	s2,1bddc <__subtf3+0x3c6>
   1bdca:	4781                	li	a5,0
   1bdcc:	4501                	li	a0,0
   1bdce:	4715                	li	a4,5
   1bdd0:	b79d                	j	1bd36 <__subtf3+0x320>
   1bdd2:	4789                	li	a5,2
   1bdd4:	00f49463          	bne	s1,a5,1bddc <__subtf3+0x3c6>
   1bdd8:	fe0919e3          	bnez	s2,1bdca <__subtf3+0x3b4>
   1bddc:	57fd                	li	a5,-1
   1bdde:	557d                	li	a0,-1
   1bde0:	843a                	mv	s0,a4
   1bde2:	4715                	li	a4,5
   1bde4:	4689                	li	a3,2
   1bde6:	00176713          	ori	a4,a4,1
   1bdea:	46d48b63          	beq	s1,a3,1c260 <__subtf3+0x84a>
   1bdee:	468d                	li	a3,3
   1bdf0:	46d48363          	beq	s1,a3,1c256 <__subtf3+0x840>
   1bdf4:	ec81                	bnez	s1,1be0c <__subtf3+0x3f6>
   1bdf6:	00f57693          	andi	a3,a0,15
   1bdfa:	4611                	li	a2,4
   1bdfc:	00c68863          	beq	a3,a2,1be0c <__subtf3+0x3f6>
   1be00:	00450693          	addi	a3,a0,4
   1be04:	00a6b533          	sltu	a0,a3,a0
   1be08:	97aa                	add	a5,a5,a0
   1be0a:	8536                	mv	a0,a3
   1be0c:	dc0592e3          	bnez	a1,1bbd0 <__subtf3+0x1ba>
   1be10:	b71d                	j	1bd36 <__subtf3+0x320>
   1be12:	dcc5                	beqz	s1,1bdca <__subtf3+0x3b4>
   1be14:	478d                	li	a5,3
   1be16:	00f49a63          	bne	s1,a5,1be2a <__subtf3+0x414>
   1be1a:	fa0908e3          	beqz	s2,1bdca <__subtf3+0x3b4>
   1be1e:	57fd                	li	a5,-1
   1be20:	557d                	li	a0,-1
   1be22:	ffe70413          	addi	s0,a4,-2
   1be26:	4581                	li	a1,0
   1be28:	bf6d                	j	1bde2 <__subtf3+0x3cc>
   1be2a:	4789                	li	a5,2
   1be2c:	fef499e3          	bne	s1,a5,1be1e <__subtf3+0x408>
   1be30:	f8091de3          	bnez	s2,1bdca <__subtf3+0x3b4>
   1be34:	b7ed                	j	1be1e <__subtf3+0x408>
   1be36:	0cb05763          	blez	a1,1bf04 <__subtf3+0x4ee>
   1be3a:	08089363          	bnez	a7,1bec0 <__subtf3+0x4aa>
   1be3e:	00c6e5b3          	or	a1,a3,a2
   1be42:	c40589e3          	beqz	a1,1ba94 <__subtf3+0x7e>
   1be46:	fff7059b          	addiw	a1,a4,-1
   1be4a:	e58d                	bnez	a1,1be74 <__subtf3+0x45e>
   1be4c:	40c50633          	sub	a2,a0,a2
   1be50:	40d786b3          	sub	a3,a5,a3
   1be54:	00c537b3          	sltu	a5,a0,a2
   1be58:	40f687b3          	sub	a5,a3,a5
   1be5c:	8532                	mv	a0,a2
   1be5e:	0337d713          	srli	a4,a5,0x33
   1be62:	8b05                	andi	a4,a4,1
   1be64:	36070e63          	beqz	a4,1c1e0 <__subtf3+0x7ca>
   1be68:	00d79993          	slli	s3,a5,0xd
   1be6c:	00d9d993          	srli	s3,s3,0xd
   1be70:	8a2a                	mv	s4,a0
   1be72:	ac65                	j	1c12a <__subtf3+0x714>
   1be74:	c9d801e3          	beq	a6,t4,1baf6 <__subtf3+0xe0>
   1be78:	07400713          	li	a4,116
   1be7c:	06b74f63          	blt	a4,a1,1befa <__subtf3+0x4e4>
   1be80:	03f00713          	li	a4,63
   1be84:	04b74463          	blt	a4,a1,1becc <__subtf3+0x4b6>
   1be88:	04000813          	li	a6,64
   1be8c:	40b8083b          	subw	a6,a6,a1
   1be90:	01069733          	sll	a4,a3,a6
   1be94:	00b658b3          	srl	a7,a2,a1
   1be98:	01061833          	sll	a6,a2,a6
   1be9c:	01176733          	or	a4,a4,a7
   1bea0:	01003833          	snez	a6,a6
   1bea4:	01076733          	or	a4,a4,a6
   1bea8:	00b6d5b3          	srl	a1,a3,a1
   1beac:	40e50733          	sub	a4,a0,a4
   1beb0:	40b785b3          	sub	a1,a5,a1
   1beb4:	00e537b3          	sltu	a5,a0,a4
   1beb8:	40f587b3          	sub	a5,a1,a5
   1bebc:	853a                	mv	a0,a4
   1bebe:	b745                	j	1be5e <__subtf3+0x448>
   1bec0:	c3d80be3          	beq	a6,t4,1baf6 <__subtf3+0xe0>
   1bec4:	4705                	li	a4,1
   1bec6:	174e                	slli	a4,a4,0x33
   1bec8:	8ed9                	or	a3,a3,a4
   1beca:	b77d                	j	1be78 <__subtf3+0x462>
   1becc:	fc05871b          	addiw	a4,a1,-64
   1bed0:	04000893          	li	a7,64
   1bed4:	00e6d733          	srl	a4,a3,a4
   1bed8:	4801                	li	a6,0
   1beda:	01158863          	beq	a1,a7,1beea <__subtf3+0x4d4>
   1bede:	08000813          	li	a6,128
   1bee2:	40b8083b          	subw	a6,a6,a1
   1bee6:	01069833          	sll	a6,a3,a6
   1beea:	00c86833          	or	a6,a6,a2
   1beee:	01003833          	snez	a6,a6
   1bef2:	01076733          	or	a4,a4,a6
   1bef6:	4581                	li	a1,0
   1bef8:	bf55                	j	1beac <__subtf3+0x496>
   1befa:	00c6e733          	or	a4,a3,a2
   1befe:	00e03733          	snez	a4,a4
   1bf02:	bfd5                	j	1bef6 <__subtf3+0x4e0>
   1bf04:	cde5                	beqz	a1,1bffc <__subtf3+0x5e6>
   1bf06:	06081563          	bnez	a6,1bf70 <__subtf3+0x55a>
   1bf0a:	00a7e5b3          	or	a1,a5,a0
   1bf0e:	e195                	bnez	a1,1bf32 <__subtf3+0x51c>
   1bf10:	2dd89f63          	bne	a7,t4,1c1ee <__subtf3+0x7d8>
   1bf14:	00c6e533          	or	a0,a3,a2
   1bf18:	30050f63          	beqz	a0,1c236 <__subtf3+0x820>
   1bf1c:	0326d713          	srli	a4,a3,0x32
   1bf20:	00174713          	xori	a4,a4,1
   1bf24:	8b05                	andi	a4,a4,1
   1bf26:	0712                	slli	a4,a4,0x4
   1bf28:	87b6                	mv	a5,a3
   1bf2a:	8532                	mv	a0,a2
   1bf2c:	8446                	mv	s0,a7
   1bf2e:	891a                	mv	s2,t1
   1bf30:	b171                	j	1bbbc <__subtf3+0x1a6>
   1bf32:	fff74713          	not	a4,a4
   1bf36:	2701                	sext.w	a4,a4
   1bf38:	eb19                	bnez	a4,1bf4e <__subtf3+0x538>
   1bf3a:	40a60533          	sub	a0,a2,a0
   1bf3e:	8e9d                	sub	a3,a3,a5
   1bf40:	00a63633          	sltu	a2,a2,a0
   1bf44:	40c687b3          	sub	a5,a3,a2
   1bf48:	8446                	mv	s0,a7
   1bf4a:	891a                	mv	s2,t1
   1bf4c:	bf09                	j	1be5e <__subtf3+0x448>
   1bf4e:	03d89863          	bne	a7,t4,1bf7e <__subtf3+0x568>
   1bf52:	00c6e533          	or	a0,a3,a2
   1bf56:	2e050063          	beqz	a0,1c236 <__subtf3+0x820>
   1bf5a:	0326d713          	srli	a4,a3,0x32
   1bf5e:	00174713          	xori	a4,a4,1
   1bf62:	8b05                	andi	a4,a4,1
   1bf64:	0712                	slli	a4,a4,0x4
   1bf66:	87b6                	mv	a5,a3
   1bf68:	8532                	mv	a0,a2
   1bf6a:	8446                	mv	s0,a7
   1bf6c:	891a                	mv	s2,t1
   1bf6e:	b979                	j	1bc0c <__subtf3+0x1f6>
   1bf70:	ffd881e3          	beq	a7,t4,1bf52 <__subtf3+0x53c>
   1bf74:	4585                	li	a1,1
   1bf76:	15ce                	slli	a1,a1,0x33
   1bf78:	40e0073b          	negw	a4,a4
   1bf7c:	8fcd                	or	a5,a5,a1
   1bf7e:	07400593          	li	a1,116
   1bf82:	06e5c863          	blt	a1,a4,1bff2 <__subtf3+0x5dc>
   1bf86:	03f00593          	li	a1,63
   1bf8a:	02e5cd63          	blt	a1,a4,1bfc4 <__subtf3+0x5ae>
   1bf8e:	04000813          	li	a6,64
   1bf92:	40e8083b          	subw	a6,a6,a4
   1bf96:	010795b3          	sll	a1,a5,a6
   1bf9a:	00e55e33          	srl	t3,a0,a4
   1bf9e:	01051833          	sll	a6,a0,a6
   1bfa2:	01c5e5b3          	or	a1,a1,t3
   1bfa6:	01003833          	snez	a6,a6
   1bfaa:	0105e5b3          	or	a1,a1,a6
   1bfae:	00e7d733          	srl	a4,a5,a4
   1bfb2:	40b60533          	sub	a0,a2,a1
   1bfb6:	40e68733          	sub	a4,a3,a4
   1bfba:	00a63633          	sltu	a2,a2,a0
   1bfbe:	40c707b3          	sub	a5,a4,a2
   1bfc2:	b759                	j	1bf48 <__subtf3+0x532>
   1bfc4:	fc07059b          	addiw	a1,a4,-64
   1bfc8:	04000e13          	li	t3,64
   1bfcc:	00b7d5b3          	srl	a1,a5,a1
   1bfd0:	4801                	li	a6,0
   1bfd2:	01c70863          	beq	a4,t3,1bfe2 <__subtf3+0x5cc>
   1bfd6:	08000813          	li	a6,128
   1bfda:	40e8083b          	subw	a6,a6,a4
   1bfde:	01079833          	sll	a6,a5,a6
   1bfe2:	00a86833          	or	a6,a6,a0
   1bfe6:	01003833          	snez	a6,a6
   1bfea:	0105e5b3          	or	a1,a1,a6
   1bfee:	4701                	li	a4,0
   1bff0:	b7c9                	j	1bfb2 <__subtf3+0x59c>
   1bff2:	00a7e5b3          	or	a1,a5,a0
   1bff6:	00b035b3          	snez	a1,a1
   1bffa:	bfd5                	j	1bfee <__subtf3+0x5d8>
   1bffc:	00180f13          	addi	t5,a6,1
   1c000:	ffee0713          	addi	a4,t3,-2
   1c004:	00ef7733          	and	a4,t5,a4
   1c008:	ef65                	bnez	a4,1c100 <__subtf3+0x6ea>
   1c00a:	00c6ee33          	or	t3,a3,a2
   1c00e:	00a7ef33          	or	t5,a5,a0
   1c012:	0a081363          	bnez	a6,1c0b8 <__subtf3+0x6a2>
   1c016:	040f1e63          	bnez	t5,1c072 <__subtf3+0x65c>
   1c01a:	1e0e1263          	bnez	t3,1c1fe <__subtf3+0x7e8>
   1c01e:	ffe48913          	addi	s2,s1,-2
   1c022:	00193913          	seqz	s2,s2
   1c026:	4781                	li	a5,0
   1c028:	4501                	li	a0,0
   1c02a:	00f56733          	or	a4,a0,a5
   1c02e:	22070063          	beqz	a4,1c24e <__subtf3+0x838>
   1c032:	00151693          	slli	a3,a0,0x1
   1c036:	03f55713          	srli	a4,a0,0x3f
   1c03a:	00179593          	slli	a1,a5,0x1
   1c03e:	0076f613          	andi	a2,a3,7
   1c042:	95ba                	add	a1,a1,a4
   1c044:	4701                	li	a4,0
   1c046:	c205                	beqz	a2,1c066 <__subtf3+0x650>
   1c048:	4709                	li	a4,2
   1c04a:	1ce48b63          	beq	s1,a4,1c220 <__subtf3+0x80a>
   1c04e:	470d                	li	a4,3
   1c050:	1ae48d63          	beq	s1,a4,1c20a <__subtf3+0x7f4>
   1c054:	4705                	li	a4,1
   1c056:	e881                	bnez	s1,1c066 <__subtf3+0x650>
   1c058:	00f6f613          	andi	a2,a3,15
   1c05c:	4811                	li	a6,4
   1c05e:	ffc6b693          	sltiu	a3,a3,-4
   1c062:	1b061963          	bne	a2,a6,1c214 <__subtf3+0x7fe>
   1c066:	91d1                	srli	a1,a1,0x34
   1c068:	0015c593          	xori	a1,a1,1
   1c06c:	8985                	andi	a1,a1,1
   1c06e:	4401                	li	s0,0
   1c070:	b6b1                	j	1bbbc <__subtf3+0x1a6>
   1c072:	fa0e0ce3          	beqz	t3,1c02a <__subtf3+0x614>
   1c076:	40c505b3          	sub	a1,a0,a2
   1c07a:	00b53833          	sltu	a6,a0,a1
   1c07e:	40d78733          	sub	a4,a5,a3
   1c082:	41070733          	sub	a4,a4,a6
   1c086:	03375813          	srli	a6,a4,0x33
   1c08a:	00187813          	andi	a6,a6,1
   1c08e:	00080b63          	beqz	a6,1c0a4 <__subtf3+0x68e>
   1c092:	40a60533          	sub	a0,a2,a0
   1c096:	8e9d                	sub	a3,a3,a5
   1c098:	00a63633          	sltu	a2,a2,a0
   1c09c:	40c687b3          	sub	a5,a3,a2
   1c0a0:	891a                	mv	s2,t1
   1c0a2:	b761                	j	1c02a <__subtf3+0x614>
   1c0a4:	00e5e533          	or	a0,a1,a4
   1c0a8:	14051e63          	bnez	a0,1c204 <__subtf3+0x7ee>
   1c0ac:	ffe48913          	addi	s2,s1,-2
   1c0b0:	00193913          	seqz	s2,s2
   1c0b4:	4781                	li	a5,0
   1c0b6:	bf95                	j	1c02a <__subtf3+0x614>
   1c0b8:	03d81663          	bne	a6,t4,1c0e4 <__subtf3+0x6ce>
   1c0bc:	1c0f0963          	beqz	t5,1c28e <__subtf3+0x878>
   1c0c0:	0327d713          	srli	a4,a5,0x32
   1c0c4:	00174713          	xori	a4,a4,1
   1c0c8:	8b05                	andi	a4,a4,1
   1c0ca:	0712                	slli	a4,a4,0x4
   1c0cc:	03089763          	bne	a7,a6,1c0fa <__subtf3+0x6e4>
   1c0d0:	000e0d63          	beqz	t3,1c0ea <__subtf3+0x6d4>
   1c0d4:	0326d813          	srli	a6,a3,0x32
   1c0d8:	00187813          	andi	a6,a6,1
   1c0dc:	00081763          	bnez	a6,1c0ea <__subtf3+0x6d4>
   1c0e0:	4741                	li	a4,16
   1c0e2:	a021                	j	1c0ea <__subtf3+0x6d4>
   1c0e4:	4701                	li	a4,0
   1c0e6:	ffd885e3          	beq	a7,t4,1c0d0 <__subtf3+0x6ba>
   1c0ea:	000f1863          	bnez	t5,1c0fa <__subtf3+0x6e4>
   1c0ee:	140e0863          	beqz	t3,1c23e <__subtf3+0x828>
   1c0f2:	87b6                	mv	a5,a3
   1c0f4:	8532                	mv	a0,a2
   1c0f6:	891a                	mv	s2,t1
   1c0f8:	b125                	j	1bd20 <__subtf3+0x30a>
   1c0fa:	c20e03e3          	beqz	t3,1bd20 <__subtf3+0x30a>
   1c0fe:	b135                	j	1bd2a <__subtf3+0x314>
   1c100:	40c50a33          	sub	s4,a0,a2
   1c104:	01453733          	sltu	a4,a0,s4
   1c108:	40d789b3          	sub	s3,a5,a3
   1c10c:	40e989b3          	sub	s3,s3,a4
   1c110:	0339d713          	srli	a4,s3,0x33
   1c114:	8b05                	andi	a4,a4,1
   1c116:	cf25                	beqz	a4,1c18e <__subtf3+0x778>
   1c118:	40a60a33          	sub	s4,a2,a0
   1c11c:	40f689b3          	sub	s3,a3,a5
   1c120:	01463633          	sltu	a2,a2,s4
   1c124:	40c989b3          	sub	s3,s3,a2
   1c128:	891a                	mv	s2,t1
   1c12a:	06098663          	beqz	s3,1c196 <__subtf3+0x780>
   1c12e:	854e                	mv	a0,s3
   1c130:	53a000ef          	jal	ra,1c66a <__clzdi2>
   1c134:	2501                	sext.w	a0,a0
   1c136:	ff45069b          	addiw	a3,a0,-12
   1c13a:	03f00793          	li	a5,63
   1c13e:	8736                	mv	a4,a3
   1c140:	06d7c163          	blt	a5,a3,1c1a2 <__subtf3+0x78c>
   1c144:	04000793          	li	a5,64
   1c148:	9f95                	subw	a5,a5,a3
   1c14a:	00d999b3          	sll	s3,s3,a3
   1c14e:	00fa57b3          	srl	a5,s4,a5
   1c152:	0137e7b3          	or	a5,a5,s3
   1c156:	00da1533          	sll	a0,s4,a3
   1c15a:	0686ce63          	blt	a3,s0,1c1d6 <__subtf3+0x7c0>
   1c15e:	9f01                	subw	a4,a4,s0
   1c160:	0017061b          	addiw	a2,a4,1
   1c164:	03f00693          	li	a3,63
   1c168:	04c6c363          	blt	a3,a2,1c1ae <__subtf3+0x798>
   1c16c:	04000713          	li	a4,64
   1c170:	9f11                	subw	a4,a4,a2
   1c172:	00e796b3          	sll	a3,a5,a4
   1c176:	00c555b3          	srl	a1,a0,a2
   1c17a:	00e51733          	sll	a4,a0,a4
   1c17e:	8ecd                	or	a3,a3,a1
   1c180:	00e03733          	snez	a4,a4
   1c184:	00e6e533          	or	a0,a3,a4
   1c188:	00c7d7b3          	srl	a5,a5,a2
   1c18c:	bd79                	j	1c02a <__subtf3+0x614>
   1c18e:	013a6533          	or	a0,s4,s3
   1c192:	fd41                	bnez	a0,1c12a <__subtf3+0x714>
   1c194:	bf21                	j	1c0ac <__subtf3+0x696>
   1c196:	8552                	mv	a0,s4
   1c198:	4d2000ef          	jal	ra,1c66a <__clzdi2>
   1c19c:	0405051b          	addiw	a0,a0,64
   1c1a0:	bf59                	j	1c136 <__subtf3+0x720>
   1c1a2:	fb45079b          	addiw	a5,a0,-76
   1c1a6:	00fa17b3          	sll	a5,s4,a5
   1c1aa:	4501                	li	a0,0
   1c1ac:	b77d                	j	1c15a <__subtf3+0x744>
   1c1ae:	fc17071b          	addiw	a4,a4,-63
   1c1b2:	04000813          	li	a6,64
   1c1b6:	00e7d6b3          	srl	a3,a5,a4
   1c1ba:	4701                	li	a4,0
   1c1bc:	01060763          	beq	a2,a6,1c1ca <__subtf3+0x7b4>
   1c1c0:	08000713          	li	a4,128
   1c1c4:	9f11                	subw	a4,a4,a2
   1c1c6:	00e79733          	sll	a4,a5,a4
   1c1ca:	8f49                	or	a4,a4,a0
   1c1cc:	00e03733          	snez	a4,a4
   1c1d0:	00e6e533          	or	a0,a3,a4
   1c1d4:	b5c5                	j	1c0b4 <__subtf3+0x69e>
   1c1d6:	577d                	li	a4,-1
   1c1d8:	174e                	slli	a4,a4,0x33
   1c1da:	177d                	addi	a4,a4,-1
   1c1dc:	8c15                	sub	s0,s0,a3
   1c1de:	8ff9                	and	a5,a5,a4
   1c1e0:	e40405e3          	beqz	s0,1c02a <__subtf3+0x614>
   1c1e4:	b229                	j	1baee <__subtf3+0xd8>
   1c1e6:	87b6                	mv	a5,a3
   1c1e8:	8532                	mv	a0,a2
   1c1ea:	8446                	mv	s0,a7
   1c1ec:	bfd5                	j	1c1e0 <__subtf3+0x7ca>
   1c1ee:	87b6                	mv	a5,a3
   1c1f0:	8532                	mv	a0,a2
   1c1f2:	8446                	mv	s0,a7
   1c1f4:	891a                	mv	s2,t1
   1c1f6:	b7ed                	j	1c1e0 <__subtf3+0x7ca>
   1c1f8:	87b6                	mv	a5,a3
   1c1fa:	8532                	mv	a0,a2
   1c1fc:	b53d                	j	1c02a <__subtf3+0x614>
   1c1fe:	87b6                	mv	a5,a3
   1c200:	8532                	mv	a0,a2
   1c202:	bd79                	j	1c0a0 <__subtf3+0x68a>
   1c204:	87ba                	mv	a5,a4
   1c206:	852e                	mv	a0,a1
   1c208:	b50d                	j	1c02a <__subtf3+0x614>
   1c20a:	4705                	li	a4,1
   1c20c:	e4091de3          	bnez	s2,1c066 <__subtf3+0x650>
   1c210:	ff86b693          	sltiu	a3,a3,-8
   1c214:	0016c693          	xori	a3,a3,1
   1c218:	1682                	slli	a3,a3,0x20
   1c21a:	9281                	srli	a3,a3,0x20
   1c21c:	95b6                	add	a1,a1,a3
   1c21e:	b5a1                	j	1c066 <__subtf3+0x650>
   1c220:	4705                	li	a4,1
   1c222:	e40902e3          	beqz	s2,1c066 <__subtf3+0x650>
   1c226:	b7ed                	j	1c210 <__subtf3+0x7fa>
   1c228:	4781                	li	a5,0
   1c22a:	8446                	mv	s0,a7
   1c22c:	4701                	li	a4,0
   1c22e:	b621                	j	1bd36 <__subtf3+0x320>
   1c230:	4781                	li	a5,0
   1c232:	4501                	li	a0,0
   1c234:	bfe5                	j	1c22c <__subtf3+0x816>
   1c236:	4781                	li	a5,0
   1c238:	8446                	mv	s0,a7
   1c23a:	891a                	mv	s2,t1
   1c23c:	bfc5                	j	1c22c <__subtf3+0x816>
   1c23e:	4785                	li	a5,1
   1c240:	6421                	lui	s0,0x8
   1c242:	4501                	li	a0,0
   1c244:	4901                	li	s2,0
   1c246:	17ca                	slli	a5,a5,0x32
   1c248:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1c24a:	4741                	li	a4,16
   1c24c:	b4ed                	j	1bd36 <__subtf3+0x320>
   1c24e:	4781                	li	a5,0
   1c250:	4501                	li	a0,0
   1c252:	4401                	li	s0,0
   1c254:	bfe1                	j	1c22c <__subtf3+0x816>
   1c256:	ba091be3          	bnez	s2,1be0c <__subtf3+0x3f6>
   1c25a:	00850693          	addi	a3,a0,8
   1c25e:	b65d                	j	1be04 <__subtf3+0x3ee>
   1c260:	ba0906e3          	beqz	s2,1be0c <__subtf3+0x3f6>
   1c264:	bfdd                	j	1c25a <__subtf3+0x844>
   1c266:	4501                	li	a0,0
   1c268:	cc99                	beqz	s1,1c286 <__subtf3+0x870>
   1c26a:	478d                	li	a5,3
   1c26c:	00f49863          	bne	s1,a5,1c27c <__subtf3+0x866>
   1c270:	00090b63          	beqz	s2,1c286 <__subtf3+0x870>
   1c274:	557d                	li	a0,-1
   1c276:	ffe68413          	addi	s0,a3,-2
   1c27a:	a031                	j	1c286 <__subtf3+0x870>
   1c27c:	4789                	li	a5,2
   1c27e:	fef49be3          	bne	s1,a5,1c274 <__subtf3+0x85e>
   1c282:	fe0909e3          	beqz	s2,1c274 <__subtf3+0x85e>
   1c286:	00576713          	ori	a4,a4,5
   1c28a:	87aa                	mv	a5,a0
   1c28c:	b4d9                	j	1bd52 <__subtf3+0x33c>
   1c28e:	4701                	li	a4,0
   1c290:	e5089fe3          	bne	a7,a6,1c0ee <__subtf3+0x6d8>
   1c294:	bd35                	j	1c0d0 <__subtf3+0x6ba>
   1c296:	4701                	li	a4,0
   1c298:	a90892e3          	bne	a7,a6,1bd1c <__subtf3+0x306>
   1c29c:	bcb9                	j	1bcfa <__subtf3+0x2e4>

000000000001c29e <__fixtfsi>:
   1c29e:	862a                	mv	a2,a0
   1c2a0:	002027f3          	frrm	a5
   1c2a4:	6811                	lui	a6,0x4
   1c2a6:	00159693          	slli	a3,a1,0x1
   1c2aa:	01059793          	slli	a5,a1,0x10
   1c2ae:	92c5                	srli	a3,a3,0x31
   1c2b0:	ffe80713          	addi	a4,a6,-2 # 3ffe <exit-0xc0ea>
   1c2b4:	83c1                	srli	a5,a5,0x10
   1c2b6:	91fd                	srli	a1,a1,0x3f
   1c2b8:	00d74863          	blt	a4,a3,1c2c8 <__fixtfsi+0x2a>
   1c2bc:	e6a5                	bnez	a3,1c324 <__fixtfsi+0x86>
   1c2be:	00f56633          	or	a2,a0,a5
   1c2c2:	4501                	li	a0,0
   1c2c4:	e61d                	bnez	a2,1c2f2 <__fixtfsi+0x54>
   1c2c6:	8082                	ret
   1c2c8:	01d80713          	addi	a4,a6,29
   1c2cc:	02d75563          	bge	a4,a3,1c2f6 <__fixtfsi+0x58>
   1c2d0:	80000737          	lui	a4,0x80000
   1c2d4:	fff74713          	not	a4,a4
   1c2d8:	00b7053b          	addw	a0,a4,a1
   1c2dc:	c5b1                	beqz	a1,1c328 <__fixtfsi+0x8a>
   1c2de:	0879                	addi	a6,a6,30
   1c2e0:	4741                	li	a4,16
   1c2e2:	05069463          	bne	a3,a6,1c32a <__fixtfsi+0x8c>
   1c2e6:	0117d693          	srli	a3,a5,0x11
   1c2ea:	e2a1                	bnez	a3,1c32a <__fixtfsi+0x8c>
   1c2ec:	17be                	slli	a5,a5,0x2f
   1c2ee:	8fd1                	or	a5,a5,a2
   1c2f0:	cb8d                	beqz	a5,1c322 <__fixtfsi+0x84>
   1c2f2:	4705                	li	a4,1
   1c2f4:	a81d                	j	1c32a <__fixtfsi+0x8c>
   1c2f6:	4705                	li	a4,1
   1c2f8:	1742                	slli	a4,a4,0x30
   1c2fa:	8fd9                	or	a5,a5,a4
   1c2fc:	6611                	lui	a2,0x4
   1c2fe:	7771                	lui	a4,0xffffc
   1c300:	2745                	addiw	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc6f9>
   1c302:	02f6061b          	addiw	a2,a2,47 # 402f <exit-0xc0b9>
   1c306:	9f35                	addw	a4,a4,a3
   1c308:	40d606bb          	subw	a3,a2,a3
   1c30c:	00e79733          	sll	a4,a5,a4
   1c310:	00d7d7b3          	srl	a5,a5,a3
   1c314:	8f49                	or	a4,a4,a0
   1c316:	0007851b          	sext.w	a0,a5
   1c31a:	c199                	beqz	a1,1c320 <__fixtfsi+0x82>
   1c31c:	40a0053b          	negw	a0,a0
   1c320:	fb69                	bnez	a4,1c2f2 <__fixtfsi+0x54>
   1c322:	8082                	ret
   1c324:	4501                	li	a0,0
   1c326:	b7f1                	j	1c2f2 <__fixtfsi+0x54>
   1c328:	4741                	li	a4,16
   1c32a:	00172073          	csrs	fflags,a4
   1c32e:	bfd5                	j	1c322 <__fixtfsi+0x84>

000000000001c330 <__floatsitf>:
   1c330:	1101                	addi	sp,sp,-32
   1c332:	ec06                	sd	ra,24(sp)
   1c334:	e822                	sd	s0,16(sp)
   1c336:	e426                	sd	s1,8(sp)
   1c338:	c139                	beqz	a0,1c37e <__floatsitf+0x4e>
   1c33a:	0005079b          	sext.w	a5,a0
   1c33e:	03f55493          	srli	s1,a0,0x3f
   1c342:	00055463          	bgez	a0,1c34a <__floatsitf+0x1a>
   1c346:	40f007bb          	negw	a5,a5
   1c34a:	02079413          	slli	s0,a5,0x20
   1c34e:	9001                	srli	s0,s0,0x20
   1c350:	8522                	mv	a0,s0
   1c352:	318000ef          	jal	ra,1c66a <__clzdi2>
   1c356:	6591                	lui	a1,0x4
   1c358:	03e5859b          	addiw	a1,a1,62 # 403e <exit-0xc0aa>
   1c35c:	9d89                	subw	a1,a1,a0
   1c35e:	3545                	addiw	a0,a0,-15
   1c360:	00a417b3          	sll	a5,s0,a0
   1c364:	60e2                	ld	ra,24(sp)
   1c366:	6442                	ld	s0,16(sp)
   1c368:	00f4949b          	slliw	s1,s1,0xf
   1c36c:	8dc5                	or	a1,a1,s1
   1c36e:	07c2                	slli	a5,a5,0x10
   1c370:	15c2                	slli	a1,a1,0x30
   1c372:	83c1                	srli	a5,a5,0x10
   1c374:	64a2                	ld	s1,8(sp)
   1c376:	4501                	li	a0,0
   1c378:	8ddd                	or	a1,a1,a5
   1c37a:	6105                	addi	sp,sp,32
   1c37c:	8082                	ret
   1c37e:	4781                	li	a5,0
   1c380:	4581                	li	a1,0
   1c382:	4481                	li	s1,0
   1c384:	b7c5                	j	1c364 <__floatsitf+0x34>

000000000001c386 <__extenddftf2>:
   1c386:	1101                	addi	sp,sp,-32
   1c388:	e20507d3          	fmv.x.d	a5,fa0
   1c38c:	ec06                	sd	ra,24(sp)
   1c38e:	e822                	sd	s0,16(sp)
   1c390:	e426                	sd	s1,8(sp)
   1c392:	00202773          	frrm	a4
   1c396:	0347d513          	srli	a0,a5,0x34
   1c39a:	7ff57513          	andi	a0,a0,2047
   1c39e:	00c79413          	slli	s0,a5,0xc
   1c3a2:	03f7d493          	srli	s1,a5,0x3f
   1c3a6:	00150793          	addi	a5,a0,1
   1c3aa:	7fe7f793          	andi	a5,a5,2046
   1c3ae:	8031                	srli	s0,s0,0xc
   1c3b0:	cb91                	beqz	a5,1c3c4 <__extenddftf2+0x3e>
   1c3b2:	6791                	lui	a5,0x4
   1c3b4:	c0078793          	addi	a5,a5,-1024 # 3c00 <exit-0xc4e8>
   1c3b8:	953e                	add	a0,a0,a5
   1c3ba:	00445793          	srli	a5,s0,0x4
   1c3be:	1472                	slli	s0,s0,0x3c
   1c3c0:	4701                	li	a4,0
   1c3c2:	a8b9                	j	1c420 <__extenddftf2+0x9a>
   1c3c4:	ed1d                	bnez	a0,1c402 <__extenddftf2+0x7c>
   1c3c6:	4781                	li	a5,0
   1c3c8:	dc65                	beqz	s0,1c3c0 <__extenddftf2+0x3a>
   1c3ca:	8522                	mv	a0,s0
   1c3cc:	29e000ef          	jal	ra,1c66a <__clzdi2>
   1c3d0:	0005071b          	sext.w	a4,a0
   1c3d4:	47b9                	li	a5,14
   1c3d6:	02e7c063          	blt	a5,a4,1c3f6 <__extenddftf2+0x70>
   1c3da:	47bd                	li	a5,15
   1c3dc:	9f89                	subw	a5,a5,a0
   1c3de:	0315071b          	addiw	a4,a0,49
   1c3e2:	00f457b3          	srl	a5,s0,a5
   1c3e6:	00e41433          	sll	s0,s0,a4
   1c3ea:	6711                	lui	a4,0x4
   1c3ec:	c0c7071b          	addiw	a4,a4,-1012 # 3c0c <exit-0xc4dc>
   1c3f0:	40a7053b          	subw	a0,a4,a0
   1c3f4:	b7f1                	j	1c3c0 <__extenddftf2+0x3a>
   1c3f6:	ff15079b          	addiw	a5,a0,-15
   1c3fa:	00f417b3          	sll	a5,s0,a5
   1c3fe:	4401                	li	s0,0
   1c400:	b7ed                	j	1c3ea <__extenddftf2+0x64>
   1c402:	c021                	beqz	s0,1c442 <__extenddftf2+0xbc>
   1c404:	03345713          	srli	a4,s0,0x33
   1c408:	00174713          	xori	a4,a4,1
   1c40c:	4685                	li	a3,1
   1c40e:	00445793          	srli	a5,s0,0x4
   1c412:	8b05                	andi	a4,a4,1
   1c414:	16be                	slli	a3,a3,0x2f
   1c416:	6521                	lui	a0,0x8
   1c418:	0712                	slli	a4,a4,0x4
   1c41a:	8fd5                	or	a5,a5,a3
   1c41c:	1472                	slli	s0,s0,0x3c
   1c41e:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1c420:	01079593          	slli	a1,a5,0x10
   1c424:	00f4979b          	slliw	a5,s1,0xf
   1c428:	8d5d                	or	a0,a0,a5
   1c42a:	1542                	slli	a0,a0,0x30
   1c42c:	81c1                	srli	a1,a1,0x10
   1c42e:	8dc9                	or	a1,a1,a0
   1c430:	c319                	beqz	a4,1c436 <__extenddftf2+0xb0>
   1c432:	00172073          	csrs	fflags,a4
   1c436:	60e2                	ld	ra,24(sp)
   1c438:	8522                	mv	a0,s0
   1c43a:	6442                	ld	s0,16(sp)
   1c43c:	64a2                	ld	s1,8(sp)
   1c43e:	6105                	addi	sp,sp,32
   1c440:	8082                	ret
   1c442:	6521                	lui	a0,0x8
   1c444:	4781                	li	a5,0
   1c446:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1c448:	bfa5                	j	1c3c0 <__extenddftf2+0x3a>

000000000001c44a <__trunctfdf2>:
   1c44a:	00202673          	frrm	a2
   1c44e:	68a1                	lui	a7,0x8
   1c450:	0305d713          	srli	a4,a1,0x30
   1c454:	fff88e13          	addi	t3,a7,-1 # 7fff <exit-0x80e9>
   1c458:	01c77833          	and	a6,a4,t3
   1c45c:	03f5d693          	srli	a3,a1,0x3f
   1c460:	00180793          	addi	a5,a6,1
   1c464:	05c2                	slli	a1,a1,0x10
   1c466:	18f9                	addi	a7,a7,-2
   1c468:	81b5                	srli	a1,a1,0xd
   1c46a:	03d55713          	srli	a4,a0,0x3d
   1c46e:	0117f7b3          	and	a5,a5,a7
   1c472:	2601                	sext.w	a2,a2
   1c474:	8f4d                	or	a4,a4,a1
   1c476:	00351313          	slli	t1,a0,0x3
   1c47a:	16078863          	beqz	a5,1c5ea <__trunctfdf2+0x1a0>
   1c47e:	77f1                	lui	a5,0xffffc
   1c480:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffdcae8>
   1c484:	983e                	add	a6,a6,a5
   1c486:	7fe00793          	li	a5,2046
   1c48a:	0907db63          	bge	a5,a6,1c520 <__trunctfdf2+0xd6>
   1c48e:	c229                	beqz	a2,1c4d0 <__trunctfdf2+0x86>
   1c490:	478d                	li	a5,3
   1c492:	02f61b63          	bne	a2,a5,1c4c8 <__trunctfdf2+0x7e>
   1c496:	ce8d                	beqz	a3,1c4d0 <__trunctfdf2+0x86>
   1c498:	57fd                	li	a5,-1
   1c49a:	7fe00813          	li	a6,2046
   1c49e:	4701                	li	a4,0
   1c4a0:	4595                	li	a1,5
   1c4a2:	4509                	li	a0,2
   1c4a4:	0015e593          	ori	a1,a1,1
   1c4a8:	18a60d63          	beq	a2,a0,1c642 <__trunctfdf2+0x1f8>
   1c4ac:	450d                	li	a0,3
   1c4ae:	18a60663          	beq	a2,a0,1c63a <__trunctfdf2+0x1f0>
   1c4b2:	e619                	bnez	a2,1c4c0 <__trunctfdf2+0x76>
   1c4b4:	00f7f513          	andi	a0,a5,15
   1c4b8:	4891                	li	a7,4
   1c4ba:	01150363          	beq	a0,a7,1c4c0 <__trunctfdf2+0x76>
   1c4be:	0791                	addi	a5,a5,4
   1c4c0:	cf01                	beqz	a4,1c4d8 <__trunctfdf2+0x8e>
   1c4c2:	0025e593          	ori	a1,a1,2
   1c4c6:	a809                	j	1c4d8 <__trunctfdf2+0x8e>
   1c4c8:	4789                	li	a5,2
   1c4ca:	fcf617e3          	bne	a2,a5,1c498 <__trunctfdf2+0x4e>
   1c4ce:	d6e9                	beqz	a3,1c498 <__trunctfdf2+0x4e>
   1c4d0:	4781                	li	a5,0
   1c4d2:	7ff00813          	li	a6,2047
   1c4d6:	4595                	li	a1,5
   1c4d8:	0377d713          	srli	a4,a5,0x37
   1c4dc:	8b05                	andi	a4,a4,1
   1c4de:	cb11                	beqz	a4,1c4f2 <__trunctfdf2+0xa8>
   1c4e0:	0805                	addi	a6,a6,1
   1c4e2:	7ff00713          	li	a4,2047
   1c4e6:	16e80163          	beq	a6,a4,1c648 <__trunctfdf2+0x1fe>
   1c4ea:	567d                	li	a2,-1
   1c4ec:	165e                	slli	a2,a2,0x37
   1c4ee:	167d                	addi	a2,a2,-1
   1c4f0:	8ff1                	and	a5,a5,a2
   1c4f2:	7ff00713          	li	a4,2047
   1c4f6:	838d                	srli	a5,a5,0x3
   1c4f8:	00e81663          	bne	a6,a4,1c504 <__trunctfdf2+0xba>
   1c4fc:	c781                	beqz	a5,1c504 <__trunctfdf2+0xba>
   1c4fe:	4785                	li	a5,1
   1c500:	17ce                	slli	a5,a5,0x33
   1c502:	4681                	li	a3,0
   1c504:	7ff87713          	andi	a4,a6,2047
   1c508:	07b2                	slli	a5,a5,0xc
   1c50a:	1752                	slli	a4,a4,0x34
   1c50c:	83b1                	srli	a5,a5,0xc
   1c50e:	8fd9                	or	a5,a5,a4
   1c510:	16fe                	slli	a3,a3,0x3f
   1c512:	8fd5                	or	a5,a5,a3
   1c514:	c199                	beqz	a1,1c51a <__trunctfdf2+0xd0>
   1c516:	0015a073          	csrs	fflags,a1
   1c51a:	f2078553          	fmv.d.x	fa0,a5
   1c51e:	8082                	ret
   1c520:	0b004063          	bgtz	a6,1c5c0 <__trunctfdf2+0x176>
   1c524:	fcc00593          	li	a1,-52
   1c528:	4785                	li	a5,1
   1c52a:	02b84e63          	blt	a6,a1,1c566 <__trunctfdf2+0x11c>
   1c52e:	17ce                	slli	a5,a5,0x33
   1c530:	03d00893          	li	a7,61
   1c534:	8f5d                	or	a4,a4,a5
   1c536:	410888b3          	sub	a7,a7,a6
   1c53a:	03f00793          	li	a5,63
   1c53e:	0008051b          	sext.w	a0,a6
   1c542:	0517cc63          	blt	a5,a7,1c59a <__trunctfdf2+0x150>
   1c546:	03d00793          	li	a5,61
   1c54a:	0035059b          	addiw	a1,a0,3
   1c54e:	9f89                	subw	a5,a5,a0
   1c550:	00f357b3          	srl	a5,t1,a5
   1c554:	00b31333          	sll	t1,t1,a1
   1c558:	00603333          	snez	t1,t1
   1c55c:	0067e7b3          	or	a5,a5,t1
   1c560:	00b71733          	sll	a4,a4,a1
   1c564:	8fd9                	or	a5,a5,a4
   1c566:	00179713          	slli	a4,a5,0x1
   1c56a:	00777513          	andi	a0,a4,7
   1c56e:	4581                	li	a1,0
   1c570:	cd19                	beqz	a0,1c58e <__trunctfdf2+0x144>
   1c572:	4589                	li	a1,2
   1c574:	0ab60d63          	beq	a2,a1,1c62e <__trunctfdf2+0x1e4>
   1c578:	458d                	li	a1,3
   1c57a:	0ab60663          	beq	a2,a1,1c626 <__trunctfdf2+0x1dc>
   1c57e:	4585                	li	a1,1
   1c580:	e619                	bnez	a2,1c58e <__trunctfdf2+0x144>
   1c582:	00f77513          	andi	a0,a4,15
   1c586:	4811                	li	a6,4
   1c588:	01050363          	beq	a0,a6,1c58e <__trunctfdf2+0x144>
   1c58c:	0711                	addi	a4,a4,4
   1c58e:	9361                	srli	a4,a4,0x38
   1c590:	00174713          	xori	a4,a4,1
   1c594:	8b05                	andi	a4,a4,1
   1c596:	4801                	li	a6,0
   1c598:	a081                	j	1c5d8 <__trunctfdf2+0x18e>
   1c59a:	57f5                	li	a5,-3
   1c59c:	9f89                	subw	a5,a5,a0
   1c59e:	04000813          	li	a6,64
   1c5a2:	00f757b3          	srl	a5,a4,a5
   1c5a6:	4581                	li	a1,0
   1c5a8:	01088663          	beq	a7,a6,1c5b4 <__trunctfdf2+0x16a>
   1c5ac:	0435051b          	addiw	a0,a0,67
   1c5b0:	00a715b3          	sll	a1,a4,a0
   1c5b4:	0065e5b3          	or	a1,a1,t1
   1c5b8:	00b035b3          	snez	a1,a1
   1c5bc:	8fcd                	or	a5,a5,a1
   1c5be:	b765                	j	1c566 <__trunctfdf2+0x11c>
   1c5c0:	00751793          	slli	a5,a0,0x7
   1c5c4:	00f037b3          	snez	a5,a5
   1c5c8:	03c35313          	srli	t1,t1,0x3c
   1c5cc:	0712                	slli	a4,a4,0x4
   1c5ce:	0067e7b3          	or	a5,a5,t1
   1c5d2:	8fd9                	or	a5,a5,a4
   1c5d4:	4581                	li	a1,0
   1c5d6:	4701                	li	a4,0
   1c5d8:	0077f513          	andi	a0,a5,7
   1c5dc:	ec0513e3          	bnez	a0,1c4a2 <__trunctfdf2+0x58>
   1c5e0:	ee070ce3          	beqz	a4,1c4d8 <__trunctfdf2+0x8e>
   1c5e4:	0015f713          	andi	a4,a1,1
   1c5e8:	bde1                	j	1c4c0 <__trunctfdf2+0x76>
   1c5ea:	006767b3          	or	a5,a4,t1
   1c5ee:	00081563          	bnez	a6,1c5f8 <__trunctfdf2+0x1ae>
   1c5f2:	eb85                	bnez	a5,1c622 <__trunctfdf2+0x1d8>
   1c5f4:	4581                	li	a1,0
   1c5f6:	b5cd                	j	1c4d8 <__trunctfdf2+0x8e>
   1c5f8:	cf95                	beqz	a5,1c634 <__trunctfdf2+0x1ea>
   1c5fa:	4581                	li	a1,0
   1c5fc:	01c81763          	bne	a6,t3,1c60a <__trunctfdf2+0x1c0>
   1c600:	03275593          	srli	a1,a4,0x32
   1c604:	0015c593          	xori	a1,a1,1
   1c608:	0592                	slli	a1,a1,0x4
   1c60a:	03c35793          	srli	a5,t1,0x3c
   1c60e:	0712                	slli	a4,a4,0x4
   1c610:	8f5d                	or	a4,a4,a5
   1c612:	4785                	li	a5,1
   1c614:	9b61                	andi	a4,a4,-8
   1c616:	17da                	slli	a5,a5,0x36
   1c618:	8fd9                	or	a5,a5,a4
   1c61a:	7ff00813          	li	a6,2047
   1c61e:	4701                	li	a4,0
   1c620:	bf65                	j	1c5d8 <__trunctfdf2+0x18e>
   1c622:	4785                	li	a5,1
   1c624:	b789                	j	1c566 <__trunctfdf2+0x11c>
   1c626:	4585                	li	a1,1
   1c628:	f2bd                	bnez	a3,1c58e <__trunctfdf2+0x144>
   1c62a:	0721                	addi	a4,a4,8
   1c62c:	b78d                	j	1c58e <__trunctfdf2+0x144>
   1c62e:	4585                	li	a1,1
   1c630:	deb9                	beqz	a3,1c58e <__trunctfdf2+0x144>
   1c632:	bfe5                	j	1c62a <__trunctfdf2+0x1e0>
   1c634:	7ff00813          	li	a6,2047
   1c638:	bf75                	j	1c5f4 <__trunctfdf2+0x1aa>
   1c63a:	e80693e3          	bnez	a3,1c4c0 <__trunctfdf2+0x76>
   1c63e:	07a1                	addi	a5,a5,8
   1c640:	b541                	j	1c4c0 <__trunctfdf2+0x76>
   1c642:	e6068fe3          	beqz	a3,1c4c0 <__trunctfdf2+0x76>
   1c646:	bfe5                	j	1c63e <__trunctfdf2+0x1f4>
   1c648:	4781                	li	a5,0
   1c64a:	ce09                	beqz	a2,1c664 <__trunctfdf2+0x21a>
   1c64c:	470d                	li	a4,3
   1c64e:	00e61763          	bne	a2,a4,1c65c <__trunctfdf2+0x212>
   1c652:	ca89                	beqz	a3,1c664 <__trunctfdf2+0x21a>
   1c654:	57fd                	li	a5,-1
   1c656:	7fe00813          	li	a6,2046
   1c65a:	a029                	j	1c664 <__trunctfdf2+0x21a>
   1c65c:	4709                	li	a4,2
   1c65e:	fee61be3          	bne	a2,a4,1c654 <__trunctfdf2+0x20a>
   1c662:	daed                	beqz	a3,1c654 <__trunctfdf2+0x20a>
   1c664:	0055e593          	ori	a1,a1,5
   1c668:	b569                	j	1c4f2 <__trunctfdf2+0xa8>

000000000001c66a <__clzdi2>:
   1c66a:	03800793          	li	a5,56
   1c66e:	00f55733          	srl	a4,a0,a5
   1c672:	0ff77713          	zext.b	a4,a4
   1c676:	e319                	bnez	a4,1c67c <__clzdi2+0x12>
   1c678:	17e1                	addi	a5,a5,-8
   1c67a:	fbf5                	bnez	a5,1c66e <__clzdi2+0x4>
   1c67c:	6775                	lui	a4,0x1d
   1c67e:	04000693          	li	a3,64
   1c682:	8e9d                	sub	a3,a3,a5
   1c684:	00f55533          	srl	a0,a0,a5
   1c688:	4f870793          	addi	a5,a4,1272 # 1d4f8 <__clz_tab>
   1c68c:	97aa                	add	a5,a5,a0
   1c68e:	0007c503          	lbu	a0,0(a5)
   1c692:	40a6853b          	subw	a0,a3,a0
   1c696:	8082                	ret
