
exer1:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	1141                	addi	sp,sp,-16
   100ea:	4581                	li	a1,0
   100ec:	e022                	sd	s0,0(sp)
   100ee:	e406                	sd	ra,8(sp)
   100f0:	842a                	mv	s0,a0
   100f2:	7a9020ef          	jal	ra,1309a <__call_exitprocs>
   100f6:	6281b503          	ld	a0,1576(gp) # 1f748 <_global_impure_ptr>
   100fa:	6d3c                	ld	a5,88(a0)
   100fc:	c391                	beqz	a5,10100 <exit+0x18>
   100fe:	9782                	jalr	a5
   10100:	8522                	mv	a0,s0
   10102:	6f70a0ef          	jal	ra,1aff8 <_exit>

0000000000010106 <register_fini>:
   10106:	00000793          	li	a5,0
   1010a:	c791                	beqz	a5,10116 <register_fini+0x10>
   1010c:	654d                	lui	a0,0x13
   1010e:	46850513          	addi	a0,a0,1128 # 13468 <__libc_fini_array>
   10112:	04a0306f          	j	1315c <atexit>
   10116:	8082                	ret

0000000000010118 <_start>:
   10118:	0000f197          	auipc	gp,0xf
   1011c:	00818193          	addi	gp,gp,8 # 1f120 <__global_pointer$>
   10120:	65818513          	addi	a0,gp,1624 # 1f778 <i>
   10124:	0000f617          	auipc	a2,0xf
   10128:	7fc60613          	addi	a2,a2,2044 # 1f920 <__BSS_END__>
   1012c:	8e09                	sub	a2,a2,a0
   1012e:	4581                	li	a1,0
   10130:	5c3000ef          	jal	ra,10ef2 <memset>
   10134:	00003517          	auipc	a0,0x3
   10138:	02850513          	addi	a0,a0,40 # 1315c <atexit>
   1013c:	c519                	beqz	a0,1014a <_start+0x32>
   1013e:	00003517          	auipc	a0,0x3
   10142:	32a50513          	addi	a0,a0,810 # 13468 <__libc_fini_array>
   10146:	016030ef          	jal	ra,1315c <atexit>
   1014a:	5b0000ef          	jal	ra,106fa <__libc_init_array>
   1014e:	4502                	lw	a0,0(sp)
   10150:	002c                	addi	a1,sp,8
   10152:	4601                	li	a2,0
   10154:	12e000ef          	jal	ra,10282 <main>
   10158:	bf41                	j	100e8 <exit>

000000000001015a <__do_global_dtors_aux>:
   1015a:	1141                	addi	sp,sp,-16
   1015c:	e022                	sd	s0,0(sp)
   1015e:	6a01c783          	lbu	a5,1696(gp) # 1f7c0 <completed.1>
   10162:	e406                	sd	ra,8(sp)
   10164:	ef91                	bnez	a5,10180 <__do_global_dtors_aux+0x26>
   10166:	00000793          	li	a5,0
   1016a:	cb81                	beqz	a5,1017a <__do_global_dtors_aux+0x20>
   1016c:	6579                	lui	a0,0x1e
   1016e:	5f850513          	addi	a0,a0,1528 # 1e5f8 <__FRAME_END__>
   10172:	00000097          	auipc	ra,0x0
   10176:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   1017a:	4785                	li	a5,1
   1017c:	6af18023          	sb	a5,1696(gp) # 1f7c0 <completed.1>
   10180:	60a2                	ld	ra,8(sp)
   10182:	6402                	ld	s0,0(sp)
   10184:	0141                	addi	sp,sp,16
   10186:	8082                	ret

0000000000010188 <frame_dummy>:
   10188:	00000793          	li	a5,0
   1018c:	cb91                	beqz	a5,101a0 <frame_dummy+0x18>
   1018e:	6579                	lui	a0,0x1e
   10190:	6a818593          	addi	a1,gp,1704 # 1f7c8 <object.0>
   10194:	5f850513          	addi	a0,a0,1528 # 1e5f8 <__FRAME_END__>
   10198:	00000317          	auipc	t1,0x0
   1019c:	00000067          	jr	zero # 0 <exit-0x100e8>
   101a0:	8082                	ret

00000000000101a2 <raise_alarm>:
   101a2:	1101                	addi	sp,sp,-32
   101a4:	ec06                	sd	ra,24(sp)
   101a6:	e822                	sd	s0,16(sp)
   101a8:	1000                	addi	s0,sp,32
   101aa:	fea43423          	sd	a0,-24(s0)
   101ae:	feb43023          	sd	a1,-32(s0)
   101b2:	67f1                	lui	a5,0x1c
   101b4:	67878513          	addi	a0,a5,1656 # 1c678 <__clzdi2+0x48>
   101b8:	6b5000ef          	jal	ra,1106c <puts>
   101bc:	fe043603          	ld	a2,-32(s0)
   101c0:	fe843583          	ld	a1,-24(s0)
   101c4:	67f1                	lui	a5,0x1c
   101c6:	6a078513          	addi	a0,a5,1696 # 1c6a0 <__clzdi2+0x70>
   101ca:	5f9000ef          	jal	ra,10fc2 <printf>
   101ce:	4501                	li	a0,0
   101d0:	f19ff0ef          	jal	ra,100e8 <exit>

00000000000101d4 <print_secret>:
   101d4:	1141                	addi	sp,sp,-16
   101d6:	e406                	sd	ra,8(sp)
   101d8:	e022                	sd	s0,0(sp)
   101da:	0800                	addi	s0,sp,16
   101dc:	6381b783          	ld	a5,1592(gp) # 1f758 <secret>
   101e0:	85be                	mv	a1,a5
   101e2:	67f1                	lui	a5,0x1c
   101e4:	6c078513          	addi	a0,a5,1728 # 1c6c0 <__clzdi2+0x90>
   101e8:	5db000ef          	jal	ra,10fc2 <printf>
   101ec:	4501                	li	a0,0
   101ee:	efbff0ef          	jal	ra,100e8 <exit>

00000000000101f2 <receive_input>:
   101f2:	7175                	addi	sp,sp,-144
   101f4:	e506                	sd	ra,136(sp)
   101f6:	e122                	sd	s0,128(sp)
   101f8:	0900                	addi	s0,sp,144
   101fa:	6401b783          	ld	a5,1600(gp) # 1f760 <_impure_ptr>
   101fe:	679c                	ld	a5,8(a5)
   10200:	863e                	mv	a2,a5
   10202:	10000593          	li	a1,256
   10206:	6d818513          	addi	a0,gp,1752 # 1f7f8 <buffer>
   1020a:	152000ef          	jal	ra,1035c <fgets>
   1020e:	87a2                	mv	a5,s0
   10210:	ff87b703          	ld	a4,-8(a5)
   10214:	66e1b023          	sd	a4,1632(gp) # 1f780 <expected_ra>
   10218:	f7040713          	addi	a4,s0,-144
   1021c:	6d818593          	addi	a1,gp,1752 # 1f7f8 <buffer>
   10220:	853a                	mv	a0,a4
   10222:	0dc010ef          	jal	ra,112fe <strcpy>
   10226:	87a2                	mv	a5,s0
   10228:	ff87b703          	ld	a4,-8(a5)
   1022c:	66e1b423          	sd	a4,1640(gp) # 1f788 <found_ra>
   10230:	6681b703          	ld	a4,1640(gp) # 1f788 <found_ra>
   10234:	6601b783          	ld	a5,1632(gp) # 1f780 <expected_ra>
   10238:	00f70a63          	beq	a4,a5,1024c <receive_input+0x5a>
   1023c:	6681b703          	ld	a4,1640(gp) # 1f788 <found_ra>
   10240:	6601b783          	ld	a5,1632(gp) # 1f780 <expected_ra>
   10244:	85be                	mv	a1,a5
   10246:	853a                	mv	a0,a4
   10248:	f5bff0ef          	jal	ra,101a2 <raise_alarm>
   1024c:	0001                	nop
   1024e:	60aa                	ld	ra,136(sp)
   10250:	640a                	ld	s0,128(sp)
   10252:	6149                	addi	sp,sp,144
   10254:	8082                	ret

0000000000010256 <run>:
   10256:	1141                	addi	sp,sp,-16
   10258:	e406                	sd	ra,8(sp)
   1025a:	e022                	sd	s0,0(sp)
   1025c:	0800                	addi	s0,sp,16
   1025e:	67f1                	lui	a5,0x1c
   10260:	6c878513          	addi	a0,a5,1736 # 1c6c8 <__clzdi2+0x98>
   10264:	609000ef          	jal	ra,1106c <puts>
   10268:	f8bff0ef          	jal	ra,101f2 <receive_input>
   1026c:	67f1                	lui	a5,0x1c
   1026e:	6e878513          	addi	a0,a5,1768 # 1c6e8 <__clzdi2+0xb8>
   10272:	5fb000ef          	jal	ra,1106c <puts>
   10276:	0001                	nop
   10278:	853e                	mv	a0,a5
   1027a:	60a2                	ld	ra,8(sp)
   1027c:	6402                	ld	s0,0(sp)
   1027e:	0141                	addi	sp,sp,16
   10280:	8082                	ret

0000000000010282 <main>:
   10282:	1141                	addi	sp,sp,-16
   10284:	e406                	sd	ra,8(sp)
   10286:	e022                	sd	s0,0(sp)
   10288:	0800                	addi	s0,sp,16
   1028a:	fcdff0ef          	jal	ra,10256 <run>
   1028e:	4781                	li	a5,0
   10290:	853e                	mv	a0,a5
   10292:	60a2                	ld	ra,8(sp)
   10294:	6402                	ld	s0,0(sp)
   10296:	0141                	addi	sp,sp,16
   10298:	8082                	ret

000000000001029a <_fgets_r>:
   1029a:	4785                	li	a5,1
   1029c:	0ac7de63          	bge	a5,a2,10358 <_fgets_r+0xbe>
   102a0:	7139                	addi	sp,sp,-64
   102a2:	f822                	sd	s0,48(sp)
   102a4:	f04a                	sd	s2,32(sp)
   102a6:	ec4e                	sd	s3,24(sp)
   102a8:	e852                	sd	s4,16(sp)
   102aa:	fc06                	sd	ra,56(sp)
   102ac:	f426                	sd	s1,40(sp)
   102ae:	e456                	sd	s5,8(sp)
   102b0:	e05a                	sd	s6,0(sp)
   102b2:	8932                	mv	s2,a2
   102b4:	8a2a                	mv	s4,a0
   102b6:	89ae                	mv	s3,a1
   102b8:	8436                	mv	s0,a3
   102ba:	c119                	beqz	a0,102c0 <_fgets_r+0x26>
   102bc:	493c                	lw	a5,80(a0)
   102be:	cbc1                	beqz	a5,1034e <_fgets_r+0xb4>
   102c0:	397d                	addiw	s2,s2,-1
   102c2:	8ace                	mv	s5,s3
   102c4:	a819                	j	102da <_fgets_r+0x40>
   102c6:	601c                	ld	a5,0(s0)
   102c8:	9f05                	subw	a4,a4,s1
   102ca:	c418                	sw	a4,8(s0)
   102cc:	97a6                	add	a5,a5,s1
   102ce:	e01c                	sd	a5,0(s0)
   102d0:	9aa6                	add	s5,s5,s1
   102d2:	339000ef          	jal	ra,10e0a <memcpy>
   102d6:	04090f63          	beqz	s2,10334 <_fgets_r+0x9a>
   102da:	441c                	lw	a5,8(s0)
   102dc:	85a2                	mv	a1,s0
   102de:	8552                	mv	a0,s4
   102e0:	e789                	bnez	a5,102ea <_fgets_r+0x50>
   102e2:	5a7000ef          	jal	ra,11088 <__srefill_r>
   102e6:	e529                	bnez	a0,10330 <_fgets_r+0x96>
   102e8:	441c                	lw	a5,8(s0)
   102ea:	00043b03          	ld	s6,0(s0)
   102ee:	45a9                	li	a1,10
   102f0:	84ca                	mv	s1,s2
   102f2:	0127f363          	bgeu	a5,s2,102f8 <_fgets_r+0x5e>
   102f6:	84be                	mv	s1,a5
   102f8:	8626                	mv	a2,s1
   102fa:	855a                	mv	a0,s6
   102fc:	281000ef          	jal	ra,10d7c <memchr>
   10300:	0004871b          	sext.w	a4,s1
   10304:	87aa                	mv	a5,a0
   10306:	40e9093b          	subw	s2,s2,a4
   1030a:	8556                	mv	a0,s5
   1030c:	4418                	lw	a4,8(s0)
   1030e:	8626                	mv	a2,s1
   10310:	85da                	mv	a1,s6
   10312:	dbd5                	beqz	a5,102c6 <_fgets_r+0x2c>
   10314:	0785                	addi	a5,a5,1
   10316:	416784b3          	sub	s1,a5,s6
   1031a:	9f05                	subw	a4,a4,s1
   1031c:	8626                	mv	a2,s1
   1031e:	c418                	sw	a4,8(s0)
   10320:	e01c                	sd	a5,0(s0)
   10322:	2e9000ef          	jal	ra,10e0a <memcpy>
   10326:	94d6                	add	s1,s1,s5
   10328:	00048023          	sb	zero,0(s1)
   1032c:	854e                	mv	a0,s3
   1032e:	a031                	j	1033a <_fgets_r+0xa0>
   10330:	033a8263          	beq	s5,s3,10354 <_fgets_r+0xba>
   10334:	000a8023          	sb	zero,0(s5)
   10338:	854e                	mv	a0,s3
   1033a:	70e2                	ld	ra,56(sp)
   1033c:	7442                	ld	s0,48(sp)
   1033e:	74a2                	ld	s1,40(sp)
   10340:	7902                	ld	s2,32(sp)
   10342:	69e2                	ld	s3,24(sp)
   10344:	6a42                	ld	s4,16(sp)
   10346:	6aa2                	ld	s5,8(sp)
   10348:	6b02                	ld	s6,0(sp)
   1034a:	6121                	addi	sp,sp,64
   1034c:	8082                	ret
   1034e:	278000ef          	jal	ra,105c6 <__sinit>
   10352:	b7bd                	j	102c0 <_fgets_r+0x26>
   10354:	4501                	li	a0,0
   10356:	b7d5                	j	1033a <_fgets_r+0xa0>
   10358:	4501                	li	a0,0
   1035a:	8082                	ret

000000000001035c <fgets>:
   1035c:	87aa                	mv	a5,a0
   1035e:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   10362:	86b2                	mv	a3,a2
   10364:	862e                	mv	a2,a1
   10366:	85be                	mv	a1,a5
   10368:	bf0d                	j	1029a <_fgets_r>

000000000001036a <__fp_lock>:
   1036a:	4501                	li	a0,0
   1036c:	8082                	ret

000000000001036e <_cleanup_r>:
   1036e:	65cd                	lui	a1,0x13
   10370:	19e58593          	addi	a1,a1,414 # 1319e <_fclose_r>
   10374:	acf5                	j	10670 <_fwalk_reent>

0000000000010376 <__fp_unlock>:
   10376:	4501                	li	a0,0
   10378:	8082                	ret

000000000001037a <__sinit.part.0>:
   1037a:	7139                	addi	sp,sp,-64
   1037c:	67c1                	lui	a5,0x10
   1037e:	fc06                	sd	ra,56(sp)
   10380:	f822                	sd	s0,48(sp)
   10382:	f426                	sd	s1,40(sp)
   10384:	f04a                	sd	s2,32(sp)
   10386:	ec4e                	sd	s3,24(sp)
   10388:	e852                	sd	s4,16(sp)
   1038a:	e456                	sd	s5,8(sp)
   1038c:	e05a                	sd	s6,0(sp)
   1038e:	6500                	ld	s0,8(a0)
   10390:	36e78793          	addi	a5,a5,878 # 1036e <_cleanup_r>
   10394:	ed3c                	sd	a5,88(a0)
   10396:	53850713          	addi	a4,a0,1336
   1039a:	478d                	li	a5,3
   1039c:	52e53823          	sd	a4,1328(a0)
   103a0:	52f52423          	sw	a5,1320(a0)
   103a4:	52053023          	sd	zero,1312(a0)
   103a8:	4791                	li	a5,4
   103aa:	892a                	mv	s2,a0
   103ac:	c81c                	sw	a5,16(s0)
   103ae:	4621                	li	a2,8
   103b0:	4581                	li	a1,0
   103b2:	0a042623          	sw	zero,172(s0)
   103b6:	00043023          	sd	zero,0(s0)
   103ba:	00043423          	sd	zero,8(s0)
   103be:	00043c23          	sd	zero,24(s0)
   103c2:	02042023          	sw	zero,32(s0)
   103c6:	02042423          	sw	zero,40(s0)
   103ca:	0a440513          	addi	a0,s0,164
   103ce:	325000ef          	jal	ra,10ef2 <memset>
   103d2:	6b45                	lui	s6,0x11
   103d4:	01093483          	ld	s1,16(s2)
   103d8:	6ac5                	lui	s5,0x11
   103da:	6a45                	lui	s4,0x11
   103dc:	69c5                	lui	s3,0x11
   103de:	224b0b13          	addi	s6,s6,548 # 11224 <__sread>
   103e2:	260a8a93          	addi	s5,s5,608 # 11260 <__swrite>
   103e6:	2b4a0a13          	addi	s4,s4,692 # 112b4 <__sseek>
   103ea:	2f698993          	addi	s3,s3,758 # 112f6 <__sclose>
   103ee:	67c1                	lui	a5,0x10
   103f0:	03643c23          	sd	s6,56(s0)
   103f4:	05543023          	sd	s5,64(s0)
   103f8:	05443423          	sd	s4,72(s0)
   103fc:	05343823          	sd	s3,80(s0)
   10400:	f800                	sd	s0,48(s0)
   10402:	07a5                	addi	a5,a5,9 # 10009 <exit-0xdf>
   10404:	c89c                	sw	a5,16(s1)
   10406:	4621                	li	a2,8
   10408:	4581                	li	a1,0
   1040a:	0a04a623          	sw	zero,172(s1)
   1040e:	0004b023          	sd	zero,0(s1)
   10412:	0004b423          	sd	zero,8(s1)
   10416:	0004bc23          	sd	zero,24(s1)
   1041a:	0204a023          	sw	zero,32(s1)
   1041e:	0204a423          	sw	zero,40(s1)
   10422:	0a448513          	addi	a0,s1,164
   10426:	2cd000ef          	jal	ra,10ef2 <memset>
   1042a:	01893403          	ld	s0,24(s2)
   1042e:	000207b7          	lui	a5,0x20
   10432:	0364bc23          	sd	s6,56(s1)
   10436:	0554b023          	sd	s5,64(s1)
   1043a:	0544b423          	sd	s4,72(s1)
   1043e:	0534b823          	sd	s3,80(s1)
   10442:	f884                	sd	s1,48(s1)
   10444:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x6f2>
   10446:	c81c                	sw	a5,16(s0)
   10448:	0a042623          	sw	zero,172(s0)
   1044c:	00043023          	sd	zero,0(s0)
   10450:	00043423          	sd	zero,8(s0)
   10454:	00043c23          	sd	zero,24(s0)
   10458:	02042023          	sw	zero,32(s0)
   1045c:	02042423          	sw	zero,40(s0)
   10460:	0a440513          	addi	a0,s0,164
   10464:	4621                	li	a2,8
   10466:	4581                	li	a1,0
   10468:	28b000ef          	jal	ra,10ef2 <memset>
   1046c:	70e2                	ld	ra,56(sp)
   1046e:	03643c23          	sd	s6,56(s0)
   10472:	05543023          	sd	s5,64(s0)
   10476:	05443423          	sd	s4,72(s0)
   1047a:	05343823          	sd	s3,80(s0)
   1047e:	f800                	sd	s0,48(s0)
   10480:	7442                	ld	s0,48(sp)
   10482:	4785                	li	a5,1
   10484:	04f92823          	sw	a5,80(s2)
   10488:	74a2                	ld	s1,40(sp)
   1048a:	7902                	ld	s2,32(sp)
   1048c:	69e2                	ld	s3,24(sp)
   1048e:	6a42                	ld	s4,16(sp)
   10490:	6aa2                	ld	s5,8(sp)
   10492:	6b02                	ld	s6,0(sp)
   10494:	6121                	addi	sp,sp,64
   10496:	8082                	ret

0000000000010498 <__sfmoreglue>:
   10498:	1101                	addi	sp,sp,-32
   1049a:	e426                	sd	s1,8(sp)
   1049c:	0b000793          	li	a5,176
   104a0:	fff5849b          	addiw	s1,a1,-1
   104a4:	02f484b3          	mul	s1,s1,a5
   104a8:	e04a                	sd	s2,0(sp)
   104aa:	892e                	mv	s2,a1
   104ac:	e822                	sd	s0,16(sp)
   104ae:	ec06                	sd	ra,24(sp)
   104b0:	0c848593          	addi	a1,s1,200
   104b4:	2b0000ef          	jal	ra,10764 <_malloc_r>
   104b8:	842a                	mv	s0,a0
   104ba:	cd01                	beqz	a0,104d2 <__sfmoreglue+0x3a>
   104bc:	0561                	addi	a0,a0,24
   104be:	00043023          	sd	zero,0(s0)
   104c2:	01242423          	sw	s2,8(s0)
   104c6:	e808                	sd	a0,16(s0)
   104c8:	0b048613          	addi	a2,s1,176
   104cc:	4581                	li	a1,0
   104ce:	225000ef          	jal	ra,10ef2 <memset>
   104d2:	60e2                	ld	ra,24(sp)
   104d4:	8522                	mv	a0,s0
   104d6:	6442                	ld	s0,16(sp)
   104d8:	64a2                	ld	s1,8(sp)
   104da:	6902                	ld	s2,0(sp)
   104dc:	6105                	addi	sp,sp,32
   104de:	8082                	ret

00000000000104e0 <__sfp>:
   104e0:	7179                	addi	sp,sp,-48
   104e2:	ec26                	sd	s1,24(sp)
   104e4:	6281b483          	ld	s1,1576(gp) # 1f748 <_global_impure_ptr>
   104e8:	e84a                	sd	s2,16(sp)
   104ea:	f406                	sd	ra,40(sp)
   104ec:	48bc                	lw	a5,80(s1)
   104ee:	f022                	sd	s0,32(sp)
   104f0:	e44e                	sd	s3,8(sp)
   104f2:	e052                	sd	s4,0(sp)
   104f4:	892a                	mv	s2,a0
   104f6:	c3d9                	beqz	a5,1057c <__sfp+0x9c>
   104f8:	52048493          	addi	s1,s1,1312
   104fc:	0b000993          	li	s3,176
   10500:	4a11                	li	s4,4
   10502:	449c                	lw	a5,8(s1)
   10504:	6880                	ld	s0,16(s1)
   10506:	06f05763          	blez	a5,10574 <__sfp+0x94>
   1050a:	37fd                	addiw	a5,a5,-1
   1050c:	1782                	slli	a5,a5,0x20
   1050e:	9381                	srli	a5,a5,0x20
   10510:	0785                	addi	a5,a5,1
   10512:	033787b3          	mul	a5,a5,s3
   10516:	97a2                	add	a5,a5,s0
   10518:	a029                	j	10522 <__sfp+0x42>
   1051a:	0b040413          	addi	s0,s0,176
   1051e:	04f40b63          	beq	s0,a5,10574 <__sfp+0x94>
   10522:	01041703          	lh	a4,16(s0)
   10526:	fb75                	bnez	a4,1051a <__sfp+0x3a>
   10528:	77c1                	lui	a5,0xffff0
   1052a:	0785                	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffd06e1>
   1052c:	0a042623          	sw	zero,172(s0)
   10530:	00043023          	sd	zero,0(s0)
   10534:	00043423          	sd	zero,8(s0)
   10538:	c81c                	sw	a5,16(s0)
   1053a:	00043c23          	sd	zero,24(s0)
   1053e:	02042023          	sw	zero,32(s0)
   10542:	02042423          	sw	zero,40(s0)
   10546:	4621                	li	a2,8
   10548:	4581                	li	a1,0
   1054a:	0a440513          	addi	a0,s0,164
   1054e:	1a5000ef          	jal	ra,10ef2 <memset>
   10552:	04043c23          	sd	zero,88(s0)
   10556:	06042023          	sw	zero,96(s0)
   1055a:	06043c23          	sd	zero,120(s0)
   1055e:	08042023          	sw	zero,128(s0)
   10562:	70a2                	ld	ra,40(sp)
   10564:	8522                	mv	a0,s0
   10566:	7402                	ld	s0,32(sp)
   10568:	64e2                	ld	s1,24(sp)
   1056a:	6942                	ld	s2,16(sp)
   1056c:	69a2                	ld	s3,8(sp)
   1056e:	6a02                	ld	s4,0(sp)
   10570:	6145                	addi	sp,sp,48
   10572:	8082                	ret
   10574:	6080                	ld	s0,0(s1)
   10576:	c419                	beqz	s0,10584 <__sfp+0xa4>
   10578:	84a2                	mv	s1,s0
   1057a:	b761                	j	10502 <__sfp+0x22>
   1057c:	8526                	mv	a0,s1
   1057e:	dfdff0ef          	jal	ra,1037a <__sinit.part.0>
   10582:	bf9d                	j	104f8 <__sfp+0x18>
   10584:	2d800593          	li	a1,728
   10588:	854a                	mv	a0,s2
   1058a:	1da000ef          	jal	ra,10764 <_malloc_r>
   1058e:	842a                	mv	s0,a0
   10590:	cd19                	beqz	a0,105ae <__sfp+0xce>
   10592:	0561                	addi	a0,a0,24
   10594:	00043023          	sd	zero,0(s0)
   10598:	01442423          	sw	s4,8(s0)
   1059c:	e808                	sd	a0,16(s0)
   1059e:	2c000613          	li	a2,704
   105a2:	4581                	li	a1,0
   105a4:	14f000ef          	jal	ra,10ef2 <memset>
   105a8:	e080                	sd	s0,0(s1)
   105aa:	84a2                	mv	s1,s0
   105ac:	bf99                	j	10502 <__sfp+0x22>
   105ae:	0004b023          	sd	zero,0(s1)
   105b2:	47b1                	li	a5,12
   105b4:	00f92023          	sw	a5,0(s2)
   105b8:	b76d                	j	10562 <__sfp+0x82>

00000000000105ba <_cleanup>:
   105ba:	6281b503          	ld	a0,1576(gp) # 1f748 <_global_impure_ptr>
   105be:	65cd                	lui	a1,0x13
   105c0:	19e58593          	addi	a1,a1,414 # 1319e <_fclose_r>
   105c4:	a075                	j	10670 <_fwalk_reent>

00000000000105c6 <__sinit>:
   105c6:	493c                	lw	a5,80(a0)
   105c8:	c391                	beqz	a5,105cc <__sinit+0x6>
   105ca:	8082                	ret
   105cc:	b37d                	j	1037a <__sinit.part.0>

00000000000105ce <__sfp_lock_acquire>:
   105ce:	8082                	ret

00000000000105d0 <__sfp_lock_release>:
   105d0:	8082                	ret

00000000000105d2 <__sinit_lock_acquire>:
   105d2:	8082                	ret

00000000000105d4 <__sinit_lock_release>:
   105d4:	8082                	ret

00000000000105d6 <__fp_lock_all>:
   105d6:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   105da:	65c1                	lui	a1,0x10
   105dc:	36a58593          	addi	a1,a1,874 # 1036a <__fp_lock>
   105e0:	a039                	j	105ee <_fwalk>

00000000000105e2 <__fp_unlock_all>:
   105e2:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   105e6:	65c1                	lui	a1,0x10
   105e8:	37658593          	addi	a1,a1,886 # 10376 <__fp_unlock>
   105ec:	a009                	j	105ee <_fwalk>

00000000000105ee <_fwalk>:
   105ee:	715d                	addi	sp,sp,-80
   105f0:	f84a                	sd	s2,48(sp)
   105f2:	f44e                	sd	s3,40(sp)
   105f4:	f052                	sd	s4,32(sp)
   105f6:	ec56                	sd	s5,24(sp)
   105f8:	e85a                	sd	s6,16(sp)
   105fa:	e45e                	sd	s7,8(sp)
   105fc:	e486                	sd	ra,72(sp)
   105fe:	e0a2                	sd	s0,64(sp)
   10600:	fc26                	sd	s1,56(sp)
   10602:	8a2e                	mv	s4,a1
   10604:	52050913          	addi	s2,a0,1312
   10608:	4b01                	li	s6,0
   1060a:	0b000a93          	li	s5,176
   1060e:	4b85                	li	s7,1
   10610:	59fd                	li	s3,-1
   10612:	00892783          	lw	a5,8(s2)
   10616:	01093403          	ld	s0,16(s2)
   1061a:	02f05b63          	blez	a5,10650 <_fwalk+0x62>
   1061e:	fff7849b          	addiw	s1,a5,-1
   10622:	1482                	slli	s1,s1,0x20
   10624:	9081                	srli	s1,s1,0x20
   10626:	0485                	addi	s1,s1,1
   10628:	035484b3          	mul	s1,s1,s5
   1062c:	94a2                	add	s1,s1,s0
   1062e:	01045783          	lhu	a5,16(s0)
   10632:	00fbfb63          	bgeu	s7,a5,10648 <_fwalk+0x5a>
   10636:	01241783          	lh	a5,18(s0)
   1063a:	8522                	mv	a0,s0
   1063c:	01378663          	beq	a5,s3,10648 <_fwalk+0x5a>
   10640:	9a02                	jalr	s4
   10642:	01656b33          	or	s6,a0,s6
   10646:	2b01                	sext.w	s6,s6
   10648:	0b040413          	addi	s0,s0,176
   1064c:	fe8491e3          	bne	s1,s0,1062e <_fwalk+0x40>
   10650:	00093903          	ld	s2,0(s2)
   10654:	fa091fe3          	bnez	s2,10612 <_fwalk+0x24>
   10658:	60a6                	ld	ra,72(sp)
   1065a:	6406                	ld	s0,64(sp)
   1065c:	74e2                	ld	s1,56(sp)
   1065e:	7942                	ld	s2,48(sp)
   10660:	79a2                	ld	s3,40(sp)
   10662:	7a02                	ld	s4,32(sp)
   10664:	6ae2                	ld	s5,24(sp)
   10666:	6ba2                	ld	s7,8(sp)
   10668:	855a                	mv	a0,s6
   1066a:	6b42                	ld	s6,16(sp)
   1066c:	6161                	addi	sp,sp,80
   1066e:	8082                	ret

0000000000010670 <_fwalk_reent>:
   10670:	715d                	addi	sp,sp,-80
   10672:	f84a                	sd	s2,48(sp)
   10674:	f44e                	sd	s3,40(sp)
   10676:	f052                	sd	s4,32(sp)
   10678:	ec56                	sd	s5,24(sp)
   1067a:	e85a                	sd	s6,16(sp)
   1067c:	e45e                	sd	s7,8(sp)
   1067e:	e062                	sd	s8,0(sp)
   10680:	e486                	sd	ra,72(sp)
   10682:	e0a2                	sd	s0,64(sp)
   10684:	fc26                	sd	s1,56(sp)
   10686:	8c2a                	mv	s8,a0
   10688:	8a2e                	mv	s4,a1
   1068a:	52050913          	addi	s2,a0,1312
   1068e:	4b01                	li	s6,0
   10690:	0b000a93          	li	s5,176
   10694:	4b85                	li	s7,1
   10696:	59fd                	li	s3,-1
   10698:	00892783          	lw	a5,8(s2)
   1069c:	01093403          	ld	s0,16(s2)
   106a0:	02f05c63          	blez	a5,106d8 <_fwalk_reent+0x68>
   106a4:	fff7849b          	addiw	s1,a5,-1
   106a8:	1482                	slli	s1,s1,0x20
   106aa:	9081                	srli	s1,s1,0x20
   106ac:	0485                	addi	s1,s1,1
   106ae:	035484b3          	mul	s1,s1,s5
   106b2:	94a2                	add	s1,s1,s0
   106b4:	01045783          	lhu	a5,16(s0)
   106b8:	00fbfc63          	bgeu	s7,a5,106d0 <_fwalk_reent+0x60>
   106bc:	01241783          	lh	a5,18(s0)
   106c0:	85a2                	mv	a1,s0
   106c2:	8562                	mv	a0,s8
   106c4:	01378663          	beq	a5,s3,106d0 <_fwalk_reent+0x60>
   106c8:	9a02                	jalr	s4
   106ca:	01656b33          	or	s6,a0,s6
   106ce:	2b01                	sext.w	s6,s6
   106d0:	0b040413          	addi	s0,s0,176
   106d4:	fe8490e3          	bne	s1,s0,106b4 <_fwalk_reent+0x44>
   106d8:	00093903          	ld	s2,0(s2)
   106dc:	fa091ee3          	bnez	s2,10698 <_fwalk_reent+0x28>
   106e0:	60a6                	ld	ra,72(sp)
   106e2:	6406                	ld	s0,64(sp)
   106e4:	74e2                	ld	s1,56(sp)
   106e6:	7942                	ld	s2,48(sp)
   106e8:	79a2                	ld	s3,40(sp)
   106ea:	7a02                	ld	s4,32(sp)
   106ec:	6ae2                	ld	s5,24(sp)
   106ee:	6ba2                	ld	s7,8(sp)
   106f0:	6c02                	ld	s8,0(sp)
   106f2:	855a                	mv	a0,s6
   106f4:	6b42                	ld	s6,16(sp)
   106f6:	6161                	addi	sp,sp,80
   106f8:	8082                	ret

00000000000106fa <__libc_init_array>:
   106fa:	1101                	addi	sp,sp,-32
   106fc:	e822                	sd	s0,16(sp)
   106fe:	e04a                	sd	s2,0(sp)
   10700:	6479                	lui	s0,0x1e
   10702:	6979                	lui	s2,0x1e
   10704:	5fc40793          	addi	a5,s0,1532 # 1e5fc <__preinit_array_end>
   10708:	5fc90913          	addi	s2,s2,1532 # 1e5fc <__preinit_array_end>
   1070c:	40f90933          	sub	s2,s2,a5
   10710:	ec06                	sd	ra,24(sp)
   10712:	e426                	sd	s1,8(sp)
   10714:	40395913          	srai	s2,s2,0x3
   10718:	00090b63          	beqz	s2,1072e <__libc_init_array+0x34>
   1071c:	5fc40413          	addi	s0,s0,1532
   10720:	4481                	li	s1,0
   10722:	601c                	ld	a5,0(s0)
   10724:	0485                	addi	s1,s1,1
   10726:	0421                	addi	s0,s0,8
   10728:	9782                	jalr	a5
   1072a:	fe991ce3          	bne	s2,s1,10722 <__libc_init_array+0x28>
   1072e:	6479                	lui	s0,0x1e
   10730:	6979                	lui	s2,0x1e
   10732:	60040793          	addi	a5,s0,1536 # 1e600 <__init_array_start>
   10736:	61090913          	addi	s2,s2,1552 # 1e610 <__do_global_dtors_aux_fini_array_entry>
   1073a:	40f90933          	sub	s2,s2,a5
   1073e:	40395913          	srai	s2,s2,0x3
   10742:	00090b63          	beqz	s2,10758 <__libc_init_array+0x5e>
   10746:	60040413          	addi	s0,s0,1536
   1074a:	4481                	li	s1,0
   1074c:	601c                	ld	a5,0(s0)
   1074e:	0485                	addi	s1,s1,1
   10750:	0421                	addi	s0,s0,8
   10752:	9782                	jalr	a5
   10754:	fe991ce3          	bne	s2,s1,1074c <__libc_init_array+0x52>
   10758:	60e2                	ld	ra,24(sp)
   1075a:	6442                	ld	s0,16(sp)
   1075c:	64a2                	ld	s1,8(sp)
   1075e:	6902                	ld	s2,0(sp)
   10760:	6105                	addi	sp,sp,32
   10762:	8082                	ret

0000000000010764 <_malloc_r>:
   10764:	711d                	addi	sp,sp,-96
   10766:	e4a6                	sd	s1,72(sp)
   10768:	e0ca                	sd	s2,64(sp)
   1076a:	ec86                	sd	ra,88(sp)
   1076c:	e8a2                	sd	s0,80(sp)
   1076e:	fc4e                	sd	s3,56(sp)
   10770:	f852                	sd	s4,48(sp)
   10772:	f456                	sd	s5,40(sp)
   10774:	f05a                	sd	s6,32(sp)
   10776:	ec5e                	sd	s7,24(sp)
   10778:	e862                	sd	s8,16(sp)
   1077a:	e466                	sd	s9,8(sp)
   1077c:	01758493          	addi	s1,a1,23
   10780:	02e00793          	li	a5,46
   10784:	892a                	mv	s2,a0
   10786:	0497e863          	bltu	a5,s1,107d6 <_malloc_r+0x72>
   1078a:	02000793          	li	a5,32
   1078e:	1eb7e663          	bltu	a5,a1,1097a <_malloc_r+0x216>
   10792:	00b000ef          	jal	ra,10f9c <__malloc_lock>
   10796:	02000493          	li	s1,32
   1079a:	05000793          	li	a5,80
   1079e:	4611                	li	a2,4
   107a0:	0001f9b7          	lui	s3,0x1f
   107a4:	d6098993          	addi	s3,s3,-672 # 1ed60 <__malloc_av_>
   107a8:	97ce                	add	a5,a5,s3
   107aa:	6780                	ld	s0,8(a5)
   107ac:	ff078713          	addi	a4,a5,-16
   107b0:	1ee40663          	beq	s0,a4,1099c <_malloc_r+0x238>
   107b4:	641c                	ld	a5,8(s0)
   107b6:	6c14                	ld	a3,24(s0)
   107b8:	6810                	ld	a2,16(s0)
   107ba:	9bf1                	andi	a5,a5,-4
   107bc:	97a2                	add	a5,a5,s0
   107be:	6798                	ld	a4,8(a5)
   107c0:	ee14                	sd	a3,24(a2)
   107c2:	ea90                	sd	a2,16(a3)
   107c4:	00176713          	ori	a4,a4,1
   107c8:	854a                	mv	a0,s2
   107ca:	e798                	sd	a4,8(a5)
   107cc:	7d2000ef          	jal	ra,10f9e <__malloc_unlock>
   107d0:	01040513          	addi	a0,s0,16
   107d4:	a27d                	j	10982 <_malloc_r+0x21e>
   107d6:	800007b7          	lui	a5,0x80000
   107da:	98c1                	andi	s1,s1,-16
   107dc:	fff7c793          	not	a5,a5
   107e0:	1897ed63          	bltu	a5,s1,1097a <_malloc_r+0x216>
   107e4:	18b4eb63          	bltu	s1,a1,1097a <_malloc_r+0x216>
   107e8:	7b4000ef          	jal	ra,10f9c <__malloc_lock>
   107ec:	1f700793          	li	a5,503
   107f0:	3a97f563          	bgeu	a5,s1,10b9a <_malloc_r+0x436>
   107f4:	0094d793          	srli	a5,s1,0x9
   107f8:	28078163          	beqz	a5,10a7a <_malloc_r+0x316>
   107fc:	4711                	li	a4,4
   107fe:	30f76563          	bltu	a4,a5,10b08 <_malloc_r+0x3a4>
   10802:	0064d793          	srli	a5,s1,0x6
   10806:	0397861b          	addiw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffe0719>
   1080a:	0016169b          	slliw	a3,a2,0x1
   1080e:	0387851b          	addiw	a0,a5,56
   10812:	068e                	slli	a3,a3,0x3
   10814:	0001f9b7          	lui	s3,0x1f
   10818:	d6098993          	addi	s3,s3,-672 # 1ed60 <__malloc_av_>
   1081c:	96ce                	add	a3,a3,s3
   1081e:	6680                	ld	s0,8(a3)
   10820:	16c1                	addi	a3,a3,-16
   10822:	18868163          	beq	a3,s0,109a4 <_malloc_r+0x240>
   10826:	45fd                	li	a1,31
   10828:	a031                	j	10834 <_malloc_r+0xd0>
   1082a:	28075963          	bgez	a4,10abc <_malloc_r+0x358>
   1082e:	6c00                	ld	s0,24(s0)
   10830:	16868a63          	beq	a3,s0,109a4 <_malloc_r+0x240>
   10834:	641c                	ld	a5,8(s0)
   10836:	9bf1                	andi	a5,a5,-4
   10838:	40978733          	sub	a4,a5,s1
   1083c:	fee5d7e3          	bge	a1,a4,1082a <_malloc_r+0xc6>
   10840:	0209b403          	ld	s0,32(s3)
   10844:	0001f837          	lui	a6,0x1f
   10848:	d7080813          	addi	a6,a6,-656 # 1ed70 <__malloc_av_+0x10>
   1084c:	862a                	mv	a2,a0
   1084e:	17041363          	bne	s0,a6,109b4 <_malloc_r+0x250>
   10852:	0089b783          	ld	a5,8(s3)
   10856:	4026571b          	sraiw	a4,a2,0x2
   1085a:	4585                	li	a1,1
   1085c:	00e595b3          	sll	a1,a1,a4
   10860:	1ab7fa63          	bgeu	a5,a1,10a14 <_malloc_r+0x2b0>
   10864:	0109b403          	ld	s0,16(s3)
   10868:	00843a83          	ld	s5,8(s0)
   1086c:	ffcafa93          	andi	s5,s5,-4
   10870:	009ae763          	bltu	s5,s1,1087e <_malloc_r+0x11a>
   10874:	409a87b3          	sub	a5,s5,s1
   10878:	477d                	li	a4,31
   1087a:	22f74263          	blt	a4,a5,10a9e <_malloc_r+0x33a>
   1087e:	64818b93          	addi	s7,gp,1608 # 1f768 <__malloc_sbrk_base>
   10882:	6801ba03          	ld	s4,1664(gp) # 1f7a0 <__malloc_top_pad>
   10886:	000bb703          	ld	a4,0(s7)
   1088a:	57fd                	li	a5,-1
   1088c:	01540c33          	add	s8,s0,s5
   10890:	9a26                	add	s4,s4,s1
   10892:	3af70263          	beq	a4,a5,10c36 <_malloc_r+0x4d2>
   10896:	6785                	lui	a5,0x1
   10898:	07fd                	addi	a5,a5,31 # 101f <exit-0xf0c9>
   1089a:	9a3e                	add	s4,s4,a5
   1089c:	77fd                	lui	a5,0xfffff
   1089e:	00fa7a33          	and	s4,s4,a5
   108a2:	85d2                	mv	a1,s4
   108a4:	854a                	mv	a0,s2
   108a6:	149000ef          	jal	ra,111ee <_sbrk_r>
   108aa:	57fd                	li	a5,-1
   108ac:	8b2a                	mv	s6,a0
   108ae:	30f50b63          	beq	a0,a5,10bc4 <_malloc_r+0x460>
   108b2:	31856763          	bltu	a0,s8,10bc0 <_malloc_r+0x45c>
   108b6:	7d818c93          	addi	s9,gp,2008 # 1f8f8 <__malloc_current_mallinfo>
   108ba:	000ca703          	lw	a4,0(s9)
   108be:	014707bb          	addw	a5,a4,s4
   108c2:	00fca023          	sw	a5,0(s9)
   108c6:	86be                	mv	a3,a5
   108c8:	3eac0a63          	beq	s8,a0,10cbc <_malloc_r+0x558>
   108cc:	000bb703          	ld	a4,0(s7)
   108d0:	57fd                	li	a5,-1
   108d2:	40f70163          	beq	a4,a5,10cd4 <_malloc_r+0x570>
   108d6:	418b07b3          	sub	a5,s6,s8
   108da:	9fb5                	addw	a5,a5,a3
   108dc:	00fca023          	sw	a5,0(s9)
   108e0:	00fb7c13          	andi	s8,s6,15
   108e4:	360c0763          	beqz	s8,10c52 <_malloc_r+0x4ee>
   108e8:	6785                	lui	a5,0x1
   108ea:	418b0b33          	sub	s6,s6,s8
   108ee:	01078b93          	addi	s7,a5,16 # 1010 <exit-0xf0d8>
   108f2:	0b41                	addi	s6,s6,16
   108f4:	418b8bb3          	sub	s7,s7,s8
   108f8:	9a5a                	add	s4,s4,s6
   108fa:	17fd                	addi	a5,a5,-1
   108fc:	414b8bb3          	sub	s7,s7,s4
   10900:	00fbfbb3          	and	s7,s7,a5
   10904:	85de                	mv	a1,s7
   10906:	854a                	mv	a0,s2
   10908:	0e7000ef          	jal	ra,111ee <_sbrk_r>
   1090c:	57fd                	li	a5,-1
   1090e:	40f50863          	beq	a0,a5,10d1e <_malloc_r+0x5ba>
   10912:	41650533          	sub	a0,a0,s6
   10916:	000b871b          	sext.w	a4,s7
   1091a:	01750a33          	add	s4,a0,s7
   1091e:	000ca783          	lw	a5,0(s9)
   10922:	0169b823          	sd	s6,16(s3)
   10926:	001a6a13          	ori	s4,s4,1
   1092a:	9fb9                	addw	a5,a5,a4
   1092c:	00fca023          	sw	a5,0(s9)
   10930:	014b3423          	sd	s4,8(s6)
   10934:	3b340363          	beq	s0,s3,10cda <_malloc_r+0x576>
   10938:	467d                	li	a2,31
   1093a:	3b567263          	bgeu	a2,s5,10cde <_malloc_r+0x57a>
   1093e:	6414                	ld	a3,8(s0)
   10940:	fe8a8713          	addi	a4,s5,-24
   10944:	9b41                	andi	a4,a4,-16
   10946:	8a85                	andi	a3,a3,1
   10948:	8ed9                	or	a3,a3,a4
   1094a:	e414                	sd	a3,8(s0)
   1094c:	45a5                	li	a1,9
   1094e:	00e406b3          	add	a3,s0,a4
   10952:	e68c                	sd	a1,8(a3)
   10954:	ea8c                	sd	a1,16(a3)
   10956:	3ce66a63          	bltu	a2,a4,10d2a <_malloc_r+0x5c6>
   1095a:	008b3a03          	ld	s4,8(s6)
   1095e:	845a                	mv	s0,s6
   10960:	67018713          	addi	a4,gp,1648 # 1f790 <__malloc_max_sbrked_mem>
   10964:	6314                	ld	a3,0(a4)
   10966:	00f6f363          	bgeu	a3,a5,1096c <_malloc_r+0x208>
   1096a:	e31c                	sd	a5,0(a4)
   1096c:	67818713          	addi	a4,gp,1656 # 1f798 <__malloc_max_total_mem>
   10970:	6314                	ld	a3,0(a4)
   10972:	24f6fd63          	bgeu	a3,a5,10bcc <_malloc_r+0x468>
   10976:	e31c                	sd	a5,0(a4)
   10978:	ac91                	j	10bcc <_malloc_r+0x468>
   1097a:	47b1                	li	a5,12
   1097c:	00f92023          	sw	a5,0(s2)
   10980:	4501                	li	a0,0
   10982:	60e6                	ld	ra,88(sp)
   10984:	6446                	ld	s0,80(sp)
   10986:	64a6                	ld	s1,72(sp)
   10988:	6906                	ld	s2,64(sp)
   1098a:	79e2                	ld	s3,56(sp)
   1098c:	7a42                	ld	s4,48(sp)
   1098e:	7aa2                	ld	s5,40(sp)
   10990:	7b02                	ld	s6,32(sp)
   10992:	6be2                	ld	s7,24(sp)
   10994:	6c42                	ld	s8,16(sp)
   10996:	6ca2                	ld	s9,8(sp)
   10998:	6125                	addi	sp,sp,96
   1099a:	8082                	ret
   1099c:	6f80                	ld	s0,24(a5)
   1099e:	2609                	addiw	a2,a2,2
   109a0:	e0879ae3          	bne	a5,s0,107b4 <_malloc_r+0x50>
   109a4:	0209b403          	ld	s0,32(s3)
   109a8:	0001f837          	lui	a6,0x1f
   109ac:	d7080813          	addi	a6,a6,-656 # 1ed70 <__malloc_av_+0x10>
   109b0:	eb0401e3          	beq	s0,a6,10852 <_malloc_r+0xee>
   109b4:	641c                	ld	a5,8(s0)
   109b6:	46fd                	li	a3,31
   109b8:	9bf1                	andi	a5,a5,-4
   109ba:	40978733          	sub	a4,a5,s1
   109be:	1ae6c763          	blt	a3,a4,10b6c <_malloc_r+0x408>
   109c2:	0309b423          	sd	a6,40(s3)
   109c6:	0309b023          	sd	a6,32(s3)
   109ca:	0a075f63          	bgez	a4,10a88 <_malloc_r+0x324>
   109ce:	1ff00713          	li	a4,511
   109d2:	0ef76863          	bltu	a4,a5,10ac2 <_malloc_r+0x35e>
   109d6:	838d                	srli	a5,a5,0x3
   109d8:	0017871b          	addiw	a4,a5,1
   109dc:	0017171b          	slliw	a4,a4,0x1
   109e0:	070e                	slli	a4,a4,0x3
   109e2:	0089b503          	ld	a0,8(s3)
   109e6:	974e                	add	a4,a4,s3
   109e8:	630c                	ld	a1,0(a4)
   109ea:	4027d69b          	sraiw	a3,a5,0x2
   109ee:	4785                	li	a5,1
   109f0:	00d797b3          	sll	a5,a5,a3
   109f4:	8fc9                	or	a5,a5,a0
   109f6:	ff070693          	addi	a3,a4,-16
   109fa:	ec14                	sd	a3,24(s0)
   109fc:	e80c                	sd	a1,16(s0)
   109fe:	00f9b423          	sd	a5,8(s3)
   10a02:	e300                	sd	s0,0(a4)
   10a04:	ed80                	sd	s0,24(a1)
   10a06:	4026571b          	sraiw	a4,a2,0x2
   10a0a:	4585                	li	a1,1
   10a0c:	00e595b3          	sll	a1,a1,a4
   10a10:	e4b7eae3          	bltu	a5,a1,10864 <_malloc_r+0x100>
   10a14:	00f5f733          	and	a4,a1,a5
   10a18:	ef01                	bnez	a4,10a30 <_malloc_r+0x2cc>
   10a1a:	0586                	slli	a1,a1,0x1
   10a1c:	9a71                	andi	a2,a2,-4
   10a1e:	00f5f733          	and	a4,a1,a5
   10a22:	2611                	addiw	a2,a2,4
   10a24:	e711                	bnez	a4,10a30 <_malloc_r+0x2cc>
   10a26:	0586                	slli	a1,a1,0x1
   10a28:	00f5f733          	and	a4,a1,a5
   10a2c:	2611                	addiw	a2,a2,4
   10a2e:	df65                	beqz	a4,10a26 <_malloc_r+0x2c2>
   10a30:	48fd                	li	a7,31
   10a32:	0016031b          	addiw	t1,a2,1
   10a36:	0013131b          	slliw	t1,t1,0x1
   10a3a:	030e                	slli	t1,t1,0x3
   10a3c:	1341                	addi	t1,t1,-16 # 10188 <frame_dummy>
   10a3e:	934e                	add	t1,t1,s3
   10a40:	851a                	mv	a0,t1
   10a42:	6d1c                	ld	a5,24(a0)
   10a44:	8e32                	mv	t3,a2
   10a46:	0ef50263          	beq	a0,a5,10b2a <_malloc_r+0x3c6>
   10a4a:	6798                	ld	a4,8(a5)
   10a4c:	843e                	mv	s0,a5
   10a4e:	6f9c                	ld	a5,24(a5)
   10a50:	9b71                	andi	a4,a4,-4
   10a52:	409706b3          	sub	a3,a4,s1
   10a56:	0ed8c163          	blt	a7,a3,10b38 <_malloc_r+0x3d4>
   10a5a:	fe06c6e3          	bltz	a3,10a46 <_malloc_r+0x2e2>
   10a5e:	9722                	add	a4,a4,s0
   10a60:	6714                	ld	a3,8(a4)
   10a62:	6810                	ld	a2,16(s0)
   10a64:	854a                	mv	a0,s2
   10a66:	0016e693          	ori	a3,a3,1
   10a6a:	e714                	sd	a3,8(a4)
   10a6c:	ee1c                	sd	a5,24(a2)
   10a6e:	eb90                	sd	a2,16(a5)
   10a70:	52e000ef          	jal	ra,10f9e <__malloc_unlock>
   10a74:	01040513          	addi	a0,s0,16
   10a78:	b729                	j	10982 <_malloc_r+0x21e>
   10a7a:	40000693          	li	a3,1024
   10a7e:	04000613          	li	a2,64
   10a82:	03f00513          	li	a0,63
   10a86:	b379                	j	10814 <_malloc_r+0xb0>
   10a88:	97a2                	add	a5,a5,s0
   10a8a:	6798                	ld	a4,8(a5)
   10a8c:	854a                	mv	a0,s2
   10a8e:	00176713          	ori	a4,a4,1
   10a92:	e798                	sd	a4,8(a5)
   10a94:	50a000ef          	jal	ra,10f9e <__malloc_unlock>
   10a98:	01040513          	addi	a0,s0,16
   10a9c:	b5dd                	j	10982 <_malloc_r+0x21e>
   10a9e:	0014e713          	ori	a4,s1,1
   10aa2:	e418                	sd	a4,8(s0)
   10aa4:	94a2                	add	s1,s1,s0
   10aa6:	0099b823          	sd	s1,16(s3)
   10aaa:	0017e793          	ori	a5,a5,1
   10aae:	854a                	mv	a0,s2
   10ab0:	e49c                	sd	a5,8(s1)
   10ab2:	4ec000ef          	jal	ra,10f9e <__malloc_unlock>
   10ab6:	01040513          	addi	a0,s0,16
   10aba:	b5e1                	j	10982 <_malloc_r+0x21e>
   10abc:	6c14                	ld	a3,24(s0)
   10abe:	6810                	ld	a2,16(s0)
   10ac0:	b9f5                	j	107bc <_malloc_r+0x58>
   10ac2:	0097d713          	srli	a4,a5,0x9
   10ac6:	4691                	li	a3,4
   10ac8:	0ee6f263          	bgeu	a3,a4,10bac <_malloc_r+0x448>
   10acc:	46d1                	li	a3,20
   10ace:	1ae6e263          	bltu	a3,a4,10c72 <_malloc_r+0x50e>
   10ad2:	05c7059b          	addiw	a1,a4,92
   10ad6:	0015959b          	slliw	a1,a1,0x1
   10ada:	05b7069b          	addiw	a3,a4,91
   10ade:	058e                	slli	a1,a1,0x3
   10ae0:	95ce                	add	a1,a1,s3
   10ae2:	6198                	ld	a4,0(a1)
   10ae4:	15c1                	addi	a1,a1,-16
   10ae6:	14e58b63          	beq	a1,a4,10c3c <_malloc_r+0x4d8>
   10aea:	6714                	ld	a3,8(a4)
   10aec:	9af1                	andi	a3,a3,-4
   10aee:	00d7f563          	bgeu	a5,a3,10af8 <_malloc_r+0x394>
   10af2:	6b18                	ld	a4,16(a4)
   10af4:	fee59be3          	bne	a1,a4,10aea <_malloc_r+0x386>
   10af8:	6f0c                	ld	a1,24(a4)
   10afa:	0089b783          	ld	a5,8(s3)
   10afe:	ec0c                	sd	a1,24(s0)
   10b00:	e818                	sd	a4,16(s0)
   10b02:	e980                	sd	s0,16(a1)
   10b04:	ef00                	sd	s0,24(a4)
   10b06:	b701                	j	10a06 <_malloc_r+0x2a2>
   10b08:	4751                	li	a4,20
   10b0a:	0cf77f63          	bgeu	a4,a5,10be8 <_malloc_r+0x484>
   10b0e:	05400713          	li	a4,84
   10b12:	16f76e63          	bltu	a4,a5,10c8e <_malloc_r+0x52a>
   10b16:	00c4d793          	srli	a5,s1,0xc
   10b1a:	06f7861b          	addiw	a2,a5,111
   10b1e:	0016169b          	slliw	a3,a2,0x1
   10b22:	06e7851b          	addiw	a0,a5,110
   10b26:	068e                	slli	a3,a3,0x3
   10b28:	b1f5                	j	10814 <_malloc_r+0xb0>
   10b2a:	2e05                	addiw	t3,t3,1
   10b2c:	003e7793          	andi	a5,t3,3
   10b30:	0541                	addi	a0,a0,16
   10b32:	cbe1                	beqz	a5,10c02 <_malloc_r+0x49e>
   10b34:	6d1c                	ld	a5,24(a0)
   10b36:	bf01                	j	10a46 <_malloc_r+0x2e2>
   10b38:	6810                	ld	a2,16(s0)
   10b3a:	0014e593          	ori	a1,s1,1
   10b3e:	e40c                	sd	a1,8(s0)
   10b40:	ee1c                	sd	a5,24(a2)
   10b42:	eb90                	sd	a2,16(a5)
   10b44:	94a2                	add	s1,s1,s0
   10b46:	0299b423          	sd	s1,40(s3)
   10b4a:	0299b023          	sd	s1,32(s3)
   10b4e:	0016e793          	ori	a5,a3,1
   10b52:	0104bc23          	sd	a6,24(s1)
   10b56:	0104b823          	sd	a6,16(s1)
   10b5a:	e49c                	sd	a5,8(s1)
   10b5c:	9722                	add	a4,a4,s0
   10b5e:	854a                	mv	a0,s2
   10b60:	e314                	sd	a3,0(a4)
   10b62:	43c000ef          	jal	ra,10f9e <__malloc_unlock>
   10b66:	01040513          	addi	a0,s0,16
   10b6a:	bd21                	j	10982 <_malloc_r+0x21e>
   10b6c:	0014e693          	ori	a3,s1,1
   10b70:	e414                	sd	a3,8(s0)
   10b72:	94a2                	add	s1,s1,s0
   10b74:	0299b423          	sd	s1,40(s3)
   10b78:	0299b023          	sd	s1,32(s3)
   10b7c:	00176693          	ori	a3,a4,1
   10b80:	0104bc23          	sd	a6,24(s1)
   10b84:	0104b823          	sd	a6,16(s1)
   10b88:	e494                	sd	a3,8(s1)
   10b8a:	97a2                	add	a5,a5,s0
   10b8c:	854a                	mv	a0,s2
   10b8e:	e398                	sd	a4,0(a5)
   10b90:	40e000ef          	jal	ra,10f9e <__malloc_unlock>
   10b94:	01040513          	addi	a0,s0,16
   10b98:	b3ed                	j	10982 <_malloc_r+0x21e>
   10b9a:	0034d613          	srli	a2,s1,0x3
   10b9e:	0016079b          	addiw	a5,a2,1
   10ba2:	0017979b          	slliw	a5,a5,0x1
   10ba6:	2601                	sext.w	a2,a2
   10ba8:	078e                	slli	a5,a5,0x3
   10baa:	bedd                	j	107a0 <_malloc_r+0x3c>
   10bac:	0067d713          	srli	a4,a5,0x6
   10bb0:	0397059b          	addiw	a1,a4,57
   10bb4:	0015959b          	slliw	a1,a1,0x1
   10bb8:	0387069b          	addiw	a3,a4,56
   10bbc:	058e                	slli	a1,a1,0x3
   10bbe:	b70d                	j	10ae0 <_malloc_r+0x37c>
   10bc0:	0f340563          	beq	s0,s3,10caa <_malloc_r+0x546>
   10bc4:	0109b403          	ld	s0,16(s3)
   10bc8:	00843a03          	ld	s4,8(s0)
   10bcc:	ffca7a13          	andi	s4,s4,-4
   10bd0:	409a07b3          	sub	a5,s4,s1
   10bd4:	009a6563          	bltu	s4,s1,10bde <_malloc_r+0x47a>
   10bd8:	477d                	li	a4,31
   10bda:	ecf742e3          	blt	a4,a5,10a9e <_malloc_r+0x33a>
   10bde:	854a                	mv	a0,s2
   10be0:	3be000ef          	jal	ra,10f9e <__malloc_unlock>
   10be4:	4501                	li	a0,0
   10be6:	bb71                	j	10982 <_malloc_r+0x21e>
   10be8:	05c7861b          	addiw	a2,a5,92
   10bec:	0016169b          	slliw	a3,a2,0x1
   10bf0:	05b7851b          	addiw	a0,a5,91
   10bf4:	068e                	slli	a3,a3,0x3
   10bf6:	b939                	j	10814 <_malloc_r+0xb0>
   10bf8:	01033783          	ld	a5,16(t1)
   10bfc:	367d                	addiw	a2,a2,-1
   10bfe:	16679c63          	bne	a5,t1,10d76 <_malloc_r+0x612>
   10c02:	00367793          	andi	a5,a2,3
   10c06:	1341                	addi	t1,t1,-16
   10c08:	fbe5                	bnez	a5,10bf8 <_malloc_r+0x494>
   10c0a:	0089b703          	ld	a4,8(s3)
   10c0e:	fff5c793          	not	a5,a1
   10c12:	8ff9                	and	a5,a5,a4
   10c14:	00f9b423          	sd	a5,8(s3)
   10c18:	0586                	slli	a1,a1,0x1
   10c1a:	c4b7e5e3          	bltu	a5,a1,10864 <_malloc_r+0x100>
   10c1e:	c40583e3          	beqz	a1,10864 <_malloc_r+0x100>
   10c22:	00f5f733          	and	a4,a1,a5
   10c26:	e711                	bnez	a4,10c32 <_malloc_r+0x4ce>
   10c28:	0586                	slli	a1,a1,0x1
   10c2a:	00f5f733          	and	a4,a1,a5
   10c2e:	2e11                	addiw	t3,t3,4
   10c30:	df65                	beqz	a4,10c28 <_malloc_r+0x4c4>
   10c32:	8672                	mv	a2,t3
   10c34:	bbfd                	j	10a32 <_malloc_r+0x2ce>
   10c36:	020a0a13          	addi	s4,s4,32
   10c3a:	b1a5                	j	108a2 <_malloc_r+0x13e>
   10c3c:	0089b503          	ld	a0,8(s3)
   10c40:	4026d69b          	sraiw	a3,a3,0x2
   10c44:	4785                	li	a5,1
   10c46:	00d797b3          	sll	a5,a5,a3
   10c4a:	8fc9                	or	a5,a5,a0
   10c4c:	00f9b423          	sd	a5,8(s3)
   10c50:	b57d                	j	10afe <_malloc_r+0x39a>
   10c52:	014b0bb3          	add	s7,s6,s4
   10c56:	41700bb3          	neg	s7,s7
   10c5a:	1bd2                	slli	s7,s7,0x34
   10c5c:	034bdb93          	srli	s7,s7,0x34
   10c60:	85de                	mv	a1,s7
   10c62:	854a                	mv	a0,s2
   10c64:	58a000ef          	jal	ra,111ee <_sbrk_r>
   10c68:	57fd                	li	a5,-1
   10c6a:	4701                	li	a4,0
   10c6c:	caf513e3          	bne	a0,a5,10912 <_malloc_r+0x1ae>
   10c70:	b17d                	j	1091e <_malloc_r+0x1ba>
   10c72:	05400693          	li	a3,84
   10c76:	06e6e863          	bltu	a3,a4,10ce6 <_malloc_r+0x582>
   10c7a:	00c7d713          	srli	a4,a5,0xc
   10c7e:	06f7059b          	addiw	a1,a4,111
   10c82:	0015959b          	slliw	a1,a1,0x1
   10c86:	06e7069b          	addiw	a3,a4,110
   10c8a:	058e                	slli	a1,a1,0x3
   10c8c:	bd91                	j	10ae0 <_malloc_r+0x37c>
   10c8e:	15400713          	li	a4,340
   10c92:	06f76863          	bltu	a4,a5,10d02 <_malloc_r+0x59e>
   10c96:	00f4d793          	srli	a5,s1,0xf
   10c9a:	0787861b          	addiw	a2,a5,120
   10c9e:	0016169b          	slliw	a3,a2,0x1
   10ca2:	0777851b          	addiw	a0,a5,119
   10ca6:	068e                	slli	a3,a3,0x3
   10ca8:	b6b5                	j	10814 <_malloc_r+0xb0>
   10caa:	7d818c93          	addi	s9,gp,2008 # 1f8f8 <__malloc_current_mallinfo>
   10cae:	000ca783          	lw	a5,0(s9)
   10cb2:	014786bb          	addw	a3,a5,s4
   10cb6:	00dca023          	sw	a3,0(s9)
   10cba:	b909                	j	108cc <_malloc_r+0x168>
   10cbc:	034c1713          	slli	a4,s8,0x34
   10cc0:	c00716e3          	bnez	a4,108cc <_malloc_r+0x168>
   10cc4:	0109b403          	ld	s0,16(s3)
   10cc8:	9a56                	add	s4,s4,s5
   10cca:	001a6a13          	ori	s4,s4,1
   10cce:	01443423          	sd	s4,8(s0)
   10cd2:	b179                	j	10960 <_malloc_r+0x1fc>
   10cd4:	016bb023          	sd	s6,0(s7)
   10cd8:	b121                	j	108e0 <_malloc_r+0x17c>
   10cda:	845a                	mv	s0,s6
   10cdc:	b151                	j	10960 <_malloc_r+0x1fc>
   10cde:	4785                	li	a5,1
   10ce0:	00fb3423          	sd	a5,8(s6)
   10ce4:	bded                	j	10bde <_malloc_r+0x47a>
   10ce6:	15400693          	li	a3,340
   10cea:	04e6ec63          	bltu	a3,a4,10d42 <_malloc_r+0x5de>
   10cee:	00f7d713          	srli	a4,a5,0xf
   10cf2:	0787059b          	addiw	a1,a4,120
   10cf6:	0015959b          	slliw	a1,a1,0x1
   10cfa:	0777069b          	addiw	a3,a4,119
   10cfe:	058e                	slli	a1,a1,0x3
   10d00:	b3c5                	j	10ae0 <_malloc_r+0x37c>
   10d02:	55400713          	li	a4,1364
   10d06:	04f76c63          	bltu	a4,a5,10d5e <_malloc_r+0x5fa>
   10d0a:	0124d793          	srli	a5,s1,0x12
   10d0e:	07d7861b          	addiw	a2,a5,125
   10d12:	0016169b          	slliw	a3,a2,0x1
   10d16:	07c7851b          	addiw	a0,a5,124
   10d1a:	068e                	slli	a3,a3,0x3
   10d1c:	bce5                	j	10814 <_malloc_r+0xb0>
   10d1e:	1c41                	addi	s8,s8,-16
   10d20:	9a62                	add	s4,s4,s8
   10d22:	416a0a33          	sub	s4,s4,s6
   10d26:	4701                	li	a4,0
   10d28:	bedd                	j	1091e <_malloc_r+0x1ba>
   10d2a:	01040593          	addi	a1,s0,16
   10d2e:	854a                	mv	a0,s2
   10d30:	041020ef          	jal	ra,13570 <_free_r>
   10d34:	0109b403          	ld	s0,16(s3)
   10d38:	000ca783          	lw	a5,0(s9)
   10d3c:	00843a03          	ld	s4,8(s0)
   10d40:	b105                	j	10960 <_malloc_r+0x1fc>
   10d42:	55400693          	li	a3,1364
   10d46:	02e6e363          	bltu	a3,a4,10d6c <_malloc_r+0x608>
   10d4a:	0127d713          	srli	a4,a5,0x12
   10d4e:	07d7059b          	addiw	a1,a4,125
   10d52:	0015959b          	slliw	a1,a1,0x1
   10d56:	07c7069b          	addiw	a3,a4,124
   10d5a:	058e                	slli	a1,a1,0x3
   10d5c:	b351                	j	10ae0 <_malloc_r+0x37c>
   10d5e:	7f000693          	li	a3,2032
   10d62:	07f00613          	li	a2,127
   10d66:	07e00513          	li	a0,126
   10d6a:	b46d                	j	10814 <_malloc_r+0xb0>
   10d6c:	7f000593          	li	a1,2032
   10d70:	07e00693          	li	a3,126
   10d74:	b3b5                	j	10ae0 <_malloc_r+0x37c>
   10d76:	0089b783          	ld	a5,8(s3)
   10d7a:	bd79                	j	10c18 <_malloc_r+0x4b4>

0000000000010d7c <memchr>:
   10d7c:	00757793          	andi	a5,a0,7
   10d80:	0ff5f693          	zext.b	a3,a1
   10d84:	c395                	beqz	a5,10da8 <memchr+0x2c>
   10d86:	fff60793          	addi	a5,a2,-1
   10d8a:	c605                	beqz	a2,10db2 <memchr+0x36>
   10d8c:	567d                	li	a2,-1
   10d8e:	a801                	j	10d9e <memchr+0x22>
   10d90:	0505                	addi	a0,a0,1
   10d92:	00757713          	andi	a4,a0,7
   10d96:	cb11                	beqz	a4,10daa <memchr+0x2e>
   10d98:	17fd                	addi	a5,a5,-1
   10d9a:	00c78c63          	beq	a5,a2,10db2 <memchr+0x36>
   10d9e:	00054703          	lbu	a4,0(a0)
   10da2:	fed717e3          	bne	a4,a3,10d90 <memchr+0x14>
   10da6:	8082                	ret
   10da8:	87b2                	mv	a5,a2
   10daa:	471d                	li	a4,7
   10dac:	00f76f63          	bltu	a4,a5,10dca <memchr+0x4e>
   10db0:	e399                	bnez	a5,10db6 <memchr+0x3a>
   10db2:	4501                	li	a0,0
   10db4:	8082                	ret
   10db6:	97aa                	add	a5,a5,a0
   10db8:	a021                	j	10dc0 <memchr+0x44>
   10dba:	0505                	addi	a0,a0,1
   10dbc:	fea78be3          	beq	a5,a0,10db2 <memchr+0x36>
   10dc0:	00054703          	lbu	a4,0(a0)
   10dc4:	fed71be3          	bne	a4,a3,10dba <memchr+0x3e>
   10dc8:	8082                	ret
   10dca:	0ff5f593          	zext.b	a1,a1
   10dce:	00859613          	slli	a2,a1,0x8
   10dd2:	8e4d                	or	a2,a2,a1
   10dd4:	01061713          	slli	a4,a2,0x10
   10dd8:	8f51                	or	a4,a4,a2
   10dda:	5f81b883          	ld	a7,1528(gp) # 1f718 <__SDATA_BEGIN__>
   10dde:	6001b803          	ld	a6,1536(gp) # 1f720 <__SDATA_BEGIN__+0x8>
   10de2:	02071593          	slli	a1,a4,0x20
   10de6:	8dd9                	or	a1,a1,a4
   10de8:	431d                	li	t1,7
   10dea:	6118                	ld	a4,0(a0)
   10dec:	8f2d                	xor	a4,a4,a1
   10dee:	01170633          	add	a2,a4,a7
   10df2:	fff74713          	not	a4,a4
   10df6:	8f71                	and	a4,a4,a2
   10df8:	01077733          	and	a4,a4,a6
   10dfc:	ff4d                	bnez	a4,10db6 <memchr+0x3a>
   10dfe:	17e1                	addi	a5,a5,-8
   10e00:	0521                	addi	a0,a0,8
   10e02:	fef364e3          	bltu	t1,a5,10dea <memchr+0x6e>
   10e06:	fbc5                	bnez	a5,10db6 <memchr+0x3a>
   10e08:	b76d                	j	10db2 <memchr+0x36>

0000000000010e0a <memcpy>:
   10e0a:	00b547b3          	xor	a5,a0,a1
   10e0e:	8b9d                	andi	a5,a5,7
   10e10:	00c508b3          	add	a7,a0,a2
   10e14:	eba1                	bnez	a5,10e64 <memcpy+0x5a>
   10e16:	479d                	li	a5,7
   10e18:	04c7f663          	bgeu	a5,a2,10e64 <memcpy+0x5a>
   10e1c:	00757793          	andi	a5,a0,7
   10e20:	872a                	mv	a4,a0
   10e22:	e7cd                	bnez	a5,10ecc <memcpy+0xc2>
   10e24:	ff88f613          	andi	a2,a7,-8
   10e28:	40e606b3          	sub	a3,a2,a4
   10e2c:	04000793          	li	a5,64
   10e30:	04000293          	li	t0,64
   10e34:	04d7c463          	blt	a5,a3,10e7c <memcpy+0x72>
   10e38:	86ae                	mv	a3,a1
   10e3a:	87ba                	mv	a5,a4
   10e3c:	02c77163          	bgeu	a4,a2,10e5e <memcpy+0x54>
   10e40:	0006b803          	ld	a6,0(a3)
   10e44:	07a1                	addi	a5,a5,8
   10e46:	06a1                	addi	a3,a3,8
   10e48:	ff07bc23          	sd	a6,-8(a5)
   10e4c:	fec7eae3          	bltu	a5,a2,10e40 <memcpy+0x36>
   10e50:	fff60793          	addi	a5,a2,-1
   10e54:	8f99                	sub	a5,a5,a4
   10e56:	9be1                	andi	a5,a5,-8
   10e58:	07a1                	addi	a5,a5,8
   10e5a:	973e                	add	a4,a4,a5
   10e5c:	95be                	add	a1,a1,a5
   10e5e:	01176663          	bltu	a4,a7,10e6a <memcpy+0x60>
   10e62:	8082                	ret
   10e64:	872a                	mv	a4,a0
   10e66:	ff157ee3          	bgeu	a0,a7,10e62 <memcpy+0x58>
   10e6a:	0005c783          	lbu	a5,0(a1)
   10e6e:	0705                	addi	a4,a4,1
   10e70:	0585                	addi	a1,a1,1
   10e72:	fef70fa3          	sb	a5,-1(a4)
   10e76:	ff176ae3          	bltu	a4,a7,10e6a <memcpy+0x60>
   10e7a:	8082                	ret
   10e7c:	6594                	ld	a3,8(a1)
   10e7e:	7d9c                	ld	a5,56(a1)
   10e80:	0005bf83          	ld	t6,0(a1)
   10e84:	0105bf03          	ld	t5,16(a1)
   10e88:	0185be83          	ld	t4,24(a1)
   10e8c:	0205be03          	ld	t3,32(a1)
   10e90:	0285b303          	ld	t1,40(a1)
   10e94:	0305b803          	ld	a6,48(a1)
   10e98:	e714                	sd	a3,8(a4)
   10e9a:	61b4                	ld	a3,64(a1)
   10e9c:	01f73023          	sd	t6,0(a4)
   10ea0:	01e73823          	sd	t5,16(a4)
   10ea4:	01d73c23          	sd	t4,24(a4)
   10ea8:	03c73023          	sd	t3,32(a4)
   10eac:	02673423          	sd	t1,40(a4)
   10eb0:	03073823          	sd	a6,48(a4)
   10eb4:	ff1c                	sd	a5,56(a4)
   10eb6:	04870713          	addi	a4,a4,72
   10eba:	40e607b3          	sub	a5,a2,a4
   10ebe:	fed73c23          	sd	a3,-8(a4)
   10ec2:	04858593          	addi	a1,a1,72
   10ec6:	faf2cbe3          	blt	t0,a5,10e7c <memcpy+0x72>
   10eca:	b7bd                	j	10e38 <memcpy+0x2e>
   10ecc:	0005c683          	lbu	a3,0(a1)
   10ed0:	0705                	addi	a4,a4,1
   10ed2:	00777793          	andi	a5,a4,7
   10ed6:	fed70fa3          	sb	a3,-1(a4)
   10eda:	0585                	addi	a1,a1,1
   10edc:	d7a1                	beqz	a5,10e24 <memcpy+0x1a>
   10ede:	0005c683          	lbu	a3,0(a1)
   10ee2:	0705                	addi	a4,a4,1
   10ee4:	00777793          	andi	a5,a4,7
   10ee8:	fed70fa3          	sb	a3,-1(a4)
   10eec:	0585                	addi	a1,a1,1
   10eee:	fff9                	bnez	a5,10ecc <memcpy+0xc2>
   10ef0:	bf15                	j	10e24 <memcpy+0x1a>

0000000000010ef2 <memset>:
   10ef2:	433d                	li	t1,15
   10ef4:	872a                	mv	a4,a0
   10ef6:	02c37163          	bgeu	t1,a2,10f18 <memset+0x26>
   10efa:	00f77793          	andi	a5,a4,15
   10efe:	e3c1                	bnez	a5,10f7e <memset+0x8c>
   10f00:	e1bd                	bnez	a1,10f66 <memset+0x74>
   10f02:	ff067693          	andi	a3,a2,-16
   10f06:	8a3d                	andi	a2,a2,15
   10f08:	96ba                	add	a3,a3,a4
   10f0a:	e30c                	sd	a1,0(a4)
   10f0c:	e70c                	sd	a1,8(a4)
   10f0e:	0741                	addi	a4,a4,16
   10f10:	fed76de3          	bltu	a4,a3,10f0a <memset+0x18>
   10f14:	e211                	bnez	a2,10f18 <memset+0x26>
   10f16:	8082                	ret
   10f18:	40c306b3          	sub	a3,t1,a2
   10f1c:	068a                	slli	a3,a3,0x2
   10f1e:	00000297          	auipc	t0,0x0
   10f22:	9696                	add	a3,a3,t0
   10f24:	00a68067          	jr	10(a3)
   10f28:	00b70723          	sb	a1,14(a4)
   10f2c:	00b706a3          	sb	a1,13(a4)
   10f30:	00b70623          	sb	a1,12(a4)
   10f34:	00b705a3          	sb	a1,11(a4)
   10f38:	00b70523          	sb	a1,10(a4)
   10f3c:	00b704a3          	sb	a1,9(a4)
   10f40:	00b70423          	sb	a1,8(a4)
   10f44:	00b703a3          	sb	a1,7(a4)
   10f48:	00b70323          	sb	a1,6(a4)
   10f4c:	00b702a3          	sb	a1,5(a4)
   10f50:	00b70223          	sb	a1,4(a4)
   10f54:	00b701a3          	sb	a1,3(a4)
   10f58:	00b70123          	sb	a1,2(a4)
   10f5c:	00b700a3          	sb	a1,1(a4)
   10f60:	00b70023          	sb	a1,0(a4)
   10f64:	8082                	ret
   10f66:	0ff5f593          	zext.b	a1,a1
   10f6a:	00859693          	slli	a3,a1,0x8
   10f6e:	8dd5                	or	a1,a1,a3
   10f70:	01059693          	slli	a3,a1,0x10
   10f74:	8dd5                	or	a1,a1,a3
   10f76:	02059693          	slli	a3,a1,0x20
   10f7a:	8dd5                	or	a1,a1,a3
   10f7c:	b759                	j	10f02 <memset+0x10>
   10f7e:	00279693          	slli	a3,a5,0x2
   10f82:	00000297          	auipc	t0,0x0
   10f86:	9696                	add	a3,a3,t0
   10f88:	8286                	mv	t0,ra
   10f8a:	fa2680e7          	jalr	-94(a3)
   10f8e:	8096                	mv	ra,t0
   10f90:	17c1                	addi	a5,a5,-16
   10f92:	8f1d                	sub	a4,a4,a5
   10f94:	963e                	add	a2,a2,a5
   10f96:	f8c371e3          	bgeu	t1,a2,10f18 <memset+0x26>
   10f9a:	b79d                	j	10f00 <memset+0xe>

0000000000010f9c <__malloc_lock>:
   10f9c:	8082                	ret

0000000000010f9e <__malloc_unlock>:
   10f9e:	8082                	ret

0000000000010fa0 <_printf_r>:
   10fa0:	715d                	addi	sp,sp,-80
   10fa2:	f032                	sd	a2,32(sp)
   10fa4:	f436                	sd	a3,40(sp)
   10fa6:	f83a                	sd	a4,48(sp)
   10fa8:	fc3e                	sd	a5,56(sp)
   10faa:	e0c2                	sd	a6,64(sp)
   10fac:	e4c6                	sd	a7,72(sp)
   10fae:	862e                	mv	a2,a1
   10fb0:	690c                	ld	a1,16(a0)
   10fb2:	1014                	addi	a3,sp,32
   10fb4:	ec06                	sd	ra,24(sp)
   10fb6:	e436                	sd	a3,8(sp)
   10fb8:	472000ef          	jal	ra,1142a <_vfprintf_r>
   10fbc:	60e2                	ld	ra,24(sp)
   10fbe:	6161                	addi	sp,sp,80
   10fc0:	8082                	ret

0000000000010fc2 <printf>:
   10fc2:	6401b303          	ld	t1,1600(gp) # 1f760 <_impure_ptr>
   10fc6:	711d                	addi	sp,sp,-96
   10fc8:	f832                	sd	a2,48(sp)
   10fca:	fc36                	sd	a3,56(sp)
   10fcc:	f42e                	sd	a1,40(sp)
   10fce:	e0ba                	sd	a4,64(sp)
   10fd0:	e4be                	sd	a5,72(sp)
   10fd2:	e8c2                	sd	a6,80(sp)
   10fd4:	ecc6                	sd	a7,88(sp)
   10fd6:	01033583          	ld	a1,16(t1)
   10fda:	1034                	addi	a3,sp,40
   10fdc:	862a                	mv	a2,a0
   10fde:	851a                	mv	a0,t1
   10fe0:	ec06                	sd	ra,24(sp)
   10fe2:	e436                	sd	a3,8(sp)
   10fe4:	446000ef          	jal	ra,1142a <_vfprintf_r>
   10fe8:	60e2                	ld	ra,24(sp)
   10fea:	6125                	addi	sp,sp,96
   10fec:	8082                	ret

0000000000010fee <_puts_r>:
   10fee:	7159                	addi	sp,sp,-112
   10ff0:	f0a2                	sd	s0,96(sp)
   10ff2:	842a                	mv	s0,a0
   10ff4:	852e                	mv	a0,a1
   10ff6:	eca6                	sd	s1,88(sp)
   10ff8:	f486                	sd	ra,104(sp)
   10ffa:	84ae                	mv	s1,a1
   10ffc:	39e000ef          	jal	ra,1139a <strlen>
   11000:	67f1                	lui	a5,0x1c
   11002:	70078793          	addi	a5,a5,1792 # 1c700 <__clzdi2+0xd0>
   11006:	e0be                	sd	a5,64(sp)
   11008:	4785                	li	a5,1
   1100a:	e4be                	sd	a5,72(sp)
   1100c:	4838                	lw	a4,80(s0)
   1100e:	181c                	addi	a5,sp,48
   11010:	00150693          	addi	a3,a0,1
   11014:	ec3e                	sd	a5,24(sp)
   11016:	4789                	li	a5,2
   11018:	f826                	sd	s1,48(sp)
   1101a:	fc2a                	sd	a0,56(sp)
   1101c:	f436                	sd	a3,40(sp)
   1101e:	d03e                	sw	a5,32(sp)
   11020:	680c                	ld	a1,16(s0)
   11022:	cf0d                	beqz	a4,1105c <_puts_r+0x6e>
   11024:	01059783          	lh	a5,16(a1)
   11028:	03279713          	slli	a4,a5,0x32
   1102c:	00074d63          	bltz	a4,11046 <_puts_r+0x58>
   11030:	0ac5a703          	lw	a4,172(a1)
   11034:	6689                	lui	a3,0x2
   11036:	8fd5                	or	a5,a5,a3
   11038:	76f9                	lui	a3,0xffffe
   1103a:	16fd                	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde6df>
   1103c:	8f75                	and	a4,a4,a3
   1103e:	00f59823          	sh	a5,16(a1)
   11042:	0ae5a623          	sw	a4,172(a1)
   11046:	0830                	addi	a2,sp,24
   11048:	8522                	mv	a0,s0
   1104a:	778020ef          	jal	ra,137c2 <__sfvwrite_r>
   1104e:	ed09                	bnez	a0,11068 <_puts_r+0x7a>
   11050:	4529                	li	a0,10
   11052:	70a6                	ld	ra,104(sp)
   11054:	7406                	ld	s0,96(sp)
   11056:	64e6                	ld	s1,88(sp)
   11058:	6165                	addi	sp,sp,112
   1105a:	8082                	ret
   1105c:	8522                	mv	a0,s0
   1105e:	e42e                	sd	a1,8(sp)
   11060:	d66ff0ef          	jal	ra,105c6 <__sinit>
   11064:	65a2                	ld	a1,8(sp)
   11066:	bf7d                	j	11024 <_puts_r+0x36>
   11068:	557d                	li	a0,-1
   1106a:	b7e5                	j	11052 <_puts_r+0x64>

000000000001106c <puts>:
   1106c:	85aa                	mv	a1,a0
   1106e:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   11072:	bfb5                	j	10fee <_puts_r>

0000000000011074 <lflush>:
   11074:	01055783          	lhu	a5,16(a0)
   11078:	4725                	li	a4,9
   1107a:	8ba5                	andi	a5,a5,9
   1107c:	00e78463          	beq	a5,a4,11084 <lflush+0x10>
   11080:	4501                	li	a0,0
   11082:	8082                	ret
   11084:	3980206f          	j	1341c <fflush>

0000000000011088 <__srefill_r>:
   11088:	7179                	addi	sp,sp,-48
   1108a:	f022                	sd	s0,32(sp)
   1108c:	ec26                	sd	s1,24(sp)
   1108e:	f406                	sd	ra,40(sp)
   11090:	e84a                	sd	s2,16(sp)
   11092:	e44e                	sd	s3,8(sp)
   11094:	84aa                	mv	s1,a0
   11096:	842e                	mv	s0,a1
   11098:	c119                	beqz	a0,1109e <__srefill_r+0x16>
   1109a:	493c                	lw	a5,80(a0)
   1109c:	c7e9                	beqz	a5,11166 <__srefill_r+0xde>
   1109e:	01041783          	lh	a5,16(s0)
   110a2:	6689                	lui	a3,0x2
   110a4:	03079713          	slli	a4,a5,0x30
   110a8:	9341                	srli	a4,a4,0x30
   110aa:	00d77633          	and	a2,a4,a3
   110ae:	e215                	bnez	a2,110d2 <__srefill_r+0x4a>
   110b0:	0ac42703          	lw	a4,172(s0)
   110b4:	8fd5                	or	a5,a5,a3
   110b6:	76f9                	lui	a3,0xffffe
   110b8:	0107979b          	slliw	a5,a5,0x10
   110bc:	16fd                	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde6df>
   110be:	4107d79b          	sraiw	a5,a5,0x10
   110c2:	8f75                	and	a4,a4,a3
   110c4:	0ae42623          	sw	a4,172(s0)
   110c8:	03079713          	slli	a4,a5,0x30
   110cc:	00f41823          	sh	a5,16(s0)
   110d0:	9341                	srli	a4,a4,0x30
   110d2:	00042423          	sw	zero,8(s0)
   110d6:	02077693          	andi	a3,a4,32
   110da:	0e069763          	bnez	a3,111c8 <__srefill_r+0x140>
   110de:	00477693          	andi	a3,a4,4
   110e2:	eab1                	bnez	a3,11136 <__srefill_r+0xae>
   110e4:	01077693          	andi	a3,a4,16
   110e8:	0e068b63          	beqz	a3,111de <__srefill_r+0x156>
   110ec:	8b21                	andi	a4,a4,8
   110ee:	e74d                	bnez	a4,11198 <__srefill_r+0x110>
   110f0:	0047e793          	ori	a5,a5,4
   110f4:	00f41823          	sh	a5,16(s0)
   110f8:	6c1c                	ld	a5,24(s0)
   110fa:	cfc5                	beqz	a5,111b2 <__srefill_r+0x12a>
   110fc:	01041903          	lh	s2,16(s0)
   11100:	03091993          	slli	s3,s2,0x30
   11104:	00397793          	andi	a5,s2,3
   11108:	0309d993          	srli	s3,s3,0x30
   1110c:	e3a5                	bnez	a5,1116c <__srefill_r+0xe4>
   1110e:	6c10                	ld	a2,24(s0)
   11110:	7c1c                	ld	a5,56(s0)
   11112:	5014                	lw	a3,32(s0)
   11114:	780c                	ld	a1,48(s0)
   11116:	e010                	sd	a2,0(s0)
   11118:	8526                	mv	a0,s1
   1111a:	9782                	jalr	a5
   1111c:	0005079b          	sext.w	a5,a0
   11120:	c41c                	sw	a5,8(s0)
   11122:	4501                	li	a0,0
   11124:	0af05463          	blez	a5,111cc <__srefill_r+0x144>
   11128:	70a2                	ld	ra,40(sp)
   1112a:	7402                	ld	s0,32(sp)
   1112c:	64e2                	ld	s1,24(sp)
   1112e:	6942                	ld	s2,16(sp)
   11130:	69a2                	ld	s3,8(sp)
   11132:	6145                	addi	sp,sp,48
   11134:	8082                	ret
   11136:	6c2c                	ld	a1,88(s0)
   11138:	d1e1                	beqz	a1,110f8 <__srefill_r+0x70>
   1113a:	07440793          	addi	a5,s0,116
   1113e:	00f58563          	beq	a1,a5,11148 <__srefill_r+0xc0>
   11142:	8526                	mv	a0,s1
   11144:	42c020ef          	jal	ra,13570 <_free_r>
   11148:	583c                	lw	a5,112(s0)
   1114a:	04043c23          	sd	zero,88(s0)
   1114e:	c41c                	sw	a5,8(s0)
   11150:	d7c5                	beqz	a5,110f8 <__srefill_r+0x70>
   11152:	743c                	ld	a5,104(s0)
   11154:	70a2                	ld	ra,40(sp)
   11156:	64e2                	ld	s1,24(sp)
   11158:	e01c                	sd	a5,0(s0)
   1115a:	7402                	ld	s0,32(sp)
   1115c:	6942                	ld	s2,16(sp)
   1115e:	69a2                	ld	s3,8(sp)
   11160:	4501                	li	a0,0
   11162:	6145                	addi	sp,sp,48
   11164:	8082                	ret
   11166:	c60ff0ef          	jal	ra,105c6 <__sinit>
   1116a:	bf15                	j	1109e <__srefill_r+0x16>
   1116c:	6281b503          	ld	a0,1576(gp) # 1f748 <_global_impure_ptr>
   11170:	65c5                	lui	a1,0x11
   11172:	4785                	li	a5,1
   11174:	00f41823          	sh	a5,16(s0)
   11178:	07458593          	addi	a1,a1,116 # 11074 <lflush>
   1117c:	c72ff0ef          	jal	ra,105ee <_fwalk>
   11180:	0099f993          	andi	s3,s3,9
   11184:	01241823          	sh	s2,16(s0)
   11188:	47a5                	li	a5,9
   1118a:	f8f992e3          	bne	s3,a5,1110e <__srefill_r+0x86>
   1118e:	85a2                	mv	a1,s0
   11190:	8526                	mv	a0,s1
   11192:	0c2020ef          	jal	ra,13254 <__sflush_r>
   11196:	bfa5                	j	1110e <__srefill_r+0x86>
   11198:	85a2                	mv	a1,s0
   1119a:	8526                	mv	a0,s1
   1119c:	24a020ef          	jal	ra,133e6 <_fflush_r>
   111a0:	e505                	bnez	a0,111c8 <__srefill_r+0x140>
   111a2:	01041783          	lh	a5,16(s0)
   111a6:	00042623          	sw	zero,12(s0)
   111aa:	02042423          	sw	zero,40(s0)
   111ae:	9bdd                	andi	a5,a5,-9
   111b0:	b781                	j	110f0 <__srefill_r+0x68>
   111b2:	85a2                	mv	a1,s0
   111b4:	8526                	mv	a0,s1
   111b6:	1d7040ef          	jal	ra,15b8c <__smakebuf_r>
   111ba:	b789                	j	110fc <__srefill_r+0x74>
   111bc:	04076713          	ori	a4,a4,64
   111c0:	00042423          	sw	zero,8(s0)
   111c4:	00e41823          	sh	a4,16(s0)
   111c8:	557d                	li	a0,-1
   111ca:	bfb9                	j	11128 <__srefill_r+0xa0>
   111cc:	01041703          	lh	a4,16(s0)
   111d0:	f7f5                	bnez	a5,111bc <__srefill_r+0x134>
   111d2:	02076713          	ori	a4,a4,32
   111d6:	00e41823          	sh	a4,16(s0)
   111da:	557d                	li	a0,-1
   111dc:	b7b1                	j	11128 <__srefill_r+0xa0>
   111de:	4725                	li	a4,9
   111e0:	c098                	sw	a4,0(s1)
   111e2:	0407e793          	ori	a5,a5,64
   111e6:	00f41823          	sh	a5,16(s0)
   111ea:	557d                	li	a0,-1
   111ec:	bf35                	j	11128 <__srefill_r+0xa0>

00000000000111ee <_sbrk_r>:
   111ee:	1101                	addi	sp,sp,-32
   111f0:	e822                	sd	s0,16(sp)
   111f2:	e426                	sd	s1,8(sp)
   111f4:	842a                	mv	s0,a0
   111f6:	852e                	mv	a0,a1
   111f8:	ec06                	sd	ra,24(sp)
   111fa:	6801a423          	sw	zero,1672(gp) # 1f7a8 <errno>
   111fe:	6f3090ef          	jal	ra,1b0f0 <_sbrk>
   11202:	57fd                	li	a5,-1
   11204:	00f50763          	beq	a0,a5,11212 <_sbrk_r+0x24>
   11208:	60e2                	ld	ra,24(sp)
   1120a:	6442                	ld	s0,16(sp)
   1120c:	64a2                	ld	s1,8(sp)
   1120e:	6105                	addi	sp,sp,32
   11210:	8082                	ret
   11212:	6881a783          	lw	a5,1672(gp) # 1f7a8 <errno>
   11216:	dbed                	beqz	a5,11208 <_sbrk_r+0x1a>
   11218:	60e2                	ld	ra,24(sp)
   1121a:	c01c                	sw	a5,0(s0)
   1121c:	6442                	ld	s0,16(sp)
   1121e:	64a2                	ld	s1,8(sp)
   11220:	6105                	addi	sp,sp,32
   11222:	8082                	ret

0000000000011224 <__sread>:
   11224:	1141                	addi	sp,sp,-16
   11226:	e022                	sd	s0,0(sp)
   11228:	842e                	mv	s0,a1
   1122a:	01259583          	lh	a1,18(a1)
   1122e:	e406                	sd	ra,8(sp)
   11230:	077050ef          	jal	ra,16aa6 <_read_r>
   11234:	00054963          	bltz	a0,11246 <__sread+0x22>
   11238:	685c                	ld	a5,144(s0)
   1123a:	60a2                	ld	ra,8(sp)
   1123c:	97aa                	add	a5,a5,a0
   1123e:	e85c                	sd	a5,144(s0)
   11240:	6402                	ld	s0,0(sp)
   11242:	0141                	addi	sp,sp,16
   11244:	8082                	ret
   11246:	01045783          	lhu	a5,16(s0)
   1124a:	777d                	lui	a4,0xfffff
   1124c:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf6df>
   1124e:	8ff9                	and	a5,a5,a4
   11250:	60a2                	ld	ra,8(sp)
   11252:	00f41823          	sh	a5,16(s0)
   11256:	6402                	ld	s0,0(sp)
   11258:	0141                	addi	sp,sp,16
   1125a:	8082                	ret

000000000001125c <__seofread>:
   1125c:	4501                	li	a0,0
   1125e:	8082                	ret

0000000000011260 <__swrite>:
   11260:	01059783          	lh	a5,16(a1)
   11264:	7179                	addi	sp,sp,-48
   11266:	f022                	sd	s0,32(sp)
   11268:	ec26                	sd	s1,24(sp)
   1126a:	e84a                	sd	s2,16(sp)
   1126c:	e44e                	sd	s3,8(sp)
   1126e:	f406                	sd	ra,40(sp)
   11270:	1007f713          	andi	a4,a5,256
   11274:	842e                	mv	s0,a1
   11276:	84aa                	mv	s1,a0
   11278:	8932                	mv	s2,a2
   1127a:	89b6                	mv	s3,a3
   1127c:	e31d                	bnez	a4,112a2 <__swrite+0x42>
   1127e:	777d                	lui	a4,0xfffff
   11280:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf6df>
   11282:	8ff9                	and	a5,a5,a4
   11284:	01241583          	lh	a1,18(s0)
   11288:	00f41823          	sh	a5,16(s0)
   1128c:	7402                	ld	s0,32(sp)
   1128e:	70a2                	ld	ra,40(sp)
   11290:	86ce                	mv	a3,s3
   11292:	864a                	mv	a2,s2
   11294:	69a2                	ld	s3,8(sp)
   11296:	6942                	ld	s2,16(sp)
   11298:	8526                	mv	a0,s1
   1129a:	64e2                	ld	s1,24(sp)
   1129c:	6145                	addi	sp,sp,48
   1129e:	4c90106f          	j	12f66 <_write_r>
   112a2:	01259583          	lh	a1,18(a1)
   112a6:	4689                	li	a3,2
   112a8:	4601                	li	a2,0
   112aa:	0a7040ef          	jal	ra,15b50 <_lseek_r>
   112ae:	01041783          	lh	a5,16(s0)
   112b2:	b7f1                	j	1127e <__swrite+0x1e>

00000000000112b4 <__sseek>:
   112b4:	1141                	addi	sp,sp,-16
   112b6:	e022                	sd	s0,0(sp)
   112b8:	842e                	mv	s0,a1
   112ba:	01259583          	lh	a1,18(a1)
   112be:	e406                	sd	ra,8(sp)
   112c0:	091040ef          	jal	ra,15b50 <_lseek_r>
   112c4:	57fd                	li	a5,-1
   112c6:	00f50d63          	beq	a0,a5,112e0 <__sseek+0x2c>
   112ca:	01045783          	lhu	a5,16(s0)
   112ce:	6705                	lui	a4,0x1
   112d0:	60a2                	ld	ra,8(sp)
   112d2:	8fd9                	or	a5,a5,a4
   112d4:	e848                	sd	a0,144(s0)
   112d6:	00f41823          	sh	a5,16(s0)
   112da:	6402                	ld	s0,0(sp)
   112dc:	0141                	addi	sp,sp,16
   112de:	8082                	ret
   112e0:	01045783          	lhu	a5,16(s0)
   112e4:	777d                	lui	a4,0xfffff
   112e6:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf6df>
   112e8:	8ff9                	and	a5,a5,a4
   112ea:	60a2                	ld	ra,8(sp)
   112ec:	00f41823          	sh	a5,16(s0)
   112f0:	6402                	ld	s0,0(sp)
   112f2:	0141                	addi	sp,sp,16
   112f4:	8082                	ret

00000000000112f6 <__sclose>:
   112f6:	01259583          	lh	a1,18(a1)
   112fa:	66f0106f          	j	13168 <_close_r>

00000000000112fe <strcpy>:
   112fe:	00b567b3          	or	a5,a0,a1
   11302:	8b9d                	andi	a5,a5,7
   11304:	efad                	bnez	a5,1137e <strcpy+0x80>
   11306:	6081b683          	ld	a3,1544(gp) # 1f728 <mask>
   1130a:	6198                	ld	a4,0(a1)
   1130c:	567d                	li	a2,-1
   1130e:	00d777b3          	and	a5,a4,a3
   11312:	97b6                	add	a5,a5,a3
   11314:	8fd9                	or	a5,a5,a4
   11316:	8fd5                	or	a5,a5,a3
   11318:	06c79c63          	bne	a5,a2,11390 <strcpy+0x92>
   1131c:	862a                	mv	a2,a0
   1131e:	587d                	li	a6,-1
   11320:	e218                	sd	a4,0(a2)
   11322:	6598                	ld	a4,8(a1)
   11324:	05a1                	addi	a1,a1,8
   11326:	0621                	addi	a2,a2,8
   11328:	00d777b3          	and	a5,a4,a3
   1132c:	97b6                	add	a5,a5,a3
   1132e:	8fd9                	or	a5,a5,a4
   11330:	8fd5                	or	a5,a5,a3
   11332:	ff0787e3          	beq	a5,a6,11320 <strcpy+0x22>
   11336:	0005c783          	lbu	a5,0(a1)
   1133a:	0015c703          	lbu	a4,1(a1)
   1133e:	0025c683          	lbu	a3,2(a1)
   11342:	00f60023          	sb	a5,0(a2)
   11346:	cb9d                	beqz	a5,1137c <strcpy+0x7e>
   11348:	00e600a3          	sb	a4,1(a2)
   1134c:	cb05                	beqz	a4,1137c <strcpy+0x7e>
   1134e:	0035c783          	lbu	a5,3(a1)
   11352:	00d60123          	sb	a3,2(a2)
   11356:	c29d                	beqz	a3,1137c <strcpy+0x7e>
   11358:	0045c703          	lbu	a4,4(a1)
   1135c:	00f601a3          	sb	a5,3(a2)
   11360:	cf91                	beqz	a5,1137c <strcpy+0x7e>
   11362:	0055c783          	lbu	a5,5(a1)
   11366:	00e60223          	sb	a4,4(a2)
   1136a:	cb09                	beqz	a4,1137c <strcpy+0x7e>
   1136c:	0065c703          	lbu	a4,6(a1)
   11370:	00f602a3          	sb	a5,5(a2)
   11374:	c781                	beqz	a5,1137c <strcpy+0x7e>
   11376:	00e60323          	sb	a4,6(a2)
   1137a:	ef09                	bnez	a4,11394 <strcpy+0x96>
   1137c:	8082                	ret
   1137e:	87aa                	mv	a5,a0
   11380:	0005c703          	lbu	a4,0(a1)
   11384:	0785                	addi	a5,a5,1
   11386:	0585                	addi	a1,a1,1
   11388:	fee78fa3          	sb	a4,-1(a5)
   1138c:	fb75                	bnez	a4,11380 <strcpy+0x82>
   1138e:	8082                	ret
   11390:	862a                	mv	a2,a0
   11392:	b755                	j	11336 <strcpy+0x38>
   11394:	000603a3          	sb	zero,7(a2)
   11398:	8082                	ret

000000000001139a <strlen>:
   1139a:	00757793          	andi	a5,a0,7
   1139e:	872a                	mv	a4,a0
   113a0:	eba9                	bnez	a5,113f2 <strlen+0x58>
   113a2:	6081b683          	ld	a3,1544(gp) # 1f728 <mask>
   113a6:	55fd                	li	a1,-1
   113a8:	6310                	ld	a2,0(a4)
   113aa:	0721                	addi	a4,a4,8
   113ac:	00d677b3          	and	a5,a2,a3
   113b0:	97b6                	add	a5,a5,a3
   113b2:	8fd1                	or	a5,a5,a2
   113b4:	8fd5                	or	a5,a5,a3
   113b6:	feb789e3          	beq	a5,a1,113a8 <strlen+0xe>
   113ba:	ff874683          	lbu	a3,-8(a4)
   113be:	40a707b3          	sub	a5,a4,a0
   113c2:	c6a9                	beqz	a3,1140c <strlen+0x72>
   113c4:	ff974683          	lbu	a3,-7(a4)
   113c8:	ce9d                	beqz	a3,11406 <strlen+0x6c>
   113ca:	ffa74683          	lbu	a3,-6(a4)
   113ce:	c6a9                	beqz	a3,11418 <strlen+0x7e>
   113d0:	ffb74683          	lbu	a3,-5(a4)
   113d4:	ce9d                	beqz	a3,11412 <strlen+0x78>
   113d6:	ffc74683          	lbu	a3,-4(a4)
   113da:	c2b1                	beqz	a3,1141e <strlen+0x84>
   113dc:	ffd74683          	lbu	a3,-3(a4)
   113e0:	c2b1                	beqz	a3,11424 <strlen+0x8a>
   113e2:	ffe74503          	lbu	a0,-2(a4)
   113e6:	00a03533          	snez	a0,a0
   113ea:	953e                	add	a0,a0,a5
   113ec:	1579                	addi	a0,a0,-2
   113ee:	8082                	ret
   113f0:	dacd                	beqz	a3,113a2 <strlen+0x8>
   113f2:	00074783          	lbu	a5,0(a4)
   113f6:	0705                	addi	a4,a4,1
   113f8:	00777693          	andi	a3,a4,7
   113fc:	fbf5                	bnez	a5,113f0 <strlen+0x56>
   113fe:	8f09                	sub	a4,a4,a0
   11400:	fff70513          	addi	a0,a4,-1
   11404:	8082                	ret
   11406:	ff978513          	addi	a0,a5,-7
   1140a:	8082                	ret
   1140c:	ff878513          	addi	a0,a5,-8
   11410:	8082                	ret
   11412:	ffb78513          	addi	a0,a5,-5
   11416:	8082                	ret
   11418:	ffa78513          	addi	a0,a5,-6
   1141c:	8082                	ret
   1141e:	ffc78513          	addi	a0,a5,-4
   11422:	8082                	ret
   11424:	ffd78513          	addi	a0,a5,-3
   11428:	8082                	ret

000000000001142a <_vfprintf_r>:
   1142a:	d8010113          	addi	sp,sp,-640
   1142e:	26113c23          	sd	ra,632(sp)
   11432:	27213023          	sd	s2,608(sp)
   11436:	25413823          	sd	s4,592(sp)
   1143a:	23913423          	sd	s9,552(sp)
   1143e:	892e                	mv	s2,a1
   11440:	8cb2                	mv	s9,a2
   11442:	e836                	sd	a3,16(sp)
   11444:	26813823          	sd	s0,624(sp)
   11448:	26913423          	sd	s1,616(sp)
   1144c:	25313c23          	sd	s3,600(sp)
   11450:	25513423          	sd	s5,584(sp)
   11454:	25613023          	sd	s6,576(sp)
   11458:	23713c23          	sd	s7,568(sp)
   1145c:	23813823          	sd	s8,560(sp)
   11460:	23a13023          	sd	s10,544(sp)
   11464:	21b13c23          	sd	s11,536(sp)
   11468:	8a2a                	mv	s4,a0
   1146a:	6da040ef          	jal	ra,15b44 <_localeconv_r>
   1146e:	611c                	ld	a5,0(a0)
   11470:	853e                	mv	a0,a5
   11472:	f8be                	sd	a5,112(sp)
   11474:	f27ff0ef          	jal	ra,1139a <strlen>
   11478:	f4aa                	sd	a0,104(sp)
   1147a:	e202                	sd	zero,256(sp)
   1147c:	e602                	sd	zero,264(sp)
   1147e:	000a0663          	beqz	s4,1148a <_vfprintf_r+0x60>
   11482:	050a2783          	lw	a5,80(s4)
   11486:	5a078863          	beqz	a5,11a36 <_vfprintf_r+0x60c>
   1148a:	01091703          	lh	a4,16(s2)
   1148e:	6689                	lui	a3,0x2
   11490:	03071793          	slli	a5,a4,0x30
   11494:	93c1                	srli	a5,a5,0x30
   11496:	00d7f633          	and	a2,a5,a3
   1149a:	e215                	bnez	a2,114be <_vfprintf_r+0x94>
   1149c:	0ac92603          	lw	a2,172(s2)
   114a0:	00d767b3          	or	a5,a4,a3
   114a4:	0107979b          	slliw	a5,a5,0x10
   114a8:	7779                	lui	a4,0xffffe
   114aa:	4107d79b          	sraiw	a5,a5,0x10
   114ae:	177d                	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde6df>
   114b0:	8f71                	and	a4,a4,a2
   114b2:	00f91823          	sh	a5,16(s2)
   114b6:	17c2                	slli	a5,a5,0x30
   114b8:	0ae92623          	sw	a4,172(s2)
   114bc:	93c1                	srli	a5,a5,0x30
   114be:	0087f713          	andi	a4,a5,8
   114c2:	26070a63          	beqz	a4,11736 <_vfprintf_r+0x30c>
   114c6:	01893703          	ld	a4,24(s2)
   114ca:	26070663          	beqz	a4,11736 <_vfprintf_r+0x30c>
   114ce:	8be9                	andi	a5,a5,26
   114d0:	4729                	li	a4,10
   114d2:	26e78f63          	beq	a5,a4,11750 <_vfprintf_r+0x326>
   114d6:	67f5                	lui	a5,0x1d
   114d8:	9787b783          	ld	a5,-1672(a5) # 1c978 <__clzdi2+0x348>
   114dc:	19010b13          	addi	s6,sp,400
   114e0:	ea5a                	sd	s6,272(sp)
   114e2:	e93e                	sd	a5,144(sp)
   114e4:	67f5                	lui	a5,0x1d
   114e6:	9887b783          	ld	a5,-1656(a5) # 1c988 <__clzdi2+0x358>
   114ea:	f202                	sd	zero,288(sp)
   114ec:	10012c23          	sw	zero,280(sp)
   114f0:	ed3e                	sd	a5,152(sp)
   114f2:	67f5                	lui	a5,0x1d
   114f4:	9987b783          	ld	a5,-1640(a5) # 1c998 <__clzdi2+0x368>
   114f8:	f002                	sd	zero,32(sp)
   114fa:	f402                	sd	zero,40(sp)
   114fc:	f13e                	sd	a5,160(sp)
   114fe:	000cc783          	lbu	a5,0(s9)
   11502:	fc82                	sd	zero,120(sp)
   11504:	f082                	sd	zero,96(sp)
   11506:	e102                	sd	zero,128(sp)
   11508:	e502                	sd	zero,136(sp)
   1150a:	e402                	sd	zero,8(sp)
   1150c:	835a                	mv	t1,s6
   1150e:	1c078563          	beqz	a5,116d8 <_vfprintf_r+0x2ae>
   11512:	8466                	mv	s0,s9
   11514:	02500713          	li	a4,37
   11518:	30e78263          	beq	a5,a4,1181c <_vfprintf_r+0x3f2>
   1151c:	00144783          	lbu	a5,1(s0)
   11520:	0405                	addi	s0,s0,1
   11522:	fbfd                	bnez	a5,11518 <_vfprintf_r+0xee>
   11524:	419404bb          	subw	s1,s0,s9
   11528:	1a048863          	beqz	s1,116d8 <_vfprintf_r+0x2ae>
   1152c:	11812783          	lw	a5,280(sp)
   11530:	7712                	ld	a4,288(sp)
   11532:	01933023          	sd	s9,0(t1)
   11536:	2785                	addiw	a5,a5,1
   11538:	9726                	add	a4,a4,s1
   1153a:	00933423          	sd	s1,8(t1)
   1153e:	f23a                	sd	a4,288(sp)
   11540:	10f12c23          	sw	a5,280(sp)
   11544:	0007871b          	sext.w	a4,a5
   11548:	479d                	li	a5,7
   1154a:	0341                	addi	t1,t1,16
   1154c:	2ce7cf63          	blt	a5,a4,1182a <_vfprintf_r+0x400>
   11550:	6722                	ld	a4,8(sp)
   11552:	00044783          	lbu	a5,0(s0)
   11556:	9f25                	addw	a4,a4,s1
   11558:	e43a                	sd	a4,8(sp)
   1155a:	16078f63          	beqz	a5,116d8 <_vfprintf_r+0x2ae>
   1155e:	67f1                	lui	a5,0x1c
   11560:	00144e03          	lbu	t3,1(s0)
   11564:	0c010fa3          	sb	zero,223(sp)
   11568:	0405                	addi	s0,s0,1
   1156a:	5c7d                	li	s8,-1
   1156c:	4a81                	li	s5,0
   1156e:	4481                	li	s1,0
   11570:	05a00993          	li	s3,90
   11574:	76478b93          	addi	s7,a5,1892 # 1c764 <__clzdi2+0x134>
   11578:	4da5                	li	s11,9
   1157a:	0405                	addi	s0,s0,1
   1157c:	000e0d1b          	sext.w	s10,t3
   11580:	02a00693          	li	a3,42
   11584:	fe0d079b          	addiw	a5,s10,-32
   11588:	0007871b          	sext.w	a4,a5
   1158c:	04e9e363          	bltu	s3,a4,115d2 <_vfprintf_r+0x1a8>
   11590:	02079713          	slli	a4,a5,0x20
   11594:	01e75793          	srli	a5,a4,0x1e
   11598:	97de                	add	a5,a5,s7
   1159a:	439c                	lw	a5,0(a5)
   1159c:	8782                	jr	a5
   1159e:	4a81                	li	s5,0
   115a0:	00044703          	lbu	a4,0(s0)
   115a4:	002a979b          	slliw	a5,s5,0x2
   115a8:	015787bb          	addw	a5,a5,s5
   115ac:	fd0d0e1b          	addiw	t3,s10,-48
   115b0:	0017979b          	slliw	a5,a5,0x1
   115b4:	fd07061b          	addiw	a2,a4,-48
   115b8:	0405                	addi	s0,s0,1
   115ba:	00fe0abb          	addw	s5,t3,a5
   115be:	00070d1b          	sext.w	s10,a4
   115c2:	fccdffe3          	bgeu	s11,a2,115a0 <_vfprintf_r+0x176>
   115c6:	fe0d079b          	addiw	a5,s10,-32
   115ca:	0007871b          	sext.w	a4,a5
   115ce:	fce9f1e3          	bgeu	s3,a4,11590 <_vfprintf_r+0x166>
   115d2:	100d0363          	beqz	s10,116d8 <_vfprintf_r+0x2ae>
   115d6:	13a10423          	sb	s10,296(sp)
   115da:	0c010fa3          	sb	zero,223(sp)
   115de:	4985                	li	s3,1
   115e0:	4b85                	li	s7,1
   115e2:	12810c93          	addi	s9,sp,296
   115e6:	ec02                	sd	zero,24(sp)
   115e8:	4c01                	li	s8,0
   115ea:	e882                	sd	zero,80(sp)
   115ec:	ec82                	sd	zero,88(sp)
   115ee:	e482                	sd	zero,72(sp)
   115f0:	0024f293          	andi	t0,s1,2
   115f4:	00028363          	beqz	t0,115fa <_vfprintf_r+0x1d0>
   115f8:	2989                	addiw	s3,s3,2
   115fa:	0844fd93          	andi	s11,s1,132
   115fe:	7792                	ld	a5,288(sp)
   11600:	000d9663          	bnez	s11,1160c <_vfprintf_r+0x1e2>
   11604:	413a86bb          	subw	a3,s5,s3
   11608:	08d049e3          	bgtz	a3,11e9a <_vfprintf_r+0xa70>
   1160c:	0df14703          	lbu	a4,223(sp)
   11610:	c70d                	beqz	a4,1163a <_vfprintf_r+0x210>
   11612:	11812703          	lw	a4,280(sp)
   11616:	0df10693          	addi	a3,sp,223
   1161a:	00d33023          	sd	a3,0(t1)
   1161e:	2705                	addiw	a4,a4,1
   11620:	4685                	li	a3,1
   11622:	0785                	addi	a5,a5,1
   11624:	00d33423          	sd	a3,8(t1)
   11628:	10e12c23          	sw	a4,280(sp)
   1162c:	0007069b          	sext.w	a3,a4
   11630:	f23e                	sd	a5,288(sp)
   11632:	471d                	li	a4,7
   11634:	0341                	addi	t1,t1,16
   11636:	28d74463          	blt	a4,a3,118be <_vfprintf_r+0x494>
   1163a:	02028563          	beqz	t0,11664 <_vfprintf_r+0x23a>
   1163e:	11812703          	lw	a4,280(sp)
   11642:	1194                	addi	a3,sp,224
   11644:	00d33023          	sd	a3,0(t1)
   11648:	2705                	addiw	a4,a4,1
   1164a:	4689                	li	a3,2
   1164c:	0789                	addi	a5,a5,2
   1164e:	00d33423          	sd	a3,8(t1)
   11652:	10e12c23          	sw	a4,280(sp)
   11656:	0007069b          	sext.w	a3,a4
   1165a:	f23e                	sd	a5,288(sp)
   1165c:	471d                	li	a4,7
   1165e:	0341                	addi	t1,t1,16
   11660:	0cd747e3          	blt	a4,a3,11f2e <_vfprintf_r+0xb04>
   11664:	08000713          	li	a4,128
   11668:	6eed8263          	beq	s11,a4,11d4c <_vfprintf_r+0x922>
   1166c:	417c0c3b          	subw	s8,s8,s7
   11670:	77804563          	bgtz	s8,11dda <_vfprintf_r+0x9b0>
   11674:	1004f713          	andi	a4,s1,256
   11678:	60071263          	bnez	a4,11c7c <_vfprintf_r+0x852>
   1167c:	11812703          	lw	a4,280(sp)
   11680:	97de                	add	a5,a5,s7
   11682:	01933023          	sd	s9,0(t1)
   11686:	0017069b          	addiw	a3,a4,1
   1168a:	8736                	mv	a4,a3
   1168c:	01733423          	sd	s7,8(t1)
   11690:	10e12c23          	sw	a4,280(sp)
   11694:	f23e                	sd	a5,288(sp)
   11696:	471d                	li	a4,7
   11698:	2ed74363          	blt	a4,a3,1197e <_vfprintf_r+0x554>
   1169c:	0341                	addi	t1,t1,16
   1169e:	8891                	andi	s1,s1,4
   116a0:	c489                	beqz	s1,116aa <_vfprintf_r+0x280>
   116a2:	413a84bb          	subw	s1,s5,s3
   116a6:	08904ee3          	bgtz	s1,11f42 <_vfprintf_r+0xb18>
   116aa:	8756                	mv	a4,s5
   116ac:	013ad363          	bge	s5,s3,116b2 <_vfprintf_r+0x288>
   116b0:	874e                	mv	a4,s3
   116b2:	66a2                	ld	a3,8(sp)
   116b4:	9f35                	addw	a4,a4,a3
   116b6:	e43a                	sd	a4,8(sp)
   116b8:	7a079263          	bnez	a5,11e5c <_vfprintf_r+0xa32>
   116bc:	67e2                	ld	a5,24(sp)
   116be:	10012c23          	sw	zero,280(sp)
   116c2:	c789                	beqz	a5,116cc <_vfprintf_r+0x2a2>
   116c4:	65e2                	ld	a1,24(sp)
   116c6:	8552                	mv	a0,s4
   116c8:	6a9010ef          	jal	ra,13570 <_free_r>
   116cc:	835a                	mv	t1,s6
   116ce:	8ca2                	mv	s9,s0
   116d0:	000cc783          	lbu	a5,0(s9)
   116d4:	e2079fe3          	bnez	a5,11512 <_vfprintf_r+0xe8>
   116d8:	7792                	ld	a5,288(sp)
   116da:	c399                	beqz	a5,116e0 <_vfprintf_r+0x2b6>
   116dc:	31a0106f          	j	129f6 <_vfprintf_r+0x15cc>
   116e0:	01095783          	lhu	a5,16(s2)
   116e4:	0407f793          	andi	a5,a5,64
   116e8:	c399                	beqz	a5,116ee <_vfprintf_r+0x2c4>
   116ea:	5b00106f          	j	12c9a <_vfprintf_r+0x1870>
   116ee:	27813083          	ld	ra,632(sp)
   116f2:	27013403          	ld	s0,624(sp)
   116f6:	6522                	ld	a0,8(sp)
   116f8:	26813483          	ld	s1,616(sp)
   116fc:	26013903          	ld	s2,608(sp)
   11700:	25813983          	ld	s3,600(sp)
   11704:	25013a03          	ld	s4,592(sp)
   11708:	24813a83          	ld	s5,584(sp)
   1170c:	24013b03          	ld	s6,576(sp)
   11710:	23813b83          	ld	s7,568(sp)
   11714:	23013c03          	ld	s8,560(sp)
   11718:	22813c83          	ld	s9,552(sp)
   1171c:	22013d03          	ld	s10,544(sp)
   11720:	21813d83          	ld	s11,536(sp)
   11724:	28010113          	addi	sp,sp,640
   11728:	8082                	ret
   1172a:	0104e493          	ori	s1,s1,16
   1172e:	00044e03          	lbu	t3,0(s0)
   11732:	2481                	sext.w	s1,s1
   11734:	b599                	j	1157a <_vfprintf_r+0x150>
   11736:	85ca                	mv	a1,s2
   11738:	8552                	mv	a0,s4
   1173a:	069010ef          	jal	ra,12fa2 <__swsetup_r>
   1173e:	c119                	beqz	a0,11744 <_vfprintf_r+0x31a>
   11740:	55a0106f          	j	12c9a <_vfprintf_r+0x1870>
   11744:	01095783          	lhu	a5,16(s2)
   11748:	4729                	li	a4,10
   1174a:	8be9                	andi	a5,a5,26
   1174c:	d8e795e3          	bne	a5,a4,114d6 <_vfprintf_r+0xac>
   11750:	01291783          	lh	a5,18(s2)
   11754:	d807c1e3          	bltz	a5,114d6 <_vfprintf_r+0xac>
   11758:	66c2                	ld	a3,16(sp)
   1175a:	8666                	mv	a2,s9
   1175c:	85ca                	mv	a1,s2
   1175e:	8552                	mv	a0,s4
   11760:	772010ef          	jal	ra,12ed2 <__sbprintf>
   11764:	e42a                	sd	a0,8(sp)
   11766:	b761                	j	116ee <_vfprintf_r+0x2c4>
   11768:	0104e493          	ori	s1,s1,16
   1176c:	2481                	sext.w	s1,s1
   1176e:	66c2                	ld	a3,16(sp)
   11770:	0204f793          	andi	a5,s1,32
   11774:	00868713          	addi	a4,a3,8 # 2008 <exit-0xe0e0>
   11778:	22078c63          	beqz	a5,119b0 <_vfprintf_r+0x586>
   1177c:	629c                	ld	a5,0(a3)
   1177e:	89be                	mv	s3,a5
   11780:	2407ca63          	bltz	a5,119d4 <_vfprintf_r+0x5aa>
   11784:	57fd                	li	a5,-1
   11786:	26fc01e3          	beq	s8,a5,121e8 <_vfprintf_r+0xdbe>
   1178a:	f7f4fd93          	andi	s11,s1,-129
   1178e:	e83a                	sd	a4,16(sp)
   11790:	2d81                	sext.w	s11,s11
   11792:	6e099863          	bnez	s3,11e82 <_vfprintf_r+0xa58>
   11796:	6e0c1963          	bnez	s8,11e88 <_vfprintf_r+0xa5e>
   1179a:	84ee                	mv	s1,s11
   1179c:	4c01                	li	s8,0
   1179e:	4b81                	li	s7,0
   117a0:	18c10c93          	addi	s9,sp,396
   117a4:	0df14783          	lbu	a5,223(sp)
   117a8:	000b899b          	sext.w	s3,s7
   117ac:	018bd463          	bge	s7,s8,117b4 <_vfprintf_r+0x38a>
   117b0:	000c099b          	sext.w	s3,s8
   117b4:	ec02                	sd	zero,24(sp)
   117b6:	e882                	sd	zero,80(sp)
   117b8:	ec82                	sd	zero,88(sp)
   117ba:	e482                	sd	zero,72(sp)
   117bc:	e2078ae3          	beqz	a5,115f0 <_vfprintf_r+0x1c6>
   117c0:	2985                	addiw	s3,s3,1
   117c2:	b53d                	j	115f0 <_vfprintf_r+0x1c6>
   117c4:	0104e493          	ori	s1,s1,16
   117c8:	2481                	sext.w	s1,s1
   117ca:	66c2                	ld	a3,16(sp)
   117cc:	0204f793          	andi	a5,s1,32
   117d0:	00868713          	addi	a4,a3,8
   117d4:	1a078f63          	beqz	a5,11992 <_vfprintf_r+0x568>
   117d8:	0006b983          	ld	s3,0(a3)
   117dc:	bff4fd93          	andi	s11,s1,-1025
   117e0:	2d81                	sext.w	s11,s11
   117e2:	e83a                	sd	a4,16(sp)
   117e4:	4781                	li	a5,0
   117e6:	4701                	li	a4,0
   117e8:	0ce10fa3          	sb	a4,223(sp)
   117ec:	577d                	li	a4,-1
   117ee:	1eec0f63          	beq	s8,a4,119ec <_vfprintf_r+0x5c2>
   117f2:	f7fdf493          	andi	s1,s11,-129
   117f6:	2481                	sext.w	s1,s1
   117f8:	68099163          	bnez	s3,11e7a <_vfprintf_r+0xa50>
   117fc:	440c1363          	bnez	s8,11c42 <_vfprintf_r+0x818>
   11800:	ffd1                	bnez	a5,1179c <_vfprintf_r+0x372>
   11802:	001dfb93          	andi	s7,s11,1
   11806:	18c10c93          	addi	s9,sp,396
   1180a:	f80b8de3          	beqz	s7,117a4 <_vfprintf_r+0x37a>
   1180e:	03000793          	li	a5,48
   11812:	18f105a3          	sb	a5,395(sp)
   11816:	18b10c93          	addi	s9,sp,395
   1181a:	b769                	j	117a4 <_vfprintf_r+0x37a>
   1181c:	419404bb          	subw	s1,s0,s9
   11820:	d00496e3          	bnez	s1,1152c <_vfprintf_r+0x102>
   11824:	00044783          	lbu	a5,0(s0)
   11828:	bb0d                	j	1155a <_vfprintf_r+0x130>
   1182a:	0a10                	addi	a2,sp,272
   1182c:	85ca                	mv	a1,s2
   1182e:	8552                	mv	a0,s4
   11830:	416070ef          	jal	ra,18c46 <__sprint_r>
   11834:	ea0516e3          	bnez	a0,116e0 <_vfprintf_r+0x2b6>
   11838:	835a                	mv	t1,s6
   1183a:	bb19                	j	11550 <_vfprintf_r+0x126>
   1183c:	0084f793          	andi	a5,s1,8
   11840:	180789e3          	beqz	a5,121d2 <_vfprintf_r+0xda8>
   11844:	67c2                	ld	a5,16(sp)
   11846:	07bd                	addi	a5,a5,15
   11848:	ff07f713          	andi	a4,a5,-16
   1184c:	631c                	ld	a5,0(a4)
   1184e:	670c                	ld	a1,8(a4)
   11850:	0741                	addi	a4,a4,16
   11852:	e83a                	sd	a4,16(sp)
   11854:	0208                	addi	a0,sp,256
   11856:	ec1a                	sd	t1,24(sp)
   11858:	e23e                	sd	a5,256(sp)
   1185a:	e62e                	sd	a1,264(sp)
   1185c:	2a0040ef          	jal	ra,15afc <_ldcheck>
   11860:	d5aa                	sw	a0,232(sp)
   11862:	4789                	li	a5,2
   11864:	6362                	ld	t1,24(sp)
   11866:	50f509e3          	beq	a0,a5,12578 <_vfprintf_r+0x114e>
   1186a:	4785                	li	a5,1
   1186c:	68f500e3          	beq	a0,a5,126ec <_vfprintf_r+0x12c2>
   11870:	06100793          	li	a5,97
   11874:	2efd09e3          	beq	s10,a5,12366 <_vfprintf_r+0xf3c>
   11878:	04100793          	li	a5,65
   1187c:	05800713          	li	a4,88
   11880:	2efd05e3          	beq	s10,a5,1236a <_vfprintf_r+0xf40>
   11884:	fdfd7713          	andi	a4,s10,-33
   11888:	57fd                	li	a5,-1
   1188a:	ecba                	sd	a4,88(sp)
   1188c:	00fc1463          	bne	s8,a5,11894 <_vfprintf_r+0x46a>
   11890:	5000106f          	j	12d90 <_vfprintf_r+0x1966>
   11894:	04700793          	li	a5,71
   11898:	00f71463          	bne	a4,a5,118a0 <_vfprintf_r+0x476>
   1189c:	4e60106f          	j	12d82 <_vfprintf_r+0x1958>
   118a0:	69b2                	ld	s3,264(sp)
   118a2:	1004e793          	ori	a5,s1,256
   118a6:	f526                	sd	s1,168(sp)
   118a8:	6b92                	ld	s7,256(sp)
   118aa:	2781                	sext.w	a5,a5
   118ac:	0009d463          	bgez	s3,118b4 <_vfprintf_r+0x48a>
   118b0:	15e0106f          	j	12a0e <_vfprintf_r+0x15e4>
   118b4:	e582                	sd	zero,200(sp)
   118b6:	84be                	mv	s1,a5
   118b8:	ec02                	sd	zero,24(sp)
   118ba:	2f10006f          	j	123aa <_vfprintf_r+0xf80>
   118be:	0a10                	addi	a2,sp,272
   118c0:	85ca                	mv	a1,s2
   118c2:	8552                	mv	a0,s4
   118c4:	f816                	sd	t0,48(sp)
   118c6:	380070ef          	jal	ra,18c46 <__sprint_r>
   118ca:	5a051063          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   118ce:	7792                	ld	a5,288(sp)
   118d0:	72c2                	ld	t0,48(sp)
   118d2:	835a                	mv	t1,s6
   118d4:	b39d                	j	1163a <_vfprintf_r+0x210>
   118d6:	11812683          	lw	a3,280(sp)
   118da:	00178d13          	addi	s10,a5,1
   118de:	7782                	ld	a5,32(sp)
   118e0:	00168b9b          	addiw	s7,a3,1
   118e4:	4605                	li	a2,1
   118e6:	01933023          	sd	s9,0(t1)
   118ea:	86de                	mv	a3,s7
   118ec:	01030c13          	addi	s8,t1,16
   118f0:	7ef65e63          	bge	a2,a5,120ec <_vfprintf_r+0xcc2>
   118f4:	4605                	li	a2,1
   118f6:	10d12c23          	sw	a3,280(sp)
   118fa:	00c33423          	sd	a2,8(t1)
   118fe:	f26a                	sd	s10,288(sp)
   11900:	469d                	li	a3,7
   11902:	3b76c2e3          	blt	a3,s7,124a6 <_vfprintf_r+0x107c>
   11906:	77a6                	ld	a5,104(sp)
   11908:	7746                	ld	a4,112(sp)
   1190a:	2b85                	addiw	s7,s7,1
   1190c:	9d3e                	add	s10,s10,a5
   1190e:	00ec3023          	sd	a4,0(s8)
   11912:	00fc3423          	sd	a5,8(s8)
   11916:	f26a                	sd	s10,288(sp)
   11918:	11712c23          	sw	s7,280(sp)
   1191c:	469d                	li	a3,7
   1191e:	0c41                	addi	s8,s8,16
   11920:	3b76c0e3          	blt	a3,s7,124c0 <_vfprintf_r+0x1096>
   11924:	6512                	ld	a0,256(sp)
   11926:	65b2                	ld	a1,264(sp)
   11928:	4681                	li	a3,0
   1192a:	4601                	li	a2,0
   1192c:	09b090ef          	jal	ra,1b1c6 <__eqtf2>
   11930:	7782                	ld	a5,32(sp)
   11932:	fff7869b          	addiw	a3,a5,-1
   11936:	7e050463          	beqz	a0,1211e <_vfprintf_r+0xcf4>
   1193a:	2b85                	addiw	s7,s7,1
   1193c:	001c8813          	addi	a6,s9,1
   11940:	865e                	mv	a2,s7
   11942:	9d36                	add	s10,s10,a3
   11944:	010c3023          	sd	a6,0(s8)
   11948:	00dc3423          	sd	a3,8(s8)
   1194c:	f26a                	sd	s10,288(sp)
   1194e:	10c12c23          	sw	a2,280(sp)
   11952:	469d                	li	a3,7
   11954:	0c41                	addi	s8,s8,16
   11956:	7b76c763          	blt	a3,s7,12104 <_vfprintf_r+0xcda>
   1195a:	7766                	ld	a4,120(sp)
   1195c:	1994                	addi	a3,sp,240
   1195e:	001b861b          	addiw	a2,s7,1
   11962:	01a707b3          	add	a5,a4,s10
   11966:	00dc3023          	sd	a3,0(s8)
   1196a:	00ec3423          	sd	a4,8(s8)
   1196e:	f23e                	sd	a5,288(sp)
   11970:	10c12c23          	sw	a2,280(sp)
   11974:	469d                	li	a3,7
   11976:	010c0313          	addi	t1,s8,16
   1197a:	d2c6d2e3          	bge	a3,a2,1169e <_vfprintf_r+0x274>
   1197e:	0a10                	addi	a2,sp,272
   11980:	85ca                	mv	a1,s2
   11982:	8552                	mv	a0,s4
   11984:	2c2070ef          	jal	ra,18c46 <__sprint_r>
   11988:	4e051163          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   1198c:	7792                	ld	a5,288(sp)
   1198e:	835a                	mv	t1,s6
   11990:	b339                	j	1169e <_vfprintf_r+0x274>
   11992:	0104f793          	andi	a5,s1,16
   11996:	020799e3          	bnez	a5,121c8 <_vfprintf_r+0xd9e>
   1199a:	66c2                	ld	a3,16(sp)
   1199c:	0404f793          	andi	a5,s1,64
   119a0:	0006a983          	lw	s3,0(a3)
   119a4:	4c0782e3          	beqz	a5,12668 <_vfprintf_r+0x123e>
   119a8:	19c2                	slli	s3,s3,0x30
   119aa:	0309d993          	srli	s3,s3,0x30
   119ae:	b53d                	j	117dc <_vfprintf_r+0x3b2>
   119b0:	0104f793          	andi	a5,s1,16
   119b4:	7e079e63          	bnez	a5,121b0 <_vfprintf_r+0xd86>
   119b8:	66c2                	ld	a3,16(sp)
   119ba:	0404f793          	andi	a5,s1,64
   119be:	0006a983          	lw	s3,0(a3)
   119c2:	4a078be3          	beqz	a5,12678 <_vfprintf_r+0x124e>
   119c6:	0109999b          	slliw	s3,s3,0x10
   119ca:	4109d99b          	sraiw	s3,s3,0x10
   119ce:	87ce                	mv	a5,s3
   119d0:	da07dae3          	bgez	a5,11784 <_vfprintf_r+0x35a>
   119d4:	e83a                	sd	a4,16(sp)
   119d6:	02d00713          	li	a4,45
   119da:	0ce10fa3          	sb	a4,223(sp)
   119de:	577d                	li	a4,-1
   119e0:	413009b3          	neg	s3,s3
   119e4:	8da6                	mv	s11,s1
   119e6:	4785                	li	a5,1
   119e8:	e0ec15e3          	bne	s8,a4,117f2 <_vfprintf_r+0x3c8>
   119ec:	4705                	li	a4,1
   119ee:	48e78a63          	beq	a5,a4,11e82 <_vfprintf_r+0xa58>
   119f2:	4709                	li	a4,2
   119f4:	26e78063          	beq	a5,a4,11c54 <_vfprintf_r+0x82a>
   119f8:	18c10b93          	addi	s7,sp,396
   119fc:	8cde                	mv	s9,s7
   119fe:	0079f793          	andi	a5,s3,7
   11a02:	03078793          	addi	a5,a5,48
   11a06:	fefc8fa3          	sb	a5,-1(s9)
   11a0a:	0039d993          	srli	s3,s3,0x3
   11a0e:	8766                	mv	a4,s9
   11a10:	1cfd                	addi	s9,s9,-1
   11a12:	fe0996e3          	bnez	s3,119fe <_vfprintf_r+0x5d4>
   11a16:	001df693          	andi	a3,s11,1
   11a1a:	24068d63          	beqz	a3,11c74 <_vfprintf_r+0x84a>
   11a1e:	03000693          	li	a3,48
   11a22:	24d78963          	beq	a5,a3,11c74 <_vfprintf_r+0x84a>
   11a26:	1779                	addi	a4,a4,-2
   11a28:	fedc8fa3          	sb	a3,-1(s9)
   11a2c:	40eb8bbb          	subw	s7,s7,a4
   11a30:	84ee                	mv	s1,s11
   11a32:	8cba                	mv	s9,a4
   11a34:	bb85                	j	117a4 <_vfprintf_r+0x37a>
   11a36:	8552                	mv	a0,s4
   11a38:	b8ffe0ef          	jal	ra,105c6 <__sinit>
   11a3c:	b4b9                	j	1148a <_vfprintf_r+0x60>
   11a3e:	67c2                	ld	a5,16(sp)
   11a40:	0c010fa3          	sb	zero,223(sp)
   11a44:	0007bc83          	ld	s9,0(a5)
   11a48:	00878d93          	addi	s11,a5,8
   11a4c:	0a0c8be3          	beqz	s9,12302 <_vfprintf_r+0xed8>
   11a50:	57fd                	li	a5,-1
   11a52:	36fc0ae3          	beq	s8,a5,125c6 <_vfprintf_r+0x119c>
   11a56:	8662                	mv	a2,s8
   11a58:	4581                	li	a1,0
   11a5a:	8566                	mv	a0,s9
   11a5c:	e81a                	sd	t1,16(sp)
   11a5e:	b1eff0ef          	jal	ra,10d7c <memchr>
   11a62:	ec2a                	sd	a0,24(sp)
   11a64:	6342                	ld	t1,16(sp)
   11a66:	e119                	bnez	a0,11a6c <_vfprintf_r+0x642>
   11a68:	1a40106f          	j	12c0c <_vfprintf_r+0x17e2>
   11a6c:	67e2                	ld	a5,24(sp)
   11a6e:	e86e                	sd	s11,16(sp)
   11a70:	ec02                	sd	zero,24(sp)
   11a72:	41978bbb          	subw	s7,a5,s9
   11a76:	0df14783          	lbu	a5,223(sp)
   11a7a:	fffbc993          	not	s3,s7
   11a7e:	43f9d993          	srai	s3,s3,0x3f
   11a82:	e882                	sd	zero,80(sp)
   11a84:	ec82                	sd	zero,88(sp)
   11a86:	e482                	sd	zero,72(sp)
   11a88:	0179f9b3          	and	s3,s3,s7
   11a8c:	4c01                	li	s8,0
   11a8e:	d20799e3          	bnez	a5,117c0 <_vfprintf_r+0x396>
   11a92:	beb9                	j	115f0 <_vfprintf_r+0x1c6>
   11a94:	6742                	ld	a4,16(sp)
   11a96:	0c010fa3          	sb	zero,223(sp)
   11a9a:	4985                	li	s3,1
   11a9c:	431c                	lw	a5,0(a4)
   11a9e:	0721                	addi	a4,a4,8
   11aa0:	e83a                	sd	a4,16(sp)
   11aa2:	12f10423          	sb	a5,296(sp)
   11aa6:	4b85                	li	s7,1
   11aa8:	12810c93          	addi	s9,sp,296
   11aac:	be2d                	j	115e6 <_vfprintf_r+0x1bc>
   11aae:	67c2                	ld	a5,16(sp)
   11ab0:	0007aa83          	lw	s5,0(a5)
   11ab4:	07a1                	addi	a5,a5,8
   11ab6:	6e0ad363          	bgez	s5,1219c <_vfprintf_r+0xd72>
   11aba:	41500abb          	negw	s5,s5
   11abe:	e83e                	sd	a5,16(sp)
   11ac0:	0044e493          	ori	s1,s1,4
   11ac4:	00044e03          	lbu	t3,0(s0)
   11ac8:	2481                	sext.w	s1,s1
   11aca:	bc45                	j	1157a <_vfprintf_r+0x150>
   11acc:	02b00793          	li	a5,43
   11ad0:	00044e03          	lbu	t3,0(s0)
   11ad4:	0cf10fa3          	sb	a5,223(sp)
   11ad8:	b44d                	j	1157a <_vfprintf_r+0x150>
   11ada:	0804e493          	ori	s1,s1,128
   11ade:	00044e03          	lbu	t3,0(s0)
   11ae2:	2481                	sext.w	s1,s1
   11ae4:	bc59                	j	1157a <_vfprintf_r+0x150>
   11ae6:	00044d03          	lbu	s10,0(s0)
   11aea:	00140793          	addi	a5,s0,1
   11aee:	00dd1463          	bne	s10,a3,11af6 <_vfprintf_r+0x6cc>
   11af2:	39a0106f          	j	12e8c <_vfprintf_r+0x1a62>
   11af6:	fd0d071b          	addiw	a4,s10,-48
   11afa:	843e                	mv	s0,a5
   11afc:	4c01                	li	s8,0
   11afe:	a8ede3e3          	bltu	s11,a4,11584 <_vfprintf_r+0x15a>
   11b02:	00044d03          	lbu	s10,0(s0)
   11b06:	002c179b          	slliw	a5,s8,0x2
   11b0a:	018787bb          	addw	a5,a5,s8
   11b0e:	0017979b          	slliw	a5,a5,0x1
   11b12:	00e78c3b          	addw	s8,a5,a4
   11b16:	fd0d071b          	addiw	a4,s10,-48
   11b1a:	0405                	addi	s0,s0,1
   11b1c:	feedf3e3          	bgeu	s11,a4,11b02 <_vfprintf_r+0x6d8>
   11b20:	b495                	j	11584 <_vfprintf_r+0x15a>
   11b22:	8552                	mv	a0,s4
   11b24:	ec1a                	sd	t1,24(sp)
   11b26:	01e040ef          	jal	ra,15b44 <_localeconv_r>
   11b2a:	651c                	ld	a5,8(a0)
   11b2c:	853e                	mv	a0,a5
   11b2e:	e53e                	sd	a5,136(sp)
   11b30:	86bff0ef          	jal	ra,1139a <strlen>
   11b34:	87aa                	mv	a5,a0
   11b36:	8552                	mv	a0,s4
   11b38:	8d3e                	mv	s10,a5
   11b3a:	e13e                	sd	a5,128(sp)
   11b3c:	008040ef          	jal	ra,15b44 <_localeconv_r>
   11b40:	691c                	ld	a5,16(a0)
   11b42:	6362                	ld	t1,24(sp)
   11b44:	00044e03          	lbu	t3,0(s0)
   11b48:	f0be                	sd	a5,96(sp)
   11b4a:	a20d08e3          	beqz	s10,1157a <_vfprintf_r+0x150>
   11b4e:	a20786e3          	beqz	a5,1157a <_vfprintf_r+0x150>
   11b52:	0007c783          	lbu	a5,0(a5)
   11b56:	a20782e3          	beqz	a5,1157a <_vfprintf_r+0x150>
   11b5a:	4004e493          	ori	s1,s1,1024
   11b5e:	2481                	sext.w	s1,s1
   11b60:	bc29                	j	1157a <_vfprintf_r+0x150>
   11b62:	0014e493          	ori	s1,s1,1
   11b66:	00044e03          	lbu	t3,0(s0)
   11b6a:	2481                	sext.w	s1,s1
   11b6c:	b439                	j	1157a <_vfprintf_r+0x150>
   11b6e:	0df14783          	lbu	a5,223(sp)
   11b72:	00044e03          	lbu	t3,0(s0)
   11b76:	a00792e3          	bnez	a5,1157a <_vfprintf_r+0x150>
   11b7a:	02000793          	li	a5,32
   11b7e:	0cf10fa3          	sb	a5,223(sp)
   11b82:	bae5                	j	1157a <_vfprintf_r+0x150>
   11b84:	0084e493          	ori	s1,s1,8
   11b88:	00044e03          	lbu	t3,0(s0)
   11b8c:	2481                	sext.w	s1,s1
   11b8e:	b2f5                	j	1157a <_vfprintf_r+0x150>
   11b90:	0104ed93          	ori	s11,s1,16
   11b94:	2d81                	sext.w	s11,s11
   11b96:	66c2                	ld	a3,16(sp)
   11b98:	020df793          	andi	a5,s11,32
   11b9c:	00868713          	addi	a4,a3,8
   11ba0:	5c078863          	beqz	a5,12170 <_vfprintf_r+0xd46>
   11ba4:	0006b983          	ld	s3,0(a3)
   11ba8:	4785                	li	a5,1
   11baa:	e83a                	sd	a4,16(sp)
   11bac:	b92d                	j	117e6 <_vfprintf_r+0x3bc>
   11bae:	0204e493          	ori	s1,s1,32
   11bb2:	00044e03          	lbu	t3,0(s0)
   11bb6:	2481                	sext.w	s1,s1
   11bb8:	b2c9                	j	1157a <_vfprintf_r+0x150>
   11bba:	6742                	ld	a4,16(sp)
   11bbc:	77e1                	lui	a5,0xffff8
   11bbe:	8307c793          	xori	a5,a5,-2000
   11bc2:	0ef11023          	sh	a5,224(sp)
   11bc6:	00870793          	addi	a5,a4,8
   11bca:	e83e                	sd	a5,16(sp)
   11bcc:	67f1                	lui	a5,0x1c
   11bce:	72878793          	addi	a5,a5,1832 # 1c728 <__clzdi2+0xf8>
   11bd2:	0024ed93          	ori	s11,s1,2
   11bd6:	f43e                	sd	a5,40(sp)
   11bd8:	00073983          	ld	s3,0(a4)
   11bdc:	2d81                	sext.w	s11,s11
   11bde:	4789                	li	a5,2
   11be0:	07800d13          	li	s10,120
   11be4:	b109                	j	117e6 <_vfprintf_r+0x3bc>
   11be6:	66c2                	ld	a3,16(sp)
   11be8:	0204f793          	andi	a5,s1,32
   11bec:	6298                	ld	a4,0(a3)
   11bee:	06a1                	addi	a3,a3,8
   11bf0:	e836                	sd	a3,16(sp)
   11bf2:	5a079a63          	bnez	a5,121a6 <_vfprintf_r+0xd7c>
   11bf6:	0104f793          	andi	a5,s1,16
   11bfa:	5a079663          	bnez	a5,121a6 <_vfprintf_r+0xd7c>
   11bfe:	0404f793          	andi	a5,s1,64
   11c02:	5c0791e3          	bnez	a5,129c4 <_vfprintf_r+0x159a>
   11c06:	2004f493          	andi	s1,s1,512
   11c0a:	67a2                	ld	a5,8(sp)
   11c0c:	e099                	bnez	s1,11c12 <_vfprintf_r+0x7e8>
   11c0e:	1880106f          	j	12d96 <_vfprintf_r+0x196c>
   11c12:	00f70023          	sb	a5,0(a4)
   11c16:	8ca2                	mv	s9,s0
   11c18:	bc65                	j	116d0 <_vfprintf_r+0x2a6>
   11c1a:	00044e03          	lbu	t3,0(s0)
   11c1e:	06c00793          	li	a5,108
   11c22:	6afe0e63          	beq	t3,a5,122de <_vfprintf_r+0xeb4>
   11c26:	0104e493          	ori	s1,s1,16
   11c2a:	2481                	sext.w	s1,s1
   11c2c:	b2b9                	j	1157a <_vfprintf_r+0x150>
   11c2e:	00044e03          	lbu	t3,0(s0)
   11c32:	06800793          	li	a5,104
   11c36:	68fe0763          	beq	t3,a5,122c4 <_vfprintf_r+0xe9a>
   11c3a:	0404e493          	ori	s1,s1,64
   11c3e:	2481                	sext.w	s1,s1
   11c40:	ba2d                	j	1157a <_vfprintf_r+0x150>
   11c42:	4705                	li	a4,1
   11c44:	00e79463          	bne	a5,a4,11c4c <_vfprintf_r+0x822>
   11c48:	12a0106f          	j	12d72 <_vfprintf_r+0x1948>
   11c4c:	4709                	li	a4,2
   11c4e:	8da6                	mv	s11,s1
   11c50:	dae794e3          	bne	a5,a4,119f8 <_vfprintf_r+0x5ce>
   11c54:	18c10b93          	addi	s7,sp,396
   11c58:	8cde                	mv	s9,s7
   11c5a:	7722                	ld	a4,40(sp)
   11c5c:	00f9f793          	andi	a5,s3,15
   11c60:	1cfd                	addi	s9,s9,-1
   11c62:	97ba                	add	a5,a5,a4
   11c64:	0007c783          	lbu	a5,0(a5)
   11c68:	0049d993          	srli	s3,s3,0x4
   11c6c:	00fc8023          	sb	a5,0(s9)
   11c70:	fe0995e3          	bnez	s3,11c5a <_vfprintf_r+0x830>
   11c74:	419b8bbb          	subw	s7,s7,s9
   11c78:	84ee                	mv	s1,s11
   11c7a:	b62d                	j	117a4 <_vfprintf_r+0x37a>
   11c7c:	06500713          	li	a4,101
   11c80:	c5a75be3          	bge	a4,s10,118d6 <_vfprintf_r+0x4ac>
   11c84:	6512                	ld	a0,256(sp)
   11c86:	65b2                	ld	a1,264(sp)
   11c88:	4601                	li	a2,0
   11c8a:	4681                	li	a3,0
   11c8c:	fc3e                	sd	a5,56(sp)
   11c8e:	f81a                	sd	t1,48(sp)
   11c90:	536090ef          	jal	ra,1b1c6 <__eqtf2>
   11c94:	7342                	ld	t1,48(sp)
   11c96:	77e2                	ld	a5,56(sp)
   11c98:	32051663          	bnez	a0,11fc4 <_vfprintf_r+0xb9a>
   11c9c:	11812703          	lw	a4,280(sp)
   11ca0:	66f1                	lui	a3,0x1c
   11ca2:	76068693          	addi	a3,a3,1888 # 1c760 <__clzdi2+0x130>
   11ca6:	2705                	addiw	a4,a4,1
   11ca8:	00d33023          	sd	a3,0(t1)
   11cac:	0785                	addi	a5,a5,1
   11cae:	4685                	li	a3,1
   11cb0:	00d33423          	sd	a3,8(t1)
   11cb4:	10e12c23          	sw	a4,280(sp)
   11cb8:	0007069b          	sext.w	a3,a4
   11cbc:	f23e                	sd	a5,288(sp)
   11cbe:	471d                	li	a4,7
   11cc0:	0341                	addi	t1,t1,16
   11cc2:	08d748e3          	blt	a4,a3,12552 <_vfprintf_r+0x1128>
   11cc6:	572e                	lw	a4,232(sp)
   11cc8:	7682                	ld	a3,32(sp)
   11cca:	4cd75463          	bge	a4,a3,12192 <_vfprintf_r+0xd68>
   11cce:	76a6                	ld	a3,104(sp)
   11cd0:	11812703          	lw	a4,280(sp)
   11cd4:	7646                	ld	a2,112(sp)
   11cd6:	97b6                	add	a5,a5,a3
   11cd8:	2705                	addiw	a4,a4,1
   11cda:	00d33423          	sd	a3,8(t1)
   11cde:	00c33023          	sd	a2,0(t1)
   11ce2:	0007069b          	sext.w	a3,a4
   11ce6:	10e12c23          	sw	a4,280(sp)
   11cea:	f23e                	sd	a5,288(sp)
   11cec:	471d                	li	a4,7
   11cee:	0341                	addi	t1,t1,16
   11cf0:	5ed74f63          	blt	a4,a3,122ee <_vfprintf_r+0xec4>
   11cf4:	7702                	ld	a4,32(sp)
   11cf6:	fff70b9b          	addiw	s7,a4,-1
   11cfa:	9b7052e3          	blez	s7,1169e <_vfprintf_r+0x274>
   11cfe:	68f5                	lui	a7,0x1d
   11d00:	46c1                	li	a3,16
   11d02:	11812703          	lw	a4,280(sp)
   11d06:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   11d0a:	4cc1                	li	s9,16
   11d0c:	4c1d                	li	s8,7
   11d0e:	0176c763          	blt	a3,s7,11d1c <_vfprintf_r+0x8f2>
   11d12:	0570006f          	j	12568 <_vfprintf_r+0x113e>
   11d16:	3bc1                	addiw	s7,s7,-16
   11d18:	057cd8e3          	bge	s9,s7,12568 <_vfprintf_r+0x113e>
   11d1c:	2705                	addiw	a4,a4,1
   11d1e:	07c1                	addi	a5,a5,16
   11d20:	01b33023          	sd	s11,0(t1)
   11d24:	01933423          	sd	s9,8(t1)
   11d28:	f23e                	sd	a5,288(sp)
   11d2a:	10e12c23          	sw	a4,280(sp)
   11d2e:	0341                	addi	t1,t1,16
   11d30:	feec53e3          	bge	s8,a4,11d16 <_vfprintf_r+0x8ec>
   11d34:	0a10                	addi	a2,sp,272
   11d36:	85ca                	mv	a1,s2
   11d38:	8552                	mv	a0,s4
   11d3a:	70d060ef          	jal	ra,18c46 <__sprint_r>
   11d3e:	12051663          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   11d42:	7792                	ld	a5,288(sp)
   11d44:	11812703          	lw	a4,280(sp)
   11d48:	835a                	mv	t1,s6
   11d4a:	b7f1                	j	11d16 <_vfprintf_r+0x8ec>
   11d4c:	413a86bb          	subw	a3,s5,s3
   11d50:	90d05ee3          	blez	a3,1166c <_vfprintf_r+0x242>
   11d54:	68f5                	lui	a7,0x1d
   11d56:	4641                	li	a2,16
   11d58:	11812703          	lw	a4,280(sp)
   11d5c:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   11d60:	4f41                	li	t5,16
   11d62:	4f9d                	li	t6,7
   11d64:	00d64663          	blt	a2,a3,11d70 <_vfprintf_r+0x946>
   11d68:	a089                	j	11daa <_vfprintf_r+0x980>
   11d6a:	36c1                	addiw	a3,a3,-16
   11d6c:	02df5f63          	bge	t5,a3,11daa <_vfprintf_r+0x980>
   11d70:	2705                	addiw	a4,a4,1
   11d72:	07c1                	addi	a5,a5,16
   11d74:	01b33023          	sd	s11,0(t1)
   11d78:	01e33423          	sd	t5,8(t1)
   11d7c:	f23e                	sd	a5,288(sp)
   11d7e:	10e12c23          	sw	a4,280(sp)
   11d82:	0341                	addi	t1,t1,16
   11d84:	feefd3e3          	bge	t6,a4,11d6a <_vfprintf_r+0x940>
   11d88:	0a10                	addi	a2,sp,272
   11d8a:	85ca                	mv	a1,s2
   11d8c:	8552                	mv	a0,s4
   11d8e:	f836                	sd	a3,48(sp)
   11d90:	6b7060ef          	jal	ra,18c46 <__sprint_r>
   11d94:	e979                	bnez	a0,11e6a <_vfprintf_r+0xa40>
   11d96:	76c2                	ld	a3,48(sp)
   11d98:	4f41                	li	t5,16
   11d9a:	7792                	ld	a5,288(sp)
   11d9c:	36c1                	addiw	a3,a3,-16
   11d9e:	11812703          	lw	a4,280(sp)
   11da2:	835a                	mv	t1,s6
   11da4:	4f9d                	li	t6,7
   11da6:	fcdf45e3          	blt	t5,a3,11d70 <_vfprintf_r+0x946>
   11daa:	2705                	addiw	a4,a4,1
   11dac:	97b6                	add	a5,a5,a3
   11dae:	00d33423          	sd	a3,8(t1)
   11db2:	01b33023          	sd	s11,0(t1)
   11db6:	0007069b          	sext.w	a3,a4
   11dba:	10e12c23          	sw	a4,280(sp)
   11dbe:	f23e                	sd	a5,288(sp)
   11dc0:	471d                	li	a4,7
   11dc2:	0341                	addi	t1,t1,16
   11dc4:	8ad754e3          	bge	a4,a3,1166c <_vfprintf_r+0x242>
   11dc8:	0a10                	addi	a2,sp,272
   11dca:	85ca                	mv	a1,s2
   11dcc:	8552                	mv	a0,s4
   11dce:	679060ef          	jal	ra,18c46 <__sprint_r>
   11dd2:	ed41                	bnez	a0,11e6a <_vfprintf_r+0xa40>
   11dd4:	7792                	ld	a5,288(sp)
   11dd6:	835a                	mv	t1,s6
   11dd8:	b851                	j	1166c <_vfprintf_r+0x242>
   11dda:	68f5                	lui	a7,0x1d
   11ddc:	4641                	li	a2,16
   11dde:	11812703          	lw	a4,280(sp)
   11de2:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   11de6:	4ec1                	li	t4,16
   11de8:	4f1d                	li	t5,7
   11dea:	01864663          	blt	a2,s8,11df6 <_vfprintf_r+0x9cc>
   11dee:	a83d                	j	11e2c <_vfprintf_r+0xa02>
   11df0:	3c41                	addiw	s8,s8,-16
   11df2:	038edd63          	bge	t4,s8,11e2c <_vfprintf_r+0xa02>
   11df6:	2705                	addiw	a4,a4,1
   11df8:	07c1                	addi	a5,a5,16
   11dfa:	01b33023          	sd	s11,0(t1)
   11dfe:	01d33423          	sd	t4,8(t1)
   11e02:	f23e                	sd	a5,288(sp)
   11e04:	10e12c23          	sw	a4,280(sp)
   11e08:	0341                	addi	t1,t1,16
   11e0a:	feef53e3          	bge	t5,a4,11df0 <_vfprintf_r+0x9c6>
   11e0e:	0a10                	addi	a2,sp,272
   11e10:	85ca                	mv	a1,s2
   11e12:	8552                	mv	a0,s4
   11e14:	633060ef          	jal	ra,18c46 <__sprint_r>
   11e18:	e929                	bnez	a0,11e6a <_vfprintf_r+0xa40>
   11e1a:	4ec1                	li	t4,16
   11e1c:	3c41                	addiw	s8,s8,-16
   11e1e:	7792                	ld	a5,288(sp)
   11e20:	11812703          	lw	a4,280(sp)
   11e24:	835a                	mv	t1,s6
   11e26:	4f1d                	li	t5,7
   11e28:	fd8ec7e3          	blt	t4,s8,11df6 <_vfprintf_r+0x9cc>
   11e2c:	0017069b          	addiw	a3,a4,1
   11e30:	97e2                	add	a5,a5,s8
   11e32:	01b33023          	sd	s11,0(t1)
   11e36:	01833423          	sd	s8,8(t1)
   11e3a:	f23e                	sd	a5,288(sp)
   11e3c:	10d12c23          	sw	a3,280(sp)
   11e40:	471d                	li	a4,7
   11e42:	0341                	addi	t1,t1,16
   11e44:	82d758e3          	bge	a4,a3,11674 <_vfprintf_r+0x24a>
   11e48:	0a10                	addi	a2,sp,272
   11e4a:	85ca                	mv	a1,s2
   11e4c:	8552                	mv	a0,s4
   11e4e:	5f9060ef          	jal	ra,18c46 <__sprint_r>
   11e52:	ed01                	bnez	a0,11e6a <_vfprintf_r+0xa40>
   11e54:	7792                	ld	a5,288(sp)
   11e56:	835a                	mv	t1,s6
   11e58:	81dff06f          	j	11674 <_vfprintf_r+0x24a>
   11e5c:	0a10                	addi	a2,sp,272
   11e5e:	85ca                	mv	a1,s2
   11e60:	8552                	mv	a0,s4
   11e62:	5e5060ef          	jal	ra,18c46 <__sprint_r>
   11e66:	84050be3          	beqz	a0,116bc <_vfprintf_r+0x292>
   11e6a:	67e2                	ld	a5,24(sp)
   11e6c:	86078ae3          	beqz	a5,116e0 <_vfprintf_r+0x2b6>
   11e70:	85be                	mv	a1,a5
   11e72:	8552                	mv	a0,s4
   11e74:	6fc010ef          	jal	ra,13570 <_free_r>
   11e78:	b0a5                	j	116e0 <_vfprintf_r+0x2b6>
   11e7a:	4705                	li	a4,1
   11e7c:	8da6                	mv	s11,s1
   11e7e:	b6e79ae3          	bne	a5,a4,119f2 <_vfprintf_r+0x5c8>
   11e82:	47a5                	li	a5,9
   11e84:	3737e763          	bltu	a5,s3,121f2 <_vfprintf_r+0xdc8>
   11e88:	0309899b          	addiw	s3,s3,48
   11e8c:	193105a3          	sb	s3,395(sp)
   11e90:	84ee                	mv	s1,s11
   11e92:	4b85                	li	s7,1
   11e94:	18b10c93          	addi	s9,sp,395
   11e98:	b231                	j	117a4 <_vfprintf_r+0x37a>
   11e9a:	68f5                	lui	a7,0x1d
   11e9c:	4641                	li	a2,16
   11e9e:	11812703          	lw	a4,280(sp)
   11ea2:	9a088893          	addi	a7,a7,-1632 # 1c9a0 <blanks.1>
   11ea6:	4f41                	li	t5,16
   11ea8:	439d                	li	t2,7
   11eaa:	00d64663          	blt	a2,a3,11eb6 <_vfprintf_r+0xa8c>
   11eae:	a0a9                	j	11ef8 <_vfprintf_r+0xace>
   11eb0:	36c1                	addiw	a3,a3,-16
   11eb2:	04df5363          	bge	t5,a3,11ef8 <_vfprintf_r+0xace>
   11eb6:	2705                	addiw	a4,a4,1
   11eb8:	07c1                	addi	a5,a5,16
   11eba:	01133023          	sd	a7,0(t1)
   11ebe:	01e33423          	sd	t5,8(t1)
   11ec2:	f23e                	sd	a5,288(sp)
   11ec4:	10e12c23          	sw	a4,280(sp)
   11ec8:	0341                	addi	t1,t1,16
   11eca:	fee3d3e3          	bge	t2,a4,11eb0 <_vfprintf_r+0xa86>
   11ece:	0a10                	addi	a2,sp,272
   11ed0:	85ca                	mv	a1,s2
   11ed2:	8552                	mv	a0,s4
   11ed4:	e0c6                	sd	a7,64(sp)
   11ed6:	fc36                	sd	a3,56(sp)
   11ed8:	f816                	sd	t0,48(sp)
   11eda:	56d060ef          	jal	ra,18c46 <__sprint_r>
   11ede:	f551                	bnez	a0,11e6a <_vfprintf_r+0xa40>
   11ee0:	76e2                	ld	a3,56(sp)
   11ee2:	4f41                	li	t5,16
   11ee4:	7792                	ld	a5,288(sp)
   11ee6:	36c1                	addiw	a3,a3,-16
   11ee8:	11812703          	lw	a4,280(sp)
   11eec:	6886                	ld	a7,64(sp)
   11eee:	72c2                	ld	t0,48(sp)
   11ef0:	835a                	mv	t1,s6
   11ef2:	439d                	li	t2,7
   11ef4:	fcdf41e3          	blt	t5,a3,11eb6 <_vfprintf_r+0xa8c>
   11ef8:	2705                	addiw	a4,a4,1
   11efa:	97b6                	add	a5,a5,a3
   11efc:	00d33423          	sd	a3,8(t1)
   11f00:	01133023          	sd	a7,0(t1)
   11f04:	0007069b          	sext.w	a3,a4
   11f08:	10e12c23          	sw	a4,280(sp)
   11f0c:	f23e                	sd	a5,288(sp)
   11f0e:	471d                	li	a4,7
   11f10:	0341                	addi	t1,t1,16
   11f12:	eed75d63          	bge	a4,a3,1160c <_vfprintf_r+0x1e2>
   11f16:	0a10                	addi	a2,sp,272
   11f18:	85ca                	mv	a1,s2
   11f1a:	8552                	mv	a0,s4
   11f1c:	f816                	sd	t0,48(sp)
   11f1e:	529060ef          	jal	ra,18c46 <__sprint_r>
   11f22:	f521                	bnez	a0,11e6a <_vfprintf_r+0xa40>
   11f24:	7792                	ld	a5,288(sp)
   11f26:	72c2                	ld	t0,48(sp)
   11f28:	835a                	mv	t1,s6
   11f2a:	ee2ff06f          	j	1160c <_vfprintf_r+0x1e2>
   11f2e:	0a10                	addi	a2,sp,272
   11f30:	85ca                	mv	a1,s2
   11f32:	8552                	mv	a0,s4
   11f34:	513060ef          	jal	ra,18c46 <__sprint_r>
   11f38:	f90d                	bnez	a0,11e6a <_vfprintf_r+0xa40>
   11f3a:	7792                	ld	a5,288(sp)
   11f3c:	835a                	mv	t1,s6
   11f3e:	f26ff06f          	j	11664 <_vfprintf_r+0x23a>
   11f42:	68f5                	lui	a7,0x1d
   11f44:	46c1                	li	a3,16
   11f46:	11812703          	lw	a4,280(sp)
   11f4a:	9a088893          	addi	a7,a7,-1632 # 1c9a0 <blanks.1>
   11f4e:	4bc1                	li	s7,16
   11f50:	4c1d                	li	s8,7
   11f52:	0096c663          	blt	a3,s1,11f5e <_vfprintf_r+0xb34>
   11f56:	a081                	j	11f96 <_vfprintf_r+0xb6c>
   11f58:	34c1                	addiw	s1,s1,-16
   11f5a:	029bde63          	bge	s7,s1,11f96 <_vfprintf_r+0xb6c>
   11f5e:	2705                	addiw	a4,a4,1
   11f60:	07c1                	addi	a5,a5,16
   11f62:	01133023          	sd	a7,0(t1)
   11f66:	01733423          	sd	s7,8(t1)
   11f6a:	f23e                	sd	a5,288(sp)
   11f6c:	10e12c23          	sw	a4,280(sp)
   11f70:	0341                	addi	t1,t1,16
   11f72:	feec53e3          	bge	s8,a4,11f58 <_vfprintf_r+0xb2e>
   11f76:	0a10                	addi	a2,sp,272
   11f78:	85ca                	mv	a1,s2
   11f7a:	8552                	mv	a0,s4
   11f7c:	f846                	sd	a7,48(sp)
   11f7e:	4c9060ef          	jal	ra,18c46 <__sprint_r>
   11f82:	ee0514e3          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   11f86:	34c1                	addiw	s1,s1,-16
   11f88:	7792                	ld	a5,288(sp)
   11f8a:	11812703          	lw	a4,280(sp)
   11f8e:	78c2                	ld	a7,48(sp)
   11f90:	835a                	mv	t1,s6
   11f92:	fc9bc6e3          	blt	s7,s1,11f5e <_vfprintf_r+0xb34>
   11f96:	0017069b          	addiw	a3,a4,1
   11f9a:	97a6                	add	a5,a5,s1
   11f9c:	01133023          	sd	a7,0(t1)
   11fa0:	00933423          	sd	s1,8(t1)
   11fa4:	f23e                	sd	a5,288(sp)
   11fa6:	10d12c23          	sw	a3,280(sp)
   11faa:	471d                	li	a4,7
   11fac:	eed75f63          	bge	a4,a3,116aa <_vfprintf_r+0x280>
   11fb0:	0a10                	addi	a2,sp,272
   11fb2:	85ca                	mv	a1,s2
   11fb4:	8552                	mv	a0,s4
   11fb6:	491060ef          	jal	ra,18c46 <__sprint_r>
   11fba:	ea0518e3          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   11fbe:	7792                	ld	a5,288(sp)
   11fc0:	eeaff06f          	j	116aa <_vfprintf_r+0x280>
   11fc4:	562e                	lw	a2,232(sp)
   11fc6:	50c05a63          	blez	a2,124da <_vfprintf_r+0x10b0>
   11fca:	6726                	ld	a4,72(sp)
   11fcc:	7682                	ld	a3,32(sp)
   11fce:	00070b9b          	sext.w	s7,a4
   11fd2:	2ae6c063          	blt	a3,a4,12272 <_vfprintf_r+0xe48>
   11fd6:	03705263          	blez	s7,11ffa <_vfprintf_r+0xbd0>
   11fda:	11812703          	lw	a4,280(sp)
   11fde:	97de                	add	a5,a5,s7
   11fe0:	01933023          	sd	s9,0(t1)
   11fe4:	0017069b          	addiw	a3,a4,1
   11fe8:	01733423          	sd	s7,8(t1)
   11fec:	f23e                	sd	a5,288(sp)
   11fee:	10d12c23          	sw	a3,280(sp)
   11ff2:	471d                	li	a4,7
   11ff4:	0341                	addi	t1,t1,16
   11ff6:	0ad74ae3          	blt	a4,a3,128aa <_vfprintf_r+0x1480>
   11ffa:	fffbc713          	not	a4,s7
   11ffe:	977d                	srai	a4,a4,0x3f
   12000:	00ebfbb3          	and	s7,s7,a4
   12004:	6726                	ld	a4,72(sp)
   12006:	41770bbb          	subw	s7,a4,s7
   1200a:	31704863          	bgtz	s7,1231a <_vfprintf_r+0xef0>
   1200e:	66a6                	ld	a3,72(sp)
   12010:	4004f713          	andi	a4,s1,1024
   12014:	00dc8c33          	add	s8,s9,a3
   12018:	70071f63          	bnez	a4,12736 <_vfprintf_r+0x130c>
   1201c:	572e                	lw	a4,232(sp)
   1201e:	7682                	ld	a3,32(sp)
   12020:	00d74663          	blt	a4,a3,1202c <_vfprintf_r+0xc02>
   12024:	0014f693          	andi	a3,s1,1
   12028:	08068ee3          	beqz	a3,128c4 <_vfprintf_r+0x149a>
   1202c:	7626                	ld	a2,104(sp)
   1202e:	11812683          	lw	a3,280(sp)
   12032:	75c6                	ld	a1,112(sp)
   12034:	97b2                	add	a5,a5,a2
   12036:	2685                	addiw	a3,a3,1
   12038:	00c33423          	sd	a2,8(t1)
   1203c:	00b33023          	sd	a1,0(t1)
   12040:	0006861b          	sext.w	a2,a3
   12044:	10d12c23          	sw	a3,280(sp)
   12048:	f23e                	sd	a5,288(sp)
   1204a:	469d                	li	a3,7
   1204c:	0341                	addi	t1,t1,16
   1204e:	3ac6c3e3          	blt	a3,a2,12bf4 <_vfprintf_r+0x17ca>
   12052:	7682                	ld	a3,32(sp)
   12054:	00dc8833          	add	a6,s9,a3
   12058:	41880bb3          	sub	s7,a6,s8
   1205c:	9e99                	subw	a3,a3,a4
   1205e:	000b861b          	sext.w	a2,s7
   12062:	00c6d363          	bge	a3,a2,12068 <_vfprintf_r+0xc3e>
   12066:	8bb6                	mv	s7,a3
   12068:	2b81                	sext.w	s7,s7
   1206a:	03705263          	blez	s7,1208e <_vfprintf_r+0xc64>
   1206e:	11812703          	lw	a4,280(sp)
   12072:	97de                	add	a5,a5,s7
   12074:	01833023          	sd	s8,0(t1)
   12078:	0017061b          	addiw	a2,a4,1
   1207c:	01733423          	sd	s7,8(t1)
   12080:	f23e                	sd	a5,288(sp)
   12082:	10c12c23          	sw	a2,280(sp)
   12086:	471d                	li	a4,7
   12088:	0341                	addi	t1,t1,16
   1208a:	38c74fe3          	blt	a4,a2,12c28 <_vfprintf_r+0x17fe>
   1208e:	fffbc713          	not	a4,s7
   12092:	977d                	srai	a4,a4,0x3f
   12094:	00ebfbb3          	and	s7,s7,a4
   12098:	41768bbb          	subw	s7,a3,s7
   1209c:	e1705163          	blez	s7,1169e <_vfprintf_r+0x274>
   120a0:	68f5                	lui	a7,0x1d
   120a2:	46c1                	li	a3,16
   120a4:	11812703          	lw	a4,280(sp)
   120a8:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   120ac:	4cc1                	li	s9,16
   120ae:	4c1d                	li	s8,7
   120b0:	0176c663          	blt	a3,s7,120bc <_vfprintf_r+0xc92>
   120b4:	a955                	j	12568 <_vfprintf_r+0x113e>
   120b6:	3bc1                	addiw	s7,s7,-16
   120b8:	4b7cd863          	bge	s9,s7,12568 <_vfprintf_r+0x113e>
   120bc:	2705                	addiw	a4,a4,1
   120be:	07c1                	addi	a5,a5,16
   120c0:	01b33023          	sd	s11,0(t1)
   120c4:	01933423          	sd	s9,8(t1)
   120c8:	f23e                	sd	a5,288(sp)
   120ca:	10e12c23          	sw	a4,280(sp)
   120ce:	0341                	addi	t1,t1,16
   120d0:	feec53e3          	bge	s8,a4,120b6 <_vfprintf_r+0xc8c>
   120d4:	0a10                	addi	a2,sp,272
   120d6:	85ca                	mv	a1,s2
   120d8:	8552                	mv	a0,s4
   120da:	36d060ef          	jal	ra,18c46 <__sprint_r>
   120de:	d80516e3          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   120e2:	7792                	ld	a5,288(sp)
   120e4:	11812703          	lw	a4,280(sp)
   120e8:	835a                	mv	t1,s6
   120ea:	b7f1                	j	120b6 <_vfprintf_r+0xc8c>
   120ec:	0014f593          	andi	a1,s1,1
   120f0:	800592e3          	bnez	a1,118f4 <_vfprintf_r+0x4ca>
   120f4:	00c33423          	sd	a2,8(t1)
   120f8:	f26a                	sd	s10,288(sp)
   120fa:	11712c23          	sw	s7,280(sp)
   120fe:	469d                	li	a3,7
   12100:	8576dde3          	bge	a3,s7,1195a <_vfprintf_r+0x530>
   12104:	0a10                	addi	a2,sp,272
   12106:	85ca                	mv	a1,s2
   12108:	8552                	mv	a0,s4
   1210a:	33d060ef          	jal	ra,18c46 <__sprint_r>
   1210e:	d4051ee3          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12112:	7d12                	ld	s10,288(sp)
   12114:	11812b83          	lw	s7,280(sp)
   12118:	8c5a                	mv	s8,s6
   1211a:	841ff06f          	j	1195a <_vfprintf_r+0x530>
   1211e:	82d05ee3          	blez	a3,1195a <_vfprintf_r+0x530>
   12122:	68f5                	lui	a7,0x1d
   12124:	4641                	li	a2,16
   12126:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   1212a:	4841                	li	a6,16
   1212c:	4c9d                	li	s9,7
   1212e:	00d64663          	blt	a2,a3,1213a <_vfprintf_r+0xd10>
   12132:	a159                	j	125b8 <_vfprintf_r+0x118e>
   12134:	36c1                	addiw	a3,a3,-16
   12136:	48d85163          	bge	a6,a3,125b8 <_vfprintf_r+0x118e>
   1213a:	2b85                	addiw	s7,s7,1
   1213c:	0d41                	addi	s10,s10,16
   1213e:	01bc3023          	sd	s11,0(s8)
   12142:	010c3423          	sd	a6,8(s8)
   12146:	f26a                	sd	s10,288(sp)
   12148:	11712c23          	sw	s7,280(sp)
   1214c:	0c41                	addi	s8,s8,16
   1214e:	ff7cd3e3          	bge	s9,s7,12134 <_vfprintf_r+0xd0a>
   12152:	0a10                	addi	a2,sp,272
   12154:	85ca                	mv	a1,s2
   12156:	8552                	mv	a0,s4
   12158:	f836                	sd	a3,48(sp)
   1215a:	2ed060ef          	jal	ra,18c46 <__sprint_r>
   1215e:	d00516e3          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12162:	7d12                	ld	s10,288(sp)
   12164:	11812b83          	lw	s7,280(sp)
   12168:	76c2                	ld	a3,48(sp)
   1216a:	8c5a                	mv	s8,s6
   1216c:	4841                	li	a6,16
   1216e:	b7d9                	j	12134 <_vfprintf_r+0xd0a>
   12170:	010df793          	andi	a5,s11,16
   12174:	e3b9                	bnez	a5,121ba <_vfprintf_r+0xd90>
   12176:	66c2                	ld	a3,16(sp)
   12178:	040df793          	andi	a5,s11,64
   1217c:	0006a983          	lw	s3,0(a3)
   12180:	4c078363          	beqz	a5,12646 <_vfprintf_r+0x121c>
   12184:	19c2                	slli	s3,s3,0x30
   12186:	0309d993          	srli	s3,s3,0x30
   1218a:	e83a                	sd	a4,16(sp)
   1218c:	4785                	li	a5,1
   1218e:	e58ff06f          	j	117e6 <_vfprintf_r+0x3bc>
   12192:	0014f713          	andi	a4,s1,1
   12196:	d0070463          	beqz	a4,1169e <_vfprintf_r+0x274>
   1219a:	be15                	j	11cce <_vfprintf_r+0x8a4>
   1219c:	00044e03          	lbu	t3,0(s0)
   121a0:	e83e                	sd	a5,16(sp)
   121a2:	bd8ff06f          	j	1157a <_vfprintf_r+0x150>
   121a6:	67a2                	ld	a5,8(sp)
   121a8:	8ca2                	mv	s9,s0
   121aa:	e31c                	sd	a5,0(a4)
   121ac:	d24ff06f          	j	116d0 <_vfprintf_r+0x2a6>
   121b0:	67c2                	ld	a5,16(sp)
   121b2:	639c                	ld	a5,0(a5)
   121b4:	89be                	mv	s3,a5
   121b6:	dcaff06f          	j	11780 <_vfprintf_r+0x356>
   121ba:	67c2                	ld	a5,16(sp)
   121bc:	e83a                	sd	a4,16(sp)
   121be:	0007b983          	ld	s3,0(a5)
   121c2:	4785                	li	a5,1
   121c4:	e22ff06f          	j	117e6 <_vfprintf_r+0x3bc>
   121c8:	67c2                	ld	a5,16(sp)
   121ca:	0007b983          	ld	s3,0(a5)
   121ce:	e0eff06f          	j	117dc <_vfprintf_r+0x3b2>
   121d2:	67c2                	ld	a5,16(sp)
   121d4:	ec1a                	sd	t1,24(sp)
   121d6:	2388                	fld	fa0,0(a5)
   121d8:	07a1                	addi	a5,a5,8
   121da:	e83e                	sd	a5,16(sp)
   121dc:	1700a0ef          	jal	ra,1c34c <__extenddftf2>
   121e0:	6362                	ld	t1,24(sp)
   121e2:	87aa                	mv	a5,a0
   121e4:	e70ff06f          	j	11854 <_vfprintf_r+0x42a>
   121e8:	e83a                	sd	a4,16(sp)
   121ea:	47a5                	li	a5,9
   121ec:	8da6                	mv	s11,s1
   121ee:	c937fde3          	bgeu	a5,s3,11e88 <_vfprintf_r+0xa5e>
   121f2:	18c10b93          	addi	s7,sp,396
   121f6:	400df713          	andi	a4,s11,1024
   121fa:	f002                	sd	zero,32(sp)
   121fc:	865e                	mv	a2,s7
   121fe:	44a9                	li	s1,10
   12200:	46a5                	li	a3,9
   12202:	0ff00893          	li	a7,255
   12206:	a039                	j	12214 <_vfprintf_r+0xdea>
   12208:	0299d7b3          	divu	a5,s3,s1
   1220c:	a736f4e3          	bgeu	a3,s3,11c74 <_vfprintf_r+0x84a>
   12210:	89be                	mv	s3,a5
   12212:	8666                	mv	a2,s9
   12214:	7582                	ld	a1,32(sp)
   12216:	fff60c93          	addi	s9,a2,-1
   1221a:	2585                	addiw	a1,a1,1
   1221c:	f02e                	sd	a1,32(sp)
   1221e:	0299f7b3          	remu	a5,s3,s1
   12222:	0307879b          	addiw	a5,a5,48
   12226:	fef60fa3          	sb	a5,-1(a2)
   1222a:	df79                	beqz	a4,12208 <_vfprintf_r+0xdde>
   1222c:	7786                	ld	a5,96(sp)
   1222e:	0007c783          	lbu	a5,0(a5)
   12232:	fcf59be3          	bne	a1,a5,12208 <_vfprintf_r+0xdde>
   12236:	fd1789e3          	beq	a5,a7,12208 <_vfprintf_r+0xdde>
   1223a:	a336fde3          	bgeu	a3,s3,11c74 <_vfprintf_r+0x84a>
   1223e:	678a                	ld	a5,128(sp)
   12240:	65aa                	ld	a1,136(sp)
   12242:	f83a                	sd	a4,48(sp)
   12244:	40fc8cb3          	sub	s9,s9,a5
   12248:	863e                	mv	a2,a5
   1224a:	8566                	mv	a0,s9
   1224c:	ec1a                	sd	t1,24(sp)
   1224e:	697040ef          	jal	ra,170e4 <strncpy>
   12252:	7706                	ld	a4,96(sp)
   12254:	0299d7b3          	divu	a5,s3,s1
   12258:	6362                	ld	t1,24(sp)
   1225a:	00174603          	lbu	a2,1(a4)
   1225e:	f002                	sd	zero,32(sp)
   12260:	46a5                	li	a3,9
   12262:	00c03633          	snez	a2,a2
   12266:	9732                	add	a4,a4,a2
   12268:	f0ba                	sd	a4,96(sp)
   1226a:	0ff00893          	li	a7,255
   1226e:	7742                	ld	a4,48(sp)
   12270:	b745                	j	12210 <_vfprintf_r+0xde6>
   12272:	00068b9b          	sext.w	s7,a3
   12276:	d77042e3          	bgtz	s7,11fda <_vfprintf_r+0xbb0>
   1227a:	b341                	j	11ffa <_vfprintf_r+0xbd0>
   1227c:	8da6                	mv	s11,s1
   1227e:	ba21                	j	11b96 <_vfprintf_r+0x76c>
   12280:	67f1                	lui	a5,0x1c
   12282:	72878793          	addi	a5,a5,1832 # 1c728 <__clzdi2+0xf8>
   12286:	f43e                	sd	a5,40(sp)
   12288:	66c2                	ld	a3,16(sp)
   1228a:	0204f793          	andi	a5,s1,32
   1228e:	00868713          	addi	a4,a3,8
   12292:	20078363          	beqz	a5,12498 <_vfprintf_r+0x106e>
   12296:	0006b983          	ld	s3,0(a3)
   1229a:	0014f793          	andi	a5,s1,1
   1229e:	cf81                	beqz	a5,122b6 <_vfprintf_r+0xe8c>
   122a0:	00098b63          	beqz	s3,122b6 <_vfprintf_r+0xe8c>
   122a4:	0024e493          	ori	s1,s1,2
   122a8:	03000793          	li	a5,48
   122ac:	0ef10023          	sb	a5,224(sp)
   122b0:	0fa100a3          	sb	s10,225(sp)
   122b4:	2481                	sext.w	s1,s1
   122b6:	bff4fd93          	andi	s11,s1,-1025
   122ba:	2d81                	sext.w	s11,s11
   122bc:	e83a                	sd	a4,16(sp)
   122be:	4789                	li	a5,2
   122c0:	d26ff06f          	j	117e6 <_vfprintf_r+0x3bc>
   122c4:	2004e493          	ori	s1,s1,512
   122c8:	00144e03          	lbu	t3,1(s0)
   122cc:	2481                	sext.w	s1,s1
   122ce:	0405                	addi	s0,s0,1
   122d0:	aaaff06f          	j	1157a <_vfprintf_r+0x150>
   122d4:	67f1                	lui	a5,0x1c
   122d6:	74078793          	addi	a5,a5,1856 # 1c740 <__clzdi2+0x110>
   122da:	f43e                	sd	a5,40(sp)
   122dc:	b775                	j	12288 <_vfprintf_r+0xe5e>
   122de:	0204e493          	ori	s1,s1,32
   122e2:	00144e03          	lbu	t3,1(s0)
   122e6:	2481                	sext.w	s1,s1
   122e8:	0405                	addi	s0,s0,1
   122ea:	a90ff06f          	j	1157a <_vfprintf_r+0x150>
   122ee:	0a10                	addi	a2,sp,272
   122f0:	85ca                	mv	a1,s2
   122f2:	8552                	mv	a0,s4
   122f4:	153060ef          	jal	ra,18c46 <__sprint_r>
   122f8:	b60519e3          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   122fc:	7792                	ld	a5,288(sp)
   122fe:	835a                	mv	t1,s6
   12300:	bad5                	j	11cf4 <_vfprintf_r+0x8ca>
   12302:	4799                	li	a5,6
   12304:	000c0b9b          	sext.w	s7,s8
   12308:	5b87ec63          	bltu	a5,s8,128c0 <_vfprintf_r+0x1496>
   1230c:	6871                	lui	a6,0x1c
   1230e:	89de                	mv	s3,s7
   12310:	e86e                	sd	s11,16(sp)
   12312:	75880c93          	addi	s9,a6,1880 # 1c758 <__clzdi2+0x128>
   12316:	ad0ff06f          	j	115e6 <_vfprintf_r+0x1bc>
   1231a:	68f5                	lui	a7,0x1d
   1231c:	46c1                	li	a3,16
   1231e:	11812703          	lw	a4,280(sp)
   12322:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   12326:	4d41                	li	s10,16
   12328:	4c1d                	li	s8,7
   1232a:	0176c663          	blt	a3,s7,12336 <_vfprintf_r+0xf0c>
   1232e:	aee1                	j	12706 <_vfprintf_r+0x12dc>
   12330:	3bc1                	addiw	s7,s7,-16
   12332:	3d7d5a63          	bge	s10,s7,12706 <_vfprintf_r+0x12dc>
   12336:	2705                	addiw	a4,a4,1
   12338:	07c1                	addi	a5,a5,16
   1233a:	01b33023          	sd	s11,0(t1)
   1233e:	01a33423          	sd	s10,8(t1)
   12342:	f23e                	sd	a5,288(sp)
   12344:	10e12c23          	sw	a4,280(sp)
   12348:	0341                	addi	t1,t1,16
   1234a:	feec53e3          	bge	s8,a4,12330 <_vfprintf_r+0xf06>
   1234e:	0a10                	addi	a2,sp,272
   12350:	85ca                	mv	a1,s2
   12352:	8552                	mv	a0,s4
   12354:	0f3060ef          	jal	ra,18c46 <__sprint_r>
   12358:	b00519e3          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   1235c:	7792                	ld	a5,288(sp)
   1235e:	11812703          	lw	a4,280(sp)
   12362:	835a                	mv	t1,s6
   12364:	b7f1                	j	12330 <_vfprintf_r+0xf06>
   12366:	07800713          	li	a4,120
   1236a:	0024e793          	ori	a5,s1,2
   1236e:	03000693          	li	a3,48
   12372:	2781                	sext.w	a5,a5
   12374:	0ee100a3          	sb	a4,225(sp)
   12378:	0ed10023          	sb	a3,224(sp)
   1237c:	06300713          	li	a4,99
   12380:	f53e                	sd	a5,168(sp)
   12382:	ec02                	sd	zero,24(sp)
   12384:	12810c93          	addi	s9,sp,296
   12388:	6b874a63          	blt	a4,s8,12a3c <_vfprintf_r+0x1612>
   1238c:	69b2                	ld	s3,264(sp)
   1238e:	fdfd7793          	andi	a5,s10,-33
   12392:	1024e493          	ori	s1,s1,258
   12396:	ecbe                	sd	a5,88(sp)
   12398:	e582                	sd	zero,200(sp)
   1239a:	6b92                	ld	s7,256(sp)
   1239c:	2481                	sext.w	s1,s1
   1239e:	6609ca63          	bltz	s3,12a12 <_vfprintf_r+0x15e8>
   123a2:	06100793          	li	a5,97
   123a6:	1efd0ce3          	beq	s10,a5,12d9e <_vfprintf_r+0x1974>
   123aa:	fbfd079b          	addiw	a5,s10,-65
   123ae:	0007869b          	sext.w	a3,a5
   123b2:	02500713          	li	a4,37
   123b6:	00d76c63          	bltu	a4,a3,123ce <_vfprintf_r+0xfa4>
   123ba:	02079713          	slli	a4,a5,0x20
   123be:	01e75793          	srli	a5,a4,0x1e
   123c2:	6775                	lui	a4,0x1d
   123c4:	8d070713          	addi	a4,a4,-1840 # 1c8d0 <__clzdi2+0x2a0>
   123c8:	97ba                	add	a5,a5,a4
   123ca:	439c                	lw	a5,0(a5)
   123cc:	8782                	jr	a5
   123ce:	8de2                	mv	s11,s8
   123d0:	4689                	li	a3,2
   123d2:	11bc                	addi	a5,sp,232
   123d4:	876e                	mv	a4,s11
   123d6:	0f810893          	addi	a7,sp,248
   123da:	0ec10813          	addi	a6,sp,236
   123de:	85de                	mv	a1,s7
   123e0:	864e                	mv	a2,s3
   123e2:	8552                	mv	a0,s4
   123e4:	f01a                	sd	t1,32(sp)
   123e6:	107020ef          	jal	ra,14cec <_ldtoa_r>
   123ea:	6766                	ld	a4,88(sp)
   123ec:	04700793          	li	a5,71
   123f0:	7302                	ld	t1,32(sp)
   123f2:	8caa                	mv	s9,a0
   123f4:	7cf70463          	beq	a4,a5,12bbc <_vfprintf_r+0x1792>
   123f8:	04600793          	li	a5,70
   123fc:	01b508b3          	add	a7,a0,s11
   12400:	00f71a63          	bne	a4,a5,12414 <_vfprintf_r+0xfea>
   12404:	00054703          	lbu	a4,0(a0)
   12408:	03000793          	li	a5,48
   1240c:	64f70463          	beq	a4,a5,12a54 <_vfprintf_r+0x162a>
   12410:	572e                	lw	a4,232(sp)
   12412:	98ba                	add	a7,a7,a4
   12414:	4681                	li	a3,0
   12416:	4601                	li	a2,0
   12418:	855e                	mv	a0,s7
   1241a:	85ce                	mv	a1,s3
   1241c:	f846                	sd	a7,48(sp)
   1241e:	f01a                	sd	t1,32(sp)
   12420:	5a7080ef          	jal	ra,1b1c6 <__eqtf2>
   12424:	78c2                	ld	a7,48(sp)
   12426:	7302                	ld	t1,32(sp)
   12428:	86c6                	mv	a3,a7
   1242a:	e929                	bnez	a0,1247c <_vfprintf_r+0x1052>
   1242c:	419687bb          	subw	a5,a3,s9
   12430:	f03e                	sd	a5,32(sp)
   12432:	572e                	lw	a4,232(sp)
   12434:	04700793          	li	a5,71
   12438:	e4ba                	sd	a4,72(sp)
   1243a:	6766                	ld	a4,88(sp)
   1243c:	24f70963          	beq	a4,a5,1268e <_vfprintf_r+0x1264>
   12440:	6766                	ld	a4,88(sp)
   12442:	04600793          	li	a5,70
   12446:	4af71163          	bne	a4,a5,128e8 <_vfprintf_r+0x14be>
   1244a:	77aa                	ld	a5,168(sp)
   1244c:	6726                	ld	a4,72(sp)
   1244e:	8b85                	andi	a5,a5,1
   12450:	00fc67b3          	or	a5,s8,a5
   12454:	20e055e3          	blez	a4,12e5e <_vfprintf_r+0x1a34>
   12458:	1e079ae3          	bnez	a5,12e4c <_vfprintf_r+0x1a22>
   1245c:	6ba6                	ld	s7,72(sp)
   1245e:	06600d13          	li	s10,102
   12462:	77aa                	ld	a5,168(sp)
   12464:	4007f793          	andi	a5,a5,1024
   12468:	16079be3          	bnez	a5,12dde <_vfprintf_r+0x19b4>
   1246c:	fffbc993          	not	s3,s7
   12470:	43f9d993          	srai	s3,s3,0x3f
   12474:	013bf9b3          	and	s3,s7,s3
   12478:	2981                	sext.w	s3,s3
   1247a:	aca1                	j	126d2 <_vfprintf_r+0x12a8>
   1247c:	76ee                	ld	a3,248(sp)
   1247e:	fb16f7e3          	bgeu	a3,a7,1242c <_vfprintf_r+0x1002>
   12482:	03000713          	li	a4,48
   12486:	00168793          	addi	a5,a3,1
   1248a:	fdbe                	sd	a5,248(sp)
   1248c:	00e68023          	sb	a4,0(a3)
   12490:	76ee                	ld	a3,248(sp)
   12492:	ff16eae3          	bltu	a3,a7,12486 <_vfprintf_r+0x105c>
   12496:	bf59                	j	1242c <_vfprintf_r+0x1002>
   12498:	0104f793          	andi	a5,s1,16
   1249c:	c3c5                	beqz	a5,1253c <_vfprintf_r+0x1112>
   1249e:	67c2                	ld	a5,16(sp)
   124a0:	0007b983          	ld	s3,0(a5)
   124a4:	bbdd                	j	1229a <_vfprintf_r+0xe70>
   124a6:	0a10                	addi	a2,sp,272
   124a8:	85ca                	mv	a1,s2
   124aa:	8552                	mv	a0,s4
   124ac:	79a060ef          	jal	ra,18c46 <__sprint_r>
   124b0:	9a051de3          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   124b4:	7d12                	ld	s10,288(sp)
   124b6:	11812b83          	lw	s7,280(sp)
   124ba:	8c5a                	mv	s8,s6
   124bc:	c4aff06f          	j	11906 <_vfprintf_r+0x4dc>
   124c0:	0a10                	addi	a2,sp,272
   124c2:	85ca                	mv	a1,s2
   124c4:	8552                	mv	a0,s4
   124c6:	780060ef          	jal	ra,18c46 <__sprint_r>
   124ca:	9a0510e3          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   124ce:	7d12                	ld	s10,288(sp)
   124d0:	11812b83          	lw	s7,280(sp)
   124d4:	8c5a                	mv	s8,s6
   124d6:	c4eff06f          	j	11924 <_vfprintf_r+0x4fa>
   124da:	11812703          	lw	a4,280(sp)
   124de:	66f1                	lui	a3,0x1c
   124e0:	76068693          	addi	a3,a3,1888 # 1c760 <__clzdi2+0x130>
   124e4:	2705                	addiw	a4,a4,1
   124e6:	00d33023          	sd	a3,0(t1)
   124ea:	0785                	addi	a5,a5,1
   124ec:	4685                	li	a3,1
   124ee:	00d33423          	sd	a3,8(t1)
   124f2:	10e12c23          	sw	a4,280(sp)
   124f6:	0007069b          	sext.w	a3,a4
   124fa:	f23e                	sd	a5,288(sp)
   124fc:	471d                	li	a4,7
   124fe:	0341                	addi	t1,t1,16
   12500:	38d74663          	blt	a4,a3,1288c <_vfprintf_r+0x1462>
   12504:	0e061a63          	bnez	a2,125f8 <_vfprintf_r+0x11ce>
   12508:	7682                	ld	a3,32(sp)
   1250a:	0014f713          	andi	a4,s1,1
   1250e:	8f55                	or	a4,a4,a3
   12510:	98070763          	beqz	a4,1169e <_vfprintf_r+0x274>
   12514:	76a6                	ld	a3,104(sp)
   12516:	11812703          	lw	a4,280(sp)
   1251a:	7646                	ld	a2,112(sp)
   1251c:	97b6                	add	a5,a5,a3
   1251e:	2705                	addiw	a4,a4,1
   12520:	00d33423          	sd	a3,8(t1)
   12524:	10e12c23          	sw	a4,280(sp)
   12528:	0007069b          	sext.w	a3,a4
   1252c:	00c33023          	sd	a2,0(t1)
   12530:	f23e                	sd	a5,288(sp)
   12532:	471d                	li	a4,7
   12534:	4ed74763          	blt	a4,a3,12a22 <_vfprintf_r+0x15f8>
   12538:	0341                	addi	t1,t1,16
   1253a:	a0e5                	j	12622 <_vfprintf_r+0x11f8>
   1253c:	66c2                	ld	a3,16(sp)
   1253e:	0404f793          	andi	a5,s1,64
   12542:	0006a983          	lw	s3,0(a3)
   12546:	10078a63          	beqz	a5,1265a <_vfprintf_r+0x1230>
   1254a:	19c2                	slli	s3,s3,0x30
   1254c:	0309d993          	srli	s3,s3,0x30
   12550:	b3a9                	j	1229a <_vfprintf_r+0xe70>
   12552:	0a10                	addi	a2,sp,272
   12554:	85ca                	mv	a1,s2
   12556:	8552                	mv	a0,s4
   12558:	6ee060ef          	jal	ra,18c46 <__sprint_r>
   1255c:	900517e3          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12560:	7792                	ld	a5,288(sp)
   12562:	835a                	mv	t1,s6
   12564:	f62ff06f          	j	11cc6 <_vfprintf_r+0x89c>
   12568:	0017069b          	addiw	a3,a4,1
   1256c:	8736                	mv	a4,a3
   1256e:	97de                	add	a5,a5,s7
   12570:	01b33023          	sd	s11,0(t1)
   12574:	918ff06f          	j	1168c <_vfprintf_r+0x262>
   12578:	6512                	ld	a0,256(sp)
   1257a:	65b2                	ld	a1,264(sp)
   1257c:	4601                	li	a2,0
   1257e:	4681                	li	a3,0
   12580:	58d080ef          	jal	ra,1b30c <__letf2>
   12584:	6362                	ld	t1,24(sp)
   12586:	66054263          	bltz	a0,12bea <_vfprintf_r+0x17c0>
   1258a:	0df14783          	lbu	a5,223(sp)
   1258e:	04700713          	li	a4,71
   12592:	31a75863          	bge	a4,s10,128a2 <_vfprintf_r+0x1478>
   12596:	6871                	lui	a6,0x1c
   12598:	71080c93          	addi	s9,a6,1808 # 1c710 <__clzdi2+0xe0>
   1259c:	f7f4f493          	andi	s1,s1,-129
   125a0:	ec02                	sd	zero,24(sp)
   125a2:	e882                	sd	zero,80(sp)
   125a4:	ec82                	sd	zero,88(sp)
   125a6:	e482                	sd	zero,72(sp)
   125a8:	2481                	sext.w	s1,s1
   125aa:	498d                	li	s3,3
   125ac:	4b8d                	li	s7,3
   125ae:	4c01                	li	s8,0
   125b0:	a0079863          	bnez	a5,117c0 <_vfprintf_r+0x396>
   125b4:	83cff06f          	j	115f0 <_vfprintf_r+0x1c6>
   125b8:	2b85                	addiw	s7,s7,1
   125ba:	865e                	mv	a2,s7
   125bc:	9d36                	add	s10,s10,a3
   125be:	01bc3023          	sd	s11,0(s8)
   125c2:	b86ff06f          	j	11948 <_vfprintf_r+0x51e>
   125c6:	8566                	mv	a0,s9
   125c8:	f81a                	sd	t1,48(sp)
   125ca:	dd1fe0ef          	jal	ra,1139a <strlen>
   125ce:	00050b9b          	sext.w	s7,a0
   125d2:	0df14783          	lbu	a5,223(sp)
   125d6:	fffbc993          	not	s3,s7
   125da:	43f9d993          	srai	s3,s3,0x3f
   125de:	e86e                	sd	s11,16(sp)
   125e0:	ec02                	sd	zero,24(sp)
   125e2:	e882                	sd	zero,80(sp)
   125e4:	ec82                	sd	zero,88(sp)
   125e6:	e482                	sd	zero,72(sp)
   125e8:	7342                	ld	t1,48(sp)
   125ea:	0179f9b3          	and	s3,s3,s7
   125ee:	4c01                	li	s8,0
   125f0:	9c079863          	bnez	a5,117c0 <_vfprintf_r+0x396>
   125f4:	ffdfe06f          	j	115f0 <_vfprintf_r+0x1c6>
   125f8:	76a6                	ld	a3,104(sp)
   125fa:	11812703          	lw	a4,280(sp)
   125fe:	75c6                	ld	a1,112(sp)
   12600:	97b6                	add	a5,a5,a3
   12602:	2705                	addiw	a4,a4,1
   12604:	00d33423          	sd	a3,8(t1)
   12608:	00b33023          	sd	a1,0(t1)
   1260c:	0007069b          	sext.w	a3,a4
   12610:	10e12c23          	sw	a4,280(sp)
   12614:	f23e                	sd	a5,288(sp)
   12616:	471d                	li	a4,7
   12618:	0341                	addi	t1,t1,16
   1261a:	40d74463          	blt	a4,a3,12a22 <_vfprintf_r+0x15f8>
   1261e:	62064863          	bltz	a2,12c4e <_vfprintf_r+0x1824>
   12622:	7702                	ld	a4,32(sp)
   12624:	0016861b          	addiw	a2,a3,1
   12628:	01933023          	sd	s9,0(t1)
   1262c:	97ba                	add	a5,a5,a4
   1262e:	00e33423          	sd	a4,8(t1)
   12632:	f23e                	sd	a5,288(sp)
   12634:	10c12c23          	sw	a2,280(sp)
   12638:	471d                	li	a4,7
   1263a:	00c74463          	blt	a4,a2,12642 <_vfprintf_r+0x1218>
   1263e:	85eff06f          	j	1169c <_vfprintf_r+0x272>
   12642:	b3cff06f          	j	1197e <_vfprintf_r+0x554>
   12646:	200df793          	andi	a5,s11,512
   1264a:	38078f63          	beqz	a5,129e8 <_vfprintf_r+0x15be>
   1264e:	0ff9f993          	zext.b	s3,s3
   12652:	e83a                	sd	a4,16(sp)
   12654:	4785                	li	a5,1
   12656:	990ff06f          	j	117e6 <_vfprintf_r+0x3bc>
   1265a:	2004f793          	andi	a5,s1,512
   1265e:	38078163          	beqz	a5,129e0 <_vfprintf_r+0x15b6>
   12662:	0ff9f993          	zext.b	s3,s3
   12666:	b915                	j	1229a <_vfprintf_r+0xe70>
   12668:	2004f793          	andi	a5,s1,512
   1266c:	36078563          	beqz	a5,129d6 <_vfprintf_r+0x15ac>
   12670:	0ff9f993          	zext.b	s3,s3
   12674:	968ff06f          	j	117dc <_vfprintf_r+0x3b2>
   12678:	2004f793          	andi	a5,s1,512
   1267c:	34078a63          	beqz	a5,129d0 <_vfprintf_r+0x15a6>
   12680:	0189999b          	slliw	s3,s3,0x18
   12684:	4189d99b          	sraiw	s3,s3,0x18
   12688:	87ce                	mv	a5,s3
   1268a:	8f6ff06f          	j	11780 <_vfprintf_r+0x356>
   1268e:	6726                	ld	a4,72(sp)
   12690:	57f5                	li	a5,-3
   12692:	24f74763          	blt	a4,a5,128e0 <_vfprintf_r+0x14b6>
   12696:	24ec4563          	blt	s8,a4,128e0 <_vfprintf_r+0x14b6>
   1269a:	7782                	ld	a5,32(sp)
   1269c:	6726                	ld	a4,72(sp)
   1269e:	60f74263          	blt	a4,a5,12ca2 <_vfprintf_r+0x1878>
   126a2:	77aa                	ld	a5,168(sp)
   126a4:	6726                	ld	a4,72(sp)
   126a6:	8b85                	andi	a5,a5,1
   126a8:	8bba                	mv	s7,a4
   126aa:	c781                	beqz	a5,126b2 <_vfprintf_r+0x1288>
   126ac:	77a6                	ld	a5,104(sp)
   126ae:	00e78bbb          	addw	s7,a5,a4
   126b2:	77aa                	ld	a5,168(sp)
   126b4:	4007f793          	andi	a5,a5,1024
   126b8:	c781                	beqz	a5,126c0 <_vfprintf_r+0x1296>
   126ba:	67a6                	ld	a5,72(sp)
   126bc:	70f04f63          	bgtz	a5,12dda <_vfprintf_r+0x19b0>
   126c0:	fffbc993          	not	s3,s7
   126c4:	43f9d993          	srai	s3,s3,0x3f
   126c8:	013bf9b3          	and	s3,s7,s3
   126cc:	2981                	sext.w	s3,s3
   126ce:	06700d13          	li	s10,103
   126d2:	e882                	sd	zero,80(sp)
   126d4:	ec82                	sd	zero,88(sp)
   126d6:	67ae                	ld	a5,200(sp)
   126d8:	4c078a63          	beqz	a5,12bac <_vfprintf_r+0x1782>
   126dc:	02d00793          	li	a5,45
   126e0:	0cf10fa3          	sb	a5,223(sp)
   126e4:	4c01                	li	s8,0
   126e6:	2985                	addiw	s3,s3,1
   126e8:	f09fe06f          	j	115f0 <_vfprintf_r+0x1c6>
   126ec:	67b2                	ld	a5,264(sp)
   126ee:	3007cb63          	bltz	a5,12a04 <_vfprintf_r+0x15da>
   126f2:	0df14783          	lbu	a5,223(sp)
   126f6:	04700713          	li	a4,71
   126fa:	55a75663          	bge	a4,s10,12c46 <_vfprintf_r+0x181c>
   126fe:	6871                	lui	a6,0x1c
   12700:	72080c93          	addi	s9,a6,1824 # 1c720 <__clzdi2+0xf0>
   12704:	bd61                	j	1259c <_vfprintf_r+0x1172>
   12706:	0017069b          	addiw	a3,a4,1
   1270a:	97de                	add	a5,a5,s7
   1270c:	01b33023          	sd	s11,0(t1)
   12710:	01733423          	sd	s7,8(t1)
   12714:	f23e                	sd	a5,288(sp)
   12716:	10d12c23          	sw	a3,280(sp)
   1271a:	471d                	li	a4,7
   1271c:	0341                	addi	t1,t1,16
   1271e:	8ed758e3          	bge	a4,a3,1200e <_vfprintf_r+0xbe4>
   12722:	0a10                	addi	a2,sp,272
   12724:	85ca                	mv	a1,s2
   12726:	8552                	mv	a0,s4
   12728:	51e060ef          	jal	ra,18c46 <__sprint_r>
   1272c:	f2051f63          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12730:	7792                	ld	a5,288(sp)
   12732:	835a                	mv	t1,s6
   12734:	b8e9                	j	1200e <_vfprintf_r+0xbe4>
   12736:	7702                	ld	a4,32(sp)
   12738:	6ef5                	lui	t4,0x1d
   1273a:	4b9d                	li	s7,7
   1273c:	9766                	add	a4,a4,s9
   1273e:	fc3a                	sd	a4,56(sp)
   12740:	6766                	ld	a4,88(sp)
   12742:	4dc1                	li	s11,16
   12744:	9b0e8d13          	addi	s10,t4,-1616 # 1c9b0 <zeroes.0>
   12748:	cb49                	beqz	a4,127da <_vfprintf_r+0x13b0>
   1274a:	6746                	ld	a4,80(sp)
   1274c:	eb51                	bnez	a4,127e0 <_vfprintf_r+0x13b6>
   1274e:	7706                	ld	a4,96(sp)
   12750:	177d                	addi	a4,a4,-1
   12752:	f0ba                	sd	a4,96(sp)
   12754:	6766                	ld	a4,88(sp)
   12756:	377d                	addiw	a4,a4,-1
   12758:	ecba                	sd	a4,88(sp)
   1275a:	668a                	ld	a3,128(sp)
   1275c:	11812703          	lw	a4,280(sp)
   12760:	662a                	ld	a2,136(sp)
   12762:	97b6                	add	a5,a5,a3
   12764:	2705                	addiw	a4,a4,1
   12766:	00d33423          	sd	a3,8(t1)
   1276a:	00c33023          	sd	a2,0(t1)
   1276e:	f23e                	sd	a5,288(sp)
   12770:	0007069b          	sext.w	a3,a4
   12774:	10e12c23          	sw	a4,280(sp)
   12778:	0341                	addi	t1,t1,16
   1277a:	0cdbce63          	blt	s7,a3,12856 <_vfprintf_r+0x142c>
   1277e:	7706                	ld	a4,96(sp)
   12780:	00074603          	lbu	a2,0(a4)
   12784:	7762                	ld	a4,56(sp)
   12786:	418706b3          	sub	a3,a4,s8
   1278a:	0006859b          	sext.w	a1,a3
   1278e:	0006071b          	sext.w	a4,a2
   12792:	00b65363          	bge	a2,a1,12798 <_vfprintf_r+0x136e>
   12796:	86ba                	mv	a3,a4
   12798:	2681                	sext.w	a3,a3
   1279a:	02d05663          	blez	a3,127c6 <_vfprintf_r+0x139c>
   1279e:	11812703          	lw	a4,280(sp)
   127a2:	97b6                	add	a5,a5,a3
   127a4:	01833023          	sd	s8,0(t1)
   127a8:	0017061b          	addiw	a2,a4,1
   127ac:	00d33423          	sd	a3,8(t1)
   127b0:	f23e                	sd	a5,288(sp)
   127b2:	10c12c23          	sw	a2,280(sp)
   127b6:	0acbca63          	blt	s7,a2,1286a <_vfprintf_r+0x1440>
   127ba:	7706                	ld	a4,96(sp)
   127bc:	0341                	addi	t1,t1,16
   127be:	00074603          	lbu	a2,0(a4)
   127c2:	0006071b          	sext.w	a4,a2
   127c6:	fff6c593          	not	a1,a3
   127ca:	95fd                	srai	a1,a1,0x3f
   127cc:	8eed                	and	a3,a3,a1
   127ce:	9f15                	subw	a4,a4,a3
   127d0:	00e04c63          	bgtz	a4,127e8 <_vfprintf_r+0x13be>
   127d4:	9c32                	add	s8,s8,a2
   127d6:	6766                	ld	a4,88(sp)
   127d8:	fb2d                	bnez	a4,1274a <_vfprintf_r+0x1320>
   127da:	6746                	ld	a4,80(sp)
   127dc:	3c070163          	beqz	a4,12b9e <_vfprintf_r+0x1774>
   127e0:	6746                	ld	a4,80(sp)
   127e2:	377d                	addiw	a4,a4,-1
   127e4:	e8ba                	sd	a4,80(sp)
   127e6:	bf95                	j	1275a <_vfprintf_r+0x1330>
   127e8:	11812683          	lw	a3,280(sp)
   127ec:	00edc663          	blt	s11,a4,127f8 <_vfprintf_r+0x13ce>
   127f0:	a081                	j	12830 <_vfprintf_r+0x1406>
   127f2:	3741                	addiw	a4,a4,-16
   127f4:	02edde63          	bge	s11,a4,12830 <_vfprintf_r+0x1406>
   127f8:	2685                	addiw	a3,a3,1
   127fa:	07c1                	addi	a5,a5,16
   127fc:	01a33023          	sd	s10,0(t1)
   12800:	01b33423          	sd	s11,8(t1)
   12804:	f23e                	sd	a5,288(sp)
   12806:	10d12c23          	sw	a3,280(sp)
   1280a:	0341                	addi	t1,t1,16
   1280c:	fedbd3e3          	bge	s7,a3,127f2 <_vfprintf_r+0x13c8>
   12810:	0a10                	addi	a2,sp,272
   12812:	85ca                	mv	a1,s2
   12814:	8552                	mv	a0,s4
   12816:	f83a                	sd	a4,48(sp)
   12818:	42e060ef          	jal	ra,18c46 <__sprint_r>
   1281c:	e4051763          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12820:	7742                	ld	a4,48(sp)
   12822:	7792                	ld	a5,288(sp)
   12824:	11812683          	lw	a3,280(sp)
   12828:	3741                	addiw	a4,a4,-16
   1282a:	835a                	mv	t1,s6
   1282c:	fcedc6e3          	blt	s11,a4,127f8 <_vfprintf_r+0x13ce>
   12830:	2685                	addiw	a3,a3,1
   12832:	97ba                	add	a5,a5,a4
   12834:	00e33423          	sd	a4,8(t1)
   12838:	01a33023          	sd	s10,0(t1)
   1283c:	f23e                	sd	a5,288(sp)
   1283e:	0006871b          	sext.w	a4,a3
   12842:	10d12c23          	sw	a3,280(sp)
   12846:	38ebc463          	blt	s7,a4,12bce <_vfprintf_r+0x17a4>
   1284a:	7706                	ld	a4,96(sp)
   1284c:	0341                	addi	t1,t1,16
   1284e:	00074603          	lbu	a2,0(a4)
   12852:	9c32                	add	s8,s8,a2
   12854:	b749                	j	127d6 <_vfprintf_r+0x13ac>
   12856:	0a10                	addi	a2,sp,272
   12858:	85ca                	mv	a1,s2
   1285a:	8552                	mv	a0,s4
   1285c:	3ea060ef          	jal	ra,18c46 <__sprint_r>
   12860:	e0051563          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12864:	7792                	ld	a5,288(sp)
   12866:	835a                	mv	t1,s6
   12868:	bf19                	j	1277e <_vfprintf_r+0x1354>
   1286a:	0a10                	addi	a2,sp,272
   1286c:	85ca                	mv	a1,s2
   1286e:	8552                	mv	a0,s4
   12870:	f836                	sd	a3,48(sp)
   12872:	3d4060ef          	jal	ra,18c46 <__sprint_r>
   12876:	de051a63          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   1287a:	7786                	ld	a5,96(sp)
   1287c:	76c2                	ld	a3,48(sp)
   1287e:	835a                	mv	t1,s6
   12880:	0007c603          	lbu	a2,0(a5)
   12884:	7792                	ld	a5,288(sp)
   12886:	0006071b          	sext.w	a4,a2
   1288a:	bf35                	j	127c6 <_vfprintf_r+0x139c>
   1288c:	0a10                	addi	a2,sp,272
   1288e:	85ca                	mv	a1,s2
   12890:	8552                	mv	a0,s4
   12892:	3b4060ef          	jal	ra,18c46 <__sprint_r>
   12896:	dc051a63          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   1289a:	562e                	lw	a2,232(sp)
   1289c:	7792                	ld	a5,288(sp)
   1289e:	835a                	mv	t1,s6
   128a0:	b195                	j	12504 <_vfprintf_r+0x10da>
   128a2:	6871                	lui	a6,0x1c
   128a4:	70880c93          	addi	s9,a6,1800 # 1c708 <__clzdi2+0xd8>
   128a8:	b9d5                	j	1259c <_vfprintf_r+0x1172>
   128aa:	0a10                	addi	a2,sp,272
   128ac:	85ca                	mv	a1,s2
   128ae:	8552                	mv	a0,s4
   128b0:	396060ef          	jal	ra,18c46 <__sprint_r>
   128b4:	da051b63          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   128b8:	7792                	ld	a5,288(sp)
   128ba:	835a                	mv	t1,s6
   128bc:	f3eff06f          	j	11ffa <_vfprintf_r+0xbd0>
   128c0:	4b99                	li	s7,6
   128c2:	b4a9                	j	1230c <_vfprintf_r+0xee2>
   128c4:	7682                	ld	a3,32(sp)
   128c6:	00dc8bb3          	add	s7,s9,a3
   128ca:	418b8bb3          	sub	s7,s7,s8
   128ce:	9e99                	subw	a3,a3,a4
   128d0:	000b861b          	sext.w	a2,s7
   128d4:	00c6d363          	bge	a3,a2,128da <_vfprintf_r+0x14b0>
   128d8:	8bb6                	mv	s7,a3
   128da:	2b81                	sext.w	s7,s7
   128dc:	fb2ff06f          	j	1208e <_vfprintf_r+0xc64>
   128e0:	3d79                	addiw	s10,s10,-2
   128e2:	fdfd7793          	andi	a5,s10,-33
   128e6:	ecbe                	sd	a5,88(sp)
   128e8:	67a6                	ld	a5,72(sp)
   128ea:	65e6                	ld	a1,88(sp)
   128ec:	04100713          	li	a4,65
   128f0:	fff7869b          	addiw	a3,a5,-1
   128f4:	d5b6                	sw	a3,232(sp)
   128f6:	0ffd7793          	zext.b	a5,s10
   128fa:	4601                	li	a2,0
   128fc:	00e59663          	bne	a1,a4,12908 <_vfprintf_r+0x14de>
   12900:	27bd                	addiw	a5,a5,15
   12902:	0ff7f793          	zext.b	a5,a5
   12906:	4605                	li	a2,1
   12908:	0ef10823          	sb	a5,240(sp)
   1290c:	02b00793          	li	a5,43
   12910:	0006d763          	bgez	a3,1291e <_vfprintf_r+0x14f4>
   12914:	67a6                	ld	a5,72(sp)
   12916:	4685                	li	a3,1
   12918:	9e9d                	subw	a3,a3,a5
   1291a:	02d00793          	li	a5,45
   1291e:	0ef108a3          	sb	a5,241(sp)
   12922:	47a5                	li	a5,9
   12924:	3cd7dc63          	bge	a5,a3,12cfc <_vfprintf_r+0x18d2>
   12928:	0ff10e93          	addi	t4,sp,255
   1292c:	8676                	mv	a2,t4
   1292e:	45a9                	li	a1,10
   12930:	06300793          	li	a5,99
   12934:	02b6e73b          	remw	a4,a3,a1
   12938:	88b2                	mv	a7,a2
   1293a:	8536                	mv	a0,a3
   1293c:	167d                	addi	a2,a2,-1
   1293e:	0307071b          	addiw	a4,a4,48
   12942:	fee88fa3          	sb	a4,-1(a7)
   12946:	02b6c6bb          	divw	a3,a3,a1
   1294a:	fea7c5e3          	blt	a5,a0,12934 <_vfprintf_r+0x150a>
   1294e:	0306869b          	addiw	a3,a3,48
   12952:	0ff6f693          	zext.b	a3,a3
   12956:	ffe88793          	addi	a5,a7,-2
   1295a:	fed60fa3          	sb	a3,-1(a2)
   1295e:	55d7f763          	bgeu	a5,t4,12eac <_vfprintf_r+0x1a82>
   12962:	0f210713          	addi	a4,sp,242
   12966:	a019                	j	1296c <_vfprintf_r+0x1542>
   12968:	0007c683          	lbu	a3,0(a5)
   1296c:	00d70023          	sb	a3,0(a4)
   12970:	0785                	addi	a5,a5,1
   12972:	0705                	addi	a4,a4,1
   12974:	ffd79ae3          	bne	a5,t4,12968 <_vfprintf_r+0x153e>
   12978:	10110793          	addi	a5,sp,257
   1297c:	0f210713          	addi	a4,sp,242
   12980:	411787b3          	sub	a5,a5,a7
   12984:	97ba                	add	a5,a5,a4
   12986:	1998                	addi	a4,sp,240
   12988:	9f99                	subw	a5,a5,a4
   1298a:	fcbe                	sd	a5,120(sp)
   1298c:	77e6                	ld	a5,120(sp)
   1298e:	7682                	ld	a3,32(sp)
   12990:	4705                	li	a4,1
   12992:	00f68bbb          	addw	s7,a3,a5
   12996:	87de                	mv	a5,s7
   12998:	3ed75063          	bge	a4,a3,12d78 <_vfprintf_r+0x194e>
   1299c:	7726                	ld	a4,104(sp)
   1299e:	00e78bbb          	addw	s7,a5,a4
   129a2:	77aa                	ld	a5,168(sp)
   129a4:	fffbc993          	not	s3,s7
   129a8:	43f9d993          	srai	s3,s3,0x3f
   129ac:	bff7f493          	andi	s1,a5,-1025
   129b0:	2481                	sext.w	s1,s1
   129b2:	013bf9b3          	and	s3,s7,s3
   129b6:	1004e493          	ori	s1,s1,256
   129ba:	2981                	sext.w	s3,s3
   129bc:	e882                	sd	zero,80(sp)
   129be:	ec82                	sd	zero,88(sp)
   129c0:	e482                	sd	zero,72(sp)
   129c2:	bb11                	j	126d6 <_vfprintf_r+0x12ac>
   129c4:	67a2                	ld	a5,8(sp)
   129c6:	8ca2                	mv	s9,s0
   129c8:	00f71023          	sh	a5,0(a4)
   129cc:	d05fe06f          	j	116d0 <_vfprintf_r+0x2a6>
   129d0:	87ce                	mv	a5,s3
   129d2:	daffe06f          	j	11780 <_vfprintf_r+0x356>
   129d6:	1982                	slli	s3,s3,0x20
   129d8:	0209d993          	srli	s3,s3,0x20
   129dc:	e01fe06f          	j	117dc <_vfprintf_r+0x3b2>
   129e0:	1982                	slli	s3,s3,0x20
   129e2:	0209d993          	srli	s3,s3,0x20
   129e6:	b855                	j	1229a <_vfprintf_r+0xe70>
   129e8:	1982                	slli	s3,s3,0x20
   129ea:	0209d993          	srli	s3,s3,0x20
   129ee:	e83a                	sd	a4,16(sp)
   129f0:	4785                	li	a5,1
   129f2:	df5fe06f          	j	117e6 <_vfprintf_r+0x3bc>
   129f6:	0a10                	addi	a2,sp,272
   129f8:	85ca                	mv	a1,s2
   129fa:	8552                	mv	a0,s4
   129fc:	24a060ef          	jal	ra,18c46 <__sprint_r>
   12a00:	ce1fe06f          	j	116e0 <_vfprintf_r+0x2b6>
   12a04:	02d00793          	li	a5,45
   12a08:	0cf10fa3          	sb	a5,223(sp)
   12a0c:	b1ed                	j	126f6 <_vfprintf_r+0x12cc>
   12a0e:	ec02                	sd	zero,24(sp)
   12a10:	84be                	mv	s1,a5
   12a12:	57fd                	li	a5,-1
   12a14:	17fe                	slli	a5,a5,0x3f
   12a16:	00f9c9b3          	xor	s3,s3,a5
   12a1a:	02d00793          	li	a5,45
   12a1e:	e5be                	sd	a5,200(sp)
   12a20:	b249                	j	123a2 <_vfprintf_r+0xf78>
   12a22:	0a10                	addi	a2,sp,272
   12a24:	85ca                	mv	a1,s2
   12a26:	8552                	mv	a0,s4
   12a28:	21e060ef          	jal	ra,18c46 <__sprint_r>
   12a2c:	c2051f63          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12a30:	562e                	lw	a2,232(sp)
   12a32:	7792                	ld	a5,288(sp)
   12a34:	11812683          	lw	a3,280(sp)
   12a38:	835a                	mv	t1,s6
   12a3a:	b6d5                	j	1261e <_vfprintf_r+0x11f4>
   12a3c:	001c059b          	addiw	a1,s8,1
   12a40:	8552                	mv	a0,s4
   12a42:	ec1a                	sd	t1,24(sp)
   12a44:	d21fd0ef          	jal	ra,10764 <_malloc_r>
   12a48:	6362                	ld	t1,24(sp)
   12a4a:	8caa                	mv	s9,a0
   12a4c:	46050363          	beqz	a0,12eb2 <_vfprintf_r+0x1a88>
   12a50:	ec2a                	sd	a0,24(sp)
   12a52:	ba2d                	j	1238c <_vfprintf_r+0xf62>
   12a54:	4601                	li	a2,0
   12a56:	4681                	li	a3,0
   12a58:	855e                	mv	a0,s7
   12a5a:	85ce                	mv	a1,s3
   12a5c:	f846                	sd	a7,48(sp)
   12a5e:	f01a                	sd	t1,32(sp)
   12a60:	766080ef          	jal	ra,1b1c6 <__eqtf2>
   12a64:	7302                	ld	t1,32(sp)
   12a66:	78c2                	ld	a7,48(sp)
   12a68:	9a0504e3          	beqz	a0,12410 <_vfprintf_r+0xfe6>
   12a6c:	4785                	li	a5,1
   12a6e:	41b7873b          	subw	a4,a5,s11
   12a72:	d5ba                	sw	a4,232(sp)
   12a74:	98ba                	add	a7,a7,a4
   12a76:	ba79                	j	12414 <_vfprintf_r+0xfea>
   12a78:	001c0d9b          	addiw	s11,s8,1
   12a7c:	4689                	li	a3,2
   12a7e:	ba91                	j	123d2 <_vfprintf_r+0xfa8>
   12a80:	8de2                	mv	s11,s8
   12a82:	468d                	li	a3,3
   12a84:	b2b9                	j	123d2 <_vfprintf_r+0xfa8>
   12a86:	85ce                	mv	a1,s3
   12a88:	855e                	mv	a0,s7
   12a8a:	f81a                	sd	t1,48(sp)
   12a8c:	185090ef          	jal	ra,1c410 <__trunctfdf2>
   12a90:	11a8                	addi	a0,sp,232
   12a92:	54a040ef          	jal	ra,16fdc <frexp>
   12a96:	0b7090ef          	jal	ra,1c34c <__extenddftf2>
   12a9a:	768a                	ld	a3,160(sp)
   12a9c:	4601                	li	a2,0
   12a9e:	115080ef          	jal	ra,1b3b2 <__multf3>
   12aa2:	4601                	li	a2,0
   12aa4:	4681                	li	a3,0
   12aa6:	8baa                	mv	s7,a0
   12aa8:	f02e                	sd	a1,32(sp)
   12aaa:	71c080ef          	jal	ra,1b1c6 <__eqtf2>
   12aae:	7f82                	ld	t6,32(sp)
   12ab0:	7342                	ld	t1,48(sp)
   12ab2:	e119                	bnez	a0,12ab8 <_vfprintf_r+0x168e>
   12ab4:	4785                	li	a5,1
   12ab6:	d5be                	sw	a5,232(sp)
   12ab8:	67f1                	lui	a5,0x1c
   12aba:	74078793          	addi	a5,a5,1856 # 1c740 <__clzdi2+0x110>
   12abe:	e4be                	sd	a5,72(sp)
   12ac0:	020c1793          	slli	a5,s8,0x20
   12ac4:	9381                	srli	a5,a5,0x20
   12ac6:	0785                	addi	a5,a5,1
   12ac8:	97e6                	add	a5,a5,s9
   12aca:	f93e                	sd	a5,176(sp)
   12acc:	018c87bb          	addw	a5,s9,s8
   12ad0:	8de6                	mv	s11,s9
   12ad2:	c3be                	sw	a5,196(sp)
   12ad4:	a829                	j	12aee <_vfprintf_r+0x16c4>
   12ad6:	4601                	li	a2,0
   12ad8:	4681                	li	a3,0
   12ada:	f01a                	sd	t1,32(sp)
   12adc:	fc2e                	sd	a1,56(sp)
   12ade:	f82a                	sd	a0,48(sp)
   12ae0:	6e6080ef          	jal	ra,1b1c6 <__eqtf2>
   12ae4:	77e2                	ld	a5,56(sp)
   12ae6:	7302                	ld	t1,32(sp)
   12ae8:	88de                	mv	a7,s7
   12aea:	8fbe                	mv	t6,a5
   12aec:	cd31                	beqz	a0,12b48 <_vfprintf_r+0x171e>
   12aee:	66ca                	ld	a3,144(sp)
   12af0:	4601                	li	a2,0
   12af2:	85fe                	mv	a1,t6
   12af4:	855e                	mv	a0,s7
   12af6:	f81a                	sd	t1,48(sp)
   12af8:	0bb080ef          	jal	ra,1b3b2 <__multf3>
   12afc:	8bae                	mv	s7,a1
   12afe:	f02a                	sd	a0,32(sp)
   12b00:	764090ef          	jal	ra,1c264 <__fixtfsi>
   12b04:	0005099b          	sext.w	s3,a0
   12b08:	854e                	mv	a0,s3
   12b0a:	7ec090ef          	jal	ra,1c2f6 <__floatsitf>
   12b0e:	7782                	ld	a5,32(sp)
   12b10:	86ae                	mv	a3,a1
   12b12:	862a                	mv	a2,a0
   12b14:	85de                	mv	a1,s7
   12b16:	853e                	mv	a0,a5
   12b18:	6c5080ef          	jal	ra,1b9dc <__subtf3>
   12b1c:	67a6                	ld	a5,72(sp)
   12b1e:	471e                	lw	a4,196(sp)
   12b20:	fd6e                	sd	s11,184(sp)
   12b22:	97ce                	add	a5,a5,s3
   12b24:	0d85                	addi	s11,s11,1
   12b26:	0007c683          	lbu	a3,0(a5)
   12b2a:	41b7073b          	subw	a4,a4,s11
   12b2e:	e8ba                	sd	a4,80(sp)
   12b30:	774a                	ld	a4,176(sp)
   12b32:	fedd8fa3          	sb	a3,-1(s11)
   12b36:	e0ae                	sd	a1,64(sp)
   12b38:	7342                	ld	t1,48(sp)
   12b3a:	87ae                	mv	a5,a1
   12b3c:	88aa                	mv	a7,a0
   12b3e:	8baa                	mv	s7,a0
   12b40:	f9b71be3          	bne	a4,s11,12ad6 <_vfprintf_r+0x16ac>
   12b44:	577d                	li	a4,-1
   12b46:	e8ba                	sd	a4,80(sp)
   12b48:	66ea                	ld	a3,152(sp)
   12b4a:	4601                	li	a2,0
   12b4c:	8546                	mv	a0,a7
   12b4e:	85be                	mv	a1,a5
   12b50:	f01a                	sd	t1,32(sp)
   12b52:	fc46                	sd	a7,56(sp)
   12b54:	f83e                	sd	a5,48(sp)
   12b56:	710080ef          	jal	ra,1b266 <__getf2>
   12b5a:	7302                	ld	t1,32(sp)
   12b5c:	1ca04463          	bgtz	a0,12d24 <_vfprintf_r+0x18fa>
   12b60:	78e2                	ld	a7,56(sp)
   12b62:	77c2                	ld	a5,48(sp)
   12b64:	66ea                	ld	a3,152(sp)
   12b66:	4601                	li	a2,0
   12b68:	8546                	mv	a0,a7
   12b6a:	85be                	mv	a1,a5
   12b6c:	65a080ef          	jal	ra,1b1c6 <__eqtf2>
   12b70:	7302                	ld	t1,32(sp)
   12b72:	e509                	bnez	a0,12b7c <_vfprintf_r+0x1752>
   12b74:	0019f993          	andi	s3,s3,1
   12b78:	1a099663          	bnez	s3,12d24 <_vfprintf_r+0x18fa>
   12b7c:	6746                	ld	a4,80(sp)
   12b7e:	03000693          	li	a3,48
   12b82:	0017079b          	addiw	a5,a4,1
   12b86:	97ee                	add	a5,a5,s11
   12b88:	00074763          	bltz	a4,12b96 <_vfprintf_r+0x176c>
   12b8c:	0d85                	addi	s11,s11,1
   12b8e:	fedd8fa3          	sb	a3,-1(s11)
   12b92:	ffb79de3          	bne	a5,s11,12b8c <_vfprintf_r+0x1762>
   12b96:	419d87bb          	subw	a5,s11,s9
   12b9a:	f03e                	sd	a5,32(sp)
   12b9c:	b859                	j	12432 <_vfprintf_r+0x1008>
   12b9e:	7702                	ld	a4,32(sp)
   12ba0:	9766                	add	a4,a4,s9
   12ba2:	c7877d63          	bgeu	a4,s8,1201c <_vfprintf_r+0xbf2>
   12ba6:	8c3a                	mv	s8,a4
   12ba8:	c74ff06f          	j	1201c <_vfprintf_r+0xbf2>
   12bac:	0df14783          	lbu	a5,223(sp)
   12bb0:	4c01                	li	s8,0
   12bb2:	c399                	beqz	a5,12bb8 <_vfprintf_r+0x178e>
   12bb4:	c0dfe06f          	j	117c0 <_vfprintf_r+0x396>
   12bb8:	a39fe06f          	j	115f0 <_vfprintf_r+0x1c6>
   12bbc:	77aa                	ld	a5,168(sp)
   12bbe:	01b508b3          	add	a7,a0,s11
   12bc2:	8b85                	andi	a5,a5,1
   12bc4:	840798e3          	bnez	a5,12414 <_vfprintf_r+0xfea>
   12bc8:	76ee                	ld	a3,248(sp)
   12bca:	863ff06f          	j	1242c <_vfprintf_r+0x1002>
   12bce:	0a10                	addi	a2,sp,272
   12bd0:	85ca                	mv	a1,s2
   12bd2:	8552                	mv	a0,s4
   12bd4:	072060ef          	jal	ra,18c46 <__sprint_r>
   12bd8:	a8051963          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12bdc:	7786                	ld	a5,96(sp)
   12bde:	835a                	mv	t1,s6
   12be0:	0007c603          	lbu	a2,0(a5)
   12be4:	7792                	ld	a5,288(sp)
   12be6:	9c32                	add	s8,s8,a2
   12be8:	b6fd                	j	127d6 <_vfprintf_r+0x13ac>
   12bea:	02d00793          	li	a5,45
   12bee:	0cf10fa3          	sb	a5,223(sp)
   12bf2:	ba71                	j	1258e <_vfprintf_r+0x1164>
   12bf4:	0a10                	addi	a2,sp,272
   12bf6:	85ca                	mv	a1,s2
   12bf8:	8552                	mv	a0,s4
   12bfa:	04c060ef          	jal	ra,18c46 <__sprint_r>
   12bfe:	a6051663          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12c02:	572e                	lw	a4,232(sp)
   12c04:	7792                	ld	a5,288(sp)
   12c06:	835a                	mv	t1,s6
   12c08:	c4aff06f          	j	12052 <_vfprintf_r+0xc28>
   12c0c:	0df14783          	lbu	a5,223(sp)
   12c10:	e86e                	sd	s11,16(sp)
   12c12:	e882                	sd	zero,80(sp)
   12c14:	ec82                	sd	zero,88(sp)
   12c16:	e482                	sd	zero,72(sp)
   12c18:	89e2                	mv	s3,s8
   12c1a:	8be2                	mv	s7,s8
   12c1c:	4c01                	li	s8,0
   12c1e:	c399                	beqz	a5,12c24 <_vfprintf_r+0x17fa>
   12c20:	ba1fe06f          	j	117c0 <_vfprintf_r+0x396>
   12c24:	9cdfe06f          	j	115f0 <_vfprintf_r+0x1c6>
   12c28:	0a10                	addi	a2,sp,272
   12c2a:	85ca                	mv	a1,s2
   12c2c:	8552                	mv	a0,s4
   12c2e:	018060ef          	jal	ra,18c46 <__sprint_r>
   12c32:	a2051c63          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12c36:	56ae                	lw	a3,232(sp)
   12c38:	7702                	ld	a4,32(sp)
   12c3a:	7792                	ld	a5,288(sp)
   12c3c:	835a                	mv	t1,s6
   12c3e:	40d706bb          	subw	a3,a4,a3
   12c42:	c4cff06f          	j	1208e <_vfprintf_r+0xc64>
   12c46:	6871                	lui	a6,0x1c
   12c48:	71880c93          	addi	s9,a6,1816 # 1c718 <__clzdi2+0xe8>
   12c4c:	ba81                	j	1259c <_vfprintf_r+0x1172>
   12c4e:	68f5                	lui	a7,0x1d
   12c50:	5741                	li	a4,-16
   12c52:	40c00c3b          	negw	s8,a2
   12c56:	9b088d93          	addi	s11,a7,-1616 # 1c9b0 <zeroes.0>
   12c5a:	4bc1                	li	s7,16
   12c5c:	4d1d                	li	s10,7
   12c5e:	00e64663          	blt	a2,a4,12c6a <_vfprintf_r+0x1840>
   12c62:	a0ad                	j	12ccc <_vfprintf_r+0x18a2>
   12c64:	3c41                	addiw	s8,s8,-16
   12c66:	078bd363          	bge	s7,s8,12ccc <_vfprintf_r+0x18a2>
   12c6a:	2685                	addiw	a3,a3,1
   12c6c:	07c1                	addi	a5,a5,16
   12c6e:	01b33023          	sd	s11,0(t1)
   12c72:	01733423          	sd	s7,8(t1)
   12c76:	f23e                	sd	a5,288(sp)
   12c78:	10d12c23          	sw	a3,280(sp)
   12c7c:	0341                	addi	t1,t1,16
   12c7e:	fedd53e3          	bge	s10,a3,12c64 <_vfprintf_r+0x183a>
   12c82:	0a10                	addi	a2,sp,272
   12c84:	85ca                	mv	a1,s2
   12c86:	8552                	mv	a0,s4
   12c88:	7bf050ef          	jal	ra,18c46 <__sprint_r>
   12c8c:	9c051f63          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12c90:	7792                	ld	a5,288(sp)
   12c92:	11812683          	lw	a3,280(sp)
   12c96:	835a                	mv	t1,s6
   12c98:	b7f1                	j	12c64 <_vfprintf_r+0x183a>
   12c9a:	57fd                	li	a5,-1
   12c9c:	e43e                	sd	a5,8(sp)
   12c9e:	a51fe06f          	j	116ee <_vfprintf_r+0x2c4>
   12ca2:	7702                	ld	a4,32(sp)
   12ca4:	77a6                	ld	a5,104(sp)
   12ca6:	06700d13          	li	s10,103
   12caa:	00e78bbb          	addw	s7,a5,a4
   12cae:	6726                	ld	a4,72(sp)
   12cb0:	fae04963          	bgtz	a4,12462 <_vfprintf_r+0x1038>
   12cb4:	40eb87bb          	subw	a5,s7,a4
   12cb8:	2785                	addiw	a5,a5,1
   12cba:	00078b9b          	sext.w	s7,a5
   12cbe:	fffbc713          	not	a4,s7
   12cc2:	977d                	srai	a4,a4,0x3f
   12cc4:	8ff9                	and	a5,a5,a4
   12cc6:	0007899b          	sext.w	s3,a5
   12cca:	b421                	j	126d2 <_vfprintf_r+0x12a8>
   12ccc:	2685                	addiw	a3,a3,1
   12cce:	97e2                	add	a5,a5,s8
   12cd0:	01b33023          	sd	s11,0(t1)
   12cd4:	01833423          	sd	s8,8(t1)
   12cd8:	f23e                	sd	a5,288(sp)
   12cda:	10d12c23          	sw	a3,280(sp)
   12cde:	471d                	li	a4,7
   12ce0:	84d75ce3          	bge	a4,a3,12538 <_vfprintf_r+0x110e>
   12ce4:	0a10                	addi	a2,sp,272
   12ce6:	85ca                	mv	a1,s2
   12ce8:	8552                	mv	a0,s4
   12cea:	75d050ef          	jal	ra,18c46 <__sprint_r>
   12cee:	96051e63          	bnez	a0,11e6a <_vfprintf_r+0xa40>
   12cf2:	7792                	ld	a5,288(sp)
   12cf4:	11812683          	lw	a3,280(sp)
   12cf8:	835a                	mv	t1,s6
   12cfa:	b225                	j	12622 <_vfprintf_r+0x11f8>
   12cfc:	0f210713          	addi	a4,sp,242
   12d00:	e619                	bnez	a2,12d0e <_vfprintf_r+0x18e4>
   12d02:	03000793          	li	a5,48
   12d06:	0ef10923          	sb	a5,242(sp)
   12d0a:	0f310713          	addi	a4,sp,243
   12d0e:	0306879b          	addiw	a5,a3,48
   12d12:	0c14                	addi	a3,sp,528
   12d14:	40d706b3          	sub	a3,a4,a3
   12d18:	00f70023          	sb	a5,0(a4)
   12d1c:	1216879b          	addiw	a5,a3,289
   12d20:	fcbe                	sd	a5,120(sp)
   12d22:	b1ad                	j	1298c <_vfprintf_r+0x1562>
   12d24:	77ea                	ld	a5,184(sp)
   12d26:	fdbe                	sd	a5,248(sp)
   12d28:	67a6                	ld	a5,72(sp)
   12d2a:	fffdc683          	lbu	a3,-1(s11)
   12d2e:	00f7c603          	lbu	a2,15(a5)
   12d32:	87ee                	mv	a5,s11
   12d34:	00d61e63          	bne	a2,a3,12d50 <_vfprintf_r+0x1926>
   12d38:	03000593          	li	a1,48
   12d3c:	feb78fa3          	sb	a1,-1(a5)
   12d40:	77ee                	ld	a5,248(sp)
   12d42:	fff78693          	addi	a3,a5,-1
   12d46:	fdb6                	sd	a3,248(sp)
   12d48:	fff7c683          	lbu	a3,-1(a5)
   12d4c:	fed608e3          	beq	a2,a3,12d3c <_vfprintf_r+0x1912>
   12d50:	0016861b          	addiw	a2,a3,1
   12d54:	03900593          	li	a1,57
   12d58:	0ff67613          	zext.b	a2,a2
   12d5c:	00b68563          	beq	a3,a1,12d66 <_vfprintf_r+0x193c>
   12d60:	fec78fa3          	sb	a2,-1(a5)
   12d64:	bd0d                	j	12b96 <_vfprintf_r+0x176c>
   12d66:	6726                	ld	a4,72(sp)
   12d68:	00a74603          	lbu	a2,10(a4)
   12d6c:	fec78fa3          	sb	a2,-1(a5)
   12d70:	b51d                	j	12b96 <_vfprintf_r+0x176c>
   12d72:	8da6                	mv	s11,s1
   12d74:	914ff06f          	j	11e88 <_vfprintf_r+0xa5e>
   12d78:	772a                	ld	a4,168(sp)
   12d7a:	8b05                	andi	a4,a4,1
   12d7c:	c20703e3          	beqz	a4,129a2 <_vfprintf_r+0x1578>
   12d80:	b931                	j	1299c <_vfprintf_r+0x1572>
   12d82:	000c0463          	beqz	s8,12d8a <_vfprintf_r+0x1960>
   12d86:	b1bfe06f          	j	118a0 <_vfprintf_r+0x476>
   12d8a:	4c05                	li	s8,1
   12d8c:	b15fe06f          	j	118a0 <_vfprintf_r+0x476>
   12d90:	4c19                	li	s8,6
   12d92:	b0ffe06f          	j	118a0 <_vfprintf_r+0x476>
   12d96:	c31c                	sw	a5,0(a4)
   12d98:	8ca2                	mv	s9,s0
   12d9a:	937fe06f          	j	116d0 <_vfprintf_r+0x2a6>
   12d9e:	85ce                	mv	a1,s3
   12da0:	855e                	mv	a0,s7
   12da2:	f81a                	sd	t1,48(sp)
   12da4:	66c090ef          	jal	ra,1c410 <__trunctfdf2>
   12da8:	11a8                	addi	a0,sp,232
   12daa:	232040ef          	jal	ra,16fdc <frexp>
   12dae:	59e090ef          	jal	ra,1c34c <__extenddftf2>
   12db2:	768a                	ld	a3,160(sp)
   12db4:	4601                	li	a2,0
   12db6:	5fc080ef          	jal	ra,1b3b2 <__multf3>
   12dba:	4601                	li	a2,0
   12dbc:	4681                	li	a3,0
   12dbe:	8baa                	mv	s7,a0
   12dc0:	f02e                	sd	a1,32(sp)
   12dc2:	404080ef          	jal	ra,1b1c6 <__eqtf2>
   12dc6:	7f82                	ld	t6,32(sp)
   12dc8:	7342                	ld	t1,48(sp)
   12dca:	e119                	bnez	a0,12dd0 <_vfprintf_r+0x19a6>
   12dcc:	4785                	li	a5,1
   12dce:	d5be                	sw	a5,232(sp)
   12dd0:	67f1                	lui	a5,0x1c
   12dd2:	72878793          	addi	a5,a5,1832 # 1c728 <__clzdi2+0xf8>
   12dd6:	e4be                	sd	a5,72(sp)
   12dd8:	b1e5                	j	12ac0 <_vfprintf_r+0x1696>
   12dda:	06700d13          	li	s10,103
   12dde:	7786                	ld	a5,96(sp)
   12de0:	0ff00713          	li	a4,255
   12de4:	e882                	sd	zero,80(sp)
   12de6:	0007c783          	lbu	a5,0(a5)
   12dea:	ec82                	sd	zero,88(sp)
   12dec:	02e78863          	beq	a5,a4,12e1c <_vfprintf_r+0x19f2>
   12df0:	0ff00693          	li	a3,255
   12df4:	6626                	ld	a2,72(sp)
   12df6:	0007871b          	sext.w	a4,a5
   12dfa:	02c7d163          	bge	a5,a2,12e1c <_vfprintf_r+0x19f2>
   12dfe:	7586                	ld	a1,96(sp)
   12e00:	40e6073b          	subw	a4,a2,a4
   12e04:	e4ba                	sd	a4,72(sp)
   12e06:	0015c783          	lbu	a5,1(a1)
   12e0a:	cb95                	beqz	a5,12e3e <_vfprintf_r+0x1a14>
   12e0c:	6766                	ld	a4,88(sp)
   12e0e:	2705                	addiw	a4,a4,1
   12e10:	ecba                	sd	a4,88(sp)
   12e12:	00158713          	addi	a4,a1,1
   12e16:	f0ba                	sd	a4,96(sp)
   12e18:	fcd79ee3          	bne	a5,a3,12df4 <_vfprintf_r+0x19ca>
   12e1c:	6766                	ld	a4,88(sp)
   12e1e:	67c6                	ld	a5,80(sp)
   12e20:	9fb9                	addw	a5,a5,a4
   12e22:	670a                	ld	a4,128(sp)
   12e24:	02e787bb          	mulw	a5,a5,a4
   12e28:	017787bb          	addw	a5,a5,s7
   12e2c:	00078b9b          	sext.w	s7,a5
   12e30:	fffbc713          	not	a4,s7
   12e34:	977d                	srai	a4,a4,0x3f
   12e36:	8ff9                	and	a5,a5,a4
   12e38:	0007899b          	sext.w	s3,a5
   12e3c:	b869                	j	126d6 <_vfprintf_r+0x12ac>
   12e3e:	6746                	ld	a4,80(sp)
   12e40:	7786                	ld	a5,96(sp)
   12e42:	2705                	addiw	a4,a4,1
   12e44:	0007c783          	lbu	a5,0(a5)
   12e48:	e8ba                	sd	a4,80(sp)
   12e4a:	b7f9                	j	12e18 <_vfprintf_r+0x19ee>
   12e4c:	77a6                	ld	a5,104(sp)
   12e4e:	06600d13          	li	s10,102
   12e52:	00e78bbb          	addw	s7,a5,a4
   12e56:	018b8bbb          	addw	s7,s7,s8
   12e5a:	e08ff06f          	j	12462 <_vfprintf_r+0x1038>
   12e5e:	e799                	bnez	a5,12e6c <_vfprintf_r+0x1a42>
   12e60:	4985                	li	s3,1
   12e62:	06600d13          	li	s10,102
   12e66:	4b85                	li	s7,1
   12e68:	86bff06f          	j	126d2 <_vfprintf_r+0x12a8>
   12e6c:	77a6                	ld	a5,104(sp)
   12e6e:	06600d13          	li	s10,102
   12e72:	2785                	addiw	a5,a5,1
   12e74:	018787bb          	addw	a5,a5,s8
   12e78:	00078b9b          	sext.w	s7,a5
   12e7c:	fffbc713          	not	a4,s7
   12e80:	977d                	srai	a4,a4,0x3f
   12e82:	8ff9                	and	a5,a5,a4
   12e84:	0007899b          	sext.w	s3,a5
   12e88:	84bff06f          	j	126d2 <_vfprintf_r+0x12a8>
   12e8c:	66c2                	ld	a3,16(sp)
   12e8e:	4298                	lw	a4,0(a3)
   12e90:	00868613          	addi	a2,a3,8
   12e94:	86ba                	mv	a3,a4
   12e96:	00075363          	bgez	a4,12e9c <_vfprintf_r+0x1a72>
   12e9a:	56fd                	li	a3,-1
   12e9c:	00144e03          	lbu	t3,1(s0)
   12ea0:	00068c1b          	sext.w	s8,a3
   12ea4:	e832                	sd	a2,16(sp)
   12ea6:	843e                	mv	s0,a5
   12ea8:	ed2fe06f          	j	1157a <_vfprintf_r+0x150>
   12eac:	4789                	li	a5,2
   12eae:	fcbe                	sd	a5,120(sp)
   12eb0:	bcf1                	j	1298c <_vfprintf_r+0x1562>
   12eb2:	01095783          	lhu	a5,16(s2)
   12eb6:	0407e793          	ori	a5,a5,64
   12eba:	00f91823          	sh	a5,16(s2)
   12ebe:	823fe06f          	j	116e0 <_vfprintf_r+0x2b6>

0000000000012ec2 <vfprintf>:
   12ec2:	87aa                	mv	a5,a0
   12ec4:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   12ec8:	86b2                	mv	a3,a2
   12eca:	862e                	mv	a2,a1
   12ecc:	85be                	mv	a1,a5
   12ece:	d5cfe06f          	j	1142a <_vfprintf_r>

0000000000012ed2 <__sbprintf>:
   12ed2:	0105d783          	lhu	a5,16(a1)
   12ed6:	0ac5ae03          	lw	t3,172(a1)
   12eda:	0125d303          	lhu	t1,18(a1)
   12ede:	0305b883          	ld	a7,48(a1)
   12ee2:	0405b803          	ld	a6,64(a1)
   12ee6:	b3010113          	addi	sp,sp,-1232
   12eea:	9bf5                	andi	a5,a5,-3
   12eec:	40000713          	li	a4,1024
   12ef0:	4c813023          	sd	s0,1216(sp)
   12ef4:	00f11823          	sh	a5,16(sp)
   12ef8:	842e                	mv	s0,a1
   12efa:	191c                	addi	a5,sp,176
   12efc:	858a                	mv	a1,sp
   12efe:	4a913c23          	sd	s1,1208(sp)
   12f02:	4b213823          	sd	s2,1200(sp)
   12f06:	4c113423          	sd	ra,1224(sp)
   12f0a:	892a                	mv	s2,a0
   12f0c:	d772                	sw	t3,172(sp)
   12f0e:	00611923          	sh	t1,18(sp)
   12f12:	f846                	sd	a7,48(sp)
   12f14:	e0c2                	sd	a6,64(sp)
   12f16:	e03e                	sd	a5,0(sp)
   12f18:	ec3e                	sd	a5,24(sp)
   12f1a:	c63a                	sw	a4,12(sp)
   12f1c:	d03a                	sw	a4,32(sp)
   12f1e:	d402                	sw	zero,40(sp)
   12f20:	d0afe0ef          	jal	ra,1142a <_vfprintf_r>
   12f24:	84aa                	mv	s1,a0
   12f26:	02055963          	bgez	a0,12f58 <__sbprintf+0x86>
   12f2a:	01015783          	lhu	a5,16(sp)
   12f2e:	0407f793          	andi	a5,a5,64
   12f32:	c799                	beqz	a5,12f40 <__sbprintf+0x6e>
   12f34:	01045783          	lhu	a5,16(s0)
   12f38:	0407e793          	ori	a5,a5,64
   12f3c:	00f41823          	sh	a5,16(s0)
   12f40:	4c813083          	ld	ra,1224(sp)
   12f44:	4c013403          	ld	s0,1216(sp)
   12f48:	4b013903          	ld	s2,1200(sp)
   12f4c:	8526                	mv	a0,s1
   12f4e:	4b813483          	ld	s1,1208(sp)
   12f52:	4d010113          	addi	sp,sp,1232
   12f56:	8082                	ret
   12f58:	858a                	mv	a1,sp
   12f5a:	854a                	mv	a0,s2
   12f5c:	48a000ef          	jal	ra,133e6 <_fflush_r>
   12f60:	d569                	beqz	a0,12f2a <__sbprintf+0x58>
   12f62:	54fd                	li	s1,-1
   12f64:	b7d9                	j	12f2a <__sbprintf+0x58>

0000000000012f66 <_write_r>:
   12f66:	1101                	addi	sp,sp,-32
   12f68:	872e                	mv	a4,a1
   12f6a:	e822                	sd	s0,16(sp)
   12f6c:	e426                	sd	s1,8(sp)
   12f6e:	85b2                	mv	a1,a2
   12f70:	842a                	mv	s0,a0
   12f72:	8636                	mv	a2,a3
   12f74:	853a                	mv	a0,a4
   12f76:	ec06                	sd	ra,24(sp)
   12f78:	6801a423          	sw	zero,1672(gp) # 1f7a8 <errno>
   12f7c:	1c4080ef          	jal	ra,1b140 <_write>
   12f80:	57fd                	li	a5,-1
   12f82:	00f50763          	beq	a0,a5,12f90 <_write_r+0x2a>
   12f86:	60e2                	ld	ra,24(sp)
   12f88:	6442                	ld	s0,16(sp)
   12f8a:	64a2                	ld	s1,8(sp)
   12f8c:	6105                	addi	sp,sp,32
   12f8e:	8082                	ret
   12f90:	6881a783          	lw	a5,1672(gp) # 1f7a8 <errno>
   12f94:	dbed                	beqz	a5,12f86 <_write_r+0x20>
   12f96:	60e2                	ld	ra,24(sp)
   12f98:	c01c                	sw	a5,0(s0)
   12f9a:	6442                	ld	s0,16(sp)
   12f9c:	64a2                	ld	s1,8(sp)
   12f9e:	6105                	addi	sp,sp,32
   12fa0:	8082                	ret

0000000000012fa2 <__swsetup_r>:
   12fa2:	6401b783          	ld	a5,1600(gp) # 1f760 <_impure_ptr>
   12fa6:	1101                	addi	sp,sp,-32
   12fa8:	e822                	sd	s0,16(sp)
   12faa:	e426                	sd	s1,8(sp)
   12fac:	ec06                	sd	ra,24(sp)
   12fae:	84aa                	mv	s1,a0
   12fb0:	842e                	mv	s0,a1
   12fb2:	c399                	beqz	a5,12fb8 <__swsetup_r+0x16>
   12fb4:	4bb8                	lw	a4,80(a5)
   12fb6:	cf21                	beqz	a4,1300e <__swsetup_r+0x6c>
   12fb8:	01041703          	lh	a4,16(s0)
   12fbc:	03071793          	slli	a5,a4,0x30
   12fc0:	00877693          	andi	a3,a4,8
   12fc4:	93c1                	srli	a5,a5,0x30
   12fc6:	ceb9                	beqz	a3,13024 <__swsetup_r+0x82>
   12fc8:	6c14                	ld	a3,24(s0)
   12fca:	cabd                	beqz	a3,13040 <__swsetup_r+0x9e>
   12fcc:	0017f613          	andi	a2,a5,1
   12fd0:	ce11                	beqz	a2,12fec <__swsetup_r+0x4a>
   12fd2:	5010                	lw	a2,32(s0)
   12fd4:	00042623          	sw	zero,12(s0)
   12fd8:	4501                	li	a0,0
   12fda:	40c0063b          	negw	a2,a2
   12fde:	d410                	sw	a2,40(s0)
   12fe0:	ce91                	beqz	a3,12ffc <__swsetup_r+0x5a>
   12fe2:	60e2                	ld	ra,24(sp)
   12fe4:	6442                	ld	s0,16(sp)
   12fe6:	64a2                	ld	s1,8(sp)
   12fe8:	6105                	addi	sp,sp,32
   12fea:	8082                	ret
   12fec:	0027f613          	andi	a2,a5,2
   12ff0:	4581                	li	a1,0
   12ff2:	e211                	bnez	a2,12ff6 <__swsetup_r+0x54>
   12ff4:	500c                	lw	a1,32(s0)
   12ff6:	c44c                	sw	a1,12(s0)
   12ff8:	4501                	li	a0,0
   12ffa:	f6e5                	bnez	a3,12fe2 <__swsetup_r+0x40>
   12ffc:	0807f793          	andi	a5,a5,128
   13000:	d3ed                	beqz	a5,12fe2 <__swsetup_r+0x40>
   13002:	04076713          	ori	a4,a4,64
   13006:	00e41823          	sh	a4,16(s0)
   1300a:	557d                	li	a0,-1
   1300c:	bfd9                	j	12fe2 <__swsetup_r+0x40>
   1300e:	853e                	mv	a0,a5
   13010:	db6fd0ef          	jal	ra,105c6 <__sinit>
   13014:	01041703          	lh	a4,16(s0)
   13018:	03071793          	slli	a5,a4,0x30
   1301c:	00877693          	andi	a3,a4,8
   13020:	93c1                	srli	a5,a5,0x30
   13022:	f2dd                	bnez	a3,12fc8 <__swsetup_r+0x26>
   13024:	0107f693          	andi	a3,a5,16
   13028:	c2ad                	beqz	a3,1308a <__swsetup_r+0xe8>
   1302a:	8b91                	andi	a5,a5,4
   1302c:	eb9d                	bnez	a5,13062 <__swsetup_r+0xc0>
   1302e:	6c14                	ld	a3,24(s0)
   13030:	00876713          	ori	a4,a4,8
   13034:	03071793          	slli	a5,a4,0x30
   13038:	00e41823          	sh	a4,16(s0)
   1303c:	93c1                	srli	a5,a5,0x30
   1303e:	f6d9                	bnez	a3,12fcc <__swsetup_r+0x2a>
   13040:	2807f613          	andi	a2,a5,640
   13044:	20000593          	li	a1,512
   13048:	f8b602e3          	beq	a2,a1,12fcc <__swsetup_r+0x2a>
   1304c:	85a2                	mv	a1,s0
   1304e:	8526                	mv	a0,s1
   13050:	33d020ef          	jal	ra,15b8c <__smakebuf_r>
   13054:	01041703          	lh	a4,16(s0)
   13058:	6c14                	ld	a3,24(s0)
   1305a:	03071793          	slli	a5,a4,0x30
   1305e:	93c1                	srli	a5,a5,0x30
   13060:	b7b5                	j	12fcc <__swsetup_r+0x2a>
   13062:	6c2c                	ld	a1,88(s0)
   13064:	cd81                	beqz	a1,1307c <__swsetup_r+0xda>
   13066:	07440793          	addi	a5,s0,116
   1306a:	00f58763          	beq	a1,a5,13078 <__swsetup_r+0xd6>
   1306e:	8526                	mv	a0,s1
   13070:	500000ef          	jal	ra,13570 <_free_r>
   13074:	01041703          	lh	a4,16(s0)
   13078:	04043c23          	sd	zero,88(s0)
   1307c:	6c14                	ld	a3,24(s0)
   1307e:	fdb77713          	andi	a4,a4,-37
   13082:	00042423          	sw	zero,8(s0)
   13086:	e014                	sd	a3,0(s0)
   13088:	b765                	j	13030 <__swsetup_r+0x8e>
   1308a:	47a5                	li	a5,9
   1308c:	c09c                	sw	a5,0(s1)
   1308e:	04076713          	ori	a4,a4,64
   13092:	00e41823          	sh	a4,16(s0)
   13096:	557d                	li	a0,-1
   13098:	b7a9                	j	12fe2 <__swsetup_r+0x40>

000000000001309a <__call_exitprocs>:
   1309a:	715d                	addi	sp,sp,-80
   1309c:	f052                	sd	s4,32(sp)
   1309e:	6281ba03          	ld	s4,1576(gp) # 1f748 <_global_impure_ptr>
   130a2:	f84a                	sd	s2,48(sp)
   130a4:	e486                	sd	ra,72(sp)
   130a6:	1f8a3903          	ld	s2,504(s4)
   130aa:	e0a2                	sd	s0,64(sp)
   130ac:	fc26                	sd	s1,56(sp)
   130ae:	f44e                	sd	s3,40(sp)
   130b0:	ec56                	sd	s5,24(sp)
   130b2:	e85a                	sd	s6,16(sp)
   130b4:	e45e                	sd	s7,8(sp)
   130b6:	e062                	sd	s8,0(sp)
   130b8:	02090863          	beqz	s2,130e8 <__call_exitprocs+0x4e>
   130bc:	8b2a                	mv	s6,a0
   130be:	8bae                	mv	s7,a1
   130c0:	4a85                	li	s5,1
   130c2:	59fd                	li	s3,-1
   130c4:	00892483          	lw	s1,8(s2)
   130c8:	fff4841b          	addiw	s0,s1,-1
   130cc:	00044e63          	bltz	s0,130e8 <__call_exitprocs+0x4e>
   130d0:	048e                	slli	s1,s1,0x3
   130d2:	94ca                	add	s1,s1,s2
   130d4:	020b8663          	beqz	s7,13100 <__call_exitprocs+0x66>
   130d8:	2084b783          	ld	a5,520(s1)
   130dc:	03778263          	beq	a5,s7,13100 <__call_exitprocs+0x66>
   130e0:	347d                	addiw	s0,s0,-1
   130e2:	14e1                	addi	s1,s1,-8
   130e4:	ff3418e3          	bne	s0,s3,130d4 <__call_exitprocs+0x3a>
   130e8:	60a6                	ld	ra,72(sp)
   130ea:	6406                	ld	s0,64(sp)
   130ec:	74e2                	ld	s1,56(sp)
   130ee:	7942                	ld	s2,48(sp)
   130f0:	79a2                	ld	s3,40(sp)
   130f2:	7a02                	ld	s4,32(sp)
   130f4:	6ae2                	ld	s5,24(sp)
   130f6:	6b42                	ld	s6,16(sp)
   130f8:	6ba2                	ld	s7,8(sp)
   130fa:	6c02                	ld	s8,0(sp)
   130fc:	6161                	addi	sp,sp,80
   130fe:	8082                	ret
   13100:	00892783          	lw	a5,8(s2)
   13104:	6498                	ld	a4,8(s1)
   13106:	37fd                	addiw	a5,a5,-1
   13108:	04878463          	beq	a5,s0,13150 <__call_exitprocs+0xb6>
   1310c:	0004b423          	sd	zero,8(s1)
   13110:	db61                	beqz	a4,130e0 <__call_exitprocs+0x46>
   13112:	31092783          	lw	a5,784(s2)
   13116:	008a96bb          	sllw	a3,s5,s0
   1311a:	00892c03          	lw	s8,8(s2)
   1311e:	8ff5                	and	a5,a5,a3
   13120:	2781                	sext.w	a5,a5
   13122:	ef89                	bnez	a5,1313c <__call_exitprocs+0xa2>
   13124:	9702                	jalr	a4
   13126:	00892703          	lw	a4,8(s2)
   1312a:	1f8a3783          	ld	a5,504(s4)
   1312e:	01871463          	bne	a4,s8,13136 <__call_exitprocs+0x9c>
   13132:	fb2787e3          	beq	a5,s2,130e0 <__call_exitprocs+0x46>
   13136:	dbcd                	beqz	a5,130e8 <__call_exitprocs+0x4e>
   13138:	893e                	mv	s2,a5
   1313a:	b769                	j	130c4 <__call_exitprocs+0x2a>
   1313c:	31492783          	lw	a5,788(s2)
   13140:	1084b583          	ld	a1,264(s1)
   13144:	8ff5                	and	a5,a5,a3
   13146:	2781                	sext.w	a5,a5
   13148:	e799                	bnez	a5,13156 <__call_exitprocs+0xbc>
   1314a:	855a                	mv	a0,s6
   1314c:	9702                	jalr	a4
   1314e:	bfe1                	j	13126 <__call_exitprocs+0x8c>
   13150:	00892423          	sw	s0,8(s2)
   13154:	bf75                	j	13110 <__call_exitprocs+0x76>
   13156:	852e                	mv	a0,a1
   13158:	9702                	jalr	a4
   1315a:	b7f1                	j	13126 <__call_exitprocs+0x8c>

000000000001315c <atexit>:
   1315c:	85aa                	mv	a1,a0
   1315e:	4681                	li	a3,0
   13160:	4601                	li	a2,0
   13162:	4501                	li	a0,0
   13164:	7d60606f          	j	1993a <__register_exitproc>

0000000000013168 <_close_r>:
   13168:	1101                	addi	sp,sp,-32
   1316a:	e822                	sd	s0,16(sp)
   1316c:	e426                	sd	s1,8(sp)
   1316e:	842a                	mv	s0,a0
   13170:	852e                	mv	a0,a1
   13172:	ec06                	sd	ra,24(sp)
   13174:	6801a423          	sw	zero,1672(gp) # 1f7a8 <errno>
   13178:	655070ef          	jal	ra,1afcc <_close>
   1317c:	57fd                	li	a5,-1
   1317e:	00f50763          	beq	a0,a5,1318c <_close_r+0x24>
   13182:	60e2                	ld	ra,24(sp)
   13184:	6442                	ld	s0,16(sp)
   13186:	64a2                	ld	s1,8(sp)
   13188:	6105                	addi	sp,sp,32
   1318a:	8082                	ret
   1318c:	6881a783          	lw	a5,1672(gp) # 1f7a8 <errno>
   13190:	dbed                	beqz	a5,13182 <_close_r+0x1a>
   13192:	60e2                	ld	ra,24(sp)
   13194:	c01c                	sw	a5,0(s0)
   13196:	6442                	ld	s0,16(sp)
   13198:	64a2                	ld	s1,8(sp)
   1319a:	6105                	addi	sp,sp,32
   1319c:	8082                	ret

000000000001319e <_fclose_r>:
   1319e:	1101                	addi	sp,sp,-32
   131a0:	ec06                	sd	ra,24(sp)
   131a2:	e822                	sd	s0,16(sp)
   131a4:	e426                	sd	s1,8(sp)
   131a6:	e04a                	sd	s2,0(sp)
   131a8:	c989                	beqz	a1,131ba <_fclose_r+0x1c>
   131aa:	842e                	mv	s0,a1
   131ac:	84aa                	mv	s1,a0
   131ae:	c119                	beqz	a0,131b4 <_fclose_r+0x16>
   131b0:	493c                	lw	a5,80(a0)
   131b2:	cfa5                	beqz	a5,1322a <_fclose_r+0x8c>
   131b4:	01041783          	lh	a5,16(s0)
   131b8:	eb89                	bnez	a5,131ca <_fclose_r+0x2c>
   131ba:	60e2                	ld	ra,24(sp)
   131bc:	6442                	ld	s0,16(sp)
   131be:	4901                	li	s2,0
   131c0:	64a2                	ld	s1,8(sp)
   131c2:	854a                	mv	a0,s2
   131c4:	6902                	ld	s2,0(sp)
   131c6:	6105                	addi	sp,sp,32
   131c8:	8082                	ret
   131ca:	85a2                	mv	a1,s0
   131cc:	8526                	mv	a0,s1
   131ce:	086000ef          	jal	ra,13254 <__sflush_r>
   131d2:	683c                	ld	a5,80(s0)
   131d4:	892a                	mv	s2,a0
   131d6:	c791                	beqz	a5,131e2 <_fclose_r+0x44>
   131d8:	780c                	ld	a1,48(s0)
   131da:	8526                	mv	a0,s1
   131dc:	9782                	jalr	a5
   131de:	04054c63          	bltz	a0,13236 <_fclose_r+0x98>
   131e2:	01045783          	lhu	a5,16(s0)
   131e6:	0807f793          	andi	a5,a5,128
   131ea:	efa1                	bnez	a5,13242 <_fclose_r+0xa4>
   131ec:	6c2c                	ld	a1,88(s0)
   131ee:	c991                	beqz	a1,13202 <_fclose_r+0x64>
   131f0:	07440793          	addi	a5,s0,116
   131f4:	00f58563          	beq	a1,a5,131fe <_fclose_r+0x60>
   131f8:	8526                	mv	a0,s1
   131fa:	376000ef          	jal	ra,13570 <_free_r>
   131fe:	04043c23          	sd	zero,88(s0)
   13202:	7c2c                	ld	a1,120(s0)
   13204:	c591                	beqz	a1,13210 <_fclose_r+0x72>
   13206:	8526                	mv	a0,s1
   13208:	368000ef          	jal	ra,13570 <_free_r>
   1320c:	06043c23          	sd	zero,120(s0)
   13210:	bbefd0ef          	jal	ra,105ce <__sfp_lock_acquire>
   13214:	00041823          	sh	zero,16(s0)
   13218:	bb8fd0ef          	jal	ra,105d0 <__sfp_lock_release>
   1321c:	60e2                	ld	ra,24(sp)
   1321e:	6442                	ld	s0,16(sp)
   13220:	64a2                	ld	s1,8(sp)
   13222:	854a                	mv	a0,s2
   13224:	6902                	ld	s2,0(sp)
   13226:	6105                	addi	sp,sp,32
   13228:	8082                	ret
   1322a:	b9cfd0ef          	jal	ra,105c6 <__sinit>
   1322e:	01041783          	lh	a5,16(s0)
   13232:	d7c1                	beqz	a5,131ba <_fclose_r+0x1c>
   13234:	bf59                	j	131ca <_fclose_r+0x2c>
   13236:	01045783          	lhu	a5,16(s0)
   1323a:	597d                	li	s2,-1
   1323c:	0807f793          	andi	a5,a5,128
   13240:	d7d5                	beqz	a5,131ec <_fclose_r+0x4e>
   13242:	6c0c                	ld	a1,24(s0)
   13244:	8526                	mv	a0,s1
   13246:	32a000ef          	jal	ra,13570 <_free_r>
   1324a:	b74d                	j	131ec <_fclose_r+0x4e>

000000000001324c <fclose>:
   1324c:	85aa                	mv	a1,a0
   1324e:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   13252:	b7b1                	j	1319e <_fclose_r>

0000000000013254 <__sflush_r>:
   13254:	01059783          	lh	a5,16(a1)
   13258:	7179                	addi	sp,sp,-48
   1325a:	f022                	sd	s0,32(sp)
   1325c:	e44e                	sd	s3,8(sp)
   1325e:	f406                	sd	ra,40(sp)
   13260:	ec26                	sd	s1,24(sp)
   13262:	e84a                	sd	s2,16(sp)
   13264:	0087f693          	andi	a3,a5,8
   13268:	842e                	mv	s0,a1
   1326a:	89aa                	mv	s3,a0
   1326c:	ead5                	bnez	a3,13320 <__sflush_r+0xcc>
   1326e:	6705                	lui	a4,0x1
   13270:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8e8>
   13274:	4594                	lw	a3,8(a1)
   13276:	8fd9                	or	a5,a5,a4
   13278:	00f59823          	sh	a5,16(a1)
   1327c:	10d05063          	blez	a3,1337c <__sflush_r+0x128>
   13280:	6438                	ld	a4,72(s0)
   13282:	c759                	beqz	a4,13310 <__sflush_r+0xbc>
   13284:	17c2                	slli	a5,a5,0x30
   13286:	93c1                	srli	a5,a5,0x30
   13288:	6685                	lui	a3,0x1
   1328a:	0009a483          	lw	s1,0(s3)
   1328e:	8efd                	and	a3,a3,a5
   13290:	0009a023          	sw	zero,0(s3)
   13294:	780c                	ld	a1,48(s0)
   13296:	e6fd                	bnez	a3,13384 <__sflush_r+0x130>
   13298:	4601                	li	a2,0
   1329a:	4685                	li	a3,1
   1329c:	854e                	mv	a0,s3
   1329e:	9702                	jalr	a4
   132a0:	57fd                	li	a5,-1
   132a2:	862a                	mv	a2,a0
   132a4:	10f50763          	beq	a0,a5,133b2 <__sflush_r+0x15e>
   132a8:	01045783          	lhu	a5,16(s0)
   132ac:	6438                	ld	a4,72(s0)
   132ae:	780c                	ld	a1,48(s0)
   132b0:	8b91                	andi	a5,a5,4
   132b2:	c799                	beqz	a5,132c0 <__sflush_r+0x6c>
   132b4:	4414                	lw	a3,8(s0)
   132b6:	6c3c                	ld	a5,88(s0)
   132b8:	8e15                	sub	a2,a2,a3
   132ba:	c399                	beqz	a5,132c0 <__sflush_r+0x6c>
   132bc:	583c                	lw	a5,112(s0)
   132be:	8e1d                	sub	a2,a2,a5
   132c0:	4681                	li	a3,0
   132c2:	854e                	mv	a0,s3
   132c4:	9702                	jalr	a4
   132c6:	57fd                	li	a5,-1
   132c8:	0cf51063          	bne	a0,a5,13388 <__sflush_r+0x134>
   132cc:	0009a703          	lw	a4,0(s3)
   132d0:	01041783          	lh	a5,16(s0)
   132d4:	cf6d                	beqz	a4,133ce <__sflush_r+0x17a>
   132d6:	46f5                	li	a3,29
   132d8:	00d70563          	beq	a4,a3,132e2 <__sflush_r+0x8e>
   132dc:	46d9                	li	a3,22
   132de:	0ed71e63          	bne	a4,a3,133da <__sflush_r+0x186>
   132e2:	6c14                	ld	a3,24(s0)
   132e4:	777d                	lui	a4,0xfffff
   132e6:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdfedf>
   132ea:	8ff9                	and	a5,a5,a4
   132ec:	00f41823          	sh	a5,16(s0)
   132f0:	00042423          	sw	zero,8(s0)
   132f4:	e014                	sd	a3,0(s0)
   132f6:	6c2c                	ld	a1,88(s0)
   132f8:	0099a023          	sw	s1,0(s3)
   132fc:	c991                	beqz	a1,13310 <__sflush_r+0xbc>
   132fe:	07440793          	addi	a5,s0,116
   13302:	00f58563          	beq	a1,a5,1330c <__sflush_r+0xb8>
   13306:	854e                	mv	a0,s3
   13308:	268000ef          	jal	ra,13570 <_free_r>
   1330c:	04043c23          	sd	zero,88(s0)
   13310:	4501                	li	a0,0
   13312:	70a2                	ld	ra,40(sp)
   13314:	7402                	ld	s0,32(sp)
   13316:	64e2                	ld	s1,24(sp)
   13318:	6942                	ld	s2,16(sp)
   1331a:	69a2                	ld	s3,8(sp)
   1331c:	6145                	addi	sp,sp,48
   1331e:	8082                	ret
   13320:	0185b903          	ld	s2,24(a1)
   13324:	fe0906e3          	beqz	s2,13310 <__sflush_r+0xbc>
   13328:	6184                	ld	s1,0(a1)
   1332a:	03079713          	slli	a4,a5,0x30
   1332e:	9341                	srli	a4,a4,0x30
   13330:	8b0d                	andi	a4,a4,3
   13332:	0125b023          	sd	s2,0(a1)
   13336:	412484bb          	subw	s1,s1,s2
   1333a:	4781                	li	a5,0
   1333c:	e311                	bnez	a4,13340 <__sflush_r+0xec>
   1333e:	519c                	lw	a5,32(a1)
   13340:	c45c                	sw	a5,12(s0)
   13342:	00904663          	bgtz	s1,1334e <__sflush_r+0xfa>
   13346:	b7e9                	j	13310 <__sflush_r+0xbc>
   13348:	992a                	add	s2,s2,a0
   1334a:	fc9053e3          	blez	s1,13310 <__sflush_r+0xbc>
   1334e:	603c                	ld	a5,64(s0)
   13350:	780c                	ld	a1,48(s0)
   13352:	86a6                	mv	a3,s1
   13354:	864a                	mv	a2,s2
   13356:	854e                	mv	a0,s3
   13358:	9782                	jalr	a5
   1335a:	9c89                	subw	s1,s1,a0
   1335c:	fea046e3          	bgtz	a0,13348 <__sflush_r+0xf4>
   13360:	01045783          	lhu	a5,16(s0)
   13364:	70a2                	ld	ra,40(sp)
   13366:	64e2                	ld	s1,24(sp)
   13368:	0407e793          	ori	a5,a5,64
   1336c:	00f41823          	sh	a5,16(s0)
   13370:	7402                	ld	s0,32(sp)
   13372:	6942                	ld	s2,16(sp)
   13374:	69a2                	ld	s3,8(sp)
   13376:	557d                	li	a0,-1
   13378:	6145                	addi	sp,sp,48
   1337a:	8082                	ret
   1337c:	59b8                	lw	a4,112(a1)
   1337e:	f0e041e3          	bgtz	a4,13280 <__sflush_r+0x2c>
   13382:	b779                	j	13310 <__sflush_r+0xbc>
   13384:	6850                	ld	a2,144(s0)
   13386:	b72d                	j	132b0 <__sflush_r+0x5c>
   13388:	01045783          	lhu	a5,16(s0)
   1338c:	777d                	lui	a4,0xfffff
   1338e:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdfedf>
   13392:	8ff9                	and	a5,a5,a4
   13394:	6c14                	ld	a3,24(s0)
   13396:	0107979b          	slliw	a5,a5,0x10
   1339a:	4107d79b          	sraiw	a5,a5,0x10
   1339e:	6705                	lui	a4,0x1
   133a0:	00f41823          	sh	a5,16(s0)
   133a4:	00042423          	sw	zero,8(s0)
   133a8:	e014                	sd	a3,0(s0)
   133aa:	8ff9                	and	a5,a5,a4
   133ac:	d7a9                	beqz	a5,132f6 <__sflush_r+0xa2>
   133ae:	e848                	sd	a0,144(s0)
   133b0:	b799                	j	132f6 <__sflush_r+0xa2>
   133b2:	0009a783          	lw	a5,0(s3)
   133b6:	ee0789e3          	beqz	a5,132a8 <__sflush_r+0x54>
   133ba:	4775                	li	a4,29
   133bc:	00e78563          	beq	a5,a4,133c6 <__sflush_r+0x172>
   133c0:	4759                	li	a4,22
   133c2:	f8e79fe3          	bne	a5,a4,13360 <__sflush_r+0x10c>
   133c6:	0099a023          	sw	s1,0(s3)
   133ca:	4501                	li	a0,0
   133cc:	b799                	j	13312 <__sflush_r+0xbe>
   133ce:	777d                	lui	a4,0xfffff
   133d0:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdfedf>
   133d4:	6c14                	ld	a3,24(s0)
   133d6:	8ff9                	and	a5,a5,a4
   133d8:	b7d9                	j	1339e <__sflush_r+0x14a>
   133da:	0407e793          	ori	a5,a5,64
   133de:	00f41823          	sh	a5,16(s0)
   133e2:	557d                	li	a0,-1
   133e4:	b73d                	j	13312 <__sflush_r+0xbe>

00000000000133e6 <_fflush_r>:
   133e6:	1101                	addi	sp,sp,-32
   133e8:	e822                	sd	s0,16(sp)
   133ea:	ec06                	sd	ra,24(sp)
   133ec:	842a                	mv	s0,a0
   133ee:	c119                	beqz	a0,133f4 <_fflush_r+0xe>
   133f0:	493c                	lw	a5,80(a0)
   133f2:	cb89                	beqz	a5,13404 <_fflush_r+0x1e>
   133f4:	01059783          	lh	a5,16(a1)
   133f8:	ef89                	bnez	a5,13412 <_fflush_r+0x2c>
   133fa:	60e2                	ld	ra,24(sp)
   133fc:	6442                	ld	s0,16(sp)
   133fe:	4501                	li	a0,0
   13400:	6105                	addi	sp,sp,32
   13402:	8082                	ret
   13404:	e42e                	sd	a1,8(sp)
   13406:	9c0fd0ef          	jal	ra,105c6 <__sinit>
   1340a:	65a2                	ld	a1,8(sp)
   1340c:	01059783          	lh	a5,16(a1)
   13410:	d7ed                	beqz	a5,133fa <_fflush_r+0x14>
   13412:	8522                	mv	a0,s0
   13414:	6442                	ld	s0,16(sp)
   13416:	60e2                	ld	ra,24(sp)
   13418:	6105                	addi	sp,sp,32
   1341a:	bd2d                	j	13254 <__sflush_r>

000000000001341c <fflush>:
   1341c:	cd1d                	beqz	a0,1345a <fflush+0x3e>
   1341e:	1101                	addi	sp,sp,-32
   13420:	e822                	sd	s0,16(sp)
   13422:	842a                	mv	s0,a0
   13424:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   13428:	ec06                	sd	ra,24(sp)
   1342a:	c119                	beqz	a0,13430 <fflush+0x14>
   1342c:	493c                	lw	a5,80(a0)
   1342e:	cf91                	beqz	a5,1344a <fflush+0x2e>
   13430:	01041783          	lh	a5,16(s0)
   13434:	e791                	bnez	a5,13440 <fflush+0x24>
   13436:	60e2                	ld	ra,24(sp)
   13438:	6442                	ld	s0,16(sp)
   1343a:	4501                	li	a0,0
   1343c:	6105                	addi	sp,sp,32
   1343e:	8082                	ret
   13440:	85a2                	mv	a1,s0
   13442:	6442                	ld	s0,16(sp)
   13444:	60e2                	ld	ra,24(sp)
   13446:	6105                	addi	sp,sp,32
   13448:	b531                	j	13254 <__sflush_r>
   1344a:	e42a                	sd	a0,8(sp)
   1344c:	97afd0ef          	jal	ra,105c6 <__sinit>
   13450:	01041783          	lh	a5,16(s0)
   13454:	6522                	ld	a0,8(sp)
   13456:	d3e5                	beqz	a5,13436 <fflush+0x1a>
   13458:	b7e5                	j	13440 <fflush+0x24>
   1345a:	6281b503          	ld	a0,1576(gp) # 1f748 <_global_impure_ptr>
   1345e:	65cd                	lui	a1,0x13
   13460:	3e658593          	addi	a1,a1,998 # 133e6 <_fflush_r>
   13464:	a0cfd06f          	j	10670 <_fwalk_reent>

0000000000013468 <__libc_fini_array>:
   13468:	1101                	addi	sp,sp,-32
   1346a:	e822                	sd	s0,16(sp)
   1346c:	67f9                	lui	a5,0x1e
   1346e:	6479                	lui	s0,0x1e
   13470:	61078793          	addi	a5,a5,1552 # 1e610 <__do_global_dtors_aux_fini_array_entry>
   13474:	61840413          	addi	s0,s0,1560 # 1e618 <impure_data>
   13478:	8c1d                	sub	s0,s0,a5
   1347a:	e426                	sd	s1,8(sp)
   1347c:	ec06                	sd	ra,24(sp)
   1347e:	40345493          	srai	s1,s0,0x3
   13482:	c881                	beqz	s1,13492 <__libc_fini_array+0x2a>
   13484:	1461                	addi	s0,s0,-8
   13486:	943e                	add	s0,s0,a5
   13488:	601c                	ld	a5,0(s0)
   1348a:	14fd                	addi	s1,s1,-1
   1348c:	1461                	addi	s0,s0,-8
   1348e:	9782                	jalr	a5
   13490:	fce5                	bnez	s1,13488 <__libc_fini_array+0x20>
   13492:	60e2                	ld	ra,24(sp)
   13494:	6442                	ld	s0,16(sp)
   13496:	64a2                	ld	s1,8(sp)
   13498:	6105                	addi	sp,sp,32
   1349a:	8082                	ret

000000000001349c <_malloc_trim_r>:
   1349c:	7179                	addi	sp,sp,-48
   1349e:	e44e                	sd	s3,8(sp)
   134a0:	0001f9b7          	lui	s3,0x1f
   134a4:	f022                	sd	s0,32(sp)
   134a6:	ec26                	sd	s1,24(sp)
   134a8:	e84a                	sd	s2,16(sp)
   134aa:	e052                	sd	s4,0(sp)
   134ac:	f406                	sd	ra,40(sp)
   134ae:	8a2e                	mv	s4,a1
   134b0:	892a                	mv	s2,a0
   134b2:	d6098993          	addi	s3,s3,-672 # 1ed60 <__malloc_av_>
   134b6:	ae7fd0ef          	jal	ra,10f9c <__malloc_lock>
   134ba:	0109b703          	ld	a4,16(s3)
   134be:	6785                	lui	a5,0x1
   134c0:	fdf78413          	addi	s0,a5,-33 # fdf <exit-0xf109>
   134c4:	6704                	ld	s1,8(a4)
   134c6:	41440433          	sub	s0,s0,s4
   134ca:	98f1                	andi	s1,s1,-4
   134cc:	9426                	add	s0,s0,s1
   134ce:	8031                	srli	s0,s0,0xc
   134d0:	147d                	addi	s0,s0,-1
   134d2:	0432                	slli	s0,s0,0xc
   134d4:	00f44b63          	blt	s0,a5,134ea <_malloc_trim_r+0x4e>
   134d8:	4581                	li	a1,0
   134da:	854a                	mv	a0,s2
   134dc:	d13fd0ef          	jal	ra,111ee <_sbrk_r>
   134e0:	0109b783          	ld	a5,16(s3)
   134e4:	97a6                	add	a5,a5,s1
   134e6:	00f50e63          	beq	a0,a5,13502 <_malloc_trim_r+0x66>
   134ea:	854a                	mv	a0,s2
   134ec:	ab3fd0ef          	jal	ra,10f9e <__malloc_unlock>
   134f0:	70a2                	ld	ra,40(sp)
   134f2:	7402                	ld	s0,32(sp)
   134f4:	64e2                	ld	s1,24(sp)
   134f6:	6942                	ld	s2,16(sp)
   134f8:	69a2                	ld	s3,8(sp)
   134fa:	6a02                	ld	s4,0(sp)
   134fc:	4501                	li	a0,0
   134fe:	6145                	addi	sp,sp,48
   13500:	8082                	ret
   13502:	408005b3          	neg	a1,s0
   13506:	854a                	mv	a0,s2
   13508:	ce7fd0ef          	jal	ra,111ee <_sbrk_r>
   1350c:	57fd                	li	a5,-1
   1350e:	02f50b63          	beq	a0,a5,13544 <_malloc_trim_r+0xa8>
   13512:	000207b7          	lui	a5,0x20
   13516:	8f878793          	addi	a5,a5,-1800 # 1f8f8 <__malloc_current_mallinfo>
   1351a:	4398                	lw	a4,0(a5)
   1351c:	0109b683          	ld	a3,16(s3)
   13520:	8c81                	sub	s1,s1,s0
   13522:	0014e493          	ori	s1,s1,1
   13526:	9f01                	subw	a4,a4,s0
   13528:	854a                	mv	a0,s2
   1352a:	e684                	sd	s1,8(a3)
   1352c:	c398                	sw	a4,0(a5)
   1352e:	a71fd0ef          	jal	ra,10f9e <__malloc_unlock>
   13532:	70a2                	ld	ra,40(sp)
   13534:	7402                	ld	s0,32(sp)
   13536:	64e2                	ld	s1,24(sp)
   13538:	6942                	ld	s2,16(sp)
   1353a:	69a2                	ld	s3,8(sp)
   1353c:	6a02                	ld	s4,0(sp)
   1353e:	4505                	li	a0,1
   13540:	6145                	addi	sp,sp,48
   13542:	8082                	ret
   13544:	4581                	li	a1,0
   13546:	854a                	mv	a0,s2
   13548:	ca7fd0ef          	jal	ra,111ee <_sbrk_r>
   1354c:	0109b703          	ld	a4,16(s3)
   13550:	46fd                	li	a3,31
   13552:	40e507b3          	sub	a5,a0,a4
   13556:	f8f6dae3          	bge	a3,a5,134ea <_malloc_trim_r+0x4e>
   1355a:	6481b683          	ld	a3,1608(gp) # 1f768 <__malloc_sbrk_base>
   1355e:	0017e793          	ori	a5,a5,1
   13562:	e71c                	sd	a5,8(a4)
   13564:	8d15                	sub	a0,a0,a3
   13566:	000206b7          	lui	a3,0x20
   1356a:	8ea6ac23          	sw	a0,-1800(a3) # 1f8f8 <__malloc_current_mallinfo>
   1356e:	bfb5                	j	134ea <_malloc_trim_r+0x4e>

0000000000013570 <_free_r>:
   13570:	c9e5                	beqz	a1,13660 <_free_r+0xf0>
   13572:	1101                	addi	sp,sp,-32
   13574:	e822                	sd	s0,16(sp)
   13576:	e426                	sd	s1,8(sp)
   13578:	842e                	mv	s0,a1
   1357a:	84aa                	mv	s1,a0
   1357c:	ec06                	sd	ra,24(sp)
   1357e:	a1ffd0ef          	jal	ra,10f9c <__malloc_lock>
   13582:	ff843503          	ld	a0,-8(s0)
   13586:	ff040713          	addi	a4,s0,-16
   1358a:	0001f5b7          	lui	a1,0x1f
   1358e:	ffe57793          	andi	a5,a0,-2
   13592:	00f70633          	add	a2,a4,a5
   13596:	d6058593          	addi	a1,a1,-672 # 1ed60 <__malloc_av_>
   1359a:	6614                	ld	a3,8(a2)
   1359c:	0105b803          	ld	a6,16(a1)
   135a0:	9af1                	andi	a3,a3,-4
   135a2:	14c80263          	beq	a6,a2,136e6 <_free_r+0x176>
   135a6:	e614                	sd	a3,8(a2)
   135a8:	8905                	andi	a0,a0,1
   135aa:	00d60833          	add	a6,a2,a3
   135ae:	e149                	bnez	a0,13630 <_free_r+0xc0>
   135b0:	ff043303          	ld	t1,-16(s0)
   135b4:	00883803          	ld	a6,8(a6)
   135b8:	0001f537          	lui	a0,0x1f
   135bc:	40670733          	sub	a4,a4,t1
   135c0:	01073883          	ld	a7,16(a4)
   135c4:	d7050513          	addi	a0,a0,-656 # 1ed70 <__malloc_av_+0x10>
   135c8:	979a                	add	a5,a5,t1
   135ca:	00187813          	andi	a6,a6,1
   135ce:	0ea88963          	beq	a7,a0,136c0 <_free_r+0x150>
   135d2:	01873303          	ld	t1,24(a4)
   135d6:	0068bc23          	sd	t1,24(a7)
   135da:	01133823          	sd	a7,16(t1)
   135de:	14080e63          	beqz	a6,1373a <_free_r+0x1ca>
   135e2:	0017e693          	ori	a3,a5,1
   135e6:	e714                	sd	a3,8(a4)
   135e8:	e21c                	sd	a5,0(a2)
   135ea:	1ff00693          	li	a3,511
   135ee:	08f6e363          	bltu	a3,a5,13674 <_free_r+0x104>
   135f2:	838d                	srli	a5,a5,0x3
   135f4:	0017869b          	addiw	a3,a5,1
   135f8:	0016969b          	slliw	a3,a3,0x1
   135fc:	068e                	slli	a3,a3,0x3
   135fe:	0085b803          	ld	a6,8(a1)
   13602:	96ae                	add	a3,a3,a1
   13604:	6288                	ld	a0,0(a3)
   13606:	4027d61b          	sraiw	a2,a5,0x2
   1360a:	4785                	li	a5,1
   1360c:	00c797b3          	sll	a5,a5,a2
   13610:	0107e7b3          	or	a5,a5,a6
   13614:	ff068613          	addi	a2,a3,-16
   13618:	ef10                	sd	a2,24(a4)
   1361a:	eb08                	sd	a0,16(a4)
   1361c:	e59c                	sd	a5,8(a1)
   1361e:	e298                	sd	a4,0(a3)
   13620:	ed18                	sd	a4,24(a0)
   13622:	6442                	ld	s0,16(sp)
   13624:	60e2                	ld	ra,24(sp)
   13626:	8526                	mv	a0,s1
   13628:	64a2                	ld	s1,8(sp)
   1362a:	6105                	addi	sp,sp,32
   1362c:	973fd06f          	j	10f9e <__malloc_unlock>
   13630:	00883503          	ld	a0,8(a6)
   13634:	8905                	andi	a0,a0,1
   13636:	e515                	bnez	a0,13662 <_free_r+0xf2>
   13638:	0001f537          	lui	a0,0x1f
   1363c:	97b6                	add	a5,a5,a3
   1363e:	d7050513          	addi	a0,a0,-656 # 1ed70 <__malloc_av_+0x10>
   13642:	6a14                	ld	a3,16(a2)
   13644:	0017e893          	ori	a7,a5,1
   13648:	00f70833          	add	a6,a4,a5
   1364c:	10a68163          	beq	a3,a0,1374e <_free_r+0x1de>
   13650:	6e10                	ld	a2,24(a2)
   13652:	ee90                	sd	a2,24(a3)
   13654:	ea14                	sd	a3,16(a2)
   13656:	01173423          	sd	a7,8(a4)
   1365a:	00f83023          	sd	a5,0(a6)
   1365e:	b771                	j	135ea <_free_r+0x7a>
   13660:	8082                	ret
   13662:	0017e693          	ori	a3,a5,1
   13666:	fed43c23          	sd	a3,-8(s0)
   1366a:	e21c                	sd	a5,0(a2)
   1366c:	1ff00693          	li	a3,511
   13670:	f8f6f1e3          	bgeu	a3,a5,135f2 <_free_r+0x82>
   13674:	0097d693          	srli	a3,a5,0x9
   13678:	4611                	li	a2,4
   1367a:	08d66f63          	bltu	a2,a3,13718 <_free_r+0x1a8>
   1367e:	0067d693          	srli	a3,a5,0x6
   13682:	0396851b          	addiw	a0,a3,57
   13686:	0015151b          	slliw	a0,a0,0x1
   1368a:	0386861b          	addiw	a2,a3,56
   1368e:	050e                	slli	a0,a0,0x3
   13690:	952e                	add	a0,a0,a1
   13692:	6114                	ld	a3,0(a0)
   13694:	1541                	addi	a0,a0,-16
   13696:	0cd50563          	beq	a0,a3,13760 <_free_r+0x1f0>
   1369a:	6690                	ld	a2,8(a3)
   1369c:	9a71                	andi	a2,a2,-4
   1369e:	00c7f563          	bgeu	a5,a2,136a8 <_free_r+0x138>
   136a2:	6a94                	ld	a3,16(a3)
   136a4:	fed51be3          	bne	a0,a3,1369a <_free_r+0x12a>
   136a8:	6e88                	ld	a0,24(a3)
   136aa:	ef08                	sd	a0,24(a4)
   136ac:	eb14                	sd	a3,16(a4)
   136ae:	6442                	ld	s0,16(sp)
   136b0:	e918                	sd	a4,16(a0)
   136b2:	60e2                	ld	ra,24(sp)
   136b4:	8526                	mv	a0,s1
   136b6:	64a2                	ld	s1,8(sp)
   136b8:	ee98                	sd	a4,24(a3)
   136ba:	6105                	addi	sp,sp,32
   136bc:	8e3fd06f          	j	10f9e <__malloc_unlock>
   136c0:	0e081c63          	bnez	a6,137b8 <_free_r+0x248>
   136c4:	6e0c                	ld	a1,24(a2)
   136c6:	6a10                	ld	a2,16(a2)
   136c8:	96be                	add	a3,a3,a5
   136ca:	6442                	ld	s0,16(sp)
   136cc:	ee0c                	sd	a1,24(a2)
   136ce:	e990                	sd	a2,16(a1)
   136d0:	0016e793          	ori	a5,a3,1
   136d4:	60e2                	ld	ra,24(sp)
   136d6:	e71c                	sd	a5,8(a4)
   136d8:	8526                	mv	a0,s1
   136da:	9736                	add	a4,a4,a3
   136dc:	64a2                	ld	s1,8(sp)
   136de:	e314                	sd	a3,0(a4)
   136e0:	6105                	addi	sp,sp,32
   136e2:	8bdfd06f          	j	10f9e <__malloc_unlock>
   136e6:	8905                	andi	a0,a0,1
   136e8:	96be                	add	a3,a3,a5
   136ea:	e909                	bnez	a0,136fc <_free_r+0x18c>
   136ec:	ff043503          	ld	a0,-16(s0)
   136f0:	8f09                	sub	a4,a4,a0
   136f2:	6f1c                	ld	a5,24(a4)
   136f4:	6b10                	ld	a2,16(a4)
   136f6:	96aa                	add	a3,a3,a0
   136f8:	ee1c                	sd	a5,24(a2)
   136fa:	eb90                	sd	a2,16(a5)
   136fc:	0016e613          	ori	a2,a3,1
   13700:	6501b783          	ld	a5,1616(gp) # 1f770 <__malloc_trim_threshold>
   13704:	e710                	sd	a2,8(a4)
   13706:	e998                	sd	a4,16(a1)
   13708:	f0f6ede3          	bltu	a3,a5,13622 <_free_r+0xb2>
   1370c:	6801b583          	ld	a1,1664(gp) # 1f7a0 <__malloc_top_pad>
   13710:	8526                	mv	a0,s1
   13712:	d8bff0ef          	jal	ra,1349c <_malloc_trim_r>
   13716:	b731                	j	13622 <_free_r+0xb2>
   13718:	4651                	li	a2,20
   1371a:	02d67263          	bgeu	a2,a3,1373e <_free_r+0x1ce>
   1371e:	05400613          	li	a2,84
   13722:	04d66a63          	bltu	a2,a3,13776 <_free_r+0x206>
   13726:	00c7d693          	srli	a3,a5,0xc
   1372a:	06f6851b          	addiw	a0,a3,111
   1372e:	0015151b          	slliw	a0,a0,0x1
   13732:	06e6861b          	addiw	a2,a3,110
   13736:	050e                	slli	a0,a0,0x3
   13738:	bfa1                	j	13690 <_free_r+0x120>
   1373a:	97b6                	add	a5,a5,a3
   1373c:	b719                	j	13642 <_free_r+0xd2>
   1373e:	05c6851b          	addiw	a0,a3,92
   13742:	0015151b          	slliw	a0,a0,0x1
   13746:	05b6861b          	addiw	a2,a3,91
   1374a:	050e                	slli	a0,a0,0x3
   1374c:	b791                	j	13690 <_free_r+0x120>
   1374e:	f598                	sd	a4,40(a1)
   13750:	f198                	sd	a4,32(a1)
   13752:	ef08                	sd	a0,24(a4)
   13754:	eb08                	sd	a0,16(a4)
   13756:	01173423          	sd	a7,8(a4)
   1375a:	00f83023          	sd	a5,0(a6)
   1375e:	b5d1                	j	13622 <_free_r+0xb2>
   13760:	0085b803          	ld	a6,8(a1)
   13764:	4026561b          	sraiw	a2,a2,0x2
   13768:	4785                	li	a5,1
   1376a:	00c797b3          	sll	a5,a5,a2
   1376e:	0107e7b3          	or	a5,a5,a6
   13772:	e59c                	sd	a5,8(a1)
   13774:	bf1d                	j	136aa <_free_r+0x13a>
   13776:	15400613          	li	a2,340
   1377a:	00d66c63          	bltu	a2,a3,13792 <_free_r+0x222>
   1377e:	00f7d693          	srli	a3,a5,0xf
   13782:	0786851b          	addiw	a0,a3,120
   13786:	0015151b          	slliw	a0,a0,0x1
   1378a:	0776861b          	addiw	a2,a3,119
   1378e:	050e                	slli	a0,a0,0x3
   13790:	b701                	j	13690 <_free_r+0x120>
   13792:	55400613          	li	a2,1364
   13796:	00d66c63          	bltu	a2,a3,137ae <_free_r+0x23e>
   1379a:	0127d693          	srli	a3,a5,0x12
   1379e:	07d6851b          	addiw	a0,a3,125
   137a2:	0015151b          	slliw	a0,a0,0x1
   137a6:	07c6861b          	addiw	a2,a3,124
   137aa:	050e                	slli	a0,a0,0x3
   137ac:	b5d5                	j	13690 <_free_r+0x120>
   137ae:	7f000513          	li	a0,2032
   137b2:	07e00613          	li	a2,126
   137b6:	bde9                	j	13690 <_free_r+0x120>
   137b8:	0017e693          	ori	a3,a5,1
   137bc:	e714                	sd	a3,8(a4)
   137be:	e21c                	sd	a5,0(a2)
   137c0:	b58d                	j	13622 <_free_r+0xb2>

00000000000137c2 <__sfvwrite_r>:
   137c2:	6a1c                	ld	a5,16(a2)
   137c4:	1a078b63          	beqz	a5,1397a <__sfvwrite_r+0x1b8>
   137c8:	0105d683          	lhu	a3,16(a1)
   137cc:	711d                	addi	sp,sp,-96
   137ce:	e8a2                	sd	s0,80(sp)
   137d0:	f852                	sd	s4,48(sp)
   137d2:	f456                	sd	s5,40(sp)
   137d4:	ec86                	sd	ra,88(sp)
   137d6:	e4a6                	sd	s1,72(sp)
   137d8:	e0ca                	sd	s2,64(sp)
   137da:	fc4e                	sd	s3,56(sp)
   137dc:	f05a                	sd	s6,32(sp)
   137de:	ec5e                	sd	s7,24(sp)
   137e0:	e862                	sd	s8,16(sp)
   137e2:	e466                	sd	s9,8(sp)
   137e4:	e06a                	sd	s10,0(sp)
   137e6:	0086f793          	andi	a5,a3,8
   137ea:	8a32                	mv	s4,a2
   137ec:	8aaa                	mv	s5,a0
   137ee:	842e                	mv	s0,a1
   137f0:	cfb9                	beqz	a5,1384e <__sfvwrite_r+0x8c>
   137f2:	6d9c                	ld	a5,24(a1)
   137f4:	cfa9                	beqz	a5,1384e <__sfvwrite_r+0x8c>
   137f6:	0026f793          	andi	a5,a3,2
   137fa:	000a3903          	ld	s2,0(s4)
   137fe:	c7ad                	beqz	a5,13868 <__sfvwrite_r+0xa6>
   13800:	603c                	ld	a5,64(s0)
   13802:	780c                	ld	a1,48(s0)
   13804:	80000b37          	lui	s6,0x80000
   13808:	4981                	li	s3,0
   1380a:	4481                	li	s1,0
   1380c:	c00b4b13          	xori	s6,s6,-1024
   13810:	864e                	mv	a2,s3
   13812:	8556                	mv	a0,s5
   13814:	c49d                	beqz	s1,13842 <__sfvwrite_r+0x80>
   13816:	86a6                	mv	a3,s1
   13818:	009b7363          	bgeu	s6,s1,1381e <__sfvwrite_r+0x5c>
   1381c:	86da                	mv	a3,s6
   1381e:	2681                	sext.w	a3,a3
   13820:	9782                	jalr	a5
   13822:	14a05463          	blez	a0,1396a <__sfvwrite_r+0x1a8>
   13826:	010a3783          	ld	a5,16(s4)
   1382a:	99aa                	add	s3,s3,a0
   1382c:	8c89                	sub	s1,s1,a0
   1382e:	8f89                	sub	a5,a5,a0
   13830:	00fa3823          	sd	a5,16(s4)
   13834:	10078763          	beqz	a5,13942 <__sfvwrite_r+0x180>
   13838:	603c                	ld	a5,64(s0)
   1383a:	780c                	ld	a1,48(s0)
   1383c:	864e                	mv	a2,s3
   1383e:	8556                	mv	a0,s5
   13840:	f8f9                	bnez	s1,13816 <__sfvwrite_r+0x54>
   13842:	00093983          	ld	s3,0(s2)
   13846:	00893483          	ld	s1,8(s2)
   1384a:	0941                	addi	s2,s2,16
   1384c:	b7d1                	j	13810 <__sfvwrite_r+0x4e>
   1384e:	85a2                	mv	a1,s0
   13850:	8556                	mv	a0,s5
   13852:	f50ff0ef          	jal	ra,12fa2 <__swsetup_r>
   13856:	28051b63          	bnez	a0,13aec <__sfvwrite_r+0x32a>
   1385a:	01045683          	lhu	a3,16(s0)
   1385e:	000a3903          	ld	s2,0(s4)
   13862:	0026f793          	andi	a5,a3,2
   13866:	ffc9                	bnez	a5,13800 <__sfvwrite_r+0x3e>
   13868:	0016f793          	andi	a5,a3,1
   1386c:	ebbd                	bnez	a5,138e2 <__sfvwrite_r+0x120>
   1386e:	4444                	lw	s1,12(s0)
   13870:	601c                	ld	a5,0(s0)
   13872:	80000b37          	lui	s6,0x80000
   13876:	ffeb4b93          	xori	s7,s6,-2
   1387a:	4c01                	li	s8,0
   1387c:	4981                	li	s3,0
   1387e:	fffb4b13          	not	s6,s6
   13882:	853e                	mv	a0,a5
   13884:	8ca6                	mv	s9,s1
   13886:	04098863          	beqz	s3,138d6 <__sfvwrite_r+0x114>
   1388a:	2006f713          	andi	a4,a3,512
   1388e:	12070a63          	beqz	a4,139c2 <__sfvwrite_r+0x200>
   13892:	8d26                	mv	s10,s1
   13894:	1899f863          	bgeu	s3,s1,13a24 <__sfvwrite_r+0x262>
   13898:	8cce                	mv	s9,s3
   1389a:	8d4e                	mv	s10,s3
   1389c:	866a                	mv	a2,s10
   1389e:	85e2                	mv	a1,s8
   138a0:	48a020ef          	jal	ra,15d2a <memmove>
   138a4:	4458                	lw	a4,12(s0)
   138a6:	601c                	ld	a5,0(s0)
   138a8:	84ce                	mv	s1,s3
   138aa:	4197073b          	subw	a4,a4,s9
   138ae:	9d3e                	add	s10,s10,a5
   138b0:	c458                	sw	a4,12(s0)
   138b2:	01a43023          	sd	s10,0(s0)
   138b6:	4981                	li	s3,0
   138b8:	010a3783          	ld	a5,16(s4)
   138bc:	9c26                	add	s8,s8,s1
   138be:	8f85                	sub	a5,a5,s1
   138c0:	00fa3823          	sd	a5,16(s4)
   138c4:	cfbd                	beqz	a5,13942 <__sfvwrite_r+0x180>
   138c6:	4444                	lw	s1,12(s0)
   138c8:	601c                	ld	a5,0(s0)
   138ca:	01045683          	lhu	a3,16(s0)
   138ce:	8ca6                	mv	s9,s1
   138d0:	853e                	mv	a0,a5
   138d2:	fa099ce3          	bnez	s3,1388a <__sfvwrite_r+0xc8>
   138d6:	00093c03          	ld	s8,0(s2)
   138da:	00893983          	ld	s3,8(s2)
   138de:	0941                	addi	s2,s2,16
   138e0:	b74d                	j	13882 <__sfvwrite_r+0xc0>
   138e2:	4b81                	li	s7,0
   138e4:	4501                	li	a0,0
   138e6:	4c81                	li	s9,0
   138e8:	4c01                	li	s8,0
   138ea:	080c0a63          	beqz	s8,1397e <__sfvwrite_r+0x1bc>
   138ee:	c145                	beqz	a0,1398e <__sfvwrite_r+0x1cc>
   138f0:	8b5e                	mv	s6,s7
   138f2:	017c7363          	bgeu	s8,s7,138f8 <__sfvwrite_r+0x136>
   138f6:	8b62                	mv	s6,s8
   138f8:	6008                	ld	a0,0(s0)
   138fa:	6c18                	ld	a4,24(s0)
   138fc:	445c                	lw	a5,12(s0)
   138fe:	5014                	lw	a3,32(s0)
   13900:	84da                	mv	s1,s6
   13902:	00a77663          	bgeu	a4,a0,1390e <__sfvwrite_r+0x14c>
   13906:	00d789bb          	addw	s3,a5,a3
   1390a:	0969cd63          	blt	s3,s6,139a4 <__sfvwrite_r+0x1e2>
   1390e:	18db4663          	blt	s6,a3,13a9a <__sfvwrite_r+0x2d8>
   13912:	603c                	ld	a5,64(s0)
   13914:	780c                	ld	a1,48(s0)
   13916:	8666                	mv	a2,s9
   13918:	8556                	mv	a0,s5
   1391a:	9782                	jalr	a5
   1391c:	84aa                	mv	s1,a0
   1391e:	04a05663          	blez	a0,1396a <__sfvwrite_r+0x1a8>
   13922:	0005079b          	sext.w	a5,a0
   13926:	40fb8bbb          	subw	s7,s7,a5
   1392a:	4505                	li	a0,1
   1392c:	020b8a63          	beqz	s7,13960 <__sfvwrite_r+0x19e>
   13930:	010a3783          	ld	a5,16(s4)
   13934:	9ca6                	add	s9,s9,s1
   13936:	409c0c33          	sub	s8,s8,s1
   1393a:	8f85                	sub	a5,a5,s1
   1393c:	00fa3823          	sd	a5,16(s4)
   13940:	f7cd                	bnez	a5,138ea <__sfvwrite_r+0x128>
   13942:	4501                	li	a0,0
   13944:	60e6                	ld	ra,88(sp)
   13946:	6446                	ld	s0,80(sp)
   13948:	64a6                	ld	s1,72(sp)
   1394a:	6906                	ld	s2,64(sp)
   1394c:	79e2                	ld	s3,56(sp)
   1394e:	7a42                	ld	s4,48(sp)
   13950:	7aa2                	ld	s5,40(sp)
   13952:	7b02                	ld	s6,32(sp)
   13954:	6be2                	ld	s7,24(sp)
   13956:	6c42                	ld	s8,16(sp)
   13958:	6ca2                	ld	s9,8(sp)
   1395a:	6d02                	ld	s10,0(sp)
   1395c:	6125                	addi	sp,sp,96
   1395e:	8082                	ret
   13960:	85a2                	mv	a1,s0
   13962:	8556                	mv	a0,s5
   13964:	a83ff0ef          	jal	ra,133e6 <_fflush_r>
   13968:	d561                	beqz	a0,13930 <__sfvwrite_r+0x16e>
   1396a:	01041783          	lh	a5,16(s0)
   1396e:	0407e793          	ori	a5,a5,64
   13972:	00f41823          	sh	a5,16(s0)
   13976:	557d                	li	a0,-1
   13978:	b7f1                	j	13944 <__sfvwrite_r+0x182>
   1397a:	4501                	li	a0,0
   1397c:	8082                	ret
   1397e:	00893c03          	ld	s8,8(s2)
   13982:	87ca                	mv	a5,s2
   13984:	0941                	addi	s2,s2,16
   13986:	fe0c0ce3          	beqz	s8,1397e <__sfvwrite_r+0x1bc>
   1398a:	0007bc83          	ld	s9,0(a5)
   1398e:	8662                	mv	a2,s8
   13990:	45a9                	li	a1,10
   13992:	8566                	mv	a0,s9
   13994:	be8fd0ef          	jal	ra,10d7c <memchr>
   13998:	14050163          	beqz	a0,13ada <__sfvwrite_r+0x318>
   1399c:	0505                	addi	a0,a0,1
   1399e:	41950bbb          	subw	s7,a0,s9
   139a2:	b7b9                	j	138f0 <__sfvwrite_r+0x12e>
   139a4:	85e6                	mv	a1,s9
   139a6:	864e                	mv	a2,s3
   139a8:	382020ef          	jal	ra,15d2a <memmove>
   139ac:	601c                	ld	a5,0(s0)
   139ae:	85a2                	mv	a1,s0
   139b0:	8556                	mv	a0,s5
   139b2:	97ce                	add	a5,a5,s3
   139b4:	e01c                	sd	a5,0(s0)
   139b6:	a31ff0ef          	jal	ra,133e6 <_fflush_r>
   139ba:	f945                	bnez	a0,1396a <__sfvwrite_r+0x1a8>
   139bc:	87ce                	mv	a5,s3
   139be:	84ce                	mv	s1,s3
   139c0:	b79d                	j	13926 <__sfvwrite_r+0x164>
   139c2:	6c18                	ld	a4,24(s0)
   139c4:	02f76863          	bltu	a4,a5,139f4 <__sfvwrite_r+0x232>
   139c8:	5018                	lw	a4,32(s0)
   139ca:	02e9e563          	bltu	s3,a4,139f4 <__sfvwrite_r+0x232>
   139ce:	86ce                	mv	a3,s3
   139d0:	013bf363          	bgeu	s7,s3,139d6 <__sfvwrite_r+0x214>
   139d4:	86da                	mv	a3,s6
   139d6:	02e6c6bb          	divw	a3,a3,a4
   139da:	603c                	ld	a5,64(s0)
   139dc:	780c                	ld	a1,48(s0)
   139de:	8662                	mv	a2,s8
   139e0:	8556                	mv	a0,s5
   139e2:	02e686bb          	mulw	a3,a3,a4
   139e6:	9782                	jalr	a5
   139e8:	84aa                	mv	s1,a0
   139ea:	f8a050e3          	blez	a0,1396a <__sfvwrite_r+0x1a8>
   139ee:	409989b3          	sub	s3,s3,s1
   139f2:	b5d9                	j	138b8 <__sfvwrite_r+0xf6>
   139f4:	0099f363          	bgeu	s3,s1,139fa <__sfvwrite_r+0x238>
   139f8:	84ce                	mv	s1,s3
   139fa:	853e                	mv	a0,a5
   139fc:	8626                	mv	a2,s1
   139fe:	85e2                	mv	a1,s8
   13a00:	32a020ef          	jal	ra,15d2a <memmove>
   13a04:	4458                	lw	a4,12(s0)
   13a06:	601c                	ld	a5,0(s0)
   13a08:	409706bb          	subw	a3,a4,s1
   13a0c:	97a6                	add	a5,a5,s1
   13a0e:	c454                	sw	a3,12(s0)
   13a10:	e01c                	sd	a5,0(s0)
   13a12:	fef1                	bnez	a3,139ee <__sfvwrite_r+0x22c>
   13a14:	85a2                	mv	a1,s0
   13a16:	8556                	mv	a0,s5
   13a18:	9cfff0ef          	jal	ra,133e6 <_fflush_r>
   13a1c:	f539                	bnez	a0,1396a <__sfvwrite_r+0x1a8>
   13a1e:	409989b3          	sub	s3,s3,s1
   13a22:	bd59                	j	138b8 <__sfvwrite_r+0xf6>
   13a24:	4806f713          	andi	a4,a3,1152
   13a28:	e6070ae3          	beqz	a4,1389c <__sfvwrite_r+0xda>
   13a2c:	5010                	lw	a2,32(s0)
   13a2e:	6c0c                	ld	a1,24(s0)
   13a30:	0016171b          	slliw	a4,a2,0x1
   13a34:	9f31                	addw	a4,a4,a2
   13a36:	8f8d                	sub	a5,a5,a1
   13a38:	01f7549b          	srliw	s1,a4,0x1f
   13a3c:	00078d1b          	sext.w	s10,a5
   13a40:	9cb9                	addw	s1,s1,a4
   13a42:	001d0713          	addi	a4,s10,1
   13a46:	4014d49b          	sraiw	s1,s1,0x1
   13a4a:	974e                	add	a4,a4,s3
   13a4c:	00e4f663          	bgeu	s1,a4,13a58 <__sfvwrite_r+0x296>
   13a50:	0017871b          	addiw	a4,a5,1
   13a54:	013704bb          	addw	s1,a4,s3
   13a58:	4006f693          	andi	a3,a3,1024
   13a5c:	cea9                	beqz	a3,13ab6 <__sfvwrite_r+0x2f4>
   13a5e:	85a6                	mv	a1,s1
   13a60:	8556                	mv	a0,s5
   13a62:	d03fc0ef          	jal	ra,10764 <_malloc_r>
   13a66:	8caa                	mv	s9,a0
   13a68:	cd25                	beqz	a0,13ae0 <__sfvwrite_r+0x31e>
   13a6a:	6c0c                	ld	a1,24(s0)
   13a6c:	866a                	mv	a2,s10
   13a6e:	b9cfd0ef          	jal	ra,10e0a <memcpy>
   13a72:	01045783          	lhu	a5,16(s0)
   13a76:	b7f7f793          	andi	a5,a5,-1153
   13a7a:	0807e793          	ori	a5,a5,128
   13a7e:	00f41823          	sh	a5,16(s0)
   13a82:	01ac8533          	add	a0,s9,s10
   13a86:	41a487bb          	subw	a5,s1,s10
   13a8a:	01943c23          	sd	s9,24(s0)
   13a8e:	e008                	sd	a0,0(s0)
   13a90:	d004                	sw	s1,32(s0)
   13a92:	8cce                	mv	s9,s3
   13a94:	c45c                	sw	a5,12(s0)
   13a96:	8d4e                	mv	s10,s3
   13a98:	b511                	j	1389c <__sfvwrite_r+0xda>
   13a9a:	865a                	mv	a2,s6
   13a9c:	85e6                	mv	a1,s9
   13a9e:	28c020ef          	jal	ra,15d2a <memmove>
   13aa2:	4454                	lw	a3,12(s0)
   13aa4:	6018                	ld	a4,0(s0)
   13aa6:	000b079b          	sext.w	a5,s6
   13aaa:	416686bb          	subw	a3,a3,s6
   13aae:	975a                	add	a4,a4,s6
   13ab0:	c454                	sw	a3,12(s0)
   13ab2:	e018                	sd	a4,0(s0)
   13ab4:	bd8d                	j	13926 <__sfvwrite_r+0x164>
   13ab6:	8626                	mv	a2,s1
   13ab8:	8556                	mv	a0,s5
   13aba:	028030ef          	jal	ra,16ae2 <_realloc_r>
   13abe:	8caa                	mv	s9,a0
   13ac0:	f169                	bnez	a0,13a82 <__sfvwrite_r+0x2c0>
   13ac2:	6c0c                	ld	a1,24(s0)
   13ac4:	8556                	mv	a0,s5
   13ac6:	aabff0ef          	jal	ra,13570 <_free_r>
   13aca:	01041783          	lh	a5,16(s0)
   13ace:	4731                	li	a4,12
   13ad0:	00eaa023          	sw	a4,0(s5)
   13ad4:	f7f7f793          	andi	a5,a5,-129
   13ad8:	bd59                	j	1396e <__sfvwrite_r+0x1ac>
   13ada:	001c0b9b          	addiw	s7,s8,1
   13ade:	bd09                	j	138f0 <__sfvwrite_r+0x12e>
   13ae0:	4731                	li	a4,12
   13ae2:	01041783          	lh	a5,16(s0)
   13ae6:	00eaa023          	sw	a4,0(s5)
   13aea:	b551                	j	1396e <__sfvwrite_r+0x1ac>
   13aec:	557d                	li	a0,-1
   13aee:	bd99                	j	13944 <__sfvwrite_r+0x182>

0000000000013af0 <eshdn1>:
   13af0:	00450693          	addi	a3,a0,4
   13af4:	4781                	li	a5,0
   13af6:	0569                	addi	a0,a0,26
   13af8:	7861                	lui	a6,0xffff8
   13afa:	a811                	j	13b0e <eshdn1+0x1e>
   13afc:	0017979b          	slliw	a5,a5,0x1
   13b00:	00e69023          	sh	a4,0(a3)
   13b04:	17c2                	slli	a5,a5,0x30
   13b06:	0689                	addi	a3,a3,2
   13b08:	93c1                	srli	a5,a5,0x30
   13b0a:	02d50863          	beq	a0,a3,13b3a <eshdn1+0x4a>
   13b0e:	0006d703          	lhu	a4,0(a3)
   13b12:	00177613          	andi	a2,a4,1
   13b16:	c219                	beqz	a2,13b1c <eshdn1+0x2c>
   13b18:	0017e793          	ori	a5,a5,1
   13b1c:	8305                	srli	a4,a4,0x1
   13b1e:	0027f613          	andi	a2,a5,2
   13b22:	010765b3          	or	a1,a4,a6
   13b26:	da79                	beqz	a2,13afc <eshdn1+0xc>
   13b28:	0017979b          	slliw	a5,a5,0x1
   13b2c:	00b69023          	sh	a1,0(a3)
   13b30:	17c2                	slli	a5,a5,0x30
   13b32:	0689                	addi	a3,a3,2
   13b34:	93c1                	srli	a5,a5,0x30
   13b36:	fcd51ce3          	bne	a0,a3,13b0e <eshdn1+0x1e>
   13b3a:	8082                	ret

0000000000013b3c <eshup1>:
   13b3c:	01850693          	addi	a3,a0,24
   13b40:	4701                	li	a4,0
   13b42:	0509                	addi	a0,a0,2
   13b44:	a811                	j	13b58 <eshup1+0x1c>
   13b46:	0017171b          	slliw	a4,a4,0x1
   13b4a:	00f69023          	sh	a5,0(a3)
   13b4e:	1742                	slli	a4,a4,0x30
   13b50:	16f9                	addi	a3,a3,-2
   13b52:	9341                	srli	a4,a4,0x30
   13b54:	02d50b63          	beq	a0,a3,13b8a <eshup1+0x4e>
   13b58:	0006d783          	lhu	a5,0(a3)
   13b5c:	00f7d613          	srli	a2,a5,0xf
   13b60:	0017979b          	slliw	a5,a5,0x1
   13b64:	c219                	beqz	a2,13b6a <eshup1+0x2e>
   13b66:	00176713          	ori	a4,a4,1
   13b6a:	17c2                	slli	a5,a5,0x30
   13b6c:	93c1                	srli	a5,a5,0x30
   13b6e:	00277613          	andi	a2,a4,2
   13b72:	0017e593          	ori	a1,a5,1
   13b76:	da61                	beqz	a2,13b46 <eshup1+0xa>
   13b78:	0017171b          	slliw	a4,a4,0x1
   13b7c:	00b69023          	sh	a1,0(a3)
   13b80:	1742                	slli	a4,a4,0x30
   13b82:	16f9                	addi	a3,a3,-2
   13b84:	9341                	srli	a4,a4,0x30
   13b86:	fcd519e3          	bne	a0,a3,13b58 <eshup1+0x1c>
   13b8a:	8082                	ret

0000000000013b8c <m16m>:
   13b8c:	1101                	addi	sp,sp,-32
   13b8e:	6e41                	lui	t3,0x10
   13b90:	00011b23          	sh	zero,22(sp)
   13b94:	00011c23          	sh	zero,24(sp)
   13b98:	05e1                	addi	a1,a1,24
   13b9a:	083c                	addi	a5,sp,24
   13b9c:	00410813          	addi	a6,sp,4
   13ba0:	1e7d                	addi	t3,t3,-1 # ffff <exit-0xe9>
   13ba2:	0005d703          	lhu	a4,0(a1)
   13ba6:	17f9                	addi	a5,a5,-2
   13ba8:	15f9                	addi	a1,a1,-2
   13baa:	c705                	beqz	a4,13bd2 <m16m+0x46>
   13bac:	02a70733          	mul	a4,a4,a0
   13bb0:	0027d883          	lhu	a7,2(a5)
   13bb4:	0007d303          	lhu	t1,0(a5)
   13bb8:	01c776b3          	and	a3,a4,t3
   13bbc:	96c6                	add	a3,a3,a7
   13bbe:	8341                	srli	a4,a4,0x10
   13bc0:	0106d893          	srli	a7,a3,0x10
   13bc4:	971a                	add	a4,a4,t1
   13bc6:	9746                	add	a4,a4,a7
   13bc8:	00e79023          	sh	a4,0(a5)
   13bcc:	00d79123          	sh	a3,2(a5)
   13bd0:	8341                	srli	a4,a4,0x10
   13bd2:	fee79f23          	sh	a4,-2(a5)
   13bd6:	fd0796e3          	bne	a5,a6,13ba2 <m16m+0x16>
   13bda:	0611                	addi	a2,a2,4
   13bdc:	01a10693          	addi	a3,sp,26
   13be0:	0007d703          	lhu	a4,0(a5)
   13be4:	0789                	addi	a5,a5,2
   13be6:	0609                	addi	a2,a2,2
   13be8:	fee61f23          	sh	a4,-2(a2)
   13bec:	fed79ae3          	bne	a5,a3,13be0 <m16m+0x54>
   13bf0:	6105                	addi	sp,sp,32
   13bf2:	8082                	ret

0000000000013bf4 <emovo.constprop.0>:
   13bf4:	00055703          	lhu	a4,0(a0)
   13bf8:	00255783          	lhu	a5,2(a0)
   13bfc:	c319                	beqz	a4,13c02 <emovo.constprop.0+0xe>
   13bfe:	6721                	lui	a4,0x8
   13c00:	8fd9                	or	a5,a5,a4
   13c02:	00f59923          	sh	a5,18(a1)
   13c06:	00255703          	lhu	a4,2(a0)
   13c0a:	67a1                	lui	a5,0x8
   13c0c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13c0e:	00f70f63          	beq	a4,a5,13c2c <emovo.constprop.0+0x38>
   13c12:	00650793          	addi	a5,a0,6
   13c16:	05c1                	addi	a1,a1,16
   13c18:	0561                	addi	a0,a0,24
   13c1a:	0007d703          	lhu	a4,0(a5)
   13c1e:	0789                	addi	a5,a5,2
   13c20:	15f9                	addi	a1,a1,-2
   13c22:	00e59123          	sh	a4,2(a1)
   13c26:	fea79ae3          	bne	a5,a0,13c1a <emovo.constprop.0+0x26>
   13c2a:	8082                	ret
   13c2c:	00650793          	addi	a5,a0,6
   13c30:	0569                	addi	a0,a0,26
   13c32:	0007d703          	lhu	a4,0(a5)
   13c36:	0789                	addi	a5,a5,2
   13c38:	e31d                	bnez	a4,13c5e <emovo.constprop.0+0x6a>
   13c3a:	fea79ce3          	bne	a5,a0,13c32 <emovo.constprop.0+0x3e>
   13c3e:	01258713          	addi	a4,a1,18
   13c42:	87ae                	mv	a5,a1
   13c44:	0789                	addi	a5,a5,2
   13c46:	fe079f23          	sh	zero,-2(a5)
   13c4a:	fef71de3          	bne	a4,a5,13c44 <emovo.constprop.0+0x50>
   13c4e:	0125d783          	lhu	a5,18(a1)
   13c52:	6721                	lui	a4,0x8
   13c54:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   13c56:	8fd9                	or	a5,a5,a4
   13c58:	00f59923          	sh	a5,18(a1)
   13c5c:	8082                	ret
   13c5e:	01058713          	addi	a4,a1,16
   13c62:	87ae                	mv	a5,a1
   13c64:	0789                	addi	a5,a5,2
   13c66:	fe079f23          	sh	zero,-2(a5)
   13c6a:	fef71de3          	bne	a4,a5,13c64 <emovo.constprop.0+0x70>
   13c6e:	77f1                	lui	a5,0xffffc
   13c70:	00f59823          	sh	a5,16(a1)
   13c74:	77e1                	lui	a5,0xffff8
   13c76:	fff7c793          	not	a5,a5
   13c7a:	00f59923          	sh	a5,18(a1)
   13c7e:	8082                	ret

0000000000013c80 <enormlz>:
   13c80:	00455783          	lhu	a5,4(a0)
   13c84:	1101                	addi	sp,sp,-32
   13c86:	e426                	sd	s1,8(sp)
   13c88:	ec06                	sd	ra,24(sp)
   13c8a:	e822                	sd	s0,16(sp)
   13c8c:	e04a                	sd	s2,0(sp)
   13c8e:	84aa                	mv	s1,a0
   13c90:	efc9                	bnez	a5,13d2a <enormlz+0xaa>
   13c92:	00655703          	lhu	a4,6(a0)
   13c96:	4401                	li	s0,0
   13c98:	00f75793          	srli	a5,a4,0xf
   13c9c:	e3c1                	bnez	a5,13d1c <enormlz+0x9c>
   13c9e:	01a50693          	addi	a3,a0,26
   13ca2:	0a000613          	li	a2,160
   13ca6:	e31d                	bnez	a4,13ccc <enormlz+0x4c>
   13ca8:	00648793          	addi	a5,s1,6
   13cac:	a019                	j	13cb2 <enormlz+0x32>
   13cae:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd86e0>
   13cb2:	0789                	addi	a5,a5,2
   13cb4:	fee79e23          	sh	a4,-4(a5)
   13cb8:	fed79be3          	bne	a5,a3,13cae <enormlz+0x2e>
   13cbc:	00049c23          	sh	zero,24(s1)
   13cc0:	2441                	addiw	s0,s0,16
   13cc2:	04c40d63          	beq	s0,a2,13d1c <enormlz+0x9c>
   13cc6:	0064d703          	lhu	a4,6(s1)
   13cca:	df79                	beqz	a4,13ca8 <enormlz+0x28>
   13ccc:	f0077793          	andi	a5,a4,-256
   13cd0:	eb8d                	bnez	a5,13d02 <enormlz+0x82>
   13cd2:	01848513          	addi	a0,s1,24
   13cd6:	00248593          	addi	a1,s1,2
   13cda:	4781                	li	a5,0
   13cdc:	872a                	mv	a4,a0
   13cde:	00075683          	lhu	a3,0(a4)
   13ce2:	1779                	addi	a4,a4,-2
   13ce4:	0086961b          	slliw	a2,a3,0x8
   13ce8:	8fd1                	or	a5,a5,a2
   13cea:	00f71123          	sh	a5,2(a4)
   13cee:	0086d793          	srli	a5,a3,0x8
   13cf2:	feb716e3          	bne	a4,a1,13cde <enormlz+0x5e>
   13cf6:	0064d703          	lhu	a4,6(s1)
   13cfa:	2421                	addiw	s0,s0,8
   13cfc:	f0077793          	andi	a5,a4,-256
   13d00:	dfe9                	beqz	a5,13cda <enormlz+0x5a>
   13d02:	0a000913          	li	s2,160
   13d06:	a801                	j	13d16 <enormlz+0x96>
   13d08:	2405                	addiw	s0,s0,1
   13d0a:	e33ff0ef          	jal	ra,13b3c <eshup1>
   13d0e:	00894763          	blt	s2,s0,13d1c <enormlz+0x9c>
   13d12:	0064d703          	lhu	a4,6(s1)
   13d16:	833d                	srli	a4,a4,0xf
   13d18:	8526                	mv	a0,s1
   13d1a:	d77d                	beqz	a4,13d08 <enormlz+0x88>
   13d1c:	60e2                	ld	ra,24(sp)
   13d1e:	8522                	mv	a0,s0
   13d20:	6442                	ld	s0,16(sp)
   13d22:	64a2                	ld	s1,8(sp)
   13d24:	6902                	ld	s2,0(sp)
   13d26:	6105                	addi	sp,sp,32
   13d28:	8082                	ret
   13d2a:	f007f713          	andi	a4,a5,-256
   13d2e:	4401                	li	s0,0
   13d30:	e705                	bnez	a4,13d58 <enormlz+0xd8>
   13d32:	f6f00913          	li	s2,-145
   13d36:	a801                	j	13d46 <enormlz+0xc6>
   13d38:	347d                	addiw	s0,s0,-1
   13d3a:	db7ff0ef          	jal	ra,13af0 <eshdn1>
   13d3e:	fd240fe3          	beq	s0,s2,13d1c <enormlz+0x9c>
   13d42:	0044d783          	lhu	a5,4(s1)
   13d46:	8526                	mv	a0,s1
   13d48:	fbe5                	bnez	a5,13d38 <enormlz+0xb8>
   13d4a:	60e2                	ld	ra,24(sp)
   13d4c:	8522                	mv	a0,s0
   13d4e:	6442                	ld	s0,16(sp)
   13d50:	64a2                	ld	s1,8(sp)
   13d52:	6902                	ld	s2,0(sp)
   13d54:	6105                	addi	sp,sp,32
   13d56:	8082                	ret
   13d58:	00450693          	addi	a3,a0,4
   13d5c:	01a50593          	addi	a1,a0,26
   13d60:	4701                	li	a4,0
   13d62:	a019                	j	13d68 <enormlz+0xe8>
   13d64:	0006d783          	lhu	a5,0(a3)
   13d68:	0087d61b          	srliw	a2,a5,0x8
   13d6c:	8f51                	or	a4,a4,a2
   13d6e:	0087979b          	slliw	a5,a5,0x8
   13d72:	00e69023          	sh	a4,0(a3)
   13d76:	03079713          	slli	a4,a5,0x30
   13d7a:	0689                	addi	a3,a3,2
   13d7c:	9341                	srli	a4,a4,0x30
   13d7e:	fed593e3          	bne	a1,a3,13d64 <enormlz+0xe4>
   13d82:	0044d783          	lhu	a5,4(s1)
   13d86:	5461                	li	s0,-8
   13d88:	b76d                	j	13d32 <enormlz+0xb2>

0000000000013d8a <eshift.part.0>:
   13d8a:	7179                	addi	sp,sp,-48
   13d8c:	f022                	sd	s0,32(sp)
   13d8e:	ec26                	sd	s1,24(sp)
   13d90:	f406                	sd	ra,40(sp)
   13d92:	e84a                	sd	s2,16(sp)
   13d94:	e44e                	sd	s3,8(sp)
   13d96:	84ae                	mv	s1,a1
   13d98:	842a                	mv	s0,a0
   13d9a:	0605cb63          	bltz	a1,13e10 <eshift.part.0+0x86>
   13d9e:	47bd                	li	a5,15
   13da0:	862e                	mv	a2,a1
   13da2:	0511                	addi	a0,a0,4
   13da4:	01840693          	addi	a3,s0,24
   13da8:	45bd                	li	a1,15
   13daa:	0297d063          	bge	a5,s1,13dca <eshift.part.0+0x40>
   13dae:	87aa                	mv	a5,a0
   13db0:	0027d703          	lhu	a4,2(a5)
   13db4:	0789                	addi	a5,a5,2
   13db6:	fee79f23          	sh	a4,-2(a5)
   13dba:	fef69be3          	bne	a3,a5,13db0 <eshift.part.0+0x26>
   13dbe:	00041c23          	sh	zero,24(s0)
   13dc2:	3641                	addiw	a2,a2,-16
   13dc4:	fec5c5e3          	blt	a1,a2,13dae <eshift.part.0+0x24>
   13dc8:	88bd                	andi	s1,s1,15
   13dca:	479d                	li	a5,7
   13dcc:	0297d463          	bge	a5,s1,13df4 <eshift.part.0+0x6a>
   13dd0:	01840713          	addi	a4,s0,24
   13dd4:	00240593          	addi	a1,s0,2
   13dd8:	4781                	li	a5,0
   13dda:	00075683          	lhu	a3,0(a4)
   13dde:	1779                	addi	a4,a4,-2
   13de0:	0086961b          	slliw	a2,a3,0x8
   13de4:	8fd1                	or	a5,a5,a2
   13de6:	00f71123          	sh	a5,2(a4)
   13dea:	0086d793          	srli	a5,a3,0x8
   13dee:	fee596e3          	bne	a1,a4,13dda <eshift.part.0+0x50>
   13df2:	34e1                	addiw	s1,s1,-8
   13df4:	c491                	beqz	s1,13e00 <eshift.part.0+0x76>
   13df6:	34fd                	addiw	s1,s1,-1
   13df8:	8522                	mv	a0,s0
   13dfa:	d43ff0ef          	jal	ra,13b3c <eshup1>
   13dfe:	fce5                	bnez	s1,13df6 <eshift.part.0+0x6c>
   13e00:	70a2                	ld	ra,40(sp)
   13e02:	7402                	ld	s0,32(sp)
   13e04:	64e2                	ld	s1,24(sp)
   13e06:	6942                	ld	s2,16(sp)
   13e08:	69a2                	ld	s3,8(sp)
   13e0a:	4501                	li	a0,0
   13e0c:	6145                	addi	sp,sp,48
   13e0e:	8082                	ret
   13e10:	57c5                	li	a5,-15
   13e12:	40b0093b          	negw	s2,a1
   13e16:	06f5db63          	bge	a1,a5,13e8c <eshift.part.0+0x102>
   13e1a:	01850593          	addi	a1,a0,24
   13e1e:	4981                	li	s3,0
   13e20:	00450693          	addi	a3,a0,4
   13e24:	463d                	li	a2,15
   13e26:	01845703          	lhu	a4,24(s0)
   13e2a:	87ae                	mv	a5,a1
   13e2c:	00e9e9b3          	or	s3,s3,a4
   13e30:	ffe7d703          	lhu	a4,-2(a5)
   13e34:	17f9                	addi	a5,a5,-2
   13e36:	00e79123          	sh	a4,2(a5)
   13e3a:	fed79be3          	bne	a5,a3,13e30 <eshift.part.0+0xa6>
   13e3e:	00041223          	sh	zero,4(s0)
   13e42:	3941                	addiw	s2,s2,-16
   13e44:	ff2641e3          	blt	a2,s2,13e26 <eshift.part.0+0x9c>
   13e48:	5941                	li	s2,-16
   13e4a:	5745                	li	a4,-15
   13e4c:	4099093b          	subw	s2,s2,s1
   13e50:	4781                	li	a5,0
   13e52:	06e4cb63          	blt	s1,a4,13ec8 <eshift.part.0+0x13e>
   13e56:	00f9093b          	addw	s2,s2,a5
   13e5a:	479d                	li	a5,7
   13e5c:	0327ce63          	blt	a5,s2,13e98 <eshift.part.0+0x10e>
   13e60:	00090d63          	beqz	s2,13e7a <eshift.part.0+0xf0>
   13e64:	01845783          	lhu	a5,24(s0)
   13e68:	397d                	addiw	s2,s2,-1
   13e6a:	8522                	mv	a0,s0
   13e6c:	8b85                	andi	a5,a5,1
   13e6e:	00f9e9b3          	or	s3,s3,a5
   13e72:	c7fff0ef          	jal	ra,13af0 <eshdn1>
   13e76:	fe0917e3          	bnez	s2,13e64 <eshift.part.0+0xda>
   13e7a:	70a2                	ld	ra,40(sp)
   13e7c:	7402                	ld	s0,32(sp)
   13e7e:	64e2                	ld	s1,24(sp)
   13e80:	6942                	ld	s2,16(sp)
   13e82:	01303533          	snez	a0,s3
   13e86:	69a2                	ld	s3,8(sp)
   13e88:	6145                	addi	sp,sp,48
   13e8a:	8082                	ret
   13e8c:	57e5                	li	a5,-7
   13e8e:	4981                	li	s3,0
   13e90:	00450693          	addi	a3,a0,4
   13e94:	fcf5d8e3          	bge	a1,a5,13e64 <eshift.part.0+0xda>
   13e98:	01844783          	lbu	a5,24(s0)
   13e9c:	01a40593          	addi	a1,s0,26
   13ea0:	00f9e9b3          	or	s3,s3,a5
   13ea4:	4781                	li	a5,0
   13ea6:	0006d703          	lhu	a4,0(a3)
   13eaa:	0689                	addi	a3,a3,2
   13eac:	0087561b          	srliw	a2,a4,0x8
   13eb0:	8fd1                	or	a5,a5,a2
   13eb2:	0087171b          	slliw	a4,a4,0x8
   13eb6:	fef69f23          	sh	a5,-2(a3)
   13eba:	03071793          	slli	a5,a4,0x30
   13ebe:	93c1                	srli	a5,a5,0x30
   13ec0:	feb693e3          	bne	a3,a1,13ea6 <eshift.part.0+0x11c>
   13ec4:	3961                	addiw	s2,s2,-8
   13ec6:	bf69                	j	13e60 <eshift.part.0+0xd6>
   13ec8:	ff097793          	andi	a5,s2,-16
   13ecc:	40f007bb          	negw	a5,a5
   13ed0:	00f9093b          	addw	s2,s2,a5
   13ed4:	479d                	li	a5,7
   13ed6:	f927d5e3          	bge	a5,s2,13e60 <eshift.part.0+0xd6>
   13eda:	bf7d                	j	13e98 <eshift.part.0+0x10e>

0000000000013edc <emovi>:
   13edc:	01255783          	lhu	a5,18(a0)
   13ee0:	6621                	lui	a2,0x8
   13ee2:	167d                	addi	a2,a2,-1 # 7fff <exit-0x80e9>
   13ee4:	00f7d79b          	srliw	a5,a5,0xf
   13ee8:	40f007bb          	negw	a5,a5
   13eec:	00f59023          	sh	a5,0(a1)
   13ef0:	01255683          	lhu	a3,18(a0)
   13ef4:	01050793          	addi	a5,a0,16
   13ef8:	00458713          	addi	a4,a1,4
   13efc:	8ef1                	and	a3,a3,a2
   13efe:	00d59123          	sh	a3,2(a1)
   13f02:	0006881b          	sext.w	a6,a3
   13f06:	02c68263          	beq	a3,a2,13f2a <emovi+0x4e>
   13f0a:	00658713          	addi	a4,a1,6
   13f0e:	00059223          	sh	zero,4(a1)
   13f12:	1579                	addi	a0,a0,-2
   13f14:	0007d683          	lhu	a3,0(a5)
   13f18:	17f9                	addi	a5,a5,-2
   13f1a:	0709                	addi	a4,a4,2
   13f1c:	fed71f23          	sh	a3,-2(a4)
   13f20:	fef51ae3          	bne	a0,a5,13f14 <emovi+0x38>
   13f24:	00059c23          	sh	zero,24(a1)
   13f28:	8082                	ret
   13f2a:	01255683          	lhu	a3,18(a0)
   13f2e:	0106f6b3          	and	a3,a3,a6
   13f32:	01069b63          	bne	a3,a6,13f48 <emovi+0x6c>
   13f36:	01250813          	addi	a6,a0,18
   13f3a:	86aa                	mv	a3,a0
   13f3c:	0006d603          	lhu	a2,0(a3)
   13f40:	0689                	addi	a3,a3,2
   13f42:	ea11                	bnez	a2,13f56 <emovi+0x7a>
   13f44:	ff069ce3          	bne	a3,a6,13f3c <emovi+0x60>
   13f48:	05e9                	addi	a1,a1,26
   13f4a:	0709                	addi	a4,a4,2
   13f4c:	fe071f23          	sh	zero,-2(a4)
   13f50:	fee59de3          	bne	a1,a4,13f4a <emovi+0x6e>
   13f54:	8082                	ret
   13f56:	00658713          	addi	a4,a1,6
   13f5a:	00059223          	sh	zero,4(a1)
   13f5e:	1571                	addi	a0,a0,-4
   13f60:	0007d683          	lhu	a3,0(a5)
   13f64:	17f9                	addi	a5,a5,-2
   13f66:	0709                	addi	a4,a4,2
   13f68:	fed71f23          	sh	a3,-2(a4)
   13f6c:	fea79ae3          	bne	a5,a0,13f60 <emovi+0x84>
   13f70:	8082                	ret

0000000000013f72 <ecmp>:
   13f72:	01255783          	lhu	a5,18(a0)
   13f76:	715d                	addi	sp,sp,-80
   13f78:	e0a2                	sd	s0,64(sp)
   13f7a:	fff7c793          	not	a5,a5
   13f7e:	e486                	sd	ra,72(sp)
   13f80:	03179713          	slli	a4,a5,0x31
   13f84:	842e                	mv	s0,a1
   13f86:	eb11                	bnez	a4,13f9a <ecmp+0x28>
   13f88:	01250693          	addi	a3,a0,18
   13f8c:	87aa                	mv	a5,a0
   13f8e:	0007d703          	lhu	a4,0(a5)
   13f92:	0789                	addi	a5,a5,2
   13f94:	eb25                	bnez	a4,14004 <ecmp+0x92>
   13f96:	fed79ce3          	bne	a5,a3,13f8e <ecmp+0x1c>
   13f9a:	01245783          	lhu	a5,18(s0)
   13f9e:	fff7c793          	not	a5,a5
   13fa2:	03179713          	slli	a4,a5,0x31
   13fa6:	c331                	beqz	a4,13fea <ecmp+0x78>
   13fa8:	858a                	mv	a1,sp
   13faa:	f33ff0ef          	jal	ra,13edc <emovi>
   13fae:	100c                	addi	a1,sp,32
   13fb0:	8522                	mv	a0,s0
   13fb2:	f2bff0ef          	jal	ra,13edc <emovi>
   13fb6:	00015583          	lhu	a1,0(sp)
   13fba:	02015783          	lhu	a5,32(sp)
   13fbe:	04b78863          	beq	a5,a1,1400e <ecmp+0x9c>
   13fc2:	00210793          	addi	a5,sp,2
   13fc6:	02210713          	addi	a4,sp,34
   13fca:	0830                	addi	a2,sp,24
   13fcc:	0007d683          	lhu	a3,0(a5)
   13fd0:	0789                	addi	a5,a5,2
   13fd2:	eea5                	bnez	a3,1404a <ecmp+0xd8>
   13fd4:	00075683          	lhu	a3,0(a4)
   13fd8:	0709                	addi	a4,a4,2
   13fda:	eaa5                	bnez	a3,1404a <ecmp+0xd8>
   13fdc:	fef618e3          	bne	a2,a5,13fcc <ecmp+0x5a>
   13fe0:	4501                	li	a0,0
   13fe2:	60a6                	ld	ra,72(sp)
   13fe4:	6406                	ld	s0,64(sp)
   13fe6:	6161                	addi	sp,sp,80
   13fe8:	8082                	ret
   13fea:	87a2                	mv	a5,s0
   13fec:	0007d703          	lhu	a4,0(a5)
   13ff0:	01240693          	addi	a3,s0,18
   13ff4:	0789                	addi	a5,a5,2
   13ff6:	e719                	bnez	a4,14004 <ecmp+0x92>
   13ff8:	fad788e3          	beq	a5,a3,13fa8 <ecmp+0x36>
   13ffc:	0007d703          	lhu	a4,0(a5)
   14000:	0789                	addi	a5,a5,2
   14002:	db7d                	beqz	a4,13ff8 <ecmp+0x86>
   14004:	60a6                	ld	ra,72(sp)
   14006:	6406                	ld	s0,64(sp)
   14008:	5579                	li	a0,-2
   1400a:	6161                	addi	sp,sp,80
   1400c:	8082                	ret
   1400e:	4505                	li	a0,1
   14010:	e1a9                	bnez	a1,14052 <ecmp+0xe0>
   14012:	00215603          	lhu	a2,2(sp)
   14016:	02215683          	lhu	a3,34(sp)
   1401a:	00210713          	addi	a4,sp,2
   1401e:	02210793          	addi	a5,sp,34
   14022:	182c                	addi	a1,sp,56
   14024:	0789                	addi	a5,a5,2
   14026:	0709                	addi	a4,a4,2
   14028:	00d61c63          	bne	a2,a3,14040 <ecmp+0xce>
   1402c:	fab78ae3          	beq	a5,a1,13fe0 <ecmp+0x6e>
   14030:	00075603          	lhu	a2,0(a4)
   14034:	0007d683          	lhu	a3,0(a5)
   14038:	0709                	addi	a4,a4,2
   1403a:	0789                	addi	a5,a5,2
   1403c:	fed608e3          	beq	a2,a3,1402c <ecmp+0xba>
   14040:	fac6e1e3          	bltu	a3,a2,13fe2 <ecmp+0x70>
   14044:	40a0053b          	negw	a0,a0
   14048:	bf69                	j	13fe2 <ecmp+0x70>
   1404a:	4505                	li	a0,1
   1404c:	d9d9                	beqz	a1,13fe2 <ecmp+0x70>
   1404e:	557d                	li	a0,-1
   14050:	bf49                	j	13fe2 <ecmp+0x70>
   14052:	557d                	li	a0,-1
   14054:	bf7d                	j	14012 <ecmp+0xa0>

0000000000014056 <emdnorm>:
   14056:	715d                	addi	sp,sp,-80
   14058:	e0a2                	sd	s0,64(sp)
   1405a:	fc26                	sd	s1,56(sp)
   1405c:	f84a                	sd	s2,48(sp)
   1405e:	f44e                	sd	s3,40(sp)
   14060:	f052                	sd	s4,32(sp)
   14062:	ec56                	sd	s5,24(sp)
   14064:	8936                	mv	s2,a3
   14066:	84be                	mv	s1,a5
   14068:	e486                	sd	ra,72(sp)
   1406a:	e85a                	sd	s6,16(sp)
   1406c:	e45e                	sd	s7,8(sp)
   1406e:	842a                	mv	s0,a0
   14070:	89ae                	mv	s3,a1
   14072:	8a32                	mv	s4,a2
   14074:	8aba                	mv	s5,a4
   14076:	c0bff0ef          	jal	ra,13c80 <enormlz>
   1407a:	09000793          	li	a5,144
   1407e:	40a90933          	sub	s2,s2,a0
   14082:	10a7dc63          	bge	a5,a0,1419a <emdnorm+0x144>
   14086:	67a1                	lui	a5,0x8
   14088:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   1408a:	1f27dd63          	bge	a5,s2,14284 <emdnorm+0x22e>
   1408e:	1c0a8b63          	beqz	s5,14264 <emdnorm+0x20e>
   14092:	0044aa83          	lw	s5,4(s1)
   14096:	4094                	lw	a3,0(s1)
   14098:	01a48713          	addi	a4,s1,26
   1409c:	03448793          	addi	a5,s1,52
   140a0:	23568463          	beq	a3,s5,142c8 <emdnorm+0x272>
   140a4:	0709                	addi	a4,a4,2
   140a6:	fe071f23          	sh	zero,-2(a4)
   140aa:	fef71de3          	bne	a4,a5,140a4 <emdnorm+0x4e>
   140ae:	03800793          	li	a5,56
   140b2:	28fa8363          	beq	s5,a5,14338 <emdnorm+0x2e2>
   140b6:	1157d163          	bge	a5,s5,141b8 <emdnorm+0x162>
   140ba:	04000793          	li	a5,64
   140be:	22fa8b63          	beq	s5,a5,142f4 <emdnorm+0x29e>
   140c2:	07100793          	li	a5,113
   140c6:	28fa9363          	bne	s5,a5,1434c <emdnorm+0x2f6>
   140ca:	6721                	lui	a4,0x8
   140cc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   140ce:	6591                	lui	a1,0x4
   140d0:	4b51                	li	s6,20
   140d2:	4ba9                	li	s7,10
   140d4:	67a1                	lui	a5,0x8
   140d6:	4629                	li	a2,10
   140d8:	00860693          	addi	a3,a2,8
   140dc:	0686                	slli	a3,a3,0x1
   140de:	00e49a23          	sh	a4,20(s1)
   140e2:	0174a423          	sw	s7,8(s1)
   140e6:	00b49b23          	sh	a1,22(s1)
   140ea:	00f49c23          	sh	a5,24(s1)
   140ee:	c4d0                	sw	a2,12(s1)
   140f0:	00d48733          	add	a4,s1,a3
   140f4:	00f71523          	sh	a5,10(a4)
   140f8:	0154a023          	sw	s5,0(s1)
   140fc:	9b22                	add	s6,s6,s0
   140fe:	1d205c63          	blez	s2,142d6 <emdnorm+0x280>
   14102:	000b5703          	lhu	a4,0(s6) # ffffffff80000000 <__BSS_END__+0xffffffff7ffe06e0>
   14106:	0144d683          	lhu	a3,20(s1)
   1410a:	08f00793          	li	a5,143
   1410e:	00d77633          	and	a2,a4,a3
   14112:	0557c163          	blt	a5,s5,14154 <emdnorm+0xfe>
   14116:	001b879b          	addiw	a5,s7,1
   1411a:	45b1                	li	a1,12
   1411c:	02f5cc63          	blt	a1,a5,14154 <emdnorm+0xfe>
   14120:	472d                	li	a4,11
   14122:	4177073b          	subw	a4,a4,s7
   14126:	1702                	slli	a4,a4,0x20
   14128:	9301                	srli	a4,a4,0x20
   1412a:	975e                	add	a4,a4,s7
   1412c:	0786                	slli	a5,a5,0x1
   1412e:	0706                	slli	a4,a4,0x1
   14130:	00440693          	addi	a3,s0,4
   14134:	97a2                	add	a5,a5,s0
   14136:	9736                	add	a4,a4,a3
   14138:	0007d683          	lhu	a3,0(a5) # 8000 <exit-0x80e8>
   1413c:	c299                	beqz	a3,14142 <emdnorm+0xec>
   1413e:	00166613          	ori	a2,a2,1
   14142:	00079023          	sh	zero,0(a5)
   14146:	0789                	addi	a5,a5,2
   14148:	fee798e3          	bne	a5,a4,14138 <emdnorm+0xe2>
   1414c:	000b5703          	lhu	a4,0(s6)
   14150:	0144d683          	lhu	a3,20(s1)
   14154:	fff6c693          	not	a3,a3
   14158:	8f75                	and	a4,a4,a3
   1415a:	00eb1023          	sh	a4,0(s6)
   1415e:	0164d783          	lhu	a5,22(s1)
   14162:	00c7f733          	and	a4,a5,a2
   14166:	eb51                	bnez	a4,141fa <emdnorm+0x1a4>
   14168:	0d205d63          	blez	s2,14242 <emdnorm+0x1ec>
   1416c:	00445783          	lhu	a5,4(s0)
   14170:	1a079463          	bnez	a5,14318 <emdnorm+0x2c2>
   14174:	67a1                	lui	a5,0x8
   14176:	00041c23          	sh	zero,24(s0)
   1417a:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   1417c:	0f27c663          	blt	a5,s2,14268 <emdnorm+0x212>
   14180:	01241123          	sh	s2,2(s0)
   14184:	60a6                	ld	ra,72(sp)
   14186:	6406                	ld	s0,64(sp)
   14188:	74e2                	ld	s1,56(sp)
   1418a:	7942                	ld	s2,48(sp)
   1418c:	79a2                	ld	s3,40(sp)
   1418e:	7a02                	ld	s4,32(sp)
   14190:	6ae2                	ld	s5,24(sp)
   14192:	6b42                	ld	s6,16(sp)
   14194:	6ba2                	ld	s7,8(sp)
   14196:	6161                	addi	sp,sp,80
   14198:	8082                	ret
   1419a:	10095c63          	bgez	s2,142b2 <emdnorm+0x25c>
   1419e:	f7000793          	li	a5,-144
   141a2:	0ef95a63          	bge	s2,a5,14296 <emdnorm+0x240>
   141a6:	00240793          	addi	a5,s0,2
   141aa:	0469                	addi	s0,s0,26
   141ac:	0789                	addi	a5,a5,2
   141ae:	fe079f23          	sh	zero,-2(a5)
   141b2:	fe879de3          	bne	a5,s0,141ac <emdnorm+0x156>
   141b6:	b7f9                	j	14184 <emdnorm+0x12e>
   141b8:	47e1                	li	a5,24
   141ba:	14fa8563          	beq	s5,a5,14304 <emdnorm+0x2ae>
   141be:	03500793          	li	a5,53
   141c2:	18fa9563          	bne	s5,a5,1434c <emdnorm+0x2f6>
   141c6:	6785                	lui	a5,0x1
   141c8:	7ff00713          	li	a4,2047
   141cc:	40000593          	li	a1,1024
   141d0:	4b31                	li	s6,12
   141d2:	4b99                	li	s7,6
   141d4:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8e8>
   141d8:	4619                	li	a2,6
   141da:	bdfd                	j	140d8 <emdnorm+0x82>
   141dc:	0144d703          	lhu	a4,20(s1)
   141e0:	000b5603          	lhu	a2,0(s6)
   141e4:	fff74793          	not	a5,a4
   141e8:	8ff1                	and	a5,a5,a2
   141ea:	00fb1023          	sh	a5,0(s6)
   141ee:	0164d783          	lhu	a5,22(s1)
   141f2:	8e79                	and	a2,a2,a4
   141f4:	00c7f733          	and	a4,a5,a2
   141f8:	cf21                	beqz	a4,14250 <emdnorm+0x1fa>
   141fa:	00c79d63          	bne	a5,a2,14214 <emdnorm+0x1be>
   141fe:	12099a63          	bnez	s3,14332 <emdnorm+0x2dc>
   14202:	44dc                	lw	a5,12(s1)
   14204:	0184d703          	lhu	a4,24(s1)
   14208:	0786                	slli	a5,a5,0x1
   1420a:	97a2                	add	a5,a5,s0
   1420c:	0007d783          	lhu	a5,0(a5)
   14210:	8ff9                	and	a5,a5,a4
   14212:	dbb9                	beqz	a5,14168 <emdnorm+0x112>
   14214:	03248613          	addi	a2,s1,50
   14218:	01840693          	addi	a3,s0,24
   1421c:	04f1                	addi	s1,s1,28
   1421e:	4781                	li	a5,0
   14220:	00065703          	lhu	a4,0(a2)
   14224:	0006d583          	lhu	a1,0(a3)
   14228:	16f9                	addi	a3,a3,-2
   1422a:	1679                	addi	a2,a2,-2
   1422c:	972e                	add	a4,a4,a1
   1422e:	973e                	add	a4,a4,a5
   14230:	01075793          	srli	a5,a4,0x10
   14234:	00e69123          	sh	a4,2(a3)
   14238:	8b85                	andi	a5,a5,1
   1423a:	fec493e3          	bne	s1,a2,14220 <emdnorm+0x1ca>
   1423e:	f32047e3          	bgtz	s2,1416c <emdnorm+0x116>
   14242:	09000793          	li	a5,144
   14246:	00fa8563          	beq	s5,a5,14250 <emdnorm+0x1fa>
   1424a:	8522                	mv	a0,s0
   1424c:	8f1ff0ef          	jal	ra,13b3c <eshup1>
   14250:	00445783          	lhu	a5,4(s0)
   14254:	e3f1                	bnez	a5,14318 <emdnorm+0x2c2>
   14256:	00041c23          	sh	zero,24(s0)
   1425a:	f20953e3          	bgez	s2,14180 <emdnorm+0x12a>
   1425e:	00041123          	sh	zero,2(s0)
   14262:	b70d                	j	14184 <emdnorm+0x12e>
   14264:	00041c23          	sh	zero,24(s0)
   14268:	77e1                	lui	a5,0xffff8
   1426a:	fff7c793          	not	a5,a5
   1426e:	00f41123          	sh	a5,2(s0)
   14272:	00440793          	addi	a5,s0,4
   14276:	0461                	addi	s0,s0,24
   14278:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd86e0>
   1427c:	0789                	addi	a5,a5,2
   1427e:	fe879de3          	bne	a5,s0,14278 <emdnorm+0x222>
   14282:	b709                	j	14184 <emdnorm+0x12e>
   14284:	00240793          	addi	a5,s0,2
   14288:	0469                	addi	s0,s0,26
   1428a:	0789                	addi	a5,a5,2
   1428c:	fe079f23          	sh	zero,-2(a5)
   14290:	fef41de3          	bne	s0,a5,1428a <emdnorm+0x234>
   14294:	bdc5                	j	14184 <emdnorm+0x12e>
   14296:	0009059b          	sext.w	a1,s2
   1429a:	8522                	mv	a0,s0
   1429c:	aefff0ef          	jal	ra,13d8a <eshift.part.0>
   142a0:	c111                	beqz	a0,142a4 <emdnorm+0x24e>
   142a2:	4985                	li	s3,1
   142a4:	de0a97e3          	bnez	s5,14092 <emdnorm+0x3c>
   142a8:	00041c23          	sh	zero,24(s0)
   142ac:	00041123          	sh	zero,2(s0)
   142b0:	bdd1                	j	14184 <emdnorm+0x12e>
   142b2:	ec0a81e3          	beqz	s5,14174 <emdnorm+0x11e>
   142b6:	0044aa83          	lw	s5,4(s1)
   142ba:	4094                	lw	a3,0(s1)
   142bc:	01a48713          	addi	a4,s1,26
   142c0:	03448793          	addi	a5,s1,52
   142c4:	df5690e3          	bne	a3,s5,140a4 <emdnorm+0x4e>
   142c8:	0084ab83          	lw	s7,8(s1)
   142cc:	001b9b13          	slli	s6,s7,0x1
   142d0:	9b22                	add	s6,s6,s0
   142d2:	e32048e3          	bgtz	s2,14102 <emdnorm+0xac>
   142d6:	09000793          	li	a5,144
   142da:	f0fa81e3          	beq	s5,a5,141dc <emdnorm+0x186>
   142de:	01845783          	lhu	a5,24(s0)
   142e2:	8522                	mv	a0,s0
   142e4:	8b85                	andi	a5,a5,1
   142e6:	00f9e7b3          	or	a5,s3,a5
   142ea:	0007899b          	sext.w	s3,a5
   142ee:	803ff0ef          	jal	ra,13af0 <eshdn1>
   142f2:	bd01                	j	14102 <emdnorm+0xac>
   142f4:	6741                	lui	a4,0x10
   142f6:	177d                	addi	a4,a4,-1 # ffff <exit-0xe9>
   142f8:	65a1                	lui	a1,0x8
   142fa:	4b39                	li	s6,14
   142fc:	4b9d                	li	s7,7
   142fe:	4785                	li	a5,1
   14300:	4619                	li	a2,6
   14302:	bbd9                	j	140d8 <emdnorm+0x82>
   14304:	0ff00713          	li	a4,255
   14308:	08000593          	li	a1,128
   1430c:	4b21                	li	s6,8
   1430e:	4b91                	li	s7,4
   14310:	10000793          	li	a5,256
   14314:	4611                	li	a2,4
   14316:	b3c9                	j	140d8 <emdnorm+0x82>
   14318:	8522                	mv	a0,s0
   1431a:	fd6ff0ef          	jal	ra,13af0 <eshdn1>
   1431e:	67a1                	lui	a5,0x8
   14320:	0905                	addi	s2,s2,1
   14322:	00041c23          	sh	zero,24(s0)
   14326:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   14328:	f527c0e3          	blt	a5,s2,14268 <emdnorm+0x212>
   1432c:	f20949e3          	bltz	s2,1425e <emdnorm+0x208>
   14330:	bd81                	j	14180 <emdnorm+0x12a>
   14332:	ee0a01e3          	beqz	s4,14214 <emdnorm+0x1be>
   14336:	bd0d                	j	14168 <emdnorm+0x112>
   14338:	0ff00713          	li	a4,255
   1433c:	08000593          	li	a1,128
   14340:	4b31                	li	s6,12
   14342:	4b99                	li	s7,6
   14344:	10000793          	li	a5,256
   14348:	4619                	li	a2,6
   1434a:	b379                	j	140d8 <emdnorm+0x82>
   1434c:	6741                	lui	a4,0x10
   1434e:	177d                	addi	a4,a4,-1 # ffff <exit-0xe9>
   14350:	65a1                	lui	a1,0x8
   14352:	4b61                	li	s6,24
   14354:	4bb1                	li	s7,12
   14356:	4785                	li	a5,1
   14358:	462d                	li	a2,11
   1435a:	bbbd                	j	140d8 <emdnorm+0x82>

000000000001435c <eiremain>:
   1435c:	711d                	addi	sp,sp,-96
   1435e:	e0ca                	sd	s2,64(sp)
   14360:	fc4e                	sd	s3,56(sp)
   14362:	892e                	mv	s2,a1
   14364:	00255983          	lhu	s3,2(a0)
   14368:	ec86                	sd	ra,88(sp)
   1436a:	e8a2                	sd	s0,80(sp)
   1436c:	e4a6                	sd	s1,72(sp)
   1436e:	f852                	sd	s4,48(sp)
   14370:	84b2                	mv	s1,a2
   14372:	ec5e                	sd	s7,24(sp)
   14374:	f456                	sd	s5,40(sp)
   14376:	f05a                	sd	s6,32(sp)
   14378:	e862                	sd	s8,16(sp)
   1437a:	e466                	sd	s9,8(sp)
   1437c:	e06a                	sd	s10,0(sp)
   1437e:	8baa                	mv	s7,a0
   14380:	901ff0ef          	jal	ra,13c80 <enormlz>
   14384:	00295403          	lhu	s0,2(s2)
   14388:	87aa                	mv	a5,a0
   1438a:	854a                	mv	a0,s2
   1438c:	40f989b3          	sub	s3,s3,a5
   14390:	03448a13          	addi	s4,s1,52
   14394:	8edff0ef          	jal	ra,13c80 <enormlz>
   14398:	8c09                	sub	s0,s0,a0
   1439a:	04e48713          	addi	a4,s1,78
   1439e:	87d2                	mv	a5,s4
   143a0:	0789                	addi	a5,a5,2
   143a2:	fe079f23          	sh	zero,-2(a5)
   143a6:	fee79de3          	bne	a5,a4,143a0 <eiremain+0x44>
   143aa:	07344a63          	blt	s0,s3,1441e <eiremain+0xc2>
   143ae:	004b8b13          	addi	s6,s7,4
   143b2:	00490a93          	addi	s5,s2,4
   143b6:	01ab8c13          	addi	s8,s7,26
   143ba:	00290d13          	addi	s10,s2,2
   143be:	8756                	mv	a4,s5
   143c0:	87da                	mv	a5,s6
   143c2:	0007d603          	lhu	a2,0(a5)
   143c6:	00075683          	lhu	a3,0(a4)
   143ca:	0789                	addi	a5,a5,2
   143cc:	0709                	addi	a4,a4,2
   143ce:	06d61d63          	bne	a2,a3,14448 <eiremain+0xec>
   143d2:	ff8798e3          	bne	a5,s8,143c2 <eiremain+0x66>
   143d6:	018b8613          	addi	a2,s7,24
   143da:	01890713          	addi	a4,s2,24
   143de:	4681                	li	a3,0
   143e0:	00075783          	lhu	a5,0(a4)
   143e4:	00065583          	lhu	a1,0(a2)
   143e8:	1779                	addi	a4,a4,-2
   143ea:	8f95                	sub	a5,a5,a3
   143ec:	8f8d                	sub	a5,a5,a1
   143ee:	0107d693          	srli	a3,a5,0x10
   143f2:	00f71123          	sh	a5,2(a4)
   143f6:	8a85                	andi	a3,a3,1
   143f8:	1679                	addi	a2,a2,-2
   143fa:	feed13e3          	bne	s10,a4,143e0 <eiremain+0x84>
   143fe:	4c85                	li	s9,1
   14400:	8552                	mv	a0,s4
   14402:	f3aff0ef          	jal	ra,13b3c <eshup1>
   14406:	04c4d783          	lhu	a5,76(s1)
   1440a:	147d                	addi	s0,s0,-1
   1440c:	854a                	mv	a0,s2
   1440e:	00fce7b3          	or	a5,s9,a5
   14412:	04f49623          	sh	a5,76(s1)
   14416:	f26ff0ef          	jal	ra,13b3c <eshup1>
   1441a:	fb3452e3          	bge	s0,s3,143be <eiremain+0x62>
   1441e:	86a2                	mv	a3,s0
   14420:	6446                	ld	s0,80(sp)
   14422:	60e6                	ld	ra,88(sp)
   14424:	79e2                	ld	s3,56(sp)
   14426:	7a42                	ld	s4,48(sp)
   14428:	7aa2                	ld	s5,40(sp)
   1442a:	7b02                	ld	s6,32(sp)
   1442c:	6be2                	ld	s7,24(sp)
   1442e:	6c42                	ld	s8,16(sp)
   14430:	6ca2                	ld	s9,8(sp)
   14432:	6d02                	ld	s10,0(sp)
   14434:	87a6                	mv	a5,s1
   14436:	854a                	mv	a0,s2
   14438:	64a6                	ld	s1,72(sp)
   1443a:	6906                	ld	s2,64(sp)
   1443c:	4701                	li	a4,0
   1443e:	4601                	li	a2,0
   14440:	4581                	li	a1,0
   14442:	6125                	addi	sp,sp,96
   14444:	c13ff06f          	j	14056 <emdnorm>
   14448:	4c81                	li	s9,0
   1444a:	fac6ebe3          	bltu	a3,a2,14400 <eiremain+0xa4>
   1444e:	b761                	j	143d6 <eiremain+0x7a>

0000000000014450 <e113toe.isra.0>:
   14450:	7179                	addi	sp,sp,-48
   14452:	f022                	sd	s0,32(sp)
   14454:	f406                	sd	ra,40(sp)
   14456:	842e                	mv	s0,a1
   14458:	878a                	mv	a5,sp
   1445a:	01a10713          	addi	a4,sp,26
   1445e:	0789                	addi	a5,a5,2
   14460:	fe079f23          	sh	zero,-2(a5)
   14464:	fee79de3          	bne	a5,a4,1445e <e113toe.isra.0+0xe>
   14468:	00e55783          	lhu	a5,14(a0)
   1446c:	6721                	lui	a4,0x8
   1446e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14470:	03079693          	slli	a3,a5,0x30
   14474:	96fd                	srai	a3,a3,0x3f
   14476:	00d11023          	sh	a3,0(sp)
   1447a:	00e7f6b3          	and	a3,a5,a4
   1447e:	8636                	mv	a2,a3
   14480:	04e68363          	beq	a3,a4,144c6 <e113toe.isra.0+0x76>
   14484:	00e50793          	addi	a5,a0,14
   14488:	00d11123          	sh	a3,2(sp)
   1448c:	00610713          	addi	a4,sp,6
   14490:	ffe7d683          	lhu	a3,-2(a5)
   14494:	17f9                	addi	a5,a5,-2
   14496:	0709                	addi	a4,a4,2
   14498:	fed71f23          	sh	a3,-2(a4)
   1449c:	fef51ae3          	bne	a0,a5,14490 <e113toe.isra.0+0x40>
   144a0:	ea19                	bnez	a2,144b6 <e113toe.isra.0+0x66>
   144a2:	00011223          	sh	zero,4(sp)
   144a6:	85a2                	mv	a1,s0
   144a8:	850a                	mv	a0,sp
   144aa:	f4aff0ef          	jal	ra,13bf4 <emovo.constprop.0>
   144ae:	70a2                	ld	ra,40(sp)
   144b0:	7402                	ld	s0,32(sp)
   144b2:	6145                	addi	sp,sp,48
   144b4:	8082                	ret
   144b6:	4785                	li	a5,1
   144b8:	55fd                	li	a1,-1
   144ba:	850a                	mv	a0,sp
   144bc:	00f11223          	sh	a5,4(sp)
   144c0:	8cbff0ef          	jal	ra,13d8a <eshift.part.0>
   144c4:	b7cd                	j	144a6 <e113toe.isra.0+0x56>
   144c6:	87aa                	mv	a5,a0
   144c8:	00e50693          	addi	a3,a0,14
   144cc:	0007d703          	lhu	a4,0(a5)
   144d0:	0789                	addi	a5,a5,2
   144d2:	ef21                	bnez	a4,1452a <e113toe.isra.0+0xda>
   144d4:	fef69ce3          	bne	a3,a5,144cc <e113toe.isra.0+0x7c>
   144d8:	01440713          	addi	a4,s0,20
   144dc:	87a2                	mv	a5,s0
   144de:	0789                	addi	a5,a5,2
   144e0:	fe079f23          	sh	zero,-2(a5)
   144e4:	fee79de3          	bne	a5,a4,144de <e113toe.isra.0+0x8e>
   144e8:	01240713          	addi	a4,s0,18
   144ec:	87a2                	mv	a5,s0
   144ee:	0789                	addi	a5,a5,2
   144f0:	fe079f23          	sh	zero,-2(a5)
   144f4:	fef71de3          	bne	a4,a5,144ee <e113toe.isra.0+0x9e>
   144f8:	01245783          	lhu	a5,18(s0)
   144fc:	66a1                	lui	a3,0x8
   144fe:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   14500:	8fd5                	or	a5,a5,a3
   14502:	17c2                	slli	a5,a5,0x30
   14504:	93c1                	srli	a5,a5,0x30
   14506:	00f41923          	sh	a5,18(s0)
   1450a:	00e51683          	lh	a3,14(a0)
   1450e:	fa06d0e3          	bgez	a3,144ae <e113toe.isra.0+0x5e>
   14512:	86a2                	mv	a3,s0
   14514:	0006d603          	lhu	a2,0(a3)
   14518:	0689                	addi	a3,a3,2
   1451a:	fa51                	bnez	a2,144ae <e113toe.isra.0+0x5e>
   1451c:	fed71ce3          	bne	a4,a3,14514 <e113toe.isra.0+0xc4>
   14520:	7761                	lui	a4,0xffff8
   14522:	8fb9                	xor	a5,a5,a4
   14524:	00f41923          	sh	a5,18(s0)
   14528:	b759                	j	144ae <e113toe.isra.0+0x5e>
   1452a:	01040713          	addi	a4,s0,16
   1452e:	87a2                	mv	a5,s0
   14530:	0789                	addi	a5,a5,2
   14532:	fe079f23          	sh	zero,-2(a5)
   14536:	fee79de3          	bne	a5,a4,14530 <e113toe.isra.0+0xe0>
   1453a:	77f1                	lui	a5,0xffffc
   1453c:	00f41823          	sh	a5,16(s0)
   14540:	77e1                	lui	a5,0xffff8
   14542:	fff7c793          	not	a5,a5
   14546:	00f41923          	sh	a5,18(s0)
   1454a:	b795                	j	144ae <e113toe.isra.0+0x5e>

000000000001454c <ediv>:
   1454c:	01255783          	lhu	a5,18(a0)
   14550:	7115                	addi	sp,sp,-224
   14552:	e9a2                	sd	s0,208(sp)
   14554:	fff7c793          	not	a5,a5
   14558:	e5a6                	sd	s1,200(sp)
   1455a:	e1ca                	sd	s2,192(sp)
   1455c:	fd4e                	sd	s3,184(sp)
   1455e:	ed86                	sd	ra,216(sp)
   14560:	f952                	sd	s4,176(sp)
   14562:	f556                	sd	s5,168(sp)
   14564:	f15a                	sd	s6,160(sp)
   14566:	ed5e                	sd	s7,152(sp)
   14568:	e962                	sd	s8,144(sp)
   1456a:	e566                	sd	s9,136(sp)
   1456c:	e16a                	sd	s10,128(sp)
   1456e:	fcee                	sd	s11,120(sp)
   14570:	03179713          	slli	a4,a5,0x31
   14574:	84aa                	mv	s1,a0
   14576:	89ae                	mv	s3,a1
   14578:	8432                	mv	s0,a2
   1457a:	8936                	mv	s2,a3
   1457c:	eb19                	bnez	a4,14592 <ediv+0x46>
   1457e:	01250693          	addi	a3,a0,18
   14582:	87aa                	mv	a5,a0
   14584:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd86e0>
   14588:	0789                	addi	a5,a5,2
   1458a:	22071a63          	bnez	a4,147be <ediv+0x272>
   1458e:	fed79be3          	bne	a5,a3,14584 <ediv+0x38>
   14592:	0129d783          	lhu	a5,18(s3)
   14596:	fff7c793          	not	a5,a5
   1459a:	03179713          	slli	a4,a5,0x31
   1459e:	eb19                	bnez	a4,145b4 <ediv+0x68>
   145a0:	01298693          	addi	a3,s3,18
   145a4:	87ce                	mv	a5,s3
   145a6:	0007d703          	lhu	a4,0(a5)
   145aa:	0789                	addi	a5,a5,2
   145ac:	22071463          	bnez	a4,147d4 <ediv+0x288>
   145b0:	fed79be3          	bne	a5,a3,145a6 <ediv+0x5a>
   145b4:	6a75                	lui	s4,0x1d
   145b6:	cc0a0593          	addi	a1,s4,-832 # 1ccc0 <ezero>
   145ba:	8526                	mv	a0,s1
   145bc:	9b7ff0ef          	jal	ra,13f72 <ecmp>
   145c0:	22050563          	beqz	a0,147ea <ediv+0x29e>
   145c4:	0124d603          	lhu	a2,18(s1)
   145c8:	0129d703          	lhu	a4,18(s3)
   145cc:	67a1                	lui	a5,0x8
   145ce:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   145d0:	00f67533          	and	a0,a2,a5
   145d4:	00f775b3          	and	a1,a4,a5
   145d8:	06f51a63          	bne	a0,a5,1464c <ediv+0x100>
   145dc:	01248813          	addi	a6,s1,18
   145e0:	87a6                	mv	a5,s1
   145e2:	0007d683          	lhu	a3,0(a5)
   145e6:	0789                	addi	a5,a5,2
   145e8:	e2a5                	bnez	a3,14648 <ediv+0xfc>
   145ea:	ff079ce3          	bne	a5,a6,145e2 <ediv+0x96>
   145ee:	67a1                	lui	a5,0x8
   145f0:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   145f2:	20f59663          	bne	a1,a5,147fe <ediv+0x2b2>
   145f6:	01298693          	addi	a3,s3,18
   145fa:	87ce                	mv	a5,s3
   145fc:	0007d583          	lhu	a1,0(a5)
   14600:	0789                	addi	a5,a5,2
   14602:	36059163          	bnez	a1,14964 <ediv+0x418>
   14606:	fed79be3          	bne	a5,a3,145fc <ediv+0xb0>
   1460a:	01040713          	addi	a4,s0,16
   1460e:	87a2                	mv	a5,s0
   14610:	0789                	addi	a5,a5,2
   14612:	fe079f23          	sh	zero,-2(a5)
   14616:	fee79de3          	bne	a5,a4,14610 <ediv+0xc4>
   1461a:	77f1                	lui	a5,0xffffc
   1461c:	00f41823          	sh	a5,16(s0)
   14620:	77e1                	lui	a5,0xffff8
   14622:	fff7c793          	not	a5,a5
   14626:	00f41923          	sh	a5,18(s0)
   1462a:	60ee                	ld	ra,216(sp)
   1462c:	644e                	ld	s0,208(sp)
   1462e:	64ae                	ld	s1,200(sp)
   14630:	690e                	ld	s2,192(sp)
   14632:	79ea                	ld	s3,184(sp)
   14634:	7a4a                	ld	s4,176(sp)
   14636:	7aaa                	ld	s5,168(sp)
   14638:	7b0a                	ld	s6,160(sp)
   1463a:	6bea                	ld	s7,152(sp)
   1463c:	6c4a                	ld	s8,144(sp)
   1463e:	6caa                	ld	s9,136(sp)
   14640:	6d0a                	ld	s10,128(sp)
   14642:	7de6                	ld	s11,120(sp)
   14644:	612d                	addi	sp,sp,224
   14646:	8082                	ret
   14648:	67a1                	lui	a5,0x8
   1464a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1464c:	1cf58163          	beq	a1,a5,1480e <ediv+0x2c2>
   14650:	8526                	mv	a0,s1
   14652:	080c                	addi	a1,sp,16
   14654:	889ff0ef          	jal	ra,13edc <emovi>
   14658:	180c                	addi	a1,sp,48
   1465a:	854e                	mv	a0,s3
   1465c:	881ff0ef          	jal	ra,13edc <emovi>
   14660:	03215a83          	lhu	s5,50(sp)
   14664:	01215483          	lhu	s1,18(sp)
   14668:	200a8963          	beqz	s5,1487a <ediv+0x32e>
   1466c:	e456                	sd	s5,8(sp)
   1466e:	8726                	mv	a4,s1
   14670:	e026                	sd	s1,0(sp)
   14672:	085c                	addi	a5,sp,20
   14674:	1034                	addi	a3,sp,40
   14676:	ef09                	bnez	a4,14690 <ediv+0x144>
   14678:	2af68e63          	beq	a3,a5,14934 <ediv+0x3e8>
   1467c:	0007d703          	lhu	a4,0(a5)
   14680:	0789                	addi	a5,a5,2
   14682:	db7d                	beqz	a4,14678 <ediv+0x12c>
   14684:	0808                	addi	a0,sp,16
   14686:	dfaff0ef          	jal	ra,13c80 <enormlz>
   1468a:	40a487b3          	sub	a5,s1,a0
   1468e:	e03e                	sd	a5,0(sp)
   14690:	5742                	lw	a4,48(sp)
   14692:	03890a93          	addi	s5,s2,56
   14696:	87d6                	mv	a5,s5
   14698:	02e92a23          	sw	a4,52(s2)
   1469c:	04e90493          	addi	s1,s2,78
   146a0:	0789                	addi	a5,a5,2
   146a2:	fe079f23          	sh	zero,-2(a5)
   146a6:	fef49de3          	bne	s1,a5,146a0 <ediv+0x154>
   146aa:	1808                	addi	a0,sp,48
   146ac:	c44ff0ef          	jal	ra,13af0 <eshdn1>
   146b0:	01615b03          	lhu	s6,22(sp)
   146b4:	69c1                	lui	s3,0x10
   146b6:	04810c13          	addi	s8,sp,72
   146ba:	010b1a13          	slli	s4,s6,0x10
   146be:	416a0a33          	sub	s4,s4,s6
   146c2:	03210c93          	addi	s9,sp,50
   146c6:	19fd                	addi	s3,s3,-1 # ffff <exit-0xe9>
   146c8:	06a10d13          	addi	s10,sp,106
   146cc:	05210d93          	addi	s11,sp,82
   146d0:	03415783          	lhu	a5,52(sp)
   146d4:	03615703          	lhu	a4,54(sp)
   146d8:	8bce                	mv	s7,s3
   146da:	07c2                	slli	a5,a5,0x10
   146dc:	97ba                	add	a5,a5,a4
   146de:	00fa6863          	bltu	s4,a5,146ee <ediv+0x1a2>
   146e2:	0367d7b3          	divu	a5,a5,s6
   146e6:	03079b93          	slli	s7,a5,0x30
   146ea:	030bdb93          	srli	s7,s7,0x30
   146ee:	0890                	addi	a2,sp,80
   146f0:	080c                	addi	a1,sp,16
   146f2:	855e                	mv	a0,s7
   146f4:	c98ff0ef          	jal	ra,13b8c <m16m>
   146f8:	1858                	addi	a4,sp,52
   146fa:	08dc                	addi	a5,sp,84
   146fc:	0007d603          	lhu	a2,0(a5)
   14700:	00075683          	lhu	a3,0(a4) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd86e0>
   14704:	0789                	addi	a5,a5,2
   14706:	0709                	addi	a4,a4,2
   14708:	18d61b63          	bne	a2,a3,1489e <ediv+0x352>
   1470c:	ffa798e3          	bne	a5,s10,146fc <ediv+0x1b0>
   14710:	4781                	li	a5,0
   14712:	10b4                	addi	a3,sp,104
   14714:	8662                	mv	a2,s8
   14716:	00065703          	lhu	a4,0(a2)
   1471a:	0006d583          	lhu	a1,0(a3)
   1471e:	1679                	addi	a2,a2,-2
   14720:	8f1d                	sub	a4,a4,a5
   14722:	8f0d                	sub	a4,a4,a1
   14724:	01075793          	srli	a5,a4,0x10
   14728:	00e61123          	sh	a4,2(a2)
   1472c:	8b85                	andi	a5,a5,1
   1472e:	16f9                	addi	a3,a3,-2
   14730:	ff9613e3          	bne	a2,s9,14716 <ediv+0x1ca>
   14734:	017a9023          	sh	s7,0(s5)
   14738:	185c                	addi	a5,sp,52
   1473a:	0027d703          	lhu	a4,2(a5)
   1473e:	0789                	addi	a5,a5,2
   14740:	fee79f23          	sh	a4,-2(a5)
   14744:	ff879be3          	bne	a5,s8,1473a <ediv+0x1ee>
   14748:	04011423          	sh	zero,72(sp)
   1474c:	0a89                	addi	s5,s5,2
   1474e:	f95491e3          	bne	s1,s5,146d0 <ediv+0x184>
   14752:	4701                	li	a4,0
   14754:	185c                	addi	a5,sp,52
   14756:	04a10613          	addi	a2,sp,74
   1475a:	0007d683          	lhu	a3,0(a5)
   1475e:	0789                	addi	a5,a5,2
   14760:	8f55                	or	a4,a4,a3
   14762:	fec79ce3          	bne	a5,a2,1475a <ediv+0x20e>
   14766:	2701                	sext.w	a4,a4
   14768:	00e035b3          	snez	a1,a4
   1476c:	181c                	addi	a5,sp,48
   1476e:	03490713          	addi	a4,s2,52
   14772:	00075683          	lhu	a3,0(a4)
   14776:	0789                	addi	a5,a5,2
   14778:	0709                	addi	a4,a4,2
   1477a:	fed79f23          	sh	a3,-2(a5)
   1477e:	fef61ae3          	bne	a2,a5,14772 <ediv+0x226>
   14782:	67a2                	ld	a5,8(sp)
   14784:	6702                	ld	a4,0(sp)
   14786:	6691                	lui	a3,0x4
   14788:	16fd                	addi	a3,a3,-1 # 3fff <exit-0xc0e9>
   1478a:	40e78ab3          	sub	s5,a5,a4
   1478e:	1808                	addi	a0,sp,48
   14790:	87ca                	mv	a5,s2
   14792:	04000713          	li	a4,64
   14796:	96d6                	add	a3,a3,s5
   14798:	4601                	li	a2,0
   1479a:	8bdff0ef          	jal	ra,14056 <emdnorm>
   1479e:	03015703          	lhu	a4,48(sp)
   147a2:	01015783          	lhu	a5,16(sp)
   147a6:	85a2                	mv	a1,s0
   147a8:	1808                	addi	a0,sp,48
   147aa:	8f99                	sub	a5,a5,a4
   147ac:	00f037b3          	snez	a5,a5
   147b0:	40f007bb          	negw	a5,a5
   147b4:	02f11823          	sh	a5,48(sp)
   147b8:	c3cff0ef          	jal	ra,13bf4 <emovo.constprop.0>
   147bc:	b5bd                	j	1462a <ediv+0xde>
   147be:	01448713          	addi	a4,s1,20
   147c2:	0004d783          	lhu	a5,0(s1)
   147c6:	0489                	addi	s1,s1,2
   147c8:	0409                	addi	s0,s0,2
   147ca:	fef41f23          	sh	a5,-2(s0)
   147ce:	fee49ae3          	bne	s1,a4,147c2 <ediv+0x276>
   147d2:	bda1                	j	1462a <ediv+0xde>
   147d4:	01440713          	addi	a4,s0,20
   147d8:	0009d783          	lhu	a5,0(s3)
   147dc:	0409                	addi	s0,s0,2
   147de:	0989                	addi	s3,s3,2
   147e0:	fef41f23          	sh	a5,-2(s0)
   147e4:	fee41ae3          	bne	s0,a4,147d8 <ediv+0x28c>
   147e8:	b589                	j	1462a <ediv+0xde>
   147ea:	cc0a0593          	addi	a1,s4,-832
   147ee:	854e                	mv	a0,s3
   147f0:	f82ff0ef          	jal	ra,13f72 <ecmp>
   147f4:	dc0518e3          	bnez	a0,145c4 <ediv+0x78>
   147f8:	bd09                	j	1460a <ediv+0xbe>
   147fa:	e4080be3          	beqz	a6,14650 <ediv+0x104>
   147fe:	01440793          	addi	a5,s0,20
   14802:	0409                	addi	s0,s0,2
   14804:	fe041f23          	sh	zero,-2(s0)
   14808:	fef41de3          	bne	s0,a5,14802 <ediv+0x2b6>
   1480c:	bd39                	j	1462a <ediv+0xde>
   1480e:	4801                	li	a6,0
   14810:	01298693          	addi	a3,s3,18
   14814:	87ce                	mv	a5,s3
   14816:	0007d583          	lhu	a1,0(a5)
   1481a:	0789                	addi	a5,a5,2
   1481c:	fdf9                	bnez	a1,147fa <ediv+0x2ae>
   1481e:	fed79ce3          	bne	a5,a3,14816 <ediv+0x2ca>
   14822:	67a1                	lui	a5,0x8
   14824:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14826:	04f50163          	beq	a0,a5,14868 <ediv+0x31c>
   1482a:	823d                	srli	a2,a2,0xf
   1482c:	0009d783          	lhu	a5,0(s3)
   14830:	0989                	addi	s3,s3,2
   14832:	12079563          	bnez	a5,1495c <ediv+0x410>
   14836:	fed99be3          	bne	s3,a3,1482c <ediv+0x2e0>
   1483a:	00f75793          	srli	a5,a4,0xf
   1483e:	8fb1                	xor	a5,a5,a2
   14840:	00f7979b          	slliw	a5,a5,0xf
   14844:	00f41923          	sh	a5,18(s0)
   14848:	01240713          	addi	a4,s0,18
   1484c:	87a2                	mv	a5,s0
   1484e:	0789                	addi	a5,a5,2
   14850:	fe079f23          	sh	zero,-2(a5)
   14854:	fef71de3          	bne	a4,a5,1484e <ediv+0x302>
   14858:	01245783          	lhu	a5,18(s0)
   1485c:	6721                	lui	a4,0x8
   1485e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14860:	8fd9                	or	a5,a5,a4
   14862:	00f41923          	sh	a5,18(s0)
   14866:	b3d1                	j	1462a <ediv+0xde>
   14868:	01248593          	addi	a1,s1,18
   1486c:	0004d783          	lhu	a5,0(s1)
   14870:	0489                	addi	s1,s1,2
   14872:	e7fd                	bnez	a5,14960 <ediv+0x414>
   14874:	feb49ce3          	bne	s1,a1,1486c <ediv+0x320>
   14878:	bf4d                	j	1482a <ediv+0x2de>
   1487a:	185c                	addi	a5,sp,52
   1487c:	04810c13          	addi	s8,sp,72
   14880:	0afc0263          	beq	s8,a5,14924 <ediv+0x3d8>
   14884:	0007d703          	lhu	a4,0(a5)
   14888:	0789                	addi	a5,a5,2
   1488a:	db7d                	beqz	a4,14880 <ediv+0x334>
   1488c:	1808                	addi	a0,sp,48
   1488e:	bf2ff0ef          	jal	ra,13c80 <enormlz>
   14892:	40a007b3          	neg	a5,a0
   14896:	01215703          	lhu	a4,18(sp)
   1489a:	e43e                	sd	a5,8(sp)
   1489c:	bbd1                	j	14670 <ediv+0x124>
   1489e:	e6c6f9e3          	bgeu	a3,a2,14710 <ediv+0x1c4>
   148a2:	fffb879b          	addiw	a5,s7,-1
   148a6:	03079893          	slli	a7,a5,0x30
   148aa:	0308d893          	srli	a7,a7,0x30
   148ae:	4681                	li	a3,0
   148b0:	1030                	addi	a2,sp,40
   148b2:	10b8                	addi	a4,sp,104
   148b4:	00075783          	lhu	a5,0(a4)
   148b8:	00065583          	lhu	a1,0(a2)
   148bc:	1779                	addi	a4,a4,-2
   148be:	8f95                	sub	a5,a5,a3
   148c0:	8f8d                	sub	a5,a5,a1
   148c2:	0107d693          	srli	a3,a5,0x10
   148c6:	00f71123          	sh	a5,2(a4)
   148ca:	8a85                	andi	a3,a3,1
   148cc:	1679                	addi	a2,a2,-2
   148ce:	ffb713e3          	bne	a4,s11,148b4 <ediv+0x368>
   148d2:	1858                	addi	a4,sp,52
   148d4:	08dc                	addi	a5,sp,84
   148d6:	0007d603          	lhu	a2,0(a5)
   148da:	00075683          	lhu	a3,0(a4)
   148de:	0789                	addi	a5,a5,2
   148e0:	0709                	addi	a4,a4,2
   148e2:	00d61663          	bne	a2,a3,148ee <ediv+0x3a2>
   148e6:	ffa798e3          	bne	a5,s10,148d6 <ediv+0x38a>
   148ea:	8bc6                	mv	s7,a7
   148ec:	b515                	j	14710 <ediv+0x1c4>
   148ee:	fec6fee3          	bgeu	a3,a2,148ea <ediv+0x39e>
   148f2:	ffeb851b          	addiw	a0,s7,-2
   148f6:	03051b93          	slli	s7,a0,0x30
   148fa:	030bdb93          	srli	s7,s7,0x30
   148fe:	4681                	li	a3,0
   14900:	1030                	addi	a2,sp,40
   14902:	10b8                	addi	a4,sp,104
   14904:	00075783          	lhu	a5,0(a4)
   14908:	00065583          	lhu	a1,0(a2)
   1490c:	1779                	addi	a4,a4,-2
   1490e:	8f95                	sub	a5,a5,a3
   14910:	8f8d                	sub	a5,a5,a1
   14912:	0107d693          	srli	a3,a5,0x10
   14916:	00f71123          	sh	a5,2(a4)
   1491a:	8a85                	andi	a3,a3,1
   1491c:	1679                	addi	a2,a2,-2
   1491e:	ffb713e3          	bne	a4,s11,14904 <ediv+0x3b8>
   14922:	b3fd                	j	14710 <ediv+0x1c4>
   14924:	01440793          	addi	a5,s0,20
   14928:	0409                	addi	s0,s0,2
   1492a:	fe041f23          	sh	zero,-2(s0)
   1492e:	fef41de3          	bne	s0,a5,14928 <ediv+0x3dc>
   14932:	b9e5                	j	1462a <ediv+0xde>
   14934:	01015683          	lhu	a3,16(sp)
   14938:	03015603          	lhu	a2,48(sp)
   1493c:	01240713          	addi	a4,s0,18
   14940:	87a2                	mv	a5,s0
   14942:	8e91                	sub	a3,a3,a2
   14944:	00d036b3          	snez	a3,a3
   14948:	00f6969b          	slliw	a3,a3,0xf
   1494c:	00d41923          	sh	a3,18(s0)
   14950:	0789                	addi	a5,a5,2
   14952:	fe079f23          	sh	zero,-2(a5)
   14956:	fef71de3          	bne	a4,a5,14950 <ediv+0x404>
   1495a:	bdfd                	j	14858 <ediv+0x30c>
   1495c:	4781                	li	a5,0
   1495e:	b5c5                	j	1483e <ediv+0x2f2>
   14960:	4601                	li	a2,0
   14962:	b5e9                	j	1482c <ediv+0x2e0>
   14964:	4805                	li	a6,1
   14966:	b57d                	j	14814 <ediv+0x2c8>

0000000000014968 <emul>:
   14968:	7131                	addi	sp,sp,-192
   1496a:	f526                	sd	s1,168(sp)
   1496c:	84aa                	mv	s1,a0
   1496e:	01255503          	lhu	a0,18(a0)
   14972:	6721                	lui	a4,0x8
   14974:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14976:	f922                	sd	s0,176(sp)
   14978:	f14a                	sd	s2,160(sp)
   1497a:	e952                	sd	s4,144(sp)
   1497c:	fd06                	sd	ra,184(sp)
   1497e:	ed4e                	sd	s3,152(sp)
   14980:	e556                	sd	s5,136(sp)
   14982:	e15a                	sd	s6,128(sp)
   14984:	fcde                	sd	s7,120(sp)
   14986:	f8e2                	sd	s8,112(sp)
   14988:	f4e6                	sd	s9,104(sp)
   1498a:	00e57833          	and	a6,a0,a4
   1498e:	892e                	mv	s2,a1
   14990:	8432                	mv	s0,a2
   14992:	8a36                	mv	s4,a3
   14994:	00e81b63          	bne	a6,a4,149aa <emul+0x42>
   14998:	01248993          	addi	s3,s1,18
   1499c:	8726                	mv	a4,s1
   1499e:	00075603          	lhu	a2,0(a4)
   149a2:	0709                	addi	a4,a4,2
   149a4:	e67d                	bnez	a2,14a92 <emul+0x12a>
   149a6:	ff371ce3          	bne	a4,s3,1499e <emul+0x36>
   149aa:	01295603          	lhu	a2,18(s2)
   149ae:	67a1                	lui	a5,0x8
   149b0:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   149b2:	00f675b3          	and	a1,a2,a5
   149b6:	06f58c63          	beq	a1,a5,14a2e <emul+0xc6>
   149ba:	10f81363          	bne	a6,a5,14ac0 <emul+0x158>
   149be:	01248993          	addi	s3,s1,18
   149c2:	87a6                	mv	a5,s1
   149c4:	0007d703          	lhu	a4,0(a5)
   149c8:	0789                	addi	a5,a5,2
   149ca:	1c071b63          	bnez	a4,14ba0 <emul+0x238>
   149ce:	fef99be3          	bne	s3,a5,149c4 <emul+0x5c>
   149d2:	65f5                	lui	a1,0x1d
   149d4:	cc058593          	addi	a1,a1,-832 # 1ccc0 <ezero>
   149d8:	854a                	mv	a0,s2
   149da:	d98ff0ef          	jal	ra,13f72 <ecmp>
   149de:	1a050063          	beqz	a0,14b7e <emul+0x216>
   149e2:	01295603          	lhu	a2,18(s2)
   149e6:	67a1                	lui	a5,0x8
   149e8:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   149ea:	00f675b3          	and	a1,a2,a5
   149ee:	1af58d63          	beq	a1,a5,14ba8 <emul+0x240>
   149f2:	0124d503          	lhu	a0,18(s1)
   149f6:	00f57733          	and	a4,a0,a5
   149fa:	0cf71363          	bne	a4,a5,14ac0 <emul+0x158>
   149fe:	87a6                	mv	a5,s1
   14a00:	0007d703          	lhu	a4,0(a5)
   14a04:	0789                	addi	a5,a5,2
   14a06:	0e071a63          	bnez	a4,14afa <emul+0x192>
   14a0a:	fef99be3          	bne	s3,a5,14a00 <emul+0x98>
   14a0e:	0004d783          	lhu	a5,0(s1)
   14a12:	0489                	addi	s1,s1,2
   14a14:	28079e63          	bnez	a5,14cb0 <emul+0x348>
   14a18:	ff349be3          	bne	s1,s3,14a0e <emul+0xa6>
   14a1c:	00f55713          	srli	a4,a0,0xf
   14a20:	67a1                	lui	a5,0x8
   14a22:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14a24:	10f59b63          	bne	a1,a5,14b3a <emul+0x1d2>
   14a28:	01290693          	addi	a3,s2,18
   14a2c:	a201                	j	14b2c <emul+0x1c4>
   14a2e:	01290693          	addi	a3,s2,18
   14a32:	874a                	mv	a4,s2
   14a34:	00075783          	lhu	a5,0(a4)
   14a38:	0709                	addi	a4,a4,2
   14a3a:	12079763          	bnez	a5,14b68 <emul+0x200>
   14a3e:	fee69be3          	bne	a3,a4,14a34 <emul+0xcc>
   14a42:	67a1                	lui	a5,0x8
   14a44:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14a46:	f6f80ce3          	beq	a6,a5,149be <emul+0x56>
   14a4a:	87ca                	mv	a5,s2
   14a4c:	0007d703          	lhu	a4,0(a5)
   14a50:	0789                	addi	a5,a5,2
   14a52:	28071163          	bnez	a4,14cd4 <emul+0x36c>
   14a56:	fef69be3          	bne	a3,a5,14a4c <emul+0xe4>
   14a5a:	65f5                	lui	a1,0x1d
   14a5c:	cc058593          	addi	a1,a1,-832 # 1ccc0 <ezero>
   14a60:	8526                	mv	a0,s1
   14a62:	d10ff0ef          	jal	ra,13f72 <ecmp>
   14a66:	10050c63          	beqz	a0,14b7e <emul+0x216>
   14a6a:	0124d503          	lhu	a0,18(s1)
   14a6e:	01295603          	lhu	a2,18(s2)
   14a72:	67a1                	lui	a5,0x8
   14a74:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14a76:	00f576b3          	and	a3,a0,a5
   14a7a:	00f67733          	and	a4,a2,a5
   14a7e:	8836                	mv	a6,a3
   14a80:	0007059b          	sext.w	a1,a4
   14a84:	06f69d63          	bne	a3,a5,14afe <emul+0x196>
   14a88:	01248993          	addi	s3,s1,18
   14a8c:	0007059b          	sext.w	a1,a4
   14a90:	b7bd                	j	149fe <emul+0x96>
   14a92:	01440713          	addi	a4,s0,20
   14a96:	0004d783          	lhu	a5,0(s1)
   14a9a:	0409                	addi	s0,s0,2
   14a9c:	0489                	addi	s1,s1,2
   14a9e:	fef41f23          	sh	a5,-2(s0)
   14aa2:	fee41ae3          	bne	s0,a4,14a96 <emul+0x12e>
   14aa6:	70ea                	ld	ra,184(sp)
   14aa8:	744a                	ld	s0,176(sp)
   14aaa:	74aa                	ld	s1,168(sp)
   14aac:	790a                	ld	s2,160(sp)
   14aae:	69ea                	ld	s3,152(sp)
   14ab0:	6a4a                	ld	s4,144(sp)
   14ab2:	6aaa                	ld	s5,136(sp)
   14ab4:	6b0a                	ld	s6,128(sp)
   14ab6:	7be6                	ld	s7,120(sp)
   14ab8:	7c46                	ld	s8,112(sp)
   14aba:	7ca6                	ld	s9,104(sp)
   14abc:	6129                	addi	sp,sp,192
   14abe:	8082                	ret
   14ac0:	8526                	mv	a0,s1
   14ac2:	858a                	mv	a1,sp
   14ac4:	c18ff0ef          	jal	ra,13edc <emovi>
   14ac8:	100c                	addi	a1,sp,32
   14aca:	854a                	mv	a0,s2
   14acc:	c10ff0ef          	jal	ra,13edc <emovi>
   14ad0:	00215483          	lhu	s1,2(sp)
   14ad4:	02215983          	lhu	s3,34(sp)
   14ad8:	e8f9                	bnez	s1,14bae <emul+0x246>
   14ada:	005c                	addi	a5,sp,4
   14adc:	0834                	addi	a3,sp,24
   14ade:	1cf68b63          	beq	a3,a5,14cb4 <emul+0x34c>
   14ae2:	0007d703          	lhu	a4,0(a5)
   14ae6:	0789                	addi	a5,a5,2
   14ae8:	db7d                	beqz	a4,14ade <emul+0x176>
   14aea:	850a                	mv	a0,sp
   14aec:	994ff0ef          	jal	ra,13c80 <enormlz>
   14af0:	02215703          	lhu	a4,34(sp)
   14af4:	40a004b3          	neg	s1,a0
   14af8:	a865                	j	14bb0 <emul+0x248>
   14afa:	6821                	lui	a6,0x8
   14afc:	187d                	addi	a6,a6,-1 # 7fff <exit-0x80e9>
   14afe:	67a1                	lui	a5,0x8
   14b00:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14b02:	faf59fe3          	bne	a1,a5,14ac0 <emul+0x158>
   14b06:	01290693          	addi	a3,s2,18
   14b0a:	87ca                	mv	a5,s2
   14b0c:	0007d703          	lhu	a4,0(a5)
   14b10:	0789                	addi	a5,a5,2
   14b12:	f75d                	bnez	a4,14ac0 <emul+0x158>
   14b14:	fed79ce3          	bne	a5,a3,14b0c <emul+0x1a4>
   14b18:	67a1                	lui	a5,0x8
   14b1a:	2801                	sext.w	a6,a6
   14b1c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14b1e:	00f55713          	srli	a4,a0,0xf
   14b22:	01248993          	addi	s3,s1,18
   14b26:	85c2                	mv	a1,a6
   14b28:	eef803e3          	beq	a6,a5,14a0e <emul+0xa6>
   14b2c:	00095783          	lhu	a5,0(s2)
   14b30:	0909                	addi	s2,s2,2
   14b32:	16079d63          	bnez	a5,14cac <emul+0x344>
   14b36:	fed91be3          	bne	s2,a3,14b2c <emul+0x1c4>
   14b3a:	00f65793          	srli	a5,a2,0xf
   14b3e:	8fb9                	xor	a5,a5,a4
   14b40:	00f7979b          	slliw	a5,a5,0xf
   14b44:	00f41923          	sh	a5,18(s0)
   14b48:	01240713          	addi	a4,s0,18
   14b4c:	87a2                	mv	a5,s0
   14b4e:	0789                	addi	a5,a5,2
   14b50:	fe079f23          	sh	zero,-2(a5)
   14b54:	fee79de3          	bne	a5,a4,14b4e <emul+0x1e6>
   14b58:	01245783          	lhu	a5,18(s0)
   14b5c:	6721                	lui	a4,0x8
   14b5e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   14b60:	8fd9                	or	a5,a5,a4
   14b62:	00f41923          	sh	a5,18(s0)
   14b66:	b781                	j	14aa6 <emul+0x13e>
   14b68:	01490713          	addi	a4,s2,20
   14b6c:	00095783          	lhu	a5,0(s2)
   14b70:	0909                	addi	s2,s2,2
   14b72:	0409                	addi	s0,s0,2
   14b74:	fef41f23          	sh	a5,-2(s0)
   14b78:	fee91ae3          	bne	s2,a4,14b6c <emul+0x204>
   14b7c:	b72d                	j	14aa6 <emul+0x13e>
   14b7e:	01040713          	addi	a4,s0,16
   14b82:	87a2                	mv	a5,s0
   14b84:	0789                	addi	a5,a5,2
   14b86:	fe079f23          	sh	zero,-2(a5)
   14b8a:	fee79de3          	bne	a5,a4,14b84 <emul+0x21c>
   14b8e:	77f1                	lui	a5,0xffffc
   14b90:	00f41823          	sh	a5,16(s0)
   14b94:	77e1                	lui	a5,0xffff8
   14b96:	fff7c793          	not	a5,a5
   14b9a:	00f41923          	sh	a5,18(s0)
   14b9e:	b721                	j	14aa6 <emul+0x13e>
   14ba0:	67a1                	lui	a5,0x8
   14ba2:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14ba4:	e4f59de3          	bne	a1,a5,149fe <emul+0x96>
   14ba8:	01290693          	addi	a3,s2,18
   14bac:	bd79                	j	14a4a <emul+0xe2>
   14bae:	874e                	mv	a4,s3
   14bb0:	894e                	mv	s2,s3
   14bb2:	105c                	addi	a5,sp,36
   14bb4:	1834                	addi	a3,sp,56
   14bb6:	ef11                	bnez	a4,14bd2 <emul+0x26a>
   14bb8:	10d78663          	beq	a5,a3,14cc4 <emul+0x35c>
   14bbc:	0007d703          	lhu	a4,0(a5)
   14bc0:	0789                	addi	a5,a5,2
   14bc2:	db7d                	beqz	a4,14bb8 <emul+0x250>
   14bc4:	1008                	addi	a0,sp,32
   14bc6:	8baff0ef          	jal	ra,13c80 <enormlz>
   14bca:	02215703          	lhu	a4,34(sp)
   14bce:	40a98933          	sub	s2,s3,a0
   14bd2:	02015783          	lhu	a5,32(sp)
   14bd6:	038a0993          	addi	s3,s4,56
   14bda:	02ea1b23          	sh	a4,54(s4)
   14bde:	02fa1a23          	sh	a5,52(s4)
   14be2:	04ea0713          	addi	a4,s4,78
   14be6:	87ce                	mv	a5,s3
   14be8:	00079023          	sh	zero,0(a5)
   14bec:	0789                	addi	a5,a5,2
   14bee:	fee79de3          	bne	a5,a4,14be8 <emul+0x280>
   14bf2:	04ca0c13          	addi	s8,s4,76
   14bf6:	4b81                	li	s7,0
   14bf8:	01810a93          	addi	s5,sp,24
   14bfc:	00410c93          	addi	s9,sp,4
   14c00:	04210b13          	addi	s6,sp,66
   14c04:	000ad503          	lhu	a0,0(s5)
   14c08:	1af9                	addi	s5,s5,-2
   14c0a:	e935                	bnez	a0,14c7e <emul+0x316>
   14c0c:	04ca5783          	lhu	a5,76(s4)
   14c10:	8762                	mv	a4,s8
   14c12:	00fbebb3          	or	s7,s7,a5
   14c16:	ffe75603          	lhu	a2,-2(a4)
   14c1a:	1779                	addi	a4,a4,-2
   14c1c:	00c71123          	sh	a2,2(a4)
   14c20:	fee99be3          	bne	s3,a4,14c16 <emul+0x2ae>
   14c24:	020a1c23          	sh	zero,56(s4)
   14c28:	fd9a9ee3          	bne	s5,s9,14c04 <emul+0x29c>
   14c2c:	034a0713          	addi	a4,s4,52
   14c30:	101c                	addi	a5,sp,32
   14c32:	03a10613          	addi	a2,sp,58
   14c36:	00075683          	lhu	a3,0(a4)
   14c3a:	0789                	addi	a5,a5,2
   14c3c:	0709                	addi	a4,a4,2
   14c3e:	fed79f23          	sh	a3,-2(a5)
   14c42:	fec79ae3          	bne	a5,a2,14c36 <emul+0x2ce>
   14c46:	76f1                	lui	a3,0xffffc
   14c48:	94ca                	add	s1,s1,s2
   14c4a:	0689                	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffdc6e2>
   14c4c:	85de                	mv	a1,s7
   14c4e:	1008                	addi	a0,sp,32
   14c50:	87d2                	mv	a5,s4
   14c52:	04000713          	li	a4,64
   14c56:	96a6                	add	a3,a3,s1
   14c58:	4601                	li	a2,0
   14c5a:	bfcff0ef          	jal	ra,14056 <emdnorm>
   14c5e:	02015703          	lhu	a4,32(sp)
   14c62:	00015783          	lhu	a5,0(sp)
   14c66:	85a2                	mv	a1,s0
   14c68:	1008                	addi	a0,sp,32
   14c6a:	8f99                	sub	a5,a5,a4
   14c6c:	00f037b3          	snez	a5,a5
   14c70:	40f007bb          	negw	a5,a5
   14c74:	02f11023          	sh	a5,32(sp)
   14c78:	f7dfe0ef          	jal	ra,13bf4 <emovo.constprop.0>
   14c7c:	b52d                	j	14aa6 <emul+0x13e>
   14c7e:	0090                	addi	a2,sp,64
   14c80:	100c                	addi	a1,sp,32
   14c82:	f0bfe0ef          	jal	ra,13b8c <m16m>
   14c86:	8562                	mv	a0,s8
   14c88:	4581                	li	a1,0
   14c8a:	08b0                	addi	a2,sp,88
   14c8c:	00055783          	lhu	a5,0(a0)
   14c90:	00065703          	lhu	a4,0(a2)
   14c94:	1579                	addi	a0,a0,-2
   14c96:	1679                	addi	a2,a2,-2
   14c98:	973e                	add	a4,a4,a5
   14c9a:	972e                	add	a4,a4,a1
   14c9c:	01075593          	srli	a1,a4,0x10
   14ca0:	00e51123          	sh	a4,2(a0)
   14ca4:	8985                	andi	a1,a1,1
   14ca6:	ff6613e3          	bne	a2,s6,14c8c <emul+0x324>
   14caa:	b78d                	j	14c0c <emul+0x2a4>
   14cac:	4781                	li	a5,0
   14cae:	bd41                	j	14b3e <emul+0x1d6>
   14cb0:	4701                	li	a4,0
   14cb2:	b3bd                	j	14a20 <emul+0xb8>
   14cb4:	01440793          	addi	a5,s0,20
   14cb8:	0409                	addi	s0,s0,2
   14cba:	fe041f23          	sh	zero,-2(s0)
   14cbe:	fef41de3          	bne	s0,a5,14cb8 <emul+0x350>
   14cc2:	b3d5                	j	14aa6 <emul+0x13e>
   14cc4:	01440793          	addi	a5,s0,20
   14cc8:	0409                	addi	s0,s0,2
   14cca:	fe041f23          	sh	zero,-2(s0)
   14cce:	fef41de3          	bne	s0,a5,14cc8 <emul+0x360>
   14cd2:	bbd1                	j	14aa6 <emul+0x13e>
   14cd4:	0124d503          	lhu	a0,18(s1)
   14cd8:	67a1                	lui	a5,0x8
   14cda:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14cdc:	00f575b3          	and	a1,a0,a5
   14ce0:	01248993          	addi	s3,s1,18
   14ce4:	882e                	mv	a6,a1
   14ce6:	e2f592e3          	bne	a1,a5,14b0a <emul+0x1a2>
   14cea:	bb11                	j	149fe <emul+0x96>

0000000000014cec <_ldtoa_r>:
   14cec:	d9010113          	addi	sp,sp,-624
   14cf0:	09100313          	li	t1,145
   14cf4:	f4b2                	sd	a2,104(sp)
   14cf6:	06053e03          	ld	t3,96(a0)
   14cfa:	02031613          	slli	a2,t1,0x20
   14cfe:	167d                	addi	a2,a2,-1
   14d00:	ec3e                	sd	a5,24(sp)
   14d02:	09000793          	li	a5,144
   14d06:	26813023          	sd	s0,608(sp)
   14d0a:	23513c23          	sd	s5,568(sp)
   14d0e:	23713423          	sd	s7,552(sp)
   14d12:	26113423          	sd	ra,616(sp)
   14d16:	24913c23          	sd	s1,600(sp)
   14d1a:	25213823          	sd	s2,592(sp)
   14d1e:	25313423          	sd	s3,584(sp)
   14d22:	25413023          	sd	s4,576(sp)
   14d26:	23613823          	sd	s6,560(sp)
   14d2a:	23813023          	sd	s8,544(sp)
   14d2e:	21913c23          	sd	s9,536(sp)
   14d32:	21a13823          	sd	s10,528(sp)
   14d36:	21b13423          	sd	s11,520(sp)
   14d3a:	f0ae                	sd	a1,96(sp)
   14d3c:	fb32                	sd	a2,432(sp)
   14d3e:	e43a                	sd	a4,8(sp)
   14d40:	f046                	sd	a7,32(sp)
   14d42:	e83e                	sd	a5,16(sp)
   14d44:	8aaa                	mv	s5,a0
   14d46:	8bb6                	mv	s7,a3
   14d48:	8442                	mv	s0,a6
   14d4a:	020e0263          	beqz	t3,14d6e <_ldtoa_r+0x82>
   14d4e:	5538                	lw	a4,104(a0)
   14d50:	4785                	li	a5,1
   14d52:	85f2                	mv	a1,t3
   14d54:	00e797bb          	sllw	a5,a5,a4
   14d58:	00fe2623          	sw	a5,12(t3)
   14d5c:	00ee2423          	sw	a4,8(t3)
   14d60:	102010ef          	jal	ra,15e62 <_Bfree>
   14d64:	1b412783          	lw	a5,436(sp)
   14d68:	060ab023          	sd	zero,96(s5)
   14d6c:	e83e                	sd	a5,16(sp)
   14d6e:	090c                	addi	a1,sp,144
   14d70:	1088                	addi	a0,sp,96
   14d72:	edeff0ef          	jal	ra,14450 <e113toe.isra.0>
   14d76:	0a215683          	lhu	a3,162(sp)
   14d7a:	67a1                	lui	a5,0x8
   14d7c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14d7e:	00f6f5b3          	and	a1,a3,a5
   14d82:	00f59c63          	bne	a1,a5,14d9a <_ldtoa_r+0xae>
   14d86:	091c                	addi	a5,sp,144
   14d88:	0a210613          	addi	a2,sp,162
   14d8c:	0007d703          	lhu	a4,0(a5)
   14d90:	0789                	addi	a5,a5,2
   14d92:	0e0714e3          	bnez	a4,1567a <_ldtoa_r+0x98e>
   14d96:	fec79be3          	bne	a5,a2,14d8c <_ldtoa_r+0xa0>
   14d9a:	82bd                	srli	a3,a3,0xf
   14d9c:	c014                	sw	a3,0(s0)
   14d9e:	478d                	li	a5,3
   14da0:	68fb8163          	beq	s7,a5,15422 <_ldtoa_r+0x736>
   14da4:	47d1                	li	a5,20
   14da6:	e03e                	sd	a5,0(sp)
   14da8:	0c0b9ce3          	bnez	s7,15680 <_ldtoa_r+0x994>
   14dac:	67a1                	lui	a5,0x8
   14dae:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14db0:	00f59c63          	bne	a1,a5,14dc8 <_ldtoa_r+0xdc>
   14db4:	091c                	addi	a5,sp,144
   14db6:	0a210693          	addi	a3,sp,162
   14dba:	0007d703          	lhu	a4,0(a5)
   14dbe:	0789                	addi	a5,a5,2
   14dc0:	6c071263          	bnez	a4,15484 <_ldtoa_r+0x798>
   14dc4:	fed79be3          	bne	a5,a3,14dba <_ldtoa_r+0xce>
   14dc8:	09000793          	li	a5,144
   14dcc:	1af12a23          	sw	a5,436(sp)
   14dd0:	1918                	addi	a4,sp,176
   14dd2:	091c                	addi	a5,sp,144
   14dd4:	1150                	addi	a2,sp,164
   14dd6:	0007d683          	lhu	a3,0(a5)
   14dda:	0789                	addi	a5,a5,2
   14ddc:	0709                	addi	a4,a4,2
   14dde:	fed71f23          	sh	a3,-2(a4)
   14de2:	fec79ae3          	bne	a5,a2,14dd6 <_ldtoa_r+0xea>
   14de6:	0c215603          	lhu	a2,194(sp)
   14dea:	f402                	sd	zero,40(sp)
   14dec:	00f65793          	srli	a5,a2,0xf
   14df0:	40079463          	bnez	a5,151f8 <_ldtoa_r+0x50c>
   14df4:	6d75                	lui	s10,0x1d
   14df6:	4681                	li	a3,0
   14df8:	099c                	addi	a5,sp,208
   14dfa:	ba0d0713          	addi	a4,s10,-1120 # 1cba0 <eone>
   14dfe:	0e410c13          	addi	s8,sp,228
   14e02:	a019                	j	14e08 <_ldtoa_r+0x11c>
   14e04:	00075683          	lhu	a3,0(a4)
   14e08:	0789                	addi	a5,a5,2
   14e0a:	fed79f23          	sh	a3,-2(a5)
   14e0e:	0709                	addi	a4,a4,2
   14e10:	ff879ae3          	bne	a5,s8,14e04 <_ldtoa_r+0x118>
   14e14:	10060363          	beqz	a2,14f1a <_ldtoa_r+0x22e>
   14e18:	67a1                	lui	a5,0x8
   14e1a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   14e1c:	1af605e3          	beq	a2,a5,157c6 <_ldtoa_r+0xada>
   14e20:	0c011783          	lh	a5,192(sp)
   14e24:	2007d3e3          	bgez	a5,1582a <_ldtoa_r+0xb3e>
   14e28:	190c                	addi	a1,sp,176
   14e2a:	ba0d0513          	addi	a0,s10,-1120
   14e2e:	944ff0ef          	jal	ra,13f72 <ecmp>
   14e32:	0e050e63          	beqz	a0,14f2e <_ldtoa_r+0x242>
   14e36:	66054363          	bltz	a0,1549c <_ldtoa_r+0x7b0>
   14e3a:	0c215783          	lhu	a5,194(sp)
   14e3e:	260794e3          	bnez	a5,158a6 <_ldtoa_r+0xbba>
   14e42:	0c011783          	lh	a5,192(sp)
   14e46:	3607c3e3          	bltz	a5,159ac <_ldtoa_r+0xcc0>
   14e4a:	67f5                	lui	a5,0x1d
   14e4c:	bb878793          	addi	a5,a5,-1096 # 1cbb8 <etens>
   14e50:	6df5                	lui	s11,0x1d
   14e52:	4481                	li	s1,0
   14e54:	e4be                	sd	a5,72(sp)
   14e56:	1b010a13          	addi	s4,sp,432
   14e5a:	ca8d8d93          	addi	s11,s11,-856 # 1cca8 <etens+0xf0>
   14e5e:	1910                	addi	a2,sp,176
   14e60:	86d2                	mv	a3,s4
   14e62:	85b2                	mv	a1,a2
   14e64:	856e                	mv	a0,s11
   14e66:	b03ff0ef          	jal	ra,14968 <emul>
   14e6a:	0c011783          	lh	a5,192(sp)
   14e6e:	34fd                	addiw	s1,s1,-1
   14e70:	fe07d7e3          	bgez	a5,14e5e <_ldtoa_r+0x172>
   14e74:	0a00                	addi	s0,sp,272
   14e76:	12810993          	addi	s3,sp,296
   14e7a:	8722                	mv	a4,s0
   14e7c:	191c                	addi	a5,sp,176
   14e7e:	01d0                	addi	a2,sp,196
   14e80:	0007d683          	lhu	a3,0(a5)
   14e84:	0789                	addi	a5,a5,2
   14e86:	0709                	addi	a4,a4,2
   14e88:	fed71f23          	sh	a3,-2(a4)
   14e8c:	fec79ae3          	bne	a5,a2,14e80 <_ldtoa_r+0x194>
   14e90:	6775                	lui	a4,0x1d
   14e92:	4681                	li	a3,0
   14e94:	099c                	addi	a5,sp,208
   14e96:	ba070713          	addi	a4,a4,-1120 # 1cba0 <eone>
   14e9a:	a019                	j	14ea0 <_ldtoa_r+0x1b4>
   14e9c:	00075683          	lhu	a3,0(a4)
   14ea0:	0789                	addi	a5,a5,2
   14ea2:	fed79f23          	sh	a3,-2(a5)
   14ea6:	0709                	addi	a4,a4,2
   14ea8:	ff879ae3          	bne	a5,s8,14e9c <_ldtoa_r+0x1b0>
   14eac:	6975                	lui	s2,0x1d
   14eae:	a9890913          	addi	s2,s2,-1384 # 1ca98 <emtens>
   14eb2:	6da6                	ld	s11,72(sp)
   14eb4:	7b7d                	lui	s6,0xfffff
   14eb6:	0f090c13          	addi	s8,s2,240
   14eba:	a019                	j	14ec0 <_ldtoa_r+0x1d4>
   14ebc:	0951                	addi	s2,s2,20
   14ebe:	0dd1                	addi	s11,s11,20
   14ec0:	85a2                	mv	a1,s0
   14ec2:	ba0d0513          	addi	a0,s10,-1120
   14ec6:	8acff0ef          	jal	ra,13f72 <ecmp>
   14eca:	02a05e63          	blez	a0,14f06 <_ldtoa_r+0x21a>
   14ece:	85a2                	mv	a1,s0
   14ed0:	854a                	mv	a0,s2
   14ed2:	8a0ff0ef          	jal	ra,13f72 <ecmp>
   14ed6:	02054063          	bltz	a0,14ef6 <_ldtoa_r+0x20a>
   14eda:	86d2                	mv	a3,s4
   14edc:	8622                	mv	a2,s0
   14ede:	85a2                	mv	a1,s0
   14ee0:	856e                	mv	a0,s11
   14ee2:	a87ff0ef          	jal	ra,14968 <emul>
   14ee6:	0990                	addi	a2,sp,208
   14ee8:	86d2                	mv	a3,s4
   14eea:	85b2                	mv	a1,a2
   14eec:	856e                	mv	a0,s11
   14eee:	a7bff0ef          	jal	ra,14968 <emul>
   14ef2:	009b04bb          	addw	s1,s6,s1
   14ef6:	01fb579b          	srliw	a5,s6,0x1f
   14efa:	016787bb          	addw	a5,a5,s6
   14efe:	4017db1b          	sraiw	s6,a5,0x1
   14f02:	fb891de3          	bne	s2,s8,14ebc <_ldtoa_r+0x1d0>
   14f06:	0990                	addi	a2,sp,208
   14f08:	86d2                	mv	a3,s4
   14f0a:	ba0d0593          	addi	a1,s10,-1120
   14f0e:	8532                	mv	a0,a2
   14f10:	e3cff0ef          	jal	ra,1454c <ediv>
   14f14:	17010913          	addi	s2,sp,368
   14f18:	a01d                	j	14f3e <_ldtoa_r+0x252>
   14f1a:	191c                	addi	a5,sp,176
   14f1c:	0c210693          	addi	a3,sp,194
   14f20:	0007d703          	lhu	a4,0(a5)
   14f24:	f00712e3          	bnez	a4,14e28 <_ldtoa_r+0x13c>
   14f28:	0789                	addi	a5,a5,2
   14f2a:	fed79be3          	bne	a5,a3,14f20 <_ldtoa_r+0x234>
   14f2e:	4481                	li	s1,0
   14f30:	17010913          	addi	s2,sp,368
   14f34:	1b010a13          	addi	s4,sp,432
   14f38:	0a00                	addi	s0,sp,272
   14f3a:	12810993          	addi	s3,sp,296
   14f3e:	85a2                	mv	a1,s0
   14f40:	0988                	addi	a0,sp,208
   14f42:	f9bfe0ef          	jal	ra,13edc <emovi>
   14f46:	0998                	addi	a4,sp,208
   14f48:	87a2                	mv	a5,s0
   14f4a:	0007d683          	lhu	a3,0(a5)
   14f4e:	0789                	addi	a5,a5,2
   14f50:	0709                	addi	a4,a4,2
   14f52:	fed71f23          	sh	a3,-2(a4)
   14f56:	ff379ae3          	bne	a5,s3,14f4a <_ldtoa_r+0x25e>
   14f5a:	85a2                	mv	a1,s0
   14f5c:	1908                	addi	a0,sp,176
   14f5e:	0e011423          	sh	zero,232(sp)
   14f62:	f7bfe0ef          	jal	ra,13edc <emovi>
   14f66:	191c                	addi	a5,sp,176
   14f68:	00045703          	lhu	a4,0(s0)
   14f6c:	0409                	addi	s0,s0,2
   14f6e:	0789                	addi	a5,a5,2
   14f70:	fee79f23          	sh	a4,-2(a5)
   14f74:	ff341ae3          	bne	s0,s3,14f68 <_ldtoa_r+0x27c>
   14f78:	8652                	mv	a2,s4
   14f7a:	190c                	addi	a1,sp,176
   14f7c:	0988                	addi	a0,sp,208
   14f7e:	0c011423          	sh	zero,200(sp)
   14f82:	bdaff0ef          	jal	ra,1435c <eiremain>
   14f86:	1fc15b03          	lhu	s6,508(sp)
   14f8a:	6475                	lui	s0,0x1d
   14f8c:	100b1863          	bnez	s6,1509c <_ldtoa_r+0x3b0>
   14f90:	0c810d93          	addi	s11,sp,200
   14f94:	0b210993          	addi	s3,sp,178
   14f98:	0f210d13          	addi	s10,sp,242
   14f9c:	cc040593          	addi	a1,s0,-832 # 1ccc0 <ezero>
   14fa0:	1908                	addi	a0,sp,176
   14fa2:	fd1fe0ef          	jal	ra,13f72 <ecmp>
   14fa6:	c97d                	beqz	a0,1509c <_ldtoa_r+0x3b0>
   14fa8:	4681                	li	a3,0
   14faa:	866e                	mv	a2,s11
   14fac:	00065783          	lhu	a5,0(a2)
   14fb0:	00f7d593          	srli	a1,a5,0xf
   14fb4:	c199                	beqz	a1,14fba <_ldtoa_r+0x2ce>
   14fb6:	0016e693          	ori	a3,a3,1
   14fba:	0017979b          	slliw	a5,a5,0x1
   14fbe:	17c2                	slli	a5,a5,0x30
   14fc0:	0026f593          	andi	a1,a3,2
   14fc4:	93c1                	srli	a5,a5,0x30
   14fc6:	c199                	beqz	a1,14fcc <_ldtoa_r+0x2e0>
   14fc8:	0017e793          	ori	a5,a5,1
   14fcc:	0016969b          	slliw	a3,a3,0x1
   14fd0:	00f61023          	sh	a5,0(a2)
   14fd4:	16c2                	slli	a3,a3,0x30
   14fd6:	1679                	addi	a2,a2,-2
   14fd8:	92c1                	srli	a3,a3,0x30
   14fda:	fd3619e3          	bne	a2,s3,14fac <_ldtoa_r+0x2c0>
   14fde:	1994                	addi	a3,sp,240
   14fe0:	191c                	addi	a5,sp,176
   14fe2:	0007d603          	lhu	a2,0(a5)
   14fe6:	0789                	addi	a5,a5,2
   14fe8:	0689                	addi	a3,a3,2
   14fea:	fec69f23          	sh	a2,-2(a3)
   14fee:	ffb79ae3          	bne	a5,s11,14fe2 <_ldtoa_r+0x2f6>
   14ff2:	10011423          	sh	zero,264(sp)
   14ff6:	4681                	li	a3,0
   14ff8:	0230                	addi	a2,sp,264
   14ffa:	00065783          	lhu	a5,0(a2)
   14ffe:	00f7d593          	srli	a1,a5,0xf
   15002:	c199                	beqz	a1,15008 <_ldtoa_r+0x31c>
   15004:	0016e693          	ori	a3,a3,1
   15008:	0017979b          	slliw	a5,a5,0x1
   1500c:	17c2                	slli	a5,a5,0x30
   1500e:	0026f593          	andi	a1,a3,2
   15012:	93c1                	srli	a5,a5,0x30
   15014:	c199                	beqz	a1,1501a <_ldtoa_r+0x32e>
   15016:	0017e793          	ori	a5,a5,1
   1501a:	0016969b          	slliw	a3,a3,0x1
   1501e:	00f61023          	sh	a5,0(a2)
   15022:	16c2                	slli	a3,a3,0x30
   15024:	1679                	addi	a2,a2,-2
   15026:	92c1                	srli	a3,a3,0x30
   15028:	fda619e3          	bne	a2,s10,14ffa <_ldtoa_r+0x30e>
   1502c:	4681                	li	a3,0
   1502e:	0230                	addi	a2,sp,264
   15030:	00065783          	lhu	a5,0(a2)
   15034:	00f7d593          	srli	a1,a5,0xf
   15038:	c199                	beqz	a1,1503e <_ldtoa_r+0x352>
   1503a:	0016e693          	ori	a3,a3,1
   1503e:	0017979b          	slliw	a5,a5,0x1
   15042:	17c2                	slli	a5,a5,0x30
   15044:	0026f593          	andi	a1,a3,2
   15048:	93c1                	srli	a5,a5,0x30
   1504a:	c199                	beqz	a1,15050 <_ldtoa_r+0x364>
   1504c:	0017e793          	ori	a5,a5,1
   15050:	0016969b          	slliw	a3,a3,0x1
   15054:	00f61023          	sh	a5,0(a2)
   15058:	16c2                	slli	a3,a3,0x30
   1505a:	1679                	addi	a2,a2,-2
   1505c:	92c1                	srli	a3,a3,0x30
   1505e:	fda619e3          	bne	a2,s10,15030 <_ldtoa_r+0x344>
   15062:	4581                	li	a1,0
   15064:	866e                	mv	a2,s11
   15066:	0234                	addi	a3,sp,264
   15068:	00065503          	lhu	a0,0(a2)
   1506c:	0006d783          	lhu	a5,0(a3)
   15070:	1679                	addi	a2,a2,-2
   15072:	16f9                	addi	a3,a3,-2
   15074:	97aa                	add	a5,a5,a0
   15076:	97ae                	add	a5,a5,a1
   15078:	0107d593          	srli	a1,a5,0x10
   1507c:	00f61123          	sh	a5,2(a2)
   15080:	8985                	andi	a1,a1,1
   15082:	ffa693e3          	bne	a3,s10,15068 <_ldtoa_r+0x37c>
   15086:	8652                	mv	a2,s4
   15088:	190c                	addi	a1,sp,176
   1508a:	0988                	addi	a0,sp,208
   1508c:	ad0ff0ef          	jal	ra,1435c <eiremain>
   15090:	1fc15783          	lhu	a5,508(sp)
   15094:	34fd                	addiw	s1,s1,-1
   15096:	f00783e3          	beqz	a5,14f9c <_ldtoa_r+0x2b0>
   1509a:	8b3e                	mv	s6,a5
   1509c:	7722                	ld	a4,40(sp)
   1509e:	02d00793          	li	a5,45
   150a2:	e319                	bnez	a4,150a8 <_ldtoa_r+0x3bc>
   150a4:	02000793          	li	a5,32
   150a8:	16f10823          	sb	a5,368(sp)
   150ac:	470d                	li	a4,3
   150ae:	6782                	ld	a5,0(sp)
   150b0:	00eb9363          	bne	s7,a4,150b6 <_ldtoa_r+0x3ca>
   150b4:	9fa5                	addw	a5,a5,s1
   150b6:	02a00713          	li	a4,42
   150ba:	0007841b          	sext.w	s0,a5
   150be:	00f75463          	bge	a4,a5,150c6 <_ldtoa_r+0x3da>
   150c2:	02a00413          	li	s0,42
   150c6:	4729                	li	a4,10
   150c8:	38eb0b63          	beq	s6,a4,1545e <_ldtoa_r+0x772>
   150cc:	030b0b1b          	addiw	s6,s6,48 # fffffffffffff030 <__BSS_END__+0xfffffffffffdf710>
   150d0:	02e00713          	li	a4,46
   150d4:	176108a3          	sb	s6,369(sp)
   150d8:	16e10923          	sb	a4,370(sp)
   150dc:	1207c663          	bltz	a5,15208 <_ldtoa_r+0x51c>
   150e0:	17310c13          	addi	s8,sp,371
   150e4:	4c81                	li	s9,0
   150e6:	0f010b13          	addi	s6,sp,240
   150ea:	0c810d93          	addi	s11,sp,200
   150ee:	0b210993          	addi	s3,sp,178
   150f2:	0f210d13          	addi	s10,sp,242
   150f6:	4601                	li	a2,0
   150f8:	85ee                	mv	a1,s11
   150fa:	0005d783          	lhu	a5,0(a1)
   150fe:	00f7d513          	srli	a0,a5,0xf
   15102:	c119                	beqz	a0,15108 <_ldtoa_r+0x41c>
   15104:	00166613          	ori	a2,a2,1
   15108:	0017979b          	slliw	a5,a5,0x1
   1510c:	17c2                	slli	a5,a5,0x30
   1510e:	00267513          	andi	a0,a2,2
   15112:	93c1                	srli	a5,a5,0x30
   15114:	c119                	beqz	a0,1511a <_ldtoa_r+0x42e>
   15116:	0017e793          	ori	a5,a5,1
   1511a:	0016161b          	slliw	a2,a2,0x1
   1511e:	00f59023          	sh	a5,0(a1)
   15122:	1642                	slli	a2,a2,0x30
   15124:	15f9                	addi	a1,a1,-2
   15126:	9241                	srli	a2,a2,0x30
   15128:	fd3599e3          	bne	a1,s3,150fa <_ldtoa_r+0x40e>
   1512c:	865a                	mv	a2,s6
   1512e:	191c                	addi	a5,sp,176
   15130:	0007d583          	lhu	a1,0(a5)
   15134:	0789                	addi	a5,a5,2
   15136:	0609                	addi	a2,a2,2
   15138:	feb61f23          	sh	a1,-2(a2)
   1513c:	ffb79ae3          	bne	a5,s11,15130 <_ldtoa_r+0x444>
   15140:	10011423          	sh	zero,264(sp)
   15144:	4601                	li	a2,0
   15146:	022c                	addi	a1,sp,264
   15148:	0005d783          	lhu	a5,0(a1)
   1514c:	00f7d513          	srli	a0,a5,0xf
   15150:	c119                	beqz	a0,15156 <_ldtoa_r+0x46a>
   15152:	00166613          	ori	a2,a2,1
   15156:	0017979b          	slliw	a5,a5,0x1
   1515a:	17c2                	slli	a5,a5,0x30
   1515c:	00267513          	andi	a0,a2,2
   15160:	93c1                	srli	a5,a5,0x30
   15162:	c119                	beqz	a0,15168 <_ldtoa_r+0x47c>
   15164:	0017e793          	ori	a5,a5,1
   15168:	0016161b          	slliw	a2,a2,0x1
   1516c:	00f59023          	sh	a5,0(a1)
   15170:	1642                	slli	a2,a2,0x30
   15172:	15f9                	addi	a1,a1,-2
   15174:	9241                	srli	a2,a2,0x30
   15176:	fda599e3          	bne	a1,s10,15148 <_ldtoa_r+0x45c>
   1517a:	4601                	li	a2,0
   1517c:	022c                	addi	a1,sp,264
   1517e:	0005d783          	lhu	a5,0(a1)
   15182:	00f7d513          	srli	a0,a5,0xf
   15186:	c119                	beqz	a0,1518c <_ldtoa_r+0x4a0>
   15188:	00166613          	ori	a2,a2,1
   1518c:	0017979b          	slliw	a5,a5,0x1
   15190:	17c2                	slli	a5,a5,0x30
   15192:	00267513          	andi	a0,a2,2
   15196:	93c1                	srli	a5,a5,0x30
   15198:	c119                	beqz	a0,1519e <_ldtoa_r+0x4b2>
   1519a:	0017e793          	ori	a5,a5,1
   1519e:	0016161b          	slliw	a2,a2,0x1
   151a2:	00f59023          	sh	a5,0(a1)
   151a6:	1642                	slli	a2,a2,0x30
   151a8:	15f9                	addi	a1,a1,-2
   151aa:	9241                	srli	a2,a2,0x30
   151ac:	fda599e3          	bne	a1,s10,1517e <_ldtoa_r+0x492>
   151b0:	4501                	li	a0,0
   151b2:	85ee                	mv	a1,s11
   151b4:	0230                	addi	a2,sp,264
   151b6:	0005d883          	lhu	a7,0(a1)
   151ba:	00065783          	lhu	a5,0(a2)
   151be:	15f9                	addi	a1,a1,-2
   151c0:	1679                	addi	a2,a2,-2
   151c2:	97c6                	add	a5,a5,a7
   151c4:	97aa                	add	a5,a5,a0
   151c6:	0107d513          	srli	a0,a5,0x10
   151ca:	00f59123          	sh	a5,2(a1)
   151ce:	8905                	andi	a0,a0,1
   151d0:	ffa613e3          	bne	a2,s10,151b6 <_ldtoa_r+0x4ca>
   151d4:	8652                	mv	a2,s4
   151d6:	190c                	addi	a1,sp,176
   151d8:	0988                	addi	a0,sp,208
   151da:	982ff0ef          	jal	ra,1435c <eiremain>
   151de:	1fc15603          	lhu	a2,508(sp)
   151e2:	001c0793          	addi	a5,s8,1
   151e6:	2c85                	addiw	s9,s9,1
   151e8:	0306059b          	addiw	a1,a2,48
   151ec:	feb78fa3          	sb	a1,-1(a5)
   151f0:	03944263          	blt	s0,s9,15214 <_ldtoa_r+0x528>
   151f4:	8c3e                	mv	s8,a5
   151f6:	b701                	j	150f6 <_ldtoa_r+0x40a>
   151f8:	1646                	slli	a2,a2,0x31
   151fa:	67c1                	lui	a5,0x10
   151fc:	9245                	srli	a2,a2,0x31
   151fe:	17fd                	addi	a5,a5,-1 # ffff <exit-0xe9>
   15200:	0cc11123          	sh	a2,194(sp)
   15204:	f43e                	sd	a5,40(sp)
   15206:	b6fd                	j	14df4 <_ldtoa_r+0x108>
   15208:	1fc15603          	lhu	a2,508(sp)
   1520c:	17210c13          	addi	s8,sp,370
   15210:	17310793          	addi	a5,sp,371
   15214:	4711                	li	a4,4
   15216:	04c75663          	bge	a4,a2,15262 <_ldtoa_r+0x576>
   1521a:	4715                	li	a4,5
   1521c:	62e60363          	beq	a2,a4,15842 <_ldtoa_r+0xb56>
   15220:	ffe7c703          	lbu	a4,-2(a5)
   15224:	ffe78693          	addi	a3,a5,-2
   15228:	07f77613          	andi	a2,a4,127
   1522c:	8732                	mv	a4,a2
   1522e:	02044563          	bltz	s0,15258 <_ldtoa_r+0x56c>
   15232:	02e00593          	li	a1,46
   15236:	03800513          	li	a0,56
   1523a:	03000893          	li	a7,48
   1523e:	5ab60663          	beq	a2,a1,157ea <_ldtoa_r+0xafe>
   15242:	5ce55063          	bge	a0,a4,15802 <_ldtoa_r+0xb16>
   15246:	fff6c783          	lbu	a5,-1(a3)
   1524a:	01168023          	sb	a7,0(a3)
   1524e:	16fd                	addi	a3,a3,-1
   15250:	07f7f613          	andi	a2,a5,127
   15254:	8732                	mv	a4,a2
   15256:	b7e5                	j	1523e <_ldtoa_r+0x552>
   15258:	03100713          	li	a4,49
   1525c:	fee78f23          	sb	a4,-2(a5)
   15260:	2485                	addiw	s1,s1,1
   15262:	65f5                	lui	a1,0x1d
   15264:	8626                	mv	a2,s1
   15266:	9e858593          	addi	a1,a1,-1560 # 1c9e8 <zeroes.0+0x38>
   1526a:	8562                	mv	a0,s8
   1526c:	62f010ef          	jal	ra,1709a <sprintf>
   15270:	0a215783          	lhu	a5,162(sp)
   15274:	6742                	ld	a4,16(sp)
   15276:	1c912023          	sw	s1,448(sp)
   1527a:	fff7c793          	not	a5,a5
   1527e:	1ae12a23          	sw	a4,436(sp)
   15282:	03179713          	slli	a4,a5,0x31
   15286:	14070163          	beqz	a4,153c8 <_ldtoa_r+0x6dc>
   1528a:	66e2                	ld	a3,24(sp)
   1528c:	17014703          	lbu	a4,368(sp)
   15290:	0014879b          	addiw	a5,s1,1
   15294:	c29c                	sw	a5,0(a3)
   15296:	87ca                	mv	a5,s2
   15298:	c70d                	beqz	a4,152c2 <_ldtoa_r+0x5d6>
   1529a:	02e00693          	li	a3,46
   1529e:	18d70e63          	beq	a4,a3,1543a <_ldtoa_r+0x74e>
   152a2:	0017c703          	lbu	a4,1(a5)
   152a6:	0785                	addi	a5,a5,1
   152a8:	fb7d                	bnez	a4,1529e <_ldtoa_r+0x5b2>
   152aa:	04500693          	li	a3,69
   152ae:	00f96563          	bltu	s2,a5,152b8 <_ldtoa_r+0x5cc>
   152b2:	a801                	j	152c2 <_ldtoa_r+0x5d6>
   152b4:	01278763          	beq	a5,s2,152c2 <_ldtoa_r+0x5d6>
   152b8:	fff7c703          	lbu	a4,-1(a5)
   152bc:	17fd                	addi	a5,a5,-1
   152be:	fed71be3          	bne	a4,a3,152b4 <_ldtoa_r+0x5c8>
   152c2:	00078023          	sb	zero,0(a5)
   152c6:	87ca                	mv	a5,s2
   152c8:	02000693          	li	a3,32
   152cc:	02d00613          	li	a2,45
   152d0:	0007c703          	lbu	a4,0(a5)
   152d4:	00d70463          	beq	a4,a3,152dc <_ldtoa_r+0x5f0>
   152d8:	00c71463          	bne	a4,a2,152e0 <_ldtoa_r+0x5f4>
   152dc:	0785                	addi	a5,a5,1
   152de:	bfcd                	j	152d0 <_ldtoa_r+0x5e4>
   152e0:	844a                	mv	s0,s2
   152e2:	a021                	j	152ea <_ldtoa_r+0x5fe>
   152e4:	0007c703          	lbu	a4,0(a5)
   152e8:	8436                	mv	s0,a3
   152ea:	00e40023          	sb	a4,0(s0)
   152ee:	00140693          	addi	a3,s0,1
   152f2:	0785                	addi	a5,a5,1
   152f4:	fb65                	bnez	a4,152e4 <_ldtoa_r+0x5f8>
   152f6:	4789                	li	a5,2
   152f8:	fff44683          	lbu	a3,-1(s0)
   152fc:	0efb8663          	beq	s7,a5,153e8 <_ldtoa_r+0x6fc>
   15300:	6702                	ld	a4,0(sp)
   15302:	87ba                	mv	a5,a4
   15304:	00975363          	bge	a4,s1,1530a <_ldtoa_r+0x61e>
   15308:	87a6                	mv	a5,s1
   1530a:	03000613          	li	a2,48
   1530e:	0007871b          	sext.w	a4,a5
   15312:	02c69463          	bne	a3,a2,1533a <_ldtoa_r+0x64e>
   15316:	412407b3          	sub	a5,s0,s2
   1531a:	02f75063          	bge	a4,a5,1533a <_ldtoa_r+0x64e>
   1531e:	03000693          	li	a3,48
   15322:	a029                	j	1532c <_ldtoa_r+0x640>
   15324:	412407b3          	sub	a5,s0,s2
   15328:	00f75963          	bge	a4,a5,1533a <_ldtoa_r+0x64e>
   1532c:	ffe44783          	lbu	a5,-2(s0)
   15330:	fe040fa3          	sb	zero,-1(s0)
   15334:	147d                	addi	s0,s0,-1
   15336:	fed787e3          	beq	a5,a3,15324 <_ldtoa_r+0x638>
   1533a:	478d                	li	a5,3
   1533c:	0cfb8063          	beq	s7,a5,153fc <_ldtoa_r+0x710>
   15340:	67a2                	ld	a5,8(sp)
   15342:	060aa423          	sw	zero,104(s5)
   15346:	0097899b          	addiw	s3,a5,9
   1534a:	47fd                	li	a5,31
   1534c:	0d37f963          	bgeu	a5,s3,1541e <_ldtoa_r+0x732>
   15350:	4705                	li	a4,1
   15352:	4791                	li	a5,4
   15354:	0017979b          	slliw	a5,a5,0x1
   15358:	01c78693          	addi	a3,a5,28
   1535c:	0007059b          	sext.w	a1,a4
   15360:	2705                	addiw	a4,a4,1
   15362:	fed9f9e3          	bgeu	s3,a3,15354 <_ldtoa_r+0x668>
   15366:	06baa423          	sw	a1,104(s5)
   1536a:	8556                	mv	a0,s5
   1536c:	295000ef          	jal	ra,15e00 <_Balloc>
   15370:	84aa                	mv	s1,a0
   15372:	68050263          	beqz	a0,159f6 <_ldtoa_r+0xd0a>
   15376:	06aab023          	sd	a0,96(s5)
   1537a:	85ca                	mv	a1,s2
   1537c:	f83fb0ef          	jal	ra,112fe <strcpy>
   15380:	7702                	ld	a4,32(sp)
   15382:	c709                	beqz	a4,1538c <_ldtoa_r+0x6a0>
   15384:	412407b3          	sub	a5,s0,s2
   15388:	97a6                	add	a5,a5,s1
   1538a:	e31c                	sd	a5,0(a4)
   1538c:	26813083          	ld	ra,616(sp)
   15390:	26013403          	ld	s0,608(sp)
   15394:	25013903          	ld	s2,592(sp)
   15398:	24813983          	ld	s3,584(sp)
   1539c:	24013a03          	ld	s4,576(sp)
   153a0:	23813a83          	ld	s5,568(sp)
   153a4:	23013b03          	ld	s6,560(sp)
   153a8:	22813b83          	ld	s7,552(sp)
   153ac:	22013c03          	ld	s8,544(sp)
   153b0:	21813c83          	ld	s9,536(sp)
   153b4:	21013d03          	ld	s10,528(sp)
   153b8:	20813d83          	ld	s11,520(sp)
   153bc:	8526                	mv	a0,s1
   153be:	25813483          	ld	s1,600(sp)
   153c2:	27010113          	addi	sp,sp,624
   153c6:	8082                	ret
   153c8:	091c                	addi	a5,sp,144
   153ca:	0a210693          	addi	a3,sp,162
   153ce:	0007d703          	lhu	a4,0(a5)
   153d2:	0789                	addi	a5,a5,2
   153d4:	42071b63          	bnez	a4,1580a <_ldtoa_r+0xb1e>
   153d8:	fed79be3          	bne	a5,a3,153ce <_ldtoa_r+0x6e2>
   153dc:	6762                	ld	a4,24(sp)
   153de:	6789                	lui	a5,0x2
   153e0:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   153e4:	c31c                	sw	a5,0(a4)
   153e6:	b5c5                	j	152c6 <_ldtoa_r+0x5da>
   153e8:	03000793          	li	a5,48
   153ec:	f4f69ae3          	bne	a3,a5,15340 <_ldtoa_r+0x654>
   153f0:	412407b3          	sub	a5,s0,s2
   153f4:	4705                	li	a4,1
   153f6:	f2f744e3          	blt	a4,a5,1531e <_ldtoa_r+0x632>
   153fa:	b799                	j	15340 <_ldtoa_r+0x654>
   153fc:	6782                	ld	a5,0(sp)
   153fe:	9cbd                	addw	s1,s1,a5
   15400:	3a04c463          	bltz	s1,157a8 <_ldtoa_r+0xabc>
   15404:	67e2                	ld	a5,24(sp)
   15406:	6722                	ld	a4,8(sp)
   15408:	439c                	lw	a5,0(a5)
   1540a:	9fb9                	addw	a5,a5,a4
   1540c:	e43e                	sd	a5,8(sp)
   1540e:	67a2                	ld	a5,8(sp)
   15410:	060aa423          	sw	zero,104(s5)
   15414:	0037899b          	addiw	s3,a5,3
   15418:	47fd                	li	a5,31
   1541a:	f337ebe3          	bltu	a5,s3,15350 <_ldtoa_r+0x664>
   1541e:	4581                	li	a1,0
   15420:	b7a9                	j	1536a <_ldtoa_r+0x67e>
   15422:	67a2                	ld	a5,8(sp)
   15424:	02a00713          	li	a4,42
   15428:	8cbe                	mv	s9,a5
   1542a:	00f75463          	bge	a4,a5,15432 <_ldtoa_r+0x746>
   1542e:	02a00c93          	li	s9,42
   15432:	000c879b          	sext.w	a5,s9
   15436:	e03e                	sd	a5,0(sp)
   15438:	ba95                	j	14dac <_ldtoa_r+0xc0>
   1543a:	0007c703          	lbu	a4,0(a5)
   1543e:	e60706e3          	beqz	a4,152aa <_ldtoa_r+0x5be>
   15442:	0017c703          	lbu	a4,1(a5)
   15446:	0785                	addi	a5,a5,1
   15448:	fee78fa3          	sb	a4,-1(a5)
   1544c:	e4070fe3          	beqz	a4,152aa <_ldtoa_r+0x5be>
   15450:	0017c703          	lbu	a4,1(a5)
   15454:	0785                	addi	a5,a5,1
   15456:	fee78fa3          	sb	a4,-1(a5)
   1545a:	f765                	bnez	a4,15442 <_ldtoa_r+0x756>
   1545c:	b5b9                	j	152aa <_ldtoa_r+0x5be>
   1545e:	03100713          	li	a4,49
   15462:	16e108a3          	sb	a4,369(sp)
   15466:	02e00713          	li	a4,46
   1546a:	16e10923          	sb	a4,370(sp)
   1546e:	2485                	addiw	s1,s1,1
   15470:	20f05063          	blez	a5,15670 <_ldtoa_r+0x984>
   15474:	03000793          	li	a5,48
   15478:	16f109a3          	sb	a5,371(sp)
   1547c:	347d                	addiw	s0,s0,-1
   1547e:	17410c13          	addi	s8,sp,372
   15482:	b18d                	j	150e4 <_ldtoa_r+0x3f8>
   15484:	17010913          	addi	s2,sp,368
   15488:	65f5                	lui	a1,0x1d
   1548a:	a6858593          	addi	a1,a1,-1432 # 1ca68 <zeroes.0+0xb8>
   1548e:	854a                	mv	a0,s2
   15490:	6489                	lui	s1,0x2
   15492:	409010ef          	jal	ra,1709a <sprintf>
   15496:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   1549a:	bbd9                	j	15270 <_ldtoa_r+0x584>
   1549c:	0f010b13          	addi	s6,sp,240
   154a0:	875a                	mv	a4,s6
   154a2:	191c                	addi	a5,sp,176
   154a4:	01d0                	addi	a2,sp,196
   154a6:	0007d683          	lhu	a3,0(a5)
   154aa:	0789                	addi	a5,a5,2
   154ac:	0709                	addi	a4,a4,2
   154ae:	fed71f23          	sh	a3,-2(a4)
   154b2:	fec79ae3          	bne	a5,a2,154a6 <_ldtoa_r+0x7ba>
   154b6:	67f5                	lui	a5,0x1d
   154b8:	bb878713          	addi	a4,a5,-1096 # 1cbb8 <etens>
   154bc:	6791                	lui	a5,0x4
   154be:	08e78793          	addi	a5,a5,142 # 408e <exit-0xc05a>
   154c2:	10f11123          	sh	a5,258(sp)
   154c6:	67f5                	lui	a5,0x1d
   154c8:	cbc78793          	addi	a5,a5,-836 # 1ccbc <etens+0x104>
   154cc:	e0be                	sd	a5,64(sp)
   154ce:	67a1                	lui	a5,0x8
   154d0:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   154d2:	f83e                	sd	a5,48(sp)
   154d4:	77f1                	lui	a5,0xffffc
   154d6:	2789                	addiw	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffdc6e2>
   154d8:	de3e                	sw	a5,60(sp)
   154da:	67f5                	lui	a5,0x1d
   154dc:	a7078793          	addi	a5,a5,-1424 # 1ca70 <bmask>
   154e0:	e4ba                	sd	a4,72(sp)
   154e2:	4dc1                	li	s11,16
   154e4:	4481                	li	s1,0
   154e6:	0a070993          	addi	s3,a4,160
   154ea:	17010913          	addi	s2,sp,368
   154ee:	1b010a13          	addi	s4,sp,432
   154f2:	0a00                	addi	s0,sp,272
   154f4:	0e210c93          	addi	s9,sp,226
   154f8:	e8be                	sd	a5,80(sp)
   154fa:	86d2                	mv	a3,s4
   154fc:	0990                	addi	a2,sp,208
   154fe:	85da                	mv	a1,s6
   15500:	854e                	mv	a0,s3
   15502:	84aff0ef          	jal	ra,1454c <ediv>
   15506:	18b8                	addi	a4,sp,120
   15508:	099c                	addi	a5,sp,208
   1550a:	0007d683          	lhu	a3,0(a5)
   1550e:	0789                	addi	a5,a5,2
   15510:	0709                	addi	a4,a4,2
   15512:	fed71f23          	sh	a3,-2(a4)
   15516:	ff879ae3          	bne	a5,s8,1550a <_ldtoa_r+0x81e>
   1551a:	77c2                	ld	a5,48(sp)
   1551c:	08a15503          	lhu	a0,138(sp)
   15520:	00f57e33          	and	t3,a0,a5
   15524:	57f2                	lw	a5,60(sp)
   15526:	00fe07bb          	addw	a5,t3,a5
   1552a:	8e3e                	mv	t3,a5
   1552c:	28f05563          	blez	a5,157b6 <_ldtoa_r+0xaca>
   15530:	09000593          	li	a1,144
   15534:	9d9d                	subw	a1,a1,a5
   15536:	8722                	mv	a4,s0
   15538:	18bc                	addi	a5,sp,120
   1553a:	0170                	addi	a2,sp,140
   1553c:	0007d683          	lhu	a3,0(a5)
   15540:	0789                	addi	a5,a5,2
   15542:	0709                	addi	a4,a4,2
   15544:	fed71f23          	sh	a3,-2(a4)
   15548:	fec79ae3          	bne	a5,a2,1553c <_ldtoa_r+0x850>
   1554c:	04b05a63          	blez	a1,155a0 <_ldtoa_r+0x8b4>
   15550:	47bd                	li	a5,15
   15552:	8722                	mv	a4,s0
   15554:	02b7d963          	bge	a5,a1,15586 <_ldtoa_r+0x89a>
   15558:	08000693          	li	a3,128
   1555c:	41c686bb          	subw	a3,a3,t3
   15560:	0046d69b          	srliw	a3,a3,0x4
   15564:	0016871b          	addiw	a4,a3,1
   15568:	0706                	slli	a4,a4,0x1
   1556a:	9722                	add	a4,a4,s0
   1556c:	87a2                	mv	a5,s0
   1556e:	0789                	addi	a5,a5,2
   15570:	fe079f23          	sh	zero,-2(a5)
   15574:	fee79de3          	bne	a5,a4,1556e <_ldtoa_r+0x882>
   15578:	08000593          	li	a1,128
   1557c:	41c585bb          	subw	a1,a1,t3
   15580:	0046969b          	slliw	a3,a3,0x4
   15584:	9d95                	subw	a1,a1,a3
   15586:	66c6                	ld	a3,80(sp)
   15588:	00159793          	slli	a5,a1,0x1
   1558c:	97b6                	add	a5,a5,a3
   1558e:	0007d783          	lhu	a5,0(a5)
   15592:	00075683          	lhu	a3,0(a4)
   15596:	8ff5                	and	a5,a5,a3
   15598:	00f71023          	sh	a5,0(a4)
   1559c:	813d                	srli	a0,a0,0xf
   1559e:	e565                	bnez	a0,15686 <_ldtoa_r+0x99a>
   155a0:	099c                	addi	a5,sp,208
   155a2:	8722                	mv	a4,s0
   155a4:	0007d603          	lhu	a2,0(a5)
   155a8:	00075683          	lhu	a3,0(a4)
   155ac:	02d61263          	bne	a2,a3,155d0 <_ldtoa_r+0x8e4>
   155b0:	0789                	addi	a5,a5,2
   155b2:	0709                	addi	a4,a4,2
   155b4:	fefc98e3          	bne	s9,a5,155a4 <_ldtoa_r+0x8b8>
   155b8:	875a                	mv	a4,s6
   155ba:	099c                	addi	a5,sp,208
   155bc:	0007d683          	lhu	a3,0(a5)
   155c0:	0789                	addi	a5,a5,2
   155c2:	0709                	addi	a4,a4,2
   155c4:	fed71f23          	sh	a3,-2(a4)
   155c8:	ff879ae3          	bne	a5,s8,155bc <_ldtoa_r+0x8d0>
   155cc:	009d84bb          	addw	s1,s11,s1
   155d0:	6786                	ld	a5,64(sp)
   155d2:	09d1                	addi	s3,s3,20
   155d4:	001ddd93          	srli	s11,s11,0x1
   155d8:	f2f991e3          	bne	s3,a5,154fa <_ldtoa_r+0x80e>
   155dc:	10215783          	lhu	a5,258(sp)
   155e0:	0c215703          	lhu	a4,194(sp)
   155e4:	0250                	addi	a2,sp,260
   155e6:	9fb9                	addw	a5,a5,a4
   155e8:	7771                	lui	a4,0xffffc
   155ea:	f727071b          	addiw	a4,a4,-142 # ffffffffffffbf72 <__BSS_END__+0xfffffffffffdc652>
   155ee:	9fb9                	addw	a5,a5,a4
   155f0:	10f11123          	sh	a5,258(sp)
   155f4:	1918                	addi	a4,sp,176
   155f6:	87da                	mv	a5,s6
   155f8:	0007d683          	lhu	a3,0(a5)
   155fc:	0789                	addi	a5,a5,2
   155fe:	0709                	addi	a4,a4,2
   15600:	fed71f23          	sh	a3,-2(a4)
   15604:	fec79ae3          	bne	a5,a2,155f8 <_ldtoa_r+0x90c>
   15608:	6775                	lui	a4,0x1d
   1560a:	4681                	li	a3,0
   1560c:	099c                	addi	a5,sp,208
   1560e:	ba070713          	addi	a4,a4,-1120 # 1cba0 <eone>
   15612:	a019                	j	15618 <_ldtoa_r+0x92c>
   15614:	00075683          	lhu	a3,0(a4)
   15618:	0789                	addi	a5,a5,2
   1561a:	fed79f23          	sh	a3,-2(a5)
   1561e:	0709                	addi	a4,a4,2
   15620:	ff879ae3          	bne	a5,s8,15614 <_ldtoa_r+0x928>
   15624:	6df5                	lui	s11,0x1d
   15626:	6ca6                	ld	s9,72(sp)
   15628:	6d05                	lui	s10,0x1
   1562a:	ca8d8d93          	addi	s11,s11,-856 # 1cca8 <etens+0xf0>
   1562e:	a031                	j	1563a <_ldtoa_r+0x94e>
   15630:	001d5d13          	srli	s10,s10,0x1
   15634:	1bbc8763          	beq	s9,s11,157e2 <_ldtoa_r+0xaf6>
   15638:	0cd1                	addi	s9,s9,20
   1563a:	85da                	mv	a1,s6
   1563c:	856e                	mv	a0,s11
   1563e:	935fe0ef          	jal	ra,13f72 <ecmp>
   15642:	1aa04063          	bgtz	a0,157e2 <_ldtoa_r+0xaf6>
   15646:	85da                	mv	a1,s6
   15648:	8566                	mv	a0,s9
   1564a:	929fe0ef          	jal	ra,13f72 <ecmp>
   1564e:	fea041e3          	bgtz	a0,15630 <_ldtoa_r+0x944>
   15652:	86d2                	mv	a3,s4
   15654:	865a                	mv	a2,s6
   15656:	85da                	mv	a1,s6
   15658:	8566                	mv	a0,s9
   1565a:	ef3fe0ef          	jal	ra,1454c <ediv>
   1565e:	0990                	addi	a2,sp,208
   15660:	86d2                	mv	a3,s4
   15662:	85b2                	mv	a1,a2
   15664:	8566                	mv	a0,s9
   15666:	b02ff0ef          	jal	ra,14968 <emul>
   1566a:	009d04bb          	addw	s1,s10,s1
   1566e:	b7c9                	j	15630 <_ldtoa_r+0x944>
   15670:	17310c13          	addi	s8,sp,371
   15674:	be0797e3          	bnez	a5,15262 <_ldtoa_r+0x576>
   15678:	b4b5                	j	150e4 <_ldtoa_r+0x3f8>
   1567a:	4681                	li	a3,0
   1567c:	f20ff06f          	j	14d9c <_ldtoa_r+0xb0>
   15680:	67a2                	ld	a5,8(sp)
   15682:	37fd                	addiw	a5,a5,-1
   15684:	b345                	j	15424 <_ldtoa_r+0x738>
   15686:	18bc                	addi	a5,sp,120
   15688:	8722                	mv	a4,s0
   1568a:	08a10593          	addi	a1,sp,138
   1568e:	a029                	j	15698 <_ldtoa_r+0x9ac>
   15690:	0789                	addi	a5,a5,2
   15692:	0709                	addi	a4,a4,2
   15694:	f0b786e3          	beq	a5,a1,155a0 <_ldtoa_r+0x8b4>
   15698:	0007d603          	lhu	a2,0(a5)
   1569c:	00075683          	lhu	a3,0(a4)
   156a0:	fed608e3          	beq	a2,a3,15690 <_ldtoa_r+0x9a4>
   156a4:	12215783          	lhu	a5,290(sp)
   156a8:	7742                	ld	a4,48(sp)
   156aa:	8ff9                	and	a5,a5,a4
   156ac:	2ce78b63          	beq	a5,a4,15982 <_ldtoa_r+0xc96>
   156b0:	1a0c                	addi	a1,sp,304
   156b2:	ba0d0513          	addi	a0,s10,-1120 # ba0 <exit-0xf548>
   156b6:	827fe0ef          	jal	ra,13edc <emovi>
   156ba:	0a8c                	addi	a1,sp,336
   156bc:	8522                	mv	a0,s0
   156be:	81ffe0ef          	jal	ra,13edc <emovi>
   156c2:	13015703          	lhu	a4,304(sp)
   156c6:	15215603          	lhu	a2,338(sp)
   156ca:	13215e03          	lhu	t3,306(sp)
   156ce:	fff74713          	not	a4,a4
   156d2:	1742                	slli	a4,a4,0x30
   156d4:	9341                	srli	a4,a4,0x30
   156d6:	12e11823          	sh	a4,304(sp)
   156da:	40ce05b3          	sub	a1,t3,a2
   156de:	86b2                	mv	a3,a2
   156e0:	04b05e63          	blez	a1,1573c <_ldtoa_r+0xa50>
   156e4:	85ca                	mv	a1,s2
   156e6:	0a94                	addi	a3,sp,336
   156e8:	12bc                	addi	a5,sp,360
   156ea:	0006d503          	lhu	a0,0(a3)
   156ee:	0689                	addi	a3,a3,2
   156f0:	0589                	addi	a1,a1,2
   156f2:	fea59f23          	sh	a0,-2(a1)
   156f6:	fef69ae3          	bne	a3,a5,156ea <_ldtoa_r+0x9fe>
   156fa:	18011423          	sh	zero,392(sp)
   156fe:	0a94                	addi	a3,sp,336
   15700:	1a0c                	addi	a1,sp,304
   15702:	a019                	j	15708 <_ldtoa_r+0xa1c>
   15704:	0005d703          	lhu	a4,0(a1)
   15708:	0689                	addi	a3,a3,2
   1570a:	fee69f23          	sh	a4,-2(a3)
   1570e:	0589                	addi	a1,a1,2
   15710:	fef69ae3          	bne	a3,a5,15704 <_ldtoa_r+0xa18>
   15714:	16011423          	sh	zero,360(sp)
   15718:	1a18                	addi	a4,sp,304
   1571a:	87ca                	mv	a5,s2
   1571c:	0328                	addi	a0,sp,392
   1571e:	0007d683          	lhu	a3,0(a5)
   15722:	0789                	addi	a5,a5,2
   15724:	0709                	addi	a4,a4,2
   15726:	fed71f23          	sh	a3,-2(a4)
   1572a:	fea79ae3          	bne	a5,a0,1571e <_ldtoa_r+0xa32>
   1572e:	15215683          	lhu	a3,338(sp)
   15732:	41c605b3          	sub	a1,a2,t3
   15736:	14011423          	sh	zero,328(sp)
   1573a:	8636                	mv	a2,a3
   1573c:	28058163          	beqz	a1,159be <_ldtoa_r+0xcd2>
   15740:	ecb6                	sd	a3,88(sp)
   15742:	f6f00793          	li	a5,-145
   15746:	04f5cc63          	blt	a1,a5,1579e <_ldtoa_r+0xab2>
   1574a:	2581                	sext.w	a1,a1
   1574c:	1a08                	addi	a0,sp,304
   1574e:	e3cfe0ef          	jal	ra,13d8a <eshift.part.0>
   15752:	66e6                	ld	a3,88(sp)
   15754:	85aa                	mv	a1,a0
   15756:	12bc                	addi	a5,sp,360
   15758:	02b8                	addi	a4,sp,328
   1575a:	13015503          	lhu	a0,304(sp)
   1575e:	15015603          	lhu	a2,336(sp)
   15762:	2cc50e63          	beq	a0,a2,15a3e <_ldtoa_r+0xd52>
   15766:	4e01                	li	t3,0
   15768:	15210513          	addi	a0,sp,338
   1576c:	0007d603          	lhu	a2,0(a5)
   15770:	00075e83          	lhu	t4,0(a4)
   15774:	17f9                	addi	a5,a5,-2
   15776:	41c60633          	sub	a2,a2,t3
   1577a:	41d60633          	sub	a2,a2,t4
   1577e:	01065e13          	srli	t3,a2,0x10
   15782:	00c79123          	sh	a2,2(a5)
   15786:	001e7e13          	andi	t3,t3,1
   1578a:	1779                	addi	a4,a4,-2
   1578c:	fea790e3          	bne	a5,a0,1576c <_ldtoa_r+0xa80>
   15790:	4605                	li	a2,1
   15792:	87d2                	mv	a5,s4
   15794:	04000713          	li	a4,64
   15798:	0a88                	addi	a0,sp,336
   1579a:	8bdfe0ef          	jal	ra,14056 <emdnorm>
   1579e:	85a2                	mv	a1,s0
   157a0:	0a88                	addi	a0,sp,336
   157a2:	c52fe0ef          	jal	ra,13bf4 <emovo.constprop.0>
   157a6:	bbed                	j	155a0 <_ldtoa_r+0x8b4>
   157a8:	67e2                	ld	a5,24(sp)
   157aa:	16010823          	sb	zero,368(sp)
   157ae:	844a                	mv	s0,s2
   157b0:	0007a023          	sw	zero,0(a5)
   157b4:	b9a9                	j	1540e <_ldtoa_r+0x722>
   157b6:	87a2                	mv	a5,s0
   157b8:	1258                	addi	a4,sp,292
   157ba:	0789                	addi	a5,a5,2
   157bc:	fe079f23          	sh	zero,-2(a5)
   157c0:	fee79de3          	bne	a5,a4,157ba <_ldtoa_r+0xace>
   157c4:	bbe1                	j	1559c <_ldtoa_r+0x8b0>
   157c6:	77a2                	ld	a5,40(sp)
   157c8:	17010913          	addi	s2,sp,368
   157cc:	cfdd                	beqz	a5,1588a <_ldtoa_r+0xb9e>
   157ce:	65f5                	lui	a1,0x1d
   157d0:	9c058593          	addi	a1,a1,-1600 # 1c9c0 <zeroes.0+0x10>
   157d4:	854a                	mv	a0,s2
   157d6:	6489                	lui	s1,0x2
   157d8:	0c3010ef          	jal	ra,1709a <sprintf>
   157dc:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   157e0:	bc41                	j	15270 <_ldtoa_r+0x584>
   157e2:	12810993          	addi	s3,sp,296
   157e6:	f58ff06f          	j	14f3e <_ldtoa_r+0x252>
   157ea:	fff6c783          	lbu	a5,-1(a3)
   157ee:	03800713          	li	a4,56
   157f2:	0af77663          	bgeu	a4,a5,1589e <_ldtoa_r+0xbb2>
   157f6:	03100793          	li	a5,49
   157fa:	2485                	addiw	s1,s1,1
   157fc:	fef68fa3          	sb	a5,-1(a3)
   15800:	b48d                	j	15262 <_ldtoa_r+0x576>
   15802:	2605                	addiw	a2,a2,1
   15804:	00c68023          	sb	a2,0(a3)
   15808:	bca9                	j	15262 <_ldtoa_r+0x576>
   1580a:	091c                	addi	a5,sp,144
   1580c:	0a210693          	addi	a3,sp,162
   15810:	a019                	j	15816 <_ldtoa_r+0xb2a>
   15812:	a6d78ce3          	beq	a5,a3,1528a <_ldtoa_r+0x59e>
   15816:	0007d703          	lhu	a4,0(a5)
   1581a:	0789                	addi	a5,a5,2
   1581c:	db7d                	beqz	a4,15812 <_ldtoa_r+0xb26>
   1581e:	6762                	ld	a4,24(sp)
   15820:	6789                	lui	a5,0x2
   15822:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   15826:	c31c                	sw	a5,0(a4)
   15828:	bc79                	j	152c6 <_ldtoa_r+0x5da>
   1582a:	17010913          	addi	s2,sp,368
   1582e:	65f5                	lui	a1,0x1d
   15830:	9e058593          	addi	a1,a1,-1568 # 1c9e0 <zeroes.0+0x30>
   15834:	854a                	mv	a0,s2
   15836:	6489                	lui	s1,0x2
   15838:	063010ef          	jal	ra,1709a <sprintf>
   1583c:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   15840:	bc05                	j	15270 <_ldtoa_r+0x584>
   15842:	098c                	addi	a1,sp,208
   15844:	1908                	addi	a0,sp,176
   15846:	f43e                	sd	a5,40(sp)
   15848:	bacfe0ef          	jal	ra,13bf4 <emovo.constprop.0>
   1584c:	65f5                	lui	a1,0x1d
   1584e:	cc058593          	addi	a1,a1,-832 # 1ccc0 <ezero>
   15852:	0988                	addi	a0,sp,208
   15854:	f1efe0ef          	jal	ra,13f72 <ecmp>
   15858:	77a2                	ld	a5,40(sp)
   1585a:	9c0513e3          	bnez	a0,15220 <_ldtoa_r+0x534>
   1585e:	a00442e3          	bltz	s0,15262 <_ldtoa_r+0x576>
   15862:	ffe7c703          	lbu	a4,-2(a5)
   15866:	fd270693          	addi	a3,a4,-46
   1586a:	0016b693          	seqz	a3,a3
   1586e:	fff6c693          	not	a3,a3
   15872:	96e2                	add	a3,a3,s8
   15874:	0006c683          	lbu	a3,0(a3)
   15878:	8a85                	andi	a3,a3,1
   1587a:	9e0684e3          	beqz	a3,15262 <_ldtoa_r+0x576>
   1587e:	07f77613          	andi	a2,a4,127
   15882:	ffe78693          	addi	a3,a5,-2
   15886:	8732                	mv	a4,a2
   15888:	b26d                	j	15232 <_ldtoa_r+0x546>
   1588a:	65f5                	lui	a1,0x1d
   1588c:	9d058593          	addi	a1,a1,-1584 # 1c9d0 <zeroes.0+0x20>
   15890:	854a                	mv	a0,s2
   15892:	6489                	lui	s1,0x2
   15894:	007010ef          	jal	ra,1709a <sprintf>
   15898:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   1589c:	bad1                	j	15270 <_ldtoa_r+0x584>
   1589e:	2785                	addiw	a5,a5,1
   158a0:	fef68fa3          	sb	a5,-1(a3)
   158a4:	ba7d                	j	15262 <_ldtoa_r+0x576>
   158a6:	0a00                	addi	s0,sp,272
   158a8:	85a2                	mv	a1,s0
   158aa:	1908                	addi	a0,sp,176
   158ac:	e30fe0ef          	jal	ra,13edc <emovi>
   158b0:	6791                	lui	a5,0x4
   158b2:	4481                	li	s1,0
   158b4:	12810993          	addi	s3,sp,296
   158b8:	10810913          	addi	s2,sp,264
   158bc:	11210a13          	addi	s4,sp,274
   158c0:	ffe78b13          	addi	s6,a5,-2 # 3ffe <exit-0xc0ea>
   158c4:	fd500d93          	li	s11,-43
   158c8:	12815783          	lhu	a5,296(sp)
   158cc:	8b9d                	andi	a5,a5,7
   158ce:	efd1                	bnez	a5,1596a <_ldtoa_r+0xc7e>
   158d0:	1998                	addi	a4,sp,240
   158d2:	87a2                	mv	a5,s0
   158d4:	0007d683          	lhu	a3,0(a5)
   158d8:	0789                	addi	a5,a5,2
   158da:	0709                	addi	a4,a4,2
   158dc:	fed71f23          	sh	a3,-2(a4)
   158e0:	ff379ae3          	bne	a5,s3,158d4 <_ldtoa_r+0xbe8>
   158e4:	1988                	addi	a0,sp,240
   158e6:	10011423          	sh	zero,264(sp)
   158ea:	a06fe0ef          	jal	ra,13af0 <eshdn1>
   158ee:	1988                	addi	a0,sp,240
   158f0:	a00fe0ef          	jal	ra,13af0 <eshdn1>
   158f4:	4601                	li	a2,0
   158f6:	86ca                	mv	a3,s2
   158f8:	874e                	mv	a4,s3
   158fa:	0006d583          	lhu	a1,0(a3)
   158fe:	00075783          	lhu	a5,0(a4)
   15902:	16f9                	addi	a3,a3,-2
   15904:	1779                	addi	a4,a4,-2
   15906:	97ae                	add	a5,a5,a1
   15908:	97b2                	add	a5,a5,a2
   1590a:	0107d613          	srli	a2,a5,0x10
   1590e:	00f69123          	sh	a5,2(a3)
   15912:	8a05                	andi	a2,a2,1
   15914:	ff4713e3          	bne	a4,s4,158fa <_ldtoa_r+0xc0e>
   15918:	0f215783          	lhu	a5,242(sp)
   1591c:	0f415703          	lhu	a4,244(sp)
   15920:	278d                	addiw	a5,a5,3
   15922:	0ef11923          	sh	a5,242(sp)
   15926:	cf01                	beqz	a4,1593e <_ldtoa_r+0xc52>
   15928:	1988                	addi	a0,sp,240
   1592a:	9c6fe0ef          	jal	ra,13af0 <eshdn1>
   1592e:	0f215783          	lhu	a5,242(sp)
   15932:	0f415703          	lhu	a4,244(sp)
   15936:	2785                	addiw	a5,a5,1
   15938:	0ef11923          	sh	a5,242(sp)
   1593c:	f775                	bnez	a4,15928 <_ldtoa_r+0xc3c>
   1593e:	10815783          	lhu	a5,264(sp)
   15942:	e785                	bnez	a5,1596a <_ldtoa_r+0xc7e>
   15944:	0f215783          	lhu	a5,242(sp)
   15948:	02fb6163          	bltu	s6,a5,1596a <_ldtoa_r+0xc7e>
   1594c:	8722                	mv	a4,s0
   1594e:	199c                	addi	a5,sp,240
   15950:	0007d683          	lhu	a3,0(a5)
   15954:	0789                	addi	a5,a5,2
   15956:	0709                	addi	a4,a4,2
   15958:	fed71f23          	sh	a3,-2(a4)
   1595c:	ff279ae3          	bne	a5,s2,15950 <_ldtoa_r+0xc64>
   15960:	12011423          	sh	zero,296(sp)
   15964:	34fd                	addiw	s1,s1,-1
   15966:	f7b491e3          	bne	s1,s11,158c8 <_ldtoa_r+0xbdc>
   1596a:	190c                	addi	a1,sp,176
   1596c:	8522                	mv	a0,s0
   1596e:	a86fe0ef          	jal	ra,13bf4 <emovo.constprop.0>
   15972:	67f5                	lui	a5,0x1d
   15974:	bb878793          	addi	a5,a5,-1096 # 1cbb8 <etens>
   15978:	e4be                	sd	a5,72(sp)
   1597a:	1b010a13          	addi	s4,sp,432
   1597e:	cfcff06f          	j	14e7a <_ldtoa_r+0x18e>
   15982:	87a2                	mv	a5,s0
   15984:	0007d703          	lhu	a4,0(a5)
   15988:	0789                	addi	a5,a5,2
   1598a:	c0071be3          	bnez	a4,155a0 <_ldtoa_r+0x8b4>
   1598e:	12210713          	addi	a4,sp,290
   15992:	fee799e3          	bne	a5,a4,15984 <_ldtoa_r+0xc98>
   15996:	87a2                	mv	a5,s0
   15998:	0007d703          	lhu	a4,0(a5)
   1599c:	0789                	addi	a5,a5,2
   1599e:	d00719e3          	bnez	a4,156b0 <_ldtoa_r+0x9c4>
   159a2:	12210713          	addi	a4,sp,290
   159a6:	fee799e3          	bne	a5,a4,15998 <_ldtoa_r+0xcac>
   159aa:	bedd                	j	155a0 <_ldtoa_r+0x8b4>
   159ac:	67f5                	lui	a5,0x1d
   159ae:	bb878793          	addi	a5,a5,-1096 # 1cbb8 <etens>
   159b2:	4481                	li	s1,0
   159b4:	e4be                	sd	a5,72(sp)
   159b6:	1b010a13          	addi	s4,sp,432
   159ba:	cbaff06f          	j	14e74 <_ldtoa_r+0x188>
   159be:	0ad8                	addi	a4,sp,340
   159c0:	1a5c                	addi	a5,sp,308
   159c2:	0007d503          	lhu	a0,0(a5)
   159c6:	00075583          	lhu	a1,0(a4)
   159ca:	0789                	addi	a5,a5,2
   159cc:	0709                	addi	a4,a4,2
   159ce:	04b51063          	bne	a0,a1,15a0e <_ldtoa_r+0xd22>
   159d2:	14a10593          	addi	a1,sp,330
   159d6:	feb796e3          	bne	a5,a1,159c2 <_ldtoa_r+0xcd6>
   159da:	13015703          	lhu	a4,304(sp)
   159de:	15015783          	lhu	a5,336(sp)
   159e2:	02f70c63          	beq	a4,a5,15a1a <_ldtoa_r+0xd2e>
   159e6:	87a2                	mv	a5,s0
   159e8:	1258                	addi	a4,sp,292
   159ea:	0789                	addi	a5,a5,2
   159ec:	fe079f23          	sh	zero,-2(a5)
   159f0:	fee79de3          	bne	a5,a4,159ea <_ldtoa_r+0xcfe>
   159f4:	b675                	j	155a0 <_ldtoa_r+0x8b4>
   159f6:	66f5                	lui	a3,0x1d
   159f8:	6585                	lui	a1,0x1
   159fa:	6575                	lui	a0,0x1d
   159fc:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   15a00:	4601                	li	a2,0
   15a02:	b6e58593          	addi	a1,a1,-1170 # b6e <exit-0xf57a>
   15a06:	a0850513          	addi	a0,a0,-1528 # 1ca08 <zeroes.0+0x58>
   15a0a:	7a7030ef          	jal	ra,199b0 <__assert_func>
   15a0e:	04a5ec63          	bltu	a1,a0,15a66 <_ldtoa_r+0xd7a>
   15a12:	4581                	li	a1,0
   15a14:	12bc                	addi	a5,sp,360
   15a16:	02b8                	addi	a4,sp,328
   15a18:	b389                	j	1575a <_ldtoa_r+0xa6e>
   15a1a:	8736                	mv	a4,a3
   15a1c:	e689                	bnez	a3,15a26 <_ldtoa_r+0xd3a>
   15a1e:	15611783          	lh	a5,342(sp)
   15a22:	0807db63          	bgez	a5,15ab8 <_ldtoa_r+0xdcc>
   15a26:	15210713          	addi	a4,sp,338
   15a2a:	12bc                	addi	a5,sp,360
   15a2c:	00075583          	lhu	a1,0(a4)
   15a30:	e1e9                	bnez	a1,15af2 <_ldtoa_r+0xe06>
   15a32:	0709                	addi	a4,a4,2
   15a34:	fee79ce3          	bne	a5,a4,15a2c <_ldtoa_r+0xd40>
   15a38:	14c11923          	sh	a2,338(sp)
   15a3c:	b38d                	j	1579e <_ldtoa_r+0xab2>
   15a3e:	4501                	li	a0,0
   15a40:	13210e13          	addi	t3,sp,306
   15a44:	0007de83          	lhu	t4,0(a5)
   15a48:	00075603          	lhu	a2,0(a4)
   15a4c:	17f9                	addi	a5,a5,-2
   15a4e:	1779                	addi	a4,a4,-2
   15a50:	9676                	add	a2,a2,t4
   15a52:	962a                	add	a2,a2,a0
   15a54:	01065513          	srli	a0,a2,0x10
   15a58:	00c79123          	sh	a2,2(a5)
   15a5c:	8905                	andi	a0,a0,1
   15a5e:	ffc713e3          	bne	a4,t3,15a44 <_ldtoa_r+0xd58>
   15a62:	4601                	li	a2,0
   15a64:	b33d                	j	15792 <_ldtoa_r+0xaa6>
   15a66:	864a                	mv	a2,s2
   15a68:	0a98                	addi	a4,sp,336
   15a6a:	12bc                	addi	a5,sp,360
   15a6c:	00075583          	lhu	a1,0(a4)
   15a70:	0709                	addi	a4,a4,2
   15a72:	0609                	addi	a2,a2,2
   15a74:	feb61f23          	sh	a1,-2(a2)
   15a78:	fef71ae3          	bne	a4,a5,15a6c <_ldtoa_r+0xd80>
   15a7c:	18011423          	sh	zero,392(sp)
   15a80:	0a8c                	addi	a1,sp,336
   15a82:	1a10                	addi	a2,sp,304
   15a84:	02b8                	addi	a4,sp,328
   15a86:	00065503          	lhu	a0,0(a2)
   15a8a:	0609                	addi	a2,a2,2
   15a8c:	0589                	addi	a1,a1,2
   15a8e:	fea59f23          	sh	a0,-2(a1)
   15a92:	fee61ae3          	bne	a2,a4,15a86 <_ldtoa_r+0xd9a>
   15a96:	16011423          	sh	zero,360(sp)
   15a9a:	1a10                	addi	a2,sp,304
   15a9c:	85ca                	mv	a1,s2
   15a9e:	0328                	addi	a0,sp,392
   15aa0:	0005de03          	lhu	t3,0(a1)
   15aa4:	0589                	addi	a1,a1,2
   15aa6:	0609                	addi	a2,a2,2
   15aa8:	ffc61f23          	sh	t3,-2(a2)
   15aac:	fea59ae3          	bne	a1,a0,15aa0 <_ldtoa_r+0xdb4>
   15ab0:	14011423          	sh	zero,328(sp)
   15ab4:	4581                	li	a1,0
   15ab6:	b155                	j	1575a <_ldtoa_r+0xa6e>
   15ab8:	12b4                	addi	a3,sp,360
   15aba:	15210513          	addi	a0,sp,338
   15abe:	0006d783          	lhu	a5,0(a3)
   15ac2:	00f7d613          	srli	a2,a5,0xf
   15ac6:	c219                	beqz	a2,15acc <_ldtoa_r+0xde0>
   15ac8:	00176713          	ori	a4,a4,1
   15acc:	0017979b          	slliw	a5,a5,0x1
   15ad0:	17c2                	slli	a5,a5,0x30
   15ad2:	00277613          	andi	a2,a4,2
   15ad6:	93c1                	srli	a5,a5,0x30
   15ad8:	c219                	beqz	a2,15ade <_ldtoa_r+0xdf2>
   15ada:	0017e793          	ori	a5,a5,1
   15ade:	0017171b          	slliw	a4,a4,0x1
   15ae2:	00f69023          	sh	a5,0(a3)
   15ae6:	1742                	slli	a4,a4,0x30
   15ae8:	16f9                	addi	a3,a3,-2
   15aea:	9341                	srli	a4,a4,0x30
   15aec:	fca699e3          	bne	a3,a0,15abe <_ldtoa_r+0xdd2>
   15af0:	b17d                	j	1579e <_ldtoa_r+0xab2>
   15af2:	00168613          	addi	a2,a3,1
   15af6:	14c11923          	sh	a2,338(sp)
   15afa:	b155                	j	1579e <_ldtoa_r+0xab2>

0000000000015afc <_ldcheck>:
   15afc:	6118                	ld	a4,0(a0)
   15afe:	651c                	ld	a5,8(a0)
   15b00:	7139                	addi	sp,sp,-64
   15b02:	850a                	mv	a0,sp
   15b04:	080c                	addi	a1,sp,16
   15b06:	e03a                	sd	a4,0(sp)
   15b08:	e43e                	sd	a5,8(sp)
   15b0a:	fc06                	sd	ra,56(sp)
   15b0c:	945fe0ef          	jal	ra,14450 <e113toe.isra.0>
   15b10:	02215783          	lhu	a5,34(sp)
   15b14:	4501                	li	a0,0
   15b16:	fff7c793          	not	a5,a5
   15b1a:	03179713          	slli	a4,a5,0x31
   15b1e:	eb19                	bnez	a4,15b34 <_ldcheck+0x38>
   15b20:	081c                	addi	a5,sp,16
   15b22:	02210693          	addi	a3,sp,34
   15b26:	0007d703          	lhu	a4,0(a5)
   15b2a:	0789                	addi	a5,a5,2
   15b2c:	e719                	bnez	a4,15b3a <_ldcheck+0x3e>
   15b2e:	fed79ce3          	bne	a5,a3,15b26 <_ldcheck+0x2a>
   15b32:	4509                	li	a0,2
   15b34:	70e2                	ld	ra,56(sp)
   15b36:	6121                	addi	sp,sp,64
   15b38:	8082                	ret
   15b3a:	4505                	li	a0,1
   15b3c:	bfe5                	j	15b34 <_ldcheck+0x38>

0000000000015b3e <__localeconv_l>:
   15b3e:	10050513          	addi	a0,a0,256
   15b42:	8082                	ret

0000000000015b44 <_localeconv_r>:
   15b44:	55018513          	addi	a0,gp,1360 # 1f670 <__global_locale+0x100>
   15b48:	8082                	ret

0000000000015b4a <localeconv>:
   15b4a:	55018513          	addi	a0,gp,1360 # 1f670 <__global_locale+0x100>
   15b4e:	8082                	ret

0000000000015b50 <_lseek_r>:
   15b50:	1101                	addi	sp,sp,-32
   15b52:	872e                	mv	a4,a1
   15b54:	e822                	sd	s0,16(sp)
   15b56:	e426                	sd	s1,8(sp)
   15b58:	85b2                	mv	a1,a2
   15b5a:	842a                	mv	s0,a0
   15b5c:	8636                	mv	a2,a3
   15b5e:	853a                	mv	a0,a4
   15b60:	ec06                	sd	ra,24(sp)
   15b62:	6801a423          	sw	zero,1672(gp) # 1f7a8 <errno>
   15b66:	532050ef          	jal	ra,1b098 <_lseek>
   15b6a:	57fd                	li	a5,-1
   15b6c:	00f50763          	beq	a0,a5,15b7a <_lseek_r+0x2a>
   15b70:	60e2                	ld	ra,24(sp)
   15b72:	6442                	ld	s0,16(sp)
   15b74:	64a2                	ld	s1,8(sp)
   15b76:	6105                	addi	sp,sp,32
   15b78:	8082                	ret
   15b7a:	6881a783          	lw	a5,1672(gp) # 1f7a8 <errno>
   15b7e:	dbed                	beqz	a5,15b70 <_lseek_r+0x20>
   15b80:	60e2                	ld	ra,24(sp)
   15b82:	c01c                	sw	a5,0(s0)
   15b84:	6442                	ld	s0,16(sp)
   15b86:	64a2                	ld	s1,8(sp)
   15b88:	6105                	addi	sp,sp,32
   15b8a:	8082                	ret

0000000000015b8c <__smakebuf_r>:
   15b8c:	0105d783          	lhu	a5,16(a1)
   15b90:	7135                	addi	sp,sp,-160
   15b92:	e922                	sd	s0,144(sp)
   15b94:	ed06                	sd	ra,152(sp)
   15b96:	e526                	sd	s1,136(sp)
   15b98:	e14a                	sd	s2,128(sp)
   15b9a:	fcce                	sd	s3,120(sp)
   15b9c:	f8d2                	sd	s4,112(sp)
   15b9e:	0027f713          	andi	a4,a5,2
   15ba2:	842e                	mv	s0,a1
   15ba4:	cf19                	beqz	a4,15bc2 <__smakebuf_r+0x36>
   15ba6:	07758793          	addi	a5,a1,119
   15baa:	e19c                	sd	a5,0(a1)
   15bac:	ed9c                	sd	a5,24(a1)
   15bae:	4785                	li	a5,1
   15bb0:	d19c                	sw	a5,32(a1)
   15bb2:	60ea                	ld	ra,152(sp)
   15bb4:	644a                	ld	s0,144(sp)
   15bb6:	64aa                	ld	s1,136(sp)
   15bb8:	690a                	ld	s2,128(sp)
   15bba:	79e6                	ld	s3,120(sp)
   15bbc:	7a46                	ld	s4,112(sp)
   15bbe:	610d                	addi	sp,sp,160
   15bc0:	8082                	ret
   15bc2:	01259583          	lh	a1,18(a1)
   15bc6:	84aa                	mv	s1,a0
   15bc8:	0605c863          	bltz	a1,15c38 <__smakebuf_r+0xac>
   15bcc:	0030                	addi	a2,sp,8
   15bce:	062040ef          	jal	ra,19c30 <_fstat_r>
   15bd2:	06054163          	bltz	a0,15c34 <__smakebuf_r+0xa8>
   15bd6:	4932                	lw	s2,12(sp)
   15bd8:	67bd                	lui	a5,0xf
   15bda:	6985                	lui	s3,0x1
   15bdc:	00f97933          	and	s2,s2,a5
   15be0:	6789                	lui	a5,0x2
   15be2:	40f90933          	sub	s2,s2,a5
   15be6:	00193913          	seqz	s2,s2
   15bea:	40000a13          	li	s4,1024
   15bee:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf8e8>
   15bf2:	85d2                	mv	a1,s4
   15bf4:	8526                	mv	a0,s1
   15bf6:	b6ffa0ef          	jal	ra,10764 <_malloc_r>
   15bfa:	01041783          	lh	a5,16(s0)
   15bfe:	c939                	beqz	a0,15c54 <__smakebuf_r+0xc8>
   15c00:	6741                	lui	a4,0x10
   15c02:	36e70713          	addi	a4,a4,878 # 1036e <_cleanup_r>
   15c06:	ecb8                	sd	a4,88(s1)
   15c08:	0807e793          	ori	a5,a5,128
   15c0c:	00f41823          	sh	a5,16(s0)
   15c10:	e008                	sd	a0,0(s0)
   15c12:	ec08                	sd	a0,24(s0)
   15c14:	03442023          	sw	s4,32(s0)
   15c18:	06091163          	bnez	s2,15c7a <__smakebuf_r+0xee>
   15c1c:	0137e7b3          	or	a5,a5,s3
   15c20:	60ea                	ld	ra,152(sp)
   15c22:	00f41823          	sh	a5,16(s0)
   15c26:	644a                	ld	s0,144(sp)
   15c28:	64aa                	ld	s1,136(sp)
   15c2a:	690a                	ld	s2,128(sp)
   15c2c:	79e6                	ld	s3,120(sp)
   15c2e:	7a46                	ld	s4,112(sp)
   15c30:	610d                	addi	sp,sp,160
   15c32:	8082                	ret
   15c34:	01045783          	lhu	a5,16(s0)
   15c38:	0807f793          	andi	a5,a5,128
   15c3c:	4901                	li	s2,0
   15c3e:	cb95                	beqz	a5,15c72 <__smakebuf_r+0xe6>
   15c40:	04000a13          	li	s4,64
   15c44:	85d2                	mv	a1,s4
   15c46:	8526                	mv	a0,s1
   15c48:	b1dfa0ef          	jal	ra,10764 <_malloc_r>
   15c4c:	01041783          	lh	a5,16(s0)
   15c50:	4981                	li	s3,0
   15c52:	f55d                	bnez	a0,15c00 <__smakebuf_r+0x74>
   15c54:	2007f713          	andi	a4,a5,512
   15c58:	ff29                	bnez	a4,15bb2 <__smakebuf_r+0x26>
   15c5a:	9bf1                	andi	a5,a5,-4
   15c5c:	0027e793          	ori	a5,a5,2
   15c60:	07740713          	addi	a4,s0,119
   15c64:	00f41823          	sh	a5,16(s0)
   15c68:	4785                	li	a5,1
   15c6a:	e018                	sd	a4,0(s0)
   15c6c:	ec18                	sd	a4,24(s0)
   15c6e:	d01c                	sw	a5,32(s0)
   15c70:	b789                	j	15bb2 <__smakebuf_r+0x26>
   15c72:	40000a13          	li	s4,1024
   15c76:	4981                	li	s3,0
   15c78:	bfad                	j	15bf2 <__smakebuf_r+0x66>
   15c7a:	01241583          	lh	a1,18(s0)
   15c7e:	8526                	mv	a0,s1
   15c80:	7eb030ef          	jal	ra,19c6a <_isatty_r>
   15c84:	e501                	bnez	a0,15c8c <__smakebuf_r+0x100>
   15c86:	01041783          	lh	a5,16(s0)
   15c8a:	bf49                	j	15c1c <__smakebuf_r+0x90>
   15c8c:	01045783          	lhu	a5,16(s0)
   15c90:	9bf1                	andi	a5,a5,-4
   15c92:	0017e793          	ori	a5,a5,1
   15c96:	0107979b          	slliw	a5,a5,0x10
   15c9a:	4107d79b          	sraiw	a5,a5,0x10
   15c9e:	bfbd                	j	15c1c <__smakebuf_r+0x90>

0000000000015ca0 <__swhatbuf_r>:
   15ca0:	7175                	addi	sp,sp,-144
   15ca2:	e122                	sd	s0,128(sp)
   15ca4:	842e                	mv	s0,a1
   15ca6:	01259583          	lh	a1,18(a1)
   15caa:	fca6                	sd	s1,120(sp)
   15cac:	f8ca                	sd	s2,112(sp)
   15cae:	e506                	sd	ra,136(sp)
   15cb0:	84b2                	mv	s1,a2
   15cb2:	8936                	mv	s2,a3
   15cb4:	0205cc63          	bltz	a1,15cec <__swhatbuf_r+0x4c>
   15cb8:	0030                	addi	a2,sp,8
   15cba:	777030ef          	jal	ra,19c30 <_fstat_r>
   15cbe:	02054763          	bltz	a0,15cec <__swhatbuf_r+0x4c>
   15cc2:	47b2                	lw	a5,12(sp)
   15cc4:	673d                	lui	a4,0xf
   15cc6:	60aa                	ld	ra,136(sp)
   15cc8:	8ff9                	and	a5,a5,a4
   15cca:	6709                	lui	a4,0x2
   15ccc:	8f99                	sub	a5,a5,a4
   15cce:	640a                	ld	s0,128(sp)
   15cd0:	0017b793          	seqz	a5,a5
   15cd4:	00f92023          	sw	a5,0(s2)
   15cd8:	40000713          	li	a4,1024
   15cdc:	e098                	sd	a4,0(s1)
   15cde:	6505                	lui	a0,0x1
   15ce0:	74e6                	ld	s1,120(sp)
   15ce2:	7946                	ld	s2,112(sp)
   15ce4:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8e8>
   15ce8:	6149                	addi	sp,sp,144
   15cea:	8082                	ret
   15cec:	01045783          	lhu	a5,16(s0)
   15cf0:	0807f793          	andi	a5,a5,128
   15cf4:	cf91                	beqz	a5,15d10 <__swhatbuf_r+0x70>
   15cf6:	60aa                	ld	ra,136(sp)
   15cf8:	640a                	ld	s0,128(sp)
   15cfa:	4781                	li	a5,0
   15cfc:	00f92023          	sw	a5,0(s2)
   15d00:	04000713          	li	a4,64
   15d04:	e098                	sd	a4,0(s1)
   15d06:	7946                	ld	s2,112(sp)
   15d08:	74e6                	ld	s1,120(sp)
   15d0a:	4501                	li	a0,0
   15d0c:	6149                	addi	sp,sp,144
   15d0e:	8082                	ret
   15d10:	60aa                	ld	ra,136(sp)
   15d12:	640a                	ld	s0,128(sp)
   15d14:	4781                	li	a5,0
   15d16:	00f92023          	sw	a5,0(s2)
   15d1a:	40000713          	li	a4,1024
   15d1e:	e098                	sd	a4,0(s1)
   15d20:	7946                	ld	s2,112(sp)
   15d22:	74e6                	ld	s1,120(sp)
   15d24:	4501                	li	a0,0
   15d26:	6149                	addi	sp,sp,144
   15d28:	8082                	ret

0000000000015d2a <memmove>:
   15d2a:	02a5f263          	bgeu	a1,a0,15d4e <memmove+0x24>
   15d2e:	00c587b3          	add	a5,a1,a2
   15d32:	00f57e63          	bgeu	a0,a5,15d4e <memmove+0x24>
   15d36:	00c50733          	add	a4,a0,a2
   15d3a:	ca5d                	beqz	a2,15df0 <memmove+0xc6>
   15d3c:	fff7c683          	lbu	a3,-1(a5) # 1fff <exit-0xe0e9>
   15d40:	17fd                	addi	a5,a5,-1
   15d42:	177d                	addi	a4,a4,-1 # 1fff <exit-0xe0e9>
   15d44:	00d70023          	sb	a3,0(a4)
   15d48:	fef59ae3          	bne	a1,a5,15d3c <memmove+0x12>
   15d4c:	8082                	ret
   15d4e:	47fd                	li	a5,31
   15d50:	02c7e163          	bltu	a5,a2,15d72 <memmove+0x48>
   15d54:	87aa                	mv	a5,a0
   15d56:	fff60693          	addi	a3,a2,-1
   15d5a:	c245                	beqz	a2,15dfa <memmove+0xd0>
   15d5c:	0685                	addi	a3,a3,1
   15d5e:	96be                	add	a3,a3,a5
   15d60:	0005c703          	lbu	a4,0(a1)
   15d64:	0785                	addi	a5,a5,1
   15d66:	0585                	addi	a1,a1,1
   15d68:	fee78fa3          	sb	a4,-1(a5)
   15d6c:	fed79ae3          	bne	a5,a3,15d60 <memmove+0x36>
   15d70:	8082                	ret
   15d72:	00b567b3          	or	a5,a0,a1
   15d76:	8b9d                	andi	a5,a5,7
   15d78:	efad                	bnez	a5,15df2 <memmove+0xc8>
   15d7a:	fe060893          	addi	a7,a2,-32
   15d7e:	fe08f893          	andi	a7,a7,-32
   15d82:	02088893          	addi	a7,a7,32
   15d86:	01150833          	add	a6,a0,a7
   15d8a:	872e                	mv	a4,a1
   15d8c:	87aa                	mv	a5,a0
   15d8e:	6314                	ld	a3,0(a4)
   15d90:	02070713          	addi	a4,a4,32
   15d94:	02078793          	addi	a5,a5,32
   15d98:	fed7b023          	sd	a3,-32(a5)
   15d9c:	fe873683          	ld	a3,-24(a4)
   15da0:	fed7b423          	sd	a3,-24(a5)
   15da4:	ff073683          	ld	a3,-16(a4)
   15da8:	fed7b823          	sd	a3,-16(a5)
   15dac:	ff873683          	ld	a3,-8(a4)
   15db0:	fed7bc23          	sd	a3,-8(a5)
   15db4:	fcf81de3          	bne	a6,a5,15d8e <memmove+0x64>
   15db8:	01867713          	andi	a4,a2,24
   15dbc:	95c6                	add	a1,a1,a7
   15dbe:	01f67813          	andi	a6,a2,31
   15dc2:	cf0d                	beqz	a4,15dfc <memmove+0xd2>
   15dc4:	872e                	mv	a4,a1
   15dc6:	88be                	mv	a7,a5
   15dc8:	4e1d                	li	t3,7
   15dca:	00073303          	ld	t1,0(a4)
   15dce:	0721                	addi	a4,a4,8
   15dd0:	40e806b3          	sub	a3,a6,a4
   15dd4:	0068b023          	sd	t1,0(a7)
   15dd8:	96ae                	add	a3,a3,a1
   15dda:	08a1                	addi	a7,a7,8
   15ddc:	fede67e3          	bltu	t3,a3,15dca <memmove+0xa0>
   15de0:	ff880713          	addi	a4,a6,-8
   15de4:	9b61                	andi	a4,a4,-8
   15de6:	0721                	addi	a4,a4,8
   15de8:	8a1d                	andi	a2,a2,7
   15dea:	97ba                	add	a5,a5,a4
   15dec:	95ba                	add	a1,a1,a4
   15dee:	b7a5                	j	15d56 <memmove+0x2c>
   15df0:	8082                	ret
   15df2:	fff60693          	addi	a3,a2,-1
   15df6:	87aa                	mv	a5,a0
   15df8:	b795                	j	15d5c <memmove+0x32>
   15dfa:	8082                	ret
   15dfc:	8642                	mv	a2,a6
   15dfe:	bfa1                	j	15d56 <memmove+0x2c>

0000000000015e00 <_Balloc>:
   15e00:	7d3c                	ld	a5,120(a0)
   15e02:	1101                	addi	sp,sp,-32
   15e04:	e822                	sd	s0,16(sp)
   15e06:	e426                	sd	s1,8(sp)
   15e08:	ec06                	sd	ra,24(sp)
   15e0a:	e04a                	sd	s2,0(sp)
   15e0c:	842a                	mv	s0,a0
   15e0e:	84ae                	mv	s1,a1
   15e10:	c385                	beqz	a5,15e30 <_Balloc+0x30>
   15e12:	00349713          	slli	a4,s1,0x3
   15e16:	97ba                	add	a5,a5,a4
   15e18:	6388                	ld	a0,0(a5)
   15e1a:	c50d                	beqz	a0,15e44 <_Balloc+0x44>
   15e1c:	6118                	ld	a4,0(a0)
   15e1e:	e398                	sd	a4,0(a5)
   15e20:	00053823          	sd	zero,16(a0)
   15e24:	60e2                	ld	ra,24(sp)
   15e26:	6442                	ld	s0,16(sp)
   15e28:	64a2                	ld	s1,8(sp)
   15e2a:	6902                	ld	s2,0(sp)
   15e2c:	6105                	addi	sp,sp,32
   15e2e:	8082                	ret
   15e30:	04100613          	li	a2,65
   15e34:	45a1                	li	a1,8
   15e36:	3c3030ef          	jal	ra,199f8 <_calloc_r>
   15e3a:	fc28                	sd	a0,120(s0)
   15e3c:	87aa                	mv	a5,a0
   15e3e:	f971                	bnez	a0,15e12 <_Balloc+0x12>
   15e40:	4501                	li	a0,0
   15e42:	b7cd                	j	15e24 <_Balloc+0x24>
   15e44:	4905                	li	s2,1
   15e46:	0099163b          	sllw	a2,s2,s1
   15e4a:	8932                	mv	s2,a2
   15e4c:	061d                	addi	a2,a2,7
   15e4e:	060a                	slli	a2,a2,0x2
   15e50:	4585                	li	a1,1
   15e52:	8522                	mv	a0,s0
   15e54:	3a5030ef          	jal	ra,199f8 <_calloc_r>
   15e58:	d565                	beqz	a0,15e40 <_Balloc+0x40>
   15e5a:	c504                	sw	s1,8(a0)
   15e5c:	01252623          	sw	s2,12(a0)
   15e60:	b7c1                	j	15e20 <_Balloc+0x20>

0000000000015e62 <_Bfree>:
   15e62:	c981                	beqz	a1,15e72 <_Bfree+0x10>
   15e64:	4598                	lw	a4,8(a1)
   15e66:	7d3c                	ld	a5,120(a0)
   15e68:	070e                	slli	a4,a4,0x3
   15e6a:	97ba                	add	a5,a5,a4
   15e6c:	6398                	ld	a4,0(a5)
   15e6e:	e198                	sd	a4,0(a1)
   15e70:	e38c                	sd	a1,0(a5)
   15e72:	8082                	ret

0000000000015e74 <__multadd>:
   15e74:	7179                	addi	sp,sp,-48
   15e76:	ec26                	sd	s1,24(sp)
   15e78:	49c4                	lw	s1,20(a1)
   15e7a:	6341                	lui	t1,0x10
   15e7c:	f022                	sd	s0,32(sp)
   15e7e:	e84a                	sd	s2,16(sp)
   15e80:	e44e                	sd	s3,8(sp)
   15e82:	f406                	sd	ra,40(sp)
   15e84:	e052                	sd	s4,0(sp)
   15e86:	892e                	mv	s2,a1
   15e88:	89aa                	mv	s3,a0
   15e8a:	8436                	mv	s0,a3
   15e8c:	01858813          	addi	a6,a1,24
   15e90:	4881                	li	a7,0
   15e92:	137d                	addi	t1,t1,-1 # ffff <exit-0xe9>
   15e94:	00082783          	lw	a5,0(a6)
   15e98:	0811                	addi	a6,a6,4
   15e9a:	2885                	addiw	a7,a7,1
   15e9c:	0067f733          	and	a4,a5,t1
   15ea0:	02c7073b          	mulw	a4,a4,a2
   15ea4:	0107d69b          	srliw	a3,a5,0x10
   15ea8:	02c686bb          	mulw	a3,a3,a2
   15eac:	008707bb          	addw	a5,a4,s0
   15eb0:	0107d71b          	srliw	a4,a5,0x10
   15eb4:	00f377b3          	and	a5,t1,a5
   15eb8:	9eb9                	addw	a3,a3,a4
   15eba:	0106971b          	slliw	a4,a3,0x10
   15ebe:	9fb9                	addw	a5,a5,a4
   15ec0:	fef82e23          	sw	a5,-4(a6)
   15ec4:	0106d41b          	srliw	s0,a3,0x10
   15ec8:	fc98c6e3          	blt	a7,s1,15e94 <__multadd+0x20>
   15ecc:	cc09                	beqz	s0,15ee6 <__multadd+0x72>
   15ece:	00c92783          	lw	a5,12(s2)
   15ed2:	02f4d363          	bge	s1,a5,15ef8 <__multadd+0x84>
   15ed6:	00448793          	addi	a5,s1,4
   15eda:	078a                	slli	a5,a5,0x2
   15edc:	97ca                	add	a5,a5,s2
   15ede:	c780                	sw	s0,8(a5)
   15ee0:	2485                	addiw	s1,s1,1
   15ee2:	00992a23          	sw	s1,20(s2)
   15ee6:	70a2                	ld	ra,40(sp)
   15ee8:	7402                	ld	s0,32(sp)
   15eea:	64e2                	ld	s1,24(sp)
   15eec:	69a2                	ld	s3,8(sp)
   15eee:	6a02                	ld	s4,0(sp)
   15ef0:	854a                	mv	a0,s2
   15ef2:	6942                	ld	s2,16(sp)
   15ef4:	6145                	addi	sp,sp,48
   15ef6:	8082                	ret
   15ef8:	00892583          	lw	a1,8(s2)
   15efc:	854e                	mv	a0,s3
   15efe:	2585                	addiw	a1,a1,1
   15f00:	f01ff0ef          	jal	ra,15e00 <_Balloc>
   15f04:	8a2a                	mv	s4,a0
   15f06:	cd1d                	beqz	a0,15f44 <__multadd+0xd0>
   15f08:	01492603          	lw	a2,20(s2)
   15f0c:	01090593          	addi	a1,s2,16
   15f10:	0541                	addi	a0,a0,16
   15f12:	0609                	addi	a2,a2,2
   15f14:	060a                	slli	a2,a2,0x2
   15f16:	ef5fa0ef          	jal	ra,10e0a <memcpy>
   15f1a:	00892703          	lw	a4,8(s2)
   15f1e:	0789b783          	ld	a5,120(s3)
   15f22:	070e                	slli	a4,a4,0x3
   15f24:	97ba                	add	a5,a5,a4
   15f26:	6398                	ld	a4,0(a5)
   15f28:	00e93023          	sd	a4,0(s2)
   15f2c:	0127b023          	sd	s2,0(a5)
   15f30:	00448793          	addi	a5,s1,4
   15f34:	8952                	mv	s2,s4
   15f36:	078a                	slli	a5,a5,0x2
   15f38:	97ca                	add	a5,a5,s2
   15f3a:	c780                	sw	s0,8(a5)
   15f3c:	2485                	addiw	s1,s1,1
   15f3e:	00992a23          	sw	s1,20(s2)
   15f42:	b755                	j	15ee6 <__multadd+0x72>
   15f44:	66f5                	lui	a3,0x1d
   15f46:	6575                	lui	a0,0x1d
   15f48:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   15f4c:	4601                	li	a2,0
   15f4e:	0b500593          	li	a1,181
   15f52:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   15f56:	25b030ef          	jal	ra,199b0 <__assert_func>

0000000000015f5a <__s2b>:
   15f5a:	7139                	addi	sp,sp,-64
   15f5c:	f822                	sd	s0,48(sp)
   15f5e:	f426                	sd	s1,40(sp)
   15f60:	f04a                	sd	s2,32(sp)
   15f62:	ec4e                	sd	s3,24(sp)
   15f64:	e852                	sd	s4,16(sp)
   15f66:	84b6                	mv	s1,a3
   15f68:	842e                	mv	s0,a1
   15f6a:	26a1                	addiw	a3,a3,8
   15f6c:	45a5                	li	a1,9
   15f6e:	fc06                	sd	ra,56(sp)
   15f70:	e456                	sd	s5,8(sp)
   15f72:	e05a                	sd	s6,0(sp)
   15f74:	47a5                	li	a5,9
   15f76:	02b6c6bb          	divw	a3,a3,a1
   15f7a:	892a                	mv	s2,a0
   15f7c:	89b2                	mv	s3,a2
   15f7e:	8a3a                	mv	s4,a4
   15f80:	0a97d363          	bge	a5,s1,16026 <__s2b+0xcc>
   15f84:	4785                	li	a5,1
   15f86:	4581                	li	a1,0
   15f88:	0017979b          	slliw	a5,a5,0x1
   15f8c:	2585                	addiw	a1,a1,1
   15f8e:	fed7cde3          	blt	a5,a3,15f88 <__s2b+0x2e>
   15f92:	854a                	mv	a0,s2
   15f94:	e6dff0ef          	jal	ra,15e00 <_Balloc>
   15f98:	85aa                	mv	a1,a0
   15f9a:	c941                	beqz	a0,1602a <__s2b+0xd0>
   15f9c:	4785                	li	a5,1
   15f9e:	c95c                	sw	a5,20(a0)
   15fa0:	01452c23          	sw	s4,24(a0)
   15fa4:	47a5                	li	a5,9
   15fa6:	0737dd63          	bge	a5,s3,16020 <__s2b+0xc6>
   15faa:	02099793          	slli	a5,s3,0x20
   15fae:	00940b13          	addi	s6,s0,9
   15fb2:	9381                	srli	a5,a5,0x20
   15fb4:	00098a9b          	sext.w	s5,s3
   15fb8:	943e                	add	s0,s0,a5
   15fba:	8a5a                	mv	s4,s6
   15fbc:	000a4683          	lbu	a3,0(s4)
   15fc0:	4629                	li	a2,10
   15fc2:	854a                	mv	a0,s2
   15fc4:	fd06869b          	addiw	a3,a3,-48
   15fc8:	eadff0ef          	jal	ra,15e74 <__multadd>
   15fcc:	0a05                	addi	s4,s4,1
   15fce:	85aa                	mv	a1,a0
   15fd0:	fe8a16e3          	bne	s4,s0,15fbc <__s2b+0x62>
   15fd4:	3ae1                	addiw	s5,s5,-8
   15fd6:	1a82                	slli	s5,s5,0x20
   15fd8:	020ada93          	srli	s5,s5,0x20
   15fdc:	015b0433          	add	s0,s6,s5
   15fe0:	0299d563          	bge	s3,s1,1600a <__s2b+0xb0>
   15fe4:	34fd                	addiw	s1,s1,-1
   15fe6:	413484bb          	subw	s1,s1,s3
   15fea:	1482                	slli	s1,s1,0x20
   15fec:	9081                	srli	s1,s1,0x20
   15fee:	0485                	addi	s1,s1,1
   15ff0:	94a2                	add	s1,s1,s0
   15ff2:	00044683          	lbu	a3,0(s0)
   15ff6:	4629                	li	a2,10
   15ff8:	854a                	mv	a0,s2
   15ffa:	fd06869b          	addiw	a3,a3,-48
   15ffe:	e77ff0ef          	jal	ra,15e74 <__multadd>
   16002:	0405                	addi	s0,s0,1
   16004:	85aa                	mv	a1,a0
   16006:	fe9416e3          	bne	s0,s1,15ff2 <__s2b+0x98>
   1600a:	70e2                	ld	ra,56(sp)
   1600c:	7442                	ld	s0,48(sp)
   1600e:	74a2                	ld	s1,40(sp)
   16010:	7902                	ld	s2,32(sp)
   16012:	69e2                	ld	s3,24(sp)
   16014:	6a42                	ld	s4,16(sp)
   16016:	6aa2                	ld	s5,8(sp)
   16018:	6b02                	ld	s6,0(sp)
   1601a:	852e                	mv	a0,a1
   1601c:	6121                	addi	sp,sp,64
   1601e:	8082                	ret
   16020:	0429                	addi	s0,s0,10
   16022:	49a5                	li	s3,9
   16024:	bf75                	j	15fe0 <__s2b+0x86>
   16026:	4581                	li	a1,0
   16028:	b7ad                	j	15f92 <__s2b+0x38>
   1602a:	66f5                	lui	a3,0x1d
   1602c:	6575                	lui	a0,0x1d
   1602e:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   16032:	4601                	li	a2,0
   16034:	0ce00593          	li	a1,206
   16038:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   1603c:	175030ef          	jal	ra,199b0 <__assert_func>

0000000000016040 <__hi0bits>:
   16040:	7741                	lui	a4,0xffff0
   16042:	8f69                	and	a4,a4,a0
   16044:	87aa                	mv	a5,a0
   16046:	4501                	li	a0,0
   16048:	e701                	bnez	a4,16050 <__hi0bits+0x10>
   1604a:	0107979b          	slliw	a5,a5,0x10
   1604e:	4541                	li	a0,16
   16050:	ff000737          	lui	a4,0xff000
   16054:	8f7d                	and	a4,a4,a5
   16056:	e701                	bnez	a4,1605e <__hi0bits+0x1e>
   16058:	0087979b          	slliw	a5,a5,0x8
   1605c:	2521                	addiw	a0,a0,8
   1605e:	f0000737          	lui	a4,0xf0000
   16062:	8f7d                	and	a4,a4,a5
   16064:	e701                	bnez	a4,1606c <__hi0bits+0x2c>
   16066:	0047979b          	slliw	a5,a5,0x4
   1606a:	2511                	addiw	a0,a0,4
   1606c:	c0000737          	lui	a4,0xc0000
   16070:	8f7d                	and	a4,a4,a5
   16072:	e701                	bnez	a4,1607a <__hi0bits+0x3a>
   16074:	0027979b          	slliw	a5,a5,0x2
   16078:	2509                	addiw	a0,a0,2
   1607a:	0007c663          	bltz	a5,16086 <__hi0bits+0x46>
   1607e:	83f9                	srli	a5,a5,0x1e
   16080:	8b85                	andi	a5,a5,1
   16082:	2505                	addiw	a0,a0,1
   16084:	c391                	beqz	a5,16088 <__hi0bits+0x48>
   16086:	8082                	ret
   16088:	02000513          	li	a0,32
   1608c:	8082                	ret

000000000001608e <__lo0bits>:
   1608e:	411c                	lw	a5,0(a0)
   16090:	872a                	mv	a4,a0
   16092:	0077f693          	andi	a3,a5,7
   16096:	863e                	mv	a2,a5
   16098:	ce81                	beqz	a3,160b0 <__lo0bits+0x22>
   1609a:	0017f693          	andi	a3,a5,1
   1609e:	4501                	li	a0,0
   160a0:	ee9d                	bnez	a3,160de <__lo0bits+0x50>
   160a2:	8a09                	andi	a2,a2,2
   160a4:	ce25                	beqz	a2,1611c <__lo0bits+0x8e>
   160a6:	0017d79b          	srliw	a5,a5,0x1
   160aa:	c31c                	sw	a5,0(a4)
   160ac:	4505                	li	a0,1
   160ae:	8082                	ret
   160b0:	03079693          	slli	a3,a5,0x30
   160b4:	92c1                	srli	a3,a3,0x30
   160b6:	4501                	li	a0,0
   160b8:	cab9                	beqz	a3,1610e <__lo0bits+0x80>
   160ba:	0ff7f693          	zext.b	a3,a5
   160be:	c2a9                	beqz	a3,16100 <__lo0bits+0x72>
   160c0:	00f7f693          	andi	a3,a5,15
   160c4:	c69d                	beqz	a3,160f2 <__lo0bits+0x64>
   160c6:	0037f693          	andi	a3,a5,3
   160ca:	ce89                	beqz	a3,160e4 <__lo0bits+0x56>
   160cc:	0017f693          	andi	a3,a5,1
   160d0:	ea81                	bnez	a3,160e0 <__lo0bits+0x52>
   160d2:	0017d79b          	srliw	a5,a5,0x1
   160d6:	2505                	addiw	a0,a0,1
   160d8:	e781                	bnez	a5,160e0 <__lo0bits+0x52>
   160da:	02000513          	li	a0,32
   160de:	8082                	ret
   160e0:	c31c                	sw	a5,0(a4)
   160e2:	8082                	ret
   160e4:	0027d79b          	srliw	a5,a5,0x2
   160e8:	0017f693          	andi	a3,a5,1
   160ec:	2509                	addiw	a0,a0,2
   160ee:	faed                	bnez	a3,160e0 <__lo0bits+0x52>
   160f0:	b7cd                	j	160d2 <__lo0bits+0x44>
   160f2:	0047d79b          	srliw	a5,a5,0x4
   160f6:	0037f693          	andi	a3,a5,3
   160fa:	2511                	addiw	a0,a0,4
   160fc:	fae1                	bnez	a3,160cc <__lo0bits+0x3e>
   160fe:	b7dd                	j	160e4 <__lo0bits+0x56>
   16100:	0087d79b          	srliw	a5,a5,0x8
   16104:	00f7f693          	andi	a3,a5,15
   16108:	2521                	addiw	a0,a0,8
   1610a:	fed5                	bnez	a3,160c6 <__lo0bits+0x38>
   1610c:	b7dd                	j	160f2 <__lo0bits+0x64>
   1610e:	0107d79b          	srliw	a5,a5,0x10
   16112:	0ff7f693          	zext.b	a3,a5
   16116:	4541                	li	a0,16
   16118:	f6c5                	bnez	a3,160c0 <__lo0bits+0x32>
   1611a:	b7dd                	j	16100 <__lo0bits+0x72>
   1611c:	0027d79b          	srliw	a5,a5,0x2
   16120:	c31c                	sw	a5,0(a4)
   16122:	4509                	li	a0,2
   16124:	8082                	ret

0000000000016126 <__i2b>:
   16126:	7d3c                	ld	a5,120(a0)
   16128:	1101                	addi	sp,sp,-32
   1612a:	e822                	sd	s0,16(sp)
   1612c:	e426                	sd	s1,8(sp)
   1612e:	ec06                	sd	ra,24(sp)
   16130:	842a                	mv	s0,a0
   16132:	84ae                	mv	s1,a1
   16134:	cf91                	beqz	a5,16150 <__i2b+0x2a>
   16136:	6788                	ld	a0,8(a5)
   16138:	cd1d                	beqz	a0,16176 <__i2b+0x50>
   1613a:	6118                	ld	a4,0(a0)
   1613c:	e798                	sd	a4,8(a5)
   1613e:	60e2                	ld	ra,24(sp)
   16140:	6442                	ld	s0,16(sp)
   16142:	4785                	li	a5,1
   16144:	1782                	slli	a5,a5,0x20
   16146:	cd04                	sw	s1,24(a0)
   16148:	e91c                	sd	a5,16(a0)
   1614a:	64a2                	ld	s1,8(sp)
   1614c:	6105                	addi	sp,sp,32
   1614e:	8082                	ret
   16150:	04100613          	li	a2,65
   16154:	45a1                	li	a1,8
   16156:	0a3030ef          	jal	ra,199f8 <_calloc_r>
   1615a:	fc28                	sd	a0,120(s0)
   1615c:	87aa                	mv	a5,a0
   1615e:	fd61                	bnez	a0,16136 <__i2b+0x10>
   16160:	66f5                	lui	a3,0x1d
   16162:	6575                	lui	a0,0x1d
   16164:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   16168:	4601                	li	a2,0
   1616a:	14000593          	li	a1,320
   1616e:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   16172:	03f030ef          	jal	ra,199b0 <__assert_func>
   16176:	02400613          	li	a2,36
   1617a:	4585                	li	a1,1
   1617c:	8522                	mv	a0,s0
   1617e:	07b030ef          	jal	ra,199f8 <_calloc_r>
   16182:	dd79                	beqz	a0,16160 <__i2b+0x3a>
   16184:	4785                	li	a5,1
   16186:	1786                	slli	a5,a5,0x21
   16188:	0785                	addi	a5,a5,1
   1618a:	e51c                	sd	a5,8(a0)
   1618c:	bf4d                	j	1613e <__i2b+0x18>

000000000001618e <__multiply>:
   1618e:	7179                	addi	sp,sp,-48
   16190:	e84a                	sd	s2,16(sp)
   16192:	e44e                	sd	s3,8(sp)
   16194:	01462903          	lw	s2,20(a2)
   16198:	0145a983          	lw	s3,20(a1)
   1619c:	ec26                	sd	s1,24(sp)
   1619e:	e052                	sd	s4,0(sp)
   161a0:	f406                	sd	ra,40(sp)
   161a2:	f022                	sd	s0,32(sp)
   161a4:	8a2e                	mv	s4,a1
   161a6:	84b2                	mv	s1,a2
   161a8:	0129c763          	blt	s3,s2,161b6 <__multiply+0x28>
   161ac:	87ca                	mv	a5,s2
   161ae:	84ae                	mv	s1,a1
   161b0:	894e                	mv	s2,s3
   161b2:	8a32                	mv	s4,a2
   161b4:	89be                	mv	s3,a5
   161b6:	44dc                	lw	a5,12(s1)
   161b8:	0139043b          	addw	s0,s2,s3
   161bc:	448c                	lw	a1,8(s1)
   161be:	0087d363          	bge	a5,s0,161c4 <__multiply+0x36>
   161c2:	2585                	addiw	a1,a1,1
   161c4:	c3dff0ef          	jal	ra,15e00 <_Balloc>
   161c8:	14050b63          	beqz	a0,1631e <__multiply+0x190>
   161cc:	01850313          	addi	t1,a0,24
   161d0:	00241893          	slli	a7,s0,0x2
   161d4:	989a                	add	a7,a7,t1
   161d6:	879a                	mv	a5,t1
   161d8:	01137763          	bgeu	t1,a7,161e6 <__multiply+0x58>
   161dc:	0007a023          	sw	zero,0(a5)
   161e0:	0791                	addi	a5,a5,4
   161e2:	ff17ede3          	bltu	a5,a7,161dc <__multiply+0x4e>
   161e6:	018a0813          	addi	a6,s4,24
   161ea:	00299e13          	slli	t3,s3,0x2
   161ee:	01848e93          	addi	t4,s1,24
   161f2:	00291593          	slli	a1,s2,0x2
   161f6:	9e42                	add	t3,t3,a6
   161f8:	95f6                	add	a1,a1,t4
   161fa:	0fc87963          	bgeu	a6,t3,162ec <__multiply+0x15e>
   161fe:	01948793          	addi	a5,s1,25
   16202:	4f11                	li	t5,4
   16204:	10f5f663          	bgeu	a1,a5,16310 <__multiply+0x182>
   16208:	66c1                	lui	a3,0x10
   1620a:	16fd                	addi	a3,a3,-1 # ffff <exit-0xe9>
   1620c:	a809                	j	1621e <__multiply+0x90>
   1620e:	0102d29b          	srliw	t0,t0,0x10
   16212:	06029b63          	bnez	t0,16288 <__multiply+0xfa>
   16216:	0811                	addi	a6,a6,4
   16218:	0311                	addi	t1,t1,4
   1621a:	0dc87963          	bgeu	a6,t3,162ec <__multiply+0x15e>
   1621e:	00082283          	lw	t0,0(a6)
   16222:	00d2f3b3          	and	t2,t0,a3
   16226:	fe0384e3          	beqz	t2,1620e <__multiply+0x80>
   1622a:	829a                	mv	t0,t1
   1622c:	8ff6                	mv	t6,t4
   1622e:	4481                	li	s1,0
   16230:	000fa703          	lw	a4,0(t6)
   16234:	0002a603          	lw	a2,0(t0) # 10f82 <memset+0x90>
   16238:	0291                	addi	t0,t0,4
   1623a:	00d777b3          	and	a5,a4,a3
   1623e:	027787bb          	mulw	a5,a5,t2
   16242:	0107571b          	srliw	a4,a4,0x10
   16246:	00d67933          	and	s2,a2,a3
   1624a:	0106561b          	srliw	a2,a2,0x10
   1624e:	0f91                	addi	t6,t6,4
   16250:	0277073b          	mulw	a4,a4,t2
   16254:	012787bb          	addw	a5,a5,s2
   16258:	9fa5                	addw	a5,a5,s1
   1625a:	0107d49b          	srliw	s1,a5,0x10
   1625e:	8ff5                	and	a5,a5,a3
   16260:	9f31                	addw	a4,a4,a2
   16262:	9f25                	addw	a4,a4,s1
   16264:	0107161b          	slliw	a2,a4,0x10
   16268:	8fd1                	or	a5,a5,a2
   1626a:	fef2ae23          	sw	a5,-4(t0)
   1626e:	0107549b          	srliw	s1,a4,0x10
   16272:	fabfefe3          	bltu	t6,a1,16230 <__multiply+0xa2>
   16276:	01e307b3          	add	a5,t1,t5
   1627a:	c384                	sw	s1,0(a5)
   1627c:	00082283          	lw	t0,0(a6)
   16280:	0102d29b          	srliw	t0,t0,0x10
   16284:	f80289e3          	beqz	t0,16216 <__multiply+0x88>
   16288:	00032603          	lw	a2,0(t1)
   1628c:	839a                	mv	t2,t1
   1628e:	8ff6                	mv	t6,t4
   16290:	84b2                	mv	s1,a2
   16292:	4701                	li	a4,0
   16294:	000fa783          	lw	a5,0(t6)
   16298:	0104d99b          	srliw	s3,s1,0x10
   1629c:	8e75                	and	a2,a2,a3
   1629e:	8ff5                	and	a5,a5,a3
   162a0:	025787bb          	mulw	a5,a5,t0
   162a4:	0043a483          	lw	s1,4(t2)
   162a8:	0391                	addi	t2,t2,4
   162aa:	0f91                	addi	t6,t6,4
   162ac:	00d4f933          	and	s2,s1,a3
   162b0:	013787bb          	addw	a5,a5,s3
   162b4:	9fb9                	addw	a5,a5,a4
   162b6:	0107971b          	slliw	a4,a5,0x10
   162ba:	8e59                	or	a2,a2,a4
   162bc:	fec3ae23          	sw	a2,-4(t2)
   162c0:	ffefd703          	lhu	a4,-2(t6)
   162c4:	0107d79b          	srliw	a5,a5,0x10
   162c8:	0257073b          	mulw	a4,a4,t0
   162cc:	0127073b          	addw	a4,a4,s2
   162d0:	9fb9                	addw	a5,a5,a4
   162d2:	0007861b          	sext.w	a2,a5
   162d6:	0107d71b          	srliw	a4,a5,0x10
   162da:	fabfede3          	bltu	t6,a1,16294 <__multiply+0x106>
   162de:	01e307b3          	add	a5,t1,t5
   162e2:	c390                	sw	a2,0(a5)
   162e4:	0811                	addi	a6,a6,4
   162e6:	0311                	addi	t1,t1,4
   162e8:	f3c86be3          	bltu	a6,t3,1621e <__multiply+0x90>
   162ec:	00804563          	bgtz	s0,162f6 <__multiply+0x168>
   162f0:	a039                	j	162fe <__multiply+0x170>
   162f2:	347d                	addiw	s0,s0,-1
   162f4:	c409                	beqz	s0,162fe <__multiply+0x170>
   162f6:	ffc8a783          	lw	a5,-4(a7)
   162fa:	18f1                	addi	a7,a7,-4
   162fc:	dbfd                	beqz	a5,162f2 <__multiply+0x164>
   162fe:	70a2                	ld	ra,40(sp)
   16300:	c940                	sw	s0,20(a0)
   16302:	7402                	ld	s0,32(sp)
   16304:	64e2                	ld	s1,24(sp)
   16306:	6942                	ld	s2,16(sp)
   16308:	69a2                	ld	s3,8(sp)
   1630a:	6a02                	ld	s4,0(sp)
   1630c:	6145                	addi	sp,sp,48
   1630e:	8082                	ret
   16310:	409587b3          	sub	a5,a1,s1
   16314:	179d                	addi	a5,a5,-25
   16316:	9bf1                	andi	a5,a5,-4
   16318:	00478f13          	addi	t5,a5,4
   1631c:	b5f5                	j	16208 <__multiply+0x7a>
   1631e:	66f5                	lui	a3,0x1d
   16320:	6575                	lui	a0,0x1d
   16322:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   16326:	4601                	li	a2,0
   16328:	15d00593          	li	a1,349
   1632c:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   16330:	680030ef          	jal	ra,199b0 <__assert_func>

0000000000016334 <__pow5mult>:
   16334:	7179                	addi	sp,sp,-48
   16336:	f022                	sd	s0,32(sp)
   16338:	e84a                	sd	s2,16(sp)
   1633a:	e44e                	sd	s3,8(sp)
   1633c:	f406                	sd	ra,40(sp)
   1633e:	ec26                	sd	s1,24(sp)
   16340:	00367793          	andi	a5,a2,3
   16344:	8432                	mv	s0,a2
   16346:	89aa                	mv	s3,a0
   16348:	892e                	mv	s2,a1
   1634a:	ebb5                	bnez	a5,163be <__pow5mult+0x8a>
   1634c:	8409                	srai	s0,s0,0x2
   1634e:	c421                	beqz	s0,16396 <__pow5mult+0x62>
   16350:	0709b483          	ld	s1,112(s3)
   16354:	c0c9                	beqz	s1,163d6 <__pow5mult+0xa2>
   16356:	00147793          	andi	a5,s0,1
   1635a:	eb89                	bnez	a5,1636c <__pow5mult+0x38>
   1635c:	8405                	srai	s0,s0,0x1
   1635e:	cc05                	beqz	s0,16396 <__pow5mult+0x62>
   16360:	6088                	ld	a0,0(s1)
   16362:	c131                	beqz	a0,163a6 <__pow5mult+0x72>
   16364:	84aa                	mv	s1,a0
   16366:	00147793          	andi	a5,s0,1
   1636a:	dbed                	beqz	a5,1635c <__pow5mult+0x28>
   1636c:	8626                	mv	a2,s1
   1636e:	85ca                	mv	a1,s2
   16370:	854e                	mv	a0,s3
   16372:	e1dff0ef          	jal	ra,1618e <__multiply>
   16376:	04090263          	beqz	s2,163ba <__pow5mult+0x86>
   1637a:	00892703          	lw	a4,8(s2)
   1637e:	0789b783          	ld	a5,120(s3)
   16382:	8405                	srai	s0,s0,0x1
   16384:	070e                	slli	a4,a4,0x3
   16386:	97ba                	add	a5,a5,a4
   16388:	6398                	ld	a4,0(a5)
   1638a:	00e93023          	sd	a4,0(s2)
   1638e:	0127b023          	sd	s2,0(a5)
   16392:	892a                	mv	s2,a0
   16394:	f471                	bnez	s0,16360 <__pow5mult+0x2c>
   16396:	70a2                	ld	ra,40(sp)
   16398:	7402                	ld	s0,32(sp)
   1639a:	64e2                	ld	s1,24(sp)
   1639c:	69a2                	ld	s3,8(sp)
   1639e:	854a                	mv	a0,s2
   163a0:	6942                	ld	s2,16(sp)
   163a2:	6145                	addi	sp,sp,48
   163a4:	8082                	ret
   163a6:	8626                	mv	a2,s1
   163a8:	85a6                	mv	a1,s1
   163aa:	854e                	mv	a0,s3
   163ac:	de3ff0ef          	jal	ra,1618e <__multiply>
   163b0:	e088                	sd	a0,0(s1)
   163b2:	00053023          	sd	zero,0(a0)
   163b6:	84aa                	mv	s1,a0
   163b8:	b77d                	j	16366 <__pow5mult+0x32>
   163ba:	892a                	mv	s2,a0
   163bc:	b745                	j	1635c <__pow5mult+0x28>
   163be:	37fd                	addiw	a5,a5,-1
   163c0:	6775                	lui	a4,0x1d
   163c2:	e5070713          	addi	a4,a4,-432 # 1ce50 <p05.0>
   163c6:	078a                	slli	a5,a5,0x2
   163c8:	97ba                	add	a5,a5,a4
   163ca:	4390                	lw	a2,0(a5)
   163cc:	4681                	li	a3,0
   163ce:	aa7ff0ef          	jal	ra,15e74 <__multadd>
   163d2:	892a                	mv	s2,a0
   163d4:	bfa5                	j	1634c <__pow5mult+0x18>
   163d6:	4585                	li	a1,1
   163d8:	854e                	mv	a0,s3
   163da:	a27ff0ef          	jal	ra,15e00 <_Balloc>
   163de:	84aa                	mv	s1,a0
   163e0:	c919                	beqz	a0,163f6 <__pow5mult+0xc2>
   163e2:	27100793          	li	a5,625
   163e6:	cd1c                	sw	a5,24(a0)
   163e8:	4785                	li	a5,1
   163ea:	c95c                	sw	a5,20(a0)
   163ec:	06a9b823          	sd	a0,112(s3)
   163f0:	00053023          	sd	zero,0(a0)
   163f4:	b78d                	j	16356 <__pow5mult+0x22>
   163f6:	66f5                	lui	a3,0x1d
   163f8:	6575                	lui	a0,0x1d
   163fa:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   163fe:	4601                	li	a2,0
   16400:	14000593          	li	a1,320
   16404:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   16408:	5a8030ef          	jal	ra,199b0 <__assert_func>

000000000001640c <__lshift>:
   1640c:	7139                	addi	sp,sp,-64
   1640e:	f04a                	sd	s2,32(sp)
   16410:	0145a903          	lw	s2,20(a1)
   16414:	45dc                	lw	a5,12(a1)
   16416:	e456                	sd	s5,8(sp)
   16418:	40565a9b          	sraiw	s5,a2,0x5
   1641c:	012a893b          	addw	s2,s5,s2
   16420:	f822                	sd	s0,48(sp)
   16422:	f426                	sd	s1,40(sp)
   16424:	ec4e                	sd	s3,24(sp)
   16426:	e852                	sd	s4,16(sp)
   16428:	e05a                	sd	s6,0(sp)
   1642a:	fc06                	sd	ra,56(sp)
   1642c:	0019049b          	addiw	s1,s2,1
   16430:	842e                	mv	s0,a1
   16432:	8a32                	mv	s4,a2
   16434:	458c                	lw	a1,8(a1)
   16436:	89aa                	mv	s3,a0
   16438:	40565b13          	srai	s6,a2,0x5
   1643c:	0097d763          	bge	a5,s1,1644a <__lshift+0x3e>
   16440:	0017979b          	slliw	a5,a5,0x1
   16444:	2585                	addiw	a1,a1,1
   16446:	fe97cde3          	blt	a5,s1,16440 <__lshift+0x34>
   1644a:	854e                	mv	a0,s3
   1644c:	9b5ff0ef          	jal	ra,15e00 <_Balloc>
   16450:	c969                	beqz	a0,16522 <__lshift+0x116>
   16452:	01850693          	addi	a3,a0,24
   16456:	03605563          	blez	s6,16480 <__lshift+0x74>
   1645a:	fffa871b          	addiw	a4,s5,-1
   1645e:	02071793          	slli	a5,a4,0x20
   16462:	01e7d713          	srli	a4,a5,0x1e
   16466:	0771                	addi	a4,a4,28
   16468:	972a                	add	a4,a4,a0
   1646a:	87b6                	mv	a5,a3
   1646c:	0791                	addi	a5,a5,4
   1646e:	fe07ae23          	sw	zero,-4(a5)
   16472:	fee79de3          	bne	a5,a4,1646c <__lshift+0x60>
   16476:	020a9793          	slli	a5,s5,0x20
   1647a:	01e7da93          	srli	s5,a5,0x1e
   1647e:	96d6                	add	a3,a3,s5
   16480:	01442883          	lw	a7,20(s0)
   16484:	01840793          	addi	a5,s0,24
   16488:	01fa7613          	andi	a2,s4,31
   1648c:	088a                	slli	a7,a7,0x2
   1648e:	98be                	add	a7,a7,a5
   16490:	ca35                	beqz	a2,16504 <__lshift+0xf8>
   16492:	02000313          	li	t1,32
   16496:	40c3033b          	subw	t1,t1,a2
   1649a:	85b6                	mv	a1,a3
   1649c:	4701                	li	a4,0
   1649e:	0007a803          	lw	a6,0(a5)
   164a2:	0591                	addi	a1,a1,4
   164a4:	0791                	addi	a5,a5,4
   164a6:	00c8183b          	sllw	a6,a6,a2
   164aa:	01076733          	or	a4,a4,a6
   164ae:	fee5ae23          	sw	a4,-4(a1)
   164b2:	ffc7a703          	lw	a4,-4(a5)
   164b6:	0067573b          	srlw	a4,a4,t1
   164ba:	ff17e2e3          	bltu	a5,a7,1649e <__lshift+0x92>
   164be:	01940793          	addi	a5,s0,25
   164c2:	4611                	li	a2,4
   164c4:	00f8e863          	bltu	a7,a5,164d4 <__lshift+0xc8>
   164c8:	408887b3          	sub	a5,a7,s0
   164cc:	179d                	addi	a5,a5,-25
   164ce:	9bf1                	andi	a5,a5,-4
   164d0:	00478613          	addi	a2,a5,4
   164d4:	96b2                	add	a3,a3,a2
   164d6:	c298                	sw	a4,0(a3)
   164d8:	c311                	beqz	a4,164dc <__lshift+0xd0>
   164da:	8926                	mv	s2,s1
   164dc:	4418                	lw	a4,8(s0)
   164de:	0789b783          	ld	a5,120(s3)
   164e2:	01252a23          	sw	s2,20(a0)
   164e6:	070e                	slli	a4,a4,0x3
   164e8:	97ba                	add	a5,a5,a4
   164ea:	6398                	ld	a4,0(a5)
   164ec:	70e2                	ld	ra,56(sp)
   164ee:	74a2                	ld	s1,40(sp)
   164f0:	e018                	sd	a4,0(s0)
   164f2:	e380                	sd	s0,0(a5)
   164f4:	7442                	ld	s0,48(sp)
   164f6:	7902                	ld	s2,32(sp)
   164f8:	69e2                	ld	s3,24(sp)
   164fa:	6a42                	ld	s4,16(sp)
   164fc:	6aa2                	ld	s5,8(sp)
   164fe:	6b02                	ld	s6,0(sp)
   16500:	6121                	addi	sp,sp,64
   16502:	8082                	ret
   16504:	4398                	lw	a4,0(a5)
   16506:	0791                	addi	a5,a5,4
   16508:	0691                	addi	a3,a3,4
   1650a:	fee6ae23          	sw	a4,-4(a3)
   1650e:	fd17f7e3          	bgeu	a5,a7,164dc <__lshift+0xd0>
   16512:	4398                	lw	a4,0(a5)
   16514:	0791                	addi	a5,a5,4
   16516:	0691                	addi	a3,a3,4
   16518:	fee6ae23          	sw	a4,-4(a3)
   1651c:	ff17e4e3          	bltu	a5,a7,16504 <__lshift+0xf8>
   16520:	bf75                	j	164dc <__lshift+0xd0>
   16522:	66f5                	lui	a3,0x1d
   16524:	6575                	lui	a0,0x1d
   16526:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   1652a:	4601                	li	a2,0
   1652c:	1d900593          	li	a1,473
   16530:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   16534:	47c030ef          	jal	ra,199b0 <__assert_func>

0000000000016538 <__mcmp>:
   16538:	49dc                	lw	a5,20(a1)
   1653a:	882a                	mv	a6,a0
   1653c:	4948                	lw	a0,20(a0)
   1653e:	9d1d                	subw	a0,a0,a5
   16540:	e50d                	bnez	a0,1656a <__mcmp+0x32>
   16542:	078a                	slli	a5,a5,0x2
   16544:	0861                	addi	a6,a6,24
   16546:	05e1                	addi	a1,a1,24
   16548:	00f80733          	add	a4,a6,a5
   1654c:	97ae                	add	a5,a5,a1
   1654e:	a019                	j	16554 <__mcmp+0x1c>
   16550:	00e87d63          	bgeu	a6,a4,1656a <__mcmp+0x32>
   16554:	ffc72603          	lw	a2,-4(a4)
   16558:	ffc7a683          	lw	a3,-4(a5)
   1655c:	1771                	addi	a4,a4,-4
   1655e:	17f1                	addi	a5,a5,-4
   16560:	fed608e3          	beq	a2,a3,16550 <__mcmp+0x18>
   16564:	557d                	li	a0,-1
   16566:	00d67363          	bgeu	a2,a3,1656c <__mcmp+0x34>
   1656a:	8082                	ret
   1656c:	4505                	li	a0,1
   1656e:	8082                	ret

0000000000016570 <__mdiff>:
   16570:	1101                	addi	sp,sp,-32
   16572:	4a5c                	lw	a5,20(a2)
   16574:	e04a                	sd	s2,0(sp)
   16576:	0145a903          	lw	s2,20(a1)
   1657a:	e822                	sd	s0,16(sp)
   1657c:	e426                	sd	s1,8(sp)
   1657e:	ec06                	sd	ra,24(sp)
   16580:	40f9093b          	subw	s2,s2,a5
   16584:	84ae                	mv	s1,a1
   16586:	8432                	mv	s0,a2
   16588:	14091163          	bnez	s2,166ca <__mdiff+0x15a>
   1658c:	00279693          	slli	a3,a5,0x2
   16590:	05e1                	addi	a1,a1,24
   16592:	01860713          	addi	a4,a2,24
   16596:	00d587b3          	add	a5,a1,a3
   1659a:	9736                	add	a4,a4,a3
   1659c:	a019                	j	165a2 <__mdiff+0x32>
   1659e:	12f5fa63          	bgeu	a1,a5,166d2 <__mdiff+0x162>
   165a2:	ffc7a603          	lw	a2,-4(a5)
   165a6:	ffc72683          	lw	a3,-4(a4)
   165aa:	17f1                	addi	a5,a5,-4
   165ac:	1771                	addi	a4,a4,-4
   165ae:	fed608e3          	beq	a2,a3,1659e <__mdiff+0x2e>
   165b2:	10d66763          	bltu	a2,a3,166c0 <__mdiff+0x150>
   165b6:	448c                	lw	a1,8(s1)
   165b8:	849ff0ef          	jal	ra,15e00 <_Balloc>
   165bc:	12050963          	beqz	a0,166ee <__mdiff+0x17e>
   165c0:	0144a303          	lw	t1,20(s1)
   165c4:	01442f83          	lw	t6,20(s0)
   165c8:	04e1                	addi	s1,s1,24
   165ca:	00231e13          	slli	t3,t1,0x2
   165ce:	01840813          	addi	a6,s0,24
   165d2:	0f8a                	slli	t6,t6,0x2
   165d4:	01850593          	addi	a1,a0,24
   165d8:	6ec1                	lui	t4,0x10
   165da:	01252823          	sw	s2,16(a0)
   165de:	9e26                	add	t3,t3,s1
   165e0:	9fc2                	add	t6,t6,a6
   165e2:	862e                	mv	a2,a1
   165e4:	8f26                	mv	t5,s1
   165e6:	4881                	li	a7,0
   165e8:	1efd                	addi	t4,t4,-1 # ffff <exit-0xe9>
   165ea:	000f2703          	lw	a4,0(t5)
   165ee:	00082683          	lw	a3,0(a6)
   165f2:	0611                	addi	a2,a2,4
   165f4:	01d777b3          	and	a5,a4,t4
   165f8:	011787bb          	addw	a5,a5,a7
   165fc:	01d6f8b3          	and	a7,a3,t4
   16600:	411787bb          	subw	a5,a5,a7
   16604:	0106d69b          	srliw	a3,a3,0x10
   16608:	0107571b          	srliw	a4,a4,0x10
   1660c:	9f15                	subw	a4,a4,a3
   1660e:	4107d69b          	sraiw	a3,a5,0x10
   16612:	9f35                	addw	a4,a4,a3
   16614:	0107169b          	slliw	a3,a4,0x10
   16618:	01d7f7b3          	and	a5,a5,t4
   1661c:	8fd5                	or	a5,a5,a3
   1661e:	2781                	sext.w	a5,a5
   16620:	0811                	addi	a6,a6,4
   16622:	fef62e23          	sw	a5,-4(a2)
   16626:	0f11                	addi	t5,t5,4
   16628:	4107589b          	sraiw	a7,a4,0x10
   1662c:	fbf86fe3          	bltu	a6,t6,165ea <__mdiff+0x7a>
   16630:	408f86b3          	sub	a3,t6,s0
   16634:	169d                	addi	a3,a3,-25
   16636:	0465                	addi	s0,s0,25
   16638:	8289                	srli	a3,a3,0x2
   1663a:	4701                	li	a4,0
   1663c:	008fe463          	bltu	t6,s0,16644 <__mdiff+0xd4>
   16640:	00269713          	slli	a4,a3,0x2
   16644:	972e                	add	a4,a4,a1
   16646:	4611                	li	a2,4
   16648:	008fe563          	bltu	t6,s0,16652 <__mdiff+0xe2>
   1664c:	0685                	addi	a3,a3,1
   1664e:	00269613          	slli	a2,a3,0x2
   16652:	94b2                	add	s1,s1,a2
   16654:	00c58eb3          	add	t4,a1,a2
   16658:	05c4f663          	bgeu	s1,t3,166a4 <__mdiff+0x134>
   1665c:	65c1                	lui	a1,0x10
   1665e:	8676                	mv	a2,t4
   16660:	86a6                	mv	a3,s1
   16662:	15fd                	addi	a1,a1,-1 # ffff <exit-0xe9>
   16664:	4298                	lw	a4,0(a3)
   16666:	0611                	addi	a2,a2,4
   16668:	0691                	addi	a3,a3,4
   1666a:	00b777b3          	and	a5,a4,a1
   1666e:	011787bb          	addw	a5,a5,a7
   16672:	4107d81b          	sraiw	a6,a5,0x10
   16676:	0107571b          	srliw	a4,a4,0x10
   1667a:	0107073b          	addw	a4,a4,a6
   1667e:	0107181b          	slliw	a6,a4,0x10
   16682:	8fed                	and	a5,a5,a1
   16684:	0107e7b3          	or	a5,a5,a6
   16688:	2781                	sext.w	a5,a5
   1668a:	fef62e23          	sw	a5,-4(a2)
   1668e:	4107589b          	sraiw	a7,a4,0x10
   16692:	fdc6e9e3          	bltu	a3,t3,16664 <__mdiff+0xf4>
   16696:	1e7d                	addi	t3,t3,-1
   16698:	409e0e33          	sub	t3,t3,s1
   1669c:	ffce7e13          	andi	t3,t3,-4
   166a0:	01ce8733          	add	a4,t4,t3
   166a4:	e791                	bnez	a5,166b0 <__mdiff+0x140>
   166a6:	ffc72783          	lw	a5,-4(a4)
   166aa:	337d                	addiw	t1,t1,-1
   166ac:	1771                	addi	a4,a4,-4
   166ae:	dfe5                	beqz	a5,166a6 <__mdiff+0x136>
   166b0:	60e2                	ld	ra,24(sp)
   166b2:	6442                	ld	s0,16(sp)
   166b4:	00652a23          	sw	t1,20(a0)
   166b8:	64a2                	ld	s1,8(sp)
   166ba:	6902                	ld	s2,0(sp)
   166bc:	6105                	addi	sp,sp,32
   166be:	8082                	ret
   166c0:	87a6                	mv	a5,s1
   166c2:	4905                	li	s2,1
   166c4:	84a2                	mv	s1,s0
   166c6:	843e                	mv	s0,a5
   166c8:	b5fd                	j	165b6 <__mdiff+0x46>
   166ca:	fe094be3          	bltz	s2,166c0 <__mdiff+0x150>
   166ce:	4901                	li	s2,0
   166d0:	b5dd                	j	165b6 <__mdiff+0x46>
   166d2:	4581                	li	a1,0
   166d4:	f2cff0ef          	jal	ra,15e00 <_Balloc>
   166d8:	c515                	beqz	a0,16704 <__mdiff+0x194>
   166da:	60e2                	ld	ra,24(sp)
   166dc:	6442                	ld	s0,16(sp)
   166de:	4785                	li	a5,1
   166e0:	c95c                	sw	a5,20(a0)
   166e2:	00052c23          	sw	zero,24(a0)
   166e6:	64a2                	ld	s1,8(sp)
   166e8:	6902                	ld	s2,0(sp)
   166ea:	6105                	addi	sp,sp,32
   166ec:	8082                	ret
   166ee:	66f5                	lui	a3,0x1d
   166f0:	6575                	lui	a0,0x1d
   166f2:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   166f6:	4601                	li	a2,0
   166f8:	24000593          	li	a1,576
   166fc:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   16700:	2b0030ef          	jal	ra,199b0 <__assert_func>
   16704:	66f5                	lui	a3,0x1d
   16706:	6575                	lui	a0,0x1d
   16708:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   1670c:	4601                	li	a2,0
   1670e:	23200593          	li	a1,562
   16712:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   16716:	29a030ef          	jal	ra,199b0 <__assert_func>

000000000001671a <__ulp>:
   1671a:	e20507d3          	fmv.x.d	a5,fa0
   1671e:	7ff00737          	lui	a4,0x7ff00
   16722:	4681                	li	a3,0
   16724:	9381                	srli	a5,a5,0x20
   16726:	8ff9                	and	a5,a5,a4
   16728:	fcc00737          	lui	a4,0xfcc00
   1672c:	9fb9                	addw	a5,a5,a4
   1672e:	00f05963          	blez	a5,16740 <__ulp+0x26>
   16732:	1682                	slli	a3,a3,0x20
   16734:	9281                	srli	a3,a3,0x20
   16736:	1782                	slli	a5,a5,0x20
   16738:	8fd5                	or	a5,a5,a3
   1673a:	f2078553          	fmv.d.x	fa0,a5
   1673e:	8082                	ret
   16740:	40f0073b          	negw	a4,a5
   16744:	4147569b          	sraiw	a3,a4,0x14
   16748:	47cd                	li	a5,19
   1674a:	00d7ce63          	blt	a5,a3,16766 <__ulp+0x4c>
   1674e:	000807b7          	lui	a5,0x80
   16752:	40d7d7bb          	sraw	a5,a5,a3
   16756:	4681                	li	a3,0
   16758:	1682                	slli	a3,a3,0x20
   1675a:	9281                	srli	a3,a3,0x20
   1675c:	1782                	slli	a5,a5,0x20
   1675e:	8fd5                	or	a5,a5,a3
   16760:	f2078553          	fmv.d.x	fa0,a5
   16764:	8082                	ret
   16766:	fec6871b          	addiw	a4,a3,-20
   1676a:	47f9                	li	a5,30
   1676c:	4685                	li	a3,1
   1676e:	00e7c663          	blt	a5,a4,1677a <__ulp+0x60>
   16772:	800006b7          	lui	a3,0x80000
   16776:	00e6d6bb          	srlw	a3,a3,a4
   1677a:	4781                	li	a5,0
   1677c:	1682                	slli	a3,a3,0x20
   1677e:	9281                	srli	a3,a3,0x20
   16780:	1782                	slli	a5,a5,0x20
   16782:	8fd5                	or	a5,a5,a3
   16784:	f2078553          	fmv.d.x	fa0,a5
   16788:	8082                	ret

000000000001678a <__b2d>:
   1678a:	7179                	addi	sp,sp,-48
   1678c:	ec26                	sd	s1,24(sp)
   1678e:	4944                	lw	s1,20(a0)
   16790:	f022                	sd	s0,32(sp)
   16792:	01850413          	addi	s0,a0,24
   16796:	048a                	slli	s1,s1,0x2
   16798:	94a2                	add	s1,s1,s0
   1679a:	e84a                	sd	s2,16(sp)
   1679c:	ffc4a903          	lw	s2,-4(s1)
   167a0:	e44e                	sd	s3,8(sp)
   167a2:	e052                	sd	s4,0(sp)
   167a4:	854a                	mv	a0,s2
   167a6:	89ae                	mv	s3,a1
   167a8:	f406                	sd	ra,40(sp)
   167aa:	897ff0ef          	jal	ra,16040 <__hi0bits>
   167ae:	02000793          	li	a5,32
   167b2:	40a7873b          	subw	a4,a5,a0
   167b6:	00e9a023          	sw	a4,0(s3)
   167ba:	4729                	li	a4,10
   167bc:	ffc48a13          	addi	s4,s1,-4
   167c0:	06a75d63          	bge	a4,a0,1683a <__b2d+0xb0>
   167c4:	ff55061b          	addiw	a2,a0,-11
   167c8:	05447263          	bgeu	s0,s4,1680c <__b2d+0x82>
   167cc:	ff84a703          	lw	a4,-8(s1)
   167d0:	c221                	beqz	a2,16810 <__b2d+0x86>
   167d2:	40c786bb          	subw	a3,a5,a2
   167d6:	00d757bb          	srlw	a5,a4,a3
   167da:	00c9193b          	sllw	s2,s2,a2
   167de:	00f96933          	or	s2,s2,a5
   167e2:	3ff007b7          	lui	a5,0x3ff00
   167e6:	00f96933          	or	s2,s2,a5
   167ea:	00c7163b          	sllw	a2,a4,a2
   167ee:	ff848593          	addi	a1,s1,-8
   167f2:	02091793          	slli	a5,s2,0x20
   167f6:	0006071b          	sext.w	a4,a2
   167fa:	02b47163          	bgeu	s0,a1,1681c <__b2d+0x92>
   167fe:	ff44a703          	lw	a4,-12(s1)
   16802:	00d7573b          	srlw	a4,a4,a3
   16806:	8f51                	or	a4,a4,a2
   16808:	2701                	sext.w	a4,a4
   1680a:	a809                	j	1681c <__b2d+0x92>
   1680c:	4701                	li	a4,0
   1680e:	ee21                	bnez	a2,16866 <__b2d+0xdc>
   16810:	3ff007b7          	lui	a5,0x3ff00
   16814:	00f96933          	or	s2,s2,a5
   16818:	02091793          	slli	a5,s2,0x20
   1681c:	70a2                	ld	ra,40(sp)
   1681e:	7402                	ld	s0,32(sp)
   16820:	9381                	srli	a5,a5,0x20
   16822:	1702                	slli	a4,a4,0x20
   16824:	9301                	srli	a4,a4,0x20
   16826:	1782                	slli	a5,a5,0x20
   16828:	8fd9                	or	a5,a5,a4
   1682a:	64e2                	ld	s1,24(sp)
   1682c:	6942                	ld	s2,16(sp)
   1682e:	69a2                	ld	s3,8(sp)
   16830:	6a02                	ld	s4,0(sp)
   16832:	f2078553          	fmv.d.x	fa0,a5
   16836:	6145                	addi	sp,sp,48
   16838:	8082                	ret
   1683a:	46ad                	li	a3,11
   1683c:	9e89                	subw	a3,a3,a0
   1683e:	3ff00737          	lui	a4,0x3ff00
   16842:	00d957bb          	srlw	a5,s2,a3
   16846:	8fd9                	or	a5,a5,a4
   16848:	1782                	slli	a5,a5,0x20
   1684a:	4701                	li	a4,0
   1684c:	01447663          	bgeu	s0,s4,16858 <__b2d+0xce>
   16850:	ff84a703          	lw	a4,-8(s1)
   16854:	00d7573b          	srlw	a4,a4,a3
   16858:	2555                	addiw	a0,a0,21
   1685a:	00a9193b          	sllw	s2,s2,a0
   1685e:	01276733          	or	a4,a4,s2
   16862:	2701                	sext.w	a4,a4
   16864:	bf65                	j	1681c <__b2d+0x92>
   16866:	3ff007b7          	lui	a5,0x3ff00
   1686a:	00c9193b          	sllw	s2,s2,a2
   1686e:	00f96933          	or	s2,s2,a5
   16872:	02091793          	slli	a5,s2,0x20
   16876:	4701                	li	a4,0
   16878:	b755                	j	1681c <__b2d+0x92>

000000000001687a <__d2b>:
   1687a:	7139                	addi	sp,sp,-64
   1687c:	e852                	sd	s4,16(sp)
   1687e:	8a2e                	mv	s4,a1
   16880:	4585                	li	a1,1
   16882:	f822                	sd	s0,48(sp)
   16884:	f04a                	sd	s2,32(sp)
   16886:	fc06                	sd	ra,56(sp)
   16888:	f426                	sd	s1,40(sp)
   1688a:	ec4e                	sd	s3,24(sp)
   1688c:	e2050453          	fmv.x.d	s0,fa0
   16890:	8932                	mv	s2,a2
   16892:	d6eff0ef          	jal	ra,15e00 <_Balloc>
   16896:	cd5d                	beqz	a0,16954 <__d2b+0xda>
   16898:	42045793          	srai	a5,s0,0x20
   1689c:	0147d99b          	srliw	s3,a5,0x14
   168a0:	7ff9f993          	andi	s3,s3,2047
   168a4:	17b2                	slli	a5,a5,0x2c
   168a6:	84aa                	mv	s1,a0
   168a8:	93b1                	srli	a5,a5,0x2c
   168aa:	00098563          	beqz	s3,168b4 <__d2b+0x3a>
   168ae:	00100737          	lui	a4,0x100
   168b2:	8fd9                	or	a5,a5,a4
   168b4:	c63e                	sw	a5,12(sp)
   168b6:	2401                	sext.w	s0,s0
   168b8:	e029                	bnez	s0,168fa <__d2b+0x80>
   168ba:	0068                	addi	a0,sp,12
   168bc:	fd2ff0ef          	jal	ra,1608e <__lo0bits>
   168c0:	47b2                	lw	a5,12(sp)
   168c2:	4405                	li	s0,1
   168c4:	c8c0                	sw	s0,20(s1)
   168c6:	cc9c                	sw	a5,24(s1)
   168c8:	0205051b          	addiw	a0,a0,32
   168cc:	06098263          	beqz	s3,16930 <__d2b+0xb6>
   168d0:	bcd9899b          	addiw	s3,s3,-1075
   168d4:	00a989bb          	addw	s3,s3,a0
   168d8:	03500413          	li	s0,53
   168dc:	013a2023          	sw	s3,0(s4)
   168e0:	40a4053b          	subw	a0,s0,a0
   168e4:	70e2                	ld	ra,56(sp)
   168e6:	7442                	ld	s0,48(sp)
   168e8:	00a92023          	sw	a0,0(s2)
   168ec:	69e2                	ld	s3,24(sp)
   168ee:	7902                	ld	s2,32(sp)
   168f0:	6a42                	ld	s4,16(sp)
   168f2:	8526                	mv	a0,s1
   168f4:	74a2                	ld	s1,40(sp)
   168f6:	6121                	addi	sp,sp,64
   168f8:	8082                	ret
   168fa:	0028                	addi	a0,sp,8
   168fc:	c422                	sw	s0,8(sp)
   168fe:	f90ff0ef          	jal	ra,1608e <__lo0bits>
   16902:	47b2                	lw	a5,12(sp)
   16904:	c529                	beqz	a0,1694e <__d2b+0xd4>
   16906:	46a2                	lw	a3,8(sp)
   16908:	02000713          	li	a4,32
   1690c:	9f09                	subw	a4,a4,a0
   1690e:	00e7973b          	sllw	a4,a5,a4
   16912:	00a7d63b          	srlw	a2,a5,a0
   16916:	00e6e7b3          	or	a5,a3,a4
   1691a:	cc9c                	sw	a5,24(s1)
   1691c:	c632                	sw	a2,12(sp)
   1691e:	0006079b          	sext.w	a5,a2
   16922:	00f03433          	snez	s0,a5
   16926:	0405                	addi	s0,s0,1
   16928:	ccdc                	sw	a5,28(s1)
   1692a:	c8c0                	sw	s0,20(s1)
   1692c:	fa0992e3          	bnez	s3,168d0 <__d2b+0x56>
   16930:	bce5051b          	addiw	a0,a0,-1074
   16934:	00241793          	slli	a5,s0,0x2
   16938:	00aa2023          	sw	a0,0(s4)
   1693c:	97a6                	add	a5,a5,s1
   1693e:	4bc8                	lw	a0,20(a5)
   16940:	0054141b          	slliw	s0,s0,0x5
   16944:	efcff0ef          	jal	ra,16040 <__hi0bits>
   16948:	40a4053b          	subw	a0,s0,a0
   1694c:	bf61                	j	168e4 <__d2b+0x6a>
   1694e:	4722                	lw	a4,8(sp)
   16950:	cc98                	sw	a4,24(s1)
   16952:	bfc1                	j	16922 <__d2b+0xa8>
   16954:	66f5                	lui	a3,0x1d
   16956:	6575                	lui	a0,0x1d
   16958:	9f068693          	addi	a3,a3,-1552 # 1c9f0 <zeroes.0+0x40>
   1695c:	4601                	li	a2,0
   1695e:	30a00593          	li	a1,778
   16962:	cd850513          	addi	a0,a0,-808 # 1ccd8 <ezero+0x18>
   16966:	04a030ef          	jal	ra,199b0 <__assert_func>

000000000001696a <__ratio>:
   1696a:	7179                	addi	sp,sp,-48
   1696c:	ec26                	sd	s1,24(sp)
   1696e:	84ae                	mv	s1,a1
   16970:	002c                	addi	a1,sp,8
   16972:	f406                	sd	ra,40(sp)
   16974:	f022                	sd	s0,32(sp)
   16976:	e84a                	sd	s2,16(sp)
   16978:	892a                	mv	s2,a0
   1697a:	e11ff0ef          	jal	ra,1678a <__b2d>
   1697e:	006c                	addi	a1,sp,12
   16980:	8526                	mv	a0,s1
   16982:	e2050453          	fmv.x.d	s0,fa0
   16986:	e05ff0ef          	jal	ra,1678a <__b2d>
   1698a:	01492783          	lw	a5,20(s2)
   1698e:	48d0                	lw	a2,20(s1)
   16990:	46b2                	lw	a3,12(sp)
   16992:	4722                	lw	a4,8(sp)
   16994:	9f91                	subw	a5,a5,a2
   16996:	0057979b          	slliw	a5,a5,0x5
   1699a:	9f15                	subw	a4,a4,a3
   1699c:	00e786bb          	addw	a3,a5,a4
   169a0:	87b6                	mv	a5,a3
   169a2:	e2050753          	fmv.x.d	a4,fa0
   169a6:	02d05963          	blez	a3,169d8 <__ratio+0x6e>
   169aa:	02045693          	srli	a3,s0,0x20
   169ae:	0147979b          	slliw	a5,a5,0x14
   169b2:	9fb5                	addw	a5,a5,a3
   169b4:	56fd                	li	a3,-1
   169b6:	9281                	srli	a3,a3,0x20
   169b8:	1782                	slli	a5,a5,0x20
   169ba:	8ee1                	and	a3,a3,s0
   169bc:	00f6e433          	or	s0,a3,a5
   169c0:	f20407d3          	fmv.d.x	fa5,s0
   169c4:	70a2                	ld	ra,40(sp)
   169c6:	7402                	ld	s0,32(sp)
   169c8:	f2070753          	fmv.d.x	fa4,a4
   169cc:	64e2                	ld	s1,24(sp)
   169ce:	6942                	ld	s2,16(sp)
   169d0:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   169d4:	6145                	addi	sp,sp,48
   169d6:	8082                	ret
   169d8:	02075693          	srli	a3,a4,0x20
   169dc:	0147979b          	slliw	a5,a5,0x14
   169e0:	40f687bb          	subw	a5,a3,a5
   169e4:	56fd                	li	a3,-1
   169e6:	9281                	srli	a3,a3,0x20
   169e8:	1782                	slli	a5,a5,0x20
   169ea:	8f75                	and	a4,a4,a3
   169ec:	8f5d                	or	a4,a4,a5
   169ee:	bfc9                	j	169c0 <__ratio+0x56>

00000000000169f0 <_mprec_log10>:
   169f0:	47dd                	li	a5,23
   169f2:	00a7db63          	bge	a5,a0,16a08 <_mprec_log10+0x18>
   169f6:	6101b507          	fld	fa0,1552(gp) # 1f730 <mask+0x8>
   169fa:	6181b787          	fld	fa5,1560(gp) # 1f738 <mask+0x10>
   169fe:	357d                	addiw	a0,a0,-1
   16a00:	12f57553          	fmul.d	fa0,fa0,fa5
   16a04:	fd6d                	bnez	a0,169fe <_mprec_log10+0xe>
   16a06:	8082                	ret
   16a08:	67f5                	lui	a5,0x1d
   16a0a:	050e                	slli	a0,a0,0x3
   16a0c:	d6078793          	addi	a5,a5,-672 # 1cd60 <__mprec_tens>
   16a10:	97aa                	add	a5,a5,a0
   16a12:	2388                	fld	fa0,0(a5)
   16a14:	8082                	ret

0000000000016a16 <__copybits>:
   16a16:	4a54                	lw	a3,20(a2)
   16a18:	35fd                	addiw	a1,a1,-1
   16a1a:	4055d59b          	sraiw	a1,a1,0x5
   16a1e:	2585                	addiw	a1,a1,1
   16a20:	01860793          	addi	a5,a2,24
   16a24:	068a                	slli	a3,a3,0x2
   16a26:	058a                	slli	a1,a1,0x2
   16a28:	96be                	add	a3,a3,a5
   16a2a:	95aa                	add	a1,a1,a0
   16a2c:	02d7f163          	bgeu	a5,a3,16a4e <__copybits+0x38>
   16a30:	872a                	mv	a4,a0
   16a32:	0007a803          	lw	a6,0(a5)
   16a36:	0791                	addi	a5,a5,4
   16a38:	0711                	addi	a4,a4,4 # 100004 <__BSS_END__+0xe06e4>
   16a3a:	ff072e23          	sw	a6,-4(a4)
   16a3e:	fed7eae3          	bltu	a5,a3,16a32 <__copybits+0x1c>
   16a42:	40c687b3          	sub	a5,a3,a2
   16a46:	179d                	addi	a5,a5,-25
   16a48:	9bf1                	andi	a5,a5,-4
   16a4a:	0791                	addi	a5,a5,4
   16a4c:	953e                	add	a0,a0,a5
   16a4e:	00b57763          	bgeu	a0,a1,16a5c <__copybits+0x46>
   16a52:	0511                	addi	a0,a0,4
   16a54:	fe052e23          	sw	zero,-4(a0)
   16a58:	feb56de3          	bltu	a0,a1,16a52 <__copybits+0x3c>
   16a5c:	8082                	ret

0000000000016a5e <__any_on>:
   16a5e:	4958                	lw	a4,20(a0)
   16a60:	4055d613          	srai	a2,a1,0x5
   16a64:	01850693          	addi	a3,a0,24
   16a68:	00c75d63          	bge	a4,a2,16a82 <__any_on+0x24>
   16a6c:	070a                	slli	a4,a4,0x2
   16a6e:	00e687b3          	add	a5,a3,a4
   16a72:	02f6f863          	bgeu	a3,a5,16aa2 <__any_on+0x44>
   16a76:	ffc7a703          	lw	a4,-4(a5)
   16a7a:	17f1                	addi	a5,a5,-4
   16a7c:	db7d                	beqz	a4,16a72 <__any_on+0x14>
   16a7e:	4505                	li	a0,1
   16a80:	8082                	ret
   16a82:	00261793          	slli	a5,a2,0x2
   16a86:	97b6                	add	a5,a5,a3
   16a88:	fee655e3          	bge	a2,a4,16a72 <__any_on+0x14>
   16a8c:	89fd                	andi	a1,a1,31
   16a8e:	d1f5                	beqz	a1,16a72 <__any_on+0x14>
   16a90:	4390                	lw	a2,0(a5)
   16a92:	4505                	li	a0,1
   16a94:	00b6573b          	srlw	a4,a2,a1
   16a98:	00b7173b          	sllw	a4,a4,a1
   16a9c:	fcc70be3          	beq	a4,a2,16a72 <__any_on+0x14>
   16aa0:	8082                	ret
   16aa2:	4501                	li	a0,0
   16aa4:	8082                	ret

0000000000016aa6 <_read_r>:
   16aa6:	1101                	addi	sp,sp,-32
   16aa8:	872e                	mv	a4,a1
   16aaa:	e822                	sd	s0,16(sp)
   16aac:	e426                	sd	s1,8(sp)
   16aae:	85b2                	mv	a1,a2
   16ab0:	842a                	mv	s0,a0
   16ab2:	8636                	mv	a2,a3
   16ab4:	853a                	mv	a0,a4
   16ab6:	ec06                	sd	ra,24(sp)
   16ab8:	6801a423          	sw	zero,1672(gp) # 1f7a8 <errno>
   16abc:	608040ef          	jal	ra,1b0c4 <_read>
   16ac0:	57fd                	li	a5,-1
   16ac2:	00f50763          	beq	a0,a5,16ad0 <_read_r+0x2a>
   16ac6:	60e2                	ld	ra,24(sp)
   16ac8:	6442                	ld	s0,16(sp)
   16aca:	64a2                	ld	s1,8(sp)
   16acc:	6105                	addi	sp,sp,32
   16ace:	8082                	ret
   16ad0:	6881a783          	lw	a5,1672(gp) # 1f7a8 <errno>
   16ad4:	dbed                	beqz	a5,16ac6 <_read_r+0x20>
   16ad6:	60e2                	ld	ra,24(sp)
   16ad8:	c01c                	sw	a5,0(s0)
   16ada:	6442                	ld	s0,16(sp)
   16adc:	64a2                	ld	s1,8(sp)
   16ade:	6105                	addi	sp,sp,32
   16ae0:	8082                	ret

0000000000016ae2 <_realloc_r>:
   16ae2:	715d                	addi	sp,sp,-80
   16ae4:	f84a                	sd	s2,48(sp)
   16ae6:	e486                	sd	ra,72(sp)
   16ae8:	e0a2                	sd	s0,64(sp)
   16aea:	fc26                	sd	s1,56(sp)
   16aec:	f44e                	sd	s3,40(sp)
   16aee:	f052                	sd	s4,32(sp)
   16af0:	ec56                	sd	s5,24(sp)
   16af2:	e85a                	sd	s6,16(sp)
   16af4:	e45e                	sd	s7,8(sp)
   16af6:	e062                	sd	s8,0(sp)
   16af8:	8932                	mv	s2,a2
   16afa:	14058863          	beqz	a1,16c4a <_realloc_r+0x168>
   16afe:	842e                	mv	s0,a1
   16b00:	8a2a                	mv	s4,a0
   16b02:	c9afa0ef          	jal	ra,10f9c <__malloc_lock>
   16b06:	ff843783          	ld	a5,-8(s0)
   16b0a:	01790493          	addi	s1,s2,23
   16b0e:	02e00713          	li	a4,46
   16b12:	ff040a93          	addi	s5,s0,-16
   16b16:	ffc7f993          	andi	s3,a5,-4
   16b1a:	0a977d63          	bgeu	a4,s1,16bd4 <_realloc_r+0xf2>
   16b1e:	80000737          	lui	a4,0x80000
   16b22:	98c1                	andi	s1,s1,-16
   16b24:	fff74713          	not	a4,a4
   16b28:	0a976a63          	bltu	a4,s1,16bdc <_realloc_r+0xfa>
   16b2c:	0b24e863          	bltu	s1,s2,16bdc <_realloc_r+0xfa>
   16b30:	0c99dc63          	bge	s3,s1,16c08 <_realloc_r+0x126>
   16b34:	0001f737          	lui	a4,0x1f
   16b38:	d6070c13          	addi	s8,a4,-672 # 1ed60 <__malloc_av_>
   16b3c:	010c3603          	ld	a2,16(s8)
   16b40:	013a86b3          	add	a3,s5,s3
   16b44:	6698                	ld	a4,8(a3)
   16b46:	14d60163          	beq	a2,a3,16c88 <_realloc_r+0x1a6>
   16b4a:	ffe77613          	andi	a2,a4,-2
   16b4e:	9636                	add	a2,a2,a3
   16b50:	6610                	ld	a2,8(a2)
   16b52:	8a05                	andi	a2,a2,1
   16b54:	e26d                	bnez	a2,16c36 <_realloc_r+0x154>
   16b56:	9b71                	andi	a4,a4,-4
   16b58:	00e98633          	add	a2,s3,a4
   16b5c:	0a965163          	bge	a2,s1,16bfe <_realloc_r+0x11c>
   16b60:	8b85                	andi	a5,a5,1
   16b62:	e38d                	bnez	a5,16b84 <_realloc_r+0xa2>
   16b64:	ff043b83          	ld	s7,-16(s0)
   16b68:	417a8bb3          	sub	s7,s5,s7
   16b6c:	008bb783          	ld	a5,8(s7)
   16b70:	9bf1                	andi	a5,a5,-4
   16b72:	973e                	add	a4,a4,a5
   16b74:	01370b33          	add	s6,a4,s3
   16b78:	269b5463          	bge	s6,s1,16de0 <_realloc_r+0x2fe>
   16b7c:	00f98b33          	add	s6,s3,a5
   16b80:	1e9b5963          	bge	s6,s1,16d72 <_realloc_r+0x290>
   16b84:	85ca                	mv	a1,s2
   16b86:	8552                	mv	a0,s4
   16b88:	bddf90ef          	jal	ra,10764 <_malloc_r>
   16b8c:	892a                	mv	s2,a0
   16b8e:	cd1d                	beqz	a0,16bcc <_realloc_r+0xea>
   16b90:	ff843783          	ld	a5,-8(s0)
   16b94:	ff050713          	addi	a4,a0,-16
   16b98:	9bf9                	andi	a5,a5,-2
   16b9a:	97d6                	add	a5,a5,s5
   16b9c:	1ce78663          	beq	a5,a4,16d68 <_realloc_r+0x286>
   16ba0:	ff898613          	addi	a2,s3,-8
   16ba4:	04800793          	li	a5,72
   16ba8:	22c7e863          	bltu	a5,a2,16dd8 <_realloc_r+0x2f6>
   16bac:	02700713          	li	a4,39
   16bb0:	16c76b63          	bltu	a4,a2,16d26 <_realloc_r+0x244>
   16bb4:	87aa                	mv	a5,a0
   16bb6:	8722                	mv	a4,s0
   16bb8:	6314                	ld	a3,0(a4)
   16bba:	e394                	sd	a3,0(a5)
   16bbc:	6714                	ld	a3,8(a4)
   16bbe:	e794                	sd	a3,8(a5)
   16bc0:	6b18                	ld	a4,16(a4)
   16bc2:	eb98                	sd	a4,16(a5)
   16bc4:	85a2                	mv	a1,s0
   16bc6:	8552                	mv	a0,s4
   16bc8:	9a9fc0ef          	jal	ra,13570 <_free_r>
   16bcc:	8552                	mv	a0,s4
   16bce:	bd0fa0ef          	jal	ra,10f9e <__malloc_unlock>
   16bd2:	a809                	j	16be4 <_realloc_r+0x102>
   16bd4:	02000493          	li	s1,32
   16bd8:	f524fce3          	bgeu	s1,s2,16b30 <_realloc_r+0x4e>
   16bdc:	47b1                	li	a5,12
   16bde:	00fa2023          	sw	a5,0(s4)
   16be2:	4901                	li	s2,0
   16be4:	60a6                	ld	ra,72(sp)
   16be6:	6406                	ld	s0,64(sp)
   16be8:	74e2                	ld	s1,56(sp)
   16bea:	79a2                	ld	s3,40(sp)
   16bec:	7a02                	ld	s4,32(sp)
   16bee:	6ae2                	ld	s5,24(sp)
   16bf0:	6b42                	ld	s6,16(sp)
   16bf2:	6ba2                	ld	s7,8(sp)
   16bf4:	6c02                	ld	s8,0(sp)
   16bf6:	854a                	mv	a0,s2
   16bf8:	7942                	ld	s2,48(sp)
   16bfa:	6161                	addi	sp,sp,80
   16bfc:	8082                	ret
   16bfe:	6e9c                	ld	a5,24(a3)
   16c00:	6a98                	ld	a4,16(a3)
   16c02:	89b2                	mv	s3,a2
   16c04:	ef1c                	sd	a5,24(a4)
   16c06:	eb98                	sd	a4,16(a5)
   16c08:	008ab783          	ld	a5,8(s5)
   16c0c:	409986b3          	sub	a3,s3,s1
   16c10:	467d                	li	a2,31
   16c12:	8b85                	andi	a5,a5,1
   16c14:	013a8733          	add	a4,s5,s3
   16c18:	04d66763          	bltu	a2,a3,16c66 <_realloc_r+0x184>
   16c1c:	00f9e7b3          	or	a5,s3,a5
   16c20:	00fab423          	sd	a5,8(s5)
   16c24:	671c                	ld	a5,8(a4)
   16c26:	0017e793          	ori	a5,a5,1
   16c2a:	e71c                	sd	a5,8(a4)
   16c2c:	8552                	mv	a0,s4
   16c2e:	b70fa0ef          	jal	ra,10f9e <__malloc_unlock>
   16c32:	8922                	mv	s2,s0
   16c34:	bf45                	j	16be4 <_realloc_r+0x102>
   16c36:	8b85                	andi	a5,a5,1
   16c38:	f7b1                	bnez	a5,16b84 <_realloc_r+0xa2>
   16c3a:	ff043b83          	ld	s7,-16(s0)
   16c3e:	417a8bb3          	sub	s7,s5,s7
   16c42:	008bb783          	ld	a5,8(s7)
   16c46:	9bf1                	andi	a5,a5,-4
   16c48:	bf15                	j	16b7c <_realloc_r+0x9a>
   16c4a:	6406                	ld	s0,64(sp)
   16c4c:	60a6                	ld	ra,72(sp)
   16c4e:	74e2                	ld	s1,56(sp)
   16c50:	7942                	ld	s2,48(sp)
   16c52:	79a2                	ld	s3,40(sp)
   16c54:	7a02                	ld	s4,32(sp)
   16c56:	6ae2                	ld	s5,24(sp)
   16c58:	6b42                	ld	s6,16(sp)
   16c5a:	6ba2                	ld	s7,8(sp)
   16c5c:	6c02                	ld	s8,0(sp)
   16c5e:	85b2                	mv	a1,a2
   16c60:	6161                	addi	sp,sp,80
   16c62:	b03f906f          	j	10764 <_malloc_r>
   16c66:	8fc5                	or	a5,a5,s1
   16c68:	00fab423          	sd	a5,8(s5)
   16c6c:	009a85b3          	add	a1,s5,s1
   16c70:	0016e693          	ori	a3,a3,1
   16c74:	e594                	sd	a3,8(a1)
   16c76:	671c                	ld	a5,8(a4)
   16c78:	05c1                	addi	a1,a1,16
   16c7a:	8552                	mv	a0,s4
   16c7c:	0017e793          	ori	a5,a5,1
   16c80:	e71c                	sd	a5,8(a4)
   16c82:	8effc0ef          	jal	ra,13570 <_free_r>
   16c86:	b75d                	j	16c2c <_realloc_r+0x14a>
   16c88:	9b71                	andi	a4,a4,-4
   16c8a:	00e986b3          	add	a3,s3,a4
   16c8e:	02048613          	addi	a2,s1,32
   16c92:	0ac6d763          	bge	a3,a2,16d40 <_realloc_r+0x25e>
   16c96:	8b85                	andi	a5,a5,1
   16c98:	ee0796e3          	bnez	a5,16b84 <_realloc_r+0xa2>
   16c9c:	ff043b83          	ld	s7,-16(s0)
   16ca0:	417a8bb3          	sub	s7,s5,s7
   16ca4:	008bb783          	ld	a5,8(s7)
   16ca8:	9bf1                	andi	a5,a5,-4
   16caa:	973e                	add	a4,a4,a5
   16cac:	01370b33          	add	s6,a4,s3
   16cb0:	eccb46e3          	blt	s6,a2,16b7c <_realloc_r+0x9a>
   16cb4:	018bb783          	ld	a5,24(s7)
   16cb8:	010bb703          	ld	a4,16(s7)
   16cbc:	ff898613          	addi	a2,s3,-8
   16cc0:	04800693          	li	a3,72
   16cc4:	ef1c                	sd	a5,24(a4)
   16cc6:	eb98                	sd	a4,16(a5)
   16cc8:	010b8913          	addi	s2,s7,16
   16ccc:	1cc6e163          	bltu	a3,a2,16e8e <_realloc_r+0x3ac>
   16cd0:	02700713          	li	a4,39
   16cd4:	87ca                	mv	a5,s2
   16cd6:	00c77f63          	bgeu	a4,a2,16cf4 <_realloc_r+0x212>
   16cda:	6018                	ld	a4,0(s0)
   16cdc:	03700793          	li	a5,55
   16ce0:	00ebb823          	sd	a4,16(s7)
   16ce4:	6418                	ld	a4,8(s0)
   16ce6:	00ebbc23          	sd	a4,24(s7)
   16cea:	1ac7e763          	bltu	a5,a2,16e98 <_realloc_r+0x3b6>
   16cee:	0441                	addi	s0,s0,16
   16cf0:	020b8793          	addi	a5,s7,32
   16cf4:	6018                	ld	a4,0(s0)
   16cf6:	e398                	sd	a4,0(a5)
   16cf8:	6418                	ld	a4,8(s0)
   16cfa:	e798                	sd	a4,8(a5)
   16cfc:	6818                	ld	a4,16(s0)
   16cfe:	eb98                	sd	a4,16(a5)
   16d00:	009b8733          	add	a4,s7,s1
   16d04:	409b07b3          	sub	a5,s6,s1
   16d08:	00ec3823          	sd	a4,16(s8)
   16d0c:	0017e793          	ori	a5,a5,1
   16d10:	e71c                	sd	a5,8(a4)
   16d12:	008bb783          	ld	a5,8(s7)
   16d16:	8552                	mv	a0,s4
   16d18:	8b85                	andi	a5,a5,1
   16d1a:	8fc5                	or	a5,a5,s1
   16d1c:	00fbb423          	sd	a5,8(s7)
   16d20:	a7efa0ef          	jal	ra,10f9e <__malloc_unlock>
   16d24:	b5c1                	j	16be4 <_realloc_r+0x102>
   16d26:	6014                	ld	a3,0(s0)
   16d28:	03700713          	li	a4,55
   16d2c:	e114                	sd	a3,0(a0)
   16d2e:	6414                	ld	a3,8(s0)
   16d30:	e514                	sd	a3,8(a0)
   16d32:	12c76663          	bltu	a4,a2,16e5e <_realloc_r+0x37c>
   16d36:	01040713          	addi	a4,s0,16
   16d3a:	01050793          	addi	a5,a0,16
   16d3e:	bdad                	j	16bb8 <_realloc_r+0xd6>
   16d40:	9aa6                	add	s5,s5,s1
   16d42:	409687b3          	sub	a5,a3,s1
   16d46:	015c3823          	sd	s5,16(s8)
   16d4a:	0017e793          	ori	a5,a5,1
   16d4e:	00fab423          	sd	a5,8(s5)
   16d52:	ff843783          	ld	a5,-8(s0)
   16d56:	8552                	mv	a0,s4
   16d58:	8922                	mv	s2,s0
   16d5a:	8b85                	andi	a5,a5,1
   16d5c:	8fc5                	or	a5,a5,s1
   16d5e:	fef43c23          	sd	a5,-8(s0)
   16d62:	a3cfa0ef          	jal	ra,10f9e <__malloc_unlock>
   16d66:	bdbd                	j	16be4 <_realloc_r+0x102>
   16d68:	ff853783          	ld	a5,-8(a0)
   16d6c:	9bf1                	andi	a5,a5,-4
   16d6e:	99be                	add	s3,s3,a5
   16d70:	bd61                	j	16c08 <_realloc_r+0x126>
   16d72:	018bb783          	ld	a5,24(s7)
   16d76:	010bb703          	ld	a4,16(s7)
   16d7a:	ff898613          	addi	a2,s3,-8
   16d7e:	04800693          	li	a3,72
   16d82:	ef1c                	sd	a5,24(a4)
   16d84:	eb98                	sd	a4,16(a5)
   16d86:	010b8913          	addi	s2,s7,16
   16d8a:	0cc6e263          	bltu	a3,a2,16e4e <_realloc_r+0x36c>
   16d8e:	02700713          	li	a4,39
   16d92:	87ca                	mv	a5,s2
   16d94:	02c77863          	bgeu	a4,a2,16dc4 <_realloc_r+0x2e2>
   16d98:	6018                	ld	a4,0(s0)
   16d9a:	03700793          	li	a5,55
   16d9e:	00ebb823          	sd	a4,16(s7)
   16da2:	6418                	ld	a4,8(s0)
   16da4:	00ebbc23          	sd	a4,24(s7)
   16da8:	0cc7f663          	bgeu	a5,a2,16e74 <_realloc_r+0x392>
   16dac:	681c                	ld	a5,16(s0)
   16dae:	02fbb023          	sd	a5,32(s7)
   16db2:	6c1c                	ld	a5,24(s0)
   16db4:	02fbb423          	sd	a5,40(s7)
   16db8:	06d60f63          	beq	a2,a3,16e36 <_realloc_r+0x354>
   16dbc:	02040413          	addi	s0,s0,32
   16dc0:	030b8793          	addi	a5,s7,48
   16dc4:	6018                	ld	a4,0(s0)
   16dc6:	89da                	mv	s3,s6
   16dc8:	8ade                	mv	s5,s7
   16dca:	e398                	sd	a4,0(a5)
   16dcc:	6418                	ld	a4,8(s0)
   16dce:	e798                	sd	a4,8(a5)
   16dd0:	6818                	ld	a4,16(s0)
   16dd2:	844a                	mv	s0,s2
   16dd4:	eb98                	sd	a4,16(a5)
   16dd6:	bd0d                	j	16c08 <_realloc_r+0x126>
   16dd8:	85a2                	mv	a1,s0
   16dda:	f51fe0ef          	jal	ra,15d2a <memmove>
   16dde:	b3dd                	j	16bc4 <_realloc_r+0xe2>
   16de0:	6e9c                	ld	a5,24(a3)
   16de2:	6a98                	ld	a4,16(a3)
   16de4:	ff898613          	addi	a2,s3,-8
   16de8:	04800693          	li	a3,72
   16dec:	ef1c                	sd	a5,24(a4)
   16dee:	eb98                	sd	a4,16(a5)
   16df0:	010bb703          	ld	a4,16(s7)
   16df4:	018bb783          	ld	a5,24(s7)
   16df8:	010b8913          	addi	s2,s7,16
   16dfc:	ef1c                	sd	a5,24(a4)
   16dfe:	eb98                	sd	a4,16(a5)
   16e00:	04c6e763          	bltu	a3,a2,16e4e <_realloc_r+0x36c>
   16e04:	02700713          	li	a4,39
   16e08:	87ca                	mv	a5,s2
   16e0a:	fac77de3          	bgeu	a4,a2,16dc4 <_realloc_r+0x2e2>
   16e0e:	6018                	ld	a4,0(s0)
   16e10:	03700793          	li	a5,55
   16e14:	00ebb823          	sd	a4,16(s7)
   16e18:	6418                	ld	a4,8(s0)
   16e1a:	00ebbc23          	sd	a4,24(s7)
   16e1e:	04c7fb63          	bgeu	a5,a2,16e74 <_realloc_r+0x392>
   16e22:	6818                	ld	a4,16(s0)
   16e24:	04800793          	li	a5,72
   16e28:	02ebb023          	sd	a4,32(s7)
   16e2c:	6c18                	ld	a4,24(s0)
   16e2e:	02ebb423          	sd	a4,40(s7)
   16e32:	f8f615e3          	bne	a2,a5,16dbc <_realloc_r+0x2da>
   16e36:	7018                	ld	a4,32(s0)
   16e38:	040b8793          	addi	a5,s7,64
   16e3c:	03040413          	addi	s0,s0,48
   16e40:	02ebb823          	sd	a4,48(s7)
   16e44:	ff843703          	ld	a4,-8(s0)
   16e48:	02ebbc23          	sd	a4,56(s7)
   16e4c:	bfa5                	j	16dc4 <_realloc_r+0x2e2>
   16e4e:	85a2                	mv	a1,s0
   16e50:	854a                	mv	a0,s2
   16e52:	ed9fe0ef          	jal	ra,15d2a <memmove>
   16e56:	844a                	mv	s0,s2
   16e58:	89da                	mv	s3,s6
   16e5a:	8ade                	mv	s5,s7
   16e5c:	b375                	j	16c08 <_realloc_r+0x126>
   16e5e:	6818                	ld	a4,16(s0)
   16e60:	e918                	sd	a4,16(a0)
   16e62:	6c18                	ld	a4,24(s0)
   16e64:	ed18                	sd	a4,24(a0)
   16e66:	00f60b63          	beq	a2,a5,16e7c <_realloc_r+0x39a>
   16e6a:	02040713          	addi	a4,s0,32
   16e6e:	02050793          	addi	a5,a0,32
   16e72:	b399                	j	16bb8 <_realloc_r+0xd6>
   16e74:	0441                	addi	s0,s0,16
   16e76:	020b8793          	addi	a5,s7,32
   16e7a:	b7a9                	j	16dc4 <_realloc_r+0x2e2>
   16e7c:	7014                	ld	a3,32(s0)
   16e7e:	03040713          	addi	a4,s0,48
   16e82:	03050793          	addi	a5,a0,48
   16e86:	f114                	sd	a3,32(a0)
   16e88:	7414                	ld	a3,40(s0)
   16e8a:	f514                	sd	a3,40(a0)
   16e8c:	b335                	j	16bb8 <_realloc_r+0xd6>
   16e8e:	85a2                	mv	a1,s0
   16e90:	854a                	mv	a0,s2
   16e92:	e99fe0ef          	jal	ra,15d2a <memmove>
   16e96:	b5ad                	j	16d00 <_realloc_r+0x21e>
   16e98:	681c                	ld	a5,16(s0)
   16e9a:	02fbb023          	sd	a5,32(s7)
   16e9e:	6c1c                	ld	a5,24(s0)
   16ea0:	02fbb423          	sd	a5,40(s7)
   16ea4:	00d60763          	beq	a2,a3,16eb2 <_realloc_r+0x3d0>
   16ea8:	02040413          	addi	s0,s0,32
   16eac:	030b8793          	addi	a5,s7,48
   16eb0:	b591                	j	16cf4 <_realloc_r+0x212>
   16eb2:	7018                	ld	a4,32(s0)
   16eb4:	040b8793          	addi	a5,s7,64
   16eb8:	03040413          	addi	s0,s0,48
   16ebc:	02ebb823          	sd	a4,48(s7)
   16ec0:	ff843703          	ld	a4,-8(s0)
   16ec4:	02ebbc23          	sd	a4,56(s7)
   16ec8:	b535                	j	16cf4 <_realloc_r+0x212>

0000000000016eca <cleanup_glue>:
   16eca:	7179                	addi	sp,sp,-48
   16ecc:	e84a                	sd	s2,16(sp)
   16ece:	0005b903          	ld	s2,0(a1)
   16ed2:	f022                	sd	s0,32(sp)
   16ed4:	ec26                	sd	s1,24(sp)
   16ed6:	f406                	sd	ra,40(sp)
   16ed8:	e44e                	sd	s3,8(sp)
   16eda:	e052                	sd	s4,0(sp)
   16edc:	842e                	mv	s0,a1
   16ede:	84aa                	mv	s1,a0
   16ee0:	02090b63          	beqz	s2,16f16 <cleanup_glue+0x4c>
   16ee4:	00093983          	ld	s3,0(s2)
   16ee8:	02098363          	beqz	s3,16f0e <cleanup_glue+0x44>
   16eec:	0009ba03          	ld	s4,0(s3)
   16ef0:	000a0b63          	beqz	s4,16f06 <cleanup_glue+0x3c>
   16ef4:	000a3583          	ld	a1,0(s4)
   16ef8:	c199                	beqz	a1,16efe <cleanup_glue+0x34>
   16efa:	fd1ff0ef          	jal	ra,16eca <cleanup_glue>
   16efe:	85d2                	mv	a1,s4
   16f00:	8526                	mv	a0,s1
   16f02:	e6efc0ef          	jal	ra,13570 <_free_r>
   16f06:	85ce                	mv	a1,s3
   16f08:	8526                	mv	a0,s1
   16f0a:	e66fc0ef          	jal	ra,13570 <_free_r>
   16f0e:	85ca                	mv	a1,s2
   16f10:	8526                	mv	a0,s1
   16f12:	e5efc0ef          	jal	ra,13570 <_free_r>
   16f16:	85a2                	mv	a1,s0
   16f18:	7402                	ld	s0,32(sp)
   16f1a:	70a2                	ld	ra,40(sp)
   16f1c:	6942                	ld	s2,16(sp)
   16f1e:	69a2                	ld	s3,8(sp)
   16f20:	6a02                	ld	s4,0(sp)
   16f22:	8526                	mv	a0,s1
   16f24:	64e2                	ld	s1,24(sp)
   16f26:	6145                	addi	sp,sp,48
   16f28:	e48fc06f          	j	13570 <_free_r>

0000000000016f2c <_reclaim_reent>:
   16f2c:	6401b783          	ld	a5,1600(gp) # 1f760 <_impure_ptr>
   16f30:	0aa78563          	beq	a5,a0,16fda <_reclaim_reent+0xae>
   16f34:	7d2c                	ld	a1,120(a0)
   16f36:	7179                	addi	sp,sp,-48
   16f38:	ec26                	sd	s1,24(sp)
   16f3a:	f406                	sd	ra,40(sp)
   16f3c:	f022                	sd	s0,32(sp)
   16f3e:	e84a                	sd	s2,16(sp)
   16f40:	e44e                	sd	s3,8(sp)
   16f42:	84aa                	mv	s1,a0
   16f44:	c58d                	beqz	a1,16f6e <_reclaim_reent+0x42>
   16f46:	4901                	li	s2,0
   16f48:	20000993          	li	s3,512
   16f4c:	012587b3          	add	a5,a1,s2
   16f50:	6380                	ld	s0,0(a5)
   16f52:	c801                	beqz	s0,16f62 <_reclaim_reent+0x36>
   16f54:	85a2                	mv	a1,s0
   16f56:	6000                	ld	s0,0(s0)
   16f58:	8526                	mv	a0,s1
   16f5a:	e16fc0ef          	jal	ra,13570 <_free_r>
   16f5e:	f87d                	bnez	s0,16f54 <_reclaim_reent+0x28>
   16f60:	7cac                	ld	a1,120(s1)
   16f62:	0921                	addi	s2,s2,8
   16f64:	ff3914e3          	bne	s2,s3,16f4c <_reclaim_reent+0x20>
   16f68:	8526                	mv	a0,s1
   16f6a:	e06fc0ef          	jal	ra,13570 <_free_r>
   16f6e:	70ac                	ld	a1,96(s1)
   16f70:	c581                	beqz	a1,16f78 <_reclaim_reent+0x4c>
   16f72:	8526                	mv	a0,s1
   16f74:	dfcfc0ef          	jal	ra,13570 <_free_r>
   16f78:	1f84b403          	ld	s0,504(s1)
   16f7c:	cc01                	beqz	s0,16f94 <_reclaim_reent+0x68>
   16f7e:	20048913          	addi	s2,s1,512
   16f82:	01240963          	beq	s0,s2,16f94 <_reclaim_reent+0x68>
   16f86:	85a2                	mv	a1,s0
   16f88:	6000                	ld	s0,0(s0)
   16f8a:	8526                	mv	a0,s1
   16f8c:	de4fc0ef          	jal	ra,13570 <_free_r>
   16f90:	fe891be3          	bne	s2,s0,16f86 <_reclaim_reent+0x5a>
   16f94:	64cc                	ld	a1,136(s1)
   16f96:	c581                	beqz	a1,16f9e <_reclaim_reent+0x72>
   16f98:	8526                	mv	a0,s1
   16f9a:	dd6fc0ef          	jal	ra,13570 <_free_r>
   16f9e:	48bc                	lw	a5,80(s1)
   16fa0:	c795                	beqz	a5,16fcc <_reclaim_reent+0xa0>
   16fa2:	6cbc                	ld	a5,88(s1)
   16fa4:	8526                	mv	a0,s1
   16fa6:	9782                	jalr	a5
   16fa8:	5204b403          	ld	s0,1312(s1)
   16fac:	c005                	beqz	s0,16fcc <_reclaim_reent+0xa0>
   16fae:	600c                	ld	a1,0(s0)
   16fb0:	c581                	beqz	a1,16fb8 <_reclaim_reent+0x8c>
   16fb2:	8526                	mv	a0,s1
   16fb4:	f17ff0ef          	jal	ra,16eca <cleanup_glue>
   16fb8:	85a2                	mv	a1,s0
   16fba:	7402                	ld	s0,32(sp)
   16fbc:	70a2                	ld	ra,40(sp)
   16fbe:	6942                	ld	s2,16(sp)
   16fc0:	69a2                	ld	s3,8(sp)
   16fc2:	8526                	mv	a0,s1
   16fc4:	64e2                	ld	s1,24(sp)
   16fc6:	6145                	addi	sp,sp,48
   16fc8:	da8fc06f          	j	13570 <_free_r>
   16fcc:	70a2                	ld	ra,40(sp)
   16fce:	7402                	ld	s0,32(sp)
   16fd0:	64e2                	ld	s1,24(sp)
   16fd2:	6942                	ld	s2,16(sp)
   16fd4:	69a2                	ld	s3,8(sp)
   16fd6:	6145                	addi	sp,sp,48
   16fd8:	8082                	ret
   16fda:	8082                	ret

0000000000016fdc <frexp>:
   16fdc:	e20507d3          	fmv.x.d	a5,fa0
   16fe0:	80000637          	lui	a2,0x80000
   16fe4:	fff64613          	not	a2,a2
   16fe8:	4207d593          	srai	a1,a5,0x20
   16fec:	00c5f733          	and	a4,a1,a2
   16ff0:	00052023          	sw	zero,0(a0)
   16ff4:	7ff00837          	lui	a6,0x7ff00
   16ff8:	86ae                	mv	a3,a1
   16ffa:	05075c63          	bge	a4,a6,17052 <frexp+0x76>
   16ffe:	00f76833          	or	a6,a4,a5
   17002:	2801                	sext.w	a6,a6
   17004:	04080763          	beqz	a6,17052 <frexp+0x76>
   17008:	7ff00837          	lui	a6,0x7ff00
   1700c:	0105f5b3          	and	a1,a1,a6
   17010:	4801                	li	a6,0
   17012:	ed89                	bnez	a1,1702c <frexp+0x50>
   17014:	6201b787          	fld	fa5,1568(gp) # 1f740 <mask+0x18>
   17018:	fca00813          	li	a6,-54
   1701c:	12f577d3          	fmul.d	fa5,fa0,fa5
   17020:	e20787d3          	fmv.x.d	a5,fa5
   17024:	4207d693          	srai	a3,a5,0x20
   17028:	00c6f733          	and	a4,a3,a2
   1702c:	80100637          	lui	a2,0x80100
   17030:	167d                	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800e06df>
   17032:	8ef1                	and	a3,a3,a2
   17034:	3fe00637          	lui	a2,0x3fe00
   17038:	8ed1                	or	a3,a3,a2
   1703a:	4147571b          	sraiw	a4,a4,0x14
   1703e:	567d                	li	a2,-1
   17040:	c027071b          	addiw	a4,a4,-1022
   17044:	9201                	srli	a2,a2,0x20
   17046:	0107073b          	addw	a4,a4,a6
   1704a:	1682                	slli	a3,a3,0x20
   1704c:	8ff1                	and	a5,a5,a2
   1704e:	c118                	sw	a4,0(a0)
   17050:	8fd5                	or	a5,a5,a3
   17052:	f2078553          	fmv.d.x	fa0,a5
   17056:	8082                	ret

0000000000017058 <_sprintf_r>:
   17058:	7111                	addi	sp,sp,-256
   1705a:	0d810e93          	addi	t4,sp,216
   1705e:	f5be                	sd	a5,232(sp)
   17060:	80000337          	lui	t1,0x80000
   17064:	77c1                	lui	a5,0xffff0
   17066:	8e2e                	mv	t3,a1
   17068:	fff34313          	not	t1,t1
   1706c:	edb6                	sd	a3,216(sp)
   1706e:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd08e8>
   17072:	080c                	addi	a1,sp,16
   17074:	86f6                	mv	a3,t4
   17076:	e586                	sd	ra,200(sp)
   17078:	d03e                	sw	a5,32(sp)
   1707a:	f1ba                	sd	a4,224(sp)
   1707c:	f9c2                	sd	a6,240(sp)
   1707e:	fdc6                	sd	a7,248(sp)
   17080:	e872                	sd	t3,16(sp)
   17082:	f472                	sd	t3,40(sp)
   17084:	d81a                	sw	t1,48(sp)
   17086:	ce1a                	sw	t1,28(sp)
   17088:	e476                	sd	t4,8(sp)
   1708a:	0cc000ef          	jal	ra,17156 <_svfprintf_r>
   1708e:	67c2                	ld	a5,16(sp)
   17090:	00078023          	sb	zero,0(a5)
   17094:	60ae                	ld	ra,200(sp)
   17096:	6111                	addi	sp,sp,256
   17098:	8082                	ret

000000000001709a <sprintf>:
   1709a:	8e2a                	mv	t3,a0
   1709c:	7111                	addi	sp,sp,-256
   1709e:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   170a2:	0d010e93          	addi	t4,sp,208
   170a6:	f5be                	sd	a5,232(sp)
   170a8:	80000337          	lui	t1,0x80000
   170ac:	77c1                	lui	a5,0xffff0
   170ae:	fff34313          	not	t1,t1
   170b2:	e9b2                	sd	a2,208(sp)
   170b4:	edb6                	sd	a3,216(sp)
   170b6:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd08e8>
   170ba:	862e                	mv	a2,a1
   170bc:	86f6                	mv	a3,t4
   170be:	080c                	addi	a1,sp,16
   170c0:	e586                	sd	ra,200(sp)
   170c2:	d03e                	sw	a5,32(sp)
   170c4:	f1ba                	sd	a4,224(sp)
   170c6:	f9c2                	sd	a6,240(sp)
   170c8:	fdc6                	sd	a7,248(sp)
   170ca:	e872                	sd	t3,16(sp)
   170cc:	f472                	sd	t3,40(sp)
   170ce:	d81a                	sw	t1,48(sp)
   170d0:	ce1a                	sw	t1,28(sp)
   170d2:	e476                	sd	t4,8(sp)
   170d4:	082000ef          	jal	ra,17156 <_svfprintf_r>
   170d8:	67c2                	ld	a5,16(sp)
   170da:	00078023          	sb	zero,0(a5)
   170de:	60ae                	ld	ra,200(sp)
   170e0:	6111                	addi	sp,sp,256
   170e2:	8082                	ret

00000000000170e4 <strncpy>:
   170e4:	00b567b3          	or	a5,a0,a1
   170e8:	8b9d                	andi	a5,a5,7
   170ea:	872a                	mv	a4,a0
   170ec:	e7b1                	bnez	a5,17138 <strncpy+0x54>
   170ee:	479d                	li	a5,7
   170f0:	04c7f463          	bgeu	a5,a2,17138 <strncpy+0x54>
   170f4:	5f81b303          	ld	t1,1528(gp) # 1f718 <__SDATA_BEGIN__>
   170f8:	6001b883          	ld	a7,1536(gp) # 1f720 <__SDATA_BEGIN__+0x8>
   170fc:	4e1d                	li	t3,7
   170fe:	6194                	ld	a3,0(a1)
   17100:	006687b3          	add	a5,a3,t1
   17104:	fff6c813          	not	a6,a3
   17108:	0107f7b3          	and	a5,a5,a6
   1710c:	0117f7b3          	and	a5,a5,a7
   17110:	e785                	bnez	a5,17138 <strncpy+0x54>
   17112:	e314                	sd	a3,0(a4)
   17114:	1661                	addi	a2,a2,-8 # 3fdffff8 <__BSS_END__+0x3fde06d8>
   17116:	0721                	addi	a4,a4,8
   17118:	05a1                	addi	a1,a1,8
   1711a:	fece62e3          	bltu	t3,a2,170fe <strncpy+0x1a>
   1711e:	0585                	addi	a1,a1,1
   17120:	00170793          	addi	a5,a4,1
   17124:	ce11                	beqz	a2,17140 <strncpy+0x5c>
   17126:	fff5c683          	lbu	a3,-1(a1)
   1712a:	fff60813          	addi	a6,a2,-1
   1712e:	fed78fa3          	sb	a3,-1(a5)
   17132:	ca81                	beqz	a3,17142 <strncpy+0x5e>
   17134:	873e                	mv	a4,a5
   17136:	8642                	mv	a2,a6
   17138:	0585                	addi	a1,a1,1
   1713a:	00170793          	addi	a5,a4,1
   1713e:	f665                	bnez	a2,17126 <strncpy+0x42>
   17140:	8082                	ret
   17142:	9732                	add	a4,a4,a2
   17144:	00080863          	beqz	a6,17154 <strncpy+0x70>
   17148:	0785                	addi	a5,a5,1
   1714a:	fe078fa3          	sb	zero,-1(a5)
   1714e:	fee79de3          	bne	a5,a4,17148 <strncpy+0x64>
   17152:	8082                	ret
   17154:	8082                	ret

0000000000017156 <_svfprintf_r>:
   17156:	d8010113          	addi	sp,sp,-640
   1715a:	26113c23          	sd	ra,632(sp)
   1715e:	25313c23          	sd	s3,600(sp)
   17162:	25413823          	sd	s4,592(sp)
   17166:	23913423          	sd	s9,552(sp)
   1716a:	8a2e                	mv	s4,a1
   1716c:	8cb2                	mv	s9,a2
   1716e:	e836                	sd	a3,16(sp)
   17170:	26813823          	sd	s0,624(sp)
   17174:	26913423          	sd	s1,616(sp)
   17178:	27213023          	sd	s2,608(sp)
   1717c:	25513423          	sd	s5,584(sp)
   17180:	25613023          	sd	s6,576(sp)
   17184:	23713c23          	sd	s7,568(sp)
   17188:	23813823          	sd	s8,560(sp)
   1718c:	23a13023          	sd	s10,544(sp)
   17190:	21b13c23          	sd	s11,536(sp)
   17194:	89aa                	mv	s3,a0
   17196:	9affe0ef          	jal	ra,15b44 <_localeconv_r>
   1719a:	611c                	ld	a5,0(a0)
   1719c:	853e                	mv	a0,a5
   1719e:	f8be                	sd	a5,112(sp)
   171a0:	9fafa0ef          	jal	ra,1139a <strlen>
   171a4:	010a5783          	lhu	a5,16(s4)
   171a8:	e202                	sd	zero,256(sp)
   171aa:	e602                	sd	zero,264(sp)
   171ac:	0807f793          	andi	a5,a5,128
   171b0:	f4aa                	sd	a0,104(sp)
   171b2:	c789                	beqz	a5,171bc <_svfprintf_r+0x66>
   171b4:	018a3783          	ld	a5,24(s4)
   171b8:	5a0782e3          	beqz	a5,17f5c <_svfprintf_r+0xe06>
   171bc:	67f5                	lui	a5,0x1d
   171be:	9787b783          	ld	a5,-1672(a5) # 1c978 <__clzdi2+0x348>
   171c2:	19010b13          	addi	s6,sp,400
   171c6:	ea5a                	sd	s6,272(sp)
   171c8:	e93e                	sd	a5,144(sp)
   171ca:	67f5                	lui	a5,0x1d
   171cc:	9887b783          	ld	a5,-1656(a5) # 1c988 <__clzdi2+0x358>
   171d0:	f202                	sd	zero,288(sp)
   171d2:	10012c23          	sw	zero,280(sp)
   171d6:	ed3e                	sd	a5,152(sp)
   171d8:	67f5                	lui	a5,0x1d
   171da:	9987b783          	ld	a5,-1640(a5) # 1c998 <__clzdi2+0x368>
   171de:	f002                	sd	zero,32(sp)
   171e0:	f402                	sd	zero,40(sp)
   171e2:	f13e                	sd	a5,160(sp)
   171e4:	000cc783          	lbu	a5,0(s9)
   171e8:	fc82                	sd	zero,120(sp)
   171ea:	f082                	sd	zero,96(sp)
   171ec:	e102                	sd	zero,128(sp)
   171ee:	e502                	sd	zero,136(sp)
   171f0:	e402                	sd	zero,8(sp)
   171f2:	835a                	mv	t1,s6
   171f4:	1c078563          	beqz	a5,173be <_svfprintf_r+0x268>
   171f8:	8466                	mv	s0,s9
   171fa:	02500713          	li	a4,37
   171fe:	2ce78e63          	beq	a5,a4,174da <_svfprintf_r+0x384>
   17202:	00144783          	lbu	a5,1(s0)
   17206:	0405                	addi	s0,s0,1
   17208:	fbfd                	bnez	a5,171fe <_svfprintf_r+0xa8>
   1720a:	419404bb          	subw	s1,s0,s9
   1720e:	1a048863          	beqz	s1,173be <_svfprintf_r+0x268>
   17212:	11812783          	lw	a5,280(sp)
   17216:	7712                	ld	a4,288(sp)
   17218:	01933023          	sd	s9,0(t1) # ffffffff80000000 <__BSS_END__+0xffffffff7ffe06e0>
   1721c:	2785                	addiw	a5,a5,1
   1721e:	9726                	add	a4,a4,s1
   17220:	00933423          	sd	s1,8(t1)
   17224:	f23a                	sd	a4,288(sp)
   17226:	10f12c23          	sw	a5,280(sp)
   1722a:	0007871b          	sext.w	a4,a5
   1722e:	479d                	li	a5,7
   17230:	0341                	addi	t1,t1,16
   17232:	2ae7cb63          	blt	a5,a4,174e8 <_svfprintf_r+0x392>
   17236:	6722                	ld	a4,8(sp)
   17238:	00044783          	lbu	a5,0(s0)
   1723c:	9f25                	addw	a4,a4,s1
   1723e:	e43a                	sd	a4,8(sp)
   17240:	16078f63          	beqz	a5,173be <_svfprintf_r+0x268>
   17244:	67f5                	lui	a5,0x1d
   17246:	00144e03          	lbu	t3,1(s0)
   1724a:	0c010fa3          	sb	zero,223(sp)
   1724e:	0405                	addi	s0,s0,1
   17250:	5c7d                	li	s8,-1
   17252:	4a81                	li	s5,0
   17254:	4481                	li	s1,0
   17256:	05a00913          	li	s2,90
   1725a:	e5c78b93          	addi	s7,a5,-420 # 1ce5c <p05.0+0xc>
   1725e:	4da5                	li	s11,9
   17260:	0405                	addi	s0,s0,1
   17262:	000e0d1b          	sext.w	s10,t3
   17266:	02a00693          	li	a3,42
   1726a:	fe0d079b          	addiw	a5,s10,-32
   1726e:	0007871b          	sext.w	a4,a5
   17272:	04e96363          	bltu	s2,a4,172b8 <_svfprintf_r+0x162>
   17276:	02079713          	slli	a4,a5,0x20
   1727a:	01e75793          	srli	a5,a4,0x1e
   1727e:	97de                	add	a5,a5,s7
   17280:	439c                	lw	a5,0(a5)
   17282:	8782                	jr	a5
   17284:	4a81                	li	s5,0
   17286:	00044703          	lbu	a4,0(s0)
   1728a:	002a979b          	slliw	a5,s5,0x2
   1728e:	015787bb          	addw	a5,a5,s5
   17292:	fd0d0e1b          	addiw	t3,s10,-48
   17296:	0017979b          	slliw	a5,a5,0x1
   1729a:	fd07061b          	addiw	a2,a4,-48
   1729e:	0405                	addi	s0,s0,1
   172a0:	00fe0abb          	addw	s5,t3,a5
   172a4:	00070d1b          	sext.w	s10,a4
   172a8:	fccdffe3          	bgeu	s11,a2,17286 <_svfprintf_r+0x130>
   172ac:	fe0d079b          	addiw	a5,s10,-32
   172b0:	0007871b          	sext.w	a4,a5
   172b4:	fce971e3          	bgeu	s2,a4,17276 <_svfprintf_r+0x120>
   172b8:	100d0363          	beqz	s10,173be <_svfprintf_r+0x268>
   172bc:	13a10423          	sb	s10,296(sp)
   172c0:	0c010fa3          	sb	zero,223(sp)
   172c4:	4905                	li	s2,1
   172c6:	4b85                	li	s7,1
   172c8:	12810c93          	addi	s9,sp,296
   172cc:	ec02                	sd	zero,24(sp)
   172ce:	4c01                	li	s8,0
   172d0:	e882                	sd	zero,80(sp)
   172d2:	ec82                	sd	zero,88(sp)
   172d4:	e482                	sd	zero,72(sp)
   172d6:	0024f293          	andi	t0,s1,2
   172da:	00028363          	beqz	t0,172e0 <_svfprintf_r+0x18a>
   172de:	2909                	addiw	s2,s2,2
   172e0:	0844fd93          	andi	s11,s1,132
   172e4:	7792                	ld	a5,288(sp)
   172e6:	000d9663          	bnez	s11,172f2 <_svfprintf_r+0x19c>
   172ea:	412a86bb          	subw	a3,s5,s2
   172ee:	04d04be3          	bgtz	a3,17b44 <_svfprintf_r+0x9ee>
   172f2:	0df14703          	lbu	a4,223(sp)
   172f6:	c70d                	beqz	a4,17320 <_svfprintf_r+0x1ca>
   172f8:	11812703          	lw	a4,280(sp)
   172fc:	0df10693          	addi	a3,sp,223
   17300:	00d33023          	sd	a3,0(t1)
   17304:	2705                	addiw	a4,a4,1
   17306:	4685                	li	a3,1
   17308:	0785                	addi	a5,a5,1
   1730a:	00d33423          	sd	a3,8(t1)
   1730e:	10e12c23          	sw	a4,280(sp)
   17312:	0007069b          	sext.w	a3,a4
   17316:	f23e                	sd	a5,288(sp)
   17318:	471d                	li	a4,7
   1731a:	0341                	addi	t1,t1,16
   1731c:	26d74363          	blt	a4,a3,17582 <_svfprintf_r+0x42c>
   17320:	02028563          	beqz	t0,1734a <_svfprintf_r+0x1f4>
   17324:	11812703          	lw	a4,280(sp)
   17328:	1194                	addi	a3,sp,224
   1732a:	00d33023          	sd	a3,0(t1)
   1732e:	2705                	addiw	a4,a4,1
   17330:	4689                	li	a3,2
   17332:	0789                	addi	a5,a5,2
   17334:	00d33423          	sd	a3,8(t1)
   17338:	10e12c23          	sw	a4,280(sp)
   1733c:	0007069b          	sext.w	a3,a4
   17340:	f23e                	sd	a5,288(sp)
   17342:	471d                	li	a4,7
   17344:	0341                	addi	t1,t1,16
   17346:	08d749e3          	blt	a4,a3,17bd8 <_svfprintf_r+0xa82>
   1734a:	08000713          	li	a4,128
   1734e:	6aed8f63          	beq	s11,a4,17a0c <_svfprintf_r+0x8b6>
   17352:	417c0c3b          	subw	s8,s8,s7
   17356:	75804563          	bgtz	s8,17aa0 <_svfprintf_r+0x94a>
   1735a:	1004f713          	andi	a4,s1,256
   1735e:	5a071263          	bnez	a4,17902 <_svfprintf_r+0x7ac>
   17362:	11812703          	lw	a4,280(sp)
   17366:	97de                	add	a5,a5,s7
   17368:	01933023          	sd	s9,0(t1)
   1736c:	0017069b          	addiw	a3,a4,1
   17370:	8736                	mv	a4,a3
   17372:	01733423          	sd	s7,8(t1)
   17376:	10e12c23          	sw	a4,280(sp)
   1737a:	f23e                	sd	a5,288(sp)
   1737c:	471d                	li	a4,7
   1737e:	2cd74263          	blt	a4,a3,17642 <_svfprintf_r+0x4ec>
   17382:	0341                	addi	t1,t1,16
   17384:	8891                	andi	s1,s1,4
   17386:	c489                	beqz	s1,17390 <_svfprintf_r+0x23a>
   17388:	412a84bb          	subw	s1,s5,s2
   1738c:	069040e3          	bgtz	s1,17bec <_svfprintf_r+0xa96>
   17390:	8756                	mv	a4,s5
   17392:	012ad363          	bge	s5,s2,17398 <_svfprintf_r+0x242>
   17396:	874a                	mv	a4,s2
   17398:	66a2                	ld	a3,8(sp)
   1739a:	9f35                	addw	a4,a4,a3
   1739c:	e43a                	sd	a4,8(sp)
   1739e:	78079263          	bnez	a5,17b22 <_svfprintf_r+0x9cc>
   173a2:	67e2                	ld	a5,24(sp)
   173a4:	10012c23          	sw	zero,280(sp)
   173a8:	c789                	beqz	a5,173b2 <_svfprintf_r+0x25c>
   173aa:	65e2                	ld	a1,24(sp)
   173ac:	854e                	mv	a0,s3
   173ae:	9c2fc0ef          	jal	ra,13570 <_free_r>
   173b2:	835a                	mv	t1,s6
   173b4:	8ca2                	mv	s9,s0
   173b6:	000cc783          	lbu	a5,0(s9)
   173ba:	e2079fe3          	bnez	a5,171f8 <_svfprintf_r+0xa2>
   173be:	7792                	ld	a5,288(sp)
   173c0:	c399                	beqz	a5,173c6 <_svfprintf_r+0x270>
   173c2:	35c0106f          	j	1871e <_svfprintf_r+0x15c8>
   173c6:	010a5783          	lhu	a5,16(s4)
   173ca:	0407f793          	andi	a5,a5,64
   173ce:	c399                	beqz	a5,173d4 <_svfprintf_r+0x27e>
   173d0:	6960106f          	j	18a66 <_svfprintf_r+0x1910>
   173d4:	27813083          	ld	ra,632(sp)
   173d8:	27013403          	ld	s0,624(sp)
   173dc:	6522                	ld	a0,8(sp)
   173de:	26813483          	ld	s1,616(sp)
   173e2:	26013903          	ld	s2,608(sp)
   173e6:	25813983          	ld	s3,600(sp)
   173ea:	25013a03          	ld	s4,592(sp)
   173ee:	24813a83          	ld	s5,584(sp)
   173f2:	24013b03          	ld	s6,576(sp)
   173f6:	23813b83          	ld	s7,568(sp)
   173fa:	23013c03          	ld	s8,560(sp)
   173fe:	22813c83          	ld	s9,552(sp)
   17402:	22013d03          	ld	s10,544(sp)
   17406:	21813d83          	ld	s11,536(sp)
   1740a:	28010113          	addi	sp,sp,640
   1740e:	8082                	ret
   17410:	0104e493          	ori	s1,s1,16
   17414:	00044e03          	lbu	t3,0(s0)
   17418:	2481                	sext.w	s1,s1
   1741a:	b599                	j	17260 <_svfprintf_r+0x10a>
   1741c:	0104e493          	ori	s1,s1,16
   17420:	2481                	sext.w	s1,s1
   17422:	66c2                	ld	a3,16(sp)
   17424:	0204f793          	andi	a5,s1,32
   17428:	00868713          	addi	a4,a3,8
   1742c:	24078463          	beqz	a5,17674 <_svfprintf_r+0x51e>
   17430:	629c                	ld	a5,0(a3)
   17432:	893e                	mv	s2,a5
   17434:	2607c263          	bltz	a5,17698 <_svfprintf_r+0x542>
   17438:	57fd                	li	a5,-1
   1743a:	62fc09e3          	beq	s8,a5,1826c <_svfprintf_r+0x1116>
   1743e:	f7f4fd93          	andi	s11,s1,-129
   17442:	e83a                	sd	a4,16(sp)
   17444:	2d81                	sext.w	s11,s11
   17446:	140908e3          	beqz	s2,17d96 <_svfprintf_r+0xc40>
   1744a:	47a5                	li	a5,9
   1744c:	4f27eae3          	bltu	a5,s2,18140 <_svfprintf_r+0xfea>
   17450:	0309091b          	addiw	s2,s2,48
   17454:	192105a3          	sb	s2,395(sp)
   17458:	84ee                	mv	s1,s11
   1745a:	4b85                	li	s7,1
   1745c:	18b10c93          	addi	s9,sp,395
   17460:	0df14783          	lbu	a5,223(sp)
   17464:	000c091b          	sext.w	s2,s8
   17468:	017c5463          	bge	s8,s7,17470 <_svfprintf_r+0x31a>
   1746c:	000b891b          	sext.w	s2,s7
   17470:	ec02                	sd	zero,24(sp)
   17472:	e882                	sd	zero,80(sp)
   17474:	ec82                	sd	zero,88(sp)
   17476:	e482                	sd	zero,72(sp)
   17478:	e4078fe3          	beqz	a5,172d6 <_svfprintf_r+0x180>
   1747c:	2905                	addiw	s2,s2,1
   1747e:	bda1                	j	172d6 <_svfprintf_r+0x180>
   17480:	0104e493          	ori	s1,s1,16
   17484:	2481                	sext.w	s1,s1
   17486:	66c2                	ld	a3,16(sp)
   17488:	0204f793          	andi	a5,s1,32
   1748c:	00868713          	addi	a4,a3,8
   17490:	1c078363          	beqz	a5,17656 <_svfprintf_r+0x500>
   17494:	0006b903          	ld	s2,0(a3)
   17498:	bff4fd93          	andi	s11,s1,-1025
   1749c:	2d81                	sext.w	s11,s11
   1749e:	e83a                	sd	a4,16(sp)
   174a0:	4781                	li	a5,0
   174a2:	4701                	li	a4,0
   174a4:	0ce10fa3          	sb	a4,223(sp)
   174a8:	577d                	li	a4,-1
   174aa:	20ec0363          	beq	s8,a4,176b0 <_svfprintf_r+0x55a>
   174ae:	f7fdf493          	andi	s1,s11,-129
   174b2:	2481                	sext.w	s1,s1
   174b4:	68091663          	bnez	s2,17b40 <_svfprintf_r+0x9ea>
   174b8:	500c1d63          	bnez	s8,179d2 <_svfprintf_r+0x87c>
   174bc:	0e0790e3          	bnez	a5,17d9c <_svfprintf_r+0xc46>
   174c0:	001dfb93          	andi	s7,s11,1
   174c4:	18c10c93          	addi	s9,sp,396
   174c8:	f80b8ce3          	beqz	s7,17460 <_svfprintf_r+0x30a>
   174cc:	03000793          	li	a5,48
   174d0:	18f105a3          	sb	a5,395(sp)
   174d4:	18b10c93          	addi	s9,sp,395
   174d8:	b761                	j	17460 <_svfprintf_r+0x30a>
   174da:	419404bb          	subw	s1,s0,s9
   174de:	d2049ae3          	bnez	s1,17212 <_svfprintf_r+0xbc>
   174e2:	00044783          	lbu	a5,0(s0)
   174e6:	bba9                	j	17240 <_svfprintf_r+0xea>
   174e8:	0a10                	addi	a2,sp,272
   174ea:	85d2                	mv	a1,s4
   174ec:	854e                	mv	a0,s3
   174ee:	181020ef          	jal	ra,19e6e <__ssprint_r>
   174f2:	ec051ae3          	bnez	a0,173c6 <_svfprintf_r+0x270>
   174f6:	835a                	mv	t1,s6
   174f8:	bb3d                	j	17236 <_svfprintf_r+0xe0>
   174fa:	0084f793          	andi	a5,s1,8
   174fe:	1a079de3          	bnez	a5,17eb8 <_svfprintf_r+0xd62>
   17502:	67c2                	ld	a5,16(sp)
   17504:	ec1a                	sd	t1,24(sp)
   17506:	2388                	fld	fa0,0(a5)
   17508:	07a1                	addi	a5,a5,8
   1750a:	e83e                	sd	a5,16(sp)
   1750c:	641040ef          	jal	ra,1c34c <__extenddftf2>
   17510:	6362                	ld	t1,24(sp)
   17512:	87aa                	mv	a5,a0
   17514:	0208                	addi	a0,sp,256
   17516:	ec1a                	sd	t1,24(sp)
   17518:	e23e                	sd	a5,256(sp)
   1751a:	e62e                	sd	a1,264(sp)
   1751c:	de0fe0ef          	jal	ra,15afc <_ldcheck>
   17520:	d5aa                	sw	a0,232(sp)
   17522:	4789                	li	a5,2
   17524:	6362                	ld	t1,24(sp)
   17526:	58f50be3          	beq	a0,a5,182bc <_svfprintf_r+0x1166>
   1752a:	4785                	li	a5,1
   1752c:	00f51463          	bne	a0,a5,17534 <_svfprintf_r+0x3de>
   17530:	1300106f          	j	18660 <_svfprintf_r+0x150a>
   17534:	06100793          	li	a5,97
   17538:	6afd04e3          	beq	s10,a5,183e0 <_svfprintf_r+0x128a>
   1753c:	04100793          	li	a5,65
   17540:	05800713          	li	a4,88
   17544:	6afd00e3          	beq	s10,a5,183e4 <_svfprintf_r+0x128e>
   17548:	fdfd7713          	andi	a4,s10,-33
   1754c:	57fd                	li	a5,-1
   1754e:	ecba                	sd	a4,88(sp)
   17550:	00fc1463          	bne	s8,a5,17558 <_svfprintf_r+0x402>
   17554:	2180106f          	j	1876c <_svfprintf_r+0x1616>
   17558:	04700793          	li	a5,71
   1755c:	00f71463          	bne	a4,a5,17564 <_svfprintf_r+0x40e>
   17560:	4f80106f          	j	18a58 <_svfprintf_r+0x1902>
   17564:	6932                	ld	s2,264(sp)
   17566:	1004e793          	ori	a5,s1,256
   1756a:	f526                	sd	s1,168(sp)
   1756c:	6b92                	ld	s7,256(sp)
   1756e:	2781                	sext.w	a5,a5
   17570:	00095463          	bgez	s2,17578 <_svfprintf_r+0x422>
   17574:	7830006f          	j	184f6 <_svfprintf_r+0x13a0>
   17578:	e582                	sd	zero,200(sp)
   1757a:	84be                	mv	s1,a5
   1757c:	ec02                	sd	zero,24(sp)
   1757e:	6a70006f          	j	18424 <_svfprintf_r+0x12ce>
   17582:	0a10                	addi	a2,sp,272
   17584:	85d2                	mv	a1,s4
   17586:	854e                	mv	a0,s3
   17588:	f816                	sd	t0,48(sp)
   1758a:	0e5020ef          	jal	ra,19e6e <__ssprint_r>
   1758e:	5a051163          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17592:	7792                	ld	a5,288(sp)
   17594:	72c2                	ld	t0,48(sp)
   17596:	835a                	mv	t1,s6
   17598:	b361                	j	17320 <_svfprintf_r+0x1ca>
   1759a:	11812683          	lw	a3,280(sp)
   1759e:	00178d13          	addi	s10,a5,1
   175a2:	7782                	ld	a5,32(sp)
   175a4:	00168b9b          	addiw	s7,a3,1
   175a8:	4605                	li	a2,1
   175aa:	01933023          	sd	s9,0(t1)
   175ae:	86de                	mv	a3,s7
   175b0:	01030c13          	addi	s8,t1,16
   175b4:	7ef65a63          	bge	a2,a5,17da8 <_svfprintf_r+0xc52>
   175b8:	4605                	li	a2,1
   175ba:	10d12c23          	sw	a3,280(sp)
   175be:	00c33423          	sd	a2,8(t1)
   175c2:	f26a                	sd	s10,288(sp)
   175c4:	469d                	li	a3,7
   175c6:	0976c4e3          	blt	a3,s7,17e4e <_svfprintf_r+0xcf8>
   175ca:	77a6                	ld	a5,104(sp)
   175cc:	7746                	ld	a4,112(sp)
   175ce:	2b85                	addiw	s7,s7,1
   175d0:	9d3e                	add	s10,s10,a5
   175d2:	00ec3023          	sd	a4,0(s8)
   175d6:	00fc3423          	sd	a5,8(s8)
   175da:	f26a                	sd	s10,288(sp)
   175dc:	11712c23          	sw	s7,280(sp)
   175e0:	469d                	li	a3,7
   175e2:	0c41                	addi	s8,s8,16
   175e4:	0976c2e3          	blt	a3,s7,17e68 <_svfprintf_r+0xd12>
   175e8:	6512                	ld	a0,256(sp)
   175ea:	65b2                	ld	a1,264(sp)
   175ec:	4681                	li	a3,0
   175ee:	4601                	li	a2,0
   175f0:	3d7030ef          	jal	ra,1b1c6 <__eqtf2>
   175f4:	7782                	ld	a5,32(sp)
   175f6:	fff7869b          	addiw	a3,a5,-1
   175fa:	7e050063          	beqz	a0,17dda <_svfprintf_r+0xc84>
   175fe:	2b85                	addiw	s7,s7,1
   17600:	001c8813          	addi	a6,s9,1
   17604:	865e                	mv	a2,s7
   17606:	9d36                	add	s10,s10,a3
   17608:	010c3023          	sd	a6,0(s8)
   1760c:	00dc3423          	sd	a3,8(s8)
   17610:	f26a                	sd	s10,288(sp)
   17612:	10c12c23          	sw	a2,280(sp)
   17616:	469d                	li	a3,7
   17618:	0c41                	addi	s8,s8,16
   1761a:	7b76c363          	blt	a3,s7,17dc0 <_svfprintf_r+0xc6a>
   1761e:	7766                	ld	a4,120(sp)
   17620:	1994                	addi	a3,sp,240
   17622:	001b861b          	addiw	a2,s7,1
   17626:	01a707b3          	add	a5,a4,s10
   1762a:	00dc3023          	sd	a3,0(s8)
   1762e:	00ec3423          	sd	a4,8(s8)
   17632:	f23e                	sd	a5,288(sp)
   17634:	10c12c23          	sw	a2,280(sp)
   17638:	469d                	li	a3,7
   1763a:	010c0313          	addi	t1,s8,16
   1763e:	d4c6d3e3          	bge	a3,a2,17384 <_svfprintf_r+0x22e>
   17642:	0a10                	addi	a2,sp,272
   17644:	85d2                	mv	a1,s4
   17646:	854e                	mv	a0,s3
   17648:	027020ef          	jal	ra,19e6e <__ssprint_r>
   1764c:	4e051263          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17650:	7792                	ld	a5,288(sp)
   17652:	835a                	mv	t1,s6
   17654:	bb05                	j	17384 <_svfprintf_r+0x22e>
   17656:	0104f793          	andi	a5,s1,16
   1765a:	04079ae3          	bnez	a5,17eae <_svfprintf_r+0xd58>
   1765e:	66c2                	ld	a3,16(sp)
   17660:	0404f793          	andi	a5,s1,64
   17664:	0006a903          	lw	s2,0(a3)
   17668:	52078fe3          	beqz	a5,183a6 <_svfprintf_r+0x1250>
   1766c:	1942                	slli	s2,s2,0x30
   1766e:	03095913          	srli	s2,s2,0x30
   17672:	b51d                	j	17498 <_svfprintf_r+0x342>
   17674:	0104f793          	andi	a5,s1,16
   17678:	020796e3          	bnez	a5,17ea4 <_svfprintf_r+0xd4e>
   1767c:	66c2                	ld	a3,16(sp)
   1767e:	0404f793          	andi	a5,s1,64
   17682:	0006a903          	lw	s2,0(a3)
   17686:	520788e3          	beqz	a5,183b6 <_svfprintf_r+0x1260>
   1768a:	0109191b          	slliw	s2,s2,0x10
   1768e:	4109591b          	sraiw	s2,s2,0x10
   17692:	87ca                	mv	a5,s2
   17694:	da07d2e3          	bgez	a5,17438 <_svfprintf_r+0x2e2>
   17698:	e83a                	sd	a4,16(sp)
   1769a:	02d00713          	li	a4,45
   1769e:	0ce10fa3          	sb	a4,223(sp)
   176a2:	577d                	li	a4,-1
   176a4:	41200933          	neg	s2,s2
   176a8:	8da6                	mv	s11,s1
   176aa:	4785                	li	a5,1
   176ac:	e0ec11e3          	bne	s8,a4,174ae <_svfprintf_r+0x358>
   176b0:	4705                	li	a4,1
   176b2:	d8e78ce3          	beq	a5,a4,1744a <_svfprintf_r+0x2f4>
   176b6:	4709                	li	a4,2
   176b8:	32e78663          	beq	a5,a4,179e4 <_svfprintf_r+0x88e>
   176bc:	18c10b93          	addi	s7,sp,396
   176c0:	8cde                	mv	s9,s7
   176c2:	00797793          	andi	a5,s2,7
   176c6:	03078793          	addi	a5,a5,48
   176ca:	fefc8fa3          	sb	a5,-1(s9)
   176ce:	00395913          	srli	s2,s2,0x3
   176d2:	8766                	mv	a4,s9
   176d4:	1cfd                	addi	s9,s9,-1
   176d6:	fe0916e3          	bnez	s2,176c2 <_svfprintf_r+0x56c>
   176da:	001df693          	andi	a3,s11,1
   176de:	32068363          	beqz	a3,17a04 <_svfprintf_r+0x8ae>
   176e2:	03000693          	li	a3,48
   176e6:	30d78f63          	beq	a5,a3,17a04 <_svfprintf_r+0x8ae>
   176ea:	1779                	addi	a4,a4,-2
   176ec:	fedc8fa3          	sb	a3,-1(s9)
   176f0:	40eb8bbb          	subw	s7,s7,a4
   176f4:	84ee                	mv	s1,s11
   176f6:	8cba                	mv	s9,a4
   176f8:	b3a5                	j	17460 <_svfprintf_r+0x30a>
   176fa:	6742                	ld	a4,16(sp)
   176fc:	0c010fa3          	sb	zero,223(sp)
   17700:	4905                	li	s2,1
   17702:	431c                	lw	a5,0(a4)
   17704:	0721                	addi	a4,a4,8
   17706:	e83a                	sd	a4,16(sp)
   17708:	12f10423          	sb	a5,296(sp)
   1770c:	4b85                	li	s7,1
   1770e:	12810c93          	addi	s9,sp,296
   17712:	be6d                	j	172cc <_svfprintf_r+0x176>
   17714:	67c2                	ld	a5,16(sp)
   17716:	0c010fa3          	sb	zero,223(sp)
   1771a:	0007bc83          	ld	s9,0(a5)
   1771e:	00878d93          	addi	s11,a5,8
   17722:	3c0c8de3          	beqz	s9,182fc <_svfprintf_r+0x11a6>
   17726:	57fd                	li	a5,-1
   17728:	0afc01e3          	beq	s8,a5,17fca <_svfprintf_r+0xe74>
   1772c:	8662                	mv	a2,s8
   1772e:	4581                	li	a1,0
   17730:	8566                	mv	a0,s9
   17732:	e81a                	sd	t1,16(sp)
   17734:	e48f90ef          	jal	ra,10d7c <memchr>
   17738:	ec2a                	sd	a0,24(sp)
   1773a:	6342                	ld	t1,16(sp)
   1773c:	e119                	bnez	a0,17742 <_svfprintf_r+0x5ec>
   1773e:	1f60106f          	j	18934 <_svfprintf_r+0x17de>
   17742:	67e2                	ld	a5,24(sp)
   17744:	e86e                	sd	s11,16(sp)
   17746:	ec02                	sd	zero,24(sp)
   17748:	41978bbb          	subw	s7,a5,s9
   1774c:	0df14783          	lbu	a5,223(sp)
   17750:	fffbc913          	not	s2,s7
   17754:	43f95913          	srai	s2,s2,0x3f
   17758:	e882                	sd	zero,80(sp)
   1775a:	ec82                	sd	zero,88(sp)
   1775c:	e482                	sd	zero,72(sp)
   1775e:	01797933          	and	s2,s2,s7
   17762:	4c01                	li	s8,0
   17764:	d0079ce3          	bnez	a5,1747c <_svfprintf_r+0x326>
   17768:	b6bd                	j	172d6 <_svfprintf_r+0x180>
   1776a:	67c2                	ld	a5,16(sp)
   1776c:	0007aa83          	lw	s5,0(a5)
   17770:	07a1                	addi	a5,a5,8
   17772:	700add63          	bgez	s5,17e8c <_svfprintf_r+0xd36>
   17776:	41500abb          	negw	s5,s5
   1777a:	e83e                	sd	a5,16(sp)
   1777c:	0044e493          	ori	s1,s1,4
   17780:	00044e03          	lbu	t3,0(s0)
   17784:	2481                	sext.w	s1,s1
   17786:	bce9                	j	17260 <_svfprintf_r+0x10a>
   17788:	0104ed93          	ori	s11,s1,16
   1778c:	2d81                	sext.w	s11,s11
   1778e:	66c2                	ld	a3,16(sp)
   17790:	020df793          	andi	a5,s11,32
   17794:	00868713          	addi	a4,a3,8
   17798:	68078a63          	beqz	a5,17e2c <_svfprintf_r+0xcd6>
   1779c:	0006b903          	ld	s2,0(a3)
   177a0:	4785                	li	a5,1
   177a2:	e83a                	sd	a4,16(sp)
   177a4:	b9fd                	j	174a2 <_svfprintf_r+0x34c>
   177a6:	02b00793          	li	a5,43
   177aa:	00044e03          	lbu	t3,0(s0)
   177ae:	0cf10fa3          	sb	a5,223(sp)
   177b2:	b47d                	j	17260 <_svfprintf_r+0x10a>
   177b4:	0204e493          	ori	s1,s1,32
   177b8:	00044e03          	lbu	t3,0(s0)
   177bc:	2481                	sext.w	s1,s1
   177be:	b44d                	j	17260 <_svfprintf_r+0x10a>
   177c0:	6742                	ld	a4,16(sp)
   177c2:	77e1                	lui	a5,0xffff8
   177c4:	8307c793          	xori	a5,a5,-2000
   177c8:	0ef11023          	sh	a5,224(sp)
   177cc:	00870793          	addi	a5,a4,8
   177d0:	e83e                	sd	a5,16(sp)
   177d2:	67f1                	lui	a5,0x1c
   177d4:	72878793          	addi	a5,a5,1832 # 1c728 <__clzdi2+0xf8>
   177d8:	0024ed93          	ori	s11,s1,2
   177dc:	f43e                	sd	a5,40(sp)
   177de:	00073903          	ld	s2,0(a4)
   177e2:	2d81                	sext.w	s11,s11
   177e4:	4789                	li	a5,2
   177e6:	07800d13          	li	s10,120
   177ea:	b965                	j	174a2 <_svfprintf_r+0x34c>
   177ec:	66c2                	ld	a3,16(sp)
   177ee:	0204f793          	andi	a5,s1,32
   177f2:	6298                	ld	a4,0(a3)
   177f4:	06a1                	addi	a3,a3,8
   177f6:	e836                	sd	a3,16(sp)
   177f8:	e395                	bnez	a5,1781c <_svfprintf_r+0x6c6>
   177fa:	0104f793          	andi	a5,s1,16
   177fe:	ef99                	bnez	a5,1781c <_svfprintf_r+0x6c6>
   17800:	0404f793          	andi	a5,s1,64
   17804:	6e079fe3          	bnez	a5,18702 <_svfprintf_r+0x15ac>
   17808:	2004f493          	andi	s1,s1,512
   1780c:	67a2                	ld	a5,8(sp)
   1780e:	e099                	bnez	s1,17814 <_svfprintf_r+0x6be>
   17810:	25e0106f          	j	18a6e <_svfprintf_r+0x1918>
   17814:	00f70023          	sb	a5,0(a4)
   17818:	8ca2                	mv	s9,s0
   1781a:	be71                	j	173b6 <_svfprintf_r+0x260>
   1781c:	67a2                	ld	a5,8(sp)
   1781e:	8ca2                	mv	s9,s0
   17820:	e31c                	sd	a5,0(a4)
   17822:	be51                	j	173b6 <_svfprintf_r+0x260>
   17824:	00044e03          	lbu	t3,0(s0)
   17828:	06c00793          	li	a5,108
   1782c:	70fe0363          	beq	t3,a5,17f32 <_svfprintf_r+0xddc>
   17830:	0104e493          	ori	s1,s1,16
   17834:	2481                	sext.w	s1,s1
   17836:	b42d                	j	17260 <_svfprintf_r+0x10a>
   17838:	00044e03          	lbu	t3,0(s0)
   1783c:	06800793          	li	a5,104
   17840:	70fe0163          	beq	t3,a5,17f42 <_svfprintf_r+0xdec>
   17844:	0404e493          	ori	s1,s1,64
   17848:	2481                	sext.w	s1,s1
   1784a:	bc19                	j	17260 <_svfprintf_r+0x10a>
   1784c:	0084e493          	ori	s1,s1,8
   17850:	00044e03          	lbu	t3,0(s0)
   17854:	2481                	sext.w	s1,s1
   17856:	b429                	j	17260 <_svfprintf_r+0x10a>
   17858:	854e                	mv	a0,s3
   1785a:	ec1a                	sd	t1,24(sp)
   1785c:	ae8fe0ef          	jal	ra,15b44 <_localeconv_r>
   17860:	651c                	ld	a5,8(a0)
   17862:	853e                	mv	a0,a5
   17864:	e53e                	sd	a5,136(sp)
   17866:	b35f90ef          	jal	ra,1139a <strlen>
   1786a:	87aa                	mv	a5,a0
   1786c:	854e                	mv	a0,s3
   1786e:	8d3e                	mv	s10,a5
   17870:	e13e                	sd	a5,128(sp)
   17872:	ad2fe0ef          	jal	ra,15b44 <_localeconv_r>
   17876:	691c                	ld	a5,16(a0)
   17878:	6362                	ld	t1,24(sp)
   1787a:	00044e03          	lbu	t3,0(s0)
   1787e:	f0be                	sd	a5,96(sp)
   17880:	9e0d00e3          	beqz	s10,17260 <_svfprintf_r+0x10a>
   17884:	9c078ee3          	beqz	a5,17260 <_svfprintf_r+0x10a>
   17888:	0007c783          	lbu	a5,0(a5)
   1788c:	9c078ae3          	beqz	a5,17260 <_svfprintf_r+0x10a>
   17890:	4004e493          	ori	s1,s1,1024
   17894:	2481                	sext.w	s1,s1
   17896:	b2e9                	j	17260 <_svfprintf_r+0x10a>
   17898:	0014e493          	ori	s1,s1,1
   1789c:	00044e03          	lbu	t3,0(s0)
   178a0:	2481                	sext.w	s1,s1
   178a2:	ba7d                	j	17260 <_svfprintf_r+0x10a>
   178a4:	0df14783          	lbu	a5,223(sp)
   178a8:	00044e03          	lbu	t3,0(s0)
   178ac:	9a079ae3          	bnez	a5,17260 <_svfprintf_r+0x10a>
   178b0:	02000793          	li	a5,32
   178b4:	0cf10fa3          	sb	a5,223(sp)
   178b8:	b265                	j	17260 <_svfprintf_r+0x10a>
   178ba:	0804e493          	ori	s1,s1,128
   178be:	00044e03          	lbu	t3,0(s0)
   178c2:	2481                	sext.w	s1,s1
   178c4:	ba71                	j	17260 <_svfprintf_r+0x10a>
   178c6:	00044d03          	lbu	s10,0(s0)
   178ca:	00140793          	addi	a5,s0,1
   178ce:	00dd1463          	bne	s10,a3,178d6 <_svfprintf_r+0x780>
   178d2:	2620106f          	j	18b34 <_svfprintf_r+0x19de>
   178d6:	fd0d071b          	addiw	a4,s10,-48
   178da:	843e                	mv	s0,a5
   178dc:	4c01                	li	s8,0
   178de:	98ede6e3          	bltu	s11,a4,1726a <_svfprintf_r+0x114>
   178e2:	00044d03          	lbu	s10,0(s0)
   178e6:	002c179b          	slliw	a5,s8,0x2
   178ea:	018787bb          	addw	a5,a5,s8
   178ee:	0017979b          	slliw	a5,a5,0x1
   178f2:	00e78c3b          	addw	s8,a5,a4
   178f6:	fd0d071b          	addiw	a4,s10,-48
   178fa:	0405                	addi	s0,s0,1
   178fc:	feedf3e3          	bgeu	s11,a4,178e2 <_svfprintf_r+0x78c>
   17900:	b2ad                	j	1726a <_svfprintf_r+0x114>
   17902:	06500713          	li	a4,101
   17906:	c9a75ae3          	bge	a4,s10,1759a <_svfprintf_r+0x444>
   1790a:	6512                	ld	a0,256(sp)
   1790c:	65b2                	ld	a1,264(sp)
   1790e:	4601                	li	a2,0
   17910:	4681                	li	a3,0
   17912:	fc3e                	sd	a5,56(sp)
   17914:	f81a                	sd	t1,48(sp)
   17916:	0b1030ef          	jal	ra,1b1c6 <__eqtf2>
   1791a:	7342                	ld	t1,48(sp)
   1791c:	77e2                	ld	a5,56(sp)
   1791e:	34051863          	bnez	a0,17c6e <_svfprintf_r+0xb18>
   17922:	11812703          	lw	a4,280(sp)
   17926:	66f1                	lui	a3,0x1c
   17928:	76068693          	addi	a3,a3,1888 # 1c760 <__clzdi2+0x130>
   1792c:	2705                	addiw	a4,a4,1
   1792e:	00d33023          	sd	a3,0(t1)
   17932:	0785                	addi	a5,a5,1
   17934:	4685                	li	a3,1
   17936:	00d33423          	sd	a3,8(t1)
   1793a:	10e12c23          	sw	a4,280(sp)
   1793e:	0007069b          	sext.w	a3,a4
   17942:	f23e                	sd	a5,288(sp)
   17944:	471d                	li	a4,7
   17946:	0341                	addi	t1,t1,16
   17948:	12d746e3          	blt	a4,a3,18274 <_svfprintf_r+0x111e>
   1794c:	572e                	lw	a4,232(sp)
   1794e:	7682                	ld	a3,32(sp)
   17950:	52d75963          	bge	a4,a3,17e82 <_svfprintf_r+0xd2c>
   17954:	76a6                	ld	a3,104(sp)
   17956:	11812703          	lw	a4,280(sp)
   1795a:	7646                	ld	a2,112(sp)
   1795c:	97b6                	add	a5,a5,a3
   1795e:	2705                	addiw	a4,a4,1
   17960:	00d33423          	sd	a3,8(t1)
   17964:	00c33023          	sd	a2,0(t1)
   17968:	0007069b          	sext.w	a3,a4
   1796c:	10e12c23          	sw	a4,280(sp)
   17970:	f23e                	sd	a5,288(sp)
   17972:	471d                	li	a4,7
   17974:	0341                	addi	t1,t1,16
   17976:	5ad74463          	blt	a4,a3,17f1e <_svfprintf_r+0xdc8>
   1797a:	7702                	ld	a4,32(sp)
   1797c:	fff70b9b          	addiw	s7,a4,-1
   17980:	a17052e3          	blez	s7,17384 <_svfprintf_r+0x22e>
   17984:	68f5                	lui	a7,0x1d
   17986:	46c1                	li	a3,16
   17988:	11812703          	lw	a4,280(sp)
   1798c:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   17990:	4cc1                	li	s9,16
   17992:	4c1d                	li	s8,7
   17994:	0176c763          	blt	a3,s7,179a2 <_svfprintf_r+0x84c>
   17998:	0f30006f          	j	1828a <_svfprintf_r+0x1134>
   1799c:	3bc1                	addiw	s7,s7,-16
   1799e:	0f7cd6e3          	bge	s9,s7,1828a <_svfprintf_r+0x1134>
   179a2:	2705                	addiw	a4,a4,1
   179a4:	07c1                	addi	a5,a5,16
   179a6:	01b33023          	sd	s11,0(t1)
   179aa:	01933423          	sd	s9,8(t1)
   179ae:	f23e                	sd	a5,288(sp)
   179b0:	10e12c23          	sw	a4,280(sp)
   179b4:	0341                	addi	t1,t1,16
   179b6:	feec53e3          	bge	s8,a4,1799c <_svfprintf_r+0x846>
   179ba:	0a10                	addi	a2,sp,272
   179bc:	85d2                	mv	a1,s4
   179be:	854e                	mv	a0,s3
   179c0:	4ae020ef          	jal	ra,19e6e <__ssprint_r>
   179c4:	16051663          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   179c8:	7792                	ld	a5,288(sp)
   179ca:	11812703          	lw	a4,280(sp)
   179ce:	835a                	mv	t1,s6
   179d0:	b7f1                	j	1799c <_svfprintf_r+0x846>
   179d2:	4705                	li	a4,1
   179d4:	00e79463          	bne	a5,a4,179dc <_svfprintf_r+0x886>
   179d8:	0160106f          	j	189ee <_svfprintf_r+0x1898>
   179dc:	4709                	li	a4,2
   179de:	8da6                	mv	s11,s1
   179e0:	cce79ee3          	bne	a5,a4,176bc <_svfprintf_r+0x566>
   179e4:	18c10b93          	addi	s7,sp,396
   179e8:	8cde                	mv	s9,s7
   179ea:	7722                	ld	a4,40(sp)
   179ec:	00f97793          	andi	a5,s2,15
   179f0:	1cfd                	addi	s9,s9,-1
   179f2:	97ba                	add	a5,a5,a4
   179f4:	0007c783          	lbu	a5,0(a5)
   179f8:	00495913          	srli	s2,s2,0x4
   179fc:	00fc8023          	sb	a5,0(s9)
   17a00:	fe0915e3          	bnez	s2,179ea <_svfprintf_r+0x894>
   17a04:	419b8bbb          	subw	s7,s7,s9
   17a08:	84ee                	mv	s1,s11
   17a0a:	bc99                	j	17460 <_svfprintf_r+0x30a>
   17a0c:	412a86bb          	subw	a3,s5,s2
   17a10:	94d051e3          	blez	a3,17352 <_svfprintf_r+0x1fc>
   17a14:	68f5                	lui	a7,0x1d
   17a16:	4641                	li	a2,16
   17a18:	11812703          	lw	a4,280(sp)
   17a1c:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   17a20:	4f41                	li	t5,16
   17a22:	4f9d                	li	t6,7
   17a24:	00d64663          	blt	a2,a3,17a30 <_svfprintf_r+0x8da>
   17a28:	a089                	j	17a6a <_svfprintf_r+0x914>
   17a2a:	36c1                	addiw	a3,a3,-16
   17a2c:	02df5f63          	bge	t5,a3,17a6a <_svfprintf_r+0x914>
   17a30:	2705                	addiw	a4,a4,1
   17a32:	07c1                	addi	a5,a5,16
   17a34:	01b33023          	sd	s11,0(t1)
   17a38:	01e33423          	sd	t5,8(t1)
   17a3c:	f23e                	sd	a5,288(sp)
   17a3e:	10e12c23          	sw	a4,280(sp)
   17a42:	0341                	addi	t1,t1,16
   17a44:	feefd3e3          	bge	t6,a4,17a2a <_svfprintf_r+0x8d4>
   17a48:	0a10                	addi	a2,sp,272
   17a4a:	85d2                	mv	a1,s4
   17a4c:	854e                	mv	a0,s3
   17a4e:	f836                	sd	a3,48(sp)
   17a50:	41e020ef          	jal	ra,19e6e <__ssprint_r>
   17a54:	ed71                	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17a56:	76c2                	ld	a3,48(sp)
   17a58:	4f41                	li	t5,16
   17a5a:	7792                	ld	a5,288(sp)
   17a5c:	36c1                	addiw	a3,a3,-16
   17a5e:	11812703          	lw	a4,280(sp)
   17a62:	835a                	mv	t1,s6
   17a64:	4f9d                	li	t6,7
   17a66:	fcdf45e3          	blt	t5,a3,17a30 <_svfprintf_r+0x8da>
   17a6a:	2705                	addiw	a4,a4,1
   17a6c:	97b6                	add	a5,a5,a3
   17a6e:	00d33423          	sd	a3,8(t1)
   17a72:	01b33023          	sd	s11,0(t1)
   17a76:	0007069b          	sext.w	a3,a4
   17a7a:	10e12c23          	sw	a4,280(sp)
   17a7e:	f23e                	sd	a5,288(sp)
   17a80:	471d                	li	a4,7
   17a82:	0341                	addi	t1,t1,16
   17a84:	8cd757e3          	bge	a4,a3,17352 <_svfprintf_r+0x1fc>
   17a88:	0a10                	addi	a2,sp,272
   17a8a:	85d2                	mv	a1,s4
   17a8c:	854e                	mv	a0,s3
   17a8e:	3e0020ef          	jal	ra,19e6e <__ssprint_r>
   17a92:	ed59                	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17a94:	417c0c3b          	subw	s8,s8,s7
   17a98:	7792                	ld	a5,288(sp)
   17a9a:	835a                	mv	t1,s6
   17a9c:	8b805fe3          	blez	s8,1735a <_svfprintf_r+0x204>
   17aa0:	68f5                	lui	a7,0x1d
   17aa2:	4641                	li	a2,16
   17aa4:	11812703          	lw	a4,280(sp)
   17aa8:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   17aac:	4ec1                	li	t4,16
   17aae:	4f1d                	li	t5,7
   17ab0:	01864663          	blt	a2,s8,17abc <_svfprintf_r+0x966>
   17ab4:	a83d                	j	17af2 <_svfprintf_r+0x99c>
   17ab6:	3c41                	addiw	s8,s8,-16
   17ab8:	038edd63          	bge	t4,s8,17af2 <_svfprintf_r+0x99c>
   17abc:	2705                	addiw	a4,a4,1
   17abe:	07c1                	addi	a5,a5,16
   17ac0:	01b33023          	sd	s11,0(t1)
   17ac4:	01d33423          	sd	t4,8(t1)
   17ac8:	f23e                	sd	a5,288(sp)
   17aca:	10e12c23          	sw	a4,280(sp)
   17ace:	0341                	addi	t1,t1,16
   17ad0:	feef53e3          	bge	t5,a4,17ab6 <_svfprintf_r+0x960>
   17ad4:	0a10                	addi	a2,sp,272
   17ad6:	85d2                	mv	a1,s4
   17ad8:	854e                	mv	a0,s3
   17ada:	394020ef          	jal	ra,19e6e <__ssprint_r>
   17ade:	e929                	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17ae0:	4ec1                	li	t4,16
   17ae2:	3c41                	addiw	s8,s8,-16
   17ae4:	7792                	ld	a5,288(sp)
   17ae6:	11812703          	lw	a4,280(sp)
   17aea:	835a                	mv	t1,s6
   17aec:	4f1d                	li	t5,7
   17aee:	fd8ec7e3          	blt	t4,s8,17abc <_svfprintf_r+0x966>
   17af2:	0017069b          	addiw	a3,a4,1
   17af6:	97e2                	add	a5,a5,s8
   17af8:	01b33023          	sd	s11,0(t1)
   17afc:	01833423          	sd	s8,8(t1)
   17b00:	f23e                	sd	a5,288(sp)
   17b02:	10d12c23          	sw	a3,280(sp)
   17b06:	471d                	li	a4,7
   17b08:	0341                	addi	t1,t1,16
   17b0a:	84d758e3          	bge	a4,a3,1735a <_svfprintf_r+0x204>
   17b0e:	0a10                	addi	a2,sp,272
   17b10:	85d2                	mv	a1,s4
   17b12:	854e                	mv	a0,s3
   17b14:	35a020ef          	jal	ra,19e6e <__ssprint_r>
   17b18:	ed01                	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17b1a:	7792                	ld	a5,288(sp)
   17b1c:	835a                	mv	t1,s6
   17b1e:	83dff06f          	j	1735a <_svfprintf_r+0x204>
   17b22:	0a10                	addi	a2,sp,272
   17b24:	85d2                	mv	a1,s4
   17b26:	854e                	mv	a0,s3
   17b28:	346020ef          	jal	ra,19e6e <__ssprint_r>
   17b2c:	86050be3          	beqz	a0,173a2 <_svfprintf_r+0x24c>
   17b30:	67e2                	ld	a5,24(sp)
   17b32:	88078ae3          	beqz	a5,173c6 <_svfprintf_r+0x270>
   17b36:	85be                	mv	a1,a5
   17b38:	854e                	mv	a0,s3
   17b3a:	a37fb0ef          	jal	ra,13570 <_free_r>
   17b3e:	b061                	j	173c6 <_svfprintf_r+0x270>
   17b40:	8da6                	mv	s11,s1
   17b42:	b6bd                	j	176b0 <_svfprintf_r+0x55a>
   17b44:	68f5                	lui	a7,0x1d
   17b46:	4641                	li	a2,16
   17b48:	11812703          	lw	a4,280(sp)
   17b4c:	06088893          	addi	a7,a7,96 # 1d060 <blanks.1>
   17b50:	4f41                	li	t5,16
   17b52:	439d                	li	t2,7
   17b54:	00d64663          	blt	a2,a3,17b60 <_svfprintf_r+0xa0a>
   17b58:	a0a9                	j	17ba2 <_svfprintf_r+0xa4c>
   17b5a:	36c1                	addiw	a3,a3,-16
   17b5c:	04df5363          	bge	t5,a3,17ba2 <_svfprintf_r+0xa4c>
   17b60:	2705                	addiw	a4,a4,1
   17b62:	07c1                	addi	a5,a5,16
   17b64:	01133023          	sd	a7,0(t1)
   17b68:	01e33423          	sd	t5,8(t1)
   17b6c:	f23e                	sd	a5,288(sp)
   17b6e:	10e12c23          	sw	a4,280(sp)
   17b72:	0341                	addi	t1,t1,16
   17b74:	fee3d3e3          	bge	t2,a4,17b5a <_svfprintf_r+0xa04>
   17b78:	0a10                	addi	a2,sp,272
   17b7a:	85d2                	mv	a1,s4
   17b7c:	854e                	mv	a0,s3
   17b7e:	e0c6                	sd	a7,64(sp)
   17b80:	fc36                	sd	a3,56(sp)
   17b82:	f816                	sd	t0,48(sp)
   17b84:	2ea020ef          	jal	ra,19e6e <__ssprint_r>
   17b88:	f545                	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17b8a:	76e2                	ld	a3,56(sp)
   17b8c:	4f41                	li	t5,16
   17b8e:	7792                	ld	a5,288(sp)
   17b90:	36c1                	addiw	a3,a3,-16
   17b92:	11812703          	lw	a4,280(sp)
   17b96:	6886                	ld	a7,64(sp)
   17b98:	72c2                	ld	t0,48(sp)
   17b9a:	835a                	mv	t1,s6
   17b9c:	439d                	li	t2,7
   17b9e:	fcdf41e3          	blt	t5,a3,17b60 <_svfprintf_r+0xa0a>
   17ba2:	2705                	addiw	a4,a4,1
   17ba4:	97b6                	add	a5,a5,a3
   17ba6:	00d33423          	sd	a3,8(t1)
   17baa:	01133023          	sd	a7,0(t1)
   17bae:	0007069b          	sext.w	a3,a4
   17bb2:	10e12c23          	sw	a4,280(sp)
   17bb6:	f23e                	sd	a5,288(sp)
   17bb8:	471d                	li	a4,7
   17bba:	0341                	addi	t1,t1,16
   17bbc:	f2d75b63          	bge	a4,a3,172f2 <_svfprintf_r+0x19c>
   17bc0:	0a10                	addi	a2,sp,272
   17bc2:	85d2                	mv	a1,s4
   17bc4:	854e                	mv	a0,s3
   17bc6:	f816                	sd	t0,48(sp)
   17bc8:	2a6020ef          	jal	ra,19e6e <__ssprint_r>
   17bcc:	f135                	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17bce:	7792                	ld	a5,288(sp)
   17bd0:	72c2                	ld	t0,48(sp)
   17bd2:	835a                	mv	t1,s6
   17bd4:	f1eff06f          	j	172f2 <_svfprintf_r+0x19c>
   17bd8:	0a10                	addi	a2,sp,272
   17bda:	85d2                	mv	a1,s4
   17bdc:	854e                	mv	a0,s3
   17bde:	290020ef          	jal	ra,19e6e <__ssprint_r>
   17be2:	f539                	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17be4:	7792                	ld	a5,288(sp)
   17be6:	835a                	mv	t1,s6
   17be8:	f62ff06f          	j	1734a <_svfprintf_r+0x1f4>
   17bec:	68f5                	lui	a7,0x1d
   17bee:	46c1                	li	a3,16
   17bf0:	11812703          	lw	a4,280(sp)
   17bf4:	06088893          	addi	a7,a7,96 # 1d060 <blanks.1>
   17bf8:	4bc1                	li	s7,16
   17bfa:	4c1d                	li	s8,7
   17bfc:	0096c663          	blt	a3,s1,17c08 <_svfprintf_r+0xab2>
   17c00:	a081                	j	17c40 <_svfprintf_r+0xaea>
   17c02:	34c1                	addiw	s1,s1,-16
   17c04:	029bde63          	bge	s7,s1,17c40 <_svfprintf_r+0xaea>
   17c08:	2705                	addiw	a4,a4,1
   17c0a:	07c1                	addi	a5,a5,16
   17c0c:	01133023          	sd	a7,0(t1)
   17c10:	01733423          	sd	s7,8(t1)
   17c14:	f23e                	sd	a5,288(sp)
   17c16:	10e12c23          	sw	a4,280(sp)
   17c1a:	0341                	addi	t1,t1,16
   17c1c:	feec53e3          	bge	s8,a4,17c02 <_svfprintf_r+0xaac>
   17c20:	0a10                	addi	a2,sp,272
   17c22:	85d2                	mv	a1,s4
   17c24:	854e                	mv	a0,s3
   17c26:	f846                	sd	a7,48(sp)
   17c28:	246020ef          	jal	ra,19e6e <__ssprint_r>
   17c2c:	f00512e3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17c30:	34c1                	addiw	s1,s1,-16
   17c32:	7792                	ld	a5,288(sp)
   17c34:	11812703          	lw	a4,280(sp)
   17c38:	78c2                	ld	a7,48(sp)
   17c3a:	835a                	mv	t1,s6
   17c3c:	fc9bc6e3          	blt	s7,s1,17c08 <_svfprintf_r+0xab2>
   17c40:	0017069b          	addiw	a3,a4,1
   17c44:	97a6                	add	a5,a5,s1
   17c46:	01133023          	sd	a7,0(t1)
   17c4a:	00933423          	sd	s1,8(t1)
   17c4e:	f23e                	sd	a5,288(sp)
   17c50:	10d12c23          	sw	a3,280(sp)
   17c54:	471d                	li	a4,7
   17c56:	f2d75d63          	bge	a4,a3,17390 <_svfprintf_r+0x23a>
   17c5a:	0a10                	addi	a2,sp,272
   17c5c:	85d2                	mv	a1,s4
   17c5e:	854e                	mv	a0,s3
   17c60:	20e020ef          	jal	ra,19e6e <__ssprint_r>
   17c64:	ec0516e3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17c68:	7792                	ld	a5,288(sp)
   17c6a:	f26ff06f          	j	17390 <_svfprintf_r+0x23a>
   17c6e:	562e                	lw	a2,232(sp)
   17c70:	54c05863          	blez	a2,181c0 <_svfprintf_r+0x106a>
   17c74:	6726                	ld	a4,72(sp)
   17c76:	7682                	ld	a3,32(sp)
   17c78:	00070b9b          	sext.w	s7,a4
   17c7c:	24e6c863          	blt	a3,a4,17ecc <_svfprintf_r+0xd76>
   17c80:	03705263          	blez	s7,17ca4 <_svfprintf_r+0xb4e>
   17c84:	11812703          	lw	a4,280(sp)
   17c88:	97de                	add	a5,a5,s7
   17c8a:	01933023          	sd	s9,0(t1)
   17c8e:	0017069b          	addiw	a3,a4,1
   17c92:	01733423          	sd	s7,8(t1)
   17c96:	f23e                	sd	a5,288(sp)
   17c98:	10d12c23          	sw	a3,280(sp)
   17c9c:	471d                	li	a4,7
   17c9e:	0341                	addi	t1,t1,16
   17ca0:	20d74ae3          	blt	a4,a3,186b4 <_svfprintf_r+0x155e>
   17ca4:	fffbc713          	not	a4,s7
   17ca8:	977d                	srai	a4,a4,0x3f
   17caa:	00ebfbb3          	and	s7,s7,a4
   17cae:	6726                	ld	a4,72(sp)
   17cb0:	41770bbb          	subw	s7,a4,s7
   17cb4:	2d704563          	bgtz	s7,17f7e <_svfprintf_r+0xe28>
   17cb8:	66a6                	ld	a3,72(sp)
   17cba:	4004f713          	andi	a4,s1,1024
   17cbe:	00dc8c33          	add	s8,s9,a3
   17cc2:	32071d63          	bnez	a4,17ffc <_svfprintf_r+0xea6>
   17cc6:	572e                	lw	a4,232(sp)
   17cc8:	7682                	ld	a3,32(sp)
   17cca:	00d74663          	blt	a4,a3,17cd6 <_svfprintf_r+0xb80>
   17cce:	0014f693          	andi	a3,s1,1
   17cd2:	1e068ee3          	beqz	a3,186ce <_svfprintf_r+0x1578>
   17cd6:	7626                	ld	a2,104(sp)
   17cd8:	11812683          	lw	a3,280(sp)
   17cdc:	75c6                	ld	a1,112(sp)
   17cde:	97b2                	add	a5,a5,a2
   17ce0:	2685                	addiw	a3,a3,1
   17ce2:	00c33423          	sd	a2,8(t1)
   17ce6:	00b33023          	sd	a1,0(t1)
   17cea:	0006861b          	sext.w	a2,a3
   17cee:	10d12c23          	sw	a3,280(sp)
   17cf2:	f23e                	sd	a5,288(sp)
   17cf4:	469d                	li	a3,7
   17cf6:	0341                	addi	t1,t1,16
   17cf8:	42c6c2e3          	blt	a3,a2,1891c <_svfprintf_r+0x17c6>
   17cfc:	7682                	ld	a3,32(sp)
   17cfe:	00dc8833          	add	a6,s9,a3
   17d02:	41880bb3          	sub	s7,a6,s8
   17d06:	9e99                	subw	a3,a3,a4
   17d08:	000b861b          	sext.w	a2,s7
   17d0c:	00c6d363          	bge	a3,a2,17d12 <_svfprintf_r+0xbbc>
   17d10:	8bb6                	mv	s7,a3
   17d12:	2b81                	sext.w	s7,s7
   17d14:	03705263          	blez	s7,17d38 <_svfprintf_r+0xbe2>
   17d18:	11812703          	lw	a4,280(sp)
   17d1c:	97de                	add	a5,a5,s7
   17d1e:	01833023          	sd	s8,0(t1)
   17d22:	0017061b          	addiw	a2,a4,1
   17d26:	01733423          	sd	s7,8(t1)
   17d2a:	f23e                	sd	a5,288(sp)
   17d2c:	10c12c23          	sw	a2,280(sp)
   17d30:	471d                	li	a4,7
   17d32:	0341                	addi	t1,t1,16
   17d34:	40c74ee3          	blt	a4,a2,18950 <_svfprintf_r+0x17fa>
   17d38:	fffbc713          	not	a4,s7
   17d3c:	977d                	srai	a4,a4,0x3f
   17d3e:	00ebfbb3          	and	s7,s7,a4
   17d42:	41768bbb          	subw	s7,a3,s7
   17d46:	e3705f63          	blez	s7,17384 <_svfprintf_r+0x22e>
   17d4a:	68f5                	lui	a7,0x1d
   17d4c:	46c1                	li	a3,16
   17d4e:	11812703          	lw	a4,280(sp)
   17d52:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   17d56:	4cc1                	li	s9,16
   17d58:	4c1d                	li	s8,7
   17d5a:	0176c663          	blt	a3,s7,17d66 <_svfprintf_r+0xc10>
   17d5e:	a335                	j	1828a <_svfprintf_r+0x1134>
   17d60:	3bc1                	addiw	s7,s7,-16
   17d62:	537cd463          	bge	s9,s7,1828a <_svfprintf_r+0x1134>
   17d66:	2705                	addiw	a4,a4,1
   17d68:	07c1                	addi	a5,a5,16
   17d6a:	01b33023          	sd	s11,0(t1)
   17d6e:	01933423          	sd	s9,8(t1)
   17d72:	f23e                	sd	a5,288(sp)
   17d74:	10e12c23          	sw	a4,280(sp)
   17d78:	0341                	addi	t1,t1,16
   17d7a:	feec53e3          	bge	s8,a4,17d60 <_svfprintf_r+0xc0a>
   17d7e:	0a10                	addi	a2,sp,272
   17d80:	85d2                	mv	a1,s4
   17d82:	854e                	mv	a0,s3
   17d84:	0ea020ef          	jal	ra,19e6e <__ssprint_r>
   17d88:	da0514e3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17d8c:	7792                	ld	a5,288(sp)
   17d8e:	11812703          	lw	a4,280(sp)
   17d92:	835a                	mv	t1,s6
   17d94:	b7f1                	j	17d60 <_svfprintf_r+0xc0a>
   17d96:	ea0c1d63          	bnez	s8,17450 <_svfprintf_r+0x2fa>
   17d9a:	84ee                	mv	s1,s11
   17d9c:	4c01                	li	s8,0
   17d9e:	4b81                	li	s7,0
   17da0:	18c10c93          	addi	s9,sp,396
   17da4:	ebcff06f          	j	17460 <_svfprintf_r+0x30a>
   17da8:	0014f593          	andi	a1,s1,1
   17dac:	800596e3          	bnez	a1,175b8 <_svfprintf_r+0x462>
   17db0:	00c33423          	sd	a2,8(t1)
   17db4:	f26a                	sd	s10,288(sp)
   17db6:	11712c23          	sw	s7,280(sp)
   17dba:	469d                	li	a3,7
   17dbc:	8776d1e3          	bge	a3,s7,1761e <_svfprintf_r+0x4c8>
   17dc0:	0a10                	addi	a2,sp,272
   17dc2:	85d2                	mv	a1,s4
   17dc4:	854e                	mv	a0,s3
   17dc6:	0a8020ef          	jal	ra,19e6e <__ssprint_r>
   17dca:	d60513e3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17dce:	7d12                	ld	s10,288(sp)
   17dd0:	11812b83          	lw	s7,280(sp)
   17dd4:	8c5a                	mv	s8,s6
   17dd6:	849ff06f          	j	1761e <_svfprintf_r+0x4c8>
   17dda:	84d052e3          	blez	a3,1761e <_svfprintf_r+0x4c8>
   17dde:	68f5                	lui	a7,0x1d
   17de0:	4641                	li	a2,16
   17de2:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   17de6:	4841                	li	a6,16
   17de8:	4c9d                	li	s9,7
   17dea:	00d64663          	blt	a2,a3,17df6 <_svfprintf_r+0xca0>
   17dee:	ab71                	j	1838a <_svfprintf_r+0x1234>
   17df0:	36c1                	addiw	a3,a3,-16
   17df2:	58d85c63          	bge	a6,a3,1838a <_svfprintf_r+0x1234>
   17df6:	2b85                	addiw	s7,s7,1
   17df8:	0d41                	addi	s10,s10,16
   17dfa:	01bc3023          	sd	s11,0(s8)
   17dfe:	010c3423          	sd	a6,8(s8)
   17e02:	f26a                	sd	s10,288(sp)
   17e04:	11712c23          	sw	s7,280(sp)
   17e08:	0c41                	addi	s8,s8,16
   17e0a:	ff7cd3e3          	bge	s9,s7,17df0 <_svfprintf_r+0xc9a>
   17e0e:	0a10                	addi	a2,sp,272
   17e10:	85d2                	mv	a1,s4
   17e12:	854e                	mv	a0,s3
   17e14:	f836                	sd	a3,48(sp)
   17e16:	058020ef          	jal	ra,19e6e <__ssprint_r>
   17e1a:	d0051be3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17e1e:	7d12                	ld	s10,288(sp)
   17e20:	11812b83          	lw	s7,280(sp)
   17e24:	76c2                	ld	a3,48(sp)
   17e26:	8c5a                	mv	s8,s6
   17e28:	4841                	li	a6,16
   17e2a:	b7d9                	j	17df0 <_svfprintf_r+0xc9a>
   17e2c:	010df793          	andi	a5,s11,16
   17e30:	e3bd                	bnez	a5,17e96 <_svfprintf_r+0xd40>
   17e32:	66c2                	ld	a3,16(sp)
   17e34:	040df793          	andi	a5,s11,64
   17e38:	0006a903          	lw	s2,0(a3)
   17e3c:	58078863          	beqz	a5,183cc <_svfprintf_r+0x1276>
   17e40:	1942                	slli	s2,s2,0x30
   17e42:	03095913          	srli	s2,s2,0x30
   17e46:	e83a                	sd	a4,16(sp)
   17e48:	4785                	li	a5,1
   17e4a:	e58ff06f          	j	174a2 <_svfprintf_r+0x34c>
   17e4e:	0a10                	addi	a2,sp,272
   17e50:	85d2                	mv	a1,s4
   17e52:	854e                	mv	a0,s3
   17e54:	01a020ef          	jal	ra,19e6e <__ssprint_r>
   17e58:	cc051ce3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17e5c:	7d12                	ld	s10,288(sp)
   17e5e:	11812b83          	lw	s7,280(sp)
   17e62:	8c5a                	mv	s8,s6
   17e64:	f66ff06f          	j	175ca <_svfprintf_r+0x474>
   17e68:	0a10                	addi	a2,sp,272
   17e6a:	85d2                	mv	a1,s4
   17e6c:	854e                	mv	a0,s3
   17e6e:	000020ef          	jal	ra,19e6e <__ssprint_r>
   17e72:	ca051fe3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17e76:	7d12                	ld	s10,288(sp)
   17e78:	11812b83          	lw	s7,280(sp)
   17e7c:	8c5a                	mv	s8,s6
   17e7e:	f6aff06f          	j	175e8 <_svfprintf_r+0x492>
   17e82:	0014f713          	andi	a4,s1,1
   17e86:	ce070f63          	beqz	a4,17384 <_svfprintf_r+0x22e>
   17e8a:	b4e9                	j	17954 <_svfprintf_r+0x7fe>
   17e8c:	00044e03          	lbu	t3,0(s0)
   17e90:	e83e                	sd	a5,16(sp)
   17e92:	bceff06f          	j	17260 <_svfprintf_r+0x10a>
   17e96:	67c2                	ld	a5,16(sp)
   17e98:	e83a                	sd	a4,16(sp)
   17e9a:	0007b903          	ld	s2,0(a5)
   17e9e:	4785                	li	a5,1
   17ea0:	e02ff06f          	j	174a2 <_svfprintf_r+0x34c>
   17ea4:	67c2                	ld	a5,16(sp)
   17ea6:	639c                	ld	a5,0(a5)
   17ea8:	893e                	mv	s2,a5
   17eaa:	d8aff06f          	j	17434 <_svfprintf_r+0x2de>
   17eae:	67c2                	ld	a5,16(sp)
   17eb0:	0007b903          	ld	s2,0(a5)
   17eb4:	de4ff06f          	j	17498 <_svfprintf_r+0x342>
   17eb8:	67c2                	ld	a5,16(sp)
   17eba:	07bd                	addi	a5,a5,15
   17ebc:	ff07f713          	andi	a4,a5,-16
   17ec0:	631c                	ld	a5,0(a4)
   17ec2:	670c                	ld	a1,8(a4)
   17ec4:	0741                	addi	a4,a4,16
   17ec6:	e83a                	sd	a4,16(sp)
   17ec8:	e4cff06f          	j	17514 <_svfprintf_r+0x3be>
   17ecc:	00068b9b          	sext.w	s7,a3
   17ed0:	db704ae3          	bgtz	s7,17c84 <_svfprintf_r+0xb2e>
   17ed4:	bbc1                	j	17ca4 <_svfprintf_r+0xb4e>
   17ed6:	67f1                	lui	a5,0x1c
   17ed8:	72878793          	addi	a5,a5,1832 # 1c728 <__clzdi2+0xf8>
   17edc:	f43e                	sd	a5,40(sp)
   17ede:	66c2                	ld	a3,16(sp)
   17ee0:	0204f793          	andi	a5,s1,32
   17ee4:	00868713          	addi	a4,a3,8
   17ee8:	22078a63          	beqz	a5,1811c <_svfprintf_r+0xfc6>
   17eec:	0006b903          	ld	s2,0(a3)
   17ef0:	0014f793          	andi	a5,s1,1
   17ef4:	cf81                	beqz	a5,17f0c <_svfprintf_r+0xdb6>
   17ef6:	00090b63          	beqz	s2,17f0c <_svfprintf_r+0xdb6>
   17efa:	0024e493          	ori	s1,s1,2
   17efe:	03000793          	li	a5,48
   17f02:	0ef10023          	sb	a5,224(sp)
   17f06:	0fa100a3          	sb	s10,225(sp)
   17f0a:	2481                	sext.w	s1,s1
   17f0c:	bff4fd93          	andi	s11,s1,-1025
   17f10:	2d81                	sext.w	s11,s11
   17f12:	e83a                	sd	a4,16(sp)
   17f14:	4789                	li	a5,2
   17f16:	d8cff06f          	j	174a2 <_svfprintf_r+0x34c>
   17f1a:	8da6                	mv	s11,s1
   17f1c:	b88d                	j	1778e <_svfprintf_r+0x638>
   17f1e:	0a10                	addi	a2,sp,272
   17f20:	85d2                	mv	a1,s4
   17f22:	854e                	mv	a0,s3
   17f24:	74b010ef          	jal	ra,19e6e <__ssprint_r>
   17f28:	c00514e3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17f2c:	7792                	ld	a5,288(sp)
   17f2e:	835a                	mv	t1,s6
   17f30:	b4a9                	j	1797a <_svfprintf_r+0x824>
   17f32:	0204e493          	ori	s1,s1,32
   17f36:	00144e03          	lbu	t3,1(s0)
   17f3a:	2481                	sext.w	s1,s1
   17f3c:	0405                	addi	s0,s0,1
   17f3e:	b22ff06f          	j	17260 <_svfprintf_r+0x10a>
   17f42:	2004e493          	ori	s1,s1,512
   17f46:	00144e03          	lbu	t3,1(s0)
   17f4a:	2481                	sext.w	s1,s1
   17f4c:	0405                	addi	s0,s0,1
   17f4e:	b12ff06f          	j	17260 <_svfprintf_r+0x10a>
   17f52:	67f1                	lui	a5,0x1c
   17f54:	74078793          	addi	a5,a5,1856 # 1c740 <__clzdi2+0x110>
   17f58:	f43e                	sd	a5,40(sp)
   17f5a:	b751                	j	17ede <_svfprintf_r+0xd88>
   17f5c:	04000593          	li	a1,64
   17f60:	854e                	mv	a0,s3
   17f62:	803f80ef          	jal	ra,10764 <_malloc_r>
   17f66:	00aa3023          	sd	a0,0(s4)
   17f6a:	00aa3c23          	sd	a0,24(s4)
   17f6e:	420503e3          	beqz	a0,18b94 <_svfprintf_r+0x1a3e>
   17f72:	04000793          	li	a5,64
   17f76:	02fa2023          	sw	a5,32(s4)
   17f7a:	a42ff06f          	j	171bc <_svfprintf_r+0x66>
   17f7e:	68f5                	lui	a7,0x1d
   17f80:	46c1                	li	a3,16
   17f82:	11812703          	lw	a4,280(sp)
   17f86:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   17f8a:	4d41                	li	s10,16
   17f8c:	4c1d                	li	s8,7
   17f8e:	0176c663          	blt	a3,s7,17f9a <_svfprintf_r+0xe44>
   17f92:	a5e5                	j	1867a <_svfprintf_r+0x1524>
   17f94:	3bc1                	addiw	s7,s7,-16
   17f96:	6f7d5263          	bge	s10,s7,1867a <_svfprintf_r+0x1524>
   17f9a:	2705                	addiw	a4,a4,1
   17f9c:	07c1                	addi	a5,a5,16
   17f9e:	01b33023          	sd	s11,0(t1)
   17fa2:	01a33423          	sd	s10,8(t1)
   17fa6:	f23e                	sd	a5,288(sp)
   17fa8:	10e12c23          	sw	a4,280(sp)
   17fac:	0341                	addi	t1,t1,16
   17fae:	feec53e3          	bge	s8,a4,17f94 <_svfprintf_r+0xe3e>
   17fb2:	0a10                	addi	a2,sp,272
   17fb4:	85d2                	mv	a1,s4
   17fb6:	854e                	mv	a0,s3
   17fb8:	6b7010ef          	jal	ra,19e6e <__ssprint_r>
   17fbc:	b6051ae3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   17fc0:	7792                	ld	a5,288(sp)
   17fc2:	11812703          	lw	a4,280(sp)
   17fc6:	835a                	mv	t1,s6
   17fc8:	b7f1                	j	17f94 <_svfprintf_r+0xe3e>
   17fca:	8566                	mv	a0,s9
   17fcc:	f81a                	sd	t1,48(sp)
   17fce:	bccf90ef          	jal	ra,1139a <strlen>
   17fd2:	00050b9b          	sext.w	s7,a0
   17fd6:	0df14783          	lbu	a5,223(sp)
   17fda:	fffbc913          	not	s2,s7
   17fde:	43f95913          	srai	s2,s2,0x3f
   17fe2:	e86e                	sd	s11,16(sp)
   17fe4:	ec02                	sd	zero,24(sp)
   17fe6:	e882                	sd	zero,80(sp)
   17fe8:	ec82                	sd	zero,88(sp)
   17fea:	e482                	sd	zero,72(sp)
   17fec:	7342                	ld	t1,48(sp)
   17fee:	01797933          	and	s2,s2,s7
   17ff2:	4c01                	li	s8,0
   17ff4:	c8079463          	bnez	a5,1747c <_svfprintf_r+0x326>
   17ff8:	adeff06f          	j	172d6 <_svfprintf_r+0x180>
   17ffc:	7702                	ld	a4,32(sp)
   17ffe:	6ef5                	lui	t4,0x1d
   18000:	4b9d                	li	s7,7
   18002:	9766                	add	a4,a4,s9
   18004:	fc3a                	sd	a4,56(sp)
   18006:	6766                	ld	a4,88(sp)
   18008:	4dc1                	li	s11,16
   1800a:	070e8d13          	addi	s10,t4,112 # 1d070 <zeroes.0>
   1800e:	cb49                	beqz	a4,180a0 <_svfprintf_r+0xf4a>
   18010:	6746                	ld	a4,80(sp)
   18012:	eb51                	bnez	a4,180a6 <_svfprintf_r+0xf50>
   18014:	7706                	ld	a4,96(sp)
   18016:	177d                	addi	a4,a4,-1
   18018:	f0ba                	sd	a4,96(sp)
   1801a:	6766                	ld	a4,88(sp)
   1801c:	377d                	addiw	a4,a4,-1
   1801e:	ecba                	sd	a4,88(sp)
   18020:	668a                	ld	a3,128(sp)
   18022:	11812703          	lw	a4,280(sp)
   18026:	662a                	ld	a2,136(sp)
   18028:	97b6                	add	a5,a5,a3
   1802a:	2705                	addiw	a4,a4,1
   1802c:	00d33423          	sd	a3,8(t1)
   18030:	00c33023          	sd	a2,0(t1)
   18034:	f23e                	sd	a5,288(sp)
   18036:	0007069b          	sext.w	a3,a4
   1803a:	10e12c23          	sw	a4,280(sp)
   1803e:	0341                	addi	t1,t1,16
   18040:	0edbc663          	blt	s7,a3,1812c <_svfprintf_r+0xfd6>
   18044:	7706                	ld	a4,96(sp)
   18046:	00074603          	lbu	a2,0(a4)
   1804a:	7762                	ld	a4,56(sp)
   1804c:	418706b3          	sub	a3,a4,s8
   18050:	0006859b          	sext.w	a1,a3
   18054:	0006071b          	sext.w	a4,a2
   18058:	00b65363          	bge	a2,a1,1805e <_svfprintf_r+0xf08>
   1805c:	86ba                	mv	a3,a4
   1805e:	2681                	sext.w	a3,a3
   18060:	02d05663          	blez	a3,1808c <_svfprintf_r+0xf36>
   18064:	11812703          	lw	a4,280(sp)
   18068:	97b6                	add	a5,a5,a3
   1806a:	01833023          	sd	s8,0(t1)
   1806e:	0017061b          	addiw	a2,a4,1
   18072:	00d33423          	sd	a3,8(t1)
   18076:	f23e                	sd	a5,288(sp)
   18078:	10c12c23          	sw	a2,280(sp)
   1807c:	20cbcf63          	blt	s7,a2,1829a <_svfprintf_r+0x1144>
   18080:	7706                	ld	a4,96(sp)
   18082:	0341                	addi	t1,t1,16
   18084:	00074603          	lbu	a2,0(a4)
   18088:	0006071b          	sext.w	a4,a2
   1808c:	fff6c593          	not	a1,a3
   18090:	95fd                	srai	a1,a1,0x3f
   18092:	8eed                	and	a3,a3,a1
   18094:	9f15                	subw	a4,a4,a3
   18096:	00e04c63          	bgtz	a4,180ae <_svfprintf_r+0xf58>
   1809a:	9c32                	add	s8,s8,a2
   1809c:	6766                	ld	a4,88(sp)
   1809e:	fb2d                	bnez	a4,18010 <_svfprintf_r+0xeba>
   180a0:	6746                	ld	a4,80(sp)
   180a2:	020702e3          	beqz	a4,188c6 <_svfprintf_r+0x1770>
   180a6:	6746                	ld	a4,80(sp)
   180a8:	377d                	addiw	a4,a4,-1
   180aa:	e8ba                	sd	a4,80(sp)
   180ac:	bf95                	j	18020 <_svfprintf_r+0xeca>
   180ae:	11812683          	lw	a3,280(sp)
   180b2:	00edc663          	blt	s11,a4,180be <_svfprintf_r+0xf68>
   180b6:	a081                	j	180f6 <_svfprintf_r+0xfa0>
   180b8:	3741                	addiw	a4,a4,-16
   180ba:	02edde63          	bge	s11,a4,180f6 <_svfprintf_r+0xfa0>
   180be:	2685                	addiw	a3,a3,1
   180c0:	07c1                	addi	a5,a5,16
   180c2:	01a33023          	sd	s10,0(t1)
   180c6:	01b33423          	sd	s11,8(t1)
   180ca:	f23e                	sd	a5,288(sp)
   180cc:	10d12c23          	sw	a3,280(sp)
   180d0:	0341                	addi	t1,t1,16
   180d2:	fedbd3e3          	bge	s7,a3,180b8 <_svfprintf_r+0xf62>
   180d6:	0a10                	addi	a2,sp,272
   180d8:	85d2                	mv	a1,s4
   180da:	854e                	mv	a0,s3
   180dc:	f83a                	sd	a4,48(sp)
   180de:	591010ef          	jal	ra,19e6e <__ssprint_r>
   180e2:	a40517e3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   180e6:	7742                	ld	a4,48(sp)
   180e8:	7792                	ld	a5,288(sp)
   180ea:	11812683          	lw	a3,280(sp)
   180ee:	3741                	addiw	a4,a4,-16
   180f0:	835a                	mv	t1,s6
   180f2:	fcedc6e3          	blt	s11,a4,180be <_svfprintf_r+0xf68>
   180f6:	2685                	addiw	a3,a3,1
   180f8:	97ba                	add	a5,a5,a4
   180fa:	00e33423          	sd	a4,8(t1)
   180fe:	01a33023          	sd	s10,0(t1)
   18102:	f23e                	sd	a5,288(sp)
   18104:	0006871b          	sext.w	a4,a3
   18108:	10d12c23          	sw	a3,280(sp)
   1810c:	7eebc463          	blt	s7,a4,188f4 <_svfprintf_r+0x179e>
   18110:	7706                	ld	a4,96(sp)
   18112:	0341                	addi	t1,t1,16
   18114:	00074603          	lbu	a2,0(a4)
   18118:	9c32                	add	s8,s8,a2
   1811a:	b749                	j	1809c <_svfprintf_r+0xf46>
   1811c:	0104f793          	andi	a5,s1,16
   18120:	12078b63          	beqz	a5,18256 <_svfprintf_r+0x1100>
   18124:	67c2                	ld	a5,16(sp)
   18126:	0007b903          	ld	s2,0(a5)
   1812a:	b3d9                	j	17ef0 <_svfprintf_r+0xd9a>
   1812c:	0a10                	addi	a2,sp,272
   1812e:	85d2                	mv	a1,s4
   18130:	854e                	mv	a0,s3
   18132:	53d010ef          	jal	ra,19e6e <__ssprint_r>
   18136:	9e051de3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   1813a:	7792                	ld	a5,288(sp)
   1813c:	835a                	mv	t1,s6
   1813e:	b719                	j	18044 <_svfprintf_r+0xeee>
   18140:	18c10b93          	addi	s7,sp,396
   18144:	400df713          	andi	a4,s11,1024
   18148:	f002                	sd	zero,32(sp)
   1814a:	865e                	mv	a2,s7
   1814c:	44a9                	li	s1,10
   1814e:	46a5                	li	a3,9
   18150:	0ff00893          	li	a7,255
   18154:	a039                	j	18162 <_svfprintf_r+0x100c>
   18156:	029957b3          	divu	a5,s2,s1
   1815a:	8b26f5e3          	bgeu	a3,s2,17a04 <_svfprintf_r+0x8ae>
   1815e:	893e                	mv	s2,a5
   18160:	8666                	mv	a2,s9
   18162:	7582                	ld	a1,32(sp)
   18164:	fff60c93          	addi	s9,a2,-1
   18168:	2585                	addiw	a1,a1,1
   1816a:	f02e                	sd	a1,32(sp)
   1816c:	029977b3          	remu	a5,s2,s1
   18170:	0307879b          	addiw	a5,a5,48
   18174:	fef60fa3          	sb	a5,-1(a2)
   18178:	df79                	beqz	a4,18156 <_svfprintf_r+0x1000>
   1817a:	7786                	ld	a5,96(sp)
   1817c:	0007c783          	lbu	a5,0(a5)
   18180:	fcf59be3          	bne	a1,a5,18156 <_svfprintf_r+0x1000>
   18184:	fd1789e3          	beq	a5,a7,18156 <_svfprintf_r+0x1000>
   18188:	8726fee3          	bgeu	a3,s2,17a04 <_svfprintf_r+0x8ae>
   1818c:	678a                	ld	a5,128(sp)
   1818e:	65aa                	ld	a1,136(sp)
   18190:	f83a                	sd	a4,48(sp)
   18192:	40fc8cb3          	sub	s9,s9,a5
   18196:	863e                	mv	a2,a5
   18198:	8566                	mv	a0,s9
   1819a:	ec1a                	sd	t1,24(sp)
   1819c:	f49fe0ef          	jal	ra,170e4 <strncpy>
   181a0:	7706                	ld	a4,96(sp)
   181a2:	029957b3          	divu	a5,s2,s1
   181a6:	6362                	ld	t1,24(sp)
   181a8:	00174603          	lbu	a2,1(a4)
   181ac:	f002                	sd	zero,32(sp)
   181ae:	46a5                	li	a3,9
   181b0:	00c03633          	snez	a2,a2
   181b4:	9732                	add	a4,a4,a2
   181b6:	f0ba                	sd	a4,96(sp)
   181b8:	0ff00893          	li	a7,255
   181bc:	7742                	ld	a4,48(sp)
   181be:	b745                	j	1815e <_svfprintf_r+0x1008>
   181c0:	11812703          	lw	a4,280(sp)
   181c4:	66f1                	lui	a3,0x1c
   181c6:	76068693          	addi	a3,a3,1888 # 1c760 <__clzdi2+0x130>
   181ca:	2705                	addiw	a4,a4,1
   181cc:	00d33023          	sd	a3,0(t1)
   181d0:	0785                	addi	a5,a5,1
   181d2:	4685                	li	a3,1
   181d4:	00d33423          	sd	a3,8(t1)
   181d8:	10e12c23          	sw	a4,280(sp)
   181dc:	0007069b          	sext.w	a3,a4
   181e0:	f23e                	sd	a5,288(sp)
   181e2:	471d                	li	a4,7
   181e4:	0341                	addi	t1,t1,16
   181e6:	04d74d63          	blt	a4,a3,18240 <_svfprintf_r+0x10ea>
   181ea:	12061563          	bnez	a2,18314 <_svfprintf_r+0x11be>
   181ee:	7682                	ld	a3,32(sp)
   181f0:	0014f713          	andi	a4,s1,1
   181f4:	8f55                	or	a4,a4,a3
   181f6:	98070763          	beqz	a4,17384 <_svfprintf_r+0x22e>
   181fa:	76a6                	ld	a3,104(sp)
   181fc:	11812703          	lw	a4,280(sp)
   18200:	7646                	ld	a2,112(sp)
   18202:	97b6                	add	a5,a5,a3
   18204:	2705                	addiw	a4,a4,1
   18206:	00d33423          	sd	a3,8(t1)
   1820a:	10e12c23          	sw	a4,280(sp)
   1820e:	0007069b          	sext.w	a3,a4
   18212:	00c33023          	sd	a2,0(t1)
   18216:	f23e                	sd	a5,288(sp)
   18218:	471d                	li	a4,7
   1821a:	50d74e63          	blt	a4,a3,18736 <_svfprintf_r+0x15e0>
   1821e:	0341                	addi	t1,t1,16
   18220:	7702                	ld	a4,32(sp)
   18222:	0016861b          	addiw	a2,a3,1
   18226:	01933023          	sd	s9,0(t1)
   1822a:	97ba                	add	a5,a5,a4
   1822c:	00e33423          	sd	a4,8(t1)
   18230:	f23e                	sd	a5,288(sp)
   18232:	10c12c23          	sw	a2,280(sp)
   18236:	471d                	li	a4,7
   18238:	94c75563          	bge	a4,a2,17382 <_svfprintf_r+0x22c>
   1823c:	c06ff06f          	j	17642 <_svfprintf_r+0x4ec>
   18240:	0a10                	addi	a2,sp,272
   18242:	85d2                	mv	a1,s4
   18244:	854e                	mv	a0,s3
   18246:	429010ef          	jal	ra,19e6e <__ssprint_r>
   1824a:	8e0513e3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   1824e:	562e                	lw	a2,232(sp)
   18250:	7792                	ld	a5,288(sp)
   18252:	835a                	mv	t1,s6
   18254:	bf59                	j	181ea <_svfprintf_r+0x1094>
   18256:	66c2                	ld	a3,16(sp)
   18258:	0404f793          	andi	a5,s1,64
   1825c:	0006a903          	lw	s2,0(a3)
   18260:	12078c63          	beqz	a5,18398 <_svfprintf_r+0x1242>
   18264:	1942                	slli	s2,s2,0x30
   18266:	03095913          	srli	s2,s2,0x30
   1826a:	b159                	j	17ef0 <_svfprintf_r+0xd9a>
   1826c:	8da6                	mv	s11,s1
   1826e:	e83a                	sd	a4,16(sp)
   18270:	9daff06f          	j	1744a <_svfprintf_r+0x2f4>
   18274:	0a10                	addi	a2,sp,272
   18276:	85d2                	mv	a1,s4
   18278:	854e                	mv	a0,s3
   1827a:	3f5010ef          	jal	ra,19e6e <__ssprint_r>
   1827e:	8a0519e3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   18282:	7792                	ld	a5,288(sp)
   18284:	835a                	mv	t1,s6
   18286:	ec6ff06f          	j	1794c <_svfprintf_r+0x7f6>
   1828a:	0017069b          	addiw	a3,a4,1
   1828e:	8736                	mv	a4,a3
   18290:	97de                	add	a5,a5,s7
   18292:	01b33023          	sd	s11,0(t1)
   18296:	8dcff06f          	j	17372 <_svfprintf_r+0x21c>
   1829a:	0a10                	addi	a2,sp,272
   1829c:	85d2                	mv	a1,s4
   1829e:	854e                	mv	a0,s3
   182a0:	f836                	sd	a3,48(sp)
   182a2:	3cd010ef          	jal	ra,19e6e <__ssprint_r>
   182a6:	880515e3          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   182aa:	7786                	ld	a5,96(sp)
   182ac:	76c2                	ld	a3,48(sp)
   182ae:	835a                	mv	t1,s6
   182b0:	0007c603          	lbu	a2,0(a5)
   182b4:	7792                	ld	a5,288(sp)
   182b6:	0006071b          	sext.w	a4,a2
   182ba:	bbc9                	j	1808c <_svfprintf_r+0xf36>
   182bc:	6512                	ld	a0,256(sp)
   182be:	65b2                	ld	a1,264(sp)
   182c0:	4601                	li	a2,0
   182c2:	4681                	li	a3,0
   182c4:	048030ef          	jal	ra,1b30c <__letf2>
   182c8:	6362                	ld	t1,24(sp)
   182ca:	64054463          	bltz	a0,18912 <_svfprintf_r+0x17bc>
   182ce:	0df14783          	lbu	a5,223(sp)
   182d2:	04700713          	li	a4,71
   182d6:	3da75b63          	bge	a4,s10,186ac <_svfprintf_r+0x1556>
   182da:	6871                	lui	a6,0x1c
   182dc:	71080c93          	addi	s9,a6,1808 # 1c710 <__clzdi2+0xe0>
   182e0:	f7f4f493          	andi	s1,s1,-129
   182e4:	ec02                	sd	zero,24(sp)
   182e6:	e882                	sd	zero,80(sp)
   182e8:	ec82                	sd	zero,88(sp)
   182ea:	e482                	sd	zero,72(sp)
   182ec:	2481                	sext.w	s1,s1
   182ee:	490d                	li	s2,3
   182f0:	4b8d                	li	s7,3
   182f2:	4c01                	li	s8,0
   182f4:	98079463          	bnez	a5,1747c <_svfprintf_r+0x326>
   182f8:	fdffe06f          	j	172d6 <_svfprintf_r+0x180>
   182fc:	4799                	li	a5,6
   182fe:	000c0b9b          	sext.w	s7,s8
   18302:	3d87e463          	bltu	a5,s8,186ca <_svfprintf_r+0x1574>
   18306:	6871                	lui	a6,0x1c
   18308:	895e                	mv	s2,s7
   1830a:	e86e                	sd	s11,16(sp)
   1830c:	75880c93          	addi	s9,a6,1880 # 1c758 <__clzdi2+0x128>
   18310:	fbdfe06f          	j	172cc <_svfprintf_r+0x176>
   18314:	76a6                	ld	a3,104(sp)
   18316:	11812703          	lw	a4,280(sp)
   1831a:	75c6                	ld	a1,112(sp)
   1831c:	97b6                	add	a5,a5,a3
   1831e:	2705                	addiw	a4,a4,1
   18320:	00d33423          	sd	a3,8(t1)
   18324:	00b33023          	sd	a1,0(t1)
   18328:	0007069b          	sext.w	a3,a4
   1832c:	10e12c23          	sw	a4,280(sp)
   18330:	f23e                	sd	a5,288(sp)
   18332:	471d                	li	a4,7
   18334:	0341                	addi	t1,t1,16
   18336:	40d74063          	blt	a4,a3,18736 <_svfprintf_r+0x15e0>
   1833a:	ee0653e3          	bgez	a2,18220 <_svfprintf_r+0x10ca>
   1833e:	68f5                	lui	a7,0x1d
   18340:	5741                	li	a4,-16
   18342:	40c00c3b          	negw	s8,a2
   18346:	07088d93          	addi	s11,a7,112 # 1d070 <zeroes.0>
   1834a:	4bc1                	li	s7,16
   1834c:	4d1d                	li	s10,7
   1834e:	00e64663          	blt	a2,a4,1835a <_svfprintf_r+0x1204>
   18352:	a54d                	j	189f4 <_svfprintf_r+0x189e>
   18354:	3c41                	addiw	s8,s8,-16
   18356:	698bdf63          	bge	s7,s8,189f4 <_svfprintf_r+0x189e>
   1835a:	2685                	addiw	a3,a3,1
   1835c:	07c1                	addi	a5,a5,16
   1835e:	01b33023          	sd	s11,0(t1)
   18362:	01733423          	sd	s7,8(t1)
   18366:	f23e                	sd	a5,288(sp)
   18368:	10d12c23          	sw	a3,280(sp)
   1836c:	0341                	addi	t1,t1,16
   1836e:	fedd53e3          	bge	s10,a3,18354 <_svfprintf_r+0x11fe>
   18372:	0a10                	addi	a2,sp,272
   18374:	85d2                	mv	a1,s4
   18376:	854e                	mv	a0,s3
   18378:	2f7010ef          	jal	ra,19e6e <__ssprint_r>
   1837c:	fa051a63          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   18380:	7792                	ld	a5,288(sp)
   18382:	11812683          	lw	a3,280(sp)
   18386:	835a                	mv	t1,s6
   18388:	b7f1                	j	18354 <_svfprintf_r+0x11fe>
   1838a:	2b85                	addiw	s7,s7,1
   1838c:	865e                	mv	a2,s7
   1838e:	9d36                	add	s10,s10,a3
   18390:	01bc3023          	sd	s11,0(s8)
   18394:	a78ff06f          	j	1760c <_svfprintf_r+0x4b6>
   18398:	2004f793          	andi	a5,s1,512
   1839c:	34078763          	beqz	a5,186ea <_svfprintf_r+0x1594>
   183a0:	0ff97913          	zext.b	s2,s2
   183a4:	b6b1                	j	17ef0 <_svfprintf_r+0xd9a>
   183a6:	2004f793          	andi	a5,s1,512
   183aa:	36078563          	beqz	a5,18714 <_svfprintf_r+0x15be>
   183ae:	0ff97913          	zext.b	s2,s2
   183b2:	8e6ff06f          	j	17498 <_svfprintf_r+0x342>
   183b6:	2004f793          	andi	a5,s1,512
   183ba:	34078a63          	beqz	a5,1870e <_svfprintf_r+0x15b8>
   183be:	0189191b          	slliw	s2,s2,0x18
   183c2:	4189591b          	sraiw	s2,s2,0x18
   183c6:	87ca                	mv	a5,s2
   183c8:	86cff06f          	j	17434 <_svfprintf_r+0x2de>
   183cc:	200df793          	andi	a5,s11,512
   183d0:	32078263          	beqz	a5,186f4 <_svfprintf_r+0x159e>
   183d4:	0ff97913          	zext.b	s2,s2
   183d8:	e83a                	sd	a4,16(sp)
   183da:	4785                	li	a5,1
   183dc:	8c6ff06f          	j	174a2 <_svfprintf_r+0x34c>
   183e0:	07800713          	li	a4,120
   183e4:	0024e793          	ori	a5,s1,2
   183e8:	03000693          	li	a3,48
   183ec:	2781                	sext.w	a5,a5
   183ee:	0ee100a3          	sb	a4,225(sp)
   183f2:	0ed10023          	sb	a3,224(sp)
   183f6:	06300713          	li	a4,99
   183fa:	f53e                	sd	a5,168(sp)
   183fc:	ec02                	sd	zero,24(sp)
   183fe:	12810c93          	addi	s9,sp,296
   18402:	35874963          	blt	a4,s8,18754 <_svfprintf_r+0x15fe>
   18406:	6932                	ld	s2,264(sp)
   18408:	fdfd7793          	andi	a5,s10,-33
   1840c:	1024e493          	ori	s1,s1,258
   18410:	ecbe                	sd	a5,88(sp)
   18412:	e582                	sd	zero,200(sp)
   18414:	6b92                	ld	s7,256(sp)
   18416:	2481                	sext.w	s1,s1
   18418:	0e094163          	bltz	s2,184fa <_svfprintf_r+0x13a4>
   1841c:	06100793          	li	a5,97
   18420:	64fd0b63          	beq	s10,a5,18a76 <_svfprintf_r+0x1920>
   18424:	fbfd079b          	addiw	a5,s10,-65
   18428:	0007869b          	sext.w	a3,a5
   1842c:	02500713          	li	a4,37
   18430:	00d76c63          	bltu	a4,a3,18448 <_svfprintf_r+0x12f2>
   18434:	02079713          	slli	a4,a5,0x20
   18438:	01e75793          	srli	a5,a4,0x1e
   1843c:	6775                	lui	a4,0x1d
   1843e:	fc870713          	addi	a4,a4,-56 # 1cfc8 <p05.0+0x178>
   18442:	97ba                	add	a5,a5,a4
   18444:	439c                	lw	a5,0(a5)
   18446:	8782                	jr	a5
   18448:	8de2                	mv	s11,s8
   1844a:	4689                	li	a3,2
   1844c:	11bc                	addi	a5,sp,232
   1844e:	876e                	mv	a4,s11
   18450:	0f810893          	addi	a7,sp,248
   18454:	0ec10813          	addi	a6,sp,236
   18458:	85de                	mv	a1,s7
   1845a:	864a                	mv	a2,s2
   1845c:	854e                	mv	a0,s3
   1845e:	f01a                	sd	t1,32(sp)
   18460:	88dfc0ef          	jal	ra,14cec <_ldtoa_r>
   18464:	6766                	ld	a4,88(sp)
   18466:	04700793          	li	a5,71
   1846a:	7302                	ld	t1,32(sp)
   1846c:	8caa                	mv	s9,a0
   1846e:	46f70b63          	beq	a4,a5,188e4 <_svfprintf_r+0x178e>
   18472:	04600793          	li	a5,70
   18476:	01b508b3          	add	a7,a0,s11
   1847a:	00f71a63          	bne	a4,a5,1848e <_svfprintf_r+0x1338>
   1847e:	00054703          	lbu	a4,0(a0)
   18482:	03000793          	li	a5,48
   18486:	2ef70b63          	beq	a4,a5,1877c <_svfprintf_r+0x1626>
   1848a:	572e                	lw	a4,232(sp)
   1848c:	98ba                	add	a7,a7,a4
   1848e:	4681                	li	a3,0
   18490:	4601                	li	a2,0
   18492:	855e                	mv	a0,s7
   18494:	85ca                	mv	a1,s2
   18496:	f846                	sd	a7,48(sp)
   18498:	f01a                	sd	t1,32(sp)
   1849a:	52d020ef          	jal	ra,1b1c6 <__eqtf2>
   1849e:	78c2                	ld	a7,48(sp)
   184a0:	7302                	ld	t1,32(sp)
   184a2:	86c6                	mv	a3,a7
   184a4:	e13d                	bnez	a0,1850a <_svfprintf_r+0x13b4>
   184a6:	419687bb          	subw	a5,a3,s9
   184aa:	f03e                	sd	a5,32(sp)
   184ac:	572e                	lw	a4,232(sp)
   184ae:	04700793          	li	a5,71
   184b2:	e4ba                	sd	a4,72(sp)
   184b4:	6766                	ld	a4,88(sp)
   184b6:	06f70863          	beq	a4,a5,18526 <_svfprintf_r+0x13d0>
   184ba:	6766                	ld	a4,88(sp)
   184bc:	04600793          	li	a5,70
   184c0:	0cf71663          	bne	a4,a5,1858c <_svfprintf_r+0x1436>
   184c4:	77aa                	ld	a5,168(sp)
   184c6:	6726                	ld	a4,72(sp)
   184c8:	8b85                	andi	a5,a5,1
   184ca:	00fc67b3          	or	a5,s8,a5
   184ce:	68e05363          	blez	a4,18b54 <_svfprintf_r+0x19fe>
   184d2:	64079963          	bnez	a5,18b24 <_svfprintf_r+0x19ce>
   184d6:	6ba6                	ld	s7,72(sp)
   184d8:	06600d13          	li	s10,102
   184dc:	77aa                	ld	a5,168(sp)
   184de:	4007f793          	andi	a5,a5,1024
   184e2:	5c079a63          	bnez	a5,18ab6 <_svfprintf_r+0x1960>
   184e6:	fffbc913          	not	s2,s7
   184ea:	43f95913          	srai	s2,s2,0x3f
   184ee:	012bf933          	and	s2,s7,s2
   184f2:	2901                	sext.w	s2,s2
   184f4:	a89d                	j	1856a <_svfprintf_r+0x1414>
   184f6:	ec02                	sd	zero,24(sp)
   184f8:	84be                	mv	s1,a5
   184fa:	57fd                	li	a5,-1
   184fc:	17fe                	slli	a5,a5,0x3f
   184fe:	00f94933          	xor	s2,s2,a5
   18502:	02d00793          	li	a5,45
   18506:	e5be                	sd	a5,200(sp)
   18508:	bf11                	j	1841c <_svfprintf_r+0x12c6>
   1850a:	76ee                	ld	a3,248(sp)
   1850c:	f916fde3          	bgeu	a3,a7,184a6 <_svfprintf_r+0x1350>
   18510:	03000713          	li	a4,48
   18514:	00168793          	addi	a5,a3,1
   18518:	fdbe                	sd	a5,248(sp)
   1851a:	00e68023          	sb	a4,0(a3)
   1851e:	76ee                	ld	a3,248(sp)
   18520:	ff16eae3          	bltu	a3,a7,18514 <_svfprintf_r+0x13be>
   18524:	b749                	j	184a6 <_svfprintf_r+0x1350>
   18526:	6726                	ld	a4,72(sp)
   18528:	57f5                	li	a5,-3
   1852a:	04f74d63          	blt	a4,a5,18584 <_svfprintf_r+0x142e>
   1852e:	04ec4b63          	blt	s8,a4,18584 <_svfprintf_r+0x142e>
   18532:	7782                	ld	a5,32(sp)
   18534:	6726                	ld	a4,72(sp)
   18536:	44f74063          	blt	a4,a5,18976 <_svfprintf_r+0x1820>
   1853a:	77aa                	ld	a5,168(sp)
   1853c:	6726                	ld	a4,72(sp)
   1853e:	8b85                	andi	a5,a5,1
   18540:	8bba                	mv	s7,a4
   18542:	c781                	beqz	a5,1854a <_svfprintf_r+0x13f4>
   18544:	77a6                	ld	a5,104(sp)
   18546:	00e78bbb          	addw	s7,a5,a4
   1854a:	77aa                	ld	a5,168(sp)
   1854c:	4007f793          	andi	a5,a5,1024
   18550:	c781                	beqz	a5,18558 <_svfprintf_r+0x1402>
   18552:	67a6                	ld	a5,72(sp)
   18554:	54f04f63          	bgtz	a5,18ab2 <_svfprintf_r+0x195c>
   18558:	fffbc913          	not	s2,s7
   1855c:	43f95913          	srai	s2,s2,0x3f
   18560:	012bf933          	and	s2,s7,s2
   18564:	2901                	sext.w	s2,s2
   18566:	06700d13          	li	s10,103
   1856a:	e882                	sd	zero,80(sp)
   1856c:	ec82                	sd	zero,88(sp)
   1856e:	67ae                	ld	a5,200(sp)
   18570:	36078263          	beqz	a5,188d4 <_svfprintf_r+0x177e>
   18574:	02d00793          	li	a5,45
   18578:	0cf10fa3          	sb	a5,223(sp)
   1857c:	4c01                	li	s8,0
   1857e:	2905                	addiw	s2,s2,1
   18580:	d57fe06f          	j	172d6 <_svfprintf_r+0x180>
   18584:	3d79                	addiw	s10,s10,-2
   18586:	fdfd7793          	andi	a5,s10,-33
   1858a:	ecbe                	sd	a5,88(sp)
   1858c:	67a6                	ld	a5,72(sp)
   1858e:	65e6                	ld	a1,88(sp)
   18590:	04100713          	li	a4,65
   18594:	fff7869b          	addiw	a3,a5,-1
   18598:	d5b6                	sw	a3,232(sp)
   1859a:	0ffd7793          	zext.b	a5,s10
   1859e:	4601                	li	a2,0
   185a0:	1ce58963          	beq	a1,a4,18772 <_svfprintf_r+0x161c>
   185a4:	0ef10823          	sb	a5,240(sp)
   185a8:	02b00793          	li	a5,43
   185ac:	0006d763          	bgez	a3,185ba <_svfprintf_r+0x1464>
   185b0:	67a6                	ld	a5,72(sp)
   185b2:	4685                	li	a3,1
   185b4:	9e9d                	subw	a3,a3,a5
   185b6:	02d00793          	li	a5,45
   185ba:	0ef108a3          	sb	a5,241(sp)
   185be:	47a5                	li	a5,9
   185c0:	46d7d363          	bge	a5,a3,18a26 <_svfprintf_r+0x18d0>
   185c4:	0ff10e93          	addi	t4,sp,255
   185c8:	8676                	mv	a2,t4
   185ca:	45a9                	li	a1,10
   185cc:	06300793          	li	a5,99
   185d0:	02b6e73b          	remw	a4,a3,a1
   185d4:	88b2                	mv	a7,a2
   185d6:	8536                	mv	a0,a3
   185d8:	167d                	addi	a2,a2,-1
   185da:	0307071b          	addiw	a4,a4,48
   185de:	fee88fa3          	sb	a4,-1(a7)
   185e2:	02b6c6bb          	divw	a3,a3,a1
   185e6:	fea7c5e3          	blt	a5,a0,185d0 <_svfprintf_r+0x147a>
   185ea:	0306869b          	addiw	a3,a3,48
   185ee:	0ff6f693          	zext.b	a3,a3
   185f2:	ffe88793          	addi	a5,a7,-2
   185f6:	fed60fa3          	sb	a3,-1(a2)
   185fa:	59d7f263          	bgeu	a5,t4,18b7e <_svfprintf_r+0x1a28>
   185fe:	0f210713          	addi	a4,sp,242
   18602:	a019                	j	18608 <_svfprintf_r+0x14b2>
   18604:	0007c683          	lbu	a3,0(a5)
   18608:	00d70023          	sb	a3,0(a4)
   1860c:	0785                	addi	a5,a5,1
   1860e:	0705                	addi	a4,a4,1
   18610:	ffd79ae3          	bne	a5,t4,18604 <_svfprintf_r+0x14ae>
   18614:	10110793          	addi	a5,sp,257
   18618:	0f210713          	addi	a4,sp,242
   1861c:	411787b3          	sub	a5,a5,a7
   18620:	97ba                	add	a5,a5,a4
   18622:	1998                	addi	a4,sp,240
   18624:	9f99                	subw	a5,a5,a4
   18626:	fcbe                	sd	a5,120(sp)
   18628:	77e6                	ld	a5,120(sp)
   1862a:	7682                	ld	a3,32(sp)
   1862c:	4705                	li	a4,1
   1862e:	00f68bbb          	addw	s7,a3,a5
   18632:	87de                	mv	a5,s7
   18634:	40d75d63          	bge	a4,a3,18a4e <_svfprintf_r+0x18f8>
   18638:	7726                	ld	a4,104(sp)
   1863a:	00e78bbb          	addw	s7,a5,a4
   1863e:	77aa                	ld	a5,168(sp)
   18640:	fffbc913          	not	s2,s7
   18644:	43f95913          	srai	s2,s2,0x3f
   18648:	bff7f493          	andi	s1,a5,-1025
   1864c:	2481                	sext.w	s1,s1
   1864e:	012bf933          	and	s2,s7,s2
   18652:	1004e493          	ori	s1,s1,256
   18656:	2901                	sext.w	s2,s2
   18658:	e882                	sd	zero,80(sp)
   1865a:	ec82                	sd	zero,88(sp)
   1865c:	e482                	sd	zero,72(sp)
   1865e:	bf01                	j	1856e <_svfprintf_r+0x1418>
   18660:	67b2                	ld	a5,264(sp)
   18662:	0c07c563          	bltz	a5,1872c <_svfprintf_r+0x15d6>
   18666:	0df14783          	lbu	a5,223(sp)
   1866a:	04700713          	li	a4,71
   1866e:	31a75063          	bge	a4,s10,1896e <_svfprintf_r+0x1818>
   18672:	6871                	lui	a6,0x1c
   18674:	72080c93          	addi	s9,a6,1824 # 1c720 <__clzdi2+0xf0>
   18678:	b1a5                	j	182e0 <_svfprintf_r+0x118a>
   1867a:	0017069b          	addiw	a3,a4,1
   1867e:	97de                	add	a5,a5,s7
   18680:	01b33023          	sd	s11,0(t1)
   18684:	01733423          	sd	s7,8(t1)
   18688:	f23e                	sd	a5,288(sp)
   1868a:	10d12c23          	sw	a3,280(sp)
   1868e:	471d                	li	a4,7
   18690:	0341                	addi	t1,t1,16
   18692:	e2d75363          	bge	a4,a3,17cb8 <_svfprintf_r+0xb62>
   18696:	0a10                	addi	a2,sp,272
   18698:	85d2                	mv	a1,s4
   1869a:	854e                	mv	a0,s3
   1869c:	7d2010ef          	jal	ra,19e6e <__ssprint_r>
   186a0:	c8051863          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   186a4:	7792                	ld	a5,288(sp)
   186a6:	835a                	mv	t1,s6
   186a8:	e10ff06f          	j	17cb8 <_svfprintf_r+0xb62>
   186ac:	6871                	lui	a6,0x1c
   186ae:	70880c93          	addi	s9,a6,1800 # 1c708 <__clzdi2+0xd8>
   186b2:	b13d                	j	182e0 <_svfprintf_r+0x118a>
   186b4:	0a10                	addi	a2,sp,272
   186b6:	85d2                	mv	a1,s4
   186b8:	854e                	mv	a0,s3
   186ba:	7b4010ef          	jal	ra,19e6e <__ssprint_r>
   186be:	c6051963          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   186c2:	7792                	ld	a5,288(sp)
   186c4:	835a                	mv	t1,s6
   186c6:	ddeff06f          	j	17ca4 <_svfprintf_r+0xb4e>
   186ca:	4b99                	li	s7,6
   186cc:	b92d                	j	18306 <_svfprintf_r+0x11b0>
   186ce:	7682                	ld	a3,32(sp)
   186d0:	00dc8bb3          	add	s7,s9,a3
   186d4:	418b8bb3          	sub	s7,s7,s8
   186d8:	9e99                	subw	a3,a3,a4
   186da:	000b861b          	sext.w	a2,s7
   186de:	00c6d363          	bge	a3,a2,186e4 <_svfprintf_r+0x158e>
   186e2:	8bb6                	mv	s7,a3
   186e4:	2b81                	sext.w	s7,s7
   186e6:	e52ff06f          	j	17d38 <_svfprintf_r+0xbe2>
   186ea:	1902                	slli	s2,s2,0x20
   186ec:	02095913          	srli	s2,s2,0x20
   186f0:	801ff06f          	j	17ef0 <_svfprintf_r+0xd9a>
   186f4:	1902                	slli	s2,s2,0x20
   186f6:	02095913          	srli	s2,s2,0x20
   186fa:	e83a                	sd	a4,16(sp)
   186fc:	4785                	li	a5,1
   186fe:	da5fe06f          	j	174a2 <_svfprintf_r+0x34c>
   18702:	67a2                	ld	a5,8(sp)
   18704:	8ca2                	mv	s9,s0
   18706:	00f71023          	sh	a5,0(a4)
   1870a:	cadfe06f          	j	173b6 <_svfprintf_r+0x260>
   1870e:	87ca                	mv	a5,s2
   18710:	d25fe06f          	j	17434 <_svfprintf_r+0x2de>
   18714:	1902                	slli	s2,s2,0x20
   18716:	02095913          	srli	s2,s2,0x20
   1871a:	d7ffe06f          	j	17498 <_svfprintf_r+0x342>
   1871e:	0a10                	addi	a2,sp,272
   18720:	85d2                	mv	a1,s4
   18722:	854e                	mv	a0,s3
   18724:	74a010ef          	jal	ra,19e6e <__ssprint_r>
   18728:	c9ffe06f          	j	173c6 <_svfprintf_r+0x270>
   1872c:	02d00793          	li	a5,45
   18730:	0cf10fa3          	sb	a5,223(sp)
   18734:	bf1d                	j	1866a <_svfprintf_r+0x1514>
   18736:	0a10                	addi	a2,sp,272
   18738:	85d2                	mv	a1,s4
   1873a:	854e                	mv	a0,s3
   1873c:	732010ef          	jal	ra,19e6e <__ssprint_r>
   18740:	be051863          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   18744:	562e                	lw	a2,232(sp)
   18746:	7792                	ld	a5,288(sp)
   18748:	11812683          	lw	a3,280(sp)
   1874c:	835a                	mv	t1,s6
   1874e:	ac0659e3          	bgez	a2,18220 <_svfprintf_r+0x10ca>
   18752:	b6f5                	j	1833e <_svfprintf_r+0x11e8>
   18754:	001c059b          	addiw	a1,s8,1
   18758:	854e                	mv	a0,s3
   1875a:	ec1a                	sd	t1,24(sp)
   1875c:	808f80ef          	jal	ra,10764 <_malloc_r>
   18760:	6362                	ld	t1,24(sp)
   18762:	8caa                	mv	s9,a0
   18764:	42050063          	beqz	a0,18b84 <_svfprintf_r+0x1a2e>
   18768:	ec2a                	sd	a0,24(sp)
   1876a:	b971                	j	18406 <_svfprintf_r+0x12b0>
   1876c:	4c19                	li	s8,6
   1876e:	df7fe06f          	j	17564 <_svfprintf_r+0x40e>
   18772:	27bd                	addiw	a5,a5,15
   18774:	0ff7f793          	zext.b	a5,a5
   18778:	4605                	li	a2,1
   1877a:	b52d                	j	185a4 <_svfprintf_r+0x144e>
   1877c:	4601                	li	a2,0
   1877e:	4681                	li	a3,0
   18780:	855e                	mv	a0,s7
   18782:	85ca                	mv	a1,s2
   18784:	f846                	sd	a7,48(sp)
   18786:	f01a                	sd	t1,32(sp)
   18788:	23f020ef          	jal	ra,1b1c6 <__eqtf2>
   1878c:	7302                	ld	t1,32(sp)
   1878e:	78c2                	ld	a7,48(sp)
   18790:	ce050de3          	beqz	a0,1848a <_svfprintf_r+0x1334>
   18794:	4785                	li	a5,1
   18796:	41b7873b          	subw	a4,a5,s11
   1879a:	d5ba                	sw	a4,232(sp)
   1879c:	98ba                	add	a7,a7,a4
   1879e:	b9c5                	j	1848e <_svfprintf_r+0x1338>
   187a0:	001c0d9b          	addiw	s11,s8,1
   187a4:	4689                	li	a3,2
   187a6:	b15d                	j	1844c <_svfprintf_r+0x12f6>
   187a8:	8de2                	mv	s11,s8
   187aa:	468d                	li	a3,3
   187ac:	b145                	j	1844c <_svfprintf_r+0x12f6>
   187ae:	85ca                	mv	a1,s2
   187b0:	855e                	mv	a0,s7
   187b2:	f81a                	sd	t1,48(sp)
   187b4:	45d030ef          	jal	ra,1c410 <__trunctfdf2>
   187b8:	11a8                	addi	a0,sp,232
   187ba:	823fe0ef          	jal	ra,16fdc <frexp>
   187be:	38f030ef          	jal	ra,1c34c <__extenddftf2>
   187c2:	768a                	ld	a3,160(sp)
   187c4:	4601                	li	a2,0
   187c6:	3ed020ef          	jal	ra,1b3b2 <__multf3>
   187ca:	4601                	li	a2,0
   187cc:	4681                	li	a3,0
   187ce:	8baa                	mv	s7,a0
   187d0:	f02e                	sd	a1,32(sp)
   187d2:	1f5020ef          	jal	ra,1b1c6 <__eqtf2>
   187d6:	7f82                	ld	t6,32(sp)
   187d8:	7342                	ld	t1,48(sp)
   187da:	e119                	bnez	a0,187e0 <_svfprintf_r+0x168a>
   187dc:	4785                	li	a5,1
   187de:	d5be                	sw	a5,232(sp)
   187e0:	67f1                	lui	a5,0x1c
   187e2:	74078793          	addi	a5,a5,1856 # 1c740 <__clzdi2+0x110>
   187e6:	e4be                	sd	a5,72(sp)
   187e8:	020c1793          	slli	a5,s8,0x20
   187ec:	9381                	srli	a5,a5,0x20
   187ee:	0785                	addi	a5,a5,1
   187f0:	97e6                	add	a5,a5,s9
   187f2:	f93e                	sd	a5,176(sp)
   187f4:	018c87bb          	addw	a5,s9,s8
   187f8:	8de6                	mv	s11,s9
   187fa:	c3be                	sw	a5,196(sp)
   187fc:	a829                	j	18816 <_svfprintf_r+0x16c0>
   187fe:	4601                	li	a2,0
   18800:	4681                	li	a3,0
   18802:	f01a                	sd	t1,32(sp)
   18804:	fc2e                	sd	a1,56(sp)
   18806:	f82a                	sd	a0,48(sp)
   18808:	1bf020ef          	jal	ra,1b1c6 <__eqtf2>
   1880c:	77e2                	ld	a5,56(sp)
   1880e:	7302                	ld	t1,32(sp)
   18810:	88de                	mv	a7,s7
   18812:	8fbe                	mv	t6,a5
   18814:	cd31                	beqz	a0,18870 <_svfprintf_r+0x171a>
   18816:	66ca                	ld	a3,144(sp)
   18818:	4601                	li	a2,0
   1881a:	85fe                	mv	a1,t6
   1881c:	855e                	mv	a0,s7
   1881e:	f81a                	sd	t1,48(sp)
   18820:	393020ef          	jal	ra,1b3b2 <__multf3>
   18824:	8bae                	mv	s7,a1
   18826:	f02a                	sd	a0,32(sp)
   18828:	23d030ef          	jal	ra,1c264 <__fixtfsi>
   1882c:	0005091b          	sext.w	s2,a0
   18830:	854a                	mv	a0,s2
   18832:	2c5030ef          	jal	ra,1c2f6 <__floatsitf>
   18836:	7782                	ld	a5,32(sp)
   18838:	86ae                	mv	a3,a1
   1883a:	862a                	mv	a2,a0
   1883c:	85de                	mv	a1,s7
   1883e:	853e                	mv	a0,a5
   18840:	19c030ef          	jal	ra,1b9dc <__subtf3>
   18844:	67a6                	ld	a5,72(sp)
   18846:	471e                	lw	a4,196(sp)
   18848:	fd6e                	sd	s11,184(sp)
   1884a:	97ca                	add	a5,a5,s2
   1884c:	0d85                	addi	s11,s11,1
   1884e:	0007c683          	lbu	a3,0(a5)
   18852:	41b7073b          	subw	a4,a4,s11
   18856:	e8ba                	sd	a4,80(sp)
   18858:	774a                	ld	a4,176(sp)
   1885a:	fedd8fa3          	sb	a3,-1(s11)
   1885e:	e0ae                	sd	a1,64(sp)
   18860:	7342                	ld	t1,48(sp)
   18862:	87ae                	mv	a5,a1
   18864:	88aa                	mv	a7,a0
   18866:	8baa                	mv	s7,a0
   18868:	f9b71be3          	bne	a4,s11,187fe <_svfprintf_r+0x16a8>
   1886c:	577d                	li	a4,-1
   1886e:	e8ba                	sd	a4,80(sp)
   18870:	66ea                	ld	a3,152(sp)
   18872:	4601                	li	a2,0
   18874:	8546                	mv	a0,a7
   18876:	85be                	mv	a1,a5
   18878:	f01a                	sd	t1,32(sp)
   1887a:	fc46                	sd	a7,56(sp)
   1887c:	f83e                	sd	a5,48(sp)
   1887e:	1e9020ef          	jal	ra,1b266 <__getf2>
   18882:	7302                	ld	t1,32(sp)
   18884:	10a04e63          	bgtz	a0,189a0 <_svfprintf_r+0x184a>
   18888:	78e2                	ld	a7,56(sp)
   1888a:	77c2                	ld	a5,48(sp)
   1888c:	66ea                	ld	a3,152(sp)
   1888e:	4601                	li	a2,0
   18890:	8546                	mv	a0,a7
   18892:	85be                	mv	a1,a5
   18894:	133020ef          	jal	ra,1b1c6 <__eqtf2>
   18898:	7302                	ld	t1,32(sp)
   1889a:	e509                	bnez	a0,188a4 <_svfprintf_r+0x174e>
   1889c:	00197913          	andi	s2,s2,1
   188a0:	10091063          	bnez	s2,189a0 <_svfprintf_r+0x184a>
   188a4:	6746                	ld	a4,80(sp)
   188a6:	03000693          	li	a3,48
   188aa:	0017079b          	addiw	a5,a4,1
   188ae:	97ee                	add	a5,a5,s11
   188b0:	00074763          	bltz	a4,188be <_svfprintf_r+0x1768>
   188b4:	0d85                	addi	s11,s11,1
   188b6:	fedd8fa3          	sb	a3,-1(s11)
   188ba:	ffb79de3          	bne	a5,s11,188b4 <_svfprintf_r+0x175e>
   188be:	419d87bb          	subw	a5,s11,s9
   188c2:	f03e                	sd	a5,32(sp)
   188c4:	b6e5                	j	184ac <_svfprintf_r+0x1356>
   188c6:	7702                	ld	a4,32(sp)
   188c8:	9766                	add	a4,a4,s9
   188ca:	bf877e63          	bgeu	a4,s8,17cc6 <_svfprintf_r+0xb70>
   188ce:	8c3a                	mv	s8,a4
   188d0:	bf6ff06f          	j	17cc6 <_svfprintf_r+0xb70>
   188d4:	0df14783          	lbu	a5,223(sp)
   188d8:	4c01                	li	s8,0
   188da:	c399                	beqz	a5,188e0 <_svfprintf_r+0x178a>
   188dc:	ba1fe06f          	j	1747c <_svfprintf_r+0x326>
   188e0:	9f7fe06f          	j	172d6 <_svfprintf_r+0x180>
   188e4:	77aa                	ld	a5,168(sp)
   188e6:	01b508b3          	add	a7,a0,s11
   188ea:	8b85                	andi	a5,a5,1
   188ec:	ba0791e3          	bnez	a5,1848e <_svfprintf_r+0x1338>
   188f0:	76ee                	ld	a3,248(sp)
   188f2:	be55                	j	184a6 <_svfprintf_r+0x1350>
   188f4:	0a10                	addi	a2,sp,272
   188f6:	85d2                	mv	a1,s4
   188f8:	854e                	mv	a0,s3
   188fa:	574010ef          	jal	ra,19e6e <__ssprint_r>
   188fe:	a2051963          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   18902:	7786                	ld	a5,96(sp)
   18904:	835a                	mv	t1,s6
   18906:	0007c603          	lbu	a2,0(a5)
   1890a:	7792                	ld	a5,288(sp)
   1890c:	9c32                	add	s8,s8,a2
   1890e:	f8eff06f          	j	1809c <_svfprintf_r+0xf46>
   18912:	02d00793          	li	a5,45
   18916:	0cf10fa3          	sb	a5,223(sp)
   1891a:	ba65                	j	182d2 <_svfprintf_r+0x117c>
   1891c:	0a10                	addi	a2,sp,272
   1891e:	85d2                	mv	a1,s4
   18920:	854e                	mv	a0,s3
   18922:	54c010ef          	jal	ra,19e6e <__ssprint_r>
   18926:	a0051563          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   1892a:	572e                	lw	a4,232(sp)
   1892c:	7792                	ld	a5,288(sp)
   1892e:	835a                	mv	t1,s6
   18930:	bccff06f          	j	17cfc <_svfprintf_r+0xba6>
   18934:	0df14783          	lbu	a5,223(sp)
   18938:	e86e                	sd	s11,16(sp)
   1893a:	e882                	sd	zero,80(sp)
   1893c:	ec82                	sd	zero,88(sp)
   1893e:	e482                	sd	zero,72(sp)
   18940:	8962                	mv	s2,s8
   18942:	8be2                	mv	s7,s8
   18944:	4c01                	li	s8,0
   18946:	c399                	beqz	a5,1894c <_svfprintf_r+0x17f6>
   18948:	b35fe06f          	j	1747c <_svfprintf_r+0x326>
   1894c:	98bfe06f          	j	172d6 <_svfprintf_r+0x180>
   18950:	0a10                	addi	a2,sp,272
   18952:	85d2                	mv	a1,s4
   18954:	854e                	mv	a0,s3
   18956:	518010ef          	jal	ra,19e6e <__ssprint_r>
   1895a:	9c051b63          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   1895e:	56ae                	lw	a3,232(sp)
   18960:	7702                	ld	a4,32(sp)
   18962:	7792                	ld	a5,288(sp)
   18964:	835a                	mv	t1,s6
   18966:	40d706bb          	subw	a3,a4,a3
   1896a:	bceff06f          	j	17d38 <_svfprintf_r+0xbe2>
   1896e:	6871                	lui	a6,0x1c
   18970:	71880c93          	addi	s9,a6,1816 # 1c718 <__clzdi2+0xe8>
   18974:	b2b5                	j	182e0 <_svfprintf_r+0x118a>
   18976:	7702                	ld	a4,32(sp)
   18978:	77a6                	ld	a5,104(sp)
   1897a:	06700d13          	li	s10,103
   1897e:	00e78bbb          	addw	s7,a5,a4
   18982:	6726                	ld	a4,72(sp)
   18984:	b4e04ce3          	bgtz	a4,184dc <_svfprintf_r+0x1386>
   18988:	40eb87bb          	subw	a5,s7,a4
   1898c:	2785                	addiw	a5,a5,1
   1898e:	00078b9b          	sext.w	s7,a5
   18992:	fffbc713          	not	a4,s7
   18996:	977d                	srai	a4,a4,0x3f
   18998:	8ff9                	and	a5,a5,a4
   1899a:	0007891b          	sext.w	s2,a5
   1899e:	b6f1                	j	1856a <_svfprintf_r+0x1414>
   189a0:	77ea                	ld	a5,184(sp)
   189a2:	fdbe                	sd	a5,248(sp)
   189a4:	67a6                	ld	a5,72(sp)
   189a6:	fffdc683          	lbu	a3,-1(s11)
   189aa:	00f7c603          	lbu	a2,15(a5)
   189ae:	87ee                	mv	a5,s11
   189b0:	00d61e63          	bne	a2,a3,189cc <_svfprintf_r+0x1876>
   189b4:	03000593          	li	a1,48
   189b8:	feb78fa3          	sb	a1,-1(a5)
   189bc:	77ee                	ld	a5,248(sp)
   189be:	fff78693          	addi	a3,a5,-1
   189c2:	fdb6                	sd	a3,248(sp)
   189c4:	fff7c683          	lbu	a3,-1(a5)
   189c8:	fed608e3          	beq	a2,a3,189b8 <_svfprintf_r+0x1862>
   189cc:	0016861b          	addiw	a2,a3,1
   189d0:	03900593          	li	a1,57
   189d4:	0ff67613          	zext.b	a2,a2
   189d8:	00b68563          	beq	a3,a1,189e2 <_svfprintf_r+0x188c>
   189dc:	fec78fa3          	sb	a2,-1(a5)
   189e0:	bdf9                	j	188be <_svfprintf_r+0x1768>
   189e2:	6726                	ld	a4,72(sp)
   189e4:	00a74603          	lbu	a2,10(a4)
   189e8:	fec78fa3          	sb	a2,-1(a5)
   189ec:	bdc9                	j	188be <_svfprintf_r+0x1768>
   189ee:	8da6                	mv	s11,s1
   189f0:	a61fe06f          	j	17450 <_svfprintf_r+0x2fa>
   189f4:	2685                	addiw	a3,a3,1
   189f6:	97e2                	add	a5,a5,s8
   189f8:	01b33023          	sd	s11,0(t1)
   189fc:	01833423          	sd	s8,8(t1)
   18a00:	f23e                	sd	a5,288(sp)
   18a02:	10d12c23          	sw	a3,280(sp)
   18a06:	471d                	li	a4,7
   18a08:	80d75be3          	bge	a4,a3,1821e <_svfprintf_r+0x10c8>
   18a0c:	0a10                	addi	a2,sp,272
   18a0e:	85d2                	mv	a1,s4
   18a10:	854e                	mv	a0,s3
   18a12:	45c010ef          	jal	ra,19e6e <__ssprint_r>
   18a16:	90051d63          	bnez	a0,17b30 <_svfprintf_r+0x9da>
   18a1a:	7792                	ld	a5,288(sp)
   18a1c:	11812683          	lw	a3,280(sp)
   18a20:	835a                	mv	t1,s6
   18a22:	ffeff06f          	j	18220 <_svfprintf_r+0x10ca>
   18a26:	0f210713          	addi	a4,sp,242
   18a2a:	e619                	bnez	a2,18a38 <_svfprintf_r+0x18e2>
   18a2c:	03000793          	li	a5,48
   18a30:	0ef10923          	sb	a5,242(sp)
   18a34:	0f310713          	addi	a4,sp,243
   18a38:	0306879b          	addiw	a5,a3,48
   18a3c:	0c14                	addi	a3,sp,528
   18a3e:	40d706b3          	sub	a3,a4,a3
   18a42:	00f70023          	sb	a5,0(a4)
   18a46:	1216879b          	addiw	a5,a3,289
   18a4a:	fcbe                	sd	a5,120(sp)
   18a4c:	bef1                	j	18628 <_svfprintf_r+0x14d2>
   18a4e:	772a                	ld	a4,168(sp)
   18a50:	8b05                	andi	a4,a4,1
   18a52:	be0706e3          	beqz	a4,1863e <_svfprintf_r+0x14e8>
   18a56:	b6cd                	j	18638 <_svfprintf_r+0x14e2>
   18a58:	000c0463          	beqz	s8,18a60 <_svfprintf_r+0x190a>
   18a5c:	b09fe06f          	j	17564 <_svfprintf_r+0x40e>
   18a60:	4c05                	li	s8,1
   18a62:	b03fe06f          	j	17564 <_svfprintf_r+0x40e>
   18a66:	57fd                	li	a5,-1
   18a68:	e43e                	sd	a5,8(sp)
   18a6a:	96bfe06f          	j	173d4 <_svfprintf_r+0x27e>
   18a6e:	c31c                	sw	a5,0(a4)
   18a70:	8ca2                	mv	s9,s0
   18a72:	945fe06f          	j	173b6 <_svfprintf_r+0x260>
   18a76:	85ca                	mv	a1,s2
   18a78:	855e                	mv	a0,s7
   18a7a:	f81a                	sd	t1,48(sp)
   18a7c:	195030ef          	jal	ra,1c410 <__trunctfdf2>
   18a80:	11a8                	addi	a0,sp,232
   18a82:	d5afe0ef          	jal	ra,16fdc <frexp>
   18a86:	0c7030ef          	jal	ra,1c34c <__extenddftf2>
   18a8a:	768a                	ld	a3,160(sp)
   18a8c:	4601                	li	a2,0
   18a8e:	125020ef          	jal	ra,1b3b2 <__multf3>
   18a92:	4601                	li	a2,0
   18a94:	4681                	li	a3,0
   18a96:	8baa                	mv	s7,a0
   18a98:	f02e                	sd	a1,32(sp)
   18a9a:	72c020ef          	jal	ra,1b1c6 <__eqtf2>
   18a9e:	7f82                	ld	t6,32(sp)
   18aa0:	7342                	ld	t1,48(sp)
   18aa2:	e119                	bnez	a0,18aa8 <_svfprintf_r+0x1952>
   18aa4:	4785                	li	a5,1
   18aa6:	d5be                	sw	a5,232(sp)
   18aa8:	67f1                	lui	a5,0x1c
   18aaa:	72878793          	addi	a5,a5,1832 # 1c728 <__clzdi2+0xf8>
   18aae:	e4be                	sd	a5,72(sp)
   18ab0:	bb25                	j	187e8 <_svfprintf_r+0x1692>
   18ab2:	06700d13          	li	s10,103
   18ab6:	7786                	ld	a5,96(sp)
   18ab8:	0ff00713          	li	a4,255
   18abc:	e882                	sd	zero,80(sp)
   18abe:	0007c783          	lbu	a5,0(a5)
   18ac2:	ec82                	sd	zero,88(sp)
   18ac4:	02e78863          	beq	a5,a4,18af4 <_svfprintf_r+0x199e>
   18ac8:	0ff00693          	li	a3,255
   18acc:	6626                	ld	a2,72(sp)
   18ace:	0007871b          	sext.w	a4,a5
   18ad2:	02c7d163          	bge	a5,a2,18af4 <_svfprintf_r+0x199e>
   18ad6:	7586                	ld	a1,96(sp)
   18ad8:	40e6073b          	subw	a4,a2,a4
   18adc:	e4ba                	sd	a4,72(sp)
   18ade:	0015c783          	lbu	a5,1(a1)
   18ae2:	cb95                	beqz	a5,18b16 <_svfprintf_r+0x19c0>
   18ae4:	6766                	ld	a4,88(sp)
   18ae6:	2705                	addiw	a4,a4,1
   18ae8:	ecba                	sd	a4,88(sp)
   18aea:	00158713          	addi	a4,a1,1
   18aee:	f0ba                	sd	a4,96(sp)
   18af0:	fcd79ee3          	bne	a5,a3,18acc <_svfprintf_r+0x1976>
   18af4:	6766                	ld	a4,88(sp)
   18af6:	67c6                	ld	a5,80(sp)
   18af8:	9fb9                	addw	a5,a5,a4
   18afa:	670a                	ld	a4,128(sp)
   18afc:	02e787bb          	mulw	a5,a5,a4
   18b00:	017787bb          	addw	a5,a5,s7
   18b04:	00078b9b          	sext.w	s7,a5
   18b08:	fffbc713          	not	a4,s7
   18b0c:	977d                	srai	a4,a4,0x3f
   18b0e:	8ff9                	and	a5,a5,a4
   18b10:	0007891b          	sext.w	s2,a5
   18b14:	bca9                	j	1856e <_svfprintf_r+0x1418>
   18b16:	6746                	ld	a4,80(sp)
   18b18:	7786                	ld	a5,96(sp)
   18b1a:	2705                	addiw	a4,a4,1
   18b1c:	0007c783          	lbu	a5,0(a5)
   18b20:	e8ba                	sd	a4,80(sp)
   18b22:	b7f9                	j	18af0 <_svfprintf_r+0x199a>
   18b24:	77a6                	ld	a5,104(sp)
   18b26:	06600d13          	li	s10,102
   18b2a:	00e78bbb          	addw	s7,a5,a4
   18b2e:	018b8bbb          	addw	s7,s7,s8
   18b32:	b26d                	j	184dc <_svfprintf_r+0x1386>
   18b34:	66c2                	ld	a3,16(sp)
   18b36:	4298                	lw	a4,0(a3)
   18b38:	00868613          	addi	a2,a3,8
   18b3c:	86ba                	mv	a3,a4
   18b3e:	00075363          	bgez	a4,18b44 <_svfprintf_r+0x19ee>
   18b42:	56fd                	li	a3,-1
   18b44:	00144e03          	lbu	t3,1(s0)
   18b48:	00068c1b          	sext.w	s8,a3
   18b4c:	e832                	sd	a2,16(sp)
   18b4e:	843e                	mv	s0,a5
   18b50:	f10fe06f          	j	17260 <_svfprintf_r+0x10a>
   18b54:	e791                	bnez	a5,18b60 <_svfprintf_r+0x1a0a>
   18b56:	4905                	li	s2,1
   18b58:	06600d13          	li	s10,102
   18b5c:	4b85                	li	s7,1
   18b5e:	b431                	j	1856a <_svfprintf_r+0x1414>
   18b60:	77a6                	ld	a5,104(sp)
   18b62:	06600d13          	li	s10,102
   18b66:	2785                	addiw	a5,a5,1
   18b68:	018787bb          	addw	a5,a5,s8
   18b6c:	00078b9b          	sext.w	s7,a5
   18b70:	fffbc713          	not	a4,s7
   18b74:	977d                	srai	a4,a4,0x3f
   18b76:	8ff9                	and	a5,a5,a4
   18b78:	0007891b          	sext.w	s2,a5
   18b7c:	b2fd                	j	1856a <_svfprintf_r+0x1414>
   18b7e:	4789                	li	a5,2
   18b80:	fcbe                	sd	a5,120(sp)
   18b82:	b45d                	j	18628 <_svfprintf_r+0x14d2>
   18b84:	010a5783          	lhu	a5,16(s4)
   18b88:	0407e793          	ori	a5,a5,64
   18b8c:	00fa1823          	sh	a5,16(s4)
   18b90:	837fe06f          	j	173c6 <_svfprintf_r+0x270>
   18b94:	47b1                	li	a5,12
   18b96:	00f9a023          	sw	a5,0(s3)
   18b9a:	57fd                	li	a5,-1
   18b9c:	e43e                	sd	a5,8(sp)
   18b9e:	837fe06f          	j	173d4 <_svfprintf_r+0x27e>

0000000000018ba2 <__sprint_r.part.0>:
   18ba2:	0ac5a783          	lw	a5,172(a1)
   18ba6:	715d                	addi	sp,sp,-80
   18ba8:	ec56                	sd	s5,24(sp)
   18baa:	83b5                	srli	a5,a5,0xd
   18bac:	e486                	sd	ra,72(sp)
   18bae:	e0a2                	sd	s0,64(sp)
   18bb0:	fc26                	sd	s1,56(sp)
   18bb2:	f84a                	sd	s2,48(sp)
   18bb4:	f44e                	sd	s3,40(sp)
   18bb6:	f052                	sd	s4,32(sp)
   18bb8:	e85a                	sd	s6,16(sp)
   18bba:	e45e                	sd	s7,8(sp)
   18bbc:	8b85                	andi	a5,a5,1
   18bbe:	8ab2                	mv	s5,a2
   18bc0:	c3c1                	beqz	a5,18c40 <__sprint_r.part.0+0x9e>
   18bc2:	6a1c                	ld	a5,16(a2)
   18bc4:	00063b03          	ld	s6,0(a2)
   18bc8:	892e                	mv	s2,a1
   18bca:	89aa                	mv	s3,a0
   18bcc:	5a7d                	li	s4,-1
   18bce:	c7bd                	beqz	a5,18c3c <__sprint_r.part.0+0x9a>
   18bd0:	008b3483          	ld	s1,8(s6)
   18bd4:	000b3403          	ld	s0,0(s6)
   18bd8:	8089                	srli	s1,s1,0x2
   18bda:	00048b9b          	sext.w	s7,s1
   18bde:	05705863          	blez	s7,18c2e <__sprint_r.part.0+0x8c>
   18be2:	34fd                	addiw	s1,s1,-1
   18be4:	02049793          	slli	a5,s1,0x20
   18be8:	01e7d493          	srli	s1,a5,0x1e
   18bec:	00440793          	addi	a5,s0,4
   18bf0:	94be                	add	s1,s1,a5
   18bf2:	a019                	j	18bf8 <__sprint_r.part.0+0x56>
   18bf4:	02848b63          	beq	s1,s0,18c2a <__sprint_r.part.0+0x88>
   18bf8:	400c                	lw	a1,0(s0)
   18bfa:	864a                	mv	a2,s2
   18bfc:	854e                	mv	a0,s3
   18bfe:	7bf000ef          	jal	ra,19bbc <_fputwc_r>
   18c02:	2501                	sext.w	a0,a0
   18c04:	0411                	addi	s0,s0,4
   18c06:	ff4517e3          	bne	a0,s4,18bf4 <__sprint_r.part.0+0x52>
   18c0a:	557d                	li	a0,-1
   18c0c:	60a6                	ld	ra,72(sp)
   18c0e:	6406                	ld	s0,64(sp)
   18c10:	000ab823          	sd	zero,16(s5)
   18c14:	000aa423          	sw	zero,8(s5)
   18c18:	74e2                	ld	s1,56(sp)
   18c1a:	7942                	ld	s2,48(sp)
   18c1c:	79a2                	ld	s3,40(sp)
   18c1e:	7a02                	ld	s4,32(sp)
   18c20:	6ae2                	ld	s5,24(sp)
   18c22:	6b42                	ld	s6,16(sp)
   18c24:	6ba2                	ld	s7,8(sp)
   18c26:	6161                	addi	sp,sp,80
   18c28:	8082                	ret
   18c2a:	010ab783          	ld	a5,16(s5)
   18c2e:	0b8a                	slli	s7,s7,0x2
   18c30:	417787b3          	sub	a5,a5,s7
   18c34:	00fab823          	sd	a5,16(s5)
   18c38:	0b41                	addi	s6,s6,16
   18c3a:	fbd9                	bnez	a5,18bd0 <__sprint_r.part.0+0x2e>
   18c3c:	4501                	li	a0,0
   18c3e:	b7f9                	j	18c0c <__sprint_r.part.0+0x6a>
   18c40:	b83fa0ef          	jal	ra,137c2 <__sfvwrite_r>
   18c44:	b7e1                	j	18c0c <__sprint_r.part.0+0x6a>

0000000000018c46 <__sprint_r>:
   18c46:	6a18                	ld	a4,16(a2)
   18c48:	c319                	beqz	a4,18c4e <__sprint_r+0x8>
   18c4a:	f59ff06f          	j	18ba2 <__sprint_r.part.0>
   18c4e:	00062423          	sw	zero,8(a2)
   18c52:	4501                	li	a0,0
   18c54:	8082                	ret

0000000000018c56 <_vfiprintf_r>:
   18c56:	7145                	addi	sp,sp,-464
   18c58:	f74e                	sd	s3,424(sp)
   18c5a:	ef56                	sd	s5,408(sp)
   18c5c:	f6ee                	sd	s11,360(sp)
   18c5e:	e786                	sd	ra,456(sp)
   18c60:	e3a2                	sd	s0,448(sp)
   18c62:	ff26                	sd	s1,440(sp)
   18c64:	fb4a                	sd	s2,432(sp)
   18c66:	f352                	sd	s4,416(sp)
   18c68:	eb5a                	sd	s6,400(sp)
   18c6a:	e75e                	sd	s7,392(sp)
   18c6c:	e362                	sd	s8,384(sp)
   18c6e:	fee6                	sd	s9,376(sp)
   18c70:	faea                	sd	s10,368(sp)
   18c72:	e436                	sd	a3,8(sp)
   18c74:	8aaa                	mv	s5,a0
   18c76:	89ae                	mv	s3,a1
   18c78:	8db2                	mv	s11,a2
   18c7a:	c501                	beqz	a0,18c82 <_vfiprintf_r+0x2c>
   18c7c:	493c                	lw	a5,80(a0)
   18c7e:	42078563          	beqz	a5,190a8 <_vfiprintf_r+0x452>
   18c82:	01099703          	lh	a4,16(s3)
   18c86:	6689                	lui	a3,0x2
   18c88:	03071793          	slli	a5,a4,0x30
   18c8c:	93c1                	srli	a5,a5,0x30
   18c8e:	00d7f633          	and	a2,a5,a3
   18c92:	e215                	bnez	a2,18cb6 <_vfiprintf_r+0x60>
   18c94:	0ac9a603          	lw	a2,172(s3)
   18c98:	00d767b3          	or	a5,a4,a3
   18c9c:	0107979b          	slliw	a5,a5,0x10
   18ca0:	7779                	lui	a4,0xffffe
   18ca2:	4107d79b          	sraiw	a5,a5,0x10
   18ca6:	177d                	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde6df>
   18ca8:	8f71                	and	a4,a4,a2
   18caa:	00f99823          	sh	a5,16(s3)
   18cae:	17c2                	slli	a5,a5,0x30
   18cb0:	0ae9a623          	sw	a4,172(s3)
   18cb4:	93c1                	srli	a5,a5,0x30
   18cb6:	0087f713          	andi	a4,a5,8
   18cba:	28070d63          	beqz	a4,18f54 <_vfiprintf_r+0x2fe>
   18cbe:	0189b703          	ld	a4,24(s3)
   18cc2:	28070963          	beqz	a4,18f54 <_vfiprintf_r+0x2fe>
   18cc6:	8be9                	andi	a5,a5,26
   18cc8:	4729                	li	a4,10
   18cca:	2ae78163          	beq	a5,a4,18f6c <_vfiprintf_r+0x316>
   18cce:	67f5                	lui	a5,0x1d
   18cd0:	1180                	addi	s0,sp,224
   18cd2:	08078793          	addi	a5,a5,128 # 1d080 <zeroes.0+0x10>
   18cd6:	6b75                	lui	s6,0x1d
   18cd8:	6975                	lui	s2,0x1d
   18cda:	f0a2                	sd	s0,96(sp)
   18cdc:	f882                	sd	zero,112(sp)
   18cde:	d482                	sw	zero,104(sp)
   18ce0:	8722                	mv	a4,s0
   18ce2:	e802                	sd	zero,16(sp)
   18ce4:	fc02                	sd	zero,56(sp)
   18ce6:	e482                	sd	zero,72(sp)
   18ce8:	e082                	sd	zero,64(sp)
   18cea:	e002                	sd	zero,0(sp)
   18cec:	ec3e                	sd	a5,24(sp)
   18cee:	1f0b0b13          	addi	s6,s6,496 # 1d1f0 <blanks.1>
   18cf2:	20090913          	addi	s2,s2,512 # 1d200 <zeroes.0>
   18cf6:	000dc783          	lbu	a5,0(s11)
   18cfa:	1c078263          	beqz	a5,18ebe <_vfiprintf_r+0x268>
   18cfe:	84ee                	mv	s1,s11
   18d00:	02500693          	li	a3,37
   18d04:	2ed78963          	beq	a5,a3,18ff6 <_vfiprintf_r+0x3a0>
   18d08:	0014c783          	lbu	a5,1(s1)
   18d0c:	0485                	addi	s1,s1,1
   18d0e:	fbfd                	bnez	a5,18d04 <_vfiprintf_r+0xae>
   18d10:	41b48a3b          	subw	s4,s1,s11
   18d14:	1a0a0563          	beqz	s4,18ebe <_vfiprintf_r+0x268>
   18d18:	57a6                	lw	a5,104(sp)
   18d1a:	76c6                	ld	a3,112(sp)
   18d1c:	01b73023          	sd	s11,0(a4)
   18d20:	0017861b          	addiw	a2,a5,1
   18d24:	96d2                	add	a3,a3,s4
   18d26:	01473423          	sd	s4,8(a4)
   18d2a:	f8b6                	sd	a3,112(sp)
   18d2c:	d4b2                	sw	a2,104(sp)
   18d2e:	479d                	li	a5,7
   18d30:	0741                	addi	a4,a4,16
   18d32:	00c7dc63          	bge	a5,a2,18d4a <_vfiprintf_r+0xf4>
   18d36:	060688e3          	beqz	a3,195a6 <_vfiprintf_r+0x950>
   18d3a:	1090                	addi	a2,sp,96
   18d3c:	85ce                	mv	a1,s3
   18d3e:	8556                	mv	a0,s5
   18d40:	e63ff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   18d44:	18051063          	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   18d48:	8722                	mv	a4,s0
   18d4a:	6682                	ld	a3,0(sp)
   18d4c:	0004c783          	lbu	a5,0(s1)
   18d50:	014686bb          	addw	a3,a3,s4
   18d54:	e036                	sd	a3,0(sp)
   18d56:	16078463          	beqz	a5,18ebe <_vfiprintf_r+0x268>
   18d5a:	0014c783          	lbu	a5,1(s1)
   18d5e:	00148d93          	addi	s11,s1,1
   18d62:	04010ba3          	sb	zero,87(sp)
   18d66:	5cfd                	li	s9,-1
   18d68:	4481                	li	s1,0
   18d6a:	4d01                	li	s10,0
   18d6c:	05a00a13          	li	s4,90
   18d70:	4ba5                	li	s7,9
   18d72:	0d85                	addi	s11,s11,1
   18d74:	2781                	sext.w	a5,a5
   18d76:	02a00593          	li	a1,42
   18d7a:	fe07869b          	addiw	a3,a5,-32
   18d7e:	0006861b          	sext.w	a2,a3
   18d82:	04ca6363          	bltu	s4,a2,18dc8 <_vfiprintf_r+0x172>
   18d86:	02069613          	slli	a2,a3,0x20
   18d8a:	01e65693          	srli	a3,a2,0x1e
   18d8e:	6662                	ld	a2,24(sp)
   18d90:	96b2                	add	a3,a3,a2
   18d92:	4294                	lw	a3,0(a3)
   18d94:	8682                	jr	a3
   18d96:	4481                	li	s1,0
   18d98:	000dc603          	lbu	a2,0(s11)
   18d9c:	0024969b          	slliw	a3,s1,0x2
   18da0:	9ea5                	addw	a3,a3,s1
   18da2:	fd07879b          	addiw	a5,a5,-48
   18da6:	0016969b          	slliw	a3,a3,0x1
   18daa:	fd06051b          	addiw	a0,a2,-48
   18dae:	00d784bb          	addw	s1,a5,a3
   18db2:	0d85                	addi	s11,s11,1
   18db4:	0006079b          	sext.w	a5,a2
   18db8:	feabf0e3          	bgeu	s7,a0,18d98 <_vfiprintf_r+0x142>
   18dbc:	fe07869b          	addiw	a3,a5,-32
   18dc0:	0006861b          	sext.w	a2,a3
   18dc4:	fcca71e3          	bgeu	s4,a2,18d86 <_vfiprintf_r+0x130>
   18dc8:	cbfd                	beqz	a5,18ebe <_vfiprintf_r+0x268>
   18dca:	06f10c23          	sb	a5,120(sp)
   18dce:	04010ba3          	sb	zero,87(sp)
   18dd2:	4b85                	li	s7,1
   18dd4:	4a05                	li	s4,1
   18dd6:	07810c13          	addi	s8,sp,120
   18dda:	4c81                	li	s9,0
   18ddc:	002d7293          	andi	t0,s10,2
   18de0:	00028363          	beqz	t0,18de6 <_vfiprintf_r+0x190>
   18de4:	2b89                	addiw	s7,s7,2
   18de6:	56a6                	lw	a3,104(sp)
   18de8:	084d7f93          	andi	t6,s10,132
   18dec:	77c6                	ld	a5,112(sp)
   18dee:	0016861b          	addiw	a2,a3,1 # 2001 <exit-0xe0e7>
   18df2:	85b2                	mv	a1,a2
   18df4:	000f9663          	bnez	t6,18e00 <_vfiprintf_r+0x1aa>
   18df8:	41748ebb          	subw	t4,s1,s7
   18dfc:	65d04f63          	bgtz	t4,1945a <_vfiprintf_r+0x804>
   18e00:	05714583          	lbu	a1,87(sp)
   18e04:	cd99                	beqz	a1,18e22 <_vfiprintf_r+0x1cc>
   18e06:	05710693          	addi	a3,sp,87
   18e0a:	0785                	addi	a5,a5,1
   18e0c:	e314                	sd	a3,0(a4)
   18e0e:	4685                	li	a3,1
   18e10:	e714                	sd	a3,8(a4)
   18e12:	f8be                	sd	a5,112(sp)
   18e14:	d4b2                	sw	a2,104(sp)
   18e16:	469d                	li	a3,7
   18e18:	5cc6cb63          	blt	a3,a2,193ee <_vfiprintf_r+0x798>
   18e1c:	86b2                	mv	a3,a2
   18e1e:	0741                	addi	a4,a4,16
   18e20:	2605                	addiw	a2,a2,1
   18e22:	02028b63          	beqz	t0,18e58 <_vfiprintf_r+0x202>
   18e26:	08b4                	addi	a3,sp,88
   18e28:	0789                	addi	a5,a5,2
   18e2a:	e314                	sd	a3,0(a4)
   18e2c:	4689                	li	a3,2
   18e2e:	e714                	sd	a3,8(a4)
   18e30:	f8be                	sd	a5,112(sp)
   18e32:	d4b2                	sw	a2,104(sp)
   18e34:	469d                	li	a3,7
   18e36:	5ec6dd63          	bge	a3,a2,19430 <_vfiprintf_r+0x7da>
   18e3a:	78078a63          	beqz	a5,195ce <_vfiprintf_r+0x978>
   18e3e:	1090                	addi	a2,sp,96
   18e40:	85ce                	mv	a1,s3
   18e42:	8556                	mv	a0,s5
   18e44:	f07e                	sd	t6,32(sp)
   18e46:	d5dff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   18e4a:	ed2d                	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   18e4c:	56a6                	lw	a3,104(sp)
   18e4e:	77c6                	ld	a5,112(sp)
   18e50:	7f82                	ld	t6,32(sp)
   18e52:	8722                	mv	a4,s0
   18e54:	0016861b          	addiw	a2,a3,1
   18e58:	08000593          	li	a1,128
   18e5c:	46bf8663          	beq	t6,a1,192c8 <_vfiprintf_r+0x672>
   18e60:	414c8cbb          	subw	s9,s9,s4
   18e64:	4f904e63          	bgtz	s9,19360 <_vfiprintf_r+0x70a>
   18e68:	97d2                	add	a5,a5,s4
   18e6a:	01873023          	sd	s8,0(a4)
   18e6e:	01473423          	sd	s4,8(a4)
   18e72:	f8be                	sd	a5,112(sp)
   18e74:	d4b2                	sw	a2,104(sp)
   18e76:	469d                	li	a3,7
   18e78:	42c6d163          	bge	a3,a2,1929a <_vfiprintf_r+0x644>
   18e7c:	66078463          	beqz	a5,194e4 <_vfiprintf_r+0x88e>
   18e80:	1090                	addi	a2,sp,96
   18e82:	85ce                	mv	a1,s3
   18e84:	8556                	mv	a0,s5
   18e86:	d1dff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   18e8a:	ed0d                	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   18e8c:	77c6                	ld	a5,112(sp)
   18e8e:	8722                	mv	a4,s0
   18e90:	004d7313          	andi	t1,s10,4
   18e94:	00030663          	beqz	t1,18ea0 <_vfiprintf_r+0x24a>
   18e98:	41748a3b          	subw	s4,s1,s7
   18e9c:	65404e63          	bgtz	s4,194f8 <_vfiprintf_r+0x8a2>
   18ea0:	8726                	mv	a4,s1
   18ea2:	0174d363          	bge	s1,s7,18ea8 <_vfiprintf_r+0x252>
   18ea6:	875e                	mv	a4,s7
   18ea8:	6682                	ld	a3,0(sp)
   18eaa:	9f35                	addw	a4,a4,a3
   18eac:	e03a                	sd	a4,0(sp)
   18eae:	52079463          	bnez	a5,193d6 <_vfiprintf_r+0x780>
   18eb2:	000dc783          	lbu	a5,0(s11)
   18eb6:	d482                	sw	zero,104(sp)
   18eb8:	8722                	mv	a4,s0
   18eba:	e40792e3          	bnez	a5,18cfe <_vfiprintf_r+0xa8>
   18ebe:	77c6                	ld	a5,112(sp)
   18ec0:	16079fe3          	bnez	a5,1983e <_vfiprintf_r+0xbe8>
   18ec4:	0109d783          	lhu	a5,16(s3)
   18ec8:	0407f793          	andi	a5,a5,64
   18ecc:	18079ae3          	bnez	a5,19860 <_vfiprintf_r+0xc0a>
   18ed0:	60be                	ld	ra,456(sp)
   18ed2:	641e                	ld	s0,448(sp)
   18ed4:	6502                	ld	a0,0(sp)
   18ed6:	74fa                	ld	s1,440(sp)
   18ed8:	795a                	ld	s2,432(sp)
   18eda:	79ba                	ld	s3,424(sp)
   18edc:	7a1a                	ld	s4,416(sp)
   18ede:	6afa                	ld	s5,408(sp)
   18ee0:	6b5a                	ld	s6,400(sp)
   18ee2:	6bba                	ld	s7,392(sp)
   18ee4:	6c1a                	ld	s8,384(sp)
   18ee6:	7cf6                	ld	s9,376(sp)
   18ee8:	7d56                	ld	s10,368(sp)
   18eea:	7db6                	ld	s11,360(sp)
   18eec:	6179                	addi	sp,sp,464
   18eee:	8082                	ret
   18ef0:	010d6313          	ori	t1,s10,16
   18ef4:	000dc783          	lbu	a5,0(s11)
   18ef8:	00030d1b          	sext.w	s10,t1
   18efc:	bd9d                	j	18d72 <_vfiprintf_r+0x11c>
   18efe:	010d6313          	ori	t1,s10,16
   18f02:	00030d1b          	sext.w	s10,t1
   18f06:	66a2                	ld	a3,8(sp)
   18f08:	020d7793          	andi	a5,s10,32
   18f0c:	00868613          	addi	a2,a3,8
   18f10:	cbf5                	beqz	a5,19004 <_vfiprintf_r+0x3ae>
   18f12:	629c                	ld	a5,0(a3)
   18f14:	8bbe                	mv	s7,a5
   18f16:	1007c963          	bltz	a5,19028 <_vfiprintf_r+0x3d2>
   18f1a:	57fd                	li	a5,-1
   18f1c:	04fc80e3          	beq	s9,a5,1975c <_vfiprintf_r+0xb06>
   18f20:	f7fd7693          	andi	a3,s10,-129
   18f24:	2681                	sext.w	a3,a3
   18f26:	7a0b9063          	bnez	s7,196c6 <_vfiprintf_r+0xa70>
   18f2a:	140c94e3          	bnez	s9,19872 <_vfiprintf_r+0xc1c>
   18f2e:	8d36                	mv	s10,a3
   18f30:	e432                	sd	a2,8(sp)
   18f32:	4c81                	li	s9,0
   18f34:	4a01                	li	s4,0
   18f36:	0dc10c13          	addi	s8,sp,220
   18f3a:	87e6                	mv	a5,s9
   18f3c:	014cd363          	bge	s9,s4,18f42 <_vfiprintf_r+0x2ec>
   18f40:	87d2                	mv	a5,s4
   18f42:	05714683          	lbu	a3,87(sp)
   18f46:	00078b9b          	sext.w	s7,a5
   18f4a:	e80689e3          	beqz	a3,18ddc <_vfiprintf_r+0x186>
   18f4e:	00178b9b          	addiw	s7,a5,1
   18f52:	b569                	j	18ddc <_vfiprintf_r+0x186>
   18f54:	85ce                	mv	a1,s3
   18f56:	8556                	mv	a0,s5
   18f58:	84afa0ef          	jal	ra,12fa2 <__swsetup_r>
   18f5c:	100512e3          	bnez	a0,19860 <_vfiprintf_r+0xc0a>
   18f60:	0109d783          	lhu	a5,16(s3)
   18f64:	4729                	li	a4,10
   18f66:	8be9                	andi	a5,a5,26
   18f68:	d6e793e3          	bne	a5,a4,18cce <_vfiprintf_r+0x78>
   18f6c:	01299783          	lh	a5,18(s3)
   18f70:	d407cfe3          	bltz	a5,18cce <_vfiprintf_r+0x78>
   18f74:	641e                	ld	s0,448(sp)
   18f76:	66a2                	ld	a3,8(sp)
   18f78:	60be                	ld	ra,456(sp)
   18f7a:	74fa                	ld	s1,440(sp)
   18f7c:	795a                	ld	s2,432(sp)
   18f7e:	7a1a                	ld	s4,416(sp)
   18f80:	6b5a                	ld	s6,400(sp)
   18f82:	6bba                	ld	s7,392(sp)
   18f84:	6c1a                	ld	s8,384(sp)
   18f86:	7cf6                	ld	s9,376(sp)
   18f88:	7d56                	ld	s10,368(sp)
   18f8a:	866e                	mv	a2,s11
   18f8c:	85ce                	mv	a1,s3
   18f8e:	7db6                	ld	s11,360(sp)
   18f90:	79ba                	ld	s3,424(sp)
   18f92:	8556                	mv	a0,s5
   18f94:	6afa                	ld	s5,408(sp)
   18f96:	6179                	addi	sp,sp,464
   18f98:	10f0006f          	j	198a6 <__sbprintf>
   18f9c:	010d6313          	ori	t1,s10,16
   18fa0:	00030d1b          	sext.w	s10,t1
   18fa4:	66a2                	ld	a3,8(sp)
   18fa6:	020d7793          	andi	a5,s10,32
   18faa:	00868613          	addi	a2,a3,8
   18fae:	cff1                	beqz	a5,1908a <_vfiprintf_r+0x434>
   18fb0:	0006bb83          	ld	s7,0(a3)
   18fb4:	bffd7693          	andi	a3,s10,-1025
   18fb8:	2681                	sext.w	a3,a3
   18fba:	e432                	sd	a2,8(sp)
   18fbc:	4781                	li	a5,0
   18fbe:	4601                	li	a2,0
   18fc0:	04c10ba3          	sb	a2,87(sp)
   18fc4:	567d                	li	a2,-1
   18fc6:	06cc8d63          	beq	s9,a2,19040 <_vfiprintf_r+0x3ea>
   18fca:	f7f6f313          	andi	t1,a3,-129
   18fce:	00030d1b          	sext.w	s10,t1
   18fd2:	460b9463          	bnez	s7,1943a <_vfiprintf_r+0x7e4>
   18fd6:	780c9663          	bnez	s9,19762 <_vfiprintf_r+0xb0c>
   18fda:	ffa1                	bnez	a5,18f32 <_vfiprintf_r+0x2dc>
   18fdc:	0016fa13          	andi	s4,a3,1
   18fe0:	0dc10c13          	addi	s8,sp,220
   18fe4:	f40a0be3          	beqz	s4,18f3a <_vfiprintf_r+0x2e4>
   18fe8:	03000793          	li	a5,48
   18fec:	0cf10da3          	sb	a5,219(sp)
   18ff0:	0db10c13          	addi	s8,sp,219
   18ff4:	b799                	j	18f3a <_vfiprintf_r+0x2e4>
   18ff6:	41b48a3b          	subw	s4,s1,s11
   18ffa:	d00a1fe3          	bnez	s4,18d18 <_vfiprintf_r+0xc2>
   18ffe:	0004c783          	lbu	a5,0(s1)
   19002:	bb91                	j	18d56 <_vfiprintf_r+0x100>
   19004:	010d7793          	andi	a5,s10,16
   19008:	6a079463          	bnez	a5,196b0 <_vfiprintf_r+0xa5a>
   1900c:	66a2                	ld	a3,8(sp)
   1900e:	040d7793          	andi	a5,s10,64
   19012:	0006ab83          	lw	s7,0(a3)
   19016:	7a078c63          	beqz	a5,197ce <_vfiprintf_r+0xb78>
   1901a:	010b9b9b          	slliw	s7,s7,0x10
   1901e:	410bdb9b          	sraiw	s7,s7,0x10
   19022:	87de                	mv	a5,s7
   19024:	ee07dbe3          	bgez	a5,18f1a <_vfiprintf_r+0x2c4>
   19028:	e432                	sd	a2,8(sp)
   1902a:	02d00613          	li	a2,45
   1902e:	04c10ba3          	sb	a2,87(sp)
   19032:	567d                	li	a2,-1
   19034:	41700bb3          	neg	s7,s7
   19038:	86ea                	mv	a3,s10
   1903a:	4785                	li	a5,1
   1903c:	f8cc97e3          	bne	s9,a2,18fca <_vfiprintf_r+0x374>
   19040:	4605                	li	a2,1
   19042:	40c78063          	beq	a5,a2,19442 <_vfiprintf_r+0x7ec>
   19046:	4609                	li	a2,2
   19048:	24c78c63          	beq	a5,a2,192a0 <_vfiprintf_r+0x64a>
   1904c:	0dc10a13          	addi	s4,sp,220
   19050:	8c52                	mv	s8,s4
   19052:	007bf793          	andi	a5,s7,7
   19056:	03078793          	addi	a5,a5,48
   1905a:	fefc0fa3          	sb	a5,-1(s8)
   1905e:	003bdb93          	srli	s7,s7,0x3
   19062:	8662                	mv	a2,s8
   19064:	1c7d                	addi	s8,s8,-1
   19066:	fe0b96e3          	bnez	s7,19052 <_vfiprintf_r+0x3fc>
   1906a:	0016f593          	andi	a1,a3,1
   1906e:	24058963          	beqz	a1,192c0 <_vfiprintf_r+0x66a>
   19072:	03000593          	li	a1,48
   19076:	24b78563          	beq	a5,a1,192c0 <_vfiprintf_r+0x66a>
   1907a:	1679                	addi	a2,a2,-2
   1907c:	febc0fa3          	sb	a1,-1(s8)
   19080:	40ca0a3b          	subw	s4,s4,a2
   19084:	8d36                	mv	s10,a3
   19086:	8c32                	mv	s8,a2
   19088:	bd4d                	j	18f3a <_vfiprintf_r+0x2e4>
   1908a:	010d7793          	andi	a5,s10,16
   1908e:	60079d63          	bnez	a5,196a8 <_vfiprintf_r+0xa52>
   19092:	66a2                	ld	a3,8(sp)
   19094:	040d7793          	andi	a5,s10,64
   19098:	0006ab83          	lw	s7,0(a3)
   1909c:	72078263          	beqz	a5,197c0 <_vfiprintf_r+0xb6a>
   190a0:	1bc2                	slli	s7,s7,0x30
   190a2:	030bdb93          	srli	s7,s7,0x30
   190a6:	b739                	j	18fb4 <_vfiprintf_r+0x35e>
   190a8:	d1ef70ef          	jal	ra,105c6 <__sinit>
   190ac:	bed9                	j	18c82 <_vfiprintf_r+0x2c>
   190ae:	67a2                	ld	a5,8(sp)
   190b0:	04010ba3          	sb	zero,87(sp)
   190b4:	0007bc03          	ld	s8,0(a5)
   190b8:	00878693          	addi	a3,a5,8
   190bc:	6c0c0d63          	beqz	s8,19796 <_vfiprintf_r+0xb40>
   190c0:	57fd                	li	a5,-1
   190c2:	66fc8863          	beq	s9,a5,19732 <_vfiprintf_r+0xadc>
   190c6:	8666                	mv	a2,s9
   190c8:	4581                	li	a1,0
   190ca:	8562                	mv	a0,s8
   190cc:	f036                	sd	a3,32(sp)
   190ce:	e43a                	sd	a4,8(sp)
   190d0:	cadf70ef          	jal	ra,10d7c <memchr>
   190d4:	6722                	ld	a4,8(sp)
   190d6:	7682                	ld	a3,32(sp)
   190d8:	76050a63          	beqz	a0,1984c <_vfiprintf_r+0xbf6>
   190dc:	41850a3b          	subw	s4,a0,s8
   190e0:	e436                	sd	a3,8(sp)
   190e2:	4c81                	li	s9,0
   190e4:	bd99                	j	18f3a <_vfiprintf_r+0x2e4>
   190e6:	66a2                	ld	a3,8(sp)
   190e8:	04010ba3          	sb	zero,87(sp)
   190ec:	4b85                	li	s7,1
   190ee:	429c                	lw	a5,0(a3)
   190f0:	06a1                	addi	a3,a3,8
   190f2:	e436                	sd	a3,8(sp)
   190f4:	06f10c23          	sb	a5,120(sp)
   190f8:	4a05                	li	s4,1
   190fa:	07810c13          	addi	s8,sp,120
   190fe:	b9f1                	j	18dda <_vfiprintf_r+0x184>
   19100:	67a2                	ld	a5,8(sp)
   19102:	4384                	lw	s1,0(a5)
   19104:	00878c13          	addi	s8,a5,8
   19108:	5404dd63          	bgez	s1,19662 <_vfiprintf_r+0xa0c>
   1910c:	409004bb          	negw	s1,s1
   19110:	e462                	sd	s8,8(sp)
   19112:	004d6313          	ori	t1,s10,4
   19116:	000dc783          	lbu	a5,0(s11)
   1911a:	00030d1b          	sext.w	s10,t1
   1911e:	b991                	j	18d72 <_vfiprintf_r+0x11c>
   19120:	020d6313          	ori	t1,s10,32
   19124:	000dc783          	lbu	a5,0(s11)
   19128:	00030d1b          	sext.w	s10,t1
   1912c:	b199                	j	18d72 <_vfiprintf_r+0x11c>
   1912e:	6622                	ld	a2,8(sp)
   19130:	77e1                	lui	a5,0xffff8
   19132:	8307c793          	xori	a5,a5,-2000
   19136:	002d6693          	ori	a3,s10,2
   1913a:	04f11c23          	sh	a5,88(sp)
   1913e:	6d71                	lui	s10,0x1c
   19140:	00860793          	addi	a5,a2,8
   19144:	e43e                	sd	a5,8(sp)
   19146:	728d0793          	addi	a5,s10,1832 # 1c728 <__clzdi2+0xf8>
   1914a:	e83e                	sd	a5,16(sp)
   1914c:	00063b83          	ld	s7,0(a2)
   19150:	2681                	sext.w	a3,a3
   19152:	4789                	li	a5,2
   19154:	b5ad                	j	18fbe <_vfiprintf_r+0x368>
   19156:	6622                	ld	a2,8(sp)
   19158:	020d7793          	andi	a5,s10,32
   1915c:	6214                	ld	a3,0(a2)
   1915e:	0621                	addi	a2,a2,8
   19160:	e432                	sd	a2,8(sp)
   19162:	e385                	bnez	a5,19182 <_vfiprintf_r+0x52c>
   19164:	010d7793          	andi	a5,s10,16
   19168:	ef89                	bnez	a5,19182 <_vfiprintf_r+0x52c>
   1916a:	040d7793          	andi	a5,s10,64
   1916e:	6a079063          	bnez	a5,1980e <_vfiprintf_r+0xbb8>
   19172:	200d7313          	andi	t1,s10,512
   19176:	6782                	ld	a5,0(sp)
   19178:	6e030a63          	beqz	t1,1986c <_vfiprintf_r+0xc16>
   1917c:	00f68023          	sb	a5,0(a3)
   19180:	be9d                	j	18cf6 <_vfiprintf_r+0xa0>
   19182:	6782                	ld	a5,0(sp)
   19184:	e29c                	sd	a5,0(a3)
   19186:	be85                	j	18cf6 <_vfiprintf_r+0xa0>
   19188:	02b00693          	li	a3,43
   1918c:	000dc783          	lbu	a5,0(s11)
   19190:	04d10ba3          	sb	a3,87(sp)
   19194:	bef9                	j	18d72 <_vfiprintf_r+0x11c>
   19196:	080d6313          	ori	t1,s10,128
   1919a:	000dc783          	lbu	a5,0(s11)
   1919e:	00030d1b          	sext.w	s10,t1
   191a2:	bec1                	j	18d72 <_vfiprintf_r+0x11c>
   191a4:	000dc783          	lbu	a5,0(s11)
   191a8:	001d8693          	addi	a3,s11,1
   191ac:	6cb78563          	beq	a5,a1,19876 <_vfiprintf_r+0xc20>
   191b0:	fd07861b          	addiw	a2,a5,-48 # ffffffffffff7fd0 <__BSS_END__+0xfffffffffffd86b0>
   191b4:	8db6                	mv	s11,a3
   191b6:	4c81                	li	s9,0
   191b8:	bccbe1e3          	bltu	s7,a2,18d7a <_vfiprintf_r+0x124>
   191bc:	000dc783          	lbu	a5,0(s11)
   191c0:	002c969b          	slliw	a3,s9,0x2
   191c4:	019686bb          	addw	a3,a3,s9
   191c8:	0016969b          	slliw	a3,a3,0x1
   191cc:	00c68cbb          	addw	s9,a3,a2
   191d0:	fd07861b          	addiw	a2,a5,-48
   191d4:	0d85                	addi	s11,s11,1
   191d6:	fecbf3e3          	bgeu	s7,a2,191bc <_vfiprintf_r+0x566>
   191da:	b645                	j	18d7a <_vfiprintf_r+0x124>
   191dc:	8556                	mv	a0,s5
   191de:	f03a                	sd	a4,32(sp)
   191e0:	965fc0ef          	jal	ra,15b44 <_localeconv_r>
   191e4:	651c                	ld	a5,8(a0)
   191e6:	853e                	mv	a0,a5
   191e8:	e0be                	sd	a5,64(sp)
   191ea:	9b0f80ef          	jal	ra,1139a <strlen>
   191ee:	87aa                	mv	a5,a0
   191f0:	8556                	mv	a0,s5
   191f2:	8c3e                	mv	s8,a5
   191f4:	e4be                	sd	a5,72(sp)
   191f6:	94ffc0ef          	jal	ra,15b44 <_localeconv_r>
   191fa:	6914                	ld	a3,16(a0)
   191fc:	7702                	ld	a4,32(sp)
   191fe:	000dc783          	lbu	a5,0(s11)
   19202:	fc36                	sd	a3,56(sp)
   19204:	b60c07e3          	beqz	s8,18d72 <_vfiprintf_r+0x11c>
   19208:	b60685e3          	beqz	a3,18d72 <_vfiprintf_r+0x11c>
   1920c:	0006c683          	lbu	a3,0(a3)
   19210:	b60681e3          	beqz	a3,18d72 <_vfiprintf_r+0x11c>
   19214:	400d6313          	ori	t1,s10,1024
   19218:	00030d1b          	sext.w	s10,t1
   1921c:	be99                	j	18d72 <_vfiprintf_r+0x11c>
   1921e:	001d6313          	ori	t1,s10,1
   19222:	000dc783          	lbu	a5,0(s11)
   19226:	00030d1b          	sext.w	s10,t1
   1922a:	b6a1                	j	18d72 <_vfiprintf_r+0x11c>
   1922c:	05714683          	lbu	a3,87(sp)
   19230:	000dc783          	lbu	a5,0(s11)
   19234:	b2069fe3          	bnez	a3,18d72 <_vfiprintf_r+0x11c>
   19238:	02000693          	li	a3,32
   1923c:	04d10ba3          	sb	a3,87(sp)
   19240:	be0d                	j	18d72 <_vfiprintf_r+0x11c>
   19242:	000dc783          	lbu	a5,0(s11)
   19246:	06c00693          	li	a3,108
   1924a:	52d78d63          	beq	a5,a3,19784 <_vfiprintf_r+0xb2e>
   1924e:	010d6313          	ori	t1,s10,16
   19252:	00030d1b          	sext.w	s10,t1
   19256:	be31                	j	18d72 <_vfiprintf_r+0x11c>
   19258:	000dc783          	lbu	a5,0(s11)
   1925c:	06800693          	li	a3,104
   19260:	50d78963          	beq	a5,a3,19772 <_vfiprintf_r+0xb1c>
   19264:	040d6313          	ori	t1,s10,64
   19268:	00030d1b          	sext.w	s10,t1
   1926c:	b619                	j	18d72 <_vfiprintf_r+0x11c>
   1926e:	010d6693          	ori	a3,s10,16
   19272:	2681                	sext.w	a3,a3
   19274:	65a2                	ld	a1,8(sp)
   19276:	0206f793          	andi	a5,a3,32
   1927a:	00858613          	addi	a2,a1,8
   1927e:	32078863          	beqz	a5,195ae <_vfiprintf_r+0x958>
   19282:	0005bb83          	ld	s7,0(a1)
   19286:	4785                	li	a5,1
   19288:	e432                	sd	a2,8(sp)
   1928a:	bb15                	j	18fbe <_vfiprintf_r+0x368>
   1928c:	4705                	li	a4,1
   1928e:	d4ba                	sw	a4,104(sp)
   19290:	87d2                	mv	a5,s4
   19292:	f1e2                	sd	s8,224(sp)
   19294:	f5d2                	sd	s4,232(sp)
   19296:	f8d2                	sd	s4,112(sp)
   19298:	8722                	mv	a4,s0
   1929a:	0741                	addi	a4,a4,16
   1929c:	bed5                	j	18e90 <_vfiprintf_r+0x23a>
   1929e:	86ea                	mv	a3,s10
   192a0:	0dc10a13          	addi	s4,sp,220
   192a4:	8c52                	mv	s8,s4
   192a6:	6642                	ld	a2,16(sp)
   192a8:	00fbf793          	andi	a5,s7,15
   192ac:	1c7d                	addi	s8,s8,-1
   192ae:	97b2                	add	a5,a5,a2
   192b0:	0007c783          	lbu	a5,0(a5)
   192b4:	004bdb93          	srli	s7,s7,0x4
   192b8:	00fc0023          	sb	a5,0(s8)
   192bc:	fe0b95e3          	bnez	s7,192a6 <_vfiprintf_r+0x650>
   192c0:	418a0a3b          	subw	s4,s4,s8
   192c4:	8d36                	mv	s10,a3
   192c6:	b995                	j	18f3a <_vfiprintf_r+0x2e4>
   192c8:	41748ebb          	subw	t4,s1,s7
   192cc:	b9d05ae3          	blez	t4,18e60 <_vfiprintf_r+0x20a>
   192d0:	45c1                	li	a1,16
   192d2:	59d5db63          	bge	a1,t4,19868 <_vfiprintf_r+0xc12>
   192d6:	4f41                	li	t5,16
   192d8:	4f9d                	li	t6,7
   192da:	a801                	j	192ea <_vfiprintf_r+0x694>
   192dc:	0026851b          	addiw	a0,a3,2
   192e0:	0741                	addi	a4,a4,16
   192e2:	86ae                	mv	a3,a1
   192e4:	3ec1                	addiw	t4,t4,-16
   192e6:	05df5163          	bge	t5,t4,19328 <_vfiprintf_r+0x6d2>
   192ea:	0016859b          	addiw	a1,a3,1
   192ee:	07c1                	addi	a5,a5,16
   192f0:	01273023          	sd	s2,0(a4)
   192f4:	01e73423          	sd	t5,8(a4)
   192f8:	f8be                	sd	a5,112(sp)
   192fa:	d4ae                	sw	a1,104(sp)
   192fc:	febfd0e3          	bge	t6,a1,192dc <_vfiprintf_r+0x686>
   19300:	c3fd                	beqz	a5,193e6 <_vfiprintf_r+0x790>
   19302:	1090                	addi	a2,sp,96
   19304:	85ce                	mv	a1,s3
   19306:	8556                	mv	a0,s5
   19308:	f076                	sd	t4,32(sp)
   1930a:	899ff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   1930e:	ba051be3          	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   19312:	7e82                	ld	t4,32(sp)
   19314:	56a6                	lw	a3,104(sp)
   19316:	4f41                	li	t5,16
   19318:	3ec1                	addiw	t4,t4,-16
   1931a:	77c6                	ld	a5,112(sp)
   1931c:	8722                	mv	a4,s0
   1931e:	0016851b          	addiw	a0,a3,1
   19322:	4f9d                	li	t6,7
   19324:	fddf43e3          	blt	t5,t4,192ea <_vfiprintf_r+0x694>
   19328:	97f6                	add	a5,a5,t4
   1932a:	01273023          	sd	s2,0(a4)
   1932e:	01d73423          	sd	t4,8(a4)
   19332:	f8be                	sd	a5,112(sp)
   19334:	d4aa                	sw	a0,104(sp)
   19336:	469d                	li	a3,7
   19338:	34a6dc63          	bge	a3,a0,19690 <_vfiprintf_r+0xa3a>
   1933c:	4a078963          	beqz	a5,197ee <_vfiprintf_r+0xb98>
   19340:	1090                	addi	a2,sp,96
   19342:	85ce                	mv	a1,s3
   19344:	8556                	mv	a0,s5
   19346:	85dff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   1934a:	b6051de3          	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   1934e:	56a6                	lw	a3,104(sp)
   19350:	414c8cbb          	subw	s9,s9,s4
   19354:	77c6                	ld	a5,112(sp)
   19356:	8722                	mv	a4,s0
   19358:	0016861b          	addiw	a2,a3,1
   1935c:	b19056e3          	blez	s9,18e68 <_vfiprintf_r+0x212>
   19360:	45c1                	li	a1,16
   19362:	0595d963          	bge	a1,s9,193b4 <_vfiprintf_r+0x75e>
   19366:	4ec1                	li	t4,16
   19368:	4f1d                	li	t5,7
   1936a:	a801                	j	1937a <_vfiprintf_r+0x724>
   1936c:	0026861b          	addiw	a2,a3,2
   19370:	0741                	addi	a4,a4,16
   19372:	86ae                	mv	a3,a1
   19374:	3cc1                	addiw	s9,s9,-16
   19376:	039edf63          	bge	t4,s9,193b4 <_vfiprintf_r+0x75e>
   1937a:	0016859b          	addiw	a1,a3,1
   1937e:	07c1                	addi	a5,a5,16
   19380:	01273023          	sd	s2,0(a4)
   19384:	01d73423          	sd	t4,8(a4)
   19388:	f8be                	sd	a5,112(sp)
   1938a:	d4ae                	sw	a1,104(sp)
   1938c:	febf50e3          	bge	t5,a1,1936c <_vfiprintf_r+0x716>
   19390:	cf9d                	beqz	a5,193ce <_vfiprintf_r+0x778>
   19392:	1090                	addi	a2,sp,96
   19394:	85ce                	mv	a1,s3
   19396:	8556                	mv	a0,s5
   19398:	80bff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   1939c:	b20514e3          	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   193a0:	56a6                	lw	a3,104(sp)
   193a2:	4ec1                	li	t4,16
   193a4:	3cc1                	addiw	s9,s9,-16
   193a6:	77c6                	ld	a5,112(sp)
   193a8:	8722                	mv	a4,s0
   193aa:	0016861b          	addiw	a2,a3,1
   193ae:	4f1d                	li	t5,7
   193b0:	fd9ec5e3          	blt	t4,s9,1937a <_vfiprintf_r+0x724>
   193b4:	97e6                	add	a5,a5,s9
   193b6:	01273023          	sd	s2,0(a4)
   193ba:	01973423          	sd	s9,8(a4)
   193be:	f8be                	sd	a5,112(sp)
   193c0:	d4b2                	sw	a2,104(sp)
   193c2:	469d                	li	a3,7
   193c4:	1cc6c363          	blt	a3,a2,1958a <_vfiprintf_r+0x934>
   193c8:	0741                	addi	a4,a4,16
   193ca:	2605                	addiw	a2,a2,1
   193cc:	bc71                	j	18e68 <_vfiprintf_r+0x212>
   193ce:	4605                	li	a2,1
   193d0:	4681                	li	a3,0
   193d2:	8722                	mv	a4,s0
   193d4:	b745                	j	19374 <_vfiprintf_r+0x71e>
   193d6:	1090                	addi	a2,sp,96
   193d8:	85ce                	mv	a1,s3
   193da:	8556                	mv	a0,s5
   193dc:	fc6ff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   193e0:	ac0509e3          	beqz	a0,18eb2 <_vfiprintf_r+0x25c>
   193e4:	b4c5                	j	18ec4 <_vfiprintf_r+0x26e>
   193e6:	4505                	li	a0,1
   193e8:	4681                	li	a3,0
   193ea:	8722                	mv	a4,s0
   193ec:	bde5                	j	192e4 <_vfiprintf_r+0x68e>
   193ee:	1e078463          	beqz	a5,195d6 <_vfiprintf_r+0x980>
   193f2:	1090                	addi	a2,sp,96
   193f4:	85ce                	mv	a1,s3
   193f6:	8556                	mv	a0,s5
   193f8:	f47e                	sd	t6,40(sp)
   193fa:	f016                	sd	t0,32(sp)
   193fc:	fa6ff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   19400:	ac0512e3          	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   19404:	56a6                	lw	a3,104(sp)
   19406:	77c6                	ld	a5,112(sp)
   19408:	7fa2                	ld	t6,40(sp)
   1940a:	7282                	ld	t0,32(sp)
   1940c:	8722                	mv	a4,s0
   1940e:	0016861b          	addiw	a2,a3,1
   19412:	bc01                	j	18e22 <_vfiprintf_r+0x1cc>
   19414:	24079c63          	bnez	a5,1966c <_vfiprintf_r+0xa16>
   19418:	05714703          	lbu	a4,87(sp)
   1941c:	3e071063          	bnez	a4,197fc <_vfiprintf_r+0xba6>
   19420:	1a028d63          	beqz	t0,195da <_vfiprintf_r+0x984>
   19424:	08bc                	addi	a5,sp,88
   19426:	f1be                	sd	a5,224(sp)
   19428:	4789                	li	a5,2
   1942a:	f5be                	sd	a5,232(sp)
   1942c:	4605                	li	a2,1
   1942e:	8722                	mv	a4,s0
   19430:	86b2                	mv	a3,a2
   19432:	0741                	addi	a4,a4,16
   19434:	0016861b          	addiw	a2,a3,1
   19438:	b405                	j	18e58 <_vfiprintf_r+0x202>
   1943a:	4605                	li	a2,1
   1943c:	86ea                	mv	a3,s10
   1943e:	c0c794e3          	bne	a5,a2,19046 <_vfiprintf_r+0x3f0>
   19442:	47a5                	li	a5,9
   19444:	1977ef63          	bltu	a5,s7,195e2 <_vfiprintf_r+0x98c>
   19448:	030b8b9b          	addiw	s7,s7,48
   1944c:	0d710da3          	sb	s7,219(sp)
   19450:	8d36                	mv	s10,a3
   19452:	4a05                	li	s4,1
   19454:	0db10c13          	addi	s8,sp,219
   19458:	b4cd                	j	18f3a <_vfiprintf_r+0x2e4>
   1945a:	4541                	li	a0,16
   1945c:	07d55163          	bge	a0,t4,194be <_vfiprintf_r+0x868>
   19460:	4f41                	li	t5,16
   19462:	439d                	li	t2,7
   19464:	a811                	j	19478 <_vfiprintf_r+0x822>
   19466:	0026859b          	addiw	a1,a3,2
   1946a:	0741                	addi	a4,a4,16
   1946c:	86b2                	mv	a3,a2
   1946e:	3ec1                	addiw	t4,t4,-16
   19470:	05df5763          	bge	t5,t4,194be <_vfiprintf_r+0x868>
   19474:	0016859b          	addiw	a1,a3,1
   19478:	07c1                	addi	a5,a5,16
   1947a:	01673023          	sd	s6,0(a4)
   1947e:	01e73423          	sd	t5,8(a4)
   19482:	f8be                	sd	a5,112(sp)
   19484:	0005861b          	sext.w	a2,a1
   19488:	d4ae                	sw	a1,104(sp)
   1948a:	fcc3dee3          	bge	t2,a2,19466 <_vfiprintf_r+0x810>
   1948e:	c7b9                	beqz	a5,194dc <_vfiprintf_r+0x886>
   19490:	1090                	addi	a2,sp,96
   19492:	85ce                	mv	a1,s3
   19494:	8556                	mv	a0,s5
   19496:	f876                	sd	t4,48(sp)
   19498:	f47e                	sd	t6,40(sp)
   1949a:	f016                	sd	t0,32(sp)
   1949c:	f06ff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   194a0:	a20512e3          	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   194a4:	7ec2                	ld	t4,48(sp)
   194a6:	56a6                	lw	a3,104(sp)
   194a8:	4f41                	li	t5,16
   194aa:	3ec1                	addiw	t4,t4,-16
   194ac:	77c6                	ld	a5,112(sp)
   194ae:	7fa2                	ld	t6,40(sp)
   194b0:	7282                	ld	t0,32(sp)
   194b2:	8722                	mv	a4,s0
   194b4:	0016859b          	addiw	a1,a3,1
   194b8:	439d                	li	t2,7
   194ba:	fbdf4de3          	blt	t5,t4,19474 <_vfiprintf_r+0x81e>
   194be:	97f6                	add	a5,a5,t4
   194c0:	01673023          	sd	s6,0(a4)
   194c4:	01d73423          	sd	t4,8(a4)
   194c8:	f8be                	sd	a5,112(sp)
   194ca:	d4ae                	sw	a1,104(sp)
   194cc:	469d                	li	a3,7
   194ce:	f4b6c3e3          	blt	a3,a1,19414 <_vfiprintf_r+0x7be>
   194d2:	0741                	addi	a4,a4,16
   194d4:	0015861b          	addiw	a2,a1,1
   194d8:	86ae                	mv	a3,a1
   194da:	b21d                	j	18e00 <_vfiprintf_r+0x1aa>
   194dc:	4681                	li	a3,0
   194de:	4585                	li	a1,1
   194e0:	8722                	mv	a4,s0
   194e2:	b771                	j	1946e <_vfiprintf_r+0x818>
   194e4:	d482                	sw	zero,104(sp)
   194e6:	004d7313          	andi	t1,s10,4
   194ea:	08030863          	beqz	t1,1957a <_vfiprintf_r+0x924>
   194ee:	41748a3b          	subw	s4,s1,s7
   194f2:	09405463          	blez	s4,1957a <_vfiprintf_r+0x924>
   194f6:	8722                	mv	a4,s0
   194f8:	46c1                	li	a3,16
   194fa:	5626                	lw	a2,104(sp)
   194fc:	3546dd63          	bge	a3,s4,19856 <_vfiprintf_r+0xc00>
   19500:	4cc1                	li	s9,16
   19502:	4c1d                	li	s8,7
   19504:	a801                	j	19514 <_vfiprintf_r+0x8be>
   19506:	0026069b          	addiw	a3,a2,2
   1950a:	0741                	addi	a4,a4,16
   1950c:	862e                	mv	a2,a1
   1950e:	3a41                	addiw	s4,s4,-16
   19510:	034cdd63          	bge	s9,s4,1954a <_vfiprintf_r+0x8f4>
   19514:	0016059b          	addiw	a1,a2,1
   19518:	07c1                	addi	a5,a5,16
   1951a:	01673023          	sd	s6,0(a4)
   1951e:	01973423          	sd	s9,8(a4)
   19522:	f8be                	sd	a5,112(sp)
   19524:	d4ae                	sw	a1,104(sp)
   19526:	febc50e3          	bge	s8,a1,19506 <_vfiprintf_r+0x8b0>
   1952a:	c7a1                	beqz	a5,19572 <_vfiprintf_r+0x91c>
   1952c:	1090                	addi	a2,sp,96
   1952e:	85ce                	mv	a1,s3
   19530:	8556                	mv	a0,s5
   19532:	e70ff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   19536:	980517e3          	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   1953a:	5626                	lw	a2,104(sp)
   1953c:	3a41                	addiw	s4,s4,-16
   1953e:	77c6                	ld	a5,112(sp)
   19540:	8722                	mv	a4,s0
   19542:	0016069b          	addiw	a3,a2,1
   19546:	fd4cc7e3          	blt	s9,s4,19514 <_vfiprintf_r+0x8be>
   1954a:	97d2                	add	a5,a5,s4
   1954c:	01673023          	sd	s6,0(a4)
   19550:	01473423          	sd	s4,8(a4)
   19554:	f8be                	sd	a5,112(sp)
   19556:	d4b6                	sw	a3,104(sp)
   19558:	471d                	li	a4,7
   1955a:	94d753e3          	bge	a4,a3,18ea0 <_vfiprintf_r+0x24a>
   1955e:	cf91                	beqz	a5,1957a <_vfiprintf_r+0x924>
   19560:	1090                	addi	a2,sp,96
   19562:	85ce                	mv	a1,s3
   19564:	8556                	mv	a0,s5
   19566:	e3cff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   1956a:	94051de3          	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   1956e:	77c6                	ld	a5,112(sp)
   19570:	ba05                	j	18ea0 <_vfiprintf_r+0x24a>
   19572:	4685                	li	a3,1
   19574:	4601                	li	a2,0
   19576:	8722                	mv	a4,s0
   19578:	bf59                	j	1950e <_vfiprintf_r+0x8b8>
   1957a:	87a6                	mv	a5,s1
   1957c:	0174d363          	bge	s1,s7,19582 <_vfiprintf_r+0x92c>
   19580:	87de                	mv	a5,s7
   19582:	6702                	ld	a4,0(sp)
   19584:	9fb9                	addw	a5,a5,a4
   19586:	e03e                	sd	a5,0(sp)
   19588:	b22d                	j	18eb2 <_vfiprintf_r+0x25c>
   1958a:	d00781e3          	beqz	a5,1928c <_vfiprintf_r+0x636>
   1958e:	1090                	addi	a2,sp,96
   19590:	85ce                	mv	a1,s3
   19592:	8556                	mv	a0,s5
   19594:	e0eff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   19598:	920516e3          	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   1959c:	5626                	lw	a2,104(sp)
   1959e:	77c6                	ld	a5,112(sp)
   195a0:	8722                	mv	a4,s0
   195a2:	2605                	addiw	a2,a2,1
   195a4:	b0d1                	j	18e68 <_vfiprintf_r+0x212>
   195a6:	d482                	sw	zero,104(sp)
   195a8:	8722                	mv	a4,s0
   195aa:	fa0ff06f          	j	18d4a <_vfiprintf_r+0xf4>
   195ae:	0106f793          	andi	a5,a3,16
   195b2:	e7ed                	bnez	a5,1969c <_vfiprintf_r+0xa46>
   195b4:	65a2                	ld	a1,8(sp)
   195b6:	0406f793          	andi	a5,a3,64
   195ba:	0005ab83          	lw	s7,0(a1)
   195be:	1e078863          	beqz	a5,197ae <_vfiprintf_r+0xb58>
   195c2:	1bc2                	slli	s7,s7,0x30
   195c4:	030bdb93          	srli	s7,s7,0x30
   195c8:	e432                	sd	a2,8(sp)
   195ca:	4785                	li	a5,1
   195cc:	bacd                	j	18fbe <_vfiprintf_r+0x368>
   195ce:	4605                	li	a2,1
   195d0:	4681                	li	a3,0
   195d2:	8722                	mv	a4,s0
   195d4:	b051                	j	18e58 <_vfiprintf_r+0x202>
   195d6:	0e029163          	bnez	t0,196b8 <_vfiprintf_r+0xa62>
   195da:	4681                	li	a3,0
   195dc:	4605                	li	a2,1
   195de:	8722                	mv	a4,s0
   195e0:	b8a5                	j	18e58 <_vfiprintf_r+0x202>
   195e2:	0dc10a13          	addi	s4,sp,220
   195e6:	4006ff13          	andi	t5,a3,1024
   195ea:	4581                	li	a1,0
   195ec:	8652                	mv	a2,s4
   195ee:	4329                	li	t1,10
   195f0:	4ea5                	li	t4,9
   195f2:	0ff00d13          	li	s10,255
   195f6:	a039                	j	19604 <_vfiprintf_r+0x9ae>
   195f8:	026bd7b3          	divu	a5,s7,t1
   195fc:	cd7ef2e3          	bgeu	t4,s7,192c0 <_vfiprintf_r+0x66a>
   19600:	8bbe                	mv	s7,a5
   19602:	8662                	mv	a2,s8
   19604:	fff60c13          	addi	s8,a2,-1
   19608:	2585                	addiw	a1,a1,1
   1960a:	026bf7b3          	remu	a5,s7,t1
   1960e:	0307879b          	addiw	a5,a5,48
   19612:	fef60fa3          	sb	a5,-1(a2)
   19616:	fe0f01e3          	beqz	t5,195f8 <_vfiprintf_r+0x9a2>
   1961a:	77e2                	ld	a5,56(sp)
   1961c:	0007c783          	lbu	a5,0(a5)
   19620:	fcb79ce3          	bne	a5,a1,195f8 <_vfiprintf_r+0x9a2>
   19624:	fda78ae3          	beq	a5,s10,195f8 <_vfiprintf_r+0x9a2>
   19628:	c97efce3          	bgeu	t4,s7,192c0 <_vfiprintf_r+0x66a>
   1962c:	67a6                	ld	a5,72(sp)
   1962e:	6586                	ld	a1,64(sp)
   19630:	f87a                	sd	t5,48(sp)
   19632:	40fc0c33          	sub	s8,s8,a5
   19636:	863e                	mv	a2,a5
   19638:	8562                	mv	a0,s8
   1963a:	f43a                	sd	a4,40(sp)
   1963c:	f036                	sd	a3,32(sp)
   1963e:	aa7fd0ef          	jal	ra,170e4 <strncpy>
   19642:	7762                	ld	a4,56(sp)
   19644:	4329                	li	t1,10
   19646:	026bd7b3          	divu	a5,s7,t1
   1964a:	00174603          	lbu	a2,1(a4)
   1964e:	7682                	ld	a3,32(sp)
   19650:	7f42                	ld	t5,48(sp)
   19652:	00c03633          	snez	a2,a2
   19656:	9732                	add	a4,a4,a2
   19658:	fc3a                	sd	a4,56(sp)
   1965a:	4581                	li	a1,0
   1965c:	7722                	ld	a4,40(sp)
   1965e:	4ea5                	li	t4,9
   19660:	b745                	j	19600 <_vfiprintf_r+0x9aa>
   19662:	000dc783          	lbu	a5,0(s11)
   19666:	e462                	sd	s8,8(sp)
   19668:	f0aff06f          	j	18d72 <_vfiprintf_r+0x11c>
   1966c:	1090                	addi	a2,sp,96
   1966e:	85ce                	mv	a1,s3
   19670:	8556                	mv	a0,s5
   19672:	f47e                	sd	t6,40(sp)
   19674:	f016                	sd	t0,32(sp)
   19676:	d2cff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   1967a:	840515e3          	bnez	a0,18ec4 <_vfiprintf_r+0x26e>
   1967e:	56a6                	lw	a3,104(sp)
   19680:	77c6                	ld	a5,112(sp)
   19682:	7fa2                	ld	t6,40(sp)
   19684:	7282                	ld	t0,32(sp)
   19686:	8722                	mv	a4,s0
   19688:	0016861b          	addiw	a2,a3,1
   1968c:	f74ff06f          	j	18e00 <_vfiprintf_r+0x1aa>
   19690:	0741                	addi	a4,a4,16
   19692:	0015061b          	addiw	a2,a0,1
   19696:	86aa                	mv	a3,a0
   19698:	fc8ff06f          	j	18e60 <_vfiprintf_r+0x20a>
   1969c:	67a2                	ld	a5,8(sp)
   1969e:	e432                	sd	a2,8(sp)
   196a0:	0007bb83          	ld	s7,0(a5)
   196a4:	4785                	li	a5,1
   196a6:	ba21                	j	18fbe <_vfiprintf_r+0x368>
   196a8:	67a2                	ld	a5,8(sp)
   196aa:	0007bb83          	ld	s7,0(a5)
   196ae:	b219                	j	18fb4 <_vfiprintf_r+0x35e>
   196b0:	67a2                	ld	a5,8(sp)
   196b2:	639c                	ld	a5,0(a5)
   196b4:	8bbe                	mv	s7,a5
   196b6:	b085                	j	18f16 <_vfiprintf_r+0x2c0>
   196b8:	08bc                	addi	a5,sp,88
   196ba:	f1be                	sd	a5,224(sp)
   196bc:	4789                	li	a5,2
   196be:	f5be                	sd	a5,232(sp)
   196c0:	4685                	li	a3,1
   196c2:	8722                	mv	a4,s0
   196c4:	b3bd                	j	19432 <_vfiprintf_r+0x7dc>
   196c6:	e432                	sd	a2,8(sp)
   196c8:	bbad                	j	19442 <_vfiprintf_r+0x7ec>
   196ca:	65a2                	ld	a1,8(sp)
   196cc:	66f1                	lui	a3,0x1c
   196ce:	72868693          	addi	a3,a3,1832 # 1c728 <__clzdi2+0xf8>
   196d2:	e836                	sd	a3,16(sp)
   196d4:	020d7693          	andi	a3,s10,32
   196d8:	00858613          	addi	a2,a1,8
   196dc:	c6a1                	beqz	a3,19724 <_vfiprintf_r+0xace>
   196de:	0005bb83          	ld	s7,0(a1)
   196e2:	001d7693          	andi	a3,s10,1
   196e6:	ce89                	beqz	a3,19700 <_vfiprintf_r+0xaaa>
   196e8:	000b8c63          	beqz	s7,19700 <_vfiprintf_r+0xaaa>
   196ec:	002d6313          	ori	t1,s10,2
   196f0:	03000693          	li	a3,48
   196f4:	04d10c23          	sb	a3,88(sp)
   196f8:	04f10ca3          	sb	a5,89(sp)
   196fc:	00030d1b          	sext.w	s10,t1
   19700:	bffd7693          	andi	a3,s10,-1025
   19704:	2681                	sext.w	a3,a3
   19706:	e432                	sd	a2,8(sp)
   19708:	4789                	li	a5,2
   1970a:	b855                	j	18fbe <_vfiprintf_r+0x368>
   1970c:	86ea                	mv	a3,s10
   1970e:	b69d                	j	19274 <_vfiprintf_r+0x61e>
   19710:	65a2                	ld	a1,8(sp)
   19712:	66f1                	lui	a3,0x1c
   19714:	74068693          	addi	a3,a3,1856 # 1c740 <__clzdi2+0x110>
   19718:	e836                	sd	a3,16(sp)
   1971a:	020d7693          	andi	a3,s10,32
   1971e:	00858613          	addi	a2,a1,8
   19722:	fed5                	bnez	a3,196de <_vfiprintf_r+0xa88>
   19724:	010d7693          	andi	a3,s10,16
   19728:	c285                	beqz	a3,19748 <_vfiprintf_r+0xaf2>
   1972a:	66a2                	ld	a3,8(sp)
   1972c:	0006bb83          	ld	s7,0(a3)
   19730:	bf4d                	j	196e2 <_vfiprintf_r+0xa8c>
   19732:	8562                	mv	a0,s8
   19734:	f03a                	sd	a4,32(sp)
   19736:	e436                	sd	a3,8(sp)
   19738:	c63f70ef          	jal	ra,1139a <strlen>
   1973c:	7702                	ld	a4,32(sp)
   1973e:	00050a1b          	sext.w	s4,a0
   19742:	4c81                	li	s9,0
   19744:	ff6ff06f          	j	18f3a <_vfiprintf_r+0x2e4>
   19748:	65a2                	ld	a1,8(sp)
   1974a:	040d7693          	andi	a3,s10,64
   1974e:	0005ab83          	lw	s7,0(a1)
   19752:	cac1                	beqz	a3,197e2 <_vfiprintf_r+0xb8c>
   19754:	1bc2                	slli	s7,s7,0x30
   19756:	030bdb93          	srli	s7,s7,0x30
   1975a:	b761                	j	196e2 <_vfiprintf_r+0xa8c>
   1975c:	86ea                	mv	a3,s10
   1975e:	e432                	sd	a2,8(sp)
   19760:	b1cd                	j	19442 <_vfiprintf_r+0x7ec>
   19762:	4685                	li	a3,1
   19764:	0ed78c63          	beq	a5,a3,1985c <_vfiprintf_r+0xc06>
   19768:	4689                	li	a3,2
   1976a:	b2d78ae3          	beq	a5,a3,1929e <_vfiprintf_r+0x648>
   1976e:	86ea                	mv	a3,s10
   19770:	b8f1                	j	1904c <_vfiprintf_r+0x3f6>
   19772:	200d6313          	ori	t1,s10,512
   19776:	001dc783          	lbu	a5,1(s11)
   1977a:	00030d1b          	sext.w	s10,t1
   1977e:	0d85                	addi	s11,s11,1
   19780:	df2ff06f          	j	18d72 <_vfiprintf_r+0x11c>
   19784:	020d6313          	ori	t1,s10,32
   19788:	001dc783          	lbu	a5,1(s11)
   1978c:	00030d1b          	sext.w	s10,t1
   19790:	0d85                	addi	s11,s11,1
   19792:	de0ff06f          	j	18d72 <_vfiprintf_r+0x11c>
   19796:	4799                	li	a5,6
   19798:	000c8a1b          	sext.w	s4,s9
   1979c:	0597ee63          	bltu	a5,s9,197f8 <_vfiprintf_r+0xba2>
   197a0:	6e71                	lui	t3,0x1c
   197a2:	8bd2                	mv	s7,s4
   197a4:	e436                	sd	a3,8(sp)
   197a6:	758e0c13          	addi	s8,t3,1880 # 1c758 <__clzdi2+0x128>
   197aa:	e30ff06f          	j	18dda <_vfiprintf_r+0x184>
   197ae:	2006f793          	andi	a5,a3,512
   197b2:	cbbd                	beqz	a5,19828 <_vfiprintf_r+0xbd2>
   197b4:	0ffbfb93          	zext.b	s7,s7
   197b8:	e432                	sd	a2,8(sp)
   197ba:	4785                	li	a5,1
   197bc:	803ff06f          	j	18fbe <_vfiprintf_r+0x368>
   197c0:	200d7793          	andi	a5,s10,512
   197c4:	cfa9                	beqz	a5,1981e <_vfiprintf_r+0xbc8>
   197c6:	0ffbfb93          	zext.b	s7,s7
   197ca:	feaff06f          	j	18fb4 <_vfiprintf_r+0x35e>
   197ce:	200d7793          	andi	a5,s10,512
   197d2:	c3b9                	beqz	a5,19818 <_vfiprintf_r+0xbc2>
   197d4:	018b9b9b          	slliw	s7,s7,0x18
   197d8:	418bdb9b          	sraiw	s7,s7,0x18
   197dc:	87de                	mv	a5,s7
   197de:	f38ff06f          	j	18f16 <_vfiprintf_r+0x2c0>
   197e2:	200d7693          	andi	a3,s10,512
   197e6:	caa1                	beqz	a3,19836 <_vfiprintf_r+0xbe0>
   197e8:	0ffbfb93          	zext.b	s7,s7
   197ec:	bddd                	j	196e2 <_vfiprintf_r+0xa8c>
   197ee:	4605                	li	a2,1
   197f0:	4681                	li	a3,0
   197f2:	8722                	mv	a4,s0
   197f4:	e6cff06f          	j	18e60 <_vfiprintf_r+0x20a>
   197f8:	4a19                	li	s4,6
   197fa:	b75d                	j	197a0 <_vfiprintf_r+0xb4a>
   197fc:	05710793          	addi	a5,sp,87
   19800:	f1be                	sd	a5,224(sp)
   19802:	4785                	li	a5,1
   19804:	f5be                	sd	a5,232(sp)
   19806:	4605                	li	a2,1
   19808:	8722                	mv	a4,s0
   1980a:	e12ff06f          	j	18e1c <_vfiprintf_r+0x1c6>
   1980e:	6782                	ld	a5,0(sp)
   19810:	00f69023          	sh	a5,0(a3)
   19814:	ce2ff06f          	j	18cf6 <_vfiprintf_r+0xa0>
   19818:	87de                	mv	a5,s7
   1981a:	efcff06f          	j	18f16 <_vfiprintf_r+0x2c0>
   1981e:	1b82                	slli	s7,s7,0x20
   19820:	020bdb93          	srli	s7,s7,0x20
   19824:	f90ff06f          	j	18fb4 <_vfiprintf_r+0x35e>
   19828:	1b82                	slli	s7,s7,0x20
   1982a:	020bdb93          	srli	s7,s7,0x20
   1982e:	e432                	sd	a2,8(sp)
   19830:	4785                	li	a5,1
   19832:	f8cff06f          	j	18fbe <_vfiprintf_r+0x368>
   19836:	1b82                	slli	s7,s7,0x20
   19838:	020bdb93          	srli	s7,s7,0x20
   1983c:	b55d                	j	196e2 <_vfiprintf_r+0xa8c>
   1983e:	1090                	addi	a2,sp,96
   19840:	85ce                	mv	a1,s3
   19842:	8556                	mv	a0,s5
   19844:	b5eff0ef          	jal	ra,18ba2 <__sprint_r.part.0>
   19848:	e7cff06f          	j	18ec4 <_vfiprintf_r+0x26e>
   1984c:	8a66                	mv	s4,s9
   1984e:	e436                	sd	a3,8(sp)
   19850:	4c81                	li	s9,0
   19852:	ee8ff06f          	j	18f3a <_vfiprintf_r+0x2e4>
   19856:	0016069b          	addiw	a3,a2,1
   1985a:	b9c5                	j	1954a <_vfiprintf_r+0x8f4>
   1985c:	86ea                	mv	a3,s10
   1985e:	b6ed                	j	19448 <_vfiprintf_r+0x7f2>
   19860:	57fd                	li	a5,-1
   19862:	e03e                	sd	a5,0(sp)
   19864:	e6cff06f          	j	18ed0 <_vfiprintf_r+0x27a>
   19868:	8532                	mv	a0,a2
   1986a:	bc7d                	j	19328 <_vfiprintf_r+0x6d2>
   1986c:	c29c                	sw	a5,0(a3)
   1986e:	c88ff06f          	j	18cf6 <_vfiprintf_r+0xa0>
   19872:	e432                	sd	a2,8(sp)
   19874:	bed1                	j	19448 <_vfiprintf_r+0x7f2>
   19876:	6622                	ld	a2,8(sp)
   19878:	421c                	lw	a5,0(a2)
   1987a:	00860c13          	addi	s8,a2,8
   1987e:	883e                	mv	a6,a5
   19880:	0007d363          	bgez	a5,19886 <_vfiprintf_r+0xc30>
   19884:	587d                	li	a6,-1
   19886:	001dc783          	lbu	a5,1(s11)
   1988a:	00080c9b          	sext.w	s9,a6
   1988e:	e462                	sd	s8,8(sp)
   19890:	8db6                	mv	s11,a3
   19892:	ce0ff06f          	j	18d72 <_vfiprintf_r+0x11c>

0000000000019896 <vfiprintf>:
   19896:	87aa                	mv	a5,a0
   19898:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   1989c:	86b2                	mv	a3,a2
   1989e:	862e                	mv	a2,a1
   198a0:	85be                	mv	a1,a5
   198a2:	bb4ff06f          	j	18c56 <_vfiprintf_r>

00000000000198a6 <__sbprintf>:
   198a6:	0105d783          	lhu	a5,16(a1)
   198aa:	0ac5ae03          	lw	t3,172(a1)
   198ae:	0125d303          	lhu	t1,18(a1)
   198b2:	0305b883          	ld	a7,48(a1)
   198b6:	0405b803          	ld	a6,64(a1)
   198ba:	b3010113          	addi	sp,sp,-1232
   198be:	9bf5                	andi	a5,a5,-3
   198c0:	40000713          	li	a4,1024
   198c4:	4c813023          	sd	s0,1216(sp)
   198c8:	00f11823          	sh	a5,16(sp)
   198cc:	842e                	mv	s0,a1
   198ce:	191c                	addi	a5,sp,176
   198d0:	858a                	mv	a1,sp
   198d2:	4a913c23          	sd	s1,1208(sp)
   198d6:	4b213823          	sd	s2,1200(sp)
   198da:	4c113423          	sd	ra,1224(sp)
   198de:	892a                	mv	s2,a0
   198e0:	d772                	sw	t3,172(sp)
   198e2:	00611923          	sh	t1,18(sp)
   198e6:	f846                	sd	a7,48(sp)
   198e8:	e0c2                	sd	a6,64(sp)
   198ea:	e03e                	sd	a5,0(sp)
   198ec:	ec3e                	sd	a5,24(sp)
   198ee:	c63a                	sw	a4,12(sp)
   198f0:	d03a                	sw	a4,32(sp)
   198f2:	d402                	sw	zero,40(sp)
   198f4:	b62ff0ef          	jal	ra,18c56 <_vfiprintf_r>
   198f8:	84aa                	mv	s1,a0
   198fa:	02055963          	bgez	a0,1992c <__sbprintf+0x86>
   198fe:	01015783          	lhu	a5,16(sp)
   19902:	0407f793          	andi	a5,a5,64
   19906:	c799                	beqz	a5,19914 <__sbprintf+0x6e>
   19908:	01045783          	lhu	a5,16(s0)
   1990c:	0407e793          	ori	a5,a5,64
   19910:	00f41823          	sh	a5,16(s0)
   19914:	4c813083          	ld	ra,1224(sp)
   19918:	4c013403          	ld	s0,1216(sp)
   1991c:	4b013903          	ld	s2,1200(sp)
   19920:	8526                	mv	a0,s1
   19922:	4b813483          	ld	s1,1208(sp)
   19926:	4d010113          	addi	sp,sp,1232
   1992a:	8082                	ret
   1992c:	858a                	mv	a1,sp
   1992e:	854a                	mv	a0,s2
   19930:	ab7f90ef          	jal	ra,133e6 <_fflush_r>
   19934:	d569                	beqz	a0,198fe <__sbprintf+0x58>
   19936:	54fd                	li	s1,-1
   19938:	b7d9                	j	198fe <__sbprintf+0x58>

000000000001993a <__register_exitproc>:
   1993a:	6281b703          	ld	a4,1576(gp) # 1f748 <_global_impure_ptr>
   1993e:	1f873783          	ld	a5,504(a4)
   19942:	c3b1                	beqz	a5,19986 <__register_exitproc+0x4c>
   19944:	4798                	lw	a4,8(a5)
   19946:	487d                	li	a6,31
   19948:	06e84263          	blt	a6,a4,199ac <__register_exitproc+0x72>
   1994c:	c505                	beqz	a0,19974 <__register_exitproc+0x3a>
   1994e:	00371813          	slli	a6,a4,0x3
   19952:	983e                	add	a6,a6,a5
   19954:	10c83823          	sd	a2,272(a6)
   19958:	3107a883          	lw	a7,784(a5)
   1995c:	4605                	li	a2,1
   1995e:	00e6163b          	sllw	a2,a2,a4
   19962:	00c8e8b3          	or	a7,a7,a2
   19966:	3117a823          	sw	a7,784(a5)
   1996a:	20d83823          	sd	a3,528(a6)
   1996e:	4689                	li	a3,2
   19970:	02d50063          	beq	a0,a3,19990 <__register_exitproc+0x56>
   19974:	00270693          	addi	a3,a4,2
   19978:	068e                	slli	a3,a3,0x3
   1997a:	2705                	addiw	a4,a4,1
   1997c:	c798                	sw	a4,8(a5)
   1997e:	97b6                	add	a5,a5,a3
   19980:	e38c                	sd	a1,0(a5)
   19982:	4501                	li	a0,0
   19984:	8082                	ret
   19986:	20070793          	addi	a5,a4,512
   1998a:	1ef73c23          	sd	a5,504(a4)
   1998e:	bf5d                	j	19944 <__register_exitproc+0xa>
   19990:	3147a683          	lw	a3,788(a5)
   19994:	4501                	li	a0,0
   19996:	8ed1                	or	a3,a3,a2
   19998:	30d7aa23          	sw	a3,788(a5)
   1999c:	00270693          	addi	a3,a4,2
   199a0:	068e                	slli	a3,a3,0x3
   199a2:	2705                	addiw	a4,a4,1
   199a4:	c798                	sw	a4,8(a5)
   199a6:	97b6                	add	a5,a5,a3
   199a8:	e38c                	sd	a1,0(a5)
   199aa:	8082                	ret
   199ac:	557d                	li	a0,-1
   199ae:	8082                	ret

00000000000199b0 <__assert_func>:
   199b0:	6401b703          	ld	a4,1600(gp) # 1f760 <_impure_ptr>
   199b4:	1141                	addi	sp,sp,-16
   199b6:	87b6                	mv	a5,a3
   199b8:	8832                	mv	a6,a2
   199ba:	e406                	sd	ra,8(sp)
   199bc:	01873883          	ld	a7,24(a4)
   199c0:	86aa                	mv	a3,a0
   199c2:	872e                	mv	a4,a1
   199c4:	863e                	mv	a2,a5
   199c6:	00080d63          	beqz	a6,199e0 <__assert_func+0x30>
   199ca:	67f5                	lui	a5,0x1d
   199cc:	21078793          	addi	a5,a5,528 # 1d210 <zeroes.0+0x10>
   199d0:	65f5                	lui	a1,0x1d
   199d2:	22058593          	addi	a1,a1,544 # 1d220 <zeroes.0+0x20>
   199d6:	8546                	mv	a0,a7
   199d8:	0f2000ef          	jal	ra,19aca <fiprintf>
   199dc:	250010ef          	jal	ra,1ac2c <abort>
   199e0:	6871                	lui	a6,0x1c
   199e2:	75080793          	addi	a5,a6,1872 # 1c750 <__clzdi2+0x120>
   199e6:	75080813          	addi	a6,a6,1872
   199ea:	b7dd                	j	199d0 <__assert_func+0x20>

00000000000199ec <__assert>:
   199ec:	1141                	addi	sp,sp,-16
   199ee:	86b2                	mv	a3,a2
   199f0:	4601                	li	a2,0
   199f2:	e406                	sd	ra,8(sp)
   199f4:	fbdff0ef          	jal	ra,199b0 <__assert_func>

00000000000199f8 <_calloc_r>:
   199f8:	02c5b7b3          	mulhu	a5,a1,a2
   199fc:	1141                	addi	sp,sp,-16
   199fe:	e406                	sd	ra,8(sp)
   19a00:	e022                	sd	s0,0(sp)
   19a02:	02c585b3          	mul	a1,a1,a2
   19a06:	efb5                	bnez	a5,19a82 <_calloc_r+0x8a>
   19a08:	d5df60ef          	jal	ra,10764 <_malloc_r>
   19a0c:	842a                	mv	s0,a0
   19a0e:	c521                	beqz	a0,19a56 <_calloc_r+0x5e>
   19a10:	ff853603          	ld	a2,-8(a0)
   19a14:	04800713          	li	a4,72
   19a18:	9a71                	andi	a2,a2,-4
   19a1a:	1661                	addi	a2,a2,-8
   19a1c:	04c76263          	bltu	a4,a2,19a60 <_calloc_r+0x68>
   19a20:	02700693          	li	a3,39
   19a24:	87aa                	mv	a5,a0
   19a26:	02c6f263          	bgeu	a3,a2,19a4a <_calloc_r+0x52>
   19a2a:	00053023          	sd	zero,0(a0)
   19a2e:	00053423          	sd	zero,8(a0)
   19a32:	03700793          	li	a5,55
   19a36:	02c7fd63          	bgeu	a5,a2,19a70 <_calloc_r+0x78>
   19a3a:	00053823          	sd	zero,16(a0)
   19a3e:	00053c23          	sd	zero,24(a0)
   19a42:	02050793          	addi	a5,a0,32
   19a46:	04e60863          	beq	a2,a4,19a96 <_calloc_r+0x9e>
   19a4a:	0007b023          	sd	zero,0(a5)
   19a4e:	0007b423          	sd	zero,8(a5)
   19a52:	0007b823          	sd	zero,16(a5)
   19a56:	60a2                	ld	ra,8(sp)
   19a58:	8522                	mv	a0,s0
   19a5a:	6402                	ld	s0,0(sp)
   19a5c:	0141                	addi	sp,sp,16
   19a5e:	8082                	ret
   19a60:	4581                	li	a1,0
   19a62:	c90f70ef          	jal	ra,10ef2 <memset>
   19a66:	60a2                	ld	ra,8(sp)
   19a68:	8522                	mv	a0,s0
   19a6a:	6402                	ld	s0,0(sp)
   19a6c:	0141                	addi	sp,sp,16
   19a6e:	8082                	ret
   19a70:	01050793          	addi	a5,a0,16
   19a74:	0007b023          	sd	zero,0(a5)
   19a78:	0007b423          	sd	zero,8(a5)
   19a7c:	0007b823          	sd	zero,16(a5)
   19a80:	bfd9                	j	19a56 <_calloc_r+0x5e>
   19a82:	022000ef          	jal	ra,19aa4 <__errno>
   19a86:	4401                	li	s0,0
   19a88:	47b1                	li	a5,12
   19a8a:	60a2                	ld	ra,8(sp)
   19a8c:	c11c                	sw	a5,0(a0)
   19a8e:	8522                	mv	a0,s0
   19a90:	6402                	ld	s0,0(sp)
   19a92:	0141                	addi	sp,sp,16
   19a94:	8082                	ret
   19a96:	02053023          	sd	zero,32(a0)
   19a9a:	03050793          	addi	a5,a0,48
   19a9e:	02053423          	sd	zero,40(a0)
   19aa2:	b765                	j	19a4a <_calloc_r+0x52>

0000000000019aa4 <__errno>:
   19aa4:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   19aa8:	8082                	ret

0000000000019aaa <_fiprintf_r>:
   19aaa:	715d                	addi	sp,sp,-80
   19aac:	02810313          	addi	t1,sp,40
   19ab0:	f436                	sd	a3,40(sp)
   19ab2:	869a                	mv	a3,t1
   19ab4:	ec06                	sd	ra,24(sp)
   19ab6:	f83a                	sd	a4,48(sp)
   19ab8:	fc3e                	sd	a5,56(sp)
   19aba:	e0c2                	sd	a6,64(sp)
   19abc:	e4c6                	sd	a7,72(sp)
   19abe:	e41a                	sd	t1,8(sp)
   19ac0:	996ff0ef          	jal	ra,18c56 <_vfiprintf_r>
   19ac4:	60e2                	ld	ra,24(sp)
   19ac6:	6161                	addi	sp,sp,80
   19ac8:	8082                	ret

0000000000019aca <fiprintf>:
   19aca:	8e2a                	mv	t3,a0
   19acc:	715d                	addi	sp,sp,-80
   19ace:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   19ad2:	02010313          	addi	t1,sp,32
   19ad6:	f032                	sd	a2,32(sp)
   19ad8:	f436                	sd	a3,40(sp)
   19ada:	862e                	mv	a2,a1
   19adc:	869a                	mv	a3,t1
   19ade:	85f2                	mv	a1,t3
   19ae0:	ec06                	sd	ra,24(sp)
   19ae2:	f83a                	sd	a4,48(sp)
   19ae4:	fc3e                	sd	a5,56(sp)
   19ae6:	e0c2                	sd	a6,64(sp)
   19ae8:	e4c6                	sd	a7,72(sp)
   19aea:	e41a                	sd	t1,8(sp)
   19aec:	96aff0ef          	jal	ra,18c56 <_vfiprintf_r>
   19af0:	60e2                	ld	ra,24(sp)
   19af2:	6161                	addi	sp,sp,80
   19af4:	8082                	ret

0000000000019af6 <__fputwc>:
   19af6:	715d                	addi	sp,sp,-80
   19af8:	e0a2                	sd	s0,64(sp)
   19afa:	f44e                	sd	s3,40(sp)
   19afc:	e85a                	sd	s6,16(sp)
   19afe:	e486                	sd	ra,72(sp)
   19b00:	fc26                	sd	s1,56(sp)
   19b02:	f84a                	sd	s2,48(sp)
   19b04:	f052                	sd	s4,32(sp)
   19b06:	ec56                	sd	s5,24(sp)
   19b08:	8b2a                	mv	s6,a0
   19b0a:	89ae                	mv	s3,a1
   19b0c:	8432                	mv	s0,a2
   19b0e:	1de000ef          	jal	ra,19cec <__locale_mb_cur_max>
   19b12:	4785                	li	a5,1
   19b14:	00f51e63          	bne	a0,a5,19b30 <__fputwc+0x3a>
   19b18:	fff9879b          	addiw	a5,s3,-1
   19b1c:	0fe00713          	li	a4,254
   19b20:	00f76863          	bltu	a4,a5,19b30 <__fputwc+0x3a>
   19b24:	0ff9f713          	zext.b	a4,s3
   19b28:	00e10423          	sb	a4,8(sp)
   19b2c:	4905                	li	s2,1
   19b2e:	a839                	j	19b4c <__fputwc+0x56>
   19b30:	0a440693          	addi	a3,s0,164
   19b34:	864e                	mv	a2,s3
   19b36:	002c                	addi	a1,sp,8
   19b38:	855a                	mv	a0,s6
   19b3a:	032010ef          	jal	ra,1ab6c <_wcrtomb_r>
   19b3e:	57fd                	li	a5,-1
   19b40:	892a                	mv	s2,a0
   19b42:	06f50563          	beq	a0,a5,19bac <__fputwc+0xb6>
   19b46:	c125                	beqz	a0,19ba6 <__fputwc+0xb0>
   19b48:	00814703          	lbu	a4,8(sp)
   19b4c:	4481                	li	s1,0
   19b4e:	5a7d                	li	s4,-1
   19b50:	4aa9                	li	s5,10
   19b52:	a831                	j	19b6e <__fputwc+0x78>
   19b54:	601c                	ld	a5,0(s0)
   19b56:	00178693          	addi	a3,a5,1
   19b5a:	e014                	sd	a3,0(s0)
   19b5c:	00e78023          	sb	a4,0(a5)
   19b60:	0485                	addi	s1,s1,1
   19b62:	003c                	addi	a5,sp,8
   19b64:	97a6                	add	a5,a5,s1
   19b66:	0524f063          	bgeu	s1,s2,19ba6 <__fputwc+0xb0>
   19b6a:	0007c703          	lbu	a4,0(a5)
   19b6e:	445c                	lw	a5,12(s0)
   19b70:	37fd                	addiw	a5,a5,-1
   19b72:	c45c                	sw	a5,12(s0)
   19b74:	fe07d0e3          	bgez	a5,19b54 <__fputwc+0x5e>
   19b78:	5414                	lw	a3,40(s0)
   19b7a:	85ba                	mv	a1,a4
   19b7c:	8622                	mv	a2,s0
   19b7e:	855a                	mv	a0,s6
   19b80:	00d7c463          	blt	a5,a3,19b88 <__fputwc+0x92>
   19b84:	fd5718e3          	bne	a4,s5,19b54 <__fputwc+0x5e>
   19b88:	6df000ef          	jal	ra,1aa66 <__swbuf_r>
   19b8c:	fd451ae3          	bne	a0,s4,19b60 <__fputwc+0x6a>
   19b90:	557d                	li	a0,-1
   19b92:	60a6                	ld	ra,72(sp)
   19b94:	6406                	ld	s0,64(sp)
   19b96:	74e2                	ld	s1,56(sp)
   19b98:	7942                	ld	s2,48(sp)
   19b9a:	79a2                	ld	s3,40(sp)
   19b9c:	7a02                	ld	s4,32(sp)
   19b9e:	6ae2                	ld	s5,24(sp)
   19ba0:	6b42                	ld	s6,16(sp)
   19ba2:	6161                	addi	sp,sp,80
   19ba4:	8082                	ret
   19ba6:	0009851b          	sext.w	a0,s3
   19baa:	b7e5                	j	19b92 <__fputwc+0x9c>
   19bac:	01045783          	lhu	a5,16(s0)
   19bb0:	557d                	li	a0,-1
   19bb2:	0407e793          	ori	a5,a5,64
   19bb6:	00f41823          	sh	a5,16(s0)
   19bba:	bfe1                	j	19b92 <__fputwc+0x9c>

0000000000019bbc <_fputwc_r>:
   19bbc:	01061783          	lh	a5,16(a2)
   19bc0:	03279713          	slli	a4,a5,0x32
   19bc4:	00074c63          	bltz	a4,19bdc <_fputwc_r+0x20>
   19bc8:	0ac62703          	lw	a4,172(a2)
   19bcc:	6689                	lui	a3,0x2
   19bce:	8fd5                	or	a5,a5,a3
   19bd0:	6689                	lui	a3,0x2
   19bd2:	8f55                	or	a4,a4,a3
   19bd4:	00f61823          	sh	a5,16(a2)
   19bd8:	0ae62623          	sw	a4,172(a2)
   19bdc:	f1bff06f          	j	19af6 <__fputwc>

0000000000019be0 <fputwc>:
   19be0:	1101                	addi	sp,sp,-32
   19be2:	e822                	sd	s0,16(sp)
   19be4:	6401b403          	ld	s0,1600(gp) # 1f760 <_impure_ptr>
   19be8:	ec06                	sd	ra,24(sp)
   19bea:	862e                	mv	a2,a1
   19bec:	85aa                	mv	a1,a0
   19bee:	c019                	beqz	s0,19bf4 <fputwc+0x14>
   19bf0:	483c                	lw	a5,80(s0)
   19bf2:	c79d                	beqz	a5,19c20 <fputwc+0x40>
   19bf4:	01061783          	lh	a5,16(a2)
   19bf8:	03279713          	slli	a4,a5,0x32
   19bfc:	00074c63          	bltz	a4,19c14 <fputwc+0x34>
   19c00:	0ac62703          	lw	a4,172(a2)
   19c04:	6689                	lui	a3,0x2
   19c06:	8fd5                	or	a5,a5,a3
   19c08:	6689                	lui	a3,0x2
   19c0a:	8f55                	or	a4,a4,a3
   19c0c:	00f61823          	sh	a5,16(a2)
   19c10:	0ae62623          	sw	a4,172(a2)
   19c14:	8522                	mv	a0,s0
   19c16:	6442                	ld	s0,16(sp)
   19c18:	60e2                	ld	ra,24(sp)
   19c1a:	6105                	addi	sp,sp,32
   19c1c:	edbff06f          	j	19af6 <__fputwc>
   19c20:	e02a                	sd	a0,0(sp)
   19c22:	8522                	mv	a0,s0
   19c24:	e432                	sd	a2,8(sp)
   19c26:	9a1f60ef          	jal	ra,105c6 <__sinit>
   19c2a:	6622                	ld	a2,8(sp)
   19c2c:	6582                	ld	a1,0(sp)
   19c2e:	b7d9                	j	19bf4 <fputwc+0x14>

0000000000019c30 <_fstat_r>:
   19c30:	1101                	addi	sp,sp,-32
   19c32:	872e                	mv	a4,a1
   19c34:	e822                	sd	s0,16(sp)
   19c36:	e426                	sd	s1,8(sp)
   19c38:	842a                	mv	s0,a0
   19c3a:	85b2                	mv	a1,a2
   19c3c:	853a                	mv	a0,a4
   19c3e:	ec06                	sd	ra,24(sp)
   19c40:	6801a423          	sw	zero,1672(gp) # 1f7a8 <errno>
   19c44:	3d6010ef          	jal	ra,1b01a <_fstat>
   19c48:	57fd                	li	a5,-1
   19c4a:	00f50763          	beq	a0,a5,19c58 <_fstat_r+0x28>
   19c4e:	60e2                	ld	ra,24(sp)
   19c50:	6442                	ld	s0,16(sp)
   19c52:	64a2                	ld	s1,8(sp)
   19c54:	6105                	addi	sp,sp,32
   19c56:	8082                	ret
   19c58:	6881a783          	lw	a5,1672(gp) # 1f7a8 <errno>
   19c5c:	dbed                	beqz	a5,19c4e <_fstat_r+0x1e>
   19c5e:	60e2                	ld	ra,24(sp)
   19c60:	c01c                	sw	a5,0(s0)
   19c62:	6442                	ld	s0,16(sp)
   19c64:	64a2                	ld	s1,8(sp)
   19c66:	6105                	addi	sp,sp,32
   19c68:	8082                	ret

0000000000019c6a <_isatty_r>:
   19c6a:	1101                	addi	sp,sp,-32
   19c6c:	e822                	sd	s0,16(sp)
   19c6e:	e426                	sd	s1,8(sp)
   19c70:	842a                	mv	s0,a0
   19c72:	852e                	mv	a0,a1
   19c74:	ec06                	sd	ra,24(sp)
   19c76:	6801a423          	sw	zero,1672(gp) # 1f7a8 <errno>
   19c7a:	3e4010ef          	jal	ra,1b05e <_isatty>
   19c7e:	57fd                	li	a5,-1
   19c80:	00f50763          	beq	a0,a5,19c8e <_isatty_r+0x24>
   19c84:	60e2                	ld	ra,24(sp)
   19c86:	6442                	ld	s0,16(sp)
   19c88:	64a2                	ld	s1,8(sp)
   19c8a:	6105                	addi	sp,sp,32
   19c8c:	8082                	ret
   19c8e:	6881a783          	lw	a5,1672(gp) # 1f7a8 <errno>
   19c92:	dbed                	beqz	a5,19c84 <_isatty_r+0x1a>
   19c94:	60e2                	ld	ra,24(sp)
   19c96:	c01c                	sw	a5,0(s0)
   19c98:	6442                	ld	s0,16(sp)
   19c9a:	64a2                	ld	s1,8(sp)
   19c9c:	6105                	addi	sp,sp,32
   19c9e:	8082                	ret

0000000000019ca0 <_setlocale_r>:
   19ca0:	1101                	addi	sp,sp,-32
   19ca2:	ec06                	sd	ra,24(sp)
   19ca4:	e822                	sd	s0,16(sp)
   19ca6:	e426                	sd	s1,8(sp)
   19ca8:	c20d                	beqz	a2,19cca <_setlocale_r+0x2a>
   19caa:	65f5                	lui	a1,0x1d
   19cac:	25858593          	addi	a1,a1,600 # 1d258 <zeroes.0+0x58>
   19cb0:	8532                	mv	a0,a2
   19cb2:	8432                	mv	s0,a2
   19cb4:	0d0000ef          	jal	ra,19d84 <strcmp>
   19cb8:	64f5                	lui	s1,0x1d
   19cba:	e911                	bnez	a0,19cce <_setlocale_r+0x2e>
   19cbc:	25048513          	addi	a0,s1,592 # 1d250 <zeroes.0+0x50>
   19cc0:	60e2                	ld	ra,24(sp)
   19cc2:	6442                	ld	s0,16(sp)
   19cc4:	64a2                	ld	s1,8(sp)
   19cc6:	6105                	addi	sp,sp,32
   19cc8:	8082                	ret
   19cca:	64f5                	lui	s1,0x1d
   19ccc:	bfc5                	j	19cbc <_setlocale_r+0x1c>
   19cce:	25048593          	addi	a1,s1,592 # 1d250 <zeroes.0+0x50>
   19cd2:	8522                	mv	a0,s0
   19cd4:	0b0000ef          	jal	ra,19d84 <strcmp>
   19cd8:	d175                	beqz	a0,19cbc <_setlocale_r+0x1c>
   19cda:	65f1                	lui	a1,0x1c
   19cdc:	75058593          	addi	a1,a1,1872 # 1c750 <__clzdi2+0x120>
   19ce0:	8522                	mv	a0,s0
   19ce2:	0a2000ef          	jal	ra,19d84 <strcmp>
   19ce6:	d979                	beqz	a0,19cbc <_setlocale_r+0x1c>
   19ce8:	4501                	li	a0,0
   19cea:	bfd9                	j	19cc0 <_setlocale_r+0x20>

0000000000019cec <__locale_mb_cur_max>:
   19cec:	5b01c503          	lbu	a0,1456(gp) # 1f6d0 <__global_locale+0x160>
   19cf0:	8082                	ret

0000000000019cf2 <setlocale>:
   19cf2:	1101                	addi	sp,sp,-32
   19cf4:	ec06                	sd	ra,24(sp)
   19cf6:	e822                	sd	s0,16(sp)
   19cf8:	e426                	sd	s1,8(sp)
   19cfa:	c18d                	beqz	a1,19d1c <setlocale+0x2a>
   19cfc:	842e                	mv	s0,a1
   19cfe:	65f5                	lui	a1,0x1d
   19d00:	25858593          	addi	a1,a1,600 # 1d258 <zeroes.0+0x58>
   19d04:	8522                	mv	a0,s0
   19d06:	07e000ef          	jal	ra,19d84 <strcmp>
   19d0a:	64f5                	lui	s1,0x1d
   19d0c:	e911                	bnez	a0,19d20 <setlocale+0x2e>
   19d0e:	25048513          	addi	a0,s1,592 # 1d250 <zeroes.0+0x50>
   19d12:	60e2                	ld	ra,24(sp)
   19d14:	6442                	ld	s0,16(sp)
   19d16:	64a2                	ld	s1,8(sp)
   19d18:	6105                	addi	sp,sp,32
   19d1a:	8082                	ret
   19d1c:	64f5                	lui	s1,0x1d
   19d1e:	bfc5                	j	19d0e <setlocale+0x1c>
   19d20:	25048593          	addi	a1,s1,592 # 1d250 <zeroes.0+0x50>
   19d24:	8522                	mv	a0,s0
   19d26:	05e000ef          	jal	ra,19d84 <strcmp>
   19d2a:	d175                	beqz	a0,19d0e <setlocale+0x1c>
   19d2c:	65f1                	lui	a1,0x1c
   19d2e:	75058593          	addi	a1,a1,1872 # 1c750 <__clzdi2+0x120>
   19d32:	8522                	mv	a0,s0
   19d34:	050000ef          	jal	ra,19d84 <strcmp>
   19d38:	d979                	beqz	a0,19d0e <setlocale+0x1c>
   19d3a:	4501                	li	a0,0
   19d3c:	bfd9                	j	19d12 <setlocale+0x20>

0000000000019d3e <_mbtowc_r>:
   19d3e:	5381b783          	ld	a5,1336(gp) # 1f658 <__global_locale+0xe8>
   19d42:	8782                	jr	a5

0000000000019d44 <__ascii_mbtowc>:
   19d44:	c999                	beqz	a1,19d5a <__ascii_mbtowc+0x16>
   19d46:	c61d                	beqz	a2,19d74 <__ascii_mbtowc+0x30>
   19d48:	ca95                	beqz	a3,19d7c <__ascii_mbtowc+0x38>
   19d4a:	00064783          	lbu	a5,0(a2)
   19d4e:	c19c                	sw	a5,0(a1)
   19d50:	00064503          	lbu	a0,0(a2)
   19d54:	00a03533          	snez	a0,a0
   19d58:	8082                	ret
   19d5a:	1141                	addi	sp,sp,-16
   19d5c:	006c                	addi	a1,sp,12
   19d5e:	ce09                	beqz	a2,19d78 <__ascii_mbtowc+0x34>
   19d60:	c285                	beqz	a3,19d80 <__ascii_mbtowc+0x3c>
   19d62:	00064783          	lbu	a5,0(a2)
   19d66:	c19c                	sw	a5,0(a1)
   19d68:	00064503          	lbu	a0,0(a2)
   19d6c:	00a03533          	snez	a0,a0
   19d70:	0141                	addi	sp,sp,16
   19d72:	8082                	ret
   19d74:	4501                	li	a0,0
   19d76:	8082                	ret
   19d78:	4501                	li	a0,0
   19d7a:	bfdd                	j	19d70 <__ascii_mbtowc+0x2c>
   19d7c:	5579                	li	a0,-2
   19d7e:	8082                	ret
   19d80:	5579                	li	a0,-2
   19d82:	b7fd                	j	19d70 <__ascii_mbtowc+0x2c>

0000000000019d84 <strcmp>:
   19d84:	00b56733          	or	a4,a0,a1
   19d88:	53fd                	li	t2,-1
   19d8a:	8b1d                	andi	a4,a4,7
   19d8c:	eb4d                	bnez	a4,19e3e <strcmp+0xba>
   19d8e:	00006797          	auipc	a5,0x6
   19d92:	99a7b783          	ld	a5,-1638(a5) # 1f728 <mask>
   19d96:	6110                	ld	a2,0(a0)
   19d98:	6194                	ld	a3,0(a1)
   19d9a:	00f672b3          	and	t0,a2,a5
   19d9e:	00f66333          	or	t1,a2,a5
   19da2:	92be                	add	t0,t0,a5
   19da4:	0062e2b3          	or	t0,t0,t1
   19da8:	0a729963          	bne	t0,t2,19e5a <strcmp+0xd6>
   19dac:	02d61e63          	bne	a2,a3,19de8 <strcmp+0x64>
   19db0:	6510                	ld	a2,8(a0)
   19db2:	6594                	ld	a3,8(a1)
   19db4:	00f672b3          	and	t0,a2,a5
   19db8:	00f66333          	or	t1,a2,a5
   19dbc:	92be                	add	t0,t0,a5
   19dbe:	0062e2b3          	or	t0,t0,t1
   19dc2:	08729a63          	bne	t0,t2,19e56 <strcmp+0xd2>
   19dc6:	02d61163          	bne	a2,a3,19de8 <strcmp+0x64>
   19dca:	6910                	ld	a2,16(a0)
   19dcc:	6994                	ld	a3,16(a1)
   19dce:	00f672b3          	and	t0,a2,a5
   19dd2:	00f66333          	or	t1,a2,a5
   19dd6:	92be                	add	t0,t0,a5
   19dd8:	0062e2b3          	or	t0,t0,t1
   19ddc:	08729363          	bne	t0,t2,19e62 <strcmp+0xde>
   19de0:	0561                	addi	a0,a0,24
   19de2:	05e1                	addi	a1,a1,24
   19de4:	fad609e3          	beq	a2,a3,19d96 <strcmp+0x12>
   19de8:	03061713          	slli	a4,a2,0x30
   19dec:	03069793          	slli	a5,a3,0x30
   19df0:	02f71863          	bne	a4,a5,19e20 <strcmp+0x9c>
   19df4:	02061713          	slli	a4,a2,0x20
   19df8:	02069793          	slli	a5,a3,0x20
   19dfc:	02f71263          	bne	a4,a5,19e20 <strcmp+0x9c>
   19e00:	01061713          	slli	a4,a2,0x10
   19e04:	01069793          	slli	a5,a3,0x10
   19e08:	00f71c63          	bne	a4,a5,19e20 <strcmp+0x9c>
   19e0c:	03065713          	srli	a4,a2,0x30
   19e10:	0306d793          	srli	a5,a3,0x30
   19e14:	40f70533          	sub	a0,a4,a5
   19e18:	0ff57593          	zext.b	a1,a0
   19e1c:	e991                	bnez	a1,19e30 <strcmp+0xac>
   19e1e:	8082                	ret
   19e20:	9341                	srli	a4,a4,0x30
   19e22:	93c1                	srli	a5,a5,0x30
   19e24:	40f70533          	sub	a0,a4,a5
   19e28:	0ff57593          	zext.b	a1,a0
   19e2c:	e191                	bnez	a1,19e30 <strcmp+0xac>
   19e2e:	8082                	ret
   19e30:	0ff77713          	zext.b	a4,a4
   19e34:	0ff7f793          	zext.b	a5,a5
   19e38:	40f70533          	sub	a0,a4,a5
   19e3c:	8082                	ret
   19e3e:	00054603          	lbu	a2,0(a0)
   19e42:	0005c683          	lbu	a3,0(a1)
   19e46:	0505                	addi	a0,a0,1
   19e48:	0585                	addi	a1,a1,1
   19e4a:	00d61363          	bne	a2,a3,19e50 <strcmp+0xcc>
   19e4e:	fa65                	bnez	a2,19e3e <strcmp+0xba>
   19e50:	40d60533          	sub	a0,a2,a3
   19e54:	8082                	ret
   19e56:	0521                	addi	a0,a0,8
   19e58:	05a1                	addi	a1,a1,8
   19e5a:	fed612e3          	bne	a2,a3,19e3e <strcmp+0xba>
   19e5e:	4501                	li	a0,0
   19e60:	8082                	ret
   19e62:	0541                	addi	a0,a0,16
   19e64:	05c1                	addi	a1,a1,16
   19e66:	fcd61ce3          	bne	a2,a3,19e3e <strcmp+0xba>
   19e6a:	4501                	li	a0,0
   19e6c:	8082                	ret

0000000000019e6e <__ssprint_r>:
   19e6e:	6a1c                	ld	a5,16(a2)
   19e70:	715d                	addi	sp,sp,-80
   19e72:	f44e                	sd	s3,40(sp)
   19e74:	ec56                	sd	s5,24(sp)
   19e76:	e486                	sd	ra,72(sp)
   19e78:	e0a2                	sd	s0,64(sp)
   19e7a:	fc26                	sd	s1,56(sp)
   19e7c:	f84a                	sd	s2,48(sp)
   19e7e:	f052                	sd	s4,32(sp)
   19e80:	e85a                	sd	s6,16(sp)
   19e82:	e45e                	sd	s7,8(sp)
   19e84:	e062                	sd	s8,0(sp)
   19e86:	00063983          	ld	s3,0(a2)
   19e8a:	8ab2                	mv	s5,a2
   19e8c:	10078d63          	beqz	a5,19fa6 <__ssprint_r+0x138>
   19e90:	45d8                	lw	a4,12(a1)
   19e92:	619c                	ld	a5,0(a1)
   19e94:	8b2a                	mv	s6,a0
   19e96:	84ae                	mv	s1,a1
   19e98:	4a01                	li	s4,0
   19e9a:	4401                	li	s0,0
   19e9c:	893a                	mv	s2,a4
   19e9e:	853e                	mv	a0,a5
   19ea0:	c029                	beqz	s0,19ee2 <__ssprint_r+0x74>
   19ea2:	04e47663          	bgeu	s0,a4,19eee <__ssprint_r+0x80>
   19ea6:	0004071b          	sext.w	a4,s0
   19eaa:	893a                	mv	s2,a4
   19eac:	8bba                	mv	s7,a4
   19eae:	853e                	mv	a0,a5
   19eb0:	85d2                	mv	a1,s4
   19eb2:	864a                	mv	a2,s2
   19eb4:	e77fb0ef          	jal	ra,15d2a <memmove>
   19eb8:	44d4                	lw	a3,12(s1)
   19eba:	609c                	ld	a5,0(s1)
   19ebc:	010ab703          	ld	a4,16(s5)
   19ec0:	412686bb          	subw	a3,a3,s2
   19ec4:	97ca                	add	a5,a5,s2
   19ec6:	c4d4                	sw	a3,12(s1)
   19ec8:	e09c                	sd	a5,0(s1)
   19eca:	41770733          	sub	a4,a4,s7
   19ece:	00eab823          	sd	a4,16(s5)
   19ed2:	9a5e                	add	s4,s4,s7
   19ed4:	41740433          	sub	s0,s0,s7
   19ed8:	c779                	beqz	a4,19fa6 <__ssprint_r+0x138>
   19eda:	44d8                	lw	a4,12(s1)
   19edc:	853e                	mv	a0,a5
   19ede:	893a                	mv	s2,a4
   19ee0:	f069                	bnez	s0,19ea2 <__ssprint_r+0x34>
   19ee2:	0009ba03          	ld	s4,0(s3)
   19ee6:	0089b403          	ld	s0,8(s3)
   19eea:	09c1                	addi	s3,s3,16
   19eec:	bf45                	j	19e9c <__ssprint_r+0x2e>
   19eee:	0104d703          	lhu	a4,16(s1)
   19ef2:	00040b9b          	sext.w	s7,s0
   19ef6:	48077693          	andi	a3,a4,1152
   19efa:	dadd                	beqz	a3,19eb0 <__ssprint_r+0x42>
   19efc:	5090                	lw	a2,32(s1)
   19efe:	6c8c                	ld	a1,24(s1)
   19f00:	0016169b          	slliw	a3,a2,0x1
   19f04:	9eb1                	addw	a3,a3,a2
   19f06:	8f8d                	sub	a5,a5,a1
   19f08:	01f6d91b          	srliw	s2,a3,0x1f
   19f0c:	00078b9b          	sext.w	s7,a5
   19f10:	00d9093b          	addw	s2,s2,a3
   19f14:	001b8693          	addi	a3,s7,1
   19f18:	4019591b          	sraiw	s2,s2,0x1
   19f1c:	96a2                	add	a3,a3,s0
   19f1e:	00d97563          	bgeu	s2,a3,19f28 <__ssprint_r+0xba>
   19f22:	2785                	addiw	a5,a5,1
   19f24:	0087893b          	addw	s2,a5,s0
   19f28:	40077713          	andi	a4,a4,1024
   19f2c:	c731                	beqz	a4,19f78 <__ssprint_r+0x10a>
   19f2e:	85ca                	mv	a1,s2
   19f30:	855a                	mv	a0,s6
   19f32:	833f60ef          	jal	ra,10764 <_malloc_r>
   19f36:	8c2a                	mv	s8,a0
   19f38:	c931                	beqz	a0,19f8c <__ssprint_r+0x11e>
   19f3a:	6c8c                	ld	a1,24(s1)
   19f3c:	865e                	mv	a2,s7
   19f3e:	ecdf60ef          	jal	ra,10e0a <memcpy>
   19f42:	0104d783          	lhu	a5,16(s1)
   19f46:	b7f7f793          	andi	a5,a5,-1153
   19f4a:	0807e793          	ori	a5,a5,128
   19f4e:	00f49823          	sh	a5,16(s1)
   19f52:	017c0533          	add	a0,s8,s7
   19f56:	41790bbb          	subw	s7,s2,s7
   19f5a:	0004071b          	sext.w	a4,s0
   19f5e:	0324a023          	sw	s2,32(s1)
   19f62:	0174a623          	sw	s7,12(s1)
   19f66:	0184bc23          	sd	s8,24(s1)
   19f6a:	e088                	sd	a0,0(s1)
   19f6c:	893a                	mv	s2,a4
   19f6e:	8bba                	mv	s7,a4
   19f70:	87aa                	mv	a5,a0
   19f72:	f2e47fe3          	bgeu	s0,a4,19eb0 <__ssprint_r+0x42>
   19f76:	bf15                	j	19eaa <__ssprint_r+0x3c>
   19f78:	864a                	mv	a2,s2
   19f7a:	855a                	mv	a0,s6
   19f7c:	b67fc0ef          	jal	ra,16ae2 <_realloc_r>
   19f80:	8c2a                	mv	s8,a0
   19f82:	f961                	bnez	a0,19f52 <__ssprint_r+0xe4>
   19f84:	6c8c                	ld	a1,24(s1)
   19f86:	855a                	mv	a0,s6
   19f88:	de8f90ef          	jal	ra,13570 <_free_r>
   19f8c:	0104d783          	lhu	a5,16(s1)
   19f90:	4731                	li	a4,12
   19f92:	00eb2023          	sw	a4,0(s6)
   19f96:	0407e793          	ori	a5,a5,64
   19f9a:	00f49823          	sh	a5,16(s1)
   19f9e:	000ab823          	sd	zero,16(s5)
   19fa2:	557d                	li	a0,-1
   19fa4:	a011                	j	19fa8 <__ssprint_r+0x13a>
   19fa6:	4501                	li	a0,0
   19fa8:	60a6                	ld	ra,72(sp)
   19faa:	6406                	ld	s0,64(sp)
   19fac:	000aa423          	sw	zero,8(s5)
   19fb0:	74e2                	ld	s1,56(sp)
   19fb2:	7942                	ld	s2,48(sp)
   19fb4:	79a2                	ld	s3,40(sp)
   19fb6:	7a02                	ld	s4,32(sp)
   19fb8:	6ae2                	ld	s5,24(sp)
   19fba:	6b42                	ld	s6,16(sp)
   19fbc:	6ba2                	ld	s7,8(sp)
   19fbe:	6c02                	ld	s8,0(sp)
   19fc0:	6161                	addi	sp,sp,80
   19fc2:	8082                	ret

0000000000019fc4 <_svfiprintf_r>:
   19fc4:	0105d783          	lhu	a5,16(a1)
   19fc8:	7105                	addi	sp,sp,-480
   19fca:	ff4e                	sd	s3,440(sp)
   19fcc:	f756                	sd	s5,424(sp)
   19fce:	feee                	sd	s11,376(sp)
   19fd0:	ef86                	sd	ra,472(sp)
   19fd2:	eba2                	sd	s0,464(sp)
   19fd4:	e7a6                	sd	s1,456(sp)
   19fd6:	e3ca                	sd	s2,448(sp)
   19fd8:	fb52                	sd	s4,432(sp)
   19fda:	f35a                	sd	s6,416(sp)
   19fdc:	ef5e                	sd	s7,408(sp)
   19fde:	eb62                	sd	s8,400(sp)
   19fe0:	e766                	sd	s9,392(sp)
   19fe2:	e36a                	sd	s10,384(sp)
   19fe4:	0807f793          	andi	a5,a5,128
   19fe8:	e836                	sd	a3,16(sp)
   19fea:	89ae                	mv	s3,a1
   19fec:	8aaa                	mv	s5,a0
   19fee:	8db2                	mv	s11,a2
   19ff0:	c781                	beqz	a5,19ff8 <_svfiprintf_r+0x34>
   19ff2:	6d9c                	ld	a5,24(a1)
   19ff4:	12078be3          	beqz	a5,1a92a <_svfiprintf_r+0x966>
   19ff8:	66f5                	lui	a3,0x1d
   19ffa:	0f010a13          	addi	s4,sp,240
   19ffe:	26468693          	addi	a3,a3,612 # 1d264 <zeroes.0+0x64>
   1a002:	6b75                	lui	s6,0x1d
   1a004:	64f5                	lui	s1,0x1d
   1a006:	f8d2                	sd	s4,112(sp)
   1a008:	e102                	sd	zero,128(sp)
   1a00a:	dc82                	sw	zero,120(sp)
   1a00c:	4701                	li	a4,0
   1a00e:	87d2                	mv	a5,s4
   1a010:	ec02                	sd	zero,24(sp)
   1a012:	e082                	sd	zero,64(sp)
   1a014:	e882                	sd	zero,80(sp)
   1a016:	e482                	sd	zero,72(sp)
   1a018:	e402                	sd	zero,8(sp)
   1a01a:	f036                	sd	a3,32(sp)
   1a01c:	3d0b0b13          	addi	s6,s6,976 # 1d3d0 <blanks.1>
   1a020:	3e048493          	addi	s1,s1,992 # 1d3e0 <zeroes.0>
   1a024:	000dc683          	lbu	a3,0(s11)
   1a028:	16068e63          	beqz	a3,1a1a4 <_svfiprintf_r+0x1e0>
   1a02c:	846e                	mv	s0,s11
   1a02e:	02500613          	li	a2,37
   1a032:	28c68063          	beq	a3,a2,1a2b2 <_svfiprintf_r+0x2ee>
   1a036:	00144683          	lbu	a3,1(s0)
   1a03a:	0405                	addi	s0,s0,1
   1a03c:	fafd                	bnez	a3,1a032 <_svfiprintf_r+0x6e>
   1a03e:	41b4093b          	subw	s2,s0,s11
   1a042:	16090163          	beqz	s2,1a1a4 <_svfiprintf_r+0x1e0>
   1a046:	56e6                	lw	a3,120(sp)
   1a048:	974a                	add	a4,a4,s2
   1a04a:	01b7b023          	sd	s11,0(a5)
   1a04e:	0016861b          	addiw	a2,a3,1
   1a052:	0127b423          	sd	s2,8(a5)
   1a056:	e13a                	sd	a4,128(sp)
   1a058:	dcb2                	sw	a2,120(sp)
   1a05a:	469d                	li	a3,7
   1a05c:	07c1                	addi	a5,a5,16
   1a05e:	26c6c163          	blt	a3,a2,1a2c0 <_svfiprintf_r+0x2fc>
   1a062:	6622                	ld	a2,8(sp)
   1a064:	00044683          	lbu	a3,0(s0)
   1a068:	0126063b          	addw	a2,a2,s2
   1a06c:	e432                	sd	a2,8(sp)
   1a06e:	12068b63          	beqz	a3,1a1a4 <_svfiprintf_r+0x1e0>
   1a072:	00144683          	lbu	a3,1(s0)
   1a076:	00140d93          	addi	s11,s0,1
   1a07a:	060103a3          	sb	zero,103(sp)
   1a07e:	5cfd                	li	s9,-1
   1a080:	4401                	li	s0,0
   1a082:	4d01                	li	s10,0
   1a084:	05a00913          	li	s2,90
   1a088:	4ba5                	li	s7,9
   1a08a:	0d85                	addi	s11,s11,1
   1a08c:	2681                	sext.w	a3,a3
   1a08e:	02a00513          	li	a0,42
   1a092:	fe06861b          	addiw	a2,a3,-32
   1a096:	0006059b          	sext.w	a1,a2
   1a09a:	04b96363          	bltu	s2,a1,1a0e0 <_svfiprintf_r+0x11c>
   1a09e:	02061593          	slli	a1,a2,0x20
   1a0a2:	01e5d613          	srli	a2,a1,0x1e
   1a0a6:	7582                	ld	a1,32(sp)
   1a0a8:	962e                	add	a2,a2,a1
   1a0aa:	4210                	lw	a2,0(a2)
   1a0ac:	8602                	jr	a2
   1a0ae:	4401                	li	s0,0
   1a0b0:	000dc583          	lbu	a1,0(s11)
   1a0b4:	0024161b          	slliw	a2,s0,0x2
   1a0b8:	9e21                	addw	a2,a2,s0
   1a0ba:	fd06869b          	addiw	a3,a3,-48
   1a0be:	0016161b          	slliw	a2,a2,0x1
   1a0c2:	fd05881b          	addiw	a6,a1,-48
   1a0c6:	00c6843b          	addw	s0,a3,a2
   1a0ca:	0d85                	addi	s11,s11,1
   1a0cc:	0005869b          	sext.w	a3,a1
   1a0d0:	ff0bf0e3          	bgeu	s7,a6,1a0b0 <_svfiprintf_r+0xec>
   1a0d4:	fe06861b          	addiw	a2,a3,-32
   1a0d8:	0006059b          	sext.w	a1,a2
   1a0dc:	fcb971e3          	bgeu	s2,a1,1a09e <_svfiprintf_r+0xda>
   1a0e0:	c2f1                	beqz	a3,1a1a4 <_svfiprintf_r+0x1e0>
   1a0e2:	08d10423          	sb	a3,136(sp)
   1a0e6:	060103a3          	sb	zero,103(sp)
   1a0ea:	4b85                	li	s7,1
   1a0ec:	4905                	li	s2,1
   1a0ee:	08810c13          	addi	s8,sp,136
   1a0f2:	4c81                	li	s9,0
   1a0f4:	002d7293          	andi	t0,s10,2
   1a0f8:	00028363          	beqz	t0,1a0fe <_svfiprintf_r+0x13a>
   1a0fc:	2b89                	addiw	s7,s7,2
   1a0fe:	084d7f93          	andi	t6,s10,132
   1a102:	56e6                	lw	a3,120(sp)
   1a104:	000f9663          	bnez	t6,1a110 <_svfiprintf_r+0x14c>
   1a108:	41740ebb          	subw	t4,s0,s7
   1a10c:	5bd04b63          	bgtz	t4,1a6c2 <_svfiprintf_r+0x6fe>
   1a110:	06714603          	lbu	a2,103(sp)
   1a114:	ce11                	beqz	a2,1a130 <_svfiprintf_r+0x16c>
   1a116:	06710593          	addi	a1,sp,103
   1a11a:	e38c                	sd	a1,0(a5)
   1a11c:	2685                	addiw	a3,a3,1
   1a11e:	0705                	addi	a4,a4,1
   1a120:	4585                	li	a1,1
   1a122:	e78c                	sd	a1,8(a5)
   1a124:	e13a                	sd	a4,128(sp)
   1a126:	dcb6                	sw	a3,120(sp)
   1a128:	461d                	li	a2,7
   1a12a:	07c1                	addi	a5,a5,16
   1a12c:	1ad64463          	blt	a2,a3,1a2d4 <_svfiprintf_r+0x310>
   1a130:	00028e63          	beqz	t0,1a14c <_svfiprintf_r+0x188>
   1a134:	10ac                	addi	a1,sp,104
   1a136:	e38c                	sd	a1,0(a5)
   1a138:	2685                	addiw	a3,a3,1
   1a13a:	0709                	addi	a4,a4,2
   1a13c:	4589                	li	a1,2
   1a13e:	e78c                	sd	a1,8(a5)
   1a140:	e13a                	sd	a4,128(sp)
   1a142:	dcb6                	sw	a3,120(sp)
   1a144:	461d                	li	a2,7
   1a146:	07c1                	addi	a5,a5,16
   1a148:	60d64163          	blt	a2,a3,1a74a <_svfiprintf_r+0x786>
   1a14c:	08000613          	li	a2,128
   1a150:	44cf8b63          	beq	t6,a2,1a5a6 <_svfiprintf_r+0x5e2>
   1a154:	412c8cbb          	subw	s9,s9,s2
   1a158:	4d904863          	bgtz	s9,1a628 <_svfiprintf_r+0x664>
   1a15c:	0016861b          	addiw	a2,a3,1
   1a160:	974a                	add	a4,a4,s2
   1a162:	0187b023          	sd	s8,0(a5)
   1a166:	0127b423          	sd	s2,8(a5)
   1a16a:	e13a                	sd	a4,128(sp)
   1a16c:	dcb2                	sw	a2,120(sp)
   1a16e:	469d                	li	a3,7
   1a170:	07c1                	addi	a5,a5,16
   1a172:	52c6c363          	blt	a3,a2,1a698 <_svfiprintf_r+0x6d4>
   1a176:	004d7e13          	andi	t3,s10,4
   1a17a:	000e0663          	beqz	t3,1a186 <_svfiprintf_r+0x1c2>
   1a17e:	4174093b          	subw	s2,s0,s7
   1a182:	5f204163          	bgtz	s2,1a764 <_svfiprintf_r+0x7a0>
   1a186:	87a2                	mv	a5,s0
   1a188:	01745363          	bge	s0,s7,1a18e <_svfiprintf_r+0x1ca>
   1a18c:	87de                	mv	a5,s7
   1a18e:	66a2                	ld	a3,8(sp)
   1a190:	9fb5                	addw	a5,a5,a3
   1a192:	e43e                	sd	a5,8(sp)
   1a194:	50071c63          	bnez	a4,1a6ac <_svfiprintf_r+0x6e8>
   1a198:	000dc683          	lbu	a3,0(s11)
   1a19c:	dc82                	sw	zero,120(sp)
   1a19e:	87d2                	mv	a5,s4
   1a1a0:	e80696e3          	bnez	a3,1a02c <_svfiprintf_r+0x68>
   1a1a4:	060715e3          	bnez	a4,1aa0e <_svfiprintf_r+0xa4a>
   1a1a8:	0109d783          	lhu	a5,16(s3)
   1a1ac:	0407f793          	andi	a5,a5,64
   1a1b0:	080790e3          	bnez	a5,1aa30 <_svfiprintf_r+0xa6c>
   1a1b4:	60fe                	ld	ra,472(sp)
   1a1b6:	645e                	ld	s0,464(sp)
   1a1b8:	6522                	ld	a0,8(sp)
   1a1ba:	64be                	ld	s1,456(sp)
   1a1bc:	691e                	ld	s2,448(sp)
   1a1be:	79fa                	ld	s3,440(sp)
   1a1c0:	7a5a                	ld	s4,432(sp)
   1a1c2:	7aba                	ld	s5,424(sp)
   1a1c4:	7b1a                	ld	s6,416(sp)
   1a1c6:	6bfa                	ld	s7,408(sp)
   1a1c8:	6c5a                	ld	s8,400(sp)
   1a1ca:	6cba                	ld	s9,392(sp)
   1a1cc:	6d1a                	ld	s10,384(sp)
   1a1ce:	7df6                	ld	s11,376(sp)
   1a1d0:	613d                	addi	sp,sp,480
   1a1d2:	8082                	ret
   1a1d4:	010d6e13          	ori	t3,s10,16
   1a1d8:	000dc683          	lbu	a3,0(s11)
   1a1dc:	000e0d1b          	sext.w	s10,t3
   1a1e0:	b56d                	j	1a08a <_svfiprintf_r+0xc6>
   1a1e2:	010d6e13          	ori	t3,s10,16
   1a1e6:	000e0d1b          	sext.w	s10,t3
   1a1ea:	65c2                	ld	a1,16(sp)
   1a1ec:	020d7693          	andi	a3,s10,32
   1a1f0:	00858613          	addi	a2,a1,8
   1a1f4:	10068e63          	beqz	a3,1a310 <_svfiprintf_r+0x34c>
   1a1f8:	6194                	ld	a3,0(a1)
   1a1fa:	8bb6                	mv	s7,a3
   1a1fc:	1206cc63          	bltz	a3,1a334 <_svfiprintf_r+0x370>
   1a200:	56fd                	li	a3,-1
   1a202:	74dc8e63          	beq	s9,a3,1a95e <_svfiprintf_r+0x99a>
   1a206:	f7fd7e93          	andi	t4,s10,-129
   1a20a:	e832                	sd	a2,16(sp)
   1a20c:	2e81                	sext.w	t4,t4
   1a20e:	5c0b8263          	beqz	s7,1a7d2 <_svfiprintf_r+0x80e>
   1a212:	46a5                	li	a3,9
   1a214:	5f76e763          	bltu	a3,s7,1a802 <_svfiprintf_r+0x83e>
   1a218:	030b8b9b          	addiw	s7,s7,48
   1a21c:	0f7105a3          	sb	s7,235(sp)
   1a220:	8d76                	mv	s10,t4
   1a222:	4905                	li	s2,1
   1a224:	0eb10c13          	addi	s8,sp,235
   1a228:	a8b1                	j	1a284 <_svfiprintf_r+0x2c0>
   1a22a:	010d6e13          	ori	t3,s10,16
   1a22e:	000e0d1b          	sext.w	s10,t3
   1a232:	65c2                	ld	a1,16(sp)
   1a234:	020d7693          	andi	a3,s10,32
   1a238:	00858613          	addi	a2,a1,8
   1a23c:	cadd                	beqz	a3,1a2f2 <_svfiprintf_r+0x32e>
   1a23e:	0005bb83          	ld	s7,0(a1)
   1a242:	bffd7e93          	andi	t4,s10,-1025
   1a246:	2e81                	sext.w	t4,t4
   1a248:	e832                	sd	a2,16(sp)
   1a24a:	4681                	li	a3,0
   1a24c:	4601                	li	a2,0
   1a24e:	06c103a3          	sb	a2,103(sp)
   1a252:	567d                	li	a2,-1
   1a254:	0ecc8c63          	beq	s9,a2,1a34c <_svfiprintf_r+0x388>
   1a258:	f7fefe13          	andi	t3,t4,-129
   1a25c:	000e0d1b          	sext.w	s10,t3
   1a260:	440b9f63          	bnez	s7,1a6be <_svfiprintf_r+0x6fa>
   1a264:	300c9663          	bnez	s9,1a570 <_svfiprintf_r+0x5ac>
   1a268:	56069863          	bnez	a3,1a7d8 <_svfiprintf_r+0x814>
   1a26c:	001ef913          	andi	s2,t4,1
   1a270:	0ec10c13          	addi	s8,sp,236
   1a274:	00090863          	beqz	s2,1a284 <_svfiprintf_r+0x2c0>
   1a278:	03000693          	li	a3,48
   1a27c:	0ed105a3          	sb	a3,235(sp)
   1a280:	0eb10c13          	addi	s8,sp,235
   1a284:	86e6                	mv	a3,s9
   1a286:	012cd363          	bge	s9,s2,1a28c <_svfiprintf_r+0x2c8>
   1a28a:	86ca                	mv	a3,s2
   1a28c:	06714603          	lbu	a2,103(sp)
   1a290:	00068b9b          	sext.w	s7,a3
   1a294:	e60600e3          	beqz	a2,1a0f4 <_svfiprintf_r+0x130>
   1a298:	00168b9b          	addiw	s7,a3,1
   1a29c:	bda1                	j	1a0f4 <_svfiprintf_r+0x130>
   1a29e:	4080043b          	negw	s0,s0
   1a2a2:	e862                	sd	s8,16(sp)
   1a2a4:	004d6e13          	ori	t3,s10,4
   1a2a8:	000dc683          	lbu	a3,0(s11)
   1a2ac:	000e0d1b          	sext.w	s10,t3
   1a2b0:	bbe9                	j	1a08a <_svfiprintf_r+0xc6>
   1a2b2:	41b4093b          	subw	s2,s0,s11
   1a2b6:	d80918e3          	bnez	s2,1a046 <_svfiprintf_r+0x82>
   1a2ba:	00044683          	lbu	a3,0(s0)
   1a2be:	bb45                	j	1a06e <_svfiprintf_r+0xaa>
   1a2c0:	1890                	addi	a2,sp,112
   1a2c2:	85ce                	mv	a1,s3
   1a2c4:	8556                	mv	a0,s5
   1a2c6:	ba9ff0ef          	jal	ra,19e6e <__ssprint_r>
   1a2ca:	ec051fe3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a2ce:	670a                	ld	a4,128(sp)
   1a2d0:	87d2                	mv	a5,s4
   1a2d2:	bb41                	j	1a062 <_svfiprintf_r+0x9e>
   1a2d4:	1890                	addi	a2,sp,112
   1a2d6:	85ce                	mv	a1,s3
   1a2d8:	8556                	mv	a0,s5
   1a2da:	f87e                	sd	t6,48(sp)
   1a2dc:	f416                	sd	t0,40(sp)
   1a2de:	b91ff0ef          	jal	ra,19e6e <__ssprint_r>
   1a2e2:	ec0513e3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a2e6:	670a                	ld	a4,128(sp)
   1a2e8:	56e6                	lw	a3,120(sp)
   1a2ea:	7fc2                	ld	t6,48(sp)
   1a2ec:	72a2                	ld	t0,40(sp)
   1a2ee:	87d2                	mv	a5,s4
   1a2f0:	b581                	j	1a130 <_svfiprintf_r+0x16c>
   1a2f2:	010d7693          	andi	a3,s10,16
   1a2f6:	5a069063          	bnez	a3,1a896 <_svfiprintf_r+0x8d2>
   1a2fa:	65c2                	ld	a1,16(sp)
   1a2fc:	040d7693          	andi	a3,s10,64
   1a300:	0005ab83          	lw	s7,0(a1)
   1a304:	6c068163          	beqz	a3,1a9c6 <_svfiprintf_r+0xa02>
   1a308:	1bc2                	slli	s7,s7,0x30
   1a30a:	030bdb93          	srli	s7,s7,0x30
   1a30e:	bf15                	j	1a242 <_svfiprintf_r+0x27e>
   1a310:	010d7693          	andi	a3,s10,16
   1a314:	56069d63          	bnez	a3,1a88e <_svfiprintf_r+0x8ca>
   1a318:	65c2                	ld	a1,16(sp)
   1a31a:	040d7693          	andi	a3,s10,64
   1a31e:	0005ab83          	lw	s7,0(a1)
   1a322:	68068063          	beqz	a3,1a9a2 <_svfiprintf_r+0x9de>
   1a326:	010b9b9b          	slliw	s7,s7,0x10
   1a32a:	410bdb9b          	sraiw	s7,s7,0x10
   1a32e:	86de                	mv	a3,s7
   1a330:	ec06d8e3          	bgez	a3,1a200 <_svfiprintf_r+0x23c>
   1a334:	e832                	sd	a2,16(sp)
   1a336:	02d00613          	li	a2,45
   1a33a:	06c103a3          	sb	a2,103(sp)
   1a33e:	567d                	li	a2,-1
   1a340:	41700bb3          	neg	s7,s7
   1a344:	8eea                	mv	t4,s10
   1a346:	4685                	li	a3,1
   1a348:	f0cc98e3          	bne	s9,a2,1a258 <_svfiprintf_r+0x294>
   1a34c:	4605                	li	a2,1
   1a34e:	ecc682e3          	beq	a3,a2,1a212 <_svfiprintf_r+0x24e>
   1a352:	4609                	li	a2,2
   1a354:	22c68563          	beq	a3,a2,1a57e <_svfiprintf_r+0x5ba>
   1a358:	0ec10913          	addi	s2,sp,236
   1a35c:	8c4a                	mv	s8,s2
   1a35e:	007bf693          	andi	a3,s7,7
   1a362:	03068693          	addi	a3,a3,48
   1a366:	fedc0fa3          	sb	a3,-1(s8)
   1a36a:	003bdb93          	srli	s7,s7,0x3
   1a36e:	8662                	mv	a2,s8
   1a370:	1c7d                	addi	s8,s8,-1
   1a372:	fe0b96e3          	bnez	s7,1a35e <_svfiprintf_r+0x39a>
   1a376:	001ef593          	andi	a1,t4,1
   1a37a:	22058263          	beqz	a1,1a59e <_svfiprintf_r+0x5da>
   1a37e:	03000593          	li	a1,48
   1a382:	20b68e63          	beq	a3,a1,1a59e <_svfiprintf_r+0x5da>
   1a386:	1679                	addi	a2,a2,-2
   1a388:	febc0fa3          	sb	a1,-1(s8)
   1a38c:	40c9093b          	subw	s2,s2,a2
   1a390:	8d76                	mv	s10,t4
   1a392:	8c32                	mv	s8,a2
   1a394:	bdc5                	j	1a284 <_svfiprintf_r+0x2c0>
   1a396:	66c2                	ld	a3,16(sp)
   1a398:	060103a3          	sb	zero,103(sp)
   1a39c:	0006bc03          	ld	s8,0(a3)
   1a3a0:	00868813          	addi	a6,a3,8
   1a3a4:	5e0c0263          	beqz	s8,1a988 <_svfiprintf_r+0x9c4>
   1a3a8:	56fd                	li	a3,-1
   1a3aa:	56dc8463          	beq	s9,a3,1a912 <_svfiprintf_r+0x94e>
   1a3ae:	8666                	mv	a2,s9
   1a3b0:	4581                	li	a1,0
   1a3b2:	8562                	mv	a0,s8
   1a3b4:	f842                	sd	a6,48(sp)
   1a3b6:	f43e                	sd	a5,40(sp)
   1a3b8:	e83a                	sd	a4,16(sp)
   1a3ba:	9c3f60ef          	jal	ra,10d7c <memchr>
   1a3be:	6742                	ld	a4,16(sp)
   1a3c0:	77a2                	ld	a5,40(sp)
   1a3c2:	7842                	ld	a6,48(sp)
   1a3c4:	64050c63          	beqz	a0,1aa1c <_svfiprintf_r+0xa58>
   1a3c8:	4185093b          	subw	s2,a0,s8
   1a3cc:	e842                	sd	a6,16(sp)
   1a3ce:	4c81                	li	s9,0
   1a3d0:	bd55                	j	1a284 <_svfiprintf_r+0x2c0>
   1a3d2:	6642                	ld	a2,16(sp)
   1a3d4:	060103a3          	sb	zero,103(sp)
   1a3d8:	4b85                	li	s7,1
   1a3da:	4214                	lw	a3,0(a2)
   1a3dc:	0621                	addi	a2,a2,8
   1a3de:	e832                	sd	a2,16(sp)
   1a3e0:	08d10423          	sb	a3,136(sp)
   1a3e4:	4905                	li	s2,1
   1a3e6:	08810c13          	addi	s8,sp,136
   1a3ea:	b321                	j	1a0f2 <_svfiprintf_r+0x12e>
   1a3ec:	080d6e13          	ori	t3,s10,128
   1a3f0:	000dc683          	lbu	a3,0(s11)
   1a3f4:	000e0d1b          	sext.w	s10,t3
   1a3f8:	b949                	j	1a08a <_svfiprintf_r+0xc6>
   1a3fa:	020d6e13          	ori	t3,s10,32
   1a3fe:	000dc683          	lbu	a3,0(s11)
   1a402:	000e0d1b          	sext.w	s10,t3
   1a406:	b151                	j	1a08a <_svfiprintf_r+0xc6>
   1a408:	6642                	ld	a2,16(sp)
   1a40a:	76e1                	lui	a3,0xffff8
   1a40c:	8306c693          	xori	a3,a3,-2000
   1a410:	002d6e93          	ori	t4,s10,2
   1a414:	06d11423          	sh	a3,104(sp)
   1a418:	6d71                	lui	s10,0x1c
   1a41a:	00860693          	addi	a3,a2,8
   1a41e:	e836                	sd	a3,16(sp)
   1a420:	728d0693          	addi	a3,s10,1832 # 1c728 <__clzdi2+0xf8>
   1a424:	ec36                	sd	a3,24(sp)
   1a426:	00063b83          	ld	s7,0(a2)
   1a42a:	2e81                	sext.w	t4,t4
   1a42c:	4689                	li	a3,2
   1a42e:	bd39                	j	1a24c <_svfiprintf_r+0x288>
   1a430:	010d6e93          	ori	t4,s10,16
   1a434:	2e81                	sext.w	t4,t4
   1a436:	65c2                	ld	a1,16(sp)
   1a438:	020ef693          	andi	a3,t4,32
   1a43c:	00858613          	addi	a2,a1,8
   1a440:	3a068163          	beqz	a3,1a7e2 <_svfiprintf_r+0x81e>
   1a444:	0005bb83          	ld	s7,0(a1)
   1a448:	4685                	li	a3,1
   1a44a:	e832                	sd	a2,16(sp)
   1a44c:	b501                	j	1a24c <_svfiprintf_r+0x288>
   1a44e:	000dc683          	lbu	a3,0(s11)
   1a452:	001d8613          	addi	a2,s11,1
   1a456:	5ea68163          	beq	a3,a0,1aa38 <_svfiprintf_r+0xa74>
   1a45a:	fd06859b          	addiw	a1,a3,-48 # ffffffffffff7fd0 <__BSS_END__+0xfffffffffffd86b0>
   1a45e:	8db2                	mv	s11,a2
   1a460:	4c81                	li	s9,0
   1a462:	c2bbe8e3          	bltu	s7,a1,1a092 <_svfiprintf_r+0xce>
   1a466:	000dc683          	lbu	a3,0(s11)
   1a46a:	002c961b          	slliw	a2,s9,0x2
   1a46e:	0196063b          	addw	a2,a2,s9
   1a472:	0016161b          	slliw	a2,a2,0x1
   1a476:	00b60cbb          	addw	s9,a2,a1
   1a47a:	fd06859b          	addiw	a1,a3,-48
   1a47e:	0d85                	addi	s11,s11,1
   1a480:	febbf3e3          	bgeu	s7,a1,1a466 <_svfiprintf_r+0x4a2>
   1a484:	b139                	j	1a092 <_svfiprintf_r+0xce>
   1a486:	65c2                	ld	a1,16(sp)
   1a488:	020d7693          	andi	a3,s10,32
   1a48c:	6190                	ld	a2,0(a1)
   1a48e:	05a1                	addi	a1,a1,8
   1a490:	e82e                	sd	a1,16(sp)
   1a492:	e285                	bnez	a3,1a4b2 <_svfiprintf_r+0x4ee>
   1a494:	010d7693          	andi	a3,s10,16
   1a498:	ee89                	bnez	a3,1a4b2 <_svfiprintf_r+0x4ee>
   1a49a:	040d7693          	andi	a3,s10,64
   1a49e:	56069363          	bnez	a3,1aa04 <_svfiprintf_r+0xa40>
   1a4a2:	200d7e13          	andi	t3,s10,512
   1a4a6:	66a2                	ld	a3,8(sp)
   1a4a8:	580e0163          	beqz	t3,1aa2a <_svfiprintf_r+0xa66>
   1a4ac:	00d60023          	sb	a3,0(a2)
   1a4b0:	be95                	j	1a024 <_svfiprintf_r+0x60>
   1a4b2:	66a2                	ld	a3,8(sp)
   1a4b4:	e214                	sd	a3,0(a2)
   1a4b6:	b6bd                	j	1a024 <_svfiprintf_r+0x60>
   1a4b8:	000dc683          	lbu	a3,0(s11)
   1a4bc:	06c00613          	li	a2,108
   1a4c0:	4ac68263          	beq	a3,a2,1a964 <_svfiprintf_r+0x9a0>
   1a4c4:	010d6e13          	ori	t3,s10,16
   1a4c8:	000e0d1b          	sext.w	s10,t3
   1a4cc:	be7d                	j	1a08a <_svfiprintf_r+0xc6>
   1a4ce:	000dc683          	lbu	a3,0(s11)
   1a4d2:	06800613          	li	a2,104
   1a4d6:	4ac68063          	beq	a3,a2,1a976 <_svfiprintf_r+0x9b2>
   1a4da:	040d6e13          	ori	t3,s10,64
   1a4de:	000e0d1b          	sext.w	s10,t3
   1a4e2:	b665                	j	1a08a <_svfiprintf_r+0xc6>
   1a4e4:	66c2                	ld	a3,16(sp)
   1a4e6:	4280                	lw	s0,0(a3)
   1a4e8:	00868c13          	addi	s8,a3,8
   1a4ec:	da0449e3          	bltz	s0,1a29e <_svfiprintf_r+0x2da>
   1a4f0:	000dc683          	lbu	a3,0(s11)
   1a4f4:	e862                	sd	s8,16(sp)
   1a4f6:	be51                	j	1a08a <_svfiprintf_r+0xc6>
   1a4f8:	8556                	mv	a0,s5
   1a4fa:	f43a                	sd	a4,40(sp)
   1a4fc:	f83e                	sd	a5,48(sp)
   1a4fe:	e46fb0ef          	jal	ra,15b44 <_localeconv_r>
   1a502:	651c                	ld	a5,8(a0)
   1a504:	853e                	mv	a0,a5
   1a506:	e4be                	sd	a5,72(sp)
   1a508:	e93f60ef          	jal	ra,1139a <strlen>
   1a50c:	86aa                	mv	a3,a0
   1a50e:	8556                	mv	a0,s5
   1a510:	8c36                	mv	s8,a3
   1a512:	e8b6                	sd	a3,80(sp)
   1a514:	e30fb0ef          	jal	ra,15b44 <_localeconv_r>
   1a518:	6910                	ld	a2,16(a0)
   1a51a:	7722                	ld	a4,40(sp)
   1a51c:	77c2                	ld	a5,48(sp)
   1a51e:	e0b2                	sd	a2,64(sp)
   1a520:	360c0363          	beqz	s8,1a886 <_svfiprintf_r+0x8c2>
   1a524:	000dc683          	lbu	a3,0(s11)
   1a528:	b60601e3          	beqz	a2,1a08a <_svfiprintf_r+0xc6>
   1a52c:	00064603          	lbu	a2,0(a2)
   1a530:	b4060de3          	beqz	a2,1a08a <_svfiprintf_r+0xc6>
   1a534:	400d6e13          	ori	t3,s10,1024
   1a538:	000e0d1b          	sext.w	s10,t3
   1a53c:	b6b9                	j	1a08a <_svfiprintf_r+0xc6>
   1a53e:	001d6e13          	ori	t3,s10,1
   1a542:	000dc683          	lbu	a3,0(s11)
   1a546:	000e0d1b          	sext.w	s10,t3
   1a54a:	b681                	j	1a08a <_svfiprintf_r+0xc6>
   1a54c:	06714603          	lbu	a2,103(sp)
   1a550:	000dc683          	lbu	a3,0(s11)
   1a554:	b2061be3          	bnez	a2,1a08a <_svfiprintf_r+0xc6>
   1a558:	02000613          	li	a2,32
   1a55c:	06c103a3          	sb	a2,103(sp)
   1a560:	b62d                	j	1a08a <_svfiprintf_r+0xc6>
   1a562:	02b00613          	li	a2,43
   1a566:	000dc683          	lbu	a3,0(s11)
   1a56a:	06c103a3          	sb	a2,103(sp)
   1a56e:	be31                	j	1a08a <_svfiprintf_r+0xc6>
   1a570:	4605                	li	a2,1
   1a572:	4ac68963          	beq	a3,a2,1aa24 <_svfiprintf_r+0xa60>
   1a576:	4609                	li	a2,2
   1a578:	8eea                	mv	t4,s10
   1a57a:	dcc69fe3          	bne	a3,a2,1a358 <_svfiprintf_r+0x394>
   1a57e:	0ec10913          	addi	s2,sp,236
   1a582:	8c4a                	mv	s8,s2
   1a584:	6662                	ld	a2,24(sp)
   1a586:	00fbf693          	andi	a3,s7,15
   1a58a:	1c7d                	addi	s8,s8,-1
   1a58c:	96b2                	add	a3,a3,a2
   1a58e:	0006c683          	lbu	a3,0(a3)
   1a592:	004bdb93          	srli	s7,s7,0x4
   1a596:	00dc0023          	sb	a3,0(s8)
   1a59a:	fe0b95e3          	bnez	s7,1a584 <_svfiprintf_r+0x5c0>
   1a59e:	4189093b          	subw	s2,s2,s8
   1a5a2:	8d76                	mv	s10,t4
   1a5a4:	b1c5                	j	1a284 <_svfiprintf_r+0x2c0>
   1a5a6:	41740ebb          	subw	t4,s0,s7
   1a5aa:	bbd055e3          	blez	t4,1a154 <_svfiprintf_r+0x190>
   1a5ae:	4641                	li	a2,16
   1a5b0:	05d65363          	bge	a2,t4,1a5f6 <_svfiprintf_r+0x632>
   1a5b4:	4f41                	li	t5,16
   1a5b6:	4f9d                	li	t6,7
   1a5b8:	a021                	j	1a5c0 <_svfiprintf_r+0x5fc>
   1a5ba:	3ec1                	addiw	t4,t4,-16
   1a5bc:	03df5d63          	bge	t5,t4,1a5f6 <_svfiprintf_r+0x632>
   1a5c0:	2685                	addiw	a3,a3,1
   1a5c2:	0741                	addi	a4,a4,16
   1a5c4:	e384                	sd	s1,0(a5)
   1a5c6:	01e7b423          	sd	t5,8(a5)
   1a5ca:	e13a                	sd	a4,128(sp)
   1a5cc:	dcb6                	sw	a3,120(sp)
   1a5ce:	07c1                	addi	a5,a5,16
   1a5d0:	fedfd5e3          	bge	t6,a3,1a5ba <_svfiprintf_r+0x5f6>
   1a5d4:	1890                	addi	a2,sp,112
   1a5d6:	85ce                	mv	a1,s3
   1a5d8:	8556                	mv	a0,s5
   1a5da:	f476                	sd	t4,40(sp)
   1a5dc:	893ff0ef          	jal	ra,19e6e <__ssprint_r>
   1a5e0:	bc0514e3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a5e4:	7ea2                	ld	t4,40(sp)
   1a5e6:	4f41                	li	t5,16
   1a5e8:	670a                	ld	a4,128(sp)
   1a5ea:	3ec1                	addiw	t4,t4,-16
   1a5ec:	56e6                	lw	a3,120(sp)
   1a5ee:	87d2                	mv	a5,s4
   1a5f0:	4f9d                	li	t6,7
   1a5f2:	fddf47e3          	blt	t5,t4,1a5c0 <_svfiprintf_r+0x5fc>
   1a5f6:	2685                	addiw	a3,a3,1
   1a5f8:	9776                	add	a4,a4,t4
   1a5fa:	e384                	sd	s1,0(a5)
   1a5fc:	01d7b423          	sd	t4,8(a5)
   1a600:	e13a                	sd	a4,128(sp)
   1a602:	dcb6                	sw	a3,120(sp)
   1a604:	461d                	li	a2,7
   1a606:	07c1                	addi	a5,a5,16
   1a608:	b4d656e3          	bge	a2,a3,1a154 <_svfiprintf_r+0x190>
   1a60c:	1890                	addi	a2,sp,112
   1a60e:	85ce                	mv	a1,s3
   1a610:	8556                	mv	a0,s5
   1a612:	85dff0ef          	jal	ra,19e6e <__ssprint_r>
   1a616:	b80519e3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a61a:	412c8cbb          	subw	s9,s9,s2
   1a61e:	670a                	ld	a4,128(sp)
   1a620:	56e6                	lw	a3,120(sp)
   1a622:	87d2                	mv	a5,s4
   1a624:	b3905ce3          	blez	s9,1a15c <_svfiprintf_r+0x198>
   1a628:	4641                	li	a2,16
   1a62a:	05965163          	bge	a2,s9,1a66c <_svfiprintf_r+0x6a8>
   1a62e:	4ec1                	li	t4,16
   1a630:	4f1d                	li	t5,7
   1a632:	a021                	j	1a63a <_svfiprintf_r+0x676>
   1a634:	3cc1                	addiw	s9,s9,-16
   1a636:	039edb63          	bge	t4,s9,1a66c <_svfiprintf_r+0x6a8>
   1a63a:	2685                	addiw	a3,a3,1
   1a63c:	0741                	addi	a4,a4,16
   1a63e:	e384                	sd	s1,0(a5)
   1a640:	01d7b423          	sd	t4,8(a5)
   1a644:	e13a                	sd	a4,128(sp)
   1a646:	dcb6                	sw	a3,120(sp)
   1a648:	07c1                	addi	a5,a5,16
   1a64a:	fedf55e3          	bge	t5,a3,1a634 <_svfiprintf_r+0x670>
   1a64e:	1890                	addi	a2,sp,112
   1a650:	85ce                	mv	a1,s3
   1a652:	8556                	mv	a0,s5
   1a654:	81bff0ef          	jal	ra,19e6e <__ssprint_r>
   1a658:	b40518e3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a65c:	4ec1                	li	t4,16
   1a65e:	3cc1                	addiw	s9,s9,-16
   1a660:	670a                	ld	a4,128(sp)
   1a662:	56e6                	lw	a3,120(sp)
   1a664:	87d2                	mv	a5,s4
   1a666:	4f1d                	li	t5,7
   1a668:	fd9ec9e3          	blt	t4,s9,1a63a <_svfiprintf_r+0x676>
   1a66c:	2685                	addiw	a3,a3,1
   1a66e:	9766                	add	a4,a4,s9
   1a670:	e384                	sd	s1,0(a5)
   1a672:	0197b423          	sd	s9,8(a5)
   1a676:	e13a                	sd	a4,128(sp)
   1a678:	dcb6                	sw	a3,120(sp)
   1a67a:	461d                	li	a2,7
   1a67c:	07c1                	addi	a5,a5,16
   1a67e:	acd65fe3          	bge	a2,a3,1a15c <_svfiprintf_r+0x198>
   1a682:	1890                	addi	a2,sp,112
   1a684:	85ce                	mv	a1,s3
   1a686:	8556                	mv	a0,s5
   1a688:	fe6ff0ef          	jal	ra,19e6e <__ssprint_r>
   1a68c:	b0051ee3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a690:	670a                	ld	a4,128(sp)
   1a692:	56e6                	lw	a3,120(sp)
   1a694:	87d2                	mv	a5,s4
   1a696:	b4d9                	j	1a15c <_svfiprintf_r+0x198>
   1a698:	1890                	addi	a2,sp,112
   1a69a:	85ce                	mv	a1,s3
   1a69c:	8556                	mv	a0,s5
   1a69e:	fd0ff0ef          	jal	ra,19e6e <__ssprint_r>
   1a6a2:	b00513e3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a6a6:	670a                	ld	a4,128(sp)
   1a6a8:	87d2                	mv	a5,s4
   1a6aa:	b4f1                	j	1a176 <_svfiprintf_r+0x1b2>
   1a6ac:	1890                	addi	a2,sp,112
   1a6ae:	85ce                	mv	a1,s3
   1a6b0:	8556                	mv	a0,s5
   1a6b2:	fbcff0ef          	jal	ra,19e6e <__ssprint_r>
   1a6b6:	ae0519e3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a6ba:	670a                	ld	a4,128(sp)
   1a6bc:	bcf1                	j	1a198 <_svfiprintf_r+0x1d4>
   1a6be:	8eea                	mv	t4,s10
   1a6c0:	b171                	j	1a34c <_svfiprintf_r+0x388>
   1a6c2:	4641                	li	a2,16
   1a6c4:	05d65863          	bge	a2,t4,1a714 <_svfiprintf_r+0x750>
   1a6c8:	4f41                	li	t5,16
   1a6ca:	439d                	li	t2,7
   1a6cc:	a021                	j	1a6d4 <_svfiprintf_r+0x710>
   1a6ce:	3ec1                	addiw	t4,t4,-16
   1a6d0:	05df5263          	bge	t5,t4,1a714 <_svfiprintf_r+0x750>
   1a6d4:	2685                	addiw	a3,a3,1
   1a6d6:	0741                	addi	a4,a4,16
   1a6d8:	0167b023          	sd	s6,0(a5)
   1a6dc:	01e7b423          	sd	t5,8(a5)
   1a6e0:	e13a                	sd	a4,128(sp)
   1a6e2:	dcb6                	sw	a3,120(sp)
   1a6e4:	07c1                	addi	a5,a5,16
   1a6e6:	fed3d4e3          	bge	t2,a3,1a6ce <_svfiprintf_r+0x70a>
   1a6ea:	1890                	addi	a2,sp,112
   1a6ec:	85ce                	mv	a1,s3
   1a6ee:	8556                	mv	a0,s5
   1a6f0:	fc76                	sd	t4,56(sp)
   1a6f2:	f87e                	sd	t6,48(sp)
   1a6f4:	f416                	sd	t0,40(sp)
   1a6f6:	f78ff0ef          	jal	ra,19e6e <__ssprint_r>
   1a6fa:	aa0517e3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a6fe:	7ee2                	ld	t4,56(sp)
   1a700:	4f41                	li	t5,16
   1a702:	670a                	ld	a4,128(sp)
   1a704:	3ec1                	addiw	t4,t4,-16
   1a706:	56e6                	lw	a3,120(sp)
   1a708:	7fc2                	ld	t6,48(sp)
   1a70a:	72a2                	ld	t0,40(sp)
   1a70c:	87d2                	mv	a5,s4
   1a70e:	439d                	li	t2,7
   1a710:	fddf42e3          	blt	t5,t4,1a6d4 <_svfiprintf_r+0x710>
   1a714:	2685                	addiw	a3,a3,1
   1a716:	9776                	add	a4,a4,t4
   1a718:	0167b023          	sd	s6,0(a5)
   1a71c:	01d7b423          	sd	t4,8(a5)
   1a720:	e13a                	sd	a4,128(sp)
   1a722:	dcb6                	sw	a3,120(sp)
   1a724:	461d                	li	a2,7
   1a726:	07c1                	addi	a5,a5,16
   1a728:	9ed654e3          	bge	a2,a3,1a110 <_svfiprintf_r+0x14c>
   1a72c:	1890                	addi	a2,sp,112
   1a72e:	85ce                	mv	a1,s3
   1a730:	8556                	mv	a0,s5
   1a732:	f87e                	sd	t6,48(sp)
   1a734:	f416                	sd	t0,40(sp)
   1a736:	f38ff0ef          	jal	ra,19e6e <__ssprint_r>
   1a73a:	a60517e3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a73e:	670a                	ld	a4,128(sp)
   1a740:	56e6                	lw	a3,120(sp)
   1a742:	7fc2                	ld	t6,48(sp)
   1a744:	72a2                	ld	t0,40(sp)
   1a746:	87d2                	mv	a5,s4
   1a748:	b2e1                	j	1a110 <_svfiprintf_r+0x14c>
   1a74a:	1890                	addi	a2,sp,112
   1a74c:	85ce                	mv	a1,s3
   1a74e:	8556                	mv	a0,s5
   1a750:	f47e                	sd	t6,40(sp)
   1a752:	f1cff0ef          	jal	ra,19e6e <__ssprint_r>
   1a756:	a40519e3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a75a:	670a                	ld	a4,128(sp)
   1a75c:	56e6                	lw	a3,120(sp)
   1a75e:	7fa2                	ld	t6,40(sp)
   1a760:	87d2                	mv	a5,s4
   1a762:	b2ed                	j	1a14c <_svfiprintf_r+0x188>
   1a764:	4641                	li	a2,16
   1a766:	56e6                	lw	a3,120(sp)
   1a768:	05265063          	bge	a2,s2,1a7a8 <_svfiprintf_r+0x7e4>
   1a76c:	4cc1                	li	s9,16
   1a76e:	4c1d                	li	s8,7
   1a770:	a021                	j	1a778 <_svfiprintf_r+0x7b4>
   1a772:	3941                	addiw	s2,s2,-16
   1a774:	032cda63          	bge	s9,s2,1a7a8 <_svfiprintf_r+0x7e4>
   1a778:	2685                	addiw	a3,a3,1
   1a77a:	0741                	addi	a4,a4,16
   1a77c:	0167b023          	sd	s6,0(a5)
   1a780:	0197b423          	sd	s9,8(a5)
   1a784:	e13a                	sd	a4,128(sp)
   1a786:	dcb6                	sw	a3,120(sp)
   1a788:	07c1                	addi	a5,a5,16
   1a78a:	fedc54e3          	bge	s8,a3,1a772 <_svfiprintf_r+0x7ae>
   1a78e:	1890                	addi	a2,sp,112
   1a790:	85ce                	mv	a1,s3
   1a792:	8556                	mv	a0,s5
   1a794:	edaff0ef          	jal	ra,19e6e <__ssprint_r>
   1a798:	a00518e3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a79c:	3941                	addiw	s2,s2,-16
   1a79e:	670a                	ld	a4,128(sp)
   1a7a0:	56e6                	lw	a3,120(sp)
   1a7a2:	87d2                	mv	a5,s4
   1a7a4:	fd2ccae3          	blt	s9,s2,1a778 <_svfiprintf_r+0x7b4>
   1a7a8:	0016861b          	addiw	a2,a3,1
   1a7ac:	974a                	add	a4,a4,s2
   1a7ae:	0167b023          	sd	s6,0(a5)
   1a7b2:	0127b423          	sd	s2,8(a5)
   1a7b6:	e13a                	sd	a4,128(sp)
   1a7b8:	dcb2                	sw	a2,120(sp)
   1a7ba:	479d                	li	a5,7
   1a7bc:	9cc7d5e3          	bge	a5,a2,1a186 <_svfiprintf_r+0x1c2>
   1a7c0:	1890                	addi	a2,sp,112
   1a7c2:	85ce                	mv	a1,s3
   1a7c4:	8556                	mv	a0,s5
   1a7c6:	ea8ff0ef          	jal	ra,19e6e <__ssprint_r>
   1a7ca:	9c051fe3          	bnez	a0,1a1a8 <_svfiprintf_r+0x1e4>
   1a7ce:	670a                	ld	a4,128(sp)
   1a7d0:	ba5d                	j	1a186 <_svfiprintf_r+0x1c2>
   1a7d2:	a40c93e3          	bnez	s9,1a218 <_svfiprintf_r+0x254>
   1a7d6:	8d76                	mv	s10,t4
   1a7d8:	4c81                	li	s9,0
   1a7da:	4901                	li	s2,0
   1a7dc:	0ec10c13          	addi	s8,sp,236
   1a7e0:	b455                	j	1a284 <_svfiprintf_r+0x2c0>
   1a7e2:	010ef693          	andi	a3,t4,16
   1a7e6:	eec5                	bnez	a3,1a89e <_svfiprintf_r+0x8da>
   1a7e8:	65c2                	ld	a1,16(sp)
   1a7ea:	040ef693          	andi	a3,t4,64
   1a7ee:	0005ab83          	lw	s7,0(a1)
   1a7f2:	1c068263          	beqz	a3,1a9b6 <_svfiprintf_r+0x9f2>
   1a7f6:	1bc2                	slli	s7,s7,0x30
   1a7f8:	030bdb93          	srli	s7,s7,0x30
   1a7fc:	e832                	sd	a2,16(sp)
   1a7fe:	4685                	li	a3,1
   1a800:	b4b1                	j	1a24c <_svfiprintf_r+0x288>
   1a802:	0ec10913          	addi	s2,sp,236
   1a806:	400eff13          	andi	t5,t4,1024
   1a80a:	4501                	li	a0,0
   1a80c:	85ca                	mv	a1,s2
   1a80e:	46a9                	li	a3,10
   1a810:	4e25                	li	t3,9
   1a812:	0ff00d13          	li	s10,255
   1a816:	a039                	j	1a824 <_svfiprintf_r+0x860>
   1a818:	02dbd633          	divu	a2,s7,a3
   1a81c:	d97e71e3          	bgeu	t3,s7,1a59e <_svfiprintf_r+0x5da>
   1a820:	8bb2                	mv	s7,a2
   1a822:	85e2                	mv	a1,s8
   1a824:	fff58c13          	addi	s8,a1,-1
   1a828:	2505                	addiw	a0,a0,1
   1a82a:	02dbf633          	remu	a2,s7,a3
   1a82e:	0306061b          	addiw	a2,a2,48
   1a832:	fec58fa3          	sb	a2,-1(a1)
   1a836:	fe0f01e3          	beqz	t5,1a818 <_svfiprintf_r+0x854>
   1a83a:	6606                	ld	a2,64(sp)
   1a83c:	00064603          	lbu	a2,0(a2)
   1a840:	fca61ce3          	bne	a2,a0,1a818 <_svfiprintf_r+0x854>
   1a844:	fda60ae3          	beq	a2,s10,1a818 <_svfiprintf_r+0x854>
   1a848:	d57e7be3          	bgeu	t3,s7,1a59e <_svfiprintf_r+0x5da>
   1a84c:	fc3e                	sd	a5,56(sp)
   1a84e:	67c6                	ld	a5,80(sp)
   1a850:	65a6                	ld	a1,72(sp)
   1a852:	ecfa                	sd	t5,88(sp)
   1a854:	40fc0c33          	sub	s8,s8,a5
   1a858:	863e                	mv	a2,a5
   1a85a:	8562                	mv	a0,s8
   1a85c:	f876                	sd	t4,48(sp)
   1a85e:	f43a                	sd	a4,40(sp)
   1a860:	885fc0ef          	jal	ra,170e4 <strncpy>
   1a864:	6786                	ld	a5,64(sp)
   1a866:	46a9                	li	a3,10
   1a868:	02dbd633          	divu	a2,s7,a3
   1a86c:	0017c583          	lbu	a1,1(a5)
   1a870:	7722                	ld	a4,40(sp)
   1a872:	7ec2                	ld	t4,48(sp)
   1a874:	00b035b3          	snez	a1,a1
   1a878:	97ae                	add	a5,a5,a1
   1a87a:	e0be                	sd	a5,64(sp)
   1a87c:	6f66                	ld	t5,88(sp)
   1a87e:	77e2                	ld	a5,56(sp)
   1a880:	4501                	li	a0,0
   1a882:	4e25                	li	t3,9
   1a884:	bf71                	j	1a820 <_svfiprintf_r+0x85c>
   1a886:	000dc683          	lbu	a3,0(s11)
   1a88a:	801ff06f          	j	1a08a <_svfiprintf_r+0xc6>
   1a88e:	66c2                	ld	a3,16(sp)
   1a890:	6294                	ld	a3,0(a3)
   1a892:	8bb6                	mv	s7,a3
   1a894:	b2a5                	j	1a1fc <_svfiprintf_r+0x238>
   1a896:	66c2                	ld	a3,16(sp)
   1a898:	0006bb83          	ld	s7,0(a3)
   1a89c:	b25d                	j	1a242 <_svfiprintf_r+0x27e>
   1a89e:	66c2                	ld	a3,16(sp)
   1a8a0:	e832                	sd	a2,16(sp)
   1a8a2:	0006bb83          	ld	s7,0(a3)
   1a8a6:	4685                	li	a3,1
   1a8a8:	b255                	j	1a24c <_svfiprintf_r+0x288>
   1a8aa:	6542                	ld	a0,16(sp)
   1a8ac:	6671                	lui	a2,0x1c
   1a8ae:	72860613          	addi	a2,a2,1832 # 1c728 <__clzdi2+0xf8>
   1a8b2:	ec32                	sd	a2,24(sp)
   1a8b4:	020d7613          	andi	a2,s10,32
   1a8b8:	00850593          	addi	a1,a0,8
   1a8bc:	c621                	beqz	a2,1a904 <_svfiprintf_r+0x940>
   1a8be:	00053b83          	ld	s7,0(a0)
   1a8c2:	001d7613          	andi	a2,s10,1
   1a8c6:	ce09                	beqz	a2,1a8e0 <_svfiprintf_r+0x91c>
   1a8c8:	000b8c63          	beqz	s7,1a8e0 <_svfiprintf_r+0x91c>
   1a8cc:	002d6e13          	ori	t3,s10,2
   1a8d0:	03000613          	li	a2,48
   1a8d4:	06c10423          	sb	a2,104(sp)
   1a8d8:	06d104a3          	sb	a3,105(sp)
   1a8dc:	000e0d1b          	sext.w	s10,t3
   1a8e0:	bffd7e93          	andi	t4,s10,-1025
   1a8e4:	2e81                	sext.w	t4,t4
   1a8e6:	e82e                	sd	a1,16(sp)
   1a8e8:	4689                	li	a3,2
   1a8ea:	b28d                	j	1a24c <_svfiprintf_r+0x288>
   1a8ec:	8eea                	mv	t4,s10
   1a8ee:	b6a1                	j	1a436 <_svfiprintf_r+0x472>
   1a8f0:	6542                	ld	a0,16(sp)
   1a8f2:	6671                	lui	a2,0x1c
   1a8f4:	74060613          	addi	a2,a2,1856 # 1c740 <__clzdi2+0x110>
   1a8f8:	ec32                	sd	a2,24(sp)
   1a8fa:	020d7613          	andi	a2,s10,32
   1a8fe:	00850593          	addi	a1,a0,8
   1a902:	fe55                	bnez	a2,1a8be <_svfiprintf_r+0x8fa>
   1a904:	010d7613          	andi	a2,s10,16
   1a908:	c229                	beqz	a2,1a94a <_svfiprintf_r+0x986>
   1a90a:	6642                	ld	a2,16(sp)
   1a90c:	00063b83          	ld	s7,0(a2)
   1a910:	bf4d                	j	1a8c2 <_svfiprintf_r+0x8fe>
   1a912:	8562                	mv	a0,s8
   1a914:	f83e                	sd	a5,48(sp)
   1a916:	f43a                	sd	a4,40(sp)
   1a918:	e842                	sd	a6,16(sp)
   1a91a:	a81f60ef          	jal	ra,1139a <strlen>
   1a91e:	7722                	ld	a4,40(sp)
   1a920:	77c2                	ld	a5,48(sp)
   1a922:	0005091b          	sext.w	s2,a0
   1a926:	4c81                	li	s9,0
   1a928:	bab1                	j	1a284 <_svfiprintf_r+0x2c0>
   1a92a:	04000593          	li	a1,64
   1a92e:	e37f50ef          	jal	ra,10764 <_malloc_r>
   1a932:	00a9b023          	sd	a0,0(s3)
   1a936:	00a9bc23          	sd	a0,24(s3)
   1a93a:	10050f63          	beqz	a0,1aa58 <_svfiprintf_r+0xa94>
   1a93e:	04000793          	li	a5,64
   1a942:	02f9a023          	sw	a5,32(s3)
   1a946:	eb2ff06f          	j	19ff8 <_svfiprintf_r+0x34>
   1a94a:	6542                	ld	a0,16(sp)
   1a94c:	040d7613          	andi	a2,s10,64
   1a950:	00052b83          	lw	s7,0(a0)
   1a954:	ce3d                	beqz	a2,1a9d2 <_svfiprintf_r+0xa0e>
   1a956:	1bc2                	slli	s7,s7,0x30
   1a958:	030bdb93          	srli	s7,s7,0x30
   1a95c:	b79d                	j	1a8c2 <_svfiprintf_r+0x8fe>
   1a95e:	8eea                	mv	t4,s10
   1a960:	e832                	sd	a2,16(sp)
   1a962:	b845                	j	1a212 <_svfiprintf_r+0x24e>
   1a964:	020d6e13          	ori	t3,s10,32
   1a968:	001dc683          	lbu	a3,1(s11)
   1a96c:	000e0d1b          	sext.w	s10,t3
   1a970:	0d85                	addi	s11,s11,1
   1a972:	f18ff06f          	j	1a08a <_svfiprintf_r+0xc6>
   1a976:	200d6e13          	ori	t3,s10,512
   1a97a:	001dc683          	lbu	a3,1(s11)
   1a97e:	000e0d1b          	sext.w	s10,t3
   1a982:	0d85                	addi	s11,s11,1
   1a984:	f06ff06f          	j	1a08a <_svfiprintf_r+0xc6>
   1a988:	4699                	li	a3,6
   1a98a:	000c891b          	sext.w	s2,s9
   1a98e:	0196f363          	bgeu	a3,s9,1a994 <_svfiprintf_r+0x9d0>
   1a992:	4919                	li	s2,6
   1a994:	e842                	sd	a6,16(sp)
   1a996:	6871                	lui	a6,0x1c
   1a998:	8bca                	mv	s7,s2
   1a99a:	75880c13          	addi	s8,a6,1880 # 1c758 <__clzdi2+0x128>
   1a99e:	f54ff06f          	j	1a0f2 <_svfiprintf_r+0x12e>
   1a9a2:	200d7693          	andi	a3,s10,512
   1a9a6:	cea1                	beqz	a3,1a9fe <_svfiprintf_r+0xa3a>
   1a9a8:	018b9b9b          	slliw	s7,s7,0x18
   1a9ac:	418bdb9b          	sraiw	s7,s7,0x18
   1a9b0:	86de                	mv	a3,s7
   1a9b2:	84bff06f          	j	1a1fc <_svfiprintf_r+0x238>
   1a9b6:	200ef693          	andi	a3,t4,512
   1a9ba:	ca9d                	beqz	a3,1a9f0 <_svfiprintf_r+0xa2c>
   1a9bc:	0ffbfb93          	zext.b	s7,s7
   1a9c0:	e832                	sd	a2,16(sp)
   1a9c2:	4685                	li	a3,1
   1a9c4:	b061                	j	1a24c <_svfiprintf_r+0x288>
   1a9c6:	200d7693          	andi	a3,s10,512
   1a9ca:	ce91                	beqz	a3,1a9e6 <_svfiprintf_r+0xa22>
   1a9cc:	0ffbfb93          	zext.b	s7,s7
   1a9d0:	b88d                	j	1a242 <_svfiprintf_r+0x27e>
   1a9d2:	200d7613          	andi	a2,s10,512
   1a9d6:	c601                	beqz	a2,1a9de <_svfiprintf_r+0xa1a>
   1a9d8:	0ffbfb93          	zext.b	s7,s7
   1a9dc:	b5dd                	j	1a8c2 <_svfiprintf_r+0x8fe>
   1a9de:	1b82                	slli	s7,s7,0x20
   1a9e0:	020bdb93          	srli	s7,s7,0x20
   1a9e4:	bdf9                	j	1a8c2 <_svfiprintf_r+0x8fe>
   1a9e6:	1b82                	slli	s7,s7,0x20
   1a9e8:	020bdb93          	srli	s7,s7,0x20
   1a9ec:	857ff06f          	j	1a242 <_svfiprintf_r+0x27e>
   1a9f0:	1b82                	slli	s7,s7,0x20
   1a9f2:	020bdb93          	srli	s7,s7,0x20
   1a9f6:	e832                	sd	a2,16(sp)
   1a9f8:	4685                	li	a3,1
   1a9fa:	853ff06f          	j	1a24c <_svfiprintf_r+0x288>
   1a9fe:	86de                	mv	a3,s7
   1aa00:	ffcff06f          	j	1a1fc <_svfiprintf_r+0x238>
   1aa04:	66a2                	ld	a3,8(sp)
   1aa06:	00d61023          	sh	a3,0(a2)
   1aa0a:	e1aff06f          	j	1a024 <_svfiprintf_r+0x60>
   1aa0e:	1890                	addi	a2,sp,112
   1aa10:	85ce                	mv	a1,s3
   1aa12:	8556                	mv	a0,s5
   1aa14:	c5aff0ef          	jal	ra,19e6e <__ssprint_r>
   1aa18:	f90ff06f          	j	1a1a8 <_svfiprintf_r+0x1e4>
   1aa1c:	8966                	mv	s2,s9
   1aa1e:	e842                	sd	a6,16(sp)
   1aa20:	4c81                	li	s9,0
   1aa22:	b08d                	j	1a284 <_svfiprintf_r+0x2c0>
   1aa24:	8eea                	mv	t4,s10
   1aa26:	ff2ff06f          	j	1a218 <_svfiprintf_r+0x254>
   1aa2a:	c214                	sw	a3,0(a2)
   1aa2c:	df8ff06f          	j	1a024 <_svfiprintf_r+0x60>
   1aa30:	57fd                	li	a5,-1
   1aa32:	e43e                	sd	a5,8(sp)
   1aa34:	f80ff06f          	j	1a1b4 <_svfiprintf_r+0x1f0>
   1aa38:	65c2                	ld	a1,16(sp)
   1aa3a:	4194                	lw	a3,0(a1)
   1aa3c:	00858c13          	addi	s8,a1,8
   1aa40:	88b6                	mv	a7,a3
   1aa42:	0006d363          	bgez	a3,1aa48 <_svfiprintf_r+0xa84>
   1aa46:	58fd                	li	a7,-1
   1aa48:	001dc683          	lbu	a3,1(s11)
   1aa4c:	00088c9b          	sext.w	s9,a7
   1aa50:	e862                	sd	s8,16(sp)
   1aa52:	8db2                	mv	s11,a2
   1aa54:	e36ff06f          	j	1a08a <_svfiprintf_r+0xc6>
   1aa58:	47b1                	li	a5,12
   1aa5a:	00faa023          	sw	a5,0(s5)
   1aa5e:	57fd                	li	a5,-1
   1aa60:	e43e                	sd	a5,8(sp)
   1aa62:	f52ff06f          	j	1a1b4 <_svfiprintf_r+0x1f0>

000000000001aa66 <__swbuf_r>:
   1aa66:	7179                	addi	sp,sp,-48
   1aa68:	f022                	sd	s0,32(sp)
   1aa6a:	ec26                	sd	s1,24(sp)
   1aa6c:	e84a                	sd	s2,16(sp)
   1aa6e:	f406                	sd	ra,40(sp)
   1aa70:	e44e                	sd	s3,8(sp)
   1aa72:	892a                	mv	s2,a0
   1aa74:	84ae                	mv	s1,a1
   1aa76:	8432                	mv	s0,a2
   1aa78:	c119                	beqz	a0,1aa7e <__swbuf_r+0x18>
   1aa7a:	493c                	lw	a5,80(a0)
   1aa7c:	cff1                	beqz	a5,1ab58 <__swbuf_r+0xf2>
   1aa7e:	01041703          	lh	a4,16(s0)
   1aa82:	5414                	lw	a3,40(s0)
   1aa84:	00877793          	andi	a5,a4,8
   1aa88:	c454                	sw	a3,12(s0)
   1aa8a:	03071693          	slli	a3,a4,0x30
   1aa8e:	92c1                	srli	a3,a3,0x30
   1aa90:	cbb1                	beqz	a5,1aae4 <__swbuf_r+0x7e>
   1aa92:	6c1c                	ld	a5,24(s0)
   1aa94:	cba1                	beqz	a5,1aae4 <__swbuf_r+0x7e>
   1aa96:	6609                	lui	a2,0x2
   1aa98:	0ff4f993          	zext.b	s3,s1
   1aa9c:	8ef1                	and	a3,a3,a2
   1aa9e:	84ce                	mv	s1,s3
   1aaa0:	c2bd                	beqz	a3,1ab06 <__swbuf_r+0xa0>
   1aaa2:	6018                	ld	a4,0(s0)
   1aaa4:	5014                	lw	a3,32(s0)
   1aaa6:	40f707bb          	subw	a5,a4,a5
   1aaaa:	06d7de63          	bge	a5,a3,1ab26 <__swbuf_r+0xc0>
   1aaae:	4454                	lw	a3,12(s0)
   1aab0:	00170613          	addi	a2,a4,1
   1aab4:	e010                	sd	a2,0(s0)
   1aab6:	36fd                	addiw	a3,a3,-1
   1aab8:	c454                	sw	a3,12(s0)
   1aaba:	01370023          	sb	s3,0(a4)
   1aabe:	5018                	lw	a4,32(s0)
   1aac0:	2785                	addiw	a5,a5,1
   1aac2:	08f70463          	beq	a4,a5,1ab4a <__swbuf_r+0xe4>
   1aac6:	01045783          	lhu	a5,16(s0)
   1aaca:	8b85                	andi	a5,a5,1
   1aacc:	c781                	beqz	a5,1aad4 <__swbuf_r+0x6e>
   1aace:	47a9                	li	a5,10
   1aad0:	06f48d63          	beq	s1,a5,1ab4a <__swbuf_r+0xe4>
   1aad4:	70a2                	ld	ra,40(sp)
   1aad6:	7402                	ld	s0,32(sp)
   1aad8:	6942                	ld	s2,16(sp)
   1aada:	69a2                	ld	s3,8(sp)
   1aadc:	8526                	mv	a0,s1
   1aade:	64e2                	ld	s1,24(sp)
   1aae0:	6145                	addi	sp,sp,48
   1aae2:	8082                	ret
   1aae4:	85a2                	mv	a1,s0
   1aae6:	854a                	mv	a0,s2
   1aae8:	cbaf80ef          	jal	ra,12fa2 <__swsetup_r>
   1aaec:	e525                	bnez	a0,1ab54 <__swbuf_r+0xee>
   1aaee:	01041703          	lh	a4,16(s0)
   1aaf2:	6609                	lui	a2,0x2
   1aaf4:	0ff4f993          	zext.b	s3,s1
   1aaf8:	03071693          	slli	a3,a4,0x30
   1aafc:	92c1                	srli	a3,a3,0x30
   1aafe:	8ef1                	and	a3,a3,a2
   1ab00:	6c1c                	ld	a5,24(s0)
   1ab02:	84ce                	mv	s1,s3
   1ab04:	fed9                	bnez	a3,1aaa2 <__swbuf_r+0x3c>
   1ab06:	0ac42683          	lw	a3,172(s0)
   1ab0a:	8f51                	or	a4,a4,a2
   1ab0c:	7679                	lui	a2,0xffffe
   1ab0e:	167d                	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde6df>
   1ab10:	8ef1                	and	a3,a3,a2
   1ab12:	00e41823          	sh	a4,16(s0)
   1ab16:	6018                	ld	a4,0(s0)
   1ab18:	0ad42623          	sw	a3,172(s0)
   1ab1c:	5014                	lw	a3,32(s0)
   1ab1e:	40f707bb          	subw	a5,a4,a5
   1ab22:	f8d7c6e3          	blt	a5,a3,1aaae <__swbuf_r+0x48>
   1ab26:	85a2                	mv	a1,s0
   1ab28:	854a                	mv	a0,s2
   1ab2a:	8bdf80ef          	jal	ra,133e6 <_fflush_r>
   1ab2e:	e11d                	bnez	a0,1ab54 <__swbuf_r+0xee>
   1ab30:	6018                	ld	a4,0(s0)
   1ab32:	4454                	lw	a3,12(s0)
   1ab34:	4785                	li	a5,1
   1ab36:	00170613          	addi	a2,a4,1
   1ab3a:	36fd                	addiw	a3,a3,-1
   1ab3c:	e010                	sd	a2,0(s0)
   1ab3e:	c454                	sw	a3,12(s0)
   1ab40:	01370023          	sb	s3,0(a4)
   1ab44:	5018                	lw	a4,32(s0)
   1ab46:	f8f710e3          	bne	a4,a5,1aac6 <__swbuf_r+0x60>
   1ab4a:	85a2                	mv	a1,s0
   1ab4c:	854a                	mv	a0,s2
   1ab4e:	899f80ef          	jal	ra,133e6 <_fflush_r>
   1ab52:	d149                	beqz	a0,1aad4 <__swbuf_r+0x6e>
   1ab54:	54fd                	li	s1,-1
   1ab56:	bfbd                	j	1aad4 <__swbuf_r+0x6e>
   1ab58:	a6ff50ef          	jal	ra,105c6 <__sinit>
   1ab5c:	b70d                	j	1aa7e <__swbuf_r+0x18>

000000000001ab5e <__swbuf>:
   1ab5e:	87aa                	mv	a5,a0
   1ab60:	6401b503          	ld	a0,1600(gp) # 1f760 <_impure_ptr>
   1ab64:	862e                	mv	a2,a1
   1ab66:	85be                	mv	a1,a5
   1ab68:	effff06f          	j	1aa66 <__swbuf_r>

000000000001ab6c <_wcrtomb_r>:
   1ab6c:	7179                	addi	sp,sp,-48
   1ab6e:	f022                	sd	s0,32(sp)
   1ab70:	ec26                	sd	s1,24(sp)
   1ab72:	f406                	sd	ra,40(sp)
   1ab74:	5301b783          	ld	a5,1328(gp) # 1f650 <__global_locale+0xe0>
   1ab78:	842a                	mv	s0,a0
   1ab7a:	84b6                	mv	s1,a3
   1ab7c:	c991                	beqz	a1,1ab90 <_wcrtomb_r+0x24>
   1ab7e:	9782                	jalr	a5
   1ab80:	57fd                	li	a5,-1
   1ab82:	00f50d63          	beq	a0,a5,1ab9c <_wcrtomb_r+0x30>
   1ab86:	70a2                	ld	ra,40(sp)
   1ab88:	7402                	ld	s0,32(sp)
   1ab8a:	64e2                	ld	s1,24(sp)
   1ab8c:	6145                	addi	sp,sp,48
   1ab8e:	8082                	ret
   1ab90:	4601                	li	a2,0
   1ab92:	858a                	mv	a1,sp
   1ab94:	9782                	jalr	a5
   1ab96:	57fd                	li	a5,-1
   1ab98:	fef517e3          	bne	a0,a5,1ab86 <_wcrtomb_r+0x1a>
   1ab9c:	0004a023          	sw	zero,0(s1)
   1aba0:	08a00793          	li	a5,138
   1aba4:	70a2                	ld	ra,40(sp)
   1aba6:	c01c                	sw	a5,0(s0)
   1aba8:	7402                	ld	s0,32(sp)
   1abaa:	64e2                	ld	s1,24(sp)
   1abac:	6145                	addi	sp,sp,48
   1abae:	8082                	ret

000000000001abb0 <wcrtomb>:
   1abb0:	7179                	addi	sp,sp,-48
   1abb2:	f022                	sd	s0,32(sp)
   1abb4:	ec26                	sd	s1,24(sp)
   1abb6:	f406                	sd	ra,40(sp)
   1abb8:	6401b483          	ld	s1,1600(gp) # 1f760 <_impure_ptr>
   1abbc:	5301b783          	ld	a5,1328(gp) # 1f650 <__global_locale+0xe0>
   1abc0:	8432                	mv	s0,a2
   1abc2:	cd11                	beqz	a0,1abde <wcrtomb+0x2e>
   1abc4:	862e                	mv	a2,a1
   1abc6:	86a2                	mv	a3,s0
   1abc8:	85aa                	mv	a1,a0
   1abca:	8526                	mv	a0,s1
   1abcc:	9782                	jalr	a5
   1abce:	57fd                	li	a5,-1
   1abd0:	00f50f63          	beq	a0,a5,1abee <wcrtomb+0x3e>
   1abd4:	70a2                	ld	ra,40(sp)
   1abd6:	7402                	ld	s0,32(sp)
   1abd8:	64e2                	ld	s1,24(sp)
   1abda:	6145                	addi	sp,sp,48
   1abdc:	8082                	ret
   1abde:	86b2                	mv	a3,a2
   1abe0:	858a                	mv	a1,sp
   1abe2:	4601                	li	a2,0
   1abe4:	8526                	mv	a0,s1
   1abe6:	9782                	jalr	a5
   1abe8:	57fd                	li	a5,-1
   1abea:	fef515e3          	bne	a0,a5,1abd4 <wcrtomb+0x24>
   1abee:	00042023          	sw	zero,0(s0)
   1abf2:	70a2                	ld	ra,40(sp)
   1abf4:	7402                	ld	s0,32(sp)
   1abf6:	08a00793          	li	a5,138
   1abfa:	c09c                	sw	a5,0(s1)
   1abfc:	64e2                	ld	s1,24(sp)
   1abfe:	6145                	addi	sp,sp,48
   1ac00:	8082                	ret

000000000001ac02 <_wctomb_r>:
   1ac02:	5301b783          	ld	a5,1328(gp) # 1f650 <__global_locale+0xe0>
   1ac06:	8782                	jr	a5

000000000001ac08 <__ascii_wctomb>:
   1ac08:	0006079b          	sext.w	a5,a2
   1ac0c:	cd91                	beqz	a1,1ac28 <__ascii_wctomb+0x20>
   1ac0e:	0ff00713          	li	a4,255
   1ac12:	00f76663          	bltu	a4,a5,1ac1e <__ascii_wctomb+0x16>
   1ac16:	00c58023          	sb	a2,0(a1)
   1ac1a:	4505                	li	a0,1
   1ac1c:	8082                	ret
   1ac1e:	08a00793          	li	a5,138
   1ac22:	c11c                	sw	a5,0(a0)
   1ac24:	557d                	li	a0,-1
   1ac26:	8082                	ret
   1ac28:	4501                	li	a0,0
   1ac2a:	8082                	ret

000000000001ac2c <abort>:
   1ac2c:	1141                	addi	sp,sp,-16
   1ac2e:	4519                	li	a0,6
   1ac30:	e406                	sd	ra,8(sp)
   1ac32:	1ae000ef          	jal	ra,1ade0 <raise>
   1ac36:	4505                	li	a0,1
   1ac38:	3c0000ef          	jal	ra,1aff8 <_exit>

000000000001ac3c <_init_signal_r>:
   1ac3c:	51853783          	ld	a5,1304(a0)
   1ac40:	c399                	beqz	a5,1ac46 <_init_signal_r+0xa>
   1ac42:	4501                	li	a0,0
   1ac44:	8082                	ret
   1ac46:	1141                	addi	sp,sp,-16
   1ac48:	10000593          	li	a1,256
   1ac4c:	e022                	sd	s0,0(sp)
   1ac4e:	e406                	sd	ra,8(sp)
   1ac50:	842a                	mv	s0,a0
   1ac52:	b13f50ef          	jal	ra,10764 <_malloc_r>
   1ac56:	50a43c23          	sd	a0,1304(s0)
   1ac5a:	cd09                	beqz	a0,1ac74 <_init_signal_r+0x38>
   1ac5c:	10050793          	addi	a5,a0,256
   1ac60:	00053023          	sd	zero,0(a0)
   1ac64:	0521                	addi	a0,a0,8
   1ac66:	fef51de3          	bne	a0,a5,1ac60 <_init_signal_r+0x24>
   1ac6a:	4501                	li	a0,0
   1ac6c:	60a2                	ld	ra,8(sp)
   1ac6e:	6402                	ld	s0,0(sp)
   1ac70:	0141                	addi	sp,sp,16
   1ac72:	8082                	ret
   1ac74:	557d                	li	a0,-1
   1ac76:	bfdd                	j	1ac6c <_init_signal_r+0x30>

000000000001ac78 <_signal_r>:
   1ac78:	7179                	addi	sp,sp,-48
   1ac7a:	ec26                	sd	s1,24(sp)
   1ac7c:	f406                	sd	ra,40(sp)
   1ac7e:	f022                	sd	s0,32(sp)
   1ac80:	47fd                	li	a5,31
   1ac82:	84aa                	mv	s1,a0
   1ac84:	00b7ef63          	bltu	a5,a1,1aca2 <_signal_r+0x2a>
   1ac88:	51853703          	ld	a4,1304(a0)
   1ac8c:	842e                	mv	s0,a1
   1ac8e:	c315                	beqz	a4,1acb2 <_signal_r+0x3a>
   1ac90:	040e                	slli	s0,s0,0x3
   1ac92:	9722                	add	a4,a4,s0
   1ac94:	6308                	ld	a0,0(a4)
   1ac96:	e310                	sd	a2,0(a4)
   1ac98:	70a2                	ld	ra,40(sp)
   1ac9a:	7402                	ld	s0,32(sp)
   1ac9c:	64e2                	ld	s1,24(sp)
   1ac9e:	6145                	addi	sp,sp,48
   1aca0:	8082                	ret
   1aca2:	70a2                	ld	ra,40(sp)
   1aca4:	7402                	ld	s0,32(sp)
   1aca6:	47d9                	li	a5,22
   1aca8:	c11c                	sw	a5,0(a0)
   1acaa:	64e2                	ld	s1,24(sp)
   1acac:	557d                	li	a0,-1
   1acae:	6145                	addi	sp,sp,48
   1acb0:	8082                	ret
   1acb2:	10000593          	li	a1,256
   1acb6:	e432                	sd	a2,8(sp)
   1acb8:	aadf50ef          	jal	ra,10764 <_malloc_r>
   1acbc:	50a4bc23          	sd	a0,1304(s1)
   1acc0:	872a                	mv	a4,a0
   1acc2:	c919                	beqz	a0,1acd8 <_signal_r+0x60>
   1acc4:	6622                	ld	a2,8(sp)
   1acc6:	87aa                	mv	a5,a0
   1acc8:	10050693          	addi	a3,a0,256
   1accc:	0007b023          	sd	zero,0(a5)
   1acd0:	07a1                	addi	a5,a5,8
   1acd2:	fef69de3          	bne	a3,a5,1accc <_signal_r+0x54>
   1acd6:	bf6d                	j	1ac90 <_signal_r+0x18>
   1acd8:	557d                	li	a0,-1
   1acda:	bf7d                	j	1ac98 <_signal_r+0x20>

000000000001acdc <_raise_r>:
   1acdc:	1101                	addi	sp,sp,-32
   1acde:	e426                	sd	s1,8(sp)
   1ace0:	ec06                	sd	ra,24(sp)
   1ace2:	e822                	sd	s0,16(sp)
   1ace4:	47fd                	li	a5,31
   1ace6:	84aa                	mv	s1,a0
   1ace8:	06b7e463          	bltu	a5,a1,1ad50 <_raise_r+0x74>
   1acec:	51853783          	ld	a5,1304(a0)
   1acf0:	842e                	mv	s0,a1
   1acf2:	c795                	beqz	a5,1ad1e <_raise_r+0x42>
   1acf4:	00359713          	slli	a4,a1,0x3
   1acf8:	97ba                	add	a5,a5,a4
   1acfa:	6398                	ld	a4,0(a5)
   1acfc:	c30d                	beqz	a4,1ad1e <_raise_r+0x42>
   1acfe:	4685                	li	a3,1
   1ad00:	04d70263          	beq	a4,a3,1ad44 <_raise_r+0x68>
   1ad04:	56fd                	li	a3,-1
   1ad06:	02d70763          	beq	a4,a3,1ad34 <_raise_r+0x58>
   1ad0a:	852e                	mv	a0,a1
   1ad0c:	0007b023          	sd	zero,0(a5)
   1ad10:	9702                	jalr	a4
   1ad12:	4501                	li	a0,0
   1ad14:	60e2                	ld	ra,24(sp)
   1ad16:	6442                	ld	s0,16(sp)
   1ad18:	64a2                	ld	s1,8(sp)
   1ad1a:	6105                	addi	sp,sp,32
   1ad1c:	8082                	ret
   1ad1e:	8526                	mv	a0,s1
   1ad20:	2aa000ef          	jal	ra,1afca <_getpid_r>
   1ad24:	8622                	mv	a2,s0
   1ad26:	6442                	ld	s0,16(sp)
   1ad28:	60e2                	ld	ra,24(sp)
   1ad2a:	85aa                	mv	a1,a0
   1ad2c:	8526                	mv	a0,s1
   1ad2e:	64a2                	ld	s1,8(sp)
   1ad30:	6105                	addi	sp,sp,32
   1ad32:	acb9                	j	1af90 <_kill_r>
   1ad34:	60e2                	ld	ra,24(sp)
   1ad36:	6442                	ld	s0,16(sp)
   1ad38:	47d9                	li	a5,22
   1ad3a:	c11c                	sw	a5,0(a0)
   1ad3c:	64a2                	ld	s1,8(sp)
   1ad3e:	4505                	li	a0,1
   1ad40:	6105                	addi	sp,sp,32
   1ad42:	8082                	ret
   1ad44:	60e2                	ld	ra,24(sp)
   1ad46:	6442                	ld	s0,16(sp)
   1ad48:	64a2                	ld	s1,8(sp)
   1ad4a:	4501                	li	a0,0
   1ad4c:	6105                	addi	sp,sp,32
   1ad4e:	8082                	ret
   1ad50:	47d9                	li	a5,22
   1ad52:	c11c                	sw	a5,0(a0)
   1ad54:	557d                	li	a0,-1
   1ad56:	bf7d                	j	1ad14 <_raise_r+0x38>

000000000001ad58 <__sigtramp_r>:
   1ad58:	47fd                	li	a5,31
   1ad5a:	08b7e163          	bltu	a5,a1,1addc <__sigtramp_r+0x84>
   1ad5e:	51853703          	ld	a4,1304(a0)
   1ad62:	1101                	addi	sp,sp,-32
   1ad64:	e822                	sd	s0,16(sp)
   1ad66:	e426                	sd	s1,8(sp)
   1ad68:	ec06                	sd	ra,24(sp)
   1ad6a:	842e                	mv	s0,a1
   1ad6c:	84aa                	mv	s1,a0
   1ad6e:	cf05                	beqz	a4,1ada6 <__sigtramp_r+0x4e>
   1ad70:	00341793          	slli	a5,s0,0x3
   1ad74:	973e                	add	a4,a4,a5
   1ad76:	631c                	ld	a5,0(a4)
   1ad78:	c38d                	beqz	a5,1ad9a <__sigtramp_r+0x42>
   1ad7a:	56fd                	li	a3,-1
   1ad7c:	04d78c63          	beq	a5,a3,1add4 <__sigtramp_r+0x7c>
   1ad80:	4685                	li	a3,1
   1ad82:	04d78363          	beq	a5,a3,1adc8 <__sigtramp_r+0x70>
   1ad86:	8522                	mv	a0,s0
   1ad88:	00073023          	sd	zero,0(a4)
   1ad8c:	9782                	jalr	a5
   1ad8e:	4501                	li	a0,0
   1ad90:	60e2                	ld	ra,24(sp)
   1ad92:	6442                	ld	s0,16(sp)
   1ad94:	64a2                	ld	s1,8(sp)
   1ad96:	6105                	addi	sp,sp,32
   1ad98:	8082                	ret
   1ad9a:	60e2                	ld	ra,24(sp)
   1ad9c:	6442                	ld	s0,16(sp)
   1ad9e:	64a2                	ld	s1,8(sp)
   1ada0:	4505                	li	a0,1
   1ada2:	6105                	addi	sp,sp,32
   1ada4:	8082                	ret
   1ada6:	10000593          	li	a1,256
   1adaa:	9bbf50ef          	jal	ra,10764 <_malloc_r>
   1adae:	50a4bc23          	sd	a0,1304(s1)
   1adb2:	872a                	mv	a4,a0
   1adb4:	c115                	beqz	a0,1add8 <__sigtramp_r+0x80>
   1adb6:	87aa                	mv	a5,a0
   1adb8:	10050693          	addi	a3,a0,256
   1adbc:	0007b023          	sd	zero,0(a5)
   1adc0:	07a1                	addi	a5,a5,8
   1adc2:	fed79de3          	bne	a5,a3,1adbc <__sigtramp_r+0x64>
   1adc6:	b76d                	j	1ad70 <__sigtramp_r+0x18>
   1adc8:	60e2                	ld	ra,24(sp)
   1adca:	6442                	ld	s0,16(sp)
   1adcc:	64a2                	ld	s1,8(sp)
   1adce:	450d                	li	a0,3
   1add0:	6105                	addi	sp,sp,32
   1add2:	8082                	ret
   1add4:	4509                	li	a0,2
   1add6:	bf6d                	j	1ad90 <__sigtramp_r+0x38>
   1add8:	557d                	li	a0,-1
   1adda:	bf5d                	j	1ad90 <__sigtramp_r+0x38>
   1addc:	557d                	li	a0,-1
   1adde:	8082                	ret

000000000001ade0 <raise>:
   1ade0:	1101                	addi	sp,sp,-32
   1ade2:	e426                	sd	s1,8(sp)
   1ade4:	ec06                	sd	ra,24(sp)
   1ade6:	e822                	sd	s0,16(sp)
   1ade8:	47fd                	li	a5,31
   1adea:	6401b483          	ld	s1,1600(gp) # 1f760 <_impure_ptr>
   1adee:	06a7e363          	bltu	a5,a0,1ae54 <raise+0x74>
   1adf2:	5184b783          	ld	a5,1304(s1)
   1adf6:	842a                	mv	s0,a0
   1adf8:	c78d                	beqz	a5,1ae22 <raise+0x42>
   1adfa:	00351713          	slli	a4,a0,0x3
   1adfe:	97ba                	add	a5,a5,a4
   1ae00:	6398                	ld	a4,0(a5)
   1ae02:	c305                	beqz	a4,1ae22 <raise+0x42>
   1ae04:	4685                	li	a3,1
   1ae06:	04d70163          	beq	a4,a3,1ae48 <raise+0x68>
   1ae0a:	56fd                	li	a3,-1
   1ae0c:	02d70663          	beq	a4,a3,1ae38 <raise+0x58>
   1ae10:	0007b023          	sd	zero,0(a5)
   1ae14:	9702                	jalr	a4
   1ae16:	4501                	li	a0,0
   1ae18:	60e2                	ld	ra,24(sp)
   1ae1a:	6442                	ld	s0,16(sp)
   1ae1c:	64a2                	ld	s1,8(sp)
   1ae1e:	6105                	addi	sp,sp,32
   1ae20:	8082                	ret
   1ae22:	8526                	mv	a0,s1
   1ae24:	1a6000ef          	jal	ra,1afca <_getpid_r>
   1ae28:	8622                	mv	a2,s0
   1ae2a:	6442                	ld	s0,16(sp)
   1ae2c:	60e2                	ld	ra,24(sp)
   1ae2e:	85aa                	mv	a1,a0
   1ae30:	8526                	mv	a0,s1
   1ae32:	64a2                	ld	s1,8(sp)
   1ae34:	6105                	addi	sp,sp,32
   1ae36:	aaa9                	j	1af90 <_kill_r>
   1ae38:	60e2                	ld	ra,24(sp)
   1ae3a:	6442                	ld	s0,16(sp)
   1ae3c:	47d9                	li	a5,22
   1ae3e:	c09c                	sw	a5,0(s1)
   1ae40:	4505                	li	a0,1
   1ae42:	64a2                	ld	s1,8(sp)
   1ae44:	6105                	addi	sp,sp,32
   1ae46:	8082                	ret
   1ae48:	60e2                	ld	ra,24(sp)
   1ae4a:	6442                	ld	s0,16(sp)
   1ae4c:	64a2                	ld	s1,8(sp)
   1ae4e:	4501                	li	a0,0
   1ae50:	6105                	addi	sp,sp,32
   1ae52:	8082                	ret
   1ae54:	47d9                	li	a5,22
   1ae56:	c09c                	sw	a5,0(s1)
   1ae58:	557d                	li	a0,-1
   1ae5a:	bf7d                	j	1ae18 <raise+0x38>

000000000001ae5c <signal>:
   1ae5c:	1101                	addi	sp,sp,-32
   1ae5e:	e04a                	sd	s2,0(sp)
   1ae60:	ec06                	sd	ra,24(sp)
   1ae62:	e822                	sd	s0,16(sp)
   1ae64:	e426                	sd	s1,8(sp)
   1ae66:	47fd                	li	a5,31
   1ae68:	6401b903          	ld	s2,1600(gp) # 1f760 <_impure_ptr>
   1ae6c:	02a7e263          	bltu	a5,a0,1ae90 <signal+0x34>
   1ae70:	842a                	mv	s0,a0
   1ae72:	51893503          	ld	a0,1304(s2)
   1ae76:	84ae                	mv	s1,a1
   1ae78:	c515                	beqz	a0,1aea4 <signal+0x48>
   1ae7a:	040e                	slli	s0,s0,0x3
   1ae7c:	008507b3          	add	a5,a0,s0
   1ae80:	6388                	ld	a0,0(a5)
   1ae82:	e384                	sd	s1,0(a5)
   1ae84:	60e2                	ld	ra,24(sp)
   1ae86:	6442                	ld	s0,16(sp)
   1ae88:	64a2                	ld	s1,8(sp)
   1ae8a:	6902                	ld	s2,0(sp)
   1ae8c:	6105                	addi	sp,sp,32
   1ae8e:	8082                	ret
   1ae90:	60e2                	ld	ra,24(sp)
   1ae92:	6442                	ld	s0,16(sp)
   1ae94:	47d9                	li	a5,22
   1ae96:	00f92023          	sw	a5,0(s2)
   1ae9a:	64a2                	ld	s1,8(sp)
   1ae9c:	6902                	ld	s2,0(sp)
   1ae9e:	557d                	li	a0,-1
   1aea0:	6105                	addi	sp,sp,32
   1aea2:	8082                	ret
   1aea4:	10000593          	li	a1,256
   1aea8:	854a                	mv	a0,s2
   1aeaa:	8bbf50ef          	jal	ra,10764 <_malloc_r>
   1aeae:	50a93c23          	sd	a0,1304(s2)
   1aeb2:	c911                	beqz	a0,1aec6 <signal+0x6a>
   1aeb4:	87aa                	mv	a5,a0
   1aeb6:	10050713          	addi	a4,a0,256
   1aeba:	0007b023          	sd	zero,0(a5)
   1aebe:	07a1                	addi	a5,a5,8
   1aec0:	fef71de3          	bne	a4,a5,1aeba <signal+0x5e>
   1aec4:	bf5d                	j	1ae7a <signal+0x1e>
   1aec6:	557d                	li	a0,-1
   1aec8:	bf75                	j	1ae84 <signal+0x28>

000000000001aeca <_init_signal>:
   1aeca:	1141                	addi	sp,sp,-16
   1aecc:	e022                	sd	s0,0(sp)
   1aece:	6401b403          	ld	s0,1600(gp) # 1f760 <_impure_ptr>
   1aed2:	e406                	sd	ra,8(sp)
   1aed4:	51843783          	ld	a5,1304(s0)
   1aed8:	c791                	beqz	a5,1aee4 <_init_signal+0x1a>
   1aeda:	4501                	li	a0,0
   1aedc:	60a2                	ld	ra,8(sp)
   1aede:	6402                	ld	s0,0(sp)
   1aee0:	0141                	addi	sp,sp,16
   1aee2:	8082                	ret
   1aee4:	10000593          	li	a1,256
   1aee8:	8522                	mv	a0,s0
   1aeea:	87bf50ef          	jal	ra,10764 <_malloc_r>
   1aeee:	50a43c23          	sd	a0,1304(s0)
   1aef2:	c909                	beqz	a0,1af04 <_init_signal+0x3a>
   1aef4:	10050793          	addi	a5,a0,256
   1aef8:	00053023          	sd	zero,0(a0)
   1aefc:	0521                	addi	a0,a0,8
   1aefe:	fef51de3          	bne	a0,a5,1aef8 <_init_signal+0x2e>
   1af02:	bfe1                	j	1aeda <_init_signal+0x10>
   1af04:	557d                	li	a0,-1
   1af06:	bfd9                	j	1aedc <_init_signal+0x12>

000000000001af08 <__sigtramp>:
   1af08:	1101                	addi	sp,sp,-32
   1af0a:	e426                	sd	s1,8(sp)
   1af0c:	ec06                	sd	ra,24(sp)
   1af0e:	e822                	sd	s0,16(sp)
   1af10:	47fd                	li	a5,31
   1af12:	6401b483          	ld	s1,1600(gp) # 1f760 <_impure_ptr>
   1af16:	06a7eb63          	bltu	a5,a0,1af8c <__sigtramp+0x84>
   1af1a:	5184b703          	ld	a4,1304(s1)
   1af1e:	842a                	mv	s0,a0
   1af20:	cf05                	beqz	a4,1af58 <__sigtramp+0x50>
   1af22:	00341793          	slli	a5,s0,0x3
   1af26:	973e                	add	a4,a4,a5
   1af28:	631c                	ld	a5,0(a4)
   1af2a:	c38d                	beqz	a5,1af4c <__sigtramp+0x44>
   1af2c:	56fd                	li	a3,-1
   1af2e:	04d78d63          	beq	a5,a3,1af88 <__sigtramp+0x80>
   1af32:	4685                	li	a3,1
   1af34:	04d78463          	beq	a5,a3,1af7c <__sigtramp+0x74>
   1af38:	8522                	mv	a0,s0
   1af3a:	00073023          	sd	zero,0(a4)
   1af3e:	9782                	jalr	a5
   1af40:	4501                	li	a0,0
   1af42:	60e2                	ld	ra,24(sp)
   1af44:	6442                	ld	s0,16(sp)
   1af46:	64a2                	ld	s1,8(sp)
   1af48:	6105                	addi	sp,sp,32
   1af4a:	8082                	ret
   1af4c:	60e2                	ld	ra,24(sp)
   1af4e:	6442                	ld	s0,16(sp)
   1af50:	64a2                	ld	s1,8(sp)
   1af52:	4505                	li	a0,1
   1af54:	6105                	addi	sp,sp,32
   1af56:	8082                	ret
   1af58:	10000593          	li	a1,256
   1af5c:	8526                	mv	a0,s1
   1af5e:	807f50ef          	jal	ra,10764 <_malloc_r>
   1af62:	50a4bc23          	sd	a0,1304(s1)
   1af66:	872a                	mv	a4,a0
   1af68:	c115                	beqz	a0,1af8c <__sigtramp+0x84>
   1af6a:	87aa                	mv	a5,a0
   1af6c:	10050693          	addi	a3,a0,256
   1af70:	0007b023          	sd	zero,0(a5)
   1af74:	07a1                	addi	a5,a5,8
   1af76:	fed79de3          	bne	a5,a3,1af70 <__sigtramp+0x68>
   1af7a:	b765                	j	1af22 <__sigtramp+0x1a>
   1af7c:	60e2                	ld	ra,24(sp)
   1af7e:	6442                	ld	s0,16(sp)
   1af80:	64a2                	ld	s1,8(sp)
   1af82:	450d                	li	a0,3
   1af84:	6105                	addi	sp,sp,32
   1af86:	8082                	ret
   1af88:	4509                	li	a0,2
   1af8a:	bf65                	j	1af42 <__sigtramp+0x3a>
   1af8c:	557d                	li	a0,-1
   1af8e:	bf55                	j	1af42 <__sigtramp+0x3a>

000000000001af90 <_kill_r>:
   1af90:	1101                	addi	sp,sp,-32
   1af92:	872e                	mv	a4,a1
   1af94:	e822                	sd	s0,16(sp)
   1af96:	e426                	sd	s1,8(sp)
   1af98:	842a                	mv	s0,a0
   1af9a:	85b2                	mv	a1,a2
   1af9c:	853a                	mv	a0,a4
   1af9e:	ec06                	sd	ra,24(sp)
   1afa0:	6801a423          	sw	zero,1672(gp) # 1f7a8 <errno>
   1afa4:	0e0000ef          	jal	ra,1b084 <_kill>
   1afa8:	57fd                	li	a5,-1
   1afaa:	00f50763          	beq	a0,a5,1afb8 <_kill_r+0x28>
   1afae:	60e2                	ld	ra,24(sp)
   1afb0:	6442                	ld	s0,16(sp)
   1afb2:	64a2                	ld	s1,8(sp)
   1afb4:	6105                	addi	sp,sp,32
   1afb6:	8082                	ret
   1afb8:	6881a783          	lw	a5,1672(gp) # 1f7a8 <errno>
   1afbc:	dbed                	beqz	a5,1afae <_kill_r+0x1e>
   1afbe:	60e2                	ld	ra,24(sp)
   1afc0:	c01c                	sw	a5,0(s0)
   1afc2:	6442                	ld	s0,16(sp)
   1afc4:	64a2                	ld	s1,8(sp)
   1afc6:	6105                	addi	sp,sp,32
   1afc8:	8082                	ret

000000000001afca <_getpid_r>:
   1afca:	a841                	j	1b05a <_getpid>

000000000001afcc <_close>:
   1afcc:	1141                	addi	sp,sp,-16
   1afce:	e406                	sd	ra,8(sp)
   1afd0:	e022                	sd	s0,0(sp)
   1afd2:	03900893          	li	a7,57
   1afd6:	00000073          	ecall
   1afda:	842a                	mv	s0,a0
   1afdc:	00054763          	bltz	a0,1afea <_close+0x1e>
   1afe0:	2501                	sext.w	a0,a0
   1afe2:	60a2                	ld	ra,8(sp)
   1afe4:	6402                	ld	s0,0(sp)
   1afe6:	0141                	addi	sp,sp,16
   1afe8:	8082                	ret
   1afea:	abbfe0ef          	jal	ra,19aa4 <__errno>
   1afee:	4080043b          	negw	s0,s0
   1aff2:	c100                	sw	s0,0(a0)
   1aff4:	557d                	li	a0,-1
   1aff6:	b7f5                	j	1afe2 <_close+0x16>

000000000001aff8 <_exit>:
   1aff8:	05d00893          	li	a7,93
   1affc:	00000073          	ecall
   1b000:	00054363          	bltz	a0,1b006 <_exit+0xe>
   1b004:	a001                	j	1b004 <_exit+0xc>
   1b006:	1141                	addi	sp,sp,-16
   1b008:	e022                	sd	s0,0(sp)
   1b00a:	842a                	mv	s0,a0
   1b00c:	e406                	sd	ra,8(sp)
   1b00e:	4080043b          	negw	s0,s0
   1b012:	a93fe0ef          	jal	ra,19aa4 <__errno>
   1b016:	c100                	sw	s0,0(a0)
   1b018:	a001                	j	1b018 <_exit+0x20>

000000000001b01a <_fstat>:
   1b01a:	7135                	addi	sp,sp,-160
   1b01c:	e526                	sd	s1,136(sp)
   1b01e:	ed06                	sd	ra,152(sp)
   1b020:	84ae                	mv	s1,a1
   1b022:	e922                	sd	s0,144(sp)
   1b024:	05000893          	li	a7,80
   1b028:	858a                	mv	a1,sp
   1b02a:	00000073          	ecall
   1b02e:	842a                	mv	s0,a0
   1b030:	00054e63          	bltz	a0,1b04c <_fstat+0x32>
   1b034:	0005041b          	sext.w	s0,a0
   1b038:	8526                	mv	a0,s1
   1b03a:	858a                	mv	a1,sp
   1b03c:	130000ef          	jal	ra,1b16c <_conv_stat>
   1b040:	60ea                	ld	ra,152(sp)
   1b042:	8522                	mv	a0,s0
   1b044:	644a                	ld	s0,144(sp)
   1b046:	64aa                	ld	s1,136(sp)
   1b048:	610d                	addi	sp,sp,160
   1b04a:	8082                	ret
   1b04c:	4080043b          	negw	s0,s0
   1b050:	a55fe0ef          	jal	ra,19aa4 <__errno>
   1b054:	c100                	sw	s0,0(a0)
   1b056:	547d                	li	s0,-1
   1b058:	b7c5                	j	1b038 <_fstat+0x1e>

000000000001b05a <_getpid>:
   1b05a:	4505                	li	a0,1
   1b05c:	8082                	ret

000000000001b05e <_isatty>:
   1b05e:	7119                	addi	sp,sp,-128
   1b060:	002c                	addi	a1,sp,8
   1b062:	fc86                	sd	ra,120(sp)
   1b064:	fb7ff0ef          	jal	ra,1b01a <_fstat>
   1b068:	57fd                	li	a5,-1
   1b06a:	00f50963          	beq	a0,a5,1b07c <_isatty+0x1e>
   1b06e:	4532                	lw	a0,12(sp)
   1b070:	70e6                	ld	ra,120(sp)
   1b072:	40d5551b          	sraiw	a0,a0,0xd
   1b076:	8905                	andi	a0,a0,1
   1b078:	6109                	addi	sp,sp,128
   1b07a:	8082                	ret
   1b07c:	70e6                	ld	ra,120(sp)
   1b07e:	4501                	li	a0,0
   1b080:	6109                	addi	sp,sp,128
   1b082:	8082                	ret

000000000001b084 <_kill>:
   1b084:	1141                	addi	sp,sp,-16
   1b086:	e406                	sd	ra,8(sp)
   1b088:	a1dfe0ef          	jal	ra,19aa4 <__errno>
   1b08c:	60a2                	ld	ra,8(sp)
   1b08e:	47d9                	li	a5,22
   1b090:	c11c                	sw	a5,0(a0)
   1b092:	557d                	li	a0,-1
   1b094:	0141                	addi	sp,sp,16
   1b096:	8082                	ret

000000000001b098 <_lseek>:
   1b098:	1141                	addi	sp,sp,-16
   1b09a:	e406                	sd	ra,8(sp)
   1b09c:	e022                	sd	s0,0(sp)
   1b09e:	03e00893          	li	a7,62
   1b0a2:	00000073          	ecall
   1b0a6:	842a                	mv	s0,a0
   1b0a8:	00054763          	bltz	a0,1b0b6 <_lseek+0x1e>
   1b0ac:	60a2                	ld	ra,8(sp)
   1b0ae:	8522                	mv	a0,s0
   1b0b0:	6402                	ld	s0,0(sp)
   1b0b2:	0141                	addi	sp,sp,16
   1b0b4:	8082                	ret
   1b0b6:	4080043b          	negw	s0,s0
   1b0ba:	9ebfe0ef          	jal	ra,19aa4 <__errno>
   1b0be:	c100                	sw	s0,0(a0)
   1b0c0:	547d                	li	s0,-1
   1b0c2:	b7ed                	j	1b0ac <_lseek+0x14>

000000000001b0c4 <_read>:
   1b0c4:	1141                	addi	sp,sp,-16
   1b0c6:	e406                	sd	ra,8(sp)
   1b0c8:	e022                	sd	s0,0(sp)
   1b0ca:	03f00893          	li	a7,63
   1b0ce:	00000073          	ecall
   1b0d2:	842a                	mv	s0,a0
   1b0d4:	00054763          	bltz	a0,1b0e2 <_read+0x1e>
   1b0d8:	60a2                	ld	ra,8(sp)
   1b0da:	8522                	mv	a0,s0
   1b0dc:	6402                	ld	s0,0(sp)
   1b0de:	0141                	addi	sp,sp,16
   1b0e0:	8082                	ret
   1b0e2:	4080043b          	negw	s0,s0
   1b0e6:	9bffe0ef          	jal	ra,19aa4 <__errno>
   1b0ea:	c100                	sw	s0,0(a0)
   1b0ec:	547d                	li	s0,-1
   1b0ee:	b7ed                	j	1b0d8 <_read+0x14>

000000000001b0f0 <_sbrk>:
   1b0f0:	69818693          	addi	a3,gp,1688 # 1f7b8 <heap_end.0>
   1b0f4:	6298                	ld	a4,0(a3)
   1b0f6:	1141                	addi	sp,sp,-16
   1b0f8:	e406                	sd	ra,8(sp)
   1b0fa:	87aa                	mv	a5,a0
   1b0fc:	eb19                	bnez	a4,1b112 <_sbrk+0x22>
   1b0fe:	0d600893          	li	a7,214
   1b102:	4501                	li	a0,0
   1b104:	00000073          	ecall
   1b108:	567d                	li	a2,-1
   1b10a:	872a                	mv	a4,a0
   1b10c:	02c50263          	beq	a0,a2,1b130 <_sbrk+0x40>
   1b110:	e288                	sd	a0,0(a3)
   1b112:	0d600893          	li	a7,214
   1b116:	00e78533          	add	a0,a5,a4
   1b11a:	00000073          	ecall
   1b11e:	6298                	ld	a4,0(a3)
   1b120:	97ba                	add	a5,a5,a4
   1b122:	00f51763          	bne	a0,a5,1b130 <_sbrk+0x40>
   1b126:	60a2                	ld	ra,8(sp)
   1b128:	e288                	sd	a0,0(a3)
   1b12a:	853a                	mv	a0,a4
   1b12c:	0141                	addi	sp,sp,16
   1b12e:	8082                	ret
   1b130:	975fe0ef          	jal	ra,19aa4 <__errno>
   1b134:	60a2                	ld	ra,8(sp)
   1b136:	47b1                	li	a5,12
   1b138:	c11c                	sw	a5,0(a0)
   1b13a:	557d                	li	a0,-1
   1b13c:	0141                	addi	sp,sp,16
   1b13e:	8082                	ret

000000000001b140 <_write>:
   1b140:	1141                	addi	sp,sp,-16
   1b142:	e406                	sd	ra,8(sp)
   1b144:	e022                	sd	s0,0(sp)
   1b146:	04000893          	li	a7,64
   1b14a:	00000073          	ecall
   1b14e:	842a                	mv	s0,a0
   1b150:	00054763          	bltz	a0,1b15e <_write+0x1e>
   1b154:	60a2                	ld	ra,8(sp)
   1b156:	8522                	mv	a0,s0
   1b158:	6402                	ld	s0,0(sp)
   1b15a:	0141                	addi	sp,sp,16
   1b15c:	8082                	ret
   1b15e:	4080043b          	negw	s0,s0
   1b162:	943fe0ef          	jal	ra,19aa4 <__errno>
   1b166:	c100                	sw	s0,0(a0)
   1b168:	547d                	li	s0,-1
   1b16a:	b7ed                	j	1b154 <_write+0x14>

000000000001b16c <_conv_stat>:
   1b16c:	0005b383          	ld	t2,0(a1)
   1b170:	0085b283          	ld	t0,8(a1)
   1b174:	0105af83          	lw	t6,16(a1)
   1b178:	0145af03          	lw	t5,20(a1)
   1b17c:	0185ae83          	lw	t4,24(a1)
   1b180:	01c5ae03          	lw	t3,28(a1)
   1b184:	0205b303          	ld	t1,32(a1)
   1b188:	0305b883          	ld	a7,48(a1)
   1b18c:	0405b803          	ld	a6,64(a1)
   1b190:	5d90                	lw	a2,56(a1)
   1b192:	65b4                	ld	a3,72(a1)
   1b194:	6db8                	ld	a4,88(a1)
   1b196:	75bc                	ld	a5,104(a1)
   1b198:	00751023          	sh	t2,0(a0)
   1b19c:	00551123          	sh	t0,2(a0)
   1b1a0:	01f52223          	sw	t6,4(a0)
   1b1a4:	01e51423          	sh	t5,8(a0)
   1b1a8:	01d51523          	sh	t4,10(a0)
   1b1ac:	01c51623          	sh	t3,12(a0)
   1b1b0:	00651723          	sh	t1,14(a0)
   1b1b4:	01153823          	sd	a7,16(a0)
   1b1b8:	05053823          	sd	a6,80(a0)
   1b1bc:	e530                	sd	a2,72(a0)
   1b1be:	ed14                	sd	a3,24(a0)
   1b1c0:	f518                	sd	a4,40(a0)
   1b1c2:	fd1c                	sd	a5,56(a0)
   1b1c4:	8082                	ret

000000000001b1c6 <__eqtf2>:
   1b1c6:	882a                	mv	a6,a0
   1b1c8:	002027f3          	frrm	a5
   1b1cc:	6521                	lui	a0,0x8
   1b1ce:	0305d893          	srli	a7,a1,0x30
   1b1d2:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1b1d4:	57fd                	li	a5,-1
   1b1d6:	83c1                	srli	a5,a5,0x10
   1b1d8:	0306d313          	srli	t1,a3,0x30
   1b1dc:	00a8f8b3          	and	a7,a7,a0
   1b1e0:	00f5f733          	and	a4,a1,a5
   1b1e4:	00a37333          	and	t1,t1,a0
   1b1e8:	8ff5                	and	a5,a5,a3
   1b1ea:	91fd                	srli	a1,a1,0x3f
   1b1ec:	92fd                	srli	a3,a3,0x3f
   1b1ee:	00a89863          	bne	a7,a0,1b1fe <__eqtf2+0x38>
   1b1f2:	01076533          	or	a0,a4,a6
   1b1f6:	e10d                	bnez	a0,1b218 <__eqtf2+0x52>
   1b1f8:	03131f63          	bne	t1,a7,1b236 <__eqtf2+0x70>
   1b1fc:	a019                	j	1b202 <__eqtf2+0x3c>
   1b1fe:	02a31e63          	bne	t1,a0,1b23a <__eqtf2+0x74>
   1b202:	00c7e533          	or	a0,a5,a2
   1b206:	c915                	beqz	a0,1b23a <__eqtf2+0x74>
   1b208:	66a1                	lui	a3,0x8
   1b20a:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1b20c:	00d89f63          	bne	a7,a3,1b22a <__eqtf2+0x64>
   1b210:	01076833          	or	a6,a4,a6
   1b214:	00080b63          	beqz	a6,1b22a <__eqtf2+0x64>
   1b218:	933d                	srli	a4,a4,0x2f
   1b21a:	c331                	beqz	a4,1b25e <__eqtf2+0x98>
   1b21c:	6721                	lui	a4,0x8
   1b21e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b220:	4505                	li	a0,1
   1b222:	00e31b63          	bne	t1,a4,1b238 <__eqtf2+0x72>
   1b226:	8e5d                	or	a2,a2,a5
   1b228:	ca01                	beqz	a2,1b238 <__eqtf2+0x72>
   1b22a:	93bd                	srli	a5,a5,0x2f
   1b22c:	0017c793          	xori	a5,a5,1
   1b230:	00479713          	slli	a4,a5,0x4
   1b234:	e795                	bnez	a5,1b260 <__eqtf2+0x9a>
   1b236:	4505                	li	a0,1
   1b238:	8082                	ret
   1b23a:	4505                	li	a0,1
   1b23c:	fe689ee3          	bne	a7,t1,1b238 <__eqtf2+0x72>
   1b240:	fef71ce3          	bne	a4,a5,1b238 <__eqtf2+0x72>
   1b244:	fec81ae3          	bne	a6,a2,1b238 <__eqtf2+0x72>
   1b248:	00d58963          	beq	a1,a3,1b25a <__eqtf2+0x94>
   1b24c:	fe0896e3          	bnez	a7,1b238 <__eqtf2+0x72>
   1b250:	01076733          	or	a4,a4,a6
   1b254:	00e03533          	snez	a0,a4
   1b258:	8082                	ret
   1b25a:	4501                	li	a0,0
   1b25c:	8082                	ret
   1b25e:	4741                	li	a4,16
   1b260:	00172073          	csrs	fflags,a4
   1b264:	bfc9                	j	1b236 <__eqtf2+0x70>

000000000001b266 <__getf2>:
   1b266:	88aa                	mv	a7,a0
   1b268:	002027f3          	frrm	a5
   1b26c:	6321                	lui	t1,0x8
   1b26e:	137d                	addi	t1,t1,-1 # 7fff <exit-0x80e9>
   1b270:	57fd                	li	a5,-1
   1b272:	0305d813          	srli	a6,a1,0x30
   1b276:	83c1                	srli	a5,a5,0x10
   1b278:	0306d713          	srli	a4,a3,0x30
   1b27c:	00687833          	and	a6,a6,t1
   1b280:	00f5fe33          	and	t3,a1,a5
   1b284:	03f5d513          	srli	a0,a1,0x3f
   1b288:	8ff5                	and	a5,a5,a3
   1b28a:	00677733          	and	a4,a4,t1
   1b28e:	92fd                	srli	a3,a3,0x3f
   1b290:	00681963          	bne	a6,t1,1b2a2 <__getf2+0x3c>
   1b294:	011e65b3          	or	a1,t3,a7
   1b298:	c5ad                	beqz	a1,1b302 <__getf2+0x9c>
   1b29a:	00186073          	csrsi	fflags,16
   1b29e:	5579                	li	a0,-2
   1b2a0:	8082                	ret
   1b2a2:	00671563          	bne	a4,t1,1b2ac <__getf2+0x46>
   1b2a6:	00c7e5b3          	or	a1,a5,a2
   1b2aa:	f9e5                	bnez	a1,1b29a <__getf2+0x34>
   1b2ac:	04081d63          	bnez	a6,1b306 <__getf2+0xa0>
   1b2b0:	011e65b3          	or	a1,t3,a7
   1b2b4:	0015b593          	seqz	a1,a1
   1b2b8:	eb0d                	bnez	a4,1b2ea <__getf2+0x84>
   1b2ba:	00c7e333          	or	t1,a5,a2
   1b2be:	02031663          	bnez	t1,1b2ea <__getf2+0x84>
   1b2c2:	e185                	bnez	a1,1b2e2 <__getf2+0x7c>
   1b2c4:	c10d                	beqz	a0,1b2e6 <__getf2+0x80>
   1b2c6:	557d                	li	a0,-1
   1b2c8:	8082                	ret
   1b2ca:	557d                	li	a0,-1
   1b2cc:	c69d                	beqz	a3,1b2fa <__getf2+0x94>
   1b2ce:	8536                	mv	a0,a3
   1b2d0:	8082                	ret
   1b2d2:	ffc7e9e3          	bltu	a5,t3,1b2c4 <__getf2+0x5e>
   1b2d6:	02fe1363          	bne	t3,a5,1b2fc <__getf2+0x96>
   1b2da:	ff1665e3          	bltu	a2,a7,1b2c4 <__getf2+0x5e>
   1b2de:	00c8ed63          	bltu	a7,a2,1b2f8 <__getf2+0x92>
   1b2e2:	4501                	li	a0,0
   1b2e4:	8082                	ret
   1b2e6:	4505                	li	a0,1
   1b2e8:	8082                	ret
   1b2ea:	f1e5                	bnez	a1,1b2ca <__getf2+0x64>
   1b2ec:	fcd51ce3          	bne	a0,a3,1b2c4 <__getf2+0x5e>
   1b2f0:	fd074ae3          	blt	a4,a6,1b2c4 <__getf2+0x5e>
   1b2f4:	fce85fe3          	bge	a6,a4,1b2d2 <__getf2+0x6c>
   1b2f8:	d579                	beqz	a0,1b2c6 <__getf2+0x60>
   1b2fa:	8082                	ret
   1b2fc:	fefe6ee3          	bltu	t3,a5,1b2f8 <__getf2+0x92>
   1b300:	b7cd                	j	1b2e2 <__getf2+0x7c>
   1b302:	fb0702e3          	beq	a4,a6,1b2a6 <__getf2+0x40>
   1b306:	f37d                	bnez	a4,1b2ec <__getf2+0x86>
   1b308:	4581                	li	a1,0
   1b30a:	bf45                	j	1b2ba <__getf2+0x54>

000000000001b30c <__letf2>:
   1b30c:	88aa                	mv	a7,a0
   1b30e:	002027f3          	frrm	a5
   1b312:	6321                	lui	t1,0x8
   1b314:	137d                	addi	t1,t1,-1 # 7fff <exit-0x80e9>
   1b316:	57fd                	li	a5,-1
   1b318:	0305d813          	srli	a6,a1,0x30
   1b31c:	83c1                	srli	a5,a5,0x10
   1b31e:	0306d713          	srli	a4,a3,0x30
   1b322:	00687833          	and	a6,a6,t1
   1b326:	00f5fe33          	and	t3,a1,a5
   1b32a:	03f5d513          	srli	a0,a1,0x3f
   1b32e:	8ff5                	and	a5,a5,a3
   1b330:	00677733          	and	a4,a4,t1
   1b334:	92fd                	srli	a3,a3,0x3f
   1b336:	00681963          	bne	a6,t1,1b348 <__letf2+0x3c>
   1b33a:	011e65b3          	or	a1,t3,a7
   1b33e:	c5ad                	beqz	a1,1b3a8 <__letf2+0x9c>
   1b340:	00186073          	csrsi	fflags,16
   1b344:	4509                	li	a0,2
   1b346:	8082                	ret
   1b348:	00671563          	bne	a4,t1,1b352 <__letf2+0x46>
   1b34c:	00c7e5b3          	or	a1,a5,a2
   1b350:	f9e5                	bnez	a1,1b340 <__letf2+0x34>
   1b352:	04081d63          	bnez	a6,1b3ac <__letf2+0xa0>
   1b356:	011e65b3          	or	a1,t3,a7
   1b35a:	0015b593          	seqz	a1,a1
   1b35e:	eb0d                	bnez	a4,1b390 <__letf2+0x84>
   1b360:	00c7e333          	or	t1,a5,a2
   1b364:	02031663          	bnez	t1,1b390 <__letf2+0x84>
   1b368:	e185                	bnez	a1,1b388 <__letf2+0x7c>
   1b36a:	c10d                	beqz	a0,1b38c <__letf2+0x80>
   1b36c:	557d                	li	a0,-1
   1b36e:	8082                	ret
   1b370:	557d                	li	a0,-1
   1b372:	c69d                	beqz	a3,1b3a0 <__letf2+0x94>
   1b374:	8536                	mv	a0,a3
   1b376:	8082                	ret
   1b378:	ffc7e9e3          	bltu	a5,t3,1b36a <__letf2+0x5e>
   1b37c:	02fe1363          	bne	t3,a5,1b3a2 <__letf2+0x96>
   1b380:	ff1665e3          	bltu	a2,a7,1b36a <__letf2+0x5e>
   1b384:	00c8ed63          	bltu	a7,a2,1b39e <__letf2+0x92>
   1b388:	4501                	li	a0,0
   1b38a:	8082                	ret
   1b38c:	4505                	li	a0,1
   1b38e:	8082                	ret
   1b390:	f1e5                	bnez	a1,1b370 <__letf2+0x64>
   1b392:	fcd51ce3          	bne	a0,a3,1b36a <__letf2+0x5e>
   1b396:	fd074ae3          	blt	a4,a6,1b36a <__letf2+0x5e>
   1b39a:	fce85fe3          	bge	a6,a4,1b378 <__letf2+0x6c>
   1b39e:	d579                	beqz	a0,1b36c <__letf2+0x60>
   1b3a0:	8082                	ret
   1b3a2:	fefe6ee3          	bltu	t3,a5,1b39e <__letf2+0x92>
   1b3a6:	b7cd                	j	1b388 <__letf2+0x7c>
   1b3a8:	fb0702e3          	beq	a4,a6,1b34c <__letf2+0x40>
   1b3ac:	f37d                	bnez	a4,1b392 <__letf2+0x86>
   1b3ae:	4581                	li	a1,0
   1b3b0:	bf45                	j	1b360 <__letf2+0x54>

000000000001b3b2 <__multf3>:
   1b3b2:	711d                	addi	sp,sp,-96
   1b3b4:	e8a2                	sd	s0,80(sp)
   1b3b6:	f456                	sd	s5,40(sp)
   1b3b8:	e862                	sd	s8,16(sp)
   1b3ba:	ec86                	sd	ra,88(sp)
   1b3bc:	e4a6                	sd	s1,72(sp)
   1b3be:	e0ca                	sd	s2,64(sp)
   1b3c0:	fc4e                	sd	s3,56(sp)
   1b3c2:	f852                	sd	s4,48(sp)
   1b3c4:	f05a                	sd	s6,32(sp)
   1b3c6:	ec5e                	sd	s7,24(sp)
   1b3c8:	e466                	sd	s9,8(sp)
   1b3ca:	842a                	mv	s0,a0
   1b3cc:	8c32                	mv	s8,a2
   1b3ce:	8ab6                	mv	s5,a3
   1b3d0:	00202973          	frrm	s2
   1b3d4:	6721                	lui	a4,0x8
   1b3d6:	0305d793          	srli	a5,a1,0x30
   1b3da:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b3dc:	01059993          	slli	s3,a1,0x10
   1b3e0:	8ff9                	and	a5,a5,a4
   1b3e2:	2901                	sext.w	s2,s2
   1b3e4:	0109d993          	srli	s3,s3,0x10
   1b3e8:	03f5db13          	srli	s6,a1,0x3f
   1b3ec:	c795                	beqz	a5,1b418 <__multf3+0x66>
   1b3ee:	00078b9b          	sext.w	s7,a5
   1b3f2:	08e78463          	beq	a5,a4,1b47a <__multf3+0xc8>
   1b3f6:	098e                	slli	s3,s3,0x3
   1b3f8:	03d55713          	srli	a4,a0,0x3d
   1b3fc:	01376733          	or	a4,a4,s3
   1b400:	7bf1                	lui	s7,0xffffc
   1b402:	4985                	li	s3,1
   1b404:	19ce                	slli	s3,s3,0x33
   1b406:	0b85                	addi	s7,s7,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdc6e1>
   1b408:	013769b3          	or	s3,a4,s3
   1b40c:	00351a13          	slli	s4,a0,0x3
   1b410:	9bbe                	add	s7,s7,a5
   1b412:	4c81                	li	s9,0
   1b414:	4481                	li	s1,0
   1b416:	a8b5                	j	1b492 <__multf3+0xe0>
   1b418:	00a9ea33          	or	s4,s3,a0
   1b41c:	2c0a0263          	beqz	s4,1b6e0 <__multf3+0x32e>
   1b420:	04098263          	beqz	s3,1b464 <__multf3+0xb2>
   1b424:	854e                	mv	a0,s3
   1b426:	20a010ef          	jal	ra,1c630 <__clzdi2>
   1b42a:	0005079b          	sext.w	a5,a0
   1b42e:	ff178693          	addi	a3,a5,-15
   1b432:	03c00613          	li	a2,60
   1b436:	0006871b          	sext.w	a4,a3
   1b43a:	02d64a63          	blt	a2,a3,1b46e <__multf3+0xbc>
   1b43e:	03d00693          	li	a3,61
   1b442:	00370a1b          	addiw	s4,a4,3
   1b446:	40e6873b          	subw	a4,a3,a4
   1b44a:	014999b3          	sll	s3,s3,s4
   1b44e:	00e45733          	srl	a4,s0,a4
   1b452:	013769b3          	or	s3,a4,s3
   1b456:	01441a33          	sll	s4,s0,s4
   1b45a:	7bf1                	lui	s7,0xffffc
   1b45c:	0bc5                	addi	s7,s7,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc6f1>
   1b45e:	40fb8bb3          	sub	s7,s7,a5
   1b462:	bf45                	j	1b412 <__multf3+0x60>
   1b464:	1cc010ef          	jal	ra,1c630 <__clzdi2>
   1b468:	0405079b          	addiw	a5,a0,64
   1b46c:	b7c9                	j	1b42e <__multf3+0x7c>
   1b46e:	fc37071b          	addiw	a4,a4,-61
   1b472:	00e419b3          	sll	s3,s0,a4
   1b476:	4a01                	li	s4,0
   1b478:	b7cd                	j	1b45a <__multf3+0xa8>
   1b47a:	00a9ea33          	or	s4,s3,a0
   1b47e:	260a0563          	beqz	s4,1b6e8 <__multf3+0x336>
   1b482:	02f9d493          	srli	s1,s3,0x2f
   1b486:	0014c493          	xori	s1,s1,1
   1b48a:	8885                	andi	s1,s1,1
   1b48c:	0492                	slli	s1,s1,0x4
   1b48e:	8a2a                	mv	s4,a0
   1b490:	4c8d                	li	s9,3
   1b492:	66a1                	lui	a3,0x8
   1b494:	030ad613          	srli	a2,s5,0x30
   1b498:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1b49a:	010a9413          	slli	s0,s5,0x10
   1b49e:	8e75                	and	a2,a2,a3
   1b4a0:	87e2                	mv	a5,s8
   1b4a2:	8041                	srli	s0,s0,0x10
   1b4a4:	03fada93          	srli	s5,s5,0x3f
   1b4a8:	24060363          	beqz	a2,1b6ee <__multf3+0x33c>
   1b4ac:	0006071b          	sext.w	a4,a2
   1b4b0:	28d60c63          	beq	a2,a3,1b748 <__multf3+0x396>
   1b4b4:	040e                	slli	s0,s0,0x3
   1b4b6:	03dc5713          	srli	a4,s8,0x3d
   1b4ba:	8f41                	or	a4,a4,s0
   1b4bc:	4405                	li	s0,1
   1b4be:	144e                	slli	s0,s0,0x33
   1b4c0:	8c59                	or	s0,s0,a4
   1b4c2:	7771                	lui	a4,0xffffc
   1b4c4:	0705                	addi	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdc6e1>
   1b4c6:	003c1793          	slli	a5,s8,0x3
   1b4ca:	9732                	add	a4,a4,a2
   1b4cc:	4881                	li	a7,0
   1b4ce:	017706b3          	add	a3,a4,s7
   1b4d2:	002c9713          	slli	a4,s9,0x2
   1b4d6:	01176733          	or	a4,a4,a7
   1b4da:	45a9                	li	a1,10
   1b4dc:	015b4633          	xor	a2,s6,s5
   1b4e0:	00168813          	addi	a6,a3,1
   1b4e4:	2ce5c163          	blt	a1,a4,1b7a6 <__multf3+0x3f4>
   1b4e8:	4589                	li	a1,2
   1b4ea:	28e5c363          	blt	a1,a4,1b770 <__multf3+0x3be>
   1b4ee:	177d                	addi	a4,a4,-1
   1b4f0:	4585                	li	a1,1
   1b4f2:	28e5fe63          	bgeu	a1,a4,1b78e <__multf3+0x3dc>
   1b4f6:	577d                	li	a4,-1
   1b4f8:	9301                	srli	a4,a4,0x20
   1b4fa:	014983b3          	add	t2,s3,s4
   1b4fe:	00878f33          	add	t5,a5,s0
   1b502:	020a5593          	srli	a1,s4,0x20
   1b506:	0207d513          	srli	a0,a5,0x20
   1b50a:	0143bfb3          	sltu	t6,t2,s4
   1b50e:	00ff32b3          	sltu	t0,t5,a5
   1b512:	00ea7a33          	and	s4,s4,a4
   1b516:	8ff9                	and	a5,a5,a4
   1b518:	034788b3          	mul	a7,a5,s4
   1b51c:	8e7e                	mv	t3,t6
   1b51e:	8316                	mv	t1,t0
   1b520:	02a58733          	mul	a4,a1,a0
   1b524:	02f587b3          	mul	a5,a1,a5
   1b528:	03450533          	mul	a0,a0,s4
   1b52c:	00f505b3          	add	a1,a0,a5
   1b530:	0208d513          	srli	a0,a7,0x20
   1b534:	952e                	add	a0,a0,a1
   1b536:	00f57563          	bgeu	a0,a5,1b540 <__multf3+0x18e>
   1b53a:	4785                	li	a5,1
   1b53c:	1782                	slli	a5,a5,0x20
   1b53e:	973e                	add	a4,a4,a5
   1b540:	57fd                	li	a5,-1
   1b542:	9381                	srli	a5,a5,0x20
   1b544:	02055e93          	srli	t4,a0,0x20
   1b548:	8d7d                	and	a0,a0,a5
   1b54a:	00f8f8b3          	and	a7,a7,a5
   1b54e:	1502                	slli	a0,a0,0x20
   1b550:	0203da93          	srli	s5,t2,0x20
   1b554:	9eba                	add	t4,t4,a4
   1b556:	9546                	add	a0,a0,a7
   1b558:	020f5713          	srli	a4,t5,0x20
   1b55c:	00f3f8b3          	and	a7,t2,a5
   1b560:	00ff77b3          	and	a5,t5,a5
   1b564:	031785b3          	mul	a1,a5,a7
   1b568:	02fa87b3          	mul	a5,s5,a5
   1b56c:	02ea8ab3          	mul	s5,s5,a4
   1b570:	03170733          	mul	a4,a4,a7
   1b574:	00f708b3          	add	a7,a4,a5
   1b578:	0205d713          	srli	a4,a1,0x20
   1b57c:	9746                	add	a4,a4,a7
   1b57e:	00f77563          	bgeu	a4,a5,1b588 <__multf3+0x1d6>
   1b582:	4785                	li	a5,1
   1b584:	1782                	slli	a5,a5,0x20
   1b586:	9abe                	add	s5,s5,a5
   1b588:	57fd                	li	a5,-1
   1b58a:	9381                	srli	a5,a5,0x20
   1b58c:	02075a13          	srli	s4,a4,0x20
   1b590:	8f7d                	and	a4,a4,a5
   1b592:	8dfd                	and	a1,a1,a5
   1b594:	1702                	slli	a4,a4,0x20
   1b596:	0209d893          	srli	a7,s3,0x20
   1b59a:	972e                	add	a4,a4,a1
   1b59c:	00f9f9b3          	and	s3,s3,a5
   1b5a0:	02045593          	srli	a1,s0,0x20
   1b5a4:	8fe1                	and	a5,a5,s0
   1b5a6:	02f98b33          	mul	s6,s3,a5
   1b5aa:	02b88433          	mul	s0,a7,a1
   1b5ae:	02f887b3          	mul	a5,a7,a5
   1b5b2:	020b5893          	srli	a7,s6,0x20
   1b5b6:	033585b3          	mul	a1,a1,s3
   1b5ba:	95be                	add	a1,a1,a5
   1b5bc:	98ae                	add	a7,a7,a1
   1b5be:	00f8f563          	bgeu	a7,a5,1b5c8 <__multf3+0x216>
   1b5c2:	4785                	li	a5,1
   1b5c4:	1782                	slli	a5,a5,0x20
   1b5c6:	943e                	add	s0,s0,a5
   1b5c8:	0208d593          	srli	a1,a7,0x20
   1b5cc:	95a2                	add	a1,a1,s0
   1b5ce:	547d                	li	s0,-1
   1b5d0:	9001                	srli	s0,s0,0x20
   1b5d2:	9776                	add	a4,a4,t4
   1b5d4:	0088f7b3          	and	a5,a7,s0
   1b5d8:	01d738b3          	sltu	a7,a4,t4
   1b5dc:	008b7b33          	and	s6,s6,s0
   1b5e0:	40600333          	neg	t1,t1
   1b5e4:	011a0433          	add	s0,s4,a7
   1b5e8:	9456                	add	s0,s0,s5
   1b5ea:	00737333          	and	t1,t1,t2
   1b5ee:	41c00e33          	neg	t3,t3
   1b5f2:	9322                	add	t1,t1,s0
   1b5f4:	005fffb3          	and	t6,t6,t0
   1b5f8:	01ee7e33          	and	t3,t3,t5
   1b5fc:	011438b3          	sltu	a7,s0,a7
   1b600:	9e1a                	add	t3,t3,t1
   1b602:	98fe                	add	a7,a7,t6
   1b604:	00833433          	sltu	s0,t1,s0
   1b608:	98a2                	add	a7,a7,s0
   1b60a:	006e3333          	sltu	t1,t3,t1
   1b60e:	40a70f33          	sub	t5,a4,a0
   1b612:	01e73fb3          	sltu	t6,a4,t5
   1b616:	1782                	slli	a5,a5,0x20
   1b618:	989a                	add	a7,a7,t1
   1b61a:	41de0333          	sub	t1,t3,t4
   1b61e:	006e32b3          	sltu	t0,t3,t1
   1b622:	97da                	add	a5,a5,s6
   1b624:	41f30333          	sub	t1,t1,t6
   1b628:	4f81                	li	t6,0
   1b62a:	01e77663          	bgeu	a4,t5,1b636 <__multf3+0x284>
   1b62e:	41ce8eb3          	sub	t4,t4,t3
   1b632:	001ebf93          	seqz	t6,t4
   1b636:	40ff0e33          	sub	t3,t5,a5
   1b63a:	98ae                	add	a7,a7,a1
   1b63c:	01cf3733          	sltu	a4,t5,t3
   1b640:	40b305b3          	sub	a1,t1,a1
   1b644:	005fefb3          	or	t6,t6,t0
   1b648:	00b33333          	sltu	t1,t1,a1
   1b64c:	40e78733          	sub	a4,a5,a4
   1b650:	4e81                	li	t4,0
   1b652:	01cf7463          	bgeu	t5,t3,1b65a <__multf3+0x2a8>
   1b656:	0015be93          	seqz	t4,a1
   1b65a:	95ba                	add	a1,a1,a4
   1b65c:	00f5b733          	sltu	a4,a1,a5
   1b660:	9746                	add	a4,a4,a7
   1b662:	41f70733          	sub	a4,a4,t6
   1b666:	006eeeb3          	or	t4,t4,t1
   1b66a:	41d70733          	sub	a4,a4,t4
   1b66e:	00de1793          	slli	a5,t3,0xd
   1b672:	0736                	slli	a4,a4,0xd
   1b674:	0335d413          	srli	s0,a1,0x33
   1b678:	8fc9                	or	a5,a5,a0
   1b67a:	8c59                	or	s0,s0,a4
   1b67c:	00f037b3          	snez	a5,a5
   1b680:	033e5513          	srli	a0,t3,0x33
   1b684:	9351                	srli	a4,a4,0x34
   1b686:	8fc9                	or	a5,a5,a0
   1b688:	05b6                	slli	a1,a1,0xd
   1b68a:	8b05                	andi	a4,a4,1
   1b68c:	8fcd                	or	a5,a5,a1
   1b68e:	12070d63          	beqz	a4,1b7c8 <__multf3+0x416>
   1b692:	0017d713          	srli	a4,a5,0x1
   1b696:	8b85                	andi	a5,a5,1
   1b698:	8f5d                	or	a4,a4,a5
   1b69a:	03f41793          	slli	a5,s0,0x3f
   1b69e:	8fd9                	or	a5,a5,a4
   1b6a0:	8005                	srli	s0,s0,0x1
   1b6a2:	6711                	lui	a4,0x4
   1b6a4:	177d                	addi	a4,a4,-1 # 3fff <exit-0xc0e9>
   1b6a6:	9742                	add	a4,a4,a6
   1b6a8:	1ae05c63          	blez	a4,1b860 <__multf3+0x4ae>
   1b6ac:	0077f693          	andi	a3,a5,7
   1b6b0:	12068363          	beqz	a3,1b7d6 <__multf3+0x424>
   1b6b4:	4689                	li	a3,2
   1b6b6:	0014e493          	ori	s1,s1,1
   1b6ba:	10d90d63          	beq	s2,a3,1b7d4 <__multf3+0x422>
   1b6be:	468d                	li	a3,3
   1b6c0:	10d90663          	beq	s2,a3,1b7cc <__multf3+0x41a>
   1b6c4:	10091963          	bnez	s2,1b7d6 <__multf3+0x424>
   1b6c8:	00f7f693          	andi	a3,a5,15
   1b6cc:	4591                	li	a1,4
   1b6ce:	10b68463          	beq	a3,a1,1b7d6 <__multf3+0x424>
   1b6d2:	00478693          	addi	a3,a5,4
   1b6d6:	00f6b7b3          	sltu	a5,a3,a5
   1b6da:	943e                	add	s0,s0,a5
   1b6dc:	87b6                	mv	a5,a3
   1b6de:	a8e5                	j	1b7d6 <__multf3+0x424>
   1b6e0:	4981                	li	s3,0
   1b6e2:	4b81                	li	s7,0
   1b6e4:	4c85                	li	s9,1
   1b6e6:	b33d                	j	1b414 <__multf3+0x62>
   1b6e8:	4981                	li	s3,0
   1b6ea:	4c89                	li	s9,2
   1b6ec:	b325                	j	1b414 <__multf3+0x62>
   1b6ee:	008c67b3          	or	a5,s8,s0
   1b6f2:	c7b5                	beqz	a5,1b75e <__multf3+0x3ac>
   1b6f4:	cc15                	beqz	s0,1b730 <__multf3+0x37e>
   1b6f6:	8522                	mv	a0,s0
   1b6f8:	739000ef          	jal	ra,1c630 <__clzdi2>
   1b6fc:	2501                	sext.w	a0,a0
   1b6fe:	ff150793          	addi	a5,a0,-15
   1b702:	03c00693          	li	a3,60
   1b706:	0007871b          	sext.w	a4,a5
   1b70a:	02f6c963          	blt	a3,a5,1b73c <__multf3+0x38a>
   1b70e:	03d00693          	li	a3,61
   1b712:	0037079b          	addiw	a5,a4,3
   1b716:	40e6873b          	subw	a4,a3,a4
   1b71a:	00f41433          	sll	s0,s0,a5
   1b71e:	00ec5733          	srl	a4,s8,a4
   1b722:	8c59                	or	s0,s0,a4
   1b724:	00fc17b3          	sll	a5,s8,a5
   1b728:	7771                	lui	a4,0xffffc
   1b72a:	0745                	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc6f1>
   1b72c:	8f09                	sub	a4,a4,a0
   1b72e:	bb79                	j	1b4cc <__multf3+0x11a>
   1b730:	8562                	mv	a0,s8
   1b732:	6ff000ef          	jal	ra,1c630 <__clzdi2>
   1b736:	0405051b          	addiw	a0,a0,64
   1b73a:	b7d1                	j	1b6fe <__multf3+0x34c>
   1b73c:	fc37071b          	addiw	a4,a4,-61
   1b740:	00ec1433          	sll	s0,s8,a4
   1b744:	4781                	li	a5,0
   1b746:	b7cd                	j	1b728 <__multf3+0x376>
   1b748:	008c66b3          	or	a3,s8,s0
   1b74c:	ce91                	beqz	a3,1b768 <__multf3+0x3b6>
   1b74e:	02f45693          	srli	a3,s0,0x2f
   1b752:	8a85                	andi	a3,a3,1
   1b754:	488d                	li	a7,3
   1b756:	d6069ce3          	bnez	a3,1b4ce <__multf3+0x11c>
   1b75a:	44c1                	li	s1,16
   1b75c:	bb8d                	j	1b4ce <__multf3+0x11c>
   1b75e:	4401                	li	s0,0
   1b760:	4781                	li	a5,0
   1b762:	4701                	li	a4,0
   1b764:	4885                	li	a7,1
   1b766:	b3a5                	j	1b4ce <__multf3+0x11c>
   1b768:	4401                	li	s0,0
   1b76a:	4781                	li	a5,0
   1b76c:	4889                	li	a7,2
   1b76e:	b385                	j	1b4ce <__multf3+0x11c>
   1b770:	4585                	li	a1,1
   1b772:	00e59733          	sll	a4,a1,a4
   1b776:	53077513          	andi	a0,a4,1328
   1b77a:	ed0d                	bnez	a0,1b7b4 <__multf3+0x402>
   1b77c:	24077313          	andi	t1,a4,576
   1b780:	22031c63          	bnez	t1,1b9b8 <__multf3+0x606>
   1b784:	08877713          	andi	a4,a4,136
   1b788:	d60707e3          	beqz	a4,1b4f6 <__multf3+0x144>
   1b78c:	8656                	mv	a2,s5
   1b78e:	4709                	li	a4,2
   1b790:	22e88a63          	beq	a7,a4,1b9c4 <__multf3+0x612>
   1b794:	470d                	li	a4,3
   1b796:	22e88c63          	beq	a7,a4,1b9ce <__multf3+0x61c>
   1b79a:	4705                	li	a4,1
   1b79c:	f0e893e3          	bne	a7,a4,1b6a2 <__multf3+0x2f0>
   1b7a0:	4581                	li	a1,0
   1b7a2:	4501                	li	a0,0
   1b7a4:	a409                	j	1b9a6 <__multf3+0x5f4>
   1b7a6:	46bd                	li	a3,15
   1b7a8:	00d70a63          	beq	a4,a3,1b7bc <__multf3+0x40a>
   1b7ac:	46ad                	li	a3,11
   1b7ae:	fcd70fe3          	beq	a4,a3,1b78c <__multf3+0x3da>
   1b7b2:	865a                	mv	a2,s6
   1b7b4:	844e                	mv	s0,s3
   1b7b6:	87d2                	mv	a5,s4
   1b7b8:	88e6                	mv	a7,s9
   1b7ba:	bfd1                	j	1b78e <__multf3+0x3dc>
   1b7bc:	4405                	li	s0,1
   1b7be:	143e                	slli	s0,s0,0x2f
   1b7c0:	4781                	li	a5,0
   1b7c2:	4601                	li	a2,0
   1b7c4:	488d                	li	a7,3
   1b7c6:	b7f9                	j	1b794 <__multf3+0x3e2>
   1b7c8:	8836                	mv	a6,a3
   1b7ca:	bde1                	j	1b6a2 <__multf3+0x2f0>
   1b7cc:	e609                	bnez	a2,1b7d6 <__multf3+0x424>
   1b7ce:	00878693          	addi	a3,a5,8
   1b7d2:	b711                	j	1b6d6 <__multf3+0x324>
   1b7d4:	fe6d                	bnez	a2,1b7ce <__multf3+0x41c>
   1b7d6:	03445693          	srli	a3,s0,0x34
   1b7da:	8a85                	andi	a3,a3,1
   1b7dc:	c699                	beqz	a3,1b7ea <__multf3+0x438>
   1b7de:	577d                	li	a4,-1
   1b7e0:	1752                	slli	a4,a4,0x34
   1b7e2:	177d                	addi	a4,a4,-1
   1b7e4:	8c79                	and	s0,s0,a4
   1b7e6:	6711                	lui	a4,0x4
   1b7e8:	9742                	add	a4,a4,a6
   1b7ea:	66a1                	lui	a3,0x8
   1b7ec:	ffe68593          	addi	a1,a3,-2 # 7ffe <exit-0x80ea>
   1b7f0:	04e5c063          	blt	a1,a4,1b830 <__multf3+0x47e>
   1b7f4:	838d                	srli	a5,a5,0x3
   1b7f6:	03d41513          	slli	a0,s0,0x3d
   1b7fa:	8d5d                	or	a0,a0,a5
   1b7fc:	00345593          	srli	a1,s0,0x3
   1b800:	1746                	slli	a4,a4,0x31
   1b802:	9345                	srli	a4,a4,0x31
   1b804:	063e                	slli	a2,a2,0xf
   1b806:	05c2                	slli	a1,a1,0x10
   1b808:	8e59                	or	a2,a2,a4
   1b80a:	1642                	slli	a2,a2,0x30
   1b80c:	81c1                	srli	a1,a1,0x10
   1b80e:	8dd1                	or	a1,a1,a2
   1b810:	c099                	beqz	s1,1b816 <__multf3+0x464>
   1b812:	0014a073          	csrs	fflags,s1
   1b816:	60e6                	ld	ra,88(sp)
   1b818:	6446                	ld	s0,80(sp)
   1b81a:	64a6                	ld	s1,72(sp)
   1b81c:	6906                	ld	s2,64(sp)
   1b81e:	79e2                	ld	s3,56(sp)
   1b820:	7a42                	ld	s4,48(sp)
   1b822:	7aa2                	ld	s5,40(sp)
   1b824:	7b02                	ld	s6,32(sp)
   1b826:	6be2                	ld	s7,24(sp)
   1b828:	6c42                	ld	s8,16(sp)
   1b82a:	6ca2                	ld	s9,8(sp)
   1b82c:	6125                	addi	sp,sp,96
   1b82e:	8082                	ret
   1b830:	4789                	li	a5,2
   1b832:	02f90263          	beq	s2,a5,1b856 <__multf3+0x4a4>
   1b836:	478d                	li	a5,3
   1b838:	16fd                	addi	a3,a3,-1
   1b83a:	00f90763          	beq	s2,a5,1b848 <__multf3+0x496>
   1b83e:	00091663          	bnez	s2,1b84a <__multf3+0x498>
   1b842:	4501                	li	a0,0
   1b844:	8736                	mv	a4,a3
   1b846:	a021                	j	1b84e <__multf3+0x49c>
   1b848:	de6d                	beqz	a2,1b842 <__multf3+0x490>
   1b84a:	557d                	li	a0,-1
   1b84c:	872e                	mv	a4,a1
   1b84e:	0054e493          	ori	s1,s1,5
   1b852:	85aa                	mv	a1,a0
   1b854:	b775                	j	1b800 <__multf3+0x44e>
   1b856:	da75                	beqz	a2,1b84a <__multf3+0x498>
   1b858:	4501                	li	a0,0
   1b85a:	fff68713          	addi	a4,a3,-1
   1b85e:	bfc5                	j	1b84e <__multf3+0x49c>
   1b860:	4685                	li	a3,1
   1b862:	e729                	bnez	a4,1b8ac <__multf3+0x4fa>
   1b864:	0077f593          	andi	a1,a5,7
   1b868:	86a2                	mv	a3,s0
   1b86a:	cd8d                	beqz	a1,1b8a4 <__multf3+0x4f2>
   1b86c:	4589                	li	a1,2
   1b86e:	0014e493          	ori	s1,s1,1
   1b872:	02b90863          	beq	s2,a1,1b8a2 <__multf3+0x4f0>
   1b876:	458d                	li	a1,3
   1b878:	02b90163          	beq	s2,a1,1b89a <__multf3+0x4e8>
   1b87c:	02091463          	bnez	s2,1b8a4 <__multf3+0x4f2>
   1b880:	00f7f593          	andi	a1,a5,15
   1b884:	4511                	li	a0,4
   1b886:	00a58f63          	beq	a1,a0,1b8a4 <__multf3+0x4f2>
   1b88a:	ffc7b693          	sltiu	a3,a5,-4
   1b88e:	0016c693          	xori	a3,a3,1
   1b892:	1682                	slli	a3,a3,0x20
   1b894:	9281                	srli	a3,a3,0x20
   1b896:	96a2                	add	a3,a3,s0
   1b898:	a031                	j	1b8a4 <__multf3+0x4f2>
   1b89a:	e609                	bnez	a2,1b8a4 <__multf3+0x4f2>
   1b89c:	ff87b693          	sltiu	a3,a5,-8
   1b8a0:	b7fd                	j	1b88e <__multf3+0x4dc>
   1b8a2:	fe6d                	bnez	a2,1b89c <__multf3+0x4ea>
   1b8a4:	92d1                	srli	a3,a3,0x34
   1b8a6:	0016c693          	xori	a3,a3,1
   1b8aa:	8a85                	andi	a3,a3,1
   1b8ac:	4805                	li	a6,1
   1b8ae:	40e80833          	sub	a6,a6,a4
   1b8b2:	07400713          	li	a4,116
   1b8b6:	0d074563          	blt	a4,a6,1b980 <__multf3+0x5ce>
   1b8ba:	03f00713          	li	a4,63
   1b8be:	0008059b          	sext.w	a1,a6
   1b8c2:	05074b63          	blt	a4,a6,1b918 <__multf3+0x566>
   1b8c6:	04000713          	li	a4,64
   1b8ca:	9f0d                	subw	a4,a4,a1
   1b8cc:	00e41533          	sll	a0,s0,a4
   1b8d0:	00b7d833          	srl	a6,a5,a1
   1b8d4:	00e79733          	sll	a4,a5,a4
   1b8d8:	01056533          	or	a0,a0,a6
   1b8dc:	00e03733          	snez	a4,a4
   1b8e0:	8d59                	or	a0,a0,a4
   1b8e2:	00b455b3          	srl	a1,s0,a1
   1b8e6:	00757793          	andi	a5,a0,7
   1b8ea:	c3a5                	beqz	a5,1b94a <__multf3+0x598>
   1b8ec:	4789                	li	a5,2
   1b8ee:	0014e493          	ori	s1,s1,1
   1b8f2:	04f90b63          	beq	s2,a5,1b948 <__multf3+0x596>
   1b8f6:	478d                	li	a5,3
   1b8f8:	04f90463          	beq	s2,a5,1b940 <__multf3+0x58e>
   1b8fc:	04091763          	bnez	s2,1b94a <__multf3+0x598>
   1b900:	00f57793          	andi	a5,a0,15
   1b904:	4711                	li	a4,4
   1b906:	04e78263          	beq	a5,a4,1b94a <__multf3+0x598>
   1b90a:	00450793          	addi	a5,a0,4
   1b90e:	00a7b533          	sltu	a0,a5,a0
   1b912:	95aa                	add	a1,a1,a0
   1b914:	853e                	mv	a0,a5
   1b916:	a815                	j	1b94a <__multf3+0x598>
   1b918:	fc05851b          	addiw	a0,a1,-64
   1b91c:	04000893          	li	a7,64
   1b920:	00a45533          	srl	a0,s0,a0
   1b924:	4701                	li	a4,0
   1b926:	01180763          	beq	a6,a7,1b934 <__multf3+0x582>
   1b92a:	08000713          	li	a4,128
   1b92e:	9f0d                	subw	a4,a4,a1
   1b930:	00e41733          	sll	a4,s0,a4
   1b934:	8f5d                	or	a4,a4,a5
   1b936:	00e03733          	snez	a4,a4
   1b93a:	8d59                	or	a0,a0,a4
   1b93c:	4581                	li	a1,0
   1b93e:	b765                	j	1b8e6 <__multf3+0x534>
   1b940:	e609                	bnez	a2,1b94a <__multf3+0x598>
   1b942:	00850793          	addi	a5,a0,8
   1b946:	b7e1                	j	1b90e <__multf3+0x55c>
   1b948:	fe6d                	bnez	a2,1b942 <__multf3+0x590>
   1b94a:	0335d793          	srli	a5,a1,0x33
   1b94e:	8b85                	andi	a5,a5,1
   1b950:	cb99                	beqz	a5,1b966 <__multf3+0x5b4>
   1b952:	0014e493          	ori	s1,s1,1
   1b956:	4581                	li	a1,0
   1b958:	4501                	li	a0,0
   1b95a:	4705                	li	a4,1
   1b95c:	ea0682e3          	beqz	a3,1b800 <__multf3+0x44e>
   1b960:	0024e493          	ori	s1,s1,2
   1b964:	bd71                	j	1b800 <__multf3+0x44e>
   1b966:	03d59793          	slli	a5,a1,0x3d
   1b96a:	810d                	srli	a0,a0,0x3
   1b96c:	8d5d                	or	a0,a0,a5
   1b96e:	818d                	srli	a1,a1,0x3
   1b970:	4701                	li	a4,0
   1b972:	e80687e3          	beqz	a3,1b800 <__multf3+0x44e>
   1b976:	0014f793          	andi	a5,s1,1
   1b97a:	e80783e3          	beqz	a5,1b800 <__multf3+0x44e>
   1b97e:	b7cd                	j	1b960 <__multf3+0x5ae>
   1b980:	0087e533          	or	a0,a5,s0
   1b984:	cd11                	beqz	a0,1b9a0 <__multf3+0x5ee>
   1b986:	4789                	li	a5,2
   1b988:	0014e493          	ori	s1,s1,1
   1b98c:	02f90363          	beq	s2,a5,1b9b2 <__multf3+0x600>
   1b990:	478d                	li	a5,3
   1b992:	00f90c63          	beq	s2,a5,1b9aa <__multf3+0x5f8>
   1b996:	4505                	li	a0,1
   1b998:	00091363          	bnez	s2,1b99e <__multf3+0x5ec>
   1b99c:	4515                	li	a0,5
   1b99e:	810d                	srli	a0,a0,0x3
   1b9a0:	0024e493          	ori	s1,s1,2
   1b9a4:	4581                	li	a1,0
   1b9a6:	4701                	li	a4,0
   1b9a8:	bda1                	j	1b800 <__multf3+0x44e>
   1b9aa:	4525                	li	a0,9
   1b9ac:	da6d                	beqz	a2,1b99e <__multf3+0x5ec>
   1b9ae:	4505                	li	a0,1
   1b9b0:	b7fd                	j	1b99e <__multf3+0x5ec>
   1b9b2:	4525                	li	a0,9
   1b9b4:	f66d                	bnez	a2,1b99e <__multf3+0x5ec>
   1b9b6:	bfe5                	j	1b9ae <__multf3+0x5fc>
   1b9b8:	6721                	lui	a4,0x8
   1b9ba:	15be                	slli	a1,a1,0x2f
   1b9bc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b9be:	4601                	li	a2,0
   1b9c0:	44c1                	li	s1,16
   1b9c2:	bd3d                	j	1b800 <__multf3+0x44e>
   1b9c4:	6721                	lui	a4,0x8
   1b9c6:	4581                	li	a1,0
   1b9c8:	4501                	li	a0,0
   1b9ca:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b9cc:	bd15                	j	1b800 <__multf3+0x44e>
   1b9ce:	4585                	li	a1,1
   1b9d0:	6721                	lui	a4,0x8
   1b9d2:	15be                	slli	a1,a1,0x2f
   1b9d4:	4501                	li	a0,0
   1b9d6:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b9d8:	4601                	li	a2,0
   1b9da:	b51d                	j	1b800 <__multf3+0x44e>

000000000001b9dc <__subtf3>:
   1b9dc:	7179                	addi	sp,sp,-48
   1b9de:	f406                	sd	ra,40(sp)
   1b9e0:	f022                	sd	s0,32(sp)
   1b9e2:	ec26                	sd	s1,24(sp)
   1b9e4:	e84a                	sd	s2,16(sp)
   1b9e6:	e44e                	sd	s3,8(sp)
   1b9e8:	e052                	sd	s4,0(sp)
   1b9ea:	002024f3          	frrm	s1
   1b9ee:	577d                	li	a4,-1
   1b9f0:	8341                	srli	a4,a4,0x10
   1b9f2:	6e21                	lui	t3,0x8
   1b9f4:	0305d813          	srli	a6,a1,0x30
   1b9f8:	1e7d                	addi	t3,t3,-1 # 7fff <exit-0x80e9>
   1b9fa:	0306d893          	srli	a7,a3,0x30
   1b9fe:	03f5d913          	srli	s2,a1,0x3f
   1ba02:	03f6d313          	srli	t1,a3,0x3f
   1ba06:	8df9                	and	a1,a1,a4
   1ba08:	8ef9                	and	a3,a3,a4
   1ba0a:	03d55793          	srli	a5,a0,0x3d
   1ba0e:	00369713          	slli	a4,a3,0x3
   1ba12:	01c87833          	and	a6,a6,t3
   1ba16:	03d65693          	srli	a3,a2,0x3d
   1ba1a:	058e                	slli	a1,a1,0x3
   1ba1c:	01c8f8b3          	and	a7,a7,t3
   1ba20:	2481                	sext.w	s1,s1
   1ba22:	8442                	mv	s0,a6
   1ba24:	8fcd                	or	a5,a5,a1
   1ba26:	050e                	slli	a0,a0,0x3
   1ba28:	8ed9                	or	a3,a3,a4
   1ba2a:	060e                	slli	a2,a2,0x3
   1ba2c:	01c89563          	bne	a7,t3,1ba36 <__subtf3+0x5a>
   1ba30:	00c6e733          	or	a4,a3,a2
   1ba34:	e319                	bnez	a4,1ba3a <__subtf3+0x5e>
   1ba36:	00134313          	xori	t1,t1,1
   1ba3a:	4118073b          	subw	a4,a6,a7
   1ba3e:	6e21                	lui	t3,0x8
   1ba40:	0007059b          	sext.w	a1,a4
   1ba44:	fffe0e93          	addi	t4,t3,-1 # 7fff <exit-0x80e9>
   1ba48:	3b231a63          	bne	t1,s2,1bdfc <__subtf3+0x420>
   1ba4c:	10b05563          	blez	a1,1bb56 <__subtf3+0x17a>
   1ba50:	08089163          	bnez	a7,1bad2 <__subtf3+0xf6>
   1ba54:	00c6e5b3          	or	a1,a3,a2
   1ba58:	ed91                	bnez	a1,1ba74 <__subtf3+0x98>
   1ba5a:	75d81663          	bne	a6,t4,1c1a6 <__subtf3+0x7ca>
   1ba5e:	00a7e733          	or	a4,a5,a0
   1ba62:	78070a63          	beqz	a4,1c1f6 <__subtf3+0x81a>
   1ba66:	0327d713          	srli	a4,a5,0x32
   1ba6a:	00174713          	xori	a4,a4,1
   1ba6e:	8b05                	andi	a4,a4,1
   1ba70:	0712                	slli	a4,a4,0x4
   1ba72:	aa01                	j	1bb82 <__subtf3+0x1a6>
   1ba74:	fff7059b          	addiw	a1,a4,-1
   1ba78:	e1a1                	bnez	a1,1bab8 <__subtf3+0xdc>
   1ba7a:	962a                	add	a2,a2,a0
   1ba7c:	96be                	add	a3,a3,a5
   1ba7e:	00a637b3          	sltu	a5,a2,a0
   1ba82:	97b6                	add	a5,a5,a3
   1ba84:	8532                	mv	a0,a2
   1ba86:	0337d713          	srli	a4,a5,0x33
   1ba8a:	8b05                	andi	a4,a4,1
   1ba8c:	70070d63          	beqz	a4,1c1a6 <__subtf3+0x7ca>
   1ba90:	6721                	lui	a4,0x8
   1ba92:	0405                	addi	s0,s0,1
   1ba94:	fff70693          	addi	a3,a4,-1 # 7fff <exit-0x80e9>
   1ba98:	34d40063          	beq	s0,a3,1bdd8 <__subtf3+0x3fc>
   1ba9c:	577d                	li	a4,-1
   1ba9e:	174e                	slli	a4,a4,0x33
   1baa0:	177d                	addi	a4,a4,-1
   1baa2:	8ff9                	and	a5,a5,a4
   1baa4:	00155713          	srli	a4,a0,0x1
   1baa8:	8905                	andi	a0,a0,1
   1baaa:	8f49                	or	a4,a4,a0
   1baac:	03f79513          	slli	a0,a5,0x3f
   1bab0:	8d59                	or	a0,a0,a4
   1bab2:	8385                	srli	a5,a5,0x1
   1bab4:	4581                	li	a1,0
   1bab6:	a4e9                	j	1bd80 <__subtf3+0x3a4>
   1bab8:	03d81263          	bne	a6,t4,1badc <__subtf3+0x100>
   1babc:	00a7e733          	or	a4,a5,a0
   1bac0:	72070b63          	beqz	a4,1c1f6 <__subtf3+0x81a>
   1bac4:	0327d713          	srli	a4,a5,0x32
   1bac8:	00174713          	xori	a4,a4,1
   1bacc:	8b05                	andi	a4,a4,1
   1bace:	0712                	slli	a4,a4,0x4
   1bad0:	a209                	j	1bbd2 <__subtf3+0x1f6>
   1bad2:	ffd805e3          	beq	a6,t4,1babc <__subtf3+0xe0>
   1bad6:	4705                	li	a4,1
   1bad8:	174e                	slli	a4,a4,0x33
   1bada:	8ed9                	or	a3,a3,a4
   1badc:	07400713          	li	a4,116
   1bae0:	06b74663          	blt	a4,a1,1bb4c <__subtf3+0x170>
   1bae4:	03f00713          	li	a4,63
   1bae8:	02b74b63          	blt	a4,a1,1bb1e <__subtf3+0x142>
   1baec:	04000813          	li	a6,64
   1baf0:	40b8083b          	subw	a6,a6,a1
   1baf4:	01069733          	sll	a4,a3,a6
   1baf8:	00b658b3          	srl	a7,a2,a1
   1bafc:	01061833          	sll	a6,a2,a6
   1bb00:	01176733          	or	a4,a4,a7
   1bb04:	01003833          	snez	a6,a6
   1bb08:	01076733          	or	a4,a4,a6
   1bb0c:	00b6d5b3          	srl	a1,a3,a1
   1bb10:	972a                	add	a4,a4,a0
   1bb12:	95be                	add	a1,a1,a5
   1bb14:	00a737b3          	sltu	a5,a4,a0
   1bb18:	97ae                	add	a5,a5,a1
   1bb1a:	853a                	mv	a0,a4
   1bb1c:	b7ad                	j	1ba86 <__subtf3+0xaa>
   1bb1e:	fc05871b          	addiw	a4,a1,-64
   1bb22:	04000893          	li	a7,64
   1bb26:	00e6d733          	srl	a4,a3,a4
   1bb2a:	4801                	li	a6,0
   1bb2c:	01158863          	beq	a1,a7,1bb3c <__subtf3+0x160>
   1bb30:	08000813          	li	a6,128
   1bb34:	40b8083b          	subw	a6,a6,a1
   1bb38:	01069833          	sll	a6,a3,a6
   1bb3c:	00c86833          	or	a6,a6,a2
   1bb40:	01003833          	snez	a6,a6
   1bb44:	01076733          	or	a4,a4,a6
   1bb48:	4581                	li	a1,0
   1bb4a:	b7d9                	j	1bb10 <__subtf3+0x134>
   1bb4c:	00c6e733          	or	a4,a3,a2
   1bb50:	00e03733          	snez	a4,a4
   1bb54:	bfd5                	j	1bb48 <__subtf3+0x16c>
   1bb56:	10058563          	beqz	a1,1bc60 <__subtf3+0x284>
   1bb5a:	06081e63          	bnez	a6,1bbd6 <__subtf3+0x1fa>
   1bb5e:	00a7e5b3          	or	a1,a5,a0
   1bb62:	ed8d                	bnez	a1,1bb9c <__subtf3+0x1c0>
   1bb64:	65d89463          	bne	a7,t4,1c1ac <__subtf3+0x7d0>
   1bb68:	00c6e533          	or	a0,a3,a2
   1bb6c:	68050163          	beqz	a0,1c1ee <__subtf3+0x812>
   1bb70:	0326d713          	srli	a4,a3,0x32
   1bb74:	00174713          	xori	a4,a4,1
   1bb78:	8b05                	andi	a4,a4,1
   1bb7a:	0712                	slli	a4,a4,0x4
   1bb7c:	87b6                	mv	a5,a3
   1bb7e:	8532                	mv	a0,a2
   1bb80:	8446                	mv	s0,a7
   1bb82:	00757693          	andi	a3,a0,7
   1bb86:	22069263          	bnez	a3,1bdaa <__subtf3+0x3ce>
   1bb8a:	16058963          	beqz	a1,1bcfc <__subtf3+0x320>
   1bb8e:	00177693          	andi	a3,a4,1
   1bb92:	16068563          	beqz	a3,1bcfc <__subtf3+0x320>
   1bb96:	00276713          	ori	a4,a4,2
   1bb9a:	a28d                	j	1bcfc <__subtf3+0x320>
   1bb9c:	fff74713          	not	a4,a4
   1bba0:	2701                	sext.w	a4,a4
   1bba2:	eb09                	bnez	a4,1bbb4 <__subtf3+0x1d8>
   1bba4:	9532                	add	a0,a0,a2
   1bba6:	96be                	add	a3,a3,a5
   1bba8:	00c53633          	sltu	a2,a0,a2
   1bbac:	00c687b3          	add	a5,a3,a2
   1bbb0:	8446                	mv	s0,a7
   1bbb2:	bdd1                	j	1ba86 <__subtf3+0xaa>
   1bbb4:	03d89863          	bne	a7,t4,1bbe4 <__subtf3+0x208>
   1bbb8:	00c6e533          	or	a0,a3,a2
   1bbbc:	62050963          	beqz	a0,1c1ee <__subtf3+0x812>
   1bbc0:	0326d713          	srli	a4,a3,0x32
   1bbc4:	00174713          	xori	a4,a4,1
   1bbc8:	8b05                	andi	a4,a4,1
   1bbca:	0712                	slli	a4,a4,0x4
   1bbcc:	87b6                	mv	a5,a3
   1bbce:	8532                	mv	a0,a2
   1bbd0:	8446                	mv	s0,a7
   1bbd2:	4581                	li	a1,0
   1bbd4:	b77d                	j	1bb82 <__subtf3+0x1a6>
   1bbd6:	ffd881e3          	beq	a7,t4,1bbb8 <__subtf3+0x1dc>
   1bbda:	4585                	li	a1,1
   1bbdc:	15ce                	slli	a1,a1,0x33
   1bbde:	40e0073b          	negw	a4,a4
   1bbe2:	8fcd                	or	a5,a5,a1
   1bbe4:	07400593          	li	a1,116
   1bbe8:	06e5c763          	blt	a1,a4,1bc56 <__subtf3+0x27a>
   1bbec:	03f00593          	li	a1,63
   1bbf0:	02e5cc63          	blt	a1,a4,1bc28 <__subtf3+0x24c>
   1bbf4:	04000813          	li	a6,64
   1bbf8:	40e8083b          	subw	a6,a6,a4
   1bbfc:	010795b3          	sll	a1,a5,a6
   1bc00:	00e55333          	srl	t1,a0,a4
   1bc04:	01051833          	sll	a6,a0,a6
   1bc08:	0065e5b3          	or	a1,a1,t1
   1bc0c:	01003833          	snez	a6,a6
   1bc10:	0105e5b3          	or	a1,a1,a6
   1bc14:	00e7d733          	srl	a4,a5,a4
   1bc18:	00c58533          	add	a0,a1,a2
   1bc1c:	9736                	add	a4,a4,a3
   1bc1e:	00c53633          	sltu	a2,a0,a2
   1bc22:	00c707b3          	add	a5,a4,a2
   1bc26:	b769                	j	1bbb0 <__subtf3+0x1d4>
   1bc28:	fc07059b          	addiw	a1,a4,-64
   1bc2c:	04000313          	li	t1,64
   1bc30:	00b7d5b3          	srl	a1,a5,a1
   1bc34:	4801                	li	a6,0
   1bc36:	00670863          	beq	a4,t1,1bc46 <__subtf3+0x26a>
   1bc3a:	08000813          	li	a6,128
   1bc3e:	40e8083b          	subw	a6,a6,a4
   1bc42:	01079833          	sll	a6,a5,a6
   1bc46:	00a86833          	or	a6,a6,a0
   1bc4a:	01003833          	snez	a6,a6
   1bc4e:	0105e5b3          	or	a1,a1,a6
   1bc52:	4701                	li	a4,0
   1bc54:	b7d1                	j	1bc18 <__subtf3+0x23c>
   1bc56:	00a7e5b3          	or	a1,a5,a0
   1bc5a:	00b035b3          	snez	a1,a1
   1bc5e:	bfd5                	j	1bc52 <__subtf3+0x276>
   1bc60:	00180413          	addi	s0,a6,1
   1bc64:	ffee0713          	addi	a4,t3,-2
   1bc68:	00e47333          	and	t1,s0,a4
   1bc6c:	0e031d63          	bnez	t1,1bd66 <__subtf3+0x38a>
   1bc70:	00a7e333          	or	t1,a5,a0
   1bc74:	02081a63          	bnez	a6,1bca8 <__subtf3+0x2cc>
   1bc78:	54030363          	beqz	t1,1c1be <__subtf3+0x7e2>
   1bc7c:	00c6e733          	or	a4,a3,a2
   1bc80:	36070863          	beqz	a4,1bff0 <__subtf3+0x614>
   1bc84:	962a                	add	a2,a2,a0
   1bc86:	96be                	add	a3,a3,a5
   1bc88:	00a637b3          	sltu	a5,a2,a0
   1bc8c:	97b6                	add	a5,a5,a3
   1bc8e:	0337d713          	srli	a4,a5,0x33
   1bc92:	8b05                	andi	a4,a4,1
   1bc94:	52070663          	beqz	a4,1c1c0 <__subtf3+0x7e4>
   1bc98:	577d                	li	a4,-1
   1bc9a:	174e                	slli	a4,a4,0x33
   1bc9c:	177d                	addi	a4,a4,-1
   1bc9e:	8ff9                	and	a5,a5,a4
   1bca0:	8532                	mv	a0,a2
   1bca2:	4701                	li	a4,0
   1bca4:	4405                	li	s0,1
   1bca6:	bdf1                	j	1bb82 <__subtf3+0x1a6>
   1bca8:	03d81863          	bne	a6,t4,1bcd8 <__subtf3+0x2fc>
   1bcac:	5a030863          	beqz	t1,1c25c <__subtf3+0x880>
   1bcb0:	0327d713          	srli	a4,a5,0x32
   1bcb4:	00174713          	xori	a4,a4,1
   1bcb8:	8b05                	andi	a4,a4,1
   1bcba:	0712                	slli	a4,a4,0x4
   1bcbc:	03089863          	bne	a7,a6,1bcec <__subtf3+0x310>
   1bcc0:	00c6e833          	or	a6,a3,a2
   1bcc4:	00080d63          	beqz	a6,1bcde <__subtf3+0x302>
   1bcc8:	0326d813          	srli	a6,a3,0x32
   1bccc:	00187813          	andi	a6,a6,1
   1bcd0:	00081763          	bnez	a6,1bcde <__subtf3+0x302>
   1bcd4:	4741                	li	a4,16
   1bcd6:	a021                	j	1bcde <__subtf3+0x302>
   1bcd8:	4701                	li	a4,0
   1bcda:	ffd883e3          	beq	a7,t4,1bcc0 <__subtf3+0x2e4>
   1bcde:	00031763          	bnez	t1,1bcec <__subtf3+0x310>
   1bce2:	87b6                	mv	a5,a3
   1bce4:	8532                	mv	a0,a2
   1bce6:	6421                	lui	s0,0x8
   1bce8:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1bcea:	bd61                	j	1bb82 <__subtf3+0x1a6>
   1bcec:	8ed1                	or	a3,a3,a2
   1bcee:	dee5                	beqz	a3,1bce6 <__subtf3+0x30a>
   1bcf0:	4785                	li	a5,1
   1bcf2:	6421                	lui	s0,0x8
   1bcf4:	4901                	li	s2,0
   1bcf6:	17ca                	slli	a5,a5,0x32
   1bcf8:	4501                	li	a0,0
   1bcfa:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1bcfc:	0337d693          	srli	a3,a5,0x33
   1bd00:	8a85                	andi	a3,a3,1
   1bd02:	ca99                	beqz	a3,1bd18 <__subtf3+0x33c>
   1bd04:	66a1                	lui	a3,0x8
   1bd06:	0405                	addi	s0,s0,1
   1bd08:	fff68613          	addi	a2,a3,-1 # 7fff <exit-0x80e9>
   1bd0c:	52c40063          	beq	s0,a2,1c22c <__subtf3+0x850>
   1bd10:	56fd                	li	a3,-1
   1bd12:	16ce                	slli	a3,a3,0x33
   1bd14:	16fd                	addi	a3,a3,-1
   1bd16:	8ff5                	and	a5,a5,a3
   1bd18:	00355693          	srli	a3,a0,0x3
   1bd1c:	03d79513          	slli	a0,a5,0x3d
   1bd20:	8d55                	or	a0,a0,a3
   1bd22:	66a1                	lui	a3,0x8
   1bd24:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1bd26:	838d                	srli	a5,a5,0x3
   1bd28:	00d41963          	bne	s0,a3,1bd3a <__subtf3+0x35e>
   1bd2c:	8d5d                	or	a0,a0,a5
   1bd2e:	4781                	li	a5,0
   1bd30:	c509                	beqz	a0,1bd3a <__subtf3+0x35e>
   1bd32:	4785                	li	a5,1
   1bd34:	17be                	slli	a5,a5,0x2f
   1bd36:	4501                	li	a0,0
   1bd38:	4901                	li	s2,0
   1bd3a:	1446                	slli	s0,s0,0x31
   1bd3c:	00f9191b          	slliw	s2,s2,0xf
   1bd40:	9045                	srli	s0,s0,0x31
   1bd42:	07c2                	slli	a5,a5,0x10
   1bd44:	01246433          	or	s0,s0,s2
   1bd48:	1442                	slli	s0,s0,0x30
   1bd4a:	0107d593          	srli	a1,a5,0x10
   1bd4e:	8dc1                	or	a1,a1,s0
   1bd50:	c319                	beqz	a4,1bd56 <__subtf3+0x37a>
   1bd52:	00172073          	csrs	fflags,a4
   1bd56:	70a2                	ld	ra,40(sp)
   1bd58:	7402                	ld	s0,32(sp)
   1bd5a:	64e2                	ld	s1,24(sp)
   1bd5c:	6942                	ld	s2,16(sp)
   1bd5e:	69a2                	ld	s3,8(sp)
   1bd60:	6a02                	ld	s4,0(sp)
   1bd62:	6145                	addi	sp,sp,48
   1bd64:	8082                	ret
   1bd66:	01d40f63          	beq	s0,t4,1bd84 <__subtf3+0x3a8>
   1bd6a:	962a                	add	a2,a2,a0
   1bd6c:	00a63533          	sltu	a0,a2,a0
   1bd70:	96be                	add	a3,a3,a5
   1bd72:	96aa                	add	a3,a3,a0
   1bd74:	03f69513          	slli	a0,a3,0x3f
   1bd78:	8205                	srli	a2,a2,0x1
   1bd7a:	8d51                	or	a0,a0,a2
   1bd7c:	0016d793          	srli	a5,a3,0x1
   1bd80:	4701                	li	a4,0
   1bd82:	b501                	j	1bb82 <__subtf3+0x1a6>
   1bd84:	c491                	beqz	s1,1bd90 <__subtf3+0x3b4>
   1bd86:	478d                	li	a5,3
   1bd88:	00f49863          	bne	s1,a5,1bd98 <__subtf3+0x3bc>
   1bd8c:	00091b63          	bnez	s2,1bda2 <__subtf3+0x3c6>
   1bd90:	4781                	li	a5,0
   1bd92:	4501                	li	a0,0
   1bd94:	4715                	li	a4,5
   1bd96:	b79d                	j	1bcfc <__subtf3+0x320>
   1bd98:	4789                	li	a5,2
   1bd9a:	00f49463          	bne	s1,a5,1bda2 <__subtf3+0x3c6>
   1bd9e:	fe0919e3          	bnez	s2,1bd90 <__subtf3+0x3b4>
   1bda2:	57fd                	li	a5,-1
   1bda4:	557d                	li	a0,-1
   1bda6:	843a                	mv	s0,a4
   1bda8:	4715                	li	a4,5
   1bdaa:	4689                	li	a3,2
   1bdac:	00176713          	ori	a4,a4,1
   1bdb0:	46d48b63          	beq	s1,a3,1c226 <__subtf3+0x84a>
   1bdb4:	468d                	li	a3,3
   1bdb6:	46d48363          	beq	s1,a3,1c21c <__subtf3+0x840>
   1bdba:	ec81                	bnez	s1,1bdd2 <__subtf3+0x3f6>
   1bdbc:	00f57693          	andi	a3,a0,15
   1bdc0:	4611                	li	a2,4
   1bdc2:	00c68863          	beq	a3,a2,1bdd2 <__subtf3+0x3f6>
   1bdc6:	00450693          	addi	a3,a0,4
   1bdca:	00a6b533          	sltu	a0,a3,a0
   1bdce:	97aa                	add	a5,a5,a0
   1bdd0:	8536                	mv	a0,a3
   1bdd2:	dc0592e3          	bnez	a1,1bb96 <__subtf3+0x1ba>
   1bdd6:	b71d                	j	1bcfc <__subtf3+0x320>
   1bdd8:	dcc5                	beqz	s1,1bd90 <__subtf3+0x3b4>
   1bdda:	478d                	li	a5,3
   1bddc:	00f49a63          	bne	s1,a5,1bdf0 <__subtf3+0x414>
   1bde0:	fa0908e3          	beqz	s2,1bd90 <__subtf3+0x3b4>
   1bde4:	57fd                	li	a5,-1
   1bde6:	557d                	li	a0,-1
   1bde8:	ffe70413          	addi	s0,a4,-2
   1bdec:	4581                	li	a1,0
   1bdee:	bf6d                	j	1bda8 <__subtf3+0x3cc>
   1bdf0:	4789                	li	a5,2
   1bdf2:	fef499e3          	bne	s1,a5,1bde4 <__subtf3+0x408>
   1bdf6:	f8091de3          	bnez	s2,1bd90 <__subtf3+0x3b4>
   1bdfa:	b7ed                	j	1bde4 <__subtf3+0x408>
   1bdfc:	0cb05763          	blez	a1,1beca <__subtf3+0x4ee>
   1be00:	08089363          	bnez	a7,1be86 <__subtf3+0x4aa>
   1be04:	00c6e5b3          	or	a1,a3,a2
   1be08:	c40589e3          	beqz	a1,1ba5a <__subtf3+0x7e>
   1be0c:	fff7059b          	addiw	a1,a4,-1
   1be10:	e58d                	bnez	a1,1be3a <__subtf3+0x45e>
   1be12:	40c50633          	sub	a2,a0,a2
   1be16:	40d786b3          	sub	a3,a5,a3
   1be1a:	00c537b3          	sltu	a5,a0,a2
   1be1e:	40f687b3          	sub	a5,a3,a5
   1be22:	8532                	mv	a0,a2
   1be24:	0337d713          	srli	a4,a5,0x33
   1be28:	8b05                	andi	a4,a4,1
   1be2a:	36070e63          	beqz	a4,1c1a6 <__subtf3+0x7ca>
   1be2e:	00d79993          	slli	s3,a5,0xd
   1be32:	00d9d993          	srli	s3,s3,0xd
   1be36:	8a2a                	mv	s4,a0
   1be38:	ac65                	j	1c0f0 <__subtf3+0x714>
   1be3a:	c9d801e3          	beq	a6,t4,1babc <__subtf3+0xe0>
   1be3e:	07400713          	li	a4,116
   1be42:	06b74f63          	blt	a4,a1,1bec0 <__subtf3+0x4e4>
   1be46:	03f00713          	li	a4,63
   1be4a:	04b74463          	blt	a4,a1,1be92 <__subtf3+0x4b6>
   1be4e:	04000813          	li	a6,64
   1be52:	40b8083b          	subw	a6,a6,a1
   1be56:	01069733          	sll	a4,a3,a6
   1be5a:	00b658b3          	srl	a7,a2,a1
   1be5e:	01061833          	sll	a6,a2,a6
   1be62:	01176733          	or	a4,a4,a7
   1be66:	01003833          	snez	a6,a6
   1be6a:	01076733          	or	a4,a4,a6
   1be6e:	00b6d5b3          	srl	a1,a3,a1
   1be72:	40e50733          	sub	a4,a0,a4
   1be76:	40b785b3          	sub	a1,a5,a1
   1be7a:	00e537b3          	sltu	a5,a0,a4
   1be7e:	40f587b3          	sub	a5,a1,a5
   1be82:	853a                	mv	a0,a4
   1be84:	b745                	j	1be24 <__subtf3+0x448>
   1be86:	c3d80be3          	beq	a6,t4,1babc <__subtf3+0xe0>
   1be8a:	4705                	li	a4,1
   1be8c:	174e                	slli	a4,a4,0x33
   1be8e:	8ed9                	or	a3,a3,a4
   1be90:	b77d                	j	1be3e <__subtf3+0x462>
   1be92:	fc05871b          	addiw	a4,a1,-64
   1be96:	04000893          	li	a7,64
   1be9a:	00e6d733          	srl	a4,a3,a4
   1be9e:	4801                	li	a6,0
   1bea0:	01158863          	beq	a1,a7,1beb0 <__subtf3+0x4d4>
   1bea4:	08000813          	li	a6,128
   1bea8:	40b8083b          	subw	a6,a6,a1
   1beac:	01069833          	sll	a6,a3,a6
   1beb0:	00c86833          	or	a6,a6,a2
   1beb4:	01003833          	snez	a6,a6
   1beb8:	01076733          	or	a4,a4,a6
   1bebc:	4581                	li	a1,0
   1bebe:	bf55                	j	1be72 <__subtf3+0x496>
   1bec0:	00c6e733          	or	a4,a3,a2
   1bec4:	00e03733          	snez	a4,a4
   1bec8:	bfd5                	j	1bebc <__subtf3+0x4e0>
   1beca:	cde5                	beqz	a1,1bfc2 <__subtf3+0x5e6>
   1becc:	06081563          	bnez	a6,1bf36 <__subtf3+0x55a>
   1bed0:	00a7e5b3          	or	a1,a5,a0
   1bed4:	e195                	bnez	a1,1bef8 <__subtf3+0x51c>
   1bed6:	2dd89f63          	bne	a7,t4,1c1b4 <__subtf3+0x7d8>
   1beda:	00c6e533          	or	a0,a3,a2
   1bede:	30050f63          	beqz	a0,1c1fc <__subtf3+0x820>
   1bee2:	0326d713          	srli	a4,a3,0x32
   1bee6:	00174713          	xori	a4,a4,1
   1beea:	8b05                	andi	a4,a4,1
   1beec:	0712                	slli	a4,a4,0x4
   1beee:	87b6                	mv	a5,a3
   1bef0:	8532                	mv	a0,a2
   1bef2:	8446                	mv	s0,a7
   1bef4:	891a                	mv	s2,t1
   1bef6:	b171                	j	1bb82 <__subtf3+0x1a6>
   1bef8:	fff74713          	not	a4,a4
   1befc:	2701                	sext.w	a4,a4
   1befe:	eb19                	bnez	a4,1bf14 <__subtf3+0x538>
   1bf00:	40a60533          	sub	a0,a2,a0
   1bf04:	8e9d                	sub	a3,a3,a5
   1bf06:	00a63633          	sltu	a2,a2,a0
   1bf0a:	40c687b3          	sub	a5,a3,a2
   1bf0e:	8446                	mv	s0,a7
   1bf10:	891a                	mv	s2,t1
   1bf12:	bf09                	j	1be24 <__subtf3+0x448>
   1bf14:	03d89863          	bne	a7,t4,1bf44 <__subtf3+0x568>
   1bf18:	00c6e533          	or	a0,a3,a2
   1bf1c:	2e050063          	beqz	a0,1c1fc <__subtf3+0x820>
   1bf20:	0326d713          	srli	a4,a3,0x32
   1bf24:	00174713          	xori	a4,a4,1
   1bf28:	8b05                	andi	a4,a4,1
   1bf2a:	0712                	slli	a4,a4,0x4
   1bf2c:	87b6                	mv	a5,a3
   1bf2e:	8532                	mv	a0,a2
   1bf30:	8446                	mv	s0,a7
   1bf32:	891a                	mv	s2,t1
   1bf34:	b979                	j	1bbd2 <__subtf3+0x1f6>
   1bf36:	ffd881e3          	beq	a7,t4,1bf18 <__subtf3+0x53c>
   1bf3a:	4585                	li	a1,1
   1bf3c:	15ce                	slli	a1,a1,0x33
   1bf3e:	40e0073b          	negw	a4,a4
   1bf42:	8fcd                	or	a5,a5,a1
   1bf44:	07400593          	li	a1,116
   1bf48:	06e5c863          	blt	a1,a4,1bfb8 <__subtf3+0x5dc>
   1bf4c:	03f00593          	li	a1,63
   1bf50:	02e5cd63          	blt	a1,a4,1bf8a <__subtf3+0x5ae>
   1bf54:	04000813          	li	a6,64
   1bf58:	40e8083b          	subw	a6,a6,a4
   1bf5c:	010795b3          	sll	a1,a5,a6
   1bf60:	00e55e33          	srl	t3,a0,a4
   1bf64:	01051833          	sll	a6,a0,a6
   1bf68:	01c5e5b3          	or	a1,a1,t3
   1bf6c:	01003833          	snez	a6,a6
   1bf70:	0105e5b3          	or	a1,a1,a6
   1bf74:	00e7d733          	srl	a4,a5,a4
   1bf78:	40b60533          	sub	a0,a2,a1
   1bf7c:	40e68733          	sub	a4,a3,a4
   1bf80:	00a63633          	sltu	a2,a2,a0
   1bf84:	40c707b3          	sub	a5,a4,a2
   1bf88:	b759                	j	1bf0e <__subtf3+0x532>
   1bf8a:	fc07059b          	addiw	a1,a4,-64
   1bf8e:	04000e13          	li	t3,64
   1bf92:	00b7d5b3          	srl	a1,a5,a1
   1bf96:	4801                	li	a6,0
   1bf98:	01c70863          	beq	a4,t3,1bfa8 <__subtf3+0x5cc>
   1bf9c:	08000813          	li	a6,128
   1bfa0:	40e8083b          	subw	a6,a6,a4
   1bfa4:	01079833          	sll	a6,a5,a6
   1bfa8:	00a86833          	or	a6,a6,a0
   1bfac:	01003833          	snez	a6,a6
   1bfb0:	0105e5b3          	or	a1,a1,a6
   1bfb4:	4701                	li	a4,0
   1bfb6:	b7c9                	j	1bf78 <__subtf3+0x59c>
   1bfb8:	00a7e5b3          	or	a1,a5,a0
   1bfbc:	00b035b3          	snez	a1,a1
   1bfc0:	bfd5                	j	1bfb4 <__subtf3+0x5d8>
   1bfc2:	00180f13          	addi	t5,a6,1
   1bfc6:	ffee0713          	addi	a4,t3,-2
   1bfca:	00ef7733          	and	a4,t5,a4
   1bfce:	ef65                	bnez	a4,1c0c6 <__subtf3+0x6ea>
   1bfd0:	00c6ee33          	or	t3,a3,a2
   1bfd4:	00a7ef33          	or	t5,a5,a0
   1bfd8:	0a081363          	bnez	a6,1c07e <__subtf3+0x6a2>
   1bfdc:	040f1e63          	bnez	t5,1c038 <__subtf3+0x65c>
   1bfe0:	1e0e1263          	bnez	t3,1c1c4 <__subtf3+0x7e8>
   1bfe4:	ffe48913          	addi	s2,s1,-2
   1bfe8:	00193913          	seqz	s2,s2
   1bfec:	4781                	li	a5,0
   1bfee:	4501                	li	a0,0
   1bff0:	00f56733          	or	a4,a0,a5
   1bff4:	22070063          	beqz	a4,1c214 <__subtf3+0x838>
   1bff8:	00151693          	slli	a3,a0,0x1
   1bffc:	03f55713          	srli	a4,a0,0x3f
   1c000:	00179593          	slli	a1,a5,0x1
   1c004:	0076f613          	andi	a2,a3,7
   1c008:	95ba                	add	a1,a1,a4
   1c00a:	4701                	li	a4,0
   1c00c:	c205                	beqz	a2,1c02c <__subtf3+0x650>
   1c00e:	4709                	li	a4,2
   1c010:	1ce48b63          	beq	s1,a4,1c1e6 <__subtf3+0x80a>
   1c014:	470d                	li	a4,3
   1c016:	1ae48d63          	beq	s1,a4,1c1d0 <__subtf3+0x7f4>
   1c01a:	4705                	li	a4,1
   1c01c:	e881                	bnez	s1,1c02c <__subtf3+0x650>
   1c01e:	00f6f613          	andi	a2,a3,15
   1c022:	4811                	li	a6,4
   1c024:	ffc6b693          	sltiu	a3,a3,-4
   1c028:	1b061963          	bne	a2,a6,1c1da <__subtf3+0x7fe>
   1c02c:	91d1                	srli	a1,a1,0x34
   1c02e:	0015c593          	xori	a1,a1,1
   1c032:	8985                	andi	a1,a1,1
   1c034:	4401                	li	s0,0
   1c036:	b6b1                	j	1bb82 <__subtf3+0x1a6>
   1c038:	fa0e0ce3          	beqz	t3,1bff0 <__subtf3+0x614>
   1c03c:	40c505b3          	sub	a1,a0,a2
   1c040:	00b53833          	sltu	a6,a0,a1
   1c044:	40d78733          	sub	a4,a5,a3
   1c048:	41070733          	sub	a4,a4,a6
   1c04c:	03375813          	srli	a6,a4,0x33
   1c050:	00187813          	andi	a6,a6,1
   1c054:	00080b63          	beqz	a6,1c06a <__subtf3+0x68e>
   1c058:	40a60533          	sub	a0,a2,a0
   1c05c:	8e9d                	sub	a3,a3,a5
   1c05e:	00a63633          	sltu	a2,a2,a0
   1c062:	40c687b3          	sub	a5,a3,a2
   1c066:	891a                	mv	s2,t1
   1c068:	b761                	j	1bff0 <__subtf3+0x614>
   1c06a:	00e5e533          	or	a0,a1,a4
   1c06e:	14051e63          	bnez	a0,1c1ca <__subtf3+0x7ee>
   1c072:	ffe48913          	addi	s2,s1,-2
   1c076:	00193913          	seqz	s2,s2
   1c07a:	4781                	li	a5,0
   1c07c:	bf95                	j	1bff0 <__subtf3+0x614>
   1c07e:	03d81663          	bne	a6,t4,1c0aa <__subtf3+0x6ce>
   1c082:	1c0f0963          	beqz	t5,1c254 <__subtf3+0x878>
   1c086:	0327d713          	srli	a4,a5,0x32
   1c08a:	00174713          	xori	a4,a4,1
   1c08e:	8b05                	andi	a4,a4,1
   1c090:	0712                	slli	a4,a4,0x4
   1c092:	03089763          	bne	a7,a6,1c0c0 <__subtf3+0x6e4>
   1c096:	000e0d63          	beqz	t3,1c0b0 <__subtf3+0x6d4>
   1c09a:	0326d813          	srli	a6,a3,0x32
   1c09e:	00187813          	andi	a6,a6,1
   1c0a2:	00081763          	bnez	a6,1c0b0 <__subtf3+0x6d4>
   1c0a6:	4741                	li	a4,16
   1c0a8:	a021                	j	1c0b0 <__subtf3+0x6d4>
   1c0aa:	4701                	li	a4,0
   1c0ac:	ffd885e3          	beq	a7,t4,1c096 <__subtf3+0x6ba>
   1c0b0:	000f1863          	bnez	t5,1c0c0 <__subtf3+0x6e4>
   1c0b4:	140e0863          	beqz	t3,1c204 <__subtf3+0x828>
   1c0b8:	87b6                	mv	a5,a3
   1c0ba:	8532                	mv	a0,a2
   1c0bc:	891a                	mv	s2,t1
   1c0be:	b125                	j	1bce6 <__subtf3+0x30a>
   1c0c0:	c20e03e3          	beqz	t3,1bce6 <__subtf3+0x30a>
   1c0c4:	b135                	j	1bcf0 <__subtf3+0x314>
   1c0c6:	40c50a33          	sub	s4,a0,a2
   1c0ca:	01453733          	sltu	a4,a0,s4
   1c0ce:	40d789b3          	sub	s3,a5,a3
   1c0d2:	40e989b3          	sub	s3,s3,a4
   1c0d6:	0339d713          	srli	a4,s3,0x33
   1c0da:	8b05                	andi	a4,a4,1
   1c0dc:	cf25                	beqz	a4,1c154 <__subtf3+0x778>
   1c0de:	40a60a33          	sub	s4,a2,a0
   1c0e2:	40f689b3          	sub	s3,a3,a5
   1c0e6:	01463633          	sltu	a2,a2,s4
   1c0ea:	40c989b3          	sub	s3,s3,a2
   1c0ee:	891a                	mv	s2,t1
   1c0f0:	06098663          	beqz	s3,1c15c <__subtf3+0x780>
   1c0f4:	854e                	mv	a0,s3
   1c0f6:	53a000ef          	jal	ra,1c630 <__clzdi2>
   1c0fa:	2501                	sext.w	a0,a0
   1c0fc:	ff45069b          	addiw	a3,a0,-12
   1c100:	03f00793          	li	a5,63
   1c104:	8736                	mv	a4,a3
   1c106:	06d7c163          	blt	a5,a3,1c168 <__subtf3+0x78c>
   1c10a:	04000793          	li	a5,64
   1c10e:	9f95                	subw	a5,a5,a3
   1c110:	00d999b3          	sll	s3,s3,a3
   1c114:	00fa57b3          	srl	a5,s4,a5
   1c118:	0137e7b3          	or	a5,a5,s3
   1c11c:	00da1533          	sll	a0,s4,a3
   1c120:	0686ce63          	blt	a3,s0,1c19c <__subtf3+0x7c0>
   1c124:	9f01                	subw	a4,a4,s0
   1c126:	0017061b          	addiw	a2,a4,1
   1c12a:	03f00693          	li	a3,63
   1c12e:	04c6c363          	blt	a3,a2,1c174 <__subtf3+0x798>
   1c132:	04000713          	li	a4,64
   1c136:	9f11                	subw	a4,a4,a2
   1c138:	00e796b3          	sll	a3,a5,a4
   1c13c:	00c555b3          	srl	a1,a0,a2
   1c140:	00e51733          	sll	a4,a0,a4
   1c144:	8ecd                	or	a3,a3,a1
   1c146:	00e03733          	snez	a4,a4
   1c14a:	00e6e533          	or	a0,a3,a4
   1c14e:	00c7d7b3          	srl	a5,a5,a2
   1c152:	bd79                	j	1bff0 <__subtf3+0x614>
   1c154:	013a6533          	or	a0,s4,s3
   1c158:	fd41                	bnez	a0,1c0f0 <__subtf3+0x714>
   1c15a:	bf21                	j	1c072 <__subtf3+0x696>
   1c15c:	8552                	mv	a0,s4
   1c15e:	4d2000ef          	jal	ra,1c630 <__clzdi2>
   1c162:	0405051b          	addiw	a0,a0,64
   1c166:	bf59                	j	1c0fc <__subtf3+0x720>
   1c168:	fb45079b          	addiw	a5,a0,-76
   1c16c:	00fa17b3          	sll	a5,s4,a5
   1c170:	4501                	li	a0,0
   1c172:	b77d                	j	1c120 <__subtf3+0x744>
   1c174:	fc17071b          	addiw	a4,a4,-63
   1c178:	04000813          	li	a6,64
   1c17c:	00e7d6b3          	srl	a3,a5,a4
   1c180:	4701                	li	a4,0
   1c182:	01060763          	beq	a2,a6,1c190 <__subtf3+0x7b4>
   1c186:	08000713          	li	a4,128
   1c18a:	9f11                	subw	a4,a4,a2
   1c18c:	00e79733          	sll	a4,a5,a4
   1c190:	8f49                	or	a4,a4,a0
   1c192:	00e03733          	snez	a4,a4
   1c196:	00e6e533          	or	a0,a3,a4
   1c19a:	b5c5                	j	1c07a <__subtf3+0x69e>
   1c19c:	577d                	li	a4,-1
   1c19e:	174e                	slli	a4,a4,0x33
   1c1a0:	177d                	addi	a4,a4,-1
   1c1a2:	8c15                	sub	s0,s0,a3
   1c1a4:	8ff9                	and	a5,a5,a4
   1c1a6:	e40405e3          	beqz	s0,1bff0 <__subtf3+0x614>
   1c1aa:	b229                	j	1bab4 <__subtf3+0xd8>
   1c1ac:	87b6                	mv	a5,a3
   1c1ae:	8532                	mv	a0,a2
   1c1b0:	8446                	mv	s0,a7
   1c1b2:	bfd5                	j	1c1a6 <__subtf3+0x7ca>
   1c1b4:	87b6                	mv	a5,a3
   1c1b6:	8532                	mv	a0,a2
   1c1b8:	8446                	mv	s0,a7
   1c1ba:	891a                	mv	s2,t1
   1c1bc:	b7ed                	j	1c1a6 <__subtf3+0x7ca>
   1c1be:	87b6                	mv	a5,a3
   1c1c0:	8532                	mv	a0,a2
   1c1c2:	b53d                	j	1bff0 <__subtf3+0x614>
   1c1c4:	87b6                	mv	a5,a3
   1c1c6:	8532                	mv	a0,a2
   1c1c8:	bd79                	j	1c066 <__subtf3+0x68a>
   1c1ca:	87ba                	mv	a5,a4
   1c1cc:	852e                	mv	a0,a1
   1c1ce:	b50d                	j	1bff0 <__subtf3+0x614>
   1c1d0:	4705                	li	a4,1
   1c1d2:	e4091de3          	bnez	s2,1c02c <__subtf3+0x650>
   1c1d6:	ff86b693          	sltiu	a3,a3,-8
   1c1da:	0016c693          	xori	a3,a3,1
   1c1de:	1682                	slli	a3,a3,0x20
   1c1e0:	9281                	srli	a3,a3,0x20
   1c1e2:	95b6                	add	a1,a1,a3
   1c1e4:	b5a1                	j	1c02c <__subtf3+0x650>
   1c1e6:	4705                	li	a4,1
   1c1e8:	e40902e3          	beqz	s2,1c02c <__subtf3+0x650>
   1c1ec:	b7ed                	j	1c1d6 <__subtf3+0x7fa>
   1c1ee:	4781                	li	a5,0
   1c1f0:	8446                	mv	s0,a7
   1c1f2:	4701                	li	a4,0
   1c1f4:	b621                	j	1bcfc <__subtf3+0x320>
   1c1f6:	4781                	li	a5,0
   1c1f8:	4501                	li	a0,0
   1c1fa:	bfe5                	j	1c1f2 <__subtf3+0x816>
   1c1fc:	4781                	li	a5,0
   1c1fe:	8446                	mv	s0,a7
   1c200:	891a                	mv	s2,t1
   1c202:	bfc5                	j	1c1f2 <__subtf3+0x816>
   1c204:	4785                	li	a5,1
   1c206:	6421                	lui	s0,0x8
   1c208:	4501                	li	a0,0
   1c20a:	4901                	li	s2,0
   1c20c:	17ca                	slli	a5,a5,0x32
   1c20e:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1c210:	4741                	li	a4,16
   1c212:	b4ed                	j	1bcfc <__subtf3+0x320>
   1c214:	4781                	li	a5,0
   1c216:	4501                	li	a0,0
   1c218:	4401                	li	s0,0
   1c21a:	bfe1                	j	1c1f2 <__subtf3+0x816>
   1c21c:	ba091be3          	bnez	s2,1bdd2 <__subtf3+0x3f6>
   1c220:	00850693          	addi	a3,a0,8
   1c224:	b65d                	j	1bdca <__subtf3+0x3ee>
   1c226:	ba0906e3          	beqz	s2,1bdd2 <__subtf3+0x3f6>
   1c22a:	bfdd                	j	1c220 <__subtf3+0x844>
   1c22c:	4501                	li	a0,0
   1c22e:	cc99                	beqz	s1,1c24c <__subtf3+0x870>
   1c230:	478d                	li	a5,3
   1c232:	00f49863          	bne	s1,a5,1c242 <__subtf3+0x866>
   1c236:	00090b63          	beqz	s2,1c24c <__subtf3+0x870>
   1c23a:	557d                	li	a0,-1
   1c23c:	ffe68413          	addi	s0,a3,-2
   1c240:	a031                	j	1c24c <__subtf3+0x870>
   1c242:	4789                	li	a5,2
   1c244:	fef49be3          	bne	s1,a5,1c23a <__subtf3+0x85e>
   1c248:	fe0909e3          	beqz	s2,1c23a <__subtf3+0x85e>
   1c24c:	00576713          	ori	a4,a4,5
   1c250:	87aa                	mv	a5,a0
   1c252:	b4d9                	j	1bd18 <__subtf3+0x33c>
   1c254:	4701                	li	a4,0
   1c256:	e5089fe3          	bne	a7,a6,1c0b4 <__subtf3+0x6d8>
   1c25a:	bd35                	j	1c096 <__subtf3+0x6ba>
   1c25c:	4701                	li	a4,0
   1c25e:	a90892e3          	bne	a7,a6,1bce2 <__subtf3+0x306>
   1c262:	bcb9                	j	1bcc0 <__subtf3+0x2e4>

000000000001c264 <__fixtfsi>:
   1c264:	862a                	mv	a2,a0
   1c266:	002027f3          	frrm	a5
   1c26a:	6811                	lui	a6,0x4
   1c26c:	00159693          	slli	a3,a1,0x1
   1c270:	01059793          	slli	a5,a1,0x10
   1c274:	92c5                	srli	a3,a3,0x31
   1c276:	ffe80713          	addi	a4,a6,-2 # 3ffe <exit-0xc0ea>
   1c27a:	83c1                	srli	a5,a5,0x10
   1c27c:	91fd                	srli	a1,a1,0x3f
   1c27e:	00d74863          	blt	a4,a3,1c28e <__fixtfsi+0x2a>
   1c282:	e6a5                	bnez	a3,1c2ea <__fixtfsi+0x86>
   1c284:	00f56633          	or	a2,a0,a5
   1c288:	4501                	li	a0,0
   1c28a:	e61d                	bnez	a2,1c2b8 <__fixtfsi+0x54>
   1c28c:	8082                	ret
   1c28e:	01d80713          	addi	a4,a6,29
   1c292:	02d75563          	bge	a4,a3,1c2bc <__fixtfsi+0x58>
   1c296:	80000737          	lui	a4,0x80000
   1c29a:	fff74713          	not	a4,a4
   1c29e:	00b7053b          	addw	a0,a4,a1
   1c2a2:	c5b1                	beqz	a1,1c2ee <__fixtfsi+0x8a>
   1c2a4:	0879                	addi	a6,a6,30
   1c2a6:	4741                	li	a4,16
   1c2a8:	05069463          	bne	a3,a6,1c2f0 <__fixtfsi+0x8c>
   1c2ac:	0117d693          	srli	a3,a5,0x11
   1c2b0:	e2a1                	bnez	a3,1c2f0 <__fixtfsi+0x8c>
   1c2b2:	17be                	slli	a5,a5,0x2f
   1c2b4:	8fd1                	or	a5,a5,a2
   1c2b6:	cb8d                	beqz	a5,1c2e8 <__fixtfsi+0x84>
   1c2b8:	4705                	li	a4,1
   1c2ba:	a81d                	j	1c2f0 <__fixtfsi+0x8c>
   1c2bc:	4705                	li	a4,1
   1c2be:	1742                	slli	a4,a4,0x30
   1c2c0:	8fd9                	or	a5,a5,a4
   1c2c2:	6611                	lui	a2,0x4
   1c2c4:	7771                	lui	a4,0xffffc
   1c2c6:	2745                	addiw	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc6f1>
   1c2c8:	02f6061b          	addiw	a2,a2,47 # 402f <exit-0xc0b9>
   1c2cc:	9f35                	addw	a4,a4,a3
   1c2ce:	40d606bb          	subw	a3,a2,a3
   1c2d2:	00e79733          	sll	a4,a5,a4
   1c2d6:	00d7d7b3          	srl	a5,a5,a3
   1c2da:	8f49                	or	a4,a4,a0
   1c2dc:	0007851b          	sext.w	a0,a5
   1c2e0:	c199                	beqz	a1,1c2e6 <__fixtfsi+0x82>
   1c2e2:	40a0053b          	negw	a0,a0
   1c2e6:	fb69                	bnez	a4,1c2b8 <__fixtfsi+0x54>
   1c2e8:	8082                	ret
   1c2ea:	4501                	li	a0,0
   1c2ec:	b7f1                	j	1c2b8 <__fixtfsi+0x54>
   1c2ee:	4741                	li	a4,16
   1c2f0:	00172073          	csrs	fflags,a4
   1c2f4:	bfd5                	j	1c2e8 <__fixtfsi+0x84>

000000000001c2f6 <__floatsitf>:
   1c2f6:	1101                	addi	sp,sp,-32
   1c2f8:	ec06                	sd	ra,24(sp)
   1c2fa:	e822                	sd	s0,16(sp)
   1c2fc:	e426                	sd	s1,8(sp)
   1c2fe:	c139                	beqz	a0,1c344 <__floatsitf+0x4e>
   1c300:	0005079b          	sext.w	a5,a0
   1c304:	03f55493          	srli	s1,a0,0x3f
   1c308:	00055463          	bgez	a0,1c310 <__floatsitf+0x1a>
   1c30c:	40f007bb          	negw	a5,a5
   1c310:	02079413          	slli	s0,a5,0x20
   1c314:	9001                	srli	s0,s0,0x20
   1c316:	8522                	mv	a0,s0
   1c318:	318000ef          	jal	ra,1c630 <__clzdi2>
   1c31c:	6591                	lui	a1,0x4
   1c31e:	03e5859b          	addiw	a1,a1,62 # 403e <exit-0xc0aa>
   1c322:	9d89                	subw	a1,a1,a0
   1c324:	3545                	addiw	a0,a0,-15
   1c326:	00a417b3          	sll	a5,s0,a0
   1c32a:	60e2                	ld	ra,24(sp)
   1c32c:	6442                	ld	s0,16(sp)
   1c32e:	00f4949b          	slliw	s1,s1,0xf
   1c332:	8dc5                	or	a1,a1,s1
   1c334:	07c2                	slli	a5,a5,0x10
   1c336:	15c2                	slli	a1,a1,0x30
   1c338:	83c1                	srli	a5,a5,0x10
   1c33a:	64a2                	ld	s1,8(sp)
   1c33c:	4501                	li	a0,0
   1c33e:	8ddd                	or	a1,a1,a5
   1c340:	6105                	addi	sp,sp,32
   1c342:	8082                	ret
   1c344:	4781                	li	a5,0
   1c346:	4581                	li	a1,0
   1c348:	4481                	li	s1,0
   1c34a:	b7c5                	j	1c32a <__floatsitf+0x34>

000000000001c34c <__extenddftf2>:
   1c34c:	1101                	addi	sp,sp,-32
   1c34e:	e20507d3          	fmv.x.d	a5,fa0
   1c352:	ec06                	sd	ra,24(sp)
   1c354:	e822                	sd	s0,16(sp)
   1c356:	e426                	sd	s1,8(sp)
   1c358:	00202773          	frrm	a4
   1c35c:	0347d513          	srli	a0,a5,0x34
   1c360:	7ff57513          	andi	a0,a0,2047
   1c364:	00c79413          	slli	s0,a5,0xc
   1c368:	03f7d493          	srli	s1,a5,0x3f
   1c36c:	00150793          	addi	a5,a0,1
   1c370:	7fe7f793          	andi	a5,a5,2046
   1c374:	8031                	srli	s0,s0,0xc
   1c376:	cb91                	beqz	a5,1c38a <__extenddftf2+0x3e>
   1c378:	6791                	lui	a5,0x4
   1c37a:	c0078793          	addi	a5,a5,-1024 # 3c00 <exit-0xc4e8>
   1c37e:	953e                	add	a0,a0,a5
   1c380:	00445793          	srli	a5,s0,0x4
   1c384:	1472                	slli	s0,s0,0x3c
   1c386:	4701                	li	a4,0
   1c388:	a8b9                	j	1c3e6 <__extenddftf2+0x9a>
   1c38a:	ed1d                	bnez	a0,1c3c8 <__extenddftf2+0x7c>
   1c38c:	4781                	li	a5,0
   1c38e:	dc65                	beqz	s0,1c386 <__extenddftf2+0x3a>
   1c390:	8522                	mv	a0,s0
   1c392:	29e000ef          	jal	ra,1c630 <__clzdi2>
   1c396:	0005071b          	sext.w	a4,a0
   1c39a:	47b9                	li	a5,14
   1c39c:	02e7c063          	blt	a5,a4,1c3bc <__extenddftf2+0x70>
   1c3a0:	47bd                	li	a5,15
   1c3a2:	9f89                	subw	a5,a5,a0
   1c3a4:	0315071b          	addiw	a4,a0,49
   1c3a8:	00f457b3          	srl	a5,s0,a5
   1c3ac:	00e41433          	sll	s0,s0,a4
   1c3b0:	6711                	lui	a4,0x4
   1c3b2:	c0c7071b          	addiw	a4,a4,-1012 # 3c0c <exit-0xc4dc>
   1c3b6:	40a7053b          	subw	a0,a4,a0
   1c3ba:	b7f1                	j	1c386 <__extenddftf2+0x3a>
   1c3bc:	ff15079b          	addiw	a5,a0,-15
   1c3c0:	00f417b3          	sll	a5,s0,a5
   1c3c4:	4401                	li	s0,0
   1c3c6:	b7ed                	j	1c3b0 <__extenddftf2+0x64>
   1c3c8:	c021                	beqz	s0,1c408 <__extenddftf2+0xbc>
   1c3ca:	03345713          	srli	a4,s0,0x33
   1c3ce:	00174713          	xori	a4,a4,1
   1c3d2:	4685                	li	a3,1
   1c3d4:	00445793          	srli	a5,s0,0x4
   1c3d8:	8b05                	andi	a4,a4,1
   1c3da:	16be                	slli	a3,a3,0x2f
   1c3dc:	6521                	lui	a0,0x8
   1c3de:	0712                	slli	a4,a4,0x4
   1c3e0:	8fd5                	or	a5,a5,a3
   1c3e2:	1472                	slli	s0,s0,0x3c
   1c3e4:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1c3e6:	01079593          	slli	a1,a5,0x10
   1c3ea:	00f4979b          	slliw	a5,s1,0xf
   1c3ee:	8d5d                	or	a0,a0,a5
   1c3f0:	1542                	slli	a0,a0,0x30
   1c3f2:	81c1                	srli	a1,a1,0x10
   1c3f4:	8dc9                	or	a1,a1,a0
   1c3f6:	c319                	beqz	a4,1c3fc <__extenddftf2+0xb0>
   1c3f8:	00172073          	csrs	fflags,a4
   1c3fc:	60e2                	ld	ra,24(sp)
   1c3fe:	8522                	mv	a0,s0
   1c400:	6442                	ld	s0,16(sp)
   1c402:	64a2                	ld	s1,8(sp)
   1c404:	6105                	addi	sp,sp,32
   1c406:	8082                	ret
   1c408:	6521                	lui	a0,0x8
   1c40a:	4781                	li	a5,0
   1c40c:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1c40e:	bfa5                	j	1c386 <__extenddftf2+0x3a>

000000000001c410 <__trunctfdf2>:
   1c410:	00202673          	frrm	a2
   1c414:	68a1                	lui	a7,0x8
   1c416:	0305d713          	srli	a4,a1,0x30
   1c41a:	fff88e13          	addi	t3,a7,-1 # 7fff <exit-0x80e9>
   1c41e:	01c77833          	and	a6,a4,t3
   1c422:	03f5d693          	srli	a3,a1,0x3f
   1c426:	00180793          	addi	a5,a6,1
   1c42a:	05c2                	slli	a1,a1,0x10
   1c42c:	18f9                	addi	a7,a7,-2
   1c42e:	81b5                	srli	a1,a1,0xd
   1c430:	03d55713          	srli	a4,a0,0x3d
   1c434:	0117f7b3          	and	a5,a5,a7
   1c438:	2601                	sext.w	a2,a2
   1c43a:	8f4d                	or	a4,a4,a1
   1c43c:	00351313          	slli	t1,a0,0x3
   1c440:	16078863          	beqz	a5,1c5b0 <__trunctfdf2+0x1a0>
   1c444:	77f1                	lui	a5,0xffffc
   1c446:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffdcae0>
   1c44a:	983e                	add	a6,a6,a5
   1c44c:	7fe00793          	li	a5,2046
   1c450:	0907db63          	bge	a5,a6,1c4e6 <__trunctfdf2+0xd6>
   1c454:	c229                	beqz	a2,1c496 <__trunctfdf2+0x86>
   1c456:	478d                	li	a5,3
   1c458:	02f61b63          	bne	a2,a5,1c48e <__trunctfdf2+0x7e>
   1c45c:	ce8d                	beqz	a3,1c496 <__trunctfdf2+0x86>
   1c45e:	57fd                	li	a5,-1
   1c460:	7fe00813          	li	a6,2046
   1c464:	4701                	li	a4,0
   1c466:	4595                	li	a1,5
   1c468:	4509                	li	a0,2
   1c46a:	0015e593          	ori	a1,a1,1
   1c46e:	18a60d63          	beq	a2,a0,1c608 <__trunctfdf2+0x1f8>
   1c472:	450d                	li	a0,3
   1c474:	18a60663          	beq	a2,a0,1c600 <__trunctfdf2+0x1f0>
   1c478:	e619                	bnez	a2,1c486 <__trunctfdf2+0x76>
   1c47a:	00f7f513          	andi	a0,a5,15
   1c47e:	4891                	li	a7,4
   1c480:	01150363          	beq	a0,a7,1c486 <__trunctfdf2+0x76>
   1c484:	0791                	addi	a5,a5,4
   1c486:	cf01                	beqz	a4,1c49e <__trunctfdf2+0x8e>
   1c488:	0025e593          	ori	a1,a1,2
   1c48c:	a809                	j	1c49e <__trunctfdf2+0x8e>
   1c48e:	4789                	li	a5,2
   1c490:	fcf617e3          	bne	a2,a5,1c45e <__trunctfdf2+0x4e>
   1c494:	d6e9                	beqz	a3,1c45e <__trunctfdf2+0x4e>
   1c496:	4781                	li	a5,0
   1c498:	7ff00813          	li	a6,2047
   1c49c:	4595                	li	a1,5
   1c49e:	0377d713          	srli	a4,a5,0x37
   1c4a2:	8b05                	andi	a4,a4,1
   1c4a4:	cb11                	beqz	a4,1c4b8 <__trunctfdf2+0xa8>
   1c4a6:	0805                	addi	a6,a6,1
   1c4a8:	7ff00713          	li	a4,2047
   1c4ac:	16e80163          	beq	a6,a4,1c60e <__trunctfdf2+0x1fe>
   1c4b0:	567d                	li	a2,-1
   1c4b2:	165e                	slli	a2,a2,0x37
   1c4b4:	167d                	addi	a2,a2,-1
   1c4b6:	8ff1                	and	a5,a5,a2
   1c4b8:	7ff00713          	li	a4,2047
   1c4bc:	838d                	srli	a5,a5,0x3
   1c4be:	00e81663          	bne	a6,a4,1c4ca <__trunctfdf2+0xba>
   1c4c2:	c781                	beqz	a5,1c4ca <__trunctfdf2+0xba>
   1c4c4:	4785                	li	a5,1
   1c4c6:	17ce                	slli	a5,a5,0x33
   1c4c8:	4681                	li	a3,0
   1c4ca:	7ff87713          	andi	a4,a6,2047
   1c4ce:	07b2                	slli	a5,a5,0xc
   1c4d0:	1752                	slli	a4,a4,0x34
   1c4d2:	83b1                	srli	a5,a5,0xc
   1c4d4:	8fd9                	or	a5,a5,a4
   1c4d6:	16fe                	slli	a3,a3,0x3f
   1c4d8:	8fd5                	or	a5,a5,a3
   1c4da:	c199                	beqz	a1,1c4e0 <__trunctfdf2+0xd0>
   1c4dc:	0015a073          	csrs	fflags,a1
   1c4e0:	f2078553          	fmv.d.x	fa0,a5
   1c4e4:	8082                	ret
   1c4e6:	0b004063          	bgtz	a6,1c586 <__trunctfdf2+0x176>
   1c4ea:	fcc00593          	li	a1,-52
   1c4ee:	4785                	li	a5,1
   1c4f0:	02b84e63          	blt	a6,a1,1c52c <__trunctfdf2+0x11c>
   1c4f4:	17ce                	slli	a5,a5,0x33
   1c4f6:	03d00893          	li	a7,61
   1c4fa:	8f5d                	or	a4,a4,a5
   1c4fc:	410888b3          	sub	a7,a7,a6
   1c500:	03f00793          	li	a5,63
   1c504:	0008051b          	sext.w	a0,a6
   1c508:	0517cc63          	blt	a5,a7,1c560 <__trunctfdf2+0x150>
   1c50c:	03d00793          	li	a5,61
   1c510:	0035059b          	addiw	a1,a0,3
   1c514:	9f89                	subw	a5,a5,a0
   1c516:	00f357b3          	srl	a5,t1,a5
   1c51a:	00b31333          	sll	t1,t1,a1
   1c51e:	00603333          	snez	t1,t1
   1c522:	0067e7b3          	or	a5,a5,t1
   1c526:	00b71733          	sll	a4,a4,a1
   1c52a:	8fd9                	or	a5,a5,a4
   1c52c:	00179713          	slli	a4,a5,0x1
   1c530:	00777513          	andi	a0,a4,7
   1c534:	4581                	li	a1,0
   1c536:	cd19                	beqz	a0,1c554 <__trunctfdf2+0x144>
   1c538:	4589                	li	a1,2
   1c53a:	0ab60d63          	beq	a2,a1,1c5f4 <__trunctfdf2+0x1e4>
   1c53e:	458d                	li	a1,3
   1c540:	0ab60663          	beq	a2,a1,1c5ec <__trunctfdf2+0x1dc>
   1c544:	4585                	li	a1,1
   1c546:	e619                	bnez	a2,1c554 <__trunctfdf2+0x144>
   1c548:	00f77513          	andi	a0,a4,15
   1c54c:	4811                	li	a6,4
   1c54e:	01050363          	beq	a0,a6,1c554 <__trunctfdf2+0x144>
   1c552:	0711                	addi	a4,a4,4
   1c554:	9361                	srli	a4,a4,0x38
   1c556:	00174713          	xori	a4,a4,1
   1c55a:	8b05                	andi	a4,a4,1
   1c55c:	4801                	li	a6,0
   1c55e:	a081                	j	1c59e <__trunctfdf2+0x18e>
   1c560:	57f5                	li	a5,-3
   1c562:	9f89                	subw	a5,a5,a0
   1c564:	04000813          	li	a6,64
   1c568:	00f757b3          	srl	a5,a4,a5
   1c56c:	4581                	li	a1,0
   1c56e:	01088663          	beq	a7,a6,1c57a <__trunctfdf2+0x16a>
   1c572:	0435051b          	addiw	a0,a0,67
   1c576:	00a715b3          	sll	a1,a4,a0
   1c57a:	0065e5b3          	or	a1,a1,t1
   1c57e:	00b035b3          	snez	a1,a1
   1c582:	8fcd                	or	a5,a5,a1
   1c584:	b765                	j	1c52c <__trunctfdf2+0x11c>
   1c586:	00751793          	slli	a5,a0,0x7
   1c58a:	00f037b3          	snez	a5,a5
   1c58e:	03c35313          	srli	t1,t1,0x3c
   1c592:	0712                	slli	a4,a4,0x4
   1c594:	0067e7b3          	or	a5,a5,t1
   1c598:	8fd9                	or	a5,a5,a4
   1c59a:	4581                	li	a1,0
   1c59c:	4701                	li	a4,0
   1c59e:	0077f513          	andi	a0,a5,7
   1c5a2:	ec0513e3          	bnez	a0,1c468 <__trunctfdf2+0x58>
   1c5a6:	ee070ce3          	beqz	a4,1c49e <__trunctfdf2+0x8e>
   1c5aa:	0015f713          	andi	a4,a1,1
   1c5ae:	bde1                	j	1c486 <__trunctfdf2+0x76>
   1c5b0:	006767b3          	or	a5,a4,t1
   1c5b4:	00081563          	bnez	a6,1c5be <__trunctfdf2+0x1ae>
   1c5b8:	eb85                	bnez	a5,1c5e8 <__trunctfdf2+0x1d8>
   1c5ba:	4581                	li	a1,0
   1c5bc:	b5cd                	j	1c49e <__trunctfdf2+0x8e>
   1c5be:	cf95                	beqz	a5,1c5fa <__trunctfdf2+0x1ea>
   1c5c0:	4581                	li	a1,0
   1c5c2:	01c81763          	bne	a6,t3,1c5d0 <__trunctfdf2+0x1c0>
   1c5c6:	03275593          	srli	a1,a4,0x32
   1c5ca:	0015c593          	xori	a1,a1,1
   1c5ce:	0592                	slli	a1,a1,0x4
   1c5d0:	03c35793          	srli	a5,t1,0x3c
   1c5d4:	0712                	slli	a4,a4,0x4
   1c5d6:	8f5d                	or	a4,a4,a5
   1c5d8:	4785                	li	a5,1
   1c5da:	9b61                	andi	a4,a4,-8
   1c5dc:	17da                	slli	a5,a5,0x36
   1c5de:	8fd9                	or	a5,a5,a4
   1c5e0:	7ff00813          	li	a6,2047
   1c5e4:	4701                	li	a4,0
   1c5e6:	bf65                	j	1c59e <__trunctfdf2+0x18e>
   1c5e8:	4785                	li	a5,1
   1c5ea:	b789                	j	1c52c <__trunctfdf2+0x11c>
   1c5ec:	4585                	li	a1,1
   1c5ee:	f2bd                	bnez	a3,1c554 <__trunctfdf2+0x144>
   1c5f0:	0721                	addi	a4,a4,8
   1c5f2:	b78d                	j	1c554 <__trunctfdf2+0x144>
   1c5f4:	4585                	li	a1,1
   1c5f6:	deb9                	beqz	a3,1c554 <__trunctfdf2+0x144>
   1c5f8:	bfe5                	j	1c5f0 <__trunctfdf2+0x1e0>
   1c5fa:	7ff00813          	li	a6,2047
   1c5fe:	bf75                	j	1c5ba <__trunctfdf2+0x1aa>
   1c600:	e80693e3          	bnez	a3,1c486 <__trunctfdf2+0x76>
   1c604:	07a1                	addi	a5,a5,8
   1c606:	b541                	j	1c486 <__trunctfdf2+0x76>
   1c608:	e6068fe3          	beqz	a3,1c486 <__trunctfdf2+0x76>
   1c60c:	bfe5                	j	1c604 <__trunctfdf2+0x1f4>
   1c60e:	4781                	li	a5,0
   1c610:	ce09                	beqz	a2,1c62a <__trunctfdf2+0x21a>
   1c612:	470d                	li	a4,3
   1c614:	00e61763          	bne	a2,a4,1c622 <__trunctfdf2+0x212>
   1c618:	ca89                	beqz	a3,1c62a <__trunctfdf2+0x21a>
   1c61a:	57fd                	li	a5,-1
   1c61c:	7fe00813          	li	a6,2046
   1c620:	a029                	j	1c62a <__trunctfdf2+0x21a>
   1c622:	4709                	li	a4,2
   1c624:	fee61be3          	bne	a2,a4,1c61a <__trunctfdf2+0x20a>
   1c628:	daed                	beqz	a3,1c61a <__trunctfdf2+0x20a>
   1c62a:	0055e593          	ori	a1,a1,5
   1c62e:	b569                	j	1c4b8 <__trunctfdf2+0xa8>

000000000001c630 <__clzdi2>:
   1c630:	03800793          	li	a5,56
   1c634:	00f55733          	srl	a4,a0,a5
   1c638:	0ff77713          	zext.b	a4,a4
   1c63c:	e319                	bnez	a4,1c642 <__clzdi2+0x12>
   1c63e:	17e1                	addi	a5,a5,-8
   1c640:	fbf5                	bnez	a5,1c634 <__clzdi2+0x4>
   1c642:	6775                	lui	a4,0x1d
   1c644:	04000693          	li	a3,64
   1c648:	8e9d                	sub	a3,a3,a5
   1c64a:	00f55533          	srl	a0,a0,a5
   1c64e:	4f870793          	addi	a5,a4,1272 # 1d4f8 <__clz_tab>
   1c652:	97aa                	add	a5,a5,a0
   1c654:	0007c503          	lbu	a0,0(a5)
   1c658:	40a6853b          	subw	a0,a3,a0
   1c65c:	8082                	ret
