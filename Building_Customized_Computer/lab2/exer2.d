
exer2:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	1141                	addi	sp,sp,-16
   100ea:	4581                	li	a1,0
   100ec:	e022                	sd	s0,0(sp)
   100ee:	e406                	sd	ra,8(sp)
   100f0:	842a                	mv	s0,a0
   100f2:	7b9020ef          	jal	ra,130aa <__call_exitprocs>
   100f6:	6301b503          	ld	a0,1584(gp) # 1f728 <_global_impure_ptr>
   100fa:	6d3c                	ld	a5,88(a0)
   100fc:	c391                	beqz	a5,10100 <exit+0x18>
   100fe:	9782                	jalr	a5
   10100:	8522                	mv	a0,s0
   10102:	7070a0ef          	jal	ra,1b008 <_exit>

0000000000010106 <register_fini>:
   10106:	00000793          	li	a5,0
   1010a:	c791                	beqz	a5,10116 <register_fini+0x10>
   1010c:	654d                	lui	a0,0x13
   1010e:	47850513          	addi	a0,a0,1144 # 13478 <__libc_fini_array>
   10112:	05a0306f          	j	1316c <atexit>
   10116:	8082                	ret

0000000000010118 <_start>:
   10118:	0000f197          	auipc	gp,0xf
   1011c:	fe018193          	addi	gp,gp,-32 # 1f0f8 <__global_pointer$>
   10120:	66018513          	addi	a0,gp,1632 # 1f758 <expected_ra>
   10124:	0000f617          	auipc	a2,0xf
   10128:	7d460613          	addi	a2,a2,2004 # 1f8f8 <__BSS_END__>
   1012c:	8e09                	sub	a2,a2,a0
   1012e:	4581                	li	a1,0
   10130:	5d3000ef          	jal	ra,10f02 <memset>
   10134:	00003517          	auipc	a0,0x3
   10138:	03850513          	addi	a0,a0,56 # 1316c <atexit>
   1013c:	c519                	beqz	a0,1014a <_start+0x32>
   1013e:	00003517          	auipc	a0,0x3
   10142:	33a50513          	addi	a0,a0,826 # 13478 <__libc_fini_array>
   10146:	026030ef          	jal	ra,1316c <atexit>
   1014a:	5ae000ef          	jal	ra,106f8 <__libc_init_array>
   1014e:	4502                	lw	a0,0(sp)
   10150:	002c                	addi	a1,sp,8
   10152:	4601                	li	a2,0
   10154:	0e4000ef          	jal	ra,10238 <main>
   10158:	bf41                	j	100e8 <exit>

000000000001015a <__do_global_dtors_aux>:
   1015a:	1141                	addi	sp,sp,-16
   1015c:	e022                	sd	s0,0(sp)
   1015e:	6a01c783          	lbu	a5,1696(gp) # 1f798 <completed.1>
   10162:	e406                	sd	ra,8(sp)
   10164:	ef91                	bnez	a5,10180 <__do_global_dtors_aux+0x26>
   10166:	00000793          	li	a5,0
   1016a:	cb81                	beqz	a5,1017a <__do_global_dtors_aux+0x20>
   1016c:	6579                	lui	a0,0x1e
   1016e:	5d850513          	addi	a0,a0,1496 # 1e5d8 <__FRAME_END__>
   10172:	00000097          	auipc	ra,0x0
   10176:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   1017a:	4785                	li	a5,1
   1017c:	6af18023          	sb	a5,1696(gp) # 1f798 <completed.1>
   10180:	60a2                	ld	ra,8(sp)
   10182:	6402                	ld	s0,0(sp)
   10184:	0141                	addi	sp,sp,16
   10186:	8082                	ret

0000000000010188 <frame_dummy>:
   10188:	00000793          	li	a5,0
   1018c:	cb91                	beqz	a5,101a0 <frame_dummy+0x18>
   1018e:	6579                	lui	a0,0x1e
   10190:	6a818593          	addi	a1,gp,1704 # 1f7a0 <object.0>
   10194:	5d850513          	addi	a0,a0,1496 # 1e5d8 <__FRAME_END__>
   10198:	00000317          	auipc	t1,0x0
   1019c:	00000067          	jr	zero # 0 <exit-0x100e8>
   101a0:	8082                	ret

00000000000101a2 <print_secret>:
   101a2:	1141                	addi	sp,sp,-16
   101a4:	e406                	sd	ra,8(sp)
   101a6:	e022                	sd	s0,0(sp)
   101a8:	0800                	addi	s0,sp,16
   101aa:	6401b783          	ld	a5,1600(gp) # 1f738 <secret>
   101ae:	85be                	mv	a1,a5
   101b0:	67f1                	lui	a5,0x1c
   101b2:	68878513          	addi	a0,a5,1672 # 1c688 <__clzdi2+0x48>
   101b6:	61d000ef          	jal	ra,10fd2 <printf>
   101ba:	4501                	li	a0,0
   101bc:	f2dff0ef          	jal	ra,100e8 <exit>

00000000000101c0 <receive_input>:
   101c0:	7175                	addi	sp,sp,-144
   101c2:	e506                	sd	ra,136(sp)
   101c4:	e122                	sd	s0,128(sp)
   101c6:	0900                	addi	s0,sp,144
   101c8:	8706                	mv	a4,ra
   101ca:	66e1b023          	sd	a4,1632(gp) # 1f758 <expected_ra>
   101ce:	6481b783          	ld	a5,1608(gp) # 1f740 <_impure_ptr>
   101d2:	679c                	ld	a5,8(a5)
   101d4:	863e                	mv	a2,a5
   101d6:	10000593          	li	a1,256
   101da:	6d818513          	addi	a0,gp,1752 # 1f7d0 <buffer>
   101de:	17c000ef          	jal	ra,1035a <fgets>
   101e2:	f7040713          	addi	a4,s0,-144
   101e6:	6d818593          	addi	a1,gp,1752 # 1f7d0 <buffer>
   101ea:	853a                	mv	a0,a4
   101ec:	122010ef          	jal	ra,1130e <strcpy>
   101f0:	0001                	nop
   101f2:	60aa                	ld	ra,136(sp)
   101f4:	640a                	ld	s0,128(sp)
   101f6:	6149                	addi	sp,sp,144
   101f8:	6601b703          	ld	a4,1632(gp) # 1f758 <expected_ra>
   101fc:	00170763          	beq	a4,ra,1020a <NORMAL>
   10200:	8506                	mv	a0,ra
   10202:	072000ef          	jal	ra,10274 <report_error>
   10206:	6601b083          	ld	ra,1632(gp) # 1f758 <expected_ra>

000000000001020a <NORMAL>:
   1020a:	8082                	ret

000000000001020c <run>:
   1020c:	1141                	addi	sp,sp,-16
   1020e:	e406                	sd	ra,8(sp)
   10210:	e022                	sd	s0,0(sp)
   10212:	0800                	addi	s0,sp,16
   10214:	67f1                	lui	a5,0x1c
   10216:	69078513          	addi	a0,a5,1680 # 1c690 <__clzdi2+0x50>
   1021a:	663000ef          	jal	ra,1107c <puts>
   1021e:	fa3ff0ef          	jal	ra,101c0 <receive_input>
   10222:	67f1                	lui	a5,0x1c
   10224:	6b078513          	addi	a0,a5,1712 # 1c6b0 <__clzdi2+0x70>
   10228:	655000ef          	jal	ra,1107c <puts>
   1022c:	0001                	nop
   1022e:	853e                	mv	a0,a5
   10230:	60a2                	ld	ra,8(sp)
   10232:	6402                	ld	s0,0(sp)
   10234:	0141                	addi	sp,sp,16
   10236:	8082                	ret

0000000000010238 <main>:
   10238:	1141                	addi	sp,sp,-16
   1023a:	e406                	sd	ra,8(sp)
   1023c:	e022                	sd	s0,0(sp)
   1023e:	0800                	addi	s0,sp,16
   10240:	fcdff0ef          	jal	ra,1020c <run>
   10244:	4781                	li	a5,0
   10246:	853e                	mv	a0,a5
   10248:	60a2                	ld	ra,8(sp)
   1024a:	6402                	ld	s0,0(sp)
   1024c:	0141                	addi	sp,sp,16
   1024e:	8082                	ret

0000000000010250 <alloc>:
   10250:	1101                	addi	sp,sp,-32
   10252:	ec06                	sd	ra,24(sp)
   10254:	e822                	sd	s0,16(sp)
   10256:	1000                	addi	s0,sp,32
   10258:	40000513          	li	a0,1024
   1025c:	506000ef          	jal	ra,10762 <malloc>
   10260:	87aa                	mv	a5,a0
   10262:	fef43423          	sd	a5,-24(s0)
   10266:	fe843783          	ld	a5,-24(s0)
   1026a:	853e                	mv	a0,a5
   1026c:	60e2                	ld	ra,24(sp)
   1026e:	6442                	ld	s0,16(sp)
   10270:	6105                	addi	sp,sp,32
   10272:	8082                	ret

0000000000010274 <report_error>:
   10274:	1101                	addi	sp,sp,-32
   10276:	ec06                	sd	ra,24(sp)
   10278:	e822                	sd	s0,16(sp)
   1027a:	1000                	addi	s0,sp,32
   1027c:	fea43423          	sd	a0,-24(s0)
   10280:	fe843583          	ld	a1,-24(s0)
   10284:	67f1                	lui	a5,0x1c
   10286:	6c878513          	addi	a0,a5,1736 # 1c6c8 <__clzdi2+0x88>
   1028a:	549000ef          	jal	ra,10fd2 <printf>
   1028e:	0001                	nop
   10290:	60e2                	ld	ra,24(sp)
   10292:	6442                	ld	s0,16(sp)
   10294:	6105                	addi	sp,sp,32
   10296:	8082                	ret

0000000000010298 <_fgets_r>:
   10298:	4785                	li	a5,1
   1029a:	0ac7de63          	bge	a5,a2,10356 <_fgets_r+0xbe>
   1029e:	7139                	addi	sp,sp,-64
   102a0:	f822                	sd	s0,48(sp)
   102a2:	f04a                	sd	s2,32(sp)
   102a4:	ec4e                	sd	s3,24(sp)
   102a6:	e852                	sd	s4,16(sp)
   102a8:	fc06                	sd	ra,56(sp)
   102aa:	f426                	sd	s1,40(sp)
   102ac:	e456                	sd	s5,8(sp)
   102ae:	e05a                	sd	s6,0(sp)
   102b0:	8932                	mv	s2,a2
   102b2:	8a2a                	mv	s4,a0
   102b4:	89ae                	mv	s3,a1
   102b6:	8436                	mv	s0,a3
   102b8:	c119                	beqz	a0,102be <_fgets_r+0x26>
   102ba:	493c                	lw	a5,80(a0)
   102bc:	cbc1                	beqz	a5,1034c <_fgets_r+0xb4>
   102be:	397d                	addiw	s2,s2,-1
   102c0:	8ace                	mv	s5,s3
   102c2:	a819                	j	102d8 <_fgets_r+0x40>
   102c4:	601c                	ld	a5,0(s0)
   102c6:	9f05                	subw	a4,a4,s1
   102c8:	c418                	sw	a4,8(s0)
   102ca:	97a6                	add	a5,a5,s1
   102cc:	e01c                	sd	a5,0(s0)
   102ce:	9aa6                	add	s5,s5,s1
   102d0:	34b000ef          	jal	ra,10e1a <memcpy>
   102d4:	04090f63          	beqz	s2,10332 <_fgets_r+0x9a>
   102d8:	441c                	lw	a5,8(s0)
   102da:	85a2                	mv	a1,s0
   102dc:	8552                	mv	a0,s4
   102de:	e789                	bnez	a5,102e8 <_fgets_r+0x50>
   102e0:	5b9000ef          	jal	ra,11098 <__srefill_r>
   102e4:	e529                	bnez	a0,1032e <_fgets_r+0x96>
   102e6:	441c                	lw	a5,8(s0)
   102e8:	00043b03          	ld	s6,0(s0)
   102ec:	45a9                	li	a1,10
   102ee:	84ca                	mv	s1,s2
   102f0:	0127f363          	bgeu	a5,s2,102f6 <_fgets_r+0x5e>
   102f4:	84be                	mv	s1,a5
   102f6:	8626                	mv	a2,s1
   102f8:	855a                	mv	a0,s6
   102fa:	293000ef          	jal	ra,10d8c <memchr>
   102fe:	0004871b          	sext.w	a4,s1
   10302:	87aa                	mv	a5,a0
   10304:	40e9093b          	subw	s2,s2,a4
   10308:	8556                	mv	a0,s5
   1030a:	4418                	lw	a4,8(s0)
   1030c:	8626                	mv	a2,s1
   1030e:	85da                	mv	a1,s6
   10310:	dbd5                	beqz	a5,102c4 <_fgets_r+0x2c>
   10312:	0785                	addi	a5,a5,1
   10314:	416784b3          	sub	s1,a5,s6
   10318:	9f05                	subw	a4,a4,s1
   1031a:	8626                	mv	a2,s1
   1031c:	c418                	sw	a4,8(s0)
   1031e:	e01c                	sd	a5,0(s0)
   10320:	2fb000ef          	jal	ra,10e1a <memcpy>
   10324:	94d6                	add	s1,s1,s5
   10326:	00048023          	sb	zero,0(s1)
   1032a:	854e                	mv	a0,s3
   1032c:	a031                	j	10338 <_fgets_r+0xa0>
   1032e:	033a8263          	beq	s5,s3,10352 <_fgets_r+0xba>
   10332:	000a8023          	sb	zero,0(s5)
   10336:	854e                	mv	a0,s3
   10338:	70e2                	ld	ra,56(sp)
   1033a:	7442                	ld	s0,48(sp)
   1033c:	74a2                	ld	s1,40(sp)
   1033e:	7902                	ld	s2,32(sp)
   10340:	69e2                	ld	s3,24(sp)
   10342:	6a42                	ld	s4,16(sp)
   10344:	6aa2                	ld	s5,8(sp)
   10346:	6b02                	ld	s6,0(sp)
   10348:	6121                	addi	sp,sp,64
   1034a:	8082                	ret
   1034c:	278000ef          	jal	ra,105c4 <__sinit>
   10350:	b7bd                	j	102be <_fgets_r+0x26>
   10352:	4501                	li	a0,0
   10354:	b7d5                	j	10338 <_fgets_r+0xa0>
   10356:	4501                	li	a0,0
   10358:	8082                	ret

000000000001035a <fgets>:
   1035a:	87aa                	mv	a5,a0
   1035c:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   10360:	86b2                	mv	a3,a2
   10362:	862e                	mv	a2,a1
   10364:	85be                	mv	a1,a5
   10366:	bf0d                	j	10298 <_fgets_r>

0000000000010368 <__fp_lock>:
   10368:	4501                	li	a0,0
   1036a:	8082                	ret

000000000001036c <_cleanup_r>:
   1036c:	65cd                	lui	a1,0x13
   1036e:	1ae58593          	addi	a1,a1,430 # 131ae <_fclose_r>
   10372:	acf5                	j	1066e <_fwalk_reent>

0000000000010374 <__fp_unlock>:
   10374:	4501                	li	a0,0
   10376:	8082                	ret

0000000000010378 <__sinit.part.0>:
   10378:	7139                	addi	sp,sp,-64
   1037a:	67c1                	lui	a5,0x10
   1037c:	fc06                	sd	ra,56(sp)
   1037e:	f822                	sd	s0,48(sp)
   10380:	f426                	sd	s1,40(sp)
   10382:	f04a                	sd	s2,32(sp)
   10384:	ec4e                	sd	s3,24(sp)
   10386:	e852                	sd	s4,16(sp)
   10388:	e456                	sd	s5,8(sp)
   1038a:	e05a                	sd	s6,0(sp)
   1038c:	6500                	ld	s0,8(a0)
   1038e:	36c78793          	addi	a5,a5,876 # 1036c <_cleanup_r>
   10392:	ed3c                	sd	a5,88(a0)
   10394:	53850713          	addi	a4,a0,1336
   10398:	478d                	li	a5,3
   1039a:	52e53823          	sd	a4,1328(a0)
   1039e:	52f52423          	sw	a5,1320(a0)
   103a2:	52053023          	sd	zero,1312(a0)
   103a6:	4791                	li	a5,4
   103a8:	892a                	mv	s2,a0
   103aa:	c81c                	sw	a5,16(s0)
   103ac:	4621                	li	a2,8
   103ae:	4581                	li	a1,0
   103b0:	0a042623          	sw	zero,172(s0)
   103b4:	00043023          	sd	zero,0(s0)
   103b8:	00043423          	sd	zero,8(s0)
   103bc:	00043c23          	sd	zero,24(s0)
   103c0:	02042023          	sw	zero,32(s0)
   103c4:	02042423          	sw	zero,40(s0)
   103c8:	0a440513          	addi	a0,s0,164
   103cc:	337000ef          	jal	ra,10f02 <memset>
   103d0:	6b45                	lui	s6,0x11
   103d2:	01093483          	ld	s1,16(s2)
   103d6:	6ac5                	lui	s5,0x11
   103d8:	6a45                	lui	s4,0x11
   103da:	69c5                	lui	s3,0x11
   103dc:	234b0b13          	addi	s6,s6,564 # 11234 <__sread>
   103e0:	270a8a93          	addi	s5,s5,624 # 11270 <__swrite>
   103e4:	2c4a0a13          	addi	s4,s4,708 # 112c4 <__sseek>
   103e8:	30698993          	addi	s3,s3,774 # 11306 <__sclose>
   103ec:	67c1                	lui	a5,0x10
   103ee:	03643c23          	sd	s6,56(s0)
   103f2:	05543023          	sd	s5,64(s0)
   103f6:	05443423          	sd	s4,72(s0)
   103fa:	05343823          	sd	s3,80(s0)
   103fe:	f800                	sd	s0,48(s0)
   10400:	07a5                	addi	a5,a5,9 # 10009 <exit-0xdf>
   10402:	c89c                	sw	a5,16(s1)
   10404:	4621                	li	a2,8
   10406:	4581                	li	a1,0
   10408:	0a04a623          	sw	zero,172(s1)
   1040c:	0004b023          	sd	zero,0(s1)
   10410:	0004b423          	sd	zero,8(s1)
   10414:	0004bc23          	sd	zero,24(s1)
   10418:	0204a023          	sw	zero,32(s1)
   1041c:	0204a423          	sw	zero,40(s1)
   10420:	0a448513          	addi	a0,s1,164
   10424:	2df000ef          	jal	ra,10f02 <memset>
   10428:	01893403          	ld	s0,24(s2)
   1042c:	000207b7          	lui	a5,0x20
   10430:	0364bc23          	sd	s6,56(s1)
   10434:	0554b023          	sd	s5,64(s1)
   10438:	0544b423          	sd	s4,72(s1)
   1043c:	0534b823          	sd	s3,80(s1)
   10440:	f884                	sd	s1,48(s1)
   10442:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x71a>
   10444:	c81c                	sw	a5,16(s0)
   10446:	0a042623          	sw	zero,172(s0)
   1044a:	00043023          	sd	zero,0(s0)
   1044e:	00043423          	sd	zero,8(s0)
   10452:	00043c23          	sd	zero,24(s0)
   10456:	02042023          	sw	zero,32(s0)
   1045a:	02042423          	sw	zero,40(s0)
   1045e:	0a440513          	addi	a0,s0,164
   10462:	4621                	li	a2,8
   10464:	4581                	li	a1,0
   10466:	29d000ef          	jal	ra,10f02 <memset>
   1046a:	70e2                	ld	ra,56(sp)
   1046c:	03643c23          	sd	s6,56(s0)
   10470:	05543023          	sd	s5,64(s0)
   10474:	05443423          	sd	s4,72(s0)
   10478:	05343823          	sd	s3,80(s0)
   1047c:	f800                	sd	s0,48(s0)
   1047e:	7442                	ld	s0,48(sp)
   10480:	4785                	li	a5,1
   10482:	04f92823          	sw	a5,80(s2)
   10486:	74a2                	ld	s1,40(sp)
   10488:	7902                	ld	s2,32(sp)
   1048a:	69e2                	ld	s3,24(sp)
   1048c:	6a42                	ld	s4,16(sp)
   1048e:	6aa2                	ld	s5,8(sp)
   10490:	6b02                	ld	s6,0(sp)
   10492:	6121                	addi	sp,sp,64
   10494:	8082                	ret

0000000000010496 <__sfmoreglue>:
   10496:	1101                	addi	sp,sp,-32
   10498:	e426                	sd	s1,8(sp)
   1049a:	0b000793          	li	a5,176
   1049e:	fff5849b          	addiw	s1,a1,-1
   104a2:	02f484b3          	mul	s1,s1,a5
   104a6:	e04a                	sd	s2,0(sp)
   104a8:	892e                	mv	s2,a1
   104aa:	e822                	sd	s0,16(sp)
   104ac:	ec06                	sd	ra,24(sp)
   104ae:	0c848593          	addi	a1,s1,200
   104b2:	2c2000ef          	jal	ra,10774 <_malloc_r>
   104b6:	842a                	mv	s0,a0
   104b8:	cd01                	beqz	a0,104d0 <__sfmoreglue+0x3a>
   104ba:	0561                	addi	a0,a0,24
   104bc:	00043023          	sd	zero,0(s0)
   104c0:	01242423          	sw	s2,8(s0)
   104c4:	e808                	sd	a0,16(s0)
   104c6:	0b048613          	addi	a2,s1,176
   104ca:	4581                	li	a1,0
   104cc:	237000ef          	jal	ra,10f02 <memset>
   104d0:	60e2                	ld	ra,24(sp)
   104d2:	8522                	mv	a0,s0
   104d4:	6442                	ld	s0,16(sp)
   104d6:	64a2                	ld	s1,8(sp)
   104d8:	6902                	ld	s2,0(sp)
   104da:	6105                	addi	sp,sp,32
   104dc:	8082                	ret

00000000000104de <__sfp>:
   104de:	7179                	addi	sp,sp,-48
   104e0:	ec26                	sd	s1,24(sp)
   104e2:	6301b483          	ld	s1,1584(gp) # 1f728 <_global_impure_ptr>
   104e6:	e84a                	sd	s2,16(sp)
   104e8:	f406                	sd	ra,40(sp)
   104ea:	48bc                	lw	a5,80(s1)
   104ec:	f022                	sd	s0,32(sp)
   104ee:	e44e                	sd	s3,8(sp)
   104f0:	e052                	sd	s4,0(sp)
   104f2:	892a                	mv	s2,a0
   104f4:	c3d9                	beqz	a5,1057a <__sfp+0x9c>
   104f6:	52048493          	addi	s1,s1,1312
   104fa:	0b000993          	li	s3,176
   104fe:	4a11                	li	s4,4
   10500:	449c                	lw	a5,8(s1)
   10502:	6880                	ld	s0,16(s1)
   10504:	06f05763          	blez	a5,10572 <__sfp+0x94>
   10508:	37fd                	addiw	a5,a5,-1
   1050a:	1782                	slli	a5,a5,0x20
   1050c:	9381                	srli	a5,a5,0x20
   1050e:	0785                	addi	a5,a5,1
   10510:	033787b3          	mul	a5,a5,s3
   10514:	97a2                	add	a5,a5,s0
   10516:	a029                	j	10520 <__sfp+0x42>
   10518:	0b040413          	addi	s0,s0,176
   1051c:	04f40b63          	beq	s0,a5,10572 <__sfp+0x94>
   10520:	01041703          	lh	a4,16(s0)
   10524:	fb75                	bnez	a4,10518 <__sfp+0x3a>
   10526:	77c1                	lui	a5,0xffff0
   10528:	0785                	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffd0709>
   1052a:	0a042623          	sw	zero,172(s0)
   1052e:	00043023          	sd	zero,0(s0)
   10532:	00043423          	sd	zero,8(s0)
   10536:	c81c                	sw	a5,16(s0)
   10538:	00043c23          	sd	zero,24(s0)
   1053c:	02042023          	sw	zero,32(s0)
   10540:	02042423          	sw	zero,40(s0)
   10544:	4621                	li	a2,8
   10546:	4581                	li	a1,0
   10548:	0a440513          	addi	a0,s0,164
   1054c:	1b7000ef          	jal	ra,10f02 <memset>
   10550:	04043c23          	sd	zero,88(s0)
   10554:	06042023          	sw	zero,96(s0)
   10558:	06043c23          	sd	zero,120(s0)
   1055c:	08042023          	sw	zero,128(s0)
   10560:	70a2                	ld	ra,40(sp)
   10562:	8522                	mv	a0,s0
   10564:	7402                	ld	s0,32(sp)
   10566:	64e2                	ld	s1,24(sp)
   10568:	6942                	ld	s2,16(sp)
   1056a:	69a2                	ld	s3,8(sp)
   1056c:	6a02                	ld	s4,0(sp)
   1056e:	6145                	addi	sp,sp,48
   10570:	8082                	ret
   10572:	6080                	ld	s0,0(s1)
   10574:	c419                	beqz	s0,10582 <__sfp+0xa4>
   10576:	84a2                	mv	s1,s0
   10578:	b761                	j	10500 <__sfp+0x22>
   1057a:	8526                	mv	a0,s1
   1057c:	dfdff0ef          	jal	ra,10378 <__sinit.part.0>
   10580:	bf9d                	j	104f6 <__sfp+0x18>
   10582:	2d800593          	li	a1,728
   10586:	854a                	mv	a0,s2
   10588:	1ec000ef          	jal	ra,10774 <_malloc_r>
   1058c:	842a                	mv	s0,a0
   1058e:	cd19                	beqz	a0,105ac <__sfp+0xce>
   10590:	0561                	addi	a0,a0,24
   10592:	00043023          	sd	zero,0(s0)
   10596:	01442423          	sw	s4,8(s0)
   1059a:	e808                	sd	a0,16(s0)
   1059c:	2c000613          	li	a2,704
   105a0:	4581                	li	a1,0
   105a2:	161000ef          	jal	ra,10f02 <memset>
   105a6:	e080                	sd	s0,0(s1)
   105a8:	84a2                	mv	s1,s0
   105aa:	bf99                	j	10500 <__sfp+0x22>
   105ac:	0004b023          	sd	zero,0(s1)
   105b0:	47b1                	li	a5,12
   105b2:	00f92023          	sw	a5,0(s2)
   105b6:	b76d                	j	10560 <__sfp+0x82>

00000000000105b8 <_cleanup>:
   105b8:	6301b503          	ld	a0,1584(gp) # 1f728 <_global_impure_ptr>
   105bc:	65cd                	lui	a1,0x13
   105be:	1ae58593          	addi	a1,a1,430 # 131ae <_fclose_r>
   105c2:	a075                	j	1066e <_fwalk_reent>

00000000000105c4 <__sinit>:
   105c4:	493c                	lw	a5,80(a0)
   105c6:	c391                	beqz	a5,105ca <__sinit+0x6>
   105c8:	8082                	ret
   105ca:	b37d                	j	10378 <__sinit.part.0>

00000000000105cc <__sfp_lock_acquire>:
   105cc:	8082                	ret

00000000000105ce <__sfp_lock_release>:
   105ce:	8082                	ret

00000000000105d0 <__sinit_lock_acquire>:
   105d0:	8082                	ret

00000000000105d2 <__sinit_lock_release>:
   105d2:	8082                	ret

00000000000105d4 <__fp_lock_all>:
   105d4:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   105d8:	65c1                	lui	a1,0x10
   105da:	36858593          	addi	a1,a1,872 # 10368 <__fp_lock>
   105de:	a039                	j	105ec <_fwalk>

00000000000105e0 <__fp_unlock_all>:
   105e0:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   105e4:	65c1                	lui	a1,0x10
   105e6:	37458593          	addi	a1,a1,884 # 10374 <__fp_unlock>
   105ea:	a009                	j	105ec <_fwalk>

00000000000105ec <_fwalk>:
   105ec:	715d                	addi	sp,sp,-80
   105ee:	f84a                	sd	s2,48(sp)
   105f0:	f44e                	sd	s3,40(sp)
   105f2:	f052                	sd	s4,32(sp)
   105f4:	ec56                	sd	s5,24(sp)
   105f6:	e85a                	sd	s6,16(sp)
   105f8:	e45e                	sd	s7,8(sp)
   105fa:	e486                	sd	ra,72(sp)
   105fc:	e0a2                	sd	s0,64(sp)
   105fe:	fc26                	sd	s1,56(sp)
   10600:	8a2e                	mv	s4,a1
   10602:	52050913          	addi	s2,a0,1312
   10606:	4b01                	li	s6,0
   10608:	0b000a93          	li	s5,176
   1060c:	4b85                	li	s7,1
   1060e:	59fd                	li	s3,-1
   10610:	00892783          	lw	a5,8(s2)
   10614:	01093403          	ld	s0,16(s2)
   10618:	02f05b63          	blez	a5,1064e <_fwalk+0x62>
   1061c:	fff7849b          	addiw	s1,a5,-1
   10620:	1482                	slli	s1,s1,0x20
   10622:	9081                	srli	s1,s1,0x20
   10624:	0485                	addi	s1,s1,1
   10626:	035484b3          	mul	s1,s1,s5
   1062a:	94a2                	add	s1,s1,s0
   1062c:	01045783          	lhu	a5,16(s0)
   10630:	00fbfb63          	bgeu	s7,a5,10646 <_fwalk+0x5a>
   10634:	01241783          	lh	a5,18(s0)
   10638:	8522                	mv	a0,s0
   1063a:	01378663          	beq	a5,s3,10646 <_fwalk+0x5a>
   1063e:	9a02                	jalr	s4
   10640:	01656b33          	or	s6,a0,s6
   10644:	2b01                	sext.w	s6,s6
   10646:	0b040413          	addi	s0,s0,176
   1064a:	fe8491e3          	bne	s1,s0,1062c <_fwalk+0x40>
   1064e:	00093903          	ld	s2,0(s2)
   10652:	fa091fe3          	bnez	s2,10610 <_fwalk+0x24>
   10656:	60a6                	ld	ra,72(sp)
   10658:	6406                	ld	s0,64(sp)
   1065a:	74e2                	ld	s1,56(sp)
   1065c:	7942                	ld	s2,48(sp)
   1065e:	79a2                	ld	s3,40(sp)
   10660:	7a02                	ld	s4,32(sp)
   10662:	6ae2                	ld	s5,24(sp)
   10664:	6ba2                	ld	s7,8(sp)
   10666:	855a                	mv	a0,s6
   10668:	6b42                	ld	s6,16(sp)
   1066a:	6161                	addi	sp,sp,80
   1066c:	8082                	ret

000000000001066e <_fwalk_reent>:
   1066e:	715d                	addi	sp,sp,-80
   10670:	f84a                	sd	s2,48(sp)
   10672:	f44e                	sd	s3,40(sp)
   10674:	f052                	sd	s4,32(sp)
   10676:	ec56                	sd	s5,24(sp)
   10678:	e85a                	sd	s6,16(sp)
   1067a:	e45e                	sd	s7,8(sp)
   1067c:	e062                	sd	s8,0(sp)
   1067e:	e486                	sd	ra,72(sp)
   10680:	e0a2                	sd	s0,64(sp)
   10682:	fc26                	sd	s1,56(sp)
   10684:	8c2a                	mv	s8,a0
   10686:	8a2e                	mv	s4,a1
   10688:	52050913          	addi	s2,a0,1312
   1068c:	4b01                	li	s6,0
   1068e:	0b000a93          	li	s5,176
   10692:	4b85                	li	s7,1
   10694:	59fd                	li	s3,-1
   10696:	00892783          	lw	a5,8(s2)
   1069a:	01093403          	ld	s0,16(s2)
   1069e:	02f05c63          	blez	a5,106d6 <_fwalk_reent+0x68>
   106a2:	fff7849b          	addiw	s1,a5,-1
   106a6:	1482                	slli	s1,s1,0x20
   106a8:	9081                	srli	s1,s1,0x20
   106aa:	0485                	addi	s1,s1,1
   106ac:	035484b3          	mul	s1,s1,s5
   106b0:	94a2                	add	s1,s1,s0
   106b2:	01045783          	lhu	a5,16(s0)
   106b6:	00fbfc63          	bgeu	s7,a5,106ce <_fwalk_reent+0x60>
   106ba:	01241783          	lh	a5,18(s0)
   106be:	85a2                	mv	a1,s0
   106c0:	8562                	mv	a0,s8
   106c2:	01378663          	beq	a5,s3,106ce <_fwalk_reent+0x60>
   106c6:	9a02                	jalr	s4
   106c8:	01656b33          	or	s6,a0,s6
   106cc:	2b01                	sext.w	s6,s6
   106ce:	0b040413          	addi	s0,s0,176
   106d2:	fe8490e3          	bne	s1,s0,106b2 <_fwalk_reent+0x44>
   106d6:	00093903          	ld	s2,0(s2)
   106da:	fa091ee3          	bnez	s2,10696 <_fwalk_reent+0x28>
   106de:	60a6                	ld	ra,72(sp)
   106e0:	6406                	ld	s0,64(sp)
   106e2:	74e2                	ld	s1,56(sp)
   106e4:	7942                	ld	s2,48(sp)
   106e6:	79a2                	ld	s3,40(sp)
   106e8:	7a02                	ld	s4,32(sp)
   106ea:	6ae2                	ld	s5,24(sp)
   106ec:	6ba2                	ld	s7,8(sp)
   106ee:	6c02                	ld	s8,0(sp)
   106f0:	855a                	mv	a0,s6
   106f2:	6b42                	ld	s6,16(sp)
   106f4:	6161                	addi	sp,sp,80
   106f6:	8082                	ret

00000000000106f8 <__libc_init_array>:
   106f8:	1101                	addi	sp,sp,-32
   106fa:	e822                	sd	s0,16(sp)
   106fc:	e04a                	sd	s2,0(sp)
   106fe:	6479                	lui	s0,0x1e
   10700:	6979                	lui	s2,0x1e
   10702:	5dc40793          	addi	a5,s0,1500 # 1e5dc <__preinit_array_end>
   10706:	5dc90913          	addi	s2,s2,1500 # 1e5dc <__preinit_array_end>
   1070a:	40f90933          	sub	s2,s2,a5
   1070e:	ec06                	sd	ra,24(sp)
   10710:	e426                	sd	s1,8(sp)
   10712:	40395913          	srai	s2,s2,0x3
   10716:	00090b63          	beqz	s2,1072c <__libc_init_array+0x34>
   1071a:	5dc40413          	addi	s0,s0,1500
   1071e:	4481                	li	s1,0
   10720:	601c                	ld	a5,0(s0)
   10722:	0485                	addi	s1,s1,1
   10724:	0421                	addi	s0,s0,8
   10726:	9782                	jalr	a5
   10728:	fe991ce3          	bne	s2,s1,10720 <__libc_init_array+0x28>
   1072c:	6479                	lui	s0,0x1e
   1072e:	6979                	lui	s2,0x1e
   10730:	5e040793          	addi	a5,s0,1504 # 1e5e0 <__init_array_start>
   10734:	5f090913          	addi	s2,s2,1520 # 1e5f0 <__do_global_dtors_aux_fini_array_entry>
   10738:	40f90933          	sub	s2,s2,a5
   1073c:	40395913          	srai	s2,s2,0x3
   10740:	00090b63          	beqz	s2,10756 <__libc_init_array+0x5e>
   10744:	5e040413          	addi	s0,s0,1504
   10748:	4481                	li	s1,0
   1074a:	601c                	ld	a5,0(s0)
   1074c:	0485                	addi	s1,s1,1
   1074e:	0421                	addi	s0,s0,8
   10750:	9782                	jalr	a5
   10752:	fe991ce3          	bne	s2,s1,1074a <__libc_init_array+0x52>
   10756:	60e2                	ld	ra,24(sp)
   10758:	6442                	ld	s0,16(sp)
   1075a:	64a2                	ld	s1,8(sp)
   1075c:	6902                	ld	s2,0(sp)
   1075e:	6105                	addi	sp,sp,32
   10760:	8082                	ret

0000000000010762 <malloc>:
   10762:	85aa                	mv	a1,a0
   10764:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   10768:	a031                	j	10774 <_malloc_r>

000000000001076a <free>:
   1076a:	85aa                	mv	a1,a0
   1076c:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   10770:	6110206f          	j	13580 <_free_r>

0000000000010774 <_malloc_r>:
   10774:	711d                	addi	sp,sp,-96
   10776:	e4a6                	sd	s1,72(sp)
   10778:	e0ca                	sd	s2,64(sp)
   1077a:	ec86                	sd	ra,88(sp)
   1077c:	e8a2                	sd	s0,80(sp)
   1077e:	fc4e                	sd	s3,56(sp)
   10780:	f852                	sd	s4,48(sp)
   10782:	f456                	sd	s5,40(sp)
   10784:	f05a                	sd	s6,32(sp)
   10786:	ec5e                	sd	s7,24(sp)
   10788:	e862                	sd	s8,16(sp)
   1078a:	e466                	sd	s9,8(sp)
   1078c:	01758493          	addi	s1,a1,23
   10790:	02e00793          	li	a5,46
   10794:	892a                	mv	s2,a0
   10796:	0497e863          	bltu	a5,s1,107e6 <_malloc_r+0x72>
   1079a:	02000793          	li	a5,32
   1079e:	1eb7e663          	bltu	a5,a1,1098a <_malloc_r+0x216>
   107a2:	00b000ef          	jal	ra,10fac <__malloc_lock>
   107a6:	02000493          	li	s1,32
   107aa:	05000793          	li	a5,80
   107ae:	4611                	li	a2,4
   107b0:	0001f9b7          	lui	s3,0x1f
   107b4:	d4098993          	addi	s3,s3,-704 # 1ed40 <__malloc_av_>
   107b8:	97ce                	add	a5,a5,s3
   107ba:	6780                	ld	s0,8(a5)
   107bc:	ff078713          	addi	a4,a5,-16
   107c0:	1ee40663          	beq	s0,a4,109ac <_malloc_r+0x238>
   107c4:	641c                	ld	a5,8(s0)
   107c6:	6c14                	ld	a3,24(s0)
   107c8:	6810                	ld	a2,16(s0)
   107ca:	9bf1                	andi	a5,a5,-4
   107cc:	97a2                	add	a5,a5,s0
   107ce:	6798                	ld	a4,8(a5)
   107d0:	ee14                	sd	a3,24(a2)
   107d2:	ea90                	sd	a2,16(a3)
   107d4:	00176713          	ori	a4,a4,1
   107d8:	854a                	mv	a0,s2
   107da:	e798                	sd	a4,8(a5)
   107dc:	7d2000ef          	jal	ra,10fae <__malloc_unlock>
   107e0:	01040513          	addi	a0,s0,16
   107e4:	a27d                	j	10992 <_malloc_r+0x21e>
   107e6:	800007b7          	lui	a5,0x80000
   107ea:	98c1                	andi	s1,s1,-16
   107ec:	fff7c793          	not	a5,a5
   107f0:	1897ed63          	bltu	a5,s1,1098a <_malloc_r+0x216>
   107f4:	18b4eb63          	bltu	s1,a1,1098a <_malloc_r+0x216>
   107f8:	7b4000ef          	jal	ra,10fac <__malloc_lock>
   107fc:	1f700793          	li	a5,503
   10800:	3a97f563          	bgeu	a5,s1,10baa <_malloc_r+0x436>
   10804:	0094d793          	srli	a5,s1,0x9
   10808:	28078163          	beqz	a5,10a8a <_malloc_r+0x316>
   1080c:	4711                	li	a4,4
   1080e:	30f76563          	bltu	a4,a5,10b18 <_malloc_r+0x3a4>
   10812:	0064d793          	srli	a5,s1,0x6
   10816:	0397861b          	addiw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffe0741>
   1081a:	0016169b          	slliw	a3,a2,0x1
   1081e:	0387851b          	addiw	a0,a5,56
   10822:	068e                	slli	a3,a3,0x3
   10824:	0001f9b7          	lui	s3,0x1f
   10828:	d4098993          	addi	s3,s3,-704 # 1ed40 <__malloc_av_>
   1082c:	96ce                	add	a3,a3,s3
   1082e:	6680                	ld	s0,8(a3)
   10830:	16c1                	addi	a3,a3,-16
   10832:	18868163          	beq	a3,s0,109b4 <_malloc_r+0x240>
   10836:	45fd                	li	a1,31
   10838:	a031                	j	10844 <_malloc_r+0xd0>
   1083a:	28075963          	bgez	a4,10acc <_malloc_r+0x358>
   1083e:	6c00                	ld	s0,24(s0)
   10840:	16868a63          	beq	a3,s0,109b4 <_malloc_r+0x240>
   10844:	641c                	ld	a5,8(s0)
   10846:	9bf1                	andi	a5,a5,-4
   10848:	40978733          	sub	a4,a5,s1
   1084c:	fee5d7e3          	bge	a1,a4,1083a <_malloc_r+0xc6>
   10850:	0209b403          	ld	s0,32(s3)
   10854:	0001f837          	lui	a6,0x1f
   10858:	d5080813          	addi	a6,a6,-688 # 1ed50 <__malloc_av_+0x10>
   1085c:	862a                	mv	a2,a0
   1085e:	17041363          	bne	s0,a6,109c4 <_malloc_r+0x250>
   10862:	0089b783          	ld	a5,8(s3)
   10866:	4026571b          	sraiw	a4,a2,0x2
   1086a:	4585                	li	a1,1
   1086c:	00e595b3          	sll	a1,a1,a4
   10870:	1ab7fa63          	bgeu	a5,a1,10a24 <_malloc_r+0x2b0>
   10874:	0109b403          	ld	s0,16(s3)
   10878:	00843a83          	ld	s5,8(s0)
   1087c:	ffcafa93          	andi	s5,s5,-4
   10880:	009ae763          	bltu	s5,s1,1088e <_malloc_r+0x11a>
   10884:	409a87b3          	sub	a5,s5,s1
   10888:	477d                	li	a4,31
   1088a:	22f74263          	blt	a4,a5,10aae <_malloc_r+0x33a>
   1088e:	65018b93          	addi	s7,gp,1616 # 1f748 <__malloc_sbrk_base>
   10892:	6801ba03          	ld	s4,1664(gp) # 1f778 <__malloc_top_pad>
   10896:	000bb703          	ld	a4,0(s7)
   1089a:	57fd                	li	a5,-1
   1089c:	01540c33          	add	s8,s0,s5
   108a0:	9a26                	add	s4,s4,s1
   108a2:	3af70263          	beq	a4,a5,10c46 <_malloc_r+0x4d2>
   108a6:	6785                	lui	a5,0x1
   108a8:	07fd                	addi	a5,a5,31 # 101f <exit-0xf0c9>
   108aa:	9a3e                	add	s4,s4,a5
   108ac:	77fd                	lui	a5,0xfffff
   108ae:	00fa7a33          	and	s4,s4,a5
   108b2:	85d2                	mv	a1,s4
   108b4:	854a                	mv	a0,s2
   108b6:	149000ef          	jal	ra,111fe <_sbrk_r>
   108ba:	57fd                	li	a5,-1
   108bc:	8b2a                	mv	s6,a0
   108be:	30f50b63          	beq	a0,a5,10bd4 <_malloc_r+0x460>
   108c2:	31856763          	bltu	a0,s8,10bd0 <_malloc_r+0x45c>
   108c6:	7d818c93          	addi	s9,gp,2008 # 1f8d0 <__malloc_current_mallinfo>
   108ca:	000ca703          	lw	a4,0(s9)
   108ce:	014707bb          	addw	a5,a4,s4
   108d2:	00fca023          	sw	a5,0(s9)
   108d6:	86be                	mv	a3,a5
   108d8:	3eac0a63          	beq	s8,a0,10ccc <_malloc_r+0x558>
   108dc:	000bb703          	ld	a4,0(s7)
   108e0:	57fd                	li	a5,-1
   108e2:	40f70163          	beq	a4,a5,10ce4 <_malloc_r+0x570>
   108e6:	418b07b3          	sub	a5,s6,s8
   108ea:	9fb5                	addw	a5,a5,a3
   108ec:	00fca023          	sw	a5,0(s9)
   108f0:	00fb7c13          	andi	s8,s6,15
   108f4:	360c0763          	beqz	s8,10c62 <_malloc_r+0x4ee>
   108f8:	6785                	lui	a5,0x1
   108fa:	418b0b33          	sub	s6,s6,s8
   108fe:	01078b93          	addi	s7,a5,16 # 1010 <exit-0xf0d8>
   10902:	0b41                	addi	s6,s6,16
   10904:	418b8bb3          	sub	s7,s7,s8
   10908:	9a5a                	add	s4,s4,s6
   1090a:	17fd                	addi	a5,a5,-1
   1090c:	414b8bb3          	sub	s7,s7,s4
   10910:	00fbfbb3          	and	s7,s7,a5
   10914:	85de                	mv	a1,s7
   10916:	854a                	mv	a0,s2
   10918:	0e7000ef          	jal	ra,111fe <_sbrk_r>
   1091c:	57fd                	li	a5,-1
   1091e:	40f50863          	beq	a0,a5,10d2e <_malloc_r+0x5ba>
   10922:	41650533          	sub	a0,a0,s6
   10926:	000b871b          	sext.w	a4,s7
   1092a:	01750a33          	add	s4,a0,s7
   1092e:	000ca783          	lw	a5,0(s9)
   10932:	0169b823          	sd	s6,16(s3)
   10936:	001a6a13          	ori	s4,s4,1
   1093a:	9fb9                	addw	a5,a5,a4
   1093c:	00fca023          	sw	a5,0(s9)
   10940:	014b3423          	sd	s4,8(s6)
   10944:	3b340363          	beq	s0,s3,10cea <_malloc_r+0x576>
   10948:	467d                	li	a2,31
   1094a:	3b567263          	bgeu	a2,s5,10cee <_malloc_r+0x57a>
   1094e:	6414                	ld	a3,8(s0)
   10950:	fe8a8713          	addi	a4,s5,-24
   10954:	9b41                	andi	a4,a4,-16
   10956:	8a85                	andi	a3,a3,1
   10958:	8ed9                	or	a3,a3,a4
   1095a:	e414                	sd	a3,8(s0)
   1095c:	45a5                	li	a1,9
   1095e:	00e406b3          	add	a3,s0,a4
   10962:	e68c                	sd	a1,8(a3)
   10964:	ea8c                	sd	a1,16(a3)
   10966:	3ce66a63          	bltu	a2,a4,10d3a <_malloc_r+0x5c6>
   1096a:	008b3a03          	ld	s4,8(s6)
   1096e:	845a                	mv	s0,s6
   10970:	67018713          	addi	a4,gp,1648 # 1f768 <__malloc_max_sbrked_mem>
   10974:	6314                	ld	a3,0(a4)
   10976:	00f6f363          	bgeu	a3,a5,1097c <_malloc_r+0x208>
   1097a:	e31c                	sd	a5,0(a4)
   1097c:	67818713          	addi	a4,gp,1656 # 1f770 <__malloc_max_total_mem>
   10980:	6314                	ld	a3,0(a4)
   10982:	24f6fd63          	bgeu	a3,a5,10bdc <_malloc_r+0x468>
   10986:	e31c                	sd	a5,0(a4)
   10988:	ac91                	j	10bdc <_malloc_r+0x468>
   1098a:	47b1                	li	a5,12
   1098c:	00f92023          	sw	a5,0(s2)
   10990:	4501                	li	a0,0
   10992:	60e6                	ld	ra,88(sp)
   10994:	6446                	ld	s0,80(sp)
   10996:	64a6                	ld	s1,72(sp)
   10998:	6906                	ld	s2,64(sp)
   1099a:	79e2                	ld	s3,56(sp)
   1099c:	7a42                	ld	s4,48(sp)
   1099e:	7aa2                	ld	s5,40(sp)
   109a0:	7b02                	ld	s6,32(sp)
   109a2:	6be2                	ld	s7,24(sp)
   109a4:	6c42                	ld	s8,16(sp)
   109a6:	6ca2                	ld	s9,8(sp)
   109a8:	6125                	addi	sp,sp,96
   109aa:	8082                	ret
   109ac:	6f80                	ld	s0,24(a5)
   109ae:	2609                	addiw	a2,a2,2
   109b0:	e0879ae3          	bne	a5,s0,107c4 <_malloc_r+0x50>
   109b4:	0209b403          	ld	s0,32(s3)
   109b8:	0001f837          	lui	a6,0x1f
   109bc:	d5080813          	addi	a6,a6,-688 # 1ed50 <__malloc_av_+0x10>
   109c0:	eb0401e3          	beq	s0,a6,10862 <_malloc_r+0xee>
   109c4:	641c                	ld	a5,8(s0)
   109c6:	46fd                	li	a3,31
   109c8:	9bf1                	andi	a5,a5,-4
   109ca:	40978733          	sub	a4,a5,s1
   109ce:	1ae6c763          	blt	a3,a4,10b7c <_malloc_r+0x408>
   109d2:	0309b423          	sd	a6,40(s3)
   109d6:	0309b023          	sd	a6,32(s3)
   109da:	0a075f63          	bgez	a4,10a98 <_malloc_r+0x324>
   109de:	1ff00713          	li	a4,511
   109e2:	0ef76863          	bltu	a4,a5,10ad2 <_malloc_r+0x35e>
   109e6:	838d                	srli	a5,a5,0x3
   109e8:	0017871b          	addiw	a4,a5,1
   109ec:	0017171b          	slliw	a4,a4,0x1
   109f0:	070e                	slli	a4,a4,0x3
   109f2:	0089b503          	ld	a0,8(s3)
   109f6:	974e                	add	a4,a4,s3
   109f8:	630c                	ld	a1,0(a4)
   109fa:	4027d69b          	sraiw	a3,a5,0x2
   109fe:	4785                	li	a5,1
   10a00:	00d797b3          	sll	a5,a5,a3
   10a04:	8fc9                	or	a5,a5,a0
   10a06:	ff070693          	addi	a3,a4,-16
   10a0a:	ec14                	sd	a3,24(s0)
   10a0c:	e80c                	sd	a1,16(s0)
   10a0e:	00f9b423          	sd	a5,8(s3)
   10a12:	e300                	sd	s0,0(a4)
   10a14:	ed80                	sd	s0,24(a1)
   10a16:	4026571b          	sraiw	a4,a2,0x2
   10a1a:	4585                	li	a1,1
   10a1c:	00e595b3          	sll	a1,a1,a4
   10a20:	e4b7eae3          	bltu	a5,a1,10874 <_malloc_r+0x100>
   10a24:	00f5f733          	and	a4,a1,a5
   10a28:	ef01                	bnez	a4,10a40 <_malloc_r+0x2cc>
   10a2a:	0586                	slli	a1,a1,0x1
   10a2c:	9a71                	andi	a2,a2,-4
   10a2e:	00f5f733          	and	a4,a1,a5
   10a32:	2611                	addiw	a2,a2,4
   10a34:	e711                	bnez	a4,10a40 <_malloc_r+0x2cc>
   10a36:	0586                	slli	a1,a1,0x1
   10a38:	00f5f733          	and	a4,a1,a5
   10a3c:	2611                	addiw	a2,a2,4
   10a3e:	df65                	beqz	a4,10a36 <_malloc_r+0x2c2>
   10a40:	48fd                	li	a7,31
   10a42:	0016031b          	addiw	t1,a2,1
   10a46:	0013131b          	slliw	t1,t1,0x1
   10a4a:	030e                	slli	t1,t1,0x3
   10a4c:	1341                	addi	t1,t1,-16 # 10188 <frame_dummy>
   10a4e:	934e                	add	t1,t1,s3
   10a50:	851a                	mv	a0,t1
   10a52:	6d1c                	ld	a5,24(a0)
   10a54:	8e32                	mv	t3,a2
   10a56:	0ef50263          	beq	a0,a5,10b3a <_malloc_r+0x3c6>
   10a5a:	6798                	ld	a4,8(a5)
   10a5c:	843e                	mv	s0,a5
   10a5e:	6f9c                	ld	a5,24(a5)
   10a60:	9b71                	andi	a4,a4,-4
   10a62:	409706b3          	sub	a3,a4,s1
   10a66:	0ed8c163          	blt	a7,a3,10b48 <_malloc_r+0x3d4>
   10a6a:	fe06c6e3          	bltz	a3,10a56 <_malloc_r+0x2e2>
   10a6e:	9722                	add	a4,a4,s0
   10a70:	6714                	ld	a3,8(a4)
   10a72:	6810                	ld	a2,16(s0)
   10a74:	854a                	mv	a0,s2
   10a76:	0016e693          	ori	a3,a3,1
   10a7a:	e714                	sd	a3,8(a4)
   10a7c:	ee1c                	sd	a5,24(a2)
   10a7e:	eb90                	sd	a2,16(a5)
   10a80:	52e000ef          	jal	ra,10fae <__malloc_unlock>
   10a84:	01040513          	addi	a0,s0,16
   10a88:	b729                	j	10992 <_malloc_r+0x21e>
   10a8a:	40000693          	li	a3,1024
   10a8e:	04000613          	li	a2,64
   10a92:	03f00513          	li	a0,63
   10a96:	b379                	j	10824 <_malloc_r+0xb0>
   10a98:	97a2                	add	a5,a5,s0
   10a9a:	6798                	ld	a4,8(a5)
   10a9c:	854a                	mv	a0,s2
   10a9e:	00176713          	ori	a4,a4,1
   10aa2:	e798                	sd	a4,8(a5)
   10aa4:	50a000ef          	jal	ra,10fae <__malloc_unlock>
   10aa8:	01040513          	addi	a0,s0,16
   10aac:	b5dd                	j	10992 <_malloc_r+0x21e>
   10aae:	0014e713          	ori	a4,s1,1
   10ab2:	e418                	sd	a4,8(s0)
   10ab4:	94a2                	add	s1,s1,s0
   10ab6:	0099b823          	sd	s1,16(s3)
   10aba:	0017e793          	ori	a5,a5,1
   10abe:	854a                	mv	a0,s2
   10ac0:	e49c                	sd	a5,8(s1)
   10ac2:	4ec000ef          	jal	ra,10fae <__malloc_unlock>
   10ac6:	01040513          	addi	a0,s0,16
   10aca:	b5e1                	j	10992 <_malloc_r+0x21e>
   10acc:	6c14                	ld	a3,24(s0)
   10ace:	6810                	ld	a2,16(s0)
   10ad0:	b9f5                	j	107cc <_malloc_r+0x58>
   10ad2:	0097d713          	srli	a4,a5,0x9
   10ad6:	4691                	li	a3,4
   10ad8:	0ee6f263          	bgeu	a3,a4,10bbc <_malloc_r+0x448>
   10adc:	46d1                	li	a3,20
   10ade:	1ae6e263          	bltu	a3,a4,10c82 <_malloc_r+0x50e>
   10ae2:	05c7059b          	addiw	a1,a4,92
   10ae6:	0015959b          	slliw	a1,a1,0x1
   10aea:	05b7069b          	addiw	a3,a4,91
   10aee:	058e                	slli	a1,a1,0x3
   10af0:	95ce                	add	a1,a1,s3
   10af2:	6198                	ld	a4,0(a1)
   10af4:	15c1                	addi	a1,a1,-16
   10af6:	14e58b63          	beq	a1,a4,10c4c <_malloc_r+0x4d8>
   10afa:	6714                	ld	a3,8(a4)
   10afc:	9af1                	andi	a3,a3,-4
   10afe:	00d7f563          	bgeu	a5,a3,10b08 <_malloc_r+0x394>
   10b02:	6b18                	ld	a4,16(a4)
   10b04:	fee59be3          	bne	a1,a4,10afa <_malloc_r+0x386>
   10b08:	6f0c                	ld	a1,24(a4)
   10b0a:	0089b783          	ld	a5,8(s3)
   10b0e:	ec0c                	sd	a1,24(s0)
   10b10:	e818                	sd	a4,16(s0)
   10b12:	e980                	sd	s0,16(a1)
   10b14:	ef00                	sd	s0,24(a4)
   10b16:	b701                	j	10a16 <_malloc_r+0x2a2>
   10b18:	4751                	li	a4,20
   10b1a:	0cf77f63          	bgeu	a4,a5,10bf8 <_malloc_r+0x484>
   10b1e:	05400713          	li	a4,84
   10b22:	16f76e63          	bltu	a4,a5,10c9e <_malloc_r+0x52a>
   10b26:	00c4d793          	srli	a5,s1,0xc
   10b2a:	06f7861b          	addiw	a2,a5,111
   10b2e:	0016169b          	slliw	a3,a2,0x1
   10b32:	06e7851b          	addiw	a0,a5,110
   10b36:	068e                	slli	a3,a3,0x3
   10b38:	b1f5                	j	10824 <_malloc_r+0xb0>
   10b3a:	2e05                	addiw	t3,t3,1
   10b3c:	003e7793          	andi	a5,t3,3
   10b40:	0541                	addi	a0,a0,16
   10b42:	cbe1                	beqz	a5,10c12 <_malloc_r+0x49e>
   10b44:	6d1c                	ld	a5,24(a0)
   10b46:	bf01                	j	10a56 <_malloc_r+0x2e2>
   10b48:	6810                	ld	a2,16(s0)
   10b4a:	0014e593          	ori	a1,s1,1
   10b4e:	e40c                	sd	a1,8(s0)
   10b50:	ee1c                	sd	a5,24(a2)
   10b52:	eb90                	sd	a2,16(a5)
   10b54:	94a2                	add	s1,s1,s0
   10b56:	0299b423          	sd	s1,40(s3)
   10b5a:	0299b023          	sd	s1,32(s3)
   10b5e:	0016e793          	ori	a5,a3,1
   10b62:	0104bc23          	sd	a6,24(s1)
   10b66:	0104b823          	sd	a6,16(s1)
   10b6a:	e49c                	sd	a5,8(s1)
   10b6c:	9722                	add	a4,a4,s0
   10b6e:	854a                	mv	a0,s2
   10b70:	e314                	sd	a3,0(a4)
   10b72:	43c000ef          	jal	ra,10fae <__malloc_unlock>
   10b76:	01040513          	addi	a0,s0,16
   10b7a:	bd21                	j	10992 <_malloc_r+0x21e>
   10b7c:	0014e693          	ori	a3,s1,1
   10b80:	e414                	sd	a3,8(s0)
   10b82:	94a2                	add	s1,s1,s0
   10b84:	0299b423          	sd	s1,40(s3)
   10b88:	0299b023          	sd	s1,32(s3)
   10b8c:	00176693          	ori	a3,a4,1
   10b90:	0104bc23          	sd	a6,24(s1)
   10b94:	0104b823          	sd	a6,16(s1)
   10b98:	e494                	sd	a3,8(s1)
   10b9a:	97a2                	add	a5,a5,s0
   10b9c:	854a                	mv	a0,s2
   10b9e:	e398                	sd	a4,0(a5)
   10ba0:	40e000ef          	jal	ra,10fae <__malloc_unlock>
   10ba4:	01040513          	addi	a0,s0,16
   10ba8:	b3ed                	j	10992 <_malloc_r+0x21e>
   10baa:	0034d613          	srli	a2,s1,0x3
   10bae:	0016079b          	addiw	a5,a2,1
   10bb2:	0017979b          	slliw	a5,a5,0x1
   10bb6:	2601                	sext.w	a2,a2
   10bb8:	078e                	slli	a5,a5,0x3
   10bba:	bedd                	j	107b0 <_malloc_r+0x3c>
   10bbc:	0067d713          	srli	a4,a5,0x6
   10bc0:	0397059b          	addiw	a1,a4,57
   10bc4:	0015959b          	slliw	a1,a1,0x1
   10bc8:	0387069b          	addiw	a3,a4,56
   10bcc:	058e                	slli	a1,a1,0x3
   10bce:	b70d                	j	10af0 <_malloc_r+0x37c>
   10bd0:	0f340563          	beq	s0,s3,10cba <_malloc_r+0x546>
   10bd4:	0109b403          	ld	s0,16(s3)
   10bd8:	00843a03          	ld	s4,8(s0)
   10bdc:	ffca7a13          	andi	s4,s4,-4
   10be0:	409a07b3          	sub	a5,s4,s1
   10be4:	009a6563          	bltu	s4,s1,10bee <_malloc_r+0x47a>
   10be8:	477d                	li	a4,31
   10bea:	ecf742e3          	blt	a4,a5,10aae <_malloc_r+0x33a>
   10bee:	854a                	mv	a0,s2
   10bf0:	3be000ef          	jal	ra,10fae <__malloc_unlock>
   10bf4:	4501                	li	a0,0
   10bf6:	bb71                	j	10992 <_malloc_r+0x21e>
   10bf8:	05c7861b          	addiw	a2,a5,92
   10bfc:	0016169b          	slliw	a3,a2,0x1
   10c00:	05b7851b          	addiw	a0,a5,91
   10c04:	068e                	slli	a3,a3,0x3
   10c06:	b939                	j	10824 <_malloc_r+0xb0>
   10c08:	01033783          	ld	a5,16(t1)
   10c0c:	367d                	addiw	a2,a2,-1
   10c0e:	16679c63          	bne	a5,t1,10d86 <_malloc_r+0x612>
   10c12:	00367793          	andi	a5,a2,3
   10c16:	1341                	addi	t1,t1,-16
   10c18:	fbe5                	bnez	a5,10c08 <_malloc_r+0x494>
   10c1a:	0089b703          	ld	a4,8(s3)
   10c1e:	fff5c793          	not	a5,a1
   10c22:	8ff9                	and	a5,a5,a4
   10c24:	00f9b423          	sd	a5,8(s3)
   10c28:	0586                	slli	a1,a1,0x1
   10c2a:	c4b7e5e3          	bltu	a5,a1,10874 <_malloc_r+0x100>
   10c2e:	c40583e3          	beqz	a1,10874 <_malloc_r+0x100>
   10c32:	00f5f733          	and	a4,a1,a5
   10c36:	e711                	bnez	a4,10c42 <_malloc_r+0x4ce>
   10c38:	0586                	slli	a1,a1,0x1
   10c3a:	00f5f733          	and	a4,a1,a5
   10c3e:	2e11                	addiw	t3,t3,4
   10c40:	df65                	beqz	a4,10c38 <_malloc_r+0x4c4>
   10c42:	8672                	mv	a2,t3
   10c44:	bbfd                	j	10a42 <_malloc_r+0x2ce>
   10c46:	020a0a13          	addi	s4,s4,32
   10c4a:	b1a5                	j	108b2 <_malloc_r+0x13e>
   10c4c:	0089b503          	ld	a0,8(s3)
   10c50:	4026d69b          	sraiw	a3,a3,0x2
   10c54:	4785                	li	a5,1
   10c56:	00d797b3          	sll	a5,a5,a3
   10c5a:	8fc9                	or	a5,a5,a0
   10c5c:	00f9b423          	sd	a5,8(s3)
   10c60:	b57d                	j	10b0e <_malloc_r+0x39a>
   10c62:	014b0bb3          	add	s7,s6,s4
   10c66:	41700bb3          	neg	s7,s7
   10c6a:	1bd2                	slli	s7,s7,0x34
   10c6c:	034bdb93          	srli	s7,s7,0x34
   10c70:	85de                	mv	a1,s7
   10c72:	854a                	mv	a0,s2
   10c74:	58a000ef          	jal	ra,111fe <_sbrk_r>
   10c78:	57fd                	li	a5,-1
   10c7a:	4701                	li	a4,0
   10c7c:	caf513e3          	bne	a0,a5,10922 <_malloc_r+0x1ae>
   10c80:	b17d                	j	1092e <_malloc_r+0x1ba>
   10c82:	05400693          	li	a3,84
   10c86:	06e6e863          	bltu	a3,a4,10cf6 <_malloc_r+0x582>
   10c8a:	00c7d713          	srli	a4,a5,0xc
   10c8e:	06f7059b          	addiw	a1,a4,111
   10c92:	0015959b          	slliw	a1,a1,0x1
   10c96:	06e7069b          	addiw	a3,a4,110
   10c9a:	058e                	slli	a1,a1,0x3
   10c9c:	bd91                	j	10af0 <_malloc_r+0x37c>
   10c9e:	15400713          	li	a4,340
   10ca2:	06f76863          	bltu	a4,a5,10d12 <_malloc_r+0x59e>
   10ca6:	00f4d793          	srli	a5,s1,0xf
   10caa:	0787861b          	addiw	a2,a5,120
   10cae:	0016169b          	slliw	a3,a2,0x1
   10cb2:	0777851b          	addiw	a0,a5,119
   10cb6:	068e                	slli	a3,a3,0x3
   10cb8:	b6b5                	j	10824 <_malloc_r+0xb0>
   10cba:	7d818c93          	addi	s9,gp,2008 # 1f8d0 <__malloc_current_mallinfo>
   10cbe:	000ca783          	lw	a5,0(s9)
   10cc2:	014786bb          	addw	a3,a5,s4
   10cc6:	00dca023          	sw	a3,0(s9)
   10cca:	b909                	j	108dc <_malloc_r+0x168>
   10ccc:	034c1713          	slli	a4,s8,0x34
   10cd0:	c00716e3          	bnez	a4,108dc <_malloc_r+0x168>
   10cd4:	0109b403          	ld	s0,16(s3)
   10cd8:	9a56                	add	s4,s4,s5
   10cda:	001a6a13          	ori	s4,s4,1
   10cde:	01443423          	sd	s4,8(s0)
   10ce2:	b179                	j	10970 <_malloc_r+0x1fc>
   10ce4:	016bb023          	sd	s6,0(s7)
   10ce8:	b121                	j	108f0 <_malloc_r+0x17c>
   10cea:	845a                	mv	s0,s6
   10cec:	b151                	j	10970 <_malloc_r+0x1fc>
   10cee:	4785                	li	a5,1
   10cf0:	00fb3423          	sd	a5,8(s6)
   10cf4:	bded                	j	10bee <_malloc_r+0x47a>
   10cf6:	15400693          	li	a3,340
   10cfa:	04e6ec63          	bltu	a3,a4,10d52 <_malloc_r+0x5de>
   10cfe:	00f7d713          	srli	a4,a5,0xf
   10d02:	0787059b          	addiw	a1,a4,120
   10d06:	0015959b          	slliw	a1,a1,0x1
   10d0a:	0777069b          	addiw	a3,a4,119
   10d0e:	058e                	slli	a1,a1,0x3
   10d10:	b3c5                	j	10af0 <_malloc_r+0x37c>
   10d12:	55400713          	li	a4,1364
   10d16:	04f76c63          	bltu	a4,a5,10d6e <_malloc_r+0x5fa>
   10d1a:	0124d793          	srli	a5,s1,0x12
   10d1e:	07d7861b          	addiw	a2,a5,125
   10d22:	0016169b          	slliw	a3,a2,0x1
   10d26:	07c7851b          	addiw	a0,a5,124
   10d2a:	068e                	slli	a3,a3,0x3
   10d2c:	bce5                	j	10824 <_malloc_r+0xb0>
   10d2e:	1c41                	addi	s8,s8,-16
   10d30:	9a62                	add	s4,s4,s8
   10d32:	416a0a33          	sub	s4,s4,s6
   10d36:	4701                	li	a4,0
   10d38:	bedd                	j	1092e <_malloc_r+0x1ba>
   10d3a:	01040593          	addi	a1,s0,16
   10d3e:	854a                	mv	a0,s2
   10d40:	041020ef          	jal	ra,13580 <_free_r>
   10d44:	0109b403          	ld	s0,16(s3)
   10d48:	000ca783          	lw	a5,0(s9)
   10d4c:	00843a03          	ld	s4,8(s0)
   10d50:	b105                	j	10970 <_malloc_r+0x1fc>
   10d52:	55400693          	li	a3,1364
   10d56:	02e6e363          	bltu	a3,a4,10d7c <_malloc_r+0x608>
   10d5a:	0127d713          	srli	a4,a5,0x12
   10d5e:	07d7059b          	addiw	a1,a4,125
   10d62:	0015959b          	slliw	a1,a1,0x1
   10d66:	07c7069b          	addiw	a3,a4,124
   10d6a:	058e                	slli	a1,a1,0x3
   10d6c:	b351                	j	10af0 <_malloc_r+0x37c>
   10d6e:	7f000693          	li	a3,2032
   10d72:	07f00613          	li	a2,127
   10d76:	07e00513          	li	a0,126
   10d7a:	b46d                	j	10824 <_malloc_r+0xb0>
   10d7c:	7f000593          	li	a1,2032
   10d80:	07e00693          	li	a3,126
   10d84:	b3b5                	j	10af0 <_malloc_r+0x37c>
   10d86:	0089b783          	ld	a5,8(s3)
   10d8a:	bd79                	j	10c28 <_malloc_r+0x4b4>

0000000000010d8c <memchr>:
   10d8c:	00757793          	andi	a5,a0,7
   10d90:	0ff5f693          	zext.b	a3,a1
   10d94:	c395                	beqz	a5,10db8 <memchr+0x2c>
   10d96:	fff60793          	addi	a5,a2,-1
   10d9a:	c605                	beqz	a2,10dc2 <memchr+0x36>
   10d9c:	567d                	li	a2,-1
   10d9e:	a801                	j	10dae <memchr+0x22>
   10da0:	0505                	addi	a0,a0,1
   10da2:	00757713          	andi	a4,a0,7
   10da6:	cb11                	beqz	a4,10dba <memchr+0x2e>
   10da8:	17fd                	addi	a5,a5,-1
   10daa:	00c78c63          	beq	a5,a2,10dc2 <memchr+0x36>
   10dae:	00054703          	lbu	a4,0(a0)
   10db2:	fed717e3          	bne	a4,a3,10da0 <memchr+0x14>
   10db6:	8082                	ret
   10db8:	87b2                	mv	a5,a2
   10dba:	471d                	li	a4,7
   10dbc:	00f76f63          	bltu	a4,a5,10dda <memchr+0x4e>
   10dc0:	e399                	bnez	a5,10dc6 <memchr+0x3a>
   10dc2:	4501                	li	a0,0
   10dc4:	8082                	ret
   10dc6:	97aa                	add	a5,a5,a0
   10dc8:	a021                	j	10dd0 <memchr+0x44>
   10dca:	0505                	addi	a0,a0,1
   10dcc:	fea78be3          	beq	a5,a0,10dc2 <memchr+0x36>
   10dd0:	00054703          	lbu	a4,0(a0)
   10dd4:	fed71be3          	bne	a4,a3,10dca <memchr+0x3e>
   10dd8:	8082                	ret
   10dda:	0ff5f593          	zext.b	a1,a1
   10dde:	00859613          	slli	a2,a1,0x8
   10de2:	8e4d                	or	a2,a2,a1
   10de4:	01061713          	slli	a4,a2,0x10
   10de8:	8f51                	or	a4,a4,a2
   10dea:	6001b883          	ld	a7,1536(gp) # 1f6f8 <__SDATA_BEGIN__>
   10dee:	6081b803          	ld	a6,1544(gp) # 1f700 <__SDATA_BEGIN__+0x8>
   10df2:	02071593          	slli	a1,a4,0x20
   10df6:	8dd9                	or	a1,a1,a4
   10df8:	431d                	li	t1,7
   10dfa:	6118                	ld	a4,0(a0)
   10dfc:	8f2d                	xor	a4,a4,a1
   10dfe:	01170633          	add	a2,a4,a7
   10e02:	fff74713          	not	a4,a4
   10e06:	8f71                	and	a4,a4,a2
   10e08:	01077733          	and	a4,a4,a6
   10e0c:	ff4d                	bnez	a4,10dc6 <memchr+0x3a>
   10e0e:	17e1                	addi	a5,a5,-8
   10e10:	0521                	addi	a0,a0,8
   10e12:	fef364e3          	bltu	t1,a5,10dfa <memchr+0x6e>
   10e16:	fbc5                	bnez	a5,10dc6 <memchr+0x3a>
   10e18:	b76d                	j	10dc2 <memchr+0x36>

0000000000010e1a <memcpy>:
   10e1a:	00b547b3          	xor	a5,a0,a1
   10e1e:	8b9d                	andi	a5,a5,7
   10e20:	00c508b3          	add	a7,a0,a2
   10e24:	eba1                	bnez	a5,10e74 <memcpy+0x5a>
   10e26:	479d                	li	a5,7
   10e28:	04c7f663          	bgeu	a5,a2,10e74 <memcpy+0x5a>
   10e2c:	00757793          	andi	a5,a0,7
   10e30:	872a                	mv	a4,a0
   10e32:	e7cd                	bnez	a5,10edc <memcpy+0xc2>
   10e34:	ff88f613          	andi	a2,a7,-8
   10e38:	40e606b3          	sub	a3,a2,a4
   10e3c:	04000793          	li	a5,64
   10e40:	04000293          	li	t0,64
   10e44:	04d7c463          	blt	a5,a3,10e8c <memcpy+0x72>
   10e48:	86ae                	mv	a3,a1
   10e4a:	87ba                	mv	a5,a4
   10e4c:	02c77163          	bgeu	a4,a2,10e6e <memcpy+0x54>
   10e50:	0006b803          	ld	a6,0(a3)
   10e54:	07a1                	addi	a5,a5,8
   10e56:	06a1                	addi	a3,a3,8
   10e58:	ff07bc23          	sd	a6,-8(a5)
   10e5c:	fec7eae3          	bltu	a5,a2,10e50 <memcpy+0x36>
   10e60:	fff60793          	addi	a5,a2,-1
   10e64:	8f99                	sub	a5,a5,a4
   10e66:	9be1                	andi	a5,a5,-8
   10e68:	07a1                	addi	a5,a5,8
   10e6a:	973e                	add	a4,a4,a5
   10e6c:	95be                	add	a1,a1,a5
   10e6e:	01176663          	bltu	a4,a7,10e7a <memcpy+0x60>
   10e72:	8082                	ret
   10e74:	872a                	mv	a4,a0
   10e76:	ff157ee3          	bgeu	a0,a7,10e72 <memcpy+0x58>
   10e7a:	0005c783          	lbu	a5,0(a1)
   10e7e:	0705                	addi	a4,a4,1
   10e80:	0585                	addi	a1,a1,1
   10e82:	fef70fa3          	sb	a5,-1(a4)
   10e86:	ff176ae3          	bltu	a4,a7,10e7a <memcpy+0x60>
   10e8a:	8082                	ret
   10e8c:	6594                	ld	a3,8(a1)
   10e8e:	7d9c                	ld	a5,56(a1)
   10e90:	0005bf83          	ld	t6,0(a1)
   10e94:	0105bf03          	ld	t5,16(a1)
   10e98:	0185be83          	ld	t4,24(a1)
   10e9c:	0205be03          	ld	t3,32(a1)
   10ea0:	0285b303          	ld	t1,40(a1)
   10ea4:	0305b803          	ld	a6,48(a1)
   10ea8:	e714                	sd	a3,8(a4)
   10eaa:	61b4                	ld	a3,64(a1)
   10eac:	01f73023          	sd	t6,0(a4)
   10eb0:	01e73823          	sd	t5,16(a4)
   10eb4:	01d73c23          	sd	t4,24(a4)
   10eb8:	03c73023          	sd	t3,32(a4)
   10ebc:	02673423          	sd	t1,40(a4)
   10ec0:	03073823          	sd	a6,48(a4)
   10ec4:	ff1c                	sd	a5,56(a4)
   10ec6:	04870713          	addi	a4,a4,72
   10eca:	40e607b3          	sub	a5,a2,a4
   10ece:	fed73c23          	sd	a3,-8(a4)
   10ed2:	04858593          	addi	a1,a1,72
   10ed6:	faf2cbe3          	blt	t0,a5,10e8c <memcpy+0x72>
   10eda:	b7bd                	j	10e48 <memcpy+0x2e>
   10edc:	0005c683          	lbu	a3,0(a1)
   10ee0:	0705                	addi	a4,a4,1
   10ee2:	00777793          	andi	a5,a4,7
   10ee6:	fed70fa3          	sb	a3,-1(a4)
   10eea:	0585                	addi	a1,a1,1
   10eec:	d7a1                	beqz	a5,10e34 <memcpy+0x1a>
   10eee:	0005c683          	lbu	a3,0(a1)
   10ef2:	0705                	addi	a4,a4,1
   10ef4:	00777793          	andi	a5,a4,7
   10ef8:	fed70fa3          	sb	a3,-1(a4)
   10efc:	0585                	addi	a1,a1,1
   10efe:	fff9                	bnez	a5,10edc <memcpy+0xc2>
   10f00:	bf15                	j	10e34 <memcpy+0x1a>

0000000000010f02 <memset>:
   10f02:	433d                	li	t1,15
   10f04:	872a                	mv	a4,a0
   10f06:	02c37163          	bgeu	t1,a2,10f28 <memset+0x26>
   10f0a:	00f77793          	andi	a5,a4,15
   10f0e:	e3c1                	bnez	a5,10f8e <memset+0x8c>
   10f10:	e1bd                	bnez	a1,10f76 <memset+0x74>
   10f12:	ff067693          	andi	a3,a2,-16
   10f16:	8a3d                	andi	a2,a2,15
   10f18:	96ba                	add	a3,a3,a4
   10f1a:	e30c                	sd	a1,0(a4)
   10f1c:	e70c                	sd	a1,8(a4)
   10f1e:	0741                	addi	a4,a4,16
   10f20:	fed76de3          	bltu	a4,a3,10f1a <memset+0x18>
   10f24:	e211                	bnez	a2,10f28 <memset+0x26>
   10f26:	8082                	ret
   10f28:	40c306b3          	sub	a3,t1,a2
   10f2c:	068a                	slli	a3,a3,0x2
   10f2e:	00000297          	auipc	t0,0x0
   10f32:	9696                	add	a3,a3,t0
   10f34:	00a68067          	jr	10(a3)
   10f38:	00b70723          	sb	a1,14(a4)
   10f3c:	00b706a3          	sb	a1,13(a4)
   10f40:	00b70623          	sb	a1,12(a4)
   10f44:	00b705a3          	sb	a1,11(a4)
   10f48:	00b70523          	sb	a1,10(a4)
   10f4c:	00b704a3          	sb	a1,9(a4)
   10f50:	00b70423          	sb	a1,8(a4)
   10f54:	00b703a3          	sb	a1,7(a4)
   10f58:	00b70323          	sb	a1,6(a4)
   10f5c:	00b702a3          	sb	a1,5(a4)
   10f60:	00b70223          	sb	a1,4(a4)
   10f64:	00b701a3          	sb	a1,3(a4)
   10f68:	00b70123          	sb	a1,2(a4)
   10f6c:	00b700a3          	sb	a1,1(a4)
   10f70:	00b70023          	sb	a1,0(a4)
   10f74:	8082                	ret
   10f76:	0ff5f593          	zext.b	a1,a1
   10f7a:	00859693          	slli	a3,a1,0x8
   10f7e:	8dd5                	or	a1,a1,a3
   10f80:	01059693          	slli	a3,a1,0x10
   10f84:	8dd5                	or	a1,a1,a3
   10f86:	02059693          	slli	a3,a1,0x20
   10f8a:	8dd5                	or	a1,a1,a3
   10f8c:	b759                	j	10f12 <memset+0x10>
   10f8e:	00279693          	slli	a3,a5,0x2
   10f92:	00000297          	auipc	t0,0x0
   10f96:	9696                	add	a3,a3,t0
   10f98:	8286                	mv	t0,ra
   10f9a:	fa2680e7          	jalr	-94(a3)
   10f9e:	8096                	mv	ra,t0
   10fa0:	17c1                	addi	a5,a5,-16
   10fa2:	8f1d                	sub	a4,a4,a5
   10fa4:	963e                	add	a2,a2,a5
   10fa6:	f8c371e3          	bgeu	t1,a2,10f28 <memset+0x26>
   10faa:	b79d                	j	10f10 <memset+0xe>

0000000000010fac <__malloc_lock>:
   10fac:	8082                	ret

0000000000010fae <__malloc_unlock>:
   10fae:	8082                	ret

0000000000010fb0 <_printf_r>:
   10fb0:	715d                	addi	sp,sp,-80
   10fb2:	f032                	sd	a2,32(sp)
   10fb4:	f436                	sd	a3,40(sp)
   10fb6:	f83a                	sd	a4,48(sp)
   10fb8:	fc3e                	sd	a5,56(sp)
   10fba:	e0c2                	sd	a6,64(sp)
   10fbc:	e4c6                	sd	a7,72(sp)
   10fbe:	862e                	mv	a2,a1
   10fc0:	690c                	ld	a1,16(a0)
   10fc2:	1014                	addi	a3,sp,32
   10fc4:	ec06                	sd	ra,24(sp)
   10fc6:	e436                	sd	a3,8(sp)
   10fc8:	472000ef          	jal	ra,1143a <_vfprintf_r>
   10fcc:	60e2                	ld	ra,24(sp)
   10fce:	6161                	addi	sp,sp,80
   10fd0:	8082                	ret

0000000000010fd2 <printf>:
   10fd2:	6481b303          	ld	t1,1608(gp) # 1f740 <_impure_ptr>
   10fd6:	711d                	addi	sp,sp,-96
   10fd8:	f832                	sd	a2,48(sp)
   10fda:	fc36                	sd	a3,56(sp)
   10fdc:	f42e                	sd	a1,40(sp)
   10fde:	e0ba                	sd	a4,64(sp)
   10fe0:	e4be                	sd	a5,72(sp)
   10fe2:	e8c2                	sd	a6,80(sp)
   10fe4:	ecc6                	sd	a7,88(sp)
   10fe6:	01033583          	ld	a1,16(t1)
   10fea:	1034                	addi	a3,sp,40
   10fec:	862a                	mv	a2,a0
   10fee:	851a                	mv	a0,t1
   10ff0:	ec06                	sd	ra,24(sp)
   10ff2:	e436                	sd	a3,8(sp)
   10ff4:	446000ef          	jal	ra,1143a <_vfprintf_r>
   10ff8:	60e2                	ld	ra,24(sp)
   10ffa:	6125                	addi	sp,sp,96
   10ffc:	8082                	ret

0000000000010ffe <_puts_r>:
   10ffe:	7159                	addi	sp,sp,-112
   11000:	f0a2                	sd	s0,96(sp)
   11002:	842a                	mv	s0,a0
   11004:	852e                	mv	a0,a1
   11006:	eca6                	sd	s1,88(sp)
   11008:	f486                	sd	ra,104(sp)
   1100a:	84ae                	mv	s1,a1
   1100c:	39e000ef          	jal	ra,113aa <strlen>
   11010:	67f1                	lui	a5,0x1c
   11012:	6e878793          	addi	a5,a5,1768 # 1c6e8 <__clzdi2+0xa8>
   11016:	e0be                	sd	a5,64(sp)
   11018:	4785                	li	a5,1
   1101a:	e4be                	sd	a5,72(sp)
   1101c:	4838                	lw	a4,80(s0)
   1101e:	181c                	addi	a5,sp,48
   11020:	00150693          	addi	a3,a0,1
   11024:	ec3e                	sd	a5,24(sp)
   11026:	4789                	li	a5,2
   11028:	f826                	sd	s1,48(sp)
   1102a:	fc2a                	sd	a0,56(sp)
   1102c:	f436                	sd	a3,40(sp)
   1102e:	d03e                	sw	a5,32(sp)
   11030:	680c                	ld	a1,16(s0)
   11032:	cf0d                	beqz	a4,1106c <_puts_r+0x6e>
   11034:	01059783          	lh	a5,16(a1)
   11038:	03279713          	slli	a4,a5,0x32
   1103c:	00074d63          	bltz	a4,11056 <_puts_r+0x58>
   11040:	0ac5a703          	lw	a4,172(a1)
   11044:	6689                	lui	a3,0x2
   11046:	8fd5                	or	a5,a5,a3
   11048:	76f9                	lui	a3,0xffffe
   1104a:	16fd                	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde707>
   1104c:	8f75                	and	a4,a4,a3
   1104e:	00f59823          	sh	a5,16(a1)
   11052:	0ae5a623          	sw	a4,172(a1)
   11056:	0830                	addi	a2,sp,24
   11058:	8522                	mv	a0,s0
   1105a:	778020ef          	jal	ra,137d2 <__sfvwrite_r>
   1105e:	ed09                	bnez	a0,11078 <_puts_r+0x7a>
   11060:	4529                	li	a0,10
   11062:	70a6                	ld	ra,104(sp)
   11064:	7406                	ld	s0,96(sp)
   11066:	64e6                	ld	s1,88(sp)
   11068:	6165                	addi	sp,sp,112
   1106a:	8082                	ret
   1106c:	8522                	mv	a0,s0
   1106e:	e42e                	sd	a1,8(sp)
   11070:	d54ff0ef          	jal	ra,105c4 <__sinit>
   11074:	65a2                	ld	a1,8(sp)
   11076:	bf7d                	j	11034 <_puts_r+0x36>
   11078:	557d                	li	a0,-1
   1107a:	b7e5                	j	11062 <_puts_r+0x64>

000000000001107c <puts>:
   1107c:	85aa                	mv	a1,a0
   1107e:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   11082:	bfb5                	j	10ffe <_puts_r>

0000000000011084 <lflush>:
   11084:	01055783          	lhu	a5,16(a0)
   11088:	4725                	li	a4,9
   1108a:	8ba5                	andi	a5,a5,9
   1108c:	00e78463          	beq	a5,a4,11094 <lflush+0x10>
   11090:	4501                	li	a0,0
   11092:	8082                	ret
   11094:	3980206f          	j	1342c <fflush>

0000000000011098 <__srefill_r>:
   11098:	7179                	addi	sp,sp,-48
   1109a:	f022                	sd	s0,32(sp)
   1109c:	ec26                	sd	s1,24(sp)
   1109e:	f406                	sd	ra,40(sp)
   110a0:	e84a                	sd	s2,16(sp)
   110a2:	e44e                	sd	s3,8(sp)
   110a4:	84aa                	mv	s1,a0
   110a6:	842e                	mv	s0,a1
   110a8:	c119                	beqz	a0,110ae <__srefill_r+0x16>
   110aa:	493c                	lw	a5,80(a0)
   110ac:	c7e9                	beqz	a5,11176 <__srefill_r+0xde>
   110ae:	01041783          	lh	a5,16(s0)
   110b2:	6689                	lui	a3,0x2
   110b4:	03079713          	slli	a4,a5,0x30
   110b8:	9341                	srli	a4,a4,0x30
   110ba:	00d77633          	and	a2,a4,a3
   110be:	e215                	bnez	a2,110e2 <__srefill_r+0x4a>
   110c0:	0ac42703          	lw	a4,172(s0)
   110c4:	8fd5                	or	a5,a5,a3
   110c6:	76f9                	lui	a3,0xffffe
   110c8:	0107979b          	slliw	a5,a5,0x10
   110cc:	16fd                	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde707>
   110ce:	4107d79b          	sraiw	a5,a5,0x10
   110d2:	8f75                	and	a4,a4,a3
   110d4:	0ae42623          	sw	a4,172(s0)
   110d8:	03079713          	slli	a4,a5,0x30
   110dc:	00f41823          	sh	a5,16(s0)
   110e0:	9341                	srli	a4,a4,0x30
   110e2:	00042423          	sw	zero,8(s0)
   110e6:	02077693          	andi	a3,a4,32
   110ea:	0e069763          	bnez	a3,111d8 <__srefill_r+0x140>
   110ee:	00477693          	andi	a3,a4,4
   110f2:	eab1                	bnez	a3,11146 <__srefill_r+0xae>
   110f4:	01077693          	andi	a3,a4,16
   110f8:	0e068b63          	beqz	a3,111ee <__srefill_r+0x156>
   110fc:	8b21                	andi	a4,a4,8
   110fe:	e74d                	bnez	a4,111a8 <__srefill_r+0x110>
   11100:	0047e793          	ori	a5,a5,4
   11104:	00f41823          	sh	a5,16(s0)
   11108:	6c1c                	ld	a5,24(s0)
   1110a:	cfc5                	beqz	a5,111c2 <__srefill_r+0x12a>
   1110c:	01041903          	lh	s2,16(s0)
   11110:	03091993          	slli	s3,s2,0x30
   11114:	00397793          	andi	a5,s2,3
   11118:	0309d993          	srli	s3,s3,0x30
   1111c:	e3a5                	bnez	a5,1117c <__srefill_r+0xe4>
   1111e:	6c10                	ld	a2,24(s0)
   11120:	7c1c                	ld	a5,56(s0)
   11122:	5014                	lw	a3,32(s0)
   11124:	780c                	ld	a1,48(s0)
   11126:	e010                	sd	a2,0(s0)
   11128:	8526                	mv	a0,s1
   1112a:	9782                	jalr	a5
   1112c:	0005079b          	sext.w	a5,a0
   11130:	c41c                	sw	a5,8(s0)
   11132:	4501                	li	a0,0
   11134:	0af05463          	blez	a5,111dc <__srefill_r+0x144>
   11138:	70a2                	ld	ra,40(sp)
   1113a:	7402                	ld	s0,32(sp)
   1113c:	64e2                	ld	s1,24(sp)
   1113e:	6942                	ld	s2,16(sp)
   11140:	69a2                	ld	s3,8(sp)
   11142:	6145                	addi	sp,sp,48
   11144:	8082                	ret
   11146:	6c2c                	ld	a1,88(s0)
   11148:	d1e1                	beqz	a1,11108 <__srefill_r+0x70>
   1114a:	07440793          	addi	a5,s0,116
   1114e:	00f58563          	beq	a1,a5,11158 <__srefill_r+0xc0>
   11152:	8526                	mv	a0,s1
   11154:	42c020ef          	jal	ra,13580 <_free_r>
   11158:	583c                	lw	a5,112(s0)
   1115a:	04043c23          	sd	zero,88(s0)
   1115e:	c41c                	sw	a5,8(s0)
   11160:	d7c5                	beqz	a5,11108 <__srefill_r+0x70>
   11162:	743c                	ld	a5,104(s0)
   11164:	70a2                	ld	ra,40(sp)
   11166:	64e2                	ld	s1,24(sp)
   11168:	e01c                	sd	a5,0(s0)
   1116a:	7402                	ld	s0,32(sp)
   1116c:	6942                	ld	s2,16(sp)
   1116e:	69a2                	ld	s3,8(sp)
   11170:	4501                	li	a0,0
   11172:	6145                	addi	sp,sp,48
   11174:	8082                	ret
   11176:	c4eff0ef          	jal	ra,105c4 <__sinit>
   1117a:	bf15                	j	110ae <__srefill_r+0x16>
   1117c:	6301b503          	ld	a0,1584(gp) # 1f728 <_global_impure_ptr>
   11180:	65c5                	lui	a1,0x11
   11182:	4785                	li	a5,1
   11184:	00f41823          	sh	a5,16(s0)
   11188:	08458593          	addi	a1,a1,132 # 11084 <lflush>
   1118c:	c60ff0ef          	jal	ra,105ec <_fwalk>
   11190:	0099f993          	andi	s3,s3,9
   11194:	01241823          	sh	s2,16(s0)
   11198:	47a5                	li	a5,9
   1119a:	f8f992e3          	bne	s3,a5,1111e <__srefill_r+0x86>
   1119e:	85a2                	mv	a1,s0
   111a0:	8526                	mv	a0,s1
   111a2:	0c2020ef          	jal	ra,13264 <__sflush_r>
   111a6:	bfa5                	j	1111e <__srefill_r+0x86>
   111a8:	85a2                	mv	a1,s0
   111aa:	8526                	mv	a0,s1
   111ac:	24a020ef          	jal	ra,133f6 <_fflush_r>
   111b0:	e505                	bnez	a0,111d8 <__srefill_r+0x140>
   111b2:	01041783          	lh	a5,16(s0)
   111b6:	00042623          	sw	zero,12(s0)
   111ba:	02042423          	sw	zero,40(s0)
   111be:	9bdd                	andi	a5,a5,-9
   111c0:	b781                	j	11100 <__srefill_r+0x68>
   111c2:	85a2                	mv	a1,s0
   111c4:	8526                	mv	a0,s1
   111c6:	1d7040ef          	jal	ra,15b9c <__smakebuf_r>
   111ca:	b789                	j	1110c <__srefill_r+0x74>
   111cc:	04076713          	ori	a4,a4,64
   111d0:	00042423          	sw	zero,8(s0)
   111d4:	00e41823          	sh	a4,16(s0)
   111d8:	557d                	li	a0,-1
   111da:	bfb9                	j	11138 <__srefill_r+0xa0>
   111dc:	01041703          	lh	a4,16(s0)
   111e0:	f7f5                	bnez	a5,111cc <__srefill_r+0x134>
   111e2:	02076713          	ori	a4,a4,32
   111e6:	00e41823          	sh	a4,16(s0)
   111ea:	557d                	li	a0,-1
   111ec:	b7b1                	j	11138 <__srefill_r+0xa0>
   111ee:	4725                	li	a4,9
   111f0:	c098                	sw	a4,0(s1)
   111f2:	0407e793          	ori	a5,a5,64
   111f6:	00f41823          	sh	a5,16(s0)
   111fa:	557d                	li	a0,-1
   111fc:	bf35                	j	11138 <__srefill_r+0xa0>

00000000000111fe <_sbrk_r>:
   111fe:	1101                	addi	sp,sp,-32
   11200:	e822                	sd	s0,16(sp)
   11202:	e426                	sd	s1,8(sp)
   11204:	842a                	mv	s0,a0
   11206:	852e                	mv	a0,a1
   11208:	ec06                	sd	ra,24(sp)
   1120a:	6801a423          	sw	zero,1672(gp) # 1f780 <errno>
   1120e:	6f3090ef          	jal	ra,1b100 <_sbrk>
   11212:	57fd                	li	a5,-1
   11214:	00f50763          	beq	a0,a5,11222 <_sbrk_r+0x24>
   11218:	60e2                	ld	ra,24(sp)
   1121a:	6442                	ld	s0,16(sp)
   1121c:	64a2                	ld	s1,8(sp)
   1121e:	6105                	addi	sp,sp,32
   11220:	8082                	ret
   11222:	6881a783          	lw	a5,1672(gp) # 1f780 <errno>
   11226:	dbed                	beqz	a5,11218 <_sbrk_r+0x1a>
   11228:	60e2                	ld	ra,24(sp)
   1122a:	c01c                	sw	a5,0(s0)
   1122c:	6442                	ld	s0,16(sp)
   1122e:	64a2                	ld	s1,8(sp)
   11230:	6105                	addi	sp,sp,32
   11232:	8082                	ret

0000000000011234 <__sread>:
   11234:	1141                	addi	sp,sp,-16
   11236:	e022                	sd	s0,0(sp)
   11238:	842e                	mv	s0,a1
   1123a:	01259583          	lh	a1,18(a1)
   1123e:	e406                	sd	ra,8(sp)
   11240:	077050ef          	jal	ra,16ab6 <_read_r>
   11244:	00054963          	bltz	a0,11256 <__sread+0x22>
   11248:	685c                	ld	a5,144(s0)
   1124a:	60a2                	ld	ra,8(sp)
   1124c:	97aa                	add	a5,a5,a0
   1124e:	e85c                	sd	a5,144(s0)
   11250:	6402                	ld	s0,0(sp)
   11252:	0141                	addi	sp,sp,16
   11254:	8082                	ret
   11256:	01045783          	lhu	a5,16(s0)
   1125a:	777d                	lui	a4,0xfffff
   1125c:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf707>
   1125e:	8ff9                	and	a5,a5,a4
   11260:	60a2                	ld	ra,8(sp)
   11262:	00f41823          	sh	a5,16(s0)
   11266:	6402                	ld	s0,0(sp)
   11268:	0141                	addi	sp,sp,16
   1126a:	8082                	ret

000000000001126c <__seofread>:
   1126c:	4501                	li	a0,0
   1126e:	8082                	ret

0000000000011270 <__swrite>:
   11270:	01059783          	lh	a5,16(a1)
   11274:	7179                	addi	sp,sp,-48
   11276:	f022                	sd	s0,32(sp)
   11278:	ec26                	sd	s1,24(sp)
   1127a:	e84a                	sd	s2,16(sp)
   1127c:	e44e                	sd	s3,8(sp)
   1127e:	f406                	sd	ra,40(sp)
   11280:	1007f713          	andi	a4,a5,256
   11284:	842e                	mv	s0,a1
   11286:	84aa                	mv	s1,a0
   11288:	8932                	mv	s2,a2
   1128a:	89b6                	mv	s3,a3
   1128c:	e31d                	bnez	a4,112b2 <__swrite+0x42>
   1128e:	777d                	lui	a4,0xfffff
   11290:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf707>
   11292:	8ff9                	and	a5,a5,a4
   11294:	01241583          	lh	a1,18(s0)
   11298:	00f41823          	sh	a5,16(s0)
   1129c:	7402                	ld	s0,32(sp)
   1129e:	70a2                	ld	ra,40(sp)
   112a0:	86ce                	mv	a3,s3
   112a2:	864a                	mv	a2,s2
   112a4:	69a2                	ld	s3,8(sp)
   112a6:	6942                	ld	s2,16(sp)
   112a8:	8526                	mv	a0,s1
   112aa:	64e2                	ld	s1,24(sp)
   112ac:	6145                	addi	sp,sp,48
   112ae:	4c90106f          	j	12f76 <_write_r>
   112b2:	01259583          	lh	a1,18(a1)
   112b6:	4689                	li	a3,2
   112b8:	4601                	li	a2,0
   112ba:	0a7040ef          	jal	ra,15b60 <_lseek_r>
   112be:	01041783          	lh	a5,16(s0)
   112c2:	b7f1                	j	1128e <__swrite+0x1e>

00000000000112c4 <__sseek>:
   112c4:	1141                	addi	sp,sp,-16
   112c6:	e022                	sd	s0,0(sp)
   112c8:	842e                	mv	s0,a1
   112ca:	01259583          	lh	a1,18(a1)
   112ce:	e406                	sd	ra,8(sp)
   112d0:	091040ef          	jal	ra,15b60 <_lseek_r>
   112d4:	57fd                	li	a5,-1
   112d6:	00f50d63          	beq	a0,a5,112f0 <__sseek+0x2c>
   112da:	01045783          	lhu	a5,16(s0)
   112de:	6705                	lui	a4,0x1
   112e0:	60a2                	ld	ra,8(sp)
   112e2:	8fd9                	or	a5,a5,a4
   112e4:	e848                	sd	a0,144(s0)
   112e6:	00f41823          	sh	a5,16(s0)
   112ea:	6402                	ld	s0,0(sp)
   112ec:	0141                	addi	sp,sp,16
   112ee:	8082                	ret
   112f0:	01045783          	lhu	a5,16(s0)
   112f4:	777d                	lui	a4,0xfffff
   112f6:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf707>
   112f8:	8ff9                	and	a5,a5,a4
   112fa:	60a2                	ld	ra,8(sp)
   112fc:	00f41823          	sh	a5,16(s0)
   11300:	6402                	ld	s0,0(sp)
   11302:	0141                	addi	sp,sp,16
   11304:	8082                	ret

0000000000011306 <__sclose>:
   11306:	01259583          	lh	a1,18(a1)
   1130a:	66f0106f          	j	13178 <_close_r>

000000000001130e <strcpy>:
   1130e:	00b567b3          	or	a5,a0,a1
   11312:	8b9d                	andi	a5,a5,7
   11314:	efad                	bnez	a5,1138e <strcpy+0x80>
   11316:	6101b683          	ld	a3,1552(gp) # 1f708 <mask>
   1131a:	6198                	ld	a4,0(a1)
   1131c:	567d                	li	a2,-1
   1131e:	00d777b3          	and	a5,a4,a3
   11322:	97b6                	add	a5,a5,a3
   11324:	8fd9                	or	a5,a5,a4
   11326:	8fd5                	or	a5,a5,a3
   11328:	06c79c63          	bne	a5,a2,113a0 <strcpy+0x92>
   1132c:	862a                	mv	a2,a0
   1132e:	587d                	li	a6,-1
   11330:	e218                	sd	a4,0(a2)
   11332:	6598                	ld	a4,8(a1)
   11334:	05a1                	addi	a1,a1,8
   11336:	0621                	addi	a2,a2,8
   11338:	00d777b3          	and	a5,a4,a3
   1133c:	97b6                	add	a5,a5,a3
   1133e:	8fd9                	or	a5,a5,a4
   11340:	8fd5                	or	a5,a5,a3
   11342:	ff0787e3          	beq	a5,a6,11330 <strcpy+0x22>
   11346:	0005c783          	lbu	a5,0(a1)
   1134a:	0015c703          	lbu	a4,1(a1)
   1134e:	0025c683          	lbu	a3,2(a1)
   11352:	00f60023          	sb	a5,0(a2)
   11356:	cb9d                	beqz	a5,1138c <strcpy+0x7e>
   11358:	00e600a3          	sb	a4,1(a2)
   1135c:	cb05                	beqz	a4,1138c <strcpy+0x7e>
   1135e:	0035c783          	lbu	a5,3(a1)
   11362:	00d60123          	sb	a3,2(a2)
   11366:	c29d                	beqz	a3,1138c <strcpy+0x7e>
   11368:	0045c703          	lbu	a4,4(a1)
   1136c:	00f601a3          	sb	a5,3(a2)
   11370:	cf91                	beqz	a5,1138c <strcpy+0x7e>
   11372:	0055c783          	lbu	a5,5(a1)
   11376:	00e60223          	sb	a4,4(a2)
   1137a:	cb09                	beqz	a4,1138c <strcpy+0x7e>
   1137c:	0065c703          	lbu	a4,6(a1)
   11380:	00f602a3          	sb	a5,5(a2)
   11384:	c781                	beqz	a5,1138c <strcpy+0x7e>
   11386:	00e60323          	sb	a4,6(a2)
   1138a:	ef09                	bnez	a4,113a4 <strcpy+0x96>
   1138c:	8082                	ret
   1138e:	87aa                	mv	a5,a0
   11390:	0005c703          	lbu	a4,0(a1)
   11394:	0785                	addi	a5,a5,1
   11396:	0585                	addi	a1,a1,1
   11398:	fee78fa3          	sb	a4,-1(a5)
   1139c:	fb75                	bnez	a4,11390 <strcpy+0x82>
   1139e:	8082                	ret
   113a0:	862a                	mv	a2,a0
   113a2:	b755                	j	11346 <strcpy+0x38>
   113a4:	000603a3          	sb	zero,7(a2)
   113a8:	8082                	ret

00000000000113aa <strlen>:
   113aa:	00757793          	andi	a5,a0,7
   113ae:	872a                	mv	a4,a0
   113b0:	eba9                	bnez	a5,11402 <strlen+0x58>
   113b2:	6101b683          	ld	a3,1552(gp) # 1f708 <mask>
   113b6:	55fd                	li	a1,-1
   113b8:	6310                	ld	a2,0(a4)
   113ba:	0721                	addi	a4,a4,8
   113bc:	00d677b3          	and	a5,a2,a3
   113c0:	97b6                	add	a5,a5,a3
   113c2:	8fd1                	or	a5,a5,a2
   113c4:	8fd5                	or	a5,a5,a3
   113c6:	feb789e3          	beq	a5,a1,113b8 <strlen+0xe>
   113ca:	ff874683          	lbu	a3,-8(a4)
   113ce:	40a707b3          	sub	a5,a4,a0
   113d2:	c6a9                	beqz	a3,1141c <strlen+0x72>
   113d4:	ff974683          	lbu	a3,-7(a4)
   113d8:	ce9d                	beqz	a3,11416 <strlen+0x6c>
   113da:	ffa74683          	lbu	a3,-6(a4)
   113de:	c6a9                	beqz	a3,11428 <strlen+0x7e>
   113e0:	ffb74683          	lbu	a3,-5(a4)
   113e4:	ce9d                	beqz	a3,11422 <strlen+0x78>
   113e6:	ffc74683          	lbu	a3,-4(a4)
   113ea:	c2b1                	beqz	a3,1142e <strlen+0x84>
   113ec:	ffd74683          	lbu	a3,-3(a4)
   113f0:	c2b1                	beqz	a3,11434 <strlen+0x8a>
   113f2:	ffe74503          	lbu	a0,-2(a4)
   113f6:	00a03533          	snez	a0,a0
   113fa:	953e                	add	a0,a0,a5
   113fc:	1579                	addi	a0,a0,-2
   113fe:	8082                	ret
   11400:	dacd                	beqz	a3,113b2 <strlen+0x8>
   11402:	00074783          	lbu	a5,0(a4)
   11406:	0705                	addi	a4,a4,1
   11408:	00777693          	andi	a3,a4,7
   1140c:	fbf5                	bnez	a5,11400 <strlen+0x56>
   1140e:	8f09                	sub	a4,a4,a0
   11410:	fff70513          	addi	a0,a4,-1
   11414:	8082                	ret
   11416:	ff978513          	addi	a0,a5,-7
   1141a:	8082                	ret
   1141c:	ff878513          	addi	a0,a5,-8
   11420:	8082                	ret
   11422:	ffb78513          	addi	a0,a5,-5
   11426:	8082                	ret
   11428:	ffa78513          	addi	a0,a5,-6
   1142c:	8082                	ret
   1142e:	ffc78513          	addi	a0,a5,-4
   11432:	8082                	ret
   11434:	ffd78513          	addi	a0,a5,-3
   11438:	8082                	ret

000000000001143a <_vfprintf_r>:
   1143a:	d8010113          	addi	sp,sp,-640
   1143e:	26113c23          	sd	ra,632(sp)
   11442:	27213023          	sd	s2,608(sp)
   11446:	25413823          	sd	s4,592(sp)
   1144a:	23913423          	sd	s9,552(sp)
   1144e:	892e                	mv	s2,a1
   11450:	8cb2                	mv	s9,a2
   11452:	e836                	sd	a3,16(sp)
   11454:	26813823          	sd	s0,624(sp)
   11458:	26913423          	sd	s1,616(sp)
   1145c:	25313c23          	sd	s3,600(sp)
   11460:	25513423          	sd	s5,584(sp)
   11464:	25613023          	sd	s6,576(sp)
   11468:	23713c23          	sd	s7,568(sp)
   1146c:	23813823          	sd	s8,560(sp)
   11470:	23a13023          	sd	s10,544(sp)
   11474:	21b13c23          	sd	s11,536(sp)
   11478:	8a2a                	mv	s4,a0
   1147a:	6da040ef          	jal	ra,15b54 <_localeconv_r>
   1147e:	611c                	ld	a5,0(a0)
   11480:	853e                	mv	a0,a5
   11482:	f8be                	sd	a5,112(sp)
   11484:	f27ff0ef          	jal	ra,113aa <strlen>
   11488:	f4aa                	sd	a0,104(sp)
   1148a:	e202                	sd	zero,256(sp)
   1148c:	e602                	sd	zero,264(sp)
   1148e:	000a0663          	beqz	s4,1149a <_vfprintf_r+0x60>
   11492:	050a2783          	lw	a5,80(s4)
   11496:	5a078863          	beqz	a5,11a46 <_vfprintf_r+0x60c>
   1149a:	01091703          	lh	a4,16(s2)
   1149e:	6689                	lui	a3,0x2
   114a0:	03071793          	slli	a5,a4,0x30
   114a4:	93c1                	srli	a5,a5,0x30
   114a6:	00d7f633          	and	a2,a5,a3
   114aa:	e215                	bnez	a2,114ce <_vfprintf_r+0x94>
   114ac:	0ac92603          	lw	a2,172(s2)
   114b0:	00d767b3          	or	a5,a4,a3
   114b4:	0107979b          	slliw	a5,a5,0x10
   114b8:	7779                	lui	a4,0xffffe
   114ba:	4107d79b          	sraiw	a5,a5,0x10
   114be:	177d                	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde707>
   114c0:	8f71                	and	a4,a4,a2
   114c2:	00f91823          	sh	a5,16(s2)
   114c6:	17c2                	slli	a5,a5,0x30
   114c8:	0ae92623          	sw	a4,172(s2)
   114cc:	93c1                	srli	a5,a5,0x30
   114ce:	0087f713          	andi	a4,a5,8
   114d2:	26070a63          	beqz	a4,11746 <_vfprintf_r+0x30c>
   114d6:	01893703          	ld	a4,24(s2)
   114da:	26070663          	beqz	a4,11746 <_vfprintf_r+0x30c>
   114de:	8be9                	andi	a5,a5,26
   114e0:	4729                	li	a4,10
   114e2:	26e78f63          	beq	a5,a4,11760 <_vfprintf_r+0x326>
   114e6:	67f5                	lui	a5,0x1d
   114e8:	9587b783          	ld	a5,-1704(a5) # 1c958 <__clzdi2+0x318>
   114ec:	19010b13          	addi	s6,sp,400
   114f0:	ea5a                	sd	s6,272(sp)
   114f2:	e93e                	sd	a5,144(sp)
   114f4:	67f5                	lui	a5,0x1d
   114f6:	9687b783          	ld	a5,-1688(a5) # 1c968 <__clzdi2+0x328>
   114fa:	f202                	sd	zero,288(sp)
   114fc:	10012c23          	sw	zero,280(sp)
   11500:	ed3e                	sd	a5,152(sp)
   11502:	67f5                	lui	a5,0x1d
   11504:	9787b783          	ld	a5,-1672(a5) # 1c978 <__clzdi2+0x338>
   11508:	f002                	sd	zero,32(sp)
   1150a:	f402                	sd	zero,40(sp)
   1150c:	f13e                	sd	a5,160(sp)
   1150e:	000cc783          	lbu	a5,0(s9)
   11512:	fc82                	sd	zero,120(sp)
   11514:	f082                	sd	zero,96(sp)
   11516:	e102                	sd	zero,128(sp)
   11518:	e502                	sd	zero,136(sp)
   1151a:	e402                	sd	zero,8(sp)
   1151c:	835a                	mv	t1,s6
   1151e:	1c078563          	beqz	a5,116e8 <_vfprintf_r+0x2ae>
   11522:	8466                	mv	s0,s9
   11524:	02500713          	li	a4,37
   11528:	30e78263          	beq	a5,a4,1182c <_vfprintf_r+0x3f2>
   1152c:	00144783          	lbu	a5,1(s0)
   11530:	0405                	addi	s0,s0,1
   11532:	fbfd                	bnez	a5,11528 <_vfprintf_r+0xee>
   11534:	419404bb          	subw	s1,s0,s9
   11538:	1a048863          	beqz	s1,116e8 <_vfprintf_r+0x2ae>
   1153c:	11812783          	lw	a5,280(sp)
   11540:	7712                	ld	a4,288(sp)
   11542:	01933023          	sd	s9,0(t1)
   11546:	2785                	addiw	a5,a5,1
   11548:	9726                	add	a4,a4,s1
   1154a:	00933423          	sd	s1,8(t1)
   1154e:	f23a                	sd	a4,288(sp)
   11550:	10f12c23          	sw	a5,280(sp)
   11554:	0007871b          	sext.w	a4,a5
   11558:	479d                	li	a5,7
   1155a:	0341                	addi	t1,t1,16
   1155c:	2ce7cf63          	blt	a5,a4,1183a <_vfprintf_r+0x400>
   11560:	6722                	ld	a4,8(sp)
   11562:	00044783          	lbu	a5,0(s0)
   11566:	9f25                	addw	a4,a4,s1
   11568:	e43a                	sd	a4,8(sp)
   1156a:	16078f63          	beqz	a5,116e8 <_vfprintf_r+0x2ae>
   1156e:	67f1                	lui	a5,0x1c
   11570:	00144e03          	lbu	t3,1(s0)
   11574:	0c010fa3          	sb	zero,223(sp)
   11578:	0405                	addi	s0,s0,1
   1157a:	5c7d                	li	s8,-1
   1157c:	4a81                	li	s5,0
   1157e:	4481                	li	s1,0
   11580:	05a00993          	li	s3,90
   11584:	74c78b93          	addi	s7,a5,1868 # 1c74c <__clzdi2+0x10c>
   11588:	4da5                	li	s11,9
   1158a:	0405                	addi	s0,s0,1
   1158c:	000e0d1b          	sext.w	s10,t3
   11590:	02a00693          	li	a3,42
   11594:	fe0d079b          	addiw	a5,s10,-32
   11598:	0007871b          	sext.w	a4,a5
   1159c:	04e9e363          	bltu	s3,a4,115e2 <_vfprintf_r+0x1a8>
   115a0:	02079713          	slli	a4,a5,0x20
   115a4:	01e75793          	srli	a5,a4,0x1e
   115a8:	97de                	add	a5,a5,s7
   115aa:	439c                	lw	a5,0(a5)
   115ac:	8782                	jr	a5
   115ae:	4a81                	li	s5,0
   115b0:	00044703          	lbu	a4,0(s0)
   115b4:	002a979b          	slliw	a5,s5,0x2
   115b8:	015787bb          	addw	a5,a5,s5
   115bc:	fd0d0e1b          	addiw	t3,s10,-48
   115c0:	0017979b          	slliw	a5,a5,0x1
   115c4:	fd07061b          	addiw	a2,a4,-48
   115c8:	0405                	addi	s0,s0,1
   115ca:	00fe0abb          	addw	s5,t3,a5
   115ce:	00070d1b          	sext.w	s10,a4
   115d2:	fccdffe3          	bgeu	s11,a2,115b0 <_vfprintf_r+0x176>
   115d6:	fe0d079b          	addiw	a5,s10,-32
   115da:	0007871b          	sext.w	a4,a5
   115de:	fce9f1e3          	bgeu	s3,a4,115a0 <_vfprintf_r+0x166>
   115e2:	100d0363          	beqz	s10,116e8 <_vfprintf_r+0x2ae>
   115e6:	13a10423          	sb	s10,296(sp)
   115ea:	0c010fa3          	sb	zero,223(sp)
   115ee:	4985                	li	s3,1
   115f0:	4b85                	li	s7,1
   115f2:	12810c93          	addi	s9,sp,296
   115f6:	ec02                	sd	zero,24(sp)
   115f8:	4c01                	li	s8,0
   115fa:	e882                	sd	zero,80(sp)
   115fc:	ec82                	sd	zero,88(sp)
   115fe:	e482                	sd	zero,72(sp)
   11600:	0024f293          	andi	t0,s1,2
   11604:	00028363          	beqz	t0,1160a <_vfprintf_r+0x1d0>
   11608:	2989                	addiw	s3,s3,2
   1160a:	0844fd93          	andi	s11,s1,132
   1160e:	7792                	ld	a5,288(sp)
   11610:	000d9663          	bnez	s11,1161c <_vfprintf_r+0x1e2>
   11614:	413a86bb          	subw	a3,s5,s3
   11618:	08d049e3          	bgtz	a3,11eaa <_vfprintf_r+0xa70>
   1161c:	0df14703          	lbu	a4,223(sp)
   11620:	c70d                	beqz	a4,1164a <_vfprintf_r+0x210>
   11622:	11812703          	lw	a4,280(sp)
   11626:	0df10693          	addi	a3,sp,223
   1162a:	00d33023          	sd	a3,0(t1)
   1162e:	2705                	addiw	a4,a4,1
   11630:	4685                	li	a3,1
   11632:	0785                	addi	a5,a5,1
   11634:	00d33423          	sd	a3,8(t1)
   11638:	10e12c23          	sw	a4,280(sp)
   1163c:	0007069b          	sext.w	a3,a4
   11640:	f23e                	sd	a5,288(sp)
   11642:	471d                	li	a4,7
   11644:	0341                	addi	t1,t1,16
   11646:	28d74463          	blt	a4,a3,118ce <_vfprintf_r+0x494>
   1164a:	02028563          	beqz	t0,11674 <_vfprintf_r+0x23a>
   1164e:	11812703          	lw	a4,280(sp)
   11652:	1194                	addi	a3,sp,224
   11654:	00d33023          	sd	a3,0(t1)
   11658:	2705                	addiw	a4,a4,1
   1165a:	4689                	li	a3,2
   1165c:	0789                	addi	a5,a5,2
   1165e:	00d33423          	sd	a3,8(t1)
   11662:	10e12c23          	sw	a4,280(sp)
   11666:	0007069b          	sext.w	a3,a4
   1166a:	f23e                	sd	a5,288(sp)
   1166c:	471d                	li	a4,7
   1166e:	0341                	addi	t1,t1,16
   11670:	0cd747e3          	blt	a4,a3,11f3e <_vfprintf_r+0xb04>
   11674:	08000713          	li	a4,128
   11678:	6eed8263          	beq	s11,a4,11d5c <_vfprintf_r+0x922>
   1167c:	417c0c3b          	subw	s8,s8,s7
   11680:	77804563          	bgtz	s8,11dea <_vfprintf_r+0x9b0>
   11684:	1004f713          	andi	a4,s1,256
   11688:	60071263          	bnez	a4,11c8c <_vfprintf_r+0x852>
   1168c:	11812703          	lw	a4,280(sp)
   11690:	97de                	add	a5,a5,s7
   11692:	01933023          	sd	s9,0(t1)
   11696:	0017069b          	addiw	a3,a4,1
   1169a:	8736                	mv	a4,a3
   1169c:	01733423          	sd	s7,8(t1)
   116a0:	10e12c23          	sw	a4,280(sp)
   116a4:	f23e                	sd	a5,288(sp)
   116a6:	471d                	li	a4,7
   116a8:	2ed74363          	blt	a4,a3,1198e <_vfprintf_r+0x554>
   116ac:	0341                	addi	t1,t1,16
   116ae:	8891                	andi	s1,s1,4
   116b0:	c489                	beqz	s1,116ba <_vfprintf_r+0x280>
   116b2:	413a84bb          	subw	s1,s5,s3
   116b6:	08904ee3          	bgtz	s1,11f52 <_vfprintf_r+0xb18>
   116ba:	8756                	mv	a4,s5
   116bc:	013ad363          	bge	s5,s3,116c2 <_vfprintf_r+0x288>
   116c0:	874e                	mv	a4,s3
   116c2:	66a2                	ld	a3,8(sp)
   116c4:	9f35                	addw	a4,a4,a3
   116c6:	e43a                	sd	a4,8(sp)
   116c8:	7a079263          	bnez	a5,11e6c <_vfprintf_r+0xa32>
   116cc:	67e2                	ld	a5,24(sp)
   116ce:	10012c23          	sw	zero,280(sp)
   116d2:	c789                	beqz	a5,116dc <_vfprintf_r+0x2a2>
   116d4:	65e2                	ld	a1,24(sp)
   116d6:	8552                	mv	a0,s4
   116d8:	6a9010ef          	jal	ra,13580 <_free_r>
   116dc:	835a                	mv	t1,s6
   116de:	8ca2                	mv	s9,s0
   116e0:	000cc783          	lbu	a5,0(s9)
   116e4:	e2079fe3          	bnez	a5,11522 <_vfprintf_r+0xe8>
   116e8:	7792                	ld	a5,288(sp)
   116ea:	c399                	beqz	a5,116f0 <_vfprintf_r+0x2b6>
   116ec:	31a0106f          	j	12a06 <_vfprintf_r+0x15cc>
   116f0:	01095783          	lhu	a5,16(s2)
   116f4:	0407f793          	andi	a5,a5,64
   116f8:	c399                	beqz	a5,116fe <_vfprintf_r+0x2c4>
   116fa:	5b00106f          	j	12caa <_vfprintf_r+0x1870>
   116fe:	27813083          	ld	ra,632(sp)
   11702:	27013403          	ld	s0,624(sp)
   11706:	6522                	ld	a0,8(sp)
   11708:	26813483          	ld	s1,616(sp)
   1170c:	26013903          	ld	s2,608(sp)
   11710:	25813983          	ld	s3,600(sp)
   11714:	25013a03          	ld	s4,592(sp)
   11718:	24813a83          	ld	s5,584(sp)
   1171c:	24013b03          	ld	s6,576(sp)
   11720:	23813b83          	ld	s7,568(sp)
   11724:	23013c03          	ld	s8,560(sp)
   11728:	22813c83          	ld	s9,552(sp)
   1172c:	22013d03          	ld	s10,544(sp)
   11730:	21813d83          	ld	s11,536(sp)
   11734:	28010113          	addi	sp,sp,640
   11738:	8082                	ret
   1173a:	0104e493          	ori	s1,s1,16
   1173e:	00044e03          	lbu	t3,0(s0)
   11742:	2481                	sext.w	s1,s1
   11744:	b599                	j	1158a <_vfprintf_r+0x150>
   11746:	85ca                	mv	a1,s2
   11748:	8552                	mv	a0,s4
   1174a:	069010ef          	jal	ra,12fb2 <__swsetup_r>
   1174e:	c119                	beqz	a0,11754 <_vfprintf_r+0x31a>
   11750:	55a0106f          	j	12caa <_vfprintf_r+0x1870>
   11754:	01095783          	lhu	a5,16(s2)
   11758:	4729                	li	a4,10
   1175a:	8be9                	andi	a5,a5,26
   1175c:	d8e795e3          	bne	a5,a4,114e6 <_vfprintf_r+0xac>
   11760:	01291783          	lh	a5,18(s2)
   11764:	d807c1e3          	bltz	a5,114e6 <_vfprintf_r+0xac>
   11768:	66c2                	ld	a3,16(sp)
   1176a:	8666                	mv	a2,s9
   1176c:	85ca                	mv	a1,s2
   1176e:	8552                	mv	a0,s4
   11770:	772010ef          	jal	ra,12ee2 <__sbprintf>
   11774:	e42a                	sd	a0,8(sp)
   11776:	b761                	j	116fe <_vfprintf_r+0x2c4>
   11778:	0104e493          	ori	s1,s1,16
   1177c:	2481                	sext.w	s1,s1
   1177e:	66c2                	ld	a3,16(sp)
   11780:	0204f793          	andi	a5,s1,32
   11784:	00868713          	addi	a4,a3,8 # 2008 <exit-0xe0e0>
   11788:	22078c63          	beqz	a5,119c0 <_vfprintf_r+0x586>
   1178c:	629c                	ld	a5,0(a3)
   1178e:	89be                	mv	s3,a5
   11790:	2407ca63          	bltz	a5,119e4 <_vfprintf_r+0x5aa>
   11794:	57fd                	li	a5,-1
   11796:	26fc01e3          	beq	s8,a5,121f8 <_vfprintf_r+0xdbe>
   1179a:	f7f4fd93          	andi	s11,s1,-129
   1179e:	e83a                	sd	a4,16(sp)
   117a0:	2d81                	sext.w	s11,s11
   117a2:	6e099863          	bnez	s3,11e92 <_vfprintf_r+0xa58>
   117a6:	6e0c1963          	bnez	s8,11e98 <_vfprintf_r+0xa5e>
   117aa:	84ee                	mv	s1,s11
   117ac:	4c01                	li	s8,0
   117ae:	4b81                	li	s7,0
   117b0:	18c10c93          	addi	s9,sp,396
   117b4:	0df14783          	lbu	a5,223(sp)
   117b8:	000b899b          	sext.w	s3,s7
   117bc:	018bd463          	bge	s7,s8,117c4 <_vfprintf_r+0x38a>
   117c0:	000c099b          	sext.w	s3,s8
   117c4:	ec02                	sd	zero,24(sp)
   117c6:	e882                	sd	zero,80(sp)
   117c8:	ec82                	sd	zero,88(sp)
   117ca:	e482                	sd	zero,72(sp)
   117cc:	e2078ae3          	beqz	a5,11600 <_vfprintf_r+0x1c6>
   117d0:	2985                	addiw	s3,s3,1
   117d2:	b53d                	j	11600 <_vfprintf_r+0x1c6>
   117d4:	0104e493          	ori	s1,s1,16
   117d8:	2481                	sext.w	s1,s1
   117da:	66c2                	ld	a3,16(sp)
   117dc:	0204f793          	andi	a5,s1,32
   117e0:	00868713          	addi	a4,a3,8
   117e4:	1a078f63          	beqz	a5,119a2 <_vfprintf_r+0x568>
   117e8:	0006b983          	ld	s3,0(a3)
   117ec:	bff4fd93          	andi	s11,s1,-1025
   117f0:	2d81                	sext.w	s11,s11
   117f2:	e83a                	sd	a4,16(sp)
   117f4:	4781                	li	a5,0
   117f6:	4701                	li	a4,0
   117f8:	0ce10fa3          	sb	a4,223(sp)
   117fc:	577d                	li	a4,-1
   117fe:	1eec0f63          	beq	s8,a4,119fc <_vfprintf_r+0x5c2>
   11802:	f7fdf493          	andi	s1,s11,-129
   11806:	2481                	sext.w	s1,s1
   11808:	68099163          	bnez	s3,11e8a <_vfprintf_r+0xa50>
   1180c:	440c1363          	bnez	s8,11c52 <_vfprintf_r+0x818>
   11810:	ffd1                	bnez	a5,117ac <_vfprintf_r+0x372>
   11812:	001dfb93          	andi	s7,s11,1
   11816:	18c10c93          	addi	s9,sp,396
   1181a:	f80b8de3          	beqz	s7,117b4 <_vfprintf_r+0x37a>
   1181e:	03000793          	li	a5,48
   11822:	18f105a3          	sb	a5,395(sp)
   11826:	18b10c93          	addi	s9,sp,395
   1182a:	b769                	j	117b4 <_vfprintf_r+0x37a>
   1182c:	419404bb          	subw	s1,s0,s9
   11830:	d00496e3          	bnez	s1,1153c <_vfprintf_r+0x102>
   11834:	00044783          	lbu	a5,0(s0)
   11838:	bb0d                	j	1156a <_vfprintf_r+0x130>
   1183a:	0a10                	addi	a2,sp,272
   1183c:	85ca                	mv	a1,s2
   1183e:	8552                	mv	a0,s4
   11840:	416070ef          	jal	ra,18c56 <__sprint_r>
   11844:	ea0516e3          	bnez	a0,116f0 <_vfprintf_r+0x2b6>
   11848:	835a                	mv	t1,s6
   1184a:	bb19                	j	11560 <_vfprintf_r+0x126>
   1184c:	0084f793          	andi	a5,s1,8
   11850:	180789e3          	beqz	a5,121e2 <_vfprintf_r+0xda8>
   11854:	67c2                	ld	a5,16(sp)
   11856:	07bd                	addi	a5,a5,15
   11858:	ff07f713          	andi	a4,a5,-16
   1185c:	631c                	ld	a5,0(a4)
   1185e:	670c                	ld	a1,8(a4)
   11860:	0741                	addi	a4,a4,16
   11862:	e83a                	sd	a4,16(sp)
   11864:	0208                	addi	a0,sp,256
   11866:	ec1a                	sd	t1,24(sp)
   11868:	e23e                	sd	a5,256(sp)
   1186a:	e62e                	sd	a1,264(sp)
   1186c:	2a0040ef          	jal	ra,15b0c <_ldcheck>
   11870:	d5aa                	sw	a0,232(sp)
   11872:	4789                	li	a5,2
   11874:	6362                	ld	t1,24(sp)
   11876:	50f509e3          	beq	a0,a5,12588 <_vfprintf_r+0x114e>
   1187a:	4785                	li	a5,1
   1187c:	68f500e3          	beq	a0,a5,126fc <_vfprintf_r+0x12c2>
   11880:	06100793          	li	a5,97
   11884:	2efd09e3          	beq	s10,a5,12376 <_vfprintf_r+0xf3c>
   11888:	04100793          	li	a5,65
   1188c:	05800713          	li	a4,88
   11890:	2efd05e3          	beq	s10,a5,1237a <_vfprintf_r+0xf40>
   11894:	fdfd7713          	andi	a4,s10,-33
   11898:	57fd                	li	a5,-1
   1189a:	ecba                	sd	a4,88(sp)
   1189c:	00fc1463          	bne	s8,a5,118a4 <_vfprintf_r+0x46a>
   118a0:	5000106f          	j	12da0 <_vfprintf_r+0x1966>
   118a4:	04700793          	li	a5,71
   118a8:	00f71463          	bne	a4,a5,118b0 <_vfprintf_r+0x476>
   118ac:	4e60106f          	j	12d92 <_vfprintf_r+0x1958>
   118b0:	69b2                	ld	s3,264(sp)
   118b2:	1004e793          	ori	a5,s1,256
   118b6:	f526                	sd	s1,168(sp)
   118b8:	6b92                	ld	s7,256(sp)
   118ba:	2781                	sext.w	a5,a5
   118bc:	0009d463          	bgez	s3,118c4 <_vfprintf_r+0x48a>
   118c0:	15e0106f          	j	12a1e <_vfprintf_r+0x15e4>
   118c4:	e582                	sd	zero,200(sp)
   118c6:	84be                	mv	s1,a5
   118c8:	ec02                	sd	zero,24(sp)
   118ca:	2f10006f          	j	123ba <_vfprintf_r+0xf80>
   118ce:	0a10                	addi	a2,sp,272
   118d0:	85ca                	mv	a1,s2
   118d2:	8552                	mv	a0,s4
   118d4:	f816                	sd	t0,48(sp)
   118d6:	380070ef          	jal	ra,18c56 <__sprint_r>
   118da:	5a051063          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   118de:	7792                	ld	a5,288(sp)
   118e0:	72c2                	ld	t0,48(sp)
   118e2:	835a                	mv	t1,s6
   118e4:	b39d                	j	1164a <_vfprintf_r+0x210>
   118e6:	11812683          	lw	a3,280(sp)
   118ea:	00178d13          	addi	s10,a5,1
   118ee:	7782                	ld	a5,32(sp)
   118f0:	00168b9b          	addiw	s7,a3,1
   118f4:	4605                	li	a2,1
   118f6:	01933023          	sd	s9,0(t1)
   118fa:	86de                	mv	a3,s7
   118fc:	01030c13          	addi	s8,t1,16
   11900:	7ef65e63          	bge	a2,a5,120fc <_vfprintf_r+0xcc2>
   11904:	4605                	li	a2,1
   11906:	10d12c23          	sw	a3,280(sp)
   1190a:	00c33423          	sd	a2,8(t1)
   1190e:	f26a                	sd	s10,288(sp)
   11910:	469d                	li	a3,7
   11912:	3b76c2e3          	blt	a3,s7,124b6 <_vfprintf_r+0x107c>
   11916:	77a6                	ld	a5,104(sp)
   11918:	7746                	ld	a4,112(sp)
   1191a:	2b85                	addiw	s7,s7,1
   1191c:	9d3e                	add	s10,s10,a5
   1191e:	00ec3023          	sd	a4,0(s8)
   11922:	00fc3423          	sd	a5,8(s8)
   11926:	f26a                	sd	s10,288(sp)
   11928:	11712c23          	sw	s7,280(sp)
   1192c:	469d                	li	a3,7
   1192e:	0c41                	addi	s8,s8,16
   11930:	3b76c0e3          	blt	a3,s7,124d0 <_vfprintf_r+0x1096>
   11934:	6512                	ld	a0,256(sp)
   11936:	65b2                	ld	a1,264(sp)
   11938:	4681                	li	a3,0
   1193a:	4601                	li	a2,0
   1193c:	09b090ef          	jal	ra,1b1d6 <__eqtf2>
   11940:	7782                	ld	a5,32(sp)
   11942:	fff7869b          	addiw	a3,a5,-1
   11946:	7e050463          	beqz	a0,1212e <_vfprintf_r+0xcf4>
   1194a:	2b85                	addiw	s7,s7,1
   1194c:	001c8813          	addi	a6,s9,1
   11950:	865e                	mv	a2,s7
   11952:	9d36                	add	s10,s10,a3
   11954:	010c3023          	sd	a6,0(s8)
   11958:	00dc3423          	sd	a3,8(s8)
   1195c:	f26a                	sd	s10,288(sp)
   1195e:	10c12c23          	sw	a2,280(sp)
   11962:	469d                	li	a3,7
   11964:	0c41                	addi	s8,s8,16
   11966:	7b76c763          	blt	a3,s7,12114 <_vfprintf_r+0xcda>
   1196a:	7766                	ld	a4,120(sp)
   1196c:	1994                	addi	a3,sp,240
   1196e:	001b861b          	addiw	a2,s7,1
   11972:	01a707b3          	add	a5,a4,s10
   11976:	00dc3023          	sd	a3,0(s8)
   1197a:	00ec3423          	sd	a4,8(s8)
   1197e:	f23e                	sd	a5,288(sp)
   11980:	10c12c23          	sw	a2,280(sp)
   11984:	469d                	li	a3,7
   11986:	010c0313          	addi	t1,s8,16
   1198a:	d2c6d2e3          	bge	a3,a2,116ae <_vfprintf_r+0x274>
   1198e:	0a10                	addi	a2,sp,272
   11990:	85ca                	mv	a1,s2
   11992:	8552                	mv	a0,s4
   11994:	2c2070ef          	jal	ra,18c56 <__sprint_r>
   11998:	4e051163          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   1199c:	7792                	ld	a5,288(sp)
   1199e:	835a                	mv	t1,s6
   119a0:	b339                	j	116ae <_vfprintf_r+0x274>
   119a2:	0104f793          	andi	a5,s1,16
   119a6:	020799e3          	bnez	a5,121d8 <_vfprintf_r+0xd9e>
   119aa:	66c2                	ld	a3,16(sp)
   119ac:	0404f793          	andi	a5,s1,64
   119b0:	0006a983          	lw	s3,0(a3)
   119b4:	4c0782e3          	beqz	a5,12678 <_vfprintf_r+0x123e>
   119b8:	19c2                	slli	s3,s3,0x30
   119ba:	0309d993          	srli	s3,s3,0x30
   119be:	b53d                	j	117ec <_vfprintf_r+0x3b2>
   119c0:	0104f793          	andi	a5,s1,16
   119c4:	7e079e63          	bnez	a5,121c0 <_vfprintf_r+0xd86>
   119c8:	66c2                	ld	a3,16(sp)
   119ca:	0404f793          	andi	a5,s1,64
   119ce:	0006a983          	lw	s3,0(a3)
   119d2:	4a078be3          	beqz	a5,12688 <_vfprintf_r+0x124e>
   119d6:	0109999b          	slliw	s3,s3,0x10
   119da:	4109d99b          	sraiw	s3,s3,0x10
   119de:	87ce                	mv	a5,s3
   119e0:	da07dae3          	bgez	a5,11794 <_vfprintf_r+0x35a>
   119e4:	e83a                	sd	a4,16(sp)
   119e6:	02d00713          	li	a4,45
   119ea:	0ce10fa3          	sb	a4,223(sp)
   119ee:	577d                	li	a4,-1
   119f0:	413009b3          	neg	s3,s3
   119f4:	8da6                	mv	s11,s1
   119f6:	4785                	li	a5,1
   119f8:	e0ec15e3          	bne	s8,a4,11802 <_vfprintf_r+0x3c8>
   119fc:	4705                	li	a4,1
   119fe:	48e78a63          	beq	a5,a4,11e92 <_vfprintf_r+0xa58>
   11a02:	4709                	li	a4,2
   11a04:	26e78063          	beq	a5,a4,11c64 <_vfprintf_r+0x82a>
   11a08:	18c10b93          	addi	s7,sp,396
   11a0c:	8cde                	mv	s9,s7
   11a0e:	0079f793          	andi	a5,s3,7
   11a12:	03078793          	addi	a5,a5,48
   11a16:	fefc8fa3          	sb	a5,-1(s9)
   11a1a:	0039d993          	srli	s3,s3,0x3
   11a1e:	8766                	mv	a4,s9
   11a20:	1cfd                	addi	s9,s9,-1
   11a22:	fe0996e3          	bnez	s3,11a0e <_vfprintf_r+0x5d4>
   11a26:	001df693          	andi	a3,s11,1
   11a2a:	24068d63          	beqz	a3,11c84 <_vfprintf_r+0x84a>
   11a2e:	03000693          	li	a3,48
   11a32:	24d78963          	beq	a5,a3,11c84 <_vfprintf_r+0x84a>
   11a36:	1779                	addi	a4,a4,-2
   11a38:	fedc8fa3          	sb	a3,-1(s9)
   11a3c:	40eb8bbb          	subw	s7,s7,a4
   11a40:	84ee                	mv	s1,s11
   11a42:	8cba                	mv	s9,a4
   11a44:	bb85                	j	117b4 <_vfprintf_r+0x37a>
   11a46:	8552                	mv	a0,s4
   11a48:	b7dfe0ef          	jal	ra,105c4 <__sinit>
   11a4c:	b4b9                	j	1149a <_vfprintf_r+0x60>
   11a4e:	67c2                	ld	a5,16(sp)
   11a50:	0c010fa3          	sb	zero,223(sp)
   11a54:	0007bc83          	ld	s9,0(a5)
   11a58:	00878d93          	addi	s11,a5,8
   11a5c:	0a0c8be3          	beqz	s9,12312 <_vfprintf_r+0xed8>
   11a60:	57fd                	li	a5,-1
   11a62:	36fc0ae3          	beq	s8,a5,125d6 <_vfprintf_r+0x119c>
   11a66:	8662                	mv	a2,s8
   11a68:	4581                	li	a1,0
   11a6a:	8566                	mv	a0,s9
   11a6c:	e81a                	sd	t1,16(sp)
   11a6e:	b1eff0ef          	jal	ra,10d8c <memchr>
   11a72:	ec2a                	sd	a0,24(sp)
   11a74:	6342                	ld	t1,16(sp)
   11a76:	e119                	bnez	a0,11a7c <_vfprintf_r+0x642>
   11a78:	1a40106f          	j	12c1c <_vfprintf_r+0x17e2>
   11a7c:	67e2                	ld	a5,24(sp)
   11a7e:	e86e                	sd	s11,16(sp)
   11a80:	ec02                	sd	zero,24(sp)
   11a82:	41978bbb          	subw	s7,a5,s9
   11a86:	0df14783          	lbu	a5,223(sp)
   11a8a:	fffbc993          	not	s3,s7
   11a8e:	43f9d993          	srai	s3,s3,0x3f
   11a92:	e882                	sd	zero,80(sp)
   11a94:	ec82                	sd	zero,88(sp)
   11a96:	e482                	sd	zero,72(sp)
   11a98:	0179f9b3          	and	s3,s3,s7
   11a9c:	4c01                	li	s8,0
   11a9e:	d20799e3          	bnez	a5,117d0 <_vfprintf_r+0x396>
   11aa2:	beb9                	j	11600 <_vfprintf_r+0x1c6>
   11aa4:	6742                	ld	a4,16(sp)
   11aa6:	0c010fa3          	sb	zero,223(sp)
   11aaa:	4985                	li	s3,1
   11aac:	431c                	lw	a5,0(a4)
   11aae:	0721                	addi	a4,a4,8
   11ab0:	e83a                	sd	a4,16(sp)
   11ab2:	12f10423          	sb	a5,296(sp)
   11ab6:	4b85                	li	s7,1
   11ab8:	12810c93          	addi	s9,sp,296
   11abc:	be2d                	j	115f6 <_vfprintf_r+0x1bc>
   11abe:	67c2                	ld	a5,16(sp)
   11ac0:	0007aa83          	lw	s5,0(a5)
   11ac4:	07a1                	addi	a5,a5,8
   11ac6:	6e0ad363          	bgez	s5,121ac <_vfprintf_r+0xd72>
   11aca:	41500abb          	negw	s5,s5
   11ace:	e83e                	sd	a5,16(sp)
   11ad0:	0044e493          	ori	s1,s1,4
   11ad4:	00044e03          	lbu	t3,0(s0)
   11ad8:	2481                	sext.w	s1,s1
   11ada:	bc45                	j	1158a <_vfprintf_r+0x150>
   11adc:	02b00793          	li	a5,43
   11ae0:	00044e03          	lbu	t3,0(s0)
   11ae4:	0cf10fa3          	sb	a5,223(sp)
   11ae8:	b44d                	j	1158a <_vfprintf_r+0x150>
   11aea:	0804e493          	ori	s1,s1,128
   11aee:	00044e03          	lbu	t3,0(s0)
   11af2:	2481                	sext.w	s1,s1
   11af4:	bc59                	j	1158a <_vfprintf_r+0x150>
   11af6:	00044d03          	lbu	s10,0(s0)
   11afa:	00140793          	addi	a5,s0,1
   11afe:	00dd1463          	bne	s10,a3,11b06 <_vfprintf_r+0x6cc>
   11b02:	39a0106f          	j	12e9c <_vfprintf_r+0x1a62>
   11b06:	fd0d071b          	addiw	a4,s10,-48
   11b0a:	843e                	mv	s0,a5
   11b0c:	4c01                	li	s8,0
   11b0e:	a8ede3e3          	bltu	s11,a4,11594 <_vfprintf_r+0x15a>
   11b12:	00044d03          	lbu	s10,0(s0)
   11b16:	002c179b          	slliw	a5,s8,0x2
   11b1a:	018787bb          	addw	a5,a5,s8
   11b1e:	0017979b          	slliw	a5,a5,0x1
   11b22:	00e78c3b          	addw	s8,a5,a4
   11b26:	fd0d071b          	addiw	a4,s10,-48
   11b2a:	0405                	addi	s0,s0,1
   11b2c:	feedf3e3          	bgeu	s11,a4,11b12 <_vfprintf_r+0x6d8>
   11b30:	b495                	j	11594 <_vfprintf_r+0x15a>
   11b32:	8552                	mv	a0,s4
   11b34:	ec1a                	sd	t1,24(sp)
   11b36:	01e040ef          	jal	ra,15b54 <_localeconv_r>
   11b3a:	651c                	ld	a5,8(a0)
   11b3c:	853e                	mv	a0,a5
   11b3e:	e53e                	sd	a5,136(sp)
   11b40:	86bff0ef          	jal	ra,113aa <strlen>
   11b44:	87aa                	mv	a5,a0
   11b46:	8552                	mv	a0,s4
   11b48:	8d3e                	mv	s10,a5
   11b4a:	e13e                	sd	a5,128(sp)
   11b4c:	008040ef          	jal	ra,15b54 <_localeconv_r>
   11b50:	691c                	ld	a5,16(a0)
   11b52:	6362                	ld	t1,24(sp)
   11b54:	00044e03          	lbu	t3,0(s0)
   11b58:	f0be                	sd	a5,96(sp)
   11b5a:	a20d08e3          	beqz	s10,1158a <_vfprintf_r+0x150>
   11b5e:	a20786e3          	beqz	a5,1158a <_vfprintf_r+0x150>
   11b62:	0007c783          	lbu	a5,0(a5)
   11b66:	a20782e3          	beqz	a5,1158a <_vfprintf_r+0x150>
   11b6a:	4004e493          	ori	s1,s1,1024
   11b6e:	2481                	sext.w	s1,s1
   11b70:	bc29                	j	1158a <_vfprintf_r+0x150>
   11b72:	0014e493          	ori	s1,s1,1
   11b76:	00044e03          	lbu	t3,0(s0)
   11b7a:	2481                	sext.w	s1,s1
   11b7c:	b439                	j	1158a <_vfprintf_r+0x150>
   11b7e:	0df14783          	lbu	a5,223(sp)
   11b82:	00044e03          	lbu	t3,0(s0)
   11b86:	a00792e3          	bnez	a5,1158a <_vfprintf_r+0x150>
   11b8a:	02000793          	li	a5,32
   11b8e:	0cf10fa3          	sb	a5,223(sp)
   11b92:	bae5                	j	1158a <_vfprintf_r+0x150>
   11b94:	0084e493          	ori	s1,s1,8
   11b98:	00044e03          	lbu	t3,0(s0)
   11b9c:	2481                	sext.w	s1,s1
   11b9e:	b2f5                	j	1158a <_vfprintf_r+0x150>
   11ba0:	0104ed93          	ori	s11,s1,16
   11ba4:	2d81                	sext.w	s11,s11
   11ba6:	66c2                	ld	a3,16(sp)
   11ba8:	020df793          	andi	a5,s11,32
   11bac:	00868713          	addi	a4,a3,8
   11bb0:	5c078863          	beqz	a5,12180 <_vfprintf_r+0xd46>
   11bb4:	0006b983          	ld	s3,0(a3)
   11bb8:	4785                	li	a5,1
   11bba:	e83a                	sd	a4,16(sp)
   11bbc:	b92d                	j	117f6 <_vfprintf_r+0x3bc>
   11bbe:	0204e493          	ori	s1,s1,32
   11bc2:	00044e03          	lbu	t3,0(s0)
   11bc6:	2481                	sext.w	s1,s1
   11bc8:	b2c9                	j	1158a <_vfprintf_r+0x150>
   11bca:	6742                	ld	a4,16(sp)
   11bcc:	77e1                	lui	a5,0xffff8
   11bce:	8307c793          	xori	a5,a5,-2000
   11bd2:	0ef11023          	sh	a5,224(sp)
   11bd6:	00870793          	addi	a5,a4,8
   11bda:	e83e                	sd	a5,16(sp)
   11bdc:	67f1                	lui	a5,0x1c
   11bde:	71078793          	addi	a5,a5,1808 # 1c710 <__clzdi2+0xd0>
   11be2:	0024ed93          	ori	s11,s1,2
   11be6:	f43e                	sd	a5,40(sp)
   11be8:	00073983          	ld	s3,0(a4)
   11bec:	2d81                	sext.w	s11,s11
   11bee:	4789                	li	a5,2
   11bf0:	07800d13          	li	s10,120
   11bf4:	b109                	j	117f6 <_vfprintf_r+0x3bc>
   11bf6:	66c2                	ld	a3,16(sp)
   11bf8:	0204f793          	andi	a5,s1,32
   11bfc:	6298                	ld	a4,0(a3)
   11bfe:	06a1                	addi	a3,a3,8
   11c00:	e836                	sd	a3,16(sp)
   11c02:	5a079a63          	bnez	a5,121b6 <_vfprintf_r+0xd7c>
   11c06:	0104f793          	andi	a5,s1,16
   11c0a:	5a079663          	bnez	a5,121b6 <_vfprintf_r+0xd7c>
   11c0e:	0404f793          	andi	a5,s1,64
   11c12:	5c0791e3          	bnez	a5,129d4 <_vfprintf_r+0x159a>
   11c16:	2004f493          	andi	s1,s1,512
   11c1a:	67a2                	ld	a5,8(sp)
   11c1c:	e099                	bnez	s1,11c22 <_vfprintf_r+0x7e8>
   11c1e:	1880106f          	j	12da6 <_vfprintf_r+0x196c>
   11c22:	00f70023          	sb	a5,0(a4)
   11c26:	8ca2                	mv	s9,s0
   11c28:	bc65                	j	116e0 <_vfprintf_r+0x2a6>
   11c2a:	00044e03          	lbu	t3,0(s0)
   11c2e:	06c00793          	li	a5,108
   11c32:	6afe0e63          	beq	t3,a5,122ee <_vfprintf_r+0xeb4>
   11c36:	0104e493          	ori	s1,s1,16
   11c3a:	2481                	sext.w	s1,s1
   11c3c:	b2b9                	j	1158a <_vfprintf_r+0x150>
   11c3e:	00044e03          	lbu	t3,0(s0)
   11c42:	06800793          	li	a5,104
   11c46:	68fe0763          	beq	t3,a5,122d4 <_vfprintf_r+0xe9a>
   11c4a:	0404e493          	ori	s1,s1,64
   11c4e:	2481                	sext.w	s1,s1
   11c50:	ba2d                	j	1158a <_vfprintf_r+0x150>
   11c52:	4705                	li	a4,1
   11c54:	00e79463          	bne	a5,a4,11c5c <_vfprintf_r+0x822>
   11c58:	12a0106f          	j	12d82 <_vfprintf_r+0x1948>
   11c5c:	4709                	li	a4,2
   11c5e:	8da6                	mv	s11,s1
   11c60:	dae794e3          	bne	a5,a4,11a08 <_vfprintf_r+0x5ce>
   11c64:	18c10b93          	addi	s7,sp,396
   11c68:	8cde                	mv	s9,s7
   11c6a:	7722                	ld	a4,40(sp)
   11c6c:	00f9f793          	andi	a5,s3,15
   11c70:	1cfd                	addi	s9,s9,-1
   11c72:	97ba                	add	a5,a5,a4
   11c74:	0007c783          	lbu	a5,0(a5)
   11c78:	0049d993          	srli	s3,s3,0x4
   11c7c:	00fc8023          	sb	a5,0(s9)
   11c80:	fe0995e3          	bnez	s3,11c6a <_vfprintf_r+0x830>
   11c84:	419b8bbb          	subw	s7,s7,s9
   11c88:	84ee                	mv	s1,s11
   11c8a:	b62d                	j	117b4 <_vfprintf_r+0x37a>
   11c8c:	06500713          	li	a4,101
   11c90:	c5a75be3          	bge	a4,s10,118e6 <_vfprintf_r+0x4ac>
   11c94:	6512                	ld	a0,256(sp)
   11c96:	65b2                	ld	a1,264(sp)
   11c98:	4601                	li	a2,0
   11c9a:	4681                	li	a3,0
   11c9c:	fc3e                	sd	a5,56(sp)
   11c9e:	f81a                	sd	t1,48(sp)
   11ca0:	536090ef          	jal	ra,1b1d6 <__eqtf2>
   11ca4:	7342                	ld	t1,48(sp)
   11ca6:	77e2                	ld	a5,56(sp)
   11ca8:	32051663          	bnez	a0,11fd4 <_vfprintf_r+0xb9a>
   11cac:	11812703          	lw	a4,280(sp)
   11cb0:	66f1                	lui	a3,0x1c
   11cb2:	74868693          	addi	a3,a3,1864 # 1c748 <__clzdi2+0x108>
   11cb6:	2705                	addiw	a4,a4,1
   11cb8:	00d33023          	sd	a3,0(t1)
   11cbc:	0785                	addi	a5,a5,1
   11cbe:	4685                	li	a3,1
   11cc0:	00d33423          	sd	a3,8(t1)
   11cc4:	10e12c23          	sw	a4,280(sp)
   11cc8:	0007069b          	sext.w	a3,a4
   11ccc:	f23e                	sd	a5,288(sp)
   11cce:	471d                	li	a4,7
   11cd0:	0341                	addi	t1,t1,16
   11cd2:	08d748e3          	blt	a4,a3,12562 <_vfprintf_r+0x1128>
   11cd6:	572e                	lw	a4,232(sp)
   11cd8:	7682                	ld	a3,32(sp)
   11cda:	4cd75463          	bge	a4,a3,121a2 <_vfprintf_r+0xd68>
   11cde:	76a6                	ld	a3,104(sp)
   11ce0:	11812703          	lw	a4,280(sp)
   11ce4:	7646                	ld	a2,112(sp)
   11ce6:	97b6                	add	a5,a5,a3
   11ce8:	2705                	addiw	a4,a4,1
   11cea:	00d33423          	sd	a3,8(t1)
   11cee:	00c33023          	sd	a2,0(t1)
   11cf2:	0007069b          	sext.w	a3,a4
   11cf6:	10e12c23          	sw	a4,280(sp)
   11cfa:	f23e                	sd	a5,288(sp)
   11cfc:	471d                	li	a4,7
   11cfe:	0341                	addi	t1,t1,16
   11d00:	5ed74f63          	blt	a4,a3,122fe <_vfprintf_r+0xec4>
   11d04:	7702                	ld	a4,32(sp)
   11d06:	fff70b9b          	addiw	s7,a4,-1
   11d0a:	9b7052e3          	blez	s7,116ae <_vfprintf_r+0x274>
   11d0e:	68f5                	lui	a7,0x1d
   11d10:	46c1                	li	a3,16
   11d12:	11812703          	lw	a4,280(sp)
   11d16:	99088d93          	addi	s11,a7,-1648 # 1c990 <zeroes.0>
   11d1a:	4cc1                	li	s9,16
   11d1c:	4c1d                	li	s8,7
   11d1e:	0176c763          	blt	a3,s7,11d2c <_vfprintf_r+0x8f2>
   11d22:	0570006f          	j	12578 <_vfprintf_r+0x113e>
   11d26:	3bc1                	addiw	s7,s7,-16
   11d28:	057cd8e3          	bge	s9,s7,12578 <_vfprintf_r+0x113e>
   11d2c:	2705                	addiw	a4,a4,1
   11d2e:	07c1                	addi	a5,a5,16
   11d30:	01b33023          	sd	s11,0(t1)
   11d34:	01933423          	sd	s9,8(t1)
   11d38:	f23e                	sd	a5,288(sp)
   11d3a:	10e12c23          	sw	a4,280(sp)
   11d3e:	0341                	addi	t1,t1,16
   11d40:	feec53e3          	bge	s8,a4,11d26 <_vfprintf_r+0x8ec>
   11d44:	0a10                	addi	a2,sp,272
   11d46:	85ca                	mv	a1,s2
   11d48:	8552                	mv	a0,s4
   11d4a:	70d060ef          	jal	ra,18c56 <__sprint_r>
   11d4e:	12051663          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   11d52:	7792                	ld	a5,288(sp)
   11d54:	11812703          	lw	a4,280(sp)
   11d58:	835a                	mv	t1,s6
   11d5a:	b7f1                	j	11d26 <_vfprintf_r+0x8ec>
   11d5c:	413a86bb          	subw	a3,s5,s3
   11d60:	90d05ee3          	blez	a3,1167c <_vfprintf_r+0x242>
   11d64:	68f5                	lui	a7,0x1d
   11d66:	4641                	li	a2,16
   11d68:	11812703          	lw	a4,280(sp)
   11d6c:	99088d93          	addi	s11,a7,-1648 # 1c990 <zeroes.0>
   11d70:	4f41                	li	t5,16
   11d72:	4f9d                	li	t6,7
   11d74:	00d64663          	blt	a2,a3,11d80 <_vfprintf_r+0x946>
   11d78:	a089                	j	11dba <_vfprintf_r+0x980>
   11d7a:	36c1                	addiw	a3,a3,-16
   11d7c:	02df5f63          	bge	t5,a3,11dba <_vfprintf_r+0x980>
   11d80:	2705                	addiw	a4,a4,1
   11d82:	07c1                	addi	a5,a5,16
   11d84:	01b33023          	sd	s11,0(t1)
   11d88:	01e33423          	sd	t5,8(t1)
   11d8c:	f23e                	sd	a5,288(sp)
   11d8e:	10e12c23          	sw	a4,280(sp)
   11d92:	0341                	addi	t1,t1,16
   11d94:	feefd3e3          	bge	t6,a4,11d7a <_vfprintf_r+0x940>
   11d98:	0a10                	addi	a2,sp,272
   11d9a:	85ca                	mv	a1,s2
   11d9c:	8552                	mv	a0,s4
   11d9e:	f836                	sd	a3,48(sp)
   11da0:	6b7060ef          	jal	ra,18c56 <__sprint_r>
   11da4:	e979                	bnez	a0,11e7a <_vfprintf_r+0xa40>
   11da6:	76c2                	ld	a3,48(sp)
   11da8:	4f41                	li	t5,16
   11daa:	7792                	ld	a5,288(sp)
   11dac:	36c1                	addiw	a3,a3,-16
   11dae:	11812703          	lw	a4,280(sp)
   11db2:	835a                	mv	t1,s6
   11db4:	4f9d                	li	t6,7
   11db6:	fcdf45e3          	blt	t5,a3,11d80 <_vfprintf_r+0x946>
   11dba:	2705                	addiw	a4,a4,1
   11dbc:	97b6                	add	a5,a5,a3
   11dbe:	00d33423          	sd	a3,8(t1)
   11dc2:	01b33023          	sd	s11,0(t1)
   11dc6:	0007069b          	sext.w	a3,a4
   11dca:	10e12c23          	sw	a4,280(sp)
   11dce:	f23e                	sd	a5,288(sp)
   11dd0:	471d                	li	a4,7
   11dd2:	0341                	addi	t1,t1,16
   11dd4:	8ad754e3          	bge	a4,a3,1167c <_vfprintf_r+0x242>
   11dd8:	0a10                	addi	a2,sp,272
   11dda:	85ca                	mv	a1,s2
   11ddc:	8552                	mv	a0,s4
   11dde:	679060ef          	jal	ra,18c56 <__sprint_r>
   11de2:	ed41                	bnez	a0,11e7a <_vfprintf_r+0xa40>
   11de4:	7792                	ld	a5,288(sp)
   11de6:	835a                	mv	t1,s6
   11de8:	b851                	j	1167c <_vfprintf_r+0x242>
   11dea:	68f5                	lui	a7,0x1d
   11dec:	4641                	li	a2,16
   11dee:	11812703          	lw	a4,280(sp)
   11df2:	99088d93          	addi	s11,a7,-1648 # 1c990 <zeroes.0>
   11df6:	4ec1                	li	t4,16
   11df8:	4f1d                	li	t5,7
   11dfa:	01864663          	blt	a2,s8,11e06 <_vfprintf_r+0x9cc>
   11dfe:	a83d                	j	11e3c <_vfprintf_r+0xa02>
   11e00:	3c41                	addiw	s8,s8,-16
   11e02:	038edd63          	bge	t4,s8,11e3c <_vfprintf_r+0xa02>
   11e06:	2705                	addiw	a4,a4,1
   11e08:	07c1                	addi	a5,a5,16
   11e0a:	01b33023          	sd	s11,0(t1)
   11e0e:	01d33423          	sd	t4,8(t1)
   11e12:	f23e                	sd	a5,288(sp)
   11e14:	10e12c23          	sw	a4,280(sp)
   11e18:	0341                	addi	t1,t1,16
   11e1a:	feef53e3          	bge	t5,a4,11e00 <_vfprintf_r+0x9c6>
   11e1e:	0a10                	addi	a2,sp,272
   11e20:	85ca                	mv	a1,s2
   11e22:	8552                	mv	a0,s4
   11e24:	633060ef          	jal	ra,18c56 <__sprint_r>
   11e28:	e929                	bnez	a0,11e7a <_vfprintf_r+0xa40>
   11e2a:	4ec1                	li	t4,16
   11e2c:	3c41                	addiw	s8,s8,-16
   11e2e:	7792                	ld	a5,288(sp)
   11e30:	11812703          	lw	a4,280(sp)
   11e34:	835a                	mv	t1,s6
   11e36:	4f1d                	li	t5,7
   11e38:	fd8ec7e3          	blt	t4,s8,11e06 <_vfprintf_r+0x9cc>
   11e3c:	0017069b          	addiw	a3,a4,1
   11e40:	97e2                	add	a5,a5,s8
   11e42:	01b33023          	sd	s11,0(t1)
   11e46:	01833423          	sd	s8,8(t1)
   11e4a:	f23e                	sd	a5,288(sp)
   11e4c:	10d12c23          	sw	a3,280(sp)
   11e50:	471d                	li	a4,7
   11e52:	0341                	addi	t1,t1,16
   11e54:	82d758e3          	bge	a4,a3,11684 <_vfprintf_r+0x24a>
   11e58:	0a10                	addi	a2,sp,272
   11e5a:	85ca                	mv	a1,s2
   11e5c:	8552                	mv	a0,s4
   11e5e:	5f9060ef          	jal	ra,18c56 <__sprint_r>
   11e62:	ed01                	bnez	a0,11e7a <_vfprintf_r+0xa40>
   11e64:	7792                	ld	a5,288(sp)
   11e66:	835a                	mv	t1,s6
   11e68:	81dff06f          	j	11684 <_vfprintf_r+0x24a>
   11e6c:	0a10                	addi	a2,sp,272
   11e6e:	85ca                	mv	a1,s2
   11e70:	8552                	mv	a0,s4
   11e72:	5e5060ef          	jal	ra,18c56 <__sprint_r>
   11e76:	84050be3          	beqz	a0,116cc <_vfprintf_r+0x292>
   11e7a:	67e2                	ld	a5,24(sp)
   11e7c:	86078ae3          	beqz	a5,116f0 <_vfprintf_r+0x2b6>
   11e80:	85be                	mv	a1,a5
   11e82:	8552                	mv	a0,s4
   11e84:	6fc010ef          	jal	ra,13580 <_free_r>
   11e88:	b0a5                	j	116f0 <_vfprintf_r+0x2b6>
   11e8a:	4705                	li	a4,1
   11e8c:	8da6                	mv	s11,s1
   11e8e:	b6e79ae3          	bne	a5,a4,11a02 <_vfprintf_r+0x5c8>
   11e92:	47a5                	li	a5,9
   11e94:	3737e763          	bltu	a5,s3,12202 <_vfprintf_r+0xdc8>
   11e98:	0309899b          	addiw	s3,s3,48
   11e9c:	193105a3          	sb	s3,395(sp)
   11ea0:	84ee                	mv	s1,s11
   11ea2:	4b85                	li	s7,1
   11ea4:	18b10c93          	addi	s9,sp,395
   11ea8:	b231                	j	117b4 <_vfprintf_r+0x37a>
   11eaa:	68f5                	lui	a7,0x1d
   11eac:	4641                	li	a2,16
   11eae:	11812703          	lw	a4,280(sp)
   11eb2:	98088893          	addi	a7,a7,-1664 # 1c980 <blanks.1>
   11eb6:	4f41                	li	t5,16
   11eb8:	439d                	li	t2,7
   11eba:	00d64663          	blt	a2,a3,11ec6 <_vfprintf_r+0xa8c>
   11ebe:	a0a9                	j	11f08 <_vfprintf_r+0xace>
   11ec0:	36c1                	addiw	a3,a3,-16
   11ec2:	04df5363          	bge	t5,a3,11f08 <_vfprintf_r+0xace>
   11ec6:	2705                	addiw	a4,a4,1
   11ec8:	07c1                	addi	a5,a5,16
   11eca:	01133023          	sd	a7,0(t1)
   11ece:	01e33423          	sd	t5,8(t1)
   11ed2:	f23e                	sd	a5,288(sp)
   11ed4:	10e12c23          	sw	a4,280(sp)
   11ed8:	0341                	addi	t1,t1,16
   11eda:	fee3d3e3          	bge	t2,a4,11ec0 <_vfprintf_r+0xa86>
   11ede:	0a10                	addi	a2,sp,272
   11ee0:	85ca                	mv	a1,s2
   11ee2:	8552                	mv	a0,s4
   11ee4:	e0c6                	sd	a7,64(sp)
   11ee6:	fc36                	sd	a3,56(sp)
   11ee8:	f816                	sd	t0,48(sp)
   11eea:	56d060ef          	jal	ra,18c56 <__sprint_r>
   11eee:	f551                	bnez	a0,11e7a <_vfprintf_r+0xa40>
   11ef0:	76e2                	ld	a3,56(sp)
   11ef2:	4f41                	li	t5,16
   11ef4:	7792                	ld	a5,288(sp)
   11ef6:	36c1                	addiw	a3,a3,-16
   11ef8:	11812703          	lw	a4,280(sp)
   11efc:	6886                	ld	a7,64(sp)
   11efe:	72c2                	ld	t0,48(sp)
   11f00:	835a                	mv	t1,s6
   11f02:	439d                	li	t2,7
   11f04:	fcdf41e3          	blt	t5,a3,11ec6 <_vfprintf_r+0xa8c>
   11f08:	2705                	addiw	a4,a4,1
   11f0a:	97b6                	add	a5,a5,a3
   11f0c:	00d33423          	sd	a3,8(t1)
   11f10:	01133023          	sd	a7,0(t1)
   11f14:	0007069b          	sext.w	a3,a4
   11f18:	10e12c23          	sw	a4,280(sp)
   11f1c:	f23e                	sd	a5,288(sp)
   11f1e:	471d                	li	a4,7
   11f20:	0341                	addi	t1,t1,16
   11f22:	eed75d63          	bge	a4,a3,1161c <_vfprintf_r+0x1e2>
   11f26:	0a10                	addi	a2,sp,272
   11f28:	85ca                	mv	a1,s2
   11f2a:	8552                	mv	a0,s4
   11f2c:	f816                	sd	t0,48(sp)
   11f2e:	529060ef          	jal	ra,18c56 <__sprint_r>
   11f32:	f521                	bnez	a0,11e7a <_vfprintf_r+0xa40>
   11f34:	7792                	ld	a5,288(sp)
   11f36:	72c2                	ld	t0,48(sp)
   11f38:	835a                	mv	t1,s6
   11f3a:	ee2ff06f          	j	1161c <_vfprintf_r+0x1e2>
   11f3e:	0a10                	addi	a2,sp,272
   11f40:	85ca                	mv	a1,s2
   11f42:	8552                	mv	a0,s4
   11f44:	513060ef          	jal	ra,18c56 <__sprint_r>
   11f48:	f90d                	bnez	a0,11e7a <_vfprintf_r+0xa40>
   11f4a:	7792                	ld	a5,288(sp)
   11f4c:	835a                	mv	t1,s6
   11f4e:	f26ff06f          	j	11674 <_vfprintf_r+0x23a>
   11f52:	68f5                	lui	a7,0x1d
   11f54:	46c1                	li	a3,16
   11f56:	11812703          	lw	a4,280(sp)
   11f5a:	98088893          	addi	a7,a7,-1664 # 1c980 <blanks.1>
   11f5e:	4bc1                	li	s7,16
   11f60:	4c1d                	li	s8,7
   11f62:	0096c663          	blt	a3,s1,11f6e <_vfprintf_r+0xb34>
   11f66:	a081                	j	11fa6 <_vfprintf_r+0xb6c>
   11f68:	34c1                	addiw	s1,s1,-16
   11f6a:	029bde63          	bge	s7,s1,11fa6 <_vfprintf_r+0xb6c>
   11f6e:	2705                	addiw	a4,a4,1
   11f70:	07c1                	addi	a5,a5,16
   11f72:	01133023          	sd	a7,0(t1)
   11f76:	01733423          	sd	s7,8(t1)
   11f7a:	f23e                	sd	a5,288(sp)
   11f7c:	10e12c23          	sw	a4,280(sp)
   11f80:	0341                	addi	t1,t1,16
   11f82:	feec53e3          	bge	s8,a4,11f68 <_vfprintf_r+0xb2e>
   11f86:	0a10                	addi	a2,sp,272
   11f88:	85ca                	mv	a1,s2
   11f8a:	8552                	mv	a0,s4
   11f8c:	f846                	sd	a7,48(sp)
   11f8e:	4c9060ef          	jal	ra,18c56 <__sprint_r>
   11f92:	ee0514e3          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   11f96:	34c1                	addiw	s1,s1,-16
   11f98:	7792                	ld	a5,288(sp)
   11f9a:	11812703          	lw	a4,280(sp)
   11f9e:	78c2                	ld	a7,48(sp)
   11fa0:	835a                	mv	t1,s6
   11fa2:	fc9bc6e3          	blt	s7,s1,11f6e <_vfprintf_r+0xb34>
   11fa6:	0017069b          	addiw	a3,a4,1
   11faa:	97a6                	add	a5,a5,s1
   11fac:	01133023          	sd	a7,0(t1)
   11fb0:	00933423          	sd	s1,8(t1)
   11fb4:	f23e                	sd	a5,288(sp)
   11fb6:	10d12c23          	sw	a3,280(sp)
   11fba:	471d                	li	a4,7
   11fbc:	eed75f63          	bge	a4,a3,116ba <_vfprintf_r+0x280>
   11fc0:	0a10                	addi	a2,sp,272
   11fc2:	85ca                	mv	a1,s2
   11fc4:	8552                	mv	a0,s4
   11fc6:	491060ef          	jal	ra,18c56 <__sprint_r>
   11fca:	ea0518e3          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   11fce:	7792                	ld	a5,288(sp)
   11fd0:	eeaff06f          	j	116ba <_vfprintf_r+0x280>
   11fd4:	562e                	lw	a2,232(sp)
   11fd6:	50c05a63          	blez	a2,124ea <_vfprintf_r+0x10b0>
   11fda:	6726                	ld	a4,72(sp)
   11fdc:	7682                	ld	a3,32(sp)
   11fde:	00070b9b          	sext.w	s7,a4
   11fe2:	2ae6c063          	blt	a3,a4,12282 <_vfprintf_r+0xe48>
   11fe6:	03705263          	blez	s7,1200a <_vfprintf_r+0xbd0>
   11fea:	11812703          	lw	a4,280(sp)
   11fee:	97de                	add	a5,a5,s7
   11ff0:	01933023          	sd	s9,0(t1)
   11ff4:	0017069b          	addiw	a3,a4,1
   11ff8:	01733423          	sd	s7,8(t1)
   11ffc:	f23e                	sd	a5,288(sp)
   11ffe:	10d12c23          	sw	a3,280(sp)
   12002:	471d                	li	a4,7
   12004:	0341                	addi	t1,t1,16
   12006:	0ad74ae3          	blt	a4,a3,128ba <_vfprintf_r+0x1480>
   1200a:	fffbc713          	not	a4,s7
   1200e:	977d                	srai	a4,a4,0x3f
   12010:	00ebfbb3          	and	s7,s7,a4
   12014:	6726                	ld	a4,72(sp)
   12016:	41770bbb          	subw	s7,a4,s7
   1201a:	31704863          	bgtz	s7,1232a <_vfprintf_r+0xef0>
   1201e:	66a6                	ld	a3,72(sp)
   12020:	4004f713          	andi	a4,s1,1024
   12024:	00dc8c33          	add	s8,s9,a3
   12028:	70071f63          	bnez	a4,12746 <_vfprintf_r+0x130c>
   1202c:	572e                	lw	a4,232(sp)
   1202e:	7682                	ld	a3,32(sp)
   12030:	00d74663          	blt	a4,a3,1203c <_vfprintf_r+0xc02>
   12034:	0014f693          	andi	a3,s1,1
   12038:	08068ee3          	beqz	a3,128d4 <_vfprintf_r+0x149a>
   1203c:	7626                	ld	a2,104(sp)
   1203e:	11812683          	lw	a3,280(sp)
   12042:	75c6                	ld	a1,112(sp)
   12044:	97b2                	add	a5,a5,a2
   12046:	2685                	addiw	a3,a3,1
   12048:	00c33423          	sd	a2,8(t1)
   1204c:	00b33023          	sd	a1,0(t1)
   12050:	0006861b          	sext.w	a2,a3
   12054:	10d12c23          	sw	a3,280(sp)
   12058:	f23e                	sd	a5,288(sp)
   1205a:	469d                	li	a3,7
   1205c:	0341                	addi	t1,t1,16
   1205e:	3ac6c3e3          	blt	a3,a2,12c04 <_vfprintf_r+0x17ca>
   12062:	7682                	ld	a3,32(sp)
   12064:	00dc8833          	add	a6,s9,a3
   12068:	41880bb3          	sub	s7,a6,s8
   1206c:	9e99                	subw	a3,a3,a4
   1206e:	000b861b          	sext.w	a2,s7
   12072:	00c6d363          	bge	a3,a2,12078 <_vfprintf_r+0xc3e>
   12076:	8bb6                	mv	s7,a3
   12078:	2b81                	sext.w	s7,s7
   1207a:	03705263          	blez	s7,1209e <_vfprintf_r+0xc64>
   1207e:	11812703          	lw	a4,280(sp)
   12082:	97de                	add	a5,a5,s7
   12084:	01833023          	sd	s8,0(t1)
   12088:	0017061b          	addiw	a2,a4,1
   1208c:	01733423          	sd	s7,8(t1)
   12090:	f23e                	sd	a5,288(sp)
   12092:	10c12c23          	sw	a2,280(sp)
   12096:	471d                	li	a4,7
   12098:	0341                	addi	t1,t1,16
   1209a:	38c74fe3          	blt	a4,a2,12c38 <_vfprintf_r+0x17fe>
   1209e:	fffbc713          	not	a4,s7
   120a2:	977d                	srai	a4,a4,0x3f
   120a4:	00ebfbb3          	and	s7,s7,a4
   120a8:	41768bbb          	subw	s7,a3,s7
   120ac:	e1705163          	blez	s7,116ae <_vfprintf_r+0x274>
   120b0:	68f5                	lui	a7,0x1d
   120b2:	46c1                	li	a3,16
   120b4:	11812703          	lw	a4,280(sp)
   120b8:	99088d93          	addi	s11,a7,-1648 # 1c990 <zeroes.0>
   120bc:	4cc1                	li	s9,16
   120be:	4c1d                	li	s8,7
   120c0:	0176c663          	blt	a3,s7,120cc <_vfprintf_r+0xc92>
   120c4:	a955                	j	12578 <_vfprintf_r+0x113e>
   120c6:	3bc1                	addiw	s7,s7,-16
   120c8:	4b7cd863          	bge	s9,s7,12578 <_vfprintf_r+0x113e>
   120cc:	2705                	addiw	a4,a4,1
   120ce:	07c1                	addi	a5,a5,16
   120d0:	01b33023          	sd	s11,0(t1)
   120d4:	01933423          	sd	s9,8(t1)
   120d8:	f23e                	sd	a5,288(sp)
   120da:	10e12c23          	sw	a4,280(sp)
   120de:	0341                	addi	t1,t1,16
   120e0:	feec53e3          	bge	s8,a4,120c6 <_vfprintf_r+0xc8c>
   120e4:	0a10                	addi	a2,sp,272
   120e6:	85ca                	mv	a1,s2
   120e8:	8552                	mv	a0,s4
   120ea:	36d060ef          	jal	ra,18c56 <__sprint_r>
   120ee:	d80516e3          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   120f2:	7792                	ld	a5,288(sp)
   120f4:	11812703          	lw	a4,280(sp)
   120f8:	835a                	mv	t1,s6
   120fa:	b7f1                	j	120c6 <_vfprintf_r+0xc8c>
   120fc:	0014f593          	andi	a1,s1,1
   12100:	800592e3          	bnez	a1,11904 <_vfprintf_r+0x4ca>
   12104:	00c33423          	sd	a2,8(t1)
   12108:	f26a                	sd	s10,288(sp)
   1210a:	11712c23          	sw	s7,280(sp)
   1210e:	469d                	li	a3,7
   12110:	8576dde3          	bge	a3,s7,1196a <_vfprintf_r+0x530>
   12114:	0a10                	addi	a2,sp,272
   12116:	85ca                	mv	a1,s2
   12118:	8552                	mv	a0,s4
   1211a:	33d060ef          	jal	ra,18c56 <__sprint_r>
   1211e:	d4051ee3          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12122:	7d12                	ld	s10,288(sp)
   12124:	11812b83          	lw	s7,280(sp)
   12128:	8c5a                	mv	s8,s6
   1212a:	841ff06f          	j	1196a <_vfprintf_r+0x530>
   1212e:	82d05ee3          	blez	a3,1196a <_vfprintf_r+0x530>
   12132:	68f5                	lui	a7,0x1d
   12134:	4641                	li	a2,16
   12136:	99088d93          	addi	s11,a7,-1648 # 1c990 <zeroes.0>
   1213a:	4841                	li	a6,16
   1213c:	4c9d                	li	s9,7
   1213e:	00d64663          	blt	a2,a3,1214a <_vfprintf_r+0xd10>
   12142:	a159                	j	125c8 <_vfprintf_r+0x118e>
   12144:	36c1                	addiw	a3,a3,-16
   12146:	48d85163          	bge	a6,a3,125c8 <_vfprintf_r+0x118e>
   1214a:	2b85                	addiw	s7,s7,1
   1214c:	0d41                	addi	s10,s10,16
   1214e:	01bc3023          	sd	s11,0(s8)
   12152:	010c3423          	sd	a6,8(s8)
   12156:	f26a                	sd	s10,288(sp)
   12158:	11712c23          	sw	s7,280(sp)
   1215c:	0c41                	addi	s8,s8,16
   1215e:	ff7cd3e3          	bge	s9,s7,12144 <_vfprintf_r+0xd0a>
   12162:	0a10                	addi	a2,sp,272
   12164:	85ca                	mv	a1,s2
   12166:	8552                	mv	a0,s4
   12168:	f836                	sd	a3,48(sp)
   1216a:	2ed060ef          	jal	ra,18c56 <__sprint_r>
   1216e:	d00516e3          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12172:	7d12                	ld	s10,288(sp)
   12174:	11812b83          	lw	s7,280(sp)
   12178:	76c2                	ld	a3,48(sp)
   1217a:	8c5a                	mv	s8,s6
   1217c:	4841                	li	a6,16
   1217e:	b7d9                	j	12144 <_vfprintf_r+0xd0a>
   12180:	010df793          	andi	a5,s11,16
   12184:	e3b9                	bnez	a5,121ca <_vfprintf_r+0xd90>
   12186:	66c2                	ld	a3,16(sp)
   12188:	040df793          	andi	a5,s11,64
   1218c:	0006a983          	lw	s3,0(a3)
   12190:	4c078363          	beqz	a5,12656 <_vfprintf_r+0x121c>
   12194:	19c2                	slli	s3,s3,0x30
   12196:	0309d993          	srli	s3,s3,0x30
   1219a:	e83a                	sd	a4,16(sp)
   1219c:	4785                	li	a5,1
   1219e:	e58ff06f          	j	117f6 <_vfprintf_r+0x3bc>
   121a2:	0014f713          	andi	a4,s1,1
   121a6:	d0070463          	beqz	a4,116ae <_vfprintf_r+0x274>
   121aa:	be15                	j	11cde <_vfprintf_r+0x8a4>
   121ac:	00044e03          	lbu	t3,0(s0)
   121b0:	e83e                	sd	a5,16(sp)
   121b2:	bd8ff06f          	j	1158a <_vfprintf_r+0x150>
   121b6:	67a2                	ld	a5,8(sp)
   121b8:	8ca2                	mv	s9,s0
   121ba:	e31c                	sd	a5,0(a4)
   121bc:	d24ff06f          	j	116e0 <_vfprintf_r+0x2a6>
   121c0:	67c2                	ld	a5,16(sp)
   121c2:	639c                	ld	a5,0(a5)
   121c4:	89be                	mv	s3,a5
   121c6:	dcaff06f          	j	11790 <_vfprintf_r+0x356>
   121ca:	67c2                	ld	a5,16(sp)
   121cc:	e83a                	sd	a4,16(sp)
   121ce:	0007b983          	ld	s3,0(a5)
   121d2:	4785                	li	a5,1
   121d4:	e22ff06f          	j	117f6 <_vfprintf_r+0x3bc>
   121d8:	67c2                	ld	a5,16(sp)
   121da:	0007b983          	ld	s3,0(a5)
   121de:	e0eff06f          	j	117ec <_vfprintf_r+0x3b2>
   121e2:	67c2                	ld	a5,16(sp)
   121e4:	ec1a                	sd	t1,24(sp)
   121e6:	2388                	fld	fa0,0(a5)
   121e8:	07a1                	addi	a5,a5,8
   121ea:	e83e                	sd	a5,16(sp)
   121ec:	1700a0ef          	jal	ra,1c35c <__extenddftf2>
   121f0:	6362                	ld	t1,24(sp)
   121f2:	87aa                	mv	a5,a0
   121f4:	e70ff06f          	j	11864 <_vfprintf_r+0x42a>
   121f8:	e83a                	sd	a4,16(sp)
   121fa:	47a5                	li	a5,9
   121fc:	8da6                	mv	s11,s1
   121fe:	c937fde3          	bgeu	a5,s3,11e98 <_vfprintf_r+0xa5e>
   12202:	18c10b93          	addi	s7,sp,396
   12206:	400df713          	andi	a4,s11,1024
   1220a:	f002                	sd	zero,32(sp)
   1220c:	865e                	mv	a2,s7
   1220e:	44a9                	li	s1,10
   12210:	46a5                	li	a3,9
   12212:	0ff00893          	li	a7,255
   12216:	a039                	j	12224 <_vfprintf_r+0xdea>
   12218:	0299d7b3          	divu	a5,s3,s1
   1221c:	a736f4e3          	bgeu	a3,s3,11c84 <_vfprintf_r+0x84a>
   12220:	89be                	mv	s3,a5
   12222:	8666                	mv	a2,s9
   12224:	7582                	ld	a1,32(sp)
   12226:	fff60c93          	addi	s9,a2,-1
   1222a:	2585                	addiw	a1,a1,1
   1222c:	f02e                	sd	a1,32(sp)
   1222e:	0299f7b3          	remu	a5,s3,s1
   12232:	0307879b          	addiw	a5,a5,48
   12236:	fef60fa3          	sb	a5,-1(a2)
   1223a:	df79                	beqz	a4,12218 <_vfprintf_r+0xdde>
   1223c:	7786                	ld	a5,96(sp)
   1223e:	0007c783          	lbu	a5,0(a5)
   12242:	fcf59be3          	bne	a1,a5,12218 <_vfprintf_r+0xdde>
   12246:	fd1789e3          	beq	a5,a7,12218 <_vfprintf_r+0xdde>
   1224a:	a336fde3          	bgeu	a3,s3,11c84 <_vfprintf_r+0x84a>
   1224e:	678a                	ld	a5,128(sp)
   12250:	65aa                	ld	a1,136(sp)
   12252:	f83a                	sd	a4,48(sp)
   12254:	40fc8cb3          	sub	s9,s9,a5
   12258:	863e                	mv	a2,a5
   1225a:	8566                	mv	a0,s9
   1225c:	ec1a                	sd	t1,24(sp)
   1225e:	697040ef          	jal	ra,170f4 <strncpy>
   12262:	7706                	ld	a4,96(sp)
   12264:	0299d7b3          	divu	a5,s3,s1
   12268:	6362                	ld	t1,24(sp)
   1226a:	00174603          	lbu	a2,1(a4)
   1226e:	f002                	sd	zero,32(sp)
   12270:	46a5                	li	a3,9
   12272:	00c03633          	snez	a2,a2
   12276:	9732                	add	a4,a4,a2
   12278:	f0ba                	sd	a4,96(sp)
   1227a:	0ff00893          	li	a7,255
   1227e:	7742                	ld	a4,48(sp)
   12280:	b745                	j	12220 <_vfprintf_r+0xde6>
   12282:	00068b9b          	sext.w	s7,a3
   12286:	d77042e3          	bgtz	s7,11fea <_vfprintf_r+0xbb0>
   1228a:	b341                	j	1200a <_vfprintf_r+0xbd0>
   1228c:	8da6                	mv	s11,s1
   1228e:	ba21                	j	11ba6 <_vfprintf_r+0x76c>
   12290:	67f1                	lui	a5,0x1c
   12292:	71078793          	addi	a5,a5,1808 # 1c710 <__clzdi2+0xd0>
   12296:	f43e                	sd	a5,40(sp)
   12298:	66c2                	ld	a3,16(sp)
   1229a:	0204f793          	andi	a5,s1,32
   1229e:	00868713          	addi	a4,a3,8
   122a2:	20078363          	beqz	a5,124a8 <_vfprintf_r+0x106e>
   122a6:	0006b983          	ld	s3,0(a3)
   122aa:	0014f793          	andi	a5,s1,1
   122ae:	cf81                	beqz	a5,122c6 <_vfprintf_r+0xe8c>
   122b0:	00098b63          	beqz	s3,122c6 <_vfprintf_r+0xe8c>
   122b4:	0024e493          	ori	s1,s1,2
   122b8:	03000793          	li	a5,48
   122bc:	0ef10023          	sb	a5,224(sp)
   122c0:	0fa100a3          	sb	s10,225(sp)
   122c4:	2481                	sext.w	s1,s1
   122c6:	bff4fd93          	andi	s11,s1,-1025
   122ca:	2d81                	sext.w	s11,s11
   122cc:	e83a                	sd	a4,16(sp)
   122ce:	4789                	li	a5,2
   122d0:	d26ff06f          	j	117f6 <_vfprintf_r+0x3bc>
   122d4:	2004e493          	ori	s1,s1,512
   122d8:	00144e03          	lbu	t3,1(s0)
   122dc:	2481                	sext.w	s1,s1
   122de:	0405                	addi	s0,s0,1
   122e0:	aaaff06f          	j	1158a <_vfprintf_r+0x150>
   122e4:	67f1                	lui	a5,0x1c
   122e6:	72878793          	addi	a5,a5,1832 # 1c728 <__clzdi2+0xe8>
   122ea:	f43e                	sd	a5,40(sp)
   122ec:	b775                	j	12298 <_vfprintf_r+0xe5e>
   122ee:	0204e493          	ori	s1,s1,32
   122f2:	00144e03          	lbu	t3,1(s0)
   122f6:	2481                	sext.w	s1,s1
   122f8:	0405                	addi	s0,s0,1
   122fa:	a90ff06f          	j	1158a <_vfprintf_r+0x150>
   122fe:	0a10                	addi	a2,sp,272
   12300:	85ca                	mv	a1,s2
   12302:	8552                	mv	a0,s4
   12304:	153060ef          	jal	ra,18c56 <__sprint_r>
   12308:	b60519e3          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   1230c:	7792                	ld	a5,288(sp)
   1230e:	835a                	mv	t1,s6
   12310:	bad5                	j	11d04 <_vfprintf_r+0x8ca>
   12312:	4799                	li	a5,6
   12314:	000c0b9b          	sext.w	s7,s8
   12318:	5b87ec63          	bltu	a5,s8,128d0 <_vfprintf_r+0x1496>
   1231c:	6871                	lui	a6,0x1c
   1231e:	89de                	mv	s3,s7
   12320:	e86e                	sd	s11,16(sp)
   12322:	74080c93          	addi	s9,a6,1856 # 1c740 <__clzdi2+0x100>
   12326:	ad0ff06f          	j	115f6 <_vfprintf_r+0x1bc>
   1232a:	68f5                	lui	a7,0x1d
   1232c:	46c1                	li	a3,16
   1232e:	11812703          	lw	a4,280(sp)
   12332:	99088d93          	addi	s11,a7,-1648 # 1c990 <zeroes.0>
   12336:	4d41                	li	s10,16
   12338:	4c1d                	li	s8,7
   1233a:	0176c663          	blt	a3,s7,12346 <_vfprintf_r+0xf0c>
   1233e:	aee1                	j	12716 <_vfprintf_r+0x12dc>
   12340:	3bc1                	addiw	s7,s7,-16
   12342:	3d7d5a63          	bge	s10,s7,12716 <_vfprintf_r+0x12dc>
   12346:	2705                	addiw	a4,a4,1
   12348:	07c1                	addi	a5,a5,16
   1234a:	01b33023          	sd	s11,0(t1)
   1234e:	01a33423          	sd	s10,8(t1)
   12352:	f23e                	sd	a5,288(sp)
   12354:	10e12c23          	sw	a4,280(sp)
   12358:	0341                	addi	t1,t1,16
   1235a:	feec53e3          	bge	s8,a4,12340 <_vfprintf_r+0xf06>
   1235e:	0a10                	addi	a2,sp,272
   12360:	85ca                	mv	a1,s2
   12362:	8552                	mv	a0,s4
   12364:	0f3060ef          	jal	ra,18c56 <__sprint_r>
   12368:	b00519e3          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   1236c:	7792                	ld	a5,288(sp)
   1236e:	11812703          	lw	a4,280(sp)
   12372:	835a                	mv	t1,s6
   12374:	b7f1                	j	12340 <_vfprintf_r+0xf06>
   12376:	07800713          	li	a4,120
   1237a:	0024e793          	ori	a5,s1,2
   1237e:	03000693          	li	a3,48
   12382:	2781                	sext.w	a5,a5
   12384:	0ee100a3          	sb	a4,225(sp)
   12388:	0ed10023          	sb	a3,224(sp)
   1238c:	06300713          	li	a4,99
   12390:	f53e                	sd	a5,168(sp)
   12392:	ec02                	sd	zero,24(sp)
   12394:	12810c93          	addi	s9,sp,296
   12398:	6b874a63          	blt	a4,s8,12a4c <_vfprintf_r+0x1612>
   1239c:	69b2                	ld	s3,264(sp)
   1239e:	fdfd7793          	andi	a5,s10,-33
   123a2:	1024e493          	ori	s1,s1,258
   123a6:	ecbe                	sd	a5,88(sp)
   123a8:	e582                	sd	zero,200(sp)
   123aa:	6b92                	ld	s7,256(sp)
   123ac:	2481                	sext.w	s1,s1
   123ae:	6609ca63          	bltz	s3,12a22 <_vfprintf_r+0x15e8>
   123b2:	06100793          	li	a5,97
   123b6:	1efd0ce3          	beq	s10,a5,12dae <_vfprintf_r+0x1974>
   123ba:	fbfd079b          	addiw	a5,s10,-65
   123be:	0007869b          	sext.w	a3,a5
   123c2:	02500713          	li	a4,37
   123c6:	00d76c63          	bltu	a4,a3,123de <_vfprintf_r+0xfa4>
   123ca:	02079713          	slli	a4,a5,0x20
   123ce:	01e75793          	srli	a5,a4,0x1e
   123d2:	6775                	lui	a4,0x1d
   123d4:	8b870713          	addi	a4,a4,-1864 # 1c8b8 <__clzdi2+0x278>
   123d8:	97ba                	add	a5,a5,a4
   123da:	439c                	lw	a5,0(a5)
   123dc:	8782                	jr	a5
   123de:	8de2                	mv	s11,s8
   123e0:	4689                	li	a3,2
   123e2:	11bc                	addi	a5,sp,232
   123e4:	876e                	mv	a4,s11
   123e6:	0f810893          	addi	a7,sp,248
   123ea:	0ec10813          	addi	a6,sp,236
   123ee:	85de                	mv	a1,s7
   123f0:	864e                	mv	a2,s3
   123f2:	8552                	mv	a0,s4
   123f4:	f01a                	sd	t1,32(sp)
   123f6:	107020ef          	jal	ra,14cfc <_ldtoa_r>
   123fa:	6766                	ld	a4,88(sp)
   123fc:	04700793          	li	a5,71
   12400:	7302                	ld	t1,32(sp)
   12402:	8caa                	mv	s9,a0
   12404:	7cf70463          	beq	a4,a5,12bcc <_vfprintf_r+0x1792>
   12408:	04600793          	li	a5,70
   1240c:	01b508b3          	add	a7,a0,s11
   12410:	00f71a63          	bne	a4,a5,12424 <_vfprintf_r+0xfea>
   12414:	00054703          	lbu	a4,0(a0)
   12418:	03000793          	li	a5,48
   1241c:	64f70463          	beq	a4,a5,12a64 <_vfprintf_r+0x162a>
   12420:	572e                	lw	a4,232(sp)
   12422:	98ba                	add	a7,a7,a4
   12424:	4681                	li	a3,0
   12426:	4601                	li	a2,0
   12428:	855e                	mv	a0,s7
   1242a:	85ce                	mv	a1,s3
   1242c:	f846                	sd	a7,48(sp)
   1242e:	f01a                	sd	t1,32(sp)
   12430:	5a7080ef          	jal	ra,1b1d6 <__eqtf2>
   12434:	78c2                	ld	a7,48(sp)
   12436:	7302                	ld	t1,32(sp)
   12438:	86c6                	mv	a3,a7
   1243a:	e929                	bnez	a0,1248c <_vfprintf_r+0x1052>
   1243c:	419687bb          	subw	a5,a3,s9
   12440:	f03e                	sd	a5,32(sp)
   12442:	572e                	lw	a4,232(sp)
   12444:	04700793          	li	a5,71
   12448:	e4ba                	sd	a4,72(sp)
   1244a:	6766                	ld	a4,88(sp)
   1244c:	24f70963          	beq	a4,a5,1269e <_vfprintf_r+0x1264>
   12450:	6766                	ld	a4,88(sp)
   12452:	04600793          	li	a5,70
   12456:	4af71163          	bne	a4,a5,128f8 <_vfprintf_r+0x14be>
   1245a:	77aa                	ld	a5,168(sp)
   1245c:	6726                	ld	a4,72(sp)
   1245e:	8b85                	andi	a5,a5,1
   12460:	00fc67b3          	or	a5,s8,a5
   12464:	20e055e3          	blez	a4,12e6e <_vfprintf_r+0x1a34>
   12468:	1e079ae3          	bnez	a5,12e5c <_vfprintf_r+0x1a22>
   1246c:	6ba6                	ld	s7,72(sp)
   1246e:	06600d13          	li	s10,102
   12472:	77aa                	ld	a5,168(sp)
   12474:	4007f793          	andi	a5,a5,1024
   12478:	16079be3          	bnez	a5,12dee <_vfprintf_r+0x19b4>
   1247c:	fffbc993          	not	s3,s7
   12480:	43f9d993          	srai	s3,s3,0x3f
   12484:	013bf9b3          	and	s3,s7,s3
   12488:	2981                	sext.w	s3,s3
   1248a:	aca1                	j	126e2 <_vfprintf_r+0x12a8>
   1248c:	76ee                	ld	a3,248(sp)
   1248e:	fb16f7e3          	bgeu	a3,a7,1243c <_vfprintf_r+0x1002>
   12492:	03000713          	li	a4,48
   12496:	00168793          	addi	a5,a3,1
   1249a:	fdbe                	sd	a5,248(sp)
   1249c:	00e68023          	sb	a4,0(a3)
   124a0:	76ee                	ld	a3,248(sp)
   124a2:	ff16eae3          	bltu	a3,a7,12496 <_vfprintf_r+0x105c>
   124a6:	bf59                	j	1243c <_vfprintf_r+0x1002>
   124a8:	0104f793          	andi	a5,s1,16
   124ac:	c3c5                	beqz	a5,1254c <_vfprintf_r+0x1112>
   124ae:	67c2                	ld	a5,16(sp)
   124b0:	0007b983          	ld	s3,0(a5)
   124b4:	bbdd                	j	122aa <_vfprintf_r+0xe70>
   124b6:	0a10                	addi	a2,sp,272
   124b8:	85ca                	mv	a1,s2
   124ba:	8552                	mv	a0,s4
   124bc:	79a060ef          	jal	ra,18c56 <__sprint_r>
   124c0:	9a051de3          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   124c4:	7d12                	ld	s10,288(sp)
   124c6:	11812b83          	lw	s7,280(sp)
   124ca:	8c5a                	mv	s8,s6
   124cc:	c4aff06f          	j	11916 <_vfprintf_r+0x4dc>
   124d0:	0a10                	addi	a2,sp,272
   124d2:	85ca                	mv	a1,s2
   124d4:	8552                	mv	a0,s4
   124d6:	780060ef          	jal	ra,18c56 <__sprint_r>
   124da:	9a0510e3          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   124de:	7d12                	ld	s10,288(sp)
   124e0:	11812b83          	lw	s7,280(sp)
   124e4:	8c5a                	mv	s8,s6
   124e6:	c4eff06f          	j	11934 <_vfprintf_r+0x4fa>
   124ea:	11812703          	lw	a4,280(sp)
   124ee:	66f1                	lui	a3,0x1c
   124f0:	74868693          	addi	a3,a3,1864 # 1c748 <__clzdi2+0x108>
   124f4:	2705                	addiw	a4,a4,1
   124f6:	00d33023          	sd	a3,0(t1)
   124fa:	0785                	addi	a5,a5,1
   124fc:	4685                	li	a3,1
   124fe:	00d33423          	sd	a3,8(t1)
   12502:	10e12c23          	sw	a4,280(sp)
   12506:	0007069b          	sext.w	a3,a4
   1250a:	f23e                	sd	a5,288(sp)
   1250c:	471d                	li	a4,7
   1250e:	0341                	addi	t1,t1,16
   12510:	38d74663          	blt	a4,a3,1289c <_vfprintf_r+0x1462>
   12514:	0e061a63          	bnez	a2,12608 <_vfprintf_r+0x11ce>
   12518:	7682                	ld	a3,32(sp)
   1251a:	0014f713          	andi	a4,s1,1
   1251e:	8f55                	or	a4,a4,a3
   12520:	98070763          	beqz	a4,116ae <_vfprintf_r+0x274>
   12524:	76a6                	ld	a3,104(sp)
   12526:	11812703          	lw	a4,280(sp)
   1252a:	7646                	ld	a2,112(sp)
   1252c:	97b6                	add	a5,a5,a3
   1252e:	2705                	addiw	a4,a4,1
   12530:	00d33423          	sd	a3,8(t1)
   12534:	10e12c23          	sw	a4,280(sp)
   12538:	0007069b          	sext.w	a3,a4
   1253c:	00c33023          	sd	a2,0(t1)
   12540:	f23e                	sd	a5,288(sp)
   12542:	471d                	li	a4,7
   12544:	4ed74763          	blt	a4,a3,12a32 <_vfprintf_r+0x15f8>
   12548:	0341                	addi	t1,t1,16
   1254a:	a0e5                	j	12632 <_vfprintf_r+0x11f8>
   1254c:	66c2                	ld	a3,16(sp)
   1254e:	0404f793          	andi	a5,s1,64
   12552:	0006a983          	lw	s3,0(a3)
   12556:	10078a63          	beqz	a5,1266a <_vfprintf_r+0x1230>
   1255a:	19c2                	slli	s3,s3,0x30
   1255c:	0309d993          	srli	s3,s3,0x30
   12560:	b3a9                	j	122aa <_vfprintf_r+0xe70>
   12562:	0a10                	addi	a2,sp,272
   12564:	85ca                	mv	a1,s2
   12566:	8552                	mv	a0,s4
   12568:	6ee060ef          	jal	ra,18c56 <__sprint_r>
   1256c:	900517e3          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12570:	7792                	ld	a5,288(sp)
   12572:	835a                	mv	t1,s6
   12574:	f62ff06f          	j	11cd6 <_vfprintf_r+0x89c>
   12578:	0017069b          	addiw	a3,a4,1
   1257c:	8736                	mv	a4,a3
   1257e:	97de                	add	a5,a5,s7
   12580:	01b33023          	sd	s11,0(t1)
   12584:	918ff06f          	j	1169c <_vfprintf_r+0x262>
   12588:	6512                	ld	a0,256(sp)
   1258a:	65b2                	ld	a1,264(sp)
   1258c:	4601                	li	a2,0
   1258e:	4681                	li	a3,0
   12590:	58d080ef          	jal	ra,1b31c <__letf2>
   12594:	6362                	ld	t1,24(sp)
   12596:	66054263          	bltz	a0,12bfa <_vfprintf_r+0x17c0>
   1259a:	0df14783          	lbu	a5,223(sp)
   1259e:	04700713          	li	a4,71
   125a2:	31a75863          	bge	a4,s10,128b2 <_vfprintf_r+0x1478>
   125a6:	6871                	lui	a6,0x1c
   125a8:	6f880c93          	addi	s9,a6,1784 # 1c6f8 <__clzdi2+0xb8>
   125ac:	f7f4f493          	andi	s1,s1,-129
   125b0:	ec02                	sd	zero,24(sp)
   125b2:	e882                	sd	zero,80(sp)
   125b4:	ec82                	sd	zero,88(sp)
   125b6:	e482                	sd	zero,72(sp)
   125b8:	2481                	sext.w	s1,s1
   125ba:	498d                	li	s3,3
   125bc:	4b8d                	li	s7,3
   125be:	4c01                	li	s8,0
   125c0:	a0079863          	bnez	a5,117d0 <_vfprintf_r+0x396>
   125c4:	83cff06f          	j	11600 <_vfprintf_r+0x1c6>
   125c8:	2b85                	addiw	s7,s7,1
   125ca:	865e                	mv	a2,s7
   125cc:	9d36                	add	s10,s10,a3
   125ce:	01bc3023          	sd	s11,0(s8)
   125d2:	b86ff06f          	j	11958 <_vfprintf_r+0x51e>
   125d6:	8566                	mv	a0,s9
   125d8:	f81a                	sd	t1,48(sp)
   125da:	dd1fe0ef          	jal	ra,113aa <strlen>
   125de:	00050b9b          	sext.w	s7,a0
   125e2:	0df14783          	lbu	a5,223(sp)
   125e6:	fffbc993          	not	s3,s7
   125ea:	43f9d993          	srai	s3,s3,0x3f
   125ee:	e86e                	sd	s11,16(sp)
   125f0:	ec02                	sd	zero,24(sp)
   125f2:	e882                	sd	zero,80(sp)
   125f4:	ec82                	sd	zero,88(sp)
   125f6:	e482                	sd	zero,72(sp)
   125f8:	7342                	ld	t1,48(sp)
   125fa:	0179f9b3          	and	s3,s3,s7
   125fe:	4c01                	li	s8,0
   12600:	9c079863          	bnez	a5,117d0 <_vfprintf_r+0x396>
   12604:	ffdfe06f          	j	11600 <_vfprintf_r+0x1c6>
   12608:	76a6                	ld	a3,104(sp)
   1260a:	11812703          	lw	a4,280(sp)
   1260e:	75c6                	ld	a1,112(sp)
   12610:	97b6                	add	a5,a5,a3
   12612:	2705                	addiw	a4,a4,1
   12614:	00d33423          	sd	a3,8(t1)
   12618:	00b33023          	sd	a1,0(t1)
   1261c:	0007069b          	sext.w	a3,a4
   12620:	10e12c23          	sw	a4,280(sp)
   12624:	f23e                	sd	a5,288(sp)
   12626:	471d                	li	a4,7
   12628:	0341                	addi	t1,t1,16
   1262a:	40d74463          	blt	a4,a3,12a32 <_vfprintf_r+0x15f8>
   1262e:	62064863          	bltz	a2,12c5e <_vfprintf_r+0x1824>
   12632:	7702                	ld	a4,32(sp)
   12634:	0016861b          	addiw	a2,a3,1
   12638:	01933023          	sd	s9,0(t1)
   1263c:	97ba                	add	a5,a5,a4
   1263e:	00e33423          	sd	a4,8(t1)
   12642:	f23e                	sd	a5,288(sp)
   12644:	10c12c23          	sw	a2,280(sp)
   12648:	471d                	li	a4,7
   1264a:	00c74463          	blt	a4,a2,12652 <_vfprintf_r+0x1218>
   1264e:	85eff06f          	j	116ac <_vfprintf_r+0x272>
   12652:	b3cff06f          	j	1198e <_vfprintf_r+0x554>
   12656:	200df793          	andi	a5,s11,512
   1265a:	38078f63          	beqz	a5,129f8 <_vfprintf_r+0x15be>
   1265e:	0ff9f993          	zext.b	s3,s3
   12662:	e83a                	sd	a4,16(sp)
   12664:	4785                	li	a5,1
   12666:	990ff06f          	j	117f6 <_vfprintf_r+0x3bc>
   1266a:	2004f793          	andi	a5,s1,512
   1266e:	38078163          	beqz	a5,129f0 <_vfprintf_r+0x15b6>
   12672:	0ff9f993          	zext.b	s3,s3
   12676:	b915                	j	122aa <_vfprintf_r+0xe70>
   12678:	2004f793          	andi	a5,s1,512
   1267c:	36078563          	beqz	a5,129e6 <_vfprintf_r+0x15ac>
   12680:	0ff9f993          	zext.b	s3,s3
   12684:	968ff06f          	j	117ec <_vfprintf_r+0x3b2>
   12688:	2004f793          	andi	a5,s1,512
   1268c:	34078a63          	beqz	a5,129e0 <_vfprintf_r+0x15a6>
   12690:	0189999b          	slliw	s3,s3,0x18
   12694:	4189d99b          	sraiw	s3,s3,0x18
   12698:	87ce                	mv	a5,s3
   1269a:	8f6ff06f          	j	11790 <_vfprintf_r+0x356>
   1269e:	6726                	ld	a4,72(sp)
   126a0:	57f5                	li	a5,-3
   126a2:	24f74763          	blt	a4,a5,128f0 <_vfprintf_r+0x14b6>
   126a6:	24ec4563          	blt	s8,a4,128f0 <_vfprintf_r+0x14b6>
   126aa:	7782                	ld	a5,32(sp)
   126ac:	6726                	ld	a4,72(sp)
   126ae:	60f74263          	blt	a4,a5,12cb2 <_vfprintf_r+0x1878>
   126b2:	77aa                	ld	a5,168(sp)
   126b4:	6726                	ld	a4,72(sp)
   126b6:	8b85                	andi	a5,a5,1
   126b8:	8bba                	mv	s7,a4
   126ba:	c781                	beqz	a5,126c2 <_vfprintf_r+0x1288>
   126bc:	77a6                	ld	a5,104(sp)
   126be:	00e78bbb          	addw	s7,a5,a4
   126c2:	77aa                	ld	a5,168(sp)
   126c4:	4007f793          	andi	a5,a5,1024
   126c8:	c781                	beqz	a5,126d0 <_vfprintf_r+0x1296>
   126ca:	67a6                	ld	a5,72(sp)
   126cc:	70f04f63          	bgtz	a5,12dea <_vfprintf_r+0x19b0>
   126d0:	fffbc993          	not	s3,s7
   126d4:	43f9d993          	srai	s3,s3,0x3f
   126d8:	013bf9b3          	and	s3,s7,s3
   126dc:	2981                	sext.w	s3,s3
   126de:	06700d13          	li	s10,103
   126e2:	e882                	sd	zero,80(sp)
   126e4:	ec82                	sd	zero,88(sp)
   126e6:	67ae                	ld	a5,200(sp)
   126e8:	4c078a63          	beqz	a5,12bbc <_vfprintf_r+0x1782>
   126ec:	02d00793          	li	a5,45
   126f0:	0cf10fa3          	sb	a5,223(sp)
   126f4:	4c01                	li	s8,0
   126f6:	2985                	addiw	s3,s3,1
   126f8:	f09fe06f          	j	11600 <_vfprintf_r+0x1c6>
   126fc:	67b2                	ld	a5,264(sp)
   126fe:	3007cb63          	bltz	a5,12a14 <_vfprintf_r+0x15da>
   12702:	0df14783          	lbu	a5,223(sp)
   12706:	04700713          	li	a4,71
   1270a:	55a75663          	bge	a4,s10,12c56 <_vfprintf_r+0x181c>
   1270e:	6871                	lui	a6,0x1c
   12710:	70880c93          	addi	s9,a6,1800 # 1c708 <__clzdi2+0xc8>
   12714:	bd61                	j	125ac <_vfprintf_r+0x1172>
   12716:	0017069b          	addiw	a3,a4,1
   1271a:	97de                	add	a5,a5,s7
   1271c:	01b33023          	sd	s11,0(t1)
   12720:	01733423          	sd	s7,8(t1)
   12724:	f23e                	sd	a5,288(sp)
   12726:	10d12c23          	sw	a3,280(sp)
   1272a:	471d                	li	a4,7
   1272c:	0341                	addi	t1,t1,16
   1272e:	8ed758e3          	bge	a4,a3,1201e <_vfprintf_r+0xbe4>
   12732:	0a10                	addi	a2,sp,272
   12734:	85ca                	mv	a1,s2
   12736:	8552                	mv	a0,s4
   12738:	51e060ef          	jal	ra,18c56 <__sprint_r>
   1273c:	f2051f63          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12740:	7792                	ld	a5,288(sp)
   12742:	835a                	mv	t1,s6
   12744:	b8e9                	j	1201e <_vfprintf_r+0xbe4>
   12746:	7702                	ld	a4,32(sp)
   12748:	6ef5                	lui	t4,0x1d
   1274a:	4b9d                	li	s7,7
   1274c:	9766                	add	a4,a4,s9
   1274e:	fc3a                	sd	a4,56(sp)
   12750:	6766                	ld	a4,88(sp)
   12752:	4dc1                	li	s11,16
   12754:	990e8d13          	addi	s10,t4,-1648 # 1c990 <zeroes.0>
   12758:	cb49                	beqz	a4,127ea <_vfprintf_r+0x13b0>
   1275a:	6746                	ld	a4,80(sp)
   1275c:	eb51                	bnez	a4,127f0 <_vfprintf_r+0x13b6>
   1275e:	7706                	ld	a4,96(sp)
   12760:	177d                	addi	a4,a4,-1
   12762:	f0ba                	sd	a4,96(sp)
   12764:	6766                	ld	a4,88(sp)
   12766:	377d                	addiw	a4,a4,-1
   12768:	ecba                	sd	a4,88(sp)
   1276a:	668a                	ld	a3,128(sp)
   1276c:	11812703          	lw	a4,280(sp)
   12770:	662a                	ld	a2,136(sp)
   12772:	97b6                	add	a5,a5,a3
   12774:	2705                	addiw	a4,a4,1
   12776:	00d33423          	sd	a3,8(t1)
   1277a:	00c33023          	sd	a2,0(t1)
   1277e:	f23e                	sd	a5,288(sp)
   12780:	0007069b          	sext.w	a3,a4
   12784:	10e12c23          	sw	a4,280(sp)
   12788:	0341                	addi	t1,t1,16
   1278a:	0cdbce63          	blt	s7,a3,12866 <_vfprintf_r+0x142c>
   1278e:	7706                	ld	a4,96(sp)
   12790:	00074603          	lbu	a2,0(a4)
   12794:	7762                	ld	a4,56(sp)
   12796:	418706b3          	sub	a3,a4,s8
   1279a:	0006859b          	sext.w	a1,a3
   1279e:	0006071b          	sext.w	a4,a2
   127a2:	00b65363          	bge	a2,a1,127a8 <_vfprintf_r+0x136e>
   127a6:	86ba                	mv	a3,a4
   127a8:	2681                	sext.w	a3,a3
   127aa:	02d05663          	blez	a3,127d6 <_vfprintf_r+0x139c>
   127ae:	11812703          	lw	a4,280(sp)
   127b2:	97b6                	add	a5,a5,a3
   127b4:	01833023          	sd	s8,0(t1)
   127b8:	0017061b          	addiw	a2,a4,1
   127bc:	00d33423          	sd	a3,8(t1)
   127c0:	f23e                	sd	a5,288(sp)
   127c2:	10c12c23          	sw	a2,280(sp)
   127c6:	0acbca63          	blt	s7,a2,1287a <_vfprintf_r+0x1440>
   127ca:	7706                	ld	a4,96(sp)
   127cc:	0341                	addi	t1,t1,16
   127ce:	00074603          	lbu	a2,0(a4)
   127d2:	0006071b          	sext.w	a4,a2
   127d6:	fff6c593          	not	a1,a3
   127da:	95fd                	srai	a1,a1,0x3f
   127dc:	8eed                	and	a3,a3,a1
   127de:	9f15                	subw	a4,a4,a3
   127e0:	00e04c63          	bgtz	a4,127f8 <_vfprintf_r+0x13be>
   127e4:	9c32                	add	s8,s8,a2
   127e6:	6766                	ld	a4,88(sp)
   127e8:	fb2d                	bnez	a4,1275a <_vfprintf_r+0x1320>
   127ea:	6746                	ld	a4,80(sp)
   127ec:	3c070163          	beqz	a4,12bae <_vfprintf_r+0x1774>
   127f0:	6746                	ld	a4,80(sp)
   127f2:	377d                	addiw	a4,a4,-1
   127f4:	e8ba                	sd	a4,80(sp)
   127f6:	bf95                	j	1276a <_vfprintf_r+0x1330>
   127f8:	11812683          	lw	a3,280(sp)
   127fc:	00edc663          	blt	s11,a4,12808 <_vfprintf_r+0x13ce>
   12800:	a081                	j	12840 <_vfprintf_r+0x1406>
   12802:	3741                	addiw	a4,a4,-16
   12804:	02edde63          	bge	s11,a4,12840 <_vfprintf_r+0x1406>
   12808:	2685                	addiw	a3,a3,1
   1280a:	07c1                	addi	a5,a5,16
   1280c:	01a33023          	sd	s10,0(t1)
   12810:	01b33423          	sd	s11,8(t1)
   12814:	f23e                	sd	a5,288(sp)
   12816:	10d12c23          	sw	a3,280(sp)
   1281a:	0341                	addi	t1,t1,16
   1281c:	fedbd3e3          	bge	s7,a3,12802 <_vfprintf_r+0x13c8>
   12820:	0a10                	addi	a2,sp,272
   12822:	85ca                	mv	a1,s2
   12824:	8552                	mv	a0,s4
   12826:	f83a                	sd	a4,48(sp)
   12828:	42e060ef          	jal	ra,18c56 <__sprint_r>
   1282c:	e4051763          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12830:	7742                	ld	a4,48(sp)
   12832:	7792                	ld	a5,288(sp)
   12834:	11812683          	lw	a3,280(sp)
   12838:	3741                	addiw	a4,a4,-16
   1283a:	835a                	mv	t1,s6
   1283c:	fcedc6e3          	blt	s11,a4,12808 <_vfprintf_r+0x13ce>
   12840:	2685                	addiw	a3,a3,1
   12842:	97ba                	add	a5,a5,a4
   12844:	00e33423          	sd	a4,8(t1)
   12848:	01a33023          	sd	s10,0(t1)
   1284c:	f23e                	sd	a5,288(sp)
   1284e:	0006871b          	sext.w	a4,a3
   12852:	10d12c23          	sw	a3,280(sp)
   12856:	38ebc463          	blt	s7,a4,12bde <_vfprintf_r+0x17a4>
   1285a:	7706                	ld	a4,96(sp)
   1285c:	0341                	addi	t1,t1,16
   1285e:	00074603          	lbu	a2,0(a4)
   12862:	9c32                	add	s8,s8,a2
   12864:	b749                	j	127e6 <_vfprintf_r+0x13ac>
   12866:	0a10                	addi	a2,sp,272
   12868:	85ca                	mv	a1,s2
   1286a:	8552                	mv	a0,s4
   1286c:	3ea060ef          	jal	ra,18c56 <__sprint_r>
   12870:	e0051563          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12874:	7792                	ld	a5,288(sp)
   12876:	835a                	mv	t1,s6
   12878:	bf19                	j	1278e <_vfprintf_r+0x1354>
   1287a:	0a10                	addi	a2,sp,272
   1287c:	85ca                	mv	a1,s2
   1287e:	8552                	mv	a0,s4
   12880:	f836                	sd	a3,48(sp)
   12882:	3d4060ef          	jal	ra,18c56 <__sprint_r>
   12886:	de051a63          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   1288a:	7786                	ld	a5,96(sp)
   1288c:	76c2                	ld	a3,48(sp)
   1288e:	835a                	mv	t1,s6
   12890:	0007c603          	lbu	a2,0(a5)
   12894:	7792                	ld	a5,288(sp)
   12896:	0006071b          	sext.w	a4,a2
   1289a:	bf35                	j	127d6 <_vfprintf_r+0x139c>
   1289c:	0a10                	addi	a2,sp,272
   1289e:	85ca                	mv	a1,s2
   128a0:	8552                	mv	a0,s4
   128a2:	3b4060ef          	jal	ra,18c56 <__sprint_r>
   128a6:	dc051a63          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   128aa:	562e                	lw	a2,232(sp)
   128ac:	7792                	ld	a5,288(sp)
   128ae:	835a                	mv	t1,s6
   128b0:	b195                	j	12514 <_vfprintf_r+0x10da>
   128b2:	6871                	lui	a6,0x1c
   128b4:	6f080c93          	addi	s9,a6,1776 # 1c6f0 <__clzdi2+0xb0>
   128b8:	b9d5                	j	125ac <_vfprintf_r+0x1172>
   128ba:	0a10                	addi	a2,sp,272
   128bc:	85ca                	mv	a1,s2
   128be:	8552                	mv	a0,s4
   128c0:	396060ef          	jal	ra,18c56 <__sprint_r>
   128c4:	da051b63          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   128c8:	7792                	ld	a5,288(sp)
   128ca:	835a                	mv	t1,s6
   128cc:	f3eff06f          	j	1200a <_vfprintf_r+0xbd0>
   128d0:	4b99                	li	s7,6
   128d2:	b4a9                	j	1231c <_vfprintf_r+0xee2>
   128d4:	7682                	ld	a3,32(sp)
   128d6:	00dc8bb3          	add	s7,s9,a3
   128da:	418b8bb3          	sub	s7,s7,s8
   128de:	9e99                	subw	a3,a3,a4
   128e0:	000b861b          	sext.w	a2,s7
   128e4:	00c6d363          	bge	a3,a2,128ea <_vfprintf_r+0x14b0>
   128e8:	8bb6                	mv	s7,a3
   128ea:	2b81                	sext.w	s7,s7
   128ec:	fb2ff06f          	j	1209e <_vfprintf_r+0xc64>
   128f0:	3d79                	addiw	s10,s10,-2
   128f2:	fdfd7793          	andi	a5,s10,-33
   128f6:	ecbe                	sd	a5,88(sp)
   128f8:	67a6                	ld	a5,72(sp)
   128fa:	65e6                	ld	a1,88(sp)
   128fc:	04100713          	li	a4,65
   12900:	fff7869b          	addiw	a3,a5,-1
   12904:	d5b6                	sw	a3,232(sp)
   12906:	0ffd7793          	zext.b	a5,s10
   1290a:	4601                	li	a2,0
   1290c:	00e59663          	bne	a1,a4,12918 <_vfprintf_r+0x14de>
   12910:	27bd                	addiw	a5,a5,15
   12912:	0ff7f793          	zext.b	a5,a5
   12916:	4605                	li	a2,1
   12918:	0ef10823          	sb	a5,240(sp)
   1291c:	02b00793          	li	a5,43
   12920:	0006d763          	bgez	a3,1292e <_vfprintf_r+0x14f4>
   12924:	67a6                	ld	a5,72(sp)
   12926:	4685                	li	a3,1
   12928:	9e9d                	subw	a3,a3,a5
   1292a:	02d00793          	li	a5,45
   1292e:	0ef108a3          	sb	a5,241(sp)
   12932:	47a5                	li	a5,9
   12934:	3cd7dc63          	bge	a5,a3,12d0c <_vfprintf_r+0x18d2>
   12938:	0ff10e93          	addi	t4,sp,255
   1293c:	8676                	mv	a2,t4
   1293e:	45a9                	li	a1,10
   12940:	06300793          	li	a5,99
   12944:	02b6e73b          	remw	a4,a3,a1
   12948:	88b2                	mv	a7,a2
   1294a:	8536                	mv	a0,a3
   1294c:	167d                	addi	a2,a2,-1
   1294e:	0307071b          	addiw	a4,a4,48
   12952:	fee88fa3          	sb	a4,-1(a7)
   12956:	02b6c6bb          	divw	a3,a3,a1
   1295a:	fea7c5e3          	blt	a5,a0,12944 <_vfprintf_r+0x150a>
   1295e:	0306869b          	addiw	a3,a3,48
   12962:	0ff6f693          	zext.b	a3,a3
   12966:	ffe88793          	addi	a5,a7,-2
   1296a:	fed60fa3          	sb	a3,-1(a2)
   1296e:	55d7f763          	bgeu	a5,t4,12ebc <_vfprintf_r+0x1a82>
   12972:	0f210713          	addi	a4,sp,242
   12976:	a019                	j	1297c <_vfprintf_r+0x1542>
   12978:	0007c683          	lbu	a3,0(a5)
   1297c:	00d70023          	sb	a3,0(a4)
   12980:	0785                	addi	a5,a5,1
   12982:	0705                	addi	a4,a4,1
   12984:	ffd79ae3          	bne	a5,t4,12978 <_vfprintf_r+0x153e>
   12988:	10110793          	addi	a5,sp,257
   1298c:	0f210713          	addi	a4,sp,242
   12990:	411787b3          	sub	a5,a5,a7
   12994:	97ba                	add	a5,a5,a4
   12996:	1998                	addi	a4,sp,240
   12998:	9f99                	subw	a5,a5,a4
   1299a:	fcbe                	sd	a5,120(sp)
   1299c:	77e6                	ld	a5,120(sp)
   1299e:	7682                	ld	a3,32(sp)
   129a0:	4705                	li	a4,1
   129a2:	00f68bbb          	addw	s7,a3,a5
   129a6:	87de                	mv	a5,s7
   129a8:	3ed75063          	bge	a4,a3,12d88 <_vfprintf_r+0x194e>
   129ac:	7726                	ld	a4,104(sp)
   129ae:	00e78bbb          	addw	s7,a5,a4
   129b2:	77aa                	ld	a5,168(sp)
   129b4:	fffbc993          	not	s3,s7
   129b8:	43f9d993          	srai	s3,s3,0x3f
   129bc:	bff7f493          	andi	s1,a5,-1025
   129c0:	2481                	sext.w	s1,s1
   129c2:	013bf9b3          	and	s3,s7,s3
   129c6:	1004e493          	ori	s1,s1,256
   129ca:	2981                	sext.w	s3,s3
   129cc:	e882                	sd	zero,80(sp)
   129ce:	ec82                	sd	zero,88(sp)
   129d0:	e482                	sd	zero,72(sp)
   129d2:	bb11                	j	126e6 <_vfprintf_r+0x12ac>
   129d4:	67a2                	ld	a5,8(sp)
   129d6:	8ca2                	mv	s9,s0
   129d8:	00f71023          	sh	a5,0(a4)
   129dc:	d05fe06f          	j	116e0 <_vfprintf_r+0x2a6>
   129e0:	87ce                	mv	a5,s3
   129e2:	daffe06f          	j	11790 <_vfprintf_r+0x356>
   129e6:	1982                	slli	s3,s3,0x20
   129e8:	0209d993          	srli	s3,s3,0x20
   129ec:	e01fe06f          	j	117ec <_vfprintf_r+0x3b2>
   129f0:	1982                	slli	s3,s3,0x20
   129f2:	0209d993          	srli	s3,s3,0x20
   129f6:	b855                	j	122aa <_vfprintf_r+0xe70>
   129f8:	1982                	slli	s3,s3,0x20
   129fa:	0209d993          	srli	s3,s3,0x20
   129fe:	e83a                	sd	a4,16(sp)
   12a00:	4785                	li	a5,1
   12a02:	df5fe06f          	j	117f6 <_vfprintf_r+0x3bc>
   12a06:	0a10                	addi	a2,sp,272
   12a08:	85ca                	mv	a1,s2
   12a0a:	8552                	mv	a0,s4
   12a0c:	24a060ef          	jal	ra,18c56 <__sprint_r>
   12a10:	ce1fe06f          	j	116f0 <_vfprintf_r+0x2b6>
   12a14:	02d00793          	li	a5,45
   12a18:	0cf10fa3          	sb	a5,223(sp)
   12a1c:	b1ed                	j	12706 <_vfprintf_r+0x12cc>
   12a1e:	ec02                	sd	zero,24(sp)
   12a20:	84be                	mv	s1,a5
   12a22:	57fd                	li	a5,-1
   12a24:	17fe                	slli	a5,a5,0x3f
   12a26:	00f9c9b3          	xor	s3,s3,a5
   12a2a:	02d00793          	li	a5,45
   12a2e:	e5be                	sd	a5,200(sp)
   12a30:	b249                	j	123b2 <_vfprintf_r+0xf78>
   12a32:	0a10                	addi	a2,sp,272
   12a34:	85ca                	mv	a1,s2
   12a36:	8552                	mv	a0,s4
   12a38:	21e060ef          	jal	ra,18c56 <__sprint_r>
   12a3c:	c2051f63          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12a40:	562e                	lw	a2,232(sp)
   12a42:	7792                	ld	a5,288(sp)
   12a44:	11812683          	lw	a3,280(sp)
   12a48:	835a                	mv	t1,s6
   12a4a:	b6d5                	j	1262e <_vfprintf_r+0x11f4>
   12a4c:	001c059b          	addiw	a1,s8,1
   12a50:	8552                	mv	a0,s4
   12a52:	ec1a                	sd	t1,24(sp)
   12a54:	d21fd0ef          	jal	ra,10774 <_malloc_r>
   12a58:	6362                	ld	t1,24(sp)
   12a5a:	8caa                	mv	s9,a0
   12a5c:	46050363          	beqz	a0,12ec2 <_vfprintf_r+0x1a88>
   12a60:	ec2a                	sd	a0,24(sp)
   12a62:	ba2d                	j	1239c <_vfprintf_r+0xf62>
   12a64:	4601                	li	a2,0
   12a66:	4681                	li	a3,0
   12a68:	855e                	mv	a0,s7
   12a6a:	85ce                	mv	a1,s3
   12a6c:	f846                	sd	a7,48(sp)
   12a6e:	f01a                	sd	t1,32(sp)
   12a70:	766080ef          	jal	ra,1b1d6 <__eqtf2>
   12a74:	7302                	ld	t1,32(sp)
   12a76:	78c2                	ld	a7,48(sp)
   12a78:	9a0504e3          	beqz	a0,12420 <_vfprintf_r+0xfe6>
   12a7c:	4785                	li	a5,1
   12a7e:	41b7873b          	subw	a4,a5,s11
   12a82:	d5ba                	sw	a4,232(sp)
   12a84:	98ba                	add	a7,a7,a4
   12a86:	ba79                	j	12424 <_vfprintf_r+0xfea>
   12a88:	001c0d9b          	addiw	s11,s8,1
   12a8c:	4689                	li	a3,2
   12a8e:	ba91                	j	123e2 <_vfprintf_r+0xfa8>
   12a90:	8de2                	mv	s11,s8
   12a92:	468d                	li	a3,3
   12a94:	b2b9                	j	123e2 <_vfprintf_r+0xfa8>
   12a96:	85ce                	mv	a1,s3
   12a98:	855e                	mv	a0,s7
   12a9a:	f81a                	sd	t1,48(sp)
   12a9c:	185090ef          	jal	ra,1c420 <__trunctfdf2>
   12aa0:	11a8                	addi	a0,sp,232
   12aa2:	54a040ef          	jal	ra,16fec <frexp>
   12aa6:	0b7090ef          	jal	ra,1c35c <__extenddftf2>
   12aaa:	768a                	ld	a3,160(sp)
   12aac:	4601                	li	a2,0
   12aae:	115080ef          	jal	ra,1b3c2 <__multf3>
   12ab2:	4601                	li	a2,0
   12ab4:	4681                	li	a3,0
   12ab6:	8baa                	mv	s7,a0
   12ab8:	f02e                	sd	a1,32(sp)
   12aba:	71c080ef          	jal	ra,1b1d6 <__eqtf2>
   12abe:	7f82                	ld	t6,32(sp)
   12ac0:	7342                	ld	t1,48(sp)
   12ac2:	e119                	bnez	a0,12ac8 <_vfprintf_r+0x168e>
   12ac4:	4785                	li	a5,1
   12ac6:	d5be                	sw	a5,232(sp)
   12ac8:	67f1                	lui	a5,0x1c
   12aca:	72878793          	addi	a5,a5,1832 # 1c728 <__clzdi2+0xe8>
   12ace:	e4be                	sd	a5,72(sp)
   12ad0:	020c1793          	slli	a5,s8,0x20
   12ad4:	9381                	srli	a5,a5,0x20
   12ad6:	0785                	addi	a5,a5,1
   12ad8:	97e6                	add	a5,a5,s9
   12ada:	f93e                	sd	a5,176(sp)
   12adc:	018c87bb          	addw	a5,s9,s8
   12ae0:	8de6                	mv	s11,s9
   12ae2:	c3be                	sw	a5,196(sp)
   12ae4:	a829                	j	12afe <_vfprintf_r+0x16c4>
   12ae6:	4601                	li	a2,0
   12ae8:	4681                	li	a3,0
   12aea:	f01a                	sd	t1,32(sp)
   12aec:	fc2e                	sd	a1,56(sp)
   12aee:	f82a                	sd	a0,48(sp)
   12af0:	6e6080ef          	jal	ra,1b1d6 <__eqtf2>
   12af4:	77e2                	ld	a5,56(sp)
   12af6:	7302                	ld	t1,32(sp)
   12af8:	88de                	mv	a7,s7
   12afa:	8fbe                	mv	t6,a5
   12afc:	cd31                	beqz	a0,12b58 <_vfprintf_r+0x171e>
   12afe:	66ca                	ld	a3,144(sp)
   12b00:	4601                	li	a2,0
   12b02:	85fe                	mv	a1,t6
   12b04:	855e                	mv	a0,s7
   12b06:	f81a                	sd	t1,48(sp)
   12b08:	0bb080ef          	jal	ra,1b3c2 <__multf3>
   12b0c:	8bae                	mv	s7,a1
   12b0e:	f02a                	sd	a0,32(sp)
   12b10:	764090ef          	jal	ra,1c274 <__fixtfsi>
   12b14:	0005099b          	sext.w	s3,a0
   12b18:	854e                	mv	a0,s3
   12b1a:	7ec090ef          	jal	ra,1c306 <__floatsitf>
   12b1e:	7782                	ld	a5,32(sp)
   12b20:	86ae                	mv	a3,a1
   12b22:	862a                	mv	a2,a0
   12b24:	85de                	mv	a1,s7
   12b26:	853e                	mv	a0,a5
   12b28:	6c5080ef          	jal	ra,1b9ec <__subtf3>
   12b2c:	67a6                	ld	a5,72(sp)
   12b2e:	471e                	lw	a4,196(sp)
   12b30:	fd6e                	sd	s11,184(sp)
   12b32:	97ce                	add	a5,a5,s3
   12b34:	0d85                	addi	s11,s11,1
   12b36:	0007c683          	lbu	a3,0(a5)
   12b3a:	41b7073b          	subw	a4,a4,s11
   12b3e:	e8ba                	sd	a4,80(sp)
   12b40:	774a                	ld	a4,176(sp)
   12b42:	fedd8fa3          	sb	a3,-1(s11)
   12b46:	e0ae                	sd	a1,64(sp)
   12b48:	7342                	ld	t1,48(sp)
   12b4a:	87ae                	mv	a5,a1
   12b4c:	88aa                	mv	a7,a0
   12b4e:	8baa                	mv	s7,a0
   12b50:	f9b71be3          	bne	a4,s11,12ae6 <_vfprintf_r+0x16ac>
   12b54:	577d                	li	a4,-1
   12b56:	e8ba                	sd	a4,80(sp)
   12b58:	66ea                	ld	a3,152(sp)
   12b5a:	4601                	li	a2,0
   12b5c:	8546                	mv	a0,a7
   12b5e:	85be                	mv	a1,a5
   12b60:	f01a                	sd	t1,32(sp)
   12b62:	fc46                	sd	a7,56(sp)
   12b64:	f83e                	sd	a5,48(sp)
   12b66:	710080ef          	jal	ra,1b276 <__getf2>
   12b6a:	7302                	ld	t1,32(sp)
   12b6c:	1ca04463          	bgtz	a0,12d34 <_vfprintf_r+0x18fa>
   12b70:	78e2                	ld	a7,56(sp)
   12b72:	77c2                	ld	a5,48(sp)
   12b74:	66ea                	ld	a3,152(sp)
   12b76:	4601                	li	a2,0
   12b78:	8546                	mv	a0,a7
   12b7a:	85be                	mv	a1,a5
   12b7c:	65a080ef          	jal	ra,1b1d6 <__eqtf2>
   12b80:	7302                	ld	t1,32(sp)
   12b82:	e509                	bnez	a0,12b8c <_vfprintf_r+0x1752>
   12b84:	0019f993          	andi	s3,s3,1
   12b88:	1a099663          	bnez	s3,12d34 <_vfprintf_r+0x18fa>
   12b8c:	6746                	ld	a4,80(sp)
   12b8e:	03000693          	li	a3,48
   12b92:	0017079b          	addiw	a5,a4,1
   12b96:	97ee                	add	a5,a5,s11
   12b98:	00074763          	bltz	a4,12ba6 <_vfprintf_r+0x176c>
   12b9c:	0d85                	addi	s11,s11,1
   12b9e:	fedd8fa3          	sb	a3,-1(s11)
   12ba2:	ffb79de3          	bne	a5,s11,12b9c <_vfprintf_r+0x1762>
   12ba6:	419d87bb          	subw	a5,s11,s9
   12baa:	f03e                	sd	a5,32(sp)
   12bac:	b859                	j	12442 <_vfprintf_r+0x1008>
   12bae:	7702                	ld	a4,32(sp)
   12bb0:	9766                	add	a4,a4,s9
   12bb2:	c7877d63          	bgeu	a4,s8,1202c <_vfprintf_r+0xbf2>
   12bb6:	8c3a                	mv	s8,a4
   12bb8:	c74ff06f          	j	1202c <_vfprintf_r+0xbf2>
   12bbc:	0df14783          	lbu	a5,223(sp)
   12bc0:	4c01                	li	s8,0
   12bc2:	c399                	beqz	a5,12bc8 <_vfprintf_r+0x178e>
   12bc4:	c0dfe06f          	j	117d0 <_vfprintf_r+0x396>
   12bc8:	a39fe06f          	j	11600 <_vfprintf_r+0x1c6>
   12bcc:	77aa                	ld	a5,168(sp)
   12bce:	01b508b3          	add	a7,a0,s11
   12bd2:	8b85                	andi	a5,a5,1
   12bd4:	840798e3          	bnez	a5,12424 <_vfprintf_r+0xfea>
   12bd8:	76ee                	ld	a3,248(sp)
   12bda:	863ff06f          	j	1243c <_vfprintf_r+0x1002>
   12bde:	0a10                	addi	a2,sp,272
   12be0:	85ca                	mv	a1,s2
   12be2:	8552                	mv	a0,s4
   12be4:	072060ef          	jal	ra,18c56 <__sprint_r>
   12be8:	a8051963          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12bec:	7786                	ld	a5,96(sp)
   12bee:	835a                	mv	t1,s6
   12bf0:	0007c603          	lbu	a2,0(a5)
   12bf4:	7792                	ld	a5,288(sp)
   12bf6:	9c32                	add	s8,s8,a2
   12bf8:	b6fd                	j	127e6 <_vfprintf_r+0x13ac>
   12bfa:	02d00793          	li	a5,45
   12bfe:	0cf10fa3          	sb	a5,223(sp)
   12c02:	ba71                	j	1259e <_vfprintf_r+0x1164>
   12c04:	0a10                	addi	a2,sp,272
   12c06:	85ca                	mv	a1,s2
   12c08:	8552                	mv	a0,s4
   12c0a:	04c060ef          	jal	ra,18c56 <__sprint_r>
   12c0e:	a6051663          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12c12:	572e                	lw	a4,232(sp)
   12c14:	7792                	ld	a5,288(sp)
   12c16:	835a                	mv	t1,s6
   12c18:	c4aff06f          	j	12062 <_vfprintf_r+0xc28>
   12c1c:	0df14783          	lbu	a5,223(sp)
   12c20:	e86e                	sd	s11,16(sp)
   12c22:	e882                	sd	zero,80(sp)
   12c24:	ec82                	sd	zero,88(sp)
   12c26:	e482                	sd	zero,72(sp)
   12c28:	89e2                	mv	s3,s8
   12c2a:	8be2                	mv	s7,s8
   12c2c:	4c01                	li	s8,0
   12c2e:	c399                	beqz	a5,12c34 <_vfprintf_r+0x17fa>
   12c30:	ba1fe06f          	j	117d0 <_vfprintf_r+0x396>
   12c34:	9cdfe06f          	j	11600 <_vfprintf_r+0x1c6>
   12c38:	0a10                	addi	a2,sp,272
   12c3a:	85ca                	mv	a1,s2
   12c3c:	8552                	mv	a0,s4
   12c3e:	018060ef          	jal	ra,18c56 <__sprint_r>
   12c42:	a2051c63          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12c46:	56ae                	lw	a3,232(sp)
   12c48:	7702                	ld	a4,32(sp)
   12c4a:	7792                	ld	a5,288(sp)
   12c4c:	835a                	mv	t1,s6
   12c4e:	40d706bb          	subw	a3,a4,a3
   12c52:	c4cff06f          	j	1209e <_vfprintf_r+0xc64>
   12c56:	6871                	lui	a6,0x1c
   12c58:	70080c93          	addi	s9,a6,1792 # 1c700 <__clzdi2+0xc0>
   12c5c:	ba81                	j	125ac <_vfprintf_r+0x1172>
   12c5e:	68f5                	lui	a7,0x1d
   12c60:	5741                	li	a4,-16
   12c62:	40c00c3b          	negw	s8,a2
   12c66:	99088d93          	addi	s11,a7,-1648 # 1c990 <zeroes.0>
   12c6a:	4bc1                	li	s7,16
   12c6c:	4d1d                	li	s10,7
   12c6e:	00e64663          	blt	a2,a4,12c7a <_vfprintf_r+0x1840>
   12c72:	a0ad                	j	12cdc <_vfprintf_r+0x18a2>
   12c74:	3c41                	addiw	s8,s8,-16
   12c76:	078bd363          	bge	s7,s8,12cdc <_vfprintf_r+0x18a2>
   12c7a:	2685                	addiw	a3,a3,1
   12c7c:	07c1                	addi	a5,a5,16
   12c7e:	01b33023          	sd	s11,0(t1)
   12c82:	01733423          	sd	s7,8(t1)
   12c86:	f23e                	sd	a5,288(sp)
   12c88:	10d12c23          	sw	a3,280(sp)
   12c8c:	0341                	addi	t1,t1,16
   12c8e:	fedd53e3          	bge	s10,a3,12c74 <_vfprintf_r+0x183a>
   12c92:	0a10                	addi	a2,sp,272
   12c94:	85ca                	mv	a1,s2
   12c96:	8552                	mv	a0,s4
   12c98:	7bf050ef          	jal	ra,18c56 <__sprint_r>
   12c9c:	9c051f63          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12ca0:	7792                	ld	a5,288(sp)
   12ca2:	11812683          	lw	a3,280(sp)
   12ca6:	835a                	mv	t1,s6
   12ca8:	b7f1                	j	12c74 <_vfprintf_r+0x183a>
   12caa:	57fd                	li	a5,-1
   12cac:	e43e                	sd	a5,8(sp)
   12cae:	a51fe06f          	j	116fe <_vfprintf_r+0x2c4>
   12cb2:	7702                	ld	a4,32(sp)
   12cb4:	77a6                	ld	a5,104(sp)
   12cb6:	06700d13          	li	s10,103
   12cba:	00e78bbb          	addw	s7,a5,a4
   12cbe:	6726                	ld	a4,72(sp)
   12cc0:	fae04963          	bgtz	a4,12472 <_vfprintf_r+0x1038>
   12cc4:	40eb87bb          	subw	a5,s7,a4
   12cc8:	2785                	addiw	a5,a5,1
   12cca:	00078b9b          	sext.w	s7,a5
   12cce:	fffbc713          	not	a4,s7
   12cd2:	977d                	srai	a4,a4,0x3f
   12cd4:	8ff9                	and	a5,a5,a4
   12cd6:	0007899b          	sext.w	s3,a5
   12cda:	b421                	j	126e2 <_vfprintf_r+0x12a8>
   12cdc:	2685                	addiw	a3,a3,1
   12cde:	97e2                	add	a5,a5,s8
   12ce0:	01b33023          	sd	s11,0(t1)
   12ce4:	01833423          	sd	s8,8(t1)
   12ce8:	f23e                	sd	a5,288(sp)
   12cea:	10d12c23          	sw	a3,280(sp)
   12cee:	471d                	li	a4,7
   12cf0:	84d75ce3          	bge	a4,a3,12548 <_vfprintf_r+0x110e>
   12cf4:	0a10                	addi	a2,sp,272
   12cf6:	85ca                	mv	a1,s2
   12cf8:	8552                	mv	a0,s4
   12cfa:	75d050ef          	jal	ra,18c56 <__sprint_r>
   12cfe:	96051e63          	bnez	a0,11e7a <_vfprintf_r+0xa40>
   12d02:	7792                	ld	a5,288(sp)
   12d04:	11812683          	lw	a3,280(sp)
   12d08:	835a                	mv	t1,s6
   12d0a:	b225                	j	12632 <_vfprintf_r+0x11f8>
   12d0c:	0f210713          	addi	a4,sp,242
   12d10:	e619                	bnez	a2,12d1e <_vfprintf_r+0x18e4>
   12d12:	03000793          	li	a5,48
   12d16:	0ef10923          	sb	a5,242(sp)
   12d1a:	0f310713          	addi	a4,sp,243
   12d1e:	0306879b          	addiw	a5,a3,48
   12d22:	0c14                	addi	a3,sp,528
   12d24:	40d706b3          	sub	a3,a4,a3
   12d28:	00f70023          	sb	a5,0(a4)
   12d2c:	1216879b          	addiw	a5,a3,289
   12d30:	fcbe                	sd	a5,120(sp)
   12d32:	b1ad                	j	1299c <_vfprintf_r+0x1562>
   12d34:	77ea                	ld	a5,184(sp)
   12d36:	fdbe                	sd	a5,248(sp)
   12d38:	67a6                	ld	a5,72(sp)
   12d3a:	fffdc683          	lbu	a3,-1(s11)
   12d3e:	00f7c603          	lbu	a2,15(a5)
   12d42:	87ee                	mv	a5,s11
   12d44:	00d61e63          	bne	a2,a3,12d60 <_vfprintf_r+0x1926>
   12d48:	03000593          	li	a1,48
   12d4c:	feb78fa3          	sb	a1,-1(a5)
   12d50:	77ee                	ld	a5,248(sp)
   12d52:	fff78693          	addi	a3,a5,-1
   12d56:	fdb6                	sd	a3,248(sp)
   12d58:	fff7c683          	lbu	a3,-1(a5)
   12d5c:	fed608e3          	beq	a2,a3,12d4c <_vfprintf_r+0x1912>
   12d60:	0016861b          	addiw	a2,a3,1
   12d64:	03900593          	li	a1,57
   12d68:	0ff67613          	zext.b	a2,a2
   12d6c:	00b68563          	beq	a3,a1,12d76 <_vfprintf_r+0x193c>
   12d70:	fec78fa3          	sb	a2,-1(a5)
   12d74:	bd0d                	j	12ba6 <_vfprintf_r+0x176c>
   12d76:	6726                	ld	a4,72(sp)
   12d78:	00a74603          	lbu	a2,10(a4)
   12d7c:	fec78fa3          	sb	a2,-1(a5)
   12d80:	b51d                	j	12ba6 <_vfprintf_r+0x176c>
   12d82:	8da6                	mv	s11,s1
   12d84:	914ff06f          	j	11e98 <_vfprintf_r+0xa5e>
   12d88:	772a                	ld	a4,168(sp)
   12d8a:	8b05                	andi	a4,a4,1
   12d8c:	c20703e3          	beqz	a4,129b2 <_vfprintf_r+0x1578>
   12d90:	b931                	j	129ac <_vfprintf_r+0x1572>
   12d92:	000c0463          	beqz	s8,12d9a <_vfprintf_r+0x1960>
   12d96:	b1bfe06f          	j	118b0 <_vfprintf_r+0x476>
   12d9a:	4c05                	li	s8,1
   12d9c:	b15fe06f          	j	118b0 <_vfprintf_r+0x476>
   12da0:	4c19                	li	s8,6
   12da2:	b0ffe06f          	j	118b0 <_vfprintf_r+0x476>
   12da6:	c31c                	sw	a5,0(a4)
   12da8:	8ca2                	mv	s9,s0
   12daa:	937fe06f          	j	116e0 <_vfprintf_r+0x2a6>
   12dae:	85ce                	mv	a1,s3
   12db0:	855e                	mv	a0,s7
   12db2:	f81a                	sd	t1,48(sp)
   12db4:	66c090ef          	jal	ra,1c420 <__trunctfdf2>
   12db8:	11a8                	addi	a0,sp,232
   12dba:	232040ef          	jal	ra,16fec <frexp>
   12dbe:	59e090ef          	jal	ra,1c35c <__extenddftf2>
   12dc2:	768a                	ld	a3,160(sp)
   12dc4:	4601                	li	a2,0
   12dc6:	5fc080ef          	jal	ra,1b3c2 <__multf3>
   12dca:	4601                	li	a2,0
   12dcc:	4681                	li	a3,0
   12dce:	8baa                	mv	s7,a0
   12dd0:	f02e                	sd	a1,32(sp)
   12dd2:	404080ef          	jal	ra,1b1d6 <__eqtf2>
   12dd6:	7f82                	ld	t6,32(sp)
   12dd8:	7342                	ld	t1,48(sp)
   12dda:	e119                	bnez	a0,12de0 <_vfprintf_r+0x19a6>
   12ddc:	4785                	li	a5,1
   12dde:	d5be                	sw	a5,232(sp)
   12de0:	67f1                	lui	a5,0x1c
   12de2:	71078793          	addi	a5,a5,1808 # 1c710 <__clzdi2+0xd0>
   12de6:	e4be                	sd	a5,72(sp)
   12de8:	b1e5                	j	12ad0 <_vfprintf_r+0x1696>
   12dea:	06700d13          	li	s10,103
   12dee:	7786                	ld	a5,96(sp)
   12df0:	0ff00713          	li	a4,255
   12df4:	e882                	sd	zero,80(sp)
   12df6:	0007c783          	lbu	a5,0(a5)
   12dfa:	ec82                	sd	zero,88(sp)
   12dfc:	02e78863          	beq	a5,a4,12e2c <_vfprintf_r+0x19f2>
   12e00:	0ff00693          	li	a3,255
   12e04:	6626                	ld	a2,72(sp)
   12e06:	0007871b          	sext.w	a4,a5
   12e0a:	02c7d163          	bge	a5,a2,12e2c <_vfprintf_r+0x19f2>
   12e0e:	7586                	ld	a1,96(sp)
   12e10:	40e6073b          	subw	a4,a2,a4
   12e14:	e4ba                	sd	a4,72(sp)
   12e16:	0015c783          	lbu	a5,1(a1)
   12e1a:	cb95                	beqz	a5,12e4e <_vfprintf_r+0x1a14>
   12e1c:	6766                	ld	a4,88(sp)
   12e1e:	2705                	addiw	a4,a4,1
   12e20:	ecba                	sd	a4,88(sp)
   12e22:	00158713          	addi	a4,a1,1
   12e26:	f0ba                	sd	a4,96(sp)
   12e28:	fcd79ee3          	bne	a5,a3,12e04 <_vfprintf_r+0x19ca>
   12e2c:	6766                	ld	a4,88(sp)
   12e2e:	67c6                	ld	a5,80(sp)
   12e30:	9fb9                	addw	a5,a5,a4
   12e32:	670a                	ld	a4,128(sp)
   12e34:	02e787bb          	mulw	a5,a5,a4
   12e38:	017787bb          	addw	a5,a5,s7
   12e3c:	00078b9b          	sext.w	s7,a5
   12e40:	fffbc713          	not	a4,s7
   12e44:	977d                	srai	a4,a4,0x3f
   12e46:	8ff9                	and	a5,a5,a4
   12e48:	0007899b          	sext.w	s3,a5
   12e4c:	b869                	j	126e6 <_vfprintf_r+0x12ac>
   12e4e:	6746                	ld	a4,80(sp)
   12e50:	7786                	ld	a5,96(sp)
   12e52:	2705                	addiw	a4,a4,1
   12e54:	0007c783          	lbu	a5,0(a5)
   12e58:	e8ba                	sd	a4,80(sp)
   12e5a:	b7f9                	j	12e28 <_vfprintf_r+0x19ee>
   12e5c:	77a6                	ld	a5,104(sp)
   12e5e:	06600d13          	li	s10,102
   12e62:	00e78bbb          	addw	s7,a5,a4
   12e66:	018b8bbb          	addw	s7,s7,s8
   12e6a:	e08ff06f          	j	12472 <_vfprintf_r+0x1038>
   12e6e:	e799                	bnez	a5,12e7c <_vfprintf_r+0x1a42>
   12e70:	4985                	li	s3,1
   12e72:	06600d13          	li	s10,102
   12e76:	4b85                	li	s7,1
   12e78:	86bff06f          	j	126e2 <_vfprintf_r+0x12a8>
   12e7c:	77a6                	ld	a5,104(sp)
   12e7e:	06600d13          	li	s10,102
   12e82:	2785                	addiw	a5,a5,1
   12e84:	018787bb          	addw	a5,a5,s8
   12e88:	00078b9b          	sext.w	s7,a5
   12e8c:	fffbc713          	not	a4,s7
   12e90:	977d                	srai	a4,a4,0x3f
   12e92:	8ff9                	and	a5,a5,a4
   12e94:	0007899b          	sext.w	s3,a5
   12e98:	84bff06f          	j	126e2 <_vfprintf_r+0x12a8>
   12e9c:	66c2                	ld	a3,16(sp)
   12e9e:	4298                	lw	a4,0(a3)
   12ea0:	00868613          	addi	a2,a3,8
   12ea4:	86ba                	mv	a3,a4
   12ea6:	00075363          	bgez	a4,12eac <_vfprintf_r+0x1a72>
   12eaa:	56fd                	li	a3,-1
   12eac:	00144e03          	lbu	t3,1(s0)
   12eb0:	00068c1b          	sext.w	s8,a3
   12eb4:	e832                	sd	a2,16(sp)
   12eb6:	843e                	mv	s0,a5
   12eb8:	ed2fe06f          	j	1158a <_vfprintf_r+0x150>
   12ebc:	4789                	li	a5,2
   12ebe:	fcbe                	sd	a5,120(sp)
   12ec0:	bcf1                	j	1299c <_vfprintf_r+0x1562>
   12ec2:	01095783          	lhu	a5,16(s2)
   12ec6:	0407e793          	ori	a5,a5,64
   12eca:	00f91823          	sh	a5,16(s2)
   12ece:	823fe06f          	j	116f0 <_vfprintf_r+0x2b6>

0000000000012ed2 <vfprintf>:
   12ed2:	87aa                	mv	a5,a0
   12ed4:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   12ed8:	86b2                	mv	a3,a2
   12eda:	862e                	mv	a2,a1
   12edc:	85be                	mv	a1,a5
   12ede:	d5cfe06f          	j	1143a <_vfprintf_r>

0000000000012ee2 <__sbprintf>:
   12ee2:	0105d783          	lhu	a5,16(a1)
   12ee6:	0ac5ae03          	lw	t3,172(a1)
   12eea:	0125d303          	lhu	t1,18(a1)
   12eee:	0305b883          	ld	a7,48(a1)
   12ef2:	0405b803          	ld	a6,64(a1)
   12ef6:	b3010113          	addi	sp,sp,-1232
   12efa:	9bf5                	andi	a5,a5,-3
   12efc:	40000713          	li	a4,1024
   12f00:	4c813023          	sd	s0,1216(sp)
   12f04:	00f11823          	sh	a5,16(sp)
   12f08:	842e                	mv	s0,a1
   12f0a:	191c                	addi	a5,sp,176
   12f0c:	858a                	mv	a1,sp
   12f0e:	4a913c23          	sd	s1,1208(sp)
   12f12:	4b213823          	sd	s2,1200(sp)
   12f16:	4c113423          	sd	ra,1224(sp)
   12f1a:	892a                	mv	s2,a0
   12f1c:	d772                	sw	t3,172(sp)
   12f1e:	00611923          	sh	t1,18(sp)
   12f22:	f846                	sd	a7,48(sp)
   12f24:	e0c2                	sd	a6,64(sp)
   12f26:	e03e                	sd	a5,0(sp)
   12f28:	ec3e                	sd	a5,24(sp)
   12f2a:	c63a                	sw	a4,12(sp)
   12f2c:	d03a                	sw	a4,32(sp)
   12f2e:	d402                	sw	zero,40(sp)
   12f30:	d0afe0ef          	jal	ra,1143a <_vfprintf_r>
   12f34:	84aa                	mv	s1,a0
   12f36:	02055963          	bgez	a0,12f68 <__sbprintf+0x86>
   12f3a:	01015783          	lhu	a5,16(sp)
   12f3e:	0407f793          	andi	a5,a5,64
   12f42:	c799                	beqz	a5,12f50 <__sbprintf+0x6e>
   12f44:	01045783          	lhu	a5,16(s0)
   12f48:	0407e793          	ori	a5,a5,64
   12f4c:	00f41823          	sh	a5,16(s0)
   12f50:	4c813083          	ld	ra,1224(sp)
   12f54:	4c013403          	ld	s0,1216(sp)
   12f58:	4b013903          	ld	s2,1200(sp)
   12f5c:	8526                	mv	a0,s1
   12f5e:	4b813483          	ld	s1,1208(sp)
   12f62:	4d010113          	addi	sp,sp,1232
   12f66:	8082                	ret
   12f68:	858a                	mv	a1,sp
   12f6a:	854a                	mv	a0,s2
   12f6c:	48a000ef          	jal	ra,133f6 <_fflush_r>
   12f70:	d569                	beqz	a0,12f3a <__sbprintf+0x58>
   12f72:	54fd                	li	s1,-1
   12f74:	b7d9                	j	12f3a <__sbprintf+0x58>

0000000000012f76 <_write_r>:
   12f76:	1101                	addi	sp,sp,-32
   12f78:	872e                	mv	a4,a1
   12f7a:	e822                	sd	s0,16(sp)
   12f7c:	e426                	sd	s1,8(sp)
   12f7e:	85b2                	mv	a1,a2
   12f80:	842a                	mv	s0,a0
   12f82:	8636                	mv	a2,a3
   12f84:	853a                	mv	a0,a4
   12f86:	ec06                	sd	ra,24(sp)
   12f88:	6801a423          	sw	zero,1672(gp) # 1f780 <errno>
   12f8c:	1c4080ef          	jal	ra,1b150 <_write>
   12f90:	57fd                	li	a5,-1
   12f92:	00f50763          	beq	a0,a5,12fa0 <_write_r+0x2a>
   12f96:	60e2                	ld	ra,24(sp)
   12f98:	6442                	ld	s0,16(sp)
   12f9a:	64a2                	ld	s1,8(sp)
   12f9c:	6105                	addi	sp,sp,32
   12f9e:	8082                	ret
   12fa0:	6881a783          	lw	a5,1672(gp) # 1f780 <errno>
   12fa4:	dbed                	beqz	a5,12f96 <_write_r+0x20>
   12fa6:	60e2                	ld	ra,24(sp)
   12fa8:	c01c                	sw	a5,0(s0)
   12faa:	6442                	ld	s0,16(sp)
   12fac:	64a2                	ld	s1,8(sp)
   12fae:	6105                	addi	sp,sp,32
   12fb0:	8082                	ret

0000000000012fb2 <__swsetup_r>:
   12fb2:	6481b783          	ld	a5,1608(gp) # 1f740 <_impure_ptr>
   12fb6:	1101                	addi	sp,sp,-32
   12fb8:	e822                	sd	s0,16(sp)
   12fba:	e426                	sd	s1,8(sp)
   12fbc:	ec06                	sd	ra,24(sp)
   12fbe:	84aa                	mv	s1,a0
   12fc0:	842e                	mv	s0,a1
   12fc2:	c399                	beqz	a5,12fc8 <__swsetup_r+0x16>
   12fc4:	4bb8                	lw	a4,80(a5)
   12fc6:	cf21                	beqz	a4,1301e <__swsetup_r+0x6c>
   12fc8:	01041703          	lh	a4,16(s0)
   12fcc:	03071793          	slli	a5,a4,0x30
   12fd0:	00877693          	andi	a3,a4,8
   12fd4:	93c1                	srli	a5,a5,0x30
   12fd6:	ceb9                	beqz	a3,13034 <__swsetup_r+0x82>
   12fd8:	6c14                	ld	a3,24(s0)
   12fda:	cabd                	beqz	a3,13050 <__swsetup_r+0x9e>
   12fdc:	0017f613          	andi	a2,a5,1
   12fe0:	ce11                	beqz	a2,12ffc <__swsetup_r+0x4a>
   12fe2:	5010                	lw	a2,32(s0)
   12fe4:	00042623          	sw	zero,12(s0)
   12fe8:	4501                	li	a0,0
   12fea:	40c0063b          	negw	a2,a2
   12fee:	d410                	sw	a2,40(s0)
   12ff0:	ce91                	beqz	a3,1300c <__swsetup_r+0x5a>
   12ff2:	60e2                	ld	ra,24(sp)
   12ff4:	6442                	ld	s0,16(sp)
   12ff6:	64a2                	ld	s1,8(sp)
   12ff8:	6105                	addi	sp,sp,32
   12ffa:	8082                	ret
   12ffc:	0027f613          	andi	a2,a5,2
   13000:	4581                	li	a1,0
   13002:	e211                	bnez	a2,13006 <__swsetup_r+0x54>
   13004:	500c                	lw	a1,32(s0)
   13006:	c44c                	sw	a1,12(s0)
   13008:	4501                	li	a0,0
   1300a:	f6e5                	bnez	a3,12ff2 <__swsetup_r+0x40>
   1300c:	0807f793          	andi	a5,a5,128
   13010:	d3ed                	beqz	a5,12ff2 <__swsetup_r+0x40>
   13012:	04076713          	ori	a4,a4,64
   13016:	00e41823          	sh	a4,16(s0)
   1301a:	557d                	li	a0,-1
   1301c:	bfd9                	j	12ff2 <__swsetup_r+0x40>
   1301e:	853e                	mv	a0,a5
   13020:	da4fd0ef          	jal	ra,105c4 <__sinit>
   13024:	01041703          	lh	a4,16(s0)
   13028:	03071793          	slli	a5,a4,0x30
   1302c:	00877693          	andi	a3,a4,8
   13030:	93c1                	srli	a5,a5,0x30
   13032:	f2dd                	bnez	a3,12fd8 <__swsetup_r+0x26>
   13034:	0107f693          	andi	a3,a5,16
   13038:	c2ad                	beqz	a3,1309a <__swsetup_r+0xe8>
   1303a:	8b91                	andi	a5,a5,4
   1303c:	eb9d                	bnez	a5,13072 <__swsetup_r+0xc0>
   1303e:	6c14                	ld	a3,24(s0)
   13040:	00876713          	ori	a4,a4,8
   13044:	03071793          	slli	a5,a4,0x30
   13048:	00e41823          	sh	a4,16(s0)
   1304c:	93c1                	srli	a5,a5,0x30
   1304e:	f6d9                	bnez	a3,12fdc <__swsetup_r+0x2a>
   13050:	2807f613          	andi	a2,a5,640
   13054:	20000593          	li	a1,512
   13058:	f8b602e3          	beq	a2,a1,12fdc <__swsetup_r+0x2a>
   1305c:	85a2                	mv	a1,s0
   1305e:	8526                	mv	a0,s1
   13060:	33d020ef          	jal	ra,15b9c <__smakebuf_r>
   13064:	01041703          	lh	a4,16(s0)
   13068:	6c14                	ld	a3,24(s0)
   1306a:	03071793          	slli	a5,a4,0x30
   1306e:	93c1                	srli	a5,a5,0x30
   13070:	b7b5                	j	12fdc <__swsetup_r+0x2a>
   13072:	6c2c                	ld	a1,88(s0)
   13074:	cd81                	beqz	a1,1308c <__swsetup_r+0xda>
   13076:	07440793          	addi	a5,s0,116
   1307a:	00f58763          	beq	a1,a5,13088 <__swsetup_r+0xd6>
   1307e:	8526                	mv	a0,s1
   13080:	500000ef          	jal	ra,13580 <_free_r>
   13084:	01041703          	lh	a4,16(s0)
   13088:	04043c23          	sd	zero,88(s0)
   1308c:	6c14                	ld	a3,24(s0)
   1308e:	fdb77713          	andi	a4,a4,-37
   13092:	00042423          	sw	zero,8(s0)
   13096:	e014                	sd	a3,0(s0)
   13098:	b765                	j	13040 <__swsetup_r+0x8e>
   1309a:	47a5                	li	a5,9
   1309c:	c09c                	sw	a5,0(s1)
   1309e:	04076713          	ori	a4,a4,64
   130a2:	00e41823          	sh	a4,16(s0)
   130a6:	557d                	li	a0,-1
   130a8:	b7a9                	j	12ff2 <__swsetup_r+0x40>

00000000000130aa <__call_exitprocs>:
   130aa:	715d                	addi	sp,sp,-80
   130ac:	f052                	sd	s4,32(sp)
   130ae:	6301ba03          	ld	s4,1584(gp) # 1f728 <_global_impure_ptr>
   130b2:	f84a                	sd	s2,48(sp)
   130b4:	e486                	sd	ra,72(sp)
   130b6:	1f8a3903          	ld	s2,504(s4)
   130ba:	e0a2                	sd	s0,64(sp)
   130bc:	fc26                	sd	s1,56(sp)
   130be:	f44e                	sd	s3,40(sp)
   130c0:	ec56                	sd	s5,24(sp)
   130c2:	e85a                	sd	s6,16(sp)
   130c4:	e45e                	sd	s7,8(sp)
   130c6:	e062                	sd	s8,0(sp)
   130c8:	02090863          	beqz	s2,130f8 <__call_exitprocs+0x4e>
   130cc:	8b2a                	mv	s6,a0
   130ce:	8bae                	mv	s7,a1
   130d0:	4a85                	li	s5,1
   130d2:	59fd                	li	s3,-1
   130d4:	00892483          	lw	s1,8(s2)
   130d8:	fff4841b          	addiw	s0,s1,-1
   130dc:	00044e63          	bltz	s0,130f8 <__call_exitprocs+0x4e>
   130e0:	048e                	slli	s1,s1,0x3
   130e2:	94ca                	add	s1,s1,s2
   130e4:	020b8663          	beqz	s7,13110 <__call_exitprocs+0x66>
   130e8:	2084b783          	ld	a5,520(s1)
   130ec:	03778263          	beq	a5,s7,13110 <__call_exitprocs+0x66>
   130f0:	347d                	addiw	s0,s0,-1
   130f2:	14e1                	addi	s1,s1,-8
   130f4:	ff3418e3          	bne	s0,s3,130e4 <__call_exitprocs+0x3a>
   130f8:	60a6                	ld	ra,72(sp)
   130fa:	6406                	ld	s0,64(sp)
   130fc:	74e2                	ld	s1,56(sp)
   130fe:	7942                	ld	s2,48(sp)
   13100:	79a2                	ld	s3,40(sp)
   13102:	7a02                	ld	s4,32(sp)
   13104:	6ae2                	ld	s5,24(sp)
   13106:	6b42                	ld	s6,16(sp)
   13108:	6ba2                	ld	s7,8(sp)
   1310a:	6c02                	ld	s8,0(sp)
   1310c:	6161                	addi	sp,sp,80
   1310e:	8082                	ret
   13110:	00892783          	lw	a5,8(s2)
   13114:	6498                	ld	a4,8(s1)
   13116:	37fd                	addiw	a5,a5,-1
   13118:	04878463          	beq	a5,s0,13160 <__call_exitprocs+0xb6>
   1311c:	0004b423          	sd	zero,8(s1)
   13120:	db61                	beqz	a4,130f0 <__call_exitprocs+0x46>
   13122:	31092783          	lw	a5,784(s2)
   13126:	008a96bb          	sllw	a3,s5,s0
   1312a:	00892c03          	lw	s8,8(s2)
   1312e:	8ff5                	and	a5,a5,a3
   13130:	2781                	sext.w	a5,a5
   13132:	ef89                	bnez	a5,1314c <__call_exitprocs+0xa2>
   13134:	9702                	jalr	a4
   13136:	00892703          	lw	a4,8(s2)
   1313a:	1f8a3783          	ld	a5,504(s4)
   1313e:	01871463          	bne	a4,s8,13146 <__call_exitprocs+0x9c>
   13142:	fb2787e3          	beq	a5,s2,130f0 <__call_exitprocs+0x46>
   13146:	dbcd                	beqz	a5,130f8 <__call_exitprocs+0x4e>
   13148:	893e                	mv	s2,a5
   1314a:	b769                	j	130d4 <__call_exitprocs+0x2a>
   1314c:	31492783          	lw	a5,788(s2)
   13150:	1084b583          	ld	a1,264(s1)
   13154:	8ff5                	and	a5,a5,a3
   13156:	2781                	sext.w	a5,a5
   13158:	e799                	bnez	a5,13166 <__call_exitprocs+0xbc>
   1315a:	855a                	mv	a0,s6
   1315c:	9702                	jalr	a4
   1315e:	bfe1                	j	13136 <__call_exitprocs+0x8c>
   13160:	00892423          	sw	s0,8(s2)
   13164:	bf75                	j	13120 <__call_exitprocs+0x76>
   13166:	852e                	mv	a0,a1
   13168:	9702                	jalr	a4
   1316a:	b7f1                	j	13136 <__call_exitprocs+0x8c>

000000000001316c <atexit>:
   1316c:	85aa                	mv	a1,a0
   1316e:	4681                	li	a3,0
   13170:	4601                	li	a2,0
   13172:	4501                	li	a0,0
   13174:	7d60606f          	j	1994a <__register_exitproc>

0000000000013178 <_close_r>:
   13178:	1101                	addi	sp,sp,-32
   1317a:	e822                	sd	s0,16(sp)
   1317c:	e426                	sd	s1,8(sp)
   1317e:	842a                	mv	s0,a0
   13180:	852e                	mv	a0,a1
   13182:	ec06                	sd	ra,24(sp)
   13184:	6801a423          	sw	zero,1672(gp) # 1f780 <errno>
   13188:	655070ef          	jal	ra,1afdc <_close>
   1318c:	57fd                	li	a5,-1
   1318e:	00f50763          	beq	a0,a5,1319c <_close_r+0x24>
   13192:	60e2                	ld	ra,24(sp)
   13194:	6442                	ld	s0,16(sp)
   13196:	64a2                	ld	s1,8(sp)
   13198:	6105                	addi	sp,sp,32
   1319a:	8082                	ret
   1319c:	6881a783          	lw	a5,1672(gp) # 1f780 <errno>
   131a0:	dbed                	beqz	a5,13192 <_close_r+0x1a>
   131a2:	60e2                	ld	ra,24(sp)
   131a4:	c01c                	sw	a5,0(s0)
   131a6:	6442                	ld	s0,16(sp)
   131a8:	64a2                	ld	s1,8(sp)
   131aa:	6105                	addi	sp,sp,32
   131ac:	8082                	ret

00000000000131ae <_fclose_r>:
   131ae:	1101                	addi	sp,sp,-32
   131b0:	ec06                	sd	ra,24(sp)
   131b2:	e822                	sd	s0,16(sp)
   131b4:	e426                	sd	s1,8(sp)
   131b6:	e04a                	sd	s2,0(sp)
   131b8:	c989                	beqz	a1,131ca <_fclose_r+0x1c>
   131ba:	842e                	mv	s0,a1
   131bc:	84aa                	mv	s1,a0
   131be:	c119                	beqz	a0,131c4 <_fclose_r+0x16>
   131c0:	493c                	lw	a5,80(a0)
   131c2:	cfa5                	beqz	a5,1323a <_fclose_r+0x8c>
   131c4:	01041783          	lh	a5,16(s0)
   131c8:	eb89                	bnez	a5,131da <_fclose_r+0x2c>
   131ca:	60e2                	ld	ra,24(sp)
   131cc:	6442                	ld	s0,16(sp)
   131ce:	4901                	li	s2,0
   131d0:	64a2                	ld	s1,8(sp)
   131d2:	854a                	mv	a0,s2
   131d4:	6902                	ld	s2,0(sp)
   131d6:	6105                	addi	sp,sp,32
   131d8:	8082                	ret
   131da:	85a2                	mv	a1,s0
   131dc:	8526                	mv	a0,s1
   131de:	086000ef          	jal	ra,13264 <__sflush_r>
   131e2:	683c                	ld	a5,80(s0)
   131e4:	892a                	mv	s2,a0
   131e6:	c791                	beqz	a5,131f2 <_fclose_r+0x44>
   131e8:	780c                	ld	a1,48(s0)
   131ea:	8526                	mv	a0,s1
   131ec:	9782                	jalr	a5
   131ee:	04054c63          	bltz	a0,13246 <_fclose_r+0x98>
   131f2:	01045783          	lhu	a5,16(s0)
   131f6:	0807f793          	andi	a5,a5,128
   131fa:	efa1                	bnez	a5,13252 <_fclose_r+0xa4>
   131fc:	6c2c                	ld	a1,88(s0)
   131fe:	c991                	beqz	a1,13212 <_fclose_r+0x64>
   13200:	07440793          	addi	a5,s0,116
   13204:	00f58563          	beq	a1,a5,1320e <_fclose_r+0x60>
   13208:	8526                	mv	a0,s1
   1320a:	376000ef          	jal	ra,13580 <_free_r>
   1320e:	04043c23          	sd	zero,88(s0)
   13212:	7c2c                	ld	a1,120(s0)
   13214:	c591                	beqz	a1,13220 <_fclose_r+0x72>
   13216:	8526                	mv	a0,s1
   13218:	368000ef          	jal	ra,13580 <_free_r>
   1321c:	06043c23          	sd	zero,120(s0)
   13220:	bacfd0ef          	jal	ra,105cc <__sfp_lock_acquire>
   13224:	00041823          	sh	zero,16(s0)
   13228:	ba6fd0ef          	jal	ra,105ce <__sfp_lock_release>
   1322c:	60e2                	ld	ra,24(sp)
   1322e:	6442                	ld	s0,16(sp)
   13230:	64a2                	ld	s1,8(sp)
   13232:	854a                	mv	a0,s2
   13234:	6902                	ld	s2,0(sp)
   13236:	6105                	addi	sp,sp,32
   13238:	8082                	ret
   1323a:	b8afd0ef          	jal	ra,105c4 <__sinit>
   1323e:	01041783          	lh	a5,16(s0)
   13242:	d7c1                	beqz	a5,131ca <_fclose_r+0x1c>
   13244:	bf59                	j	131da <_fclose_r+0x2c>
   13246:	01045783          	lhu	a5,16(s0)
   1324a:	597d                	li	s2,-1
   1324c:	0807f793          	andi	a5,a5,128
   13250:	d7d5                	beqz	a5,131fc <_fclose_r+0x4e>
   13252:	6c0c                	ld	a1,24(s0)
   13254:	8526                	mv	a0,s1
   13256:	32a000ef          	jal	ra,13580 <_free_r>
   1325a:	b74d                	j	131fc <_fclose_r+0x4e>

000000000001325c <fclose>:
   1325c:	85aa                	mv	a1,a0
   1325e:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   13262:	b7b1                	j	131ae <_fclose_r>

0000000000013264 <__sflush_r>:
   13264:	01059783          	lh	a5,16(a1)
   13268:	7179                	addi	sp,sp,-48
   1326a:	f022                	sd	s0,32(sp)
   1326c:	e44e                	sd	s3,8(sp)
   1326e:	f406                	sd	ra,40(sp)
   13270:	ec26                	sd	s1,24(sp)
   13272:	e84a                	sd	s2,16(sp)
   13274:	0087f693          	andi	a3,a5,8
   13278:	842e                	mv	s0,a1
   1327a:	89aa                	mv	s3,a0
   1327c:	ead5                	bnez	a3,13330 <__sflush_r+0xcc>
   1327e:	6705                	lui	a4,0x1
   13280:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8e8>
   13284:	4594                	lw	a3,8(a1)
   13286:	8fd9                	or	a5,a5,a4
   13288:	00f59823          	sh	a5,16(a1)
   1328c:	10d05063          	blez	a3,1338c <__sflush_r+0x128>
   13290:	6438                	ld	a4,72(s0)
   13292:	c759                	beqz	a4,13320 <__sflush_r+0xbc>
   13294:	17c2                	slli	a5,a5,0x30
   13296:	93c1                	srli	a5,a5,0x30
   13298:	6685                	lui	a3,0x1
   1329a:	0009a483          	lw	s1,0(s3)
   1329e:	8efd                	and	a3,a3,a5
   132a0:	0009a023          	sw	zero,0(s3)
   132a4:	780c                	ld	a1,48(s0)
   132a6:	e6fd                	bnez	a3,13394 <__sflush_r+0x130>
   132a8:	4601                	li	a2,0
   132aa:	4685                	li	a3,1
   132ac:	854e                	mv	a0,s3
   132ae:	9702                	jalr	a4
   132b0:	57fd                	li	a5,-1
   132b2:	862a                	mv	a2,a0
   132b4:	10f50763          	beq	a0,a5,133c2 <__sflush_r+0x15e>
   132b8:	01045783          	lhu	a5,16(s0)
   132bc:	6438                	ld	a4,72(s0)
   132be:	780c                	ld	a1,48(s0)
   132c0:	8b91                	andi	a5,a5,4
   132c2:	c799                	beqz	a5,132d0 <__sflush_r+0x6c>
   132c4:	4414                	lw	a3,8(s0)
   132c6:	6c3c                	ld	a5,88(s0)
   132c8:	8e15                	sub	a2,a2,a3
   132ca:	c399                	beqz	a5,132d0 <__sflush_r+0x6c>
   132cc:	583c                	lw	a5,112(s0)
   132ce:	8e1d                	sub	a2,a2,a5
   132d0:	4681                	li	a3,0
   132d2:	854e                	mv	a0,s3
   132d4:	9702                	jalr	a4
   132d6:	57fd                	li	a5,-1
   132d8:	0cf51063          	bne	a0,a5,13398 <__sflush_r+0x134>
   132dc:	0009a703          	lw	a4,0(s3)
   132e0:	01041783          	lh	a5,16(s0)
   132e4:	cf6d                	beqz	a4,133de <__sflush_r+0x17a>
   132e6:	46f5                	li	a3,29
   132e8:	00d70563          	beq	a4,a3,132f2 <__sflush_r+0x8e>
   132ec:	46d9                	li	a3,22
   132ee:	0ed71e63          	bne	a4,a3,133ea <__sflush_r+0x186>
   132f2:	6c14                	ld	a3,24(s0)
   132f4:	777d                	lui	a4,0xfffff
   132f6:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdff07>
   132fa:	8ff9                	and	a5,a5,a4
   132fc:	00f41823          	sh	a5,16(s0)
   13300:	00042423          	sw	zero,8(s0)
   13304:	e014                	sd	a3,0(s0)
   13306:	6c2c                	ld	a1,88(s0)
   13308:	0099a023          	sw	s1,0(s3)
   1330c:	c991                	beqz	a1,13320 <__sflush_r+0xbc>
   1330e:	07440793          	addi	a5,s0,116
   13312:	00f58563          	beq	a1,a5,1331c <__sflush_r+0xb8>
   13316:	854e                	mv	a0,s3
   13318:	268000ef          	jal	ra,13580 <_free_r>
   1331c:	04043c23          	sd	zero,88(s0)
   13320:	4501                	li	a0,0
   13322:	70a2                	ld	ra,40(sp)
   13324:	7402                	ld	s0,32(sp)
   13326:	64e2                	ld	s1,24(sp)
   13328:	6942                	ld	s2,16(sp)
   1332a:	69a2                	ld	s3,8(sp)
   1332c:	6145                	addi	sp,sp,48
   1332e:	8082                	ret
   13330:	0185b903          	ld	s2,24(a1)
   13334:	fe0906e3          	beqz	s2,13320 <__sflush_r+0xbc>
   13338:	6184                	ld	s1,0(a1)
   1333a:	03079713          	slli	a4,a5,0x30
   1333e:	9341                	srli	a4,a4,0x30
   13340:	8b0d                	andi	a4,a4,3
   13342:	0125b023          	sd	s2,0(a1)
   13346:	412484bb          	subw	s1,s1,s2
   1334a:	4781                	li	a5,0
   1334c:	e311                	bnez	a4,13350 <__sflush_r+0xec>
   1334e:	519c                	lw	a5,32(a1)
   13350:	c45c                	sw	a5,12(s0)
   13352:	00904663          	bgtz	s1,1335e <__sflush_r+0xfa>
   13356:	b7e9                	j	13320 <__sflush_r+0xbc>
   13358:	992a                	add	s2,s2,a0
   1335a:	fc9053e3          	blez	s1,13320 <__sflush_r+0xbc>
   1335e:	603c                	ld	a5,64(s0)
   13360:	780c                	ld	a1,48(s0)
   13362:	86a6                	mv	a3,s1
   13364:	864a                	mv	a2,s2
   13366:	854e                	mv	a0,s3
   13368:	9782                	jalr	a5
   1336a:	9c89                	subw	s1,s1,a0
   1336c:	fea046e3          	bgtz	a0,13358 <__sflush_r+0xf4>
   13370:	01045783          	lhu	a5,16(s0)
   13374:	70a2                	ld	ra,40(sp)
   13376:	64e2                	ld	s1,24(sp)
   13378:	0407e793          	ori	a5,a5,64
   1337c:	00f41823          	sh	a5,16(s0)
   13380:	7402                	ld	s0,32(sp)
   13382:	6942                	ld	s2,16(sp)
   13384:	69a2                	ld	s3,8(sp)
   13386:	557d                	li	a0,-1
   13388:	6145                	addi	sp,sp,48
   1338a:	8082                	ret
   1338c:	59b8                	lw	a4,112(a1)
   1338e:	f0e041e3          	bgtz	a4,13290 <__sflush_r+0x2c>
   13392:	b779                	j	13320 <__sflush_r+0xbc>
   13394:	6850                	ld	a2,144(s0)
   13396:	b72d                	j	132c0 <__sflush_r+0x5c>
   13398:	01045783          	lhu	a5,16(s0)
   1339c:	777d                	lui	a4,0xfffff
   1339e:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdff07>
   133a2:	8ff9                	and	a5,a5,a4
   133a4:	6c14                	ld	a3,24(s0)
   133a6:	0107979b          	slliw	a5,a5,0x10
   133aa:	4107d79b          	sraiw	a5,a5,0x10
   133ae:	6705                	lui	a4,0x1
   133b0:	00f41823          	sh	a5,16(s0)
   133b4:	00042423          	sw	zero,8(s0)
   133b8:	e014                	sd	a3,0(s0)
   133ba:	8ff9                	and	a5,a5,a4
   133bc:	d7a9                	beqz	a5,13306 <__sflush_r+0xa2>
   133be:	e848                	sd	a0,144(s0)
   133c0:	b799                	j	13306 <__sflush_r+0xa2>
   133c2:	0009a783          	lw	a5,0(s3)
   133c6:	ee0789e3          	beqz	a5,132b8 <__sflush_r+0x54>
   133ca:	4775                	li	a4,29
   133cc:	00e78563          	beq	a5,a4,133d6 <__sflush_r+0x172>
   133d0:	4759                	li	a4,22
   133d2:	f8e79fe3          	bne	a5,a4,13370 <__sflush_r+0x10c>
   133d6:	0099a023          	sw	s1,0(s3)
   133da:	4501                	li	a0,0
   133dc:	b799                	j	13322 <__sflush_r+0xbe>
   133de:	777d                	lui	a4,0xfffff
   133e0:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdff07>
   133e4:	6c14                	ld	a3,24(s0)
   133e6:	8ff9                	and	a5,a5,a4
   133e8:	b7d9                	j	133ae <__sflush_r+0x14a>
   133ea:	0407e793          	ori	a5,a5,64
   133ee:	00f41823          	sh	a5,16(s0)
   133f2:	557d                	li	a0,-1
   133f4:	b73d                	j	13322 <__sflush_r+0xbe>

00000000000133f6 <_fflush_r>:
   133f6:	1101                	addi	sp,sp,-32
   133f8:	e822                	sd	s0,16(sp)
   133fa:	ec06                	sd	ra,24(sp)
   133fc:	842a                	mv	s0,a0
   133fe:	c119                	beqz	a0,13404 <_fflush_r+0xe>
   13400:	493c                	lw	a5,80(a0)
   13402:	cb89                	beqz	a5,13414 <_fflush_r+0x1e>
   13404:	01059783          	lh	a5,16(a1)
   13408:	ef89                	bnez	a5,13422 <_fflush_r+0x2c>
   1340a:	60e2                	ld	ra,24(sp)
   1340c:	6442                	ld	s0,16(sp)
   1340e:	4501                	li	a0,0
   13410:	6105                	addi	sp,sp,32
   13412:	8082                	ret
   13414:	e42e                	sd	a1,8(sp)
   13416:	9aefd0ef          	jal	ra,105c4 <__sinit>
   1341a:	65a2                	ld	a1,8(sp)
   1341c:	01059783          	lh	a5,16(a1)
   13420:	d7ed                	beqz	a5,1340a <_fflush_r+0x14>
   13422:	8522                	mv	a0,s0
   13424:	6442                	ld	s0,16(sp)
   13426:	60e2                	ld	ra,24(sp)
   13428:	6105                	addi	sp,sp,32
   1342a:	bd2d                	j	13264 <__sflush_r>

000000000001342c <fflush>:
   1342c:	cd1d                	beqz	a0,1346a <fflush+0x3e>
   1342e:	1101                	addi	sp,sp,-32
   13430:	e822                	sd	s0,16(sp)
   13432:	842a                	mv	s0,a0
   13434:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   13438:	ec06                	sd	ra,24(sp)
   1343a:	c119                	beqz	a0,13440 <fflush+0x14>
   1343c:	493c                	lw	a5,80(a0)
   1343e:	cf91                	beqz	a5,1345a <fflush+0x2e>
   13440:	01041783          	lh	a5,16(s0)
   13444:	e791                	bnez	a5,13450 <fflush+0x24>
   13446:	60e2                	ld	ra,24(sp)
   13448:	6442                	ld	s0,16(sp)
   1344a:	4501                	li	a0,0
   1344c:	6105                	addi	sp,sp,32
   1344e:	8082                	ret
   13450:	85a2                	mv	a1,s0
   13452:	6442                	ld	s0,16(sp)
   13454:	60e2                	ld	ra,24(sp)
   13456:	6105                	addi	sp,sp,32
   13458:	b531                	j	13264 <__sflush_r>
   1345a:	e42a                	sd	a0,8(sp)
   1345c:	968fd0ef          	jal	ra,105c4 <__sinit>
   13460:	01041783          	lh	a5,16(s0)
   13464:	6522                	ld	a0,8(sp)
   13466:	d3e5                	beqz	a5,13446 <fflush+0x1a>
   13468:	b7e5                	j	13450 <fflush+0x24>
   1346a:	6301b503          	ld	a0,1584(gp) # 1f728 <_global_impure_ptr>
   1346e:	65cd                	lui	a1,0x13
   13470:	3f658593          	addi	a1,a1,1014 # 133f6 <_fflush_r>
   13474:	9fafd06f          	j	1066e <_fwalk_reent>

0000000000013478 <__libc_fini_array>:
   13478:	1101                	addi	sp,sp,-32
   1347a:	e822                	sd	s0,16(sp)
   1347c:	67f9                	lui	a5,0x1e
   1347e:	6479                	lui	s0,0x1e
   13480:	5f078793          	addi	a5,a5,1520 # 1e5f0 <__do_global_dtors_aux_fini_array_entry>
   13484:	5f840413          	addi	s0,s0,1528 # 1e5f8 <impure_data>
   13488:	8c1d                	sub	s0,s0,a5
   1348a:	e426                	sd	s1,8(sp)
   1348c:	ec06                	sd	ra,24(sp)
   1348e:	40345493          	srai	s1,s0,0x3
   13492:	c881                	beqz	s1,134a2 <__libc_fini_array+0x2a>
   13494:	1461                	addi	s0,s0,-8
   13496:	943e                	add	s0,s0,a5
   13498:	601c                	ld	a5,0(s0)
   1349a:	14fd                	addi	s1,s1,-1
   1349c:	1461                	addi	s0,s0,-8
   1349e:	9782                	jalr	a5
   134a0:	fce5                	bnez	s1,13498 <__libc_fini_array+0x20>
   134a2:	60e2                	ld	ra,24(sp)
   134a4:	6442                	ld	s0,16(sp)
   134a6:	64a2                	ld	s1,8(sp)
   134a8:	6105                	addi	sp,sp,32
   134aa:	8082                	ret

00000000000134ac <_malloc_trim_r>:
   134ac:	7179                	addi	sp,sp,-48
   134ae:	e44e                	sd	s3,8(sp)
   134b0:	0001f9b7          	lui	s3,0x1f
   134b4:	f022                	sd	s0,32(sp)
   134b6:	ec26                	sd	s1,24(sp)
   134b8:	e84a                	sd	s2,16(sp)
   134ba:	e052                	sd	s4,0(sp)
   134bc:	f406                	sd	ra,40(sp)
   134be:	8a2e                	mv	s4,a1
   134c0:	892a                	mv	s2,a0
   134c2:	d4098993          	addi	s3,s3,-704 # 1ed40 <__malloc_av_>
   134c6:	ae7fd0ef          	jal	ra,10fac <__malloc_lock>
   134ca:	0109b703          	ld	a4,16(s3)
   134ce:	6785                	lui	a5,0x1
   134d0:	fdf78413          	addi	s0,a5,-33 # fdf <exit-0xf109>
   134d4:	6704                	ld	s1,8(a4)
   134d6:	41440433          	sub	s0,s0,s4
   134da:	98f1                	andi	s1,s1,-4
   134dc:	9426                	add	s0,s0,s1
   134de:	8031                	srli	s0,s0,0xc
   134e0:	147d                	addi	s0,s0,-1
   134e2:	0432                	slli	s0,s0,0xc
   134e4:	00f44b63          	blt	s0,a5,134fa <_malloc_trim_r+0x4e>
   134e8:	4581                	li	a1,0
   134ea:	854a                	mv	a0,s2
   134ec:	d13fd0ef          	jal	ra,111fe <_sbrk_r>
   134f0:	0109b783          	ld	a5,16(s3)
   134f4:	97a6                	add	a5,a5,s1
   134f6:	00f50e63          	beq	a0,a5,13512 <_malloc_trim_r+0x66>
   134fa:	854a                	mv	a0,s2
   134fc:	ab3fd0ef          	jal	ra,10fae <__malloc_unlock>
   13500:	70a2                	ld	ra,40(sp)
   13502:	7402                	ld	s0,32(sp)
   13504:	64e2                	ld	s1,24(sp)
   13506:	6942                	ld	s2,16(sp)
   13508:	69a2                	ld	s3,8(sp)
   1350a:	6a02                	ld	s4,0(sp)
   1350c:	4501                	li	a0,0
   1350e:	6145                	addi	sp,sp,48
   13510:	8082                	ret
   13512:	408005b3          	neg	a1,s0
   13516:	854a                	mv	a0,s2
   13518:	ce7fd0ef          	jal	ra,111fe <_sbrk_r>
   1351c:	57fd                	li	a5,-1
   1351e:	02f50b63          	beq	a0,a5,13554 <_malloc_trim_r+0xa8>
   13522:	000207b7          	lui	a5,0x20
   13526:	8d078793          	addi	a5,a5,-1840 # 1f8d0 <__malloc_current_mallinfo>
   1352a:	4398                	lw	a4,0(a5)
   1352c:	0109b683          	ld	a3,16(s3)
   13530:	8c81                	sub	s1,s1,s0
   13532:	0014e493          	ori	s1,s1,1
   13536:	9f01                	subw	a4,a4,s0
   13538:	854a                	mv	a0,s2
   1353a:	e684                	sd	s1,8(a3)
   1353c:	c398                	sw	a4,0(a5)
   1353e:	a71fd0ef          	jal	ra,10fae <__malloc_unlock>
   13542:	70a2                	ld	ra,40(sp)
   13544:	7402                	ld	s0,32(sp)
   13546:	64e2                	ld	s1,24(sp)
   13548:	6942                	ld	s2,16(sp)
   1354a:	69a2                	ld	s3,8(sp)
   1354c:	6a02                	ld	s4,0(sp)
   1354e:	4505                	li	a0,1
   13550:	6145                	addi	sp,sp,48
   13552:	8082                	ret
   13554:	4581                	li	a1,0
   13556:	854a                	mv	a0,s2
   13558:	ca7fd0ef          	jal	ra,111fe <_sbrk_r>
   1355c:	0109b703          	ld	a4,16(s3)
   13560:	46fd                	li	a3,31
   13562:	40e507b3          	sub	a5,a0,a4
   13566:	f8f6dae3          	bge	a3,a5,134fa <_malloc_trim_r+0x4e>
   1356a:	6501b683          	ld	a3,1616(gp) # 1f748 <__malloc_sbrk_base>
   1356e:	0017e793          	ori	a5,a5,1
   13572:	e71c                	sd	a5,8(a4)
   13574:	8d15                	sub	a0,a0,a3
   13576:	000206b7          	lui	a3,0x20
   1357a:	8ca6a823          	sw	a0,-1840(a3) # 1f8d0 <__malloc_current_mallinfo>
   1357e:	bfb5                	j	134fa <_malloc_trim_r+0x4e>

0000000000013580 <_free_r>:
   13580:	c9e5                	beqz	a1,13670 <_free_r+0xf0>
   13582:	1101                	addi	sp,sp,-32
   13584:	e822                	sd	s0,16(sp)
   13586:	e426                	sd	s1,8(sp)
   13588:	842e                	mv	s0,a1
   1358a:	84aa                	mv	s1,a0
   1358c:	ec06                	sd	ra,24(sp)
   1358e:	a1ffd0ef          	jal	ra,10fac <__malloc_lock>
   13592:	ff843503          	ld	a0,-8(s0)
   13596:	ff040713          	addi	a4,s0,-16
   1359a:	0001f5b7          	lui	a1,0x1f
   1359e:	ffe57793          	andi	a5,a0,-2
   135a2:	00f70633          	add	a2,a4,a5
   135a6:	d4058593          	addi	a1,a1,-704 # 1ed40 <__malloc_av_>
   135aa:	6614                	ld	a3,8(a2)
   135ac:	0105b803          	ld	a6,16(a1)
   135b0:	9af1                	andi	a3,a3,-4
   135b2:	14c80263          	beq	a6,a2,136f6 <_free_r+0x176>
   135b6:	e614                	sd	a3,8(a2)
   135b8:	8905                	andi	a0,a0,1
   135ba:	00d60833          	add	a6,a2,a3
   135be:	e149                	bnez	a0,13640 <_free_r+0xc0>
   135c0:	ff043303          	ld	t1,-16(s0)
   135c4:	00883803          	ld	a6,8(a6)
   135c8:	0001f537          	lui	a0,0x1f
   135cc:	40670733          	sub	a4,a4,t1
   135d0:	01073883          	ld	a7,16(a4)
   135d4:	d5050513          	addi	a0,a0,-688 # 1ed50 <__malloc_av_+0x10>
   135d8:	979a                	add	a5,a5,t1
   135da:	00187813          	andi	a6,a6,1
   135de:	0ea88963          	beq	a7,a0,136d0 <_free_r+0x150>
   135e2:	01873303          	ld	t1,24(a4)
   135e6:	0068bc23          	sd	t1,24(a7)
   135ea:	01133823          	sd	a7,16(t1)
   135ee:	14080e63          	beqz	a6,1374a <_free_r+0x1ca>
   135f2:	0017e693          	ori	a3,a5,1
   135f6:	e714                	sd	a3,8(a4)
   135f8:	e21c                	sd	a5,0(a2)
   135fa:	1ff00693          	li	a3,511
   135fe:	08f6e363          	bltu	a3,a5,13684 <_free_r+0x104>
   13602:	838d                	srli	a5,a5,0x3
   13604:	0017869b          	addiw	a3,a5,1
   13608:	0016969b          	slliw	a3,a3,0x1
   1360c:	068e                	slli	a3,a3,0x3
   1360e:	0085b803          	ld	a6,8(a1)
   13612:	96ae                	add	a3,a3,a1
   13614:	6288                	ld	a0,0(a3)
   13616:	4027d61b          	sraiw	a2,a5,0x2
   1361a:	4785                	li	a5,1
   1361c:	00c797b3          	sll	a5,a5,a2
   13620:	0107e7b3          	or	a5,a5,a6
   13624:	ff068613          	addi	a2,a3,-16
   13628:	ef10                	sd	a2,24(a4)
   1362a:	eb08                	sd	a0,16(a4)
   1362c:	e59c                	sd	a5,8(a1)
   1362e:	e298                	sd	a4,0(a3)
   13630:	ed18                	sd	a4,24(a0)
   13632:	6442                	ld	s0,16(sp)
   13634:	60e2                	ld	ra,24(sp)
   13636:	8526                	mv	a0,s1
   13638:	64a2                	ld	s1,8(sp)
   1363a:	6105                	addi	sp,sp,32
   1363c:	973fd06f          	j	10fae <__malloc_unlock>
   13640:	00883503          	ld	a0,8(a6)
   13644:	8905                	andi	a0,a0,1
   13646:	e515                	bnez	a0,13672 <_free_r+0xf2>
   13648:	0001f537          	lui	a0,0x1f
   1364c:	97b6                	add	a5,a5,a3
   1364e:	d5050513          	addi	a0,a0,-688 # 1ed50 <__malloc_av_+0x10>
   13652:	6a14                	ld	a3,16(a2)
   13654:	0017e893          	ori	a7,a5,1
   13658:	00f70833          	add	a6,a4,a5
   1365c:	10a68163          	beq	a3,a0,1375e <_free_r+0x1de>
   13660:	6e10                	ld	a2,24(a2)
   13662:	ee90                	sd	a2,24(a3)
   13664:	ea14                	sd	a3,16(a2)
   13666:	01173423          	sd	a7,8(a4)
   1366a:	00f83023          	sd	a5,0(a6)
   1366e:	b771                	j	135fa <_free_r+0x7a>
   13670:	8082                	ret
   13672:	0017e693          	ori	a3,a5,1
   13676:	fed43c23          	sd	a3,-8(s0)
   1367a:	e21c                	sd	a5,0(a2)
   1367c:	1ff00693          	li	a3,511
   13680:	f8f6f1e3          	bgeu	a3,a5,13602 <_free_r+0x82>
   13684:	0097d693          	srli	a3,a5,0x9
   13688:	4611                	li	a2,4
   1368a:	08d66f63          	bltu	a2,a3,13728 <_free_r+0x1a8>
   1368e:	0067d693          	srli	a3,a5,0x6
   13692:	0396851b          	addiw	a0,a3,57
   13696:	0015151b          	slliw	a0,a0,0x1
   1369a:	0386861b          	addiw	a2,a3,56
   1369e:	050e                	slli	a0,a0,0x3
   136a0:	952e                	add	a0,a0,a1
   136a2:	6114                	ld	a3,0(a0)
   136a4:	1541                	addi	a0,a0,-16
   136a6:	0cd50563          	beq	a0,a3,13770 <_free_r+0x1f0>
   136aa:	6690                	ld	a2,8(a3)
   136ac:	9a71                	andi	a2,a2,-4
   136ae:	00c7f563          	bgeu	a5,a2,136b8 <_free_r+0x138>
   136b2:	6a94                	ld	a3,16(a3)
   136b4:	fed51be3          	bne	a0,a3,136aa <_free_r+0x12a>
   136b8:	6e88                	ld	a0,24(a3)
   136ba:	ef08                	sd	a0,24(a4)
   136bc:	eb14                	sd	a3,16(a4)
   136be:	6442                	ld	s0,16(sp)
   136c0:	e918                	sd	a4,16(a0)
   136c2:	60e2                	ld	ra,24(sp)
   136c4:	8526                	mv	a0,s1
   136c6:	64a2                	ld	s1,8(sp)
   136c8:	ee98                	sd	a4,24(a3)
   136ca:	6105                	addi	sp,sp,32
   136cc:	8e3fd06f          	j	10fae <__malloc_unlock>
   136d0:	0e081c63          	bnez	a6,137c8 <_free_r+0x248>
   136d4:	6e0c                	ld	a1,24(a2)
   136d6:	6a10                	ld	a2,16(a2)
   136d8:	96be                	add	a3,a3,a5
   136da:	6442                	ld	s0,16(sp)
   136dc:	ee0c                	sd	a1,24(a2)
   136de:	e990                	sd	a2,16(a1)
   136e0:	0016e793          	ori	a5,a3,1
   136e4:	60e2                	ld	ra,24(sp)
   136e6:	e71c                	sd	a5,8(a4)
   136e8:	8526                	mv	a0,s1
   136ea:	9736                	add	a4,a4,a3
   136ec:	64a2                	ld	s1,8(sp)
   136ee:	e314                	sd	a3,0(a4)
   136f0:	6105                	addi	sp,sp,32
   136f2:	8bdfd06f          	j	10fae <__malloc_unlock>
   136f6:	8905                	andi	a0,a0,1
   136f8:	96be                	add	a3,a3,a5
   136fa:	e909                	bnez	a0,1370c <_free_r+0x18c>
   136fc:	ff043503          	ld	a0,-16(s0)
   13700:	8f09                	sub	a4,a4,a0
   13702:	6f1c                	ld	a5,24(a4)
   13704:	6b10                	ld	a2,16(a4)
   13706:	96aa                	add	a3,a3,a0
   13708:	ee1c                	sd	a5,24(a2)
   1370a:	eb90                	sd	a2,16(a5)
   1370c:	0016e613          	ori	a2,a3,1
   13710:	6581b783          	ld	a5,1624(gp) # 1f750 <__malloc_trim_threshold>
   13714:	e710                	sd	a2,8(a4)
   13716:	e998                	sd	a4,16(a1)
   13718:	f0f6ede3          	bltu	a3,a5,13632 <_free_r+0xb2>
   1371c:	6801b583          	ld	a1,1664(gp) # 1f778 <__malloc_top_pad>
   13720:	8526                	mv	a0,s1
   13722:	d8bff0ef          	jal	ra,134ac <_malloc_trim_r>
   13726:	b731                	j	13632 <_free_r+0xb2>
   13728:	4651                	li	a2,20
   1372a:	02d67263          	bgeu	a2,a3,1374e <_free_r+0x1ce>
   1372e:	05400613          	li	a2,84
   13732:	04d66a63          	bltu	a2,a3,13786 <_free_r+0x206>
   13736:	00c7d693          	srli	a3,a5,0xc
   1373a:	06f6851b          	addiw	a0,a3,111
   1373e:	0015151b          	slliw	a0,a0,0x1
   13742:	06e6861b          	addiw	a2,a3,110
   13746:	050e                	slli	a0,a0,0x3
   13748:	bfa1                	j	136a0 <_free_r+0x120>
   1374a:	97b6                	add	a5,a5,a3
   1374c:	b719                	j	13652 <_free_r+0xd2>
   1374e:	05c6851b          	addiw	a0,a3,92
   13752:	0015151b          	slliw	a0,a0,0x1
   13756:	05b6861b          	addiw	a2,a3,91
   1375a:	050e                	slli	a0,a0,0x3
   1375c:	b791                	j	136a0 <_free_r+0x120>
   1375e:	f598                	sd	a4,40(a1)
   13760:	f198                	sd	a4,32(a1)
   13762:	ef08                	sd	a0,24(a4)
   13764:	eb08                	sd	a0,16(a4)
   13766:	01173423          	sd	a7,8(a4)
   1376a:	00f83023          	sd	a5,0(a6)
   1376e:	b5d1                	j	13632 <_free_r+0xb2>
   13770:	0085b803          	ld	a6,8(a1)
   13774:	4026561b          	sraiw	a2,a2,0x2
   13778:	4785                	li	a5,1
   1377a:	00c797b3          	sll	a5,a5,a2
   1377e:	0107e7b3          	or	a5,a5,a6
   13782:	e59c                	sd	a5,8(a1)
   13784:	bf1d                	j	136ba <_free_r+0x13a>
   13786:	15400613          	li	a2,340
   1378a:	00d66c63          	bltu	a2,a3,137a2 <_free_r+0x222>
   1378e:	00f7d693          	srli	a3,a5,0xf
   13792:	0786851b          	addiw	a0,a3,120
   13796:	0015151b          	slliw	a0,a0,0x1
   1379a:	0776861b          	addiw	a2,a3,119
   1379e:	050e                	slli	a0,a0,0x3
   137a0:	b701                	j	136a0 <_free_r+0x120>
   137a2:	55400613          	li	a2,1364
   137a6:	00d66c63          	bltu	a2,a3,137be <_free_r+0x23e>
   137aa:	0127d693          	srli	a3,a5,0x12
   137ae:	07d6851b          	addiw	a0,a3,125
   137b2:	0015151b          	slliw	a0,a0,0x1
   137b6:	07c6861b          	addiw	a2,a3,124
   137ba:	050e                	slli	a0,a0,0x3
   137bc:	b5d5                	j	136a0 <_free_r+0x120>
   137be:	7f000513          	li	a0,2032
   137c2:	07e00613          	li	a2,126
   137c6:	bde9                	j	136a0 <_free_r+0x120>
   137c8:	0017e693          	ori	a3,a5,1
   137cc:	e714                	sd	a3,8(a4)
   137ce:	e21c                	sd	a5,0(a2)
   137d0:	b58d                	j	13632 <_free_r+0xb2>

00000000000137d2 <__sfvwrite_r>:
   137d2:	6a1c                	ld	a5,16(a2)
   137d4:	1a078b63          	beqz	a5,1398a <__sfvwrite_r+0x1b8>
   137d8:	0105d683          	lhu	a3,16(a1)
   137dc:	711d                	addi	sp,sp,-96
   137de:	e8a2                	sd	s0,80(sp)
   137e0:	f852                	sd	s4,48(sp)
   137e2:	f456                	sd	s5,40(sp)
   137e4:	ec86                	sd	ra,88(sp)
   137e6:	e4a6                	sd	s1,72(sp)
   137e8:	e0ca                	sd	s2,64(sp)
   137ea:	fc4e                	sd	s3,56(sp)
   137ec:	f05a                	sd	s6,32(sp)
   137ee:	ec5e                	sd	s7,24(sp)
   137f0:	e862                	sd	s8,16(sp)
   137f2:	e466                	sd	s9,8(sp)
   137f4:	e06a                	sd	s10,0(sp)
   137f6:	0086f793          	andi	a5,a3,8
   137fa:	8a32                	mv	s4,a2
   137fc:	8aaa                	mv	s5,a0
   137fe:	842e                	mv	s0,a1
   13800:	cfb9                	beqz	a5,1385e <__sfvwrite_r+0x8c>
   13802:	6d9c                	ld	a5,24(a1)
   13804:	cfa9                	beqz	a5,1385e <__sfvwrite_r+0x8c>
   13806:	0026f793          	andi	a5,a3,2
   1380a:	000a3903          	ld	s2,0(s4)
   1380e:	c7ad                	beqz	a5,13878 <__sfvwrite_r+0xa6>
   13810:	603c                	ld	a5,64(s0)
   13812:	780c                	ld	a1,48(s0)
   13814:	80000b37          	lui	s6,0x80000
   13818:	4981                	li	s3,0
   1381a:	4481                	li	s1,0
   1381c:	c00b4b13          	xori	s6,s6,-1024
   13820:	864e                	mv	a2,s3
   13822:	8556                	mv	a0,s5
   13824:	c49d                	beqz	s1,13852 <__sfvwrite_r+0x80>
   13826:	86a6                	mv	a3,s1
   13828:	009b7363          	bgeu	s6,s1,1382e <__sfvwrite_r+0x5c>
   1382c:	86da                	mv	a3,s6
   1382e:	2681                	sext.w	a3,a3
   13830:	9782                	jalr	a5
   13832:	14a05463          	blez	a0,1397a <__sfvwrite_r+0x1a8>
   13836:	010a3783          	ld	a5,16(s4)
   1383a:	99aa                	add	s3,s3,a0
   1383c:	8c89                	sub	s1,s1,a0
   1383e:	8f89                	sub	a5,a5,a0
   13840:	00fa3823          	sd	a5,16(s4)
   13844:	10078763          	beqz	a5,13952 <__sfvwrite_r+0x180>
   13848:	603c                	ld	a5,64(s0)
   1384a:	780c                	ld	a1,48(s0)
   1384c:	864e                	mv	a2,s3
   1384e:	8556                	mv	a0,s5
   13850:	f8f9                	bnez	s1,13826 <__sfvwrite_r+0x54>
   13852:	00093983          	ld	s3,0(s2)
   13856:	00893483          	ld	s1,8(s2)
   1385a:	0941                	addi	s2,s2,16
   1385c:	b7d1                	j	13820 <__sfvwrite_r+0x4e>
   1385e:	85a2                	mv	a1,s0
   13860:	8556                	mv	a0,s5
   13862:	f50ff0ef          	jal	ra,12fb2 <__swsetup_r>
   13866:	28051b63          	bnez	a0,13afc <__sfvwrite_r+0x32a>
   1386a:	01045683          	lhu	a3,16(s0)
   1386e:	000a3903          	ld	s2,0(s4)
   13872:	0026f793          	andi	a5,a3,2
   13876:	ffc9                	bnez	a5,13810 <__sfvwrite_r+0x3e>
   13878:	0016f793          	andi	a5,a3,1
   1387c:	ebbd                	bnez	a5,138f2 <__sfvwrite_r+0x120>
   1387e:	4444                	lw	s1,12(s0)
   13880:	601c                	ld	a5,0(s0)
   13882:	80000b37          	lui	s6,0x80000
   13886:	ffeb4b93          	xori	s7,s6,-2
   1388a:	4c01                	li	s8,0
   1388c:	4981                	li	s3,0
   1388e:	fffb4b13          	not	s6,s6
   13892:	853e                	mv	a0,a5
   13894:	8ca6                	mv	s9,s1
   13896:	04098863          	beqz	s3,138e6 <__sfvwrite_r+0x114>
   1389a:	2006f713          	andi	a4,a3,512
   1389e:	12070a63          	beqz	a4,139d2 <__sfvwrite_r+0x200>
   138a2:	8d26                	mv	s10,s1
   138a4:	1899f863          	bgeu	s3,s1,13a34 <__sfvwrite_r+0x262>
   138a8:	8cce                	mv	s9,s3
   138aa:	8d4e                	mv	s10,s3
   138ac:	866a                	mv	a2,s10
   138ae:	85e2                	mv	a1,s8
   138b0:	48a020ef          	jal	ra,15d3a <memmove>
   138b4:	4458                	lw	a4,12(s0)
   138b6:	601c                	ld	a5,0(s0)
   138b8:	84ce                	mv	s1,s3
   138ba:	4197073b          	subw	a4,a4,s9
   138be:	9d3e                	add	s10,s10,a5
   138c0:	c458                	sw	a4,12(s0)
   138c2:	01a43023          	sd	s10,0(s0)
   138c6:	4981                	li	s3,0
   138c8:	010a3783          	ld	a5,16(s4)
   138cc:	9c26                	add	s8,s8,s1
   138ce:	8f85                	sub	a5,a5,s1
   138d0:	00fa3823          	sd	a5,16(s4)
   138d4:	cfbd                	beqz	a5,13952 <__sfvwrite_r+0x180>
   138d6:	4444                	lw	s1,12(s0)
   138d8:	601c                	ld	a5,0(s0)
   138da:	01045683          	lhu	a3,16(s0)
   138de:	8ca6                	mv	s9,s1
   138e0:	853e                	mv	a0,a5
   138e2:	fa099ce3          	bnez	s3,1389a <__sfvwrite_r+0xc8>
   138e6:	00093c03          	ld	s8,0(s2)
   138ea:	00893983          	ld	s3,8(s2)
   138ee:	0941                	addi	s2,s2,16
   138f0:	b74d                	j	13892 <__sfvwrite_r+0xc0>
   138f2:	4b81                	li	s7,0
   138f4:	4501                	li	a0,0
   138f6:	4c81                	li	s9,0
   138f8:	4c01                	li	s8,0
   138fa:	080c0a63          	beqz	s8,1398e <__sfvwrite_r+0x1bc>
   138fe:	c145                	beqz	a0,1399e <__sfvwrite_r+0x1cc>
   13900:	8b5e                	mv	s6,s7
   13902:	017c7363          	bgeu	s8,s7,13908 <__sfvwrite_r+0x136>
   13906:	8b62                	mv	s6,s8
   13908:	6008                	ld	a0,0(s0)
   1390a:	6c18                	ld	a4,24(s0)
   1390c:	445c                	lw	a5,12(s0)
   1390e:	5014                	lw	a3,32(s0)
   13910:	84da                	mv	s1,s6
   13912:	00a77663          	bgeu	a4,a0,1391e <__sfvwrite_r+0x14c>
   13916:	00d789bb          	addw	s3,a5,a3
   1391a:	0969cd63          	blt	s3,s6,139b4 <__sfvwrite_r+0x1e2>
   1391e:	18db4663          	blt	s6,a3,13aaa <__sfvwrite_r+0x2d8>
   13922:	603c                	ld	a5,64(s0)
   13924:	780c                	ld	a1,48(s0)
   13926:	8666                	mv	a2,s9
   13928:	8556                	mv	a0,s5
   1392a:	9782                	jalr	a5
   1392c:	84aa                	mv	s1,a0
   1392e:	04a05663          	blez	a0,1397a <__sfvwrite_r+0x1a8>
   13932:	0005079b          	sext.w	a5,a0
   13936:	40fb8bbb          	subw	s7,s7,a5
   1393a:	4505                	li	a0,1
   1393c:	020b8a63          	beqz	s7,13970 <__sfvwrite_r+0x19e>
   13940:	010a3783          	ld	a5,16(s4)
   13944:	9ca6                	add	s9,s9,s1
   13946:	409c0c33          	sub	s8,s8,s1
   1394a:	8f85                	sub	a5,a5,s1
   1394c:	00fa3823          	sd	a5,16(s4)
   13950:	f7cd                	bnez	a5,138fa <__sfvwrite_r+0x128>
   13952:	4501                	li	a0,0
   13954:	60e6                	ld	ra,88(sp)
   13956:	6446                	ld	s0,80(sp)
   13958:	64a6                	ld	s1,72(sp)
   1395a:	6906                	ld	s2,64(sp)
   1395c:	79e2                	ld	s3,56(sp)
   1395e:	7a42                	ld	s4,48(sp)
   13960:	7aa2                	ld	s5,40(sp)
   13962:	7b02                	ld	s6,32(sp)
   13964:	6be2                	ld	s7,24(sp)
   13966:	6c42                	ld	s8,16(sp)
   13968:	6ca2                	ld	s9,8(sp)
   1396a:	6d02                	ld	s10,0(sp)
   1396c:	6125                	addi	sp,sp,96
   1396e:	8082                	ret
   13970:	85a2                	mv	a1,s0
   13972:	8556                	mv	a0,s5
   13974:	a83ff0ef          	jal	ra,133f6 <_fflush_r>
   13978:	d561                	beqz	a0,13940 <__sfvwrite_r+0x16e>
   1397a:	01041783          	lh	a5,16(s0)
   1397e:	0407e793          	ori	a5,a5,64
   13982:	00f41823          	sh	a5,16(s0)
   13986:	557d                	li	a0,-1
   13988:	b7f1                	j	13954 <__sfvwrite_r+0x182>
   1398a:	4501                	li	a0,0
   1398c:	8082                	ret
   1398e:	00893c03          	ld	s8,8(s2)
   13992:	87ca                	mv	a5,s2
   13994:	0941                	addi	s2,s2,16
   13996:	fe0c0ce3          	beqz	s8,1398e <__sfvwrite_r+0x1bc>
   1399a:	0007bc83          	ld	s9,0(a5)
   1399e:	8662                	mv	a2,s8
   139a0:	45a9                	li	a1,10
   139a2:	8566                	mv	a0,s9
   139a4:	be8fd0ef          	jal	ra,10d8c <memchr>
   139a8:	14050163          	beqz	a0,13aea <__sfvwrite_r+0x318>
   139ac:	0505                	addi	a0,a0,1
   139ae:	41950bbb          	subw	s7,a0,s9
   139b2:	b7b9                	j	13900 <__sfvwrite_r+0x12e>
   139b4:	85e6                	mv	a1,s9
   139b6:	864e                	mv	a2,s3
   139b8:	382020ef          	jal	ra,15d3a <memmove>
   139bc:	601c                	ld	a5,0(s0)
   139be:	85a2                	mv	a1,s0
   139c0:	8556                	mv	a0,s5
   139c2:	97ce                	add	a5,a5,s3
   139c4:	e01c                	sd	a5,0(s0)
   139c6:	a31ff0ef          	jal	ra,133f6 <_fflush_r>
   139ca:	f945                	bnez	a0,1397a <__sfvwrite_r+0x1a8>
   139cc:	87ce                	mv	a5,s3
   139ce:	84ce                	mv	s1,s3
   139d0:	b79d                	j	13936 <__sfvwrite_r+0x164>
   139d2:	6c18                	ld	a4,24(s0)
   139d4:	02f76863          	bltu	a4,a5,13a04 <__sfvwrite_r+0x232>
   139d8:	5018                	lw	a4,32(s0)
   139da:	02e9e563          	bltu	s3,a4,13a04 <__sfvwrite_r+0x232>
   139de:	86ce                	mv	a3,s3
   139e0:	013bf363          	bgeu	s7,s3,139e6 <__sfvwrite_r+0x214>
   139e4:	86da                	mv	a3,s6
   139e6:	02e6c6bb          	divw	a3,a3,a4
   139ea:	603c                	ld	a5,64(s0)
   139ec:	780c                	ld	a1,48(s0)
   139ee:	8662                	mv	a2,s8
   139f0:	8556                	mv	a0,s5
   139f2:	02e686bb          	mulw	a3,a3,a4
   139f6:	9782                	jalr	a5
   139f8:	84aa                	mv	s1,a0
   139fa:	f8a050e3          	blez	a0,1397a <__sfvwrite_r+0x1a8>
   139fe:	409989b3          	sub	s3,s3,s1
   13a02:	b5d9                	j	138c8 <__sfvwrite_r+0xf6>
   13a04:	0099f363          	bgeu	s3,s1,13a0a <__sfvwrite_r+0x238>
   13a08:	84ce                	mv	s1,s3
   13a0a:	853e                	mv	a0,a5
   13a0c:	8626                	mv	a2,s1
   13a0e:	85e2                	mv	a1,s8
   13a10:	32a020ef          	jal	ra,15d3a <memmove>
   13a14:	4458                	lw	a4,12(s0)
   13a16:	601c                	ld	a5,0(s0)
   13a18:	409706bb          	subw	a3,a4,s1
   13a1c:	97a6                	add	a5,a5,s1
   13a1e:	c454                	sw	a3,12(s0)
   13a20:	e01c                	sd	a5,0(s0)
   13a22:	fef1                	bnez	a3,139fe <__sfvwrite_r+0x22c>
   13a24:	85a2                	mv	a1,s0
   13a26:	8556                	mv	a0,s5
   13a28:	9cfff0ef          	jal	ra,133f6 <_fflush_r>
   13a2c:	f539                	bnez	a0,1397a <__sfvwrite_r+0x1a8>
   13a2e:	409989b3          	sub	s3,s3,s1
   13a32:	bd59                	j	138c8 <__sfvwrite_r+0xf6>
   13a34:	4806f713          	andi	a4,a3,1152
   13a38:	e6070ae3          	beqz	a4,138ac <__sfvwrite_r+0xda>
   13a3c:	5010                	lw	a2,32(s0)
   13a3e:	6c0c                	ld	a1,24(s0)
   13a40:	0016171b          	slliw	a4,a2,0x1
   13a44:	9f31                	addw	a4,a4,a2
   13a46:	8f8d                	sub	a5,a5,a1
   13a48:	01f7549b          	srliw	s1,a4,0x1f
   13a4c:	00078d1b          	sext.w	s10,a5
   13a50:	9cb9                	addw	s1,s1,a4
   13a52:	001d0713          	addi	a4,s10,1
   13a56:	4014d49b          	sraiw	s1,s1,0x1
   13a5a:	974e                	add	a4,a4,s3
   13a5c:	00e4f663          	bgeu	s1,a4,13a68 <__sfvwrite_r+0x296>
   13a60:	0017871b          	addiw	a4,a5,1
   13a64:	013704bb          	addw	s1,a4,s3
   13a68:	4006f693          	andi	a3,a3,1024
   13a6c:	cea9                	beqz	a3,13ac6 <__sfvwrite_r+0x2f4>
   13a6e:	85a6                	mv	a1,s1
   13a70:	8556                	mv	a0,s5
   13a72:	d03fc0ef          	jal	ra,10774 <_malloc_r>
   13a76:	8caa                	mv	s9,a0
   13a78:	cd25                	beqz	a0,13af0 <__sfvwrite_r+0x31e>
   13a7a:	6c0c                	ld	a1,24(s0)
   13a7c:	866a                	mv	a2,s10
   13a7e:	b9cfd0ef          	jal	ra,10e1a <memcpy>
   13a82:	01045783          	lhu	a5,16(s0)
   13a86:	b7f7f793          	andi	a5,a5,-1153
   13a8a:	0807e793          	ori	a5,a5,128
   13a8e:	00f41823          	sh	a5,16(s0)
   13a92:	01ac8533          	add	a0,s9,s10
   13a96:	41a487bb          	subw	a5,s1,s10
   13a9a:	01943c23          	sd	s9,24(s0)
   13a9e:	e008                	sd	a0,0(s0)
   13aa0:	d004                	sw	s1,32(s0)
   13aa2:	8cce                	mv	s9,s3
   13aa4:	c45c                	sw	a5,12(s0)
   13aa6:	8d4e                	mv	s10,s3
   13aa8:	b511                	j	138ac <__sfvwrite_r+0xda>
   13aaa:	865a                	mv	a2,s6
   13aac:	85e6                	mv	a1,s9
   13aae:	28c020ef          	jal	ra,15d3a <memmove>
   13ab2:	4454                	lw	a3,12(s0)
   13ab4:	6018                	ld	a4,0(s0)
   13ab6:	000b079b          	sext.w	a5,s6
   13aba:	416686bb          	subw	a3,a3,s6
   13abe:	975a                	add	a4,a4,s6
   13ac0:	c454                	sw	a3,12(s0)
   13ac2:	e018                	sd	a4,0(s0)
   13ac4:	bd8d                	j	13936 <__sfvwrite_r+0x164>
   13ac6:	8626                	mv	a2,s1
   13ac8:	8556                	mv	a0,s5
   13aca:	028030ef          	jal	ra,16af2 <_realloc_r>
   13ace:	8caa                	mv	s9,a0
   13ad0:	f169                	bnez	a0,13a92 <__sfvwrite_r+0x2c0>
   13ad2:	6c0c                	ld	a1,24(s0)
   13ad4:	8556                	mv	a0,s5
   13ad6:	aabff0ef          	jal	ra,13580 <_free_r>
   13ada:	01041783          	lh	a5,16(s0)
   13ade:	4731                	li	a4,12
   13ae0:	00eaa023          	sw	a4,0(s5)
   13ae4:	f7f7f793          	andi	a5,a5,-129
   13ae8:	bd59                	j	1397e <__sfvwrite_r+0x1ac>
   13aea:	001c0b9b          	addiw	s7,s8,1
   13aee:	bd09                	j	13900 <__sfvwrite_r+0x12e>
   13af0:	4731                	li	a4,12
   13af2:	01041783          	lh	a5,16(s0)
   13af6:	00eaa023          	sw	a4,0(s5)
   13afa:	b551                	j	1397e <__sfvwrite_r+0x1ac>
   13afc:	557d                	li	a0,-1
   13afe:	bd99                	j	13954 <__sfvwrite_r+0x182>

0000000000013b00 <eshdn1>:
   13b00:	00450693          	addi	a3,a0,4
   13b04:	4781                	li	a5,0
   13b06:	0569                	addi	a0,a0,26
   13b08:	7861                	lui	a6,0xffff8
   13b0a:	a811                	j	13b1e <eshdn1+0x1e>
   13b0c:	0017979b          	slliw	a5,a5,0x1
   13b10:	00e69023          	sh	a4,0(a3)
   13b14:	17c2                	slli	a5,a5,0x30
   13b16:	0689                	addi	a3,a3,2
   13b18:	93c1                	srli	a5,a5,0x30
   13b1a:	02d50863          	beq	a0,a3,13b4a <eshdn1+0x4a>
   13b1e:	0006d703          	lhu	a4,0(a3)
   13b22:	00177613          	andi	a2,a4,1
   13b26:	c219                	beqz	a2,13b2c <eshdn1+0x2c>
   13b28:	0017e793          	ori	a5,a5,1
   13b2c:	8305                	srli	a4,a4,0x1
   13b2e:	0027f613          	andi	a2,a5,2
   13b32:	010765b3          	or	a1,a4,a6
   13b36:	da79                	beqz	a2,13b0c <eshdn1+0xc>
   13b38:	0017979b          	slliw	a5,a5,0x1
   13b3c:	00b69023          	sh	a1,0(a3)
   13b40:	17c2                	slli	a5,a5,0x30
   13b42:	0689                	addi	a3,a3,2
   13b44:	93c1                	srli	a5,a5,0x30
   13b46:	fcd51ce3          	bne	a0,a3,13b1e <eshdn1+0x1e>
   13b4a:	8082                	ret

0000000000013b4c <eshup1>:
   13b4c:	01850693          	addi	a3,a0,24
   13b50:	4701                	li	a4,0
   13b52:	0509                	addi	a0,a0,2
   13b54:	a811                	j	13b68 <eshup1+0x1c>
   13b56:	0017171b          	slliw	a4,a4,0x1
   13b5a:	00f69023          	sh	a5,0(a3)
   13b5e:	1742                	slli	a4,a4,0x30
   13b60:	16f9                	addi	a3,a3,-2
   13b62:	9341                	srli	a4,a4,0x30
   13b64:	02d50b63          	beq	a0,a3,13b9a <eshup1+0x4e>
   13b68:	0006d783          	lhu	a5,0(a3)
   13b6c:	00f7d613          	srli	a2,a5,0xf
   13b70:	0017979b          	slliw	a5,a5,0x1
   13b74:	c219                	beqz	a2,13b7a <eshup1+0x2e>
   13b76:	00176713          	ori	a4,a4,1
   13b7a:	17c2                	slli	a5,a5,0x30
   13b7c:	93c1                	srli	a5,a5,0x30
   13b7e:	00277613          	andi	a2,a4,2
   13b82:	0017e593          	ori	a1,a5,1
   13b86:	da61                	beqz	a2,13b56 <eshup1+0xa>
   13b88:	0017171b          	slliw	a4,a4,0x1
   13b8c:	00b69023          	sh	a1,0(a3)
   13b90:	1742                	slli	a4,a4,0x30
   13b92:	16f9                	addi	a3,a3,-2
   13b94:	9341                	srli	a4,a4,0x30
   13b96:	fcd519e3          	bne	a0,a3,13b68 <eshup1+0x1c>
   13b9a:	8082                	ret

0000000000013b9c <m16m>:
   13b9c:	1101                	addi	sp,sp,-32
   13b9e:	6e41                	lui	t3,0x10
   13ba0:	00011b23          	sh	zero,22(sp)
   13ba4:	00011c23          	sh	zero,24(sp)
   13ba8:	05e1                	addi	a1,a1,24
   13baa:	083c                	addi	a5,sp,24
   13bac:	00410813          	addi	a6,sp,4
   13bb0:	1e7d                	addi	t3,t3,-1 # ffff <exit-0xe9>
   13bb2:	0005d703          	lhu	a4,0(a1)
   13bb6:	17f9                	addi	a5,a5,-2
   13bb8:	15f9                	addi	a1,a1,-2
   13bba:	c705                	beqz	a4,13be2 <m16m+0x46>
   13bbc:	02a70733          	mul	a4,a4,a0
   13bc0:	0027d883          	lhu	a7,2(a5)
   13bc4:	0007d303          	lhu	t1,0(a5)
   13bc8:	01c776b3          	and	a3,a4,t3
   13bcc:	96c6                	add	a3,a3,a7
   13bce:	8341                	srli	a4,a4,0x10
   13bd0:	0106d893          	srli	a7,a3,0x10
   13bd4:	971a                	add	a4,a4,t1
   13bd6:	9746                	add	a4,a4,a7
   13bd8:	00e79023          	sh	a4,0(a5)
   13bdc:	00d79123          	sh	a3,2(a5)
   13be0:	8341                	srli	a4,a4,0x10
   13be2:	fee79f23          	sh	a4,-2(a5)
   13be6:	fd0796e3          	bne	a5,a6,13bb2 <m16m+0x16>
   13bea:	0611                	addi	a2,a2,4
   13bec:	01a10693          	addi	a3,sp,26
   13bf0:	0007d703          	lhu	a4,0(a5)
   13bf4:	0789                	addi	a5,a5,2
   13bf6:	0609                	addi	a2,a2,2
   13bf8:	fee61f23          	sh	a4,-2(a2)
   13bfc:	fed79ae3          	bne	a5,a3,13bf0 <m16m+0x54>
   13c00:	6105                	addi	sp,sp,32
   13c02:	8082                	ret

0000000000013c04 <emovo.constprop.0>:
   13c04:	00055703          	lhu	a4,0(a0)
   13c08:	00255783          	lhu	a5,2(a0)
   13c0c:	c319                	beqz	a4,13c12 <emovo.constprop.0+0xe>
   13c0e:	6721                	lui	a4,0x8
   13c10:	8fd9                	or	a5,a5,a4
   13c12:	00f59923          	sh	a5,18(a1)
   13c16:	00255703          	lhu	a4,2(a0)
   13c1a:	67a1                	lui	a5,0x8
   13c1c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13c1e:	00f70f63          	beq	a4,a5,13c3c <emovo.constprop.0+0x38>
   13c22:	00650793          	addi	a5,a0,6
   13c26:	05c1                	addi	a1,a1,16
   13c28:	0561                	addi	a0,a0,24
   13c2a:	0007d703          	lhu	a4,0(a5)
   13c2e:	0789                	addi	a5,a5,2
   13c30:	15f9                	addi	a1,a1,-2
   13c32:	00e59123          	sh	a4,2(a1)
   13c36:	fea79ae3          	bne	a5,a0,13c2a <emovo.constprop.0+0x26>
   13c3a:	8082                	ret
   13c3c:	00650793          	addi	a5,a0,6
   13c40:	0569                	addi	a0,a0,26
   13c42:	0007d703          	lhu	a4,0(a5)
   13c46:	0789                	addi	a5,a5,2
   13c48:	e31d                	bnez	a4,13c6e <emovo.constprop.0+0x6a>
   13c4a:	fea79ce3          	bne	a5,a0,13c42 <emovo.constprop.0+0x3e>
   13c4e:	01258713          	addi	a4,a1,18
   13c52:	87ae                	mv	a5,a1
   13c54:	0789                	addi	a5,a5,2
   13c56:	fe079f23          	sh	zero,-2(a5)
   13c5a:	fef71de3          	bne	a4,a5,13c54 <emovo.constprop.0+0x50>
   13c5e:	0125d783          	lhu	a5,18(a1)
   13c62:	6721                	lui	a4,0x8
   13c64:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   13c66:	8fd9                	or	a5,a5,a4
   13c68:	00f59923          	sh	a5,18(a1)
   13c6c:	8082                	ret
   13c6e:	01058713          	addi	a4,a1,16
   13c72:	87ae                	mv	a5,a1
   13c74:	0789                	addi	a5,a5,2
   13c76:	fe079f23          	sh	zero,-2(a5)
   13c7a:	fef71de3          	bne	a4,a5,13c74 <emovo.constprop.0+0x70>
   13c7e:	77f1                	lui	a5,0xffffc
   13c80:	00f59823          	sh	a5,16(a1)
   13c84:	77e1                	lui	a5,0xffff8
   13c86:	fff7c793          	not	a5,a5
   13c8a:	00f59923          	sh	a5,18(a1)
   13c8e:	8082                	ret

0000000000013c90 <enormlz>:
   13c90:	00455783          	lhu	a5,4(a0)
   13c94:	1101                	addi	sp,sp,-32
   13c96:	e426                	sd	s1,8(sp)
   13c98:	ec06                	sd	ra,24(sp)
   13c9a:	e822                	sd	s0,16(sp)
   13c9c:	e04a                	sd	s2,0(sp)
   13c9e:	84aa                	mv	s1,a0
   13ca0:	efc9                	bnez	a5,13d3a <enormlz+0xaa>
   13ca2:	00655703          	lhu	a4,6(a0)
   13ca6:	4401                	li	s0,0
   13ca8:	00f75793          	srli	a5,a4,0xf
   13cac:	e3c1                	bnez	a5,13d2c <enormlz+0x9c>
   13cae:	01a50693          	addi	a3,a0,26
   13cb2:	0a000613          	li	a2,160
   13cb6:	e31d                	bnez	a4,13cdc <enormlz+0x4c>
   13cb8:	00648793          	addi	a5,s1,6
   13cbc:	a019                	j	13cc2 <enormlz+0x32>
   13cbe:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8708>
   13cc2:	0789                	addi	a5,a5,2
   13cc4:	fee79e23          	sh	a4,-4(a5)
   13cc8:	fed79be3          	bne	a5,a3,13cbe <enormlz+0x2e>
   13ccc:	00049c23          	sh	zero,24(s1)
   13cd0:	2441                	addiw	s0,s0,16
   13cd2:	04c40d63          	beq	s0,a2,13d2c <enormlz+0x9c>
   13cd6:	0064d703          	lhu	a4,6(s1)
   13cda:	df79                	beqz	a4,13cb8 <enormlz+0x28>
   13cdc:	f0077793          	andi	a5,a4,-256
   13ce0:	eb8d                	bnez	a5,13d12 <enormlz+0x82>
   13ce2:	01848513          	addi	a0,s1,24
   13ce6:	00248593          	addi	a1,s1,2
   13cea:	4781                	li	a5,0
   13cec:	872a                	mv	a4,a0
   13cee:	00075683          	lhu	a3,0(a4)
   13cf2:	1779                	addi	a4,a4,-2
   13cf4:	0086961b          	slliw	a2,a3,0x8
   13cf8:	8fd1                	or	a5,a5,a2
   13cfa:	00f71123          	sh	a5,2(a4)
   13cfe:	0086d793          	srli	a5,a3,0x8
   13d02:	feb716e3          	bne	a4,a1,13cee <enormlz+0x5e>
   13d06:	0064d703          	lhu	a4,6(s1)
   13d0a:	2421                	addiw	s0,s0,8
   13d0c:	f0077793          	andi	a5,a4,-256
   13d10:	dfe9                	beqz	a5,13cea <enormlz+0x5a>
   13d12:	0a000913          	li	s2,160
   13d16:	a801                	j	13d26 <enormlz+0x96>
   13d18:	2405                	addiw	s0,s0,1
   13d1a:	e33ff0ef          	jal	ra,13b4c <eshup1>
   13d1e:	00894763          	blt	s2,s0,13d2c <enormlz+0x9c>
   13d22:	0064d703          	lhu	a4,6(s1)
   13d26:	833d                	srli	a4,a4,0xf
   13d28:	8526                	mv	a0,s1
   13d2a:	d77d                	beqz	a4,13d18 <enormlz+0x88>
   13d2c:	60e2                	ld	ra,24(sp)
   13d2e:	8522                	mv	a0,s0
   13d30:	6442                	ld	s0,16(sp)
   13d32:	64a2                	ld	s1,8(sp)
   13d34:	6902                	ld	s2,0(sp)
   13d36:	6105                	addi	sp,sp,32
   13d38:	8082                	ret
   13d3a:	f007f713          	andi	a4,a5,-256
   13d3e:	4401                	li	s0,0
   13d40:	e705                	bnez	a4,13d68 <enormlz+0xd8>
   13d42:	f6f00913          	li	s2,-145
   13d46:	a801                	j	13d56 <enormlz+0xc6>
   13d48:	347d                	addiw	s0,s0,-1
   13d4a:	db7ff0ef          	jal	ra,13b00 <eshdn1>
   13d4e:	fd240fe3          	beq	s0,s2,13d2c <enormlz+0x9c>
   13d52:	0044d783          	lhu	a5,4(s1)
   13d56:	8526                	mv	a0,s1
   13d58:	fbe5                	bnez	a5,13d48 <enormlz+0xb8>
   13d5a:	60e2                	ld	ra,24(sp)
   13d5c:	8522                	mv	a0,s0
   13d5e:	6442                	ld	s0,16(sp)
   13d60:	64a2                	ld	s1,8(sp)
   13d62:	6902                	ld	s2,0(sp)
   13d64:	6105                	addi	sp,sp,32
   13d66:	8082                	ret
   13d68:	00450693          	addi	a3,a0,4
   13d6c:	01a50593          	addi	a1,a0,26
   13d70:	4701                	li	a4,0
   13d72:	a019                	j	13d78 <enormlz+0xe8>
   13d74:	0006d783          	lhu	a5,0(a3)
   13d78:	0087d61b          	srliw	a2,a5,0x8
   13d7c:	8f51                	or	a4,a4,a2
   13d7e:	0087979b          	slliw	a5,a5,0x8
   13d82:	00e69023          	sh	a4,0(a3)
   13d86:	03079713          	slli	a4,a5,0x30
   13d8a:	0689                	addi	a3,a3,2
   13d8c:	9341                	srli	a4,a4,0x30
   13d8e:	fed593e3          	bne	a1,a3,13d74 <enormlz+0xe4>
   13d92:	0044d783          	lhu	a5,4(s1)
   13d96:	5461                	li	s0,-8
   13d98:	b76d                	j	13d42 <enormlz+0xb2>

0000000000013d9a <eshift.part.0>:
   13d9a:	7179                	addi	sp,sp,-48
   13d9c:	f022                	sd	s0,32(sp)
   13d9e:	ec26                	sd	s1,24(sp)
   13da0:	f406                	sd	ra,40(sp)
   13da2:	e84a                	sd	s2,16(sp)
   13da4:	e44e                	sd	s3,8(sp)
   13da6:	84ae                	mv	s1,a1
   13da8:	842a                	mv	s0,a0
   13daa:	0605cb63          	bltz	a1,13e20 <eshift.part.0+0x86>
   13dae:	47bd                	li	a5,15
   13db0:	862e                	mv	a2,a1
   13db2:	0511                	addi	a0,a0,4
   13db4:	01840693          	addi	a3,s0,24
   13db8:	45bd                	li	a1,15
   13dba:	0297d063          	bge	a5,s1,13dda <eshift.part.0+0x40>
   13dbe:	87aa                	mv	a5,a0
   13dc0:	0027d703          	lhu	a4,2(a5)
   13dc4:	0789                	addi	a5,a5,2
   13dc6:	fee79f23          	sh	a4,-2(a5)
   13dca:	fef69be3          	bne	a3,a5,13dc0 <eshift.part.0+0x26>
   13dce:	00041c23          	sh	zero,24(s0)
   13dd2:	3641                	addiw	a2,a2,-16
   13dd4:	fec5c5e3          	blt	a1,a2,13dbe <eshift.part.0+0x24>
   13dd8:	88bd                	andi	s1,s1,15
   13dda:	479d                	li	a5,7
   13ddc:	0297d463          	bge	a5,s1,13e04 <eshift.part.0+0x6a>
   13de0:	01840713          	addi	a4,s0,24
   13de4:	00240593          	addi	a1,s0,2
   13de8:	4781                	li	a5,0
   13dea:	00075683          	lhu	a3,0(a4)
   13dee:	1779                	addi	a4,a4,-2
   13df0:	0086961b          	slliw	a2,a3,0x8
   13df4:	8fd1                	or	a5,a5,a2
   13df6:	00f71123          	sh	a5,2(a4)
   13dfa:	0086d793          	srli	a5,a3,0x8
   13dfe:	fee596e3          	bne	a1,a4,13dea <eshift.part.0+0x50>
   13e02:	34e1                	addiw	s1,s1,-8
   13e04:	c491                	beqz	s1,13e10 <eshift.part.0+0x76>
   13e06:	34fd                	addiw	s1,s1,-1
   13e08:	8522                	mv	a0,s0
   13e0a:	d43ff0ef          	jal	ra,13b4c <eshup1>
   13e0e:	fce5                	bnez	s1,13e06 <eshift.part.0+0x6c>
   13e10:	70a2                	ld	ra,40(sp)
   13e12:	7402                	ld	s0,32(sp)
   13e14:	64e2                	ld	s1,24(sp)
   13e16:	6942                	ld	s2,16(sp)
   13e18:	69a2                	ld	s3,8(sp)
   13e1a:	4501                	li	a0,0
   13e1c:	6145                	addi	sp,sp,48
   13e1e:	8082                	ret
   13e20:	57c5                	li	a5,-15
   13e22:	40b0093b          	negw	s2,a1
   13e26:	06f5db63          	bge	a1,a5,13e9c <eshift.part.0+0x102>
   13e2a:	01850593          	addi	a1,a0,24
   13e2e:	4981                	li	s3,0
   13e30:	00450693          	addi	a3,a0,4
   13e34:	463d                	li	a2,15
   13e36:	01845703          	lhu	a4,24(s0)
   13e3a:	87ae                	mv	a5,a1
   13e3c:	00e9e9b3          	or	s3,s3,a4
   13e40:	ffe7d703          	lhu	a4,-2(a5)
   13e44:	17f9                	addi	a5,a5,-2
   13e46:	00e79123          	sh	a4,2(a5)
   13e4a:	fed79be3          	bne	a5,a3,13e40 <eshift.part.0+0xa6>
   13e4e:	00041223          	sh	zero,4(s0)
   13e52:	3941                	addiw	s2,s2,-16
   13e54:	ff2641e3          	blt	a2,s2,13e36 <eshift.part.0+0x9c>
   13e58:	5941                	li	s2,-16
   13e5a:	5745                	li	a4,-15
   13e5c:	4099093b          	subw	s2,s2,s1
   13e60:	4781                	li	a5,0
   13e62:	06e4cb63          	blt	s1,a4,13ed8 <eshift.part.0+0x13e>
   13e66:	00f9093b          	addw	s2,s2,a5
   13e6a:	479d                	li	a5,7
   13e6c:	0327ce63          	blt	a5,s2,13ea8 <eshift.part.0+0x10e>
   13e70:	00090d63          	beqz	s2,13e8a <eshift.part.0+0xf0>
   13e74:	01845783          	lhu	a5,24(s0)
   13e78:	397d                	addiw	s2,s2,-1
   13e7a:	8522                	mv	a0,s0
   13e7c:	8b85                	andi	a5,a5,1
   13e7e:	00f9e9b3          	or	s3,s3,a5
   13e82:	c7fff0ef          	jal	ra,13b00 <eshdn1>
   13e86:	fe0917e3          	bnez	s2,13e74 <eshift.part.0+0xda>
   13e8a:	70a2                	ld	ra,40(sp)
   13e8c:	7402                	ld	s0,32(sp)
   13e8e:	64e2                	ld	s1,24(sp)
   13e90:	6942                	ld	s2,16(sp)
   13e92:	01303533          	snez	a0,s3
   13e96:	69a2                	ld	s3,8(sp)
   13e98:	6145                	addi	sp,sp,48
   13e9a:	8082                	ret
   13e9c:	57e5                	li	a5,-7
   13e9e:	4981                	li	s3,0
   13ea0:	00450693          	addi	a3,a0,4
   13ea4:	fcf5d8e3          	bge	a1,a5,13e74 <eshift.part.0+0xda>
   13ea8:	01844783          	lbu	a5,24(s0)
   13eac:	01a40593          	addi	a1,s0,26
   13eb0:	00f9e9b3          	or	s3,s3,a5
   13eb4:	4781                	li	a5,0
   13eb6:	0006d703          	lhu	a4,0(a3)
   13eba:	0689                	addi	a3,a3,2
   13ebc:	0087561b          	srliw	a2,a4,0x8
   13ec0:	8fd1                	or	a5,a5,a2
   13ec2:	0087171b          	slliw	a4,a4,0x8
   13ec6:	fef69f23          	sh	a5,-2(a3)
   13eca:	03071793          	slli	a5,a4,0x30
   13ece:	93c1                	srli	a5,a5,0x30
   13ed0:	feb693e3          	bne	a3,a1,13eb6 <eshift.part.0+0x11c>
   13ed4:	3961                	addiw	s2,s2,-8
   13ed6:	bf69                	j	13e70 <eshift.part.0+0xd6>
   13ed8:	ff097793          	andi	a5,s2,-16
   13edc:	40f007bb          	negw	a5,a5
   13ee0:	00f9093b          	addw	s2,s2,a5
   13ee4:	479d                	li	a5,7
   13ee6:	f927d5e3          	bge	a5,s2,13e70 <eshift.part.0+0xd6>
   13eea:	bf7d                	j	13ea8 <eshift.part.0+0x10e>

0000000000013eec <emovi>:
   13eec:	01255783          	lhu	a5,18(a0)
   13ef0:	6621                	lui	a2,0x8
   13ef2:	167d                	addi	a2,a2,-1 # 7fff <exit-0x80e9>
   13ef4:	00f7d79b          	srliw	a5,a5,0xf
   13ef8:	40f007bb          	negw	a5,a5
   13efc:	00f59023          	sh	a5,0(a1)
   13f00:	01255683          	lhu	a3,18(a0)
   13f04:	01050793          	addi	a5,a0,16
   13f08:	00458713          	addi	a4,a1,4
   13f0c:	8ef1                	and	a3,a3,a2
   13f0e:	00d59123          	sh	a3,2(a1)
   13f12:	0006881b          	sext.w	a6,a3
   13f16:	02c68263          	beq	a3,a2,13f3a <emovi+0x4e>
   13f1a:	00658713          	addi	a4,a1,6
   13f1e:	00059223          	sh	zero,4(a1)
   13f22:	1579                	addi	a0,a0,-2
   13f24:	0007d683          	lhu	a3,0(a5)
   13f28:	17f9                	addi	a5,a5,-2
   13f2a:	0709                	addi	a4,a4,2
   13f2c:	fed71f23          	sh	a3,-2(a4)
   13f30:	fef51ae3          	bne	a0,a5,13f24 <emovi+0x38>
   13f34:	00059c23          	sh	zero,24(a1)
   13f38:	8082                	ret
   13f3a:	01255683          	lhu	a3,18(a0)
   13f3e:	0106f6b3          	and	a3,a3,a6
   13f42:	01069b63          	bne	a3,a6,13f58 <emovi+0x6c>
   13f46:	01250813          	addi	a6,a0,18
   13f4a:	86aa                	mv	a3,a0
   13f4c:	0006d603          	lhu	a2,0(a3)
   13f50:	0689                	addi	a3,a3,2
   13f52:	ea11                	bnez	a2,13f66 <emovi+0x7a>
   13f54:	ff069ce3          	bne	a3,a6,13f4c <emovi+0x60>
   13f58:	05e9                	addi	a1,a1,26
   13f5a:	0709                	addi	a4,a4,2
   13f5c:	fe071f23          	sh	zero,-2(a4)
   13f60:	fee59de3          	bne	a1,a4,13f5a <emovi+0x6e>
   13f64:	8082                	ret
   13f66:	00658713          	addi	a4,a1,6
   13f6a:	00059223          	sh	zero,4(a1)
   13f6e:	1571                	addi	a0,a0,-4
   13f70:	0007d683          	lhu	a3,0(a5)
   13f74:	17f9                	addi	a5,a5,-2
   13f76:	0709                	addi	a4,a4,2
   13f78:	fed71f23          	sh	a3,-2(a4)
   13f7c:	fea79ae3          	bne	a5,a0,13f70 <emovi+0x84>
   13f80:	8082                	ret

0000000000013f82 <ecmp>:
   13f82:	01255783          	lhu	a5,18(a0)
   13f86:	715d                	addi	sp,sp,-80
   13f88:	e0a2                	sd	s0,64(sp)
   13f8a:	fff7c793          	not	a5,a5
   13f8e:	e486                	sd	ra,72(sp)
   13f90:	03179713          	slli	a4,a5,0x31
   13f94:	842e                	mv	s0,a1
   13f96:	eb11                	bnez	a4,13faa <ecmp+0x28>
   13f98:	01250693          	addi	a3,a0,18
   13f9c:	87aa                	mv	a5,a0
   13f9e:	0007d703          	lhu	a4,0(a5)
   13fa2:	0789                	addi	a5,a5,2
   13fa4:	eb25                	bnez	a4,14014 <ecmp+0x92>
   13fa6:	fed79ce3          	bne	a5,a3,13f9e <ecmp+0x1c>
   13faa:	01245783          	lhu	a5,18(s0)
   13fae:	fff7c793          	not	a5,a5
   13fb2:	03179713          	slli	a4,a5,0x31
   13fb6:	c331                	beqz	a4,13ffa <ecmp+0x78>
   13fb8:	858a                	mv	a1,sp
   13fba:	f33ff0ef          	jal	ra,13eec <emovi>
   13fbe:	100c                	addi	a1,sp,32
   13fc0:	8522                	mv	a0,s0
   13fc2:	f2bff0ef          	jal	ra,13eec <emovi>
   13fc6:	00015583          	lhu	a1,0(sp)
   13fca:	02015783          	lhu	a5,32(sp)
   13fce:	04b78863          	beq	a5,a1,1401e <ecmp+0x9c>
   13fd2:	00210793          	addi	a5,sp,2
   13fd6:	02210713          	addi	a4,sp,34
   13fda:	0830                	addi	a2,sp,24
   13fdc:	0007d683          	lhu	a3,0(a5)
   13fe0:	0789                	addi	a5,a5,2
   13fe2:	eea5                	bnez	a3,1405a <ecmp+0xd8>
   13fe4:	00075683          	lhu	a3,0(a4)
   13fe8:	0709                	addi	a4,a4,2
   13fea:	eaa5                	bnez	a3,1405a <ecmp+0xd8>
   13fec:	fef618e3          	bne	a2,a5,13fdc <ecmp+0x5a>
   13ff0:	4501                	li	a0,0
   13ff2:	60a6                	ld	ra,72(sp)
   13ff4:	6406                	ld	s0,64(sp)
   13ff6:	6161                	addi	sp,sp,80
   13ff8:	8082                	ret
   13ffa:	87a2                	mv	a5,s0
   13ffc:	0007d703          	lhu	a4,0(a5)
   14000:	01240693          	addi	a3,s0,18
   14004:	0789                	addi	a5,a5,2
   14006:	e719                	bnez	a4,14014 <ecmp+0x92>
   14008:	fad788e3          	beq	a5,a3,13fb8 <ecmp+0x36>
   1400c:	0007d703          	lhu	a4,0(a5)
   14010:	0789                	addi	a5,a5,2
   14012:	db7d                	beqz	a4,14008 <ecmp+0x86>
   14014:	60a6                	ld	ra,72(sp)
   14016:	6406                	ld	s0,64(sp)
   14018:	5579                	li	a0,-2
   1401a:	6161                	addi	sp,sp,80
   1401c:	8082                	ret
   1401e:	4505                	li	a0,1
   14020:	e1a9                	bnez	a1,14062 <ecmp+0xe0>
   14022:	00215603          	lhu	a2,2(sp)
   14026:	02215683          	lhu	a3,34(sp)
   1402a:	00210713          	addi	a4,sp,2
   1402e:	02210793          	addi	a5,sp,34
   14032:	182c                	addi	a1,sp,56
   14034:	0789                	addi	a5,a5,2
   14036:	0709                	addi	a4,a4,2
   14038:	00d61c63          	bne	a2,a3,14050 <ecmp+0xce>
   1403c:	fab78ae3          	beq	a5,a1,13ff0 <ecmp+0x6e>
   14040:	00075603          	lhu	a2,0(a4)
   14044:	0007d683          	lhu	a3,0(a5)
   14048:	0709                	addi	a4,a4,2
   1404a:	0789                	addi	a5,a5,2
   1404c:	fed608e3          	beq	a2,a3,1403c <ecmp+0xba>
   14050:	fac6e1e3          	bltu	a3,a2,13ff2 <ecmp+0x70>
   14054:	40a0053b          	negw	a0,a0
   14058:	bf69                	j	13ff2 <ecmp+0x70>
   1405a:	4505                	li	a0,1
   1405c:	d9d9                	beqz	a1,13ff2 <ecmp+0x70>
   1405e:	557d                	li	a0,-1
   14060:	bf49                	j	13ff2 <ecmp+0x70>
   14062:	557d                	li	a0,-1
   14064:	bf7d                	j	14022 <ecmp+0xa0>

0000000000014066 <emdnorm>:
   14066:	715d                	addi	sp,sp,-80
   14068:	e0a2                	sd	s0,64(sp)
   1406a:	fc26                	sd	s1,56(sp)
   1406c:	f84a                	sd	s2,48(sp)
   1406e:	f44e                	sd	s3,40(sp)
   14070:	f052                	sd	s4,32(sp)
   14072:	ec56                	sd	s5,24(sp)
   14074:	8936                	mv	s2,a3
   14076:	84be                	mv	s1,a5
   14078:	e486                	sd	ra,72(sp)
   1407a:	e85a                	sd	s6,16(sp)
   1407c:	e45e                	sd	s7,8(sp)
   1407e:	842a                	mv	s0,a0
   14080:	89ae                	mv	s3,a1
   14082:	8a32                	mv	s4,a2
   14084:	8aba                	mv	s5,a4
   14086:	c0bff0ef          	jal	ra,13c90 <enormlz>
   1408a:	09000793          	li	a5,144
   1408e:	40a90933          	sub	s2,s2,a0
   14092:	10a7dc63          	bge	a5,a0,141aa <emdnorm+0x144>
   14096:	67a1                	lui	a5,0x8
   14098:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   1409a:	1f27dd63          	bge	a5,s2,14294 <emdnorm+0x22e>
   1409e:	1c0a8b63          	beqz	s5,14274 <emdnorm+0x20e>
   140a2:	0044aa83          	lw	s5,4(s1)
   140a6:	4094                	lw	a3,0(s1)
   140a8:	01a48713          	addi	a4,s1,26
   140ac:	03448793          	addi	a5,s1,52
   140b0:	23568463          	beq	a3,s5,142d8 <emdnorm+0x272>
   140b4:	0709                	addi	a4,a4,2
   140b6:	fe071f23          	sh	zero,-2(a4)
   140ba:	fef71de3          	bne	a4,a5,140b4 <emdnorm+0x4e>
   140be:	03800793          	li	a5,56
   140c2:	28fa8363          	beq	s5,a5,14348 <emdnorm+0x2e2>
   140c6:	1157d163          	bge	a5,s5,141c8 <emdnorm+0x162>
   140ca:	04000793          	li	a5,64
   140ce:	22fa8b63          	beq	s5,a5,14304 <emdnorm+0x29e>
   140d2:	07100793          	li	a5,113
   140d6:	28fa9363          	bne	s5,a5,1435c <emdnorm+0x2f6>
   140da:	6721                	lui	a4,0x8
   140dc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   140de:	6591                	lui	a1,0x4
   140e0:	4b51                	li	s6,20
   140e2:	4ba9                	li	s7,10
   140e4:	67a1                	lui	a5,0x8
   140e6:	4629                	li	a2,10
   140e8:	00860693          	addi	a3,a2,8
   140ec:	0686                	slli	a3,a3,0x1
   140ee:	00e49a23          	sh	a4,20(s1)
   140f2:	0174a423          	sw	s7,8(s1)
   140f6:	00b49b23          	sh	a1,22(s1)
   140fa:	00f49c23          	sh	a5,24(s1)
   140fe:	c4d0                	sw	a2,12(s1)
   14100:	00d48733          	add	a4,s1,a3
   14104:	00f71523          	sh	a5,10(a4)
   14108:	0154a023          	sw	s5,0(s1)
   1410c:	9b22                	add	s6,s6,s0
   1410e:	1d205c63          	blez	s2,142e6 <emdnorm+0x280>
   14112:	000b5703          	lhu	a4,0(s6) # ffffffff80000000 <__BSS_END__+0xffffffff7ffe0708>
   14116:	0144d683          	lhu	a3,20(s1)
   1411a:	08f00793          	li	a5,143
   1411e:	00d77633          	and	a2,a4,a3
   14122:	0557c163          	blt	a5,s5,14164 <emdnorm+0xfe>
   14126:	001b879b          	addiw	a5,s7,1
   1412a:	45b1                	li	a1,12
   1412c:	02f5cc63          	blt	a1,a5,14164 <emdnorm+0xfe>
   14130:	472d                	li	a4,11
   14132:	4177073b          	subw	a4,a4,s7
   14136:	1702                	slli	a4,a4,0x20
   14138:	9301                	srli	a4,a4,0x20
   1413a:	975e                	add	a4,a4,s7
   1413c:	0786                	slli	a5,a5,0x1
   1413e:	0706                	slli	a4,a4,0x1
   14140:	00440693          	addi	a3,s0,4
   14144:	97a2                	add	a5,a5,s0
   14146:	9736                	add	a4,a4,a3
   14148:	0007d683          	lhu	a3,0(a5) # 8000 <exit-0x80e8>
   1414c:	c299                	beqz	a3,14152 <emdnorm+0xec>
   1414e:	00166613          	ori	a2,a2,1
   14152:	00079023          	sh	zero,0(a5)
   14156:	0789                	addi	a5,a5,2
   14158:	fee798e3          	bne	a5,a4,14148 <emdnorm+0xe2>
   1415c:	000b5703          	lhu	a4,0(s6)
   14160:	0144d683          	lhu	a3,20(s1)
   14164:	fff6c693          	not	a3,a3
   14168:	8f75                	and	a4,a4,a3
   1416a:	00eb1023          	sh	a4,0(s6)
   1416e:	0164d783          	lhu	a5,22(s1)
   14172:	00c7f733          	and	a4,a5,a2
   14176:	eb51                	bnez	a4,1420a <emdnorm+0x1a4>
   14178:	0d205d63          	blez	s2,14252 <emdnorm+0x1ec>
   1417c:	00445783          	lhu	a5,4(s0)
   14180:	1a079463          	bnez	a5,14328 <emdnorm+0x2c2>
   14184:	67a1                	lui	a5,0x8
   14186:	00041c23          	sh	zero,24(s0)
   1418a:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   1418c:	0f27c663          	blt	a5,s2,14278 <emdnorm+0x212>
   14190:	01241123          	sh	s2,2(s0)
   14194:	60a6                	ld	ra,72(sp)
   14196:	6406                	ld	s0,64(sp)
   14198:	74e2                	ld	s1,56(sp)
   1419a:	7942                	ld	s2,48(sp)
   1419c:	79a2                	ld	s3,40(sp)
   1419e:	7a02                	ld	s4,32(sp)
   141a0:	6ae2                	ld	s5,24(sp)
   141a2:	6b42                	ld	s6,16(sp)
   141a4:	6ba2                	ld	s7,8(sp)
   141a6:	6161                	addi	sp,sp,80
   141a8:	8082                	ret
   141aa:	10095c63          	bgez	s2,142c2 <emdnorm+0x25c>
   141ae:	f7000793          	li	a5,-144
   141b2:	0ef95a63          	bge	s2,a5,142a6 <emdnorm+0x240>
   141b6:	00240793          	addi	a5,s0,2
   141ba:	0469                	addi	s0,s0,26
   141bc:	0789                	addi	a5,a5,2
   141be:	fe079f23          	sh	zero,-2(a5)
   141c2:	fe879de3          	bne	a5,s0,141bc <emdnorm+0x156>
   141c6:	b7f9                	j	14194 <emdnorm+0x12e>
   141c8:	47e1                	li	a5,24
   141ca:	14fa8563          	beq	s5,a5,14314 <emdnorm+0x2ae>
   141ce:	03500793          	li	a5,53
   141d2:	18fa9563          	bne	s5,a5,1435c <emdnorm+0x2f6>
   141d6:	6785                	lui	a5,0x1
   141d8:	7ff00713          	li	a4,2047
   141dc:	40000593          	li	a1,1024
   141e0:	4b31                	li	s6,12
   141e2:	4b99                	li	s7,6
   141e4:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8e8>
   141e8:	4619                	li	a2,6
   141ea:	bdfd                	j	140e8 <emdnorm+0x82>
   141ec:	0144d703          	lhu	a4,20(s1)
   141f0:	000b5603          	lhu	a2,0(s6)
   141f4:	fff74793          	not	a5,a4
   141f8:	8ff1                	and	a5,a5,a2
   141fa:	00fb1023          	sh	a5,0(s6)
   141fe:	0164d783          	lhu	a5,22(s1)
   14202:	8e79                	and	a2,a2,a4
   14204:	00c7f733          	and	a4,a5,a2
   14208:	cf21                	beqz	a4,14260 <emdnorm+0x1fa>
   1420a:	00c79d63          	bne	a5,a2,14224 <emdnorm+0x1be>
   1420e:	12099a63          	bnez	s3,14342 <emdnorm+0x2dc>
   14212:	44dc                	lw	a5,12(s1)
   14214:	0184d703          	lhu	a4,24(s1)
   14218:	0786                	slli	a5,a5,0x1
   1421a:	97a2                	add	a5,a5,s0
   1421c:	0007d783          	lhu	a5,0(a5)
   14220:	8ff9                	and	a5,a5,a4
   14222:	dbb9                	beqz	a5,14178 <emdnorm+0x112>
   14224:	03248613          	addi	a2,s1,50
   14228:	01840693          	addi	a3,s0,24
   1422c:	04f1                	addi	s1,s1,28
   1422e:	4781                	li	a5,0
   14230:	00065703          	lhu	a4,0(a2)
   14234:	0006d583          	lhu	a1,0(a3)
   14238:	16f9                	addi	a3,a3,-2
   1423a:	1679                	addi	a2,a2,-2
   1423c:	972e                	add	a4,a4,a1
   1423e:	973e                	add	a4,a4,a5
   14240:	01075793          	srli	a5,a4,0x10
   14244:	00e69123          	sh	a4,2(a3)
   14248:	8b85                	andi	a5,a5,1
   1424a:	fec493e3          	bne	s1,a2,14230 <emdnorm+0x1ca>
   1424e:	f32047e3          	bgtz	s2,1417c <emdnorm+0x116>
   14252:	09000793          	li	a5,144
   14256:	00fa8563          	beq	s5,a5,14260 <emdnorm+0x1fa>
   1425a:	8522                	mv	a0,s0
   1425c:	8f1ff0ef          	jal	ra,13b4c <eshup1>
   14260:	00445783          	lhu	a5,4(s0)
   14264:	e3f1                	bnez	a5,14328 <emdnorm+0x2c2>
   14266:	00041c23          	sh	zero,24(s0)
   1426a:	f20953e3          	bgez	s2,14190 <emdnorm+0x12a>
   1426e:	00041123          	sh	zero,2(s0)
   14272:	b70d                	j	14194 <emdnorm+0x12e>
   14274:	00041c23          	sh	zero,24(s0)
   14278:	77e1                	lui	a5,0xffff8
   1427a:	fff7c793          	not	a5,a5
   1427e:	00f41123          	sh	a5,2(s0)
   14282:	00440793          	addi	a5,s0,4
   14286:	0461                	addi	s0,s0,24
   14288:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8708>
   1428c:	0789                	addi	a5,a5,2
   1428e:	fe879de3          	bne	a5,s0,14288 <emdnorm+0x222>
   14292:	b709                	j	14194 <emdnorm+0x12e>
   14294:	00240793          	addi	a5,s0,2
   14298:	0469                	addi	s0,s0,26
   1429a:	0789                	addi	a5,a5,2
   1429c:	fe079f23          	sh	zero,-2(a5)
   142a0:	fef41de3          	bne	s0,a5,1429a <emdnorm+0x234>
   142a4:	bdc5                	j	14194 <emdnorm+0x12e>
   142a6:	0009059b          	sext.w	a1,s2
   142aa:	8522                	mv	a0,s0
   142ac:	aefff0ef          	jal	ra,13d9a <eshift.part.0>
   142b0:	c111                	beqz	a0,142b4 <emdnorm+0x24e>
   142b2:	4985                	li	s3,1
   142b4:	de0a97e3          	bnez	s5,140a2 <emdnorm+0x3c>
   142b8:	00041c23          	sh	zero,24(s0)
   142bc:	00041123          	sh	zero,2(s0)
   142c0:	bdd1                	j	14194 <emdnorm+0x12e>
   142c2:	ec0a81e3          	beqz	s5,14184 <emdnorm+0x11e>
   142c6:	0044aa83          	lw	s5,4(s1)
   142ca:	4094                	lw	a3,0(s1)
   142cc:	01a48713          	addi	a4,s1,26
   142d0:	03448793          	addi	a5,s1,52
   142d4:	df5690e3          	bne	a3,s5,140b4 <emdnorm+0x4e>
   142d8:	0084ab83          	lw	s7,8(s1)
   142dc:	001b9b13          	slli	s6,s7,0x1
   142e0:	9b22                	add	s6,s6,s0
   142e2:	e32048e3          	bgtz	s2,14112 <emdnorm+0xac>
   142e6:	09000793          	li	a5,144
   142ea:	f0fa81e3          	beq	s5,a5,141ec <emdnorm+0x186>
   142ee:	01845783          	lhu	a5,24(s0)
   142f2:	8522                	mv	a0,s0
   142f4:	8b85                	andi	a5,a5,1
   142f6:	00f9e7b3          	or	a5,s3,a5
   142fa:	0007899b          	sext.w	s3,a5
   142fe:	803ff0ef          	jal	ra,13b00 <eshdn1>
   14302:	bd01                	j	14112 <emdnorm+0xac>
   14304:	6741                	lui	a4,0x10
   14306:	177d                	addi	a4,a4,-1 # ffff <exit-0xe9>
   14308:	65a1                	lui	a1,0x8
   1430a:	4b39                	li	s6,14
   1430c:	4b9d                	li	s7,7
   1430e:	4785                	li	a5,1
   14310:	4619                	li	a2,6
   14312:	bbd9                	j	140e8 <emdnorm+0x82>
   14314:	0ff00713          	li	a4,255
   14318:	08000593          	li	a1,128
   1431c:	4b21                	li	s6,8
   1431e:	4b91                	li	s7,4
   14320:	10000793          	li	a5,256
   14324:	4611                	li	a2,4
   14326:	b3c9                	j	140e8 <emdnorm+0x82>
   14328:	8522                	mv	a0,s0
   1432a:	fd6ff0ef          	jal	ra,13b00 <eshdn1>
   1432e:	67a1                	lui	a5,0x8
   14330:	0905                	addi	s2,s2,1
   14332:	00041c23          	sh	zero,24(s0)
   14336:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   14338:	f527c0e3          	blt	a5,s2,14278 <emdnorm+0x212>
   1433c:	f20949e3          	bltz	s2,1426e <emdnorm+0x208>
   14340:	bd81                	j	14190 <emdnorm+0x12a>
   14342:	ee0a01e3          	beqz	s4,14224 <emdnorm+0x1be>
   14346:	bd0d                	j	14178 <emdnorm+0x112>
   14348:	0ff00713          	li	a4,255
   1434c:	08000593          	li	a1,128
   14350:	4b31                	li	s6,12
   14352:	4b99                	li	s7,6
   14354:	10000793          	li	a5,256
   14358:	4619                	li	a2,6
   1435a:	b379                	j	140e8 <emdnorm+0x82>
   1435c:	6741                	lui	a4,0x10
   1435e:	177d                	addi	a4,a4,-1 # ffff <exit-0xe9>
   14360:	65a1                	lui	a1,0x8
   14362:	4b61                	li	s6,24
   14364:	4bb1                	li	s7,12
   14366:	4785                	li	a5,1
   14368:	462d                	li	a2,11
   1436a:	bbbd                	j	140e8 <emdnorm+0x82>

000000000001436c <eiremain>:
   1436c:	711d                	addi	sp,sp,-96
   1436e:	e0ca                	sd	s2,64(sp)
   14370:	fc4e                	sd	s3,56(sp)
   14372:	892e                	mv	s2,a1
   14374:	00255983          	lhu	s3,2(a0)
   14378:	ec86                	sd	ra,88(sp)
   1437a:	e8a2                	sd	s0,80(sp)
   1437c:	e4a6                	sd	s1,72(sp)
   1437e:	f852                	sd	s4,48(sp)
   14380:	84b2                	mv	s1,a2
   14382:	ec5e                	sd	s7,24(sp)
   14384:	f456                	sd	s5,40(sp)
   14386:	f05a                	sd	s6,32(sp)
   14388:	e862                	sd	s8,16(sp)
   1438a:	e466                	sd	s9,8(sp)
   1438c:	e06a                	sd	s10,0(sp)
   1438e:	8baa                	mv	s7,a0
   14390:	901ff0ef          	jal	ra,13c90 <enormlz>
   14394:	00295403          	lhu	s0,2(s2)
   14398:	87aa                	mv	a5,a0
   1439a:	854a                	mv	a0,s2
   1439c:	40f989b3          	sub	s3,s3,a5
   143a0:	03448a13          	addi	s4,s1,52
   143a4:	8edff0ef          	jal	ra,13c90 <enormlz>
   143a8:	8c09                	sub	s0,s0,a0
   143aa:	04e48713          	addi	a4,s1,78
   143ae:	87d2                	mv	a5,s4
   143b0:	0789                	addi	a5,a5,2
   143b2:	fe079f23          	sh	zero,-2(a5)
   143b6:	fee79de3          	bne	a5,a4,143b0 <eiremain+0x44>
   143ba:	07344a63          	blt	s0,s3,1442e <eiremain+0xc2>
   143be:	004b8b13          	addi	s6,s7,4
   143c2:	00490a93          	addi	s5,s2,4
   143c6:	01ab8c13          	addi	s8,s7,26
   143ca:	00290d13          	addi	s10,s2,2
   143ce:	8756                	mv	a4,s5
   143d0:	87da                	mv	a5,s6
   143d2:	0007d603          	lhu	a2,0(a5)
   143d6:	00075683          	lhu	a3,0(a4)
   143da:	0789                	addi	a5,a5,2
   143dc:	0709                	addi	a4,a4,2
   143de:	06d61d63          	bne	a2,a3,14458 <eiremain+0xec>
   143e2:	ff8798e3          	bne	a5,s8,143d2 <eiremain+0x66>
   143e6:	018b8613          	addi	a2,s7,24
   143ea:	01890713          	addi	a4,s2,24
   143ee:	4681                	li	a3,0
   143f0:	00075783          	lhu	a5,0(a4)
   143f4:	00065583          	lhu	a1,0(a2)
   143f8:	1779                	addi	a4,a4,-2
   143fa:	8f95                	sub	a5,a5,a3
   143fc:	8f8d                	sub	a5,a5,a1
   143fe:	0107d693          	srli	a3,a5,0x10
   14402:	00f71123          	sh	a5,2(a4)
   14406:	8a85                	andi	a3,a3,1
   14408:	1679                	addi	a2,a2,-2
   1440a:	feed13e3          	bne	s10,a4,143f0 <eiremain+0x84>
   1440e:	4c85                	li	s9,1
   14410:	8552                	mv	a0,s4
   14412:	f3aff0ef          	jal	ra,13b4c <eshup1>
   14416:	04c4d783          	lhu	a5,76(s1)
   1441a:	147d                	addi	s0,s0,-1
   1441c:	854a                	mv	a0,s2
   1441e:	00fce7b3          	or	a5,s9,a5
   14422:	04f49623          	sh	a5,76(s1)
   14426:	f26ff0ef          	jal	ra,13b4c <eshup1>
   1442a:	fb3452e3          	bge	s0,s3,143ce <eiremain+0x62>
   1442e:	86a2                	mv	a3,s0
   14430:	6446                	ld	s0,80(sp)
   14432:	60e6                	ld	ra,88(sp)
   14434:	79e2                	ld	s3,56(sp)
   14436:	7a42                	ld	s4,48(sp)
   14438:	7aa2                	ld	s5,40(sp)
   1443a:	7b02                	ld	s6,32(sp)
   1443c:	6be2                	ld	s7,24(sp)
   1443e:	6c42                	ld	s8,16(sp)
   14440:	6ca2                	ld	s9,8(sp)
   14442:	6d02                	ld	s10,0(sp)
   14444:	87a6                	mv	a5,s1
   14446:	854a                	mv	a0,s2
   14448:	64a6                	ld	s1,72(sp)
   1444a:	6906                	ld	s2,64(sp)
   1444c:	4701                	li	a4,0
   1444e:	4601                	li	a2,0
   14450:	4581                	li	a1,0
   14452:	6125                	addi	sp,sp,96
   14454:	c13ff06f          	j	14066 <emdnorm>
   14458:	4c81                	li	s9,0
   1445a:	fac6ebe3          	bltu	a3,a2,14410 <eiremain+0xa4>
   1445e:	b761                	j	143e6 <eiremain+0x7a>

0000000000014460 <e113toe.isra.0>:
   14460:	7179                	addi	sp,sp,-48
   14462:	f022                	sd	s0,32(sp)
   14464:	f406                	sd	ra,40(sp)
   14466:	842e                	mv	s0,a1
   14468:	878a                	mv	a5,sp
   1446a:	01a10713          	addi	a4,sp,26
   1446e:	0789                	addi	a5,a5,2
   14470:	fe079f23          	sh	zero,-2(a5)
   14474:	fee79de3          	bne	a5,a4,1446e <e113toe.isra.0+0xe>
   14478:	00e55783          	lhu	a5,14(a0)
   1447c:	6721                	lui	a4,0x8
   1447e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14480:	03079693          	slli	a3,a5,0x30
   14484:	96fd                	srai	a3,a3,0x3f
   14486:	00d11023          	sh	a3,0(sp)
   1448a:	00e7f6b3          	and	a3,a5,a4
   1448e:	8636                	mv	a2,a3
   14490:	04e68363          	beq	a3,a4,144d6 <e113toe.isra.0+0x76>
   14494:	00e50793          	addi	a5,a0,14
   14498:	00d11123          	sh	a3,2(sp)
   1449c:	00610713          	addi	a4,sp,6
   144a0:	ffe7d683          	lhu	a3,-2(a5)
   144a4:	17f9                	addi	a5,a5,-2
   144a6:	0709                	addi	a4,a4,2
   144a8:	fed71f23          	sh	a3,-2(a4)
   144ac:	fef51ae3          	bne	a0,a5,144a0 <e113toe.isra.0+0x40>
   144b0:	ea19                	bnez	a2,144c6 <e113toe.isra.0+0x66>
   144b2:	00011223          	sh	zero,4(sp)
   144b6:	85a2                	mv	a1,s0
   144b8:	850a                	mv	a0,sp
   144ba:	f4aff0ef          	jal	ra,13c04 <emovo.constprop.0>
   144be:	70a2                	ld	ra,40(sp)
   144c0:	7402                	ld	s0,32(sp)
   144c2:	6145                	addi	sp,sp,48
   144c4:	8082                	ret
   144c6:	4785                	li	a5,1
   144c8:	55fd                	li	a1,-1
   144ca:	850a                	mv	a0,sp
   144cc:	00f11223          	sh	a5,4(sp)
   144d0:	8cbff0ef          	jal	ra,13d9a <eshift.part.0>
   144d4:	b7cd                	j	144b6 <e113toe.isra.0+0x56>
   144d6:	87aa                	mv	a5,a0
   144d8:	00e50693          	addi	a3,a0,14
   144dc:	0007d703          	lhu	a4,0(a5)
   144e0:	0789                	addi	a5,a5,2
   144e2:	ef21                	bnez	a4,1453a <e113toe.isra.0+0xda>
   144e4:	fef69ce3          	bne	a3,a5,144dc <e113toe.isra.0+0x7c>
   144e8:	01440713          	addi	a4,s0,20
   144ec:	87a2                	mv	a5,s0
   144ee:	0789                	addi	a5,a5,2
   144f0:	fe079f23          	sh	zero,-2(a5)
   144f4:	fee79de3          	bne	a5,a4,144ee <e113toe.isra.0+0x8e>
   144f8:	01240713          	addi	a4,s0,18
   144fc:	87a2                	mv	a5,s0
   144fe:	0789                	addi	a5,a5,2
   14500:	fe079f23          	sh	zero,-2(a5)
   14504:	fef71de3          	bne	a4,a5,144fe <e113toe.isra.0+0x9e>
   14508:	01245783          	lhu	a5,18(s0)
   1450c:	66a1                	lui	a3,0x8
   1450e:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   14510:	8fd5                	or	a5,a5,a3
   14512:	17c2                	slli	a5,a5,0x30
   14514:	93c1                	srli	a5,a5,0x30
   14516:	00f41923          	sh	a5,18(s0)
   1451a:	00e51683          	lh	a3,14(a0)
   1451e:	fa06d0e3          	bgez	a3,144be <e113toe.isra.0+0x5e>
   14522:	86a2                	mv	a3,s0
   14524:	0006d603          	lhu	a2,0(a3)
   14528:	0689                	addi	a3,a3,2
   1452a:	fa51                	bnez	a2,144be <e113toe.isra.0+0x5e>
   1452c:	fed71ce3          	bne	a4,a3,14524 <e113toe.isra.0+0xc4>
   14530:	7761                	lui	a4,0xffff8
   14532:	8fb9                	xor	a5,a5,a4
   14534:	00f41923          	sh	a5,18(s0)
   14538:	b759                	j	144be <e113toe.isra.0+0x5e>
   1453a:	01040713          	addi	a4,s0,16
   1453e:	87a2                	mv	a5,s0
   14540:	0789                	addi	a5,a5,2
   14542:	fe079f23          	sh	zero,-2(a5)
   14546:	fee79de3          	bne	a5,a4,14540 <e113toe.isra.0+0xe0>
   1454a:	77f1                	lui	a5,0xffffc
   1454c:	00f41823          	sh	a5,16(s0)
   14550:	77e1                	lui	a5,0xffff8
   14552:	fff7c793          	not	a5,a5
   14556:	00f41923          	sh	a5,18(s0)
   1455a:	b795                	j	144be <e113toe.isra.0+0x5e>

000000000001455c <ediv>:
   1455c:	01255783          	lhu	a5,18(a0)
   14560:	7115                	addi	sp,sp,-224
   14562:	e9a2                	sd	s0,208(sp)
   14564:	fff7c793          	not	a5,a5
   14568:	e5a6                	sd	s1,200(sp)
   1456a:	e1ca                	sd	s2,192(sp)
   1456c:	fd4e                	sd	s3,184(sp)
   1456e:	ed86                	sd	ra,216(sp)
   14570:	f952                	sd	s4,176(sp)
   14572:	f556                	sd	s5,168(sp)
   14574:	f15a                	sd	s6,160(sp)
   14576:	ed5e                	sd	s7,152(sp)
   14578:	e962                	sd	s8,144(sp)
   1457a:	e566                	sd	s9,136(sp)
   1457c:	e16a                	sd	s10,128(sp)
   1457e:	fcee                	sd	s11,120(sp)
   14580:	03179713          	slli	a4,a5,0x31
   14584:	84aa                	mv	s1,a0
   14586:	89ae                	mv	s3,a1
   14588:	8432                	mv	s0,a2
   1458a:	8936                	mv	s2,a3
   1458c:	eb19                	bnez	a4,145a2 <ediv+0x46>
   1458e:	01250693          	addi	a3,a0,18
   14592:	87aa                	mv	a5,a0
   14594:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8708>
   14598:	0789                	addi	a5,a5,2
   1459a:	22071a63          	bnez	a4,147ce <ediv+0x272>
   1459e:	fed79be3          	bne	a5,a3,14594 <ediv+0x38>
   145a2:	0129d783          	lhu	a5,18(s3)
   145a6:	fff7c793          	not	a5,a5
   145aa:	03179713          	slli	a4,a5,0x31
   145ae:	eb19                	bnez	a4,145c4 <ediv+0x68>
   145b0:	01298693          	addi	a3,s3,18
   145b4:	87ce                	mv	a5,s3
   145b6:	0007d703          	lhu	a4,0(a5)
   145ba:	0789                	addi	a5,a5,2
   145bc:	22071463          	bnez	a4,147e4 <ediv+0x288>
   145c0:	fed79be3          	bne	a5,a3,145b6 <ediv+0x5a>
   145c4:	6a75                	lui	s4,0x1d
   145c6:	ca0a0593          	addi	a1,s4,-864 # 1cca0 <ezero>
   145ca:	8526                	mv	a0,s1
   145cc:	9b7ff0ef          	jal	ra,13f82 <ecmp>
   145d0:	22050563          	beqz	a0,147fa <ediv+0x29e>
   145d4:	0124d603          	lhu	a2,18(s1)
   145d8:	0129d703          	lhu	a4,18(s3)
   145dc:	67a1                	lui	a5,0x8
   145de:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   145e0:	00f67533          	and	a0,a2,a5
   145e4:	00f775b3          	and	a1,a4,a5
   145e8:	06f51a63          	bne	a0,a5,1465c <ediv+0x100>
   145ec:	01248813          	addi	a6,s1,18
   145f0:	87a6                	mv	a5,s1
   145f2:	0007d683          	lhu	a3,0(a5)
   145f6:	0789                	addi	a5,a5,2
   145f8:	e2a5                	bnez	a3,14658 <ediv+0xfc>
   145fa:	ff079ce3          	bne	a5,a6,145f2 <ediv+0x96>
   145fe:	67a1                	lui	a5,0x8
   14600:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14602:	20f59663          	bne	a1,a5,1480e <ediv+0x2b2>
   14606:	01298693          	addi	a3,s3,18
   1460a:	87ce                	mv	a5,s3
   1460c:	0007d583          	lhu	a1,0(a5)
   14610:	0789                	addi	a5,a5,2
   14612:	36059163          	bnez	a1,14974 <ediv+0x418>
   14616:	fed79be3          	bne	a5,a3,1460c <ediv+0xb0>
   1461a:	01040713          	addi	a4,s0,16
   1461e:	87a2                	mv	a5,s0
   14620:	0789                	addi	a5,a5,2
   14622:	fe079f23          	sh	zero,-2(a5)
   14626:	fee79de3          	bne	a5,a4,14620 <ediv+0xc4>
   1462a:	77f1                	lui	a5,0xffffc
   1462c:	00f41823          	sh	a5,16(s0)
   14630:	77e1                	lui	a5,0xffff8
   14632:	fff7c793          	not	a5,a5
   14636:	00f41923          	sh	a5,18(s0)
   1463a:	60ee                	ld	ra,216(sp)
   1463c:	644e                	ld	s0,208(sp)
   1463e:	64ae                	ld	s1,200(sp)
   14640:	690e                	ld	s2,192(sp)
   14642:	79ea                	ld	s3,184(sp)
   14644:	7a4a                	ld	s4,176(sp)
   14646:	7aaa                	ld	s5,168(sp)
   14648:	7b0a                	ld	s6,160(sp)
   1464a:	6bea                	ld	s7,152(sp)
   1464c:	6c4a                	ld	s8,144(sp)
   1464e:	6caa                	ld	s9,136(sp)
   14650:	6d0a                	ld	s10,128(sp)
   14652:	7de6                	ld	s11,120(sp)
   14654:	612d                	addi	sp,sp,224
   14656:	8082                	ret
   14658:	67a1                	lui	a5,0x8
   1465a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1465c:	1cf58163          	beq	a1,a5,1481e <ediv+0x2c2>
   14660:	8526                	mv	a0,s1
   14662:	080c                	addi	a1,sp,16
   14664:	889ff0ef          	jal	ra,13eec <emovi>
   14668:	180c                	addi	a1,sp,48
   1466a:	854e                	mv	a0,s3
   1466c:	881ff0ef          	jal	ra,13eec <emovi>
   14670:	03215a83          	lhu	s5,50(sp)
   14674:	01215483          	lhu	s1,18(sp)
   14678:	200a8963          	beqz	s5,1488a <ediv+0x32e>
   1467c:	e456                	sd	s5,8(sp)
   1467e:	8726                	mv	a4,s1
   14680:	e026                	sd	s1,0(sp)
   14682:	085c                	addi	a5,sp,20
   14684:	1034                	addi	a3,sp,40
   14686:	ef09                	bnez	a4,146a0 <ediv+0x144>
   14688:	2af68e63          	beq	a3,a5,14944 <ediv+0x3e8>
   1468c:	0007d703          	lhu	a4,0(a5)
   14690:	0789                	addi	a5,a5,2
   14692:	db7d                	beqz	a4,14688 <ediv+0x12c>
   14694:	0808                	addi	a0,sp,16
   14696:	dfaff0ef          	jal	ra,13c90 <enormlz>
   1469a:	40a487b3          	sub	a5,s1,a0
   1469e:	e03e                	sd	a5,0(sp)
   146a0:	5742                	lw	a4,48(sp)
   146a2:	03890a93          	addi	s5,s2,56
   146a6:	87d6                	mv	a5,s5
   146a8:	02e92a23          	sw	a4,52(s2)
   146ac:	04e90493          	addi	s1,s2,78
   146b0:	0789                	addi	a5,a5,2
   146b2:	fe079f23          	sh	zero,-2(a5)
   146b6:	fef49de3          	bne	s1,a5,146b0 <ediv+0x154>
   146ba:	1808                	addi	a0,sp,48
   146bc:	c44ff0ef          	jal	ra,13b00 <eshdn1>
   146c0:	01615b03          	lhu	s6,22(sp)
   146c4:	69c1                	lui	s3,0x10
   146c6:	04810c13          	addi	s8,sp,72
   146ca:	010b1a13          	slli	s4,s6,0x10
   146ce:	416a0a33          	sub	s4,s4,s6
   146d2:	03210c93          	addi	s9,sp,50
   146d6:	19fd                	addi	s3,s3,-1 # ffff <exit-0xe9>
   146d8:	06a10d13          	addi	s10,sp,106
   146dc:	05210d93          	addi	s11,sp,82
   146e0:	03415783          	lhu	a5,52(sp)
   146e4:	03615703          	lhu	a4,54(sp)
   146e8:	8bce                	mv	s7,s3
   146ea:	07c2                	slli	a5,a5,0x10
   146ec:	97ba                	add	a5,a5,a4
   146ee:	00fa6863          	bltu	s4,a5,146fe <ediv+0x1a2>
   146f2:	0367d7b3          	divu	a5,a5,s6
   146f6:	03079b93          	slli	s7,a5,0x30
   146fa:	030bdb93          	srli	s7,s7,0x30
   146fe:	0890                	addi	a2,sp,80
   14700:	080c                	addi	a1,sp,16
   14702:	855e                	mv	a0,s7
   14704:	c98ff0ef          	jal	ra,13b9c <m16m>
   14708:	1858                	addi	a4,sp,52
   1470a:	08dc                	addi	a5,sp,84
   1470c:	0007d603          	lhu	a2,0(a5)
   14710:	00075683          	lhu	a3,0(a4) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8708>
   14714:	0789                	addi	a5,a5,2
   14716:	0709                	addi	a4,a4,2
   14718:	18d61b63          	bne	a2,a3,148ae <ediv+0x352>
   1471c:	ffa798e3          	bne	a5,s10,1470c <ediv+0x1b0>
   14720:	4781                	li	a5,0
   14722:	10b4                	addi	a3,sp,104
   14724:	8662                	mv	a2,s8
   14726:	00065703          	lhu	a4,0(a2)
   1472a:	0006d583          	lhu	a1,0(a3)
   1472e:	1679                	addi	a2,a2,-2
   14730:	8f1d                	sub	a4,a4,a5
   14732:	8f0d                	sub	a4,a4,a1
   14734:	01075793          	srli	a5,a4,0x10
   14738:	00e61123          	sh	a4,2(a2)
   1473c:	8b85                	andi	a5,a5,1
   1473e:	16f9                	addi	a3,a3,-2
   14740:	ff9613e3          	bne	a2,s9,14726 <ediv+0x1ca>
   14744:	017a9023          	sh	s7,0(s5)
   14748:	185c                	addi	a5,sp,52
   1474a:	0027d703          	lhu	a4,2(a5)
   1474e:	0789                	addi	a5,a5,2
   14750:	fee79f23          	sh	a4,-2(a5)
   14754:	ff879be3          	bne	a5,s8,1474a <ediv+0x1ee>
   14758:	04011423          	sh	zero,72(sp)
   1475c:	0a89                	addi	s5,s5,2
   1475e:	f95491e3          	bne	s1,s5,146e0 <ediv+0x184>
   14762:	4701                	li	a4,0
   14764:	185c                	addi	a5,sp,52
   14766:	04a10613          	addi	a2,sp,74
   1476a:	0007d683          	lhu	a3,0(a5)
   1476e:	0789                	addi	a5,a5,2
   14770:	8f55                	or	a4,a4,a3
   14772:	fec79ce3          	bne	a5,a2,1476a <ediv+0x20e>
   14776:	2701                	sext.w	a4,a4
   14778:	00e035b3          	snez	a1,a4
   1477c:	181c                	addi	a5,sp,48
   1477e:	03490713          	addi	a4,s2,52
   14782:	00075683          	lhu	a3,0(a4)
   14786:	0789                	addi	a5,a5,2
   14788:	0709                	addi	a4,a4,2
   1478a:	fed79f23          	sh	a3,-2(a5)
   1478e:	fef61ae3          	bne	a2,a5,14782 <ediv+0x226>
   14792:	67a2                	ld	a5,8(sp)
   14794:	6702                	ld	a4,0(sp)
   14796:	6691                	lui	a3,0x4
   14798:	16fd                	addi	a3,a3,-1 # 3fff <exit-0xc0e9>
   1479a:	40e78ab3          	sub	s5,a5,a4
   1479e:	1808                	addi	a0,sp,48
   147a0:	87ca                	mv	a5,s2
   147a2:	04000713          	li	a4,64
   147a6:	96d6                	add	a3,a3,s5
   147a8:	4601                	li	a2,0
   147aa:	8bdff0ef          	jal	ra,14066 <emdnorm>
   147ae:	03015703          	lhu	a4,48(sp)
   147b2:	01015783          	lhu	a5,16(sp)
   147b6:	85a2                	mv	a1,s0
   147b8:	1808                	addi	a0,sp,48
   147ba:	8f99                	sub	a5,a5,a4
   147bc:	00f037b3          	snez	a5,a5
   147c0:	40f007bb          	negw	a5,a5
   147c4:	02f11823          	sh	a5,48(sp)
   147c8:	c3cff0ef          	jal	ra,13c04 <emovo.constprop.0>
   147cc:	b5bd                	j	1463a <ediv+0xde>
   147ce:	01448713          	addi	a4,s1,20
   147d2:	0004d783          	lhu	a5,0(s1)
   147d6:	0489                	addi	s1,s1,2
   147d8:	0409                	addi	s0,s0,2
   147da:	fef41f23          	sh	a5,-2(s0)
   147de:	fee49ae3          	bne	s1,a4,147d2 <ediv+0x276>
   147e2:	bda1                	j	1463a <ediv+0xde>
   147e4:	01440713          	addi	a4,s0,20
   147e8:	0009d783          	lhu	a5,0(s3)
   147ec:	0409                	addi	s0,s0,2
   147ee:	0989                	addi	s3,s3,2
   147f0:	fef41f23          	sh	a5,-2(s0)
   147f4:	fee41ae3          	bne	s0,a4,147e8 <ediv+0x28c>
   147f8:	b589                	j	1463a <ediv+0xde>
   147fa:	ca0a0593          	addi	a1,s4,-864
   147fe:	854e                	mv	a0,s3
   14800:	f82ff0ef          	jal	ra,13f82 <ecmp>
   14804:	dc0518e3          	bnez	a0,145d4 <ediv+0x78>
   14808:	bd09                	j	1461a <ediv+0xbe>
   1480a:	e4080be3          	beqz	a6,14660 <ediv+0x104>
   1480e:	01440793          	addi	a5,s0,20
   14812:	0409                	addi	s0,s0,2
   14814:	fe041f23          	sh	zero,-2(s0)
   14818:	fef41de3          	bne	s0,a5,14812 <ediv+0x2b6>
   1481c:	bd39                	j	1463a <ediv+0xde>
   1481e:	4801                	li	a6,0
   14820:	01298693          	addi	a3,s3,18
   14824:	87ce                	mv	a5,s3
   14826:	0007d583          	lhu	a1,0(a5)
   1482a:	0789                	addi	a5,a5,2
   1482c:	fdf9                	bnez	a1,1480a <ediv+0x2ae>
   1482e:	fed79ce3          	bne	a5,a3,14826 <ediv+0x2ca>
   14832:	67a1                	lui	a5,0x8
   14834:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14836:	04f50163          	beq	a0,a5,14878 <ediv+0x31c>
   1483a:	823d                	srli	a2,a2,0xf
   1483c:	0009d783          	lhu	a5,0(s3)
   14840:	0989                	addi	s3,s3,2
   14842:	12079563          	bnez	a5,1496c <ediv+0x410>
   14846:	fed99be3          	bne	s3,a3,1483c <ediv+0x2e0>
   1484a:	00f75793          	srli	a5,a4,0xf
   1484e:	8fb1                	xor	a5,a5,a2
   14850:	00f7979b          	slliw	a5,a5,0xf
   14854:	00f41923          	sh	a5,18(s0)
   14858:	01240713          	addi	a4,s0,18
   1485c:	87a2                	mv	a5,s0
   1485e:	0789                	addi	a5,a5,2
   14860:	fe079f23          	sh	zero,-2(a5)
   14864:	fef71de3          	bne	a4,a5,1485e <ediv+0x302>
   14868:	01245783          	lhu	a5,18(s0)
   1486c:	6721                	lui	a4,0x8
   1486e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14870:	8fd9                	or	a5,a5,a4
   14872:	00f41923          	sh	a5,18(s0)
   14876:	b3d1                	j	1463a <ediv+0xde>
   14878:	01248593          	addi	a1,s1,18
   1487c:	0004d783          	lhu	a5,0(s1)
   14880:	0489                	addi	s1,s1,2
   14882:	e7fd                	bnez	a5,14970 <ediv+0x414>
   14884:	feb49ce3          	bne	s1,a1,1487c <ediv+0x320>
   14888:	bf4d                	j	1483a <ediv+0x2de>
   1488a:	185c                	addi	a5,sp,52
   1488c:	04810c13          	addi	s8,sp,72
   14890:	0afc0263          	beq	s8,a5,14934 <ediv+0x3d8>
   14894:	0007d703          	lhu	a4,0(a5)
   14898:	0789                	addi	a5,a5,2
   1489a:	db7d                	beqz	a4,14890 <ediv+0x334>
   1489c:	1808                	addi	a0,sp,48
   1489e:	bf2ff0ef          	jal	ra,13c90 <enormlz>
   148a2:	40a007b3          	neg	a5,a0
   148a6:	01215703          	lhu	a4,18(sp)
   148aa:	e43e                	sd	a5,8(sp)
   148ac:	bbd1                	j	14680 <ediv+0x124>
   148ae:	e6c6f9e3          	bgeu	a3,a2,14720 <ediv+0x1c4>
   148b2:	fffb879b          	addiw	a5,s7,-1
   148b6:	03079893          	slli	a7,a5,0x30
   148ba:	0308d893          	srli	a7,a7,0x30
   148be:	4681                	li	a3,0
   148c0:	1030                	addi	a2,sp,40
   148c2:	10b8                	addi	a4,sp,104
   148c4:	00075783          	lhu	a5,0(a4)
   148c8:	00065583          	lhu	a1,0(a2)
   148cc:	1779                	addi	a4,a4,-2
   148ce:	8f95                	sub	a5,a5,a3
   148d0:	8f8d                	sub	a5,a5,a1
   148d2:	0107d693          	srli	a3,a5,0x10
   148d6:	00f71123          	sh	a5,2(a4)
   148da:	8a85                	andi	a3,a3,1
   148dc:	1679                	addi	a2,a2,-2
   148de:	ffb713e3          	bne	a4,s11,148c4 <ediv+0x368>
   148e2:	1858                	addi	a4,sp,52
   148e4:	08dc                	addi	a5,sp,84
   148e6:	0007d603          	lhu	a2,0(a5)
   148ea:	00075683          	lhu	a3,0(a4)
   148ee:	0789                	addi	a5,a5,2
   148f0:	0709                	addi	a4,a4,2
   148f2:	00d61663          	bne	a2,a3,148fe <ediv+0x3a2>
   148f6:	ffa798e3          	bne	a5,s10,148e6 <ediv+0x38a>
   148fa:	8bc6                	mv	s7,a7
   148fc:	b515                	j	14720 <ediv+0x1c4>
   148fe:	fec6fee3          	bgeu	a3,a2,148fa <ediv+0x39e>
   14902:	ffeb851b          	addiw	a0,s7,-2
   14906:	03051b93          	slli	s7,a0,0x30
   1490a:	030bdb93          	srli	s7,s7,0x30
   1490e:	4681                	li	a3,0
   14910:	1030                	addi	a2,sp,40
   14912:	10b8                	addi	a4,sp,104
   14914:	00075783          	lhu	a5,0(a4)
   14918:	00065583          	lhu	a1,0(a2)
   1491c:	1779                	addi	a4,a4,-2
   1491e:	8f95                	sub	a5,a5,a3
   14920:	8f8d                	sub	a5,a5,a1
   14922:	0107d693          	srli	a3,a5,0x10
   14926:	00f71123          	sh	a5,2(a4)
   1492a:	8a85                	andi	a3,a3,1
   1492c:	1679                	addi	a2,a2,-2
   1492e:	ffb713e3          	bne	a4,s11,14914 <ediv+0x3b8>
   14932:	b3fd                	j	14720 <ediv+0x1c4>
   14934:	01440793          	addi	a5,s0,20
   14938:	0409                	addi	s0,s0,2
   1493a:	fe041f23          	sh	zero,-2(s0)
   1493e:	fef41de3          	bne	s0,a5,14938 <ediv+0x3dc>
   14942:	b9e5                	j	1463a <ediv+0xde>
   14944:	01015683          	lhu	a3,16(sp)
   14948:	03015603          	lhu	a2,48(sp)
   1494c:	01240713          	addi	a4,s0,18
   14950:	87a2                	mv	a5,s0
   14952:	8e91                	sub	a3,a3,a2
   14954:	00d036b3          	snez	a3,a3
   14958:	00f6969b          	slliw	a3,a3,0xf
   1495c:	00d41923          	sh	a3,18(s0)
   14960:	0789                	addi	a5,a5,2
   14962:	fe079f23          	sh	zero,-2(a5)
   14966:	fef71de3          	bne	a4,a5,14960 <ediv+0x404>
   1496a:	bdfd                	j	14868 <ediv+0x30c>
   1496c:	4781                	li	a5,0
   1496e:	b5c5                	j	1484e <ediv+0x2f2>
   14970:	4601                	li	a2,0
   14972:	b5e9                	j	1483c <ediv+0x2e0>
   14974:	4805                	li	a6,1
   14976:	b57d                	j	14824 <ediv+0x2c8>

0000000000014978 <emul>:
   14978:	7131                	addi	sp,sp,-192
   1497a:	f526                	sd	s1,168(sp)
   1497c:	84aa                	mv	s1,a0
   1497e:	01255503          	lhu	a0,18(a0)
   14982:	6721                	lui	a4,0x8
   14984:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14986:	f922                	sd	s0,176(sp)
   14988:	f14a                	sd	s2,160(sp)
   1498a:	e952                	sd	s4,144(sp)
   1498c:	fd06                	sd	ra,184(sp)
   1498e:	ed4e                	sd	s3,152(sp)
   14990:	e556                	sd	s5,136(sp)
   14992:	e15a                	sd	s6,128(sp)
   14994:	fcde                	sd	s7,120(sp)
   14996:	f8e2                	sd	s8,112(sp)
   14998:	f4e6                	sd	s9,104(sp)
   1499a:	00e57833          	and	a6,a0,a4
   1499e:	892e                	mv	s2,a1
   149a0:	8432                	mv	s0,a2
   149a2:	8a36                	mv	s4,a3
   149a4:	00e81b63          	bne	a6,a4,149ba <emul+0x42>
   149a8:	01248993          	addi	s3,s1,18
   149ac:	8726                	mv	a4,s1
   149ae:	00075603          	lhu	a2,0(a4)
   149b2:	0709                	addi	a4,a4,2
   149b4:	e67d                	bnez	a2,14aa2 <emul+0x12a>
   149b6:	ff371ce3          	bne	a4,s3,149ae <emul+0x36>
   149ba:	01295603          	lhu	a2,18(s2)
   149be:	67a1                	lui	a5,0x8
   149c0:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   149c2:	00f675b3          	and	a1,a2,a5
   149c6:	06f58c63          	beq	a1,a5,14a3e <emul+0xc6>
   149ca:	10f81363          	bne	a6,a5,14ad0 <emul+0x158>
   149ce:	01248993          	addi	s3,s1,18
   149d2:	87a6                	mv	a5,s1
   149d4:	0007d703          	lhu	a4,0(a5)
   149d8:	0789                	addi	a5,a5,2
   149da:	1c071b63          	bnez	a4,14bb0 <emul+0x238>
   149de:	fef99be3          	bne	s3,a5,149d4 <emul+0x5c>
   149e2:	65f5                	lui	a1,0x1d
   149e4:	ca058593          	addi	a1,a1,-864 # 1cca0 <ezero>
   149e8:	854a                	mv	a0,s2
   149ea:	d98ff0ef          	jal	ra,13f82 <ecmp>
   149ee:	1a050063          	beqz	a0,14b8e <emul+0x216>
   149f2:	01295603          	lhu	a2,18(s2)
   149f6:	67a1                	lui	a5,0x8
   149f8:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   149fa:	00f675b3          	and	a1,a2,a5
   149fe:	1af58d63          	beq	a1,a5,14bb8 <emul+0x240>
   14a02:	0124d503          	lhu	a0,18(s1)
   14a06:	00f57733          	and	a4,a0,a5
   14a0a:	0cf71363          	bne	a4,a5,14ad0 <emul+0x158>
   14a0e:	87a6                	mv	a5,s1
   14a10:	0007d703          	lhu	a4,0(a5)
   14a14:	0789                	addi	a5,a5,2
   14a16:	0e071a63          	bnez	a4,14b0a <emul+0x192>
   14a1a:	fef99be3          	bne	s3,a5,14a10 <emul+0x98>
   14a1e:	0004d783          	lhu	a5,0(s1)
   14a22:	0489                	addi	s1,s1,2
   14a24:	28079e63          	bnez	a5,14cc0 <emul+0x348>
   14a28:	ff349be3          	bne	s1,s3,14a1e <emul+0xa6>
   14a2c:	00f55713          	srli	a4,a0,0xf
   14a30:	67a1                	lui	a5,0x8
   14a32:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14a34:	10f59b63          	bne	a1,a5,14b4a <emul+0x1d2>
   14a38:	01290693          	addi	a3,s2,18
   14a3c:	a201                	j	14b3c <emul+0x1c4>
   14a3e:	01290693          	addi	a3,s2,18
   14a42:	874a                	mv	a4,s2
   14a44:	00075783          	lhu	a5,0(a4)
   14a48:	0709                	addi	a4,a4,2
   14a4a:	12079763          	bnez	a5,14b78 <emul+0x200>
   14a4e:	fee69be3          	bne	a3,a4,14a44 <emul+0xcc>
   14a52:	67a1                	lui	a5,0x8
   14a54:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14a56:	f6f80ce3          	beq	a6,a5,149ce <emul+0x56>
   14a5a:	87ca                	mv	a5,s2
   14a5c:	0007d703          	lhu	a4,0(a5)
   14a60:	0789                	addi	a5,a5,2
   14a62:	28071163          	bnez	a4,14ce4 <emul+0x36c>
   14a66:	fef69be3          	bne	a3,a5,14a5c <emul+0xe4>
   14a6a:	65f5                	lui	a1,0x1d
   14a6c:	ca058593          	addi	a1,a1,-864 # 1cca0 <ezero>
   14a70:	8526                	mv	a0,s1
   14a72:	d10ff0ef          	jal	ra,13f82 <ecmp>
   14a76:	10050c63          	beqz	a0,14b8e <emul+0x216>
   14a7a:	0124d503          	lhu	a0,18(s1)
   14a7e:	01295603          	lhu	a2,18(s2)
   14a82:	67a1                	lui	a5,0x8
   14a84:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14a86:	00f576b3          	and	a3,a0,a5
   14a8a:	00f67733          	and	a4,a2,a5
   14a8e:	8836                	mv	a6,a3
   14a90:	0007059b          	sext.w	a1,a4
   14a94:	06f69d63          	bne	a3,a5,14b0e <emul+0x196>
   14a98:	01248993          	addi	s3,s1,18
   14a9c:	0007059b          	sext.w	a1,a4
   14aa0:	b7bd                	j	14a0e <emul+0x96>
   14aa2:	01440713          	addi	a4,s0,20
   14aa6:	0004d783          	lhu	a5,0(s1)
   14aaa:	0409                	addi	s0,s0,2
   14aac:	0489                	addi	s1,s1,2
   14aae:	fef41f23          	sh	a5,-2(s0)
   14ab2:	fee41ae3          	bne	s0,a4,14aa6 <emul+0x12e>
   14ab6:	70ea                	ld	ra,184(sp)
   14ab8:	744a                	ld	s0,176(sp)
   14aba:	74aa                	ld	s1,168(sp)
   14abc:	790a                	ld	s2,160(sp)
   14abe:	69ea                	ld	s3,152(sp)
   14ac0:	6a4a                	ld	s4,144(sp)
   14ac2:	6aaa                	ld	s5,136(sp)
   14ac4:	6b0a                	ld	s6,128(sp)
   14ac6:	7be6                	ld	s7,120(sp)
   14ac8:	7c46                	ld	s8,112(sp)
   14aca:	7ca6                	ld	s9,104(sp)
   14acc:	6129                	addi	sp,sp,192
   14ace:	8082                	ret
   14ad0:	8526                	mv	a0,s1
   14ad2:	858a                	mv	a1,sp
   14ad4:	c18ff0ef          	jal	ra,13eec <emovi>
   14ad8:	100c                	addi	a1,sp,32
   14ada:	854a                	mv	a0,s2
   14adc:	c10ff0ef          	jal	ra,13eec <emovi>
   14ae0:	00215483          	lhu	s1,2(sp)
   14ae4:	02215983          	lhu	s3,34(sp)
   14ae8:	e8f9                	bnez	s1,14bbe <emul+0x246>
   14aea:	005c                	addi	a5,sp,4
   14aec:	0834                	addi	a3,sp,24
   14aee:	1cf68b63          	beq	a3,a5,14cc4 <emul+0x34c>
   14af2:	0007d703          	lhu	a4,0(a5)
   14af6:	0789                	addi	a5,a5,2
   14af8:	db7d                	beqz	a4,14aee <emul+0x176>
   14afa:	850a                	mv	a0,sp
   14afc:	994ff0ef          	jal	ra,13c90 <enormlz>
   14b00:	02215703          	lhu	a4,34(sp)
   14b04:	40a004b3          	neg	s1,a0
   14b08:	a865                	j	14bc0 <emul+0x248>
   14b0a:	6821                	lui	a6,0x8
   14b0c:	187d                	addi	a6,a6,-1 # 7fff <exit-0x80e9>
   14b0e:	67a1                	lui	a5,0x8
   14b10:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14b12:	faf59fe3          	bne	a1,a5,14ad0 <emul+0x158>
   14b16:	01290693          	addi	a3,s2,18
   14b1a:	87ca                	mv	a5,s2
   14b1c:	0007d703          	lhu	a4,0(a5)
   14b20:	0789                	addi	a5,a5,2
   14b22:	f75d                	bnez	a4,14ad0 <emul+0x158>
   14b24:	fed79ce3          	bne	a5,a3,14b1c <emul+0x1a4>
   14b28:	67a1                	lui	a5,0x8
   14b2a:	2801                	sext.w	a6,a6
   14b2c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14b2e:	00f55713          	srli	a4,a0,0xf
   14b32:	01248993          	addi	s3,s1,18
   14b36:	85c2                	mv	a1,a6
   14b38:	eef803e3          	beq	a6,a5,14a1e <emul+0xa6>
   14b3c:	00095783          	lhu	a5,0(s2)
   14b40:	0909                	addi	s2,s2,2
   14b42:	16079d63          	bnez	a5,14cbc <emul+0x344>
   14b46:	fed91be3          	bne	s2,a3,14b3c <emul+0x1c4>
   14b4a:	00f65793          	srli	a5,a2,0xf
   14b4e:	8fb9                	xor	a5,a5,a4
   14b50:	00f7979b          	slliw	a5,a5,0xf
   14b54:	00f41923          	sh	a5,18(s0)
   14b58:	01240713          	addi	a4,s0,18
   14b5c:	87a2                	mv	a5,s0
   14b5e:	0789                	addi	a5,a5,2
   14b60:	fe079f23          	sh	zero,-2(a5)
   14b64:	fee79de3          	bne	a5,a4,14b5e <emul+0x1e6>
   14b68:	01245783          	lhu	a5,18(s0)
   14b6c:	6721                	lui	a4,0x8
   14b6e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14b70:	8fd9                	or	a5,a5,a4
   14b72:	00f41923          	sh	a5,18(s0)
   14b76:	b781                	j	14ab6 <emul+0x13e>
   14b78:	01490713          	addi	a4,s2,20
   14b7c:	00095783          	lhu	a5,0(s2)
   14b80:	0909                	addi	s2,s2,2
   14b82:	0409                	addi	s0,s0,2
   14b84:	fef41f23          	sh	a5,-2(s0)
   14b88:	fee91ae3          	bne	s2,a4,14b7c <emul+0x204>
   14b8c:	b72d                	j	14ab6 <emul+0x13e>
   14b8e:	01040713          	addi	a4,s0,16
   14b92:	87a2                	mv	a5,s0
   14b94:	0789                	addi	a5,a5,2
   14b96:	fe079f23          	sh	zero,-2(a5)
   14b9a:	fee79de3          	bne	a5,a4,14b94 <emul+0x21c>
   14b9e:	77f1                	lui	a5,0xffffc
   14ba0:	00f41823          	sh	a5,16(s0)
   14ba4:	77e1                	lui	a5,0xffff8
   14ba6:	fff7c793          	not	a5,a5
   14baa:	00f41923          	sh	a5,18(s0)
   14bae:	b721                	j	14ab6 <emul+0x13e>
   14bb0:	67a1                	lui	a5,0x8
   14bb2:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14bb4:	e4f59de3          	bne	a1,a5,14a0e <emul+0x96>
   14bb8:	01290693          	addi	a3,s2,18
   14bbc:	bd79                	j	14a5a <emul+0xe2>
   14bbe:	874e                	mv	a4,s3
   14bc0:	894e                	mv	s2,s3
   14bc2:	105c                	addi	a5,sp,36
   14bc4:	1834                	addi	a3,sp,56
   14bc6:	ef11                	bnez	a4,14be2 <emul+0x26a>
   14bc8:	10d78663          	beq	a5,a3,14cd4 <emul+0x35c>
   14bcc:	0007d703          	lhu	a4,0(a5)
   14bd0:	0789                	addi	a5,a5,2
   14bd2:	db7d                	beqz	a4,14bc8 <emul+0x250>
   14bd4:	1008                	addi	a0,sp,32
   14bd6:	8baff0ef          	jal	ra,13c90 <enormlz>
   14bda:	02215703          	lhu	a4,34(sp)
   14bde:	40a98933          	sub	s2,s3,a0
   14be2:	02015783          	lhu	a5,32(sp)
   14be6:	038a0993          	addi	s3,s4,56
   14bea:	02ea1b23          	sh	a4,54(s4)
   14bee:	02fa1a23          	sh	a5,52(s4)
   14bf2:	04ea0713          	addi	a4,s4,78
   14bf6:	87ce                	mv	a5,s3
   14bf8:	00079023          	sh	zero,0(a5)
   14bfc:	0789                	addi	a5,a5,2
   14bfe:	fee79de3          	bne	a5,a4,14bf8 <emul+0x280>
   14c02:	04ca0c13          	addi	s8,s4,76
   14c06:	4b81                	li	s7,0
   14c08:	01810a93          	addi	s5,sp,24
   14c0c:	00410c93          	addi	s9,sp,4
   14c10:	04210b13          	addi	s6,sp,66
   14c14:	000ad503          	lhu	a0,0(s5)
   14c18:	1af9                	addi	s5,s5,-2
   14c1a:	e935                	bnez	a0,14c8e <emul+0x316>
   14c1c:	04ca5783          	lhu	a5,76(s4)
   14c20:	8762                	mv	a4,s8
   14c22:	00fbebb3          	or	s7,s7,a5
   14c26:	ffe75603          	lhu	a2,-2(a4)
   14c2a:	1779                	addi	a4,a4,-2
   14c2c:	00c71123          	sh	a2,2(a4)
   14c30:	fee99be3          	bne	s3,a4,14c26 <emul+0x2ae>
   14c34:	020a1c23          	sh	zero,56(s4)
   14c38:	fd9a9ee3          	bne	s5,s9,14c14 <emul+0x29c>
   14c3c:	034a0713          	addi	a4,s4,52
   14c40:	101c                	addi	a5,sp,32
   14c42:	03a10613          	addi	a2,sp,58
   14c46:	00075683          	lhu	a3,0(a4)
   14c4a:	0789                	addi	a5,a5,2
   14c4c:	0709                	addi	a4,a4,2
   14c4e:	fed79f23          	sh	a3,-2(a5)
   14c52:	fec79ae3          	bne	a5,a2,14c46 <emul+0x2ce>
   14c56:	76f1                	lui	a3,0xffffc
   14c58:	94ca                	add	s1,s1,s2
   14c5a:	0689                	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffdc70a>
   14c5c:	85de                	mv	a1,s7
   14c5e:	1008                	addi	a0,sp,32
   14c60:	87d2                	mv	a5,s4
   14c62:	04000713          	li	a4,64
   14c66:	96a6                	add	a3,a3,s1
   14c68:	4601                	li	a2,0
   14c6a:	bfcff0ef          	jal	ra,14066 <emdnorm>
   14c6e:	02015703          	lhu	a4,32(sp)
   14c72:	00015783          	lhu	a5,0(sp)
   14c76:	85a2                	mv	a1,s0
   14c78:	1008                	addi	a0,sp,32
   14c7a:	8f99                	sub	a5,a5,a4
   14c7c:	00f037b3          	snez	a5,a5
   14c80:	40f007bb          	negw	a5,a5
   14c84:	02f11023          	sh	a5,32(sp)
   14c88:	f7dfe0ef          	jal	ra,13c04 <emovo.constprop.0>
   14c8c:	b52d                	j	14ab6 <emul+0x13e>
   14c8e:	0090                	addi	a2,sp,64
   14c90:	100c                	addi	a1,sp,32
   14c92:	f0bfe0ef          	jal	ra,13b9c <m16m>
   14c96:	8562                	mv	a0,s8
   14c98:	4581                	li	a1,0
   14c9a:	08b0                	addi	a2,sp,88
   14c9c:	00055783          	lhu	a5,0(a0)
   14ca0:	00065703          	lhu	a4,0(a2)
   14ca4:	1579                	addi	a0,a0,-2
   14ca6:	1679                	addi	a2,a2,-2
   14ca8:	973e                	add	a4,a4,a5
   14caa:	972e                	add	a4,a4,a1
   14cac:	01075593          	srli	a1,a4,0x10
   14cb0:	00e51123          	sh	a4,2(a0)
   14cb4:	8985                	andi	a1,a1,1
   14cb6:	ff6613e3          	bne	a2,s6,14c9c <emul+0x324>
   14cba:	b78d                	j	14c1c <emul+0x2a4>
   14cbc:	4781                	li	a5,0
   14cbe:	bd41                	j	14b4e <emul+0x1d6>
   14cc0:	4701                	li	a4,0
   14cc2:	b3bd                	j	14a30 <emul+0xb8>
   14cc4:	01440793          	addi	a5,s0,20
   14cc8:	0409                	addi	s0,s0,2
   14cca:	fe041f23          	sh	zero,-2(s0)
   14cce:	fef41de3          	bne	s0,a5,14cc8 <emul+0x350>
   14cd2:	b3d5                	j	14ab6 <emul+0x13e>
   14cd4:	01440793          	addi	a5,s0,20
   14cd8:	0409                	addi	s0,s0,2
   14cda:	fe041f23          	sh	zero,-2(s0)
   14cde:	fef41de3          	bne	s0,a5,14cd8 <emul+0x360>
   14ce2:	bbd1                	j	14ab6 <emul+0x13e>
   14ce4:	0124d503          	lhu	a0,18(s1)
   14ce8:	67a1                	lui	a5,0x8
   14cea:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14cec:	00f575b3          	and	a1,a0,a5
   14cf0:	01248993          	addi	s3,s1,18
   14cf4:	882e                	mv	a6,a1
   14cf6:	e2f592e3          	bne	a1,a5,14b1a <emul+0x1a2>
   14cfa:	bb11                	j	14a0e <emul+0x96>

0000000000014cfc <_ldtoa_r>:
   14cfc:	d9010113          	addi	sp,sp,-624
   14d00:	09100313          	li	t1,145
   14d04:	f4b2                	sd	a2,104(sp)
   14d06:	06053e03          	ld	t3,96(a0)
   14d0a:	02031613          	slli	a2,t1,0x20
   14d0e:	167d                	addi	a2,a2,-1
   14d10:	ec3e                	sd	a5,24(sp)
   14d12:	09000793          	li	a5,144
   14d16:	26813023          	sd	s0,608(sp)
   14d1a:	23513c23          	sd	s5,568(sp)
   14d1e:	23713423          	sd	s7,552(sp)
   14d22:	26113423          	sd	ra,616(sp)
   14d26:	24913c23          	sd	s1,600(sp)
   14d2a:	25213823          	sd	s2,592(sp)
   14d2e:	25313423          	sd	s3,584(sp)
   14d32:	25413023          	sd	s4,576(sp)
   14d36:	23613823          	sd	s6,560(sp)
   14d3a:	23813023          	sd	s8,544(sp)
   14d3e:	21913c23          	sd	s9,536(sp)
   14d42:	21a13823          	sd	s10,528(sp)
   14d46:	21b13423          	sd	s11,520(sp)
   14d4a:	f0ae                	sd	a1,96(sp)
   14d4c:	fb32                	sd	a2,432(sp)
   14d4e:	e43a                	sd	a4,8(sp)
   14d50:	f046                	sd	a7,32(sp)
   14d52:	e83e                	sd	a5,16(sp)
   14d54:	8aaa                	mv	s5,a0
   14d56:	8bb6                	mv	s7,a3
   14d58:	8442                	mv	s0,a6
   14d5a:	020e0263          	beqz	t3,14d7e <_ldtoa_r+0x82>
   14d5e:	5538                	lw	a4,104(a0)
   14d60:	4785                	li	a5,1
   14d62:	85f2                	mv	a1,t3
   14d64:	00e797bb          	sllw	a5,a5,a4
   14d68:	00fe2623          	sw	a5,12(t3)
   14d6c:	00ee2423          	sw	a4,8(t3)
   14d70:	102010ef          	jal	ra,15e72 <_Bfree>
   14d74:	1b412783          	lw	a5,436(sp)
   14d78:	060ab023          	sd	zero,96(s5)
   14d7c:	e83e                	sd	a5,16(sp)
   14d7e:	090c                	addi	a1,sp,144
   14d80:	1088                	addi	a0,sp,96
   14d82:	edeff0ef          	jal	ra,14460 <e113toe.isra.0>
   14d86:	0a215683          	lhu	a3,162(sp)
   14d8a:	67a1                	lui	a5,0x8
   14d8c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14d8e:	00f6f5b3          	and	a1,a3,a5
   14d92:	00f59c63          	bne	a1,a5,14daa <_ldtoa_r+0xae>
   14d96:	091c                	addi	a5,sp,144
   14d98:	0a210613          	addi	a2,sp,162
   14d9c:	0007d703          	lhu	a4,0(a5)
   14da0:	0789                	addi	a5,a5,2
   14da2:	0e0714e3          	bnez	a4,1568a <_ldtoa_r+0x98e>
   14da6:	fec79be3          	bne	a5,a2,14d9c <_ldtoa_r+0xa0>
   14daa:	82bd                	srli	a3,a3,0xf
   14dac:	c014                	sw	a3,0(s0)
   14dae:	478d                	li	a5,3
   14db0:	68fb8163          	beq	s7,a5,15432 <_ldtoa_r+0x736>
   14db4:	47d1                	li	a5,20
   14db6:	e03e                	sd	a5,0(sp)
   14db8:	0c0b9ce3          	bnez	s7,15690 <_ldtoa_r+0x994>
   14dbc:	67a1                	lui	a5,0x8
   14dbe:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14dc0:	00f59c63          	bne	a1,a5,14dd8 <_ldtoa_r+0xdc>
   14dc4:	091c                	addi	a5,sp,144
   14dc6:	0a210693          	addi	a3,sp,162
   14dca:	0007d703          	lhu	a4,0(a5)
   14dce:	0789                	addi	a5,a5,2
   14dd0:	6c071263          	bnez	a4,15494 <_ldtoa_r+0x798>
   14dd4:	fed79be3          	bne	a5,a3,14dca <_ldtoa_r+0xce>
   14dd8:	09000793          	li	a5,144
   14ddc:	1af12a23          	sw	a5,436(sp)
   14de0:	1918                	addi	a4,sp,176
   14de2:	091c                	addi	a5,sp,144
   14de4:	1150                	addi	a2,sp,164
   14de6:	0007d683          	lhu	a3,0(a5)
   14dea:	0789                	addi	a5,a5,2
   14dec:	0709                	addi	a4,a4,2
   14dee:	fed71f23          	sh	a3,-2(a4)
   14df2:	fec79ae3          	bne	a5,a2,14de6 <_ldtoa_r+0xea>
   14df6:	0c215603          	lhu	a2,194(sp)
   14dfa:	f402                	sd	zero,40(sp)
   14dfc:	00f65793          	srli	a5,a2,0xf
   14e00:	40079463          	bnez	a5,15208 <_ldtoa_r+0x50c>
   14e04:	6d75                	lui	s10,0x1d
   14e06:	4681                	li	a3,0
   14e08:	099c                	addi	a5,sp,208
   14e0a:	b80d0713          	addi	a4,s10,-1152 # 1cb80 <eone>
   14e0e:	0e410c13          	addi	s8,sp,228
   14e12:	a019                	j	14e18 <_ldtoa_r+0x11c>
   14e14:	00075683          	lhu	a3,0(a4)
   14e18:	0789                	addi	a5,a5,2
   14e1a:	fed79f23          	sh	a3,-2(a5)
   14e1e:	0709                	addi	a4,a4,2
   14e20:	ff879ae3          	bne	a5,s8,14e14 <_ldtoa_r+0x118>
   14e24:	10060363          	beqz	a2,14f2a <_ldtoa_r+0x22e>
   14e28:	67a1                	lui	a5,0x8
   14e2a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14e2c:	1af605e3          	beq	a2,a5,157d6 <_ldtoa_r+0xada>
   14e30:	0c011783          	lh	a5,192(sp)
   14e34:	2007d3e3          	bgez	a5,1583a <_ldtoa_r+0xb3e>
   14e38:	190c                	addi	a1,sp,176
   14e3a:	b80d0513          	addi	a0,s10,-1152
   14e3e:	944ff0ef          	jal	ra,13f82 <ecmp>
   14e42:	0e050e63          	beqz	a0,14f3e <_ldtoa_r+0x242>
   14e46:	66054363          	bltz	a0,154ac <_ldtoa_r+0x7b0>
   14e4a:	0c215783          	lhu	a5,194(sp)
   14e4e:	260794e3          	bnez	a5,158b6 <_ldtoa_r+0xbba>
   14e52:	0c011783          	lh	a5,192(sp)
   14e56:	3607c3e3          	bltz	a5,159bc <_ldtoa_r+0xcc0>
   14e5a:	67f5                	lui	a5,0x1d
   14e5c:	b9878793          	addi	a5,a5,-1128 # 1cb98 <etens>
   14e60:	6df5                	lui	s11,0x1d
   14e62:	4481                	li	s1,0
   14e64:	e4be                	sd	a5,72(sp)
   14e66:	1b010a13          	addi	s4,sp,432
   14e6a:	c88d8d93          	addi	s11,s11,-888 # 1cc88 <etens+0xf0>
   14e6e:	1910                	addi	a2,sp,176
   14e70:	86d2                	mv	a3,s4
   14e72:	85b2                	mv	a1,a2
   14e74:	856e                	mv	a0,s11
   14e76:	b03ff0ef          	jal	ra,14978 <emul>
   14e7a:	0c011783          	lh	a5,192(sp)
   14e7e:	34fd                	addiw	s1,s1,-1
   14e80:	fe07d7e3          	bgez	a5,14e6e <_ldtoa_r+0x172>
   14e84:	0a00                	addi	s0,sp,272
   14e86:	12810993          	addi	s3,sp,296
   14e8a:	8722                	mv	a4,s0
   14e8c:	191c                	addi	a5,sp,176
   14e8e:	01d0                	addi	a2,sp,196
   14e90:	0007d683          	lhu	a3,0(a5)
   14e94:	0789                	addi	a5,a5,2
   14e96:	0709                	addi	a4,a4,2
   14e98:	fed71f23          	sh	a3,-2(a4)
   14e9c:	fec79ae3          	bne	a5,a2,14e90 <_ldtoa_r+0x194>
   14ea0:	6775                	lui	a4,0x1d
   14ea2:	4681                	li	a3,0
   14ea4:	099c                	addi	a5,sp,208
   14ea6:	b8070713          	addi	a4,a4,-1152 # 1cb80 <eone>
   14eaa:	a019                	j	14eb0 <_ldtoa_r+0x1b4>
   14eac:	00075683          	lhu	a3,0(a4)
   14eb0:	0789                	addi	a5,a5,2
   14eb2:	fed79f23          	sh	a3,-2(a5)
   14eb6:	0709                	addi	a4,a4,2
   14eb8:	ff879ae3          	bne	a5,s8,14eac <_ldtoa_r+0x1b0>
   14ebc:	6975                	lui	s2,0x1d
   14ebe:	a7890913          	addi	s2,s2,-1416 # 1ca78 <emtens>
   14ec2:	6da6                	ld	s11,72(sp)
   14ec4:	7b7d                	lui	s6,0xfffff
   14ec6:	0f090c13          	addi	s8,s2,240
   14eca:	a019                	j	14ed0 <_ldtoa_r+0x1d4>
   14ecc:	0951                	addi	s2,s2,20
   14ece:	0dd1                	addi	s11,s11,20
   14ed0:	85a2                	mv	a1,s0
   14ed2:	b80d0513          	addi	a0,s10,-1152
   14ed6:	8acff0ef          	jal	ra,13f82 <ecmp>
   14eda:	02a05e63          	blez	a0,14f16 <_ldtoa_r+0x21a>
   14ede:	85a2                	mv	a1,s0
   14ee0:	854a                	mv	a0,s2
   14ee2:	8a0ff0ef          	jal	ra,13f82 <ecmp>
   14ee6:	02054063          	bltz	a0,14f06 <_ldtoa_r+0x20a>
   14eea:	86d2                	mv	a3,s4
   14eec:	8622                	mv	a2,s0
   14eee:	85a2                	mv	a1,s0
   14ef0:	856e                	mv	a0,s11
   14ef2:	a87ff0ef          	jal	ra,14978 <emul>
   14ef6:	0990                	addi	a2,sp,208
   14ef8:	86d2                	mv	a3,s4
   14efa:	85b2                	mv	a1,a2
   14efc:	856e                	mv	a0,s11
   14efe:	a7bff0ef          	jal	ra,14978 <emul>
   14f02:	009b04bb          	addw	s1,s6,s1
   14f06:	01fb579b          	srliw	a5,s6,0x1f
   14f0a:	016787bb          	addw	a5,a5,s6
   14f0e:	4017db1b          	sraiw	s6,a5,0x1
   14f12:	fb891de3          	bne	s2,s8,14ecc <_ldtoa_r+0x1d0>
   14f16:	0990                	addi	a2,sp,208
   14f18:	86d2                	mv	a3,s4
   14f1a:	b80d0593          	addi	a1,s10,-1152
   14f1e:	8532                	mv	a0,a2
   14f20:	e3cff0ef          	jal	ra,1455c <ediv>
   14f24:	17010913          	addi	s2,sp,368
   14f28:	a01d                	j	14f4e <_ldtoa_r+0x252>
   14f2a:	191c                	addi	a5,sp,176
   14f2c:	0c210693          	addi	a3,sp,194
   14f30:	0007d703          	lhu	a4,0(a5)
   14f34:	f00712e3          	bnez	a4,14e38 <_ldtoa_r+0x13c>
   14f38:	0789                	addi	a5,a5,2
   14f3a:	fed79be3          	bne	a5,a3,14f30 <_ldtoa_r+0x234>
   14f3e:	4481                	li	s1,0
   14f40:	17010913          	addi	s2,sp,368
   14f44:	1b010a13          	addi	s4,sp,432
   14f48:	0a00                	addi	s0,sp,272
   14f4a:	12810993          	addi	s3,sp,296
   14f4e:	85a2                	mv	a1,s0
   14f50:	0988                	addi	a0,sp,208
   14f52:	f9bfe0ef          	jal	ra,13eec <emovi>
   14f56:	0998                	addi	a4,sp,208
   14f58:	87a2                	mv	a5,s0
   14f5a:	0007d683          	lhu	a3,0(a5)
   14f5e:	0789                	addi	a5,a5,2
   14f60:	0709                	addi	a4,a4,2
   14f62:	fed71f23          	sh	a3,-2(a4)
   14f66:	ff379ae3          	bne	a5,s3,14f5a <_ldtoa_r+0x25e>
   14f6a:	85a2                	mv	a1,s0
   14f6c:	1908                	addi	a0,sp,176
   14f6e:	0e011423          	sh	zero,232(sp)
   14f72:	f7bfe0ef          	jal	ra,13eec <emovi>
   14f76:	191c                	addi	a5,sp,176
   14f78:	00045703          	lhu	a4,0(s0)
   14f7c:	0409                	addi	s0,s0,2
   14f7e:	0789                	addi	a5,a5,2
   14f80:	fee79f23          	sh	a4,-2(a5)
   14f84:	ff341ae3          	bne	s0,s3,14f78 <_ldtoa_r+0x27c>
   14f88:	8652                	mv	a2,s4
   14f8a:	190c                	addi	a1,sp,176
   14f8c:	0988                	addi	a0,sp,208
   14f8e:	0c011423          	sh	zero,200(sp)
   14f92:	bdaff0ef          	jal	ra,1436c <eiremain>
   14f96:	1fc15b03          	lhu	s6,508(sp)
   14f9a:	6475                	lui	s0,0x1d
   14f9c:	100b1863          	bnez	s6,150ac <_ldtoa_r+0x3b0>
   14fa0:	0c810d93          	addi	s11,sp,200
   14fa4:	0b210993          	addi	s3,sp,178
   14fa8:	0f210d13          	addi	s10,sp,242
   14fac:	ca040593          	addi	a1,s0,-864 # 1cca0 <ezero>
   14fb0:	1908                	addi	a0,sp,176
   14fb2:	fd1fe0ef          	jal	ra,13f82 <ecmp>
   14fb6:	c97d                	beqz	a0,150ac <_ldtoa_r+0x3b0>
   14fb8:	4681                	li	a3,0
   14fba:	866e                	mv	a2,s11
   14fbc:	00065783          	lhu	a5,0(a2)
   14fc0:	00f7d593          	srli	a1,a5,0xf
   14fc4:	c199                	beqz	a1,14fca <_ldtoa_r+0x2ce>
   14fc6:	0016e693          	ori	a3,a3,1
   14fca:	0017979b          	slliw	a5,a5,0x1
   14fce:	17c2                	slli	a5,a5,0x30
   14fd0:	0026f593          	andi	a1,a3,2
   14fd4:	93c1                	srli	a5,a5,0x30
   14fd6:	c199                	beqz	a1,14fdc <_ldtoa_r+0x2e0>
   14fd8:	0017e793          	ori	a5,a5,1
   14fdc:	0016969b          	slliw	a3,a3,0x1
   14fe0:	00f61023          	sh	a5,0(a2)
   14fe4:	16c2                	slli	a3,a3,0x30
   14fe6:	1679                	addi	a2,a2,-2
   14fe8:	92c1                	srli	a3,a3,0x30
   14fea:	fd3619e3          	bne	a2,s3,14fbc <_ldtoa_r+0x2c0>
   14fee:	1994                	addi	a3,sp,240
   14ff0:	191c                	addi	a5,sp,176
   14ff2:	0007d603          	lhu	a2,0(a5)
   14ff6:	0789                	addi	a5,a5,2
   14ff8:	0689                	addi	a3,a3,2
   14ffa:	fec69f23          	sh	a2,-2(a3)
   14ffe:	ffb79ae3          	bne	a5,s11,14ff2 <_ldtoa_r+0x2f6>
   15002:	10011423          	sh	zero,264(sp)
   15006:	4681                	li	a3,0
   15008:	0230                	addi	a2,sp,264
   1500a:	00065783          	lhu	a5,0(a2)
   1500e:	00f7d593          	srli	a1,a5,0xf
   15012:	c199                	beqz	a1,15018 <_ldtoa_r+0x31c>
   15014:	0016e693          	ori	a3,a3,1
   15018:	0017979b          	slliw	a5,a5,0x1
   1501c:	17c2                	slli	a5,a5,0x30
   1501e:	0026f593          	andi	a1,a3,2
   15022:	93c1                	srli	a5,a5,0x30
   15024:	c199                	beqz	a1,1502a <_ldtoa_r+0x32e>
   15026:	0017e793          	ori	a5,a5,1
   1502a:	0016969b          	slliw	a3,a3,0x1
   1502e:	00f61023          	sh	a5,0(a2)
   15032:	16c2                	slli	a3,a3,0x30
   15034:	1679                	addi	a2,a2,-2
   15036:	92c1                	srli	a3,a3,0x30
   15038:	fda619e3          	bne	a2,s10,1500a <_ldtoa_r+0x30e>
   1503c:	4681                	li	a3,0
   1503e:	0230                	addi	a2,sp,264
   15040:	00065783          	lhu	a5,0(a2)
   15044:	00f7d593          	srli	a1,a5,0xf
   15048:	c199                	beqz	a1,1504e <_ldtoa_r+0x352>
   1504a:	0016e693          	ori	a3,a3,1
   1504e:	0017979b          	slliw	a5,a5,0x1
   15052:	17c2                	slli	a5,a5,0x30
   15054:	0026f593          	andi	a1,a3,2
   15058:	93c1                	srli	a5,a5,0x30
   1505a:	c199                	beqz	a1,15060 <_ldtoa_r+0x364>
   1505c:	0017e793          	ori	a5,a5,1
   15060:	0016969b          	slliw	a3,a3,0x1
   15064:	00f61023          	sh	a5,0(a2)
   15068:	16c2                	slli	a3,a3,0x30
   1506a:	1679                	addi	a2,a2,-2
   1506c:	92c1                	srli	a3,a3,0x30
   1506e:	fda619e3          	bne	a2,s10,15040 <_ldtoa_r+0x344>
   15072:	4581                	li	a1,0
   15074:	866e                	mv	a2,s11
   15076:	0234                	addi	a3,sp,264
   15078:	00065503          	lhu	a0,0(a2)
   1507c:	0006d783          	lhu	a5,0(a3)
   15080:	1679                	addi	a2,a2,-2
   15082:	16f9                	addi	a3,a3,-2
   15084:	97aa                	add	a5,a5,a0
   15086:	97ae                	add	a5,a5,a1
   15088:	0107d593          	srli	a1,a5,0x10
   1508c:	00f61123          	sh	a5,2(a2)
   15090:	8985                	andi	a1,a1,1
   15092:	ffa693e3          	bne	a3,s10,15078 <_ldtoa_r+0x37c>
   15096:	8652                	mv	a2,s4
   15098:	190c                	addi	a1,sp,176
   1509a:	0988                	addi	a0,sp,208
   1509c:	ad0ff0ef          	jal	ra,1436c <eiremain>
   150a0:	1fc15783          	lhu	a5,508(sp)
   150a4:	34fd                	addiw	s1,s1,-1
   150a6:	f00783e3          	beqz	a5,14fac <_ldtoa_r+0x2b0>
   150aa:	8b3e                	mv	s6,a5
   150ac:	7722                	ld	a4,40(sp)
   150ae:	02d00793          	li	a5,45
   150b2:	e319                	bnez	a4,150b8 <_ldtoa_r+0x3bc>
   150b4:	02000793          	li	a5,32
   150b8:	16f10823          	sb	a5,368(sp)
   150bc:	470d                	li	a4,3
   150be:	6782                	ld	a5,0(sp)
   150c0:	00eb9363          	bne	s7,a4,150c6 <_ldtoa_r+0x3ca>
   150c4:	9fa5                	addw	a5,a5,s1
   150c6:	02a00713          	li	a4,42
   150ca:	0007841b          	sext.w	s0,a5
   150ce:	00f75463          	bge	a4,a5,150d6 <_ldtoa_r+0x3da>
   150d2:	02a00413          	li	s0,42
   150d6:	4729                	li	a4,10
   150d8:	38eb0b63          	beq	s6,a4,1546e <_ldtoa_r+0x772>
   150dc:	030b0b1b          	addiw	s6,s6,48 # fffffffffffff030 <__BSS_END__+0xfffffffffffdf738>
   150e0:	02e00713          	li	a4,46
   150e4:	176108a3          	sb	s6,369(sp)
   150e8:	16e10923          	sb	a4,370(sp)
   150ec:	1207c663          	bltz	a5,15218 <_ldtoa_r+0x51c>
   150f0:	17310c13          	addi	s8,sp,371
   150f4:	4c81                	li	s9,0
   150f6:	0f010b13          	addi	s6,sp,240
   150fa:	0c810d93          	addi	s11,sp,200
   150fe:	0b210993          	addi	s3,sp,178
   15102:	0f210d13          	addi	s10,sp,242
   15106:	4601                	li	a2,0
   15108:	85ee                	mv	a1,s11
   1510a:	0005d783          	lhu	a5,0(a1)
   1510e:	00f7d513          	srli	a0,a5,0xf
   15112:	c119                	beqz	a0,15118 <_ldtoa_r+0x41c>
   15114:	00166613          	ori	a2,a2,1
   15118:	0017979b          	slliw	a5,a5,0x1
   1511c:	17c2                	slli	a5,a5,0x30
   1511e:	00267513          	andi	a0,a2,2
   15122:	93c1                	srli	a5,a5,0x30
   15124:	c119                	beqz	a0,1512a <_ldtoa_r+0x42e>
   15126:	0017e793          	ori	a5,a5,1
   1512a:	0016161b          	slliw	a2,a2,0x1
   1512e:	00f59023          	sh	a5,0(a1)
   15132:	1642                	slli	a2,a2,0x30
   15134:	15f9                	addi	a1,a1,-2
   15136:	9241                	srli	a2,a2,0x30
   15138:	fd3599e3          	bne	a1,s3,1510a <_ldtoa_r+0x40e>
   1513c:	865a                	mv	a2,s6
   1513e:	191c                	addi	a5,sp,176
   15140:	0007d583          	lhu	a1,0(a5)
   15144:	0789                	addi	a5,a5,2
   15146:	0609                	addi	a2,a2,2
   15148:	feb61f23          	sh	a1,-2(a2)
   1514c:	ffb79ae3          	bne	a5,s11,15140 <_ldtoa_r+0x444>
   15150:	10011423          	sh	zero,264(sp)
   15154:	4601                	li	a2,0
   15156:	022c                	addi	a1,sp,264
   15158:	0005d783          	lhu	a5,0(a1)
   1515c:	00f7d513          	srli	a0,a5,0xf
   15160:	c119                	beqz	a0,15166 <_ldtoa_r+0x46a>
   15162:	00166613          	ori	a2,a2,1
   15166:	0017979b          	slliw	a5,a5,0x1
   1516a:	17c2                	slli	a5,a5,0x30
   1516c:	00267513          	andi	a0,a2,2
   15170:	93c1                	srli	a5,a5,0x30
   15172:	c119                	beqz	a0,15178 <_ldtoa_r+0x47c>
   15174:	0017e793          	ori	a5,a5,1
   15178:	0016161b          	slliw	a2,a2,0x1
   1517c:	00f59023          	sh	a5,0(a1)
   15180:	1642                	slli	a2,a2,0x30
   15182:	15f9                	addi	a1,a1,-2
   15184:	9241                	srli	a2,a2,0x30
   15186:	fda599e3          	bne	a1,s10,15158 <_ldtoa_r+0x45c>
   1518a:	4601                	li	a2,0
   1518c:	022c                	addi	a1,sp,264
   1518e:	0005d783          	lhu	a5,0(a1)
   15192:	00f7d513          	srli	a0,a5,0xf
   15196:	c119                	beqz	a0,1519c <_ldtoa_r+0x4a0>
   15198:	00166613          	ori	a2,a2,1
   1519c:	0017979b          	slliw	a5,a5,0x1
   151a0:	17c2                	slli	a5,a5,0x30
   151a2:	00267513          	andi	a0,a2,2
   151a6:	93c1                	srli	a5,a5,0x30
   151a8:	c119                	beqz	a0,151ae <_ldtoa_r+0x4b2>
   151aa:	0017e793          	ori	a5,a5,1
   151ae:	0016161b          	slliw	a2,a2,0x1
   151b2:	00f59023          	sh	a5,0(a1)
   151b6:	1642                	slli	a2,a2,0x30
   151b8:	15f9                	addi	a1,a1,-2
   151ba:	9241                	srli	a2,a2,0x30
   151bc:	fda599e3          	bne	a1,s10,1518e <_ldtoa_r+0x492>
   151c0:	4501                	li	a0,0
   151c2:	85ee                	mv	a1,s11
   151c4:	0230                	addi	a2,sp,264
   151c6:	0005d883          	lhu	a7,0(a1)
   151ca:	00065783          	lhu	a5,0(a2)
   151ce:	15f9                	addi	a1,a1,-2
   151d0:	1679                	addi	a2,a2,-2
   151d2:	97c6                	add	a5,a5,a7
   151d4:	97aa                	add	a5,a5,a0
   151d6:	0107d513          	srli	a0,a5,0x10
   151da:	00f59123          	sh	a5,2(a1)
   151de:	8905                	andi	a0,a0,1
   151e0:	ffa613e3          	bne	a2,s10,151c6 <_ldtoa_r+0x4ca>
   151e4:	8652                	mv	a2,s4
   151e6:	190c                	addi	a1,sp,176
   151e8:	0988                	addi	a0,sp,208
   151ea:	982ff0ef          	jal	ra,1436c <eiremain>
   151ee:	1fc15603          	lhu	a2,508(sp)
   151f2:	001c0793          	addi	a5,s8,1
   151f6:	2c85                	addiw	s9,s9,1
   151f8:	0306059b          	addiw	a1,a2,48
   151fc:	feb78fa3          	sb	a1,-1(a5)
   15200:	03944263          	blt	s0,s9,15224 <_ldtoa_r+0x528>
   15204:	8c3e                	mv	s8,a5
   15206:	b701                	j	15106 <_ldtoa_r+0x40a>
   15208:	1646                	slli	a2,a2,0x31
   1520a:	67c1                	lui	a5,0x10
   1520c:	9245                	srli	a2,a2,0x31
   1520e:	17fd                	addi	a5,a5,-1 # ffff <exit-0xe9>
   15210:	0cc11123          	sh	a2,194(sp)
   15214:	f43e                	sd	a5,40(sp)
   15216:	b6fd                	j	14e04 <_ldtoa_r+0x108>
   15218:	1fc15603          	lhu	a2,508(sp)
   1521c:	17210c13          	addi	s8,sp,370
   15220:	17310793          	addi	a5,sp,371
   15224:	4711                	li	a4,4
   15226:	04c75663          	bge	a4,a2,15272 <_ldtoa_r+0x576>
   1522a:	4715                	li	a4,5
   1522c:	62e60363          	beq	a2,a4,15852 <_ldtoa_r+0xb56>
   15230:	ffe7c703          	lbu	a4,-2(a5)
   15234:	ffe78693          	addi	a3,a5,-2
   15238:	07f77613          	andi	a2,a4,127
   1523c:	8732                	mv	a4,a2
   1523e:	02044563          	bltz	s0,15268 <_ldtoa_r+0x56c>
   15242:	02e00593          	li	a1,46
   15246:	03800513          	li	a0,56
   1524a:	03000893          	li	a7,48
   1524e:	5ab60663          	beq	a2,a1,157fa <_ldtoa_r+0xafe>
   15252:	5ce55063          	bge	a0,a4,15812 <_ldtoa_r+0xb16>
   15256:	fff6c783          	lbu	a5,-1(a3)
   1525a:	01168023          	sb	a7,0(a3)
   1525e:	16fd                	addi	a3,a3,-1
   15260:	07f7f613          	andi	a2,a5,127
   15264:	8732                	mv	a4,a2
   15266:	b7e5                	j	1524e <_ldtoa_r+0x552>
   15268:	03100713          	li	a4,49
   1526c:	fee78f23          	sb	a4,-2(a5)
   15270:	2485                	addiw	s1,s1,1
   15272:	65f5                	lui	a1,0x1d
   15274:	8626                	mv	a2,s1
   15276:	9c858593          	addi	a1,a1,-1592 # 1c9c8 <zeroes.0+0x38>
   1527a:	8562                	mv	a0,s8
   1527c:	62f010ef          	jal	ra,170aa <sprintf>
   15280:	0a215783          	lhu	a5,162(sp)
   15284:	6742                	ld	a4,16(sp)
   15286:	1c912023          	sw	s1,448(sp)
   1528a:	fff7c793          	not	a5,a5
   1528e:	1ae12a23          	sw	a4,436(sp)
   15292:	03179713          	slli	a4,a5,0x31
   15296:	14070163          	beqz	a4,153d8 <_ldtoa_r+0x6dc>
   1529a:	66e2                	ld	a3,24(sp)
   1529c:	17014703          	lbu	a4,368(sp)
   152a0:	0014879b          	addiw	a5,s1,1
   152a4:	c29c                	sw	a5,0(a3)
   152a6:	87ca                	mv	a5,s2
   152a8:	c70d                	beqz	a4,152d2 <_ldtoa_r+0x5d6>
   152aa:	02e00693          	li	a3,46
   152ae:	18d70e63          	beq	a4,a3,1544a <_ldtoa_r+0x74e>
   152b2:	0017c703          	lbu	a4,1(a5)
   152b6:	0785                	addi	a5,a5,1
   152b8:	fb7d                	bnez	a4,152ae <_ldtoa_r+0x5b2>
   152ba:	04500693          	li	a3,69
   152be:	00f96563          	bltu	s2,a5,152c8 <_ldtoa_r+0x5cc>
   152c2:	a801                	j	152d2 <_ldtoa_r+0x5d6>
   152c4:	01278763          	beq	a5,s2,152d2 <_ldtoa_r+0x5d6>
   152c8:	fff7c703          	lbu	a4,-1(a5)
   152cc:	17fd                	addi	a5,a5,-1
   152ce:	fed71be3          	bne	a4,a3,152c4 <_ldtoa_r+0x5c8>
   152d2:	00078023          	sb	zero,0(a5)
   152d6:	87ca                	mv	a5,s2
   152d8:	02000693          	li	a3,32
   152dc:	02d00613          	li	a2,45
   152e0:	0007c703          	lbu	a4,0(a5)
   152e4:	00d70463          	beq	a4,a3,152ec <_ldtoa_r+0x5f0>
   152e8:	00c71463          	bne	a4,a2,152f0 <_ldtoa_r+0x5f4>
   152ec:	0785                	addi	a5,a5,1
   152ee:	bfcd                	j	152e0 <_ldtoa_r+0x5e4>
   152f0:	844a                	mv	s0,s2
   152f2:	a021                	j	152fa <_ldtoa_r+0x5fe>
   152f4:	0007c703          	lbu	a4,0(a5)
   152f8:	8436                	mv	s0,a3
   152fa:	00e40023          	sb	a4,0(s0)
   152fe:	00140693          	addi	a3,s0,1
   15302:	0785                	addi	a5,a5,1
   15304:	fb65                	bnez	a4,152f4 <_ldtoa_r+0x5f8>
   15306:	4789                	li	a5,2
   15308:	fff44683          	lbu	a3,-1(s0)
   1530c:	0efb8663          	beq	s7,a5,153f8 <_ldtoa_r+0x6fc>
   15310:	6702                	ld	a4,0(sp)
   15312:	87ba                	mv	a5,a4
   15314:	00975363          	bge	a4,s1,1531a <_ldtoa_r+0x61e>
   15318:	87a6                	mv	a5,s1
   1531a:	03000613          	li	a2,48
   1531e:	0007871b          	sext.w	a4,a5
   15322:	02c69463          	bne	a3,a2,1534a <_ldtoa_r+0x64e>
   15326:	412407b3          	sub	a5,s0,s2
   1532a:	02f75063          	bge	a4,a5,1534a <_ldtoa_r+0x64e>
   1532e:	03000693          	li	a3,48
   15332:	a029                	j	1533c <_ldtoa_r+0x640>
   15334:	412407b3          	sub	a5,s0,s2
   15338:	00f75963          	bge	a4,a5,1534a <_ldtoa_r+0x64e>
   1533c:	ffe44783          	lbu	a5,-2(s0)
   15340:	fe040fa3          	sb	zero,-1(s0)
   15344:	147d                	addi	s0,s0,-1
   15346:	fed787e3          	beq	a5,a3,15334 <_ldtoa_r+0x638>
   1534a:	478d                	li	a5,3
   1534c:	0cfb8063          	beq	s7,a5,1540c <_ldtoa_r+0x710>
   15350:	67a2                	ld	a5,8(sp)
   15352:	060aa423          	sw	zero,104(s5)
   15356:	0097899b          	addiw	s3,a5,9
   1535a:	47fd                	li	a5,31
   1535c:	0d37f963          	bgeu	a5,s3,1542e <_ldtoa_r+0x732>
   15360:	4705                	li	a4,1
   15362:	4791                	li	a5,4
   15364:	0017979b          	slliw	a5,a5,0x1
   15368:	01c78693          	addi	a3,a5,28
   1536c:	0007059b          	sext.w	a1,a4
   15370:	2705                	addiw	a4,a4,1
   15372:	fed9f9e3          	bgeu	s3,a3,15364 <_ldtoa_r+0x668>
   15376:	06baa423          	sw	a1,104(s5)
   1537a:	8556                	mv	a0,s5
   1537c:	295000ef          	jal	ra,15e10 <_Balloc>
   15380:	84aa                	mv	s1,a0
   15382:	68050263          	beqz	a0,15a06 <_ldtoa_r+0xd0a>
   15386:	06aab023          	sd	a0,96(s5)
   1538a:	85ca                	mv	a1,s2
   1538c:	f83fb0ef          	jal	ra,1130e <strcpy>
   15390:	7702                	ld	a4,32(sp)
   15392:	c709                	beqz	a4,1539c <_ldtoa_r+0x6a0>
   15394:	412407b3          	sub	a5,s0,s2
   15398:	97a6                	add	a5,a5,s1
   1539a:	e31c                	sd	a5,0(a4)
   1539c:	26813083          	ld	ra,616(sp)
   153a0:	26013403          	ld	s0,608(sp)
   153a4:	25013903          	ld	s2,592(sp)
   153a8:	24813983          	ld	s3,584(sp)
   153ac:	24013a03          	ld	s4,576(sp)
   153b0:	23813a83          	ld	s5,568(sp)
   153b4:	23013b03          	ld	s6,560(sp)
   153b8:	22813b83          	ld	s7,552(sp)
   153bc:	22013c03          	ld	s8,544(sp)
   153c0:	21813c83          	ld	s9,536(sp)
   153c4:	21013d03          	ld	s10,528(sp)
   153c8:	20813d83          	ld	s11,520(sp)
   153cc:	8526                	mv	a0,s1
   153ce:	25813483          	ld	s1,600(sp)
   153d2:	27010113          	addi	sp,sp,624
   153d6:	8082                	ret
   153d8:	091c                	addi	a5,sp,144
   153da:	0a210693          	addi	a3,sp,162
   153de:	0007d703          	lhu	a4,0(a5)
   153e2:	0789                	addi	a5,a5,2
   153e4:	42071b63          	bnez	a4,1581a <_ldtoa_r+0xb1e>
   153e8:	fed79be3          	bne	a5,a3,153de <_ldtoa_r+0x6e2>
   153ec:	6762                	ld	a4,24(sp)
   153ee:	6789                	lui	a5,0x2
   153f0:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   153f4:	c31c                	sw	a5,0(a4)
   153f6:	b5c5                	j	152d6 <_ldtoa_r+0x5da>
   153f8:	03000793          	li	a5,48
   153fc:	f4f69ae3          	bne	a3,a5,15350 <_ldtoa_r+0x654>
   15400:	412407b3          	sub	a5,s0,s2
   15404:	4705                	li	a4,1
   15406:	f2f744e3          	blt	a4,a5,1532e <_ldtoa_r+0x632>
   1540a:	b799                	j	15350 <_ldtoa_r+0x654>
   1540c:	6782                	ld	a5,0(sp)
   1540e:	9cbd                	addw	s1,s1,a5
   15410:	3a04c463          	bltz	s1,157b8 <_ldtoa_r+0xabc>
   15414:	67e2                	ld	a5,24(sp)
   15416:	6722                	ld	a4,8(sp)
   15418:	439c                	lw	a5,0(a5)
   1541a:	9fb9                	addw	a5,a5,a4
   1541c:	e43e                	sd	a5,8(sp)
   1541e:	67a2                	ld	a5,8(sp)
   15420:	060aa423          	sw	zero,104(s5)
   15424:	0037899b          	addiw	s3,a5,3
   15428:	47fd                	li	a5,31
   1542a:	f337ebe3          	bltu	a5,s3,15360 <_ldtoa_r+0x664>
   1542e:	4581                	li	a1,0
   15430:	b7a9                	j	1537a <_ldtoa_r+0x67e>
   15432:	67a2                	ld	a5,8(sp)
   15434:	02a00713          	li	a4,42
   15438:	8cbe                	mv	s9,a5
   1543a:	00f75463          	bge	a4,a5,15442 <_ldtoa_r+0x746>
   1543e:	02a00c93          	li	s9,42
   15442:	000c879b          	sext.w	a5,s9
   15446:	e03e                	sd	a5,0(sp)
   15448:	ba95                	j	14dbc <_ldtoa_r+0xc0>
   1544a:	0007c703          	lbu	a4,0(a5)
   1544e:	e60706e3          	beqz	a4,152ba <_ldtoa_r+0x5be>
   15452:	0017c703          	lbu	a4,1(a5)
   15456:	0785                	addi	a5,a5,1
   15458:	fee78fa3          	sb	a4,-1(a5)
   1545c:	e4070fe3          	beqz	a4,152ba <_ldtoa_r+0x5be>
   15460:	0017c703          	lbu	a4,1(a5)
   15464:	0785                	addi	a5,a5,1
   15466:	fee78fa3          	sb	a4,-1(a5)
   1546a:	f765                	bnez	a4,15452 <_ldtoa_r+0x756>
   1546c:	b5b9                	j	152ba <_ldtoa_r+0x5be>
   1546e:	03100713          	li	a4,49
   15472:	16e108a3          	sb	a4,369(sp)
   15476:	02e00713          	li	a4,46
   1547a:	16e10923          	sb	a4,370(sp)
   1547e:	2485                	addiw	s1,s1,1
   15480:	20f05063          	blez	a5,15680 <_ldtoa_r+0x984>
   15484:	03000793          	li	a5,48
   15488:	16f109a3          	sb	a5,371(sp)
   1548c:	347d                	addiw	s0,s0,-1
   1548e:	17410c13          	addi	s8,sp,372
   15492:	b18d                	j	150f4 <_ldtoa_r+0x3f8>
   15494:	17010913          	addi	s2,sp,368
   15498:	65f5                	lui	a1,0x1d
   1549a:	a4858593          	addi	a1,a1,-1464 # 1ca48 <zeroes.0+0xb8>
   1549e:	854a                	mv	a0,s2
   154a0:	6489                	lui	s1,0x2
   154a2:	409010ef          	jal	ra,170aa <sprintf>
   154a6:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   154aa:	bbd9                	j	15280 <_ldtoa_r+0x584>
   154ac:	0f010b13          	addi	s6,sp,240
   154b0:	875a                	mv	a4,s6
   154b2:	191c                	addi	a5,sp,176
   154b4:	01d0                	addi	a2,sp,196
   154b6:	0007d683          	lhu	a3,0(a5)
   154ba:	0789                	addi	a5,a5,2
   154bc:	0709                	addi	a4,a4,2
   154be:	fed71f23          	sh	a3,-2(a4)
   154c2:	fec79ae3          	bne	a5,a2,154b6 <_ldtoa_r+0x7ba>
   154c6:	67f5                	lui	a5,0x1d
   154c8:	b9878713          	addi	a4,a5,-1128 # 1cb98 <etens>
   154cc:	6791                	lui	a5,0x4
   154ce:	08e78793          	addi	a5,a5,142 # 408e <exit-0xc05a>
   154d2:	10f11123          	sh	a5,258(sp)
   154d6:	67f5                	lui	a5,0x1d
   154d8:	c9c78793          	addi	a5,a5,-868 # 1cc9c <etens+0x104>
   154dc:	e0be                	sd	a5,64(sp)
   154de:	67a1                	lui	a5,0x8
   154e0:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   154e2:	f83e                	sd	a5,48(sp)
   154e4:	77f1                	lui	a5,0xffffc
   154e6:	2789                	addiw	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffdc70a>
   154e8:	de3e                	sw	a5,60(sp)
   154ea:	67f5                	lui	a5,0x1d
   154ec:	a5078793          	addi	a5,a5,-1456 # 1ca50 <bmask>
   154f0:	e4ba                	sd	a4,72(sp)
   154f2:	4dc1                	li	s11,16
   154f4:	4481                	li	s1,0
   154f6:	0a070993          	addi	s3,a4,160
   154fa:	17010913          	addi	s2,sp,368
   154fe:	1b010a13          	addi	s4,sp,432
   15502:	0a00                	addi	s0,sp,272
   15504:	0e210c93          	addi	s9,sp,226
   15508:	e8be                	sd	a5,80(sp)
   1550a:	86d2                	mv	a3,s4
   1550c:	0990                	addi	a2,sp,208
   1550e:	85da                	mv	a1,s6
   15510:	854e                	mv	a0,s3
   15512:	84aff0ef          	jal	ra,1455c <ediv>
   15516:	18b8                	addi	a4,sp,120
   15518:	099c                	addi	a5,sp,208
   1551a:	0007d683          	lhu	a3,0(a5)
   1551e:	0789                	addi	a5,a5,2
   15520:	0709                	addi	a4,a4,2
   15522:	fed71f23          	sh	a3,-2(a4)
   15526:	ff879ae3          	bne	a5,s8,1551a <_ldtoa_r+0x81e>
   1552a:	77c2                	ld	a5,48(sp)
   1552c:	08a15503          	lhu	a0,138(sp)
   15530:	00f57e33          	and	t3,a0,a5
   15534:	57f2                	lw	a5,60(sp)
   15536:	00fe07bb          	addw	a5,t3,a5
   1553a:	8e3e                	mv	t3,a5
   1553c:	28f05563          	blez	a5,157c6 <_ldtoa_r+0xaca>
   15540:	09000593          	li	a1,144
   15544:	9d9d                	subw	a1,a1,a5
   15546:	8722                	mv	a4,s0
   15548:	18bc                	addi	a5,sp,120
   1554a:	0170                	addi	a2,sp,140
   1554c:	0007d683          	lhu	a3,0(a5)
   15550:	0789                	addi	a5,a5,2
   15552:	0709                	addi	a4,a4,2
   15554:	fed71f23          	sh	a3,-2(a4)
   15558:	fec79ae3          	bne	a5,a2,1554c <_ldtoa_r+0x850>
   1555c:	04b05a63          	blez	a1,155b0 <_ldtoa_r+0x8b4>
   15560:	47bd                	li	a5,15
   15562:	8722                	mv	a4,s0
   15564:	02b7d963          	bge	a5,a1,15596 <_ldtoa_r+0x89a>
   15568:	08000693          	li	a3,128
   1556c:	41c686bb          	subw	a3,a3,t3
   15570:	0046d69b          	srliw	a3,a3,0x4
   15574:	0016871b          	addiw	a4,a3,1
   15578:	0706                	slli	a4,a4,0x1
   1557a:	9722                	add	a4,a4,s0
   1557c:	87a2                	mv	a5,s0
   1557e:	0789                	addi	a5,a5,2
   15580:	fe079f23          	sh	zero,-2(a5)
   15584:	fee79de3          	bne	a5,a4,1557e <_ldtoa_r+0x882>
   15588:	08000593          	li	a1,128
   1558c:	41c585bb          	subw	a1,a1,t3
   15590:	0046969b          	slliw	a3,a3,0x4
   15594:	9d95                	subw	a1,a1,a3
   15596:	66c6                	ld	a3,80(sp)
   15598:	00159793          	slli	a5,a1,0x1
   1559c:	97b6                	add	a5,a5,a3
   1559e:	0007d783          	lhu	a5,0(a5)
   155a2:	00075683          	lhu	a3,0(a4)
   155a6:	8ff5                	and	a5,a5,a3
   155a8:	00f71023          	sh	a5,0(a4)
   155ac:	813d                	srli	a0,a0,0xf
   155ae:	e565                	bnez	a0,15696 <_ldtoa_r+0x99a>
   155b0:	099c                	addi	a5,sp,208
   155b2:	8722                	mv	a4,s0
   155b4:	0007d603          	lhu	a2,0(a5)
   155b8:	00075683          	lhu	a3,0(a4)
   155bc:	02d61263          	bne	a2,a3,155e0 <_ldtoa_r+0x8e4>
   155c0:	0789                	addi	a5,a5,2
   155c2:	0709                	addi	a4,a4,2
   155c4:	fefc98e3          	bne	s9,a5,155b4 <_ldtoa_r+0x8b8>
   155c8:	875a                	mv	a4,s6
   155ca:	099c                	addi	a5,sp,208
   155cc:	0007d683          	lhu	a3,0(a5)
   155d0:	0789                	addi	a5,a5,2
   155d2:	0709                	addi	a4,a4,2
   155d4:	fed71f23          	sh	a3,-2(a4)
   155d8:	ff879ae3          	bne	a5,s8,155cc <_ldtoa_r+0x8d0>
   155dc:	009d84bb          	addw	s1,s11,s1
   155e0:	6786                	ld	a5,64(sp)
   155e2:	09d1                	addi	s3,s3,20
   155e4:	001ddd93          	srli	s11,s11,0x1
   155e8:	f2f991e3          	bne	s3,a5,1550a <_ldtoa_r+0x80e>
   155ec:	10215783          	lhu	a5,258(sp)
   155f0:	0c215703          	lhu	a4,194(sp)
   155f4:	0250                	addi	a2,sp,260
   155f6:	9fb9                	addw	a5,a5,a4
   155f8:	7771                	lui	a4,0xffffc
   155fa:	f727071b          	addiw	a4,a4,-142 # ffffffffffffbf72 <__BSS_END__+0xfffffffffffdc67a>
   155fe:	9fb9                	addw	a5,a5,a4
   15600:	10f11123          	sh	a5,258(sp)
   15604:	1918                	addi	a4,sp,176
   15606:	87da                	mv	a5,s6
   15608:	0007d683          	lhu	a3,0(a5)
   1560c:	0789                	addi	a5,a5,2
   1560e:	0709                	addi	a4,a4,2
   15610:	fed71f23          	sh	a3,-2(a4)
   15614:	fec79ae3          	bne	a5,a2,15608 <_ldtoa_r+0x90c>
   15618:	6775                	lui	a4,0x1d
   1561a:	4681                	li	a3,0
   1561c:	099c                	addi	a5,sp,208
   1561e:	b8070713          	addi	a4,a4,-1152 # 1cb80 <eone>
   15622:	a019                	j	15628 <_ldtoa_r+0x92c>
   15624:	00075683          	lhu	a3,0(a4)
   15628:	0789                	addi	a5,a5,2
   1562a:	fed79f23          	sh	a3,-2(a5)
   1562e:	0709                	addi	a4,a4,2
   15630:	ff879ae3          	bne	a5,s8,15624 <_ldtoa_r+0x928>
   15634:	6df5                	lui	s11,0x1d
   15636:	6ca6                	ld	s9,72(sp)
   15638:	6d05                	lui	s10,0x1
   1563a:	c88d8d93          	addi	s11,s11,-888 # 1cc88 <etens+0xf0>
   1563e:	a031                	j	1564a <_ldtoa_r+0x94e>
   15640:	001d5d13          	srli	s10,s10,0x1
   15644:	1bbc8763          	beq	s9,s11,157f2 <_ldtoa_r+0xaf6>
   15648:	0cd1                	addi	s9,s9,20
   1564a:	85da                	mv	a1,s6
   1564c:	856e                	mv	a0,s11
   1564e:	935fe0ef          	jal	ra,13f82 <ecmp>
   15652:	1aa04063          	bgtz	a0,157f2 <_ldtoa_r+0xaf6>
   15656:	85da                	mv	a1,s6
   15658:	8566                	mv	a0,s9
   1565a:	929fe0ef          	jal	ra,13f82 <ecmp>
   1565e:	fea041e3          	bgtz	a0,15640 <_ldtoa_r+0x944>
   15662:	86d2                	mv	a3,s4
   15664:	865a                	mv	a2,s6
   15666:	85da                	mv	a1,s6
   15668:	8566                	mv	a0,s9
   1566a:	ef3fe0ef          	jal	ra,1455c <ediv>
   1566e:	0990                	addi	a2,sp,208
   15670:	86d2                	mv	a3,s4
   15672:	85b2                	mv	a1,a2
   15674:	8566                	mv	a0,s9
   15676:	b02ff0ef          	jal	ra,14978 <emul>
   1567a:	009d04bb          	addw	s1,s10,s1
   1567e:	b7c9                	j	15640 <_ldtoa_r+0x944>
   15680:	17310c13          	addi	s8,sp,371
   15684:	be0797e3          	bnez	a5,15272 <_ldtoa_r+0x576>
   15688:	b4b5                	j	150f4 <_ldtoa_r+0x3f8>
   1568a:	4681                	li	a3,0
   1568c:	f20ff06f          	j	14dac <_ldtoa_r+0xb0>
   15690:	67a2                	ld	a5,8(sp)
   15692:	37fd                	addiw	a5,a5,-1
   15694:	b345                	j	15434 <_ldtoa_r+0x738>
   15696:	18bc                	addi	a5,sp,120
   15698:	8722                	mv	a4,s0
   1569a:	08a10593          	addi	a1,sp,138
   1569e:	a029                	j	156a8 <_ldtoa_r+0x9ac>
   156a0:	0789                	addi	a5,a5,2
   156a2:	0709                	addi	a4,a4,2
   156a4:	f0b786e3          	beq	a5,a1,155b0 <_ldtoa_r+0x8b4>
   156a8:	0007d603          	lhu	a2,0(a5)
   156ac:	00075683          	lhu	a3,0(a4)
   156b0:	fed608e3          	beq	a2,a3,156a0 <_ldtoa_r+0x9a4>
   156b4:	12215783          	lhu	a5,290(sp)
   156b8:	7742                	ld	a4,48(sp)
   156ba:	8ff9                	and	a5,a5,a4
   156bc:	2ce78b63          	beq	a5,a4,15992 <_ldtoa_r+0xc96>
   156c0:	1a0c                	addi	a1,sp,304
   156c2:	b80d0513          	addi	a0,s10,-1152 # b80 <exit-0xf568>
   156c6:	827fe0ef          	jal	ra,13eec <emovi>
   156ca:	0a8c                	addi	a1,sp,336
   156cc:	8522                	mv	a0,s0
   156ce:	81ffe0ef          	jal	ra,13eec <emovi>
   156d2:	13015703          	lhu	a4,304(sp)
   156d6:	15215603          	lhu	a2,338(sp)
   156da:	13215e03          	lhu	t3,306(sp)
   156de:	fff74713          	not	a4,a4
   156e2:	1742                	slli	a4,a4,0x30
   156e4:	9341                	srli	a4,a4,0x30
   156e6:	12e11823          	sh	a4,304(sp)
   156ea:	40ce05b3          	sub	a1,t3,a2
   156ee:	86b2                	mv	a3,a2
   156f0:	04b05e63          	blez	a1,1574c <_ldtoa_r+0xa50>
   156f4:	85ca                	mv	a1,s2
   156f6:	0a94                	addi	a3,sp,336
   156f8:	12bc                	addi	a5,sp,360
   156fa:	0006d503          	lhu	a0,0(a3)
   156fe:	0689                	addi	a3,a3,2
   15700:	0589                	addi	a1,a1,2
   15702:	fea59f23          	sh	a0,-2(a1)
   15706:	fef69ae3          	bne	a3,a5,156fa <_ldtoa_r+0x9fe>
   1570a:	18011423          	sh	zero,392(sp)
   1570e:	0a94                	addi	a3,sp,336
   15710:	1a0c                	addi	a1,sp,304
   15712:	a019                	j	15718 <_ldtoa_r+0xa1c>
   15714:	0005d703          	lhu	a4,0(a1)
   15718:	0689                	addi	a3,a3,2
   1571a:	fee69f23          	sh	a4,-2(a3)
   1571e:	0589                	addi	a1,a1,2
   15720:	fef69ae3          	bne	a3,a5,15714 <_ldtoa_r+0xa18>
   15724:	16011423          	sh	zero,360(sp)
   15728:	1a18                	addi	a4,sp,304
   1572a:	87ca                	mv	a5,s2
   1572c:	0328                	addi	a0,sp,392
   1572e:	0007d683          	lhu	a3,0(a5)
   15732:	0789                	addi	a5,a5,2
   15734:	0709                	addi	a4,a4,2
   15736:	fed71f23          	sh	a3,-2(a4)
   1573a:	fea79ae3          	bne	a5,a0,1572e <_ldtoa_r+0xa32>
   1573e:	15215683          	lhu	a3,338(sp)
   15742:	41c605b3          	sub	a1,a2,t3
   15746:	14011423          	sh	zero,328(sp)
   1574a:	8636                	mv	a2,a3
   1574c:	28058163          	beqz	a1,159ce <_ldtoa_r+0xcd2>
   15750:	ecb6                	sd	a3,88(sp)
   15752:	f6f00793          	li	a5,-145
   15756:	04f5cc63          	blt	a1,a5,157ae <_ldtoa_r+0xab2>
   1575a:	2581                	sext.w	a1,a1
   1575c:	1a08                	addi	a0,sp,304
   1575e:	e3cfe0ef          	jal	ra,13d9a <eshift.part.0>
   15762:	66e6                	ld	a3,88(sp)
   15764:	85aa                	mv	a1,a0
   15766:	12bc                	addi	a5,sp,360
   15768:	02b8                	addi	a4,sp,328
   1576a:	13015503          	lhu	a0,304(sp)
   1576e:	15015603          	lhu	a2,336(sp)
   15772:	2cc50e63          	beq	a0,a2,15a4e <_ldtoa_r+0xd52>
   15776:	4e01                	li	t3,0
   15778:	15210513          	addi	a0,sp,338
   1577c:	0007d603          	lhu	a2,0(a5)
   15780:	00075e83          	lhu	t4,0(a4)
   15784:	17f9                	addi	a5,a5,-2
   15786:	41c60633          	sub	a2,a2,t3
   1578a:	41d60633          	sub	a2,a2,t4
   1578e:	01065e13          	srli	t3,a2,0x10
   15792:	00c79123          	sh	a2,2(a5)
   15796:	001e7e13          	andi	t3,t3,1
   1579a:	1779                	addi	a4,a4,-2
   1579c:	fea790e3          	bne	a5,a0,1577c <_ldtoa_r+0xa80>
   157a0:	4605                	li	a2,1
   157a2:	87d2                	mv	a5,s4
   157a4:	04000713          	li	a4,64
   157a8:	0a88                	addi	a0,sp,336
   157aa:	8bdfe0ef          	jal	ra,14066 <emdnorm>
   157ae:	85a2                	mv	a1,s0
   157b0:	0a88                	addi	a0,sp,336
   157b2:	c52fe0ef          	jal	ra,13c04 <emovo.constprop.0>
   157b6:	bbed                	j	155b0 <_ldtoa_r+0x8b4>
   157b8:	67e2                	ld	a5,24(sp)
   157ba:	16010823          	sb	zero,368(sp)
   157be:	844a                	mv	s0,s2
   157c0:	0007a023          	sw	zero,0(a5)
   157c4:	b9a9                	j	1541e <_ldtoa_r+0x722>
   157c6:	87a2                	mv	a5,s0
   157c8:	1258                	addi	a4,sp,292
   157ca:	0789                	addi	a5,a5,2
   157cc:	fe079f23          	sh	zero,-2(a5)
   157d0:	fee79de3          	bne	a5,a4,157ca <_ldtoa_r+0xace>
   157d4:	bbe1                	j	155ac <_ldtoa_r+0x8b0>
   157d6:	77a2                	ld	a5,40(sp)
   157d8:	17010913          	addi	s2,sp,368
   157dc:	cfdd                	beqz	a5,1589a <_ldtoa_r+0xb9e>
   157de:	65f5                	lui	a1,0x1d
   157e0:	9a058593          	addi	a1,a1,-1632 # 1c9a0 <zeroes.0+0x10>
   157e4:	854a                	mv	a0,s2
   157e6:	6489                	lui	s1,0x2
   157e8:	0c3010ef          	jal	ra,170aa <sprintf>
   157ec:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   157f0:	bc41                	j	15280 <_ldtoa_r+0x584>
   157f2:	12810993          	addi	s3,sp,296
   157f6:	f58ff06f          	j	14f4e <_ldtoa_r+0x252>
   157fa:	fff6c783          	lbu	a5,-1(a3)
   157fe:	03800713          	li	a4,56
   15802:	0af77663          	bgeu	a4,a5,158ae <_ldtoa_r+0xbb2>
   15806:	03100793          	li	a5,49
   1580a:	2485                	addiw	s1,s1,1
   1580c:	fef68fa3          	sb	a5,-1(a3)
   15810:	b48d                	j	15272 <_ldtoa_r+0x576>
   15812:	2605                	addiw	a2,a2,1
   15814:	00c68023          	sb	a2,0(a3)
   15818:	bca9                	j	15272 <_ldtoa_r+0x576>
   1581a:	091c                	addi	a5,sp,144
   1581c:	0a210693          	addi	a3,sp,162
   15820:	a019                	j	15826 <_ldtoa_r+0xb2a>
   15822:	a6d78ce3          	beq	a5,a3,1529a <_ldtoa_r+0x59e>
   15826:	0007d703          	lhu	a4,0(a5)
   1582a:	0789                	addi	a5,a5,2
   1582c:	db7d                	beqz	a4,15822 <_ldtoa_r+0xb26>
   1582e:	6762                	ld	a4,24(sp)
   15830:	6789                	lui	a5,0x2
   15832:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   15836:	c31c                	sw	a5,0(a4)
   15838:	bc79                	j	152d6 <_ldtoa_r+0x5da>
   1583a:	17010913          	addi	s2,sp,368
   1583e:	65f5                	lui	a1,0x1d
   15840:	9c058593          	addi	a1,a1,-1600 # 1c9c0 <zeroes.0+0x30>
   15844:	854a                	mv	a0,s2
   15846:	6489                	lui	s1,0x2
   15848:	063010ef          	jal	ra,170aa <sprintf>
   1584c:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   15850:	bc05                	j	15280 <_ldtoa_r+0x584>
   15852:	098c                	addi	a1,sp,208
   15854:	1908                	addi	a0,sp,176
   15856:	f43e                	sd	a5,40(sp)
   15858:	bacfe0ef          	jal	ra,13c04 <emovo.constprop.0>
   1585c:	65f5                	lui	a1,0x1d
   1585e:	ca058593          	addi	a1,a1,-864 # 1cca0 <ezero>
   15862:	0988                	addi	a0,sp,208
   15864:	f1efe0ef          	jal	ra,13f82 <ecmp>
   15868:	77a2                	ld	a5,40(sp)
   1586a:	9c0513e3          	bnez	a0,15230 <_ldtoa_r+0x534>
   1586e:	a00442e3          	bltz	s0,15272 <_ldtoa_r+0x576>
   15872:	ffe7c703          	lbu	a4,-2(a5)
   15876:	fd270693          	addi	a3,a4,-46
   1587a:	0016b693          	seqz	a3,a3
   1587e:	fff6c693          	not	a3,a3
   15882:	96e2                	add	a3,a3,s8
   15884:	0006c683          	lbu	a3,0(a3)
   15888:	8a85                	andi	a3,a3,1
   1588a:	9e0684e3          	beqz	a3,15272 <_ldtoa_r+0x576>
   1588e:	07f77613          	andi	a2,a4,127
   15892:	ffe78693          	addi	a3,a5,-2
   15896:	8732                	mv	a4,a2
   15898:	b26d                	j	15242 <_ldtoa_r+0x546>
   1589a:	65f5                	lui	a1,0x1d
   1589c:	9b058593          	addi	a1,a1,-1616 # 1c9b0 <zeroes.0+0x20>
   158a0:	854a                	mv	a0,s2
   158a2:	6489                	lui	s1,0x2
   158a4:	007010ef          	jal	ra,170aa <sprintf>
   158a8:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   158ac:	bad1                	j	15280 <_ldtoa_r+0x584>
   158ae:	2785                	addiw	a5,a5,1
   158b0:	fef68fa3          	sb	a5,-1(a3)
   158b4:	ba7d                	j	15272 <_ldtoa_r+0x576>
   158b6:	0a00                	addi	s0,sp,272
   158b8:	85a2                	mv	a1,s0
   158ba:	1908                	addi	a0,sp,176
   158bc:	e30fe0ef          	jal	ra,13eec <emovi>
   158c0:	6791                	lui	a5,0x4
   158c2:	4481                	li	s1,0
   158c4:	12810993          	addi	s3,sp,296
   158c8:	10810913          	addi	s2,sp,264
   158cc:	11210a13          	addi	s4,sp,274
   158d0:	ffe78b13          	addi	s6,a5,-2 # 3ffe <exit-0xc0ea>
   158d4:	fd500d93          	li	s11,-43
   158d8:	12815783          	lhu	a5,296(sp)
   158dc:	8b9d                	andi	a5,a5,7
   158de:	efd1                	bnez	a5,1597a <_ldtoa_r+0xc7e>
   158e0:	1998                	addi	a4,sp,240
   158e2:	87a2                	mv	a5,s0
   158e4:	0007d683          	lhu	a3,0(a5)
   158e8:	0789                	addi	a5,a5,2
   158ea:	0709                	addi	a4,a4,2
   158ec:	fed71f23          	sh	a3,-2(a4)
   158f0:	ff379ae3          	bne	a5,s3,158e4 <_ldtoa_r+0xbe8>
   158f4:	1988                	addi	a0,sp,240
   158f6:	10011423          	sh	zero,264(sp)
   158fa:	a06fe0ef          	jal	ra,13b00 <eshdn1>
   158fe:	1988                	addi	a0,sp,240
   15900:	a00fe0ef          	jal	ra,13b00 <eshdn1>
   15904:	4601                	li	a2,0
   15906:	86ca                	mv	a3,s2
   15908:	874e                	mv	a4,s3
   1590a:	0006d583          	lhu	a1,0(a3)
   1590e:	00075783          	lhu	a5,0(a4)
   15912:	16f9                	addi	a3,a3,-2
   15914:	1779                	addi	a4,a4,-2
   15916:	97ae                	add	a5,a5,a1
   15918:	97b2                	add	a5,a5,a2
   1591a:	0107d613          	srli	a2,a5,0x10
   1591e:	00f69123          	sh	a5,2(a3)
   15922:	8a05                	andi	a2,a2,1
   15924:	ff4713e3          	bne	a4,s4,1590a <_ldtoa_r+0xc0e>
   15928:	0f215783          	lhu	a5,242(sp)
   1592c:	0f415703          	lhu	a4,244(sp)
   15930:	278d                	addiw	a5,a5,3
   15932:	0ef11923          	sh	a5,242(sp)
   15936:	cf01                	beqz	a4,1594e <_ldtoa_r+0xc52>
   15938:	1988                	addi	a0,sp,240
   1593a:	9c6fe0ef          	jal	ra,13b00 <eshdn1>
   1593e:	0f215783          	lhu	a5,242(sp)
   15942:	0f415703          	lhu	a4,244(sp)
   15946:	2785                	addiw	a5,a5,1
   15948:	0ef11923          	sh	a5,242(sp)
   1594c:	f775                	bnez	a4,15938 <_ldtoa_r+0xc3c>
   1594e:	10815783          	lhu	a5,264(sp)
   15952:	e785                	bnez	a5,1597a <_ldtoa_r+0xc7e>
   15954:	0f215783          	lhu	a5,242(sp)
   15958:	02fb6163          	bltu	s6,a5,1597a <_ldtoa_r+0xc7e>
   1595c:	8722                	mv	a4,s0
   1595e:	199c                	addi	a5,sp,240
   15960:	0007d683          	lhu	a3,0(a5)
   15964:	0789                	addi	a5,a5,2
   15966:	0709                	addi	a4,a4,2
   15968:	fed71f23          	sh	a3,-2(a4)
   1596c:	ff279ae3          	bne	a5,s2,15960 <_ldtoa_r+0xc64>
   15970:	12011423          	sh	zero,296(sp)
   15974:	34fd                	addiw	s1,s1,-1
   15976:	f7b491e3          	bne	s1,s11,158d8 <_ldtoa_r+0xbdc>
   1597a:	190c                	addi	a1,sp,176
   1597c:	8522                	mv	a0,s0
   1597e:	a86fe0ef          	jal	ra,13c04 <emovo.constprop.0>
   15982:	67f5                	lui	a5,0x1d
   15984:	b9878793          	addi	a5,a5,-1128 # 1cb98 <etens>
   15988:	e4be                	sd	a5,72(sp)
   1598a:	1b010a13          	addi	s4,sp,432
   1598e:	cfcff06f          	j	14e8a <_ldtoa_r+0x18e>
   15992:	87a2                	mv	a5,s0
   15994:	0007d703          	lhu	a4,0(a5)
   15998:	0789                	addi	a5,a5,2
   1599a:	c0071be3          	bnez	a4,155b0 <_ldtoa_r+0x8b4>
   1599e:	12210713          	addi	a4,sp,290
   159a2:	fee799e3          	bne	a5,a4,15994 <_ldtoa_r+0xc98>
   159a6:	87a2                	mv	a5,s0
   159a8:	0007d703          	lhu	a4,0(a5)
   159ac:	0789                	addi	a5,a5,2
   159ae:	d00719e3          	bnez	a4,156c0 <_ldtoa_r+0x9c4>
   159b2:	12210713          	addi	a4,sp,290
   159b6:	fee799e3          	bne	a5,a4,159a8 <_ldtoa_r+0xcac>
   159ba:	bedd                	j	155b0 <_ldtoa_r+0x8b4>
   159bc:	67f5                	lui	a5,0x1d
   159be:	b9878793          	addi	a5,a5,-1128 # 1cb98 <etens>
   159c2:	4481                	li	s1,0
   159c4:	e4be                	sd	a5,72(sp)
   159c6:	1b010a13          	addi	s4,sp,432
   159ca:	cbaff06f          	j	14e84 <_ldtoa_r+0x188>
   159ce:	0ad8                	addi	a4,sp,340
   159d0:	1a5c                	addi	a5,sp,308
   159d2:	0007d503          	lhu	a0,0(a5)
   159d6:	00075583          	lhu	a1,0(a4)
   159da:	0789                	addi	a5,a5,2
   159dc:	0709                	addi	a4,a4,2
   159de:	04b51063          	bne	a0,a1,15a1e <_ldtoa_r+0xd22>
   159e2:	14a10593          	addi	a1,sp,330
   159e6:	feb796e3          	bne	a5,a1,159d2 <_ldtoa_r+0xcd6>
   159ea:	13015703          	lhu	a4,304(sp)
   159ee:	15015783          	lhu	a5,336(sp)
   159f2:	02f70c63          	beq	a4,a5,15a2a <_ldtoa_r+0xd2e>
   159f6:	87a2                	mv	a5,s0
   159f8:	1258                	addi	a4,sp,292
   159fa:	0789                	addi	a5,a5,2
   159fc:	fe079f23          	sh	zero,-2(a5)
   15a00:	fee79de3          	bne	a5,a4,159fa <_ldtoa_r+0xcfe>
   15a04:	b675                	j	155b0 <_ldtoa_r+0x8b4>
   15a06:	66f5                	lui	a3,0x1d
   15a08:	6585                	lui	a1,0x1
   15a0a:	6575                	lui	a0,0x1d
   15a0c:	9d068693          	addi	a3,a3,-1584 # 1c9d0 <zeroes.0+0x40>
   15a10:	4601                	li	a2,0
   15a12:	b6e58593          	addi	a1,a1,-1170 # b6e <exit-0xf57a>
   15a16:	9e850513          	addi	a0,a0,-1560 # 1c9e8 <zeroes.0+0x58>
   15a1a:	7a7030ef          	jal	ra,199c0 <__assert_func>
   15a1e:	04a5ec63          	bltu	a1,a0,15a76 <_ldtoa_r+0xd7a>
   15a22:	4581                	li	a1,0
   15a24:	12bc                	addi	a5,sp,360
   15a26:	02b8                	addi	a4,sp,328
   15a28:	b389                	j	1576a <_ldtoa_r+0xa6e>
   15a2a:	8736                	mv	a4,a3
   15a2c:	e689                	bnez	a3,15a36 <_ldtoa_r+0xd3a>
   15a2e:	15611783          	lh	a5,342(sp)
   15a32:	0807db63          	bgez	a5,15ac8 <_ldtoa_r+0xdcc>
   15a36:	15210713          	addi	a4,sp,338
   15a3a:	12bc                	addi	a5,sp,360
   15a3c:	00075583          	lhu	a1,0(a4)
   15a40:	e1e9                	bnez	a1,15b02 <_ldtoa_r+0xe06>
   15a42:	0709                	addi	a4,a4,2
   15a44:	fee79ce3          	bne	a5,a4,15a3c <_ldtoa_r+0xd40>
   15a48:	14c11923          	sh	a2,338(sp)
   15a4c:	b38d                	j	157ae <_ldtoa_r+0xab2>
   15a4e:	4501                	li	a0,0
   15a50:	13210e13          	addi	t3,sp,306
   15a54:	0007de83          	lhu	t4,0(a5)
   15a58:	00075603          	lhu	a2,0(a4)
   15a5c:	17f9                	addi	a5,a5,-2
   15a5e:	1779                	addi	a4,a4,-2
   15a60:	9676                	add	a2,a2,t4
   15a62:	962a                	add	a2,a2,a0
   15a64:	01065513          	srli	a0,a2,0x10
   15a68:	00c79123          	sh	a2,2(a5)
   15a6c:	8905                	andi	a0,a0,1
   15a6e:	ffc713e3          	bne	a4,t3,15a54 <_ldtoa_r+0xd58>
   15a72:	4601                	li	a2,0
   15a74:	b33d                	j	157a2 <_ldtoa_r+0xaa6>
   15a76:	864a                	mv	a2,s2
   15a78:	0a98                	addi	a4,sp,336
   15a7a:	12bc                	addi	a5,sp,360
   15a7c:	00075583          	lhu	a1,0(a4)
   15a80:	0709                	addi	a4,a4,2
   15a82:	0609                	addi	a2,a2,2
   15a84:	feb61f23          	sh	a1,-2(a2)
   15a88:	fef71ae3          	bne	a4,a5,15a7c <_ldtoa_r+0xd80>
   15a8c:	18011423          	sh	zero,392(sp)
   15a90:	0a8c                	addi	a1,sp,336
   15a92:	1a10                	addi	a2,sp,304
   15a94:	02b8                	addi	a4,sp,328
   15a96:	00065503          	lhu	a0,0(a2)
   15a9a:	0609                	addi	a2,a2,2
   15a9c:	0589                	addi	a1,a1,2
   15a9e:	fea59f23          	sh	a0,-2(a1)
   15aa2:	fee61ae3          	bne	a2,a4,15a96 <_ldtoa_r+0xd9a>
   15aa6:	16011423          	sh	zero,360(sp)
   15aaa:	1a10                	addi	a2,sp,304
   15aac:	85ca                	mv	a1,s2
   15aae:	0328                	addi	a0,sp,392
   15ab0:	0005de03          	lhu	t3,0(a1)
   15ab4:	0589                	addi	a1,a1,2
   15ab6:	0609                	addi	a2,a2,2
   15ab8:	ffc61f23          	sh	t3,-2(a2)
   15abc:	fea59ae3          	bne	a1,a0,15ab0 <_ldtoa_r+0xdb4>
   15ac0:	14011423          	sh	zero,328(sp)
   15ac4:	4581                	li	a1,0
   15ac6:	b155                	j	1576a <_ldtoa_r+0xa6e>
   15ac8:	12b4                	addi	a3,sp,360
   15aca:	15210513          	addi	a0,sp,338
   15ace:	0006d783          	lhu	a5,0(a3)
   15ad2:	00f7d613          	srli	a2,a5,0xf
   15ad6:	c219                	beqz	a2,15adc <_ldtoa_r+0xde0>
   15ad8:	00176713          	ori	a4,a4,1
   15adc:	0017979b          	slliw	a5,a5,0x1
   15ae0:	17c2                	slli	a5,a5,0x30
   15ae2:	00277613          	andi	a2,a4,2
   15ae6:	93c1                	srli	a5,a5,0x30
   15ae8:	c219                	beqz	a2,15aee <_ldtoa_r+0xdf2>
   15aea:	0017e793          	ori	a5,a5,1
   15aee:	0017171b          	slliw	a4,a4,0x1
   15af2:	00f69023          	sh	a5,0(a3)
   15af6:	1742                	slli	a4,a4,0x30
   15af8:	16f9                	addi	a3,a3,-2
   15afa:	9341                	srli	a4,a4,0x30
   15afc:	fca699e3          	bne	a3,a0,15ace <_ldtoa_r+0xdd2>
   15b00:	b17d                	j	157ae <_ldtoa_r+0xab2>
   15b02:	00168613          	addi	a2,a3,1
   15b06:	14c11923          	sh	a2,338(sp)
   15b0a:	b155                	j	157ae <_ldtoa_r+0xab2>

0000000000015b0c <_ldcheck>:
   15b0c:	6118                	ld	a4,0(a0)
   15b0e:	651c                	ld	a5,8(a0)
   15b10:	7139                	addi	sp,sp,-64
   15b12:	850a                	mv	a0,sp
   15b14:	080c                	addi	a1,sp,16
   15b16:	e03a                	sd	a4,0(sp)
   15b18:	e43e                	sd	a5,8(sp)
   15b1a:	fc06                	sd	ra,56(sp)
   15b1c:	945fe0ef          	jal	ra,14460 <e113toe.isra.0>
   15b20:	02215783          	lhu	a5,34(sp)
   15b24:	4501                	li	a0,0
   15b26:	fff7c793          	not	a5,a5
   15b2a:	03179713          	slli	a4,a5,0x31
   15b2e:	eb19                	bnez	a4,15b44 <_ldcheck+0x38>
   15b30:	081c                	addi	a5,sp,16
   15b32:	02210693          	addi	a3,sp,34
   15b36:	0007d703          	lhu	a4,0(a5)
   15b3a:	0789                	addi	a5,a5,2
   15b3c:	e719                	bnez	a4,15b4a <_ldcheck+0x3e>
   15b3e:	fed79ce3          	bne	a5,a3,15b36 <_ldcheck+0x2a>
   15b42:	4509                	li	a0,2
   15b44:	70e2                	ld	ra,56(sp)
   15b46:	6121                	addi	sp,sp,64
   15b48:	8082                	ret
   15b4a:	4505                	li	a0,1
   15b4c:	bfe5                	j	15b44 <_ldcheck+0x38>

0000000000015b4e <__localeconv_l>:
   15b4e:	10050513          	addi	a0,a0,256
   15b52:	8082                	ret

0000000000015b54 <_localeconv_r>:
   15b54:	55818513          	addi	a0,gp,1368 # 1f650 <__global_locale+0x100>
   15b58:	8082                	ret

0000000000015b5a <localeconv>:
   15b5a:	55818513          	addi	a0,gp,1368 # 1f650 <__global_locale+0x100>
   15b5e:	8082                	ret

0000000000015b60 <_lseek_r>:
   15b60:	1101                	addi	sp,sp,-32
   15b62:	872e                	mv	a4,a1
   15b64:	e822                	sd	s0,16(sp)
   15b66:	e426                	sd	s1,8(sp)
   15b68:	85b2                	mv	a1,a2
   15b6a:	842a                	mv	s0,a0
   15b6c:	8636                	mv	a2,a3
   15b6e:	853a                	mv	a0,a4
   15b70:	ec06                	sd	ra,24(sp)
   15b72:	6801a423          	sw	zero,1672(gp) # 1f780 <errno>
   15b76:	532050ef          	jal	ra,1b0a8 <_lseek>
   15b7a:	57fd                	li	a5,-1
   15b7c:	00f50763          	beq	a0,a5,15b8a <_lseek_r+0x2a>
   15b80:	60e2                	ld	ra,24(sp)
   15b82:	6442                	ld	s0,16(sp)
   15b84:	64a2                	ld	s1,8(sp)
   15b86:	6105                	addi	sp,sp,32
   15b88:	8082                	ret
   15b8a:	6881a783          	lw	a5,1672(gp) # 1f780 <errno>
   15b8e:	dbed                	beqz	a5,15b80 <_lseek_r+0x20>
   15b90:	60e2                	ld	ra,24(sp)
   15b92:	c01c                	sw	a5,0(s0)
   15b94:	6442                	ld	s0,16(sp)
   15b96:	64a2                	ld	s1,8(sp)
   15b98:	6105                	addi	sp,sp,32
   15b9a:	8082                	ret

0000000000015b9c <__smakebuf_r>:
   15b9c:	0105d783          	lhu	a5,16(a1)
   15ba0:	7135                	addi	sp,sp,-160
   15ba2:	e922                	sd	s0,144(sp)
   15ba4:	ed06                	sd	ra,152(sp)
   15ba6:	e526                	sd	s1,136(sp)
   15ba8:	e14a                	sd	s2,128(sp)
   15baa:	fcce                	sd	s3,120(sp)
   15bac:	f8d2                	sd	s4,112(sp)
   15bae:	0027f713          	andi	a4,a5,2
   15bb2:	842e                	mv	s0,a1
   15bb4:	cf19                	beqz	a4,15bd2 <__smakebuf_r+0x36>
   15bb6:	07758793          	addi	a5,a1,119
   15bba:	e19c                	sd	a5,0(a1)
   15bbc:	ed9c                	sd	a5,24(a1)
   15bbe:	4785                	li	a5,1
   15bc0:	d19c                	sw	a5,32(a1)
   15bc2:	60ea                	ld	ra,152(sp)
   15bc4:	644a                	ld	s0,144(sp)
   15bc6:	64aa                	ld	s1,136(sp)
   15bc8:	690a                	ld	s2,128(sp)
   15bca:	79e6                	ld	s3,120(sp)
   15bcc:	7a46                	ld	s4,112(sp)
   15bce:	610d                	addi	sp,sp,160
   15bd0:	8082                	ret
   15bd2:	01259583          	lh	a1,18(a1)
   15bd6:	84aa                	mv	s1,a0
   15bd8:	0605c863          	bltz	a1,15c48 <__smakebuf_r+0xac>
   15bdc:	0030                	addi	a2,sp,8
   15bde:	062040ef          	jal	ra,19c40 <_fstat_r>
   15be2:	06054163          	bltz	a0,15c44 <__smakebuf_r+0xa8>
   15be6:	4932                	lw	s2,12(sp)
   15be8:	67bd                	lui	a5,0xf
   15bea:	6985                	lui	s3,0x1
   15bec:	00f97933          	and	s2,s2,a5
   15bf0:	6789                	lui	a5,0x2
   15bf2:	40f90933          	sub	s2,s2,a5
   15bf6:	00193913          	seqz	s2,s2
   15bfa:	40000a13          	li	s4,1024
   15bfe:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf8e8>
   15c02:	85d2                	mv	a1,s4
   15c04:	8526                	mv	a0,s1
   15c06:	b6ffa0ef          	jal	ra,10774 <_malloc_r>
   15c0a:	01041783          	lh	a5,16(s0)
   15c0e:	c939                	beqz	a0,15c64 <__smakebuf_r+0xc8>
   15c10:	6741                	lui	a4,0x10
   15c12:	36c70713          	addi	a4,a4,876 # 1036c <_cleanup_r>
   15c16:	ecb8                	sd	a4,88(s1)
   15c18:	0807e793          	ori	a5,a5,128
   15c1c:	00f41823          	sh	a5,16(s0)
   15c20:	e008                	sd	a0,0(s0)
   15c22:	ec08                	sd	a0,24(s0)
   15c24:	03442023          	sw	s4,32(s0)
   15c28:	06091163          	bnez	s2,15c8a <__smakebuf_r+0xee>
   15c2c:	0137e7b3          	or	a5,a5,s3
   15c30:	60ea                	ld	ra,152(sp)
   15c32:	00f41823          	sh	a5,16(s0)
   15c36:	644a                	ld	s0,144(sp)
   15c38:	64aa                	ld	s1,136(sp)
   15c3a:	690a                	ld	s2,128(sp)
   15c3c:	79e6                	ld	s3,120(sp)
   15c3e:	7a46                	ld	s4,112(sp)
   15c40:	610d                	addi	sp,sp,160
   15c42:	8082                	ret
   15c44:	01045783          	lhu	a5,16(s0)
   15c48:	0807f793          	andi	a5,a5,128
   15c4c:	4901                	li	s2,0
   15c4e:	cb95                	beqz	a5,15c82 <__smakebuf_r+0xe6>
   15c50:	04000a13          	li	s4,64
   15c54:	85d2                	mv	a1,s4
   15c56:	8526                	mv	a0,s1
   15c58:	b1dfa0ef          	jal	ra,10774 <_malloc_r>
   15c5c:	01041783          	lh	a5,16(s0)
   15c60:	4981                	li	s3,0
   15c62:	f55d                	bnez	a0,15c10 <__smakebuf_r+0x74>
   15c64:	2007f713          	andi	a4,a5,512
   15c68:	ff29                	bnez	a4,15bc2 <__smakebuf_r+0x26>
   15c6a:	9bf1                	andi	a5,a5,-4
   15c6c:	0027e793          	ori	a5,a5,2
   15c70:	07740713          	addi	a4,s0,119
   15c74:	00f41823          	sh	a5,16(s0)
   15c78:	4785                	li	a5,1
   15c7a:	e018                	sd	a4,0(s0)
   15c7c:	ec18                	sd	a4,24(s0)
   15c7e:	d01c                	sw	a5,32(s0)
   15c80:	b789                	j	15bc2 <__smakebuf_r+0x26>
   15c82:	40000a13          	li	s4,1024
   15c86:	4981                	li	s3,0
   15c88:	bfad                	j	15c02 <__smakebuf_r+0x66>
   15c8a:	01241583          	lh	a1,18(s0)
   15c8e:	8526                	mv	a0,s1
   15c90:	7eb030ef          	jal	ra,19c7a <_isatty_r>
   15c94:	e501                	bnez	a0,15c9c <__smakebuf_r+0x100>
   15c96:	01041783          	lh	a5,16(s0)
   15c9a:	bf49                	j	15c2c <__smakebuf_r+0x90>
   15c9c:	01045783          	lhu	a5,16(s0)
   15ca0:	9bf1                	andi	a5,a5,-4
   15ca2:	0017e793          	ori	a5,a5,1
   15ca6:	0107979b          	slliw	a5,a5,0x10
   15caa:	4107d79b          	sraiw	a5,a5,0x10
   15cae:	bfbd                	j	15c2c <__smakebuf_r+0x90>

0000000000015cb0 <__swhatbuf_r>:
   15cb0:	7175                	addi	sp,sp,-144
   15cb2:	e122                	sd	s0,128(sp)
   15cb4:	842e                	mv	s0,a1
   15cb6:	01259583          	lh	a1,18(a1)
   15cba:	fca6                	sd	s1,120(sp)
   15cbc:	f8ca                	sd	s2,112(sp)
   15cbe:	e506                	sd	ra,136(sp)
   15cc0:	84b2                	mv	s1,a2
   15cc2:	8936                	mv	s2,a3
   15cc4:	0205cc63          	bltz	a1,15cfc <__swhatbuf_r+0x4c>
   15cc8:	0030                	addi	a2,sp,8
   15cca:	777030ef          	jal	ra,19c40 <_fstat_r>
   15cce:	02054763          	bltz	a0,15cfc <__swhatbuf_r+0x4c>
   15cd2:	47b2                	lw	a5,12(sp)
   15cd4:	673d                	lui	a4,0xf
   15cd6:	60aa                	ld	ra,136(sp)
   15cd8:	8ff9                	and	a5,a5,a4
   15cda:	6709                	lui	a4,0x2
   15cdc:	8f99                	sub	a5,a5,a4
   15cde:	640a                	ld	s0,128(sp)
   15ce0:	0017b793          	seqz	a5,a5
   15ce4:	00f92023          	sw	a5,0(s2)
   15ce8:	40000713          	li	a4,1024
   15cec:	e098                	sd	a4,0(s1)
   15cee:	6505                	lui	a0,0x1
   15cf0:	74e6                	ld	s1,120(sp)
   15cf2:	7946                	ld	s2,112(sp)
   15cf4:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8e8>
   15cf8:	6149                	addi	sp,sp,144
   15cfa:	8082                	ret
   15cfc:	01045783          	lhu	a5,16(s0)
   15d00:	0807f793          	andi	a5,a5,128
   15d04:	cf91                	beqz	a5,15d20 <__swhatbuf_r+0x70>
   15d06:	60aa                	ld	ra,136(sp)
   15d08:	640a                	ld	s0,128(sp)
   15d0a:	4781                	li	a5,0
   15d0c:	00f92023          	sw	a5,0(s2)
   15d10:	04000713          	li	a4,64
   15d14:	e098                	sd	a4,0(s1)
   15d16:	7946                	ld	s2,112(sp)
   15d18:	74e6                	ld	s1,120(sp)
   15d1a:	4501                	li	a0,0
   15d1c:	6149                	addi	sp,sp,144
   15d1e:	8082                	ret
   15d20:	60aa                	ld	ra,136(sp)
   15d22:	640a                	ld	s0,128(sp)
   15d24:	4781                	li	a5,0
   15d26:	00f92023          	sw	a5,0(s2)
   15d2a:	40000713          	li	a4,1024
   15d2e:	e098                	sd	a4,0(s1)
   15d30:	7946                	ld	s2,112(sp)
   15d32:	74e6                	ld	s1,120(sp)
   15d34:	4501                	li	a0,0
   15d36:	6149                	addi	sp,sp,144
   15d38:	8082                	ret

0000000000015d3a <memmove>:
   15d3a:	02a5f263          	bgeu	a1,a0,15d5e <memmove+0x24>
   15d3e:	00c587b3          	add	a5,a1,a2
   15d42:	00f57e63          	bgeu	a0,a5,15d5e <memmove+0x24>
   15d46:	00c50733          	add	a4,a0,a2
   15d4a:	ca5d                	beqz	a2,15e00 <memmove+0xc6>
   15d4c:	fff7c683          	lbu	a3,-1(a5) # 1fff <exit-0xe0e9>
   15d50:	17fd                	addi	a5,a5,-1
   15d52:	177d                	addi	a4,a4,-1 # 1fff <exit-0xe0e9>
   15d54:	00d70023          	sb	a3,0(a4)
   15d58:	fef59ae3          	bne	a1,a5,15d4c <memmove+0x12>
   15d5c:	8082                	ret
   15d5e:	47fd                	li	a5,31
   15d60:	02c7e163          	bltu	a5,a2,15d82 <memmove+0x48>
   15d64:	87aa                	mv	a5,a0
   15d66:	fff60693          	addi	a3,a2,-1
   15d6a:	c245                	beqz	a2,15e0a <memmove+0xd0>
   15d6c:	0685                	addi	a3,a3,1
   15d6e:	96be                	add	a3,a3,a5
   15d70:	0005c703          	lbu	a4,0(a1)
   15d74:	0785                	addi	a5,a5,1
   15d76:	0585                	addi	a1,a1,1
   15d78:	fee78fa3          	sb	a4,-1(a5)
   15d7c:	fed79ae3          	bne	a5,a3,15d70 <memmove+0x36>
   15d80:	8082                	ret
   15d82:	00b567b3          	or	a5,a0,a1
   15d86:	8b9d                	andi	a5,a5,7
   15d88:	efad                	bnez	a5,15e02 <memmove+0xc8>
   15d8a:	fe060893          	addi	a7,a2,-32
   15d8e:	fe08f893          	andi	a7,a7,-32
   15d92:	02088893          	addi	a7,a7,32
   15d96:	01150833          	add	a6,a0,a7
   15d9a:	872e                	mv	a4,a1
   15d9c:	87aa                	mv	a5,a0
   15d9e:	6314                	ld	a3,0(a4)
   15da0:	02070713          	addi	a4,a4,32
   15da4:	02078793          	addi	a5,a5,32
   15da8:	fed7b023          	sd	a3,-32(a5)
   15dac:	fe873683          	ld	a3,-24(a4)
   15db0:	fed7b423          	sd	a3,-24(a5)
   15db4:	ff073683          	ld	a3,-16(a4)
   15db8:	fed7b823          	sd	a3,-16(a5)
   15dbc:	ff873683          	ld	a3,-8(a4)
   15dc0:	fed7bc23          	sd	a3,-8(a5)
   15dc4:	fcf81de3          	bne	a6,a5,15d9e <memmove+0x64>
   15dc8:	01867713          	andi	a4,a2,24
   15dcc:	95c6                	add	a1,a1,a7
   15dce:	01f67813          	andi	a6,a2,31
   15dd2:	cf0d                	beqz	a4,15e0c <memmove+0xd2>
   15dd4:	872e                	mv	a4,a1
   15dd6:	88be                	mv	a7,a5
   15dd8:	4e1d                	li	t3,7
   15dda:	00073303          	ld	t1,0(a4)
   15dde:	0721                	addi	a4,a4,8
   15de0:	40e806b3          	sub	a3,a6,a4
   15de4:	0068b023          	sd	t1,0(a7)
   15de8:	96ae                	add	a3,a3,a1
   15dea:	08a1                	addi	a7,a7,8
   15dec:	fede67e3          	bltu	t3,a3,15dda <memmove+0xa0>
   15df0:	ff880713          	addi	a4,a6,-8
   15df4:	9b61                	andi	a4,a4,-8
   15df6:	0721                	addi	a4,a4,8
   15df8:	8a1d                	andi	a2,a2,7
   15dfa:	97ba                	add	a5,a5,a4
   15dfc:	95ba                	add	a1,a1,a4
   15dfe:	b7a5                	j	15d66 <memmove+0x2c>
   15e00:	8082                	ret
   15e02:	fff60693          	addi	a3,a2,-1
   15e06:	87aa                	mv	a5,a0
   15e08:	b795                	j	15d6c <memmove+0x32>
   15e0a:	8082                	ret
   15e0c:	8642                	mv	a2,a6
   15e0e:	bfa1                	j	15d66 <memmove+0x2c>

0000000000015e10 <_Balloc>:
   15e10:	7d3c                	ld	a5,120(a0)
   15e12:	1101                	addi	sp,sp,-32
   15e14:	e822                	sd	s0,16(sp)
   15e16:	e426                	sd	s1,8(sp)
   15e18:	ec06                	sd	ra,24(sp)
   15e1a:	e04a                	sd	s2,0(sp)
   15e1c:	842a                	mv	s0,a0
   15e1e:	84ae                	mv	s1,a1
   15e20:	c385                	beqz	a5,15e40 <_Balloc+0x30>
   15e22:	00349713          	slli	a4,s1,0x3
   15e26:	97ba                	add	a5,a5,a4
   15e28:	6388                	ld	a0,0(a5)
   15e2a:	c50d                	beqz	a0,15e54 <_Balloc+0x44>
   15e2c:	6118                	ld	a4,0(a0)
   15e2e:	e398                	sd	a4,0(a5)
   15e30:	00053823          	sd	zero,16(a0)
   15e34:	60e2                	ld	ra,24(sp)
   15e36:	6442                	ld	s0,16(sp)
   15e38:	64a2                	ld	s1,8(sp)
   15e3a:	6902                	ld	s2,0(sp)
   15e3c:	6105                	addi	sp,sp,32
   15e3e:	8082                	ret
   15e40:	04100613          	li	a2,65
   15e44:	45a1                	li	a1,8
   15e46:	3c3030ef          	jal	ra,19a08 <_calloc_r>
   15e4a:	fc28                	sd	a0,120(s0)
   15e4c:	87aa                	mv	a5,a0
   15e4e:	f971                	bnez	a0,15e22 <_Balloc+0x12>
   15e50:	4501                	li	a0,0
   15e52:	b7cd                	j	15e34 <_Balloc+0x24>
   15e54:	4905                	li	s2,1
   15e56:	0099163b          	sllw	a2,s2,s1
   15e5a:	8932                	mv	s2,a2
   15e5c:	061d                	addi	a2,a2,7
   15e5e:	060a                	slli	a2,a2,0x2
   15e60:	4585                	li	a1,1
   15e62:	8522                	mv	a0,s0
   15e64:	3a5030ef          	jal	ra,19a08 <_calloc_r>
   15e68:	d565                	beqz	a0,15e50 <_Balloc+0x40>
   15e6a:	c504                	sw	s1,8(a0)
   15e6c:	01252623          	sw	s2,12(a0)
   15e70:	b7c1                	j	15e30 <_Balloc+0x20>

0000000000015e72 <_Bfree>:
   15e72:	c981                	beqz	a1,15e82 <_Bfree+0x10>
   15e74:	4598                	lw	a4,8(a1)
   15e76:	7d3c                	ld	a5,120(a0)
   15e78:	070e                	slli	a4,a4,0x3
   15e7a:	97ba                	add	a5,a5,a4
   15e7c:	6398                	ld	a4,0(a5)
   15e7e:	e198                	sd	a4,0(a1)
   15e80:	e38c                	sd	a1,0(a5)
   15e82:	8082                	ret

0000000000015e84 <__multadd>:
   15e84:	7179                	addi	sp,sp,-48
   15e86:	ec26                	sd	s1,24(sp)
   15e88:	49c4                	lw	s1,20(a1)
   15e8a:	6341                	lui	t1,0x10
   15e8c:	f022                	sd	s0,32(sp)
   15e8e:	e84a                	sd	s2,16(sp)
   15e90:	e44e                	sd	s3,8(sp)
   15e92:	f406                	sd	ra,40(sp)
   15e94:	e052                	sd	s4,0(sp)
   15e96:	892e                	mv	s2,a1
   15e98:	89aa                	mv	s3,a0
   15e9a:	8436                	mv	s0,a3
   15e9c:	01858813          	addi	a6,a1,24
   15ea0:	4881                	li	a7,0
   15ea2:	137d                	addi	t1,t1,-1 # ffff <exit-0xe9>
   15ea4:	00082783          	lw	a5,0(a6)
   15ea8:	0811                	addi	a6,a6,4
   15eaa:	2885                	addiw	a7,a7,1
   15eac:	0067f733          	and	a4,a5,t1
   15eb0:	02c7073b          	mulw	a4,a4,a2
   15eb4:	0107d69b          	srliw	a3,a5,0x10
   15eb8:	02c686bb          	mulw	a3,a3,a2
   15ebc:	008707bb          	addw	a5,a4,s0
   15ec0:	0107d71b          	srliw	a4,a5,0x10
   15ec4:	00f377b3          	and	a5,t1,a5
   15ec8:	9eb9                	addw	a3,a3,a4
   15eca:	0106971b          	slliw	a4,a3,0x10
   15ece:	9fb9                	addw	a5,a5,a4
   15ed0:	fef82e23          	sw	a5,-4(a6)
   15ed4:	0106d41b          	srliw	s0,a3,0x10
   15ed8:	fc98c6e3          	blt	a7,s1,15ea4 <__multadd+0x20>
   15edc:	cc09                	beqz	s0,15ef6 <__multadd+0x72>
   15ede:	00c92783          	lw	a5,12(s2)
   15ee2:	02f4d363          	bge	s1,a5,15f08 <__multadd+0x84>
   15ee6:	00448793          	addi	a5,s1,4
   15eea:	078a                	slli	a5,a5,0x2
   15eec:	97ca                	add	a5,a5,s2
   15eee:	c780                	sw	s0,8(a5)
   15ef0:	2485                	addiw	s1,s1,1
   15ef2:	00992a23          	sw	s1,20(s2)
   15ef6:	70a2                	ld	ra,40(sp)
   15ef8:	7402                	ld	s0,32(sp)
   15efa:	64e2                	ld	s1,24(sp)
   15efc:	69a2                	ld	s3,8(sp)
   15efe:	6a02                	ld	s4,0(sp)
   15f00:	854a                	mv	a0,s2
   15f02:	6942                	ld	s2,16(sp)
   15f04:	6145                	addi	sp,sp,48
   15f06:	8082                	ret
   15f08:	00892583          	lw	a1,8(s2)
   15f0c:	854e                	mv	a0,s3
   15f0e:	2585                	addiw	a1,a1,1
   15f10:	f01ff0ef          	jal	ra,15e10 <_Balloc>
   15f14:	8a2a                	mv	s4,a0
   15f16:	cd1d                	beqz	a0,15f54 <__multadd+0xd0>
   15f18:	01492603          	lw	a2,20(s2)
   15f1c:	01090593          	addi	a1,s2,16
   15f20:	0541                	addi	a0,a0,16
   15f22:	0609                	addi	a2,a2,2
   15f24:	060a                	slli	a2,a2,0x2
   15f26:	ef5fa0ef          	jal	ra,10e1a <memcpy>
   15f2a:	00892703          	lw	a4,8(s2)
   15f2e:	0789b783          	ld	a5,120(s3)
   15f32:	070e                	slli	a4,a4,0x3
   15f34:	97ba                	add	a5,a5,a4
   15f36:	6398                	ld	a4,0(a5)
   15f38:	00e93023          	sd	a4,0(s2)
   15f3c:	0127b023          	sd	s2,0(a5)
   15f40:	00448793          	addi	a5,s1,4
   15f44:	8952                	mv	s2,s4
   15f46:	078a                	slli	a5,a5,0x2
   15f48:	97ca                	add	a5,a5,s2
   15f4a:	c780                	sw	s0,8(a5)
   15f4c:	2485                	addiw	s1,s1,1
   15f4e:	00992a23          	sw	s1,20(s2)
   15f52:	b755                	j	15ef6 <__multadd+0x72>
   15f54:	66f5                	lui	a3,0x1d
   15f56:	6575                	lui	a0,0x1d
   15f58:	9d068693          	addi	a3,a3,-1584 # 1c9d0 <zeroes.0+0x40>
   15f5c:	4601                	li	a2,0
   15f5e:	0b500593          	li	a1,181
   15f62:	cb850513          	addi	a0,a0,-840 # 1ccb8 <ezero+0x18>
   15f66:	25b030ef          	jal	ra,199c0 <__assert_func>

0000000000015f6a <__s2b>:
   15f6a:	7139                	addi	sp,sp,-64
   15f6c:	f822                	sd	s0,48(sp)
   15f6e:	f426                	sd	s1,40(sp)
   15f70:	f04a                	sd	s2,32(sp)
   15f72:	ec4e                	sd	s3,24(sp)
   15f74:	e852                	sd	s4,16(sp)
   15f76:	84b6                	mv	s1,a3
   15f78:	842e                	mv	s0,a1
   15f7a:	26a1                	addiw	a3,a3,8
   15f7c:	45a5                	li	a1,9
   15f7e:	fc06                	sd	ra,56(sp)
   15f80:	e456                	sd	s5,8(sp)
   15f82:	e05a                	sd	s6,0(sp)
   15f84:	47a5                	li	a5,9
   15f86:	02b6c6bb          	divw	a3,a3,a1
   15f8a:	892a                	mv	s2,a0
   15f8c:	89b2                	mv	s3,a2
   15f8e:	8a3a                	mv	s4,a4
   15f90:	0a97d363          	bge	a5,s1,16036 <__s2b+0xcc>
   15f94:	4785                	li	a5,1
   15f96:	4581                	li	a1,0
   15f98:	0017979b          	slliw	a5,a5,0x1
   15f9c:	2585                	addiw	a1,a1,1
   15f9e:	fed7cde3          	blt	a5,a3,15f98 <__s2b+0x2e>
   15fa2:	854a                	mv	a0,s2
   15fa4:	e6dff0ef          	jal	ra,15e10 <_Balloc>
   15fa8:	85aa                	mv	a1,a0
   15faa:	c941                	beqz	a0,1603a <__s2b+0xd0>
   15fac:	4785                	li	a5,1
   15fae:	c95c                	sw	a5,20(a0)
   15fb0:	01452c23          	sw	s4,24(a0)
   15fb4:	47a5                	li	a5,9
   15fb6:	0737dd63          	bge	a5,s3,16030 <__s2b+0xc6>
   15fba:	02099793          	slli	a5,s3,0x20
   15fbe:	00940b13          	addi	s6,s0,9
   15fc2:	9381                	srli	a5,a5,0x20
   15fc4:	00098a9b          	sext.w	s5,s3
   15fc8:	943e                	add	s0,s0,a5
   15fca:	8a5a                	mv	s4,s6
   15fcc:	000a4683          	lbu	a3,0(s4)
   15fd0:	4629                	li	a2,10
   15fd2:	854a                	mv	a0,s2
   15fd4:	fd06869b          	addiw	a3,a3,-48
   15fd8:	eadff0ef          	jal	ra,15e84 <__multadd>
   15fdc:	0a05                	addi	s4,s4,1
   15fde:	85aa                	mv	a1,a0
   15fe0:	fe8a16e3          	bne	s4,s0,15fcc <__s2b+0x62>
   15fe4:	3ae1                	addiw	s5,s5,-8
   15fe6:	1a82                	slli	s5,s5,0x20
   15fe8:	020ada93          	srli	s5,s5,0x20
   15fec:	015b0433          	add	s0,s6,s5
   15ff0:	0299d563          	bge	s3,s1,1601a <__s2b+0xb0>
   15ff4:	34fd                	addiw	s1,s1,-1
   15ff6:	413484bb          	subw	s1,s1,s3
   15ffa:	1482                	slli	s1,s1,0x20
   15ffc:	9081                	srli	s1,s1,0x20
   15ffe:	0485                	addi	s1,s1,1
   16000:	94a2                	add	s1,s1,s0
   16002:	00044683          	lbu	a3,0(s0)
   16006:	4629                	li	a2,10
   16008:	854a                	mv	a0,s2
   1600a:	fd06869b          	addiw	a3,a3,-48
   1600e:	e77ff0ef          	jal	ra,15e84 <__multadd>
   16012:	0405                	addi	s0,s0,1
   16014:	85aa                	mv	a1,a0
   16016:	fe9416e3          	bne	s0,s1,16002 <__s2b+0x98>
   1601a:	70e2                	ld	ra,56(sp)
   1601c:	7442                	ld	s0,48(sp)
   1601e:	74a2                	ld	s1,40(sp)
   16020:	7902                	ld	s2,32(sp)
   16022:	69e2                	ld	s3,24(sp)
   16024:	6a42                	ld	s4,16(sp)
   16026:	6aa2                	ld	s5,8(sp)
   16028:	6b02                	ld	s6,0(sp)
   1602a:	852e                	mv	a0,a1
   1602c:	6121                	addi	sp,sp,64
   1602e:	8082                	ret
   16030:	0429                	addi	s0,s0,10
   16032:	49a5                	li	s3,9
   16034:	bf75                	j	15ff0 <__s2b+0x86>
   16036:	4581                	li	a1,0
   16038:	b7ad                	j	15fa2 <__s2b+0x38>
   1603a:	66f5                	lui	a3,0x1d
   1603c:	6575                	lui	a0,0x1d
   1603e:	9d068693          	addi	a3,a3,-1584 # 1c9d0 <zeroes.0+0x40>
   16042:	4601                	li	a2,0
   16044:	0ce00593          	li	a1,206
   16048:	cb850513          	addi	a0,a0,-840 # 1ccb8 <ezero+0x18>
   1604c:	175030ef          	jal	ra,199c0 <__assert_func>

0000000000016050 <__hi0bits>:
   16050:	7741                	lui	a4,0xffff0
   16052:	8f69                	and	a4,a4,a0
   16054:	87aa                	mv	a5,a0
   16056:	4501                	li	a0,0
   16058:	e701                	bnez	a4,16060 <__hi0bits+0x10>
   1605a:	0107979b          	slliw	a5,a5,0x10
   1605e:	4541                	li	a0,16
   16060:	ff000737          	lui	a4,0xff000
   16064:	8f7d                	and	a4,a4,a5
   16066:	e701                	bnez	a4,1606e <__hi0bits+0x1e>
   16068:	0087979b          	slliw	a5,a5,0x8
   1606c:	2521                	addiw	a0,a0,8
   1606e:	f0000737          	lui	a4,0xf0000
   16072:	8f7d                	and	a4,a4,a5
   16074:	e701                	bnez	a4,1607c <__hi0bits+0x2c>
   16076:	0047979b          	slliw	a5,a5,0x4
   1607a:	2511                	addiw	a0,a0,4
   1607c:	c0000737          	lui	a4,0xc0000
   16080:	8f7d                	and	a4,a4,a5
   16082:	e701                	bnez	a4,1608a <__hi0bits+0x3a>
   16084:	0027979b          	slliw	a5,a5,0x2
   16088:	2509                	addiw	a0,a0,2
   1608a:	0007c663          	bltz	a5,16096 <__hi0bits+0x46>
   1608e:	83f9                	srli	a5,a5,0x1e
   16090:	8b85                	andi	a5,a5,1
   16092:	2505                	addiw	a0,a0,1
   16094:	c391                	beqz	a5,16098 <__hi0bits+0x48>
   16096:	8082                	ret
   16098:	02000513          	li	a0,32
   1609c:	8082                	ret

000000000001609e <__lo0bits>:
   1609e:	411c                	lw	a5,0(a0)
   160a0:	872a                	mv	a4,a0
   160a2:	0077f693          	andi	a3,a5,7
   160a6:	863e                	mv	a2,a5
   160a8:	ce81                	beqz	a3,160c0 <__lo0bits+0x22>
   160aa:	0017f693          	andi	a3,a5,1
   160ae:	4501                	li	a0,0
   160b0:	ee9d                	bnez	a3,160ee <__lo0bits+0x50>
   160b2:	8a09                	andi	a2,a2,2
   160b4:	ce25                	beqz	a2,1612c <__lo0bits+0x8e>
   160b6:	0017d79b          	srliw	a5,a5,0x1
   160ba:	c31c                	sw	a5,0(a4)
   160bc:	4505                	li	a0,1
   160be:	8082                	ret
   160c0:	03079693          	slli	a3,a5,0x30
   160c4:	92c1                	srli	a3,a3,0x30
   160c6:	4501                	li	a0,0
   160c8:	cab9                	beqz	a3,1611e <__lo0bits+0x80>
   160ca:	0ff7f693          	zext.b	a3,a5
   160ce:	c2a9                	beqz	a3,16110 <__lo0bits+0x72>
   160d0:	00f7f693          	andi	a3,a5,15
   160d4:	c69d                	beqz	a3,16102 <__lo0bits+0x64>
   160d6:	0037f693          	andi	a3,a5,3
   160da:	ce89                	beqz	a3,160f4 <__lo0bits+0x56>
   160dc:	0017f693          	andi	a3,a5,1
   160e0:	ea81                	bnez	a3,160f0 <__lo0bits+0x52>
   160e2:	0017d79b          	srliw	a5,a5,0x1
   160e6:	2505                	addiw	a0,a0,1
   160e8:	e781                	bnez	a5,160f0 <__lo0bits+0x52>
   160ea:	02000513          	li	a0,32
   160ee:	8082                	ret
   160f0:	c31c                	sw	a5,0(a4)
   160f2:	8082                	ret
   160f4:	0027d79b          	srliw	a5,a5,0x2
   160f8:	0017f693          	andi	a3,a5,1
   160fc:	2509                	addiw	a0,a0,2
   160fe:	faed                	bnez	a3,160f0 <__lo0bits+0x52>
   16100:	b7cd                	j	160e2 <__lo0bits+0x44>
   16102:	0047d79b          	srliw	a5,a5,0x4
   16106:	0037f693          	andi	a3,a5,3
   1610a:	2511                	addiw	a0,a0,4
   1610c:	fae1                	bnez	a3,160dc <__lo0bits+0x3e>
   1610e:	b7dd                	j	160f4 <__lo0bits+0x56>
   16110:	0087d79b          	srliw	a5,a5,0x8
   16114:	00f7f693          	andi	a3,a5,15
   16118:	2521                	addiw	a0,a0,8
   1611a:	fed5                	bnez	a3,160d6 <__lo0bits+0x38>
   1611c:	b7dd                	j	16102 <__lo0bits+0x64>
   1611e:	0107d79b          	srliw	a5,a5,0x10
   16122:	0ff7f693          	zext.b	a3,a5
   16126:	4541                	li	a0,16
   16128:	f6c5                	bnez	a3,160d0 <__lo0bits+0x32>
   1612a:	b7dd                	j	16110 <__lo0bits+0x72>
   1612c:	0027d79b          	srliw	a5,a5,0x2
   16130:	c31c                	sw	a5,0(a4)
   16132:	4509                	li	a0,2
   16134:	8082                	ret

0000000000016136 <__i2b>:
   16136:	7d3c                	ld	a5,120(a0)
   16138:	1101                	addi	sp,sp,-32
   1613a:	e822                	sd	s0,16(sp)
   1613c:	e426                	sd	s1,8(sp)
   1613e:	ec06                	sd	ra,24(sp)
   16140:	842a                	mv	s0,a0
   16142:	84ae                	mv	s1,a1
   16144:	cf91                	beqz	a5,16160 <__i2b+0x2a>
   16146:	6788                	ld	a0,8(a5)
   16148:	cd1d                	beqz	a0,16186 <__i2b+0x50>
   1614a:	6118                	ld	a4,0(a0)
   1614c:	e798                	sd	a4,8(a5)
   1614e:	60e2                	ld	ra,24(sp)
   16150:	6442                	ld	s0,16(sp)
   16152:	4785                	li	a5,1
   16154:	1782                	slli	a5,a5,0x20
   16156:	cd04                	sw	s1,24(a0)
   16158:	e91c                	sd	a5,16(a0)
   1615a:	64a2                	ld	s1,8(sp)
   1615c:	6105                	addi	sp,sp,32
   1615e:	8082                	ret
   16160:	04100613          	li	a2,65
   16164:	45a1                	li	a1,8
   16166:	0a3030ef          	jal	ra,19a08 <_calloc_r>
   1616a:	fc28                	sd	a0,120(s0)
   1616c:	87aa                	mv	a5,a0
   1616e:	fd61                	bnez	a0,16146 <__i2b+0x10>
   16170:	66f5                	lui	a3,0x1d
   16172:	6575                	lui	a0,0x1d
   16174:	9d068693          	addi	a3,a3,-1584 # 1c9d0 <zeroes.0+0x40>
   16178:	4601                	li	a2,0
   1617a:	14000593          	li	a1,320
   1617e:	cb850513          	addi	a0,a0,-840 # 1ccb8 <ezero+0x18>
   16182:	03f030ef          	jal	ra,199c0 <__assert_func>
   16186:	02400613          	li	a2,36
   1618a:	4585                	li	a1,1
   1618c:	8522                	mv	a0,s0
   1618e:	07b030ef          	jal	ra,19a08 <_calloc_r>
   16192:	dd79                	beqz	a0,16170 <__i2b+0x3a>
   16194:	4785                	li	a5,1
   16196:	1786                	slli	a5,a5,0x21
   16198:	0785                	addi	a5,a5,1
   1619a:	e51c                	sd	a5,8(a0)
   1619c:	bf4d                	j	1614e <__i2b+0x18>

000000000001619e <__multiply>:
   1619e:	7179                	addi	sp,sp,-48
   161a0:	e84a                	sd	s2,16(sp)
   161a2:	e44e                	sd	s3,8(sp)
   161a4:	01462903          	lw	s2,20(a2)
   161a8:	0145a983          	lw	s3,20(a1)
   161ac:	ec26                	sd	s1,24(sp)
   161ae:	e052                	sd	s4,0(sp)
   161b0:	f406                	sd	ra,40(sp)
   161b2:	f022                	sd	s0,32(sp)
   161b4:	8a2e                	mv	s4,a1
   161b6:	84b2                	mv	s1,a2
   161b8:	0129c763          	blt	s3,s2,161c6 <__multiply+0x28>
   161bc:	87ca                	mv	a5,s2
   161be:	84ae                	mv	s1,a1
   161c0:	894e                	mv	s2,s3
   161c2:	8a32                	mv	s4,a2
   161c4:	89be                	mv	s3,a5
   161c6:	44dc                	lw	a5,12(s1)
   161c8:	0139043b          	addw	s0,s2,s3
   161cc:	448c                	lw	a1,8(s1)
   161ce:	0087d363          	bge	a5,s0,161d4 <__multiply+0x36>
   161d2:	2585                	addiw	a1,a1,1
   161d4:	c3dff0ef          	jal	ra,15e10 <_Balloc>
   161d8:	14050b63          	beqz	a0,1632e <__multiply+0x190>
   161dc:	01850313          	addi	t1,a0,24
   161e0:	00241893          	slli	a7,s0,0x2
   161e4:	989a                	add	a7,a7,t1
   161e6:	879a                	mv	a5,t1
   161e8:	01137763          	bgeu	t1,a7,161f6 <__multiply+0x58>
   161ec:	0007a023          	sw	zero,0(a5)
   161f0:	0791                	addi	a5,a5,4
   161f2:	ff17ede3          	bltu	a5,a7,161ec <__multiply+0x4e>
   161f6:	018a0813          	addi	a6,s4,24
   161fa:	00299e13          	slli	t3,s3,0x2
   161fe:	01848e93          	addi	t4,s1,24
   16202:	00291593          	slli	a1,s2,0x2
   16206:	9e42                	add	t3,t3,a6
   16208:	95f6                	add	a1,a1,t4
   1620a:	0fc87963          	bgeu	a6,t3,162fc <__multiply+0x15e>
   1620e:	01948793          	addi	a5,s1,25
   16212:	4f11                	li	t5,4
   16214:	10f5f663          	bgeu	a1,a5,16320 <__multiply+0x182>
   16218:	66c1                	lui	a3,0x10
   1621a:	16fd                	addi	a3,a3,-1 # ffff <exit-0xe9>
   1621c:	a809                	j	1622e <__multiply+0x90>
   1621e:	0102d29b          	srliw	t0,t0,0x10
   16222:	06029b63          	bnez	t0,16298 <__multiply+0xfa>
   16226:	0811                	addi	a6,a6,4
   16228:	0311                	addi	t1,t1,4
   1622a:	0dc87963          	bgeu	a6,t3,162fc <__multiply+0x15e>
   1622e:	00082283          	lw	t0,0(a6)
   16232:	00d2f3b3          	and	t2,t0,a3
   16236:	fe0384e3          	beqz	t2,1621e <__multiply+0x80>
   1623a:	829a                	mv	t0,t1
   1623c:	8ff6                	mv	t6,t4
   1623e:	4481                	li	s1,0
   16240:	000fa703          	lw	a4,0(t6)
   16244:	0002a603          	lw	a2,0(t0) # 10f92 <memset+0x90>
   16248:	0291                	addi	t0,t0,4
   1624a:	00d777b3          	and	a5,a4,a3
   1624e:	027787bb          	mulw	a5,a5,t2
   16252:	0107571b          	srliw	a4,a4,0x10
   16256:	00d67933          	and	s2,a2,a3
   1625a:	0106561b          	srliw	a2,a2,0x10
   1625e:	0f91                	addi	t6,t6,4
   16260:	0277073b          	mulw	a4,a4,t2
   16264:	012787bb          	addw	a5,a5,s2
   16268:	9fa5                	addw	a5,a5,s1
   1626a:	0107d49b          	srliw	s1,a5,0x10
   1626e:	8ff5                	and	a5,a5,a3
   16270:	9f31                	addw	a4,a4,a2
   16272:	9f25                	addw	a4,a4,s1
   16274:	0107161b          	slliw	a2,a4,0x10
   16278:	8fd1                	or	a5,a5,a2
   1627a:	fef2ae23          	sw	a5,-4(t0)
   1627e:	0107549b          	srliw	s1,a4,0x10
   16282:	fabfefe3          	bltu	t6,a1,16240 <__multiply+0xa2>
   16286:	01e307b3          	add	a5,t1,t5
   1628a:	c384                	sw	s1,0(a5)
   1628c:	00082283          	lw	t0,0(a6)
   16290:	0102d29b          	srliw	t0,t0,0x10
   16294:	f80289e3          	beqz	t0,16226 <__multiply+0x88>
   16298:	00032603          	lw	a2,0(t1)
   1629c:	839a                	mv	t2,t1
   1629e:	8ff6                	mv	t6,t4
   162a0:	84b2                	mv	s1,a2
   162a2:	4701                	li	a4,0
   162a4:	000fa783          	lw	a5,0(t6)
   162a8:	0104d99b          	srliw	s3,s1,0x10
   162ac:	8e75                	and	a2,a2,a3
   162ae:	8ff5                	and	a5,a5,a3
   162b0:	025787bb          	mulw	a5,a5,t0
   162b4:	0043a483          	lw	s1,4(t2)
   162b8:	0391                	addi	t2,t2,4
   162ba:	0f91                	addi	t6,t6,4
   162bc:	00d4f933          	and	s2,s1,a3
   162c0:	013787bb          	addw	a5,a5,s3
   162c4:	9fb9                	addw	a5,a5,a4
   162c6:	0107971b          	slliw	a4,a5,0x10
   162ca:	8e59                	or	a2,a2,a4
   162cc:	fec3ae23          	sw	a2,-4(t2)
   162d0:	ffefd703          	lhu	a4,-2(t6)
   162d4:	0107d79b          	srliw	a5,a5,0x10
   162d8:	0257073b          	mulw	a4,a4,t0
   162dc:	0127073b          	addw	a4,a4,s2
   162e0:	9fb9                	addw	a5,a5,a4
   162e2:	0007861b          	sext.w	a2,a5
   162e6:	0107d71b          	srliw	a4,a5,0x10
   162ea:	fabfede3          	bltu	t6,a1,162a4 <__multiply+0x106>
   162ee:	01e307b3          	add	a5,t1,t5
   162f2:	c390                	sw	a2,0(a5)
   162f4:	0811                	addi	a6,a6,4
   162f6:	0311                	addi	t1,t1,4
   162f8:	f3c86be3          	bltu	a6,t3,1622e <__multiply+0x90>
   162fc:	00804563          	bgtz	s0,16306 <__multiply+0x168>
   16300:	a039                	j	1630e <__multiply+0x170>
   16302:	347d                	addiw	s0,s0,-1
   16304:	c409                	beqz	s0,1630e <__multiply+0x170>
   16306:	ffc8a783          	lw	a5,-4(a7)
   1630a:	18f1                	addi	a7,a7,-4
   1630c:	dbfd                	beqz	a5,16302 <__multiply+0x164>
   1630e:	70a2                	ld	ra,40(sp)
   16310:	c940                	sw	s0,20(a0)
   16312:	7402                	ld	s0,32(sp)
   16314:	64e2                	ld	s1,24(sp)
   16316:	6942                	ld	s2,16(sp)
   16318:	69a2                	ld	s3,8(sp)
   1631a:	6a02                	ld	s4,0(sp)
   1631c:	6145                	addi	sp,sp,48
   1631e:	8082                	ret
   16320:	409587b3          	sub	a5,a1,s1
   16324:	179d                	addi	a5,a5,-25
   16326:	9bf1                	andi	a5,a5,-4
   16328:	00478f13          	addi	t5,a5,4
   1632c:	b5f5                	j	16218 <__multiply+0x7a>
   1632e:	66f5                	lui	a3,0x1d
   16330:	6575                	lui	a0,0x1d
   16332:	9d068693          	addi	a3,a3,-1584 # 1c9d0 <zeroes.0+0x40>
   16336:	4601                	li	a2,0
   16338:	15d00593          	li	a1,349
   1633c:	cb850513          	addi	a0,a0,-840 # 1ccb8 <ezero+0x18>
   16340:	680030ef          	jal	ra,199c0 <__assert_func>

0000000000016344 <__pow5mult>:
   16344:	7179                	addi	sp,sp,-48
   16346:	f022                	sd	s0,32(sp)
   16348:	e84a                	sd	s2,16(sp)
   1634a:	e44e                	sd	s3,8(sp)
   1634c:	f406                	sd	ra,40(sp)
   1634e:	ec26                	sd	s1,24(sp)
   16350:	00367793          	andi	a5,a2,3
   16354:	8432                	mv	s0,a2
   16356:	89aa                	mv	s3,a0
   16358:	892e                	mv	s2,a1
   1635a:	ebb5                	bnez	a5,163ce <__pow5mult+0x8a>
   1635c:	8409                	srai	s0,s0,0x2
   1635e:	c421                	beqz	s0,163a6 <__pow5mult+0x62>
   16360:	0709b483          	ld	s1,112(s3)
   16364:	c0c9                	beqz	s1,163e6 <__pow5mult+0xa2>
   16366:	00147793          	andi	a5,s0,1
   1636a:	eb89                	bnez	a5,1637c <__pow5mult+0x38>
   1636c:	8405                	srai	s0,s0,0x1
   1636e:	cc05                	beqz	s0,163a6 <__pow5mult+0x62>
   16370:	6088                	ld	a0,0(s1)
   16372:	c131                	beqz	a0,163b6 <__pow5mult+0x72>
   16374:	84aa                	mv	s1,a0
   16376:	00147793          	andi	a5,s0,1
   1637a:	dbed                	beqz	a5,1636c <__pow5mult+0x28>
   1637c:	8626                	mv	a2,s1
   1637e:	85ca                	mv	a1,s2
   16380:	854e                	mv	a0,s3
   16382:	e1dff0ef          	jal	ra,1619e <__multiply>
   16386:	04090263          	beqz	s2,163ca <__pow5mult+0x86>
   1638a:	00892703          	lw	a4,8(s2)
   1638e:	0789b783          	ld	a5,120(s3)
   16392:	8405                	srai	s0,s0,0x1
   16394:	070e                	slli	a4,a4,0x3
   16396:	97ba                	add	a5,a5,a4
   16398:	6398                	ld	a4,0(a5)
   1639a:	00e93023          	sd	a4,0(s2)
   1639e:	0127b023          	sd	s2,0(a5)
   163a2:	892a                	mv	s2,a0
   163a4:	f471                	bnez	s0,16370 <__pow5mult+0x2c>
   163a6:	70a2                	ld	ra,40(sp)
   163a8:	7402                	ld	s0,32(sp)
   163aa:	64e2                	ld	s1,24(sp)
   163ac:	69a2                	ld	s3,8(sp)
   163ae:	854a                	mv	a0,s2
   163b0:	6942                	ld	s2,16(sp)
   163b2:	6145                	addi	sp,sp,48
   163b4:	8082                	ret
   163b6:	8626                	mv	a2,s1
   163b8:	85a6                	mv	a1,s1
   163ba:	854e                	mv	a0,s3
   163bc:	de3ff0ef          	jal	ra,1619e <__multiply>
   163c0:	e088                	sd	a0,0(s1)
   163c2:	00053023          	sd	zero,0(a0)
   163c6:	84aa                	mv	s1,a0
   163c8:	b77d                	j	16376 <__pow5mult+0x32>
   163ca:	892a                	mv	s2,a0
   163cc:	b745                	j	1636c <__pow5mult+0x28>
   163ce:	37fd                	addiw	a5,a5,-1
   163d0:	6775                	lui	a4,0x1d
   163d2:	e3070713          	addi	a4,a4,-464 # 1ce30 <p05.0>
   163d6:	078a                	slli	a5,a5,0x2
   163d8:	97ba                	add	a5,a5,a4
   163da:	4390                	lw	a2,0(a5)
   163dc:	4681                	li	a3,0
   163de:	aa7ff0ef          	jal	ra,15e84 <__multadd>
   163e2:	892a                	mv	s2,a0
   163e4:	bfa5                	j	1635c <__pow5mult+0x18>
   163e6:	4585                	li	a1,1
   163e8:	854e                	mv	a0,s3
   163ea:	a27ff0ef          	jal	ra,15e10 <_Balloc>
   163ee:	84aa                	mv	s1,a0
   163f0:	c919                	beqz	a0,16406 <__pow5mult+0xc2>
   163f2:	27100793          	li	a5,625
   163f6:	cd1c                	sw	a5,24(a0)
   163f8:	4785                	li	a5,1
   163fa:	c95c                	sw	a5,20(a0)
   163fc:	06a9b823          	sd	a0,112(s3)
   16400:	00053023          	sd	zero,0(a0)
   16404:	b78d                	j	16366 <__pow5mult+0x22>
   16406:	66f5                	lui	a3,0x1d
   16408:	6575                	lui	a0,0x1d
   1640a:	9d068693          	addi	a3,a3,-1584 # 1c9d0 <zeroes.0+0x40>
   1640e:	4601                	li	a2,0
   16410:	14000593          	li	a1,320
   16414:	cb850513          	addi	a0,a0,-840 # 1ccb8 <ezero+0x18>
   16418:	5a8030ef          	jal	ra,199c0 <__assert_func>

000000000001641c <__lshift>:
   1641c:	7139                	addi	sp,sp,-64
   1641e:	f04a                	sd	s2,32(sp)
   16420:	0145a903          	lw	s2,20(a1)
   16424:	45dc                	lw	a5,12(a1)
   16426:	e456                	sd	s5,8(sp)
   16428:	40565a9b          	sraiw	s5,a2,0x5
   1642c:	012a893b          	addw	s2,s5,s2
   16430:	f822                	sd	s0,48(sp)
   16432:	f426                	sd	s1,40(sp)
   16434:	ec4e                	sd	s3,24(sp)
   16436:	e852                	sd	s4,16(sp)
   16438:	e05a                	sd	s6,0(sp)
   1643a:	fc06                	sd	ra,56(sp)
   1643c:	0019049b          	addiw	s1,s2,1
   16440:	842e                	mv	s0,a1
   16442:	8a32                	mv	s4,a2
   16444:	458c                	lw	a1,8(a1)
   16446:	89aa                	mv	s3,a0
   16448:	40565b13          	srai	s6,a2,0x5
   1644c:	0097d763          	bge	a5,s1,1645a <__lshift+0x3e>
   16450:	0017979b          	slliw	a5,a5,0x1
   16454:	2585                	addiw	a1,a1,1
   16456:	fe97cde3          	blt	a5,s1,16450 <__lshift+0x34>
   1645a:	854e                	mv	a0,s3
   1645c:	9b5ff0ef          	jal	ra,15e10 <_Balloc>
   16460:	c969                	beqz	a0,16532 <__lshift+0x116>
   16462:	01850693          	addi	a3,a0,24
   16466:	03605563          	blez	s6,16490 <__lshift+0x74>
   1646a:	fffa871b          	addiw	a4,s5,-1
   1646e:	02071793          	slli	a5,a4,0x20
   16472:	01e7d713          	srli	a4,a5,0x1e
   16476:	0771                	addi	a4,a4,28
   16478:	972a                	add	a4,a4,a0
   1647a:	87b6                	mv	a5,a3
   1647c:	0791                	addi	a5,a5,4
   1647e:	fe07ae23          	sw	zero,-4(a5)
   16482:	fee79de3          	bne	a5,a4,1647c <__lshift+0x60>
   16486:	020a9793          	slli	a5,s5,0x20
   1648a:	01e7da93          	srli	s5,a5,0x1e
   1648e:	96d6                	add	a3,a3,s5
   16490:	01442883          	lw	a7,20(s0)
   16494:	01840793          	addi	a5,s0,24
   16498:	01fa7613          	andi	a2,s4,31
   1649c:	088a                	slli	a7,a7,0x2
   1649e:	98be                	add	a7,a7,a5
   164a0:	ca35                	beqz	a2,16514 <__lshift+0xf8>
   164a2:	02000313          	li	t1,32
   164a6:	40c3033b          	subw	t1,t1,a2
   164aa:	85b6                	mv	a1,a3
   164ac:	4701                	li	a4,0
   164ae:	0007a803          	lw	a6,0(a5)
   164b2:	0591                	addi	a1,a1,4
   164b4:	0791                	addi	a5,a5,4
   164b6:	00c8183b          	sllw	a6,a6,a2
   164ba:	01076733          	or	a4,a4,a6
   164be:	fee5ae23          	sw	a4,-4(a1)
   164c2:	ffc7a703          	lw	a4,-4(a5)
   164c6:	0067573b          	srlw	a4,a4,t1
   164ca:	ff17e2e3          	bltu	a5,a7,164ae <__lshift+0x92>
   164ce:	01940793          	addi	a5,s0,25
   164d2:	4611                	li	a2,4
   164d4:	00f8e863          	bltu	a7,a5,164e4 <__lshift+0xc8>
   164d8:	408887b3          	sub	a5,a7,s0
   164dc:	179d                	addi	a5,a5,-25
   164de:	9bf1                	andi	a5,a5,-4
   164e0:	00478613          	addi	a2,a5,4
   164e4:	96b2                	add	a3,a3,a2
   164e6:	c298                	sw	a4,0(a3)
   164e8:	c311                	beqz	a4,164ec <__lshift+0xd0>
   164ea:	8926                	mv	s2,s1
   164ec:	4418                	lw	a4,8(s0)
   164ee:	0789b783          	ld	a5,120(s3)
   164f2:	01252a23          	sw	s2,20(a0)
   164f6:	070e                	slli	a4,a4,0x3
   164f8:	97ba                	add	a5,a5,a4
   164fa:	6398                	ld	a4,0(a5)
   164fc:	70e2                	ld	ra,56(sp)
   164fe:	74a2                	ld	s1,40(sp)
   16500:	e018                	sd	a4,0(s0)
   16502:	e380                	sd	s0,0(a5)
   16504:	7442                	ld	s0,48(sp)
   16506:	7902                	ld	s2,32(sp)
   16508:	69e2                	ld	s3,24(sp)
   1650a:	6a42                	ld	s4,16(sp)
   1650c:	6aa2                	ld	s5,8(sp)
   1650e:	6b02                	ld	s6,0(sp)
   16510:	6121                	addi	sp,sp,64
   16512:	8082                	ret
   16514:	4398                	lw	a4,0(a5)
   16516:	0791                	addi	a5,a5,4
   16518:	0691                	addi	a3,a3,4
   1651a:	fee6ae23          	sw	a4,-4(a3)
   1651e:	fd17f7e3          	bgeu	a5,a7,164ec <__lshift+0xd0>
   16522:	4398                	lw	a4,0(a5)
   16524:	0791                	addi	a5,a5,4
   16526:	0691                	addi	a3,a3,4
   16528:	fee6ae23          	sw	a4,-4(a3)
   1652c:	ff17e4e3          	bltu	a5,a7,16514 <__lshift+0xf8>
   16530:	bf75                	j	164ec <__lshift+0xd0>
   16532:	66f5                	lui	a3,0x1d
   16534:	6575                	lui	a0,0x1d
   16536:	9d068693          	addi	a3,a3,-1584 # 1c9d0 <zeroes.0+0x40>
   1653a:	4601                	li	a2,0
   1653c:	1d900593          	li	a1,473
   16540:	cb850513          	addi	a0,a0,-840 # 1ccb8 <ezero+0x18>
   16544:	47c030ef          	jal	ra,199c0 <__assert_func>

0000000000016548 <__mcmp>:
   16548:	49dc                	lw	a5,20(a1)
   1654a:	882a                	mv	a6,a0
   1654c:	4948                	lw	a0,20(a0)
   1654e:	9d1d                	subw	a0,a0,a5
   16550:	e50d                	bnez	a0,1657a <__mcmp+0x32>
   16552:	078a                	slli	a5,a5,0x2
   16554:	0861                	addi	a6,a6,24
   16556:	05e1                	addi	a1,a1,24
   16558:	00f80733          	add	a4,a6,a5
   1655c:	97ae                	add	a5,a5,a1
   1655e:	a019                	j	16564 <__mcmp+0x1c>
   16560:	00e87d63          	bgeu	a6,a4,1657a <__mcmp+0x32>
   16564:	ffc72603          	lw	a2,-4(a4)
   16568:	ffc7a683          	lw	a3,-4(a5)
   1656c:	1771                	addi	a4,a4,-4
   1656e:	17f1                	addi	a5,a5,-4
   16570:	fed608e3          	beq	a2,a3,16560 <__mcmp+0x18>
   16574:	557d                	li	a0,-1
   16576:	00d67363          	bgeu	a2,a3,1657c <__mcmp+0x34>
   1657a:	8082                	ret
   1657c:	4505                	li	a0,1
   1657e:	8082                	ret

0000000000016580 <__mdiff>:
   16580:	1101                	addi	sp,sp,-32
   16582:	4a5c                	lw	a5,20(a2)
   16584:	e04a                	sd	s2,0(sp)
   16586:	0145a903          	lw	s2,20(a1)
   1658a:	e822                	sd	s0,16(sp)
   1658c:	e426                	sd	s1,8(sp)
   1658e:	ec06                	sd	ra,24(sp)
   16590:	40f9093b          	subw	s2,s2,a5
   16594:	84ae                	mv	s1,a1
   16596:	8432                	mv	s0,a2
   16598:	14091163          	bnez	s2,166da <__mdiff+0x15a>
   1659c:	00279693          	slli	a3,a5,0x2
   165a0:	05e1                	addi	a1,a1,24
   165a2:	01860713          	addi	a4,a2,24
   165a6:	00d587b3          	add	a5,a1,a3
   165aa:	9736                	add	a4,a4,a3
   165ac:	a019                	j	165b2 <__mdiff+0x32>
   165ae:	12f5fa63          	bgeu	a1,a5,166e2 <__mdiff+0x162>
   165b2:	ffc7a603          	lw	a2,-4(a5)
   165b6:	ffc72683          	lw	a3,-4(a4)
   165ba:	17f1                	addi	a5,a5,-4
   165bc:	1771                	addi	a4,a4,-4
   165be:	fed608e3          	beq	a2,a3,165ae <__mdiff+0x2e>
   165c2:	10d66763          	bltu	a2,a3,166d0 <__mdiff+0x150>
   165c6:	448c                	lw	a1,8(s1)
   165c8:	849ff0ef          	jal	ra,15e10 <_Balloc>
   165cc:	12050963          	beqz	a0,166fe <__mdiff+0x17e>
   165d0:	0144a303          	lw	t1,20(s1)
   165d4:	01442f83          	lw	t6,20(s0)
   165d8:	04e1                	addi	s1,s1,24
   165da:	00231e13          	slli	t3,t1,0x2
   165de:	01840813          	addi	a6,s0,24
   165e2:	0f8a                	slli	t6,t6,0x2
   165e4:	01850593          	addi	a1,a0,24
   165e8:	6ec1                	lui	t4,0x10
   165ea:	01252823          	sw	s2,16(a0)
   165ee:	9e26                	add	t3,t3,s1
   165f0:	9fc2                	add	t6,t6,a6
   165f2:	862e                	mv	a2,a1
   165f4:	8f26                	mv	t5,s1
   165f6:	4881                	li	a7,0
   165f8:	1efd                	addi	t4,t4,-1 # ffff <exit-0xe9>
   165fa:	000f2703          	lw	a4,0(t5)
   165fe:	00082683          	lw	a3,0(a6)
   16602:	0611                	addi	a2,a2,4
   16604:	01d777b3          	and	a5,a4,t4
   16608:	011787bb          	addw	a5,a5,a7
   1660c:	01d6f8b3          	and	a7,a3,t4
   16610:	411787bb          	subw	a5,a5,a7
   16614:	0106d69b          	srliw	a3,a3,0x10
   16618:	0107571b          	srliw	a4,a4,0x10
   1661c:	9f15                	subw	a4,a4,a3
   1661e:	4107d69b          	sraiw	a3,a5,0x10
   16622:	9f35                	addw	a4,a4,a3
   16624:	0107169b          	slliw	a3,a4,0x10
   16628:	01d7f7b3          	and	a5,a5,t4
   1662c:	8fd5                	or	a5,a5,a3
   1662e:	2781                	sext.w	a5,a5
   16630:	0811                	addi	a6,a6,4
   16632:	fef62e23          	sw	a5,-4(a2)
   16636:	0f11                	addi	t5,t5,4
   16638:	4107589b          	sraiw	a7,a4,0x10
   1663c:	fbf86fe3          	bltu	a6,t6,165fa <__mdiff+0x7a>
   16640:	408f86b3          	sub	a3,t6,s0
   16644:	169d                	addi	a3,a3,-25
   16646:	0465                	addi	s0,s0,25
   16648:	8289                	srli	a3,a3,0x2
   1664a:	4701                	li	a4,0
   1664c:	008fe463          	bltu	t6,s0,16654 <__mdiff+0xd4>
   16650:	00269713          	slli	a4,a3,0x2
   16654:	972e                	add	a4,a4,a1
   16656:	4611                	li	a2,4
   16658:	008fe563          	bltu	t6,s0,16662 <__mdiff+0xe2>
   1665c:	0685                	addi	a3,a3,1
   1665e:	00269613          	slli	a2,a3,0x2
   16662:	94b2                	add	s1,s1,a2
   16664:	00c58eb3          	add	t4,a1,a2
   16668:	05c4f663          	bgeu	s1,t3,166b4 <__mdiff+0x134>
   1666c:	65c1                	lui	a1,0x10
   1666e:	8676                	mv	a2,t4
   16670:	86a6                	mv	a3,s1
   16672:	15fd                	addi	a1,a1,-1 # ffff <exit-0xe9>
   16674:	4298                	lw	a4,0(a3)
   16676:	0611                	addi	a2,a2,4
   16678:	0691                	addi	a3,a3,4
   1667a:	00b777b3          	and	a5,a4,a1
   1667e:	011787bb          	addw	a5,a5,a7
   16682:	4107d81b          	sraiw	a6,a5,0x10
   16686:	0107571b          	srliw	a4,a4,0x10
   1668a:	0107073b          	addw	a4,a4,a6
   1668e:	0107181b          	slliw	a6,a4,0x10
   16692:	8fed                	and	a5,a5,a1
   16694:	0107e7b3          	or	a5,a5,a6
   16698:	2781                	sext.w	a5,a5
   1669a:	fef62e23          	sw	a5,-4(a2)
   1669e:	4107589b          	sraiw	a7,a4,0x10
   166a2:	fdc6e9e3          	bltu	a3,t3,16674 <__mdiff+0xf4>
   166a6:	1e7d                	addi	t3,t3,-1
   166a8:	409e0e33          	sub	t3,t3,s1
   166ac:	ffce7e13          	andi	t3,t3,-4
   166b0:	01ce8733          	add	a4,t4,t3
   166b4:	e791                	bnez	a5,166c0 <__mdiff+0x140>
   166b6:	ffc72783          	lw	a5,-4(a4)
   166ba:	337d                	addiw	t1,t1,-1
   166bc:	1771                	addi	a4,a4,-4
   166be:	dfe5                	beqz	a5,166b6 <__mdiff+0x136>
   166c0:	60e2                	ld	ra,24(sp)
   166c2:	6442                	ld	s0,16(sp)
   166c4:	00652a23          	sw	t1,20(a0)
   166c8:	64a2                	ld	s1,8(sp)
   166ca:	6902                	ld	s2,0(sp)
   166cc:	6105                	addi	sp,sp,32
   166ce:	8082                	ret
   166d0:	87a6                	mv	a5,s1
   166d2:	4905                	li	s2,1
   166d4:	84a2                	mv	s1,s0
   166d6:	843e                	mv	s0,a5
   166d8:	b5fd                	j	165c6 <__mdiff+0x46>
   166da:	fe094be3          	bltz	s2,166d0 <__mdiff+0x150>
   166de:	4901                	li	s2,0
   166e0:	b5dd                	j	165c6 <__mdiff+0x46>
   166e2:	4581                	li	a1,0
   166e4:	f2cff0ef          	jal	ra,15e10 <_Balloc>
   166e8:	c515                	beqz	a0,16714 <__mdiff+0x194>
   166ea:	60e2                	ld	ra,24(sp)
   166ec:	6442                	ld	s0,16(sp)
   166ee:	4785                	li	a5,1
   166f0:	c95c                	sw	a5,20(a0)
   166f2:	00052c23          	sw	zero,24(a0)
   166f6:	64a2                	ld	s1,8(sp)
   166f8:	6902                	ld	s2,0(sp)
   166fa:	6105                	addi	sp,sp,32
   166fc:	8082                	ret
   166fe:	66f5                	lui	a3,0x1d
   16700:	6575                	lui	a0,0x1d
   16702:	9d068693          	addi	a3,a3,-1584 # 1c9d0 <zeroes.0+0x40>
   16706:	4601                	li	a2,0
   16708:	24000593          	li	a1,576
   1670c:	cb850513          	addi	a0,a0,-840 # 1ccb8 <ezero+0x18>
   16710:	2b0030ef          	jal	ra,199c0 <__assert_func>
   16714:	66f5                	lui	a3,0x1d
   16716:	6575                	lui	a0,0x1d
   16718:	9d068693          	addi	a3,a3,-1584 # 1c9d0 <zeroes.0+0x40>
   1671c:	4601                	li	a2,0
   1671e:	23200593          	li	a1,562
   16722:	cb850513          	addi	a0,a0,-840 # 1ccb8 <ezero+0x18>
   16726:	29a030ef          	jal	ra,199c0 <__assert_func>

000000000001672a <__ulp>:
   1672a:	e20507d3          	fmv.x.d	a5,fa0
   1672e:	7ff00737          	lui	a4,0x7ff00
   16732:	4681                	li	a3,0
   16734:	9381                	srli	a5,a5,0x20
   16736:	8ff9                	and	a5,a5,a4
   16738:	fcc00737          	lui	a4,0xfcc00
   1673c:	9fb9                	addw	a5,a5,a4
   1673e:	00f05963          	blez	a5,16750 <__ulp+0x26>
   16742:	1682                	slli	a3,a3,0x20
   16744:	9281                	srli	a3,a3,0x20
   16746:	1782                	slli	a5,a5,0x20
   16748:	8fd5                	or	a5,a5,a3
   1674a:	f2078553          	fmv.d.x	fa0,a5
   1674e:	8082                	ret
   16750:	40f0073b          	negw	a4,a5
   16754:	4147569b          	sraiw	a3,a4,0x14
   16758:	47cd                	li	a5,19
   1675a:	00d7ce63          	blt	a5,a3,16776 <__ulp+0x4c>
   1675e:	000807b7          	lui	a5,0x80
   16762:	40d7d7bb          	sraw	a5,a5,a3
   16766:	4681                	li	a3,0
   16768:	1682                	slli	a3,a3,0x20
   1676a:	9281                	srli	a3,a3,0x20
   1676c:	1782                	slli	a5,a5,0x20
   1676e:	8fd5                	or	a5,a5,a3
   16770:	f2078553          	fmv.d.x	fa0,a5
   16774:	8082                	ret
   16776:	fec6871b          	addiw	a4,a3,-20
   1677a:	47f9                	li	a5,30
   1677c:	4685                	li	a3,1
   1677e:	00e7c663          	blt	a5,a4,1678a <__ulp+0x60>
   16782:	800006b7          	lui	a3,0x80000
   16786:	00e6d6bb          	srlw	a3,a3,a4
   1678a:	4781                	li	a5,0
   1678c:	1682                	slli	a3,a3,0x20
   1678e:	9281                	srli	a3,a3,0x20
   16790:	1782                	slli	a5,a5,0x20
   16792:	8fd5                	or	a5,a5,a3
   16794:	f2078553          	fmv.d.x	fa0,a5
   16798:	8082                	ret

000000000001679a <__b2d>:
   1679a:	7179                	addi	sp,sp,-48
   1679c:	ec26                	sd	s1,24(sp)
   1679e:	4944                	lw	s1,20(a0)
   167a0:	f022                	sd	s0,32(sp)
   167a2:	01850413          	addi	s0,a0,24
   167a6:	048a                	slli	s1,s1,0x2
   167a8:	94a2                	add	s1,s1,s0
   167aa:	e84a                	sd	s2,16(sp)
   167ac:	ffc4a903          	lw	s2,-4(s1)
   167b0:	e44e                	sd	s3,8(sp)
   167b2:	e052                	sd	s4,0(sp)
   167b4:	854a                	mv	a0,s2
   167b6:	89ae                	mv	s3,a1
   167b8:	f406                	sd	ra,40(sp)
   167ba:	897ff0ef          	jal	ra,16050 <__hi0bits>
   167be:	02000793          	li	a5,32
   167c2:	40a7873b          	subw	a4,a5,a0
   167c6:	00e9a023          	sw	a4,0(s3)
   167ca:	4729                	li	a4,10
   167cc:	ffc48a13          	addi	s4,s1,-4
   167d0:	06a75d63          	bge	a4,a0,1684a <__b2d+0xb0>
   167d4:	ff55061b          	addiw	a2,a0,-11
   167d8:	05447263          	bgeu	s0,s4,1681c <__b2d+0x82>
   167dc:	ff84a703          	lw	a4,-8(s1)
   167e0:	c221                	beqz	a2,16820 <__b2d+0x86>
   167e2:	40c786bb          	subw	a3,a5,a2
   167e6:	00d757bb          	srlw	a5,a4,a3
   167ea:	00c9193b          	sllw	s2,s2,a2
   167ee:	00f96933          	or	s2,s2,a5
   167f2:	3ff007b7          	lui	a5,0x3ff00
   167f6:	00f96933          	or	s2,s2,a5
   167fa:	00c7163b          	sllw	a2,a4,a2
   167fe:	ff848593          	addi	a1,s1,-8
   16802:	02091793          	slli	a5,s2,0x20
   16806:	0006071b          	sext.w	a4,a2
   1680a:	02b47163          	bgeu	s0,a1,1682c <__b2d+0x92>
   1680e:	ff44a703          	lw	a4,-12(s1)
   16812:	00d7573b          	srlw	a4,a4,a3
   16816:	8f51                	or	a4,a4,a2
   16818:	2701                	sext.w	a4,a4
   1681a:	a809                	j	1682c <__b2d+0x92>
   1681c:	4701                	li	a4,0
   1681e:	ee21                	bnez	a2,16876 <__b2d+0xdc>
   16820:	3ff007b7          	lui	a5,0x3ff00
   16824:	00f96933          	or	s2,s2,a5
   16828:	02091793          	slli	a5,s2,0x20
   1682c:	70a2                	ld	ra,40(sp)
   1682e:	7402                	ld	s0,32(sp)
   16830:	9381                	srli	a5,a5,0x20
   16832:	1702                	slli	a4,a4,0x20
   16834:	9301                	srli	a4,a4,0x20
   16836:	1782                	slli	a5,a5,0x20
   16838:	8fd9                	or	a5,a5,a4
   1683a:	64e2                	ld	s1,24(sp)
   1683c:	6942                	ld	s2,16(sp)
   1683e:	69a2                	ld	s3,8(sp)
   16840:	6a02                	ld	s4,0(sp)
   16842:	f2078553          	fmv.d.x	fa0,a5
   16846:	6145                	addi	sp,sp,48
   16848:	8082                	ret
   1684a:	46ad                	li	a3,11
   1684c:	9e89                	subw	a3,a3,a0
   1684e:	3ff00737          	lui	a4,0x3ff00
   16852:	00d957bb          	srlw	a5,s2,a3
   16856:	8fd9                	or	a5,a5,a4
   16858:	1782                	slli	a5,a5,0x20
   1685a:	4701                	li	a4,0
   1685c:	01447663          	bgeu	s0,s4,16868 <__b2d+0xce>
   16860:	ff84a703          	lw	a4,-8(s1)
   16864:	00d7573b          	srlw	a4,a4,a3
   16868:	2555                	addiw	a0,a0,21
   1686a:	00a9193b          	sllw	s2,s2,a0
   1686e:	01276733          	or	a4,a4,s2
   16872:	2701                	sext.w	a4,a4
   16874:	bf65                	j	1682c <__b2d+0x92>
   16876:	3ff007b7          	lui	a5,0x3ff00
   1687a:	00c9193b          	sllw	s2,s2,a2
   1687e:	00f96933          	or	s2,s2,a5
   16882:	02091793          	slli	a5,s2,0x20
   16886:	4701                	li	a4,0
   16888:	b755                	j	1682c <__b2d+0x92>

000000000001688a <__d2b>:
   1688a:	7139                	addi	sp,sp,-64
   1688c:	e852                	sd	s4,16(sp)
   1688e:	8a2e                	mv	s4,a1
   16890:	4585                	li	a1,1
   16892:	f822                	sd	s0,48(sp)
   16894:	f04a                	sd	s2,32(sp)
   16896:	fc06                	sd	ra,56(sp)
   16898:	f426                	sd	s1,40(sp)
   1689a:	ec4e                	sd	s3,24(sp)
   1689c:	e2050453          	fmv.x.d	s0,fa0
   168a0:	8932                	mv	s2,a2
   168a2:	d6eff0ef          	jal	ra,15e10 <_Balloc>
   168a6:	cd5d                	beqz	a0,16964 <__d2b+0xda>
   168a8:	42045793          	srai	a5,s0,0x20
   168ac:	0147d99b          	srliw	s3,a5,0x14
   168b0:	7ff9f993          	andi	s3,s3,2047
   168b4:	17b2                	slli	a5,a5,0x2c
   168b6:	84aa                	mv	s1,a0
   168b8:	93b1                	srli	a5,a5,0x2c
   168ba:	00098563          	beqz	s3,168c4 <__d2b+0x3a>
   168be:	00100737          	lui	a4,0x100
   168c2:	8fd9                	or	a5,a5,a4
   168c4:	c63e                	sw	a5,12(sp)
   168c6:	2401                	sext.w	s0,s0
   168c8:	e029                	bnez	s0,1690a <__d2b+0x80>
   168ca:	0068                	addi	a0,sp,12
   168cc:	fd2ff0ef          	jal	ra,1609e <__lo0bits>
   168d0:	47b2                	lw	a5,12(sp)
   168d2:	4405                	li	s0,1
   168d4:	c8c0                	sw	s0,20(s1)
   168d6:	cc9c                	sw	a5,24(s1)
   168d8:	0205051b          	addiw	a0,a0,32
   168dc:	06098263          	beqz	s3,16940 <__d2b+0xb6>
   168e0:	bcd9899b          	addiw	s3,s3,-1075
   168e4:	00a989bb          	addw	s3,s3,a0
   168e8:	03500413          	li	s0,53
   168ec:	013a2023          	sw	s3,0(s4)
   168f0:	40a4053b          	subw	a0,s0,a0
   168f4:	70e2                	ld	ra,56(sp)
   168f6:	7442                	ld	s0,48(sp)
   168f8:	00a92023          	sw	a0,0(s2)
   168fc:	69e2                	ld	s3,24(sp)
   168fe:	7902                	ld	s2,32(sp)
   16900:	6a42                	ld	s4,16(sp)
   16902:	8526                	mv	a0,s1
   16904:	74a2                	ld	s1,40(sp)
   16906:	6121                	addi	sp,sp,64
   16908:	8082                	ret
   1690a:	0028                	addi	a0,sp,8
   1690c:	c422                	sw	s0,8(sp)
   1690e:	f90ff0ef          	jal	ra,1609e <__lo0bits>
   16912:	47b2                	lw	a5,12(sp)
   16914:	c529                	beqz	a0,1695e <__d2b+0xd4>
   16916:	46a2                	lw	a3,8(sp)
   16918:	02000713          	li	a4,32
   1691c:	9f09                	subw	a4,a4,a0
   1691e:	00e7973b          	sllw	a4,a5,a4
   16922:	00a7d63b          	srlw	a2,a5,a0
   16926:	00e6e7b3          	or	a5,a3,a4
   1692a:	cc9c                	sw	a5,24(s1)
   1692c:	c632                	sw	a2,12(sp)
   1692e:	0006079b          	sext.w	a5,a2
   16932:	00f03433          	snez	s0,a5
   16936:	0405                	addi	s0,s0,1
   16938:	ccdc                	sw	a5,28(s1)
   1693a:	c8c0                	sw	s0,20(s1)
   1693c:	fa0992e3          	bnez	s3,168e0 <__d2b+0x56>
   16940:	bce5051b          	addiw	a0,a0,-1074
   16944:	00241793          	slli	a5,s0,0x2
   16948:	00aa2023          	sw	a0,0(s4)
   1694c:	97a6                	add	a5,a5,s1
   1694e:	4bc8                	lw	a0,20(a5)
   16950:	0054141b          	slliw	s0,s0,0x5
   16954:	efcff0ef          	jal	ra,16050 <__hi0bits>
   16958:	40a4053b          	subw	a0,s0,a0
   1695c:	bf61                	j	168f4 <__d2b+0x6a>
   1695e:	4722                	lw	a4,8(sp)
   16960:	cc98                	sw	a4,24(s1)
   16962:	bfc1                	j	16932 <__d2b+0xa8>
   16964:	66f5                	lui	a3,0x1d
   16966:	6575                	lui	a0,0x1d
   16968:	9d068693          	addi	a3,a3,-1584 # 1c9d0 <zeroes.0+0x40>
   1696c:	4601                	li	a2,0
   1696e:	30a00593          	li	a1,778
   16972:	cb850513          	addi	a0,a0,-840 # 1ccb8 <ezero+0x18>
   16976:	04a030ef          	jal	ra,199c0 <__assert_func>

000000000001697a <__ratio>:
   1697a:	7179                	addi	sp,sp,-48
   1697c:	ec26                	sd	s1,24(sp)
   1697e:	84ae                	mv	s1,a1
   16980:	002c                	addi	a1,sp,8
   16982:	f406                	sd	ra,40(sp)
   16984:	f022                	sd	s0,32(sp)
   16986:	e84a                	sd	s2,16(sp)
   16988:	892a                	mv	s2,a0
   1698a:	e11ff0ef          	jal	ra,1679a <__b2d>
   1698e:	006c                	addi	a1,sp,12
   16990:	8526                	mv	a0,s1
   16992:	e2050453          	fmv.x.d	s0,fa0
   16996:	e05ff0ef          	jal	ra,1679a <__b2d>
   1699a:	01492783          	lw	a5,20(s2)
   1699e:	48d0                	lw	a2,20(s1)
   169a0:	46b2                	lw	a3,12(sp)
   169a2:	4722                	lw	a4,8(sp)
   169a4:	9f91                	subw	a5,a5,a2
   169a6:	0057979b          	slliw	a5,a5,0x5
   169aa:	9f15                	subw	a4,a4,a3
   169ac:	00e786bb          	addw	a3,a5,a4
   169b0:	87b6                	mv	a5,a3
   169b2:	e2050753          	fmv.x.d	a4,fa0
   169b6:	02d05963          	blez	a3,169e8 <__ratio+0x6e>
   169ba:	02045693          	srli	a3,s0,0x20
   169be:	0147979b          	slliw	a5,a5,0x14
   169c2:	9fb5                	addw	a5,a5,a3
   169c4:	56fd                	li	a3,-1
   169c6:	9281                	srli	a3,a3,0x20
   169c8:	1782                	slli	a5,a5,0x20
   169ca:	8ee1                	and	a3,a3,s0
   169cc:	00f6e433          	or	s0,a3,a5
   169d0:	f20407d3          	fmv.d.x	fa5,s0
   169d4:	70a2                	ld	ra,40(sp)
   169d6:	7402                	ld	s0,32(sp)
   169d8:	f2070753          	fmv.d.x	fa4,a4
   169dc:	64e2                	ld	s1,24(sp)
   169de:	6942                	ld	s2,16(sp)
   169e0:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   169e4:	6145                	addi	sp,sp,48
   169e6:	8082                	ret
   169e8:	02075693          	srli	a3,a4,0x20
   169ec:	0147979b          	slliw	a5,a5,0x14
   169f0:	40f687bb          	subw	a5,a3,a5
   169f4:	56fd                	li	a3,-1
   169f6:	9281                	srli	a3,a3,0x20
   169f8:	1782                	slli	a5,a5,0x20
   169fa:	8f75                	and	a4,a4,a3
   169fc:	8f5d                	or	a4,a4,a5
   169fe:	bfc9                	j	169d0 <__ratio+0x56>

0000000000016a00 <_mprec_log10>:
   16a00:	47dd                	li	a5,23
   16a02:	00a7db63          	bge	a5,a0,16a18 <_mprec_log10+0x18>
   16a06:	6181b507          	fld	fa0,1560(gp) # 1f710 <mask+0x8>
   16a0a:	6201b787          	fld	fa5,1568(gp) # 1f718 <mask+0x10>
   16a0e:	357d                	addiw	a0,a0,-1
   16a10:	12f57553          	fmul.d	fa0,fa0,fa5
   16a14:	fd6d                	bnez	a0,16a0e <_mprec_log10+0xe>
   16a16:	8082                	ret
   16a18:	67f5                	lui	a5,0x1d
   16a1a:	050e                	slli	a0,a0,0x3
   16a1c:	d4078793          	addi	a5,a5,-704 # 1cd40 <__mprec_tens>
   16a20:	97aa                	add	a5,a5,a0
   16a22:	2388                	fld	fa0,0(a5)
   16a24:	8082                	ret

0000000000016a26 <__copybits>:
   16a26:	4a54                	lw	a3,20(a2)
   16a28:	35fd                	addiw	a1,a1,-1
   16a2a:	4055d59b          	sraiw	a1,a1,0x5
   16a2e:	2585                	addiw	a1,a1,1
   16a30:	01860793          	addi	a5,a2,24
   16a34:	068a                	slli	a3,a3,0x2
   16a36:	058a                	slli	a1,a1,0x2
   16a38:	96be                	add	a3,a3,a5
   16a3a:	95aa                	add	a1,a1,a0
   16a3c:	02d7f163          	bgeu	a5,a3,16a5e <__copybits+0x38>
   16a40:	872a                	mv	a4,a0
   16a42:	0007a803          	lw	a6,0(a5)
   16a46:	0791                	addi	a5,a5,4
   16a48:	0711                	addi	a4,a4,4 # 100004 <__BSS_END__+0xe070c>
   16a4a:	ff072e23          	sw	a6,-4(a4)
   16a4e:	fed7eae3          	bltu	a5,a3,16a42 <__copybits+0x1c>
   16a52:	40c687b3          	sub	a5,a3,a2
   16a56:	179d                	addi	a5,a5,-25
   16a58:	9bf1                	andi	a5,a5,-4
   16a5a:	0791                	addi	a5,a5,4
   16a5c:	953e                	add	a0,a0,a5
   16a5e:	00b57763          	bgeu	a0,a1,16a6c <__copybits+0x46>
   16a62:	0511                	addi	a0,a0,4
   16a64:	fe052e23          	sw	zero,-4(a0)
   16a68:	feb56de3          	bltu	a0,a1,16a62 <__copybits+0x3c>
   16a6c:	8082                	ret

0000000000016a6e <__any_on>:
   16a6e:	4958                	lw	a4,20(a0)
   16a70:	4055d613          	srai	a2,a1,0x5
   16a74:	01850693          	addi	a3,a0,24
   16a78:	00c75d63          	bge	a4,a2,16a92 <__any_on+0x24>
   16a7c:	070a                	slli	a4,a4,0x2
   16a7e:	00e687b3          	add	a5,a3,a4
   16a82:	02f6f863          	bgeu	a3,a5,16ab2 <__any_on+0x44>
   16a86:	ffc7a703          	lw	a4,-4(a5)
   16a8a:	17f1                	addi	a5,a5,-4
   16a8c:	db7d                	beqz	a4,16a82 <__any_on+0x14>
   16a8e:	4505                	li	a0,1
   16a90:	8082                	ret
   16a92:	00261793          	slli	a5,a2,0x2
   16a96:	97b6                	add	a5,a5,a3
   16a98:	fee655e3          	bge	a2,a4,16a82 <__any_on+0x14>
   16a9c:	89fd                	andi	a1,a1,31
   16a9e:	d1f5                	beqz	a1,16a82 <__any_on+0x14>
   16aa0:	4390                	lw	a2,0(a5)
   16aa2:	4505                	li	a0,1
   16aa4:	00b6573b          	srlw	a4,a2,a1
   16aa8:	00b7173b          	sllw	a4,a4,a1
   16aac:	fcc70be3          	beq	a4,a2,16a82 <__any_on+0x14>
   16ab0:	8082                	ret
   16ab2:	4501                	li	a0,0
   16ab4:	8082                	ret

0000000000016ab6 <_read_r>:
   16ab6:	1101                	addi	sp,sp,-32
   16ab8:	872e                	mv	a4,a1
   16aba:	e822                	sd	s0,16(sp)
   16abc:	e426                	sd	s1,8(sp)
   16abe:	85b2                	mv	a1,a2
   16ac0:	842a                	mv	s0,a0
   16ac2:	8636                	mv	a2,a3
   16ac4:	853a                	mv	a0,a4
   16ac6:	ec06                	sd	ra,24(sp)
   16ac8:	6801a423          	sw	zero,1672(gp) # 1f780 <errno>
   16acc:	608040ef          	jal	ra,1b0d4 <_read>
   16ad0:	57fd                	li	a5,-1
   16ad2:	00f50763          	beq	a0,a5,16ae0 <_read_r+0x2a>
   16ad6:	60e2                	ld	ra,24(sp)
   16ad8:	6442                	ld	s0,16(sp)
   16ada:	64a2                	ld	s1,8(sp)
   16adc:	6105                	addi	sp,sp,32
   16ade:	8082                	ret
   16ae0:	6881a783          	lw	a5,1672(gp) # 1f780 <errno>
   16ae4:	dbed                	beqz	a5,16ad6 <_read_r+0x20>
   16ae6:	60e2                	ld	ra,24(sp)
   16ae8:	c01c                	sw	a5,0(s0)
   16aea:	6442                	ld	s0,16(sp)
   16aec:	64a2                	ld	s1,8(sp)
   16aee:	6105                	addi	sp,sp,32
   16af0:	8082                	ret

0000000000016af2 <_realloc_r>:
   16af2:	715d                	addi	sp,sp,-80
   16af4:	f84a                	sd	s2,48(sp)
   16af6:	e486                	sd	ra,72(sp)
   16af8:	e0a2                	sd	s0,64(sp)
   16afa:	fc26                	sd	s1,56(sp)
   16afc:	f44e                	sd	s3,40(sp)
   16afe:	f052                	sd	s4,32(sp)
   16b00:	ec56                	sd	s5,24(sp)
   16b02:	e85a                	sd	s6,16(sp)
   16b04:	e45e                	sd	s7,8(sp)
   16b06:	e062                	sd	s8,0(sp)
   16b08:	8932                	mv	s2,a2
   16b0a:	14058863          	beqz	a1,16c5a <_realloc_r+0x168>
   16b0e:	842e                	mv	s0,a1
   16b10:	8a2a                	mv	s4,a0
   16b12:	c9afa0ef          	jal	ra,10fac <__malloc_lock>
   16b16:	ff843783          	ld	a5,-8(s0)
   16b1a:	01790493          	addi	s1,s2,23
   16b1e:	02e00713          	li	a4,46
   16b22:	ff040a93          	addi	s5,s0,-16
   16b26:	ffc7f993          	andi	s3,a5,-4
   16b2a:	0a977d63          	bgeu	a4,s1,16be4 <_realloc_r+0xf2>
   16b2e:	80000737          	lui	a4,0x80000
   16b32:	98c1                	andi	s1,s1,-16
   16b34:	fff74713          	not	a4,a4
   16b38:	0a976a63          	bltu	a4,s1,16bec <_realloc_r+0xfa>
   16b3c:	0b24e863          	bltu	s1,s2,16bec <_realloc_r+0xfa>
   16b40:	0c99dc63          	bge	s3,s1,16c18 <_realloc_r+0x126>
   16b44:	0001f737          	lui	a4,0x1f
   16b48:	d4070c13          	addi	s8,a4,-704 # 1ed40 <__malloc_av_>
   16b4c:	010c3603          	ld	a2,16(s8)
   16b50:	013a86b3          	add	a3,s5,s3
   16b54:	6698                	ld	a4,8(a3)
   16b56:	14d60163          	beq	a2,a3,16c98 <_realloc_r+0x1a6>
   16b5a:	ffe77613          	andi	a2,a4,-2
   16b5e:	9636                	add	a2,a2,a3
   16b60:	6610                	ld	a2,8(a2)
   16b62:	8a05                	andi	a2,a2,1
   16b64:	e26d                	bnez	a2,16c46 <_realloc_r+0x154>
   16b66:	9b71                	andi	a4,a4,-4
   16b68:	00e98633          	add	a2,s3,a4
   16b6c:	0a965163          	bge	a2,s1,16c0e <_realloc_r+0x11c>
   16b70:	8b85                	andi	a5,a5,1
   16b72:	e38d                	bnez	a5,16b94 <_realloc_r+0xa2>
   16b74:	ff043b83          	ld	s7,-16(s0)
   16b78:	417a8bb3          	sub	s7,s5,s7
   16b7c:	008bb783          	ld	a5,8(s7)
   16b80:	9bf1                	andi	a5,a5,-4
   16b82:	973e                	add	a4,a4,a5
   16b84:	01370b33          	add	s6,a4,s3
   16b88:	269b5463          	bge	s6,s1,16df0 <_realloc_r+0x2fe>
   16b8c:	00f98b33          	add	s6,s3,a5
   16b90:	1e9b5963          	bge	s6,s1,16d82 <_realloc_r+0x290>
   16b94:	85ca                	mv	a1,s2
   16b96:	8552                	mv	a0,s4
   16b98:	bddf90ef          	jal	ra,10774 <_malloc_r>
   16b9c:	892a                	mv	s2,a0
   16b9e:	cd1d                	beqz	a0,16bdc <_realloc_r+0xea>
   16ba0:	ff843783          	ld	a5,-8(s0)
   16ba4:	ff050713          	addi	a4,a0,-16
   16ba8:	9bf9                	andi	a5,a5,-2
   16baa:	97d6                	add	a5,a5,s5
   16bac:	1ce78663          	beq	a5,a4,16d78 <_realloc_r+0x286>
   16bb0:	ff898613          	addi	a2,s3,-8
   16bb4:	04800793          	li	a5,72
   16bb8:	22c7e863          	bltu	a5,a2,16de8 <_realloc_r+0x2f6>
   16bbc:	02700713          	li	a4,39
   16bc0:	16c76b63          	bltu	a4,a2,16d36 <_realloc_r+0x244>
   16bc4:	87aa                	mv	a5,a0
   16bc6:	8722                	mv	a4,s0
   16bc8:	6314                	ld	a3,0(a4)
   16bca:	e394                	sd	a3,0(a5)
   16bcc:	6714                	ld	a3,8(a4)
   16bce:	e794                	sd	a3,8(a5)
   16bd0:	6b18                	ld	a4,16(a4)
   16bd2:	eb98                	sd	a4,16(a5)
   16bd4:	85a2                	mv	a1,s0
   16bd6:	8552                	mv	a0,s4
   16bd8:	9a9fc0ef          	jal	ra,13580 <_free_r>
   16bdc:	8552                	mv	a0,s4
   16bde:	bd0fa0ef          	jal	ra,10fae <__malloc_unlock>
   16be2:	a809                	j	16bf4 <_realloc_r+0x102>
   16be4:	02000493          	li	s1,32
   16be8:	f524fce3          	bgeu	s1,s2,16b40 <_realloc_r+0x4e>
   16bec:	47b1                	li	a5,12
   16bee:	00fa2023          	sw	a5,0(s4)
   16bf2:	4901                	li	s2,0
   16bf4:	60a6                	ld	ra,72(sp)
   16bf6:	6406                	ld	s0,64(sp)
   16bf8:	74e2                	ld	s1,56(sp)
   16bfa:	79a2                	ld	s3,40(sp)
   16bfc:	7a02                	ld	s4,32(sp)
   16bfe:	6ae2                	ld	s5,24(sp)
   16c00:	6b42                	ld	s6,16(sp)
   16c02:	6ba2                	ld	s7,8(sp)
   16c04:	6c02                	ld	s8,0(sp)
   16c06:	854a                	mv	a0,s2
   16c08:	7942                	ld	s2,48(sp)
   16c0a:	6161                	addi	sp,sp,80
   16c0c:	8082                	ret
   16c0e:	6e9c                	ld	a5,24(a3)
   16c10:	6a98                	ld	a4,16(a3)
   16c12:	89b2                	mv	s3,a2
   16c14:	ef1c                	sd	a5,24(a4)
   16c16:	eb98                	sd	a4,16(a5)
   16c18:	008ab783          	ld	a5,8(s5)
   16c1c:	409986b3          	sub	a3,s3,s1
   16c20:	467d                	li	a2,31
   16c22:	8b85                	andi	a5,a5,1
   16c24:	013a8733          	add	a4,s5,s3
   16c28:	04d66763          	bltu	a2,a3,16c76 <_realloc_r+0x184>
   16c2c:	00f9e7b3          	or	a5,s3,a5
   16c30:	00fab423          	sd	a5,8(s5)
   16c34:	671c                	ld	a5,8(a4)
   16c36:	0017e793          	ori	a5,a5,1
   16c3a:	e71c                	sd	a5,8(a4)
   16c3c:	8552                	mv	a0,s4
   16c3e:	b70fa0ef          	jal	ra,10fae <__malloc_unlock>
   16c42:	8922                	mv	s2,s0
   16c44:	bf45                	j	16bf4 <_realloc_r+0x102>
   16c46:	8b85                	andi	a5,a5,1
   16c48:	f7b1                	bnez	a5,16b94 <_realloc_r+0xa2>
   16c4a:	ff043b83          	ld	s7,-16(s0)
   16c4e:	417a8bb3          	sub	s7,s5,s7
   16c52:	008bb783          	ld	a5,8(s7)
   16c56:	9bf1                	andi	a5,a5,-4
   16c58:	bf15                	j	16b8c <_realloc_r+0x9a>
   16c5a:	6406                	ld	s0,64(sp)
   16c5c:	60a6                	ld	ra,72(sp)
   16c5e:	74e2                	ld	s1,56(sp)
   16c60:	7942                	ld	s2,48(sp)
   16c62:	79a2                	ld	s3,40(sp)
   16c64:	7a02                	ld	s4,32(sp)
   16c66:	6ae2                	ld	s5,24(sp)
   16c68:	6b42                	ld	s6,16(sp)
   16c6a:	6ba2                	ld	s7,8(sp)
   16c6c:	6c02                	ld	s8,0(sp)
   16c6e:	85b2                	mv	a1,a2
   16c70:	6161                	addi	sp,sp,80
   16c72:	b03f906f          	j	10774 <_malloc_r>
   16c76:	8fc5                	or	a5,a5,s1
   16c78:	00fab423          	sd	a5,8(s5)
   16c7c:	009a85b3          	add	a1,s5,s1
   16c80:	0016e693          	ori	a3,a3,1
   16c84:	e594                	sd	a3,8(a1)
   16c86:	671c                	ld	a5,8(a4)
   16c88:	05c1                	addi	a1,a1,16
   16c8a:	8552                	mv	a0,s4
   16c8c:	0017e793          	ori	a5,a5,1
   16c90:	e71c                	sd	a5,8(a4)
   16c92:	8effc0ef          	jal	ra,13580 <_free_r>
   16c96:	b75d                	j	16c3c <_realloc_r+0x14a>
   16c98:	9b71                	andi	a4,a4,-4
   16c9a:	00e986b3          	add	a3,s3,a4
   16c9e:	02048613          	addi	a2,s1,32
   16ca2:	0ac6d763          	bge	a3,a2,16d50 <_realloc_r+0x25e>
   16ca6:	8b85                	andi	a5,a5,1
   16ca8:	ee0796e3          	bnez	a5,16b94 <_realloc_r+0xa2>
   16cac:	ff043b83          	ld	s7,-16(s0)
   16cb0:	417a8bb3          	sub	s7,s5,s7
   16cb4:	008bb783          	ld	a5,8(s7)
   16cb8:	9bf1                	andi	a5,a5,-4
   16cba:	973e                	add	a4,a4,a5
   16cbc:	01370b33          	add	s6,a4,s3
   16cc0:	eccb46e3          	blt	s6,a2,16b8c <_realloc_r+0x9a>
   16cc4:	018bb783          	ld	a5,24(s7)
   16cc8:	010bb703          	ld	a4,16(s7)
   16ccc:	ff898613          	addi	a2,s3,-8
   16cd0:	04800693          	li	a3,72
   16cd4:	ef1c                	sd	a5,24(a4)
   16cd6:	eb98                	sd	a4,16(a5)
   16cd8:	010b8913          	addi	s2,s7,16
   16cdc:	1cc6e163          	bltu	a3,a2,16e9e <_realloc_r+0x3ac>
   16ce0:	02700713          	li	a4,39
   16ce4:	87ca                	mv	a5,s2
   16ce6:	00c77f63          	bgeu	a4,a2,16d04 <_realloc_r+0x212>
   16cea:	6018                	ld	a4,0(s0)
   16cec:	03700793          	li	a5,55
   16cf0:	00ebb823          	sd	a4,16(s7)
   16cf4:	6418                	ld	a4,8(s0)
   16cf6:	00ebbc23          	sd	a4,24(s7)
   16cfa:	1ac7e763          	bltu	a5,a2,16ea8 <_realloc_r+0x3b6>
   16cfe:	0441                	addi	s0,s0,16
   16d00:	020b8793          	addi	a5,s7,32
   16d04:	6018                	ld	a4,0(s0)
   16d06:	e398                	sd	a4,0(a5)
   16d08:	6418                	ld	a4,8(s0)
   16d0a:	e798                	sd	a4,8(a5)
   16d0c:	6818                	ld	a4,16(s0)
   16d0e:	eb98                	sd	a4,16(a5)
   16d10:	009b8733          	add	a4,s7,s1
   16d14:	409b07b3          	sub	a5,s6,s1
   16d18:	00ec3823          	sd	a4,16(s8)
   16d1c:	0017e793          	ori	a5,a5,1
   16d20:	e71c                	sd	a5,8(a4)
   16d22:	008bb783          	ld	a5,8(s7)
   16d26:	8552                	mv	a0,s4
   16d28:	8b85                	andi	a5,a5,1
   16d2a:	8fc5                	or	a5,a5,s1
   16d2c:	00fbb423          	sd	a5,8(s7)
   16d30:	a7efa0ef          	jal	ra,10fae <__malloc_unlock>
   16d34:	b5c1                	j	16bf4 <_realloc_r+0x102>
   16d36:	6014                	ld	a3,0(s0)
   16d38:	03700713          	li	a4,55
   16d3c:	e114                	sd	a3,0(a0)
   16d3e:	6414                	ld	a3,8(s0)
   16d40:	e514                	sd	a3,8(a0)
   16d42:	12c76663          	bltu	a4,a2,16e6e <_realloc_r+0x37c>
   16d46:	01040713          	addi	a4,s0,16
   16d4a:	01050793          	addi	a5,a0,16
   16d4e:	bdad                	j	16bc8 <_realloc_r+0xd6>
   16d50:	9aa6                	add	s5,s5,s1
   16d52:	409687b3          	sub	a5,a3,s1
   16d56:	015c3823          	sd	s5,16(s8)
   16d5a:	0017e793          	ori	a5,a5,1
   16d5e:	00fab423          	sd	a5,8(s5)
   16d62:	ff843783          	ld	a5,-8(s0)
   16d66:	8552                	mv	a0,s4
   16d68:	8922                	mv	s2,s0
   16d6a:	8b85                	andi	a5,a5,1
   16d6c:	8fc5                	or	a5,a5,s1
   16d6e:	fef43c23          	sd	a5,-8(s0)
   16d72:	a3cfa0ef          	jal	ra,10fae <__malloc_unlock>
   16d76:	bdbd                	j	16bf4 <_realloc_r+0x102>
   16d78:	ff853783          	ld	a5,-8(a0)
   16d7c:	9bf1                	andi	a5,a5,-4
   16d7e:	99be                	add	s3,s3,a5
   16d80:	bd61                	j	16c18 <_realloc_r+0x126>
   16d82:	018bb783          	ld	a5,24(s7)
   16d86:	010bb703          	ld	a4,16(s7)
   16d8a:	ff898613          	addi	a2,s3,-8
   16d8e:	04800693          	li	a3,72
   16d92:	ef1c                	sd	a5,24(a4)
   16d94:	eb98                	sd	a4,16(a5)
   16d96:	010b8913          	addi	s2,s7,16
   16d9a:	0cc6e263          	bltu	a3,a2,16e5e <_realloc_r+0x36c>
   16d9e:	02700713          	li	a4,39
   16da2:	87ca                	mv	a5,s2
   16da4:	02c77863          	bgeu	a4,a2,16dd4 <_realloc_r+0x2e2>
   16da8:	6018                	ld	a4,0(s0)
   16daa:	03700793          	li	a5,55
   16dae:	00ebb823          	sd	a4,16(s7)
   16db2:	6418                	ld	a4,8(s0)
   16db4:	00ebbc23          	sd	a4,24(s7)
   16db8:	0cc7f663          	bgeu	a5,a2,16e84 <_realloc_r+0x392>
   16dbc:	681c                	ld	a5,16(s0)
   16dbe:	02fbb023          	sd	a5,32(s7)
   16dc2:	6c1c                	ld	a5,24(s0)
   16dc4:	02fbb423          	sd	a5,40(s7)
   16dc8:	06d60f63          	beq	a2,a3,16e46 <_realloc_r+0x354>
   16dcc:	02040413          	addi	s0,s0,32
   16dd0:	030b8793          	addi	a5,s7,48
   16dd4:	6018                	ld	a4,0(s0)
   16dd6:	89da                	mv	s3,s6
   16dd8:	8ade                	mv	s5,s7
   16dda:	e398                	sd	a4,0(a5)
   16ddc:	6418                	ld	a4,8(s0)
   16dde:	e798                	sd	a4,8(a5)
   16de0:	6818                	ld	a4,16(s0)
   16de2:	844a                	mv	s0,s2
   16de4:	eb98                	sd	a4,16(a5)
   16de6:	bd0d                	j	16c18 <_realloc_r+0x126>
   16de8:	85a2                	mv	a1,s0
   16dea:	f51fe0ef          	jal	ra,15d3a <memmove>
   16dee:	b3dd                	j	16bd4 <_realloc_r+0xe2>
   16df0:	6e9c                	ld	a5,24(a3)
   16df2:	6a98                	ld	a4,16(a3)
   16df4:	ff898613          	addi	a2,s3,-8
   16df8:	04800693          	li	a3,72
   16dfc:	ef1c                	sd	a5,24(a4)
   16dfe:	eb98                	sd	a4,16(a5)
   16e00:	010bb703          	ld	a4,16(s7)
   16e04:	018bb783          	ld	a5,24(s7)
   16e08:	010b8913          	addi	s2,s7,16
   16e0c:	ef1c                	sd	a5,24(a4)
   16e0e:	eb98                	sd	a4,16(a5)
   16e10:	04c6e763          	bltu	a3,a2,16e5e <_realloc_r+0x36c>
   16e14:	02700713          	li	a4,39
   16e18:	87ca                	mv	a5,s2
   16e1a:	fac77de3          	bgeu	a4,a2,16dd4 <_realloc_r+0x2e2>
   16e1e:	6018                	ld	a4,0(s0)
   16e20:	03700793          	li	a5,55
   16e24:	00ebb823          	sd	a4,16(s7)
   16e28:	6418                	ld	a4,8(s0)
   16e2a:	00ebbc23          	sd	a4,24(s7)
   16e2e:	04c7fb63          	bgeu	a5,a2,16e84 <_realloc_r+0x392>
   16e32:	6818                	ld	a4,16(s0)
   16e34:	04800793          	li	a5,72
   16e38:	02ebb023          	sd	a4,32(s7)
   16e3c:	6c18                	ld	a4,24(s0)
   16e3e:	02ebb423          	sd	a4,40(s7)
   16e42:	f8f615e3          	bne	a2,a5,16dcc <_realloc_r+0x2da>
   16e46:	7018                	ld	a4,32(s0)
   16e48:	040b8793          	addi	a5,s7,64
   16e4c:	03040413          	addi	s0,s0,48
   16e50:	02ebb823          	sd	a4,48(s7)
   16e54:	ff843703          	ld	a4,-8(s0)
   16e58:	02ebbc23          	sd	a4,56(s7)
   16e5c:	bfa5                	j	16dd4 <_realloc_r+0x2e2>
   16e5e:	85a2                	mv	a1,s0
   16e60:	854a                	mv	a0,s2
   16e62:	ed9fe0ef          	jal	ra,15d3a <memmove>
   16e66:	844a                	mv	s0,s2
   16e68:	89da                	mv	s3,s6
   16e6a:	8ade                	mv	s5,s7
   16e6c:	b375                	j	16c18 <_realloc_r+0x126>
   16e6e:	6818                	ld	a4,16(s0)
   16e70:	e918                	sd	a4,16(a0)
   16e72:	6c18                	ld	a4,24(s0)
   16e74:	ed18                	sd	a4,24(a0)
   16e76:	00f60b63          	beq	a2,a5,16e8c <_realloc_r+0x39a>
   16e7a:	02040713          	addi	a4,s0,32
   16e7e:	02050793          	addi	a5,a0,32
   16e82:	b399                	j	16bc8 <_realloc_r+0xd6>
   16e84:	0441                	addi	s0,s0,16
   16e86:	020b8793          	addi	a5,s7,32
   16e8a:	b7a9                	j	16dd4 <_realloc_r+0x2e2>
   16e8c:	7014                	ld	a3,32(s0)
   16e8e:	03040713          	addi	a4,s0,48
   16e92:	03050793          	addi	a5,a0,48
   16e96:	f114                	sd	a3,32(a0)
   16e98:	7414                	ld	a3,40(s0)
   16e9a:	f514                	sd	a3,40(a0)
   16e9c:	b335                	j	16bc8 <_realloc_r+0xd6>
   16e9e:	85a2                	mv	a1,s0
   16ea0:	854a                	mv	a0,s2
   16ea2:	e99fe0ef          	jal	ra,15d3a <memmove>
   16ea6:	b5ad                	j	16d10 <_realloc_r+0x21e>
   16ea8:	681c                	ld	a5,16(s0)
   16eaa:	02fbb023          	sd	a5,32(s7)
   16eae:	6c1c                	ld	a5,24(s0)
   16eb0:	02fbb423          	sd	a5,40(s7)
   16eb4:	00d60763          	beq	a2,a3,16ec2 <_realloc_r+0x3d0>
   16eb8:	02040413          	addi	s0,s0,32
   16ebc:	030b8793          	addi	a5,s7,48
   16ec0:	b591                	j	16d04 <_realloc_r+0x212>
   16ec2:	7018                	ld	a4,32(s0)
   16ec4:	040b8793          	addi	a5,s7,64
   16ec8:	03040413          	addi	s0,s0,48
   16ecc:	02ebb823          	sd	a4,48(s7)
   16ed0:	ff843703          	ld	a4,-8(s0)
   16ed4:	02ebbc23          	sd	a4,56(s7)
   16ed8:	b535                	j	16d04 <_realloc_r+0x212>

0000000000016eda <cleanup_glue>:
   16eda:	7179                	addi	sp,sp,-48
   16edc:	e84a                	sd	s2,16(sp)
   16ede:	0005b903          	ld	s2,0(a1)
   16ee2:	f022                	sd	s0,32(sp)
   16ee4:	ec26                	sd	s1,24(sp)
   16ee6:	f406                	sd	ra,40(sp)
   16ee8:	e44e                	sd	s3,8(sp)
   16eea:	e052                	sd	s4,0(sp)
   16eec:	842e                	mv	s0,a1
   16eee:	84aa                	mv	s1,a0
   16ef0:	02090b63          	beqz	s2,16f26 <cleanup_glue+0x4c>
   16ef4:	00093983          	ld	s3,0(s2)
   16ef8:	02098363          	beqz	s3,16f1e <cleanup_glue+0x44>
   16efc:	0009ba03          	ld	s4,0(s3)
   16f00:	000a0b63          	beqz	s4,16f16 <cleanup_glue+0x3c>
   16f04:	000a3583          	ld	a1,0(s4)
   16f08:	c199                	beqz	a1,16f0e <cleanup_glue+0x34>
   16f0a:	fd1ff0ef          	jal	ra,16eda <cleanup_glue>
   16f0e:	85d2                	mv	a1,s4
   16f10:	8526                	mv	a0,s1
   16f12:	e6efc0ef          	jal	ra,13580 <_free_r>
   16f16:	85ce                	mv	a1,s3
   16f18:	8526                	mv	a0,s1
   16f1a:	e66fc0ef          	jal	ra,13580 <_free_r>
   16f1e:	85ca                	mv	a1,s2
   16f20:	8526                	mv	a0,s1
   16f22:	e5efc0ef          	jal	ra,13580 <_free_r>
   16f26:	85a2                	mv	a1,s0
   16f28:	7402                	ld	s0,32(sp)
   16f2a:	70a2                	ld	ra,40(sp)
   16f2c:	6942                	ld	s2,16(sp)
   16f2e:	69a2                	ld	s3,8(sp)
   16f30:	6a02                	ld	s4,0(sp)
   16f32:	8526                	mv	a0,s1
   16f34:	64e2                	ld	s1,24(sp)
   16f36:	6145                	addi	sp,sp,48
   16f38:	e48fc06f          	j	13580 <_free_r>

0000000000016f3c <_reclaim_reent>:
   16f3c:	6481b783          	ld	a5,1608(gp) # 1f740 <_impure_ptr>
   16f40:	0aa78563          	beq	a5,a0,16fea <_reclaim_reent+0xae>
   16f44:	7d2c                	ld	a1,120(a0)
   16f46:	7179                	addi	sp,sp,-48
   16f48:	ec26                	sd	s1,24(sp)
   16f4a:	f406                	sd	ra,40(sp)
   16f4c:	f022                	sd	s0,32(sp)
   16f4e:	e84a                	sd	s2,16(sp)
   16f50:	e44e                	sd	s3,8(sp)
   16f52:	84aa                	mv	s1,a0
   16f54:	c58d                	beqz	a1,16f7e <_reclaim_reent+0x42>
   16f56:	4901                	li	s2,0
   16f58:	20000993          	li	s3,512
   16f5c:	012587b3          	add	a5,a1,s2
   16f60:	6380                	ld	s0,0(a5)
   16f62:	c801                	beqz	s0,16f72 <_reclaim_reent+0x36>
   16f64:	85a2                	mv	a1,s0
   16f66:	6000                	ld	s0,0(s0)
   16f68:	8526                	mv	a0,s1
   16f6a:	e16fc0ef          	jal	ra,13580 <_free_r>
   16f6e:	f87d                	bnez	s0,16f64 <_reclaim_reent+0x28>
   16f70:	7cac                	ld	a1,120(s1)
   16f72:	0921                	addi	s2,s2,8
   16f74:	ff3914e3          	bne	s2,s3,16f5c <_reclaim_reent+0x20>
   16f78:	8526                	mv	a0,s1
   16f7a:	e06fc0ef          	jal	ra,13580 <_free_r>
   16f7e:	70ac                	ld	a1,96(s1)
   16f80:	c581                	beqz	a1,16f88 <_reclaim_reent+0x4c>
   16f82:	8526                	mv	a0,s1
   16f84:	dfcfc0ef          	jal	ra,13580 <_free_r>
   16f88:	1f84b403          	ld	s0,504(s1)
   16f8c:	cc01                	beqz	s0,16fa4 <_reclaim_reent+0x68>
   16f8e:	20048913          	addi	s2,s1,512
   16f92:	01240963          	beq	s0,s2,16fa4 <_reclaim_reent+0x68>
   16f96:	85a2                	mv	a1,s0
   16f98:	6000                	ld	s0,0(s0)
   16f9a:	8526                	mv	a0,s1
   16f9c:	de4fc0ef          	jal	ra,13580 <_free_r>
   16fa0:	fe891be3          	bne	s2,s0,16f96 <_reclaim_reent+0x5a>
   16fa4:	64cc                	ld	a1,136(s1)
   16fa6:	c581                	beqz	a1,16fae <_reclaim_reent+0x72>
   16fa8:	8526                	mv	a0,s1
   16faa:	dd6fc0ef          	jal	ra,13580 <_free_r>
   16fae:	48bc                	lw	a5,80(s1)
   16fb0:	c795                	beqz	a5,16fdc <_reclaim_reent+0xa0>
   16fb2:	6cbc                	ld	a5,88(s1)
   16fb4:	8526                	mv	a0,s1
   16fb6:	9782                	jalr	a5
   16fb8:	5204b403          	ld	s0,1312(s1)
   16fbc:	c005                	beqz	s0,16fdc <_reclaim_reent+0xa0>
   16fbe:	600c                	ld	a1,0(s0)
   16fc0:	c581                	beqz	a1,16fc8 <_reclaim_reent+0x8c>
   16fc2:	8526                	mv	a0,s1
   16fc4:	f17ff0ef          	jal	ra,16eda <cleanup_glue>
   16fc8:	85a2                	mv	a1,s0
   16fca:	7402                	ld	s0,32(sp)
   16fcc:	70a2                	ld	ra,40(sp)
   16fce:	6942                	ld	s2,16(sp)
   16fd0:	69a2                	ld	s3,8(sp)
   16fd2:	8526                	mv	a0,s1
   16fd4:	64e2                	ld	s1,24(sp)
   16fd6:	6145                	addi	sp,sp,48
   16fd8:	da8fc06f          	j	13580 <_free_r>
   16fdc:	70a2                	ld	ra,40(sp)
   16fde:	7402                	ld	s0,32(sp)
   16fe0:	64e2                	ld	s1,24(sp)
   16fe2:	6942                	ld	s2,16(sp)
   16fe4:	69a2                	ld	s3,8(sp)
   16fe6:	6145                	addi	sp,sp,48
   16fe8:	8082                	ret
   16fea:	8082                	ret

0000000000016fec <frexp>:
   16fec:	e20507d3          	fmv.x.d	a5,fa0
   16ff0:	80000637          	lui	a2,0x80000
   16ff4:	fff64613          	not	a2,a2
   16ff8:	4207d593          	srai	a1,a5,0x20
   16ffc:	00c5f733          	and	a4,a1,a2
   17000:	00052023          	sw	zero,0(a0)
   17004:	7ff00837          	lui	a6,0x7ff00
   17008:	86ae                	mv	a3,a1
   1700a:	05075c63          	bge	a4,a6,17062 <frexp+0x76>
   1700e:	00f76833          	or	a6,a4,a5
   17012:	2801                	sext.w	a6,a6
   17014:	04080763          	beqz	a6,17062 <frexp+0x76>
   17018:	7ff00837          	lui	a6,0x7ff00
   1701c:	0105f5b3          	and	a1,a1,a6
   17020:	4801                	li	a6,0
   17022:	ed89                	bnez	a1,1703c <frexp+0x50>
   17024:	6281b787          	fld	fa5,1576(gp) # 1f720 <mask+0x18>
   17028:	fca00813          	li	a6,-54
   1702c:	12f577d3          	fmul.d	fa5,fa0,fa5
   17030:	e20787d3          	fmv.x.d	a5,fa5
   17034:	4207d693          	srai	a3,a5,0x20
   17038:	00c6f733          	and	a4,a3,a2
   1703c:	80100637          	lui	a2,0x80100
   17040:	167d                	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800e0707>
   17042:	8ef1                	and	a3,a3,a2
   17044:	3fe00637          	lui	a2,0x3fe00
   17048:	8ed1                	or	a3,a3,a2
   1704a:	4147571b          	sraiw	a4,a4,0x14
   1704e:	567d                	li	a2,-1
   17050:	c027071b          	addiw	a4,a4,-1022
   17054:	9201                	srli	a2,a2,0x20
   17056:	0107073b          	addw	a4,a4,a6
   1705a:	1682                	slli	a3,a3,0x20
   1705c:	8ff1                	and	a5,a5,a2
   1705e:	c118                	sw	a4,0(a0)
   17060:	8fd5                	or	a5,a5,a3
   17062:	f2078553          	fmv.d.x	fa0,a5
   17066:	8082                	ret

0000000000017068 <_sprintf_r>:
   17068:	7111                	addi	sp,sp,-256
   1706a:	0d810e93          	addi	t4,sp,216
   1706e:	f5be                	sd	a5,232(sp)
   17070:	80000337          	lui	t1,0x80000
   17074:	77c1                	lui	a5,0xffff0
   17076:	8e2e                	mv	t3,a1
   17078:	fff34313          	not	t1,t1
   1707c:	edb6                	sd	a3,216(sp)
   1707e:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd0910>
   17082:	080c                	addi	a1,sp,16
   17084:	86f6                	mv	a3,t4
   17086:	e586                	sd	ra,200(sp)
   17088:	d03e                	sw	a5,32(sp)
   1708a:	f1ba                	sd	a4,224(sp)
   1708c:	f9c2                	sd	a6,240(sp)
   1708e:	fdc6                	sd	a7,248(sp)
   17090:	e872                	sd	t3,16(sp)
   17092:	f472                	sd	t3,40(sp)
   17094:	d81a                	sw	t1,48(sp)
   17096:	ce1a                	sw	t1,28(sp)
   17098:	e476                	sd	t4,8(sp)
   1709a:	0cc000ef          	jal	ra,17166 <_svfprintf_r>
   1709e:	67c2                	ld	a5,16(sp)
   170a0:	00078023          	sb	zero,0(a5)
   170a4:	60ae                	ld	ra,200(sp)
   170a6:	6111                	addi	sp,sp,256
   170a8:	8082                	ret

00000000000170aa <sprintf>:
   170aa:	8e2a                	mv	t3,a0
   170ac:	7111                	addi	sp,sp,-256
   170ae:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   170b2:	0d010e93          	addi	t4,sp,208
   170b6:	f5be                	sd	a5,232(sp)
   170b8:	80000337          	lui	t1,0x80000
   170bc:	77c1                	lui	a5,0xffff0
   170be:	fff34313          	not	t1,t1
   170c2:	e9b2                	sd	a2,208(sp)
   170c4:	edb6                	sd	a3,216(sp)
   170c6:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd0910>
   170ca:	862e                	mv	a2,a1
   170cc:	86f6                	mv	a3,t4
   170ce:	080c                	addi	a1,sp,16
   170d0:	e586                	sd	ra,200(sp)
   170d2:	d03e                	sw	a5,32(sp)
   170d4:	f1ba                	sd	a4,224(sp)
   170d6:	f9c2                	sd	a6,240(sp)
   170d8:	fdc6                	sd	a7,248(sp)
   170da:	e872                	sd	t3,16(sp)
   170dc:	f472                	sd	t3,40(sp)
   170de:	d81a                	sw	t1,48(sp)
   170e0:	ce1a                	sw	t1,28(sp)
   170e2:	e476                	sd	t4,8(sp)
   170e4:	082000ef          	jal	ra,17166 <_svfprintf_r>
   170e8:	67c2                	ld	a5,16(sp)
   170ea:	00078023          	sb	zero,0(a5)
   170ee:	60ae                	ld	ra,200(sp)
   170f0:	6111                	addi	sp,sp,256
   170f2:	8082                	ret

00000000000170f4 <strncpy>:
   170f4:	00b567b3          	or	a5,a0,a1
   170f8:	8b9d                	andi	a5,a5,7
   170fa:	872a                	mv	a4,a0
   170fc:	e7b1                	bnez	a5,17148 <strncpy+0x54>
   170fe:	479d                	li	a5,7
   17100:	04c7f463          	bgeu	a5,a2,17148 <strncpy+0x54>
   17104:	6001b303          	ld	t1,1536(gp) # 1f6f8 <__SDATA_BEGIN__>
   17108:	6081b883          	ld	a7,1544(gp) # 1f700 <__SDATA_BEGIN__+0x8>
   1710c:	4e1d                	li	t3,7
   1710e:	6194                	ld	a3,0(a1)
   17110:	006687b3          	add	a5,a3,t1
   17114:	fff6c813          	not	a6,a3
   17118:	0107f7b3          	and	a5,a5,a6
   1711c:	0117f7b3          	and	a5,a5,a7
   17120:	e785                	bnez	a5,17148 <strncpy+0x54>
   17122:	e314                	sd	a3,0(a4)
   17124:	1661                	addi	a2,a2,-8 # 3fdffff8 <__BSS_END__+0x3fde0700>
   17126:	0721                	addi	a4,a4,8
   17128:	05a1                	addi	a1,a1,8
   1712a:	fece62e3          	bltu	t3,a2,1710e <strncpy+0x1a>
   1712e:	0585                	addi	a1,a1,1
   17130:	00170793          	addi	a5,a4,1
   17134:	ce11                	beqz	a2,17150 <strncpy+0x5c>
   17136:	fff5c683          	lbu	a3,-1(a1)
   1713a:	fff60813          	addi	a6,a2,-1
   1713e:	fed78fa3          	sb	a3,-1(a5)
   17142:	ca81                	beqz	a3,17152 <strncpy+0x5e>
   17144:	873e                	mv	a4,a5
   17146:	8642                	mv	a2,a6
   17148:	0585                	addi	a1,a1,1
   1714a:	00170793          	addi	a5,a4,1
   1714e:	f665                	bnez	a2,17136 <strncpy+0x42>
   17150:	8082                	ret
   17152:	9732                	add	a4,a4,a2
   17154:	00080863          	beqz	a6,17164 <strncpy+0x70>
   17158:	0785                	addi	a5,a5,1
   1715a:	fe078fa3          	sb	zero,-1(a5)
   1715e:	fee79de3          	bne	a5,a4,17158 <strncpy+0x64>
   17162:	8082                	ret
   17164:	8082                	ret

0000000000017166 <_svfprintf_r>:
   17166:	d8010113          	addi	sp,sp,-640
   1716a:	26113c23          	sd	ra,632(sp)
   1716e:	25313c23          	sd	s3,600(sp)
   17172:	25413823          	sd	s4,592(sp)
   17176:	23913423          	sd	s9,552(sp)
   1717a:	8a2e                	mv	s4,a1
   1717c:	8cb2                	mv	s9,a2
   1717e:	e836                	sd	a3,16(sp)
   17180:	26813823          	sd	s0,624(sp)
   17184:	26913423          	sd	s1,616(sp)
   17188:	27213023          	sd	s2,608(sp)
   1718c:	25513423          	sd	s5,584(sp)
   17190:	25613023          	sd	s6,576(sp)
   17194:	23713c23          	sd	s7,568(sp)
   17198:	23813823          	sd	s8,560(sp)
   1719c:	23a13023          	sd	s10,544(sp)
   171a0:	21b13c23          	sd	s11,536(sp)
   171a4:	89aa                	mv	s3,a0
   171a6:	9affe0ef          	jal	ra,15b54 <_localeconv_r>
   171aa:	611c                	ld	a5,0(a0)
   171ac:	853e                	mv	a0,a5
   171ae:	f8be                	sd	a5,112(sp)
   171b0:	9fafa0ef          	jal	ra,113aa <strlen>
   171b4:	010a5783          	lhu	a5,16(s4)
   171b8:	e202                	sd	zero,256(sp)
   171ba:	e602                	sd	zero,264(sp)
   171bc:	0807f793          	andi	a5,a5,128
   171c0:	f4aa                	sd	a0,104(sp)
   171c2:	c789                	beqz	a5,171cc <_svfprintf_r+0x66>
   171c4:	018a3783          	ld	a5,24(s4)
   171c8:	5a0782e3          	beqz	a5,17f6c <_svfprintf_r+0xe06>
   171cc:	67f5                	lui	a5,0x1d
   171ce:	9587b783          	ld	a5,-1704(a5) # 1c958 <__clzdi2+0x318>
   171d2:	19010b13          	addi	s6,sp,400
   171d6:	ea5a                	sd	s6,272(sp)
   171d8:	e93e                	sd	a5,144(sp)
   171da:	67f5                	lui	a5,0x1d
   171dc:	9687b783          	ld	a5,-1688(a5) # 1c968 <__clzdi2+0x328>
   171e0:	f202                	sd	zero,288(sp)
   171e2:	10012c23          	sw	zero,280(sp)
   171e6:	ed3e                	sd	a5,152(sp)
   171e8:	67f5                	lui	a5,0x1d
   171ea:	9787b783          	ld	a5,-1672(a5) # 1c978 <__clzdi2+0x338>
   171ee:	f002                	sd	zero,32(sp)
   171f0:	f402                	sd	zero,40(sp)
   171f2:	f13e                	sd	a5,160(sp)
   171f4:	000cc783          	lbu	a5,0(s9)
   171f8:	fc82                	sd	zero,120(sp)
   171fa:	f082                	sd	zero,96(sp)
   171fc:	e102                	sd	zero,128(sp)
   171fe:	e502                	sd	zero,136(sp)
   17200:	e402                	sd	zero,8(sp)
   17202:	835a                	mv	t1,s6
   17204:	1c078563          	beqz	a5,173ce <_svfprintf_r+0x268>
   17208:	8466                	mv	s0,s9
   1720a:	02500713          	li	a4,37
   1720e:	2ce78e63          	beq	a5,a4,174ea <_svfprintf_r+0x384>
   17212:	00144783          	lbu	a5,1(s0)
   17216:	0405                	addi	s0,s0,1
   17218:	fbfd                	bnez	a5,1720e <_svfprintf_r+0xa8>
   1721a:	419404bb          	subw	s1,s0,s9
   1721e:	1a048863          	beqz	s1,173ce <_svfprintf_r+0x268>
   17222:	11812783          	lw	a5,280(sp)
   17226:	7712                	ld	a4,288(sp)
   17228:	01933023          	sd	s9,0(t1) # ffffffff80000000 <__BSS_END__+0xffffffff7ffe0708>
   1722c:	2785                	addiw	a5,a5,1
   1722e:	9726                	add	a4,a4,s1
   17230:	00933423          	sd	s1,8(t1)
   17234:	f23a                	sd	a4,288(sp)
   17236:	10f12c23          	sw	a5,280(sp)
   1723a:	0007871b          	sext.w	a4,a5
   1723e:	479d                	li	a5,7
   17240:	0341                	addi	t1,t1,16
   17242:	2ae7cb63          	blt	a5,a4,174f8 <_svfprintf_r+0x392>
   17246:	6722                	ld	a4,8(sp)
   17248:	00044783          	lbu	a5,0(s0)
   1724c:	9f25                	addw	a4,a4,s1
   1724e:	e43a                	sd	a4,8(sp)
   17250:	16078f63          	beqz	a5,173ce <_svfprintf_r+0x268>
   17254:	67f5                	lui	a5,0x1d
   17256:	00144e03          	lbu	t3,1(s0)
   1725a:	0c010fa3          	sb	zero,223(sp)
   1725e:	0405                	addi	s0,s0,1
   17260:	5c7d                	li	s8,-1
   17262:	4a81                	li	s5,0
   17264:	4481                	li	s1,0
   17266:	05a00913          	li	s2,90
   1726a:	e3c78b93          	addi	s7,a5,-452 # 1ce3c <p05.0+0xc>
   1726e:	4da5                	li	s11,9
   17270:	0405                	addi	s0,s0,1
   17272:	000e0d1b          	sext.w	s10,t3
   17276:	02a00693          	li	a3,42
   1727a:	fe0d079b          	addiw	a5,s10,-32
   1727e:	0007871b          	sext.w	a4,a5
   17282:	04e96363          	bltu	s2,a4,172c8 <_svfprintf_r+0x162>
   17286:	02079713          	slli	a4,a5,0x20
   1728a:	01e75793          	srli	a5,a4,0x1e
   1728e:	97de                	add	a5,a5,s7
   17290:	439c                	lw	a5,0(a5)
   17292:	8782                	jr	a5
   17294:	4a81                	li	s5,0
   17296:	00044703          	lbu	a4,0(s0)
   1729a:	002a979b          	slliw	a5,s5,0x2
   1729e:	015787bb          	addw	a5,a5,s5
   172a2:	fd0d0e1b          	addiw	t3,s10,-48
   172a6:	0017979b          	slliw	a5,a5,0x1
   172aa:	fd07061b          	addiw	a2,a4,-48
   172ae:	0405                	addi	s0,s0,1
   172b0:	00fe0abb          	addw	s5,t3,a5
   172b4:	00070d1b          	sext.w	s10,a4
   172b8:	fccdffe3          	bgeu	s11,a2,17296 <_svfprintf_r+0x130>
   172bc:	fe0d079b          	addiw	a5,s10,-32
   172c0:	0007871b          	sext.w	a4,a5
   172c4:	fce971e3          	bgeu	s2,a4,17286 <_svfprintf_r+0x120>
   172c8:	100d0363          	beqz	s10,173ce <_svfprintf_r+0x268>
   172cc:	13a10423          	sb	s10,296(sp)
   172d0:	0c010fa3          	sb	zero,223(sp)
   172d4:	4905                	li	s2,1
   172d6:	4b85                	li	s7,1
   172d8:	12810c93          	addi	s9,sp,296
   172dc:	ec02                	sd	zero,24(sp)
   172de:	4c01                	li	s8,0
   172e0:	e882                	sd	zero,80(sp)
   172e2:	ec82                	sd	zero,88(sp)
   172e4:	e482                	sd	zero,72(sp)
   172e6:	0024f293          	andi	t0,s1,2
   172ea:	00028363          	beqz	t0,172f0 <_svfprintf_r+0x18a>
   172ee:	2909                	addiw	s2,s2,2
   172f0:	0844fd93          	andi	s11,s1,132
   172f4:	7792                	ld	a5,288(sp)
   172f6:	000d9663          	bnez	s11,17302 <_svfprintf_r+0x19c>
   172fa:	412a86bb          	subw	a3,s5,s2
   172fe:	04d04be3          	bgtz	a3,17b54 <_svfprintf_r+0x9ee>
   17302:	0df14703          	lbu	a4,223(sp)
   17306:	c70d                	beqz	a4,17330 <_svfprintf_r+0x1ca>
   17308:	11812703          	lw	a4,280(sp)
   1730c:	0df10693          	addi	a3,sp,223
   17310:	00d33023          	sd	a3,0(t1)
   17314:	2705                	addiw	a4,a4,1
   17316:	4685                	li	a3,1
   17318:	0785                	addi	a5,a5,1
   1731a:	00d33423          	sd	a3,8(t1)
   1731e:	10e12c23          	sw	a4,280(sp)
   17322:	0007069b          	sext.w	a3,a4
   17326:	f23e                	sd	a5,288(sp)
   17328:	471d                	li	a4,7
   1732a:	0341                	addi	t1,t1,16
   1732c:	26d74363          	blt	a4,a3,17592 <_svfprintf_r+0x42c>
   17330:	02028563          	beqz	t0,1735a <_svfprintf_r+0x1f4>
   17334:	11812703          	lw	a4,280(sp)
   17338:	1194                	addi	a3,sp,224
   1733a:	00d33023          	sd	a3,0(t1)
   1733e:	2705                	addiw	a4,a4,1
   17340:	4689                	li	a3,2
   17342:	0789                	addi	a5,a5,2
   17344:	00d33423          	sd	a3,8(t1)
   17348:	10e12c23          	sw	a4,280(sp)
   1734c:	0007069b          	sext.w	a3,a4
   17350:	f23e                	sd	a5,288(sp)
   17352:	471d                	li	a4,7
   17354:	0341                	addi	t1,t1,16
   17356:	08d749e3          	blt	a4,a3,17be8 <_svfprintf_r+0xa82>
   1735a:	08000713          	li	a4,128
   1735e:	6aed8f63          	beq	s11,a4,17a1c <_svfprintf_r+0x8b6>
   17362:	417c0c3b          	subw	s8,s8,s7
   17366:	75804563          	bgtz	s8,17ab0 <_svfprintf_r+0x94a>
   1736a:	1004f713          	andi	a4,s1,256
   1736e:	5a071263          	bnez	a4,17912 <_svfprintf_r+0x7ac>
   17372:	11812703          	lw	a4,280(sp)
   17376:	97de                	add	a5,a5,s7
   17378:	01933023          	sd	s9,0(t1)
   1737c:	0017069b          	addiw	a3,a4,1
   17380:	8736                	mv	a4,a3
   17382:	01733423          	sd	s7,8(t1)
   17386:	10e12c23          	sw	a4,280(sp)
   1738a:	f23e                	sd	a5,288(sp)
   1738c:	471d                	li	a4,7
   1738e:	2cd74263          	blt	a4,a3,17652 <_svfprintf_r+0x4ec>
   17392:	0341                	addi	t1,t1,16
   17394:	8891                	andi	s1,s1,4
   17396:	c489                	beqz	s1,173a0 <_svfprintf_r+0x23a>
   17398:	412a84bb          	subw	s1,s5,s2
   1739c:	069040e3          	bgtz	s1,17bfc <_svfprintf_r+0xa96>
   173a0:	8756                	mv	a4,s5
   173a2:	012ad363          	bge	s5,s2,173a8 <_svfprintf_r+0x242>
   173a6:	874a                	mv	a4,s2
   173a8:	66a2                	ld	a3,8(sp)
   173aa:	9f35                	addw	a4,a4,a3
   173ac:	e43a                	sd	a4,8(sp)
   173ae:	78079263          	bnez	a5,17b32 <_svfprintf_r+0x9cc>
   173b2:	67e2                	ld	a5,24(sp)
   173b4:	10012c23          	sw	zero,280(sp)
   173b8:	c789                	beqz	a5,173c2 <_svfprintf_r+0x25c>
   173ba:	65e2                	ld	a1,24(sp)
   173bc:	854e                	mv	a0,s3
   173be:	9c2fc0ef          	jal	ra,13580 <_free_r>
   173c2:	835a                	mv	t1,s6
   173c4:	8ca2                	mv	s9,s0
   173c6:	000cc783          	lbu	a5,0(s9)
   173ca:	e2079fe3          	bnez	a5,17208 <_svfprintf_r+0xa2>
   173ce:	7792                	ld	a5,288(sp)
   173d0:	c399                	beqz	a5,173d6 <_svfprintf_r+0x270>
   173d2:	35c0106f          	j	1872e <_svfprintf_r+0x15c8>
   173d6:	010a5783          	lhu	a5,16(s4)
   173da:	0407f793          	andi	a5,a5,64
   173de:	c399                	beqz	a5,173e4 <_svfprintf_r+0x27e>
   173e0:	6960106f          	j	18a76 <_svfprintf_r+0x1910>
   173e4:	27813083          	ld	ra,632(sp)
   173e8:	27013403          	ld	s0,624(sp)
   173ec:	6522                	ld	a0,8(sp)
   173ee:	26813483          	ld	s1,616(sp)
   173f2:	26013903          	ld	s2,608(sp)
   173f6:	25813983          	ld	s3,600(sp)
   173fa:	25013a03          	ld	s4,592(sp)
   173fe:	24813a83          	ld	s5,584(sp)
   17402:	24013b03          	ld	s6,576(sp)
   17406:	23813b83          	ld	s7,568(sp)
   1740a:	23013c03          	ld	s8,560(sp)
   1740e:	22813c83          	ld	s9,552(sp)
   17412:	22013d03          	ld	s10,544(sp)
   17416:	21813d83          	ld	s11,536(sp)
   1741a:	28010113          	addi	sp,sp,640
   1741e:	8082                	ret
   17420:	0104e493          	ori	s1,s1,16
   17424:	00044e03          	lbu	t3,0(s0)
   17428:	2481                	sext.w	s1,s1
   1742a:	b599                	j	17270 <_svfprintf_r+0x10a>
   1742c:	0104e493          	ori	s1,s1,16
   17430:	2481                	sext.w	s1,s1
   17432:	66c2                	ld	a3,16(sp)
   17434:	0204f793          	andi	a5,s1,32
   17438:	00868713          	addi	a4,a3,8
   1743c:	24078463          	beqz	a5,17684 <_svfprintf_r+0x51e>
   17440:	629c                	ld	a5,0(a3)
   17442:	893e                	mv	s2,a5
   17444:	2607c263          	bltz	a5,176a8 <_svfprintf_r+0x542>
   17448:	57fd                	li	a5,-1
   1744a:	62fc09e3          	beq	s8,a5,1827c <_svfprintf_r+0x1116>
   1744e:	f7f4fd93          	andi	s11,s1,-129
   17452:	e83a                	sd	a4,16(sp)
   17454:	2d81                	sext.w	s11,s11
   17456:	140908e3          	beqz	s2,17da6 <_svfprintf_r+0xc40>
   1745a:	47a5                	li	a5,9
   1745c:	4f27eae3          	bltu	a5,s2,18150 <_svfprintf_r+0xfea>
   17460:	0309091b          	addiw	s2,s2,48
   17464:	192105a3          	sb	s2,395(sp)
   17468:	84ee                	mv	s1,s11
   1746a:	4b85                	li	s7,1
   1746c:	18b10c93          	addi	s9,sp,395
   17470:	0df14783          	lbu	a5,223(sp)
   17474:	000c091b          	sext.w	s2,s8
   17478:	017c5463          	bge	s8,s7,17480 <_svfprintf_r+0x31a>
   1747c:	000b891b          	sext.w	s2,s7
   17480:	ec02                	sd	zero,24(sp)
   17482:	e882                	sd	zero,80(sp)
   17484:	ec82                	sd	zero,88(sp)
   17486:	e482                	sd	zero,72(sp)
   17488:	e4078fe3          	beqz	a5,172e6 <_svfprintf_r+0x180>
   1748c:	2905                	addiw	s2,s2,1
   1748e:	bda1                	j	172e6 <_svfprintf_r+0x180>
   17490:	0104e493          	ori	s1,s1,16
   17494:	2481                	sext.w	s1,s1
   17496:	66c2                	ld	a3,16(sp)
   17498:	0204f793          	andi	a5,s1,32
   1749c:	00868713          	addi	a4,a3,8
   174a0:	1c078363          	beqz	a5,17666 <_svfprintf_r+0x500>
   174a4:	0006b903          	ld	s2,0(a3)
   174a8:	bff4fd93          	andi	s11,s1,-1025
   174ac:	2d81                	sext.w	s11,s11
   174ae:	e83a                	sd	a4,16(sp)
   174b0:	4781                	li	a5,0
   174b2:	4701                	li	a4,0
   174b4:	0ce10fa3          	sb	a4,223(sp)
   174b8:	577d                	li	a4,-1
   174ba:	20ec0363          	beq	s8,a4,176c0 <_svfprintf_r+0x55a>
   174be:	f7fdf493          	andi	s1,s11,-129
   174c2:	2481                	sext.w	s1,s1
   174c4:	68091663          	bnez	s2,17b50 <_svfprintf_r+0x9ea>
   174c8:	500c1d63          	bnez	s8,179e2 <_svfprintf_r+0x87c>
   174cc:	0e0790e3          	bnez	a5,17dac <_svfprintf_r+0xc46>
   174d0:	001dfb93          	andi	s7,s11,1
   174d4:	18c10c93          	addi	s9,sp,396
   174d8:	f80b8ce3          	beqz	s7,17470 <_svfprintf_r+0x30a>
   174dc:	03000793          	li	a5,48
   174e0:	18f105a3          	sb	a5,395(sp)
   174e4:	18b10c93          	addi	s9,sp,395
   174e8:	b761                	j	17470 <_svfprintf_r+0x30a>
   174ea:	419404bb          	subw	s1,s0,s9
   174ee:	d2049ae3          	bnez	s1,17222 <_svfprintf_r+0xbc>
   174f2:	00044783          	lbu	a5,0(s0)
   174f6:	bba9                	j	17250 <_svfprintf_r+0xea>
   174f8:	0a10                	addi	a2,sp,272
   174fa:	85d2                	mv	a1,s4
   174fc:	854e                	mv	a0,s3
   174fe:	181020ef          	jal	ra,19e7e <__ssprint_r>
   17502:	ec051ae3          	bnez	a0,173d6 <_svfprintf_r+0x270>
   17506:	835a                	mv	t1,s6
   17508:	bb3d                	j	17246 <_svfprintf_r+0xe0>
   1750a:	0084f793          	andi	a5,s1,8
   1750e:	1a079de3          	bnez	a5,17ec8 <_svfprintf_r+0xd62>
   17512:	67c2                	ld	a5,16(sp)
   17514:	ec1a                	sd	t1,24(sp)
   17516:	2388                	fld	fa0,0(a5)
   17518:	07a1                	addi	a5,a5,8
   1751a:	e83e                	sd	a5,16(sp)
   1751c:	641040ef          	jal	ra,1c35c <__extenddftf2>
   17520:	6362                	ld	t1,24(sp)
   17522:	87aa                	mv	a5,a0
   17524:	0208                	addi	a0,sp,256
   17526:	ec1a                	sd	t1,24(sp)
   17528:	e23e                	sd	a5,256(sp)
   1752a:	e62e                	sd	a1,264(sp)
   1752c:	de0fe0ef          	jal	ra,15b0c <_ldcheck>
   17530:	d5aa                	sw	a0,232(sp)
   17532:	4789                	li	a5,2
   17534:	6362                	ld	t1,24(sp)
   17536:	58f50be3          	beq	a0,a5,182cc <_svfprintf_r+0x1166>
   1753a:	4785                	li	a5,1
   1753c:	00f51463          	bne	a0,a5,17544 <_svfprintf_r+0x3de>
   17540:	1300106f          	j	18670 <_svfprintf_r+0x150a>
   17544:	06100793          	li	a5,97
   17548:	6afd04e3          	beq	s10,a5,183f0 <_svfprintf_r+0x128a>
   1754c:	04100793          	li	a5,65
   17550:	05800713          	li	a4,88
   17554:	6afd00e3          	beq	s10,a5,183f4 <_svfprintf_r+0x128e>
   17558:	fdfd7713          	andi	a4,s10,-33
   1755c:	57fd                	li	a5,-1
   1755e:	ecba                	sd	a4,88(sp)
   17560:	00fc1463          	bne	s8,a5,17568 <_svfprintf_r+0x402>
   17564:	2180106f          	j	1877c <_svfprintf_r+0x1616>
   17568:	04700793          	li	a5,71
   1756c:	00f71463          	bne	a4,a5,17574 <_svfprintf_r+0x40e>
   17570:	4f80106f          	j	18a68 <_svfprintf_r+0x1902>
   17574:	6932                	ld	s2,264(sp)
   17576:	1004e793          	ori	a5,s1,256
   1757a:	f526                	sd	s1,168(sp)
   1757c:	6b92                	ld	s7,256(sp)
   1757e:	2781                	sext.w	a5,a5
   17580:	00095463          	bgez	s2,17588 <_svfprintf_r+0x422>
   17584:	7830006f          	j	18506 <_svfprintf_r+0x13a0>
   17588:	e582                	sd	zero,200(sp)
   1758a:	84be                	mv	s1,a5
   1758c:	ec02                	sd	zero,24(sp)
   1758e:	6a70006f          	j	18434 <_svfprintf_r+0x12ce>
   17592:	0a10                	addi	a2,sp,272
   17594:	85d2                	mv	a1,s4
   17596:	854e                	mv	a0,s3
   17598:	f816                	sd	t0,48(sp)
   1759a:	0e5020ef          	jal	ra,19e7e <__ssprint_r>
   1759e:	5a051163          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   175a2:	7792                	ld	a5,288(sp)
   175a4:	72c2                	ld	t0,48(sp)
   175a6:	835a                	mv	t1,s6
   175a8:	b361                	j	17330 <_svfprintf_r+0x1ca>
   175aa:	11812683          	lw	a3,280(sp)
   175ae:	00178d13          	addi	s10,a5,1
   175b2:	7782                	ld	a5,32(sp)
   175b4:	00168b9b          	addiw	s7,a3,1
   175b8:	4605                	li	a2,1
   175ba:	01933023          	sd	s9,0(t1)
   175be:	86de                	mv	a3,s7
   175c0:	01030c13          	addi	s8,t1,16
   175c4:	7ef65a63          	bge	a2,a5,17db8 <_svfprintf_r+0xc52>
   175c8:	4605                	li	a2,1
   175ca:	10d12c23          	sw	a3,280(sp)
   175ce:	00c33423          	sd	a2,8(t1)
   175d2:	f26a                	sd	s10,288(sp)
   175d4:	469d                	li	a3,7
   175d6:	0976c4e3          	blt	a3,s7,17e5e <_svfprintf_r+0xcf8>
   175da:	77a6                	ld	a5,104(sp)
   175dc:	7746                	ld	a4,112(sp)
   175de:	2b85                	addiw	s7,s7,1
   175e0:	9d3e                	add	s10,s10,a5
   175e2:	00ec3023          	sd	a4,0(s8)
   175e6:	00fc3423          	sd	a5,8(s8)
   175ea:	f26a                	sd	s10,288(sp)
   175ec:	11712c23          	sw	s7,280(sp)
   175f0:	469d                	li	a3,7
   175f2:	0c41                	addi	s8,s8,16
   175f4:	0976c2e3          	blt	a3,s7,17e78 <_svfprintf_r+0xd12>
   175f8:	6512                	ld	a0,256(sp)
   175fa:	65b2                	ld	a1,264(sp)
   175fc:	4681                	li	a3,0
   175fe:	4601                	li	a2,0
   17600:	3d7030ef          	jal	ra,1b1d6 <__eqtf2>
   17604:	7782                	ld	a5,32(sp)
   17606:	fff7869b          	addiw	a3,a5,-1
   1760a:	7e050063          	beqz	a0,17dea <_svfprintf_r+0xc84>
   1760e:	2b85                	addiw	s7,s7,1
   17610:	001c8813          	addi	a6,s9,1
   17614:	865e                	mv	a2,s7
   17616:	9d36                	add	s10,s10,a3
   17618:	010c3023          	sd	a6,0(s8)
   1761c:	00dc3423          	sd	a3,8(s8)
   17620:	f26a                	sd	s10,288(sp)
   17622:	10c12c23          	sw	a2,280(sp)
   17626:	469d                	li	a3,7
   17628:	0c41                	addi	s8,s8,16
   1762a:	7b76c363          	blt	a3,s7,17dd0 <_svfprintf_r+0xc6a>
   1762e:	7766                	ld	a4,120(sp)
   17630:	1994                	addi	a3,sp,240
   17632:	001b861b          	addiw	a2,s7,1
   17636:	01a707b3          	add	a5,a4,s10
   1763a:	00dc3023          	sd	a3,0(s8)
   1763e:	00ec3423          	sd	a4,8(s8)
   17642:	f23e                	sd	a5,288(sp)
   17644:	10c12c23          	sw	a2,280(sp)
   17648:	469d                	li	a3,7
   1764a:	010c0313          	addi	t1,s8,16
   1764e:	d4c6d3e3          	bge	a3,a2,17394 <_svfprintf_r+0x22e>
   17652:	0a10                	addi	a2,sp,272
   17654:	85d2                	mv	a1,s4
   17656:	854e                	mv	a0,s3
   17658:	027020ef          	jal	ra,19e7e <__ssprint_r>
   1765c:	4e051263          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17660:	7792                	ld	a5,288(sp)
   17662:	835a                	mv	t1,s6
   17664:	bb05                	j	17394 <_svfprintf_r+0x22e>
   17666:	0104f793          	andi	a5,s1,16
   1766a:	04079ae3          	bnez	a5,17ebe <_svfprintf_r+0xd58>
   1766e:	66c2                	ld	a3,16(sp)
   17670:	0404f793          	andi	a5,s1,64
   17674:	0006a903          	lw	s2,0(a3)
   17678:	52078fe3          	beqz	a5,183b6 <_svfprintf_r+0x1250>
   1767c:	1942                	slli	s2,s2,0x30
   1767e:	03095913          	srli	s2,s2,0x30
   17682:	b51d                	j	174a8 <_svfprintf_r+0x342>
   17684:	0104f793          	andi	a5,s1,16
   17688:	020796e3          	bnez	a5,17eb4 <_svfprintf_r+0xd4e>
   1768c:	66c2                	ld	a3,16(sp)
   1768e:	0404f793          	andi	a5,s1,64
   17692:	0006a903          	lw	s2,0(a3)
   17696:	520788e3          	beqz	a5,183c6 <_svfprintf_r+0x1260>
   1769a:	0109191b          	slliw	s2,s2,0x10
   1769e:	4109591b          	sraiw	s2,s2,0x10
   176a2:	87ca                	mv	a5,s2
   176a4:	da07d2e3          	bgez	a5,17448 <_svfprintf_r+0x2e2>
   176a8:	e83a                	sd	a4,16(sp)
   176aa:	02d00713          	li	a4,45
   176ae:	0ce10fa3          	sb	a4,223(sp)
   176b2:	577d                	li	a4,-1
   176b4:	41200933          	neg	s2,s2
   176b8:	8da6                	mv	s11,s1
   176ba:	4785                	li	a5,1
   176bc:	e0ec11e3          	bne	s8,a4,174be <_svfprintf_r+0x358>
   176c0:	4705                	li	a4,1
   176c2:	d8e78ce3          	beq	a5,a4,1745a <_svfprintf_r+0x2f4>
   176c6:	4709                	li	a4,2
   176c8:	32e78663          	beq	a5,a4,179f4 <_svfprintf_r+0x88e>
   176cc:	18c10b93          	addi	s7,sp,396
   176d0:	8cde                	mv	s9,s7
   176d2:	00797793          	andi	a5,s2,7
   176d6:	03078793          	addi	a5,a5,48
   176da:	fefc8fa3          	sb	a5,-1(s9)
   176de:	00395913          	srli	s2,s2,0x3
   176e2:	8766                	mv	a4,s9
   176e4:	1cfd                	addi	s9,s9,-1
   176e6:	fe0916e3          	bnez	s2,176d2 <_svfprintf_r+0x56c>
   176ea:	001df693          	andi	a3,s11,1
   176ee:	32068363          	beqz	a3,17a14 <_svfprintf_r+0x8ae>
   176f2:	03000693          	li	a3,48
   176f6:	30d78f63          	beq	a5,a3,17a14 <_svfprintf_r+0x8ae>
   176fa:	1779                	addi	a4,a4,-2
   176fc:	fedc8fa3          	sb	a3,-1(s9)
   17700:	40eb8bbb          	subw	s7,s7,a4
   17704:	84ee                	mv	s1,s11
   17706:	8cba                	mv	s9,a4
   17708:	b3a5                	j	17470 <_svfprintf_r+0x30a>
   1770a:	6742                	ld	a4,16(sp)
   1770c:	0c010fa3          	sb	zero,223(sp)
   17710:	4905                	li	s2,1
   17712:	431c                	lw	a5,0(a4)
   17714:	0721                	addi	a4,a4,8
   17716:	e83a                	sd	a4,16(sp)
   17718:	12f10423          	sb	a5,296(sp)
   1771c:	4b85                	li	s7,1
   1771e:	12810c93          	addi	s9,sp,296
   17722:	be6d                	j	172dc <_svfprintf_r+0x176>
   17724:	67c2                	ld	a5,16(sp)
   17726:	0c010fa3          	sb	zero,223(sp)
   1772a:	0007bc83          	ld	s9,0(a5)
   1772e:	00878d93          	addi	s11,a5,8
   17732:	3c0c8de3          	beqz	s9,1830c <_svfprintf_r+0x11a6>
   17736:	57fd                	li	a5,-1
   17738:	0afc01e3          	beq	s8,a5,17fda <_svfprintf_r+0xe74>
   1773c:	8662                	mv	a2,s8
   1773e:	4581                	li	a1,0
   17740:	8566                	mv	a0,s9
   17742:	e81a                	sd	t1,16(sp)
   17744:	e48f90ef          	jal	ra,10d8c <memchr>
   17748:	ec2a                	sd	a0,24(sp)
   1774a:	6342                	ld	t1,16(sp)
   1774c:	e119                	bnez	a0,17752 <_svfprintf_r+0x5ec>
   1774e:	1f60106f          	j	18944 <_svfprintf_r+0x17de>
   17752:	67e2                	ld	a5,24(sp)
   17754:	e86e                	sd	s11,16(sp)
   17756:	ec02                	sd	zero,24(sp)
   17758:	41978bbb          	subw	s7,a5,s9
   1775c:	0df14783          	lbu	a5,223(sp)
   17760:	fffbc913          	not	s2,s7
   17764:	43f95913          	srai	s2,s2,0x3f
   17768:	e882                	sd	zero,80(sp)
   1776a:	ec82                	sd	zero,88(sp)
   1776c:	e482                	sd	zero,72(sp)
   1776e:	01797933          	and	s2,s2,s7
   17772:	4c01                	li	s8,0
   17774:	d0079ce3          	bnez	a5,1748c <_svfprintf_r+0x326>
   17778:	b6bd                	j	172e6 <_svfprintf_r+0x180>
   1777a:	67c2                	ld	a5,16(sp)
   1777c:	0007aa83          	lw	s5,0(a5)
   17780:	07a1                	addi	a5,a5,8
   17782:	700add63          	bgez	s5,17e9c <_svfprintf_r+0xd36>
   17786:	41500abb          	negw	s5,s5
   1778a:	e83e                	sd	a5,16(sp)
   1778c:	0044e493          	ori	s1,s1,4
   17790:	00044e03          	lbu	t3,0(s0)
   17794:	2481                	sext.w	s1,s1
   17796:	bce9                	j	17270 <_svfprintf_r+0x10a>
   17798:	0104ed93          	ori	s11,s1,16
   1779c:	2d81                	sext.w	s11,s11
   1779e:	66c2                	ld	a3,16(sp)
   177a0:	020df793          	andi	a5,s11,32
   177a4:	00868713          	addi	a4,a3,8
   177a8:	68078a63          	beqz	a5,17e3c <_svfprintf_r+0xcd6>
   177ac:	0006b903          	ld	s2,0(a3)
   177b0:	4785                	li	a5,1
   177b2:	e83a                	sd	a4,16(sp)
   177b4:	b9fd                	j	174b2 <_svfprintf_r+0x34c>
   177b6:	02b00793          	li	a5,43
   177ba:	00044e03          	lbu	t3,0(s0)
   177be:	0cf10fa3          	sb	a5,223(sp)
   177c2:	b47d                	j	17270 <_svfprintf_r+0x10a>
   177c4:	0204e493          	ori	s1,s1,32
   177c8:	00044e03          	lbu	t3,0(s0)
   177cc:	2481                	sext.w	s1,s1
   177ce:	b44d                	j	17270 <_svfprintf_r+0x10a>
   177d0:	6742                	ld	a4,16(sp)
   177d2:	77e1                	lui	a5,0xffff8
   177d4:	8307c793          	xori	a5,a5,-2000
   177d8:	0ef11023          	sh	a5,224(sp)
   177dc:	00870793          	addi	a5,a4,8
   177e0:	e83e                	sd	a5,16(sp)
   177e2:	67f1                	lui	a5,0x1c
   177e4:	71078793          	addi	a5,a5,1808 # 1c710 <__clzdi2+0xd0>
   177e8:	0024ed93          	ori	s11,s1,2
   177ec:	f43e                	sd	a5,40(sp)
   177ee:	00073903          	ld	s2,0(a4)
   177f2:	2d81                	sext.w	s11,s11
   177f4:	4789                	li	a5,2
   177f6:	07800d13          	li	s10,120
   177fa:	b965                	j	174b2 <_svfprintf_r+0x34c>
   177fc:	66c2                	ld	a3,16(sp)
   177fe:	0204f793          	andi	a5,s1,32
   17802:	6298                	ld	a4,0(a3)
   17804:	06a1                	addi	a3,a3,8
   17806:	e836                	sd	a3,16(sp)
   17808:	e395                	bnez	a5,1782c <_svfprintf_r+0x6c6>
   1780a:	0104f793          	andi	a5,s1,16
   1780e:	ef99                	bnez	a5,1782c <_svfprintf_r+0x6c6>
   17810:	0404f793          	andi	a5,s1,64
   17814:	6e079fe3          	bnez	a5,18712 <_svfprintf_r+0x15ac>
   17818:	2004f493          	andi	s1,s1,512
   1781c:	67a2                	ld	a5,8(sp)
   1781e:	e099                	bnez	s1,17824 <_svfprintf_r+0x6be>
   17820:	25e0106f          	j	18a7e <_svfprintf_r+0x1918>
   17824:	00f70023          	sb	a5,0(a4)
   17828:	8ca2                	mv	s9,s0
   1782a:	be71                	j	173c6 <_svfprintf_r+0x260>
   1782c:	67a2                	ld	a5,8(sp)
   1782e:	8ca2                	mv	s9,s0
   17830:	e31c                	sd	a5,0(a4)
   17832:	be51                	j	173c6 <_svfprintf_r+0x260>
   17834:	00044e03          	lbu	t3,0(s0)
   17838:	06c00793          	li	a5,108
   1783c:	70fe0363          	beq	t3,a5,17f42 <_svfprintf_r+0xddc>
   17840:	0104e493          	ori	s1,s1,16
   17844:	2481                	sext.w	s1,s1
   17846:	b42d                	j	17270 <_svfprintf_r+0x10a>
   17848:	00044e03          	lbu	t3,0(s0)
   1784c:	06800793          	li	a5,104
   17850:	70fe0163          	beq	t3,a5,17f52 <_svfprintf_r+0xdec>
   17854:	0404e493          	ori	s1,s1,64
   17858:	2481                	sext.w	s1,s1
   1785a:	bc19                	j	17270 <_svfprintf_r+0x10a>
   1785c:	0084e493          	ori	s1,s1,8
   17860:	00044e03          	lbu	t3,0(s0)
   17864:	2481                	sext.w	s1,s1
   17866:	b429                	j	17270 <_svfprintf_r+0x10a>
   17868:	854e                	mv	a0,s3
   1786a:	ec1a                	sd	t1,24(sp)
   1786c:	ae8fe0ef          	jal	ra,15b54 <_localeconv_r>
   17870:	651c                	ld	a5,8(a0)
   17872:	853e                	mv	a0,a5
   17874:	e53e                	sd	a5,136(sp)
   17876:	b35f90ef          	jal	ra,113aa <strlen>
   1787a:	87aa                	mv	a5,a0
   1787c:	854e                	mv	a0,s3
   1787e:	8d3e                	mv	s10,a5
   17880:	e13e                	sd	a5,128(sp)
   17882:	ad2fe0ef          	jal	ra,15b54 <_localeconv_r>
   17886:	691c                	ld	a5,16(a0)
   17888:	6362                	ld	t1,24(sp)
   1788a:	00044e03          	lbu	t3,0(s0)
   1788e:	f0be                	sd	a5,96(sp)
   17890:	9e0d00e3          	beqz	s10,17270 <_svfprintf_r+0x10a>
   17894:	9c078ee3          	beqz	a5,17270 <_svfprintf_r+0x10a>
   17898:	0007c783          	lbu	a5,0(a5)
   1789c:	9c078ae3          	beqz	a5,17270 <_svfprintf_r+0x10a>
   178a0:	4004e493          	ori	s1,s1,1024
   178a4:	2481                	sext.w	s1,s1
   178a6:	b2e9                	j	17270 <_svfprintf_r+0x10a>
   178a8:	0014e493          	ori	s1,s1,1
   178ac:	00044e03          	lbu	t3,0(s0)
   178b0:	2481                	sext.w	s1,s1
   178b2:	ba7d                	j	17270 <_svfprintf_r+0x10a>
   178b4:	0df14783          	lbu	a5,223(sp)
   178b8:	00044e03          	lbu	t3,0(s0)
   178bc:	9a079ae3          	bnez	a5,17270 <_svfprintf_r+0x10a>
   178c0:	02000793          	li	a5,32
   178c4:	0cf10fa3          	sb	a5,223(sp)
   178c8:	b265                	j	17270 <_svfprintf_r+0x10a>
   178ca:	0804e493          	ori	s1,s1,128
   178ce:	00044e03          	lbu	t3,0(s0)
   178d2:	2481                	sext.w	s1,s1
   178d4:	ba71                	j	17270 <_svfprintf_r+0x10a>
   178d6:	00044d03          	lbu	s10,0(s0)
   178da:	00140793          	addi	a5,s0,1
   178de:	00dd1463          	bne	s10,a3,178e6 <_svfprintf_r+0x780>
   178e2:	2620106f          	j	18b44 <_svfprintf_r+0x19de>
   178e6:	fd0d071b          	addiw	a4,s10,-48
   178ea:	843e                	mv	s0,a5
   178ec:	4c01                	li	s8,0
   178ee:	98ede6e3          	bltu	s11,a4,1727a <_svfprintf_r+0x114>
   178f2:	00044d03          	lbu	s10,0(s0)
   178f6:	002c179b          	slliw	a5,s8,0x2
   178fa:	018787bb          	addw	a5,a5,s8
   178fe:	0017979b          	slliw	a5,a5,0x1
   17902:	00e78c3b          	addw	s8,a5,a4
   17906:	fd0d071b          	addiw	a4,s10,-48
   1790a:	0405                	addi	s0,s0,1
   1790c:	feedf3e3          	bgeu	s11,a4,178f2 <_svfprintf_r+0x78c>
   17910:	b2ad                	j	1727a <_svfprintf_r+0x114>
   17912:	06500713          	li	a4,101
   17916:	c9a75ae3          	bge	a4,s10,175aa <_svfprintf_r+0x444>
   1791a:	6512                	ld	a0,256(sp)
   1791c:	65b2                	ld	a1,264(sp)
   1791e:	4601                	li	a2,0
   17920:	4681                	li	a3,0
   17922:	fc3e                	sd	a5,56(sp)
   17924:	f81a                	sd	t1,48(sp)
   17926:	0b1030ef          	jal	ra,1b1d6 <__eqtf2>
   1792a:	7342                	ld	t1,48(sp)
   1792c:	77e2                	ld	a5,56(sp)
   1792e:	34051863          	bnez	a0,17c7e <_svfprintf_r+0xb18>
   17932:	11812703          	lw	a4,280(sp)
   17936:	66f1                	lui	a3,0x1c
   17938:	74868693          	addi	a3,a3,1864 # 1c748 <__clzdi2+0x108>
   1793c:	2705                	addiw	a4,a4,1
   1793e:	00d33023          	sd	a3,0(t1)
   17942:	0785                	addi	a5,a5,1
   17944:	4685                	li	a3,1
   17946:	00d33423          	sd	a3,8(t1)
   1794a:	10e12c23          	sw	a4,280(sp)
   1794e:	0007069b          	sext.w	a3,a4
   17952:	f23e                	sd	a5,288(sp)
   17954:	471d                	li	a4,7
   17956:	0341                	addi	t1,t1,16
   17958:	12d746e3          	blt	a4,a3,18284 <_svfprintf_r+0x111e>
   1795c:	572e                	lw	a4,232(sp)
   1795e:	7682                	ld	a3,32(sp)
   17960:	52d75963          	bge	a4,a3,17e92 <_svfprintf_r+0xd2c>
   17964:	76a6                	ld	a3,104(sp)
   17966:	11812703          	lw	a4,280(sp)
   1796a:	7646                	ld	a2,112(sp)
   1796c:	97b6                	add	a5,a5,a3
   1796e:	2705                	addiw	a4,a4,1
   17970:	00d33423          	sd	a3,8(t1)
   17974:	00c33023          	sd	a2,0(t1)
   17978:	0007069b          	sext.w	a3,a4
   1797c:	10e12c23          	sw	a4,280(sp)
   17980:	f23e                	sd	a5,288(sp)
   17982:	471d                	li	a4,7
   17984:	0341                	addi	t1,t1,16
   17986:	5ad74463          	blt	a4,a3,17f2e <_svfprintf_r+0xdc8>
   1798a:	7702                	ld	a4,32(sp)
   1798c:	fff70b9b          	addiw	s7,a4,-1
   17990:	a17052e3          	blez	s7,17394 <_svfprintf_r+0x22e>
   17994:	68f5                	lui	a7,0x1d
   17996:	46c1                	li	a3,16
   17998:	11812703          	lw	a4,280(sp)
   1799c:	05088d93          	addi	s11,a7,80 # 1d050 <zeroes.0>
   179a0:	4cc1                	li	s9,16
   179a2:	4c1d                	li	s8,7
   179a4:	0176c763          	blt	a3,s7,179b2 <_svfprintf_r+0x84c>
   179a8:	0f30006f          	j	1829a <_svfprintf_r+0x1134>
   179ac:	3bc1                	addiw	s7,s7,-16
   179ae:	0f7cd6e3          	bge	s9,s7,1829a <_svfprintf_r+0x1134>
   179b2:	2705                	addiw	a4,a4,1
   179b4:	07c1                	addi	a5,a5,16
   179b6:	01b33023          	sd	s11,0(t1)
   179ba:	01933423          	sd	s9,8(t1)
   179be:	f23e                	sd	a5,288(sp)
   179c0:	10e12c23          	sw	a4,280(sp)
   179c4:	0341                	addi	t1,t1,16
   179c6:	feec53e3          	bge	s8,a4,179ac <_svfprintf_r+0x846>
   179ca:	0a10                	addi	a2,sp,272
   179cc:	85d2                	mv	a1,s4
   179ce:	854e                	mv	a0,s3
   179d0:	4ae020ef          	jal	ra,19e7e <__ssprint_r>
   179d4:	16051663          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   179d8:	7792                	ld	a5,288(sp)
   179da:	11812703          	lw	a4,280(sp)
   179de:	835a                	mv	t1,s6
   179e0:	b7f1                	j	179ac <_svfprintf_r+0x846>
   179e2:	4705                	li	a4,1
   179e4:	00e79463          	bne	a5,a4,179ec <_svfprintf_r+0x886>
   179e8:	0160106f          	j	189fe <_svfprintf_r+0x1898>
   179ec:	4709                	li	a4,2
   179ee:	8da6                	mv	s11,s1
   179f0:	cce79ee3          	bne	a5,a4,176cc <_svfprintf_r+0x566>
   179f4:	18c10b93          	addi	s7,sp,396
   179f8:	8cde                	mv	s9,s7
   179fa:	7722                	ld	a4,40(sp)
   179fc:	00f97793          	andi	a5,s2,15
   17a00:	1cfd                	addi	s9,s9,-1
   17a02:	97ba                	add	a5,a5,a4
   17a04:	0007c783          	lbu	a5,0(a5)
   17a08:	00495913          	srli	s2,s2,0x4
   17a0c:	00fc8023          	sb	a5,0(s9)
   17a10:	fe0915e3          	bnez	s2,179fa <_svfprintf_r+0x894>
   17a14:	419b8bbb          	subw	s7,s7,s9
   17a18:	84ee                	mv	s1,s11
   17a1a:	bc99                	j	17470 <_svfprintf_r+0x30a>
   17a1c:	412a86bb          	subw	a3,s5,s2
   17a20:	94d051e3          	blez	a3,17362 <_svfprintf_r+0x1fc>
   17a24:	68f5                	lui	a7,0x1d
   17a26:	4641                	li	a2,16
   17a28:	11812703          	lw	a4,280(sp)
   17a2c:	05088d93          	addi	s11,a7,80 # 1d050 <zeroes.0>
   17a30:	4f41                	li	t5,16
   17a32:	4f9d                	li	t6,7
   17a34:	00d64663          	blt	a2,a3,17a40 <_svfprintf_r+0x8da>
   17a38:	a089                	j	17a7a <_svfprintf_r+0x914>
   17a3a:	36c1                	addiw	a3,a3,-16
   17a3c:	02df5f63          	bge	t5,a3,17a7a <_svfprintf_r+0x914>
   17a40:	2705                	addiw	a4,a4,1
   17a42:	07c1                	addi	a5,a5,16
   17a44:	01b33023          	sd	s11,0(t1)
   17a48:	01e33423          	sd	t5,8(t1)
   17a4c:	f23e                	sd	a5,288(sp)
   17a4e:	10e12c23          	sw	a4,280(sp)
   17a52:	0341                	addi	t1,t1,16
   17a54:	feefd3e3          	bge	t6,a4,17a3a <_svfprintf_r+0x8d4>
   17a58:	0a10                	addi	a2,sp,272
   17a5a:	85d2                	mv	a1,s4
   17a5c:	854e                	mv	a0,s3
   17a5e:	f836                	sd	a3,48(sp)
   17a60:	41e020ef          	jal	ra,19e7e <__ssprint_r>
   17a64:	ed71                	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17a66:	76c2                	ld	a3,48(sp)
   17a68:	4f41                	li	t5,16
   17a6a:	7792                	ld	a5,288(sp)
   17a6c:	36c1                	addiw	a3,a3,-16
   17a6e:	11812703          	lw	a4,280(sp)
   17a72:	835a                	mv	t1,s6
   17a74:	4f9d                	li	t6,7
   17a76:	fcdf45e3          	blt	t5,a3,17a40 <_svfprintf_r+0x8da>
   17a7a:	2705                	addiw	a4,a4,1
   17a7c:	97b6                	add	a5,a5,a3
   17a7e:	00d33423          	sd	a3,8(t1)
   17a82:	01b33023          	sd	s11,0(t1)
   17a86:	0007069b          	sext.w	a3,a4
   17a8a:	10e12c23          	sw	a4,280(sp)
   17a8e:	f23e                	sd	a5,288(sp)
   17a90:	471d                	li	a4,7
   17a92:	0341                	addi	t1,t1,16
   17a94:	8cd757e3          	bge	a4,a3,17362 <_svfprintf_r+0x1fc>
   17a98:	0a10                	addi	a2,sp,272
   17a9a:	85d2                	mv	a1,s4
   17a9c:	854e                	mv	a0,s3
   17a9e:	3e0020ef          	jal	ra,19e7e <__ssprint_r>
   17aa2:	ed59                	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17aa4:	417c0c3b          	subw	s8,s8,s7
   17aa8:	7792                	ld	a5,288(sp)
   17aaa:	835a                	mv	t1,s6
   17aac:	8b805fe3          	blez	s8,1736a <_svfprintf_r+0x204>
   17ab0:	68f5                	lui	a7,0x1d
   17ab2:	4641                	li	a2,16
   17ab4:	11812703          	lw	a4,280(sp)
   17ab8:	05088d93          	addi	s11,a7,80 # 1d050 <zeroes.0>
   17abc:	4ec1                	li	t4,16
   17abe:	4f1d                	li	t5,7
   17ac0:	01864663          	blt	a2,s8,17acc <_svfprintf_r+0x966>
   17ac4:	a83d                	j	17b02 <_svfprintf_r+0x99c>
   17ac6:	3c41                	addiw	s8,s8,-16
   17ac8:	038edd63          	bge	t4,s8,17b02 <_svfprintf_r+0x99c>
   17acc:	2705                	addiw	a4,a4,1
   17ace:	07c1                	addi	a5,a5,16
   17ad0:	01b33023          	sd	s11,0(t1)
   17ad4:	01d33423          	sd	t4,8(t1)
   17ad8:	f23e                	sd	a5,288(sp)
   17ada:	10e12c23          	sw	a4,280(sp)
   17ade:	0341                	addi	t1,t1,16
   17ae0:	feef53e3          	bge	t5,a4,17ac6 <_svfprintf_r+0x960>
   17ae4:	0a10                	addi	a2,sp,272
   17ae6:	85d2                	mv	a1,s4
   17ae8:	854e                	mv	a0,s3
   17aea:	394020ef          	jal	ra,19e7e <__ssprint_r>
   17aee:	e929                	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17af0:	4ec1                	li	t4,16
   17af2:	3c41                	addiw	s8,s8,-16
   17af4:	7792                	ld	a5,288(sp)
   17af6:	11812703          	lw	a4,280(sp)
   17afa:	835a                	mv	t1,s6
   17afc:	4f1d                	li	t5,7
   17afe:	fd8ec7e3          	blt	t4,s8,17acc <_svfprintf_r+0x966>
   17b02:	0017069b          	addiw	a3,a4,1
   17b06:	97e2                	add	a5,a5,s8
   17b08:	01b33023          	sd	s11,0(t1)
   17b0c:	01833423          	sd	s8,8(t1)
   17b10:	f23e                	sd	a5,288(sp)
   17b12:	10d12c23          	sw	a3,280(sp)
   17b16:	471d                	li	a4,7
   17b18:	0341                	addi	t1,t1,16
   17b1a:	84d758e3          	bge	a4,a3,1736a <_svfprintf_r+0x204>
   17b1e:	0a10                	addi	a2,sp,272
   17b20:	85d2                	mv	a1,s4
   17b22:	854e                	mv	a0,s3
   17b24:	35a020ef          	jal	ra,19e7e <__ssprint_r>
   17b28:	ed01                	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17b2a:	7792                	ld	a5,288(sp)
   17b2c:	835a                	mv	t1,s6
   17b2e:	83dff06f          	j	1736a <_svfprintf_r+0x204>
   17b32:	0a10                	addi	a2,sp,272
   17b34:	85d2                	mv	a1,s4
   17b36:	854e                	mv	a0,s3
   17b38:	346020ef          	jal	ra,19e7e <__ssprint_r>
   17b3c:	86050be3          	beqz	a0,173b2 <_svfprintf_r+0x24c>
   17b40:	67e2                	ld	a5,24(sp)
   17b42:	88078ae3          	beqz	a5,173d6 <_svfprintf_r+0x270>
   17b46:	85be                	mv	a1,a5
   17b48:	854e                	mv	a0,s3
   17b4a:	a37fb0ef          	jal	ra,13580 <_free_r>
   17b4e:	b061                	j	173d6 <_svfprintf_r+0x270>
   17b50:	8da6                	mv	s11,s1
   17b52:	b6bd                	j	176c0 <_svfprintf_r+0x55a>
   17b54:	68f5                	lui	a7,0x1d
   17b56:	4641                	li	a2,16
   17b58:	11812703          	lw	a4,280(sp)
   17b5c:	04088893          	addi	a7,a7,64 # 1d040 <blanks.1>
   17b60:	4f41                	li	t5,16
   17b62:	439d                	li	t2,7
   17b64:	00d64663          	blt	a2,a3,17b70 <_svfprintf_r+0xa0a>
   17b68:	a0a9                	j	17bb2 <_svfprintf_r+0xa4c>
   17b6a:	36c1                	addiw	a3,a3,-16
   17b6c:	04df5363          	bge	t5,a3,17bb2 <_svfprintf_r+0xa4c>
   17b70:	2705                	addiw	a4,a4,1
   17b72:	07c1                	addi	a5,a5,16
   17b74:	01133023          	sd	a7,0(t1)
   17b78:	01e33423          	sd	t5,8(t1)
   17b7c:	f23e                	sd	a5,288(sp)
   17b7e:	10e12c23          	sw	a4,280(sp)
   17b82:	0341                	addi	t1,t1,16
   17b84:	fee3d3e3          	bge	t2,a4,17b6a <_svfprintf_r+0xa04>
   17b88:	0a10                	addi	a2,sp,272
   17b8a:	85d2                	mv	a1,s4
   17b8c:	854e                	mv	a0,s3
   17b8e:	e0c6                	sd	a7,64(sp)
   17b90:	fc36                	sd	a3,56(sp)
   17b92:	f816                	sd	t0,48(sp)
   17b94:	2ea020ef          	jal	ra,19e7e <__ssprint_r>
   17b98:	f545                	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17b9a:	76e2                	ld	a3,56(sp)
   17b9c:	4f41                	li	t5,16
   17b9e:	7792                	ld	a5,288(sp)
   17ba0:	36c1                	addiw	a3,a3,-16
   17ba2:	11812703          	lw	a4,280(sp)
   17ba6:	6886                	ld	a7,64(sp)
   17ba8:	72c2                	ld	t0,48(sp)
   17baa:	835a                	mv	t1,s6
   17bac:	439d                	li	t2,7
   17bae:	fcdf41e3          	blt	t5,a3,17b70 <_svfprintf_r+0xa0a>
   17bb2:	2705                	addiw	a4,a4,1
   17bb4:	97b6                	add	a5,a5,a3
   17bb6:	00d33423          	sd	a3,8(t1)
   17bba:	01133023          	sd	a7,0(t1)
   17bbe:	0007069b          	sext.w	a3,a4
   17bc2:	10e12c23          	sw	a4,280(sp)
   17bc6:	f23e                	sd	a5,288(sp)
   17bc8:	471d                	li	a4,7
   17bca:	0341                	addi	t1,t1,16
   17bcc:	f2d75b63          	bge	a4,a3,17302 <_svfprintf_r+0x19c>
   17bd0:	0a10                	addi	a2,sp,272
   17bd2:	85d2                	mv	a1,s4
   17bd4:	854e                	mv	a0,s3
   17bd6:	f816                	sd	t0,48(sp)
   17bd8:	2a6020ef          	jal	ra,19e7e <__ssprint_r>
   17bdc:	f135                	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17bde:	7792                	ld	a5,288(sp)
   17be0:	72c2                	ld	t0,48(sp)
   17be2:	835a                	mv	t1,s6
   17be4:	f1eff06f          	j	17302 <_svfprintf_r+0x19c>
   17be8:	0a10                	addi	a2,sp,272
   17bea:	85d2                	mv	a1,s4
   17bec:	854e                	mv	a0,s3
   17bee:	290020ef          	jal	ra,19e7e <__ssprint_r>
   17bf2:	f539                	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17bf4:	7792                	ld	a5,288(sp)
   17bf6:	835a                	mv	t1,s6
   17bf8:	f62ff06f          	j	1735a <_svfprintf_r+0x1f4>
   17bfc:	68f5                	lui	a7,0x1d
   17bfe:	46c1                	li	a3,16
   17c00:	11812703          	lw	a4,280(sp)
   17c04:	04088893          	addi	a7,a7,64 # 1d040 <blanks.1>
   17c08:	4bc1                	li	s7,16
   17c0a:	4c1d                	li	s8,7
   17c0c:	0096c663          	blt	a3,s1,17c18 <_svfprintf_r+0xab2>
   17c10:	a081                	j	17c50 <_svfprintf_r+0xaea>
   17c12:	34c1                	addiw	s1,s1,-16
   17c14:	029bde63          	bge	s7,s1,17c50 <_svfprintf_r+0xaea>
   17c18:	2705                	addiw	a4,a4,1
   17c1a:	07c1                	addi	a5,a5,16
   17c1c:	01133023          	sd	a7,0(t1)
   17c20:	01733423          	sd	s7,8(t1)
   17c24:	f23e                	sd	a5,288(sp)
   17c26:	10e12c23          	sw	a4,280(sp)
   17c2a:	0341                	addi	t1,t1,16
   17c2c:	feec53e3          	bge	s8,a4,17c12 <_svfprintf_r+0xaac>
   17c30:	0a10                	addi	a2,sp,272
   17c32:	85d2                	mv	a1,s4
   17c34:	854e                	mv	a0,s3
   17c36:	f846                	sd	a7,48(sp)
   17c38:	246020ef          	jal	ra,19e7e <__ssprint_r>
   17c3c:	f00512e3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17c40:	34c1                	addiw	s1,s1,-16
   17c42:	7792                	ld	a5,288(sp)
   17c44:	11812703          	lw	a4,280(sp)
   17c48:	78c2                	ld	a7,48(sp)
   17c4a:	835a                	mv	t1,s6
   17c4c:	fc9bc6e3          	blt	s7,s1,17c18 <_svfprintf_r+0xab2>
   17c50:	0017069b          	addiw	a3,a4,1
   17c54:	97a6                	add	a5,a5,s1
   17c56:	01133023          	sd	a7,0(t1)
   17c5a:	00933423          	sd	s1,8(t1)
   17c5e:	f23e                	sd	a5,288(sp)
   17c60:	10d12c23          	sw	a3,280(sp)
   17c64:	471d                	li	a4,7
   17c66:	f2d75d63          	bge	a4,a3,173a0 <_svfprintf_r+0x23a>
   17c6a:	0a10                	addi	a2,sp,272
   17c6c:	85d2                	mv	a1,s4
   17c6e:	854e                	mv	a0,s3
   17c70:	20e020ef          	jal	ra,19e7e <__ssprint_r>
   17c74:	ec0516e3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17c78:	7792                	ld	a5,288(sp)
   17c7a:	f26ff06f          	j	173a0 <_svfprintf_r+0x23a>
   17c7e:	562e                	lw	a2,232(sp)
   17c80:	54c05863          	blez	a2,181d0 <_svfprintf_r+0x106a>
   17c84:	6726                	ld	a4,72(sp)
   17c86:	7682                	ld	a3,32(sp)
   17c88:	00070b9b          	sext.w	s7,a4
   17c8c:	24e6c863          	blt	a3,a4,17edc <_svfprintf_r+0xd76>
   17c90:	03705263          	blez	s7,17cb4 <_svfprintf_r+0xb4e>
   17c94:	11812703          	lw	a4,280(sp)
   17c98:	97de                	add	a5,a5,s7
   17c9a:	01933023          	sd	s9,0(t1)
   17c9e:	0017069b          	addiw	a3,a4,1
   17ca2:	01733423          	sd	s7,8(t1)
   17ca6:	f23e                	sd	a5,288(sp)
   17ca8:	10d12c23          	sw	a3,280(sp)
   17cac:	471d                	li	a4,7
   17cae:	0341                	addi	t1,t1,16
   17cb0:	20d74ae3          	blt	a4,a3,186c4 <_svfprintf_r+0x155e>
   17cb4:	fffbc713          	not	a4,s7
   17cb8:	977d                	srai	a4,a4,0x3f
   17cba:	00ebfbb3          	and	s7,s7,a4
   17cbe:	6726                	ld	a4,72(sp)
   17cc0:	41770bbb          	subw	s7,a4,s7
   17cc4:	2d704563          	bgtz	s7,17f8e <_svfprintf_r+0xe28>
   17cc8:	66a6                	ld	a3,72(sp)
   17cca:	4004f713          	andi	a4,s1,1024
   17cce:	00dc8c33          	add	s8,s9,a3
   17cd2:	32071d63          	bnez	a4,1800c <_svfprintf_r+0xea6>
   17cd6:	572e                	lw	a4,232(sp)
   17cd8:	7682                	ld	a3,32(sp)
   17cda:	00d74663          	blt	a4,a3,17ce6 <_svfprintf_r+0xb80>
   17cde:	0014f693          	andi	a3,s1,1
   17ce2:	1e068ee3          	beqz	a3,186de <_svfprintf_r+0x1578>
   17ce6:	7626                	ld	a2,104(sp)
   17ce8:	11812683          	lw	a3,280(sp)
   17cec:	75c6                	ld	a1,112(sp)
   17cee:	97b2                	add	a5,a5,a2
   17cf0:	2685                	addiw	a3,a3,1
   17cf2:	00c33423          	sd	a2,8(t1)
   17cf6:	00b33023          	sd	a1,0(t1)
   17cfa:	0006861b          	sext.w	a2,a3
   17cfe:	10d12c23          	sw	a3,280(sp)
   17d02:	f23e                	sd	a5,288(sp)
   17d04:	469d                	li	a3,7
   17d06:	0341                	addi	t1,t1,16
   17d08:	42c6c2e3          	blt	a3,a2,1892c <_svfprintf_r+0x17c6>
   17d0c:	7682                	ld	a3,32(sp)
   17d0e:	00dc8833          	add	a6,s9,a3
   17d12:	41880bb3          	sub	s7,a6,s8
   17d16:	9e99                	subw	a3,a3,a4
   17d18:	000b861b          	sext.w	a2,s7
   17d1c:	00c6d363          	bge	a3,a2,17d22 <_svfprintf_r+0xbbc>
   17d20:	8bb6                	mv	s7,a3
   17d22:	2b81                	sext.w	s7,s7
   17d24:	03705263          	blez	s7,17d48 <_svfprintf_r+0xbe2>
   17d28:	11812703          	lw	a4,280(sp)
   17d2c:	97de                	add	a5,a5,s7
   17d2e:	01833023          	sd	s8,0(t1)
   17d32:	0017061b          	addiw	a2,a4,1
   17d36:	01733423          	sd	s7,8(t1)
   17d3a:	f23e                	sd	a5,288(sp)
   17d3c:	10c12c23          	sw	a2,280(sp)
   17d40:	471d                	li	a4,7
   17d42:	0341                	addi	t1,t1,16
   17d44:	40c74ee3          	blt	a4,a2,18960 <_svfprintf_r+0x17fa>
   17d48:	fffbc713          	not	a4,s7
   17d4c:	977d                	srai	a4,a4,0x3f
   17d4e:	00ebfbb3          	and	s7,s7,a4
   17d52:	41768bbb          	subw	s7,a3,s7
   17d56:	e3705f63          	blez	s7,17394 <_svfprintf_r+0x22e>
   17d5a:	68f5                	lui	a7,0x1d
   17d5c:	46c1                	li	a3,16
   17d5e:	11812703          	lw	a4,280(sp)
   17d62:	05088d93          	addi	s11,a7,80 # 1d050 <zeroes.0>
   17d66:	4cc1                	li	s9,16
   17d68:	4c1d                	li	s8,7
   17d6a:	0176c663          	blt	a3,s7,17d76 <_svfprintf_r+0xc10>
   17d6e:	a335                	j	1829a <_svfprintf_r+0x1134>
   17d70:	3bc1                	addiw	s7,s7,-16
   17d72:	537cd463          	bge	s9,s7,1829a <_svfprintf_r+0x1134>
   17d76:	2705                	addiw	a4,a4,1
   17d78:	07c1                	addi	a5,a5,16
   17d7a:	01b33023          	sd	s11,0(t1)
   17d7e:	01933423          	sd	s9,8(t1)
   17d82:	f23e                	sd	a5,288(sp)
   17d84:	10e12c23          	sw	a4,280(sp)
   17d88:	0341                	addi	t1,t1,16
   17d8a:	feec53e3          	bge	s8,a4,17d70 <_svfprintf_r+0xc0a>
   17d8e:	0a10                	addi	a2,sp,272
   17d90:	85d2                	mv	a1,s4
   17d92:	854e                	mv	a0,s3
   17d94:	0ea020ef          	jal	ra,19e7e <__ssprint_r>
   17d98:	da0514e3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17d9c:	7792                	ld	a5,288(sp)
   17d9e:	11812703          	lw	a4,280(sp)
   17da2:	835a                	mv	t1,s6
   17da4:	b7f1                	j	17d70 <_svfprintf_r+0xc0a>
   17da6:	ea0c1d63          	bnez	s8,17460 <_svfprintf_r+0x2fa>
   17daa:	84ee                	mv	s1,s11
   17dac:	4c01                	li	s8,0
   17dae:	4b81                	li	s7,0
   17db0:	18c10c93          	addi	s9,sp,396
   17db4:	ebcff06f          	j	17470 <_svfprintf_r+0x30a>
   17db8:	0014f593          	andi	a1,s1,1
   17dbc:	800596e3          	bnez	a1,175c8 <_svfprintf_r+0x462>
   17dc0:	00c33423          	sd	a2,8(t1)
   17dc4:	f26a                	sd	s10,288(sp)
   17dc6:	11712c23          	sw	s7,280(sp)
   17dca:	469d                	li	a3,7
   17dcc:	8776d1e3          	bge	a3,s7,1762e <_svfprintf_r+0x4c8>
   17dd0:	0a10                	addi	a2,sp,272
   17dd2:	85d2                	mv	a1,s4
   17dd4:	854e                	mv	a0,s3
   17dd6:	0a8020ef          	jal	ra,19e7e <__ssprint_r>
   17dda:	d60513e3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17dde:	7d12                	ld	s10,288(sp)
   17de0:	11812b83          	lw	s7,280(sp)
   17de4:	8c5a                	mv	s8,s6
   17de6:	849ff06f          	j	1762e <_svfprintf_r+0x4c8>
   17dea:	84d052e3          	blez	a3,1762e <_svfprintf_r+0x4c8>
   17dee:	68f5                	lui	a7,0x1d
   17df0:	4641                	li	a2,16
   17df2:	05088d93          	addi	s11,a7,80 # 1d050 <zeroes.0>
   17df6:	4841                	li	a6,16
   17df8:	4c9d                	li	s9,7
   17dfa:	00d64663          	blt	a2,a3,17e06 <_svfprintf_r+0xca0>
   17dfe:	ab71                	j	1839a <_svfprintf_r+0x1234>
   17e00:	36c1                	addiw	a3,a3,-16
   17e02:	58d85c63          	bge	a6,a3,1839a <_svfprintf_r+0x1234>
   17e06:	2b85                	addiw	s7,s7,1
   17e08:	0d41                	addi	s10,s10,16
   17e0a:	01bc3023          	sd	s11,0(s8)
   17e0e:	010c3423          	sd	a6,8(s8)
   17e12:	f26a                	sd	s10,288(sp)
   17e14:	11712c23          	sw	s7,280(sp)
   17e18:	0c41                	addi	s8,s8,16
   17e1a:	ff7cd3e3          	bge	s9,s7,17e00 <_svfprintf_r+0xc9a>
   17e1e:	0a10                	addi	a2,sp,272
   17e20:	85d2                	mv	a1,s4
   17e22:	854e                	mv	a0,s3
   17e24:	f836                	sd	a3,48(sp)
   17e26:	058020ef          	jal	ra,19e7e <__ssprint_r>
   17e2a:	d0051be3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17e2e:	7d12                	ld	s10,288(sp)
   17e30:	11812b83          	lw	s7,280(sp)
   17e34:	76c2                	ld	a3,48(sp)
   17e36:	8c5a                	mv	s8,s6
   17e38:	4841                	li	a6,16
   17e3a:	b7d9                	j	17e00 <_svfprintf_r+0xc9a>
   17e3c:	010df793          	andi	a5,s11,16
   17e40:	e3bd                	bnez	a5,17ea6 <_svfprintf_r+0xd40>
   17e42:	66c2                	ld	a3,16(sp)
   17e44:	040df793          	andi	a5,s11,64
   17e48:	0006a903          	lw	s2,0(a3)
   17e4c:	58078863          	beqz	a5,183dc <_svfprintf_r+0x1276>
   17e50:	1942                	slli	s2,s2,0x30
   17e52:	03095913          	srli	s2,s2,0x30
   17e56:	e83a                	sd	a4,16(sp)
   17e58:	4785                	li	a5,1
   17e5a:	e58ff06f          	j	174b2 <_svfprintf_r+0x34c>
   17e5e:	0a10                	addi	a2,sp,272
   17e60:	85d2                	mv	a1,s4
   17e62:	854e                	mv	a0,s3
   17e64:	01a020ef          	jal	ra,19e7e <__ssprint_r>
   17e68:	cc051ce3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17e6c:	7d12                	ld	s10,288(sp)
   17e6e:	11812b83          	lw	s7,280(sp)
   17e72:	8c5a                	mv	s8,s6
   17e74:	f66ff06f          	j	175da <_svfprintf_r+0x474>
   17e78:	0a10                	addi	a2,sp,272
   17e7a:	85d2                	mv	a1,s4
   17e7c:	854e                	mv	a0,s3
   17e7e:	000020ef          	jal	ra,19e7e <__ssprint_r>
   17e82:	ca051fe3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17e86:	7d12                	ld	s10,288(sp)
   17e88:	11812b83          	lw	s7,280(sp)
   17e8c:	8c5a                	mv	s8,s6
   17e8e:	f6aff06f          	j	175f8 <_svfprintf_r+0x492>
   17e92:	0014f713          	andi	a4,s1,1
   17e96:	ce070f63          	beqz	a4,17394 <_svfprintf_r+0x22e>
   17e9a:	b4e9                	j	17964 <_svfprintf_r+0x7fe>
   17e9c:	00044e03          	lbu	t3,0(s0)
   17ea0:	e83e                	sd	a5,16(sp)
   17ea2:	bceff06f          	j	17270 <_svfprintf_r+0x10a>
   17ea6:	67c2                	ld	a5,16(sp)
   17ea8:	e83a                	sd	a4,16(sp)
   17eaa:	0007b903          	ld	s2,0(a5)
   17eae:	4785                	li	a5,1
   17eb0:	e02ff06f          	j	174b2 <_svfprintf_r+0x34c>
   17eb4:	67c2                	ld	a5,16(sp)
   17eb6:	639c                	ld	a5,0(a5)
   17eb8:	893e                	mv	s2,a5
   17eba:	d8aff06f          	j	17444 <_svfprintf_r+0x2de>
   17ebe:	67c2                	ld	a5,16(sp)
   17ec0:	0007b903          	ld	s2,0(a5)
   17ec4:	de4ff06f          	j	174a8 <_svfprintf_r+0x342>
   17ec8:	67c2                	ld	a5,16(sp)
   17eca:	07bd                	addi	a5,a5,15
   17ecc:	ff07f713          	andi	a4,a5,-16
   17ed0:	631c                	ld	a5,0(a4)
   17ed2:	670c                	ld	a1,8(a4)
   17ed4:	0741                	addi	a4,a4,16
   17ed6:	e83a                	sd	a4,16(sp)
   17ed8:	e4cff06f          	j	17524 <_svfprintf_r+0x3be>
   17edc:	00068b9b          	sext.w	s7,a3
   17ee0:	db704ae3          	bgtz	s7,17c94 <_svfprintf_r+0xb2e>
   17ee4:	bbc1                	j	17cb4 <_svfprintf_r+0xb4e>
   17ee6:	67f1                	lui	a5,0x1c
   17ee8:	71078793          	addi	a5,a5,1808 # 1c710 <__clzdi2+0xd0>
   17eec:	f43e                	sd	a5,40(sp)
   17eee:	66c2                	ld	a3,16(sp)
   17ef0:	0204f793          	andi	a5,s1,32
   17ef4:	00868713          	addi	a4,a3,8
   17ef8:	22078a63          	beqz	a5,1812c <_svfprintf_r+0xfc6>
   17efc:	0006b903          	ld	s2,0(a3)
   17f00:	0014f793          	andi	a5,s1,1
   17f04:	cf81                	beqz	a5,17f1c <_svfprintf_r+0xdb6>
   17f06:	00090b63          	beqz	s2,17f1c <_svfprintf_r+0xdb6>
   17f0a:	0024e493          	ori	s1,s1,2
   17f0e:	03000793          	li	a5,48
   17f12:	0ef10023          	sb	a5,224(sp)
   17f16:	0fa100a3          	sb	s10,225(sp)
   17f1a:	2481                	sext.w	s1,s1
   17f1c:	bff4fd93          	andi	s11,s1,-1025
   17f20:	2d81                	sext.w	s11,s11
   17f22:	e83a                	sd	a4,16(sp)
   17f24:	4789                	li	a5,2
   17f26:	d8cff06f          	j	174b2 <_svfprintf_r+0x34c>
   17f2a:	8da6                	mv	s11,s1
   17f2c:	b88d                	j	1779e <_svfprintf_r+0x638>
   17f2e:	0a10                	addi	a2,sp,272
   17f30:	85d2                	mv	a1,s4
   17f32:	854e                	mv	a0,s3
   17f34:	74b010ef          	jal	ra,19e7e <__ssprint_r>
   17f38:	c00514e3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17f3c:	7792                	ld	a5,288(sp)
   17f3e:	835a                	mv	t1,s6
   17f40:	b4a9                	j	1798a <_svfprintf_r+0x824>
   17f42:	0204e493          	ori	s1,s1,32
   17f46:	00144e03          	lbu	t3,1(s0)
   17f4a:	2481                	sext.w	s1,s1
   17f4c:	0405                	addi	s0,s0,1
   17f4e:	b22ff06f          	j	17270 <_svfprintf_r+0x10a>
   17f52:	2004e493          	ori	s1,s1,512
   17f56:	00144e03          	lbu	t3,1(s0)
   17f5a:	2481                	sext.w	s1,s1
   17f5c:	0405                	addi	s0,s0,1
   17f5e:	b12ff06f          	j	17270 <_svfprintf_r+0x10a>
   17f62:	67f1                	lui	a5,0x1c
   17f64:	72878793          	addi	a5,a5,1832 # 1c728 <__clzdi2+0xe8>
   17f68:	f43e                	sd	a5,40(sp)
   17f6a:	b751                	j	17eee <_svfprintf_r+0xd88>
   17f6c:	04000593          	li	a1,64
   17f70:	854e                	mv	a0,s3
   17f72:	803f80ef          	jal	ra,10774 <_malloc_r>
   17f76:	00aa3023          	sd	a0,0(s4)
   17f7a:	00aa3c23          	sd	a0,24(s4)
   17f7e:	420503e3          	beqz	a0,18ba4 <_svfprintf_r+0x1a3e>
   17f82:	04000793          	li	a5,64
   17f86:	02fa2023          	sw	a5,32(s4)
   17f8a:	a42ff06f          	j	171cc <_svfprintf_r+0x66>
   17f8e:	68f5                	lui	a7,0x1d
   17f90:	46c1                	li	a3,16
   17f92:	11812703          	lw	a4,280(sp)
   17f96:	05088d93          	addi	s11,a7,80 # 1d050 <zeroes.0>
   17f9a:	4d41                	li	s10,16
   17f9c:	4c1d                	li	s8,7
   17f9e:	0176c663          	blt	a3,s7,17faa <_svfprintf_r+0xe44>
   17fa2:	a5e5                	j	1868a <_svfprintf_r+0x1524>
   17fa4:	3bc1                	addiw	s7,s7,-16
   17fa6:	6f7d5263          	bge	s10,s7,1868a <_svfprintf_r+0x1524>
   17faa:	2705                	addiw	a4,a4,1
   17fac:	07c1                	addi	a5,a5,16
   17fae:	01b33023          	sd	s11,0(t1)
   17fb2:	01a33423          	sd	s10,8(t1)
   17fb6:	f23e                	sd	a5,288(sp)
   17fb8:	10e12c23          	sw	a4,280(sp)
   17fbc:	0341                	addi	t1,t1,16
   17fbe:	feec53e3          	bge	s8,a4,17fa4 <_svfprintf_r+0xe3e>
   17fc2:	0a10                	addi	a2,sp,272
   17fc4:	85d2                	mv	a1,s4
   17fc6:	854e                	mv	a0,s3
   17fc8:	6b7010ef          	jal	ra,19e7e <__ssprint_r>
   17fcc:	b6051ae3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   17fd0:	7792                	ld	a5,288(sp)
   17fd2:	11812703          	lw	a4,280(sp)
   17fd6:	835a                	mv	t1,s6
   17fd8:	b7f1                	j	17fa4 <_svfprintf_r+0xe3e>
   17fda:	8566                	mv	a0,s9
   17fdc:	f81a                	sd	t1,48(sp)
   17fde:	bccf90ef          	jal	ra,113aa <strlen>
   17fe2:	00050b9b          	sext.w	s7,a0
   17fe6:	0df14783          	lbu	a5,223(sp)
   17fea:	fffbc913          	not	s2,s7
   17fee:	43f95913          	srai	s2,s2,0x3f
   17ff2:	e86e                	sd	s11,16(sp)
   17ff4:	ec02                	sd	zero,24(sp)
   17ff6:	e882                	sd	zero,80(sp)
   17ff8:	ec82                	sd	zero,88(sp)
   17ffa:	e482                	sd	zero,72(sp)
   17ffc:	7342                	ld	t1,48(sp)
   17ffe:	01797933          	and	s2,s2,s7
   18002:	4c01                	li	s8,0
   18004:	c8079463          	bnez	a5,1748c <_svfprintf_r+0x326>
   18008:	adeff06f          	j	172e6 <_svfprintf_r+0x180>
   1800c:	7702                	ld	a4,32(sp)
   1800e:	6ef5                	lui	t4,0x1d
   18010:	4b9d                	li	s7,7
   18012:	9766                	add	a4,a4,s9
   18014:	fc3a                	sd	a4,56(sp)
   18016:	6766                	ld	a4,88(sp)
   18018:	4dc1                	li	s11,16
   1801a:	050e8d13          	addi	s10,t4,80 # 1d050 <zeroes.0>
   1801e:	cb49                	beqz	a4,180b0 <_svfprintf_r+0xf4a>
   18020:	6746                	ld	a4,80(sp)
   18022:	eb51                	bnez	a4,180b6 <_svfprintf_r+0xf50>
   18024:	7706                	ld	a4,96(sp)
   18026:	177d                	addi	a4,a4,-1
   18028:	f0ba                	sd	a4,96(sp)
   1802a:	6766                	ld	a4,88(sp)
   1802c:	377d                	addiw	a4,a4,-1
   1802e:	ecba                	sd	a4,88(sp)
   18030:	668a                	ld	a3,128(sp)
   18032:	11812703          	lw	a4,280(sp)
   18036:	662a                	ld	a2,136(sp)
   18038:	97b6                	add	a5,a5,a3
   1803a:	2705                	addiw	a4,a4,1
   1803c:	00d33423          	sd	a3,8(t1)
   18040:	00c33023          	sd	a2,0(t1)
   18044:	f23e                	sd	a5,288(sp)
   18046:	0007069b          	sext.w	a3,a4
   1804a:	10e12c23          	sw	a4,280(sp)
   1804e:	0341                	addi	t1,t1,16
   18050:	0edbc663          	blt	s7,a3,1813c <_svfprintf_r+0xfd6>
   18054:	7706                	ld	a4,96(sp)
   18056:	00074603          	lbu	a2,0(a4)
   1805a:	7762                	ld	a4,56(sp)
   1805c:	418706b3          	sub	a3,a4,s8
   18060:	0006859b          	sext.w	a1,a3
   18064:	0006071b          	sext.w	a4,a2
   18068:	00b65363          	bge	a2,a1,1806e <_svfprintf_r+0xf08>
   1806c:	86ba                	mv	a3,a4
   1806e:	2681                	sext.w	a3,a3
   18070:	02d05663          	blez	a3,1809c <_svfprintf_r+0xf36>
   18074:	11812703          	lw	a4,280(sp)
   18078:	97b6                	add	a5,a5,a3
   1807a:	01833023          	sd	s8,0(t1)
   1807e:	0017061b          	addiw	a2,a4,1
   18082:	00d33423          	sd	a3,8(t1)
   18086:	f23e                	sd	a5,288(sp)
   18088:	10c12c23          	sw	a2,280(sp)
   1808c:	20cbcf63          	blt	s7,a2,182aa <_svfprintf_r+0x1144>
   18090:	7706                	ld	a4,96(sp)
   18092:	0341                	addi	t1,t1,16
   18094:	00074603          	lbu	a2,0(a4)
   18098:	0006071b          	sext.w	a4,a2
   1809c:	fff6c593          	not	a1,a3
   180a0:	95fd                	srai	a1,a1,0x3f
   180a2:	8eed                	and	a3,a3,a1
   180a4:	9f15                	subw	a4,a4,a3
   180a6:	00e04c63          	bgtz	a4,180be <_svfprintf_r+0xf58>
   180aa:	9c32                	add	s8,s8,a2
   180ac:	6766                	ld	a4,88(sp)
   180ae:	fb2d                	bnez	a4,18020 <_svfprintf_r+0xeba>
   180b0:	6746                	ld	a4,80(sp)
   180b2:	020702e3          	beqz	a4,188d6 <_svfprintf_r+0x1770>
   180b6:	6746                	ld	a4,80(sp)
   180b8:	377d                	addiw	a4,a4,-1
   180ba:	e8ba                	sd	a4,80(sp)
   180bc:	bf95                	j	18030 <_svfprintf_r+0xeca>
   180be:	11812683          	lw	a3,280(sp)
   180c2:	00edc663          	blt	s11,a4,180ce <_svfprintf_r+0xf68>
   180c6:	a081                	j	18106 <_svfprintf_r+0xfa0>
   180c8:	3741                	addiw	a4,a4,-16
   180ca:	02edde63          	bge	s11,a4,18106 <_svfprintf_r+0xfa0>
   180ce:	2685                	addiw	a3,a3,1
   180d0:	07c1                	addi	a5,a5,16
   180d2:	01a33023          	sd	s10,0(t1)
   180d6:	01b33423          	sd	s11,8(t1)
   180da:	f23e                	sd	a5,288(sp)
   180dc:	10d12c23          	sw	a3,280(sp)
   180e0:	0341                	addi	t1,t1,16
   180e2:	fedbd3e3          	bge	s7,a3,180c8 <_svfprintf_r+0xf62>
   180e6:	0a10                	addi	a2,sp,272
   180e8:	85d2                	mv	a1,s4
   180ea:	854e                	mv	a0,s3
   180ec:	f83a                	sd	a4,48(sp)
   180ee:	591010ef          	jal	ra,19e7e <__ssprint_r>
   180f2:	a40517e3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   180f6:	7742                	ld	a4,48(sp)
   180f8:	7792                	ld	a5,288(sp)
   180fa:	11812683          	lw	a3,280(sp)
   180fe:	3741                	addiw	a4,a4,-16
   18100:	835a                	mv	t1,s6
   18102:	fcedc6e3          	blt	s11,a4,180ce <_svfprintf_r+0xf68>
   18106:	2685                	addiw	a3,a3,1
   18108:	97ba                	add	a5,a5,a4
   1810a:	00e33423          	sd	a4,8(t1)
   1810e:	01a33023          	sd	s10,0(t1)
   18112:	f23e                	sd	a5,288(sp)
   18114:	0006871b          	sext.w	a4,a3
   18118:	10d12c23          	sw	a3,280(sp)
   1811c:	7eebc463          	blt	s7,a4,18904 <_svfprintf_r+0x179e>
   18120:	7706                	ld	a4,96(sp)
   18122:	0341                	addi	t1,t1,16
   18124:	00074603          	lbu	a2,0(a4)
   18128:	9c32                	add	s8,s8,a2
   1812a:	b749                	j	180ac <_svfprintf_r+0xf46>
   1812c:	0104f793          	andi	a5,s1,16
   18130:	12078b63          	beqz	a5,18266 <_svfprintf_r+0x1100>
   18134:	67c2                	ld	a5,16(sp)
   18136:	0007b903          	ld	s2,0(a5)
   1813a:	b3d9                	j	17f00 <_svfprintf_r+0xd9a>
   1813c:	0a10                	addi	a2,sp,272
   1813e:	85d2                	mv	a1,s4
   18140:	854e                	mv	a0,s3
   18142:	53d010ef          	jal	ra,19e7e <__ssprint_r>
   18146:	9e051de3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   1814a:	7792                	ld	a5,288(sp)
   1814c:	835a                	mv	t1,s6
   1814e:	b719                	j	18054 <_svfprintf_r+0xeee>
   18150:	18c10b93          	addi	s7,sp,396
   18154:	400df713          	andi	a4,s11,1024
   18158:	f002                	sd	zero,32(sp)
   1815a:	865e                	mv	a2,s7
   1815c:	44a9                	li	s1,10
   1815e:	46a5                	li	a3,9
   18160:	0ff00893          	li	a7,255
   18164:	a039                	j	18172 <_svfprintf_r+0x100c>
   18166:	029957b3          	divu	a5,s2,s1
   1816a:	8b26f5e3          	bgeu	a3,s2,17a14 <_svfprintf_r+0x8ae>
   1816e:	893e                	mv	s2,a5
   18170:	8666                	mv	a2,s9
   18172:	7582                	ld	a1,32(sp)
   18174:	fff60c93          	addi	s9,a2,-1
   18178:	2585                	addiw	a1,a1,1
   1817a:	f02e                	sd	a1,32(sp)
   1817c:	029977b3          	remu	a5,s2,s1
   18180:	0307879b          	addiw	a5,a5,48
   18184:	fef60fa3          	sb	a5,-1(a2)
   18188:	df79                	beqz	a4,18166 <_svfprintf_r+0x1000>
   1818a:	7786                	ld	a5,96(sp)
   1818c:	0007c783          	lbu	a5,0(a5)
   18190:	fcf59be3          	bne	a1,a5,18166 <_svfprintf_r+0x1000>
   18194:	fd1789e3          	beq	a5,a7,18166 <_svfprintf_r+0x1000>
   18198:	8726fee3          	bgeu	a3,s2,17a14 <_svfprintf_r+0x8ae>
   1819c:	678a                	ld	a5,128(sp)
   1819e:	65aa                	ld	a1,136(sp)
   181a0:	f83a                	sd	a4,48(sp)
   181a2:	40fc8cb3          	sub	s9,s9,a5
   181a6:	863e                	mv	a2,a5
   181a8:	8566                	mv	a0,s9
   181aa:	ec1a                	sd	t1,24(sp)
   181ac:	f49fe0ef          	jal	ra,170f4 <strncpy>
   181b0:	7706                	ld	a4,96(sp)
   181b2:	029957b3          	divu	a5,s2,s1
   181b6:	6362                	ld	t1,24(sp)
   181b8:	00174603          	lbu	a2,1(a4)
   181bc:	f002                	sd	zero,32(sp)
   181be:	46a5                	li	a3,9
   181c0:	00c03633          	snez	a2,a2
   181c4:	9732                	add	a4,a4,a2
   181c6:	f0ba                	sd	a4,96(sp)
   181c8:	0ff00893          	li	a7,255
   181cc:	7742                	ld	a4,48(sp)
   181ce:	b745                	j	1816e <_svfprintf_r+0x1008>
   181d0:	11812703          	lw	a4,280(sp)
   181d4:	66f1                	lui	a3,0x1c
   181d6:	74868693          	addi	a3,a3,1864 # 1c748 <__clzdi2+0x108>
   181da:	2705                	addiw	a4,a4,1
   181dc:	00d33023          	sd	a3,0(t1)
   181e0:	0785                	addi	a5,a5,1
   181e2:	4685                	li	a3,1
   181e4:	00d33423          	sd	a3,8(t1)
   181e8:	10e12c23          	sw	a4,280(sp)
   181ec:	0007069b          	sext.w	a3,a4
   181f0:	f23e                	sd	a5,288(sp)
   181f2:	471d                	li	a4,7
   181f4:	0341                	addi	t1,t1,16
   181f6:	04d74d63          	blt	a4,a3,18250 <_svfprintf_r+0x10ea>
   181fa:	12061563          	bnez	a2,18324 <_svfprintf_r+0x11be>
   181fe:	7682                	ld	a3,32(sp)
   18200:	0014f713          	andi	a4,s1,1
   18204:	8f55                	or	a4,a4,a3
   18206:	98070763          	beqz	a4,17394 <_svfprintf_r+0x22e>
   1820a:	76a6                	ld	a3,104(sp)
   1820c:	11812703          	lw	a4,280(sp)
   18210:	7646                	ld	a2,112(sp)
   18212:	97b6                	add	a5,a5,a3
   18214:	2705                	addiw	a4,a4,1
   18216:	00d33423          	sd	a3,8(t1)
   1821a:	10e12c23          	sw	a4,280(sp)
   1821e:	0007069b          	sext.w	a3,a4
   18222:	00c33023          	sd	a2,0(t1)
   18226:	f23e                	sd	a5,288(sp)
   18228:	471d                	li	a4,7
   1822a:	50d74e63          	blt	a4,a3,18746 <_svfprintf_r+0x15e0>
   1822e:	0341                	addi	t1,t1,16
   18230:	7702                	ld	a4,32(sp)
   18232:	0016861b          	addiw	a2,a3,1
   18236:	01933023          	sd	s9,0(t1)
   1823a:	97ba                	add	a5,a5,a4
   1823c:	00e33423          	sd	a4,8(t1)
   18240:	f23e                	sd	a5,288(sp)
   18242:	10c12c23          	sw	a2,280(sp)
   18246:	471d                	li	a4,7
   18248:	94c75563          	bge	a4,a2,17392 <_svfprintf_r+0x22c>
   1824c:	c06ff06f          	j	17652 <_svfprintf_r+0x4ec>
   18250:	0a10                	addi	a2,sp,272
   18252:	85d2                	mv	a1,s4
   18254:	854e                	mv	a0,s3
   18256:	429010ef          	jal	ra,19e7e <__ssprint_r>
   1825a:	8e0513e3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   1825e:	562e                	lw	a2,232(sp)
   18260:	7792                	ld	a5,288(sp)
   18262:	835a                	mv	t1,s6
   18264:	bf59                	j	181fa <_svfprintf_r+0x1094>
   18266:	66c2                	ld	a3,16(sp)
   18268:	0404f793          	andi	a5,s1,64
   1826c:	0006a903          	lw	s2,0(a3)
   18270:	12078c63          	beqz	a5,183a8 <_svfprintf_r+0x1242>
   18274:	1942                	slli	s2,s2,0x30
   18276:	03095913          	srli	s2,s2,0x30
   1827a:	b159                	j	17f00 <_svfprintf_r+0xd9a>
   1827c:	8da6                	mv	s11,s1
   1827e:	e83a                	sd	a4,16(sp)
   18280:	9daff06f          	j	1745a <_svfprintf_r+0x2f4>
   18284:	0a10                	addi	a2,sp,272
   18286:	85d2                	mv	a1,s4
   18288:	854e                	mv	a0,s3
   1828a:	3f5010ef          	jal	ra,19e7e <__ssprint_r>
   1828e:	8a0519e3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   18292:	7792                	ld	a5,288(sp)
   18294:	835a                	mv	t1,s6
   18296:	ec6ff06f          	j	1795c <_svfprintf_r+0x7f6>
   1829a:	0017069b          	addiw	a3,a4,1
   1829e:	8736                	mv	a4,a3
   182a0:	97de                	add	a5,a5,s7
   182a2:	01b33023          	sd	s11,0(t1)
   182a6:	8dcff06f          	j	17382 <_svfprintf_r+0x21c>
   182aa:	0a10                	addi	a2,sp,272
   182ac:	85d2                	mv	a1,s4
   182ae:	854e                	mv	a0,s3
   182b0:	f836                	sd	a3,48(sp)
   182b2:	3cd010ef          	jal	ra,19e7e <__ssprint_r>
   182b6:	880515e3          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   182ba:	7786                	ld	a5,96(sp)
   182bc:	76c2                	ld	a3,48(sp)
   182be:	835a                	mv	t1,s6
   182c0:	0007c603          	lbu	a2,0(a5)
   182c4:	7792                	ld	a5,288(sp)
   182c6:	0006071b          	sext.w	a4,a2
   182ca:	bbc9                	j	1809c <_svfprintf_r+0xf36>
   182cc:	6512                	ld	a0,256(sp)
   182ce:	65b2                	ld	a1,264(sp)
   182d0:	4601                	li	a2,0
   182d2:	4681                	li	a3,0
   182d4:	048030ef          	jal	ra,1b31c <__letf2>
   182d8:	6362                	ld	t1,24(sp)
   182da:	64054463          	bltz	a0,18922 <_svfprintf_r+0x17bc>
   182de:	0df14783          	lbu	a5,223(sp)
   182e2:	04700713          	li	a4,71
   182e6:	3da75b63          	bge	a4,s10,186bc <_svfprintf_r+0x1556>
   182ea:	6871                	lui	a6,0x1c
   182ec:	6f880c93          	addi	s9,a6,1784 # 1c6f8 <__clzdi2+0xb8>
   182f0:	f7f4f493          	andi	s1,s1,-129
   182f4:	ec02                	sd	zero,24(sp)
   182f6:	e882                	sd	zero,80(sp)
   182f8:	ec82                	sd	zero,88(sp)
   182fa:	e482                	sd	zero,72(sp)
   182fc:	2481                	sext.w	s1,s1
   182fe:	490d                	li	s2,3
   18300:	4b8d                	li	s7,3
   18302:	4c01                	li	s8,0
   18304:	98079463          	bnez	a5,1748c <_svfprintf_r+0x326>
   18308:	fdffe06f          	j	172e6 <_svfprintf_r+0x180>
   1830c:	4799                	li	a5,6
   1830e:	000c0b9b          	sext.w	s7,s8
   18312:	3d87e463          	bltu	a5,s8,186da <_svfprintf_r+0x1574>
   18316:	6871                	lui	a6,0x1c
   18318:	895e                	mv	s2,s7
   1831a:	e86e                	sd	s11,16(sp)
   1831c:	74080c93          	addi	s9,a6,1856 # 1c740 <__clzdi2+0x100>
   18320:	fbdfe06f          	j	172dc <_svfprintf_r+0x176>
   18324:	76a6                	ld	a3,104(sp)
   18326:	11812703          	lw	a4,280(sp)
   1832a:	75c6                	ld	a1,112(sp)
   1832c:	97b6                	add	a5,a5,a3
   1832e:	2705                	addiw	a4,a4,1
   18330:	00d33423          	sd	a3,8(t1)
   18334:	00b33023          	sd	a1,0(t1)
   18338:	0007069b          	sext.w	a3,a4
   1833c:	10e12c23          	sw	a4,280(sp)
   18340:	f23e                	sd	a5,288(sp)
   18342:	471d                	li	a4,7
   18344:	0341                	addi	t1,t1,16
   18346:	40d74063          	blt	a4,a3,18746 <_svfprintf_r+0x15e0>
   1834a:	ee0653e3          	bgez	a2,18230 <_svfprintf_r+0x10ca>
   1834e:	68f5                	lui	a7,0x1d
   18350:	5741                	li	a4,-16
   18352:	40c00c3b          	negw	s8,a2
   18356:	05088d93          	addi	s11,a7,80 # 1d050 <zeroes.0>
   1835a:	4bc1                	li	s7,16
   1835c:	4d1d                	li	s10,7
   1835e:	00e64663          	blt	a2,a4,1836a <_svfprintf_r+0x1204>
   18362:	a54d                	j	18a04 <_svfprintf_r+0x189e>
   18364:	3c41                	addiw	s8,s8,-16
   18366:	698bdf63          	bge	s7,s8,18a04 <_svfprintf_r+0x189e>
   1836a:	2685                	addiw	a3,a3,1
   1836c:	07c1                	addi	a5,a5,16
   1836e:	01b33023          	sd	s11,0(t1)
   18372:	01733423          	sd	s7,8(t1)
   18376:	f23e                	sd	a5,288(sp)
   18378:	10d12c23          	sw	a3,280(sp)
   1837c:	0341                	addi	t1,t1,16
   1837e:	fedd53e3          	bge	s10,a3,18364 <_svfprintf_r+0x11fe>
   18382:	0a10                	addi	a2,sp,272
   18384:	85d2                	mv	a1,s4
   18386:	854e                	mv	a0,s3
   18388:	2f7010ef          	jal	ra,19e7e <__ssprint_r>
   1838c:	fa051a63          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   18390:	7792                	ld	a5,288(sp)
   18392:	11812683          	lw	a3,280(sp)
   18396:	835a                	mv	t1,s6
   18398:	b7f1                	j	18364 <_svfprintf_r+0x11fe>
   1839a:	2b85                	addiw	s7,s7,1
   1839c:	865e                	mv	a2,s7
   1839e:	9d36                	add	s10,s10,a3
   183a0:	01bc3023          	sd	s11,0(s8)
   183a4:	a78ff06f          	j	1761c <_svfprintf_r+0x4b6>
   183a8:	2004f793          	andi	a5,s1,512
   183ac:	34078763          	beqz	a5,186fa <_svfprintf_r+0x1594>
   183b0:	0ff97913          	zext.b	s2,s2
   183b4:	b6b1                	j	17f00 <_svfprintf_r+0xd9a>
   183b6:	2004f793          	andi	a5,s1,512
   183ba:	36078563          	beqz	a5,18724 <_svfprintf_r+0x15be>
   183be:	0ff97913          	zext.b	s2,s2
   183c2:	8e6ff06f          	j	174a8 <_svfprintf_r+0x342>
   183c6:	2004f793          	andi	a5,s1,512
   183ca:	34078a63          	beqz	a5,1871e <_svfprintf_r+0x15b8>
   183ce:	0189191b          	slliw	s2,s2,0x18
   183d2:	4189591b          	sraiw	s2,s2,0x18
   183d6:	87ca                	mv	a5,s2
   183d8:	86cff06f          	j	17444 <_svfprintf_r+0x2de>
   183dc:	200df793          	andi	a5,s11,512
   183e0:	32078263          	beqz	a5,18704 <_svfprintf_r+0x159e>
   183e4:	0ff97913          	zext.b	s2,s2
   183e8:	e83a                	sd	a4,16(sp)
   183ea:	4785                	li	a5,1
   183ec:	8c6ff06f          	j	174b2 <_svfprintf_r+0x34c>
   183f0:	07800713          	li	a4,120
   183f4:	0024e793          	ori	a5,s1,2
   183f8:	03000693          	li	a3,48
   183fc:	2781                	sext.w	a5,a5
   183fe:	0ee100a3          	sb	a4,225(sp)
   18402:	0ed10023          	sb	a3,224(sp)
   18406:	06300713          	li	a4,99
   1840a:	f53e                	sd	a5,168(sp)
   1840c:	ec02                	sd	zero,24(sp)
   1840e:	12810c93          	addi	s9,sp,296
   18412:	35874963          	blt	a4,s8,18764 <_svfprintf_r+0x15fe>
   18416:	6932                	ld	s2,264(sp)
   18418:	fdfd7793          	andi	a5,s10,-33
   1841c:	1024e493          	ori	s1,s1,258
   18420:	ecbe                	sd	a5,88(sp)
   18422:	e582                	sd	zero,200(sp)
   18424:	6b92                	ld	s7,256(sp)
   18426:	2481                	sext.w	s1,s1
   18428:	0e094163          	bltz	s2,1850a <_svfprintf_r+0x13a4>
   1842c:	06100793          	li	a5,97
   18430:	64fd0b63          	beq	s10,a5,18a86 <_svfprintf_r+0x1920>
   18434:	fbfd079b          	addiw	a5,s10,-65
   18438:	0007869b          	sext.w	a3,a5
   1843c:	02500713          	li	a4,37
   18440:	00d76c63          	bltu	a4,a3,18458 <_svfprintf_r+0x12f2>
   18444:	02079713          	slli	a4,a5,0x20
   18448:	01e75793          	srli	a5,a4,0x1e
   1844c:	6775                	lui	a4,0x1d
   1844e:	fa870713          	addi	a4,a4,-88 # 1cfa8 <p05.0+0x178>
   18452:	97ba                	add	a5,a5,a4
   18454:	439c                	lw	a5,0(a5)
   18456:	8782                	jr	a5
   18458:	8de2                	mv	s11,s8
   1845a:	4689                	li	a3,2
   1845c:	11bc                	addi	a5,sp,232
   1845e:	876e                	mv	a4,s11
   18460:	0f810893          	addi	a7,sp,248
   18464:	0ec10813          	addi	a6,sp,236
   18468:	85de                	mv	a1,s7
   1846a:	864a                	mv	a2,s2
   1846c:	854e                	mv	a0,s3
   1846e:	f01a                	sd	t1,32(sp)
   18470:	88dfc0ef          	jal	ra,14cfc <_ldtoa_r>
   18474:	6766                	ld	a4,88(sp)
   18476:	04700793          	li	a5,71
   1847a:	7302                	ld	t1,32(sp)
   1847c:	8caa                	mv	s9,a0
   1847e:	46f70b63          	beq	a4,a5,188f4 <_svfprintf_r+0x178e>
   18482:	04600793          	li	a5,70
   18486:	01b508b3          	add	a7,a0,s11
   1848a:	00f71a63          	bne	a4,a5,1849e <_svfprintf_r+0x1338>
   1848e:	00054703          	lbu	a4,0(a0)
   18492:	03000793          	li	a5,48
   18496:	2ef70b63          	beq	a4,a5,1878c <_svfprintf_r+0x1626>
   1849a:	572e                	lw	a4,232(sp)
   1849c:	98ba                	add	a7,a7,a4
   1849e:	4681                	li	a3,0
   184a0:	4601                	li	a2,0
   184a2:	855e                	mv	a0,s7
   184a4:	85ca                	mv	a1,s2
   184a6:	f846                	sd	a7,48(sp)
   184a8:	f01a                	sd	t1,32(sp)
   184aa:	52d020ef          	jal	ra,1b1d6 <__eqtf2>
   184ae:	78c2                	ld	a7,48(sp)
   184b0:	7302                	ld	t1,32(sp)
   184b2:	86c6                	mv	a3,a7
   184b4:	e13d                	bnez	a0,1851a <_svfprintf_r+0x13b4>
   184b6:	419687bb          	subw	a5,a3,s9
   184ba:	f03e                	sd	a5,32(sp)
   184bc:	572e                	lw	a4,232(sp)
   184be:	04700793          	li	a5,71
   184c2:	e4ba                	sd	a4,72(sp)
   184c4:	6766                	ld	a4,88(sp)
   184c6:	06f70863          	beq	a4,a5,18536 <_svfprintf_r+0x13d0>
   184ca:	6766                	ld	a4,88(sp)
   184cc:	04600793          	li	a5,70
   184d0:	0cf71663          	bne	a4,a5,1859c <_svfprintf_r+0x1436>
   184d4:	77aa                	ld	a5,168(sp)
   184d6:	6726                	ld	a4,72(sp)
   184d8:	8b85                	andi	a5,a5,1
   184da:	00fc67b3          	or	a5,s8,a5
   184de:	68e05363          	blez	a4,18b64 <_svfprintf_r+0x19fe>
   184e2:	64079963          	bnez	a5,18b34 <_svfprintf_r+0x19ce>
   184e6:	6ba6                	ld	s7,72(sp)
   184e8:	06600d13          	li	s10,102
   184ec:	77aa                	ld	a5,168(sp)
   184ee:	4007f793          	andi	a5,a5,1024
   184f2:	5c079a63          	bnez	a5,18ac6 <_svfprintf_r+0x1960>
   184f6:	fffbc913          	not	s2,s7
   184fa:	43f95913          	srai	s2,s2,0x3f
   184fe:	012bf933          	and	s2,s7,s2
   18502:	2901                	sext.w	s2,s2
   18504:	a89d                	j	1857a <_svfprintf_r+0x1414>
   18506:	ec02                	sd	zero,24(sp)
   18508:	84be                	mv	s1,a5
   1850a:	57fd                	li	a5,-1
   1850c:	17fe                	slli	a5,a5,0x3f
   1850e:	00f94933          	xor	s2,s2,a5
   18512:	02d00793          	li	a5,45
   18516:	e5be                	sd	a5,200(sp)
   18518:	bf11                	j	1842c <_svfprintf_r+0x12c6>
   1851a:	76ee                	ld	a3,248(sp)
   1851c:	f916fde3          	bgeu	a3,a7,184b6 <_svfprintf_r+0x1350>
   18520:	03000713          	li	a4,48
   18524:	00168793          	addi	a5,a3,1
   18528:	fdbe                	sd	a5,248(sp)
   1852a:	00e68023          	sb	a4,0(a3)
   1852e:	76ee                	ld	a3,248(sp)
   18530:	ff16eae3          	bltu	a3,a7,18524 <_svfprintf_r+0x13be>
   18534:	b749                	j	184b6 <_svfprintf_r+0x1350>
   18536:	6726                	ld	a4,72(sp)
   18538:	57f5                	li	a5,-3
   1853a:	04f74d63          	blt	a4,a5,18594 <_svfprintf_r+0x142e>
   1853e:	04ec4b63          	blt	s8,a4,18594 <_svfprintf_r+0x142e>
   18542:	7782                	ld	a5,32(sp)
   18544:	6726                	ld	a4,72(sp)
   18546:	44f74063          	blt	a4,a5,18986 <_svfprintf_r+0x1820>
   1854a:	77aa                	ld	a5,168(sp)
   1854c:	6726                	ld	a4,72(sp)
   1854e:	8b85                	andi	a5,a5,1
   18550:	8bba                	mv	s7,a4
   18552:	c781                	beqz	a5,1855a <_svfprintf_r+0x13f4>
   18554:	77a6                	ld	a5,104(sp)
   18556:	00e78bbb          	addw	s7,a5,a4
   1855a:	77aa                	ld	a5,168(sp)
   1855c:	4007f793          	andi	a5,a5,1024
   18560:	c781                	beqz	a5,18568 <_svfprintf_r+0x1402>
   18562:	67a6                	ld	a5,72(sp)
   18564:	54f04f63          	bgtz	a5,18ac2 <_svfprintf_r+0x195c>
   18568:	fffbc913          	not	s2,s7
   1856c:	43f95913          	srai	s2,s2,0x3f
   18570:	012bf933          	and	s2,s7,s2
   18574:	2901                	sext.w	s2,s2
   18576:	06700d13          	li	s10,103
   1857a:	e882                	sd	zero,80(sp)
   1857c:	ec82                	sd	zero,88(sp)
   1857e:	67ae                	ld	a5,200(sp)
   18580:	36078263          	beqz	a5,188e4 <_svfprintf_r+0x177e>
   18584:	02d00793          	li	a5,45
   18588:	0cf10fa3          	sb	a5,223(sp)
   1858c:	4c01                	li	s8,0
   1858e:	2905                	addiw	s2,s2,1
   18590:	d57fe06f          	j	172e6 <_svfprintf_r+0x180>
   18594:	3d79                	addiw	s10,s10,-2
   18596:	fdfd7793          	andi	a5,s10,-33
   1859a:	ecbe                	sd	a5,88(sp)
   1859c:	67a6                	ld	a5,72(sp)
   1859e:	65e6                	ld	a1,88(sp)
   185a0:	04100713          	li	a4,65
   185a4:	fff7869b          	addiw	a3,a5,-1
   185a8:	d5b6                	sw	a3,232(sp)
   185aa:	0ffd7793          	zext.b	a5,s10
   185ae:	4601                	li	a2,0
   185b0:	1ce58963          	beq	a1,a4,18782 <_svfprintf_r+0x161c>
   185b4:	0ef10823          	sb	a5,240(sp)
   185b8:	02b00793          	li	a5,43
   185bc:	0006d763          	bgez	a3,185ca <_svfprintf_r+0x1464>
   185c0:	67a6                	ld	a5,72(sp)
   185c2:	4685                	li	a3,1
   185c4:	9e9d                	subw	a3,a3,a5
   185c6:	02d00793          	li	a5,45
   185ca:	0ef108a3          	sb	a5,241(sp)
   185ce:	47a5                	li	a5,9
   185d0:	46d7d363          	bge	a5,a3,18a36 <_svfprintf_r+0x18d0>
   185d4:	0ff10e93          	addi	t4,sp,255
   185d8:	8676                	mv	a2,t4
   185da:	45a9                	li	a1,10
   185dc:	06300793          	li	a5,99
   185e0:	02b6e73b          	remw	a4,a3,a1
   185e4:	88b2                	mv	a7,a2
   185e6:	8536                	mv	a0,a3
   185e8:	167d                	addi	a2,a2,-1
   185ea:	0307071b          	addiw	a4,a4,48
   185ee:	fee88fa3          	sb	a4,-1(a7)
   185f2:	02b6c6bb          	divw	a3,a3,a1
   185f6:	fea7c5e3          	blt	a5,a0,185e0 <_svfprintf_r+0x147a>
   185fa:	0306869b          	addiw	a3,a3,48
   185fe:	0ff6f693          	zext.b	a3,a3
   18602:	ffe88793          	addi	a5,a7,-2
   18606:	fed60fa3          	sb	a3,-1(a2)
   1860a:	59d7f263          	bgeu	a5,t4,18b8e <_svfprintf_r+0x1a28>
   1860e:	0f210713          	addi	a4,sp,242
   18612:	a019                	j	18618 <_svfprintf_r+0x14b2>
   18614:	0007c683          	lbu	a3,0(a5)
   18618:	00d70023          	sb	a3,0(a4)
   1861c:	0785                	addi	a5,a5,1
   1861e:	0705                	addi	a4,a4,1
   18620:	ffd79ae3          	bne	a5,t4,18614 <_svfprintf_r+0x14ae>
   18624:	10110793          	addi	a5,sp,257
   18628:	0f210713          	addi	a4,sp,242
   1862c:	411787b3          	sub	a5,a5,a7
   18630:	97ba                	add	a5,a5,a4
   18632:	1998                	addi	a4,sp,240
   18634:	9f99                	subw	a5,a5,a4
   18636:	fcbe                	sd	a5,120(sp)
   18638:	77e6                	ld	a5,120(sp)
   1863a:	7682                	ld	a3,32(sp)
   1863c:	4705                	li	a4,1
   1863e:	00f68bbb          	addw	s7,a3,a5
   18642:	87de                	mv	a5,s7
   18644:	40d75d63          	bge	a4,a3,18a5e <_svfprintf_r+0x18f8>
   18648:	7726                	ld	a4,104(sp)
   1864a:	00e78bbb          	addw	s7,a5,a4
   1864e:	77aa                	ld	a5,168(sp)
   18650:	fffbc913          	not	s2,s7
   18654:	43f95913          	srai	s2,s2,0x3f
   18658:	bff7f493          	andi	s1,a5,-1025
   1865c:	2481                	sext.w	s1,s1
   1865e:	012bf933          	and	s2,s7,s2
   18662:	1004e493          	ori	s1,s1,256
   18666:	2901                	sext.w	s2,s2
   18668:	e882                	sd	zero,80(sp)
   1866a:	ec82                	sd	zero,88(sp)
   1866c:	e482                	sd	zero,72(sp)
   1866e:	bf01                	j	1857e <_svfprintf_r+0x1418>
   18670:	67b2                	ld	a5,264(sp)
   18672:	0c07c563          	bltz	a5,1873c <_svfprintf_r+0x15d6>
   18676:	0df14783          	lbu	a5,223(sp)
   1867a:	04700713          	li	a4,71
   1867e:	31a75063          	bge	a4,s10,1897e <_svfprintf_r+0x1818>
   18682:	6871                	lui	a6,0x1c
   18684:	70880c93          	addi	s9,a6,1800 # 1c708 <__clzdi2+0xc8>
   18688:	b1a5                	j	182f0 <_svfprintf_r+0x118a>
   1868a:	0017069b          	addiw	a3,a4,1
   1868e:	97de                	add	a5,a5,s7
   18690:	01b33023          	sd	s11,0(t1)
   18694:	01733423          	sd	s7,8(t1)
   18698:	f23e                	sd	a5,288(sp)
   1869a:	10d12c23          	sw	a3,280(sp)
   1869e:	471d                	li	a4,7
   186a0:	0341                	addi	t1,t1,16
   186a2:	e2d75363          	bge	a4,a3,17cc8 <_svfprintf_r+0xb62>
   186a6:	0a10                	addi	a2,sp,272
   186a8:	85d2                	mv	a1,s4
   186aa:	854e                	mv	a0,s3
   186ac:	7d2010ef          	jal	ra,19e7e <__ssprint_r>
   186b0:	c8051863          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   186b4:	7792                	ld	a5,288(sp)
   186b6:	835a                	mv	t1,s6
   186b8:	e10ff06f          	j	17cc8 <_svfprintf_r+0xb62>
   186bc:	6871                	lui	a6,0x1c
   186be:	6f080c93          	addi	s9,a6,1776 # 1c6f0 <__clzdi2+0xb0>
   186c2:	b13d                	j	182f0 <_svfprintf_r+0x118a>
   186c4:	0a10                	addi	a2,sp,272
   186c6:	85d2                	mv	a1,s4
   186c8:	854e                	mv	a0,s3
   186ca:	7b4010ef          	jal	ra,19e7e <__ssprint_r>
   186ce:	c6051963          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   186d2:	7792                	ld	a5,288(sp)
   186d4:	835a                	mv	t1,s6
   186d6:	ddeff06f          	j	17cb4 <_svfprintf_r+0xb4e>
   186da:	4b99                	li	s7,6
   186dc:	b92d                	j	18316 <_svfprintf_r+0x11b0>
   186de:	7682                	ld	a3,32(sp)
   186e0:	00dc8bb3          	add	s7,s9,a3
   186e4:	418b8bb3          	sub	s7,s7,s8
   186e8:	9e99                	subw	a3,a3,a4
   186ea:	000b861b          	sext.w	a2,s7
   186ee:	00c6d363          	bge	a3,a2,186f4 <_svfprintf_r+0x158e>
   186f2:	8bb6                	mv	s7,a3
   186f4:	2b81                	sext.w	s7,s7
   186f6:	e52ff06f          	j	17d48 <_svfprintf_r+0xbe2>
   186fa:	1902                	slli	s2,s2,0x20
   186fc:	02095913          	srli	s2,s2,0x20
   18700:	801ff06f          	j	17f00 <_svfprintf_r+0xd9a>
   18704:	1902                	slli	s2,s2,0x20
   18706:	02095913          	srli	s2,s2,0x20
   1870a:	e83a                	sd	a4,16(sp)
   1870c:	4785                	li	a5,1
   1870e:	da5fe06f          	j	174b2 <_svfprintf_r+0x34c>
   18712:	67a2                	ld	a5,8(sp)
   18714:	8ca2                	mv	s9,s0
   18716:	00f71023          	sh	a5,0(a4)
   1871a:	cadfe06f          	j	173c6 <_svfprintf_r+0x260>
   1871e:	87ca                	mv	a5,s2
   18720:	d25fe06f          	j	17444 <_svfprintf_r+0x2de>
   18724:	1902                	slli	s2,s2,0x20
   18726:	02095913          	srli	s2,s2,0x20
   1872a:	d7ffe06f          	j	174a8 <_svfprintf_r+0x342>
   1872e:	0a10                	addi	a2,sp,272
   18730:	85d2                	mv	a1,s4
   18732:	854e                	mv	a0,s3
   18734:	74a010ef          	jal	ra,19e7e <__ssprint_r>
   18738:	c9ffe06f          	j	173d6 <_svfprintf_r+0x270>
   1873c:	02d00793          	li	a5,45
   18740:	0cf10fa3          	sb	a5,223(sp)
   18744:	bf1d                	j	1867a <_svfprintf_r+0x1514>
   18746:	0a10                	addi	a2,sp,272
   18748:	85d2                	mv	a1,s4
   1874a:	854e                	mv	a0,s3
   1874c:	732010ef          	jal	ra,19e7e <__ssprint_r>
   18750:	be051863          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   18754:	562e                	lw	a2,232(sp)
   18756:	7792                	ld	a5,288(sp)
   18758:	11812683          	lw	a3,280(sp)
   1875c:	835a                	mv	t1,s6
   1875e:	ac0659e3          	bgez	a2,18230 <_svfprintf_r+0x10ca>
   18762:	b6f5                	j	1834e <_svfprintf_r+0x11e8>
   18764:	001c059b          	addiw	a1,s8,1
   18768:	854e                	mv	a0,s3
   1876a:	ec1a                	sd	t1,24(sp)
   1876c:	808f80ef          	jal	ra,10774 <_malloc_r>
   18770:	6362                	ld	t1,24(sp)
   18772:	8caa                	mv	s9,a0
   18774:	42050063          	beqz	a0,18b94 <_svfprintf_r+0x1a2e>
   18778:	ec2a                	sd	a0,24(sp)
   1877a:	b971                	j	18416 <_svfprintf_r+0x12b0>
   1877c:	4c19                	li	s8,6
   1877e:	df7fe06f          	j	17574 <_svfprintf_r+0x40e>
   18782:	27bd                	addiw	a5,a5,15
   18784:	0ff7f793          	zext.b	a5,a5
   18788:	4605                	li	a2,1
   1878a:	b52d                	j	185b4 <_svfprintf_r+0x144e>
   1878c:	4601                	li	a2,0
   1878e:	4681                	li	a3,0
   18790:	855e                	mv	a0,s7
   18792:	85ca                	mv	a1,s2
   18794:	f846                	sd	a7,48(sp)
   18796:	f01a                	sd	t1,32(sp)
   18798:	23f020ef          	jal	ra,1b1d6 <__eqtf2>
   1879c:	7302                	ld	t1,32(sp)
   1879e:	78c2                	ld	a7,48(sp)
   187a0:	ce050de3          	beqz	a0,1849a <_svfprintf_r+0x1334>
   187a4:	4785                	li	a5,1
   187a6:	41b7873b          	subw	a4,a5,s11
   187aa:	d5ba                	sw	a4,232(sp)
   187ac:	98ba                	add	a7,a7,a4
   187ae:	b9c5                	j	1849e <_svfprintf_r+0x1338>
   187b0:	001c0d9b          	addiw	s11,s8,1
   187b4:	4689                	li	a3,2
   187b6:	b15d                	j	1845c <_svfprintf_r+0x12f6>
   187b8:	8de2                	mv	s11,s8
   187ba:	468d                	li	a3,3
   187bc:	b145                	j	1845c <_svfprintf_r+0x12f6>
   187be:	85ca                	mv	a1,s2
   187c0:	855e                	mv	a0,s7
   187c2:	f81a                	sd	t1,48(sp)
   187c4:	45d030ef          	jal	ra,1c420 <__trunctfdf2>
   187c8:	11a8                	addi	a0,sp,232
   187ca:	823fe0ef          	jal	ra,16fec <frexp>
   187ce:	38f030ef          	jal	ra,1c35c <__extenddftf2>
   187d2:	768a                	ld	a3,160(sp)
   187d4:	4601                	li	a2,0
   187d6:	3ed020ef          	jal	ra,1b3c2 <__multf3>
   187da:	4601                	li	a2,0
   187dc:	4681                	li	a3,0
   187de:	8baa                	mv	s7,a0
   187e0:	f02e                	sd	a1,32(sp)
   187e2:	1f5020ef          	jal	ra,1b1d6 <__eqtf2>
   187e6:	7f82                	ld	t6,32(sp)
   187e8:	7342                	ld	t1,48(sp)
   187ea:	e119                	bnez	a0,187f0 <_svfprintf_r+0x168a>
   187ec:	4785                	li	a5,1
   187ee:	d5be                	sw	a5,232(sp)
   187f0:	67f1                	lui	a5,0x1c
   187f2:	72878793          	addi	a5,a5,1832 # 1c728 <__clzdi2+0xe8>
   187f6:	e4be                	sd	a5,72(sp)
   187f8:	020c1793          	slli	a5,s8,0x20
   187fc:	9381                	srli	a5,a5,0x20
   187fe:	0785                	addi	a5,a5,1
   18800:	97e6                	add	a5,a5,s9
   18802:	f93e                	sd	a5,176(sp)
   18804:	018c87bb          	addw	a5,s9,s8
   18808:	8de6                	mv	s11,s9
   1880a:	c3be                	sw	a5,196(sp)
   1880c:	a829                	j	18826 <_svfprintf_r+0x16c0>
   1880e:	4601                	li	a2,0
   18810:	4681                	li	a3,0
   18812:	f01a                	sd	t1,32(sp)
   18814:	fc2e                	sd	a1,56(sp)
   18816:	f82a                	sd	a0,48(sp)
   18818:	1bf020ef          	jal	ra,1b1d6 <__eqtf2>
   1881c:	77e2                	ld	a5,56(sp)
   1881e:	7302                	ld	t1,32(sp)
   18820:	88de                	mv	a7,s7
   18822:	8fbe                	mv	t6,a5
   18824:	cd31                	beqz	a0,18880 <_svfprintf_r+0x171a>
   18826:	66ca                	ld	a3,144(sp)
   18828:	4601                	li	a2,0
   1882a:	85fe                	mv	a1,t6
   1882c:	855e                	mv	a0,s7
   1882e:	f81a                	sd	t1,48(sp)
   18830:	393020ef          	jal	ra,1b3c2 <__multf3>
   18834:	8bae                	mv	s7,a1
   18836:	f02a                	sd	a0,32(sp)
   18838:	23d030ef          	jal	ra,1c274 <__fixtfsi>
   1883c:	0005091b          	sext.w	s2,a0
   18840:	854a                	mv	a0,s2
   18842:	2c5030ef          	jal	ra,1c306 <__floatsitf>
   18846:	7782                	ld	a5,32(sp)
   18848:	86ae                	mv	a3,a1
   1884a:	862a                	mv	a2,a0
   1884c:	85de                	mv	a1,s7
   1884e:	853e                	mv	a0,a5
   18850:	19c030ef          	jal	ra,1b9ec <__subtf3>
   18854:	67a6                	ld	a5,72(sp)
   18856:	471e                	lw	a4,196(sp)
   18858:	fd6e                	sd	s11,184(sp)
   1885a:	97ca                	add	a5,a5,s2
   1885c:	0d85                	addi	s11,s11,1
   1885e:	0007c683          	lbu	a3,0(a5)
   18862:	41b7073b          	subw	a4,a4,s11
   18866:	e8ba                	sd	a4,80(sp)
   18868:	774a                	ld	a4,176(sp)
   1886a:	fedd8fa3          	sb	a3,-1(s11)
   1886e:	e0ae                	sd	a1,64(sp)
   18870:	7342                	ld	t1,48(sp)
   18872:	87ae                	mv	a5,a1
   18874:	88aa                	mv	a7,a0
   18876:	8baa                	mv	s7,a0
   18878:	f9b71be3          	bne	a4,s11,1880e <_svfprintf_r+0x16a8>
   1887c:	577d                	li	a4,-1
   1887e:	e8ba                	sd	a4,80(sp)
   18880:	66ea                	ld	a3,152(sp)
   18882:	4601                	li	a2,0
   18884:	8546                	mv	a0,a7
   18886:	85be                	mv	a1,a5
   18888:	f01a                	sd	t1,32(sp)
   1888a:	fc46                	sd	a7,56(sp)
   1888c:	f83e                	sd	a5,48(sp)
   1888e:	1e9020ef          	jal	ra,1b276 <__getf2>
   18892:	7302                	ld	t1,32(sp)
   18894:	10a04e63          	bgtz	a0,189b0 <_svfprintf_r+0x184a>
   18898:	78e2                	ld	a7,56(sp)
   1889a:	77c2                	ld	a5,48(sp)
   1889c:	66ea                	ld	a3,152(sp)
   1889e:	4601                	li	a2,0
   188a0:	8546                	mv	a0,a7
   188a2:	85be                	mv	a1,a5
   188a4:	133020ef          	jal	ra,1b1d6 <__eqtf2>
   188a8:	7302                	ld	t1,32(sp)
   188aa:	e509                	bnez	a0,188b4 <_svfprintf_r+0x174e>
   188ac:	00197913          	andi	s2,s2,1
   188b0:	10091063          	bnez	s2,189b0 <_svfprintf_r+0x184a>
   188b4:	6746                	ld	a4,80(sp)
   188b6:	03000693          	li	a3,48
   188ba:	0017079b          	addiw	a5,a4,1
   188be:	97ee                	add	a5,a5,s11
   188c0:	00074763          	bltz	a4,188ce <_svfprintf_r+0x1768>
   188c4:	0d85                	addi	s11,s11,1
   188c6:	fedd8fa3          	sb	a3,-1(s11)
   188ca:	ffb79de3          	bne	a5,s11,188c4 <_svfprintf_r+0x175e>
   188ce:	419d87bb          	subw	a5,s11,s9
   188d2:	f03e                	sd	a5,32(sp)
   188d4:	b6e5                	j	184bc <_svfprintf_r+0x1356>
   188d6:	7702                	ld	a4,32(sp)
   188d8:	9766                	add	a4,a4,s9
   188da:	bf877e63          	bgeu	a4,s8,17cd6 <_svfprintf_r+0xb70>
   188de:	8c3a                	mv	s8,a4
   188e0:	bf6ff06f          	j	17cd6 <_svfprintf_r+0xb70>
   188e4:	0df14783          	lbu	a5,223(sp)
   188e8:	4c01                	li	s8,0
   188ea:	c399                	beqz	a5,188f0 <_svfprintf_r+0x178a>
   188ec:	ba1fe06f          	j	1748c <_svfprintf_r+0x326>
   188f0:	9f7fe06f          	j	172e6 <_svfprintf_r+0x180>
   188f4:	77aa                	ld	a5,168(sp)
   188f6:	01b508b3          	add	a7,a0,s11
   188fa:	8b85                	andi	a5,a5,1
   188fc:	ba0791e3          	bnez	a5,1849e <_svfprintf_r+0x1338>
   18900:	76ee                	ld	a3,248(sp)
   18902:	be55                	j	184b6 <_svfprintf_r+0x1350>
   18904:	0a10                	addi	a2,sp,272
   18906:	85d2                	mv	a1,s4
   18908:	854e                	mv	a0,s3
   1890a:	574010ef          	jal	ra,19e7e <__ssprint_r>
   1890e:	a2051963          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   18912:	7786                	ld	a5,96(sp)
   18914:	835a                	mv	t1,s6
   18916:	0007c603          	lbu	a2,0(a5)
   1891a:	7792                	ld	a5,288(sp)
   1891c:	9c32                	add	s8,s8,a2
   1891e:	f8eff06f          	j	180ac <_svfprintf_r+0xf46>
   18922:	02d00793          	li	a5,45
   18926:	0cf10fa3          	sb	a5,223(sp)
   1892a:	ba65                	j	182e2 <_svfprintf_r+0x117c>
   1892c:	0a10                	addi	a2,sp,272
   1892e:	85d2                	mv	a1,s4
   18930:	854e                	mv	a0,s3
   18932:	54c010ef          	jal	ra,19e7e <__ssprint_r>
   18936:	a0051563          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   1893a:	572e                	lw	a4,232(sp)
   1893c:	7792                	ld	a5,288(sp)
   1893e:	835a                	mv	t1,s6
   18940:	bccff06f          	j	17d0c <_svfprintf_r+0xba6>
   18944:	0df14783          	lbu	a5,223(sp)
   18948:	e86e                	sd	s11,16(sp)
   1894a:	e882                	sd	zero,80(sp)
   1894c:	ec82                	sd	zero,88(sp)
   1894e:	e482                	sd	zero,72(sp)
   18950:	8962                	mv	s2,s8
   18952:	8be2                	mv	s7,s8
   18954:	4c01                	li	s8,0
   18956:	c399                	beqz	a5,1895c <_svfprintf_r+0x17f6>
   18958:	b35fe06f          	j	1748c <_svfprintf_r+0x326>
   1895c:	98bfe06f          	j	172e6 <_svfprintf_r+0x180>
   18960:	0a10                	addi	a2,sp,272
   18962:	85d2                	mv	a1,s4
   18964:	854e                	mv	a0,s3
   18966:	518010ef          	jal	ra,19e7e <__ssprint_r>
   1896a:	9c051b63          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   1896e:	56ae                	lw	a3,232(sp)
   18970:	7702                	ld	a4,32(sp)
   18972:	7792                	ld	a5,288(sp)
   18974:	835a                	mv	t1,s6
   18976:	40d706bb          	subw	a3,a4,a3
   1897a:	bceff06f          	j	17d48 <_svfprintf_r+0xbe2>
   1897e:	6871                	lui	a6,0x1c
   18980:	70080c93          	addi	s9,a6,1792 # 1c700 <__clzdi2+0xc0>
   18984:	b2b5                	j	182f0 <_svfprintf_r+0x118a>
   18986:	7702                	ld	a4,32(sp)
   18988:	77a6                	ld	a5,104(sp)
   1898a:	06700d13          	li	s10,103
   1898e:	00e78bbb          	addw	s7,a5,a4
   18992:	6726                	ld	a4,72(sp)
   18994:	b4e04ce3          	bgtz	a4,184ec <_svfprintf_r+0x1386>
   18998:	40eb87bb          	subw	a5,s7,a4
   1899c:	2785                	addiw	a5,a5,1
   1899e:	00078b9b          	sext.w	s7,a5
   189a2:	fffbc713          	not	a4,s7
   189a6:	977d                	srai	a4,a4,0x3f
   189a8:	8ff9                	and	a5,a5,a4
   189aa:	0007891b          	sext.w	s2,a5
   189ae:	b6f1                	j	1857a <_svfprintf_r+0x1414>
   189b0:	77ea                	ld	a5,184(sp)
   189b2:	fdbe                	sd	a5,248(sp)
   189b4:	67a6                	ld	a5,72(sp)
   189b6:	fffdc683          	lbu	a3,-1(s11)
   189ba:	00f7c603          	lbu	a2,15(a5)
   189be:	87ee                	mv	a5,s11
   189c0:	00d61e63          	bne	a2,a3,189dc <_svfprintf_r+0x1876>
   189c4:	03000593          	li	a1,48
   189c8:	feb78fa3          	sb	a1,-1(a5)
   189cc:	77ee                	ld	a5,248(sp)
   189ce:	fff78693          	addi	a3,a5,-1
   189d2:	fdb6                	sd	a3,248(sp)
   189d4:	fff7c683          	lbu	a3,-1(a5)
   189d8:	fed608e3          	beq	a2,a3,189c8 <_svfprintf_r+0x1862>
   189dc:	0016861b          	addiw	a2,a3,1
   189e0:	03900593          	li	a1,57
   189e4:	0ff67613          	zext.b	a2,a2
   189e8:	00b68563          	beq	a3,a1,189f2 <_svfprintf_r+0x188c>
   189ec:	fec78fa3          	sb	a2,-1(a5)
   189f0:	bdf9                	j	188ce <_svfprintf_r+0x1768>
   189f2:	6726                	ld	a4,72(sp)
   189f4:	00a74603          	lbu	a2,10(a4)
   189f8:	fec78fa3          	sb	a2,-1(a5)
   189fc:	bdc9                	j	188ce <_svfprintf_r+0x1768>
   189fe:	8da6                	mv	s11,s1
   18a00:	a61fe06f          	j	17460 <_svfprintf_r+0x2fa>
   18a04:	2685                	addiw	a3,a3,1
   18a06:	97e2                	add	a5,a5,s8
   18a08:	01b33023          	sd	s11,0(t1)
   18a0c:	01833423          	sd	s8,8(t1)
   18a10:	f23e                	sd	a5,288(sp)
   18a12:	10d12c23          	sw	a3,280(sp)
   18a16:	471d                	li	a4,7
   18a18:	80d75be3          	bge	a4,a3,1822e <_svfprintf_r+0x10c8>
   18a1c:	0a10                	addi	a2,sp,272
   18a1e:	85d2                	mv	a1,s4
   18a20:	854e                	mv	a0,s3
   18a22:	45c010ef          	jal	ra,19e7e <__ssprint_r>
   18a26:	90051d63          	bnez	a0,17b40 <_svfprintf_r+0x9da>
   18a2a:	7792                	ld	a5,288(sp)
   18a2c:	11812683          	lw	a3,280(sp)
   18a30:	835a                	mv	t1,s6
   18a32:	ffeff06f          	j	18230 <_svfprintf_r+0x10ca>
   18a36:	0f210713          	addi	a4,sp,242
   18a3a:	e619                	bnez	a2,18a48 <_svfprintf_r+0x18e2>
   18a3c:	03000793          	li	a5,48
   18a40:	0ef10923          	sb	a5,242(sp)
   18a44:	0f310713          	addi	a4,sp,243
   18a48:	0306879b          	addiw	a5,a3,48
   18a4c:	0c14                	addi	a3,sp,528
   18a4e:	40d706b3          	sub	a3,a4,a3
   18a52:	00f70023          	sb	a5,0(a4)
   18a56:	1216879b          	addiw	a5,a3,289
   18a5a:	fcbe                	sd	a5,120(sp)
   18a5c:	bef1                	j	18638 <_svfprintf_r+0x14d2>
   18a5e:	772a                	ld	a4,168(sp)
   18a60:	8b05                	andi	a4,a4,1
   18a62:	be0706e3          	beqz	a4,1864e <_svfprintf_r+0x14e8>
   18a66:	b6cd                	j	18648 <_svfprintf_r+0x14e2>
   18a68:	000c0463          	beqz	s8,18a70 <_svfprintf_r+0x190a>
   18a6c:	b09fe06f          	j	17574 <_svfprintf_r+0x40e>
   18a70:	4c05                	li	s8,1
   18a72:	b03fe06f          	j	17574 <_svfprintf_r+0x40e>
   18a76:	57fd                	li	a5,-1
   18a78:	e43e                	sd	a5,8(sp)
   18a7a:	96bfe06f          	j	173e4 <_svfprintf_r+0x27e>
   18a7e:	c31c                	sw	a5,0(a4)
   18a80:	8ca2                	mv	s9,s0
   18a82:	945fe06f          	j	173c6 <_svfprintf_r+0x260>
   18a86:	85ca                	mv	a1,s2
   18a88:	855e                	mv	a0,s7
   18a8a:	f81a                	sd	t1,48(sp)
   18a8c:	195030ef          	jal	ra,1c420 <__trunctfdf2>
   18a90:	11a8                	addi	a0,sp,232
   18a92:	d5afe0ef          	jal	ra,16fec <frexp>
   18a96:	0c7030ef          	jal	ra,1c35c <__extenddftf2>
   18a9a:	768a                	ld	a3,160(sp)
   18a9c:	4601                	li	a2,0
   18a9e:	125020ef          	jal	ra,1b3c2 <__multf3>
   18aa2:	4601                	li	a2,0
   18aa4:	4681                	li	a3,0
   18aa6:	8baa                	mv	s7,a0
   18aa8:	f02e                	sd	a1,32(sp)
   18aaa:	72c020ef          	jal	ra,1b1d6 <__eqtf2>
   18aae:	7f82                	ld	t6,32(sp)
   18ab0:	7342                	ld	t1,48(sp)
   18ab2:	e119                	bnez	a0,18ab8 <_svfprintf_r+0x1952>
   18ab4:	4785                	li	a5,1
   18ab6:	d5be                	sw	a5,232(sp)
   18ab8:	67f1                	lui	a5,0x1c
   18aba:	71078793          	addi	a5,a5,1808 # 1c710 <__clzdi2+0xd0>
   18abe:	e4be                	sd	a5,72(sp)
   18ac0:	bb25                	j	187f8 <_svfprintf_r+0x1692>
   18ac2:	06700d13          	li	s10,103
   18ac6:	7786                	ld	a5,96(sp)
   18ac8:	0ff00713          	li	a4,255
   18acc:	e882                	sd	zero,80(sp)
   18ace:	0007c783          	lbu	a5,0(a5)
   18ad2:	ec82                	sd	zero,88(sp)
   18ad4:	02e78863          	beq	a5,a4,18b04 <_svfprintf_r+0x199e>
   18ad8:	0ff00693          	li	a3,255
   18adc:	6626                	ld	a2,72(sp)
   18ade:	0007871b          	sext.w	a4,a5
   18ae2:	02c7d163          	bge	a5,a2,18b04 <_svfprintf_r+0x199e>
   18ae6:	7586                	ld	a1,96(sp)
   18ae8:	40e6073b          	subw	a4,a2,a4
   18aec:	e4ba                	sd	a4,72(sp)
   18aee:	0015c783          	lbu	a5,1(a1)
   18af2:	cb95                	beqz	a5,18b26 <_svfprintf_r+0x19c0>
   18af4:	6766                	ld	a4,88(sp)
   18af6:	2705                	addiw	a4,a4,1
   18af8:	ecba                	sd	a4,88(sp)
   18afa:	00158713          	addi	a4,a1,1
   18afe:	f0ba                	sd	a4,96(sp)
   18b00:	fcd79ee3          	bne	a5,a3,18adc <_svfprintf_r+0x1976>
   18b04:	6766                	ld	a4,88(sp)
   18b06:	67c6                	ld	a5,80(sp)
   18b08:	9fb9                	addw	a5,a5,a4
   18b0a:	670a                	ld	a4,128(sp)
   18b0c:	02e787bb          	mulw	a5,a5,a4
   18b10:	017787bb          	addw	a5,a5,s7
   18b14:	00078b9b          	sext.w	s7,a5
   18b18:	fffbc713          	not	a4,s7
   18b1c:	977d                	srai	a4,a4,0x3f
   18b1e:	8ff9                	and	a5,a5,a4
   18b20:	0007891b          	sext.w	s2,a5
   18b24:	bca9                	j	1857e <_svfprintf_r+0x1418>
   18b26:	6746                	ld	a4,80(sp)
   18b28:	7786                	ld	a5,96(sp)
   18b2a:	2705                	addiw	a4,a4,1
   18b2c:	0007c783          	lbu	a5,0(a5)
   18b30:	e8ba                	sd	a4,80(sp)
   18b32:	b7f9                	j	18b00 <_svfprintf_r+0x199a>
   18b34:	77a6                	ld	a5,104(sp)
   18b36:	06600d13          	li	s10,102
   18b3a:	00e78bbb          	addw	s7,a5,a4
   18b3e:	018b8bbb          	addw	s7,s7,s8
   18b42:	b26d                	j	184ec <_svfprintf_r+0x1386>
   18b44:	66c2                	ld	a3,16(sp)
   18b46:	4298                	lw	a4,0(a3)
   18b48:	00868613          	addi	a2,a3,8
   18b4c:	86ba                	mv	a3,a4
   18b4e:	00075363          	bgez	a4,18b54 <_svfprintf_r+0x19ee>
   18b52:	56fd                	li	a3,-1
   18b54:	00144e03          	lbu	t3,1(s0)
   18b58:	00068c1b          	sext.w	s8,a3
   18b5c:	e832                	sd	a2,16(sp)
   18b5e:	843e                	mv	s0,a5
   18b60:	f10fe06f          	j	17270 <_svfprintf_r+0x10a>
   18b64:	e791                	bnez	a5,18b70 <_svfprintf_r+0x1a0a>
   18b66:	4905                	li	s2,1
   18b68:	06600d13          	li	s10,102
   18b6c:	4b85                	li	s7,1
   18b6e:	b431                	j	1857a <_svfprintf_r+0x1414>
   18b70:	77a6                	ld	a5,104(sp)
   18b72:	06600d13          	li	s10,102
   18b76:	2785                	addiw	a5,a5,1
   18b78:	018787bb          	addw	a5,a5,s8
   18b7c:	00078b9b          	sext.w	s7,a5
   18b80:	fffbc713          	not	a4,s7
   18b84:	977d                	srai	a4,a4,0x3f
   18b86:	8ff9                	and	a5,a5,a4
   18b88:	0007891b          	sext.w	s2,a5
   18b8c:	b2fd                	j	1857a <_svfprintf_r+0x1414>
   18b8e:	4789                	li	a5,2
   18b90:	fcbe                	sd	a5,120(sp)
   18b92:	b45d                	j	18638 <_svfprintf_r+0x14d2>
   18b94:	010a5783          	lhu	a5,16(s4)
   18b98:	0407e793          	ori	a5,a5,64
   18b9c:	00fa1823          	sh	a5,16(s4)
   18ba0:	837fe06f          	j	173d6 <_svfprintf_r+0x270>
   18ba4:	47b1                	li	a5,12
   18ba6:	00f9a023          	sw	a5,0(s3)
   18baa:	57fd                	li	a5,-1
   18bac:	e43e                	sd	a5,8(sp)
   18bae:	837fe06f          	j	173e4 <_svfprintf_r+0x27e>

0000000000018bb2 <__sprint_r.part.0>:
   18bb2:	0ac5a783          	lw	a5,172(a1)
   18bb6:	715d                	addi	sp,sp,-80
   18bb8:	ec56                	sd	s5,24(sp)
   18bba:	83b5                	srli	a5,a5,0xd
   18bbc:	e486                	sd	ra,72(sp)
   18bbe:	e0a2                	sd	s0,64(sp)
   18bc0:	fc26                	sd	s1,56(sp)
   18bc2:	f84a                	sd	s2,48(sp)
   18bc4:	f44e                	sd	s3,40(sp)
   18bc6:	f052                	sd	s4,32(sp)
   18bc8:	e85a                	sd	s6,16(sp)
   18bca:	e45e                	sd	s7,8(sp)
   18bcc:	8b85                	andi	a5,a5,1
   18bce:	8ab2                	mv	s5,a2
   18bd0:	c3c1                	beqz	a5,18c50 <__sprint_r.part.0+0x9e>
   18bd2:	6a1c                	ld	a5,16(a2)
   18bd4:	00063b03          	ld	s6,0(a2)
   18bd8:	892e                	mv	s2,a1
   18bda:	89aa                	mv	s3,a0
   18bdc:	5a7d                	li	s4,-1
   18bde:	c7bd                	beqz	a5,18c4c <__sprint_r.part.0+0x9a>
   18be0:	008b3483          	ld	s1,8(s6)
   18be4:	000b3403          	ld	s0,0(s6)
   18be8:	8089                	srli	s1,s1,0x2
   18bea:	00048b9b          	sext.w	s7,s1
   18bee:	05705863          	blez	s7,18c3e <__sprint_r.part.0+0x8c>
   18bf2:	34fd                	addiw	s1,s1,-1
   18bf4:	02049793          	slli	a5,s1,0x20
   18bf8:	01e7d493          	srli	s1,a5,0x1e
   18bfc:	00440793          	addi	a5,s0,4
   18c00:	94be                	add	s1,s1,a5
   18c02:	a019                	j	18c08 <__sprint_r.part.0+0x56>
   18c04:	02848b63          	beq	s1,s0,18c3a <__sprint_r.part.0+0x88>
   18c08:	400c                	lw	a1,0(s0)
   18c0a:	864a                	mv	a2,s2
   18c0c:	854e                	mv	a0,s3
   18c0e:	7bf000ef          	jal	ra,19bcc <_fputwc_r>
   18c12:	2501                	sext.w	a0,a0
   18c14:	0411                	addi	s0,s0,4
   18c16:	ff4517e3          	bne	a0,s4,18c04 <__sprint_r.part.0+0x52>
   18c1a:	557d                	li	a0,-1
   18c1c:	60a6                	ld	ra,72(sp)
   18c1e:	6406                	ld	s0,64(sp)
   18c20:	000ab823          	sd	zero,16(s5)
   18c24:	000aa423          	sw	zero,8(s5)
   18c28:	74e2                	ld	s1,56(sp)
   18c2a:	7942                	ld	s2,48(sp)
   18c2c:	79a2                	ld	s3,40(sp)
   18c2e:	7a02                	ld	s4,32(sp)
   18c30:	6ae2                	ld	s5,24(sp)
   18c32:	6b42                	ld	s6,16(sp)
   18c34:	6ba2                	ld	s7,8(sp)
   18c36:	6161                	addi	sp,sp,80
   18c38:	8082                	ret
   18c3a:	010ab783          	ld	a5,16(s5)
   18c3e:	0b8a                	slli	s7,s7,0x2
   18c40:	417787b3          	sub	a5,a5,s7
   18c44:	00fab823          	sd	a5,16(s5)
   18c48:	0b41                	addi	s6,s6,16
   18c4a:	fbd9                	bnez	a5,18be0 <__sprint_r.part.0+0x2e>
   18c4c:	4501                	li	a0,0
   18c4e:	b7f9                	j	18c1c <__sprint_r.part.0+0x6a>
   18c50:	b83fa0ef          	jal	ra,137d2 <__sfvwrite_r>
   18c54:	b7e1                	j	18c1c <__sprint_r.part.0+0x6a>

0000000000018c56 <__sprint_r>:
   18c56:	6a18                	ld	a4,16(a2)
   18c58:	c319                	beqz	a4,18c5e <__sprint_r+0x8>
   18c5a:	f59ff06f          	j	18bb2 <__sprint_r.part.0>
   18c5e:	00062423          	sw	zero,8(a2)
   18c62:	4501                	li	a0,0
   18c64:	8082                	ret

0000000000018c66 <_vfiprintf_r>:
   18c66:	7145                	addi	sp,sp,-464
   18c68:	f74e                	sd	s3,424(sp)
   18c6a:	ef56                	sd	s5,408(sp)
   18c6c:	f6ee                	sd	s11,360(sp)
   18c6e:	e786                	sd	ra,456(sp)
   18c70:	e3a2                	sd	s0,448(sp)
   18c72:	ff26                	sd	s1,440(sp)
   18c74:	fb4a                	sd	s2,432(sp)
   18c76:	f352                	sd	s4,416(sp)
   18c78:	eb5a                	sd	s6,400(sp)
   18c7a:	e75e                	sd	s7,392(sp)
   18c7c:	e362                	sd	s8,384(sp)
   18c7e:	fee6                	sd	s9,376(sp)
   18c80:	faea                	sd	s10,368(sp)
   18c82:	e436                	sd	a3,8(sp)
   18c84:	8aaa                	mv	s5,a0
   18c86:	89ae                	mv	s3,a1
   18c88:	8db2                	mv	s11,a2
   18c8a:	c501                	beqz	a0,18c92 <_vfiprintf_r+0x2c>
   18c8c:	493c                	lw	a5,80(a0)
   18c8e:	42078563          	beqz	a5,190b8 <_vfiprintf_r+0x452>
   18c92:	01099703          	lh	a4,16(s3)
   18c96:	6689                	lui	a3,0x2
   18c98:	03071793          	slli	a5,a4,0x30
   18c9c:	93c1                	srli	a5,a5,0x30
   18c9e:	00d7f633          	and	a2,a5,a3
   18ca2:	e215                	bnez	a2,18cc6 <_vfiprintf_r+0x60>
   18ca4:	0ac9a603          	lw	a2,172(s3)
   18ca8:	00d767b3          	or	a5,a4,a3
   18cac:	0107979b          	slliw	a5,a5,0x10
   18cb0:	7779                	lui	a4,0xffffe
   18cb2:	4107d79b          	sraiw	a5,a5,0x10
   18cb6:	177d                	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde707>
   18cb8:	8f71                	and	a4,a4,a2
   18cba:	00f99823          	sh	a5,16(s3)
   18cbe:	17c2                	slli	a5,a5,0x30
   18cc0:	0ae9a623          	sw	a4,172(s3)
   18cc4:	93c1                	srli	a5,a5,0x30
   18cc6:	0087f713          	andi	a4,a5,8
   18cca:	28070d63          	beqz	a4,18f64 <_vfiprintf_r+0x2fe>
   18cce:	0189b703          	ld	a4,24(s3)
   18cd2:	28070963          	beqz	a4,18f64 <_vfiprintf_r+0x2fe>
   18cd6:	8be9                	andi	a5,a5,26
   18cd8:	4729                	li	a4,10
   18cda:	2ae78163          	beq	a5,a4,18f7c <_vfiprintf_r+0x316>
   18cde:	67f5                	lui	a5,0x1d
   18ce0:	1180                	addi	s0,sp,224
   18ce2:	06078793          	addi	a5,a5,96 # 1d060 <zeroes.0+0x10>
   18ce6:	6b75                	lui	s6,0x1d
   18ce8:	6975                	lui	s2,0x1d
   18cea:	f0a2                	sd	s0,96(sp)
   18cec:	f882                	sd	zero,112(sp)
   18cee:	d482                	sw	zero,104(sp)
   18cf0:	8722                	mv	a4,s0
   18cf2:	e802                	sd	zero,16(sp)
   18cf4:	fc02                	sd	zero,56(sp)
   18cf6:	e482                	sd	zero,72(sp)
   18cf8:	e082                	sd	zero,64(sp)
   18cfa:	e002                	sd	zero,0(sp)
   18cfc:	ec3e                	sd	a5,24(sp)
   18cfe:	1d0b0b13          	addi	s6,s6,464 # 1d1d0 <blanks.1>
   18d02:	1e090913          	addi	s2,s2,480 # 1d1e0 <zeroes.0>
   18d06:	000dc783          	lbu	a5,0(s11)
   18d0a:	1c078263          	beqz	a5,18ece <_vfiprintf_r+0x268>
   18d0e:	84ee                	mv	s1,s11
   18d10:	02500693          	li	a3,37
   18d14:	2ed78963          	beq	a5,a3,19006 <_vfiprintf_r+0x3a0>
   18d18:	0014c783          	lbu	a5,1(s1)
   18d1c:	0485                	addi	s1,s1,1
   18d1e:	fbfd                	bnez	a5,18d14 <_vfiprintf_r+0xae>
   18d20:	41b48a3b          	subw	s4,s1,s11
   18d24:	1a0a0563          	beqz	s4,18ece <_vfiprintf_r+0x268>
   18d28:	57a6                	lw	a5,104(sp)
   18d2a:	76c6                	ld	a3,112(sp)
   18d2c:	01b73023          	sd	s11,0(a4)
   18d30:	0017861b          	addiw	a2,a5,1
   18d34:	96d2                	add	a3,a3,s4
   18d36:	01473423          	sd	s4,8(a4)
   18d3a:	f8b6                	sd	a3,112(sp)
   18d3c:	d4b2                	sw	a2,104(sp)
   18d3e:	479d                	li	a5,7
   18d40:	0741                	addi	a4,a4,16
   18d42:	00c7dc63          	bge	a5,a2,18d5a <_vfiprintf_r+0xf4>
   18d46:	060688e3          	beqz	a3,195b6 <_vfiprintf_r+0x950>
   18d4a:	1090                	addi	a2,sp,96
   18d4c:	85ce                	mv	a1,s3
   18d4e:	8556                	mv	a0,s5
   18d50:	e63ff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   18d54:	18051063          	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   18d58:	8722                	mv	a4,s0
   18d5a:	6682                	ld	a3,0(sp)
   18d5c:	0004c783          	lbu	a5,0(s1)
   18d60:	014686bb          	addw	a3,a3,s4
   18d64:	e036                	sd	a3,0(sp)
   18d66:	16078463          	beqz	a5,18ece <_vfiprintf_r+0x268>
   18d6a:	0014c783          	lbu	a5,1(s1)
   18d6e:	00148d93          	addi	s11,s1,1
   18d72:	04010ba3          	sb	zero,87(sp)
   18d76:	5cfd                	li	s9,-1
   18d78:	4481                	li	s1,0
   18d7a:	4d01                	li	s10,0
   18d7c:	05a00a13          	li	s4,90
   18d80:	4ba5                	li	s7,9
   18d82:	0d85                	addi	s11,s11,1
   18d84:	2781                	sext.w	a5,a5
   18d86:	02a00593          	li	a1,42
   18d8a:	fe07869b          	addiw	a3,a5,-32
   18d8e:	0006861b          	sext.w	a2,a3
   18d92:	04ca6363          	bltu	s4,a2,18dd8 <_vfiprintf_r+0x172>
   18d96:	02069613          	slli	a2,a3,0x20
   18d9a:	01e65693          	srli	a3,a2,0x1e
   18d9e:	6662                	ld	a2,24(sp)
   18da0:	96b2                	add	a3,a3,a2
   18da2:	4294                	lw	a3,0(a3)
   18da4:	8682                	jr	a3
   18da6:	4481                	li	s1,0
   18da8:	000dc603          	lbu	a2,0(s11)
   18dac:	0024969b          	slliw	a3,s1,0x2
   18db0:	9ea5                	addw	a3,a3,s1
   18db2:	fd07879b          	addiw	a5,a5,-48
   18db6:	0016969b          	slliw	a3,a3,0x1
   18dba:	fd06051b          	addiw	a0,a2,-48
   18dbe:	00d784bb          	addw	s1,a5,a3
   18dc2:	0d85                	addi	s11,s11,1
   18dc4:	0006079b          	sext.w	a5,a2
   18dc8:	feabf0e3          	bgeu	s7,a0,18da8 <_vfiprintf_r+0x142>
   18dcc:	fe07869b          	addiw	a3,a5,-32
   18dd0:	0006861b          	sext.w	a2,a3
   18dd4:	fcca71e3          	bgeu	s4,a2,18d96 <_vfiprintf_r+0x130>
   18dd8:	cbfd                	beqz	a5,18ece <_vfiprintf_r+0x268>
   18dda:	06f10c23          	sb	a5,120(sp)
   18dde:	04010ba3          	sb	zero,87(sp)
   18de2:	4b85                	li	s7,1
   18de4:	4a05                	li	s4,1
   18de6:	07810c13          	addi	s8,sp,120
   18dea:	4c81                	li	s9,0
   18dec:	002d7293          	andi	t0,s10,2
   18df0:	00028363          	beqz	t0,18df6 <_vfiprintf_r+0x190>
   18df4:	2b89                	addiw	s7,s7,2
   18df6:	56a6                	lw	a3,104(sp)
   18df8:	084d7f93          	andi	t6,s10,132
   18dfc:	77c6                	ld	a5,112(sp)
   18dfe:	0016861b          	addiw	a2,a3,1 # 2001 <exit-0xe0e7>
   18e02:	85b2                	mv	a1,a2
   18e04:	000f9663          	bnez	t6,18e10 <_vfiprintf_r+0x1aa>
   18e08:	41748ebb          	subw	t4,s1,s7
   18e0c:	65d04f63          	bgtz	t4,1946a <_vfiprintf_r+0x804>
   18e10:	05714583          	lbu	a1,87(sp)
   18e14:	cd99                	beqz	a1,18e32 <_vfiprintf_r+0x1cc>
   18e16:	05710693          	addi	a3,sp,87
   18e1a:	0785                	addi	a5,a5,1
   18e1c:	e314                	sd	a3,0(a4)
   18e1e:	4685                	li	a3,1
   18e20:	e714                	sd	a3,8(a4)
   18e22:	f8be                	sd	a5,112(sp)
   18e24:	d4b2                	sw	a2,104(sp)
   18e26:	469d                	li	a3,7
   18e28:	5cc6cb63          	blt	a3,a2,193fe <_vfiprintf_r+0x798>
   18e2c:	86b2                	mv	a3,a2
   18e2e:	0741                	addi	a4,a4,16
   18e30:	2605                	addiw	a2,a2,1
   18e32:	02028b63          	beqz	t0,18e68 <_vfiprintf_r+0x202>
   18e36:	08b4                	addi	a3,sp,88
   18e38:	0789                	addi	a5,a5,2
   18e3a:	e314                	sd	a3,0(a4)
   18e3c:	4689                	li	a3,2
   18e3e:	e714                	sd	a3,8(a4)
   18e40:	f8be                	sd	a5,112(sp)
   18e42:	d4b2                	sw	a2,104(sp)
   18e44:	469d                	li	a3,7
   18e46:	5ec6dd63          	bge	a3,a2,19440 <_vfiprintf_r+0x7da>
   18e4a:	78078a63          	beqz	a5,195de <_vfiprintf_r+0x978>
   18e4e:	1090                	addi	a2,sp,96
   18e50:	85ce                	mv	a1,s3
   18e52:	8556                	mv	a0,s5
   18e54:	f07e                	sd	t6,32(sp)
   18e56:	d5dff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   18e5a:	ed2d                	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   18e5c:	56a6                	lw	a3,104(sp)
   18e5e:	77c6                	ld	a5,112(sp)
   18e60:	7f82                	ld	t6,32(sp)
   18e62:	8722                	mv	a4,s0
   18e64:	0016861b          	addiw	a2,a3,1
   18e68:	08000593          	li	a1,128
   18e6c:	46bf8663          	beq	t6,a1,192d8 <_vfiprintf_r+0x672>
   18e70:	414c8cbb          	subw	s9,s9,s4
   18e74:	4f904e63          	bgtz	s9,19370 <_vfiprintf_r+0x70a>
   18e78:	97d2                	add	a5,a5,s4
   18e7a:	01873023          	sd	s8,0(a4)
   18e7e:	01473423          	sd	s4,8(a4)
   18e82:	f8be                	sd	a5,112(sp)
   18e84:	d4b2                	sw	a2,104(sp)
   18e86:	469d                	li	a3,7
   18e88:	42c6d163          	bge	a3,a2,192aa <_vfiprintf_r+0x644>
   18e8c:	66078463          	beqz	a5,194f4 <_vfiprintf_r+0x88e>
   18e90:	1090                	addi	a2,sp,96
   18e92:	85ce                	mv	a1,s3
   18e94:	8556                	mv	a0,s5
   18e96:	d1dff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   18e9a:	ed0d                	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   18e9c:	77c6                	ld	a5,112(sp)
   18e9e:	8722                	mv	a4,s0
   18ea0:	004d7313          	andi	t1,s10,4
   18ea4:	00030663          	beqz	t1,18eb0 <_vfiprintf_r+0x24a>
   18ea8:	41748a3b          	subw	s4,s1,s7
   18eac:	65404e63          	bgtz	s4,19508 <_vfiprintf_r+0x8a2>
   18eb0:	8726                	mv	a4,s1
   18eb2:	0174d363          	bge	s1,s7,18eb8 <_vfiprintf_r+0x252>
   18eb6:	875e                	mv	a4,s7
   18eb8:	6682                	ld	a3,0(sp)
   18eba:	9f35                	addw	a4,a4,a3
   18ebc:	e03a                	sd	a4,0(sp)
   18ebe:	52079463          	bnez	a5,193e6 <_vfiprintf_r+0x780>
   18ec2:	000dc783          	lbu	a5,0(s11)
   18ec6:	d482                	sw	zero,104(sp)
   18ec8:	8722                	mv	a4,s0
   18eca:	e40792e3          	bnez	a5,18d0e <_vfiprintf_r+0xa8>
   18ece:	77c6                	ld	a5,112(sp)
   18ed0:	16079fe3          	bnez	a5,1984e <_vfiprintf_r+0xbe8>
   18ed4:	0109d783          	lhu	a5,16(s3)
   18ed8:	0407f793          	andi	a5,a5,64
   18edc:	18079ae3          	bnez	a5,19870 <_vfiprintf_r+0xc0a>
   18ee0:	60be                	ld	ra,456(sp)
   18ee2:	641e                	ld	s0,448(sp)
   18ee4:	6502                	ld	a0,0(sp)
   18ee6:	74fa                	ld	s1,440(sp)
   18ee8:	795a                	ld	s2,432(sp)
   18eea:	79ba                	ld	s3,424(sp)
   18eec:	7a1a                	ld	s4,416(sp)
   18eee:	6afa                	ld	s5,408(sp)
   18ef0:	6b5a                	ld	s6,400(sp)
   18ef2:	6bba                	ld	s7,392(sp)
   18ef4:	6c1a                	ld	s8,384(sp)
   18ef6:	7cf6                	ld	s9,376(sp)
   18ef8:	7d56                	ld	s10,368(sp)
   18efa:	7db6                	ld	s11,360(sp)
   18efc:	6179                	addi	sp,sp,464
   18efe:	8082                	ret
   18f00:	010d6313          	ori	t1,s10,16
   18f04:	000dc783          	lbu	a5,0(s11)
   18f08:	00030d1b          	sext.w	s10,t1
   18f0c:	bd9d                	j	18d82 <_vfiprintf_r+0x11c>
   18f0e:	010d6313          	ori	t1,s10,16
   18f12:	00030d1b          	sext.w	s10,t1
   18f16:	66a2                	ld	a3,8(sp)
   18f18:	020d7793          	andi	a5,s10,32
   18f1c:	00868613          	addi	a2,a3,8
   18f20:	cbf5                	beqz	a5,19014 <_vfiprintf_r+0x3ae>
   18f22:	629c                	ld	a5,0(a3)
   18f24:	8bbe                	mv	s7,a5
   18f26:	1007c963          	bltz	a5,19038 <_vfiprintf_r+0x3d2>
   18f2a:	57fd                	li	a5,-1
   18f2c:	04fc80e3          	beq	s9,a5,1976c <_vfiprintf_r+0xb06>
   18f30:	f7fd7693          	andi	a3,s10,-129
   18f34:	2681                	sext.w	a3,a3
   18f36:	7a0b9063          	bnez	s7,196d6 <_vfiprintf_r+0xa70>
   18f3a:	140c94e3          	bnez	s9,19882 <_vfiprintf_r+0xc1c>
   18f3e:	8d36                	mv	s10,a3
   18f40:	e432                	sd	a2,8(sp)
   18f42:	4c81                	li	s9,0
   18f44:	4a01                	li	s4,0
   18f46:	0dc10c13          	addi	s8,sp,220
   18f4a:	87e6                	mv	a5,s9
   18f4c:	014cd363          	bge	s9,s4,18f52 <_vfiprintf_r+0x2ec>
   18f50:	87d2                	mv	a5,s4
   18f52:	05714683          	lbu	a3,87(sp)
   18f56:	00078b9b          	sext.w	s7,a5
   18f5a:	e80689e3          	beqz	a3,18dec <_vfiprintf_r+0x186>
   18f5e:	00178b9b          	addiw	s7,a5,1
   18f62:	b569                	j	18dec <_vfiprintf_r+0x186>
   18f64:	85ce                	mv	a1,s3
   18f66:	8556                	mv	a0,s5
   18f68:	84afa0ef          	jal	ra,12fb2 <__swsetup_r>
   18f6c:	100512e3          	bnez	a0,19870 <_vfiprintf_r+0xc0a>
   18f70:	0109d783          	lhu	a5,16(s3)
   18f74:	4729                	li	a4,10
   18f76:	8be9                	andi	a5,a5,26
   18f78:	d6e793e3          	bne	a5,a4,18cde <_vfiprintf_r+0x78>
   18f7c:	01299783          	lh	a5,18(s3)
   18f80:	d407cfe3          	bltz	a5,18cde <_vfiprintf_r+0x78>
   18f84:	641e                	ld	s0,448(sp)
   18f86:	66a2                	ld	a3,8(sp)
   18f88:	60be                	ld	ra,456(sp)
   18f8a:	74fa                	ld	s1,440(sp)
   18f8c:	795a                	ld	s2,432(sp)
   18f8e:	7a1a                	ld	s4,416(sp)
   18f90:	6b5a                	ld	s6,400(sp)
   18f92:	6bba                	ld	s7,392(sp)
   18f94:	6c1a                	ld	s8,384(sp)
   18f96:	7cf6                	ld	s9,376(sp)
   18f98:	7d56                	ld	s10,368(sp)
   18f9a:	866e                	mv	a2,s11
   18f9c:	85ce                	mv	a1,s3
   18f9e:	7db6                	ld	s11,360(sp)
   18fa0:	79ba                	ld	s3,424(sp)
   18fa2:	8556                	mv	a0,s5
   18fa4:	6afa                	ld	s5,408(sp)
   18fa6:	6179                	addi	sp,sp,464
   18fa8:	10f0006f          	j	198b6 <__sbprintf>
   18fac:	010d6313          	ori	t1,s10,16
   18fb0:	00030d1b          	sext.w	s10,t1
   18fb4:	66a2                	ld	a3,8(sp)
   18fb6:	020d7793          	andi	a5,s10,32
   18fba:	00868613          	addi	a2,a3,8
   18fbe:	cff1                	beqz	a5,1909a <_vfiprintf_r+0x434>
   18fc0:	0006bb83          	ld	s7,0(a3)
   18fc4:	bffd7693          	andi	a3,s10,-1025
   18fc8:	2681                	sext.w	a3,a3
   18fca:	e432                	sd	a2,8(sp)
   18fcc:	4781                	li	a5,0
   18fce:	4601                	li	a2,0
   18fd0:	04c10ba3          	sb	a2,87(sp)
   18fd4:	567d                	li	a2,-1
   18fd6:	06cc8d63          	beq	s9,a2,19050 <_vfiprintf_r+0x3ea>
   18fda:	f7f6f313          	andi	t1,a3,-129
   18fde:	00030d1b          	sext.w	s10,t1
   18fe2:	460b9463          	bnez	s7,1944a <_vfiprintf_r+0x7e4>
   18fe6:	780c9663          	bnez	s9,19772 <_vfiprintf_r+0xb0c>
   18fea:	ffa1                	bnez	a5,18f42 <_vfiprintf_r+0x2dc>
   18fec:	0016fa13          	andi	s4,a3,1
   18ff0:	0dc10c13          	addi	s8,sp,220
   18ff4:	f40a0be3          	beqz	s4,18f4a <_vfiprintf_r+0x2e4>
   18ff8:	03000793          	li	a5,48
   18ffc:	0cf10da3          	sb	a5,219(sp)
   19000:	0db10c13          	addi	s8,sp,219
   19004:	b799                	j	18f4a <_vfiprintf_r+0x2e4>
   19006:	41b48a3b          	subw	s4,s1,s11
   1900a:	d00a1fe3          	bnez	s4,18d28 <_vfiprintf_r+0xc2>
   1900e:	0004c783          	lbu	a5,0(s1)
   19012:	bb91                	j	18d66 <_vfiprintf_r+0x100>
   19014:	010d7793          	andi	a5,s10,16
   19018:	6a079463          	bnez	a5,196c0 <_vfiprintf_r+0xa5a>
   1901c:	66a2                	ld	a3,8(sp)
   1901e:	040d7793          	andi	a5,s10,64
   19022:	0006ab83          	lw	s7,0(a3)
   19026:	7a078c63          	beqz	a5,197de <_vfiprintf_r+0xb78>
   1902a:	010b9b9b          	slliw	s7,s7,0x10
   1902e:	410bdb9b          	sraiw	s7,s7,0x10
   19032:	87de                	mv	a5,s7
   19034:	ee07dbe3          	bgez	a5,18f2a <_vfiprintf_r+0x2c4>
   19038:	e432                	sd	a2,8(sp)
   1903a:	02d00613          	li	a2,45
   1903e:	04c10ba3          	sb	a2,87(sp)
   19042:	567d                	li	a2,-1
   19044:	41700bb3          	neg	s7,s7
   19048:	86ea                	mv	a3,s10
   1904a:	4785                	li	a5,1
   1904c:	f8cc97e3          	bne	s9,a2,18fda <_vfiprintf_r+0x374>
   19050:	4605                	li	a2,1
   19052:	40c78063          	beq	a5,a2,19452 <_vfiprintf_r+0x7ec>
   19056:	4609                	li	a2,2
   19058:	24c78c63          	beq	a5,a2,192b0 <_vfiprintf_r+0x64a>
   1905c:	0dc10a13          	addi	s4,sp,220
   19060:	8c52                	mv	s8,s4
   19062:	007bf793          	andi	a5,s7,7
   19066:	03078793          	addi	a5,a5,48
   1906a:	fefc0fa3          	sb	a5,-1(s8)
   1906e:	003bdb93          	srli	s7,s7,0x3
   19072:	8662                	mv	a2,s8
   19074:	1c7d                	addi	s8,s8,-1
   19076:	fe0b96e3          	bnez	s7,19062 <_vfiprintf_r+0x3fc>
   1907a:	0016f593          	andi	a1,a3,1
   1907e:	24058963          	beqz	a1,192d0 <_vfiprintf_r+0x66a>
   19082:	03000593          	li	a1,48
   19086:	24b78563          	beq	a5,a1,192d0 <_vfiprintf_r+0x66a>
   1908a:	1679                	addi	a2,a2,-2
   1908c:	febc0fa3          	sb	a1,-1(s8)
   19090:	40ca0a3b          	subw	s4,s4,a2
   19094:	8d36                	mv	s10,a3
   19096:	8c32                	mv	s8,a2
   19098:	bd4d                	j	18f4a <_vfiprintf_r+0x2e4>
   1909a:	010d7793          	andi	a5,s10,16
   1909e:	60079d63          	bnez	a5,196b8 <_vfiprintf_r+0xa52>
   190a2:	66a2                	ld	a3,8(sp)
   190a4:	040d7793          	andi	a5,s10,64
   190a8:	0006ab83          	lw	s7,0(a3)
   190ac:	72078263          	beqz	a5,197d0 <_vfiprintf_r+0xb6a>
   190b0:	1bc2                	slli	s7,s7,0x30
   190b2:	030bdb93          	srli	s7,s7,0x30
   190b6:	b739                	j	18fc4 <_vfiprintf_r+0x35e>
   190b8:	d0cf70ef          	jal	ra,105c4 <__sinit>
   190bc:	bed9                	j	18c92 <_vfiprintf_r+0x2c>
   190be:	67a2                	ld	a5,8(sp)
   190c0:	04010ba3          	sb	zero,87(sp)
   190c4:	0007bc03          	ld	s8,0(a5)
   190c8:	00878693          	addi	a3,a5,8
   190cc:	6c0c0d63          	beqz	s8,197a6 <_vfiprintf_r+0xb40>
   190d0:	57fd                	li	a5,-1
   190d2:	66fc8863          	beq	s9,a5,19742 <_vfiprintf_r+0xadc>
   190d6:	8666                	mv	a2,s9
   190d8:	4581                	li	a1,0
   190da:	8562                	mv	a0,s8
   190dc:	f036                	sd	a3,32(sp)
   190de:	e43a                	sd	a4,8(sp)
   190e0:	cadf70ef          	jal	ra,10d8c <memchr>
   190e4:	6722                	ld	a4,8(sp)
   190e6:	7682                	ld	a3,32(sp)
   190e8:	76050a63          	beqz	a0,1985c <_vfiprintf_r+0xbf6>
   190ec:	41850a3b          	subw	s4,a0,s8
   190f0:	e436                	sd	a3,8(sp)
   190f2:	4c81                	li	s9,0
   190f4:	bd99                	j	18f4a <_vfiprintf_r+0x2e4>
   190f6:	66a2                	ld	a3,8(sp)
   190f8:	04010ba3          	sb	zero,87(sp)
   190fc:	4b85                	li	s7,1
   190fe:	429c                	lw	a5,0(a3)
   19100:	06a1                	addi	a3,a3,8
   19102:	e436                	sd	a3,8(sp)
   19104:	06f10c23          	sb	a5,120(sp)
   19108:	4a05                	li	s4,1
   1910a:	07810c13          	addi	s8,sp,120
   1910e:	b9f1                	j	18dea <_vfiprintf_r+0x184>
   19110:	67a2                	ld	a5,8(sp)
   19112:	4384                	lw	s1,0(a5)
   19114:	00878c13          	addi	s8,a5,8
   19118:	5404dd63          	bgez	s1,19672 <_vfiprintf_r+0xa0c>
   1911c:	409004bb          	negw	s1,s1
   19120:	e462                	sd	s8,8(sp)
   19122:	004d6313          	ori	t1,s10,4
   19126:	000dc783          	lbu	a5,0(s11)
   1912a:	00030d1b          	sext.w	s10,t1
   1912e:	b991                	j	18d82 <_vfiprintf_r+0x11c>
   19130:	020d6313          	ori	t1,s10,32
   19134:	000dc783          	lbu	a5,0(s11)
   19138:	00030d1b          	sext.w	s10,t1
   1913c:	b199                	j	18d82 <_vfiprintf_r+0x11c>
   1913e:	6622                	ld	a2,8(sp)
   19140:	77e1                	lui	a5,0xffff8
   19142:	8307c793          	xori	a5,a5,-2000
   19146:	002d6693          	ori	a3,s10,2
   1914a:	04f11c23          	sh	a5,88(sp)
   1914e:	6d71                	lui	s10,0x1c
   19150:	00860793          	addi	a5,a2,8
   19154:	e43e                	sd	a5,8(sp)
   19156:	710d0793          	addi	a5,s10,1808 # 1c710 <__clzdi2+0xd0>
   1915a:	e83e                	sd	a5,16(sp)
   1915c:	00063b83          	ld	s7,0(a2)
   19160:	2681                	sext.w	a3,a3
   19162:	4789                	li	a5,2
   19164:	b5ad                	j	18fce <_vfiprintf_r+0x368>
   19166:	6622                	ld	a2,8(sp)
   19168:	020d7793          	andi	a5,s10,32
   1916c:	6214                	ld	a3,0(a2)
   1916e:	0621                	addi	a2,a2,8
   19170:	e432                	sd	a2,8(sp)
   19172:	e385                	bnez	a5,19192 <_vfiprintf_r+0x52c>
   19174:	010d7793          	andi	a5,s10,16
   19178:	ef89                	bnez	a5,19192 <_vfiprintf_r+0x52c>
   1917a:	040d7793          	andi	a5,s10,64
   1917e:	6a079063          	bnez	a5,1981e <_vfiprintf_r+0xbb8>
   19182:	200d7313          	andi	t1,s10,512
   19186:	6782                	ld	a5,0(sp)
   19188:	6e030a63          	beqz	t1,1987c <_vfiprintf_r+0xc16>
   1918c:	00f68023          	sb	a5,0(a3)
   19190:	be9d                	j	18d06 <_vfiprintf_r+0xa0>
   19192:	6782                	ld	a5,0(sp)
   19194:	e29c                	sd	a5,0(a3)
   19196:	be85                	j	18d06 <_vfiprintf_r+0xa0>
   19198:	02b00693          	li	a3,43
   1919c:	000dc783          	lbu	a5,0(s11)
   191a0:	04d10ba3          	sb	a3,87(sp)
   191a4:	bef9                	j	18d82 <_vfiprintf_r+0x11c>
   191a6:	080d6313          	ori	t1,s10,128
   191aa:	000dc783          	lbu	a5,0(s11)
   191ae:	00030d1b          	sext.w	s10,t1
   191b2:	bec1                	j	18d82 <_vfiprintf_r+0x11c>
   191b4:	000dc783          	lbu	a5,0(s11)
   191b8:	001d8693          	addi	a3,s11,1
   191bc:	6cb78563          	beq	a5,a1,19886 <_vfiprintf_r+0xc20>
   191c0:	fd07861b          	addiw	a2,a5,-48 # ffffffffffff7fd0 <__BSS_END__+0xfffffffffffd86d8>
   191c4:	8db6                	mv	s11,a3
   191c6:	4c81                	li	s9,0
   191c8:	bccbe1e3          	bltu	s7,a2,18d8a <_vfiprintf_r+0x124>
   191cc:	000dc783          	lbu	a5,0(s11)
   191d0:	002c969b          	slliw	a3,s9,0x2
   191d4:	019686bb          	addw	a3,a3,s9
   191d8:	0016969b          	slliw	a3,a3,0x1
   191dc:	00c68cbb          	addw	s9,a3,a2
   191e0:	fd07861b          	addiw	a2,a5,-48
   191e4:	0d85                	addi	s11,s11,1
   191e6:	fecbf3e3          	bgeu	s7,a2,191cc <_vfiprintf_r+0x566>
   191ea:	b645                	j	18d8a <_vfiprintf_r+0x124>
   191ec:	8556                	mv	a0,s5
   191ee:	f03a                	sd	a4,32(sp)
   191f0:	965fc0ef          	jal	ra,15b54 <_localeconv_r>
   191f4:	651c                	ld	a5,8(a0)
   191f6:	853e                	mv	a0,a5
   191f8:	e0be                	sd	a5,64(sp)
   191fa:	9b0f80ef          	jal	ra,113aa <strlen>
   191fe:	87aa                	mv	a5,a0
   19200:	8556                	mv	a0,s5
   19202:	8c3e                	mv	s8,a5
   19204:	e4be                	sd	a5,72(sp)
   19206:	94ffc0ef          	jal	ra,15b54 <_localeconv_r>
   1920a:	6914                	ld	a3,16(a0)
   1920c:	7702                	ld	a4,32(sp)
   1920e:	000dc783          	lbu	a5,0(s11)
   19212:	fc36                	sd	a3,56(sp)
   19214:	b60c07e3          	beqz	s8,18d82 <_vfiprintf_r+0x11c>
   19218:	b60685e3          	beqz	a3,18d82 <_vfiprintf_r+0x11c>
   1921c:	0006c683          	lbu	a3,0(a3)
   19220:	b60681e3          	beqz	a3,18d82 <_vfiprintf_r+0x11c>
   19224:	400d6313          	ori	t1,s10,1024
   19228:	00030d1b          	sext.w	s10,t1
   1922c:	be99                	j	18d82 <_vfiprintf_r+0x11c>
   1922e:	001d6313          	ori	t1,s10,1
   19232:	000dc783          	lbu	a5,0(s11)
   19236:	00030d1b          	sext.w	s10,t1
   1923a:	b6a1                	j	18d82 <_vfiprintf_r+0x11c>
   1923c:	05714683          	lbu	a3,87(sp)
   19240:	000dc783          	lbu	a5,0(s11)
   19244:	b2069fe3          	bnez	a3,18d82 <_vfiprintf_r+0x11c>
   19248:	02000693          	li	a3,32
   1924c:	04d10ba3          	sb	a3,87(sp)
   19250:	be0d                	j	18d82 <_vfiprintf_r+0x11c>
   19252:	000dc783          	lbu	a5,0(s11)
   19256:	06c00693          	li	a3,108
   1925a:	52d78d63          	beq	a5,a3,19794 <_vfiprintf_r+0xb2e>
   1925e:	010d6313          	ori	t1,s10,16
   19262:	00030d1b          	sext.w	s10,t1
   19266:	be31                	j	18d82 <_vfiprintf_r+0x11c>
   19268:	000dc783          	lbu	a5,0(s11)
   1926c:	06800693          	li	a3,104
   19270:	50d78963          	beq	a5,a3,19782 <_vfiprintf_r+0xb1c>
   19274:	040d6313          	ori	t1,s10,64
   19278:	00030d1b          	sext.w	s10,t1
   1927c:	b619                	j	18d82 <_vfiprintf_r+0x11c>
   1927e:	010d6693          	ori	a3,s10,16
   19282:	2681                	sext.w	a3,a3
   19284:	65a2                	ld	a1,8(sp)
   19286:	0206f793          	andi	a5,a3,32
   1928a:	00858613          	addi	a2,a1,8
   1928e:	32078863          	beqz	a5,195be <_vfiprintf_r+0x958>
   19292:	0005bb83          	ld	s7,0(a1)
   19296:	4785                	li	a5,1
   19298:	e432                	sd	a2,8(sp)
   1929a:	bb15                	j	18fce <_vfiprintf_r+0x368>
   1929c:	4705                	li	a4,1
   1929e:	d4ba                	sw	a4,104(sp)
   192a0:	87d2                	mv	a5,s4
   192a2:	f1e2                	sd	s8,224(sp)
   192a4:	f5d2                	sd	s4,232(sp)
   192a6:	f8d2                	sd	s4,112(sp)
   192a8:	8722                	mv	a4,s0
   192aa:	0741                	addi	a4,a4,16
   192ac:	bed5                	j	18ea0 <_vfiprintf_r+0x23a>
   192ae:	86ea                	mv	a3,s10
   192b0:	0dc10a13          	addi	s4,sp,220
   192b4:	8c52                	mv	s8,s4
   192b6:	6642                	ld	a2,16(sp)
   192b8:	00fbf793          	andi	a5,s7,15
   192bc:	1c7d                	addi	s8,s8,-1
   192be:	97b2                	add	a5,a5,a2
   192c0:	0007c783          	lbu	a5,0(a5)
   192c4:	004bdb93          	srli	s7,s7,0x4
   192c8:	00fc0023          	sb	a5,0(s8)
   192cc:	fe0b95e3          	bnez	s7,192b6 <_vfiprintf_r+0x650>
   192d0:	418a0a3b          	subw	s4,s4,s8
   192d4:	8d36                	mv	s10,a3
   192d6:	b995                	j	18f4a <_vfiprintf_r+0x2e4>
   192d8:	41748ebb          	subw	t4,s1,s7
   192dc:	b9d05ae3          	blez	t4,18e70 <_vfiprintf_r+0x20a>
   192e0:	45c1                	li	a1,16
   192e2:	59d5db63          	bge	a1,t4,19878 <_vfiprintf_r+0xc12>
   192e6:	4f41                	li	t5,16
   192e8:	4f9d                	li	t6,7
   192ea:	a801                	j	192fa <_vfiprintf_r+0x694>
   192ec:	0026851b          	addiw	a0,a3,2
   192f0:	0741                	addi	a4,a4,16
   192f2:	86ae                	mv	a3,a1
   192f4:	3ec1                	addiw	t4,t4,-16
   192f6:	05df5163          	bge	t5,t4,19338 <_vfiprintf_r+0x6d2>
   192fa:	0016859b          	addiw	a1,a3,1
   192fe:	07c1                	addi	a5,a5,16
   19300:	01273023          	sd	s2,0(a4)
   19304:	01e73423          	sd	t5,8(a4)
   19308:	f8be                	sd	a5,112(sp)
   1930a:	d4ae                	sw	a1,104(sp)
   1930c:	febfd0e3          	bge	t6,a1,192ec <_vfiprintf_r+0x686>
   19310:	c3fd                	beqz	a5,193f6 <_vfiprintf_r+0x790>
   19312:	1090                	addi	a2,sp,96
   19314:	85ce                	mv	a1,s3
   19316:	8556                	mv	a0,s5
   19318:	f076                	sd	t4,32(sp)
   1931a:	899ff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   1931e:	ba051be3          	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   19322:	7e82                	ld	t4,32(sp)
   19324:	56a6                	lw	a3,104(sp)
   19326:	4f41                	li	t5,16
   19328:	3ec1                	addiw	t4,t4,-16
   1932a:	77c6                	ld	a5,112(sp)
   1932c:	8722                	mv	a4,s0
   1932e:	0016851b          	addiw	a0,a3,1
   19332:	4f9d                	li	t6,7
   19334:	fddf43e3          	blt	t5,t4,192fa <_vfiprintf_r+0x694>
   19338:	97f6                	add	a5,a5,t4
   1933a:	01273023          	sd	s2,0(a4)
   1933e:	01d73423          	sd	t4,8(a4)
   19342:	f8be                	sd	a5,112(sp)
   19344:	d4aa                	sw	a0,104(sp)
   19346:	469d                	li	a3,7
   19348:	34a6dc63          	bge	a3,a0,196a0 <_vfiprintf_r+0xa3a>
   1934c:	4a078963          	beqz	a5,197fe <_vfiprintf_r+0xb98>
   19350:	1090                	addi	a2,sp,96
   19352:	85ce                	mv	a1,s3
   19354:	8556                	mv	a0,s5
   19356:	85dff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   1935a:	b6051de3          	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   1935e:	56a6                	lw	a3,104(sp)
   19360:	414c8cbb          	subw	s9,s9,s4
   19364:	77c6                	ld	a5,112(sp)
   19366:	8722                	mv	a4,s0
   19368:	0016861b          	addiw	a2,a3,1
   1936c:	b19056e3          	blez	s9,18e78 <_vfiprintf_r+0x212>
   19370:	45c1                	li	a1,16
   19372:	0595d963          	bge	a1,s9,193c4 <_vfiprintf_r+0x75e>
   19376:	4ec1                	li	t4,16
   19378:	4f1d                	li	t5,7
   1937a:	a801                	j	1938a <_vfiprintf_r+0x724>
   1937c:	0026861b          	addiw	a2,a3,2
   19380:	0741                	addi	a4,a4,16
   19382:	86ae                	mv	a3,a1
   19384:	3cc1                	addiw	s9,s9,-16
   19386:	039edf63          	bge	t4,s9,193c4 <_vfiprintf_r+0x75e>
   1938a:	0016859b          	addiw	a1,a3,1
   1938e:	07c1                	addi	a5,a5,16
   19390:	01273023          	sd	s2,0(a4)
   19394:	01d73423          	sd	t4,8(a4)
   19398:	f8be                	sd	a5,112(sp)
   1939a:	d4ae                	sw	a1,104(sp)
   1939c:	febf50e3          	bge	t5,a1,1937c <_vfiprintf_r+0x716>
   193a0:	cf9d                	beqz	a5,193de <_vfiprintf_r+0x778>
   193a2:	1090                	addi	a2,sp,96
   193a4:	85ce                	mv	a1,s3
   193a6:	8556                	mv	a0,s5
   193a8:	80bff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   193ac:	b20514e3          	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   193b0:	56a6                	lw	a3,104(sp)
   193b2:	4ec1                	li	t4,16
   193b4:	3cc1                	addiw	s9,s9,-16
   193b6:	77c6                	ld	a5,112(sp)
   193b8:	8722                	mv	a4,s0
   193ba:	0016861b          	addiw	a2,a3,1
   193be:	4f1d                	li	t5,7
   193c0:	fd9ec5e3          	blt	t4,s9,1938a <_vfiprintf_r+0x724>
   193c4:	97e6                	add	a5,a5,s9
   193c6:	01273023          	sd	s2,0(a4)
   193ca:	01973423          	sd	s9,8(a4)
   193ce:	f8be                	sd	a5,112(sp)
   193d0:	d4b2                	sw	a2,104(sp)
   193d2:	469d                	li	a3,7
   193d4:	1cc6c363          	blt	a3,a2,1959a <_vfiprintf_r+0x934>
   193d8:	0741                	addi	a4,a4,16
   193da:	2605                	addiw	a2,a2,1
   193dc:	bc71                	j	18e78 <_vfiprintf_r+0x212>
   193de:	4605                	li	a2,1
   193e0:	4681                	li	a3,0
   193e2:	8722                	mv	a4,s0
   193e4:	b745                	j	19384 <_vfiprintf_r+0x71e>
   193e6:	1090                	addi	a2,sp,96
   193e8:	85ce                	mv	a1,s3
   193ea:	8556                	mv	a0,s5
   193ec:	fc6ff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   193f0:	ac0509e3          	beqz	a0,18ec2 <_vfiprintf_r+0x25c>
   193f4:	b4c5                	j	18ed4 <_vfiprintf_r+0x26e>
   193f6:	4505                	li	a0,1
   193f8:	4681                	li	a3,0
   193fa:	8722                	mv	a4,s0
   193fc:	bde5                	j	192f4 <_vfiprintf_r+0x68e>
   193fe:	1e078463          	beqz	a5,195e6 <_vfiprintf_r+0x980>
   19402:	1090                	addi	a2,sp,96
   19404:	85ce                	mv	a1,s3
   19406:	8556                	mv	a0,s5
   19408:	f47e                	sd	t6,40(sp)
   1940a:	f016                	sd	t0,32(sp)
   1940c:	fa6ff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   19410:	ac0512e3          	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   19414:	56a6                	lw	a3,104(sp)
   19416:	77c6                	ld	a5,112(sp)
   19418:	7fa2                	ld	t6,40(sp)
   1941a:	7282                	ld	t0,32(sp)
   1941c:	8722                	mv	a4,s0
   1941e:	0016861b          	addiw	a2,a3,1
   19422:	bc01                	j	18e32 <_vfiprintf_r+0x1cc>
   19424:	24079c63          	bnez	a5,1967c <_vfiprintf_r+0xa16>
   19428:	05714703          	lbu	a4,87(sp)
   1942c:	3e071063          	bnez	a4,1980c <_vfiprintf_r+0xba6>
   19430:	1a028d63          	beqz	t0,195ea <_vfiprintf_r+0x984>
   19434:	08bc                	addi	a5,sp,88
   19436:	f1be                	sd	a5,224(sp)
   19438:	4789                	li	a5,2
   1943a:	f5be                	sd	a5,232(sp)
   1943c:	4605                	li	a2,1
   1943e:	8722                	mv	a4,s0
   19440:	86b2                	mv	a3,a2
   19442:	0741                	addi	a4,a4,16
   19444:	0016861b          	addiw	a2,a3,1
   19448:	b405                	j	18e68 <_vfiprintf_r+0x202>
   1944a:	4605                	li	a2,1
   1944c:	86ea                	mv	a3,s10
   1944e:	c0c794e3          	bne	a5,a2,19056 <_vfiprintf_r+0x3f0>
   19452:	47a5                	li	a5,9
   19454:	1977ef63          	bltu	a5,s7,195f2 <_vfiprintf_r+0x98c>
   19458:	030b8b9b          	addiw	s7,s7,48
   1945c:	0d710da3          	sb	s7,219(sp)
   19460:	8d36                	mv	s10,a3
   19462:	4a05                	li	s4,1
   19464:	0db10c13          	addi	s8,sp,219
   19468:	b4cd                	j	18f4a <_vfiprintf_r+0x2e4>
   1946a:	4541                	li	a0,16
   1946c:	07d55163          	bge	a0,t4,194ce <_vfiprintf_r+0x868>
   19470:	4f41                	li	t5,16
   19472:	439d                	li	t2,7
   19474:	a811                	j	19488 <_vfiprintf_r+0x822>
   19476:	0026859b          	addiw	a1,a3,2
   1947a:	0741                	addi	a4,a4,16
   1947c:	86b2                	mv	a3,a2
   1947e:	3ec1                	addiw	t4,t4,-16
   19480:	05df5763          	bge	t5,t4,194ce <_vfiprintf_r+0x868>
   19484:	0016859b          	addiw	a1,a3,1
   19488:	07c1                	addi	a5,a5,16
   1948a:	01673023          	sd	s6,0(a4)
   1948e:	01e73423          	sd	t5,8(a4)
   19492:	f8be                	sd	a5,112(sp)
   19494:	0005861b          	sext.w	a2,a1
   19498:	d4ae                	sw	a1,104(sp)
   1949a:	fcc3dee3          	bge	t2,a2,19476 <_vfiprintf_r+0x810>
   1949e:	c7b9                	beqz	a5,194ec <_vfiprintf_r+0x886>
   194a0:	1090                	addi	a2,sp,96
   194a2:	85ce                	mv	a1,s3
   194a4:	8556                	mv	a0,s5
   194a6:	f876                	sd	t4,48(sp)
   194a8:	f47e                	sd	t6,40(sp)
   194aa:	f016                	sd	t0,32(sp)
   194ac:	f06ff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   194b0:	a20512e3          	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   194b4:	7ec2                	ld	t4,48(sp)
   194b6:	56a6                	lw	a3,104(sp)
   194b8:	4f41                	li	t5,16
   194ba:	3ec1                	addiw	t4,t4,-16
   194bc:	77c6                	ld	a5,112(sp)
   194be:	7fa2                	ld	t6,40(sp)
   194c0:	7282                	ld	t0,32(sp)
   194c2:	8722                	mv	a4,s0
   194c4:	0016859b          	addiw	a1,a3,1
   194c8:	439d                	li	t2,7
   194ca:	fbdf4de3          	blt	t5,t4,19484 <_vfiprintf_r+0x81e>
   194ce:	97f6                	add	a5,a5,t4
   194d0:	01673023          	sd	s6,0(a4)
   194d4:	01d73423          	sd	t4,8(a4)
   194d8:	f8be                	sd	a5,112(sp)
   194da:	d4ae                	sw	a1,104(sp)
   194dc:	469d                	li	a3,7
   194de:	f4b6c3e3          	blt	a3,a1,19424 <_vfiprintf_r+0x7be>
   194e2:	0741                	addi	a4,a4,16
   194e4:	0015861b          	addiw	a2,a1,1
   194e8:	86ae                	mv	a3,a1
   194ea:	b21d                	j	18e10 <_vfiprintf_r+0x1aa>
   194ec:	4681                	li	a3,0
   194ee:	4585                	li	a1,1
   194f0:	8722                	mv	a4,s0
   194f2:	b771                	j	1947e <_vfiprintf_r+0x818>
   194f4:	d482                	sw	zero,104(sp)
   194f6:	004d7313          	andi	t1,s10,4
   194fa:	08030863          	beqz	t1,1958a <_vfiprintf_r+0x924>
   194fe:	41748a3b          	subw	s4,s1,s7
   19502:	09405463          	blez	s4,1958a <_vfiprintf_r+0x924>
   19506:	8722                	mv	a4,s0
   19508:	46c1                	li	a3,16
   1950a:	5626                	lw	a2,104(sp)
   1950c:	3546dd63          	bge	a3,s4,19866 <_vfiprintf_r+0xc00>
   19510:	4cc1                	li	s9,16
   19512:	4c1d                	li	s8,7
   19514:	a801                	j	19524 <_vfiprintf_r+0x8be>
   19516:	0026069b          	addiw	a3,a2,2
   1951a:	0741                	addi	a4,a4,16
   1951c:	862e                	mv	a2,a1
   1951e:	3a41                	addiw	s4,s4,-16
   19520:	034cdd63          	bge	s9,s4,1955a <_vfiprintf_r+0x8f4>
   19524:	0016059b          	addiw	a1,a2,1
   19528:	07c1                	addi	a5,a5,16
   1952a:	01673023          	sd	s6,0(a4)
   1952e:	01973423          	sd	s9,8(a4)
   19532:	f8be                	sd	a5,112(sp)
   19534:	d4ae                	sw	a1,104(sp)
   19536:	febc50e3          	bge	s8,a1,19516 <_vfiprintf_r+0x8b0>
   1953a:	c7a1                	beqz	a5,19582 <_vfiprintf_r+0x91c>
   1953c:	1090                	addi	a2,sp,96
   1953e:	85ce                	mv	a1,s3
   19540:	8556                	mv	a0,s5
   19542:	e70ff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   19546:	980517e3          	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   1954a:	5626                	lw	a2,104(sp)
   1954c:	3a41                	addiw	s4,s4,-16
   1954e:	77c6                	ld	a5,112(sp)
   19550:	8722                	mv	a4,s0
   19552:	0016069b          	addiw	a3,a2,1
   19556:	fd4cc7e3          	blt	s9,s4,19524 <_vfiprintf_r+0x8be>
   1955a:	97d2                	add	a5,a5,s4
   1955c:	01673023          	sd	s6,0(a4)
   19560:	01473423          	sd	s4,8(a4)
   19564:	f8be                	sd	a5,112(sp)
   19566:	d4b6                	sw	a3,104(sp)
   19568:	471d                	li	a4,7
   1956a:	94d753e3          	bge	a4,a3,18eb0 <_vfiprintf_r+0x24a>
   1956e:	cf91                	beqz	a5,1958a <_vfiprintf_r+0x924>
   19570:	1090                	addi	a2,sp,96
   19572:	85ce                	mv	a1,s3
   19574:	8556                	mv	a0,s5
   19576:	e3cff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   1957a:	94051de3          	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   1957e:	77c6                	ld	a5,112(sp)
   19580:	ba05                	j	18eb0 <_vfiprintf_r+0x24a>
   19582:	4685                	li	a3,1
   19584:	4601                	li	a2,0
   19586:	8722                	mv	a4,s0
   19588:	bf59                	j	1951e <_vfiprintf_r+0x8b8>
   1958a:	87a6                	mv	a5,s1
   1958c:	0174d363          	bge	s1,s7,19592 <_vfiprintf_r+0x92c>
   19590:	87de                	mv	a5,s7
   19592:	6702                	ld	a4,0(sp)
   19594:	9fb9                	addw	a5,a5,a4
   19596:	e03e                	sd	a5,0(sp)
   19598:	b22d                	j	18ec2 <_vfiprintf_r+0x25c>
   1959a:	d00781e3          	beqz	a5,1929c <_vfiprintf_r+0x636>
   1959e:	1090                	addi	a2,sp,96
   195a0:	85ce                	mv	a1,s3
   195a2:	8556                	mv	a0,s5
   195a4:	e0eff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   195a8:	920516e3          	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   195ac:	5626                	lw	a2,104(sp)
   195ae:	77c6                	ld	a5,112(sp)
   195b0:	8722                	mv	a4,s0
   195b2:	2605                	addiw	a2,a2,1
   195b4:	b0d1                	j	18e78 <_vfiprintf_r+0x212>
   195b6:	d482                	sw	zero,104(sp)
   195b8:	8722                	mv	a4,s0
   195ba:	fa0ff06f          	j	18d5a <_vfiprintf_r+0xf4>
   195be:	0106f793          	andi	a5,a3,16
   195c2:	e7ed                	bnez	a5,196ac <_vfiprintf_r+0xa46>
   195c4:	65a2                	ld	a1,8(sp)
   195c6:	0406f793          	andi	a5,a3,64
   195ca:	0005ab83          	lw	s7,0(a1)
   195ce:	1e078863          	beqz	a5,197be <_vfiprintf_r+0xb58>
   195d2:	1bc2                	slli	s7,s7,0x30
   195d4:	030bdb93          	srli	s7,s7,0x30
   195d8:	e432                	sd	a2,8(sp)
   195da:	4785                	li	a5,1
   195dc:	bacd                	j	18fce <_vfiprintf_r+0x368>
   195de:	4605                	li	a2,1
   195e0:	4681                	li	a3,0
   195e2:	8722                	mv	a4,s0
   195e4:	b051                	j	18e68 <_vfiprintf_r+0x202>
   195e6:	0e029163          	bnez	t0,196c8 <_vfiprintf_r+0xa62>
   195ea:	4681                	li	a3,0
   195ec:	4605                	li	a2,1
   195ee:	8722                	mv	a4,s0
   195f0:	b8a5                	j	18e68 <_vfiprintf_r+0x202>
   195f2:	0dc10a13          	addi	s4,sp,220
   195f6:	4006ff13          	andi	t5,a3,1024
   195fa:	4581                	li	a1,0
   195fc:	8652                	mv	a2,s4
   195fe:	4329                	li	t1,10
   19600:	4ea5                	li	t4,9
   19602:	0ff00d13          	li	s10,255
   19606:	a039                	j	19614 <_vfiprintf_r+0x9ae>
   19608:	026bd7b3          	divu	a5,s7,t1
   1960c:	cd7ef2e3          	bgeu	t4,s7,192d0 <_vfiprintf_r+0x66a>
   19610:	8bbe                	mv	s7,a5
   19612:	8662                	mv	a2,s8
   19614:	fff60c13          	addi	s8,a2,-1
   19618:	2585                	addiw	a1,a1,1
   1961a:	026bf7b3          	remu	a5,s7,t1
   1961e:	0307879b          	addiw	a5,a5,48
   19622:	fef60fa3          	sb	a5,-1(a2)
   19626:	fe0f01e3          	beqz	t5,19608 <_vfiprintf_r+0x9a2>
   1962a:	77e2                	ld	a5,56(sp)
   1962c:	0007c783          	lbu	a5,0(a5)
   19630:	fcb79ce3          	bne	a5,a1,19608 <_vfiprintf_r+0x9a2>
   19634:	fda78ae3          	beq	a5,s10,19608 <_vfiprintf_r+0x9a2>
   19638:	c97efce3          	bgeu	t4,s7,192d0 <_vfiprintf_r+0x66a>
   1963c:	67a6                	ld	a5,72(sp)
   1963e:	6586                	ld	a1,64(sp)
   19640:	f87a                	sd	t5,48(sp)
   19642:	40fc0c33          	sub	s8,s8,a5
   19646:	863e                	mv	a2,a5
   19648:	8562                	mv	a0,s8
   1964a:	f43a                	sd	a4,40(sp)
   1964c:	f036                	sd	a3,32(sp)
   1964e:	aa7fd0ef          	jal	ra,170f4 <strncpy>
   19652:	7762                	ld	a4,56(sp)
   19654:	4329                	li	t1,10
   19656:	026bd7b3          	divu	a5,s7,t1
   1965a:	00174603          	lbu	a2,1(a4)
   1965e:	7682                	ld	a3,32(sp)
   19660:	7f42                	ld	t5,48(sp)
   19662:	00c03633          	snez	a2,a2
   19666:	9732                	add	a4,a4,a2
   19668:	fc3a                	sd	a4,56(sp)
   1966a:	4581                	li	a1,0
   1966c:	7722                	ld	a4,40(sp)
   1966e:	4ea5                	li	t4,9
   19670:	b745                	j	19610 <_vfiprintf_r+0x9aa>
   19672:	000dc783          	lbu	a5,0(s11)
   19676:	e462                	sd	s8,8(sp)
   19678:	f0aff06f          	j	18d82 <_vfiprintf_r+0x11c>
   1967c:	1090                	addi	a2,sp,96
   1967e:	85ce                	mv	a1,s3
   19680:	8556                	mv	a0,s5
   19682:	f47e                	sd	t6,40(sp)
   19684:	f016                	sd	t0,32(sp)
   19686:	d2cff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   1968a:	840515e3          	bnez	a0,18ed4 <_vfiprintf_r+0x26e>
   1968e:	56a6                	lw	a3,104(sp)
   19690:	77c6                	ld	a5,112(sp)
   19692:	7fa2                	ld	t6,40(sp)
   19694:	7282                	ld	t0,32(sp)
   19696:	8722                	mv	a4,s0
   19698:	0016861b          	addiw	a2,a3,1
   1969c:	f74ff06f          	j	18e10 <_vfiprintf_r+0x1aa>
   196a0:	0741                	addi	a4,a4,16
   196a2:	0015061b          	addiw	a2,a0,1
   196a6:	86aa                	mv	a3,a0
   196a8:	fc8ff06f          	j	18e70 <_vfiprintf_r+0x20a>
   196ac:	67a2                	ld	a5,8(sp)
   196ae:	e432                	sd	a2,8(sp)
   196b0:	0007bb83          	ld	s7,0(a5)
   196b4:	4785                	li	a5,1
   196b6:	ba21                	j	18fce <_vfiprintf_r+0x368>
   196b8:	67a2                	ld	a5,8(sp)
   196ba:	0007bb83          	ld	s7,0(a5)
   196be:	b219                	j	18fc4 <_vfiprintf_r+0x35e>
   196c0:	67a2                	ld	a5,8(sp)
   196c2:	639c                	ld	a5,0(a5)
   196c4:	8bbe                	mv	s7,a5
   196c6:	b085                	j	18f26 <_vfiprintf_r+0x2c0>
   196c8:	08bc                	addi	a5,sp,88
   196ca:	f1be                	sd	a5,224(sp)
   196cc:	4789                	li	a5,2
   196ce:	f5be                	sd	a5,232(sp)
   196d0:	4685                	li	a3,1
   196d2:	8722                	mv	a4,s0
   196d4:	b3bd                	j	19442 <_vfiprintf_r+0x7dc>
   196d6:	e432                	sd	a2,8(sp)
   196d8:	bbad                	j	19452 <_vfiprintf_r+0x7ec>
   196da:	65a2                	ld	a1,8(sp)
   196dc:	66f1                	lui	a3,0x1c
   196de:	71068693          	addi	a3,a3,1808 # 1c710 <__clzdi2+0xd0>
   196e2:	e836                	sd	a3,16(sp)
   196e4:	020d7693          	andi	a3,s10,32
   196e8:	00858613          	addi	a2,a1,8
   196ec:	c6a1                	beqz	a3,19734 <_vfiprintf_r+0xace>
   196ee:	0005bb83          	ld	s7,0(a1)
   196f2:	001d7693          	andi	a3,s10,1
   196f6:	ce89                	beqz	a3,19710 <_vfiprintf_r+0xaaa>
   196f8:	000b8c63          	beqz	s7,19710 <_vfiprintf_r+0xaaa>
   196fc:	002d6313          	ori	t1,s10,2
   19700:	03000693          	li	a3,48
   19704:	04d10c23          	sb	a3,88(sp)
   19708:	04f10ca3          	sb	a5,89(sp)
   1970c:	00030d1b          	sext.w	s10,t1
   19710:	bffd7693          	andi	a3,s10,-1025
   19714:	2681                	sext.w	a3,a3
   19716:	e432                	sd	a2,8(sp)
   19718:	4789                	li	a5,2
   1971a:	b855                	j	18fce <_vfiprintf_r+0x368>
   1971c:	86ea                	mv	a3,s10
   1971e:	b69d                	j	19284 <_vfiprintf_r+0x61e>
   19720:	65a2                	ld	a1,8(sp)
   19722:	66f1                	lui	a3,0x1c
   19724:	72868693          	addi	a3,a3,1832 # 1c728 <__clzdi2+0xe8>
   19728:	e836                	sd	a3,16(sp)
   1972a:	020d7693          	andi	a3,s10,32
   1972e:	00858613          	addi	a2,a1,8
   19732:	fed5                	bnez	a3,196ee <_vfiprintf_r+0xa88>
   19734:	010d7693          	andi	a3,s10,16
   19738:	c285                	beqz	a3,19758 <_vfiprintf_r+0xaf2>
   1973a:	66a2                	ld	a3,8(sp)
   1973c:	0006bb83          	ld	s7,0(a3)
   19740:	bf4d                	j	196f2 <_vfiprintf_r+0xa8c>
   19742:	8562                	mv	a0,s8
   19744:	f03a                	sd	a4,32(sp)
   19746:	e436                	sd	a3,8(sp)
   19748:	c63f70ef          	jal	ra,113aa <strlen>
   1974c:	7702                	ld	a4,32(sp)
   1974e:	00050a1b          	sext.w	s4,a0
   19752:	4c81                	li	s9,0
   19754:	ff6ff06f          	j	18f4a <_vfiprintf_r+0x2e4>
   19758:	65a2                	ld	a1,8(sp)
   1975a:	040d7693          	andi	a3,s10,64
   1975e:	0005ab83          	lw	s7,0(a1)
   19762:	cac1                	beqz	a3,197f2 <_vfiprintf_r+0xb8c>
   19764:	1bc2                	slli	s7,s7,0x30
   19766:	030bdb93          	srli	s7,s7,0x30
   1976a:	b761                	j	196f2 <_vfiprintf_r+0xa8c>
   1976c:	86ea                	mv	a3,s10
   1976e:	e432                	sd	a2,8(sp)
   19770:	b1cd                	j	19452 <_vfiprintf_r+0x7ec>
   19772:	4685                	li	a3,1
   19774:	0ed78c63          	beq	a5,a3,1986c <_vfiprintf_r+0xc06>
   19778:	4689                	li	a3,2
   1977a:	b2d78ae3          	beq	a5,a3,192ae <_vfiprintf_r+0x648>
   1977e:	86ea                	mv	a3,s10
   19780:	b8f1                	j	1905c <_vfiprintf_r+0x3f6>
   19782:	200d6313          	ori	t1,s10,512
   19786:	001dc783          	lbu	a5,1(s11)
   1978a:	00030d1b          	sext.w	s10,t1
   1978e:	0d85                	addi	s11,s11,1
   19790:	df2ff06f          	j	18d82 <_vfiprintf_r+0x11c>
   19794:	020d6313          	ori	t1,s10,32
   19798:	001dc783          	lbu	a5,1(s11)
   1979c:	00030d1b          	sext.w	s10,t1
   197a0:	0d85                	addi	s11,s11,1
   197a2:	de0ff06f          	j	18d82 <_vfiprintf_r+0x11c>
   197a6:	4799                	li	a5,6
   197a8:	000c8a1b          	sext.w	s4,s9
   197ac:	0597ee63          	bltu	a5,s9,19808 <_vfiprintf_r+0xba2>
   197b0:	6e71                	lui	t3,0x1c
   197b2:	8bd2                	mv	s7,s4
   197b4:	e436                	sd	a3,8(sp)
   197b6:	740e0c13          	addi	s8,t3,1856 # 1c740 <__clzdi2+0x100>
   197ba:	e30ff06f          	j	18dea <_vfiprintf_r+0x184>
   197be:	2006f793          	andi	a5,a3,512
   197c2:	cbbd                	beqz	a5,19838 <_vfiprintf_r+0xbd2>
   197c4:	0ffbfb93          	zext.b	s7,s7
   197c8:	e432                	sd	a2,8(sp)
   197ca:	4785                	li	a5,1
   197cc:	803ff06f          	j	18fce <_vfiprintf_r+0x368>
   197d0:	200d7793          	andi	a5,s10,512
   197d4:	cfa9                	beqz	a5,1982e <_vfiprintf_r+0xbc8>
   197d6:	0ffbfb93          	zext.b	s7,s7
   197da:	feaff06f          	j	18fc4 <_vfiprintf_r+0x35e>
   197de:	200d7793          	andi	a5,s10,512
   197e2:	c3b9                	beqz	a5,19828 <_vfiprintf_r+0xbc2>
   197e4:	018b9b9b          	slliw	s7,s7,0x18
   197e8:	418bdb9b          	sraiw	s7,s7,0x18
   197ec:	87de                	mv	a5,s7
   197ee:	f38ff06f          	j	18f26 <_vfiprintf_r+0x2c0>
   197f2:	200d7693          	andi	a3,s10,512
   197f6:	caa1                	beqz	a3,19846 <_vfiprintf_r+0xbe0>
   197f8:	0ffbfb93          	zext.b	s7,s7
   197fc:	bddd                	j	196f2 <_vfiprintf_r+0xa8c>
   197fe:	4605                	li	a2,1
   19800:	4681                	li	a3,0
   19802:	8722                	mv	a4,s0
   19804:	e6cff06f          	j	18e70 <_vfiprintf_r+0x20a>
   19808:	4a19                	li	s4,6
   1980a:	b75d                	j	197b0 <_vfiprintf_r+0xb4a>
   1980c:	05710793          	addi	a5,sp,87
   19810:	f1be                	sd	a5,224(sp)
   19812:	4785                	li	a5,1
   19814:	f5be                	sd	a5,232(sp)
   19816:	4605                	li	a2,1
   19818:	8722                	mv	a4,s0
   1981a:	e12ff06f          	j	18e2c <_vfiprintf_r+0x1c6>
   1981e:	6782                	ld	a5,0(sp)
   19820:	00f69023          	sh	a5,0(a3)
   19824:	ce2ff06f          	j	18d06 <_vfiprintf_r+0xa0>
   19828:	87de                	mv	a5,s7
   1982a:	efcff06f          	j	18f26 <_vfiprintf_r+0x2c0>
   1982e:	1b82                	slli	s7,s7,0x20
   19830:	020bdb93          	srli	s7,s7,0x20
   19834:	f90ff06f          	j	18fc4 <_vfiprintf_r+0x35e>
   19838:	1b82                	slli	s7,s7,0x20
   1983a:	020bdb93          	srli	s7,s7,0x20
   1983e:	e432                	sd	a2,8(sp)
   19840:	4785                	li	a5,1
   19842:	f8cff06f          	j	18fce <_vfiprintf_r+0x368>
   19846:	1b82                	slli	s7,s7,0x20
   19848:	020bdb93          	srli	s7,s7,0x20
   1984c:	b55d                	j	196f2 <_vfiprintf_r+0xa8c>
   1984e:	1090                	addi	a2,sp,96
   19850:	85ce                	mv	a1,s3
   19852:	8556                	mv	a0,s5
   19854:	b5eff0ef          	jal	ra,18bb2 <__sprint_r.part.0>
   19858:	e7cff06f          	j	18ed4 <_vfiprintf_r+0x26e>
   1985c:	8a66                	mv	s4,s9
   1985e:	e436                	sd	a3,8(sp)
   19860:	4c81                	li	s9,0
   19862:	ee8ff06f          	j	18f4a <_vfiprintf_r+0x2e4>
   19866:	0016069b          	addiw	a3,a2,1
   1986a:	b9c5                	j	1955a <_vfiprintf_r+0x8f4>
   1986c:	86ea                	mv	a3,s10
   1986e:	b6ed                	j	19458 <_vfiprintf_r+0x7f2>
   19870:	57fd                	li	a5,-1
   19872:	e03e                	sd	a5,0(sp)
   19874:	e6cff06f          	j	18ee0 <_vfiprintf_r+0x27a>
   19878:	8532                	mv	a0,a2
   1987a:	bc7d                	j	19338 <_vfiprintf_r+0x6d2>
   1987c:	c29c                	sw	a5,0(a3)
   1987e:	c88ff06f          	j	18d06 <_vfiprintf_r+0xa0>
   19882:	e432                	sd	a2,8(sp)
   19884:	bed1                	j	19458 <_vfiprintf_r+0x7f2>
   19886:	6622                	ld	a2,8(sp)
   19888:	421c                	lw	a5,0(a2)
   1988a:	00860c13          	addi	s8,a2,8
   1988e:	883e                	mv	a6,a5
   19890:	0007d363          	bgez	a5,19896 <_vfiprintf_r+0xc30>
   19894:	587d                	li	a6,-1
   19896:	001dc783          	lbu	a5,1(s11)
   1989a:	00080c9b          	sext.w	s9,a6
   1989e:	e462                	sd	s8,8(sp)
   198a0:	8db6                	mv	s11,a3
   198a2:	ce0ff06f          	j	18d82 <_vfiprintf_r+0x11c>

00000000000198a6 <vfiprintf>:
   198a6:	87aa                	mv	a5,a0
   198a8:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   198ac:	86b2                	mv	a3,a2
   198ae:	862e                	mv	a2,a1
   198b0:	85be                	mv	a1,a5
   198b2:	bb4ff06f          	j	18c66 <_vfiprintf_r>

00000000000198b6 <__sbprintf>:
   198b6:	0105d783          	lhu	a5,16(a1)
   198ba:	0ac5ae03          	lw	t3,172(a1)
   198be:	0125d303          	lhu	t1,18(a1)
   198c2:	0305b883          	ld	a7,48(a1)
   198c6:	0405b803          	ld	a6,64(a1)
   198ca:	b3010113          	addi	sp,sp,-1232
   198ce:	9bf5                	andi	a5,a5,-3
   198d0:	40000713          	li	a4,1024
   198d4:	4c813023          	sd	s0,1216(sp)
   198d8:	00f11823          	sh	a5,16(sp)
   198dc:	842e                	mv	s0,a1
   198de:	191c                	addi	a5,sp,176
   198e0:	858a                	mv	a1,sp
   198e2:	4a913c23          	sd	s1,1208(sp)
   198e6:	4b213823          	sd	s2,1200(sp)
   198ea:	4c113423          	sd	ra,1224(sp)
   198ee:	892a                	mv	s2,a0
   198f0:	d772                	sw	t3,172(sp)
   198f2:	00611923          	sh	t1,18(sp)
   198f6:	f846                	sd	a7,48(sp)
   198f8:	e0c2                	sd	a6,64(sp)
   198fa:	e03e                	sd	a5,0(sp)
   198fc:	ec3e                	sd	a5,24(sp)
   198fe:	c63a                	sw	a4,12(sp)
   19900:	d03a                	sw	a4,32(sp)
   19902:	d402                	sw	zero,40(sp)
   19904:	b62ff0ef          	jal	ra,18c66 <_vfiprintf_r>
   19908:	84aa                	mv	s1,a0
   1990a:	02055963          	bgez	a0,1993c <__sbprintf+0x86>
   1990e:	01015783          	lhu	a5,16(sp)
   19912:	0407f793          	andi	a5,a5,64
   19916:	c799                	beqz	a5,19924 <__sbprintf+0x6e>
   19918:	01045783          	lhu	a5,16(s0)
   1991c:	0407e793          	ori	a5,a5,64
   19920:	00f41823          	sh	a5,16(s0)
   19924:	4c813083          	ld	ra,1224(sp)
   19928:	4c013403          	ld	s0,1216(sp)
   1992c:	4b013903          	ld	s2,1200(sp)
   19930:	8526                	mv	a0,s1
   19932:	4b813483          	ld	s1,1208(sp)
   19936:	4d010113          	addi	sp,sp,1232
   1993a:	8082                	ret
   1993c:	858a                	mv	a1,sp
   1993e:	854a                	mv	a0,s2
   19940:	ab7f90ef          	jal	ra,133f6 <_fflush_r>
   19944:	d569                	beqz	a0,1990e <__sbprintf+0x58>
   19946:	54fd                	li	s1,-1
   19948:	b7d9                	j	1990e <__sbprintf+0x58>

000000000001994a <__register_exitproc>:
   1994a:	6301b703          	ld	a4,1584(gp) # 1f728 <_global_impure_ptr>
   1994e:	1f873783          	ld	a5,504(a4)
   19952:	c3b1                	beqz	a5,19996 <__register_exitproc+0x4c>
   19954:	4798                	lw	a4,8(a5)
   19956:	487d                	li	a6,31
   19958:	06e84263          	blt	a6,a4,199bc <__register_exitproc+0x72>
   1995c:	c505                	beqz	a0,19984 <__register_exitproc+0x3a>
   1995e:	00371813          	slli	a6,a4,0x3
   19962:	983e                	add	a6,a6,a5
   19964:	10c83823          	sd	a2,272(a6)
   19968:	3107a883          	lw	a7,784(a5)
   1996c:	4605                	li	a2,1
   1996e:	00e6163b          	sllw	a2,a2,a4
   19972:	00c8e8b3          	or	a7,a7,a2
   19976:	3117a823          	sw	a7,784(a5)
   1997a:	20d83823          	sd	a3,528(a6)
   1997e:	4689                	li	a3,2
   19980:	02d50063          	beq	a0,a3,199a0 <__register_exitproc+0x56>
   19984:	00270693          	addi	a3,a4,2
   19988:	068e                	slli	a3,a3,0x3
   1998a:	2705                	addiw	a4,a4,1
   1998c:	c798                	sw	a4,8(a5)
   1998e:	97b6                	add	a5,a5,a3
   19990:	e38c                	sd	a1,0(a5)
   19992:	4501                	li	a0,0
   19994:	8082                	ret
   19996:	20070793          	addi	a5,a4,512
   1999a:	1ef73c23          	sd	a5,504(a4)
   1999e:	bf5d                	j	19954 <__register_exitproc+0xa>
   199a0:	3147a683          	lw	a3,788(a5)
   199a4:	4501                	li	a0,0
   199a6:	8ed1                	or	a3,a3,a2
   199a8:	30d7aa23          	sw	a3,788(a5)
   199ac:	00270693          	addi	a3,a4,2
   199b0:	068e                	slli	a3,a3,0x3
   199b2:	2705                	addiw	a4,a4,1
   199b4:	c798                	sw	a4,8(a5)
   199b6:	97b6                	add	a5,a5,a3
   199b8:	e38c                	sd	a1,0(a5)
   199ba:	8082                	ret
   199bc:	557d                	li	a0,-1
   199be:	8082                	ret

00000000000199c0 <__assert_func>:
   199c0:	6481b703          	ld	a4,1608(gp) # 1f740 <_impure_ptr>
   199c4:	1141                	addi	sp,sp,-16
   199c6:	87b6                	mv	a5,a3
   199c8:	8832                	mv	a6,a2
   199ca:	e406                	sd	ra,8(sp)
   199cc:	01873883          	ld	a7,24(a4)
   199d0:	86aa                	mv	a3,a0
   199d2:	872e                	mv	a4,a1
   199d4:	863e                	mv	a2,a5
   199d6:	00080d63          	beqz	a6,199f0 <__assert_func+0x30>
   199da:	67f5                	lui	a5,0x1d
   199dc:	1f078793          	addi	a5,a5,496 # 1d1f0 <zeroes.0+0x10>
   199e0:	65f5                	lui	a1,0x1d
   199e2:	20058593          	addi	a1,a1,512 # 1d200 <zeroes.0+0x20>
   199e6:	8546                	mv	a0,a7
   199e8:	0f2000ef          	jal	ra,19ada <fiprintf>
   199ec:	250010ef          	jal	ra,1ac3c <abort>
   199f0:	6871                	lui	a6,0x1c
   199f2:	73880793          	addi	a5,a6,1848 # 1c738 <__clzdi2+0xf8>
   199f6:	73880813          	addi	a6,a6,1848
   199fa:	b7dd                	j	199e0 <__assert_func+0x20>

00000000000199fc <__assert>:
   199fc:	1141                	addi	sp,sp,-16
   199fe:	86b2                	mv	a3,a2
   19a00:	4601                	li	a2,0
   19a02:	e406                	sd	ra,8(sp)
   19a04:	fbdff0ef          	jal	ra,199c0 <__assert_func>

0000000000019a08 <_calloc_r>:
   19a08:	02c5b7b3          	mulhu	a5,a1,a2
   19a0c:	1141                	addi	sp,sp,-16
   19a0e:	e406                	sd	ra,8(sp)
   19a10:	e022                	sd	s0,0(sp)
   19a12:	02c585b3          	mul	a1,a1,a2
   19a16:	efb5                	bnez	a5,19a92 <_calloc_r+0x8a>
   19a18:	d5df60ef          	jal	ra,10774 <_malloc_r>
   19a1c:	842a                	mv	s0,a0
   19a1e:	c521                	beqz	a0,19a66 <_calloc_r+0x5e>
   19a20:	ff853603          	ld	a2,-8(a0)
   19a24:	04800713          	li	a4,72
   19a28:	9a71                	andi	a2,a2,-4
   19a2a:	1661                	addi	a2,a2,-8
   19a2c:	04c76263          	bltu	a4,a2,19a70 <_calloc_r+0x68>
   19a30:	02700693          	li	a3,39
   19a34:	87aa                	mv	a5,a0
   19a36:	02c6f263          	bgeu	a3,a2,19a5a <_calloc_r+0x52>
   19a3a:	00053023          	sd	zero,0(a0)
   19a3e:	00053423          	sd	zero,8(a0)
   19a42:	03700793          	li	a5,55
   19a46:	02c7fd63          	bgeu	a5,a2,19a80 <_calloc_r+0x78>
   19a4a:	00053823          	sd	zero,16(a0)
   19a4e:	00053c23          	sd	zero,24(a0)
   19a52:	02050793          	addi	a5,a0,32
   19a56:	04e60863          	beq	a2,a4,19aa6 <_calloc_r+0x9e>
   19a5a:	0007b023          	sd	zero,0(a5)
   19a5e:	0007b423          	sd	zero,8(a5)
   19a62:	0007b823          	sd	zero,16(a5)
   19a66:	60a2                	ld	ra,8(sp)
   19a68:	8522                	mv	a0,s0
   19a6a:	6402                	ld	s0,0(sp)
   19a6c:	0141                	addi	sp,sp,16
   19a6e:	8082                	ret
   19a70:	4581                	li	a1,0
   19a72:	c90f70ef          	jal	ra,10f02 <memset>
   19a76:	60a2                	ld	ra,8(sp)
   19a78:	8522                	mv	a0,s0
   19a7a:	6402                	ld	s0,0(sp)
   19a7c:	0141                	addi	sp,sp,16
   19a7e:	8082                	ret
   19a80:	01050793          	addi	a5,a0,16
   19a84:	0007b023          	sd	zero,0(a5)
   19a88:	0007b423          	sd	zero,8(a5)
   19a8c:	0007b823          	sd	zero,16(a5)
   19a90:	bfd9                	j	19a66 <_calloc_r+0x5e>
   19a92:	022000ef          	jal	ra,19ab4 <__errno>
   19a96:	4401                	li	s0,0
   19a98:	47b1                	li	a5,12
   19a9a:	60a2                	ld	ra,8(sp)
   19a9c:	c11c                	sw	a5,0(a0)
   19a9e:	8522                	mv	a0,s0
   19aa0:	6402                	ld	s0,0(sp)
   19aa2:	0141                	addi	sp,sp,16
   19aa4:	8082                	ret
   19aa6:	02053023          	sd	zero,32(a0)
   19aaa:	03050793          	addi	a5,a0,48
   19aae:	02053423          	sd	zero,40(a0)
   19ab2:	b765                	j	19a5a <_calloc_r+0x52>

0000000000019ab4 <__errno>:
   19ab4:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   19ab8:	8082                	ret

0000000000019aba <_fiprintf_r>:
   19aba:	715d                	addi	sp,sp,-80
   19abc:	02810313          	addi	t1,sp,40
   19ac0:	f436                	sd	a3,40(sp)
   19ac2:	869a                	mv	a3,t1
   19ac4:	ec06                	sd	ra,24(sp)
   19ac6:	f83a                	sd	a4,48(sp)
   19ac8:	fc3e                	sd	a5,56(sp)
   19aca:	e0c2                	sd	a6,64(sp)
   19acc:	e4c6                	sd	a7,72(sp)
   19ace:	e41a                	sd	t1,8(sp)
   19ad0:	996ff0ef          	jal	ra,18c66 <_vfiprintf_r>
   19ad4:	60e2                	ld	ra,24(sp)
   19ad6:	6161                	addi	sp,sp,80
   19ad8:	8082                	ret

0000000000019ada <fiprintf>:
   19ada:	8e2a                	mv	t3,a0
   19adc:	715d                	addi	sp,sp,-80
   19ade:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   19ae2:	02010313          	addi	t1,sp,32
   19ae6:	f032                	sd	a2,32(sp)
   19ae8:	f436                	sd	a3,40(sp)
   19aea:	862e                	mv	a2,a1
   19aec:	869a                	mv	a3,t1
   19aee:	85f2                	mv	a1,t3
   19af0:	ec06                	sd	ra,24(sp)
   19af2:	f83a                	sd	a4,48(sp)
   19af4:	fc3e                	sd	a5,56(sp)
   19af6:	e0c2                	sd	a6,64(sp)
   19af8:	e4c6                	sd	a7,72(sp)
   19afa:	e41a                	sd	t1,8(sp)
   19afc:	96aff0ef          	jal	ra,18c66 <_vfiprintf_r>
   19b00:	60e2                	ld	ra,24(sp)
   19b02:	6161                	addi	sp,sp,80
   19b04:	8082                	ret

0000000000019b06 <__fputwc>:
   19b06:	715d                	addi	sp,sp,-80
   19b08:	e0a2                	sd	s0,64(sp)
   19b0a:	f44e                	sd	s3,40(sp)
   19b0c:	e85a                	sd	s6,16(sp)
   19b0e:	e486                	sd	ra,72(sp)
   19b10:	fc26                	sd	s1,56(sp)
   19b12:	f84a                	sd	s2,48(sp)
   19b14:	f052                	sd	s4,32(sp)
   19b16:	ec56                	sd	s5,24(sp)
   19b18:	8b2a                	mv	s6,a0
   19b1a:	89ae                	mv	s3,a1
   19b1c:	8432                	mv	s0,a2
   19b1e:	1de000ef          	jal	ra,19cfc <__locale_mb_cur_max>
   19b22:	4785                	li	a5,1
   19b24:	00f51e63          	bne	a0,a5,19b40 <__fputwc+0x3a>
   19b28:	fff9879b          	addiw	a5,s3,-1
   19b2c:	0fe00713          	li	a4,254
   19b30:	00f76863          	bltu	a4,a5,19b40 <__fputwc+0x3a>
   19b34:	0ff9f713          	zext.b	a4,s3
   19b38:	00e10423          	sb	a4,8(sp)
   19b3c:	4905                	li	s2,1
   19b3e:	a839                	j	19b5c <__fputwc+0x56>
   19b40:	0a440693          	addi	a3,s0,164
   19b44:	864e                	mv	a2,s3
   19b46:	002c                	addi	a1,sp,8
   19b48:	855a                	mv	a0,s6
   19b4a:	032010ef          	jal	ra,1ab7c <_wcrtomb_r>
   19b4e:	57fd                	li	a5,-1
   19b50:	892a                	mv	s2,a0
   19b52:	06f50563          	beq	a0,a5,19bbc <__fputwc+0xb6>
   19b56:	c125                	beqz	a0,19bb6 <__fputwc+0xb0>
   19b58:	00814703          	lbu	a4,8(sp)
   19b5c:	4481                	li	s1,0
   19b5e:	5a7d                	li	s4,-1
   19b60:	4aa9                	li	s5,10
   19b62:	a831                	j	19b7e <__fputwc+0x78>
   19b64:	601c                	ld	a5,0(s0)
   19b66:	00178693          	addi	a3,a5,1
   19b6a:	e014                	sd	a3,0(s0)
   19b6c:	00e78023          	sb	a4,0(a5)
   19b70:	0485                	addi	s1,s1,1
   19b72:	003c                	addi	a5,sp,8
   19b74:	97a6                	add	a5,a5,s1
   19b76:	0524f063          	bgeu	s1,s2,19bb6 <__fputwc+0xb0>
   19b7a:	0007c703          	lbu	a4,0(a5)
   19b7e:	445c                	lw	a5,12(s0)
   19b80:	37fd                	addiw	a5,a5,-1
   19b82:	c45c                	sw	a5,12(s0)
   19b84:	fe07d0e3          	bgez	a5,19b64 <__fputwc+0x5e>
   19b88:	5414                	lw	a3,40(s0)
   19b8a:	85ba                	mv	a1,a4
   19b8c:	8622                	mv	a2,s0
   19b8e:	855a                	mv	a0,s6
   19b90:	00d7c463          	blt	a5,a3,19b98 <__fputwc+0x92>
   19b94:	fd5718e3          	bne	a4,s5,19b64 <__fputwc+0x5e>
   19b98:	6df000ef          	jal	ra,1aa76 <__swbuf_r>
   19b9c:	fd451ae3          	bne	a0,s4,19b70 <__fputwc+0x6a>
   19ba0:	557d                	li	a0,-1
   19ba2:	60a6                	ld	ra,72(sp)
   19ba4:	6406                	ld	s0,64(sp)
   19ba6:	74e2                	ld	s1,56(sp)
   19ba8:	7942                	ld	s2,48(sp)
   19baa:	79a2                	ld	s3,40(sp)
   19bac:	7a02                	ld	s4,32(sp)
   19bae:	6ae2                	ld	s5,24(sp)
   19bb0:	6b42                	ld	s6,16(sp)
   19bb2:	6161                	addi	sp,sp,80
   19bb4:	8082                	ret
   19bb6:	0009851b          	sext.w	a0,s3
   19bba:	b7e5                	j	19ba2 <__fputwc+0x9c>
   19bbc:	01045783          	lhu	a5,16(s0)
   19bc0:	557d                	li	a0,-1
   19bc2:	0407e793          	ori	a5,a5,64
   19bc6:	00f41823          	sh	a5,16(s0)
   19bca:	bfe1                	j	19ba2 <__fputwc+0x9c>

0000000000019bcc <_fputwc_r>:
   19bcc:	01061783          	lh	a5,16(a2)
   19bd0:	03279713          	slli	a4,a5,0x32
   19bd4:	00074c63          	bltz	a4,19bec <_fputwc_r+0x20>
   19bd8:	0ac62703          	lw	a4,172(a2)
   19bdc:	6689                	lui	a3,0x2
   19bde:	8fd5                	or	a5,a5,a3
   19be0:	6689                	lui	a3,0x2
   19be2:	8f55                	or	a4,a4,a3
   19be4:	00f61823          	sh	a5,16(a2)
   19be8:	0ae62623          	sw	a4,172(a2)
   19bec:	f1bff06f          	j	19b06 <__fputwc>

0000000000019bf0 <fputwc>:
   19bf0:	1101                	addi	sp,sp,-32
   19bf2:	e822                	sd	s0,16(sp)
   19bf4:	6481b403          	ld	s0,1608(gp) # 1f740 <_impure_ptr>
   19bf8:	ec06                	sd	ra,24(sp)
   19bfa:	862e                	mv	a2,a1
   19bfc:	85aa                	mv	a1,a0
   19bfe:	c019                	beqz	s0,19c04 <fputwc+0x14>
   19c00:	483c                	lw	a5,80(s0)
   19c02:	c79d                	beqz	a5,19c30 <fputwc+0x40>
   19c04:	01061783          	lh	a5,16(a2)
   19c08:	03279713          	slli	a4,a5,0x32
   19c0c:	00074c63          	bltz	a4,19c24 <fputwc+0x34>
   19c10:	0ac62703          	lw	a4,172(a2)
   19c14:	6689                	lui	a3,0x2
   19c16:	8fd5                	or	a5,a5,a3
   19c18:	6689                	lui	a3,0x2
   19c1a:	8f55                	or	a4,a4,a3
   19c1c:	00f61823          	sh	a5,16(a2)
   19c20:	0ae62623          	sw	a4,172(a2)
   19c24:	8522                	mv	a0,s0
   19c26:	6442                	ld	s0,16(sp)
   19c28:	60e2                	ld	ra,24(sp)
   19c2a:	6105                	addi	sp,sp,32
   19c2c:	edbff06f          	j	19b06 <__fputwc>
   19c30:	e02a                	sd	a0,0(sp)
   19c32:	8522                	mv	a0,s0
   19c34:	e432                	sd	a2,8(sp)
   19c36:	98ff60ef          	jal	ra,105c4 <__sinit>
   19c3a:	6622                	ld	a2,8(sp)
   19c3c:	6582                	ld	a1,0(sp)
   19c3e:	b7d9                	j	19c04 <fputwc+0x14>

0000000000019c40 <_fstat_r>:
   19c40:	1101                	addi	sp,sp,-32
   19c42:	872e                	mv	a4,a1
   19c44:	e822                	sd	s0,16(sp)
   19c46:	e426                	sd	s1,8(sp)
   19c48:	842a                	mv	s0,a0
   19c4a:	85b2                	mv	a1,a2
   19c4c:	853a                	mv	a0,a4
   19c4e:	ec06                	sd	ra,24(sp)
   19c50:	6801a423          	sw	zero,1672(gp) # 1f780 <errno>
   19c54:	3d6010ef          	jal	ra,1b02a <_fstat>
   19c58:	57fd                	li	a5,-1
   19c5a:	00f50763          	beq	a0,a5,19c68 <_fstat_r+0x28>
   19c5e:	60e2                	ld	ra,24(sp)
   19c60:	6442                	ld	s0,16(sp)
   19c62:	64a2                	ld	s1,8(sp)
   19c64:	6105                	addi	sp,sp,32
   19c66:	8082                	ret
   19c68:	6881a783          	lw	a5,1672(gp) # 1f780 <errno>
   19c6c:	dbed                	beqz	a5,19c5e <_fstat_r+0x1e>
   19c6e:	60e2                	ld	ra,24(sp)
   19c70:	c01c                	sw	a5,0(s0)
   19c72:	6442                	ld	s0,16(sp)
   19c74:	64a2                	ld	s1,8(sp)
   19c76:	6105                	addi	sp,sp,32
   19c78:	8082                	ret

0000000000019c7a <_isatty_r>:
   19c7a:	1101                	addi	sp,sp,-32
   19c7c:	e822                	sd	s0,16(sp)
   19c7e:	e426                	sd	s1,8(sp)
   19c80:	842a                	mv	s0,a0
   19c82:	852e                	mv	a0,a1
   19c84:	ec06                	sd	ra,24(sp)
   19c86:	6801a423          	sw	zero,1672(gp) # 1f780 <errno>
   19c8a:	3e4010ef          	jal	ra,1b06e <_isatty>
   19c8e:	57fd                	li	a5,-1
   19c90:	00f50763          	beq	a0,a5,19c9e <_isatty_r+0x24>
   19c94:	60e2                	ld	ra,24(sp)
   19c96:	6442                	ld	s0,16(sp)
   19c98:	64a2                	ld	s1,8(sp)
   19c9a:	6105                	addi	sp,sp,32
   19c9c:	8082                	ret
   19c9e:	6881a783          	lw	a5,1672(gp) # 1f780 <errno>
   19ca2:	dbed                	beqz	a5,19c94 <_isatty_r+0x1a>
   19ca4:	60e2                	ld	ra,24(sp)
   19ca6:	c01c                	sw	a5,0(s0)
   19ca8:	6442                	ld	s0,16(sp)
   19caa:	64a2                	ld	s1,8(sp)
   19cac:	6105                	addi	sp,sp,32
   19cae:	8082                	ret

0000000000019cb0 <_setlocale_r>:
   19cb0:	1101                	addi	sp,sp,-32
   19cb2:	ec06                	sd	ra,24(sp)
   19cb4:	e822                	sd	s0,16(sp)
   19cb6:	e426                	sd	s1,8(sp)
   19cb8:	c20d                	beqz	a2,19cda <_setlocale_r+0x2a>
   19cba:	65f5                	lui	a1,0x1d
   19cbc:	23858593          	addi	a1,a1,568 # 1d238 <zeroes.0+0x58>
   19cc0:	8532                	mv	a0,a2
   19cc2:	8432                	mv	s0,a2
   19cc4:	0d0000ef          	jal	ra,19d94 <strcmp>
   19cc8:	64f5                	lui	s1,0x1d
   19cca:	e911                	bnez	a0,19cde <_setlocale_r+0x2e>
   19ccc:	23048513          	addi	a0,s1,560 # 1d230 <zeroes.0+0x50>
   19cd0:	60e2                	ld	ra,24(sp)
   19cd2:	6442                	ld	s0,16(sp)
   19cd4:	64a2                	ld	s1,8(sp)
   19cd6:	6105                	addi	sp,sp,32
   19cd8:	8082                	ret
   19cda:	64f5                	lui	s1,0x1d
   19cdc:	bfc5                	j	19ccc <_setlocale_r+0x1c>
   19cde:	23048593          	addi	a1,s1,560 # 1d230 <zeroes.0+0x50>
   19ce2:	8522                	mv	a0,s0
   19ce4:	0b0000ef          	jal	ra,19d94 <strcmp>
   19ce8:	d175                	beqz	a0,19ccc <_setlocale_r+0x1c>
   19cea:	65f1                	lui	a1,0x1c
   19cec:	73858593          	addi	a1,a1,1848 # 1c738 <__clzdi2+0xf8>
   19cf0:	8522                	mv	a0,s0
   19cf2:	0a2000ef          	jal	ra,19d94 <strcmp>
   19cf6:	d979                	beqz	a0,19ccc <_setlocale_r+0x1c>
   19cf8:	4501                	li	a0,0
   19cfa:	bfd9                	j	19cd0 <_setlocale_r+0x20>

0000000000019cfc <__locale_mb_cur_max>:
   19cfc:	5b81c503          	lbu	a0,1464(gp) # 1f6b0 <__global_locale+0x160>
   19d00:	8082                	ret

0000000000019d02 <setlocale>:
   19d02:	1101                	addi	sp,sp,-32
   19d04:	ec06                	sd	ra,24(sp)
   19d06:	e822                	sd	s0,16(sp)
   19d08:	e426                	sd	s1,8(sp)
   19d0a:	c18d                	beqz	a1,19d2c <setlocale+0x2a>
   19d0c:	842e                	mv	s0,a1
   19d0e:	65f5                	lui	a1,0x1d
   19d10:	23858593          	addi	a1,a1,568 # 1d238 <zeroes.0+0x58>
   19d14:	8522                	mv	a0,s0
   19d16:	07e000ef          	jal	ra,19d94 <strcmp>
   19d1a:	64f5                	lui	s1,0x1d
   19d1c:	e911                	bnez	a0,19d30 <setlocale+0x2e>
   19d1e:	23048513          	addi	a0,s1,560 # 1d230 <zeroes.0+0x50>
   19d22:	60e2                	ld	ra,24(sp)
   19d24:	6442                	ld	s0,16(sp)
   19d26:	64a2                	ld	s1,8(sp)
   19d28:	6105                	addi	sp,sp,32
   19d2a:	8082                	ret
   19d2c:	64f5                	lui	s1,0x1d
   19d2e:	bfc5                	j	19d1e <setlocale+0x1c>
   19d30:	23048593          	addi	a1,s1,560 # 1d230 <zeroes.0+0x50>
   19d34:	8522                	mv	a0,s0
   19d36:	05e000ef          	jal	ra,19d94 <strcmp>
   19d3a:	d175                	beqz	a0,19d1e <setlocale+0x1c>
   19d3c:	65f1                	lui	a1,0x1c
   19d3e:	73858593          	addi	a1,a1,1848 # 1c738 <__clzdi2+0xf8>
   19d42:	8522                	mv	a0,s0
   19d44:	050000ef          	jal	ra,19d94 <strcmp>
   19d48:	d979                	beqz	a0,19d1e <setlocale+0x1c>
   19d4a:	4501                	li	a0,0
   19d4c:	bfd9                	j	19d22 <setlocale+0x20>

0000000000019d4e <_mbtowc_r>:
   19d4e:	5401b783          	ld	a5,1344(gp) # 1f638 <__global_locale+0xe8>
   19d52:	8782                	jr	a5

0000000000019d54 <__ascii_mbtowc>:
   19d54:	c999                	beqz	a1,19d6a <__ascii_mbtowc+0x16>
   19d56:	c61d                	beqz	a2,19d84 <__ascii_mbtowc+0x30>
   19d58:	ca95                	beqz	a3,19d8c <__ascii_mbtowc+0x38>
   19d5a:	00064783          	lbu	a5,0(a2)
   19d5e:	c19c                	sw	a5,0(a1)
   19d60:	00064503          	lbu	a0,0(a2)
   19d64:	00a03533          	snez	a0,a0
   19d68:	8082                	ret
   19d6a:	1141                	addi	sp,sp,-16
   19d6c:	006c                	addi	a1,sp,12
   19d6e:	ce09                	beqz	a2,19d88 <__ascii_mbtowc+0x34>
   19d70:	c285                	beqz	a3,19d90 <__ascii_mbtowc+0x3c>
   19d72:	00064783          	lbu	a5,0(a2)
   19d76:	c19c                	sw	a5,0(a1)
   19d78:	00064503          	lbu	a0,0(a2)
   19d7c:	00a03533          	snez	a0,a0
   19d80:	0141                	addi	sp,sp,16
   19d82:	8082                	ret
   19d84:	4501                	li	a0,0
   19d86:	8082                	ret
   19d88:	4501                	li	a0,0
   19d8a:	bfdd                	j	19d80 <__ascii_mbtowc+0x2c>
   19d8c:	5579                	li	a0,-2
   19d8e:	8082                	ret
   19d90:	5579                	li	a0,-2
   19d92:	b7fd                	j	19d80 <__ascii_mbtowc+0x2c>

0000000000019d94 <strcmp>:
   19d94:	00b56733          	or	a4,a0,a1
   19d98:	53fd                	li	t2,-1
   19d9a:	8b1d                	andi	a4,a4,7
   19d9c:	eb4d                	bnez	a4,19e4e <strcmp+0xba>
   19d9e:	00006797          	auipc	a5,0x6
   19da2:	96a7b783          	ld	a5,-1686(a5) # 1f708 <mask>
   19da6:	6110                	ld	a2,0(a0)
   19da8:	6194                	ld	a3,0(a1)
   19daa:	00f672b3          	and	t0,a2,a5
   19dae:	00f66333          	or	t1,a2,a5
   19db2:	92be                	add	t0,t0,a5
   19db4:	0062e2b3          	or	t0,t0,t1
   19db8:	0a729963          	bne	t0,t2,19e6a <strcmp+0xd6>
   19dbc:	02d61e63          	bne	a2,a3,19df8 <strcmp+0x64>
   19dc0:	6510                	ld	a2,8(a0)
   19dc2:	6594                	ld	a3,8(a1)
   19dc4:	00f672b3          	and	t0,a2,a5
   19dc8:	00f66333          	or	t1,a2,a5
   19dcc:	92be                	add	t0,t0,a5
   19dce:	0062e2b3          	or	t0,t0,t1
   19dd2:	08729a63          	bne	t0,t2,19e66 <strcmp+0xd2>
   19dd6:	02d61163          	bne	a2,a3,19df8 <strcmp+0x64>
   19dda:	6910                	ld	a2,16(a0)
   19ddc:	6994                	ld	a3,16(a1)
   19dde:	00f672b3          	and	t0,a2,a5
   19de2:	00f66333          	or	t1,a2,a5
   19de6:	92be                	add	t0,t0,a5
   19de8:	0062e2b3          	or	t0,t0,t1
   19dec:	08729363          	bne	t0,t2,19e72 <strcmp+0xde>
   19df0:	0561                	addi	a0,a0,24
   19df2:	05e1                	addi	a1,a1,24
   19df4:	fad609e3          	beq	a2,a3,19da6 <strcmp+0x12>
   19df8:	03061713          	slli	a4,a2,0x30
   19dfc:	03069793          	slli	a5,a3,0x30
   19e00:	02f71863          	bne	a4,a5,19e30 <strcmp+0x9c>
   19e04:	02061713          	slli	a4,a2,0x20
   19e08:	02069793          	slli	a5,a3,0x20
   19e0c:	02f71263          	bne	a4,a5,19e30 <strcmp+0x9c>
   19e10:	01061713          	slli	a4,a2,0x10
   19e14:	01069793          	slli	a5,a3,0x10
   19e18:	00f71c63          	bne	a4,a5,19e30 <strcmp+0x9c>
   19e1c:	03065713          	srli	a4,a2,0x30
   19e20:	0306d793          	srli	a5,a3,0x30
   19e24:	40f70533          	sub	a0,a4,a5
   19e28:	0ff57593          	zext.b	a1,a0
   19e2c:	e991                	bnez	a1,19e40 <strcmp+0xac>
   19e2e:	8082                	ret
   19e30:	9341                	srli	a4,a4,0x30
   19e32:	93c1                	srli	a5,a5,0x30
   19e34:	40f70533          	sub	a0,a4,a5
   19e38:	0ff57593          	zext.b	a1,a0
   19e3c:	e191                	bnez	a1,19e40 <strcmp+0xac>
   19e3e:	8082                	ret
   19e40:	0ff77713          	zext.b	a4,a4
   19e44:	0ff7f793          	zext.b	a5,a5
   19e48:	40f70533          	sub	a0,a4,a5
   19e4c:	8082                	ret
   19e4e:	00054603          	lbu	a2,0(a0)
   19e52:	0005c683          	lbu	a3,0(a1)
   19e56:	0505                	addi	a0,a0,1
   19e58:	0585                	addi	a1,a1,1
   19e5a:	00d61363          	bne	a2,a3,19e60 <strcmp+0xcc>
   19e5e:	fa65                	bnez	a2,19e4e <strcmp+0xba>
   19e60:	40d60533          	sub	a0,a2,a3
   19e64:	8082                	ret
   19e66:	0521                	addi	a0,a0,8
   19e68:	05a1                	addi	a1,a1,8
   19e6a:	fed612e3          	bne	a2,a3,19e4e <strcmp+0xba>
   19e6e:	4501                	li	a0,0
   19e70:	8082                	ret
   19e72:	0541                	addi	a0,a0,16
   19e74:	05c1                	addi	a1,a1,16
   19e76:	fcd61ce3          	bne	a2,a3,19e4e <strcmp+0xba>
   19e7a:	4501                	li	a0,0
   19e7c:	8082                	ret

0000000000019e7e <__ssprint_r>:
   19e7e:	6a1c                	ld	a5,16(a2)
   19e80:	715d                	addi	sp,sp,-80
   19e82:	f44e                	sd	s3,40(sp)
   19e84:	ec56                	sd	s5,24(sp)
   19e86:	e486                	sd	ra,72(sp)
   19e88:	e0a2                	sd	s0,64(sp)
   19e8a:	fc26                	sd	s1,56(sp)
   19e8c:	f84a                	sd	s2,48(sp)
   19e8e:	f052                	sd	s4,32(sp)
   19e90:	e85a                	sd	s6,16(sp)
   19e92:	e45e                	sd	s7,8(sp)
   19e94:	e062                	sd	s8,0(sp)
   19e96:	00063983          	ld	s3,0(a2)
   19e9a:	8ab2                	mv	s5,a2
   19e9c:	10078d63          	beqz	a5,19fb6 <__ssprint_r+0x138>
   19ea0:	45d8                	lw	a4,12(a1)
   19ea2:	619c                	ld	a5,0(a1)
   19ea4:	8b2a                	mv	s6,a0
   19ea6:	84ae                	mv	s1,a1
   19ea8:	4a01                	li	s4,0
   19eaa:	4401                	li	s0,0
   19eac:	893a                	mv	s2,a4
   19eae:	853e                	mv	a0,a5
   19eb0:	c029                	beqz	s0,19ef2 <__ssprint_r+0x74>
   19eb2:	04e47663          	bgeu	s0,a4,19efe <__ssprint_r+0x80>
   19eb6:	0004071b          	sext.w	a4,s0
   19eba:	893a                	mv	s2,a4
   19ebc:	8bba                	mv	s7,a4
   19ebe:	853e                	mv	a0,a5
   19ec0:	85d2                	mv	a1,s4
   19ec2:	864a                	mv	a2,s2
   19ec4:	e77fb0ef          	jal	ra,15d3a <memmove>
   19ec8:	44d4                	lw	a3,12(s1)
   19eca:	609c                	ld	a5,0(s1)
   19ecc:	010ab703          	ld	a4,16(s5)
   19ed0:	412686bb          	subw	a3,a3,s2
   19ed4:	97ca                	add	a5,a5,s2
   19ed6:	c4d4                	sw	a3,12(s1)
   19ed8:	e09c                	sd	a5,0(s1)
   19eda:	41770733          	sub	a4,a4,s7
   19ede:	00eab823          	sd	a4,16(s5)
   19ee2:	9a5e                	add	s4,s4,s7
   19ee4:	41740433          	sub	s0,s0,s7
   19ee8:	c779                	beqz	a4,19fb6 <__ssprint_r+0x138>
   19eea:	44d8                	lw	a4,12(s1)
   19eec:	853e                	mv	a0,a5
   19eee:	893a                	mv	s2,a4
   19ef0:	f069                	bnez	s0,19eb2 <__ssprint_r+0x34>
   19ef2:	0009ba03          	ld	s4,0(s3)
   19ef6:	0089b403          	ld	s0,8(s3)
   19efa:	09c1                	addi	s3,s3,16
   19efc:	bf45                	j	19eac <__ssprint_r+0x2e>
   19efe:	0104d703          	lhu	a4,16(s1)
   19f02:	00040b9b          	sext.w	s7,s0
   19f06:	48077693          	andi	a3,a4,1152
   19f0a:	dadd                	beqz	a3,19ec0 <__ssprint_r+0x42>
   19f0c:	5090                	lw	a2,32(s1)
   19f0e:	6c8c                	ld	a1,24(s1)
   19f10:	0016169b          	slliw	a3,a2,0x1
   19f14:	9eb1                	addw	a3,a3,a2
   19f16:	8f8d                	sub	a5,a5,a1
   19f18:	01f6d91b          	srliw	s2,a3,0x1f
   19f1c:	00078b9b          	sext.w	s7,a5
   19f20:	00d9093b          	addw	s2,s2,a3
   19f24:	001b8693          	addi	a3,s7,1
   19f28:	4019591b          	sraiw	s2,s2,0x1
   19f2c:	96a2                	add	a3,a3,s0
   19f2e:	00d97563          	bgeu	s2,a3,19f38 <__ssprint_r+0xba>
   19f32:	2785                	addiw	a5,a5,1
   19f34:	0087893b          	addw	s2,a5,s0
   19f38:	40077713          	andi	a4,a4,1024
   19f3c:	c731                	beqz	a4,19f88 <__ssprint_r+0x10a>
   19f3e:	85ca                	mv	a1,s2
   19f40:	855a                	mv	a0,s6
   19f42:	833f60ef          	jal	ra,10774 <_malloc_r>
   19f46:	8c2a                	mv	s8,a0
   19f48:	c931                	beqz	a0,19f9c <__ssprint_r+0x11e>
   19f4a:	6c8c                	ld	a1,24(s1)
   19f4c:	865e                	mv	a2,s7
   19f4e:	ecdf60ef          	jal	ra,10e1a <memcpy>
   19f52:	0104d783          	lhu	a5,16(s1)
   19f56:	b7f7f793          	andi	a5,a5,-1153
   19f5a:	0807e793          	ori	a5,a5,128
   19f5e:	00f49823          	sh	a5,16(s1)
   19f62:	017c0533          	add	a0,s8,s7
   19f66:	41790bbb          	subw	s7,s2,s7
   19f6a:	0004071b          	sext.w	a4,s0
   19f6e:	0324a023          	sw	s2,32(s1)
   19f72:	0174a623          	sw	s7,12(s1)
   19f76:	0184bc23          	sd	s8,24(s1)
   19f7a:	e088                	sd	a0,0(s1)
   19f7c:	893a                	mv	s2,a4
   19f7e:	8bba                	mv	s7,a4
   19f80:	87aa                	mv	a5,a0
   19f82:	f2e47fe3          	bgeu	s0,a4,19ec0 <__ssprint_r+0x42>
   19f86:	bf15                	j	19eba <__ssprint_r+0x3c>
   19f88:	864a                	mv	a2,s2
   19f8a:	855a                	mv	a0,s6
   19f8c:	b67fc0ef          	jal	ra,16af2 <_realloc_r>
   19f90:	8c2a                	mv	s8,a0
   19f92:	f961                	bnez	a0,19f62 <__ssprint_r+0xe4>
   19f94:	6c8c                	ld	a1,24(s1)
   19f96:	855a                	mv	a0,s6
   19f98:	de8f90ef          	jal	ra,13580 <_free_r>
   19f9c:	0104d783          	lhu	a5,16(s1)
   19fa0:	4731                	li	a4,12
   19fa2:	00eb2023          	sw	a4,0(s6)
   19fa6:	0407e793          	ori	a5,a5,64
   19faa:	00f49823          	sh	a5,16(s1)
   19fae:	000ab823          	sd	zero,16(s5)
   19fb2:	557d                	li	a0,-1
   19fb4:	a011                	j	19fb8 <__ssprint_r+0x13a>
   19fb6:	4501                	li	a0,0
   19fb8:	60a6                	ld	ra,72(sp)
   19fba:	6406                	ld	s0,64(sp)
   19fbc:	000aa423          	sw	zero,8(s5)
   19fc0:	74e2                	ld	s1,56(sp)
   19fc2:	7942                	ld	s2,48(sp)
   19fc4:	79a2                	ld	s3,40(sp)
   19fc6:	7a02                	ld	s4,32(sp)
   19fc8:	6ae2                	ld	s5,24(sp)
   19fca:	6b42                	ld	s6,16(sp)
   19fcc:	6ba2                	ld	s7,8(sp)
   19fce:	6c02                	ld	s8,0(sp)
   19fd0:	6161                	addi	sp,sp,80
   19fd2:	8082                	ret

0000000000019fd4 <_svfiprintf_r>:
   19fd4:	0105d783          	lhu	a5,16(a1)
   19fd8:	7105                	addi	sp,sp,-480
   19fda:	ff4e                	sd	s3,440(sp)
   19fdc:	f756                	sd	s5,424(sp)
   19fde:	feee                	sd	s11,376(sp)
   19fe0:	ef86                	sd	ra,472(sp)
   19fe2:	eba2                	sd	s0,464(sp)
   19fe4:	e7a6                	sd	s1,456(sp)
   19fe6:	e3ca                	sd	s2,448(sp)
   19fe8:	fb52                	sd	s4,432(sp)
   19fea:	f35a                	sd	s6,416(sp)
   19fec:	ef5e                	sd	s7,408(sp)
   19fee:	eb62                	sd	s8,400(sp)
   19ff0:	e766                	sd	s9,392(sp)
   19ff2:	e36a                	sd	s10,384(sp)
   19ff4:	0807f793          	andi	a5,a5,128
   19ff8:	e836                	sd	a3,16(sp)
   19ffa:	89ae                	mv	s3,a1
   19ffc:	8aaa                	mv	s5,a0
   19ffe:	8db2                	mv	s11,a2
   1a000:	c781                	beqz	a5,1a008 <_svfiprintf_r+0x34>
   1a002:	6d9c                	ld	a5,24(a1)
   1a004:	12078be3          	beqz	a5,1a93a <_svfiprintf_r+0x966>
   1a008:	66f5                	lui	a3,0x1d
   1a00a:	0f010a13          	addi	s4,sp,240
   1a00e:	24468693          	addi	a3,a3,580 # 1d244 <zeroes.0+0x64>
   1a012:	6b75                	lui	s6,0x1d
   1a014:	64f5                	lui	s1,0x1d
   1a016:	f8d2                	sd	s4,112(sp)
   1a018:	e102                	sd	zero,128(sp)
   1a01a:	dc82                	sw	zero,120(sp)
   1a01c:	4701                	li	a4,0
   1a01e:	87d2                	mv	a5,s4
   1a020:	ec02                	sd	zero,24(sp)
   1a022:	e082                	sd	zero,64(sp)
   1a024:	e882                	sd	zero,80(sp)
   1a026:	e482                	sd	zero,72(sp)
   1a028:	e402                	sd	zero,8(sp)
   1a02a:	f036                	sd	a3,32(sp)
   1a02c:	3b0b0b13          	addi	s6,s6,944 # 1d3b0 <blanks.1>
   1a030:	3c048493          	addi	s1,s1,960 # 1d3c0 <zeroes.0>
   1a034:	000dc683          	lbu	a3,0(s11)
   1a038:	16068e63          	beqz	a3,1a1b4 <_svfiprintf_r+0x1e0>
   1a03c:	846e                	mv	s0,s11
   1a03e:	02500613          	li	a2,37
   1a042:	28c68063          	beq	a3,a2,1a2c2 <_svfiprintf_r+0x2ee>
   1a046:	00144683          	lbu	a3,1(s0)
   1a04a:	0405                	addi	s0,s0,1
   1a04c:	fafd                	bnez	a3,1a042 <_svfiprintf_r+0x6e>
   1a04e:	41b4093b          	subw	s2,s0,s11
   1a052:	16090163          	beqz	s2,1a1b4 <_svfiprintf_r+0x1e0>
   1a056:	56e6                	lw	a3,120(sp)
   1a058:	974a                	add	a4,a4,s2
   1a05a:	01b7b023          	sd	s11,0(a5)
   1a05e:	0016861b          	addiw	a2,a3,1
   1a062:	0127b423          	sd	s2,8(a5)
   1a066:	e13a                	sd	a4,128(sp)
   1a068:	dcb2                	sw	a2,120(sp)
   1a06a:	469d                	li	a3,7
   1a06c:	07c1                	addi	a5,a5,16
   1a06e:	26c6c163          	blt	a3,a2,1a2d0 <_svfiprintf_r+0x2fc>
   1a072:	6622                	ld	a2,8(sp)
   1a074:	00044683          	lbu	a3,0(s0)
   1a078:	0126063b          	addw	a2,a2,s2
   1a07c:	e432                	sd	a2,8(sp)
   1a07e:	12068b63          	beqz	a3,1a1b4 <_svfiprintf_r+0x1e0>
   1a082:	00144683          	lbu	a3,1(s0)
   1a086:	00140d93          	addi	s11,s0,1
   1a08a:	060103a3          	sb	zero,103(sp)
   1a08e:	5cfd                	li	s9,-1
   1a090:	4401                	li	s0,0
   1a092:	4d01                	li	s10,0
   1a094:	05a00913          	li	s2,90
   1a098:	4ba5                	li	s7,9
   1a09a:	0d85                	addi	s11,s11,1
   1a09c:	2681                	sext.w	a3,a3
   1a09e:	02a00513          	li	a0,42
   1a0a2:	fe06861b          	addiw	a2,a3,-32
   1a0a6:	0006059b          	sext.w	a1,a2
   1a0aa:	04b96363          	bltu	s2,a1,1a0f0 <_svfiprintf_r+0x11c>
   1a0ae:	02061593          	slli	a1,a2,0x20
   1a0b2:	01e5d613          	srli	a2,a1,0x1e
   1a0b6:	7582                	ld	a1,32(sp)
   1a0b8:	962e                	add	a2,a2,a1
   1a0ba:	4210                	lw	a2,0(a2)
   1a0bc:	8602                	jr	a2
   1a0be:	4401                	li	s0,0
   1a0c0:	000dc583          	lbu	a1,0(s11)
   1a0c4:	0024161b          	slliw	a2,s0,0x2
   1a0c8:	9e21                	addw	a2,a2,s0
   1a0ca:	fd06869b          	addiw	a3,a3,-48
   1a0ce:	0016161b          	slliw	a2,a2,0x1
   1a0d2:	fd05881b          	addiw	a6,a1,-48
   1a0d6:	00c6843b          	addw	s0,a3,a2
   1a0da:	0d85                	addi	s11,s11,1
   1a0dc:	0005869b          	sext.w	a3,a1
   1a0e0:	ff0bf0e3          	bgeu	s7,a6,1a0c0 <_svfiprintf_r+0xec>
   1a0e4:	fe06861b          	addiw	a2,a3,-32
   1a0e8:	0006059b          	sext.w	a1,a2
   1a0ec:	fcb971e3          	bgeu	s2,a1,1a0ae <_svfiprintf_r+0xda>
   1a0f0:	c2f1                	beqz	a3,1a1b4 <_svfiprintf_r+0x1e0>
   1a0f2:	08d10423          	sb	a3,136(sp)
   1a0f6:	060103a3          	sb	zero,103(sp)
   1a0fa:	4b85                	li	s7,1
   1a0fc:	4905                	li	s2,1
   1a0fe:	08810c13          	addi	s8,sp,136
   1a102:	4c81                	li	s9,0
   1a104:	002d7293          	andi	t0,s10,2
   1a108:	00028363          	beqz	t0,1a10e <_svfiprintf_r+0x13a>
   1a10c:	2b89                	addiw	s7,s7,2
   1a10e:	084d7f93          	andi	t6,s10,132
   1a112:	56e6                	lw	a3,120(sp)
   1a114:	000f9663          	bnez	t6,1a120 <_svfiprintf_r+0x14c>
   1a118:	41740ebb          	subw	t4,s0,s7
   1a11c:	5bd04b63          	bgtz	t4,1a6d2 <_svfiprintf_r+0x6fe>
   1a120:	06714603          	lbu	a2,103(sp)
   1a124:	ce11                	beqz	a2,1a140 <_svfiprintf_r+0x16c>
   1a126:	06710593          	addi	a1,sp,103
   1a12a:	e38c                	sd	a1,0(a5)
   1a12c:	2685                	addiw	a3,a3,1
   1a12e:	0705                	addi	a4,a4,1
   1a130:	4585                	li	a1,1
   1a132:	e78c                	sd	a1,8(a5)
   1a134:	e13a                	sd	a4,128(sp)
   1a136:	dcb6                	sw	a3,120(sp)
   1a138:	461d                	li	a2,7
   1a13a:	07c1                	addi	a5,a5,16
   1a13c:	1ad64463          	blt	a2,a3,1a2e4 <_svfiprintf_r+0x310>
   1a140:	00028e63          	beqz	t0,1a15c <_svfiprintf_r+0x188>
   1a144:	10ac                	addi	a1,sp,104
   1a146:	e38c                	sd	a1,0(a5)
   1a148:	2685                	addiw	a3,a3,1
   1a14a:	0709                	addi	a4,a4,2
   1a14c:	4589                	li	a1,2
   1a14e:	e78c                	sd	a1,8(a5)
   1a150:	e13a                	sd	a4,128(sp)
   1a152:	dcb6                	sw	a3,120(sp)
   1a154:	461d                	li	a2,7
   1a156:	07c1                	addi	a5,a5,16
   1a158:	60d64163          	blt	a2,a3,1a75a <_svfiprintf_r+0x786>
   1a15c:	08000613          	li	a2,128
   1a160:	44cf8b63          	beq	t6,a2,1a5b6 <_svfiprintf_r+0x5e2>
   1a164:	412c8cbb          	subw	s9,s9,s2
   1a168:	4d904863          	bgtz	s9,1a638 <_svfiprintf_r+0x664>
   1a16c:	0016861b          	addiw	a2,a3,1
   1a170:	974a                	add	a4,a4,s2
   1a172:	0187b023          	sd	s8,0(a5)
   1a176:	0127b423          	sd	s2,8(a5)
   1a17a:	e13a                	sd	a4,128(sp)
   1a17c:	dcb2                	sw	a2,120(sp)
   1a17e:	469d                	li	a3,7
   1a180:	07c1                	addi	a5,a5,16
   1a182:	52c6c363          	blt	a3,a2,1a6a8 <_svfiprintf_r+0x6d4>
   1a186:	004d7e13          	andi	t3,s10,4
   1a18a:	000e0663          	beqz	t3,1a196 <_svfiprintf_r+0x1c2>
   1a18e:	4174093b          	subw	s2,s0,s7
   1a192:	5f204163          	bgtz	s2,1a774 <_svfiprintf_r+0x7a0>
   1a196:	87a2                	mv	a5,s0
   1a198:	01745363          	bge	s0,s7,1a19e <_svfiprintf_r+0x1ca>
   1a19c:	87de                	mv	a5,s7
   1a19e:	66a2                	ld	a3,8(sp)
   1a1a0:	9fb5                	addw	a5,a5,a3
   1a1a2:	e43e                	sd	a5,8(sp)
   1a1a4:	50071c63          	bnez	a4,1a6bc <_svfiprintf_r+0x6e8>
   1a1a8:	000dc683          	lbu	a3,0(s11)
   1a1ac:	dc82                	sw	zero,120(sp)
   1a1ae:	87d2                	mv	a5,s4
   1a1b0:	e80696e3          	bnez	a3,1a03c <_svfiprintf_r+0x68>
   1a1b4:	060715e3          	bnez	a4,1aa1e <_svfiprintf_r+0xa4a>
   1a1b8:	0109d783          	lhu	a5,16(s3)
   1a1bc:	0407f793          	andi	a5,a5,64
   1a1c0:	080790e3          	bnez	a5,1aa40 <_svfiprintf_r+0xa6c>
   1a1c4:	60fe                	ld	ra,472(sp)
   1a1c6:	645e                	ld	s0,464(sp)
   1a1c8:	6522                	ld	a0,8(sp)
   1a1ca:	64be                	ld	s1,456(sp)
   1a1cc:	691e                	ld	s2,448(sp)
   1a1ce:	79fa                	ld	s3,440(sp)
   1a1d0:	7a5a                	ld	s4,432(sp)
   1a1d2:	7aba                	ld	s5,424(sp)
   1a1d4:	7b1a                	ld	s6,416(sp)
   1a1d6:	6bfa                	ld	s7,408(sp)
   1a1d8:	6c5a                	ld	s8,400(sp)
   1a1da:	6cba                	ld	s9,392(sp)
   1a1dc:	6d1a                	ld	s10,384(sp)
   1a1de:	7df6                	ld	s11,376(sp)
   1a1e0:	613d                	addi	sp,sp,480
   1a1e2:	8082                	ret
   1a1e4:	010d6e13          	ori	t3,s10,16
   1a1e8:	000dc683          	lbu	a3,0(s11)
   1a1ec:	000e0d1b          	sext.w	s10,t3
   1a1f0:	b56d                	j	1a09a <_svfiprintf_r+0xc6>
   1a1f2:	010d6e13          	ori	t3,s10,16
   1a1f6:	000e0d1b          	sext.w	s10,t3
   1a1fa:	65c2                	ld	a1,16(sp)
   1a1fc:	020d7693          	andi	a3,s10,32
   1a200:	00858613          	addi	a2,a1,8
   1a204:	10068e63          	beqz	a3,1a320 <_svfiprintf_r+0x34c>
   1a208:	6194                	ld	a3,0(a1)
   1a20a:	8bb6                	mv	s7,a3
   1a20c:	1206cc63          	bltz	a3,1a344 <_svfiprintf_r+0x370>
   1a210:	56fd                	li	a3,-1
   1a212:	74dc8e63          	beq	s9,a3,1a96e <_svfiprintf_r+0x99a>
   1a216:	f7fd7e93          	andi	t4,s10,-129
   1a21a:	e832                	sd	a2,16(sp)
   1a21c:	2e81                	sext.w	t4,t4
   1a21e:	5c0b8263          	beqz	s7,1a7e2 <_svfiprintf_r+0x80e>
   1a222:	46a5                	li	a3,9
   1a224:	5f76e763          	bltu	a3,s7,1a812 <_svfiprintf_r+0x83e>
   1a228:	030b8b9b          	addiw	s7,s7,48
   1a22c:	0f7105a3          	sb	s7,235(sp)
   1a230:	8d76                	mv	s10,t4
   1a232:	4905                	li	s2,1
   1a234:	0eb10c13          	addi	s8,sp,235
   1a238:	a8b1                	j	1a294 <_svfiprintf_r+0x2c0>
   1a23a:	010d6e13          	ori	t3,s10,16
   1a23e:	000e0d1b          	sext.w	s10,t3
   1a242:	65c2                	ld	a1,16(sp)
   1a244:	020d7693          	andi	a3,s10,32
   1a248:	00858613          	addi	a2,a1,8
   1a24c:	cadd                	beqz	a3,1a302 <_svfiprintf_r+0x32e>
   1a24e:	0005bb83          	ld	s7,0(a1)
   1a252:	bffd7e93          	andi	t4,s10,-1025
   1a256:	2e81                	sext.w	t4,t4
   1a258:	e832                	sd	a2,16(sp)
   1a25a:	4681                	li	a3,0
   1a25c:	4601                	li	a2,0
   1a25e:	06c103a3          	sb	a2,103(sp)
   1a262:	567d                	li	a2,-1
   1a264:	0ecc8c63          	beq	s9,a2,1a35c <_svfiprintf_r+0x388>
   1a268:	f7fefe13          	andi	t3,t4,-129
   1a26c:	000e0d1b          	sext.w	s10,t3
   1a270:	440b9f63          	bnez	s7,1a6ce <_svfiprintf_r+0x6fa>
   1a274:	300c9663          	bnez	s9,1a580 <_svfiprintf_r+0x5ac>
   1a278:	56069863          	bnez	a3,1a7e8 <_svfiprintf_r+0x814>
   1a27c:	001ef913          	andi	s2,t4,1
   1a280:	0ec10c13          	addi	s8,sp,236
   1a284:	00090863          	beqz	s2,1a294 <_svfiprintf_r+0x2c0>
   1a288:	03000693          	li	a3,48
   1a28c:	0ed105a3          	sb	a3,235(sp)
   1a290:	0eb10c13          	addi	s8,sp,235
   1a294:	86e6                	mv	a3,s9
   1a296:	012cd363          	bge	s9,s2,1a29c <_svfiprintf_r+0x2c8>
   1a29a:	86ca                	mv	a3,s2
   1a29c:	06714603          	lbu	a2,103(sp)
   1a2a0:	00068b9b          	sext.w	s7,a3
   1a2a4:	e60600e3          	beqz	a2,1a104 <_svfiprintf_r+0x130>
   1a2a8:	00168b9b          	addiw	s7,a3,1
   1a2ac:	bda1                	j	1a104 <_svfiprintf_r+0x130>
   1a2ae:	4080043b          	negw	s0,s0
   1a2b2:	e862                	sd	s8,16(sp)
   1a2b4:	004d6e13          	ori	t3,s10,4
   1a2b8:	000dc683          	lbu	a3,0(s11)
   1a2bc:	000e0d1b          	sext.w	s10,t3
   1a2c0:	bbe9                	j	1a09a <_svfiprintf_r+0xc6>
   1a2c2:	41b4093b          	subw	s2,s0,s11
   1a2c6:	d80918e3          	bnez	s2,1a056 <_svfiprintf_r+0x82>
   1a2ca:	00044683          	lbu	a3,0(s0)
   1a2ce:	bb45                	j	1a07e <_svfiprintf_r+0xaa>
   1a2d0:	1890                	addi	a2,sp,112
   1a2d2:	85ce                	mv	a1,s3
   1a2d4:	8556                	mv	a0,s5
   1a2d6:	ba9ff0ef          	jal	ra,19e7e <__ssprint_r>
   1a2da:	ec051fe3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a2de:	670a                	ld	a4,128(sp)
   1a2e0:	87d2                	mv	a5,s4
   1a2e2:	bb41                	j	1a072 <_svfiprintf_r+0x9e>
   1a2e4:	1890                	addi	a2,sp,112
   1a2e6:	85ce                	mv	a1,s3
   1a2e8:	8556                	mv	a0,s5
   1a2ea:	f87e                	sd	t6,48(sp)
   1a2ec:	f416                	sd	t0,40(sp)
   1a2ee:	b91ff0ef          	jal	ra,19e7e <__ssprint_r>
   1a2f2:	ec0513e3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a2f6:	670a                	ld	a4,128(sp)
   1a2f8:	56e6                	lw	a3,120(sp)
   1a2fa:	7fc2                	ld	t6,48(sp)
   1a2fc:	72a2                	ld	t0,40(sp)
   1a2fe:	87d2                	mv	a5,s4
   1a300:	b581                	j	1a140 <_svfiprintf_r+0x16c>
   1a302:	010d7693          	andi	a3,s10,16
   1a306:	5a069063          	bnez	a3,1a8a6 <_svfiprintf_r+0x8d2>
   1a30a:	65c2                	ld	a1,16(sp)
   1a30c:	040d7693          	andi	a3,s10,64
   1a310:	0005ab83          	lw	s7,0(a1)
   1a314:	6c068163          	beqz	a3,1a9d6 <_svfiprintf_r+0xa02>
   1a318:	1bc2                	slli	s7,s7,0x30
   1a31a:	030bdb93          	srli	s7,s7,0x30
   1a31e:	bf15                	j	1a252 <_svfiprintf_r+0x27e>
   1a320:	010d7693          	andi	a3,s10,16
   1a324:	56069d63          	bnez	a3,1a89e <_svfiprintf_r+0x8ca>
   1a328:	65c2                	ld	a1,16(sp)
   1a32a:	040d7693          	andi	a3,s10,64
   1a32e:	0005ab83          	lw	s7,0(a1)
   1a332:	68068063          	beqz	a3,1a9b2 <_svfiprintf_r+0x9de>
   1a336:	010b9b9b          	slliw	s7,s7,0x10
   1a33a:	410bdb9b          	sraiw	s7,s7,0x10
   1a33e:	86de                	mv	a3,s7
   1a340:	ec06d8e3          	bgez	a3,1a210 <_svfiprintf_r+0x23c>
   1a344:	e832                	sd	a2,16(sp)
   1a346:	02d00613          	li	a2,45
   1a34a:	06c103a3          	sb	a2,103(sp)
   1a34e:	567d                	li	a2,-1
   1a350:	41700bb3          	neg	s7,s7
   1a354:	8eea                	mv	t4,s10
   1a356:	4685                	li	a3,1
   1a358:	f0cc98e3          	bne	s9,a2,1a268 <_svfiprintf_r+0x294>
   1a35c:	4605                	li	a2,1
   1a35e:	ecc682e3          	beq	a3,a2,1a222 <_svfiprintf_r+0x24e>
   1a362:	4609                	li	a2,2
   1a364:	22c68563          	beq	a3,a2,1a58e <_svfiprintf_r+0x5ba>
   1a368:	0ec10913          	addi	s2,sp,236
   1a36c:	8c4a                	mv	s8,s2
   1a36e:	007bf693          	andi	a3,s7,7
   1a372:	03068693          	addi	a3,a3,48
   1a376:	fedc0fa3          	sb	a3,-1(s8)
   1a37a:	003bdb93          	srli	s7,s7,0x3
   1a37e:	8662                	mv	a2,s8
   1a380:	1c7d                	addi	s8,s8,-1
   1a382:	fe0b96e3          	bnez	s7,1a36e <_svfiprintf_r+0x39a>
   1a386:	001ef593          	andi	a1,t4,1
   1a38a:	22058263          	beqz	a1,1a5ae <_svfiprintf_r+0x5da>
   1a38e:	03000593          	li	a1,48
   1a392:	20b68e63          	beq	a3,a1,1a5ae <_svfiprintf_r+0x5da>
   1a396:	1679                	addi	a2,a2,-2
   1a398:	febc0fa3          	sb	a1,-1(s8)
   1a39c:	40c9093b          	subw	s2,s2,a2
   1a3a0:	8d76                	mv	s10,t4
   1a3a2:	8c32                	mv	s8,a2
   1a3a4:	bdc5                	j	1a294 <_svfiprintf_r+0x2c0>
   1a3a6:	66c2                	ld	a3,16(sp)
   1a3a8:	060103a3          	sb	zero,103(sp)
   1a3ac:	0006bc03          	ld	s8,0(a3)
   1a3b0:	00868813          	addi	a6,a3,8
   1a3b4:	5e0c0263          	beqz	s8,1a998 <_svfiprintf_r+0x9c4>
   1a3b8:	56fd                	li	a3,-1
   1a3ba:	56dc8463          	beq	s9,a3,1a922 <_svfiprintf_r+0x94e>
   1a3be:	8666                	mv	a2,s9
   1a3c0:	4581                	li	a1,0
   1a3c2:	8562                	mv	a0,s8
   1a3c4:	f842                	sd	a6,48(sp)
   1a3c6:	f43e                	sd	a5,40(sp)
   1a3c8:	e83a                	sd	a4,16(sp)
   1a3ca:	9c3f60ef          	jal	ra,10d8c <memchr>
   1a3ce:	6742                	ld	a4,16(sp)
   1a3d0:	77a2                	ld	a5,40(sp)
   1a3d2:	7842                	ld	a6,48(sp)
   1a3d4:	64050c63          	beqz	a0,1aa2c <_svfiprintf_r+0xa58>
   1a3d8:	4185093b          	subw	s2,a0,s8
   1a3dc:	e842                	sd	a6,16(sp)
   1a3de:	4c81                	li	s9,0
   1a3e0:	bd55                	j	1a294 <_svfiprintf_r+0x2c0>
   1a3e2:	6642                	ld	a2,16(sp)
   1a3e4:	060103a3          	sb	zero,103(sp)
   1a3e8:	4b85                	li	s7,1
   1a3ea:	4214                	lw	a3,0(a2)
   1a3ec:	0621                	addi	a2,a2,8
   1a3ee:	e832                	sd	a2,16(sp)
   1a3f0:	08d10423          	sb	a3,136(sp)
   1a3f4:	4905                	li	s2,1
   1a3f6:	08810c13          	addi	s8,sp,136
   1a3fa:	b321                	j	1a102 <_svfiprintf_r+0x12e>
   1a3fc:	080d6e13          	ori	t3,s10,128
   1a400:	000dc683          	lbu	a3,0(s11)
   1a404:	000e0d1b          	sext.w	s10,t3
   1a408:	b949                	j	1a09a <_svfiprintf_r+0xc6>
   1a40a:	020d6e13          	ori	t3,s10,32
   1a40e:	000dc683          	lbu	a3,0(s11)
   1a412:	000e0d1b          	sext.w	s10,t3
   1a416:	b151                	j	1a09a <_svfiprintf_r+0xc6>
   1a418:	6642                	ld	a2,16(sp)
   1a41a:	76e1                	lui	a3,0xffff8
   1a41c:	8306c693          	xori	a3,a3,-2000
   1a420:	002d6e93          	ori	t4,s10,2
   1a424:	06d11423          	sh	a3,104(sp)
   1a428:	6d71                	lui	s10,0x1c
   1a42a:	00860693          	addi	a3,a2,8
   1a42e:	e836                	sd	a3,16(sp)
   1a430:	710d0693          	addi	a3,s10,1808 # 1c710 <__clzdi2+0xd0>
   1a434:	ec36                	sd	a3,24(sp)
   1a436:	00063b83          	ld	s7,0(a2)
   1a43a:	2e81                	sext.w	t4,t4
   1a43c:	4689                	li	a3,2
   1a43e:	bd39                	j	1a25c <_svfiprintf_r+0x288>
   1a440:	010d6e93          	ori	t4,s10,16
   1a444:	2e81                	sext.w	t4,t4
   1a446:	65c2                	ld	a1,16(sp)
   1a448:	020ef693          	andi	a3,t4,32
   1a44c:	00858613          	addi	a2,a1,8
   1a450:	3a068163          	beqz	a3,1a7f2 <_svfiprintf_r+0x81e>
   1a454:	0005bb83          	ld	s7,0(a1)
   1a458:	4685                	li	a3,1
   1a45a:	e832                	sd	a2,16(sp)
   1a45c:	b501                	j	1a25c <_svfiprintf_r+0x288>
   1a45e:	000dc683          	lbu	a3,0(s11)
   1a462:	001d8613          	addi	a2,s11,1
   1a466:	5ea68163          	beq	a3,a0,1aa48 <_svfiprintf_r+0xa74>
   1a46a:	fd06859b          	addiw	a1,a3,-48 # ffffffffffff7fd0 <__BSS_END__+0xfffffffffffd86d8>
   1a46e:	8db2                	mv	s11,a2
   1a470:	4c81                	li	s9,0
   1a472:	c2bbe8e3          	bltu	s7,a1,1a0a2 <_svfiprintf_r+0xce>
   1a476:	000dc683          	lbu	a3,0(s11)
   1a47a:	002c961b          	slliw	a2,s9,0x2
   1a47e:	0196063b          	addw	a2,a2,s9
   1a482:	0016161b          	slliw	a2,a2,0x1
   1a486:	00b60cbb          	addw	s9,a2,a1
   1a48a:	fd06859b          	addiw	a1,a3,-48
   1a48e:	0d85                	addi	s11,s11,1
   1a490:	febbf3e3          	bgeu	s7,a1,1a476 <_svfiprintf_r+0x4a2>
   1a494:	b139                	j	1a0a2 <_svfiprintf_r+0xce>
   1a496:	65c2                	ld	a1,16(sp)
   1a498:	020d7693          	andi	a3,s10,32
   1a49c:	6190                	ld	a2,0(a1)
   1a49e:	05a1                	addi	a1,a1,8
   1a4a0:	e82e                	sd	a1,16(sp)
   1a4a2:	e285                	bnez	a3,1a4c2 <_svfiprintf_r+0x4ee>
   1a4a4:	010d7693          	andi	a3,s10,16
   1a4a8:	ee89                	bnez	a3,1a4c2 <_svfiprintf_r+0x4ee>
   1a4aa:	040d7693          	andi	a3,s10,64
   1a4ae:	56069363          	bnez	a3,1aa14 <_svfiprintf_r+0xa40>
   1a4b2:	200d7e13          	andi	t3,s10,512
   1a4b6:	66a2                	ld	a3,8(sp)
   1a4b8:	580e0163          	beqz	t3,1aa3a <_svfiprintf_r+0xa66>
   1a4bc:	00d60023          	sb	a3,0(a2)
   1a4c0:	be95                	j	1a034 <_svfiprintf_r+0x60>
   1a4c2:	66a2                	ld	a3,8(sp)
   1a4c4:	e214                	sd	a3,0(a2)
   1a4c6:	b6bd                	j	1a034 <_svfiprintf_r+0x60>
   1a4c8:	000dc683          	lbu	a3,0(s11)
   1a4cc:	06c00613          	li	a2,108
   1a4d0:	4ac68263          	beq	a3,a2,1a974 <_svfiprintf_r+0x9a0>
   1a4d4:	010d6e13          	ori	t3,s10,16
   1a4d8:	000e0d1b          	sext.w	s10,t3
   1a4dc:	be7d                	j	1a09a <_svfiprintf_r+0xc6>
   1a4de:	000dc683          	lbu	a3,0(s11)
   1a4e2:	06800613          	li	a2,104
   1a4e6:	4ac68063          	beq	a3,a2,1a986 <_svfiprintf_r+0x9b2>
   1a4ea:	040d6e13          	ori	t3,s10,64
   1a4ee:	000e0d1b          	sext.w	s10,t3
   1a4f2:	b665                	j	1a09a <_svfiprintf_r+0xc6>
   1a4f4:	66c2                	ld	a3,16(sp)
   1a4f6:	4280                	lw	s0,0(a3)
   1a4f8:	00868c13          	addi	s8,a3,8
   1a4fc:	da0449e3          	bltz	s0,1a2ae <_svfiprintf_r+0x2da>
   1a500:	000dc683          	lbu	a3,0(s11)
   1a504:	e862                	sd	s8,16(sp)
   1a506:	be51                	j	1a09a <_svfiprintf_r+0xc6>
   1a508:	8556                	mv	a0,s5
   1a50a:	f43a                	sd	a4,40(sp)
   1a50c:	f83e                	sd	a5,48(sp)
   1a50e:	e46fb0ef          	jal	ra,15b54 <_localeconv_r>
   1a512:	651c                	ld	a5,8(a0)
   1a514:	853e                	mv	a0,a5
   1a516:	e4be                	sd	a5,72(sp)
   1a518:	e93f60ef          	jal	ra,113aa <strlen>
   1a51c:	86aa                	mv	a3,a0
   1a51e:	8556                	mv	a0,s5
   1a520:	8c36                	mv	s8,a3
   1a522:	e8b6                	sd	a3,80(sp)
   1a524:	e30fb0ef          	jal	ra,15b54 <_localeconv_r>
   1a528:	6910                	ld	a2,16(a0)
   1a52a:	7722                	ld	a4,40(sp)
   1a52c:	77c2                	ld	a5,48(sp)
   1a52e:	e0b2                	sd	a2,64(sp)
   1a530:	360c0363          	beqz	s8,1a896 <_svfiprintf_r+0x8c2>
   1a534:	000dc683          	lbu	a3,0(s11)
   1a538:	b60601e3          	beqz	a2,1a09a <_svfiprintf_r+0xc6>
   1a53c:	00064603          	lbu	a2,0(a2)
   1a540:	b4060de3          	beqz	a2,1a09a <_svfiprintf_r+0xc6>
   1a544:	400d6e13          	ori	t3,s10,1024
   1a548:	000e0d1b          	sext.w	s10,t3
   1a54c:	b6b9                	j	1a09a <_svfiprintf_r+0xc6>
   1a54e:	001d6e13          	ori	t3,s10,1
   1a552:	000dc683          	lbu	a3,0(s11)
   1a556:	000e0d1b          	sext.w	s10,t3
   1a55a:	b681                	j	1a09a <_svfiprintf_r+0xc6>
   1a55c:	06714603          	lbu	a2,103(sp)
   1a560:	000dc683          	lbu	a3,0(s11)
   1a564:	b2061be3          	bnez	a2,1a09a <_svfiprintf_r+0xc6>
   1a568:	02000613          	li	a2,32
   1a56c:	06c103a3          	sb	a2,103(sp)
   1a570:	b62d                	j	1a09a <_svfiprintf_r+0xc6>
   1a572:	02b00613          	li	a2,43
   1a576:	000dc683          	lbu	a3,0(s11)
   1a57a:	06c103a3          	sb	a2,103(sp)
   1a57e:	be31                	j	1a09a <_svfiprintf_r+0xc6>
   1a580:	4605                	li	a2,1
   1a582:	4ac68963          	beq	a3,a2,1aa34 <_svfiprintf_r+0xa60>
   1a586:	4609                	li	a2,2
   1a588:	8eea                	mv	t4,s10
   1a58a:	dcc69fe3          	bne	a3,a2,1a368 <_svfiprintf_r+0x394>
   1a58e:	0ec10913          	addi	s2,sp,236
   1a592:	8c4a                	mv	s8,s2
   1a594:	6662                	ld	a2,24(sp)
   1a596:	00fbf693          	andi	a3,s7,15
   1a59a:	1c7d                	addi	s8,s8,-1
   1a59c:	96b2                	add	a3,a3,a2
   1a59e:	0006c683          	lbu	a3,0(a3)
   1a5a2:	004bdb93          	srli	s7,s7,0x4
   1a5a6:	00dc0023          	sb	a3,0(s8)
   1a5aa:	fe0b95e3          	bnez	s7,1a594 <_svfiprintf_r+0x5c0>
   1a5ae:	4189093b          	subw	s2,s2,s8
   1a5b2:	8d76                	mv	s10,t4
   1a5b4:	b1c5                	j	1a294 <_svfiprintf_r+0x2c0>
   1a5b6:	41740ebb          	subw	t4,s0,s7
   1a5ba:	bbd055e3          	blez	t4,1a164 <_svfiprintf_r+0x190>
   1a5be:	4641                	li	a2,16
   1a5c0:	05d65363          	bge	a2,t4,1a606 <_svfiprintf_r+0x632>
   1a5c4:	4f41                	li	t5,16
   1a5c6:	4f9d                	li	t6,7
   1a5c8:	a021                	j	1a5d0 <_svfiprintf_r+0x5fc>
   1a5ca:	3ec1                	addiw	t4,t4,-16
   1a5cc:	03df5d63          	bge	t5,t4,1a606 <_svfiprintf_r+0x632>
   1a5d0:	2685                	addiw	a3,a3,1
   1a5d2:	0741                	addi	a4,a4,16
   1a5d4:	e384                	sd	s1,0(a5)
   1a5d6:	01e7b423          	sd	t5,8(a5)
   1a5da:	e13a                	sd	a4,128(sp)
   1a5dc:	dcb6                	sw	a3,120(sp)
   1a5de:	07c1                	addi	a5,a5,16
   1a5e0:	fedfd5e3          	bge	t6,a3,1a5ca <_svfiprintf_r+0x5f6>
   1a5e4:	1890                	addi	a2,sp,112
   1a5e6:	85ce                	mv	a1,s3
   1a5e8:	8556                	mv	a0,s5
   1a5ea:	f476                	sd	t4,40(sp)
   1a5ec:	893ff0ef          	jal	ra,19e7e <__ssprint_r>
   1a5f0:	bc0514e3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a5f4:	7ea2                	ld	t4,40(sp)
   1a5f6:	4f41                	li	t5,16
   1a5f8:	670a                	ld	a4,128(sp)
   1a5fa:	3ec1                	addiw	t4,t4,-16
   1a5fc:	56e6                	lw	a3,120(sp)
   1a5fe:	87d2                	mv	a5,s4
   1a600:	4f9d                	li	t6,7
   1a602:	fddf47e3          	blt	t5,t4,1a5d0 <_svfiprintf_r+0x5fc>
   1a606:	2685                	addiw	a3,a3,1
   1a608:	9776                	add	a4,a4,t4
   1a60a:	e384                	sd	s1,0(a5)
   1a60c:	01d7b423          	sd	t4,8(a5)
   1a610:	e13a                	sd	a4,128(sp)
   1a612:	dcb6                	sw	a3,120(sp)
   1a614:	461d                	li	a2,7
   1a616:	07c1                	addi	a5,a5,16
   1a618:	b4d656e3          	bge	a2,a3,1a164 <_svfiprintf_r+0x190>
   1a61c:	1890                	addi	a2,sp,112
   1a61e:	85ce                	mv	a1,s3
   1a620:	8556                	mv	a0,s5
   1a622:	85dff0ef          	jal	ra,19e7e <__ssprint_r>
   1a626:	b80519e3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a62a:	412c8cbb          	subw	s9,s9,s2
   1a62e:	670a                	ld	a4,128(sp)
   1a630:	56e6                	lw	a3,120(sp)
   1a632:	87d2                	mv	a5,s4
   1a634:	b3905ce3          	blez	s9,1a16c <_svfiprintf_r+0x198>
   1a638:	4641                	li	a2,16
   1a63a:	05965163          	bge	a2,s9,1a67c <_svfiprintf_r+0x6a8>
   1a63e:	4ec1                	li	t4,16
   1a640:	4f1d                	li	t5,7
   1a642:	a021                	j	1a64a <_svfiprintf_r+0x676>
   1a644:	3cc1                	addiw	s9,s9,-16
   1a646:	039edb63          	bge	t4,s9,1a67c <_svfiprintf_r+0x6a8>
   1a64a:	2685                	addiw	a3,a3,1
   1a64c:	0741                	addi	a4,a4,16
   1a64e:	e384                	sd	s1,0(a5)
   1a650:	01d7b423          	sd	t4,8(a5)
   1a654:	e13a                	sd	a4,128(sp)
   1a656:	dcb6                	sw	a3,120(sp)
   1a658:	07c1                	addi	a5,a5,16
   1a65a:	fedf55e3          	bge	t5,a3,1a644 <_svfiprintf_r+0x670>
   1a65e:	1890                	addi	a2,sp,112
   1a660:	85ce                	mv	a1,s3
   1a662:	8556                	mv	a0,s5
   1a664:	81bff0ef          	jal	ra,19e7e <__ssprint_r>
   1a668:	b40518e3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a66c:	4ec1                	li	t4,16
   1a66e:	3cc1                	addiw	s9,s9,-16
   1a670:	670a                	ld	a4,128(sp)
   1a672:	56e6                	lw	a3,120(sp)
   1a674:	87d2                	mv	a5,s4
   1a676:	4f1d                	li	t5,7
   1a678:	fd9ec9e3          	blt	t4,s9,1a64a <_svfiprintf_r+0x676>
   1a67c:	2685                	addiw	a3,a3,1
   1a67e:	9766                	add	a4,a4,s9
   1a680:	e384                	sd	s1,0(a5)
   1a682:	0197b423          	sd	s9,8(a5)
   1a686:	e13a                	sd	a4,128(sp)
   1a688:	dcb6                	sw	a3,120(sp)
   1a68a:	461d                	li	a2,7
   1a68c:	07c1                	addi	a5,a5,16
   1a68e:	acd65fe3          	bge	a2,a3,1a16c <_svfiprintf_r+0x198>
   1a692:	1890                	addi	a2,sp,112
   1a694:	85ce                	mv	a1,s3
   1a696:	8556                	mv	a0,s5
   1a698:	fe6ff0ef          	jal	ra,19e7e <__ssprint_r>
   1a69c:	b0051ee3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a6a0:	670a                	ld	a4,128(sp)
   1a6a2:	56e6                	lw	a3,120(sp)
   1a6a4:	87d2                	mv	a5,s4
   1a6a6:	b4d9                	j	1a16c <_svfiprintf_r+0x198>
   1a6a8:	1890                	addi	a2,sp,112
   1a6aa:	85ce                	mv	a1,s3
   1a6ac:	8556                	mv	a0,s5
   1a6ae:	fd0ff0ef          	jal	ra,19e7e <__ssprint_r>
   1a6b2:	b00513e3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a6b6:	670a                	ld	a4,128(sp)
   1a6b8:	87d2                	mv	a5,s4
   1a6ba:	b4f1                	j	1a186 <_svfiprintf_r+0x1b2>
   1a6bc:	1890                	addi	a2,sp,112
   1a6be:	85ce                	mv	a1,s3
   1a6c0:	8556                	mv	a0,s5
   1a6c2:	fbcff0ef          	jal	ra,19e7e <__ssprint_r>
   1a6c6:	ae0519e3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a6ca:	670a                	ld	a4,128(sp)
   1a6cc:	bcf1                	j	1a1a8 <_svfiprintf_r+0x1d4>
   1a6ce:	8eea                	mv	t4,s10
   1a6d0:	b171                	j	1a35c <_svfiprintf_r+0x388>
   1a6d2:	4641                	li	a2,16
   1a6d4:	05d65863          	bge	a2,t4,1a724 <_svfiprintf_r+0x750>
   1a6d8:	4f41                	li	t5,16
   1a6da:	439d                	li	t2,7
   1a6dc:	a021                	j	1a6e4 <_svfiprintf_r+0x710>
   1a6de:	3ec1                	addiw	t4,t4,-16
   1a6e0:	05df5263          	bge	t5,t4,1a724 <_svfiprintf_r+0x750>
   1a6e4:	2685                	addiw	a3,a3,1
   1a6e6:	0741                	addi	a4,a4,16
   1a6e8:	0167b023          	sd	s6,0(a5)
   1a6ec:	01e7b423          	sd	t5,8(a5)
   1a6f0:	e13a                	sd	a4,128(sp)
   1a6f2:	dcb6                	sw	a3,120(sp)
   1a6f4:	07c1                	addi	a5,a5,16
   1a6f6:	fed3d4e3          	bge	t2,a3,1a6de <_svfiprintf_r+0x70a>
   1a6fa:	1890                	addi	a2,sp,112
   1a6fc:	85ce                	mv	a1,s3
   1a6fe:	8556                	mv	a0,s5
   1a700:	fc76                	sd	t4,56(sp)
   1a702:	f87e                	sd	t6,48(sp)
   1a704:	f416                	sd	t0,40(sp)
   1a706:	f78ff0ef          	jal	ra,19e7e <__ssprint_r>
   1a70a:	aa0517e3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a70e:	7ee2                	ld	t4,56(sp)
   1a710:	4f41                	li	t5,16
   1a712:	670a                	ld	a4,128(sp)
   1a714:	3ec1                	addiw	t4,t4,-16
   1a716:	56e6                	lw	a3,120(sp)
   1a718:	7fc2                	ld	t6,48(sp)
   1a71a:	72a2                	ld	t0,40(sp)
   1a71c:	87d2                	mv	a5,s4
   1a71e:	439d                	li	t2,7
   1a720:	fddf42e3          	blt	t5,t4,1a6e4 <_svfiprintf_r+0x710>
   1a724:	2685                	addiw	a3,a3,1
   1a726:	9776                	add	a4,a4,t4
   1a728:	0167b023          	sd	s6,0(a5)
   1a72c:	01d7b423          	sd	t4,8(a5)
   1a730:	e13a                	sd	a4,128(sp)
   1a732:	dcb6                	sw	a3,120(sp)
   1a734:	461d                	li	a2,7
   1a736:	07c1                	addi	a5,a5,16
   1a738:	9ed654e3          	bge	a2,a3,1a120 <_svfiprintf_r+0x14c>
   1a73c:	1890                	addi	a2,sp,112
   1a73e:	85ce                	mv	a1,s3
   1a740:	8556                	mv	a0,s5
   1a742:	f87e                	sd	t6,48(sp)
   1a744:	f416                	sd	t0,40(sp)
   1a746:	f38ff0ef          	jal	ra,19e7e <__ssprint_r>
   1a74a:	a60517e3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a74e:	670a                	ld	a4,128(sp)
   1a750:	56e6                	lw	a3,120(sp)
   1a752:	7fc2                	ld	t6,48(sp)
   1a754:	72a2                	ld	t0,40(sp)
   1a756:	87d2                	mv	a5,s4
   1a758:	b2e1                	j	1a120 <_svfiprintf_r+0x14c>
   1a75a:	1890                	addi	a2,sp,112
   1a75c:	85ce                	mv	a1,s3
   1a75e:	8556                	mv	a0,s5
   1a760:	f47e                	sd	t6,40(sp)
   1a762:	f1cff0ef          	jal	ra,19e7e <__ssprint_r>
   1a766:	a40519e3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a76a:	670a                	ld	a4,128(sp)
   1a76c:	56e6                	lw	a3,120(sp)
   1a76e:	7fa2                	ld	t6,40(sp)
   1a770:	87d2                	mv	a5,s4
   1a772:	b2ed                	j	1a15c <_svfiprintf_r+0x188>
   1a774:	4641                	li	a2,16
   1a776:	56e6                	lw	a3,120(sp)
   1a778:	05265063          	bge	a2,s2,1a7b8 <_svfiprintf_r+0x7e4>
   1a77c:	4cc1                	li	s9,16
   1a77e:	4c1d                	li	s8,7
   1a780:	a021                	j	1a788 <_svfiprintf_r+0x7b4>
   1a782:	3941                	addiw	s2,s2,-16
   1a784:	032cda63          	bge	s9,s2,1a7b8 <_svfiprintf_r+0x7e4>
   1a788:	2685                	addiw	a3,a3,1
   1a78a:	0741                	addi	a4,a4,16
   1a78c:	0167b023          	sd	s6,0(a5)
   1a790:	0197b423          	sd	s9,8(a5)
   1a794:	e13a                	sd	a4,128(sp)
   1a796:	dcb6                	sw	a3,120(sp)
   1a798:	07c1                	addi	a5,a5,16
   1a79a:	fedc54e3          	bge	s8,a3,1a782 <_svfiprintf_r+0x7ae>
   1a79e:	1890                	addi	a2,sp,112
   1a7a0:	85ce                	mv	a1,s3
   1a7a2:	8556                	mv	a0,s5
   1a7a4:	edaff0ef          	jal	ra,19e7e <__ssprint_r>
   1a7a8:	a00518e3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a7ac:	3941                	addiw	s2,s2,-16
   1a7ae:	670a                	ld	a4,128(sp)
   1a7b0:	56e6                	lw	a3,120(sp)
   1a7b2:	87d2                	mv	a5,s4
   1a7b4:	fd2ccae3          	blt	s9,s2,1a788 <_svfiprintf_r+0x7b4>
   1a7b8:	0016861b          	addiw	a2,a3,1
   1a7bc:	974a                	add	a4,a4,s2
   1a7be:	0167b023          	sd	s6,0(a5)
   1a7c2:	0127b423          	sd	s2,8(a5)
   1a7c6:	e13a                	sd	a4,128(sp)
   1a7c8:	dcb2                	sw	a2,120(sp)
   1a7ca:	479d                	li	a5,7
   1a7cc:	9cc7d5e3          	bge	a5,a2,1a196 <_svfiprintf_r+0x1c2>
   1a7d0:	1890                	addi	a2,sp,112
   1a7d2:	85ce                	mv	a1,s3
   1a7d4:	8556                	mv	a0,s5
   1a7d6:	ea8ff0ef          	jal	ra,19e7e <__ssprint_r>
   1a7da:	9c051fe3          	bnez	a0,1a1b8 <_svfiprintf_r+0x1e4>
   1a7de:	670a                	ld	a4,128(sp)
   1a7e0:	ba5d                	j	1a196 <_svfiprintf_r+0x1c2>
   1a7e2:	a40c93e3          	bnez	s9,1a228 <_svfiprintf_r+0x254>
   1a7e6:	8d76                	mv	s10,t4
   1a7e8:	4c81                	li	s9,0
   1a7ea:	4901                	li	s2,0
   1a7ec:	0ec10c13          	addi	s8,sp,236
   1a7f0:	b455                	j	1a294 <_svfiprintf_r+0x2c0>
   1a7f2:	010ef693          	andi	a3,t4,16
   1a7f6:	eec5                	bnez	a3,1a8ae <_svfiprintf_r+0x8da>
   1a7f8:	65c2                	ld	a1,16(sp)
   1a7fa:	040ef693          	andi	a3,t4,64
   1a7fe:	0005ab83          	lw	s7,0(a1)
   1a802:	1c068263          	beqz	a3,1a9c6 <_svfiprintf_r+0x9f2>
   1a806:	1bc2                	slli	s7,s7,0x30
   1a808:	030bdb93          	srli	s7,s7,0x30
   1a80c:	e832                	sd	a2,16(sp)
   1a80e:	4685                	li	a3,1
   1a810:	b4b1                	j	1a25c <_svfiprintf_r+0x288>
   1a812:	0ec10913          	addi	s2,sp,236
   1a816:	400eff13          	andi	t5,t4,1024
   1a81a:	4501                	li	a0,0
   1a81c:	85ca                	mv	a1,s2
   1a81e:	46a9                	li	a3,10
   1a820:	4e25                	li	t3,9
   1a822:	0ff00d13          	li	s10,255
   1a826:	a039                	j	1a834 <_svfiprintf_r+0x860>
   1a828:	02dbd633          	divu	a2,s7,a3
   1a82c:	d97e71e3          	bgeu	t3,s7,1a5ae <_svfiprintf_r+0x5da>
   1a830:	8bb2                	mv	s7,a2
   1a832:	85e2                	mv	a1,s8
   1a834:	fff58c13          	addi	s8,a1,-1
   1a838:	2505                	addiw	a0,a0,1
   1a83a:	02dbf633          	remu	a2,s7,a3
   1a83e:	0306061b          	addiw	a2,a2,48
   1a842:	fec58fa3          	sb	a2,-1(a1)
   1a846:	fe0f01e3          	beqz	t5,1a828 <_svfiprintf_r+0x854>
   1a84a:	6606                	ld	a2,64(sp)
   1a84c:	00064603          	lbu	a2,0(a2)
   1a850:	fca61ce3          	bne	a2,a0,1a828 <_svfiprintf_r+0x854>
   1a854:	fda60ae3          	beq	a2,s10,1a828 <_svfiprintf_r+0x854>
   1a858:	d57e7be3          	bgeu	t3,s7,1a5ae <_svfiprintf_r+0x5da>
   1a85c:	fc3e                	sd	a5,56(sp)
   1a85e:	67c6                	ld	a5,80(sp)
   1a860:	65a6                	ld	a1,72(sp)
   1a862:	ecfa                	sd	t5,88(sp)
   1a864:	40fc0c33          	sub	s8,s8,a5
   1a868:	863e                	mv	a2,a5
   1a86a:	8562                	mv	a0,s8
   1a86c:	f876                	sd	t4,48(sp)
   1a86e:	f43a                	sd	a4,40(sp)
   1a870:	885fc0ef          	jal	ra,170f4 <strncpy>
   1a874:	6786                	ld	a5,64(sp)
   1a876:	46a9                	li	a3,10
   1a878:	02dbd633          	divu	a2,s7,a3
   1a87c:	0017c583          	lbu	a1,1(a5)
   1a880:	7722                	ld	a4,40(sp)
   1a882:	7ec2                	ld	t4,48(sp)
   1a884:	00b035b3          	snez	a1,a1
   1a888:	97ae                	add	a5,a5,a1
   1a88a:	e0be                	sd	a5,64(sp)
   1a88c:	6f66                	ld	t5,88(sp)
   1a88e:	77e2                	ld	a5,56(sp)
   1a890:	4501                	li	a0,0
   1a892:	4e25                	li	t3,9
   1a894:	bf71                	j	1a830 <_svfiprintf_r+0x85c>
   1a896:	000dc683          	lbu	a3,0(s11)
   1a89a:	801ff06f          	j	1a09a <_svfiprintf_r+0xc6>
   1a89e:	66c2                	ld	a3,16(sp)
   1a8a0:	6294                	ld	a3,0(a3)
   1a8a2:	8bb6                	mv	s7,a3
   1a8a4:	b2a5                	j	1a20c <_svfiprintf_r+0x238>
   1a8a6:	66c2                	ld	a3,16(sp)
   1a8a8:	0006bb83          	ld	s7,0(a3)
   1a8ac:	b25d                	j	1a252 <_svfiprintf_r+0x27e>
   1a8ae:	66c2                	ld	a3,16(sp)
   1a8b0:	e832                	sd	a2,16(sp)
   1a8b2:	0006bb83          	ld	s7,0(a3)
   1a8b6:	4685                	li	a3,1
   1a8b8:	b255                	j	1a25c <_svfiprintf_r+0x288>
   1a8ba:	6542                	ld	a0,16(sp)
   1a8bc:	6671                	lui	a2,0x1c
   1a8be:	71060613          	addi	a2,a2,1808 # 1c710 <__clzdi2+0xd0>
   1a8c2:	ec32                	sd	a2,24(sp)
   1a8c4:	020d7613          	andi	a2,s10,32
   1a8c8:	00850593          	addi	a1,a0,8
   1a8cc:	c621                	beqz	a2,1a914 <_svfiprintf_r+0x940>
   1a8ce:	00053b83          	ld	s7,0(a0)
   1a8d2:	001d7613          	andi	a2,s10,1
   1a8d6:	ce09                	beqz	a2,1a8f0 <_svfiprintf_r+0x91c>
   1a8d8:	000b8c63          	beqz	s7,1a8f0 <_svfiprintf_r+0x91c>
   1a8dc:	002d6e13          	ori	t3,s10,2
   1a8e0:	03000613          	li	a2,48
   1a8e4:	06c10423          	sb	a2,104(sp)
   1a8e8:	06d104a3          	sb	a3,105(sp)
   1a8ec:	000e0d1b          	sext.w	s10,t3
   1a8f0:	bffd7e93          	andi	t4,s10,-1025
   1a8f4:	2e81                	sext.w	t4,t4
   1a8f6:	e82e                	sd	a1,16(sp)
   1a8f8:	4689                	li	a3,2
   1a8fa:	b28d                	j	1a25c <_svfiprintf_r+0x288>
   1a8fc:	8eea                	mv	t4,s10
   1a8fe:	b6a1                	j	1a446 <_svfiprintf_r+0x472>
   1a900:	6542                	ld	a0,16(sp)
   1a902:	6671                	lui	a2,0x1c
   1a904:	72860613          	addi	a2,a2,1832 # 1c728 <__clzdi2+0xe8>
   1a908:	ec32                	sd	a2,24(sp)
   1a90a:	020d7613          	andi	a2,s10,32
   1a90e:	00850593          	addi	a1,a0,8
   1a912:	fe55                	bnez	a2,1a8ce <_svfiprintf_r+0x8fa>
   1a914:	010d7613          	andi	a2,s10,16
   1a918:	c229                	beqz	a2,1a95a <_svfiprintf_r+0x986>
   1a91a:	6642                	ld	a2,16(sp)
   1a91c:	00063b83          	ld	s7,0(a2)
   1a920:	bf4d                	j	1a8d2 <_svfiprintf_r+0x8fe>
   1a922:	8562                	mv	a0,s8
   1a924:	f83e                	sd	a5,48(sp)
   1a926:	f43a                	sd	a4,40(sp)
   1a928:	e842                	sd	a6,16(sp)
   1a92a:	a81f60ef          	jal	ra,113aa <strlen>
   1a92e:	7722                	ld	a4,40(sp)
   1a930:	77c2                	ld	a5,48(sp)
   1a932:	0005091b          	sext.w	s2,a0
   1a936:	4c81                	li	s9,0
   1a938:	bab1                	j	1a294 <_svfiprintf_r+0x2c0>
   1a93a:	04000593          	li	a1,64
   1a93e:	e37f50ef          	jal	ra,10774 <_malloc_r>
   1a942:	00a9b023          	sd	a0,0(s3)
   1a946:	00a9bc23          	sd	a0,24(s3)
   1a94a:	10050f63          	beqz	a0,1aa68 <_svfiprintf_r+0xa94>
   1a94e:	04000793          	li	a5,64
   1a952:	02f9a023          	sw	a5,32(s3)
   1a956:	eb2ff06f          	j	1a008 <_svfiprintf_r+0x34>
   1a95a:	6542                	ld	a0,16(sp)
   1a95c:	040d7613          	andi	a2,s10,64
   1a960:	00052b83          	lw	s7,0(a0)
   1a964:	ce3d                	beqz	a2,1a9e2 <_svfiprintf_r+0xa0e>
   1a966:	1bc2                	slli	s7,s7,0x30
   1a968:	030bdb93          	srli	s7,s7,0x30
   1a96c:	b79d                	j	1a8d2 <_svfiprintf_r+0x8fe>
   1a96e:	8eea                	mv	t4,s10
   1a970:	e832                	sd	a2,16(sp)
   1a972:	b845                	j	1a222 <_svfiprintf_r+0x24e>
   1a974:	020d6e13          	ori	t3,s10,32
   1a978:	001dc683          	lbu	a3,1(s11)
   1a97c:	000e0d1b          	sext.w	s10,t3
   1a980:	0d85                	addi	s11,s11,1
   1a982:	f18ff06f          	j	1a09a <_svfiprintf_r+0xc6>
   1a986:	200d6e13          	ori	t3,s10,512
   1a98a:	001dc683          	lbu	a3,1(s11)
   1a98e:	000e0d1b          	sext.w	s10,t3
   1a992:	0d85                	addi	s11,s11,1
   1a994:	f06ff06f          	j	1a09a <_svfiprintf_r+0xc6>
   1a998:	4699                	li	a3,6
   1a99a:	000c891b          	sext.w	s2,s9
   1a99e:	0196f363          	bgeu	a3,s9,1a9a4 <_svfiprintf_r+0x9d0>
   1a9a2:	4919                	li	s2,6
   1a9a4:	e842                	sd	a6,16(sp)
   1a9a6:	6871                	lui	a6,0x1c
   1a9a8:	8bca                	mv	s7,s2
   1a9aa:	74080c13          	addi	s8,a6,1856 # 1c740 <__clzdi2+0x100>
   1a9ae:	f54ff06f          	j	1a102 <_svfiprintf_r+0x12e>
   1a9b2:	200d7693          	andi	a3,s10,512
   1a9b6:	cea1                	beqz	a3,1aa0e <_svfiprintf_r+0xa3a>
   1a9b8:	018b9b9b          	slliw	s7,s7,0x18
   1a9bc:	418bdb9b          	sraiw	s7,s7,0x18
   1a9c0:	86de                	mv	a3,s7
   1a9c2:	84bff06f          	j	1a20c <_svfiprintf_r+0x238>
   1a9c6:	200ef693          	andi	a3,t4,512
   1a9ca:	ca9d                	beqz	a3,1aa00 <_svfiprintf_r+0xa2c>
   1a9cc:	0ffbfb93          	zext.b	s7,s7
   1a9d0:	e832                	sd	a2,16(sp)
   1a9d2:	4685                	li	a3,1
   1a9d4:	b061                	j	1a25c <_svfiprintf_r+0x288>
   1a9d6:	200d7693          	andi	a3,s10,512
   1a9da:	ce91                	beqz	a3,1a9f6 <_svfiprintf_r+0xa22>
   1a9dc:	0ffbfb93          	zext.b	s7,s7
   1a9e0:	b88d                	j	1a252 <_svfiprintf_r+0x27e>
   1a9e2:	200d7613          	andi	a2,s10,512
   1a9e6:	c601                	beqz	a2,1a9ee <_svfiprintf_r+0xa1a>
   1a9e8:	0ffbfb93          	zext.b	s7,s7
   1a9ec:	b5dd                	j	1a8d2 <_svfiprintf_r+0x8fe>
   1a9ee:	1b82                	slli	s7,s7,0x20
   1a9f0:	020bdb93          	srli	s7,s7,0x20
   1a9f4:	bdf9                	j	1a8d2 <_svfiprintf_r+0x8fe>
   1a9f6:	1b82                	slli	s7,s7,0x20
   1a9f8:	020bdb93          	srli	s7,s7,0x20
   1a9fc:	857ff06f          	j	1a252 <_svfiprintf_r+0x27e>
   1aa00:	1b82                	slli	s7,s7,0x20
   1aa02:	020bdb93          	srli	s7,s7,0x20
   1aa06:	e832                	sd	a2,16(sp)
   1aa08:	4685                	li	a3,1
   1aa0a:	853ff06f          	j	1a25c <_svfiprintf_r+0x288>
   1aa0e:	86de                	mv	a3,s7
   1aa10:	ffcff06f          	j	1a20c <_svfiprintf_r+0x238>
   1aa14:	66a2                	ld	a3,8(sp)
   1aa16:	00d61023          	sh	a3,0(a2)
   1aa1a:	e1aff06f          	j	1a034 <_svfiprintf_r+0x60>
   1aa1e:	1890                	addi	a2,sp,112
   1aa20:	85ce                	mv	a1,s3
   1aa22:	8556                	mv	a0,s5
   1aa24:	c5aff0ef          	jal	ra,19e7e <__ssprint_r>
   1aa28:	f90ff06f          	j	1a1b8 <_svfiprintf_r+0x1e4>
   1aa2c:	8966                	mv	s2,s9
   1aa2e:	e842                	sd	a6,16(sp)
   1aa30:	4c81                	li	s9,0
   1aa32:	b08d                	j	1a294 <_svfiprintf_r+0x2c0>
   1aa34:	8eea                	mv	t4,s10
   1aa36:	ff2ff06f          	j	1a228 <_svfiprintf_r+0x254>
   1aa3a:	c214                	sw	a3,0(a2)
   1aa3c:	df8ff06f          	j	1a034 <_svfiprintf_r+0x60>
   1aa40:	57fd                	li	a5,-1
   1aa42:	e43e                	sd	a5,8(sp)
   1aa44:	f80ff06f          	j	1a1c4 <_svfiprintf_r+0x1f0>
   1aa48:	65c2                	ld	a1,16(sp)
   1aa4a:	4194                	lw	a3,0(a1)
   1aa4c:	00858c13          	addi	s8,a1,8
   1aa50:	88b6                	mv	a7,a3
   1aa52:	0006d363          	bgez	a3,1aa58 <_svfiprintf_r+0xa84>
   1aa56:	58fd                	li	a7,-1
   1aa58:	001dc683          	lbu	a3,1(s11)
   1aa5c:	00088c9b          	sext.w	s9,a7
   1aa60:	e862                	sd	s8,16(sp)
   1aa62:	8db2                	mv	s11,a2
   1aa64:	e36ff06f          	j	1a09a <_svfiprintf_r+0xc6>
   1aa68:	47b1                	li	a5,12
   1aa6a:	00faa023          	sw	a5,0(s5)
   1aa6e:	57fd                	li	a5,-1
   1aa70:	e43e                	sd	a5,8(sp)
   1aa72:	f52ff06f          	j	1a1c4 <_svfiprintf_r+0x1f0>

000000000001aa76 <__swbuf_r>:
   1aa76:	7179                	addi	sp,sp,-48
   1aa78:	f022                	sd	s0,32(sp)
   1aa7a:	ec26                	sd	s1,24(sp)
   1aa7c:	e84a                	sd	s2,16(sp)
   1aa7e:	f406                	sd	ra,40(sp)
   1aa80:	e44e                	sd	s3,8(sp)
   1aa82:	892a                	mv	s2,a0
   1aa84:	84ae                	mv	s1,a1
   1aa86:	8432                	mv	s0,a2
   1aa88:	c119                	beqz	a0,1aa8e <__swbuf_r+0x18>
   1aa8a:	493c                	lw	a5,80(a0)
   1aa8c:	cff1                	beqz	a5,1ab68 <__swbuf_r+0xf2>
   1aa8e:	01041703          	lh	a4,16(s0)
   1aa92:	5414                	lw	a3,40(s0)
   1aa94:	00877793          	andi	a5,a4,8
   1aa98:	c454                	sw	a3,12(s0)
   1aa9a:	03071693          	slli	a3,a4,0x30
   1aa9e:	92c1                	srli	a3,a3,0x30
   1aaa0:	cbb1                	beqz	a5,1aaf4 <__swbuf_r+0x7e>
   1aaa2:	6c1c                	ld	a5,24(s0)
   1aaa4:	cba1                	beqz	a5,1aaf4 <__swbuf_r+0x7e>
   1aaa6:	6609                	lui	a2,0x2
   1aaa8:	0ff4f993          	zext.b	s3,s1
   1aaac:	8ef1                	and	a3,a3,a2
   1aaae:	84ce                	mv	s1,s3
   1aab0:	c2bd                	beqz	a3,1ab16 <__swbuf_r+0xa0>
   1aab2:	6018                	ld	a4,0(s0)
   1aab4:	5014                	lw	a3,32(s0)
   1aab6:	40f707bb          	subw	a5,a4,a5
   1aaba:	06d7de63          	bge	a5,a3,1ab36 <__swbuf_r+0xc0>
   1aabe:	4454                	lw	a3,12(s0)
   1aac0:	00170613          	addi	a2,a4,1
   1aac4:	e010                	sd	a2,0(s0)
   1aac6:	36fd                	addiw	a3,a3,-1
   1aac8:	c454                	sw	a3,12(s0)
   1aaca:	01370023          	sb	s3,0(a4)
   1aace:	5018                	lw	a4,32(s0)
   1aad0:	2785                	addiw	a5,a5,1
   1aad2:	08f70463          	beq	a4,a5,1ab5a <__swbuf_r+0xe4>
   1aad6:	01045783          	lhu	a5,16(s0)
   1aada:	8b85                	andi	a5,a5,1
   1aadc:	c781                	beqz	a5,1aae4 <__swbuf_r+0x6e>
   1aade:	47a9                	li	a5,10
   1aae0:	06f48d63          	beq	s1,a5,1ab5a <__swbuf_r+0xe4>
   1aae4:	70a2                	ld	ra,40(sp)
   1aae6:	7402                	ld	s0,32(sp)
   1aae8:	6942                	ld	s2,16(sp)
   1aaea:	69a2                	ld	s3,8(sp)
   1aaec:	8526                	mv	a0,s1
   1aaee:	64e2                	ld	s1,24(sp)
   1aaf0:	6145                	addi	sp,sp,48
   1aaf2:	8082                	ret
   1aaf4:	85a2                	mv	a1,s0
   1aaf6:	854a                	mv	a0,s2
   1aaf8:	cbaf80ef          	jal	ra,12fb2 <__swsetup_r>
   1aafc:	e525                	bnez	a0,1ab64 <__swbuf_r+0xee>
   1aafe:	01041703          	lh	a4,16(s0)
   1ab02:	6609                	lui	a2,0x2
   1ab04:	0ff4f993          	zext.b	s3,s1
   1ab08:	03071693          	slli	a3,a4,0x30
   1ab0c:	92c1                	srli	a3,a3,0x30
   1ab0e:	8ef1                	and	a3,a3,a2
   1ab10:	6c1c                	ld	a5,24(s0)
   1ab12:	84ce                	mv	s1,s3
   1ab14:	fed9                	bnez	a3,1aab2 <__swbuf_r+0x3c>
   1ab16:	0ac42683          	lw	a3,172(s0)
   1ab1a:	8f51                	or	a4,a4,a2
   1ab1c:	7679                	lui	a2,0xffffe
   1ab1e:	167d                	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde707>
   1ab20:	8ef1                	and	a3,a3,a2
   1ab22:	00e41823          	sh	a4,16(s0)
   1ab26:	6018                	ld	a4,0(s0)
   1ab28:	0ad42623          	sw	a3,172(s0)
   1ab2c:	5014                	lw	a3,32(s0)
   1ab2e:	40f707bb          	subw	a5,a4,a5
   1ab32:	f8d7c6e3          	blt	a5,a3,1aabe <__swbuf_r+0x48>
   1ab36:	85a2                	mv	a1,s0
   1ab38:	854a                	mv	a0,s2
   1ab3a:	8bdf80ef          	jal	ra,133f6 <_fflush_r>
   1ab3e:	e11d                	bnez	a0,1ab64 <__swbuf_r+0xee>
   1ab40:	6018                	ld	a4,0(s0)
   1ab42:	4454                	lw	a3,12(s0)
   1ab44:	4785                	li	a5,1
   1ab46:	00170613          	addi	a2,a4,1
   1ab4a:	36fd                	addiw	a3,a3,-1
   1ab4c:	e010                	sd	a2,0(s0)
   1ab4e:	c454                	sw	a3,12(s0)
   1ab50:	01370023          	sb	s3,0(a4)
   1ab54:	5018                	lw	a4,32(s0)
   1ab56:	f8f710e3          	bne	a4,a5,1aad6 <__swbuf_r+0x60>
   1ab5a:	85a2                	mv	a1,s0
   1ab5c:	854a                	mv	a0,s2
   1ab5e:	899f80ef          	jal	ra,133f6 <_fflush_r>
   1ab62:	d149                	beqz	a0,1aae4 <__swbuf_r+0x6e>
   1ab64:	54fd                	li	s1,-1
   1ab66:	bfbd                	j	1aae4 <__swbuf_r+0x6e>
   1ab68:	a5df50ef          	jal	ra,105c4 <__sinit>
   1ab6c:	b70d                	j	1aa8e <__swbuf_r+0x18>

000000000001ab6e <__swbuf>:
   1ab6e:	87aa                	mv	a5,a0
   1ab70:	6481b503          	ld	a0,1608(gp) # 1f740 <_impure_ptr>
   1ab74:	862e                	mv	a2,a1
   1ab76:	85be                	mv	a1,a5
   1ab78:	effff06f          	j	1aa76 <__swbuf_r>

000000000001ab7c <_wcrtomb_r>:
   1ab7c:	7179                	addi	sp,sp,-48
   1ab7e:	f022                	sd	s0,32(sp)
   1ab80:	ec26                	sd	s1,24(sp)
   1ab82:	f406                	sd	ra,40(sp)
   1ab84:	5381b783          	ld	a5,1336(gp) # 1f630 <__global_locale+0xe0>
   1ab88:	842a                	mv	s0,a0
   1ab8a:	84b6                	mv	s1,a3
   1ab8c:	c991                	beqz	a1,1aba0 <_wcrtomb_r+0x24>
   1ab8e:	9782                	jalr	a5
   1ab90:	57fd                	li	a5,-1
   1ab92:	00f50d63          	beq	a0,a5,1abac <_wcrtomb_r+0x30>
   1ab96:	70a2                	ld	ra,40(sp)
   1ab98:	7402                	ld	s0,32(sp)
   1ab9a:	64e2                	ld	s1,24(sp)
   1ab9c:	6145                	addi	sp,sp,48
   1ab9e:	8082                	ret
   1aba0:	4601                	li	a2,0
   1aba2:	858a                	mv	a1,sp
   1aba4:	9782                	jalr	a5
   1aba6:	57fd                	li	a5,-1
   1aba8:	fef517e3          	bne	a0,a5,1ab96 <_wcrtomb_r+0x1a>
   1abac:	0004a023          	sw	zero,0(s1)
   1abb0:	08a00793          	li	a5,138
   1abb4:	70a2                	ld	ra,40(sp)
   1abb6:	c01c                	sw	a5,0(s0)
   1abb8:	7402                	ld	s0,32(sp)
   1abba:	64e2                	ld	s1,24(sp)
   1abbc:	6145                	addi	sp,sp,48
   1abbe:	8082                	ret

000000000001abc0 <wcrtomb>:
   1abc0:	7179                	addi	sp,sp,-48
   1abc2:	f022                	sd	s0,32(sp)
   1abc4:	ec26                	sd	s1,24(sp)
   1abc6:	f406                	sd	ra,40(sp)
   1abc8:	6481b483          	ld	s1,1608(gp) # 1f740 <_impure_ptr>
   1abcc:	5381b783          	ld	a5,1336(gp) # 1f630 <__global_locale+0xe0>
   1abd0:	8432                	mv	s0,a2
   1abd2:	cd11                	beqz	a0,1abee <wcrtomb+0x2e>
   1abd4:	862e                	mv	a2,a1
   1abd6:	86a2                	mv	a3,s0
   1abd8:	85aa                	mv	a1,a0
   1abda:	8526                	mv	a0,s1
   1abdc:	9782                	jalr	a5
   1abde:	57fd                	li	a5,-1
   1abe0:	00f50f63          	beq	a0,a5,1abfe <wcrtomb+0x3e>
   1abe4:	70a2                	ld	ra,40(sp)
   1abe6:	7402                	ld	s0,32(sp)
   1abe8:	64e2                	ld	s1,24(sp)
   1abea:	6145                	addi	sp,sp,48
   1abec:	8082                	ret
   1abee:	86b2                	mv	a3,a2
   1abf0:	858a                	mv	a1,sp
   1abf2:	4601                	li	a2,0
   1abf4:	8526                	mv	a0,s1
   1abf6:	9782                	jalr	a5
   1abf8:	57fd                	li	a5,-1
   1abfa:	fef515e3          	bne	a0,a5,1abe4 <wcrtomb+0x24>
   1abfe:	00042023          	sw	zero,0(s0)
   1ac02:	70a2                	ld	ra,40(sp)
   1ac04:	7402                	ld	s0,32(sp)
   1ac06:	08a00793          	li	a5,138
   1ac0a:	c09c                	sw	a5,0(s1)
   1ac0c:	64e2                	ld	s1,24(sp)
   1ac0e:	6145                	addi	sp,sp,48
   1ac10:	8082                	ret

000000000001ac12 <_wctomb_r>:
   1ac12:	5381b783          	ld	a5,1336(gp) # 1f630 <__global_locale+0xe0>
   1ac16:	8782                	jr	a5

000000000001ac18 <__ascii_wctomb>:
   1ac18:	0006079b          	sext.w	a5,a2
   1ac1c:	cd91                	beqz	a1,1ac38 <__ascii_wctomb+0x20>
   1ac1e:	0ff00713          	li	a4,255
   1ac22:	00f76663          	bltu	a4,a5,1ac2e <__ascii_wctomb+0x16>
   1ac26:	00c58023          	sb	a2,0(a1)
   1ac2a:	4505                	li	a0,1
   1ac2c:	8082                	ret
   1ac2e:	08a00793          	li	a5,138
   1ac32:	c11c                	sw	a5,0(a0)
   1ac34:	557d                	li	a0,-1
   1ac36:	8082                	ret
   1ac38:	4501                	li	a0,0
   1ac3a:	8082                	ret

000000000001ac3c <abort>:
   1ac3c:	1141                	addi	sp,sp,-16
   1ac3e:	4519                	li	a0,6
   1ac40:	e406                	sd	ra,8(sp)
   1ac42:	1ae000ef          	jal	ra,1adf0 <raise>
   1ac46:	4505                	li	a0,1
   1ac48:	3c0000ef          	jal	ra,1b008 <_exit>

000000000001ac4c <_init_signal_r>:
   1ac4c:	51853783          	ld	a5,1304(a0)
   1ac50:	c399                	beqz	a5,1ac56 <_init_signal_r+0xa>
   1ac52:	4501                	li	a0,0
   1ac54:	8082                	ret
   1ac56:	1141                	addi	sp,sp,-16
   1ac58:	10000593          	li	a1,256
   1ac5c:	e022                	sd	s0,0(sp)
   1ac5e:	e406                	sd	ra,8(sp)
   1ac60:	842a                	mv	s0,a0
   1ac62:	b13f50ef          	jal	ra,10774 <_malloc_r>
   1ac66:	50a43c23          	sd	a0,1304(s0)
   1ac6a:	cd09                	beqz	a0,1ac84 <_init_signal_r+0x38>
   1ac6c:	10050793          	addi	a5,a0,256
   1ac70:	00053023          	sd	zero,0(a0)
   1ac74:	0521                	addi	a0,a0,8
   1ac76:	fef51de3          	bne	a0,a5,1ac70 <_init_signal_r+0x24>
   1ac7a:	4501                	li	a0,0
   1ac7c:	60a2                	ld	ra,8(sp)
   1ac7e:	6402                	ld	s0,0(sp)
   1ac80:	0141                	addi	sp,sp,16
   1ac82:	8082                	ret
   1ac84:	557d                	li	a0,-1
   1ac86:	bfdd                	j	1ac7c <_init_signal_r+0x30>

000000000001ac88 <_signal_r>:
   1ac88:	7179                	addi	sp,sp,-48
   1ac8a:	ec26                	sd	s1,24(sp)
   1ac8c:	f406                	sd	ra,40(sp)
   1ac8e:	f022                	sd	s0,32(sp)
   1ac90:	47fd                	li	a5,31
   1ac92:	84aa                	mv	s1,a0
   1ac94:	00b7ef63          	bltu	a5,a1,1acb2 <_signal_r+0x2a>
   1ac98:	51853703          	ld	a4,1304(a0)
   1ac9c:	842e                	mv	s0,a1
   1ac9e:	c315                	beqz	a4,1acc2 <_signal_r+0x3a>
   1aca0:	040e                	slli	s0,s0,0x3
   1aca2:	9722                	add	a4,a4,s0
   1aca4:	6308                	ld	a0,0(a4)
   1aca6:	e310                	sd	a2,0(a4)
   1aca8:	70a2                	ld	ra,40(sp)
   1acaa:	7402                	ld	s0,32(sp)
   1acac:	64e2                	ld	s1,24(sp)
   1acae:	6145                	addi	sp,sp,48
   1acb0:	8082                	ret
   1acb2:	70a2                	ld	ra,40(sp)
   1acb4:	7402                	ld	s0,32(sp)
   1acb6:	47d9                	li	a5,22
   1acb8:	c11c                	sw	a5,0(a0)
   1acba:	64e2                	ld	s1,24(sp)
   1acbc:	557d                	li	a0,-1
   1acbe:	6145                	addi	sp,sp,48
   1acc0:	8082                	ret
   1acc2:	10000593          	li	a1,256
   1acc6:	e432                	sd	a2,8(sp)
   1acc8:	aadf50ef          	jal	ra,10774 <_malloc_r>
   1accc:	50a4bc23          	sd	a0,1304(s1)
   1acd0:	872a                	mv	a4,a0
   1acd2:	c919                	beqz	a0,1ace8 <_signal_r+0x60>
   1acd4:	6622                	ld	a2,8(sp)
   1acd6:	87aa                	mv	a5,a0
   1acd8:	10050693          	addi	a3,a0,256
   1acdc:	0007b023          	sd	zero,0(a5)
   1ace0:	07a1                	addi	a5,a5,8
   1ace2:	fef69de3          	bne	a3,a5,1acdc <_signal_r+0x54>
   1ace6:	bf6d                	j	1aca0 <_signal_r+0x18>
   1ace8:	557d                	li	a0,-1
   1acea:	bf7d                	j	1aca8 <_signal_r+0x20>

000000000001acec <_raise_r>:
   1acec:	1101                	addi	sp,sp,-32
   1acee:	e426                	sd	s1,8(sp)
   1acf0:	ec06                	sd	ra,24(sp)
   1acf2:	e822                	sd	s0,16(sp)
   1acf4:	47fd                	li	a5,31
   1acf6:	84aa                	mv	s1,a0
   1acf8:	06b7e463          	bltu	a5,a1,1ad60 <_raise_r+0x74>
   1acfc:	51853783          	ld	a5,1304(a0)
   1ad00:	842e                	mv	s0,a1
   1ad02:	c795                	beqz	a5,1ad2e <_raise_r+0x42>
   1ad04:	00359713          	slli	a4,a1,0x3
   1ad08:	97ba                	add	a5,a5,a4
   1ad0a:	6398                	ld	a4,0(a5)
   1ad0c:	c30d                	beqz	a4,1ad2e <_raise_r+0x42>
   1ad0e:	4685                	li	a3,1
   1ad10:	04d70263          	beq	a4,a3,1ad54 <_raise_r+0x68>
   1ad14:	56fd                	li	a3,-1
   1ad16:	02d70763          	beq	a4,a3,1ad44 <_raise_r+0x58>
   1ad1a:	852e                	mv	a0,a1
   1ad1c:	0007b023          	sd	zero,0(a5)
   1ad20:	9702                	jalr	a4
   1ad22:	4501                	li	a0,0
   1ad24:	60e2                	ld	ra,24(sp)
   1ad26:	6442                	ld	s0,16(sp)
   1ad28:	64a2                	ld	s1,8(sp)
   1ad2a:	6105                	addi	sp,sp,32
   1ad2c:	8082                	ret
   1ad2e:	8526                	mv	a0,s1
   1ad30:	2aa000ef          	jal	ra,1afda <_getpid_r>
   1ad34:	8622                	mv	a2,s0
   1ad36:	6442                	ld	s0,16(sp)
   1ad38:	60e2                	ld	ra,24(sp)
   1ad3a:	85aa                	mv	a1,a0
   1ad3c:	8526                	mv	a0,s1
   1ad3e:	64a2                	ld	s1,8(sp)
   1ad40:	6105                	addi	sp,sp,32
   1ad42:	acb9                	j	1afa0 <_kill_r>
   1ad44:	60e2                	ld	ra,24(sp)
   1ad46:	6442                	ld	s0,16(sp)
   1ad48:	47d9                	li	a5,22
   1ad4a:	c11c                	sw	a5,0(a0)
   1ad4c:	64a2                	ld	s1,8(sp)
   1ad4e:	4505                	li	a0,1
   1ad50:	6105                	addi	sp,sp,32
   1ad52:	8082                	ret
   1ad54:	60e2                	ld	ra,24(sp)
   1ad56:	6442                	ld	s0,16(sp)
   1ad58:	64a2                	ld	s1,8(sp)
   1ad5a:	4501                	li	a0,0
   1ad5c:	6105                	addi	sp,sp,32
   1ad5e:	8082                	ret
   1ad60:	47d9                	li	a5,22
   1ad62:	c11c                	sw	a5,0(a0)
   1ad64:	557d                	li	a0,-1
   1ad66:	bf7d                	j	1ad24 <_raise_r+0x38>

000000000001ad68 <__sigtramp_r>:
   1ad68:	47fd                	li	a5,31
   1ad6a:	08b7e163          	bltu	a5,a1,1adec <__sigtramp_r+0x84>
   1ad6e:	51853703          	ld	a4,1304(a0)
   1ad72:	1101                	addi	sp,sp,-32
   1ad74:	e822                	sd	s0,16(sp)
   1ad76:	e426                	sd	s1,8(sp)
   1ad78:	ec06                	sd	ra,24(sp)
   1ad7a:	842e                	mv	s0,a1
   1ad7c:	84aa                	mv	s1,a0
   1ad7e:	cf05                	beqz	a4,1adb6 <__sigtramp_r+0x4e>
   1ad80:	00341793          	slli	a5,s0,0x3
   1ad84:	973e                	add	a4,a4,a5
   1ad86:	631c                	ld	a5,0(a4)
   1ad88:	c38d                	beqz	a5,1adaa <__sigtramp_r+0x42>
   1ad8a:	56fd                	li	a3,-1
   1ad8c:	04d78c63          	beq	a5,a3,1ade4 <__sigtramp_r+0x7c>
   1ad90:	4685                	li	a3,1
   1ad92:	04d78363          	beq	a5,a3,1add8 <__sigtramp_r+0x70>
   1ad96:	8522                	mv	a0,s0
   1ad98:	00073023          	sd	zero,0(a4)
   1ad9c:	9782                	jalr	a5
   1ad9e:	4501                	li	a0,0
   1ada0:	60e2                	ld	ra,24(sp)
   1ada2:	6442                	ld	s0,16(sp)
   1ada4:	64a2                	ld	s1,8(sp)
   1ada6:	6105                	addi	sp,sp,32
   1ada8:	8082                	ret
   1adaa:	60e2                	ld	ra,24(sp)
   1adac:	6442                	ld	s0,16(sp)
   1adae:	64a2                	ld	s1,8(sp)
   1adb0:	4505                	li	a0,1
   1adb2:	6105                	addi	sp,sp,32
   1adb4:	8082                	ret
   1adb6:	10000593          	li	a1,256
   1adba:	9bbf50ef          	jal	ra,10774 <_malloc_r>
   1adbe:	50a4bc23          	sd	a0,1304(s1)
   1adc2:	872a                	mv	a4,a0
   1adc4:	c115                	beqz	a0,1ade8 <__sigtramp_r+0x80>
   1adc6:	87aa                	mv	a5,a0
   1adc8:	10050693          	addi	a3,a0,256
   1adcc:	0007b023          	sd	zero,0(a5)
   1add0:	07a1                	addi	a5,a5,8
   1add2:	fed79de3          	bne	a5,a3,1adcc <__sigtramp_r+0x64>
   1add6:	b76d                	j	1ad80 <__sigtramp_r+0x18>
   1add8:	60e2                	ld	ra,24(sp)
   1adda:	6442                	ld	s0,16(sp)
   1addc:	64a2                	ld	s1,8(sp)
   1adde:	450d                	li	a0,3
   1ade0:	6105                	addi	sp,sp,32
   1ade2:	8082                	ret
   1ade4:	4509                	li	a0,2
   1ade6:	bf6d                	j	1ada0 <__sigtramp_r+0x38>
   1ade8:	557d                	li	a0,-1
   1adea:	bf5d                	j	1ada0 <__sigtramp_r+0x38>
   1adec:	557d                	li	a0,-1
   1adee:	8082                	ret

000000000001adf0 <raise>:
   1adf0:	1101                	addi	sp,sp,-32
   1adf2:	e426                	sd	s1,8(sp)
   1adf4:	ec06                	sd	ra,24(sp)
   1adf6:	e822                	sd	s0,16(sp)
   1adf8:	47fd                	li	a5,31
   1adfa:	6481b483          	ld	s1,1608(gp) # 1f740 <_impure_ptr>
   1adfe:	06a7e363          	bltu	a5,a0,1ae64 <raise+0x74>
   1ae02:	5184b783          	ld	a5,1304(s1)
   1ae06:	842a                	mv	s0,a0
   1ae08:	c78d                	beqz	a5,1ae32 <raise+0x42>
   1ae0a:	00351713          	slli	a4,a0,0x3
   1ae0e:	97ba                	add	a5,a5,a4
   1ae10:	6398                	ld	a4,0(a5)
   1ae12:	c305                	beqz	a4,1ae32 <raise+0x42>
   1ae14:	4685                	li	a3,1
   1ae16:	04d70163          	beq	a4,a3,1ae58 <raise+0x68>
   1ae1a:	56fd                	li	a3,-1
   1ae1c:	02d70663          	beq	a4,a3,1ae48 <raise+0x58>
   1ae20:	0007b023          	sd	zero,0(a5)
   1ae24:	9702                	jalr	a4
   1ae26:	4501                	li	a0,0
   1ae28:	60e2                	ld	ra,24(sp)
   1ae2a:	6442                	ld	s0,16(sp)
   1ae2c:	64a2                	ld	s1,8(sp)
   1ae2e:	6105                	addi	sp,sp,32
   1ae30:	8082                	ret
   1ae32:	8526                	mv	a0,s1
   1ae34:	1a6000ef          	jal	ra,1afda <_getpid_r>
   1ae38:	8622                	mv	a2,s0
   1ae3a:	6442                	ld	s0,16(sp)
   1ae3c:	60e2                	ld	ra,24(sp)
   1ae3e:	85aa                	mv	a1,a0
   1ae40:	8526                	mv	a0,s1
   1ae42:	64a2                	ld	s1,8(sp)
   1ae44:	6105                	addi	sp,sp,32
   1ae46:	aaa9                	j	1afa0 <_kill_r>
   1ae48:	60e2                	ld	ra,24(sp)
   1ae4a:	6442                	ld	s0,16(sp)
   1ae4c:	47d9                	li	a5,22
   1ae4e:	c09c                	sw	a5,0(s1)
   1ae50:	4505                	li	a0,1
   1ae52:	64a2                	ld	s1,8(sp)
   1ae54:	6105                	addi	sp,sp,32
   1ae56:	8082                	ret
   1ae58:	60e2                	ld	ra,24(sp)
   1ae5a:	6442                	ld	s0,16(sp)
   1ae5c:	64a2                	ld	s1,8(sp)
   1ae5e:	4501                	li	a0,0
   1ae60:	6105                	addi	sp,sp,32
   1ae62:	8082                	ret
   1ae64:	47d9                	li	a5,22
   1ae66:	c09c                	sw	a5,0(s1)
   1ae68:	557d                	li	a0,-1
   1ae6a:	bf7d                	j	1ae28 <raise+0x38>

000000000001ae6c <signal>:
   1ae6c:	1101                	addi	sp,sp,-32
   1ae6e:	e04a                	sd	s2,0(sp)
   1ae70:	ec06                	sd	ra,24(sp)
   1ae72:	e822                	sd	s0,16(sp)
   1ae74:	e426                	sd	s1,8(sp)
   1ae76:	47fd                	li	a5,31
   1ae78:	6481b903          	ld	s2,1608(gp) # 1f740 <_impure_ptr>
   1ae7c:	02a7e263          	bltu	a5,a0,1aea0 <signal+0x34>
   1ae80:	842a                	mv	s0,a0
   1ae82:	51893503          	ld	a0,1304(s2)
   1ae86:	84ae                	mv	s1,a1
   1ae88:	c515                	beqz	a0,1aeb4 <signal+0x48>
   1ae8a:	040e                	slli	s0,s0,0x3
   1ae8c:	008507b3          	add	a5,a0,s0
   1ae90:	6388                	ld	a0,0(a5)
   1ae92:	e384                	sd	s1,0(a5)
   1ae94:	60e2                	ld	ra,24(sp)
   1ae96:	6442                	ld	s0,16(sp)
   1ae98:	64a2                	ld	s1,8(sp)
   1ae9a:	6902                	ld	s2,0(sp)
   1ae9c:	6105                	addi	sp,sp,32
   1ae9e:	8082                	ret
   1aea0:	60e2                	ld	ra,24(sp)
   1aea2:	6442                	ld	s0,16(sp)
   1aea4:	47d9                	li	a5,22
   1aea6:	00f92023          	sw	a5,0(s2)
   1aeaa:	64a2                	ld	s1,8(sp)
   1aeac:	6902                	ld	s2,0(sp)
   1aeae:	557d                	li	a0,-1
   1aeb0:	6105                	addi	sp,sp,32
   1aeb2:	8082                	ret
   1aeb4:	10000593          	li	a1,256
   1aeb8:	854a                	mv	a0,s2
   1aeba:	8bbf50ef          	jal	ra,10774 <_malloc_r>
   1aebe:	50a93c23          	sd	a0,1304(s2)
   1aec2:	c911                	beqz	a0,1aed6 <signal+0x6a>
   1aec4:	87aa                	mv	a5,a0
   1aec6:	10050713          	addi	a4,a0,256
   1aeca:	0007b023          	sd	zero,0(a5)
   1aece:	07a1                	addi	a5,a5,8
   1aed0:	fef71de3          	bne	a4,a5,1aeca <signal+0x5e>
   1aed4:	bf5d                	j	1ae8a <signal+0x1e>
   1aed6:	557d                	li	a0,-1
   1aed8:	bf75                	j	1ae94 <signal+0x28>

000000000001aeda <_init_signal>:
   1aeda:	1141                	addi	sp,sp,-16
   1aedc:	e022                	sd	s0,0(sp)
   1aede:	6481b403          	ld	s0,1608(gp) # 1f740 <_impure_ptr>
   1aee2:	e406                	sd	ra,8(sp)
   1aee4:	51843783          	ld	a5,1304(s0)
   1aee8:	c791                	beqz	a5,1aef4 <_init_signal+0x1a>
   1aeea:	4501                	li	a0,0
   1aeec:	60a2                	ld	ra,8(sp)
   1aeee:	6402                	ld	s0,0(sp)
   1aef0:	0141                	addi	sp,sp,16
   1aef2:	8082                	ret
   1aef4:	10000593          	li	a1,256
   1aef8:	8522                	mv	a0,s0
   1aefa:	87bf50ef          	jal	ra,10774 <_malloc_r>
   1aefe:	50a43c23          	sd	a0,1304(s0)
   1af02:	c909                	beqz	a0,1af14 <_init_signal+0x3a>
   1af04:	10050793          	addi	a5,a0,256
   1af08:	00053023          	sd	zero,0(a0)
   1af0c:	0521                	addi	a0,a0,8
   1af0e:	fef51de3          	bne	a0,a5,1af08 <_init_signal+0x2e>
   1af12:	bfe1                	j	1aeea <_init_signal+0x10>
   1af14:	557d                	li	a0,-1
   1af16:	bfd9                	j	1aeec <_init_signal+0x12>

000000000001af18 <__sigtramp>:
   1af18:	1101                	addi	sp,sp,-32
   1af1a:	e426                	sd	s1,8(sp)
   1af1c:	ec06                	sd	ra,24(sp)
   1af1e:	e822                	sd	s0,16(sp)
   1af20:	47fd                	li	a5,31
   1af22:	6481b483          	ld	s1,1608(gp) # 1f740 <_impure_ptr>
   1af26:	06a7eb63          	bltu	a5,a0,1af9c <__sigtramp+0x84>
   1af2a:	5184b703          	ld	a4,1304(s1)
   1af2e:	842a                	mv	s0,a0
   1af30:	cf05                	beqz	a4,1af68 <__sigtramp+0x50>
   1af32:	00341793          	slli	a5,s0,0x3
   1af36:	973e                	add	a4,a4,a5
   1af38:	631c                	ld	a5,0(a4)
   1af3a:	c38d                	beqz	a5,1af5c <__sigtramp+0x44>
   1af3c:	56fd                	li	a3,-1
   1af3e:	04d78d63          	beq	a5,a3,1af98 <__sigtramp+0x80>
   1af42:	4685                	li	a3,1
   1af44:	04d78463          	beq	a5,a3,1af8c <__sigtramp+0x74>
   1af48:	8522                	mv	a0,s0
   1af4a:	00073023          	sd	zero,0(a4)
   1af4e:	9782                	jalr	a5
   1af50:	4501                	li	a0,0
   1af52:	60e2                	ld	ra,24(sp)
   1af54:	6442                	ld	s0,16(sp)
   1af56:	64a2                	ld	s1,8(sp)
   1af58:	6105                	addi	sp,sp,32
   1af5a:	8082                	ret
   1af5c:	60e2                	ld	ra,24(sp)
   1af5e:	6442                	ld	s0,16(sp)
   1af60:	64a2                	ld	s1,8(sp)
   1af62:	4505                	li	a0,1
   1af64:	6105                	addi	sp,sp,32
   1af66:	8082                	ret
   1af68:	10000593          	li	a1,256
   1af6c:	8526                	mv	a0,s1
   1af6e:	807f50ef          	jal	ra,10774 <_malloc_r>
   1af72:	50a4bc23          	sd	a0,1304(s1)
   1af76:	872a                	mv	a4,a0
   1af78:	c115                	beqz	a0,1af9c <__sigtramp+0x84>
   1af7a:	87aa                	mv	a5,a0
   1af7c:	10050693          	addi	a3,a0,256
   1af80:	0007b023          	sd	zero,0(a5)
   1af84:	07a1                	addi	a5,a5,8
   1af86:	fed79de3          	bne	a5,a3,1af80 <__sigtramp+0x68>
   1af8a:	b765                	j	1af32 <__sigtramp+0x1a>
   1af8c:	60e2                	ld	ra,24(sp)
   1af8e:	6442                	ld	s0,16(sp)
   1af90:	64a2                	ld	s1,8(sp)
   1af92:	450d                	li	a0,3
   1af94:	6105                	addi	sp,sp,32
   1af96:	8082                	ret
   1af98:	4509                	li	a0,2
   1af9a:	bf65                	j	1af52 <__sigtramp+0x3a>
   1af9c:	557d                	li	a0,-1
   1af9e:	bf55                	j	1af52 <__sigtramp+0x3a>

000000000001afa0 <_kill_r>:
   1afa0:	1101                	addi	sp,sp,-32
   1afa2:	872e                	mv	a4,a1
   1afa4:	e822                	sd	s0,16(sp)
   1afa6:	e426                	sd	s1,8(sp)
   1afa8:	842a                	mv	s0,a0
   1afaa:	85b2                	mv	a1,a2
   1afac:	853a                	mv	a0,a4
   1afae:	ec06                	sd	ra,24(sp)
   1afb0:	6801a423          	sw	zero,1672(gp) # 1f780 <errno>
   1afb4:	0e0000ef          	jal	ra,1b094 <_kill>
   1afb8:	57fd                	li	a5,-1
   1afba:	00f50763          	beq	a0,a5,1afc8 <_kill_r+0x28>
   1afbe:	60e2                	ld	ra,24(sp)
   1afc0:	6442                	ld	s0,16(sp)
   1afc2:	64a2                	ld	s1,8(sp)
   1afc4:	6105                	addi	sp,sp,32
   1afc6:	8082                	ret
   1afc8:	6881a783          	lw	a5,1672(gp) # 1f780 <errno>
   1afcc:	dbed                	beqz	a5,1afbe <_kill_r+0x1e>
   1afce:	60e2                	ld	ra,24(sp)
   1afd0:	c01c                	sw	a5,0(s0)
   1afd2:	6442                	ld	s0,16(sp)
   1afd4:	64a2                	ld	s1,8(sp)
   1afd6:	6105                	addi	sp,sp,32
   1afd8:	8082                	ret

000000000001afda <_getpid_r>:
   1afda:	a841                	j	1b06a <_getpid>

000000000001afdc <_close>:
   1afdc:	1141                	addi	sp,sp,-16
   1afde:	e406                	sd	ra,8(sp)
   1afe0:	e022                	sd	s0,0(sp)
   1afe2:	03900893          	li	a7,57
   1afe6:	00000073          	ecall
   1afea:	842a                	mv	s0,a0
   1afec:	00054763          	bltz	a0,1affa <_close+0x1e>
   1aff0:	2501                	sext.w	a0,a0
   1aff2:	60a2                	ld	ra,8(sp)
   1aff4:	6402                	ld	s0,0(sp)
   1aff6:	0141                	addi	sp,sp,16
   1aff8:	8082                	ret
   1affa:	abbfe0ef          	jal	ra,19ab4 <__errno>
   1affe:	4080043b          	negw	s0,s0
   1b002:	c100                	sw	s0,0(a0)
   1b004:	557d                	li	a0,-1
   1b006:	b7f5                	j	1aff2 <_close+0x16>

000000000001b008 <_exit>:
   1b008:	05d00893          	li	a7,93
   1b00c:	00000073          	ecall
   1b010:	00054363          	bltz	a0,1b016 <_exit+0xe>
   1b014:	a001                	j	1b014 <_exit+0xc>
   1b016:	1141                	addi	sp,sp,-16
   1b018:	e022                	sd	s0,0(sp)
   1b01a:	842a                	mv	s0,a0
   1b01c:	e406                	sd	ra,8(sp)
   1b01e:	4080043b          	negw	s0,s0
   1b022:	a93fe0ef          	jal	ra,19ab4 <__errno>
   1b026:	c100                	sw	s0,0(a0)
   1b028:	a001                	j	1b028 <_exit+0x20>

000000000001b02a <_fstat>:
   1b02a:	7135                	addi	sp,sp,-160
   1b02c:	e526                	sd	s1,136(sp)
   1b02e:	ed06                	sd	ra,152(sp)
   1b030:	84ae                	mv	s1,a1
   1b032:	e922                	sd	s0,144(sp)
   1b034:	05000893          	li	a7,80
   1b038:	858a                	mv	a1,sp
   1b03a:	00000073          	ecall
   1b03e:	842a                	mv	s0,a0
   1b040:	00054e63          	bltz	a0,1b05c <_fstat+0x32>
   1b044:	0005041b          	sext.w	s0,a0
   1b048:	8526                	mv	a0,s1
   1b04a:	858a                	mv	a1,sp
   1b04c:	130000ef          	jal	ra,1b17c <_conv_stat>
   1b050:	60ea                	ld	ra,152(sp)
   1b052:	8522                	mv	a0,s0
   1b054:	644a                	ld	s0,144(sp)
   1b056:	64aa                	ld	s1,136(sp)
   1b058:	610d                	addi	sp,sp,160
   1b05a:	8082                	ret
   1b05c:	4080043b          	negw	s0,s0
   1b060:	a55fe0ef          	jal	ra,19ab4 <__errno>
   1b064:	c100                	sw	s0,0(a0)
   1b066:	547d                	li	s0,-1
   1b068:	b7c5                	j	1b048 <_fstat+0x1e>

000000000001b06a <_getpid>:
   1b06a:	4505                	li	a0,1
   1b06c:	8082                	ret

000000000001b06e <_isatty>:
   1b06e:	7119                	addi	sp,sp,-128
   1b070:	002c                	addi	a1,sp,8
   1b072:	fc86                	sd	ra,120(sp)
   1b074:	fb7ff0ef          	jal	ra,1b02a <_fstat>
   1b078:	57fd                	li	a5,-1
   1b07a:	00f50963          	beq	a0,a5,1b08c <_isatty+0x1e>
   1b07e:	4532                	lw	a0,12(sp)
   1b080:	70e6                	ld	ra,120(sp)
   1b082:	40d5551b          	sraiw	a0,a0,0xd
   1b086:	8905                	andi	a0,a0,1
   1b088:	6109                	addi	sp,sp,128
   1b08a:	8082                	ret
   1b08c:	70e6                	ld	ra,120(sp)
   1b08e:	4501                	li	a0,0
   1b090:	6109                	addi	sp,sp,128
   1b092:	8082                	ret

000000000001b094 <_kill>:
   1b094:	1141                	addi	sp,sp,-16
   1b096:	e406                	sd	ra,8(sp)
   1b098:	a1dfe0ef          	jal	ra,19ab4 <__errno>
   1b09c:	60a2                	ld	ra,8(sp)
   1b09e:	47d9                	li	a5,22
   1b0a0:	c11c                	sw	a5,0(a0)
   1b0a2:	557d                	li	a0,-1
   1b0a4:	0141                	addi	sp,sp,16
   1b0a6:	8082                	ret

000000000001b0a8 <_lseek>:
   1b0a8:	1141                	addi	sp,sp,-16
   1b0aa:	e406                	sd	ra,8(sp)
   1b0ac:	e022                	sd	s0,0(sp)
   1b0ae:	03e00893          	li	a7,62
   1b0b2:	00000073          	ecall
   1b0b6:	842a                	mv	s0,a0
   1b0b8:	00054763          	bltz	a0,1b0c6 <_lseek+0x1e>
   1b0bc:	60a2                	ld	ra,8(sp)
   1b0be:	8522                	mv	a0,s0
   1b0c0:	6402                	ld	s0,0(sp)
   1b0c2:	0141                	addi	sp,sp,16
   1b0c4:	8082                	ret
   1b0c6:	4080043b          	negw	s0,s0
   1b0ca:	9ebfe0ef          	jal	ra,19ab4 <__errno>
   1b0ce:	c100                	sw	s0,0(a0)
   1b0d0:	547d                	li	s0,-1
   1b0d2:	b7ed                	j	1b0bc <_lseek+0x14>

000000000001b0d4 <_read>:
   1b0d4:	1141                	addi	sp,sp,-16
   1b0d6:	e406                	sd	ra,8(sp)
   1b0d8:	e022                	sd	s0,0(sp)
   1b0da:	03f00893          	li	a7,63
   1b0de:	00000073          	ecall
   1b0e2:	842a                	mv	s0,a0
   1b0e4:	00054763          	bltz	a0,1b0f2 <_read+0x1e>
   1b0e8:	60a2                	ld	ra,8(sp)
   1b0ea:	8522                	mv	a0,s0
   1b0ec:	6402                	ld	s0,0(sp)
   1b0ee:	0141                	addi	sp,sp,16
   1b0f0:	8082                	ret
   1b0f2:	4080043b          	negw	s0,s0
   1b0f6:	9bffe0ef          	jal	ra,19ab4 <__errno>
   1b0fa:	c100                	sw	s0,0(a0)
   1b0fc:	547d                	li	s0,-1
   1b0fe:	b7ed                	j	1b0e8 <_read+0x14>

000000000001b100 <_sbrk>:
   1b100:	69818693          	addi	a3,gp,1688 # 1f790 <heap_end.0>
   1b104:	6298                	ld	a4,0(a3)
   1b106:	1141                	addi	sp,sp,-16
   1b108:	e406                	sd	ra,8(sp)
   1b10a:	87aa                	mv	a5,a0
   1b10c:	eb19                	bnez	a4,1b122 <_sbrk+0x22>
   1b10e:	0d600893          	li	a7,214
   1b112:	4501                	li	a0,0
   1b114:	00000073          	ecall
   1b118:	567d                	li	a2,-1
   1b11a:	872a                	mv	a4,a0
   1b11c:	02c50263          	beq	a0,a2,1b140 <_sbrk+0x40>
   1b120:	e288                	sd	a0,0(a3)
   1b122:	0d600893          	li	a7,214
   1b126:	00e78533          	add	a0,a5,a4
   1b12a:	00000073          	ecall
   1b12e:	6298                	ld	a4,0(a3)
   1b130:	97ba                	add	a5,a5,a4
   1b132:	00f51763          	bne	a0,a5,1b140 <_sbrk+0x40>
   1b136:	60a2                	ld	ra,8(sp)
   1b138:	e288                	sd	a0,0(a3)
   1b13a:	853a                	mv	a0,a4
   1b13c:	0141                	addi	sp,sp,16
   1b13e:	8082                	ret
   1b140:	975fe0ef          	jal	ra,19ab4 <__errno>
   1b144:	60a2                	ld	ra,8(sp)
   1b146:	47b1                	li	a5,12
   1b148:	c11c                	sw	a5,0(a0)
   1b14a:	557d                	li	a0,-1
   1b14c:	0141                	addi	sp,sp,16
   1b14e:	8082                	ret

000000000001b150 <_write>:
   1b150:	1141                	addi	sp,sp,-16
   1b152:	e406                	sd	ra,8(sp)
   1b154:	e022                	sd	s0,0(sp)
   1b156:	04000893          	li	a7,64
   1b15a:	00000073          	ecall
   1b15e:	842a                	mv	s0,a0
   1b160:	00054763          	bltz	a0,1b16e <_write+0x1e>
   1b164:	60a2                	ld	ra,8(sp)
   1b166:	8522                	mv	a0,s0
   1b168:	6402                	ld	s0,0(sp)
   1b16a:	0141                	addi	sp,sp,16
   1b16c:	8082                	ret
   1b16e:	4080043b          	negw	s0,s0
   1b172:	943fe0ef          	jal	ra,19ab4 <__errno>
   1b176:	c100                	sw	s0,0(a0)
   1b178:	547d                	li	s0,-1
   1b17a:	b7ed                	j	1b164 <_write+0x14>

000000000001b17c <_conv_stat>:
   1b17c:	0005b383          	ld	t2,0(a1)
   1b180:	0085b283          	ld	t0,8(a1)
   1b184:	0105af83          	lw	t6,16(a1)
   1b188:	0145af03          	lw	t5,20(a1)
   1b18c:	0185ae83          	lw	t4,24(a1)
   1b190:	01c5ae03          	lw	t3,28(a1)
   1b194:	0205b303          	ld	t1,32(a1)
   1b198:	0305b883          	ld	a7,48(a1)
   1b19c:	0405b803          	ld	a6,64(a1)
   1b1a0:	5d90                	lw	a2,56(a1)
   1b1a2:	65b4                	ld	a3,72(a1)
   1b1a4:	6db8                	ld	a4,88(a1)
   1b1a6:	75bc                	ld	a5,104(a1)
   1b1a8:	00751023          	sh	t2,0(a0)
   1b1ac:	00551123          	sh	t0,2(a0)
   1b1b0:	01f52223          	sw	t6,4(a0)
   1b1b4:	01e51423          	sh	t5,8(a0)
   1b1b8:	01d51523          	sh	t4,10(a0)
   1b1bc:	01c51623          	sh	t3,12(a0)
   1b1c0:	00651723          	sh	t1,14(a0)
   1b1c4:	01153823          	sd	a7,16(a0)
   1b1c8:	05053823          	sd	a6,80(a0)
   1b1cc:	e530                	sd	a2,72(a0)
   1b1ce:	ed14                	sd	a3,24(a0)
   1b1d0:	f518                	sd	a4,40(a0)
   1b1d2:	fd1c                	sd	a5,56(a0)
   1b1d4:	8082                	ret

000000000001b1d6 <__eqtf2>:
   1b1d6:	882a                	mv	a6,a0
   1b1d8:	002027f3          	frrm	a5
   1b1dc:	6521                	lui	a0,0x8
   1b1de:	0305d893          	srli	a7,a1,0x30
   1b1e2:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1b1e4:	57fd                	li	a5,-1
   1b1e6:	83c1                	srli	a5,a5,0x10
   1b1e8:	0306d313          	srli	t1,a3,0x30
   1b1ec:	00a8f8b3          	and	a7,a7,a0
   1b1f0:	00f5f733          	and	a4,a1,a5
   1b1f4:	00a37333          	and	t1,t1,a0
   1b1f8:	8ff5                	and	a5,a5,a3
   1b1fa:	91fd                	srli	a1,a1,0x3f
   1b1fc:	92fd                	srli	a3,a3,0x3f
   1b1fe:	00a89863          	bne	a7,a0,1b20e <__eqtf2+0x38>
   1b202:	01076533          	or	a0,a4,a6
   1b206:	e10d                	bnez	a0,1b228 <__eqtf2+0x52>
   1b208:	03131f63          	bne	t1,a7,1b246 <__eqtf2+0x70>
   1b20c:	a019                	j	1b212 <__eqtf2+0x3c>
   1b20e:	02a31e63          	bne	t1,a0,1b24a <__eqtf2+0x74>
   1b212:	00c7e533          	or	a0,a5,a2
   1b216:	c915                	beqz	a0,1b24a <__eqtf2+0x74>
   1b218:	66a1                	lui	a3,0x8
   1b21a:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1b21c:	00d89f63          	bne	a7,a3,1b23a <__eqtf2+0x64>
   1b220:	01076833          	or	a6,a4,a6
   1b224:	00080b63          	beqz	a6,1b23a <__eqtf2+0x64>
   1b228:	933d                	srli	a4,a4,0x2f
   1b22a:	c331                	beqz	a4,1b26e <__eqtf2+0x98>
   1b22c:	6721                	lui	a4,0x8
   1b22e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b230:	4505                	li	a0,1
   1b232:	00e31b63          	bne	t1,a4,1b248 <__eqtf2+0x72>
   1b236:	8e5d                	or	a2,a2,a5
   1b238:	ca01                	beqz	a2,1b248 <__eqtf2+0x72>
   1b23a:	93bd                	srli	a5,a5,0x2f
   1b23c:	0017c793          	xori	a5,a5,1
   1b240:	00479713          	slli	a4,a5,0x4
   1b244:	e795                	bnez	a5,1b270 <__eqtf2+0x9a>
   1b246:	4505                	li	a0,1
   1b248:	8082                	ret
   1b24a:	4505                	li	a0,1
   1b24c:	fe689ee3          	bne	a7,t1,1b248 <__eqtf2+0x72>
   1b250:	fef71ce3          	bne	a4,a5,1b248 <__eqtf2+0x72>
   1b254:	fec81ae3          	bne	a6,a2,1b248 <__eqtf2+0x72>
   1b258:	00d58963          	beq	a1,a3,1b26a <__eqtf2+0x94>
   1b25c:	fe0896e3          	bnez	a7,1b248 <__eqtf2+0x72>
   1b260:	01076733          	or	a4,a4,a6
   1b264:	00e03533          	snez	a0,a4
   1b268:	8082                	ret
   1b26a:	4501                	li	a0,0
   1b26c:	8082                	ret
   1b26e:	4741                	li	a4,16
   1b270:	00172073          	csrs	fflags,a4
   1b274:	bfc9                	j	1b246 <__eqtf2+0x70>

000000000001b276 <__getf2>:
   1b276:	88aa                	mv	a7,a0
   1b278:	002027f3          	frrm	a5
   1b27c:	6321                	lui	t1,0x8
   1b27e:	137d                	addi	t1,t1,-1 # 7fff <exit-0x80e9>
   1b280:	57fd                	li	a5,-1
   1b282:	0305d813          	srli	a6,a1,0x30
   1b286:	83c1                	srli	a5,a5,0x10
   1b288:	0306d713          	srli	a4,a3,0x30
   1b28c:	00687833          	and	a6,a6,t1
   1b290:	00f5fe33          	and	t3,a1,a5
   1b294:	03f5d513          	srli	a0,a1,0x3f
   1b298:	8ff5                	and	a5,a5,a3
   1b29a:	00677733          	and	a4,a4,t1
   1b29e:	92fd                	srli	a3,a3,0x3f
   1b2a0:	00681963          	bne	a6,t1,1b2b2 <__getf2+0x3c>
   1b2a4:	011e65b3          	or	a1,t3,a7
   1b2a8:	c5ad                	beqz	a1,1b312 <__getf2+0x9c>
   1b2aa:	00186073          	csrsi	fflags,16
   1b2ae:	5579                	li	a0,-2
   1b2b0:	8082                	ret
   1b2b2:	00671563          	bne	a4,t1,1b2bc <__getf2+0x46>
   1b2b6:	00c7e5b3          	or	a1,a5,a2
   1b2ba:	f9e5                	bnez	a1,1b2aa <__getf2+0x34>
   1b2bc:	04081d63          	bnez	a6,1b316 <__getf2+0xa0>
   1b2c0:	011e65b3          	or	a1,t3,a7
   1b2c4:	0015b593          	seqz	a1,a1
   1b2c8:	eb0d                	bnez	a4,1b2fa <__getf2+0x84>
   1b2ca:	00c7e333          	or	t1,a5,a2
   1b2ce:	02031663          	bnez	t1,1b2fa <__getf2+0x84>
   1b2d2:	e185                	bnez	a1,1b2f2 <__getf2+0x7c>
   1b2d4:	c10d                	beqz	a0,1b2f6 <__getf2+0x80>
   1b2d6:	557d                	li	a0,-1
   1b2d8:	8082                	ret
   1b2da:	557d                	li	a0,-1
   1b2dc:	c69d                	beqz	a3,1b30a <__getf2+0x94>
   1b2de:	8536                	mv	a0,a3
   1b2e0:	8082                	ret
   1b2e2:	ffc7e9e3          	bltu	a5,t3,1b2d4 <__getf2+0x5e>
   1b2e6:	02fe1363          	bne	t3,a5,1b30c <__getf2+0x96>
   1b2ea:	ff1665e3          	bltu	a2,a7,1b2d4 <__getf2+0x5e>
   1b2ee:	00c8ed63          	bltu	a7,a2,1b308 <__getf2+0x92>
   1b2f2:	4501                	li	a0,0
   1b2f4:	8082                	ret
   1b2f6:	4505                	li	a0,1
   1b2f8:	8082                	ret
   1b2fa:	f1e5                	bnez	a1,1b2da <__getf2+0x64>
   1b2fc:	fcd51ce3          	bne	a0,a3,1b2d4 <__getf2+0x5e>
   1b300:	fd074ae3          	blt	a4,a6,1b2d4 <__getf2+0x5e>
   1b304:	fce85fe3          	bge	a6,a4,1b2e2 <__getf2+0x6c>
   1b308:	d579                	beqz	a0,1b2d6 <__getf2+0x60>
   1b30a:	8082                	ret
   1b30c:	fefe6ee3          	bltu	t3,a5,1b308 <__getf2+0x92>
   1b310:	b7cd                	j	1b2f2 <__getf2+0x7c>
   1b312:	fb0702e3          	beq	a4,a6,1b2b6 <__getf2+0x40>
   1b316:	f37d                	bnez	a4,1b2fc <__getf2+0x86>
   1b318:	4581                	li	a1,0
   1b31a:	bf45                	j	1b2ca <__getf2+0x54>

000000000001b31c <__letf2>:
   1b31c:	88aa                	mv	a7,a0
   1b31e:	002027f3          	frrm	a5
   1b322:	6321                	lui	t1,0x8
   1b324:	137d                	addi	t1,t1,-1 # 7fff <exit-0x80e9>
   1b326:	57fd                	li	a5,-1
   1b328:	0305d813          	srli	a6,a1,0x30
   1b32c:	83c1                	srli	a5,a5,0x10
   1b32e:	0306d713          	srli	a4,a3,0x30
   1b332:	00687833          	and	a6,a6,t1
   1b336:	00f5fe33          	and	t3,a1,a5
   1b33a:	03f5d513          	srli	a0,a1,0x3f
   1b33e:	8ff5                	and	a5,a5,a3
   1b340:	00677733          	and	a4,a4,t1
   1b344:	92fd                	srli	a3,a3,0x3f
   1b346:	00681963          	bne	a6,t1,1b358 <__letf2+0x3c>
   1b34a:	011e65b3          	or	a1,t3,a7
   1b34e:	c5ad                	beqz	a1,1b3b8 <__letf2+0x9c>
   1b350:	00186073          	csrsi	fflags,16
   1b354:	4509                	li	a0,2
   1b356:	8082                	ret
   1b358:	00671563          	bne	a4,t1,1b362 <__letf2+0x46>
   1b35c:	00c7e5b3          	or	a1,a5,a2
   1b360:	f9e5                	bnez	a1,1b350 <__letf2+0x34>
   1b362:	04081d63          	bnez	a6,1b3bc <__letf2+0xa0>
   1b366:	011e65b3          	or	a1,t3,a7
   1b36a:	0015b593          	seqz	a1,a1
   1b36e:	eb0d                	bnez	a4,1b3a0 <__letf2+0x84>
   1b370:	00c7e333          	or	t1,a5,a2
   1b374:	02031663          	bnez	t1,1b3a0 <__letf2+0x84>
   1b378:	e185                	bnez	a1,1b398 <__letf2+0x7c>
   1b37a:	c10d                	beqz	a0,1b39c <__letf2+0x80>
   1b37c:	557d                	li	a0,-1
   1b37e:	8082                	ret
   1b380:	557d                	li	a0,-1
   1b382:	c69d                	beqz	a3,1b3b0 <__letf2+0x94>
   1b384:	8536                	mv	a0,a3
   1b386:	8082                	ret
   1b388:	ffc7e9e3          	bltu	a5,t3,1b37a <__letf2+0x5e>
   1b38c:	02fe1363          	bne	t3,a5,1b3b2 <__letf2+0x96>
   1b390:	ff1665e3          	bltu	a2,a7,1b37a <__letf2+0x5e>
   1b394:	00c8ed63          	bltu	a7,a2,1b3ae <__letf2+0x92>
   1b398:	4501                	li	a0,0
   1b39a:	8082                	ret
   1b39c:	4505                	li	a0,1
   1b39e:	8082                	ret
   1b3a0:	f1e5                	bnez	a1,1b380 <__letf2+0x64>
   1b3a2:	fcd51ce3          	bne	a0,a3,1b37a <__letf2+0x5e>
   1b3a6:	fd074ae3          	blt	a4,a6,1b37a <__letf2+0x5e>
   1b3aa:	fce85fe3          	bge	a6,a4,1b388 <__letf2+0x6c>
   1b3ae:	d579                	beqz	a0,1b37c <__letf2+0x60>
   1b3b0:	8082                	ret
   1b3b2:	fefe6ee3          	bltu	t3,a5,1b3ae <__letf2+0x92>
   1b3b6:	b7cd                	j	1b398 <__letf2+0x7c>
   1b3b8:	fb0702e3          	beq	a4,a6,1b35c <__letf2+0x40>
   1b3bc:	f37d                	bnez	a4,1b3a2 <__letf2+0x86>
   1b3be:	4581                	li	a1,0
   1b3c0:	bf45                	j	1b370 <__letf2+0x54>

000000000001b3c2 <__multf3>:
   1b3c2:	711d                	addi	sp,sp,-96
   1b3c4:	e8a2                	sd	s0,80(sp)
   1b3c6:	f456                	sd	s5,40(sp)
   1b3c8:	e862                	sd	s8,16(sp)
   1b3ca:	ec86                	sd	ra,88(sp)
   1b3cc:	e4a6                	sd	s1,72(sp)
   1b3ce:	e0ca                	sd	s2,64(sp)
   1b3d0:	fc4e                	sd	s3,56(sp)
   1b3d2:	f852                	sd	s4,48(sp)
   1b3d4:	f05a                	sd	s6,32(sp)
   1b3d6:	ec5e                	sd	s7,24(sp)
   1b3d8:	e466                	sd	s9,8(sp)
   1b3da:	842a                	mv	s0,a0
   1b3dc:	8c32                	mv	s8,a2
   1b3de:	8ab6                	mv	s5,a3
   1b3e0:	00202973          	frrm	s2
   1b3e4:	6721                	lui	a4,0x8
   1b3e6:	0305d793          	srli	a5,a1,0x30
   1b3ea:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b3ec:	01059993          	slli	s3,a1,0x10
   1b3f0:	8ff9                	and	a5,a5,a4
   1b3f2:	2901                	sext.w	s2,s2
   1b3f4:	0109d993          	srli	s3,s3,0x10
   1b3f8:	03f5db13          	srli	s6,a1,0x3f
   1b3fc:	c795                	beqz	a5,1b428 <__multf3+0x66>
   1b3fe:	00078b9b          	sext.w	s7,a5
   1b402:	08e78463          	beq	a5,a4,1b48a <__multf3+0xc8>
   1b406:	098e                	slli	s3,s3,0x3
   1b408:	03d55713          	srli	a4,a0,0x3d
   1b40c:	01376733          	or	a4,a4,s3
   1b410:	7bf1                	lui	s7,0xffffc
   1b412:	4985                	li	s3,1
   1b414:	19ce                	slli	s3,s3,0x33
   1b416:	0b85                	addi	s7,s7,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdc709>
   1b418:	013769b3          	or	s3,a4,s3
   1b41c:	00351a13          	slli	s4,a0,0x3
   1b420:	9bbe                	add	s7,s7,a5
   1b422:	4c81                	li	s9,0
   1b424:	4481                	li	s1,0
   1b426:	a8b5                	j	1b4a2 <__multf3+0xe0>
   1b428:	00a9ea33          	or	s4,s3,a0
   1b42c:	2c0a0263          	beqz	s4,1b6f0 <__multf3+0x32e>
   1b430:	04098263          	beqz	s3,1b474 <__multf3+0xb2>
   1b434:	854e                	mv	a0,s3
   1b436:	20a010ef          	jal	ra,1c640 <__clzdi2>
   1b43a:	0005079b          	sext.w	a5,a0
   1b43e:	ff178693          	addi	a3,a5,-15
   1b442:	03c00613          	li	a2,60
   1b446:	0006871b          	sext.w	a4,a3
   1b44a:	02d64a63          	blt	a2,a3,1b47e <__multf3+0xbc>
   1b44e:	03d00693          	li	a3,61
   1b452:	00370a1b          	addiw	s4,a4,3
   1b456:	40e6873b          	subw	a4,a3,a4
   1b45a:	014999b3          	sll	s3,s3,s4
   1b45e:	00e45733          	srl	a4,s0,a4
   1b462:	013769b3          	or	s3,a4,s3
   1b466:	01441a33          	sll	s4,s0,s4
   1b46a:	7bf1                	lui	s7,0xffffc
   1b46c:	0bc5                	addi	s7,s7,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc719>
   1b46e:	40fb8bb3          	sub	s7,s7,a5
   1b472:	bf45                	j	1b422 <__multf3+0x60>
   1b474:	1cc010ef          	jal	ra,1c640 <__clzdi2>
   1b478:	0405079b          	addiw	a5,a0,64
   1b47c:	b7c9                	j	1b43e <__multf3+0x7c>
   1b47e:	fc37071b          	addiw	a4,a4,-61
   1b482:	00e419b3          	sll	s3,s0,a4
   1b486:	4a01                	li	s4,0
   1b488:	b7cd                	j	1b46a <__multf3+0xa8>
   1b48a:	00a9ea33          	or	s4,s3,a0
   1b48e:	260a0563          	beqz	s4,1b6f8 <__multf3+0x336>
   1b492:	02f9d493          	srli	s1,s3,0x2f
   1b496:	0014c493          	xori	s1,s1,1
   1b49a:	8885                	andi	s1,s1,1
   1b49c:	0492                	slli	s1,s1,0x4
   1b49e:	8a2a                	mv	s4,a0
   1b4a0:	4c8d                	li	s9,3
   1b4a2:	66a1                	lui	a3,0x8
   1b4a4:	030ad613          	srli	a2,s5,0x30
   1b4a8:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1b4aa:	010a9413          	slli	s0,s5,0x10
   1b4ae:	8e75                	and	a2,a2,a3
   1b4b0:	87e2                	mv	a5,s8
   1b4b2:	8041                	srli	s0,s0,0x10
   1b4b4:	03fada93          	srli	s5,s5,0x3f
   1b4b8:	24060363          	beqz	a2,1b6fe <__multf3+0x33c>
   1b4bc:	0006071b          	sext.w	a4,a2
   1b4c0:	28d60c63          	beq	a2,a3,1b758 <__multf3+0x396>
   1b4c4:	040e                	slli	s0,s0,0x3
   1b4c6:	03dc5713          	srli	a4,s8,0x3d
   1b4ca:	8f41                	or	a4,a4,s0
   1b4cc:	4405                	li	s0,1
   1b4ce:	144e                	slli	s0,s0,0x33
   1b4d0:	8c59                	or	s0,s0,a4
   1b4d2:	7771                	lui	a4,0xffffc
   1b4d4:	0705                	addi	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdc709>
   1b4d6:	003c1793          	slli	a5,s8,0x3
   1b4da:	9732                	add	a4,a4,a2
   1b4dc:	4881                	li	a7,0
   1b4de:	017706b3          	add	a3,a4,s7
   1b4e2:	002c9713          	slli	a4,s9,0x2
   1b4e6:	01176733          	or	a4,a4,a7
   1b4ea:	45a9                	li	a1,10
   1b4ec:	015b4633          	xor	a2,s6,s5
   1b4f0:	00168813          	addi	a6,a3,1
   1b4f4:	2ce5c163          	blt	a1,a4,1b7b6 <__multf3+0x3f4>
   1b4f8:	4589                	li	a1,2
   1b4fa:	28e5c363          	blt	a1,a4,1b780 <__multf3+0x3be>
   1b4fe:	177d                	addi	a4,a4,-1
   1b500:	4585                	li	a1,1
   1b502:	28e5fe63          	bgeu	a1,a4,1b79e <__multf3+0x3dc>
   1b506:	577d                	li	a4,-1
   1b508:	9301                	srli	a4,a4,0x20
   1b50a:	014983b3          	add	t2,s3,s4
   1b50e:	00878f33          	add	t5,a5,s0
   1b512:	020a5593          	srli	a1,s4,0x20
   1b516:	0207d513          	srli	a0,a5,0x20
   1b51a:	0143bfb3          	sltu	t6,t2,s4
   1b51e:	00ff32b3          	sltu	t0,t5,a5
   1b522:	00ea7a33          	and	s4,s4,a4
   1b526:	8ff9                	and	a5,a5,a4
   1b528:	034788b3          	mul	a7,a5,s4
   1b52c:	8e7e                	mv	t3,t6
   1b52e:	8316                	mv	t1,t0
   1b530:	02a58733          	mul	a4,a1,a0
   1b534:	02f587b3          	mul	a5,a1,a5
   1b538:	03450533          	mul	a0,a0,s4
   1b53c:	00f505b3          	add	a1,a0,a5
   1b540:	0208d513          	srli	a0,a7,0x20
   1b544:	952e                	add	a0,a0,a1
   1b546:	00f57563          	bgeu	a0,a5,1b550 <__multf3+0x18e>
   1b54a:	4785                	li	a5,1
   1b54c:	1782                	slli	a5,a5,0x20
   1b54e:	973e                	add	a4,a4,a5
   1b550:	57fd                	li	a5,-1
   1b552:	9381                	srli	a5,a5,0x20
   1b554:	02055e93          	srli	t4,a0,0x20
   1b558:	8d7d                	and	a0,a0,a5
   1b55a:	00f8f8b3          	and	a7,a7,a5
   1b55e:	1502                	slli	a0,a0,0x20
   1b560:	0203da93          	srli	s5,t2,0x20
   1b564:	9eba                	add	t4,t4,a4
   1b566:	9546                	add	a0,a0,a7
   1b568:	020f5713          	srli	a4,t5,0x20
   1b56c:	00f3f8b3          	and	a7,t2,a5
   1b570:	00ff77b3          	and	a5,t5,a5
   1b574:	031785b3          	mul	a1,a5,a7
   1b578:	02fa87b3          	mul	a5,s5,a5
   1b57c:	02ea8ab3          	mul	s5,s5,a4
   1b580:	03170733          	mul	a4,a4,a7
   1b584:	00f708b3          	add	a7,a4,a5
   1b588:	0205d713          	srli	a4,a1,0x20
   1b58c:	9746                	add	a4,a4,a7
   1b58e:	00f77563          	bgeu	a4,a5,1b598 <__multf3+0x1d6>
   1b592:	4785                	li	a5,1
   1b594:	1782                	slli	a5,a5,0x20
   1b596:	9abe                	add	s5,s5,a5
   1b598:	57fd                	li	a5,-1
   1b59a:	9381                	srli	a5,a5,0x20
   1b59c:	02075a13          	srli	s4,a4,0x20
   1b5a0:	8f7d                	and	a4,a4,a5
   1b5a2:	8dfd                	and	a1,a1,a5
   1b5a4:	1702                	slli	a4,a4,0x20
   1b5a6:	0209d893          	srli	a7,s3,0x20
   1b5aa:	972e                	add	a4,a4,a1
   1b5ac:	00f9f9b3          	and	s3,s3,a5
   1b5b0:	02045593          	srli	a1,s0,0x20
   1b5b4:	8fe1                	and	a5,a5,s0
   1b5b6:	02f98b33          	mul	s6,s3,a5
   1b5ba:	02b88433          	mul	s0,a7,a1
   1b5be:	02f887b3          	mul	a5,a7,a5
   1b5c2:	020b5893          	srli	a7,s6,0x20
   1b5c6:	033585b3          	mul	a1,a1,s3
   1b5ca:	95be                	add	a1,a1,a5
   1b5cc:	98ae                	add	a7,a7,a1
   1b5ce:	00f8f563          	bgeu	a7,a5,1b5d8 <__multf3+0x216>
   1b5d2:	4785                	li	a5,1
   1b5d4:	1782                	slli	a5,a5,0x20
   1b5d6:	943e                	add	s0,s0,a5
   1b5d8:	0208d593          	srli	a1,a7,0x20
   1b5dc:	95a2                	add	a1,a1,s0
   1b5de:	547d                	li	s0,-1
   1b5e0:	9001                	srli	s0,s0,0x20
   1b5e2:	9776                	add	a4,a4,t4
   1b5e4:	0088f7b3          	and	a5,a7,s0
   1b5e8:	01d738b3          	sltu	a7,a4,t4
   1b5ec:	008b7b33          	and	s6,s6,s0
   1b5f0:	40600333          	neg	t1,t1
   1b5f4:	011a0433          	add	s0,s4,a7
   1b5f8:	9456                	add	s0,s0,s5
   1b5fa:	00737333          	and	t1,t1,t2
   1b5fe:	41c00e33          	neg	t3,t3
   1b602:	9322                	add	t1,t1,s0
   1b604:	005fffb3          	and	t6,t6,t0
   1b608:	01ee7e33          	and	t3,t3,t5
   1b60c:	011438b3          	sltu	a7,s0,a7
   1b610:	9e1a                	add	t3,t3,t1
   1b612:	98fe                	add	a7,a7,t6
   1b614:	00833433          	sltu	s0,t1,s0
   1b618:	98a2                	add	a7,a7,s0
   1b61a:	006e3333          	sltu	t1,t3,t1
   1b61e:	40a70f33          	sub	t5,a4,a0
   1b622:	01e73fb3          	sltu	t6,a4,t5
   1b626:	1782                	slli	a5,a5,0x20
   1b628:	989a                	add	a7,a7,t1
   1b62a:	41de0333          	sub	t1,t3,t4
   1b62e:	006e32b3          	sltu	t0,t3,t1
   1b632:	97da                	add	a5,a5,s6
   1b634:	41f30333          	sub	t1,t1,t6
   1b638:	4f81                	li	t6,0
   1b63a:	01e77663          	bgeu	a4,t5,1b646 <__multf3+0x284>
   1b63e:	41ce8eb3          	sub	t4,t4,t3
   1b642:	001ebf93          	seqz	t6,t4
   1b646:	40ff0e33          	sub	t3,t5,a5
   1b64a:	98ae                	add	a7,a7,a1
   1b64c:	01cf3733          	sltu	a4,t5,t3
   1b650:	40b305b3          	sub	a1,t1,a1
   1b654:	005fefb3          	or	t6,t6,t0
   1b658:	00b33333          	sltu	t1,t1,a1
   1b65c:	40e78733          	sub	a4,a5,a4
   1b660:	4e81                	li	t4,0
   1b662:	01cf7463          	bgeu	t5,t3,1b66a <__multf3+0x2a8>
   1b666:	0015be93          	seqz	t4,a1
   1b66a:	95ba                	add	a1,a1,a4
   1b66c:	00f5b733          	sltu	a4,a1,a5
   1b670:	9746                	add	a4,a4,a7
   1b672:	41f70733          	sub	a4,a4,t6
   1b676:	006eeeb3          	or	t4,t4,t1
   1b67a:	41d70733          	sub	a4,a4,t4
   1b67e:	00de1793          	slli	a5,t3,0xd
   1b682:	0736                	slli	a4,a4,0xd
   1b684:	0335d413          	srli	s0,a1,0x33
   1b688:	8fc9                	or	a5,a5,a0
   1b68a:	8c59                	or	s0,s0,a4
   1b68c:	00f037b3          	snez	a5,a5
   1b690:	033e5513          	srli	a0,t3,0x33
   1b694:	9351                	srli	a4,a4,0x34
   1b696:	8fc9                	or	a5,a5,a0
   1b698:	05b6                	slli	a1,a1,0xd
   1b69a:	8b05                	andi	a4,a4,1
   1b69c:	8fcd                	or	a5,a5,a1
   1b69e:	12070d63          	beqz	a4,1b7d8 <__multf3+0x416>
   1b6a2:	0017d713          	srli	a4,a5,0x1
   1b6a6:	8b85                	andi	a5,a5,1
   1b6a8:	8f5d                	or	a4,a4,a5
   1b6aa:	03f41793          	slli	a5,s0,0x3f
   1b6ae:	8fd9                	or	a5,a5,a4
   1b6b0:	8005                	srli	s0,s0,0x1
   1b6b2:	6711                	lui	a4,0x4
   1b6b4:	177d                	addi	a4,a4,-1 # 3fff <exit-0xc0e9>
   1b6b6:	9742                	add	a4,a4,a6
   1b6b8:	1ae05c63          	blez	a4,1b870 <__multf3+0x4ae>
   1b6bc:	0077f693          	andi	a3,a5,7
   1b6c0:	12068363          	beqz	a3,1b7e6 <__multf3+0x424>
   1b6c4:	4689                	li	a3,2
   1b6c6:	0014e493          	ori	s1,s1,1
   1b6ca:	10d90d63          	beq	s2,a3,1b7e4 <__multf3+0x422>
   1b6ce:	468d                	li	a3,3
   1b6d0:	10d90663          	beq	s2,a3,1b7dc <__multf3+0x41a>
   1b6d4:	10091963          	bnez	s2,1b7e6 <__multf3+0x424>
   1b6d8:	00f7f693          	andi	a3,a5,15
   1b6dc:	4591                	li	a1,4
   1b6de:	10b68463          	beq	a3,a1,1b7e6 <__multf3+0x424>
   1b6e2:	00478693          	addi	a3,a5,4
   1b6e6:	00f6b7b3          	sltu	a5,a3,a5
   1b6ea:	943e                	add	s0,s0,a5
   1b6ec:	87b6                	mv	a5,a3
   1b6ee:	a8e5                	j	1b7e6 <__multf3+0x424>
   1b6f0:	4981                	li	s3,0
   1b6f2:	4b81                	li	s7,0
   1b6f4:	4c85                	li	s9,1
   1b6f6:	b33d                	j	1b424 <__multf3+0x62>
   1b6f8:	4981                	li	s3,0
   1b6fa:	4c89                	li	s9,2
   1b6fc:	b325                	j	1b424 <__multf3+0x62>
   1b6fe:	008c67b3          	or	a5,s8,s0
   1b702:	c7b5                	beqz	a5,1b76e <__multf3+0x3ac>
   1b704:	cc15                	beqz	s0,1b740 <__multf3+0x37e>
   1b706:	8522                	mv	a0,s0
   1b708:	739000ef          	jal	ra,1c640 <__clzdi2>
   1b70c:	2501                	sext.w	a0,a0
   1b70e:	ff150793          	addi	a5,a0,-15
   1b712:	03c00693          	li	a3,60
   1b716:	0007871b          	sext.w	a4,a5
   1b71a:	02f6c963          	blt	a3,a5,1b74c <__multf3+0x38a>
   1b71e:	03d00693          	li	a3,61
   1b722:	0037079b          	addiw	a5,a4,3
   1b726:	40e6873b          	subw	a4,a3,a4
   1b72a:	00f41433          	sll	s0,s0,a5
   1b72e:	00ec5733          	srl	a4,s8,a4
   1b732:	8c59                	or	s0,s0,a4
   1b734:	00fc17b3          	sll	a5,s8,a5
   1b738:	7771                	lui	a4,0xffffc
   1b73a:	0745                	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc719>
   1b73c:	8f09                	sub	a4,a4,a0
   1b73e:	bb79                	j	1b4dc <__multf3+0x11a>
   1b740:	8562                	mv	a0,s8
   1b742:	6ff000ef          	jal	ra,1c640 <__clzdi2>
   1b746:	0405051b          	addiw	a0,a0,64
   1b74a:	b7d1                	j	1b70e <__multf3+0x34c>
   1b74c:	fc37071b          	addiw	a4,a4,-61
   1b750:	00ec1433          	sll	s0,s8,a4
   1b754:	4781                	li	a5,0
   1b756:	b7cd                	j	1b738 <__multf3+0x376>
   1b758:	008c66b3          	or	a3,s8,s0
   1b75c:	ce91                	beqz	a3,1b778 <__multf3+0x3b6>
   1b75e:	02f45693          	srli	a3,s0,0x2f
   1b762:	8a85                	andi	a3,a3,1
   1b764:	488d                	li	a7,3
   1b766:	d6069ce3          	bnez	a3,1b4de <__multf3+0x11c>
   1b76a:	44c1                	li	s1,16
   1b76c:	bb8d                	j	1b4de <__multf3+0x11c>
   1b76e:	4401                	li	s0,0
   1b770:	4781                	li	a5,0
   1b772:	4701                	li	a4,0
   1b774:	4885                	li	a7,1
   1b776:	b3a5                	j	1b4de <__multf3+0x11c>
   1b778:	4401                	li	s0,0
   1b77a:	4781                	li	a5,0
   1b77c:	4889                	li	a7,2
   1b77e:	b385                	j	1b4de <__multf3+0x11c>
   1b780:	4585                	li	a1,1
   1b782:	00e59733          	sll	a4,a1,a4
   1b786:	53077513          	andi	a0,a4,1328
   1b78a:	ed0d                	bnez	a0,1b7c4 <__multf3+0x402>
   1b78c:	24077313          	andi	t1,a4,576
   1b790:	22031c63          	bnez	t1,1b9c8 <__multf3+0x606>
   1b794:	08877713          	andi	a4,a4,136
   1b798:	d60707e3          	beqz	a4,1b506 <__multf3+0x144>
   1b79c:	8656                	mv	a2,s5
   1b79e:	4709                	li	a4,2
   1b7a0:	22e88a63          	beq	a7,a4,1b9d4 <__multf3+0x612>
   1b7a4:	470d                	li	a4,3
   1b7a6:	22e88c63          	beq	a7,a4,1b9de <__multf3+0x61c>
   1b7aa:	4705                	li	a4,1
   1b7ac:	f0e893e3          	bne	a7,a4,1b6b2 <__multf3+0x2f0>
   1b7b0:	4581                	li	a1,0
   1b7b2:	4501                	li	a0,0
   1b7b4:	a409                	j	1b9b6 <__multf3+0x5f4>
   1b7b6:	46bd                	li	a3,15
   1b7b8:	00d70a63          	beq	a4,a3,1b7cc <__multf3+0x40a>
   1b7bc:	46ad                	li	a3,11
   1b7be:	fcd70fe3          	beq	a4,a3,1b79c <__multf3+0x3da>
   1b7c2:	865a                	mv	a2,s6
   1b7c4:	844e                	mv	s0,s3
   1b7c6:	87d2                	mv	a5,s4
   1b7c8:	88e6                	mv	a7,s9
   1b7ca:	bfd1                	j	1b79e <__multf3+0x3dc>
   1b7cc:	4405                	li	s0,1
   1b7ce:	143e                	slli	s0,s0,0x2f
   1b7d0:	4781                	li	a5,0
   1b7d2:	4601                	li	a2,0
   1b7d4:	488d                	li	a7,3
   1b7d6:	b7f9                	j	1b7a4 <__multf3+0x3e2>
   1b7d8:	8836                	mv	a6,a3
   1b7da:	bde1                	j	1b6b2 <__multf3+0x2f0>
   1b7dc:	e609                	bnez	a2,1b7e6 <__multf3+0x424>
   1b7de:	00878693          	addi	a3,a5,8
   1b7e2:	b711                	j	1b6e6 <__multf3+0x324>
   1b7e4:	fe6d                	bnez	a2,1b7de <__multf3+0x41c>
   1b7e6:	03445693          	srli	a3,s0,0x34
   1b7ea:	8a85                	andi	a3,a3,1
   1b7ec:	c699                	beqz	a3,1b7fa <__multf3+0x438>
   1b7ee:	577d                	li	a4,-1
   1b7f0:	1752                	slli	a4,a4,0x34
   1b7f2:	177d                	addi	a4,a4,-1
   1b7f4:	8c79                	and	s0,s0,a4
   1b7f6:	6711                	lui	a4,0x4
   1b7f8:	9742                	add	a4,a4,a6
   1b7fa:	66a1                	lui	a3,0x8
   1b7fc:	ffe68593          	addi	a1,a3,-2 # 7ffe <exit-0x80ea>
   1b800:	04e5c063          	blt	a1,a4,1b840 <__multf3+0x47e>
   1b804:	838d                	srli	a5,a5,0x3
   1b806:	03d41513          	slli	a0,s0,0x3d
   1b80a:	8d5d                	or	a0,a0,a5
   1b80c:	00345593          	srli	a1,s0,0x3
   1b810:	1746                	slli	a4,a4,0x31
   1b812:	9345                	srli	a4,a4,0x31
   1b814:	063e                	slli	a2,a2,0xf
   1b816:	05c2                	slli	a1,a1,0x10
   1b818:	8e59                	or	a2,a2,a4
   1b81a:	1642                	slli	a2,a2,0x30
   1b81c:	81c1                	srli	a1,a1,0x10
   1b81e:	8dd1                	or	a1,a1,a2
   1b820:	c099                	beqz	s1,1b826 <__multf3+0x464>
   1b822:	0014a073          	csrs	fflags,s1
   1b826:	60e6                	ld	ra,88(sp)
   1b828:	6446                	ld	s0,80(sp)
   1b82a:	64a6                	ld	s1,72(sp)
   1b82c:	6906                	ld	s2,64(sp)
   1b82e:	79e2                	ld	s3,56(sp)
   1b830:	7a42                	ld	s4,48(sp)
   1b832:	7aa2                	ld	s5,40(sp)
   1b834:	7b02                	ld	s6,32(sp)
   1b836:	6be2                	ld	s7,24(sp)
   1b838:	6c42                	ld	s8,16(sp)
   1b83a:	6ca2                	ld	s9,8(sp)
   1b83c:	6125                	addi	sp,sp,96
   1b83e:	8082                	ret
   1b840:	4789                	li	a5,2
   1b842:	02f90263          	beq	s2,a5,1b866 <__multf3+0x4a4>
   1b846:	478d                	li	a5,3
   1b848:	16fd                	addi	a3,a3,-1
   1b84a:	00f90763          	beq	s2,a5,1b858 <__multf3+0x496>
   1b84e:	00091663          	bnez	s2,1b85a <__multf3+0x498>
   1b852:	4501                	li	a0,0
   1b854:	8736                	mv	a4,a3
   1b856:	a021                	j	1b85e <__multf3+0x49c>
   1b858:	de6d                	beqz	a2,1b852 <__multf3+0x490>
   1b85a:	557d                	li	a0,-1
   1b85c:	872e                	mv	a4,a1
   1b85e:	0054e493          	ori	s1,s1,5
   1b862:	85aa                	mv	a1,a0
   1b864:	b775                	j	1b810 <__multf3+0x44e>
   1b866:	da75                	beqz	a2,1b85a <__multf3+0x498>
   1b868:	4501                	li	a0,0
   1b86a:	fff68713          	addi	a4,a3,-1
   1b86e:	bfc5                	j	1b85e <__multf3+0x49c>
   1b870:	4685                	li	a3,1
   1b872:	e729                	bnez	a4,1b8bc <__multf3+0x4fa>
   1b874:	0077f593          	andi	a1,a5,7
   1b878:	86a2                	mv	a3,s0
   1b87a:	cd8d                	beqz	a1,1b8b4 <__multf3+0x4f2>
   1b87c:	4589                	li	a1,2
   1b87e:	0014e493          	ori	s1,s1,1
   1b882:	02b90863          	beq	s2,a1,1b8b2 <__multf3+0x4f0>
   1b886:	458d                	li	a1,3
   1b888:	02b90163          	beq	s2,a1,1b8aa <__multf3+0x4e8>
   1b88c:	02091463          	bnez	s2,1b8b4 <__multf3+0x4f2>
   1b890:	00f7f593          	andi	a1,a5,15
   1b894:	4511                	li	a0,4
   1b896:	00a58f63          	beq	a1,a0,1b8b4 <__multf3+0x4f2>
   1b89a:	ffc7b693          	sltiu	a3,a5,-4
   1b89e:	0016c693          	xori	a3,a3,1
   1b8a2:	1682                	slli	a3,a3,0x20
   1b8a4:	9281                	srli	a3,a3,0x20
   1b8a6:	96a2                	add	a3,a3,s0
   1b8a8:	a031                	j	1b8b4 <__multf3+0x4f2>
   1b8aa:	e609                	bnez	a2,1b8b4 <__multf3+0x4f2>
   1b8ac:	ff87b693          	sltiu	a3,a5,-8
   1b8b0:	b7fd                	j	1b89e <__multf3+0x4dc>
   1b8b2:	fe6d                	bnez	a2,1b8ac <__multf3+0x4ea>
   1b8b4:	92d1                	srli	a3,a3,0x34
   1b8b6:	0016c693          	xori	a3,a3,1
   1b8ba:	8a85                	andi	a3,a3,1
   1b8bc:	4805                	li	a6,1
   1b8be:	40e80833          	sub	a6,a6,a4
   1b8c2:	07400713          	li	a4,116
   1b8c6:	0d074563          	blt	a4,a6,1b990 <__multf3+0x5ce>
   1b8ca:	03f00713          	li	a4,63
   1b8ce:	0008059b          	sext.w	a1,a6
   1b8d2:	05074b63          	blt	a4,a6,1b928 <__multf3+0x566>
   1b8d6:	04000713          	li	a4,64
   1b8da:	9f0d                	subw	a4,a4,a1
   1b8dc:	00e41533          	sll	a0,s0,a4
   1b8e0:	00b7d833          	srl	a6,a5,a1
   1b8e4:	00e79733          	sll	a4,a5,a4
   1b8e8:	01056533          	or	a0,a0,a6
   1b8ec:	00e03733          	snez	a4,a4
   1b8f0:	8d59                	or	a0,a0,a4
   1b8f2:	00b455b3          	srl	a1,s0,a1
   1b8f6:	00757793          	andi	a5,a0,7
   1b8fa:	c3a5                	beqz	a5,1b95a <__multf3+0x598>
   1b8fc:	4789                	li	a5,2
   1b8fe:	0014e493          	ori	s1,s1,1
   1b902:	04f90b63          	beq	s2,a5,1b958 <__multf3+0x596>
   1b906:	478d                	li	a5,3
   1b908:	04f90463          	beq	s2,a5,1b950 <__multf3+0x58e>
   1b90c:	04091763          	bnez	s2,1b95a <__multf3+0x598>
   1b910:	00f57793          	andi	a5,a0,15
   1b914:	4711                	li	a4,4
   1b916:	04e78263          	beq	a5,a4,1b95a <__multf3+0x598>
   1b91a:	00450793          	addi	a5,a0,4
   1b91e:	00a7b533          	sltu	a0,a5,a0
   1b922:	95aa                	add	a1,a1,a0
   1b924:	853e                	mv	a0,a5
   1b926:	a815                	j	1b95a <__multf3+0x598>
   1b928:	fc05851b          	addiw	a0,a1,-64
   1b92c:	04000893          	li	a7,64
   1b930:	00a45533          	srl	a0,s0,a0
   1b934:	4701                	li	a4,0
   1b936:	01180763          	beq	a6,a7,1b944 <__multf3+0x582>
   1b93a:	08000713          	li	a4,128
   1b93e:	9f0d                	subw	a4,a4,a1
   1b940:	00e41733          	sll	a4,s0,a4
   1b944:	8f5d                	or	a4,a4,a5
   1b946:	00e03733          	snez	a4,a4
   1b94a:	8d59                	or	a0,a0,a4
   1b94c:	4581                	li	a1,0
   1b94e:	b765                	j	1b8f6 <__multf3+0x534>
   1b950:	e609                	bnez	a2,1b95a <__multf3+0x598>
   1b952:	00850793          	addi	a5,a0,8
   1b956:	b7e1                	j	1b91e <__multf3+0x55c>
   1b958:	fe6d                	bnez	a2,1b952 <__multf3+0x590>
   1b95a:	0335d793          	srli	a5,a1,0x33
   1b95e:	8b85                	andi	a5,a5,1
   1b960:	cb99                	beqz	a5,1b976 <__multf3+0x5b4>
   1b962:	0014e493          	ori	s1,s1,1
   1b966:	4581                	li	a1,0
   1b968:	4501                	li	a0,0
   1b96a:	4705                	li	a4,1
   1b96c:	ea0682e3          	beqz	a3,1b810 <__multf3+0x44e>
   1b970:	0024e493          	ori	s1,s1,2
   1b974:	bd71                	j	1b810 <__multf3+0x44e>
   1b976:	03d59793          	slli	a5,a1,0x3d
   1b97a:	810d                	srli	a0,a0,0x3
   1b97c:	8d5d                	or	a0,a0,a5
   1b97e:	818d                	srli	a1,a1,0x3
   1b980:	4701                	li	a4,0
   1b982:	e80687e3          	beqz	a3,1b810 <__multf3+0x44e>
   1b986:	0014f793          	andi	a5,s1,1
   1b98a:	e80783e3          	beqz	a5,1b810 <__multf3+0x44e>
   1b98e:	b7cd                	j	1b970 <__multf3+0x5ae>
   1b990:	0087e533          	or	a0,a5,s0
   1b994:	cd11                	beqz	a0,1b9b0 <__multf3+0x5ee>
   1b996:	4789                	li	a5,2
   1b998:	0014e493          	ori	s1,s1,1
   1b99c:	02f90363          	beq	s2,a5,1b9c2 <__multf3+0x600>
   1b9a0:	478d                	li	a5,3
   1b9a2:	00f90c63          	beq	s2,a5,1b9ba <__multf3+0x5f8>
   1b9a6:	4505                	li	a0,1
   1b9a8:	00091363          	bnez	s2,1b9ae <__multf3+0x5ec>
   1b9ac:	4515                	li	a0,5
   1b9ae:	810d                	srli	a0,a0,0x3
   1b9b0:	0024e493          	ori	s1,s1,2
   1b9b4:	4581                	li	a1,0
   1b9b6:	4701                	li	a4,0
   1b9b8:	bda1                	j	1b810 <__multf3+0x44e>
   1b9ba:	4525                	li	a0,9
   1b9bc:	da6d                	beqz	a2,1b9ae <__multf3+0x5ec>
   1b9be:	4505                	li	a0,1
   1b9c0:	b7fd                	j	1b9ae <__multf3+0x5ec>
   1b9c2:	4525                	li	a0,9
   1b9c4:	f66d                	bnez	a2,1b9ae <__multf3+0x5ec>
   1b9c6:	bfe5                	j	1b9be <__multf3+0x5fc>
   1b9c8:	6721                	lui	a4,0x8
   1b9ca:	15be                	slli	a1,a1,0x2f
   1b9cc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b9ce:	4601                	li	a2,0
   1b9d0:	44c1                	li	s1,16
   1b9d2:	bd3d                	j	1b810 <__multf3+0x44e>
   1b9d4:	6721                	lui	a4,0x8
   1b9d6:	4581                	li	a1,0
   1b9d8:	4501                	li	a0,0
   1b9da:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b9dc:	bd15                	j	1b810 <__multf3+0x44e>
   1b9de:	4585                	li	a1,1
   1b9e0:	6721                	lui	a4,0x8
   1b9e2:	15be                	slli	a1,a1,0x2f
   1b9e4:	4501                	li	a0,0
   1b9e6:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b9e8:	4601                	li	a2,0
   1b9ea:	b51d                	j	1b810 <__multf3+0x44e>

000000000001b9ec <__subtf3>:
   1b9ec:	7179                	addi	sp,sp,-48
   1b9ee:	f406                	sd	ra,40(sp)
   1b9f0:	f022                	sd	s0,32(sp)
   1b9f2:	ec26                	sd	s1,24(sp)
   1b9f4:	e84a                	sd	s2,16(sp)
   1b9f6:	e44e                	sd	s3,8(sp)
   1b9f8:	e052                	sd	s4,0(sp)
   1b9fa:	002024f3          	frrm	s1
   1b9fe:	577d                	li	a4,-1
   1ba00:	8341                	srli	a4,a4,0x10
   1ba02:	6e21                	lui	t3,0x8
   1ba04:	0305d813          	srli	a6,a1,0x30
   1ba08:	1e7d                	addi	t3,t3,-1 # 7fff <exit-0x80e9>
   1ba0a:	0306d893          	srli	a7,a3,0x30
   1ba0e:	03f5d913          	srli	s2,a1,0x3f
   1ba12:	03f6d313          	srli	t1,a3,0x3f
   1ba16:	8df9                	and	a1,a1,a4
   1ba18:	8ef9                	and	a3,a3,a4
   1ba1a:	03d55793          	srli	a5,a0,0x3d
   1ba1e:	00369713          	slli	a4,a3,0x3
   1ba22:	01c87833          	and	a6,a6,t3
   1ba26:	03d65693          	srli	a3,a2,0x3d
   1ba2a:	058e                	slli	a1,a1,0x3
   1ba2c:	01c8f8b3          	and	a7,a7,t3
   1ba30:	2481                	sext.w	s1,s1
   1ba32:	8442                	mv	s0,a6
   1ba34:	8fcd                	or	a5,a5,a1
   1ba36:	050e                	slli	a0,a0,0x3
   1ba38:	8ed9                	or	a3,a3,a4
   1ba3a:	060e                	slli	a2,a2,0x3
   1ba3c:	01c89563          	bne	a7,t3,1ba46 <__subtf3+0x5a>
   1ba40:	00c6e733          	or	a4,a3,a2
   1ba44:	e319                	bnez	a4,1ba4a <__subtf3+0x5e>
   1ba46:	00134313          	xori	t1,t1,1
   1ba4a:	4118073b          	subw	a4,a6,a7
   1ba4e:	6e21                	lui	t3,0x8
   1ba50:	0007059b          	sext.w	a1,a4
   1ba54:	fffe0e93          	addi	t4,t3,-1 # 7fff <exit-0x80e9>
   1ba58:	3b231a63          	bne	t1,s2,1be0c <__subtf3+0x420>
   1ba5c:	10b05563          	blez	a1,1bb66 <__subtf3+0x17a>
   1ba60:	08089163          	bnez	a7,1bae2 <__subtf3+0xf6>
   1ba64:	00c6e5b3          	or	a1,a3,a2
   1ba68:	ed91                	bnez	a1,1ba84 <__subtf3+0x98>
   1ba6a:	75d81663          	bne	a6,t4,1c1b6 <__subtf3+0x7ca>
   1ba6e:	00a7e733          	or	a4,a5,a0
   1ba72:	78070a63          	beqz	a4,1c206 <__subtf3+0x81a>
   1ba76:	0327d713          	srli	a4,a5,0x32
   1ba7a:	00174713          	xori	a4,a4,1
   1ba7e:	8b05                	andi	a4,a4,1
   1ba80:	0712                	slli	a4,a4,0x4
   1ba82:	aa01                	j	1bb92 <__subtf3+0x1a6>
   1ba84:	fff7059b          	addiw	a1,a4,-1
   1ba88:	e1a1                	bnez	a1,1bac8 <__subtf3+0xdc>
   1ba8a:	962a                	add	a2,a2,a0
   1ba8c:	96be                	add	a3,a3,a5
   1ba8e:	00a637b3          	sltu	a5,a2,a0
   1ba92:	97b6                	add	a5,a5,a3
   1ba94:	8532                	mv	a0,a2
   1ba96:	0337d713          	srli	a4,a5,0x33
   1ba9a:	8b05                	andi	a4,a4,1
   1ba9c:	70070d63          	beqz	a4,1c1b6 <__subtf3+0x7ca>
   1baa0:	6721                	lui	a4,0x8
   1baa2:	0405                	addi	s0,s0,1
   1baa4:	fff70693          	addi	a3,a4,-1 # 7fff <exit-0x80e9>
   1baa8:	34d40063          	beq	s0,a3,1bde8 <__subtf3+0x3fc>
   1baac:	577d                	li	a4,-1
   1baae:	174e                	slli	a4,a4,0x33
   1bab0:	177d                	addi	a4,a4,-1
   1bab2:	8ff9                	and	a5,a5,a4
   1bab4:	00155713          	srli	a4,a0,0x1
   1bab8:	8905                	andi	a0,a0,1
   1baba:	8f49                	or	a4,a4,a0
   1babc:	03f79513          	slli	a0,a5,0x3f
   1bac0:	8d59                	or	a0,a0,a4
   1bac2:	8385                	srli	a5,a5,0x1
   1bac4:	4581                	li	a1,0
   1bac6:	a4e9                	j	1bd90 <__subtf3+0x3a4>
   1bac8:	03d81263          	bne	a6,t4,1baec <__subtf3+0x100>
   1bacc:	00a7e733          	or	a4,a5,a0
   1bad0:	72070b63          	beqz	a4,1c206 <__subtf3+0x81a>
   1bad4:	0327d713          	srli	a4,a5,0x32
   1bad8:	00174713          	xori	a4,a4,1
   1badc:	8b05                	andi	a4,a4,1
   1bade:	0712                	slli	a4,a4,0x4
   1bae0:	a209                	j	1bbe2 <__subtf3+0x1f6>
   1bae2:	ffd805e3          	beq	a6,t4,1bacc <__subtf3+0xe0>
   1bae6:	4705                	li	a4,1
   1bae8:	174e                	slli	a4,a4,0x33
   1baea:	8ed9                	or	a3,a3,a4
   1baec:	07400713          	li	a4,116
   1baf0:	06b74663          	blt	a4,a1,1bb5c <__subtf3+0x170>
   1baf4:	03f00713          	li	a4,63
   1baf8:	02b74b63          	blt	a4,a1,1bb2e <__subtf3+0x142>
   1bafc:	04000813          	li	a6,64
   1bb00:	40b8083b          	subw	a6,a6,a1
   1bb04:	01069733          	sll	a4,a3,a6
   1bb08:	00b658b3          	srl	a7,a2,a1
   1bb0c:	01061833          	sll	a6,a2,a6
   1bb10:	01176733          	or	a4,a4,a7
   1bb14:	01003833          	snez	a6,a6
   1bb18:	01076733          	or	a4,a4,a6
   1bb1c:	00b6d5b3          	srl	a1,a3,a1
   1bb20:	972a                	add	a4,a4,a0
   1bb22:	95be                	add	a1,a1,a5
   1bb24:	00a737b3          	sltu	a5,a4,a0
   1bb28:	97ae                	add	a5,a5,a1
   1bb2a:	853a                	mv	a0,a4
   1bb2c:	b7ad                	j	1ba96 <__subtf3+0xaa>
   1bb2e:	fc05871b          	addiw	a4,a1,-64
   1bb32:	04000893          	li	a7,64
   1bb36:	00e6d733          	srl	a4,a3,a4
   1bb3a:	4801                	li	a6,0
   1bb3c:	01158863          	beq	a1,a7,1bb4c <__subtf3+0x160>
   1bb40:	08000813          	li	a6,128
   1bb44:	40b8083b          	subw	a6,a6,a1
   1bb48:	01069833          	sll	a6,a3,a6
   1bb4c:	00c86833          	or	a6,a6,a2
   1bb50:	01003833          	snez	a6,a6
   1bb54:	01076733          	or	a4,a4,a6
   1bb58:	4581                	li	a1,0
   1bb5a:	b7d9                	j	1bb20 <__subtf3+0x134>
   1bb5c:	00c6e733          	or	a4,a3,a2
   1bb60:	00e03733          	snez	a4,a4
   1bb64:	bfd5                	j	1bb58 <__subtf3+0x16c>
   1bb66:	10058563          	beqz	a1,1bc70 <__subtf3+0x284>
   1bb6a:	06081e63          	bnez	a6,1bbe6 <__subtf3+0x1fa>
   1bb6e:	00a7e5b3          	or	a1,a5,a0
   1bb72:	ed8d                	bnez	a1,1bbac <__subtf3+0x1c0>
   1bb74:	65d89463          	bne	a7,t4,1c1bc <__subtf3+0x7d0>
   1bb78:	00c6e533          	or	a0,a3,a2
   1bb7c:	68050163          	beqz	a0,1c1fe <__subtf3+0x812>
   1bb80:	0326d713          	srli	a4,a3,0x32
   1bb84:	00174713          	xori	a4,a4,1
   1bb88:	8b05                	andi	a4,a4,1
   1bb8a:	0712                	slli	a4,a4,0x4
   1bb8c:	87b6                	mv	a5,a3
   1bb8e:	8532                	mv	a0,a2
   1bb90:	8446                	mv	s0,a7
   1bb92:	00757693          	andi	a3,a0,7
   1bb96:	22069263          	bnez	a3,1bdba <__subtf3+0x3ce>
   1bb9a:	16058963          	beqz	a1,1bd0c <__subtf3+0x320>
   1bb9e:	00177693          	andi	a3,a4,1
   1bba2:	16068563          	beqz	a3,1bd0c <__subtf3+0x320>
   1bba6:	00276713          	ori	a4,a4,2
   1bbaa:	a28d                	j	1bd0c <__subtf3+0x320>
   1bbac:	fff74713          	not	a4,a4
   1bbb0:	2701                	sext.w	a4,a4
   1bbb2:	eb09                	bnez	a4,1bbc4 <__subtf3+0x1d8>
   1bbb4:	9532                	add	a0,a0,a2
   1bbb6:	96be                	add	a3,a3,a5
   1bbb8:	00c53633          	sltu	a2,a0,a2
   1bbbc:	00c687b3          	add	a5,a3,a2
   1bbc0:	8446                	mv	s0,a7
   1bbc2:	bdd1                	j	1ba96 <__subtf3+0xaa>
   1bbc4:	03d89863          	bne	a7,t4,1bbf4 <__subtf3+0x208>
   1bbc8:	00c6e533          	or	a0,a3,a2
   1bbcc:	62050963          	beqz	a0,1c1fe <__subtf3+0x812>
   1bbd0:	0326d713          	srli	a4,a3,0x32
   1bbd4:	00174713          	xori	a4,a4,1
   1bbd8:	8b05                	andi	a4,a4,1
   1bbda:	0712                	slli	a4,a4,0x4
   1bbdc:	87b6                	mv	a5,a3
   1bbde:	8532                	mv	a0,a2
   1bbe0:	8446                	mv	s0,a7
   1bbe2:	4581                	li	a1,0
   1bbe4:	b77d                	j	1bb92 <__subtf3+0x1a6>
   1bbe6:	ffd881e3          	beq	a7,t4,1bbc8 <__subtf3+0x1dc>
   1bbea:	4585                	li	a1,1
   1bbec:	15ce                	slli	a1,a1,0x33
   1bbee:	40e0073b          	negw	a4,a4
   1bbf2:	8fcd                	or	a5,a5,a1
   1bbf4:	07400593          	li	a1,116
   1bbf8:	06e5c763          	blt	a1,a4,1bc66 <__subtf3+0x27a>
   1bbfc:	03f00593          	li	a1,63
   1bc00:	02e5cc63          	blt	a1,a4,1bc38 <__subtf3+0x24c>
   1bc04:	04000813          	li	a6,64
   1bc08:	40e8083b          	subw	a6,a6,a4
   1bc0c:	010795b3          	sll	a1,a5,a6
   1bc10:	00e55333          	srl	t1,a0,a4
   1bc14:	01051833          	sll	a6,a0,a6
   1bc18:	0065e5b3          	or	a1,a1,t1
   1bc1c:	01003833          	snez	a6,a6
   1bc20:	0105e5b3          	or	a1,a1,a6
   1bc24:	00e7d733          	srl	a4,a5,a4
   1bc28:	00c58533          	add	a0,a1,a2
   1bc2c:	9736                	add	a4,a4,a3
   1bc2e:	00c53633          	sltu	a2,a0,a2
   1bc32:	00c707b3          	add	a5,a4,a2
   1bc36:	b769                	j	1bbc0 <__subtf3+0x1d4>
   1bc38:	fc07059b          	addiw	a1,a4,-64
   1bc3c:	04000313          	li	t1,64
   1bc40:	00b7d5b3          	srl	a1,a5,a1
   1bc44:	4801                	li	a6,0
   1bc46:	00670863          	beq	a4,t1,1bc56 <__subtf3+0x26a>
   1bc4a:	08000813          	li	a6,128
   1bc4e:	40e8083b          	subw	a6,a6,a4
   1bc52:	01079833          	sll	a6,a5,a6
   1bc56:	00a86833          	or	a6,a6,a0
   1bc5a:	01003833          	snez	a6,a6
   1bc5e:	0105e5b3          	or	a1,a1,a6
   1bc62:	4701                	li	a4,0
   1bc64:	b7d1                	j	1bc28 <__subtf3+0x23c>
   1bc66:	00a7e5b3          	or	a1,a5,a0
   1bc6a:	00b035b3          	snez	a1,a1
   1bc6e:	bfd5                	j	1bc62 <__subtf3+0x276>
   1bc70:	00180413          	addi	s0,a6,1
   1bc74:	ffee0713          	addi	a4,t3,-2
   1bc78:	00e47333          	and	t1,s0,a4
   1bc7c:	0e031d63          	bnez	t1,1bd76 <__subtf3+0x38a>
   1bc80:	00a7e333          	or	t1,a5,a0
   1bc84:	02081a63          	bnez	a6,1bcb8 <__subtf3+0x2cc>
   1bc88:	54030363          	beqz	t1,1c1ce <__subtf3+0x7e2>
   1bc8c:	00c6e733          	or	a4,a3,a2
   1bc90:	36070863          	beqz	a4,1c000 <__subtf3+0x614>
   1bc94:	962a                	add	a2,a2,a0
   1bc96:	96be                	add	a3,a3,a5
   1bc98:	00a637b3          	sltu	a5,a2,a0
   1bc9c:	97b6                	add	a5,a5,a3
   1bc9e:	0337d713          	srli	a4,a5,0x33
   1bca2:	8b05                	andi	a4,a4,1
   1bca4:	52070663          	beqz	a4,1c1d0 <__subtf3+0x7e4>
   1bca8:	577d                	li	a4,-1
   1bcaa:	174e                	slli	a4,a4,0x33
   1bcac:	177d                	addi	a4,a4,-1
   1bcae:	8ff9                	and	a5,a5,a4
   1bcb0:	8532                	mv	a0,a2
   1bcb2:	4701                	li	a4,0
   1bcb4:	4405                	li	s0,1
   1bcb6:	bdf1                	j	1bb92 <__subtf3+0x1a6>
   1bcb8:	03d81863          	bne	a6,t4,1bce8 <__subtf3+0x2fc>
   1bcbc:	5a030863          	beqz	t1,1c26c <__subtf3+0x880>
   1bcc0:	0327d713          	srli	a4,a5,0x32
   1bcc4:	00174713          	xori	a4,a4,1
   1bcc8:	8b05                	andi	a4,a4,1
   1bcca:	0712                	slli	a4,a4,0x4
   1bccc:	03089863          	bne	a7,a6,1bcfc <__subtf3+0x310>
   1bcd0:	00c6e833          	or	a6,a3,a2
   1bcd4:	00080d63          	beqz	a6,1bcee <__subtf3+0x302>
   1bcd8:	0326d813          	srli	a6,a3,0x32
   1bcdc:	00187813          	andi	a6,a6,1
   1bce0:	00081763          	bnez	a6,1bcee <__subtf3+0x302>
   1bce4:	4741                	li	a4,16
   1bce6:	a021                	j	1bcee <__subtf3+0x302>
   1bce8:	4701                	li	a4,0
   1bcea:	ffd883e3          	beq	a7,t4,1bcd0 <__subtf3+0x2e4>
   1bcee:	00031763          	bnez	t1,1bcfc <__subtf3+0x310>
   1bcf2:	87b6                	mv	a5,a3
   1bcf4:	8532                	mv	a0,a2
   1bcf6:	6421                	lui	s0,0x8
   1bcf8:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1bcfa:	bd61                	j	1bb92 <__subtf3+0x1a6>
   1bcfc:	8ed1                	or	a3,a3,a2
   1bcfe:	dee5                	beqz	a3,1bcf6 <__subtf3+0x30a>
   1bd00:	4785                	li	a5,1
   1bd02:	6421                	lui	s0,0x8
   1bd04:	4901                	li	s2,0
   1bd06:	17ca                	slli	a5,a5,0x32
   1bd08:	4501                	li	a0,0
   1bd0a:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1bd0c:	0337d693          	srli	a3,a5,0x33
   1bd10:	8a85                	andi	a3,a3,1
   1bd12:	ca99                	beqz	a3,1bd28 <__subtf3+0x33c>
   1bd14:	66a1                	lui	a3,0x8
   1bd16:	0405                	addi	s0,s0,1
   1bd18:	fff68613          	addi	a2,a3,-1 # 7fff <exit-0x80e9>
   1bd1c:	52c40063          	beq	s0,a2,1c23c <__subtf3+0x850>
   1bd20:	56fd                	li	a3,-1
   1bd22:	16ce                	slli	a3,a3,0x33
   1bd24:	16fd                	addi	a3,a3,-1
   1bd26:	8ff5                	and	a5,a5,a3
   1bd28:	00355693          	srli	a3,a0,0x3
   1bd2c:	03d79513          	slli	a0,a5,0x3d
   1bd30:	8d55                	or	a0,a0,a3
   1bd32:	66a1                	lui	a3,0x8
   1bd34:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1bd36:	838d                	srli	a5,a5,0x3
   1bd38:	00d41963          	bne	s0,a3,1bd4a <__subtf3+0x35e>
   1bd3c:	8d5d                	or	a0,a0,a5
   1bd3e:	4781                	li	a5,0
   1bd40:	c509                	beqz	a0,1bd4a <__subtf3+0x35e>
   1bd42:	4785                	li	a5,1
   1bd44:	17be                	slli	a5,a5,0x2f
   1bd46:	4501                	li	a0,0
   1bd48:	4901                	li	s2,0
   1bd4a:	1446                	slli	s0,s0,0x31
   1bd4c:	00f9191b          	slliw	s2,s2,0xf
   1bd50:	9045                	srli	s0,s0,0x31
   1bd52:	07c2                	slli	a5,a5,0x10
   1bd54:	01246433          	or	s0,s0,s2
   1bd58:	1442                	slli	s0,s0,0x30
   1bd5a:	0107d593          	srli	a1,a5,0x10
   1bd5e:	8dc1                	or	a1,a1,s0
   1bd60:	c319                	beqz	a4,1bd66 <__subtf3+0x37a>
   1bd62:	00172073          	csrs	fflags,a4
   1bd66:	70a2                	ld	ra,40(sp)
   1bd68:	7402                	ld	s0,32(sp)
   1bd6a:	64e2                	ld	s1,24(sp)
   1bd6c:	6942                	ld	s2,16(sp)
   1bd6e:	69a2                	ld	s3,8(sp)
   1bd70:	6a02                	ld	s4,0(sp)
   1bd72:	6145                	addi	sp,sp,48
   1bd74:	8082                	ret
   1bd76:	01d40f63          	beq	s0,t4,1bd94 <__subtf3+0x3a8>
   1bd7a:	962a                	add	a2,a2,a0
   1bd7c:	00a63533          	sltu	a0,a2,a0
   1bd80:	96be                	add	a3,a3,a5
   1bd82:	96aa                	add	a3,a3,a0
   1bd84:	03f69513          	slli	a0,a3,0x3f
   1bd88:	8205                	srli	a2,a2,0x1
   1bd8a:	8d51                	or	a0,a0,a2
   1bd8c:	0016d793          	srli	a5,a3,0x1
   1bd90:	4701                	li	a4,0
   1bd92:	b501                	j	1bb92 <__subtf3+0x1a6>
   1bd94:	c491                	beqz	s1,1bda0 <__subtf3+0x3b4>
   1bd96:	478d                	li	a5,3
   1bd98:	00f49863          	bne	s1,a5,1bda8 <__subtf3+0x3bc>
   1bd9c:	00091b63          	bnez	s2,1bdb2 <__subtf3+0x3c6>
   1bda0:	4781                	li	a5,0
   1bda2:	4501                	li	a0,0
   1bda4:	4715                	li	a4,5
   1bda6:	b79d                	j	1bd0c <__subtf3+0x320>
   1bda8:	4789                	li	a5,2
   1bdaa:	00f49463          	bne	s1,a5,1bdb2 <__subtf3+0x3c6>
   1bdae:	fe0919e3          	bnez	s2,1bda0 <__subtf3+0x3b4>
   1bdb2:	57fd                	li	a5,-1
   1bdb4:	557d                	li	a0,-1
   1bdb6:	843a                	mv	s0,a4
   1bdb8:	4715                	li	a4,5
   1bdba:	4689                	li	a3,2
   1bdbc:	00176713          	ori	a4,a4,1
   1bdc0:	46d48b63          	beq	s1,a3,1c236 <__subtf3+0x84a>
   1bdc4:	468d                	li	a3,3
   1bdc6:	46d48363          	beq	s1,a3,1c22c <__subtf3+0x840>
   1bdca:	ec81                	bnez	s1,1bde2 <__subtf3+0x3f6>
   1bdcc:	00f57693          	andi	a3,a0,15
   1bdd0:	4611                	li	a2,4
   1bdd2:	00c68863          	beq	a3,a2,1bde2 <__subtf3+0x3f6>
   1bdd6:	00450693          	addi	a3,a0,4
   1bdda:	00a6b533          	sltu	a0,a3,a0
   1bdde:	97aa                	add	a5,a5,a0
   1bde0:	8536                	mv	a0,a3
   1bde2:	dc0592e3          	bnez	a1,1bba6 <__subtf3+0x1ba>
   1bde6:	b71d                	j	1bd0c <__subtf3+0x320>
   1bde8:	dcc5                	beqz	s1,1bda0 <__subtf3+0x3b4>
   1bdea:	478d                	li	a5,3
   1bdec:	00f49a63          	bne	s1,a5,1be00 <__subtf3+0x414>
   1bdf0:	fa0908e3          	beqz	s2,1bda0 <__subtf3+0x3b4>
   1bdf4:	57fd                	li	a5,-1
   1bdf6:	557d                	li	a0,-1
   1bdf8:	ffe70413          	addi	s0,a4,-2
   1bdfc:	4581                	li	a1,0
   1bdfe:	bf6d                	j	1bdb8 <__subtf3+0x3cc>
   1be00:	4789                	li	a5,2
   1be02:	fef499e3          	bne	s1,a5,1bdf4 <__subtf3+0x408>
   1be06:	f8091de3          	bnez	s2,1bda0 <__subtf3+0x3b4>
   1be0a:	b7ed                	j	1bdf4 <__subtf3+0x408>
   1be0c:	0cb05763          	blez	a1,1beda <__subtf3+0x4ee>
   1be10:	08089363          	bnez	a7,1be96 <__subtf3+0x4aa>
   1be14:	00c6e5b3          	or	a1,a3,a2
   1be18:	c40589e3          	beqz	a1,1ba6a <__subtf3+0x7e>
   1be1c:	fff7059b          	addiw	a1,a4,-1
   1be20:	e58d                	bnez	a1,1be4a <__subtf3+0x45e>
   1be22:	40c50633          	sub	a2,a0,a2
   1be26:	40d786b3          	sub	a3,a5,a3
   1be2a:	00c537b3          	sltu	a5,a0,a2
   1be2e:	40f687b3          	sub	a5,a3,a5
   1be32:	8532                	mv	a0,a2
   1be34:	0337d713          	srli	a4,a5,0x33
   1be38:	8b05                	andi	a4,a4,1
   1be3a:	36070e63          	beqz	a4,1c1b6 <__subtf3+0x7ca>
   1be3e:	00d79993          	slli	s3,a5,0xd
   1be42:	00d9d993          	srli	s3,s3,0xd
   1be46:	8a2a                	mv	s4,a0
   1be48:	ac65                	j	1c100 <__subtf3+0x714>
   1be4a:	c9d801e3          	beq	a6,t4,1bacc <__subtf3+0xe0>
   1be4e:	07400713          	li	a4,116
   1be52:	06b74f63          	blt	a4,a1,1bed0 <__subtf3+0x4e4>
   1be56:	03f00713          	li	a4,63
   1be5a:	04b74463          	blt	a4,a1,1bea2 <__subtf3+0x4b6>
   1be5e:	04000813          	li	a6,64
   1be62:	40b8083b          	subw	a6,a6,a1
   1be66:	01069733          	sll	a4,a3,a6
   1be6a:	00b658b3          	srl	a7,a2,a1
   1be6e:	01061833          	sll	a6,a2,a6
   1be72:	01176733          	or	a4,a4,a7
   1be76:	01003833          	snez	a6,a6
   1be7a:	01076733          	or	a4,a4,a6
   1be7e:	00b6d5b3          	srl	a1,a3,a1
   1be82:	40e50733          	sub	a4,a0,a4
   1be86:	40b785b3          	sub	a1,a5,a1
   1be8a:	00e537b3          	sltu	a5,a0,a4
   1be8e:	40f587b3          	sub	a5,a1,a5
   1be92:	853a                	mv	a0,a4
   1be94:	b745                	j	1be34 <__subtf3+0x448>
   1be96:	c3d80be3          	beq	a6,t4,1bacc <__subtf3+0xe0>
   1be9a:	4705                	li	a4,1
   1be9c:	174e                	slli	a4,a4,0x33
   1be9e:	8ed9                	or	a3,a3,a4
   1bea0:	b77d                	j	1be4e <__subtf3+0x462>
   1bea2:	fc05871b          	addiw	a4,a1,-64
   1bea6:	04000893          	li	a7,64
   1beaa:	00e6d733          	srl	a4,a3,a4
   1beae:	4801                	li	a6,0
   1beb0:	01158863          	beq	a1,a7,1bec0 <__subtf3+0x4d4>
   1beb4:	08000813          	li	a6,128
   1beb8:	40b8083b          	subw	a6,a6,a1
   1bebc:	01069833          	sll	a6,a3,a6
   1bec0:	00c86833          	or	a6,a6,a2
   1bec4:	01003833          	snez	a6,a6
   1bec8:	01076733          	or	a4,a4,a6
   1becc:	4581                	li	a1,0
   1bece:	bf55                	j	1be82 <__subtf3+0x496>
   1bed0:	00c6e733          	or	a4,a3,a2
   1bed4:	00e03733          	snez	a4,a4
   1bed8:	bfd5                	j	1becc <__subtf3+0x4e0>
   1beda:	cde5                	beqz	a1,1bfd2 <__subtf3+0x5e6>
   1bedc:	06081563          	bnez	a6,1bf46 <__subtf3+0x55a>
   1bee0:	00a7e5b3          	or	a1,a5,a0
   1bee4:	e195                	bnez	a1,1bf08 <__subtf3+0x51c>
   1bee6:	2dd89f63          	bne	a7,t4,1c1c4 <__subtf3+0x7d8>
   1beea:	00c6e533          	or	a0,a3,a2
   1beee:	30050f63          	beqz	a0,1c20c <__subtf3+0x820>
   1bef2:	0326d713          	srli	a4,a3,0x32
   1bef6:	00174713          	xori	a4,a4,1
   1befa:	8b05                	andi	a4,a4,1
   1befc:	0712                	slli	a4,a4,0x4
   1befe:	87b6                	mv	a5,a3
   1bf00:	8532                	mv	a0,a2
   1bf02:	8446                	mv	s0,a7
   1bf04:	891a                	mv	s2,t1
   1bf06:	b171                	j	1bb92 <__subtf3+0x1a6>
   1bf08:	fff74713          	not	a4,a4
   1bf0c:	2701                	sext.w	a4,a4
   1bf0e:	eb19                	bnez	a4,1bf24 <__subtf3+0x538>
   1bf10:	40a60533          	sub	a0,a2,a0
   1bf14:	8e9d                	sub	a3,a3,a5
   1bf16:	00a63633          	sltu	a2,a2,a0
   1bf1a:	40c687b3          	sub	a5,a3,a2
   1bf1e:	8446                	mv	s0,a7
   1bf20:	891a                	mv	s2,t1
   1bf22:	bf09                	j	1be34 <__subtf3+0x448>
   1bf24:	03d89863          	bne	a7,t4,1bf54 <__subtf3+0x568>
   1bf28:	00c6e533          	or	a0,a3,a2
   1bf2c:	2e050063          	beqz	a0,1c20c <__subtf3+0x820>
   1bf30:	0326d713          	srli	a4,a3,0x32
   1bf34:	00174713          	xori	a4,a4,1
   1bf38:	8b05                	andi	a4,a4,1
   1bf3a:	0712                	slli	a4,a4,0x4
   1bf3c:	87b6                	mv	a5,a3
   1bf3e:	8532                	mv	a0,a2
   1bf40:	8446                	mv	s0,a7
   1bf42:	891a                	mv	s2,t1
   1bf44:	b979                	j	1bbe2 <__subtf3+0x1f6>
   1bf46:	ffd881e3          	beq	a7,t4,1bf28 <__subtf3+0x53c>
   1bf4a:	4585                	li	a1,1
   1bf4c:	15ce                	slli	a1,a1,0x33
   1bf4e:	40e0073b          	negw	a4,a4
   1bf52:	8fcd                	or	a5,a5,a1
   1bf54:	07400593          	li	a1,116
   1bf58:	06e5c863          	blt	a1,a4,1bfc8 <__subtf3+0x5dc>
   1bf5c:	03f00593          	li	a1,63
   1bf60:	02e5cd63          	blt	a1,a4,1bf9a <__subtf3+0x5ae>
   1bf64:	04000813          	li	a6,64
   1bf68:	40e8083b          	subw	a6,a6,a4
   1bf6c:	010795b3          	sll	a1,a5,a6
   1bf70:	00e55e33          	srl	t3,a0,a4
   1bf74:	01051833          	sll	a6,a0,a6
   1bf78:	01c5e5b3          	or	a1,a1,t3
   1bf7c:	01003833          	snez	a6,a6
   1bf80:	0105e5b3          	or	a1,a1,a6
   1bf84:	00e7d733          	srl	a4,a5,a4
   1bf88:	40b60533          	sub	a0,a2,a1
   1bf8c:	40e68733          	sub	a4,a3,a4
   1bf90:	00a63633          	sltu	a2,a2,a0
   1bf94:	40c707b3          	sub	a5,a4,a2
   1bf98:	b759                	j	1bf1e <__subtf3+0x532>
   1bf9a:	fc07059b          	addiw	a1,a4,-64
   1bf9e:	04000e13          	li	t3,64
   1bfa2:	00b7d5b3          	srl	a1,a5,a1
   1bfa6:	4801                	li	a6,0
   1bfa8:	01c70863          	beq	a4,t3,1bfb8 <__subtf3+0x5cc>
   1bfac:	08000813          	li	a6,128
   1bfb0:	40e8083b          	subw	a6,a6,a4
   1bfb4:	01079833          	sll	a6,a5,a6
   1bfb8:	00a86833          	or	a6,a6,a0
   1bfbc:	01003833          	snez	a6,a6
   1bfc0:	0105e5b3          	or	a1,a1,a6
   1bfc4:	4701                	li	a4,0
   1bfc6:	b7c9                	j	1bf88 <__subtf3+0x59c>
   1bfc8:	00a7e5b3          	or	a1,a5,a0
   1bfcc:	00b035b3          	snez	a1,a1
   1bfd0:	bfd5                	j	1bfc4 <__subtf3+0x5d8>
   1bfd2:	00180f13          	addi	t5,a6,1
   1bfd6:	ffee0713          	addi	a4,t3,-2
   1bfda:	00ef7733          	and	a4,t5,a4
   1bfde:	ef65                	bnez	a4,1c0d6 <__subtf3+0x6ea>
   1bfe0:	00c6ee33          	or	t3,a3,a2
   1bfe4:	00a7ef33          	or	t5,a5,a0
   1bfe8:	0a081363          	bnez	a6,1c08e <__subtf3+0x6a2>
   1bfec:	040f1e63          	bnez	t5,1c048 <__subtf3+0x65c>
   1bff0:	1e0e1263          	bnez	t3,1c1d4 <__subtf3+0x7e8>
   1bff4:	ffe48913          	addi	s2,s1,-2
   1bff8:	00193913          	seqz	s2,s2
   1bffc:	4781                	li	a5,0
   1bffe:	4501                	li	a0,0
   1c000:	00f56733          	or	a4,a0,a5
   1c004:	22070063          	beqz	a4,1c224 <__subtf3+0x838>
   1c008:	00151693          	slli	a3,a0,0x1
   1c00c:	03f55713          	srli	a4,a0,0x3f
   1c010:	00179593          	slli	a1,a5,0x1
   1c014:	0076f613          	andi	a2,a3,7
   1c018:	95ba                	add	a1,a1,a4
   1c01a:	4701                	li	a4,0
   1c01c:	c205                	beqz	a2,1c03c <__subtf3+0x650>
   1c01e:	4709                	li	a4,2
   1c020:	1ce48b63          	beq	s1,a4,1c1f6 <__subtf3+0x80a>
   1c024:	470d                	li	a4,3
   1c026:	1ae48d63          	beq	s1,a4,1c1e0 <__subtf3+0x7f4>
   1c02a:	4705                	li	a4,1
   1c02c:	e881                	bnez	s1,1c03c <__subtf3+0x650>
   1c02e:	00f6f613          	andi	a2,a3,15
   1c032:	4811                	li	a6,4
   1c034:	ffc6b693          	sltiu	a3,a3,-4
   1c038:	1b061963          	bne	a2,a6,1c1ea <__subtf3+0x7fe>
   1c03c:	91d1                	srli	a1,a1,0x34
   1c03e:	0015c593          	xori	a1,a1,1
   1c042:	8985                	andi	a1,a1,1
   1c044:	4401                	li	s0,0
   1c046:	b6b1                	j	1bb92 <__subtf3+0x1a6>
   1c048:	fa0e0ce3          	beqz	t3,1c000 <__subtf3+0x614>
   1c04c:	40c505b3          	sub	a1,a0,a2
   1c050:	00b53833          	sltu	a6,a0,a1
   1c054:	40d78733          	sub	a4,a5,a3
   1c058:	41070733          	sub	a4,a4,a6
   1c05c:	03375813          	srli	a6,a4,0x33
   1c060:	00187813          	andi	a6,a6,1
   1c064:	00080b63          	beqz	a6,1c07a <__subtf3+0x68e>
   1c068:	40a60533          	sub	a0,a2,a0
   1c06c:	8e9d                	sub	a3,a3,a5
   1c06e:	00a63633          	sltu	a2,a2,a0
   1c072:	40c687b3          	sub	a5,a3,a2
   1c076:	891a                	mv	s2,t1
   1c078:	b761                	j	1c000 <__subtf3+0x614>
   1c07a:	00e5e533          	or	a0,a1,a4
   1c07e:	14051e63          	bnez	a0,1c1da <__subtf3+0x7ee>
   1c082:	ffe48913          	addi	s2,s1,-2
   1c086:	00193913          	seqz	s2,s2
   1c08a:	4781                	li	a5,0
   1c08c:	bf95                	j	1c000 <__subtf3+0x614>
   1c08e:	03d81663          	bne	a6,t4,1c0ba <__subtf3+0x6ce>
   1c092:	1c0f0963          	beqz	t5,1c264 <__subtf3+0x878>
   1c096:	0327d713          	srli	a4,a5,0x32
   1c09a:	00174713          	xori	a4,a4,1
   1c09e:	8b05                	andi	a4,a4,1
   1c0a0:	0712                	slli	a4,a4,0x4
   1c0a2:	03089763          	bne	a7,a6,1c0d0 <__subtf3+0x6e4>
   1c0a6:	000e0d63          	beqz	t3,1c0c0 <__subtf3+0x6d4>
   1c0aa:	0326d813          	srli	a6,a3,0x32
   1c0ae:	00187813          	andi	a6,a6,1
   1c0b2:	00081763          	bnez	a6,1c0c0 <__subtf3+0x6d4>
   1c0b6:	4741                	li	a4,16
   1c0b8:	a021                	j	1c0c0 <__subtf3+0x6d4>
   1c0ba:	4701                	li	a4,0
   1c0bc:	ffd885e3          	beq	a7,t4,1c0a6 <__subtf3+0x6ba>
   1c0c0:	000f1863          	bnez	t5,1c0d0 <__subtf3+0x6e4>
   1c0c4:	140e0863          	beqz	t3,1c214 <__subtf3+0x828>
   1c0c8:	87b6                	mv	a5,a3
   1c0ca:	8532                	mv	a0,a2
   1c0cc:	891a                	mv	s2,t1
   1c0ce:	b125                	j	1bcf6 <__subtf3+0x30a>
   1c0d0:	c20e03e3          	beqz	t3,1bcf6 <__subtf3+0x30a>
   1c0d4:	b135                	j	1bd00 <__subtf3+0x314>
   1c0d6:	40c50a33          	sub	s4,a0,a2
   1c0da:	01453733          	sltu	a4,a0,s4
   1c0de:	40d789b3          	sub	s3,a5,a3
   1c0e2:	40e989b3          	sub	s3,s3,a4
   1c0e6:	0339d713          	srli	a4,s3,0x33
   1c0ea:	8b05                	andi	a4,a4,1
   1c0ec:	cf25                	beqz	a4,1c164 <__subtf3+0x778>
   1c0ee:	40a60a33          	sub	s4,a2,a0
   1c0f2:	40f689b3          	sub	s3,a3,a5
   1c0f6:	01463633          	sltu	a2,a2,s4
   1c0fa:	40c989b3          	sub	s3,s3,a2
   1c0fe:	891a                	mv	s2,t1
   1c100:	06098663          	beqz	s3,1c16c <__subtf3+0x780>
   1c104:	854e                	mv	a0,s3
   1c106:	53a000ef          	jal	ra,1c640 <__clzdi2>
   1c10a:	2501                	sext.w	a0,a0
   1c10c:	ff45069b          	addiw	a3,a0,-12
   1c110:	03f00793          	li	a5,63
   1c114:	8736                	mv	a4,a3
   1c116:	06d7c163          	blt	a5,a3,1c178 <__subtf3+0x78c>
   1c11a:	04000793          	li	a5,64
   1c11e:	9f95                	subw	a5,a5,a3
   1c120:	00d999b3          	sll	s3,s3,a3
   1c124:	00fa57b3          	srl	a5,s4,a5
   1c128:	0137e7b3          	or	a5,a5,s3
   1c12c:	00da1533          	sll	a0,s4,a3
   1c130:	0686ce63          	blt	a3,s0,1c1ac <__subtf3+0x7c0>
   1c134:	9f01                	subw	a4,a4,s0
   1c136:	0017061b          	addiw	a2,a4,1
   1c13a:	03f00693          	li	a3,63
   1c13e:	04c6c363          	blt	a3,a2,1c184 <__subtf3+0x798>
   1c142:	04000713          	li	a4,64
   1c146:	9f11                	subw	a4,a4,a2
   1c148:	00e796b3          	sll	a3,a5,a4
   1c14c:	00c555b3          	srl	a1,a0,a2
   1c150:	00e51733          	sll	a4,a0,a4
   1c154:	8ecd                	or	a3,a3,a1
   1c156:	00e03733          	snez	a4,a4
   1c15a:	00e6e533          	or	a0,a3,a4
   1c15e:	00c7d7b3          	srl	a5,a5,a2
   1c162:	bd79                	j	1c000 <__subtf3+0x614>
   1c164:	013a6533          	or	a0,s4,s3
   1c168:	fd41                	bnez	a0,1c100 <__subtf3+0x714>
   1c16a:	bf21                	j	1c082 <__subtf3+0x696>
   1c16c:	8552                	mv	a0,s4
   1c16e:	4d2000ef          	jal	ra,1c640 <__clzdi2>
   1c172:	0405051b          	addiw	a0,a0,64
   1c176:	bf59                	j	1c10c <__subtf3+0x720>
   1c178:	fb45079b          	addiw	a5,a0,-76
   1c17c:	00fa17b3          	sll	a5,s4,a5
   1c180:	4501                	li	a0,0
   1c182:	b77d                	j	1c130 <__subtf3+0x744>
   1c184:	fc17071b          	addiw	a4,a4,-63
   1c188:	04000813          	li	a6,64
   1c18c:	00e7d6b3          	srl	a3,a5,a4
   1c190:	4701                	li	a4,0
   1c192:	01060763          	beq	a2,a6,1c1a0 <__subtf3+0x7b4>
   1c196:	08000713          	li	a4,128
   1c19a:	9f11                	subw	a4,a4,a2
   1c19c:	00e79733          	sll	a4,a5,a4
   1c1a0:	8f49                	or	a4,a4,a0
   1c1a2:	00e03733          	snez	a4,a4
   1c1a6:	00e6e533          	or	a0,a3,a4
   1c1aa:	b5c5                	j	1c08a <__subtf3+0x69e>
   1c1ac:	577d                	li	a4,-1
   1c1ae:	174e                	slli	a4,a4,0x33
   1c1b0:	177d                	addi	a4,a4,-1
   1c1b2:	8c15                	sub	s0,s0,a3
   1c1b4:	8ff9                	and	a5,a5,a4
   1c1b6:	e40405e3          	beqz	s0,1c000 <__subtf3+0x614>
   1c1ba:	b229                	j	1bac4 <__subtf3+0xd8>
   1c1bc:	87b6                	mv	a5,a3
   1c1be:	8532                	mv	a0,a2
   1c1c0:	8446                	mv	s0,a7
   1c1c2:	bfd5                	j	1c1b6 <__subtf3+0x7ca>
   1c1c4:	87b6                	mv	a5,a3
   1c1c6:	8532                	mv	a0,a2
   1c1c8:	8446                	mv	s0,a7
   1c1ca:	891a                	mv	s2,t1
   1c1cc:	b7ed                	j	1c1b6 <__subtf3+0x7ca>
   1c1ce:	87b6                	mv	a5,a3
   1c1d0:	8532                	mv	a0,a2
   1c1d2:	b53d                	j	1c000 <__subtf3+0x614>
   1c1d4:	87b6                	mv	a5,a3
   1c1d6:	8532                	mv	a0,a2
   1c1d8:	bd79                	j	1c076 <__subtf3+0x68a>
   1c1da:	87ba                	mv	a5,a4
   1c1dc:	852e                	mv	a0,a1
   1c1de:	b50d                	j	1c000 <__subtf3+0x614>
   1c1e0:	4705                	li	a4,1
   1c1e2:	e4091de3          	bnez	s2,1c03c <__subtf3+0x650>
   1c1e6:	ff86b693          	sltiu	a3,a3,-8
   1c1ea:	0016c693          	xori	a3,a3,1
   1c1ee:	1682                	slli	a3,a3,0x20
   1c1f0:	9281                	srli	a3,a3,0x20
   1c1f2:	95b6                	add	a1,a1,a3
   1c1f4:	b5a1                	j	1c03c <__subtf3+0x650>
   1c1f6:	4705                	li	a4,1
   1c1f8:	e40902e3          	beqz	s2,1c03c <__subtf3+0x650>
   1c1fc:	b7ed                	j	1c1e6 <__subtf3+0x7fa>
   1c1fe:	4781                	li	a5,0
   1c200:	8446                	mv	s0,a7
   1c202:	4701                	li	a4,0
   1c204:	b621                	j	1bd0c <__subtf3+0x320>
   1c206:	4781                	li	a5,0
   1c208:	4501                	li	a0,0
   1c20a:	bfe5                	j	1c202 <__subtf3+0x816>
   1c20c:	4781                	li	a5,0
   1c20e:	8446                	mv	s0,a7
   1c210:	891a                	mv	s2,t1
   1c212:	bfc5                	j	1c202 <__subtf3+0x816>
   1c214:	4785                	li	a5,1
   1c216:	6421                	lui	s0,0x8
   1c218:	4501                	li	a0,0
   1c21a:	4901                	li	s2,0
   1c21c:	17ca                	slli	a5,a5,0x32
   1c21e:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1c220:	4741                	li	a4,16
   1c222:	b4ed                	j	1bd0c <__subtf3+0x320>
   1c224:	4781                	li	a5,0
   1c226:	4501                	li	a0,0
   1c228:	4401                	li	s0,0
   1c22a:	bfe1                	j	1c202 <__subtf3+0x816>
   1c22c:	ba091be3          	bnez	s2,1bde2 <__subtf3+0x3f6>
   1c230:	00850693          	addi	a3,a0,8
   1c234:	b65d                	j	1bdda <__subtf3+0x3ee>
   1c236:	ba0906e3          	beqz	s2,1bde2 <__subtf3+0x3f6>
   1c23a:	bfdd                	j	1c230 <__subtf3+0x844>
   1c23c:	4501                	li	a0,0
   1c23e:	cc99                	beqz	s1,1c25c <__subtf3+0x870>
   1c240:	478d                	li	a5,3
   1c242:	00f49863          	bne	s1,a5,1c252 <__subtf3+0x866>
   1c246:	00090b63          	beqz	s2,1c25c <__subtf3+0x870>
   1c24a:	557d                	li	a0,-1
   1c24c:	ffe68413          	addi	s0,a3,-2
   1c250:	a031                	j	1c25c <__subtf3+0x870>
   1c252:	4789                	li	a5,2
   1c254:	fef49be3          	bne	s1,a5,1c24a <__subtf3+0x85e>
   1c258:	fe0909e3          	beqz	s2,1c24a <__subtf3+0x85e>
   1c25c:	00576713          	ori	a4,a4,5
   1c260:	87aa                	mv	a5,a0
   1c262:	b4d9                	j	1bd28 <__subtf3+0x33c>
   1c264:	4701                	li	a4,0
   1c266:	e5089fe3          	bne	a7,a6,1c0c4 <__subtf3+0x6d8>
   1c26a:	bd35                	j	1c0a6 <__subtf3+0x6ba>
   1c26c:	4701                	li	a4,0
   1c26e:	a90892e3          	bne	a7,a6,1bcf2 <__subtf3+0x306>
   1c272:	bcb9                	j	1bcd0 <__subtf3+0x2e4>

000000000001c274 <__fixtfsi>:
   1c274:	862a                	mv	a2,a0
   1c276:	002027f3          	frrm	a5
   1c27a:	6811                	lui	a6,0x4
   1c27c:	00159693          	slli	a3,a1,0x1
   1c280:	01059793          	slli	a5,a1,0x10
   1c284:	92c5                	srli	a3,a3,0x31
   1c286:	ffe80713          	addi	a4,a6,-2 # 3ffe <exit-0xc0ea>
   1c28a:	83c1                	srli	a5,a5,0x10
   1c28c:	91fd                	srli	a1,a1,0x3f
   1c28e:	00d74863          	blt	a4,a3,1c29e <__fixtfsi+0x2a>
   1c292:	e6a5                	bnez	a3,1c2fa <__fixtfsi+0x86>
   1c294:	00f56633          	or	a2,a0,a5
   1c298:	4501                	li	a0,0
   1c29a:	e61d                	bnez	a2,1c2c8 <__fixtfsi+0x54>
   1c29c:	8082                	ret
   1c29e:	01d80713          	addi	a4,a6,29
   1c2a2:	02d75563          	bge	a4,a3,1c2cc <__fixtfsi+0x58>
   1c2a6:	80000737          	lui	a4,0x80000
   1c2aa:	fff74713          	not	a4,a4
   1c2ae:	00b7053b          	addw	a0,a4,a1
   1c2b2:	c5b1                	beqz	a1,1c2fe <__fixtfsi+0x8a>
   1c2b4:	0879                	addi	a6,a6,30
   1c2b6:	4741                	li	a4,16
   1c2b8:	05069463          	bne	a3,a6,1c300 <__fixtfsi+0x8c>
   1c2bc:	0117d693          	srli	a3,a5,0x11
   1c2c0:	e2a1                	bnez	a3,1c300 <__fixtfsi+0x8c>
   1c2c2:	17be                	slli	a5,a5,0x2f
   1c2c4:	8fd1                	or	a5,a5,a2
   1c2c6:	cb8d                	beqz	a5,1c2f8 <__fixtfsi+0x84>
   1c2c8:	4705                	li	a4,1
   1c2ca:	a81d                	j	1c300 <__fixtfsi+0x8c>
   1c2cc:	4705                	li	a4,1
   1c2ce:	1742                	slli	a4,a4,0x30
   1c2d0:	8fd9                	or	a5,a5,a4
   1c2d2:	6611                	lui	a2,0x4
   1c2d4:	7771                	lui	a4,0xffffc
   1c2d6:	2745                	addiw	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc719>
   1c2d8:	02f6061b          	addiw	a2,a2,47 # 402f <exit-0xc0b9>
   1c2dc:	9f35                	addw	a4,a4,a3
   1c2de:	40d606bb          	subw	a3,a2,a3
   1c2e2:	00e79733          	sll	a4,a5,a4
   1c2e6:	00d7d7b3          	srl	a5,a5,a3
   1c2ea:	8f49                	or	a4,a4,a0
   1c2ec:	0007851b          	sext.w	a0,a5
   1c2f0:	c199                	beqz	a1,1c2f6 <__fixtfsi+0x82>
   1c2f2:	40a0053b          	negw	a0,a0
   1c2f6:	fb69                	bnez	a4,1c2c8 <__fixtfsi+0x54>
   1c2f8:	8082                	ret
   1c2fa:	4501                	li	a0,0
   1c2fc:	b7f1                	j	1c2c8 <__fixtfsi+0x54>
   1c2fe:	4741                	li	a4,16
   1c300:	00172073          	csrs	fflags,a4
   1c304:	bfd5                	j	1c2f8 <__fixtfsi+0x84>

000000000001c306 <__floatsitf>:
   1c306:	1101                	addi	sp,sp,-32
   1c308:	ec06                	sd	ra,24(sp)
   1c30a:	e822                	sd	s0,16(sp)
   1c30c:	e426                	sd	s1,8(sp)
   1c30e:	c139                	beqz	a0,1c354 <__floatsitf+0x4e>
   1c310:	0005079b          	sext.w	a5,a0
   1c314:	03f55493          	srli	s1,a0,0x3f
   1c318:	00055463          	bgez	a0,1c320 <__floatsitf+0x1a>
   1c31c:	40f007bb          	negw	a5,a5
   1c320:	02079413          	slli	s0,a5,0x20
   1c324:	9001                	srli	s0,s0,0x20
   1c326:	8522                	mv	a0,s0
   1c328:	318000ef          	jal	ra,1c640 <__clzdi2>
   1c32c:	6591                	lui	a1,0x4
   1c32e:	03e5859b          	addiw	a1,a1,62 # 403e <exit-0xc0aa>
   1c332:	9d89                	subw	a1,a1,a0
   1c334:	3545                	addiw	a0,a0,-15
   1c336:	00a417b3          	sll	a5,s0,a0
   1c33a:	60e2                	ld	ra,24(sp)
   1c33c:	6442                	ld	s0,16(sp)
   1c33e:	00f4949b          	slliw	s1,s1,0xf
   1c342:	8dc5                	or	a1,a1,s1
   1c344:	07c2                	slli	a5,a5,0x10
   1c346:	15c2                	slli	a1,a1,0x30
   1c348:	83c1                	srli	a5,a5,0x10
   1c34a:	64a2                	ld	s1,8(sp)
   1c34c:	4501                	li	a0,0
   1c34e:	8ddd                	or	a1,a1,a5
   1c350:	6105                	addi	sp,sp,32
   1c352:	8082                	ret
   1c354:	4781                	li	a5,0
   1c356:	4581                	li	a1,0
   1c358:	4481                	li	s1,0
   1c35a:	b7c5                	j	1c33a <__floatsitf+0x34>

000000000001c35c <__extenddftf2>:
   1c35c:	1101                	addi	sp,sp,-32
   1c35e:	e20507d3          	fmv.x.d	a5,fa0
   1c362:	ec06                	sd	ra,24(sp)
   1c364:	e822                	sd	s0,16(sp)
   1c366:	e426                	sd	s1,8(sp)
   1c368:	00202773          	frrm	a4
   1c36c:	0347d513          	srli	a0,a5,0x34
   1c370:	7ff57513          	andi	a0,a0,2047
   1c374:	00c79413          	slli	s0,a5,0xc
   1c378:	03f7d493          	srli	s1,a5,0x3f
   1c37c:	00150793          	addi	a5,a0,1
   1c380:	7fe7f793          	andi	a5,a5,2046
   1c384:	8031                	srli	s0,s0,0xc
   1c386:	cb91                	beqz	a5,1c39a <__extenddftf2+0x3e>
   1c388:	6791                	lui	a5,0x4
   1c38a:	c0078793          	addi	a5,a5,-1024 # 3c00 <exit-0xc4e8>
   1c38e:	953e                	add	a0,a0,a5
   1c390:	00445793          	srli	a5,s0,0x4
   1c394:	1472                	slli	s0,s0,0x3c
   1c396:	4701                	li	a4,0
   1c398:	a8b9                	j	1c3f6 <__extenddftf2+0x9a>
   1c39a:	ed1d                	bnez	a0,1c3d8 <__extenddftf2+0x7c>
   1c39c:	4781                	li	a5,0
   1c39e:	dc65                	beqz	s0,1c396 <__extenddftf2+0x3a>
   1c3a0:	8522                	mv	a0,s0
   1c3a2:	29e000ef          	jal	ra,1c640 <__clzdi2>
   1c3a6:	0005071b          	sext.w	a4,a0
   1c3aa:	47b9                	li	a5,14
   1c3ac:	02e7c063          	blt	a5,a4,1c3cc <__extenddftf2+0x70>
   1c3b0:	47bd                	li	a5,15
   1c3b2:	9f89                	subw	a5,a5,a0
   1c3b4:	0315071b          	addiw	a4,a0,49
   1c3b8:	00f457b3          	srl	a5,s0,a5
   1c3bc:	00e41433          	sll	s0,s0,a4
   1c3c0:	6711                	lui	a4,0x4
   1c3c2:	c0c7071b          	addiw	a4,a4,-1012 # 3c0c <exit-0xc4dc>
   1c3c6:	40a7053b          	subw	a0,a4,a0
   1c3ca:	b7f1                	j	1c396 <__extenddftf2+0x3a>
   1c3cc:	ff15079b          	addiw	a5,a0,-15
   1c3d0:	00f417b3          	sll	a5,s0,a5
   1c3d4:	4401                	li	s0,0
   1c3d6:	b7ed                	j	1c3c0 <__extenddftf2+0x64>
   1c3d8:	c021                	beqz	s0,1c418 <__extenddftf2+0xbc>
   1c3da:	03345713          	srli	a4,s0,0x33
   1c3de:	00174713          	xori	a4,a4,1
   1c3e2:	4685                	li	a3,1
   1c3e4:	00445793          	srli	a5,s0,0x4
   1c3e8:	8b05                	andi	a4,a4,1
   1c3ea:	16be                	slli	a3,a3,0x2f
   1c3ec:	6521                	lui	a0,0x8
   1c3ee:	0712                	slli	a4,a4,0x4
   1c3f0:	8fd5                	or	a5,a5,a3
   1c3f2:	1472                	slli	s0,s0,0x3c
   1c3f4:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1c3f6:	01079593          	slli	a1,a5,0x10
   1c3fa:	00f4979b          	slliw	a5,s1,0xf
   1c3fe:	8d5d                	or	a0,a0,a5
   1c400:	1542                	slli	a0,a0,0x30
   1c402:	81c1                	srli	a1,a1,0x10
   1c404:	8dc9                	or	a1,a1,a0
   1c406:	c319                	beqz	a4,1c40c <__extenddftf2+0xb0>
   1c408:	00172073          	csrs	fflags,a4
   1c40c:	60e2                	ld	ra,24(sp)
   1c40e:	8522                	mv	a0,s0
   1c410:	6442                	ld	s0,16(sp)
   1c412:	64a2                	ld	s1,8(sp)
   1c414:	6105                	addi	sp,sp,32
   1c416:	8082                	ret
   1c418:	6521                	lui	a0,0x8
   1c41a:	4781                	li	a5,0
   1c41c:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1c41e:	bfa5                	j	1c396 <__extenddftf2+0x3a>

000000000001c420 <__trunctfdf2>:
   1c420:	00202673          	frrm	a2
   1c424:	68a1                	lui	a7,0x8
   1c426:	0305d713          	srli	a4,a1,0x30
   1c42a:	fff88e13          	addi	t3,a7,-1 # 7fff <exit-0x80e9>
   1c42e:	01c77833          	and	a6,a4,t3
   1c432:	03f5d693          	srli	a3,a1,0x3f
   1c436:	00180793          	addi	a5,a6,1
   1c43a:	05c2                	slli	a1,a1,0x10
   1c43c:	18f9                	addi	a7,a7,-2
   1c43e:	81b5                	srli	a1,a1,0xd
   1c440:	03d55713          	srli	a4,a0,0x3d
   1c444:	0117f7b3          	and	a5,a5,a7
   1c448:	2601                	sext.w	a2,a2
   1c44a:	8f4d                	or	a4,a4,a1
   1c44c:	00351313          	slli	t1,a0,0x3
   1c450:	16078863          	beqz	a5,1c5c0 <__trunctfdf2+0x1a0>
   1c454:	77f1                	lui	a5,0xffffc
   1c456:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffdcb08>
   1c45a:	983e                	add	a6,a6,a5
   1c45c:	7fe00793          	li	a5,2046
   1c460:	0907db63          	bge	a5,a6,1c4f6 <__trunctfdf2+0xd6>
   1c464:	c229                	beqz	a2,1c4a6 <__trunctfdf2+0x86>
   1c466:	478d                	li	a5,3
   1c468:	02f61b63          	bne	a2,a5,1c49e <__trunctfdf2+0x7e>
   1c46c:	ce8d                	beqz	a3,1c4a6 <__trunctfdf2+0x86>
   1c46e:	57fd                	li	a5,-1
   1c470:	7fe00813          	li	a6,2046
   1c474:	4701                	li	a4,0
   1c476:	4595                	li	a1,5
   1c478:	4509                	li	a0,2
   1c47a:	0015e593          	ori	a1,a1,1
   1c47e:	18a60d63          	beq	a2,a0,1c618 <__trunctfdf2+0x1f8>
   1c482:	450d                	li	a0,3
   1c484:	18a60663          	beq	a2,a0,1c610 <__trunctfdf2+0x1f0>
   1c488:	e619                	bnez	a2,1c496 <__trunctfdf2+0x76>
   1c48a:	00f7f513          	andi	a0,a5,15
   1c48e:	4891                	li	a7,4
   1c490:	01150363          	beq	a0,a7,1c496 <__trunctfdf2+0x76>
   1c494:	0791                	addi	a5,a5,4
   1c496:	cf01                	beqz	a4,1c4ae <__trunctfdf2+0x8e>
   1c498:	0025e593          	ori	a1,a1,2
   1c49c:	a809                	j	1c4ae <__trunctfdf2+0x8e>
   1c49e:	4789                	li	a5,2
   1c4a0:	fcf617e3          	bne	a2,a5,1c46e <__trunctfdf2+0x4e>
   1c4a4:	d6e9                	beqz	a3,1c46e <__trunctfdf2+0x4e>
   1c4a6:	4781                	li	a5,0
   1c4a8:	7ff00813          	li	a6,2047
   1c4ac:	4595                	li	a1,5
   1c4ae:	0377d713          	srli	a4,a5,0x37
   1c4b2:	8b05                	andi	a4,a4,1
   1c4b4:	cb11                	beqz	a4,1c4c8 <__trunctfdf2+0xa8>
   1c4b6:	0805                	addi	a6,a6,1
   1c4b8:	7ff00713          	li	a4,2047
   1c4bc:	16e80163          	beq	a6,a4,1c61e <__trunctfdf2+0x1fe>
   1c4c0:	567d                	li	a2,-1
   1c4c2:	165e                	slli	a2,a2,0x37
   1c4c4:	167d                	addi	a2,a2,-1
   1c4c6:	8ff1                	and	a5,a5,a2
   1c4c8:	7ff00713          	li	a4,2047
   1c4cc:	838d                	srli	a5,a5,0x3
   1c4ce:	00e81663          	bne	a6,a4,1c4da <__trunctfdf2+0xba>
   1c4d2:	c781                	beqz	a5,1c4da <__trunctfdf2+0xba>
   1c4d4:	4785                	li	a5,1
   1c4d6:	17ce                	slli	a5,a5,0x33
   1c4d8:	4681                	li	a3,0
   1c4da:	7ff87713          	andi	a4,a6,2047
   1c4de:	07b2                	slli	a5,a5,0xc
   1c4e0:	1752                	slli	a4,a4,0x34
   1c4e2:	83b1                	srli	a5,a5,0xc
   1c4e4:	8fd9                	or	a5,a5,a4
   1c4e6:	16fe                	slli	a3,a3,0x3f
   1c4e8:	8fd5                	or	a5,a5,a3
   1c4ea:	c199                	beqz	a1,1c4f0 <__trunctfdf2+0xd0>
   1c4ec:	0015a073          	csrs	fflags,a1
   1c4f0:	f2078553          	fmv.d.x	fa0,a5
   1c4f4:	8082                	ret
   1c4f6:	0b004063          	bgtz	a6,1c596 <__trunctfdf2+0x176>
   1c4fa:	fcc00593          	li	a1,-52
   1c4fe:	4785                	li	a5,1
   1c500:	02b84e63          	blt	a6,a1,1c53c <__trunctfdf2+0x11c>
   1c504:	17ce                	slli	a5,a5,0x33
   1c506:	03d00893          	li	a7,61
   1c50a:	8f5d                	or	a4,a4,a5
   1c50c:	410888b3          	sub	a7,a7,a6
   1c510:	03f00793          	li	a5,63
   1c514:	0008051b          	sext.w	a0,a6
   1c518:	0517cc63          	blt	a5,a7,1c570 <__trunctfdf2+0x150>
   1c51c:	03d00793          	li	a5,61
   1c520:	0035059b          	addiw	a1,a0,3
   1c524:	9f89                	subw	a5,a5,a0
   1c526:	00f357b3          	srl	a5,t1,a5
   1c52a:	00b31333          	sll	t1,t1,a1
   1c52e:	00603333          	snez	t1,t1
   1c532:	0067e7b3          	or	a5,a5,t1
   1c536:	00b71733          	sll	a4,a4,a1
   1c53a:	8fd9                	or	a5,a5,a4
   1c53c:	00179713          	slli	a4,a5,0x1
   1c540:	00777513          	andi	a0,a4,7
   1c544:	4581                	li	a1,0
   1c546:	cd19                	beqz	a0,1c564 <__trunctfdf2+0x144>
   1c548:	4589                	li	a1,2
   1c54a:	0ab60d63          	beq	a2,a1,1c604 <__trunctfdf2+0x1e4>
   1c54e:	458d                	li	a1,3
   1c550:	0ab60663          	beq	a2,a1,1c5fc <__trunctfdf2+0x1dc>
   1c554:	4585                	li	a1,1
   1c556:	e619                	bnez	a2,1c564 <__trunctfdf2+0x144>
   1c558:	00f77513          	andi	a0,a4,15
   1c55c:	4811                	li	a6,4
   1c55e:	01050363          	beq	a0,a6,1c564 <__trunctfdf2+0x144>
   1c562:	0711                	addi	a4,a4,4
   1c564:	9361                	srli	a4,a4,0x38
   1c566:	00174713          	xori	a4,a4,1
   1c56a:	8b05                	andi	a4,a4,1
   1c56c:	4801                	li	a6,0
   1c56e:	a081                	j	1c5ae <__trunctfdf2+0x18e>
   1c570:	57f5                	li	a5,-3
   1c572:	9f89                	subw	a5,a5,a0
   1c574:	04000813          	li	a6,64
   1c578:	00f757b3          	srl	a5,a4,a5
   1c57c:	4581                	li	a1,0
   1c57e:	01088663          	beq	a7,a6,1c58a <__trunctfdf2+0x16a>
   1c582:	0435051b          	addiw	a0,a0,67
   1c586:	00a715b3          	sll	a1,a4,a0
   1c58a:	0065e5b3          	or	a1,a1,t1
   1c58e:	00b035b3          	snez	a1,a1
   1c592:	8fcd                	or	a5,a5,a1
   1c594:	b765                	j	1c53c <__trunctfdf2+0x11c>
   1c596:	00751793          	slli	a5,a0,0x7
   1c59a:	00f037b3          	snez	a5,a5
   1c59e:	03c35313          	srli	t1,t1,0x3c
   1c5a2:	0712                	slli	a4,a4,0x4
   1c5a4:	0067e7b3          	or	a5,a5,t1
   1c5a8:	8fd9                	or	a5,a5,a4
   1c5aa:	4581                	li	a1,0
   1c5ac:	4701                	li	a4,0
   1c5ae:	0077f513          	andi	a0,a5,7
   1c5b2:	ec0513e3          	bnez	a0,1c478 <__trunctfdf2+0x58>
   1c5b6:	ee070ce3          	beqz	a4,1c4ae <__trunctfdf2+0x8e>
   1c5ba:	0015f713          	andi	a4,a1,1
   1c5be:	bde1                	j	1c496 <__trunctfdf2+0x76>
   1c5c0:	006767b3          	or	a5,a4,t1
   1c5c4:	00081563          	bnez	a6,1c5ce <__trunctfdf2+0x1ae>
   1c5c8:	eb85                	bnez	a5,1c5f8 <__trunctfdf2+0x1d8>
   1c5ca:	4581                	li	a1,0
   1c5cc:	b5cd                	j	1c4ae <__trunctfdf2+0x8e>
   1c5ce:	cf95                	beqz	a5,1c60a <__trunctfdf2+0x1ea>
   1c5d0:	4581                	li	a1,0
   1c5d2:	01c81763          	bne	a6,t3,1c5e0 <__trunctfdf2+0x1c0>
   1c5d6:	03275593          	srli	a1,a4,0x32
   1c5da:	0015c593          	xori	a1,a1,1
   1c5de:	0592                	slli	a1,a1,0x4
   1c5e0:	03c35793          	srli	a5,t1,0x3c
   1c5e4:	0712                	slli	a4,a4,0x4
   1c5e6:	8f5d                	or	a4,a4,a5
   1c5e8:	4785                	li	a5,1
   1c5ea:	9b61                	andi	a4,a4,-8
   1c5ec:	17da                	slli	a5,a5,0x36
   1c5ee:	8fd9                	or	a5,a5,a4
   1c5f0:	7ff00813          	li	a6,2047
   1c5f4:	4701                	li	a4,0
   1c5f6:	bf65                	j	1c5ae <__trunctfdf2+0x18e>
   1c5f8:	4785                	li	a5,1
   1c5fa:	b789                	j	1c53c <__trunctfdf2+0x11c>
   1c5fc:	4585                	li	a1,1
   1c5fe:	f2bd                	bnez	a3,1c564 <__trunctfdf2+0x144>
   1c600:	0721                	addi	a4,a4,8
   1c602:	b78d                	j	1c564 <__trunctfdf2+0x144>
   1c604:	4585                	li	a1,1
   1c606:	deb9                	beqz	a3,1c564 <__trunctfdf2+0x144>
   1c608:	bfe5                	j	1c600 <__trunctfdf2+0x1e0>
   1c60a:	7ff00813          	li	a6,2047
   1c60e:	bf75                	j	1c5ca <__trunctfdf2+0x1aa>
   1c610:	e80693e3          	bnez	a3,1c496 <__trunctfdf2+0x76>
   1c614:	07a1                	addi	a5,a5,8
   1c616:	b541                	j	1c496 <__trunctfdf2+0x76>
   1c618:	e6068fe3          	beqz	a3,1c496 <__trunctfdf2+0x76>
   1c61c:	bfe5                	j	1c614 <__trunctfdf2+0x1f4>
   1c61e:	4781                	li	a5,0
   1c620:	ce09                	beqz	a2,1c63a <__trunctfdf2+0x21a>
   1c622:	470d                	li	a4,3
   1c624:	00e61763          	bne	a2,a4,1c632 <__trunctfdf2+0x212>
   1c628:	ca89                	beqz	a3,1c63a <__trunctfdf2+0x21a>
   1c62a:	57fd                	li	a5,-1
   1c62c:	7fe00813          	li	a6,2046
   1c630:	a029                	j	1c63a <__trunctfdf2+0x21a>
   1c632:	4709                	li	a4,2
   1c634:	fee61be3          	bne	a2,a4,1c62a <__trunctfdf2+0x20a>
   1c638:	daed                	beqz	a3,1c62a <__trunctfdf2+0x20a>
   1c63a:	0055e593          	ori	a1,a1,5
   1c63e:	b569                	j	1c4c8 <__trunctfdf2+0xa8>

000000000001c640 <__clzdi2>:
   1c640:	03800793          	li	a5,56
   1c644:	00f55733          	srl	a4,a0,a5
   1c648:	0ff77713          	zext.b	a4,a4
   1c64c:	e319                	bnez	a4,1c652 <__clzdi2+0x12>
   1c64e:	17e1                	addi	a5,a5,-8
   1c650:	fbf5                	bnez	a5,1c644 <__clzdi2+0x4>
   1c652:	6775                	lui	a4,0x1d
   1c654:	04000693          	li	a3,64
   1c658:	8e9d                	sub	a3,a3,a5
   1c65a:	00f55533          	srl	a0,a0,a5
   1c65e:	4d870793          	addi	a5,a4,1240 # 1d4d8 <__clz_tab>
   1c662:	97aa                	add	a5,a5,a0
   1c664:	0007c503          	lbu	a0,0(a5)
   1c668:	40a6853b          	subw	a0,a3,a0
   1c66c:	8082                	ret
