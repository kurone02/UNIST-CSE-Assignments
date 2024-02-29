
e1:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00004517          	auipc	a0,0x4
   100bc:	80850513          	addi	a0,a0,-2040 # 138c0 <__libc_fini_array>
   100c0:	13d0d06f          	j	1d9fc <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00014197          	auipc	gp,0x14
   100cc:	59818193          	addi	gp,gp,1432 # 24660 <__global_pointer$>
   100d0:	77018513          	addi	a0,gp,1904 # 24dd0 <_PathLocale>
   100d4:	00015617          	auipc	a2,0x15
   100d8:	d8c60613          	addi	a2,a2,-628 # 24e60 <__BSS_END__>
   100dc:	40a60633          	sub	a2,a2,a0
   100e0:	00000593          	li	a1,0
   100e4:	378000ef          	jal	ra,1045c <memset>
   100e8:	0000e517          	auipc	a0,0xe
   100ec:	91450513          	addi	a0,a0,-1772 # 1d9fc <atexit>
   100f0:	00050863          	beqz	a0,10100 <_start+0x38>
   100f4:	00003517          	auipc	a0,0x3
   100f8:	7cc50513          	addi	a0,a0,1996 # 138c0 <__libc_fini_array>
   100fc:	1010d0ef          	jal	ra,1d9fc <atexit>
   10100:	2c8000ef          	jal	ra,103c8 <__libc_init_array>
   10104:	00012503          	lw	a0,0(sp)
   10108:	00810593          	addi	a1,sp,8
   1010c:	00000613          	li	a2,0
   10110:	130000ef          	jal	ra,10240 <main>
   10114:	2840006f          	j	10398 <exit>

0000000000010118 <__do_global_dtors_aux>:
   10118:	ff010113          	addi	sp,sp,-16
   1011c:	00813023          	sd	s0,0(sp)
   10120:	7a018413          	addi	s0,gp,1952 # 24e00 <completed.1>
   10124:	00044783          	lbu	a5,0(s0)
   10128:	00113423          	sd	ra,8(sp)
   1012c:	02079263          	bnez	a5,10150 <__do_global_dtors_aux+0x38>
   10130:	00000793          	li	a5,0
   10134:	00078a63          	beqz	a5,10148 <__do_global_dtors_aux+0x30>
   10138:	00014517          	auipc	a0,0x14
   1013c:	b2050513          	addi	a0,a0,-1248 # 23c58 <__FRAME_END__>
   10140:	00000097          	auipc	ra,0x0
   10144:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10148:	00100793          	li	a5,1
   1014c:	00f40023          	sb	a5,0(s0)
   10150:	00813083          	ld	ra,8(sp)
   10154:	00013403          	ld	s0,0(sp)
   10158:	01010113          	addi	sp,sp,16
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	7a818593          	addi	a1,gp,1960 # 24e08 <object.0>
   1016c:	00014517          	auipc	a0,0x14
   10170:	aec50513          	addi	a0,a0,-1300 # 23c58 <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <__load_vec>:
   10180:	fe010113          	addi	sp,sp,-32
   10184:	00813c23          	sd	s0,24(sp)
   10188:	02010413          	addi	s0,sp,32
   1018c:	fea43423          	sd	a0,-24(s0)
   10190:	fe843783          	ld	a5,-24(s0)
   10194:	0007b783          	ld	a5,0(a5)
   10198:	00078513          	mv	a0,a5
   1019c:	01813403          	ld	s0,24(sp)
   101a0:	02010113          	addi	sp,sp,32
   101a4:	00008067          	ret

00000000000101a8 <__store_vec>:
   101a8:	fe010113          	addi	sp,sp,-32
   101ac:	00813c23          	sd	s0,24(sp)
   101b0:	02010413          	addi	s0,sp,32
   101b4:	fea43423          	sd	a0,-24(s0)
   101b8:	feb43023          	sd	a1,-32(s0)
   101bc:	fe843783          	ld	a5,-24(s0)
   101c0:	fe043703          	ld	a4,-32(s0)
   101c4:	00e7b023          	sd	a4,0(a5)
   101c8:	00000013          	nop
   101cc:	01813403          	ld	s0,24(sp)
   101d0:	02010113          	addi	sp,sp,32
   101d4:	00008067          	ret

00000000000101d8 <__tvadd>:
   101d8:	fb010113          	addi	sp,sp,-80
   101dc:	04113423          	sd	ra,72(sp)
   101e0:	04813023          	sd	s0,64(sp)
   101e4:	05010413          	addi	s0,sp,80
   101e8:	fca43423          	sd	a0,-56(s0)
   101ec:	fcb43023          	sd	a1,-64(s0)
   101f0:	fac43c23          	sd	a2,-72(s0)
   101f4:	fc043503          	ld	a0,-64(s0)
   101f8:	f89ff0ef          	jal	ra,10180 <__load_vec>
   101fc:	fea43423          	sd	a0,-24(s0)
   10200:	fb843503          	ld	a0,-72(s0)
   10204:	f7dff0ef          	jal	ra,10180 <__load_vec>
   10208:	fea43023          	sd	a0,-32(s0)
   1020c:	fc043c23          	sd	zero,-40(s0)
   10210:	fe843783          	ld	a5,-24(s0)
   10214:	fe043703          	ld	a4,-32(s0)
   10218:	00e787b3          	add	a5,a5,a4
   1021c:	fcf43c23          	sd	a5,-40(s0)
   10220:	fd843583          	ld	a1,-40(s0)
   10224:	fc843503          	ld	a0,-56(s0)
   10228:	f81ff0ef          	jal	ra,101a8 <__store_vec>
   1022c:	00000013          	nop
   10230:	04813083          	ld	ra,72(sp)
   10234:	04013403          	ld	s0,64(sp)
   10238:	05010113          	addi	sp,sp,80
   1023c:	00008067          	ret

0000000000010240 <main>:
   10240:	fc010113          	addi	sp,sp,-64
   10244:	02113c23          	sd	ra,56(sp)
   10248:	02813823          	sd	s0,48(sp)
   1024c:	04010413          	addi	s0,sp,64
   10250:	000227b7          	lui	a5,0x22
   10254:	e2078513          	addi	a0,a5,-480 # 21e20 <__clzdi2+0x3c>
   10258:	43c000ef          	jal	ra,10694 <puts>
   1025c:	fe042623          	sw	zero,-20(s0)
   10260:	0380006f          	j	10298 <main+0x58>
   10264:	fec42783          	lw	a5,-20(s0)
   10268:	0ff7f793          	andi	a5,a5,255
   1026c:	0017879b          	addiw	a5,a5,1
   10270:	0ff7f793          	andi	a5,a5,255
   10274:	0187971b          	slliw	a4,a5,0x18
   10278:	4187571b          	sraiw	a4,a4,0x18
   1027c:	fec42783          	lw	a5,-20(s0)
   10280:	ff040693          	addi	a3,s0,-16
   10284:	00f687b3          	add	a5,a3,a5
   10288:	fee78423          	sb	a4,-24(a5)
   1028c:	fec42783          	lw	a5,-20(s0)
   10290:	0017879b          	addiw	a5,a5,1
   10294:	fef42623          	sw	a5,-20(s0)
   10298:	fec42783          	lw	a5,-20(s0)
   1029c:	0007871b          	sext.w	a4,a5
   102a0:	00700793          	li	a5,7
   102a4:	fce7d0e3          	bge	a5,a4,10264 <main+0x24>
   102a8:	fe042423          	sw	zero,-24(s0)
   102ac:	02c0006f          	j	102d8 <main+0x98>
   102b0:	fe842783          	lw	a5,-24(s0)
   102b4:	0187971b          	slliw	a4,a5,0x18
   102b8:	4187571b          	sraiw	a4,a4,0x18
   102bc:	fe842783          	lw	a5,-24(s0)
   102c0:	ff040693          	addi	a3,s0,-16
   102c4:	00f687b3          	add	a5,a3,a5
   102c8:	fee78023          	sb	a4,-32(a5)
   102cc:	fe842783          	lw	a5,-24(s0)
   102d0:	0017879b          	addiw	a5,a5,1
   102d4:	fef42423          	sw	a5,-24(s0)
   102d8:	fe842783          	lw	a5,-24(s0)
   102dc:	0007871b          	sext.w	a4,a5
   102e0:	00700793          	li	a5,7
   102e4:	fce7d6e3          	bge	a5,a4,102b0 <main+0x70>
   102e8:	fff00793          	li	a5,-1
   102ec:	fcf40823          	sb	a5,-48(s0)
   102f0:	fd040693          	addi	a3,s0,-48
   102f4:	fd840713          	addi	a4,s0,-40
   102f8:	fc840793          	addi	a5,s0,-56
   102fc:	00068613          	mv	a2,a3
   10300:	00070593          	mv	a1,a4
   10304:	00078513          	mv	a0,a5
   10308:	ed1ff0ef          	jal	ra,101d8 <__tvadd>
   1030c:	fe042223          	sw	zero,-28(s0)
   10310:	0600006f          	j	10370 <main+0x130>
   10314:	fe442783          	lw	a5,-28(s0)
   10318:	ff040713          	addi	a4,s0,-16
   1031c:	00f707b3          	add	a5,a4,a5
   10320:	fe878783          	lb	a5,-24(a5)
   10324:	0007871b          	sext.w	a4,a5
   10328:	fe442783          	lw	a5,-28(s0)
   1032c:	ff040693          	addi	a3,s0,-16
   10330:	00f687b3          	add	a5,a3,a5
   10334:	fe078783          	lb	a5,-32(a5)
   10338:	0007861b          	sext.w	a2,a5
   1033c:	fe442783          	lw	a5,-28(s0)
   10340:	ff040693          	addi	a3,s0,-16
   10344:	00f687b3          	add	a5,a3,a5
   10348:	fd878783          	lb	a5,-40(a5)
   1034c:	0007879b          	sext.w	a5,a5
   10350:	00078693          	mv	a3,a5
   10354:	00070593          	mv	a1,a4
   10358:	000227b7          	lui	a5,0x22
   1035c:	e3078513          	addi	a0,a5,-464 # 21e30 <__clzdi2+0x4c>
   10360:	218000ef          	jal	ra,10578 <printf>
   10364:	fe442783          	lw	a5,-28(s0)
   10368:	0017879b          	addiw	a5,a5,1
   1036c:	fef42223          	sw	a5,-28(s0)
   10370:	fe442783          	lw	a5,-28(s0)
   10374:	0007871b          	sext.w	a4,a5
   10378:	00700793          	li	a5,7
   1037c:	f8e7dce3          	bge	a5,a4,10314 <main+0xd4>
   10380:	00000793          	li	a5,0
   10384:	00078513          	mv	a0,a5
   10388:	03813083          	ld	ra,56(sp)
   1038c:	03013403          	ld	s0,48(sp)
   10390:	04010113          	addi	sp,sp,64
   10394:	00008067          	ret

0000000000010398 <exit>:
   10398:	ff010113          	addi	sp,sp,-16
   1039c:	00000593          	li	a1,0
   103a0:	00813023          	sd	s0,0(sp)
   103a4:	00113423          	sd	ra,8(sp)
   103a8:	00050413          	mv	s0,a0
   103ac:	50d020ef          	jal	ra,130b8 <__call_exitprocs>
   103b0:	7481b503          	ld	a0,1864(gp) # 24da8 <_global_impure_ptr>
   103b4:	05853783          	ld	a5,88(a0)
   103b8:	00078463          	beqz	a5,103c0 <exit+0x28>
   103bc:	000780e7          	jalr	a5
   103c0:	00040513          	mv	a0,s0
   103c4:	1b10f0ef          	jal	ra,1fd74 <_exit>

00000000000103c8 <__libc_init_array>:
   103c8:	fe010113          	addi	sp,sp,-32
   103cc:	00813823          	sd	s0,16(sp)
   103d0:	01213023          	sd	s2,0(sp)
   103d4:	00014417          	auipc	s0,0x14
   103d8:	88840413          	addi	s0,s0,-1912 # 23c5c <__preinit_array_end>
   103dc:	00014917          	auipc	s2,0x14
   103e0:	88090913          	addi	s2,s2,-1920 # 23c5c <__preinit_array_end>
   103e4:	40890933          	sub	s2,s2,s0
   103e8:	00113c23          	sd	ra,24(sp)
   103ec:	00913423          	sd	s1,8(sp)
   103f0:	40395913          	srai	s2,s2,0x3
   103f4:	00090e63          	beqz	s2,10410 <__libc_init_array+0x48>
   103f8:	00000493          	li	s1,0
   103fc:	00043783          	ld	a5,0(s0)
   10400:	00148493          	addi	s1,s1,1
   10404:	00840413          	addi	s0,s0,8
   10408:	000780e7          	jalr	a5
   1040c:	fe9918e3          	bne	s2,s1,103fc <__libc_init_array+0x34>
   10410:	00014417          	auipc	s0,0x14
   10414:	85040413          	addi	s0,s0,-1968 # 23c60 <__init_array_start>
   10418:	00014917          	auipc	s2,0x14
   1041c:	85890913          	addi	s2,s2,-1960 # 23c70 <__do_global_dtors_aux_fini_array_entry>
   10420:	40890933          	sub	s2,s2,s0
   10424:	40395913          	srai	s2,s2,0x3
   10428:	00090e63          	beqz	s2,10444 <__libc_init_array+0x7c>
   1042c:	00000493          	li	s1,0
   10430:	00043783          	ld	a5,0(s0)
   10434:	00148493          	addi	s1,s1,1
   10438:	00840413          	addi	s0,s0,8
   1043c:	000780e7          	jalr	a5
   10440:	fe9918e3          	bne	s2,s1,10430 <__libc_init_array+0x68>
   10444:	01813083          	ld	ra,24(sp)
   10448:	01013403          	ld	s0,16(sp)
   1044c:	00813483          	ld	s1,8(sp)
   10450:	00013903          	ld	s2,0(sp)
   10454:	02010113          	addi	sp,sp,32
   10458:	00008067          	ret

000000000001045c <memset>:
   1045c:	00f00313          	li	t1,15
   10460:	00050713          	mv	a4,a0
   10464:	02c37a63          	bgeu	t1,a2,10498 <memset+0x3c>
   10468:	00f77793          	andi	a5,a4,15
   1046c:	0a079063          	bnez	a5,1050c <memset+0xb0>
   10470:	06059e63          	bnez	a1,104ec <memset+0x90>
   10474:	ff067693          	andi	a3,a2,-16
   10478:	00f67613          	andi	a2,a2,15
   1047c:	00e686b3          	add	a3,a3,a4
   10480:	00b73023          	sd	a1,0(a4)
   10484:	00b73423          	sd	a1,8(a4)
   10488:	01070713          	addi	a4,a4,16
   1048c:	fed76ae3          	bltu	a4,a3,10480 <memset+0x24>
   10490:	00061463          	bnez	a2,10498 <memset+0x3c>
   10494:	00008067          	ret
   10498:	40c306b3          	sub	a3,t1,a2
   1049c:	00269693          	slli	a3,a3,0x2
   104a0:	00000297          	auipc	t0,0x0
   104a4:	005686b3          	add	a3,a3,t0
   104a8:	00c68067          	jr	12(a3)
   104ac:	00b70723          	sb	a1,14(a4)
   104b0:	00b706a3          	sb	a1,13(a4)
   104b4:	00b70623          	sb	a1,12(a4)
   104b8:	00b705a3          	sb	a1,11(a4)
   104bc:	00b70523          	sb	a1,10(a4)
   104c0:	00b704a3          	sb	a1,9(a4)
   104c4:	00b70423          	sb	a1,8(a4)
   104c8:	00b703a3          	sb	a1,7(a4)
   104cc:	00b70323          	sb	a1,6(a4)
   104d0:	00b702a3          	sb	a1,5(a4)
   104d4:	00b70223          	sb	a1,4(a4)
   104d8:	00b701a3          	sb	a1,3(a4)
   104dc:	00b70123          	sb	a1,2(a4)
   104e0:	00b700a3          	sb	a1,1(a4)
   104e4:	00b70023          	sb	a1,0(a4)
   104e8:	00008067          	ret
   104ec:	0ff5f593          	andi	a1,a1,255
   104f0:	00859693          	slli	a3,a1,0x8
   104f4:	00d5e5b3          	or	a1,a1,a3
   104f8:	01059693          	slli	a3,a1,0x10
   104fc:	00d5e5b3          	or	a1,a1,a3
   10500:	02059693          	slli	a3,a1,0x20
   10504:	00d5e5b3          	or	a1,a1,a3
   10508:	f6dff06f          	j	10474 <memset+0x18>
   1050c:	00279693          	slli	a3,a5,0x2
   10510:	00000297          	auipc	t0,0x0
   10514:	005686b3          	add	a3,a3,t0
   10518:	00008293          	mv	t0,ra
   1051c:	f98680e7          	jalr	-104(a3)
   10520:	00028093          	mv	ra,t0
   10524:	ff078793          	addi	a5,a5,-16
   10528:	40f70733          	sub	a4,a4,a5
   1052c:	00f60633          	add	a2,a2,a5
   10530:	f6c374e3          	bgeu	t1,a2,10498 <memset+0x3c>
   10534:	f3dff06f          	j	10470 <memset+0x14>

0000000000010538 <_printf_r>:
   10538:	fb010113          	addi	sp,sp,-80
   1053c:	02c13023          	sd	a2,32(sp)
   10540:	02d13423          	sd	a3,40(sp)
   10544:	02e13823          	sd	a4,48(sp)
   10548:	02f13c23          	sd	a5,56(sp)
   1054c:	05013023          	sd	a6,64(sp)
   10550:	05113423          	sd	a7,72(sp)
   10554:	00058613          	mv	a2,a1
   10558:	01053583          	ld	a1,16(a0)
   1055c:	02010693          	addi	a3,sp,32
   10560:	00113c23          	sd	ra,24(sp)
   10564:	00d13423          	sd	a3,8(sp)
   10568:	204000ef          	jal	ra,1076c <_vfprintf_r>
   1056c:	01813083          	ld	ra,24(sp)
   10570:	05010113          	addi	sp,sp,80
   10574:	00008067          	ret

0000000000010578 <printf>:
   10578:	fa010113          	addi	sp,sp,-96
   1057c:	02c13823          	sd	a2,48(sp)
   10580:	02d13c23          	sd	a3,56(sp)
   10584:	7581b303          	ld	t1,1880(gp) # 24db8 <_impure_ptr>
   10588:	02b13423          	sd	a1,40(sp)
   1058c:	04e13023          	sd	a4,64(sp)
   10590:	04f13423          	sd	a5,72(sp)
   10594:	05013823          	sd	a6,80(sp)
   10598:	05113c23          	sd	a7,88(sp)
   1059c:	01033583          	ld	a1,16(t1) # 10184 <__load_vec+0x4>
   105a0:	02810693          	addi	a3,sp,40
   105a4:	00050613          	mv	a2,a0
   105a8:	00030513          	mv	a0,t1
   105ac:	00113c23          	sd	ra,24(sp)
   105b0:	00d13423          	sd	a3,8(sp)
   105b4:	1b8000ef          	jal	ra,1076c <_vfprintf_r>
   105b8:	01813083          	ld	ra,24(sp)
   105bc:	06010113          	addi	sp,sp,96
   105c0:	00008067          	ret

00000000000105c4 <_puts_r>:
   105c4:	f9010113          	addi	sp,sp,-112
   105c8:	06813023          	sd	s0,96(sp)
   105cc:	00050413          	mv	s0,a0
   105d0:	00058513          	mv	a0,a1
   105d4:	04913c23          	sd	s1,88(sp)
   105d8:	06113423          	sd	ra,104(sp)
   105dc:	00058493          	mv	s1,a1
   105e0:	0c0000ef          	jal	ra,106a0 <strlen>
   105e4:	00150713          	addi	a4,a0,1
   105e8:	00012697          	auipc	a3,0x12
   105ec:	85868693          	addi	a3,a3,-1960 # 21e40 <__clzdi2+0x5c>
   105f0:	02e13423          	sd	a4,40(sp)
   105f4:	05042783          	lw	a5,80(s0)
   105f8:	03010713          	addi	a4,sp,48
   105fc:	04d13023          	sd	a3,64(sp)
   10600:	00e13c23          	sd	a4,24(sp)
   10604:	00100693          	li	a3,1
   10608:	00200713          	li	a4,2
   1060c:	02913823          	sd	s1,48(sp)
   10610:	02a13c23          	sd	a0,56(sp)
   10614:	04d13423          	sd	a3,72(sp)
   10618:	02e12023          	sw	a4,32(sp)
   1061c:	01043583          	ld	a1,16(s0)
   10620:	04078c63          	beqz	a5,10678 <_puts_r+0xb4>
   10624:	01059783          	lh	a5,16(a1)
   10628:	03279713          	slli	a4,a5,0x32
   1062c:	02074263          	bltz	a4,10650 <_puts_r+0x8c>
   10630:	0ac5a703          	lw	a4,172(a1)
   10634:	000026b7          	lui	a3,0x2
   10638:	00d7e7b3          	or	a5,a5,a3
   1063c:	ffffe6b7          	lui	a3,0xffffe
   10640:	fff68693          	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd919f>
   10644:	00d77733          	and	a4,a4,a3
   10648:	00f59823          	sh	a5,16(a1)
   1064c:	0ae5a623          	sw	a4,172(a1)
   10650:	01810613          	addi	a2,sp,24
   10654:	00040513          	mv	a0,s0
   10658:	728030ef          	jal	ra,13d80 <__sfvwrite_r>
   1065c:	02051863          	bnez	a0,1068c <_puts_r+0xc8>
   10660:	00a00513          	li	a0,10
   10664:	06813083          	ld	ra,104(sp)
   10668:	06013403          	ld	s0,96(sp)
   1066c:	05813483          	ld	s1,88(sp)
   10670:	07010113          	addi	sp,sp,112
   10674:	00008067          	ret
   10678:	00040513          	mv	a0,s0
   1067c:	00b13423          	sd	a1,8(sp)
   10680:	200030ef          	jal	ra,13880 <__sinit>
   10684:	00813583          	ld	a1,8(sp)
   10688:	f9dff06f          	j	10624 <_puts_r+0x60>
   1068c:	fff00513          	li	a0,-1
   10690:	fd5ff06f          	j	10664 <_puts_r+0xa0>

0000000000010694 <puts>:
   10694:	00050593          	mv	a1,a0
   10698:	7581b503          	ld	a0,1880(gp) # 24db8 <_impure_ptr>
   1069c:	f29ff06f          	j	105c4 <_puts_r>

00000000000106a0 <strlen>:
   106a0:	00757793          	andi	a5,a0,7
   106a4:	00050713          	mv	a4,a0
   106a8:	06079c63          	bnez	a5,10720 <strlen+0x80>
   106ac:	00014697          	auipc	a3,0x14
   106b0:	6cc6b683          	ld	a3,1740(a3) # 24d78 <__SDATA_BEGIN__>
   106b4:	fff00593          	li	a1,-1
   106b8:	00073603          	ld	a2,0(a4)
   106bc:	00870713          	addi	a4,a4,8
   106c0:	00d677b3          	and	a5,a2,a3
   106c4:	00d787b3          	add	a5,a5,a3
   106c8:	00c7e7b3          	or	a5,a5,a2
   106cc:	00d7e7b3          	or	a5,a5,a3
   106d0:	feb784e3          	beq	a5,a1,106b8 <strlen+0x18>
   106d4:	ff874683          	lbu	a3,-8(a4)
   106d8:	40a707b3          	sub	a5,a4,a0
   106dc:	06068463          	beqz	a3,10744 <strlen+0xa4>
   106e0:	ff974683          	lbu	a3,-7(a4)
   106e4:	04068c63          	beqz	a3,1073c <strlen+0x9c>
   106e8:	ffa74683          	lbu	a3,-6(a4)
   106ec:	06068463          	beqz	a3,10754 <strlen+0xb4>
   106f0:	ffb74683          	lbu	a3,-5(a4)
   106f4:	04068c63          	beqz	a3,1074c <strlen+0xac>
   106f8:	ffc74683          	lbu	a3,-4(a4)
   106fc:	ffd74603          	lbu	a2,-3(a4)
   10700:	ffe74503          	lbu	a0,-2(a4)
   10704:	04068c63          	beqz	a3,1075c <strlen+0xbc>
   10708:	04060e63          	beqz	a2,10764 <strlen+0xc4>
   1070c:	00a03533          	snez	a0,a0
   10710:	00f50533          	add	a0,a0,a5
   10714:	ffe50513          	addi	a0,a0,-2
   10718:	00008067          	ret
   1071c:	f80688e3          	beqz	a3,106ac <strlen+0xc>
   10720:	00074783          	lbu	a5,0(a4)
   10724:	00170713          	addi	a4,a4,1
   10728:	00777693          	andi	a3,a4,7
   1072c:	fe0798e3          	bnez	a5,1071c <strlen+0x7c>
   10730:	40a70733          	sub	a4,a4,a0
   10734:	fff70513          	addi	a0,a4,-1
   10738:	00008067          	ret
   1073c:	ff978513          	addi	a0,a5,-7
   10740:	00008067          	ret
   10744:	ff878513          	addi	a0,a5,-8
   10748:	00008067          	ret
   1074c:	ffb78513          	addi	a0,a5,-5
   10750:	00008067          	ret
   10754:	ffa78513          	addi	a0,a5,-6
   10758:	00008067          	ret
   1075c:	ffc78513          	addi	a0,a5,-4
   10760:	00008067          	ret
   10764:	ffd78513          	addi	a0,a5,-3
   10768:	00008067          	ret

000000000001076c <_vfprintf_r>:
   1076c:	d9010113          	addi	sp,sp,-624
   10770:	26113423          	sd	ra,616(sp)
   10774:	25313423          	sd	s3,584(sp)
   10778:	23813023          	sd	s8,544(sp)
   1077c:	21913c23          	sd	s9,536(sp)
   10780:	00058c13          	mv	s8,a1
   10784:	00060993          	mv	s3,a2
   10788:	00d13423          	sd	a3,8(sp)
   1078c:	26813023          	sd	s0,608(sp)
   10790:	24913c23          	sd	s1,600(sp)
   10794:	25213823          	sd	s2,592(sp)
   10798:	25413023          	sd	s4,576(sp)
   1079c:	23513c23          	sd	s5,568(sp)
   107a0:	23613823          	sd	s6,560(sp)
   107a4:	23713423          	sd	s7,552(sp)
   107a8:	21a13823          	sd	s10,528(sp)
   107ac:	21b13423          	sd	s11,520(sp)
   107b0:	00050c93          	mv	s9,a0
   107b4:	0f9060ef          	jal	ra,170ac <_localeconv_r>
   107b8:	00053783          	ld	a5,0(a0)
   107bc:	00078513          	mv	a0,a5
   107c0:	04f13023          	sd	a5,64(sp)
   107c4:	eddff0ef          	jal	ra,106a0 <strlen>
   107c8:	02a13c23          	sd	a0,56(sp)
   107cc:	0e013823          	sd	zero,240(sp)
   107d0:	0e013c23          	sd	zero,248(sp)
   107d4:	000c8663          	beqz	s9,107e0 <_vfprintf_r+0x74>
   107d8:	050ca783          	lw	a5,80(s9)
   107dc:	7c078c63          	beqz	a5,10fb4 <_vfprintf_r+0x848>
   107e0:	010c1703          	lh	a4,16(s8)
   107e4:	000026b7          	lui	a3,0x2
   107e8:	03071793          	slli	a5,a4,0x30
   107ec:	0307d793          	srli	a5,a5,0x30
   107f0:	00d7f633          	and	a2,a5,a3
   107f4:	02061863          	bnez	a2,10824 <_vfprintf_r+0xb8>
   107f8:	0acc2603          	lw	a2,172(s8)
   107fc:	00d767b3          	or	a5,a4,a3
   10800:	0107979b          	slliw	a5,a5,0x10
   10804:	ffffe737          	lui	a4,0xffffe
   10808:	4107d79b          	sraiw	a5,a5,0x10
   1080c:	fff70713          	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd919f>
   10810:	00e67733          	and	a4,a2,a4
   10814:	00fc1823          	sh	a5,16(s8)
   10818:	03079793          	slli	a5,a5,0x30
   1081c:	0aec2623          	sw	a4,172(s8)
   10820:	0307d793          	srli	a5,a5,0x30
   10824:	0087f713          	andi	a4,a5,8
   10828:	30070863          	beqz	a4,10b38 <_vfprintf_r+0x3cc>
   1082c:	018c3703          	ld	a4,24(s8)
   10830:	30070463          	beqz	a4,10b38 <_vfprintf_r+0x3cc>
   10834:	01a7f793          	andi	a5,a5,26
   10838:	00a00713          	li	a4,10
   1083c:	32e78063          	beq	a5,a4,10b5c <_vfprintf_r+0x3f0>
   10840:	18010793          	addi	a5,sp,384
   10844:	00098d13          	mv	s10,s3
   10848:	10f13023          	sd	a5,256(sp)
   1084c:	00078d93          	mv	s11,a5
   10850:	000d4783          	lbu	a5,0(s10)
   10854:	10013823          	sd	zero,272(sp)
   10858:	10012423          	sw	zero,264(sp)
   1085c:	02013023          	sd	zero,32(sp)
   10860:	04013423          	sd	zero,72(sp)
   10864:	04013823          	sd	zero,80(sp)
   10868:	04013c23          	sd	zero,88(sp)
   1086c:	06013423          	sd	zero,104(sp)
   10870:	06013823          	sd	zero,112(sp)
   10874:	00013023          	sd	zero,0(sp)
   10878:	01000b13          	li	s6,16
   1087c:	24078863          	beqz	a5,10acc <_vfprintf_r+0x360>
   10880:	000d0413          	mv	s0,s10
   10884:	02500713          	li	a4,37
   10888:	2ee78c63          	beq	a5,a4,10b80 <_vfprintf_r+0x414>
   1088c:	00144783          	lbu	a5,1(s0)
   10890:	00140413          	addi	s0,s0,1
   10894:	fe079ae3          	bnez	a5,10888 <_vfprintf_r+0x11c>
   10898:	41a404bb          	subw	s1,s0,s10
   1089c:	22048863          	beqz	s1,10acc <_vfprintf_r+0x360>
   108a0:	11013703          	ld	a4,272(sp)
   108a4:	10812783          	lw	a5,264(sp)
   108a8:	01adb023          	sd	s10,0(s11)
   108ac:	00970733          	add	a4,a4,s1
   108b0:	0017879b          	addiw	a5,a5,1
   108b4:	009db423          	sd	s1,8(s11)
   108b8:	10e13823          	sd	a4,272(sp)
   108bc:	10f12423          	sw	a5,264(sp)
   108c0:	0007871b          	sext.w	a4,a5
   108c4:	00700793          	li	a5,7
   108c8:	010d8d93          	addi	s11,s11,16
   108cc:	2ce7c263          	blt	a5,a4,10b90 <_vfprintf_r+0x424>
   108d0:	00013703          	ld	a4,0(sp)
   108d4:	00044783          	lbu	a5,0(s0)
   108d8:	0097073b          	addw	a4,a4,s1
   108dc:	00e13023          	sd	a4,0(sp)
   108e0:	1e078663          	beqz	a5,10acc <_vfprintf_r+0x360>
   108e4:	fff00e13          	li	t3,-1
   108e8:	00144483          	lbu	s1,1(s0)
   108ec:	0c0107a3          	sb	zero,207(sp)
   108f0:	00140413          	addi	s0,s0,1
   108f4:	00000a13          	li	s4,0
   108f8:	00000913          	li	s2,0
   108fc:	00900993          	li	s3,9
   10900:	02a00a93          	li	s5,42
   10904:	000e0b93          	mv	s7,t3
   10908:	00140413          	addi	s0,s0,1
   1090c:	0004849b          	sext.w	s1,s1
   10910:	05a00693          	li	a3,90
   10914:	fe04879b          	addiw	a5,s1,-32
   10918:	0007871b          	sext.w	a4,a5
   1091c:	04e6ee63          	bltu	a3,a4,10978 <_vfprintf_r+0x20c>
   10920:	02079713          	slli	a4,a5,0x20
   10924:	01e75793          	srli	a5,a4,0x1e
   10928:	00011717          	auipc	a4,0x11
   1092c:	58070713          	addi	a4,a4,1408 # 21ea8 <__clzdi2+0xc4>
   10930:	00e787b3          	add	a5,a5,a4
   10934:	0007a783          	lw	a5,0(a5)
   10938:	00e787b3          	add	a5,a5,a4
   1093c:	00078067          	jr	a5
   10940:	00000a13          	li	s4,0
   10944:	00044703          	lbu	a4,0(s0)
   10948:	002a179b          	slliw	a5,s4,0x2
   1094c:	014787bb          	addw	a5,a5,s4
   10950:	fd04849b          	addiw	s1,s1,-48
   10954:	0017979b          	slliw	a5,a5,0x1
   10958:	fd07061b          	addiw	a2,a4,-48
   1095c:	00f48a3b          	addw	s4,s1,a5
   10960:	00140413          	addi	s0,s0,1
   10964:	0007049b          	sext.w	s1,a4
   10968:	fcc9fee3          	bgeu	s3,a2,10944 <_vfprintf_r+0x1d8>
   1096c:	fe04879b          	addiw	a5,s1,-32
   10970:	0007871b          	sext.w	a4,a5
   10974:	fae6f6e3          	bgeu	a3,a4,10920 <_vfprintf_r+0x1b4>
   10978:	14048a63          	beqz	s1,10acc <_vfprintf_r+0x360>
   1097c:	10910c23          	sb	s1,280(sp)
   10980:	0c0107a3          	sb	zero,207(sp)
   10984:	00100a93          	li	s5,1
   10988:	00100b93          	li	s7,1
   1098c:	11810d13          	addi	s10,sp,280
   10990:	00013823          	sd	zero,16(sp)
   10994:	00000e13          	li	t3,0
   10998:	02013823          	sd	zero,48(sp)
   1099c:	02013423          	sd	zero,40(sp)
   109a0:	00013c23          	sd	zero,24(sp)
   109a4:	00297f13          	andi	t5,s2,2
   109a8:	000f0463          	beqz	t5,109b0 <_vfprintf_r+0x244>
   109ac:	002a8a9b          	addiw	s5,s5,2
   109b0:	08497e93          	andi	t4,s2,132
   109b4:	11013783          	ld	a5,272(sp)
   109b8:	000e9663          	bnez	t4,109c4 <_vfprintf_r+0x258>
   109bc:	415a06bb          	subw	a3,s4,s5
   109c0:	52d04ce3          	bgtz	a3,116f8 <_vfprintf_r+0xf8c>
   109c4:	0cf14703          	lbu	a4,207(sp)
   109c8:	02070c63          	beqz	a4,10a00 <_vfprintf_r+0x294>
   109cc:	10812703          	lw	a4,264(sp)
   109d0:	0cf10693          	addi	a3,sp,207
   109d4:	00ddb023          	sd	a3,0(s11)
   109d8:	0017071b          	addiw	a4,a4,1
   109dc:	00100693          	li	a3,1
   109e0:	00178793          	addi	a5,a5,1
   109e4:	00ddb423          	sd	a3,8(s11)
   109e8:	10e12423          	sw	a4,264(sp)
   109ec:	0007069b          	sext.w	a3,a4
   109f0:	10f13823          	sd	a5,272(sp)
   109f4:	00700713          	li	a4,7
   109f8:	010d8d93          	addi	s11,s11,16
   109fc:	46d74863          	blt	a4,a3,10e6c <_vfprintf_r+0x700>
   10a00:	020f0c63          	beqz	t5,10a38 <_vfprintf_r+0x2cc>
   10a04:	10812703          	lw	a4,264(sp)
   10a08:	0d010693          	addi	a3,sp,208
   10a0c:	00ddb023          	sd	a3,0(s11)
   10a10:	0017071b          	addiw	a4,a4,1
   10a14:	00200693          	li	a3,2
   10a18:	00278793          	addi	a5,a5,2
   10a1c:	00ddb423          	sd	a3,8(s11)
   10a20:	10e12423          	sw	a4,264(sp)
   10a24:	0007069b          	sext.w	a3,a4
   10a28:	10f13823          	sd	a5,272(sp)
   10a2c:	00700713          	li	a4,7
   10a30:	010d8d93          	addi	s11,s11,16
   10a34:	62d744e3          	blt	a4,a3,1185c <_vfprintf_r+0x10f0>
   10a38:	08000713          	li	a4,128
   10a3c:	2eee82e3          	beq	t4,a4,11520 <_vfprintf_r+0xdb4>
   10a40:	417e09bb          	subw	s3,t3,s7
   10a44:	3d3046e3          	bgtz	s3,11610 <_vfprintf_r+0xea4>
   10a48:	10097713          	andi	a4,s2,256
   10a4c:	1c0710e3          	bnez	a4,1140c <_vfprintf_r+0xca0>
   10a50:	10812703          	lw	a4,264(sp)
   10a54:	017787b3          	add	a5,a5,s7
   10a58:	01adb023          	sd	s10,0(s11)
   10a5c:	0017069b          	addiw	a3,a4,1
   10a60:	017db423          	sd	s7,8(s11)
   10a64:	10f13823          	sd	a5,272(sp)
   10a68:	10d12423          	sw	a3,264(sp)
   10a6c:	00700713          	li	a4,7
   10a70:	52d74263          	blt	a4,a3,10f94 <_vfprintf_r+0x828>
   10a74:	010d8d93          	addi	s11,s11,16
   10a78:	00497913          	andi	s2,s2,4
   10a7c:	00090663          	beqz	s2,10a88 <_vfprintf_r+0x31c>
   10a80:	415a04bb          	subw	s1,s4,s5
   10a84:	609044e3          	bgtz	s1,1188c <_vfprintf_r+0x1120>
   10a88:	000a0713          	mv	a4,s4
   10a8c:	015a5463          	bge	s4,s5,10a94 <_vfprintf_r+0x328>
   10a90:	000a8713          	mv	a4,s5
   10a94:	00013683          	ld	a3,0(sp)
   10a98:	00d7073b          	addw	a4,a4,a3
   10a9c:	00e13023          	sd	a4,0(sp)
   10aa0:	420798e3          	bnez	a5,116d0 <_vfprintf_r+0xf64>
   10aa4:	01013783          	ld	a5,16(sp)
   10aa8:	10012423          	sw	zero,264(sp)
   10aac:	00078863          	beqz	a5,10abc <_vfprintf_r+0x350>
   10ab0:	01013583          	ld	a1,16(sp)
   10ab4:	000c8513          	mv	a0,s9
   10ab8:	7a1020ef          	jal	ra,13a58 <_free_r>
   10abc:	18010d93          	addi	s11,sp,384
   10ac0:	00040d13          	mv	s10,s0
   10ac4:	000d4783          	lbu	a5,0(s10)
   10ac8:	da079ce3          	bnez	a5,10880 <_vfprintf_r+0x114>
   10acc:	11013783          	ld	a5,272(sp)
   10ad0:	00078463          	beqz	a5,10ad8 <_vfprintf_r+0x36c>
   10ad4:	2690106f          	j	1253c <_vfprintf_r+0x1dd0>
   10ad8:	010c5783          	lhu	a5,16(s8)
   10adc:	0407f793          	andi	a5,a5,64
   10ae0:	00078463          	beqz	a5,10ae8 <_vfprintf_r+0x37c>
   10ae4:	7e10106f          	j	12ac4 <_vfprintf_r+0x2358>
   10ae8:	26813083          	ld	ra,616(sp)
   10aec:	26013403          	ld	s0,608(sp)
   10af0:	00013503          	ld	a0,0(sp)
   10af4:	25813483          	ld	s1,600(sp)
   10af8:	25013903          	ld	s2,592(sp)
   10afc:	24813983          	ld	s3,584(sp)
   10b00:	24013a03          	ld	s4,576(sp)
   10b04:	23813a83          	ld	s5,568(sp)
   10b08:	23013b03          	ld	s6,560(sp)
   10b0c:	22813b83          	ld	s7,552(sp)
   10b10:	22013c03          	ld	s8,544(sp)
   10b14:	21813c83          	ld	s9,536(sp)
   10b18:	21013d03          	ld	s10,528(sp)
   10b1c:	20813d83          	ld	s11,520(sp)
   10b20:	27010113          	addi	sp,sp,624
   10b24:	00008067          	ret
   10b28:	01096913          	ori	s2,s2,16
   10b2c:	00044483          	lbu	s1,0(s0)
   10b30:	0009091b          	sext.w	s2,s2
   10b34:	dd5ff06f          	j	10908 <_vfprintf_r+0x19c>
   10b38:	000c0593          	mv	a1,s8
   10b3c:	000c8513          	mv	a0,s9
   10b40:	410020ef          	jal	ra,12f50 <__swsetup_r>
   10b44:	00050463          	beqz	a0,10b4c <_vfprintf_r+0x3e0>
   10b48:	77d0106f          	j	12ac4 <_vfprintf_r+0x2358>
   10b4c:	010c5783          	lhu	a5,16(s8)
   10b50:	00a00713          	li	a4,10
   10b54:	01a7f793          	andi	a5,a5,26
   10b58:	cee794e3          	bne	a5,a4,10840 <_vfprintf_r+0xd4>
   10b5c:	012c1783          	lh	a5,18(s8)
   10b60:	ce07c0e3          	bltz	a5,10840 <_vfprintf_r+0xd4>
   10b64:	00813683          	ld	a3,8(sp)
   10b68:	00098613          	mv	a2,s3
   10b6c:	000c0593          	mv	a1,s8
   10b70:	000c8513          	mv	a0,s9
   10b74:	31c020ef          	jal	ra,12e90 <__sbprintf>
   10b78:	00a13023          	sd	a0,0(sp)
   10b7c:	f6dff06f          	j	10ae8 <_vfprintf_r+0x37c>
   10b80:	41a404bb          	subw	s1,s0,s10
   10b84:	d0049ee3          	bnez	s1,108a0 <_vfprintf_r+0x134>
   10b88:	00044783          	lbu	a5,0(s0)
   10b8c:	d55ff06f          	j	108e0 <_vfprintf_r+0x174>
   10b90:	10010613          	addi	a2,sp,256
   10b94:	000c0593          	mv	a1,s8
   10b98:	000c8513          	mv	a0,s9
   10b9c:	2590b0ef          	jal	ra,1c5f4 <__sprint_r>
   10ba0:	f2051ce3          	bnez	a0,10ad8 <_vfprintf_r+0x36c>
   10ba4:	18010d93          	addi	s11,sp,384
   10ba8:	d29ff06f          	j	108d0 <_vfprintf_r+0x164>
   10bac:	00897793          	andi	a5,s2,8
   10bb0:	000b8e13          	mv	t3,s7
   10bb4:	00078463          	beqz	a5,10bbc <_vfprintf_r+0x450>
   10bb8:	0780106f          	j	11c30 <_vfprintf_r+0x14c4>
   10bbc:	00813783          	ld	a5,8(sp)
   10bc0:	01713823          	sd	s7,16(sp)
   10bc4:	0007b507          	fld	fa0,0(a5)
   10bc8:	00878793          	addi	a5,a5,8
   10bcc:	00f13423          	sd	a5,8(sp)
   10bd0:	4d5100ef          	jal	ra,218a4 <__extenddftf2>
   10bd4:	01013e03          	ld	t3,16(sp)
   10bd8:	0ea13823          	sd	a0,240(sp)
   10bdc:	0eb13c23          	sd	a1,248(sp)
   10be0:	0f010513          	addi	a0,sp,240
   10be4:	01c13823          	sd	t3,16(sp)
   10be8:	454060ef          	jal	ra,1703c <_ldcheck>
   10bec:	0ca12c23          	sw	a0,216(sp)
   10bf0:	00200793          	li	a5,2
   10bf4:	01013e03          	ld	t3,16(sp)
   10bf8:	00f51463          	bne	a0,a5,10c00 <_vfprintf_r+0x494>
   10bfc:	4b80106f          	j	120b4 <_vfprintf_r+0x1948>
   10c00:	00100793          	li	a5,1
   10c04:	00f51463          	bne	a0,a5,10c0c <_vfprintf_r+0x4a0>
   10c08:	60c0106f          	j	12214 <_vfprintf_r+0x1aa8>
   10c0c:	06100793          	li	a5,97
   10c10:	00f49463          	bne	s1,a5,10c18 <_vfprintf_r+0x4ac>
   10c14:	6f10106f          	j	12b04 <_vfprintf_r+0x2398>
   10c18:	04100793          	li	a5,65
   10c1c:	00f49463          	bne	s1,a5,10c24 <_vfprintf_r+0x4b8>
   10c20:	1690106f          	j	12588 <_vfprintf_r+0x1e1c>
   10c24:	fdf4f713          	andi	a4,s1,-33
   10c28:	fff00793          	li	a5,-1
   10c2c:	02e13423          	sd	a4,40(sp)
   10c30:	00fe1463          	bne	t3,a5,10c38 <_vfprintf_r+0x4cc>
   10c34:	7e10106f          	j	12c14 <_vfprintf_r+0x24a8>
   10c38:	04700793          	li	a5,71
   10c3c:	00f71463          	bne	a4,a5,10c44 <_vfprintf_r+0x4d8>
   10c40:	7dd0106f          	j	12c1c <_vfprintf_r+0x24b0>
   10c44:	0f813a83          	ld	s5,248(sp)
   10c48:	10096793          	ori	a5,s2,256
   10c4c:	03213823          	sd	s2,48(sp)
   10c50:	0f013b83          	ld	s7,240(sp)
   10c54:	0007879b          	sext.w	a5,a5
   10c58:	000ad463          	bgez	s5,10c60 <_vfprintf_r+0x4f4>
   10c5c:	4650106f          	j	128c0 <_vfprintf_r+0x2154>
   10c60:	06013023          	sd	zero,96(sp)
   10c64:	00078913          	mv	s2,a5
   10c68:	00013823          	sd	zero,16(sp)
   10c6c:	02813703          	ld	a4,40(sp)
   10c70:	04600793          	li	a5,70
   10c74:	00f71463          	bne	a4,a5,10c7c <_vfprintf_r+0x510>
   10c78:	4990106f          	j	12910 <_vfprintf_r+0x21a4>
   10c7c:	04500793          	li	a5,69
   10c80:	00f71463          	bne	a4,a5,10c88 <_vfprintf_r+0x51c>
   10c84:	6910106f          	j	12b14 <_vfprintf_r+0x23a8>
   10c88:	000e0713          	mv	a4,t3
   10c8c:	0d810793          	addi	a5,sp,216
   10c90:	0e810893          	addi	a7,sp,232
   10c94:	0dc10813          	addi	a6,sp,220
   10c98:	00200693          	li	a3,2
   10c9c:	000b8593          	mv	a1,s7
   10ca0:	000a8613          	mv	a2,s5
   10ca4:	000c8513          	mv	a0,s9
   10ca8:	01c13c23          	sd	t3,24(sp)
   10cac:	090050ef          	jal	ra,15d3c <_ldtoa_r>
   10cb0:	02813703          	ld	a4,40(sp)
   10cb4:	04700793          	li	a5,71
   10cb8:	01813e03          	ld	t3,24(sp)
   10cbc:	00050d13          	mv	s10,a0
   10cc0:	00f70463          	beq	a4,a5,10cc8 <_vfprintf_r+0x55c>
   10cc4:	19c0206f          	j	12e60 <_vfprintf_r+0x26f4>
   10cc8:	03013783          	ld	a5,48(sp)
   10ccc:	0017f793          	andi	a5,a5,1
   10cd0:	00078463          	beqz	a5,10cd8 <_vfprintf_r+0x56c>
   10cd4:	6210106f          	j	12af4 <_vfprintf_r+0x2388>
   10cd8:	0e813783          	ld	a5,232(sp)
   10cdc:	41a787bb          	subw	a5,a5,s10
   10ce0:	02f13023          	sd	a5,32(sp)
   10ce4:	0d812703          	lw	a4,216(sp)
   10ce8:	04700793          	li	a5,71
   10cec:	00e13c23          	sd	a4,24(sp)
   10cf0:	02813703          	ld	a4,40(sp)
   10cf4:	00f71463          	bne	a4,a5,10cfc <_vfprintf_r+0x590>
   10cf8:	33d0106f          	j	12834 <_vfprintf_r+0x20c8>
   10cfc:	02813703          	ld	a4,40(sp)
   10d00:	04600793          	li	a5,70
   10d04:	00f71463          	bne	a4,a5,10d0c <_vfprintf_r+0x5a0>
   10d08:	5990106f          	j	12aa0 <_vfprintf_r+0x2334>
   10d0c:	01813783          	ld	a5,24(sp)
   10d10:	02813603          	ld	a2,40(sp)
   10d14:	04100713          	li	a4,65
   10d18:	fff78a9b          	addiw	s5,a5,-1
   10d1c:	0d512c23          	sw	s5,216(sp)
   10d20:	0ff4f793          	andi	a5,s1,255
   10d24:	00000693          	li	a3,0
   10d28:	00e61863          	bne	a2,a4,10d38 <_vfprintf_r+0x5cc>
   10d2c:	00f7879b          	addiw	a5,a5,15
   10d30:	0ff7f793          	andi	a5,a5,255
   10d34:	00100693          	li	a3,1
   10d38:	0ef10023          	sb	a5,224(sp)
   10d3c:	02b00793          	li	a5,43
   10d40:	000ada63          	bgez	s5,10d54 <_vfprintf_r+0x5e8>
   10d44:	01813703          	ld	a4,24(sp)
   10d48:	00100793          	li	a5,1
   10d4c:	40e78abb          	subw	s5,a5,a4
   10d50:	02d00793          	li	a5,45
   10d54:	0ef100a3          	sb	a5,225(sp)
   10d58:	00900793          	li	a5,9
   10d5c:	0157c463          	blt	a5,s5,10d64 <_vfprintf_r+0x5f8>
   10d60:	70d0106f          	j	12c6c <_vfprintf_r+0x2500>
   10d64:	0ef10913          	addi	s2,sp,239
   10d68:	00090b93          	mv	s7,s2
   10d6c:	00813c23          	sd	s0,24(sp)
   10d70:	00a00593          	li	a1,10
   10d74:	000a8513          	mv	a0,s5
   10d78:	030110ef          	jal	ra,21da8 <__moddi3>
   10d7c:	0305079b          	addiw	a5,a0,48
   10d80:	fefb8fa3          	sb	a5,-1(s7)
   10d84:	000a8513          	mv	a0,s5
   10d88:	00a00593          	li	a1,10
   10d8c:	799100ef          	jal	ra,21d24 <__divdi3>
   10d90:	000a8413          	mv	s0,s5
   10d94:	06300793          	li	a5,99
   10d98:	000b8993          	mv	s3,s7
   10d9c:	00050a9b          	sext.w	s5,a0
   10da0:	fffb8b93          	addi	s7,s7,-1
   10da4:	fc87c6e3          	blt	a5,s0,10d70 <_vfprintf_r+0x604>
   10da8:	030a879b          	addiw	a5,s5,48
   10dac:	0ff7f693          	andi	a3,a5,255
   10db0:	fedb8fa3          	sb	a3,-1(s7)
   10db4:	ffe98793          	addi	a5,s3,-2
   10db8:	01813403          	ld	s0,24(sp)
   10dbc:	0127e463          	bltu	a5,s2,10dc4 <_vfprintf_r+0x658>
   10dc0:	0880206f          	j	12e48 <_vfprintf_r+0x26dc>
   10dc4:	0e210713          	addi	a4,sp,226
   10dc8:	0080006f          	j	10dd0 <_vfprintf_r+0x664>
   10dcc:	0007c683          	lbu	a3,0(a5)
   10dd0:	00d70023          	sb	a3,0(a4)
   10dd4:	00178793          	addi	a5,a5,1
   10dd8:	00170713          	addi	a4,a4,1
   10ddc:	ff2798e3          	bne	a5,s2,10dcc <_vfprintf_r+0x660>
   10de0:	0f110793          	addi	a5,sp,241
   10de4:	0e210713          	addi	a4,sp,226
   10de8:	413787b3          	sub	a5,a5,s3
   10dec:	00f707b3          	add	a5,a4,a5
   10df0:	0e010713          	addi	a4,sp,224
   10df4:	40e787bb          	subw	a5,a5,a4
   10df8:	04f13823          	sd	a5,80(sp)
   10dfc:	05013783          	ld	a5,80(sp)
   10e00:	02013683          	ld	a3,32(sp)
   10e04:	00100713          	li	a4,1
   10e08:	00f68bbb          	addw	s7,a3,a5
   10e0c:	000b8793          	mv	a5,s7
   10e10:	00d74463          	blt	a4,a3,10e18 <_vfprintf_r+0x6ac>
   10e14:	7b10106f          	j	12dc4 <_vfprintf_r+0x2658>
   10e18:	03813703          	ld	a4,56(sp)
   10e1c:	00e78bbb          	addw	s7,a5,a4
   10e20:	03013783          	ld	a5,48(sp)
   10e24:	fffbca93          	not	s5,s7
   10e28:	43fada93          	srai	s5,s5,0x3f
   10e2c:	bff7f913          	andi	s2,a5,-1025
   10e30:	0009091b          	sext.w	s2,s2
   10e34:	015bfab3          	and	s5,s7,s5
   10e38:	10096913          	ori	s2,s2,256
   10e3c:	000a8a9b          	sext.w	s5,s5
   10e40:	02013823          	sd	zero,48(sp)
   10e44:	02013423          	sd	zero,40(sp)
   10e48:	00013c23          	sd	zero,24(sp)
   10e4c:	06013783          	ld	a5,96(sp)
   10e50:	00079463          	bnez	a5,10e58 <_vfprintf_r+0x6ec>
   10e54:	2590106f          	j	128ac <_vfprintf_r+0x2140>
   10e58:	02d00793          	li	a5,45
   10e5c:	0cf107a3          	sb	a5,207(sp)
   10e60:	00000e13          	li	t3,0
   10e64:	001a8a9b          	addiw	s5,s5,1
   10e68:	b3dff06f          	j	109a4 <_vfprintf_r+0x238>
   10e6c:	10010613          	addi	a2,sp,256
   10e70:	000c0593          	mv	a1,s8
   10e74:	000c8513          	mv	a0,s9
   10e78:	09c13023          	sd	t3,128(sp)
   10e7c:	07d13c23          	sd	t4,120(sp)
   10e80:	07e13023          	sd	t5,96(sp)
   10e84:	7700b0ef          	jal	ra,1c5f4 <__sprint_r>
   10e88:	04051ee3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   10e8c:	11013783          	ld	a5,272(sp)
   10e90:	08013e03          	ld	t3,128(sp)
   10e94:	07813e83          	ld	t4,120(sp)
   10e98:	06013f03          	ld	t5,96(sp)
   10e9c:	18010d93          	addi	s11,sp,384
   10ea0:	b61ff06f          	j	10a00 <_vfprintf_r+0x294>
   10ea4:	10812683          	lw	a3,264(sp)
   10ea8:	02013583          	ld	a1,32(sp)
   10eac:	00178993          	addi	s3,a5,1
   10eb0:	00100613          	li	a2,1
   10eb4:	0016879b          	addiw	a5,a3,1
   10eb8:	01adb023          	sd	s10,0(s11)
   10ebc:	00078713          	mv	a4,a5
   10ec0:	010d8493          	addi	s1,s11,16
   10ec4:	3eb65ae3          	bge	a2,a1,11ab8 <_vfprintf_r+0x134c>
   10ec8:	00100693          	li	a3,1
   10ecc:	10e12423          	sw	a4,264(sp)
   10ed0:	00ddb423          	sd	a3,8(s11)
   10ed4:	11313823          	sd	s3,272(sp)
   10ed8:	00700713          	li	a4,7
   10edc:	76f742e3          	blt	a4,a5,11e40 <_vfprintf_r+0x16d4>
   10ee0:	03813703          	ld	a4,56(sp)
   10ee4:	04013683          	ld	a3,64(sp)
   10ee8:	00178b9b          	addiw	s7,a5,1
   10eec:	00e989b3          	add	s3,s3,a4
   10ef0:	00d4b023          	sd	a3,0(s1)
   10ef4:	00e4b423          	sd	a4,8(s1)
   10ef8:	11313823          	sd	s3,272(sp)
   10efc:	11712423          	sw	s7,264(sp)
   10f00:	00700793          	li	a5,7
   10f04:	01048493          	addi	s1,s1,16
   10f08:	7577cee3          	blt	a5,s7,11e64 <_vfprintf_r+0x16f8>
   10f0c:	0f013503          	ld	a0,240(sp)
   10f10:	0f813583          	ld	a1,248(sp)
   10f14:	001b871b          	addiw	a4,s7,1
   10f18:	00000693          	li	a3,0
   10f1c:	00000613          	li	a2,0
   10f20:	00e12c23          	sw	a4,24(sp)
   10f24:	1780f0ef          	jal	ra,2009c <__eqtf2>
   10f28:	01812703          	lw	a4,24(sp)
   10f2c:	02013783          	ld	a5,32(sp)
   10f30:	01048d93          	addi	s11,s1,16
   10f34:	0007069b          	sext.w	a3,a4
   10f38:	fff7879b          	addiw	a5,a5,-1
   10f3c:	3a0502e3          	beqz	a0,11ae0 <_vfprintf_r+0x1374>
   10f40:	00f989b3          	add	s3,s3,a5
   10f44:	001d0813          	addi	a6,s10,1
   10f48:	00f4b423          	sd	a5,8(s1)
   10f4c:	0104b023          	sd	a6,0(s1)
   10f50:	11313823          	sd	s3,272(sp)
   10f54:	10e12423          	sw	a4,264(sp)
   10f58:	00700793          	li	a5,7
   10f5c:	54d7cae3          	blt	a5,a3,11cb0 <_vfprintf_r+0x1544>
   10f60:	02048793          	addi	a5,s1,32
   10f64:	002b869b          	addiw	a3,s7,2
   10f68:	000d8493          	mv	s1,s11
   10f6c:	00078d93          	mv	s11,a5
   10f70:	05013603          	ld	a2,80(sp)
   10f74:	0e010713          	addi	a4,sp,224
   10f78:	00e4b023          	sd	a4,0(s1)
   10f7c:	013607b3          	add	a5,a2,s3
   10f80:	00c4b423          	sd	a2,8(s1)
   10f84:	10f13823          	sd	a5,272(sp)
   10f88:	10d12423          	sw	a3,264(sp)
   10f8c:	00700713          	li	a4,7
   10f90:	aed754e3          	bge	a4,a3,10a78 <_vfprintf_r+0x30c>
   10f94:	10010613          	addi	a2,sp,256
   10f98:	000c0593          	mv	a1,s8
   10f9c:	000c8513          	mv	a0,s9
   10fa0:	6540b0ef          	jal	ra,1c5f4 <__sprint_r>
   10fa4:	74051063          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   10fa8:	11013783          	ld	a5,272(sp)
   10fac:	18010d93          	addi	s11,sp,384
   10fb0:	ac9ff06f          	j	10a78 <_vfprintf_r+0x30c>
   10fb4:	000c8513          	mv	a0,s9
   10fb8:	0c9020ef          	jal	ra,13880 <__sinit>
   10fbc:	825ff06f          	j	107e0 <_vfprintf_r+0x74>
   10fc0:	00813703          	ld	a4,8(sp)
   10fc4:	0c0107a3          	sb	zero,207(sp)
   10fc8:	00100a93          	li	s5,1
   10fcc:	00072783          	lw	a5,0(a4)
   10fd0:	00870713          	addi	a4,a4,8
   10fd4:	00e13423          	sd	a4,8(sp)
   10fd8:	10f10c23          	sb	a5,280(sp)
   10fdc:	00100b93          	li	s7,1
   10fe0:	11810d13          	addi	s10,sp,280
   10fe4:	9adff06f          	j	10990 <_vfprintf_r+0x224>
   10fe8:	00813783          	ld	a5,8(sp)
   10fec:	0c0107a3          	sb	zero,207(sp)
   10ff0:	000b8e13          	mv	t3,s7
   10ff4:	0007bd03          	ld	s10,0(a5)
   10ff8:	00878993          	addi	s3,a5,8
   10ffc:	5a0d04e3          	beqz	s10,11da4 <_vfprintf_r+0x1638>
   11000:	fff00793          	li	a5,-1
   11004:	00fb9463          	bne	s7,a5,1100c <_vfprintf_r+0x8a0>
   11008:	1ac0106f          	j	121b4 <_vfprintf_r+0x1a48>
   1100c:	000b8613          	mv	a2,s7
   11010:	00000593          	li	a1,0
   11014:	000d0513          	mv	a0,s10
   11018:	01713423          	sd	s7,8(sp)
   1101c:	485060ef          	jal	ra,17ca0 <memchr>
   11020:	00a13823          	sd	a0,16(sp)
   11024:	00813e03          	ld	t3,8(sp)
   11028:	00051463          	bnez	a0,11030 <_vfprintf_r+0x8c4>
   1102c:	1e10106f          	j	12a0c <_vfprintf_r+0x22a0>
   11030:	01013783          	ld	a5,16(sp)
   11034:	41a78bbb          	subw	s7,a5,s10
   11038:	0cf14783          	lbu	a5,207(sp)
   1103c:	fffbca93          	not	s5,s7
   11040:	43fada93          	srai	s5,s5,0x3f
   11044:	01313423          	sd	s3,8(sp)
   11048:	00013823          	sd	zero,16(sp)
   1104c:	02013823          	sd	zero,48(sp)
   11050:	02013423          	sd	zero,40(sp)
   11054:	00013c23          	sd	zero,24(sp)
   11058:	017afab3          	and	s5,s5,s7
   1105c:	00000e13          	li	t3,0
   11060:	940782e3          	beqz	a5,109a4 <_vfprintf_r+0x238>
   11064:	001a8a9b          	addiw	s5,s5,1
   11068:	93dff06f          	j	109a4 <_vfprintf_r+0x238>
   1106c:	01096913          	ori	s2,s2,16
   11070:	000b8e13          	mv	t3,s7
   11074:	0009091b          	sext.w	s2,s2
   11078:	00813703          	ld	a4,8(sp)
   1107c:	02097793          	andi	a5,s2,32
   11080:	00870693          	addi	a3,a4,8
   11084:	2e078ce3          	beqz	a5,11b7c <_vfprintf_r+0x1410>
   11088:	00073983          	ld	s3,0(a4)
   1108c:	bff97713          	andi	a4,s2,-1025
   11090:	00070a9b          	sext.w	s5,a4
   11094:	00d13423          	sd	a3,8(sp)
   11098:	00000793          	li	a5,0
   1109c:	0c0107a3          	sb	zero,207(sp)
   110a0:	fff00693          	li	a3,-1
   110a4:	2cde0063          	beq	t3,a3,11364 <_vfprintf_r+0xbf8>
   110a8:	f7faf913          	andi	s2,s5,-129
   110ac:	0009091b          	sext.w	s2,s2
   110b0:	2a099863          	bnez	s3,11360 <_vfprintf_r+0xbf4>
   110b4:	300e1663          	bnez	t3,113c0 <_vfprintf_r+0xc54>
   110b8:	28079c63          	bnez	a5,11350 <_vfprintf_r+0xbe4>
   110bc:	001afb93          	andi	s7,s5,1
   110c0:	17c10d13          	addi	s10,sp,380
   110c4:	320b98e3          	bnez	s7,11bf4 <_vfprintf_r+0x1488>
   110c8:	0cf14783          	lbu	a5,207(sp)
   110cc:	000b8a9b          	sext.w	s5,s7
   110d0:	01cbd463          	bge	s7,t3,110d8 <_vfprintf_r+0x96c>
   110d4:	000e0a9b          	sext.w	s5,t3
   110d8:	00013823          	sd	zero,16(sp)
   110dc:	02013823          	sd	zero,48(sp)
   110e0:	02013423          	sd	zero,40(sp)
   110e4:	00013c23          	sd	zero,24(sp)
   110e8:	f6079ee3          	bnez	a5,11064 <_vfprintf_r+0x8f8>
   110ec:	8b9ff06f          	j	109a4 <_vfprintf_r+0x238>
   110f0:	00044483          	lbu	s1,0(s0)
   110f4:	06800793          	li	a5,104
   110f8:	44f484e3          	beq	s1,a5,11d40 <_vfprintf_r+0x15d4>
   110fc:	04096913          	ori	s2,s2,64
   11100:	0009091b          	sext.w	s2,s2
   11104:	805ff06f          	j	10908 <_vfprintf_r+0x19c>
   11108:	00813683          	ld	a3,8(sp)
   1110c:	02097793          	andi	a5,s2,32
   11110:	0006b703          	ld	a4,0(a3) # 2000 <register_fini-0xe0b0>
   11114:	00868693          	addi	a3,a3,8
   11118:	00d13423          	sd	a3,8(sp)
   1111c:	2e0794e3          	bnez	a5,11c04 <_vfprintf_r+0x1498>
   11120:	01097793          	andi	a5,s2,16
   11124:	2e0790e3          	bnez	a5,11c04 <_vfprintf_r+0x1498>
   11128:	04097793          	andi	a5,s2,64
   1112c:	00078463          	beqz	a5,11134 <_vfprintf_r+0x9c8>
   11130:	3cc0106f          	j	124fc <_vfprintf_r+0x1d90>
   11134:	20097913          	andi	s2,s2,512
   11138:	00013783          	ld	a5,0(sp)
   1113c:	00091463          	bnez	s2,11144 <_vfprintf_r+0x9d8>
   11140:	2c90106f          	j	12c08 <_vfprintf_r+0x249c>
   11144:	00f70023          	sb	a5,0(a4)
   11148:	00040d13          	mv	s10,s0
   1114c:	979ff06f          	j	10ac4 <_vfprintf_r+0x358>
   11150:	00044483          	lbu	s1,0(s0)
   11154:	06c00793          	li	a5,108
   11158:	40f48ee3          	beq	s1,a5,11d74 <_vfprintf_r+0x1608>
   1115c:	01096913          	ori	s2,s2,16
   11160:	0009091b          	sext.w	s2,s2
   11164:	fa4ff06f          	j	10908 <_vfprintf_r+0x19c>
   11168:	02096913          	ori	s2,s2,32
   1116c:	00044483          	lbu	s1,0(s0)
   11170:	0009091b          	sext.w	s2,s2
   11174:	f94ff06f          	j	10908 <_vfprintf_r+0x19c>
   11178:	00813683          	ld	a3,8(sp)
   1117c:	ffff87b7          	lui	a5,0xffff8
   11180:	8307c793          	xori	a5,a5,-2000
   11184:	0cf11823          	sh	a5,208(sp)
   11188:	00868793          	addi	a5,a3,8
   1118c:	00296713          	ori	a4,s2,2
   11190:	00f13423          	sd	a5,8(sp)
   11194:	00011797          	auipc	a5,0x11
   11198:	cec78793          	addi	a5,a5,-788 # 21e80 <__clzdi2+0x9c>
   1119c:	04f13423          	sd	a5,72(sp)
   111a0:	0006b983          	ld	s3,0(a3)
   111a4:	000b8e13          	mv	t3,s7
   111a8:	00070a9b          	sext.w	s5,a4
   111ac:	00200793          	li	a5,2
   111b0:	07800493          	li	s1,120
   111b4:	ee9ff06f          	j	1109c <_vfprintf_r+0x930>
   111b8:	01096713          	ori	a4,s2,16
   111bc:	000b8e13          	mv	t3,s7
   111c0:	00070a9b          	sext.w	s5,a4
   111c4:	00813703          	ld	a4,8(sp)
   111c8:	020af793          	andi	a5,s5,32
   111cc:	00870693          	addi	a3,a4,8
   111d0:	180780e3          	beqz	a5,11b50 <_vfprintf_r+0x13e4>
   111d4:	00073983          	ld	s3,0(a4)
   111d8:	00100793          	li	a5,1
   111dc:	00d13423          	sd	a3,8(sp)
   111e0:	ebdff06f          	j	1109c <_vfprintf_r+0x930>
   111e4:	00896913          	ori	s2,s2,8
   111e8:	00044483          	lbu	s1,0(s0)
   111ec:	0009091b          	sext.w	s2,s2
   111f0:	f18ff06f          	j	10908 <_vfprintf_r+0x19c>
   111f4:	08096913          	ori	s2,s2,128
   111f8:	00044483          	lbu	s1,0(s0)
   111fc:	0009091b          	sext.w	s2,s2
   11200:	f08ff06f          	j	10908 <_vfprintf_r+0x19c>
   11204:	00044483          	lbu	s1,0(s0)
   11208:	00140793          	addi	a5,s0,1
   1120c:	01549463          	bne	s1,s5,11214 <_vfprintf_r+0xaa8>
   11210:	40d0106f          	j	12e1c <_vfprintf_r+0x26b0>
   11214:	fd04871b          	addiw	a4,s1,-48
   11218:	00078413          	mv	s0,a5
   1121c:	00000b93          	li	s7,0
   11220:	eee9ea63          	bltu	s3,a4,10914 <_vfprintf_r+0x1a8>
   11224:	00044603          	lbu	a2,0(s0)
   11228:	002b979b          	slliw	a5,s7,0x2
   1122c:	017787bb          	addw	a5,a5,s7
   11230:	0017979b          	slliw	a5,a5,0x1
   11234:	00e78bbb          	addw	s7,a5,a4
   11238:	fd06071b          	addiw	a4,a2,-48
   1123c:	00140413          	addi	s0,s0,1
   11240:	fee9f2e3          	bgeu	s3,a4,11224 <_vfprintf_r+0xab8>
   11244:	00060493          	mv	s1,a2
   11248:	eccff06f          	j	10914 <_vfprintf_r+0x1a8>
   1124c:	00044483          	lbu	s1,0(s0)
   11250:	00496913          	ori	s2,s2,4
   11254:	0009091b          	sext.w	s2,s2
   11258:	eb0ff06f          	j	10908 <_vfprintf_r+0x19c>
   1125c:	02b00793          	li	a5,43
   11260:	00044483          	lbu	s1,0(s0)
   11264:	0cf107a3          	sb	a5,207(sp)
   11268:	ea0ff06f          	j	10908 <_vfprintf_r+0x19c>
   1126c:	00813783          	ld	a5,8(sp)
   11270:	00044483          	lbu	s1,0(s0)
   11274:	0007aa03          	lw	s4,0(a5)
   11278:	00878793          	addi	a5,a5,8
   1127c:	00f13423          	sd	a5,8(sp)
   11280:	e80a5463          	bgez	s4,10908 <_vfprintf_r+0x19c>
   11284:	41400a3b          	negw	s4,s4
   11288:	fc9ff06f          	j	11250 <_vfprintf_r+0xae4>
   1128c:	000c8513          	mv	a0,s9
   11290:	61d050ef          	jal	ra,170ac <_localeconv_r>
   11294:	00853783          	ld	a5,8(a0)
   11298:	00078513          	mv	a0,a5
   1129c:	06f13823          	sd	a5,112(sp)
   112a0:	c00ff0ef          	jal	ra,106a0 <strlen>
   112a4:	00050793          	mv	a5,a0
   112a8:	000c8513          	mv	a0,s9
   112ac:	00078493          	mv	s1,a5
   112b0:	06f13423          	sd	a5,104(sp)
   112b4:	5f9050ef          	jal	ra,170ac <_localeconv_r>
   112b8:	01053783          	ld	a5,16(a0)
   112bc:	04f13c23          	sd	a5,88(sp)
   112c0:	14048ae3          	beqz	s1,11c14 <_vfprintf_r+0x14a8>
   112c4:	00044483          	lbu	s1,0(s0)
   112c8:	e4078063          	beqz	a5,10908 <_vfprintf_r+0x19c>
   112cc:	0007c783          	lbu	a5,0(a5)
   112d0:	e2078c63          	beqz	a5,10908 <_vfprintf_r+0x19c>
   112d4:	40096913          	ori	s2,s2,1024
   112d8:	0009091b          	sext.w	s2,s2
   112dc:	e2cff06f          	j	10908 <_vfprintf_r+0x19c>
   112e0:	00196913          	ori	s2,s2,1
   112e4:	00044483          	lbu	s1,0(s0)
   112e8:	0009091b          	sext.w	s2,s2
   112ec:	e1cff06f          	j	10908 <_vfprintf_r+0x19c>
   112f0:	0cf14783          	lbu	a5,207(sp)
   112f4:	00044483          	lbu	s1,0(s0)
   112f8:	e0079863          	bnez	a5,10908 <_vfprintf_r+0x19c>
   112fc:	02000793          	li	a5,32
   11300:	0cf107a3          	sb	a5,207(sp)
   11304:	e04ff06f          	j	10908 <_vfprintf_r+0x19c>
   11308:	01096913          	ori	s2,s2,16
   1130c:	000b8e13          	mv	t3,s7
   11310:	0009091b          	sext.w	s2,s2
   11314:	00813703          	ld	a4,8(sp)
   11318:	02097793          	andi	a5,s2,32
   1131c:	00870693          	addi	a3,a4,8
   11320:	080780e3          	beqz	a5,11ba0 <_vfprintf_r+0x1434>
   11324:	00073783          	ld	a5,0(a4)
   11328:	00078993          	mv	s3,a5
   1132c:	0807cae3          	bltz	a5,11bc0 <_vfprintf_r+0x1454>
   11330:	fff00793          	li	a5,-1
   11334:	50fe0063          	beq	t3,a5,11834 <_vfprintf_r+0x10c8>
   11338:	f7f97713          	andi	a4,s2,-129
   1133c:	00d13423          	sd	a3,8(sp)
   11340:	00070a9b          	sext.w	s5,a4
   11344:	4e099c63          	bnez	s3,1183c <_vfprintf_r+0x10d0>
   11348:	4e0e1e63          	bnez	t3,11844 <_vfprintf_r+0x10d8>
   1134c:	000a8913          	mv	s2,s5
   11350:	00000e13          	li	t3,0
   11354:	00000b93          	li	s7,0
   11358:	17c10d13          	addi	s10,sp,380
   1135c:	d6dff06f          	j	110c8 <_vfprintf_r+0x95c>
   11360:	00090a93          	mv	s5,s2
   11364:	00100693          	li	a3,1
   11368:	4cd78a63          	beq	a5,a3,1183c <_vfprintf_r+0x10d0>
   1136c:	00200693          	li	a3,2
   11370:	06d78463          	beq	a5,a3,113d8 <_vfprintf_r+0xc6c>
   11374:	17c10b93          	addi	s7,sp,380
   11378:	000b8d13          	mv	s10,s7
   1137c:	0079f793          	andi	a5,s3,7
   11380:	03078793          	addi	a5,a5,48
   11384:	fefd0fa3          	sb	a5,-1(s10)
   11388:	0039d993          	srli	s3,s3,0x3
   1138c:	000d0693          	mv	a3,s10
   11390:	fffd0d13          	addi	s10,s10,-1
   11394:	fe0994e3          	bnez	s3,1137c <_vfprintf_r+0xc10>
   11398:	001af613          	andi	a2,s5,1
   1139c:	06060263          	beqz	a2,11400 <_vfprintf_r+0xc94>
   113a0:	03000613          	li	a2,48
   113a4:	04c78e63          	beq	a5,a2,11400 <_vfprintf_r+0xc94>
   113a8:	ffe68693          	addi	a3,a3,-2
   113ac:	fecd0fa3          	sb	a2,-1(s10)
   113b0:	40db8bbb          	subw	s7,s7,a3
   113b4:	000a8913          	mv	s2,s5
   113b8:	00068d13          	mv	s10,a3
   113bc:	d0dff06f          	j	110c8 <_vfprintf_r+0x95c>
   113c0:	00100713          	li	a4,1
   113c4:	00e79463          	bne	a5,a4,113cc <_vfprintf_r+0xc60>
   113c8:	7340106f          	j	12afc <_vfprintf_r+0x2390>
   113cc:	00200713          	li	a4,2
   113d0:	00090a93          	mv	s5,s2
   113d4:	fae790e3          	bne	a5,a4,11374 <_vfprintf_r+0xc08>
   113d8:	04813703          	ld	a4,72(sp)
   113dc:	17c10b93          	addi	s7,sp,380
   113e0:	000b8d13          	mv	s10,s7
   113e4:	00f9f793          	andi	a5,s3,15
   113e8:	00f707b3          	add	a5,a4,a5
   113ec:	0007c783          	lbu	a5,0(a5)
   113f0:	0049d993          	srli	s3,s3,0x4
   113f4:	fffd0d13          	addi	s10,s10,-1
   113f8:	00fd0023          	sb	a5,0(s10)
   113fc:	fe0994e3          	bnez	s3,113e4 <_vfprintf_r+0xc78>
   11400:	41ab8bbb          	subw	s7,s7,s10
   11404:	000a8913          	mv	s2,s5
   11408:	cc1ff06f          	j	110c8 <_vfprintf_r+0x95c>
   1140c:	06500713          	li	a4,101
   11410:	a8975ae3          	bge	a4,s1,10ea4 <_vfprintf_r+0x738>
   11414:	0f013503          	ld	a0,240(sp)
   11418:	0f813583          	ld	a1,248(sp)
   1141c:	00000613          	li	a2,0
   11420:	00000693          	li	a3,0
   11424:	06f13023          	sd	a5,96(sp)
   11428:	4750e0ef          	jal	ra,2009c <__eqtf2>
   1142c:	06013783          	ld	a5,96(sp)
   11430:	50051063          	bnez	a0,11930 <_vfprintf_r+0x11c4>
   11434:	10812703          	lw	a4,264(sp)
   11438:	00011697          	auipc	a3,0x11
   1143c:	a6868693          	addi	a3,a3,-1432 # 21ea0 <__clzdi2+0xbc>
   11440:	00ddb023          	sd	a3,0(s11)
   11444:	0017071b          	addiw	a4,a4,1
   11448:	00100693          	li	a3,1
   1144c:	00178793          	addi	a5,a5,1
   11450:	00ddb423          	sd	a3,8(s11)
   11454:	10e12423          	sw	a4,264(sp)
   11458:	0007069b          	sext.w	a3,a4
   1145c:	10f13823          	sd	a5,272(sp)
   11460:	00700713          	li	a4,7
   11464:	010d8d93          	addi	s11,s11,16
   11468:	3ed748e3          	blt	a4,a3,12058 <_vfprintf_r+0x18ec>
   1146c:	0d812703          	lw	a4,216(sp)
   11470:	02013683          	ld	a3,32(sp)
   11474:	76d75463          	bge	a4,a3,11bdc <_vfprintf_r+0x1470>
   11478:	04013703          	ld	a4,64(sp)
   1147c:	03813683          	ld	a3,56(sp)
   11480:	010d8d93          	addi	s11,s11,16
   11484:	feedb823          	sd	a4,-16(s11)
   11488:	10812703          	lw	a4,264(sp)
   1148c:	00d787b3          	add	a5,a5,a3
   11490:	feddbc23          	sd	a3,-8(s11)
   11494:	0017071b          	addiw	a4,a4,1
   11498:	0007069b          	sext.w	a3,a4
   1149c:	10e12423          	sw	a4,264(sp)
   114a0:	10f13823          	sd	a5,272(sp)
   114a4:	00700713          	li	a4,7
   114a8:	0ad746e3          	blt	a4,a3,11d54 <_vfprintf_r+0x15e8>
   114ac:	02013703          	ld	a4,32(sp)
   114b0:	fff7049b          	addiw	s1,a4,-1
   114b4:	dc905263          	blez	s1,10a78 <_vfprintf_r+0x30c>
   114b8:	10812703          	lw	a4,264(sp)
   114bc:	3a9b5ee3          	bge	s6,s1,12078 <_vfprintf_r+0x190c>
   114c0:	00700993          	li	s3,7
   114c4:	00c0006f          	j	114d0 <_vfprintf_r+0xd64>
   114c8:	ff04849b          	addiw	s1,s1,-16
   114cc:	3a9b56e3          	bge	s6,s1,12078 <_vfprintf_r+0x190c>
   114d0:	0017069b          	addiw	a3,a4,1
   114d4:	01078793          	addi	a5,a5,16
   114d8:	00011717          	auipc	a4,0x11
   114dc:	b5070713          	addi	a4,a4,-1200 # 22028 <zeroes.0>
   114e0:	00edb023          	sd	a4,0(s11)
   114e4:	016db423          	sd	s6,8(s11)
   114e8:	10f13823          	sd	a5,272(sp)
   114ec:	0006871b          	sext.w	a4,a3
   114f0:	10d12423          	sw	a3,264(sp)
   114f4:	010d8d93          	addi	s11,s11,16
   114f8:	fce9d8e3          	bge	s3,a4,114c8 <_vfprintf_r+0xd5c>
   114fc:	10010613          	addi	a2,sp,256
   11500:	000c0593          	mv	a1,s8
   11504:	000c8513          	mv	a0,s9
   11508:	0ec0b0ef          	jal	ra,1c5f4 <__sprint_r>
   1150c:	1c051c63          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11510:	11013783          	ld	a5,272(sp)
   11514:	10812703          	lw	a4,264(sp)
   11518:	18010d93          	addi	s11,sp,384
   1151c:	fadff06f          	j	114c8 <_vfprintf_r+0xd5c>
   11520:	415a09bb          	subw	s3,s4,s5
   11524:	d1305e63          	blez	s3,10a40 <_vfprintf_r+0x2d4>
   11528:	10812703          	lw	a4,264(sp)
   1152c:	093b5663          	bge	s6,s3,115b8 <_vfprintf_r+0xe4c>
   11530:	06813023          	sd	s0,96(sp)
   11534:	00700893          	li	a7,7
   11538:	000c0413          	mv	s0,s8
   1153c:	00098c13          	mv	s8,s3
   11540:	000e0993          	mv	s3,t3
   11544:	00c0006f          	j	11550 <_vfprintf_r+0xde4>
   11548:	ff0c0c1b          	addiw	s8,s8,-16
   1154c:	058b5e63          	bge	s6,s8,115a8 <_vfprintf_r+0xe3c>
   11550:	0017069b          	addiw	a3,a4,1
   11554:	01078793          	addi	a5,a5,16
   11558:	00011717          	auipc	a4,0x11
   1155c:	ad070713          	addi	a4,a4,-1328 # 22028 <zeroes.0>
   11560:	00edb023          	sd	a4,0(s11)
   11564:	016db423          	sd	s6,8(s11)
   11568:	10f13823          	sd	a5,272(sp)
   1156c:	0006871b          	sext.w	a4,a3
   11570:	10d12423          	sw	a3,264(sp)
   11574:	010d8d93          	addi	s11,s11,16
   11578:	fce8d8e3          	bge	a7,a4,11548 <_vfprintf_r+0xddc>
   1157c:	10010613          	addi	a2,sp,256
   11580:	00040593          	mv	a1,s0
   11584:	000c8513          	mv	a0,s9
   11588:	06c0b0ef          	jal	ra,1c5f4 <__sprint_r>
   1158c:	320510e3          	bnez	a0,120ac <_vfprintf_r+0x1940>
   11590:	ff0c0c1b          	addiw	s8,s8,-16
   11594:	11013783          	ld	a5,272(sp)
   11598:	10812703          	lw	a4,264(sp)
   1159c:	18010d93          	addi	s11,sp,384
   115a0:	00700893          	li	a7,7
   115a4:	fb8b46e3          	blt	s6,s8,11550 <_vfprintf_r+0xde4>
   115a8:	00098e13          	mv	t3,s3
   115ac:	000c0993          	mv	s3,s8
   115b0:	00040c13          	mv	s8,s0
   115b4:	06013403          	ld	s0,96(sp)
   115b8:	0017071b          	addiw	a4,a4,1
   115bc:	00011697          	auipc	a3,0x11
   115c0:	a6c68693          	addi	a3,a3,-1428 # 22028 <zeroes.0>
   115c4:	013787b3          	add	a5,a5,s3
   115c8:	00ddb023          	sd	a3,0(s11)
   115cc:	013db423          	sd	s3,8(s11)
   115d0:	0007069b          	sext.w	a3,a4
   115d4:	10e12423          	sw	a4,264(sp)
   115d8:	10f13823          	sd	a5,272(sp)
   115dc:	00700713          	li	a4,7
   115e0:	010d8d93          	addi	s11,s11,16
   115e4:	c4d75e63          	bge	a4,a3,10a40 <_vfprintf_r+0x2d4>
   115e8:	10010613          	addi	a2,sp,256
   115ec:	000c0593          	mv	a1,s8
   115f0:	000c8513          	mv	a0,s9
   115f4:	07c13023          	sd	t3,96(sp)
   115f8:	7fd0a0ef          	jal	ra,1c5f4 <__sprint_r>
   115fc:	0e051463          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11600:	11013783          	ld	a5,272(sp)
   11604:	06013e03          	ld	t3,96(sp)
   11608:	18010d93          	addi	s11,sp,384
   1160c:	c34ff06f          	j	10a40 <_vfprintf_r+0x2d4>
   11610:	10812703          	lw	a4,264(sp)
   11614:	073b5663          	bge	s6,s3,11680 <_vfprintf_r+0xf14>
   11618:	00700893          	li	a7,7
   1161c:	00c0006f          	j	11628 <_vfprintf_r+0xebc>
   11620:	ff09899b          	addiw	s3,s3,-16
   11624:	053b5e63          	bge	s6,s3,11680 <_vfprintf_r+0xf14>
   11628:	0017069b          	addiw	a3,a4,1
   1162c:	01078793          	addi	a5,a5,16
   11630:	00011717          	auipc	a4,0x11
   11634:	9f870713          	addi	a4,a4,-1544 # 22028 <zeroes.0>
   11638:	00edb023          	sd	a4,0(s11)
   1163c:	016db423          	sd	s6,8(s11)
   11640:	10f13823          	sd	a5,272(sp)
   11644:	0006871b          	sext.w	a4,a3
   11648:	10d12423          	sw	a3,264(sp)
   1164c:	010d8d93          	addi	s11,s11,16
   11650:	fce8d8e3          	bge	a7,a4,11620 <_vfprintf_r+0xeb4>
   11654:	10010613          	addi	a2,sp,256
   11658:	000c0593          	mv	a1,s8
   1165c:	000c8513          	mv	a0,s9
   11660:	7950a0ef          	jal	ra,1c5f4 <__sprint_r>
   11664:	08051063          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11668:	ff09899b          	addiw	s3,s3,-16
   1166c:	11013783          	ld	a5,272(sp)
   11670:	10812703          	lw	a4,264(sp)
   11674:	18010d93          	addi	s11,sp,384
   11678:	00700893          	li	a7,7
   1167c:	fb3b46e3          	blt	s6,s3,11628 <_vfprintf_r+0xebc>
   11680:	0017071b          	addiw	a4,a4,1
   11684:	00011697          	auipc	a3,0x11
   11688:	9a468693          	addi	a3,a3,-1628 # 22028 <zeroes.0>
   1168c:	013787b3          	add	a5,a5,s3
   11690:	00ddb023          	sd	a3,0(s11)
   11694:	013db423          	sd	s3,8(s11)
   11698:	0007069b          	sext.w	a3,a4
   1169c:	10e12423          	sw	a4,264(sp)
   116a0:	10f13823          	sd	a5,272(sp)
   116a4:	00700713          	li	a4,7
   116a8:	010d8d93          	addi	s11,s11,16
   116ac:	b8d75e63          	bge	a4,a3,10a48 <_vfprintf_r+0x2dc>
   116b0:	10010613          	addi	a2,sp,256
   116b4:	000c0593          	mv	a1,s8
   116b8:	000c8513          	mv	a0,s9
   116bc:	7390a0ef          	jal	ra,1c5f4 <__sprint_r>
   116c0:	02051263          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   116c4:	11013783          	ld	a5,272(sp)
   116c8:	18010d93          	addi	s11,sp,384
   116cc:	b7cff06f          	j	10a48 <_vfprintf_r+0x2dc>
   116d0:	10010613          	addi	a2,sp,256
   116d4:	000c0593          	mv	a1,s8
   116d8:	000c8513          	mv	a0,s9
   116dc:	7190a0ef          	jal	ra,1c5f4 <__sprint_r>
   116e0:	bc050263          	beqz	a0,10aa4 <_vfprintf_r+0x338>
   116e4:	01013583          	ld	a1,16(sp)
   116e8:	be058863          	beqz	a1,10ad8 <_vfprintf_r+0x36c>
   116ec:	000c8513          	mv	a0,s9
   116f0:	368020ef          	jal	ra,13a58 <_free_r>
   116f4:	be4ff06f          	j	10ad8 <_vfprintf_r+0x36c>
   116f8:	10812703          	lw	a4,264(sp)
   116fc:	00011997          	auipc	s3,0x11
   11700:	91c98993          	addi	s3,s3,-1764 # 22018 <blanks.1>
   11704:	0cdb5863          	bge	s6,a3,117d4 <_vfprintf_r+0x1068>
   11708:	08813423          	sd	s0,136(sp)
   1170c:	00068413          	mv	s0,a3
   11710:	000c0693          	mv	a3,s8
   11714:	08913023          	sd	s1,128(sp)
   11718:	000a8c13          	mv	s8,s5
   1171c:	000c8493          	mv	s1,s9
   11720:	000a0a93          	mv	s5,s4
   11724:	000d0c93          	mv	s9,s10
   11728:	00090a13          	mv	s4,s2
   1172c:	000b8d13          	mv	s10,s7
   11730:	00700f93          	li	t6,7
   11734:	07e13023          	sd	t5,96(sp)
   11738:	07d13c23          	sd	t4,120(sp)
   1173c:	000e0b93          	mv	s7,t3
   11740:	00068913          	mv	s2,a3
   11744:	00c0006f          	j	11750 <_vfprintf_r+0xfe4>
   11748:	ff04041b          	addiw	s0,s0,-16
   1174c:	048b5863          	bge	s6,s0,1179c <_vfprintf_r+0x1030>
   11750:	0017071b          	addiw	a4,a4,1
   11754:	01078793          	addi	a5,a5,16
   11758:	013db023          	sd	s3,0(s11)
   1175c:	016db423          	sd	s6,8(s11)
   11760:	10f13823          	sd	a5,272(sp)
   11764:	10e12423          	sw	a4,264(sp)
   11768:	010d8d93          	addi	s11,s11,16
   1176c:	fcefdee3          	bge	t6,a4,11748 <_vfprintf_r+0xfdc>
   11770:	10010613          	addi	a2,sp,256
   11774:	00090593          	mv	a1,s2
   11778:	00048513          	mv	a0,s1
   1177c:	6790a0ef          	jal	ra,1c5f4 <__sprint_r>
   11780:	0a0518e3          	bnez	a0,12030 <_vfprintf_r+0x18c4>
   11784:	ff04041b          	addiw	s0,s0,-16
   11788:	11013783          	ld	a5,272(sp)
   1178c:	10812703          	lw	a4,264(sp)
   11790:	18010d93          	addi	s11,sp,384
   11794:	00700f93          	li	t6,7
   11798:	fa8b4ce3          	blt	s6,s0,11750 <_vfprintf_r+0xfe4>
   1179c:	000b8e13          	mv	t3,s7
   117a0:	00040693          	mv	a3,s0
   117a4:	000d0b93          	mv	s7,s10
   117a8:	06013f03          	ld	t5,96(sp)
   117ac:	000c8d13          	mv	s10,s9
   117b0:	07813e83          	ld	t4,120(sp)
   117b4:	00048c93          	mv	s9,s1
   117b8:	08813403          	ld	s0,136(sp)
   117bc:	08013483          	ld	s1,128(sp)
   117c0:	00090613          	mv	a2,s2
   117c4:	000a0913          	mv	s2,s4
   117c8:	000a8a13          	mv	s4,s5
   117cc:	000c0a93          	mv	s5,s8
   117d0:	00060c13          	mv	s8,a2
   117d4:	0017071b          	addiw	a4,a4,1
   117d8:	00d787b3          	add	a5,a5,a3
   117dc:	00ddb423          	sd	a3,8(s11)
   117e0:	013db023          	sd	s3,0(s11)
   117e4:	0007069b          	sext.w	a3,a4
   117e8:	10e12423          	sw	a4,264(sp)
   117ec:	10f13823          	sd	a5,272(sp)
   117f0:	00700713          	li	a4,7
   117f4:	010d8d93          	addi	s11,s11,16
   117f8:	9cd75663          	bge	a4,a3,109c4 <_vfprintf_r+0x258>
   117fc:	10010613          	addi	a2,sp,256
   11800:	000c0593          	mv	a1,s8
   11804:	000c8513          	mv	a0,s9
   11808:	09c13023          	sd	t3,128(sp)
   1180c:	07d13c23          	sd	t4,120(sp)
   11810:	07e13023          	sd	t5,96(sp)
   11814:	5e10a0ef          	jal	ra,1c5f4 <__sprint_r>
   11818:	ec0516e3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   1181c:	11013783          	ld	a5,272(sp)
   11820:	08013e03          	ld	t3,128(sp)
   11824:	07813e83          	ld	t4,120(sp)
   11828:	06013f03          	ld	t5,96(sp)
   1182c:	18010d93          	addi	s11,sp,384
   11830:	994ff06f          	j	109c4 <_vfprintf_r+0x258>
   11834:	00090a93          	mv	s5,s2
   11838:	00d13423          	sd	a3,8(sp)
   1183c:	00900793          	li	a5,9
   11840:	6537e463          	bltu	a5,s3,11e88 <_vfprintf_r+0x171c>
   11844:	0309899b          	addiw	s3,s3,48
   11848:	17310da3          	sb	s3,379(sp)
   1184c:	000a8913          	mv	s2,s5
   11850:	00100b93          	li	s7,1
   11854:	17b10d13          	addi	s10,sp,379
   11858:	871ff06f          	j	110c8 <_vfprintf_r+0x95c>
   1185c:	10010613          	addi	a2,sp,256
   11860:	000c0593          	mv	a1,s8
   11864:	000c8513          	mv	a0,s9
   11868:	07c13c23          	sd	t3,120(sp)
   1186c:	07d13023          	sd	t4,96(sp)
   11870:	5850a0ef          	jal	ra,1c5f4 <__sprint_r>
   11874:	e60518e3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11878:	11013783          	ld	a5,272(sp)
   1187c:	07813e03          	ld	t3,120(sp)
   11880:	06013e83          	ld	t4,96(sp)
   11884:	18010d93          	addi	s11,sp,384
   11888:	9b0ff06f          	j	10a38 <_vfprintf_r+0x2cc>
   1188c:	10812703          	lw	a4,264(sp)
   11890:	00010997          	auipc	s3,0x10
   11894:	78898993          	addi	s3,s3,1928 # 22018 <blanks.1>
   11898:	00700913          	li	s2,7
   1189c:	009b4863          	blt	s6,s1,118ac <_vfprintf_r+0x1140>
   118a0:	0540006f          	j	118f4 <_vfprintf_r+0x1188>
   118a4:	ff04849b          	addiw	s1,s1,-16
   118a8:	049b5663          	bge	s6,s1,118f4 <_vfprintf_r+0x1188>
   118ac:	0017071b          	addiw	a4,a4,1
   118b0:	01078793          	addi	a5,a5,16
   118b4:	013db023          	sd	s3,0(s11)
   118b8:	016db423          	sd	s6,8(s11)
   118bc:	10f13823          	sd	a5,272(sp)
   118c0:	10e12423          	sw	a4,264(sp)
   118c4:	010d8d93          	addi	s11,s11,16
   118c8:	fce95ee3          	bge	s2,a4,118a4 <_vfprintf_r+0x1138>
   118cc:	10010613          	addi	a2,sp,256
   118d0:	000c0593          	mv	a1,s8
   118d4:	000c8513          	mv	a0,s9
   118d8:	51d0a0ef          	jal	ra,1c5f4 <__sprint_r>
   118dc:	e00514e3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   118e0:	ff04849b          	addiw	s1,s1,-16
   118e4:	11013783          	ld	a5,272(sp)
   118e8:	10812703          	lw	a4,264(sp)
   118ec:	18010d93          	addi	s11,sp,384
   118f0:	fa9b4ee3          	blt	s6,s1,118ac <_vfprintf_r+0x1140>
   118f4:	0017069b          	addiw	a3,a4,1
   118f8:	009787b3          	add	a5,a5,s1
   118fc:	013db023          	sd	s3,0(s11)
   11900:	009db423          	sd	s1,8(s11)
   11904:	10f13823          	sd	a5,272(sp)
   11908:	10d12423          	sw	a3,264(sp)
   1190c:	00700713          	li	a4,7
   11910:	96d75c63          	bge	a4,a3,10a88 <_vfprintf_r+0x31c>
   11914:	10010613          	addi	a2,sp,256
   11918:	000c0593          	mv	a1,s8
   1191c:	000c8513          	mv	a0,s9
   11920:	4d50a0ef          	jal	ra,1c5f4 <__sprint_r>
   11924:	dc0510e3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11928:	11013783          	ld	a5,272(sp)
   1192c:	95cff06f          	j	10a88 <_vfprintf_r+0x31c>
   11930:	0d812603          	lw	a2,216(sp)
   11934:	64c05263          	blez	a2,11f78 <_vfprintf_r+0x180c>
   11938:	01813703          	ld	a4,24(sp)
   1193c:	02013683          	ld	a3,32(sp)
   11940:	0007049b          	sext.w	s1,a4
   11944:	32e6c863          	blt	a3,a4,11c74 <_vfprintf_r+0x1508>
   11948:	02905663          	blez	s1,11974 <_vfprintf_r+0x1208>
   1194c:	10812703          	lw	a4,264(sp)
   11950:	009787b3          	add	a5,a5,s1
   11954:	01adb023          	sd	s10,0(s11)
   11958:	0017069b          	addiw	a3,a4,1
   1195c:	009db423          	sd	s1,8(s11)
   11960:	10f13823          	sd	a5,272(sp)
   11964:	10d12423          	sw	a3,264(sp)
   11968:	00700713          	li	a4,7
   1196c:	010d8d93          	addi	s11,s11,16
   11970:	32d74ae3          	blt	a4,a3,124a4 <_vfprintf_r+0x1d38>
   11974:	fff4c713          	not	a4,s1
   11978:	43f75713          	srai	a4,a4,0x3f
   1197c:	00e4f4b3          	and	s1,s1,a4
   11980:	01813703          	ld	a4,24(sp)
   11984:	409704bb          	subw	s1,a4,s1
   11988:	42904e63          	bgtz	s1,11dc4 <_vfprintf_r+0x1658>
   1198c:	01813683          	ld	a3,24(sp)
   11990:	40097713          	andi	a4,s2,1024
   11994:	00dd04b3          	add	s1,s10,a3
   11998:	0e071ae3          	bnez	a4,1228c <_vfprintf_r+0x1b20>
   1199c:	0d812703          	lw	a4,216(sp)
   119a0:	02013683          	ld	a3,32(sp)
   119a4:	00d74663          	blt	a4,a3,119b0 <_vfprintf_r+0x1244>
   119a8:	00197693          	andi	a3,s2,1
   119ac:	320680e3          	beqz	a3,124cc <_vfprintf_r+0x1d60>
   119b0:	04013683          	ld	a3,64(sp)
   119b4:	03813603          	ld	a2,56(sp)
   119b8:	010d8d93          	addi	s11,s11,16
   119bc:	feddb823          	sd	a3,-16(s11)
   119c0:	10812683          	lw	a3,264(sp)
   119c4:	00c787b3          	add	a5,a5,a2
   119c8:	fecdbc23          	sd	a2,-8(s11)
   119cc:	0016869b          	addiw	a3,a3,1
   119d0:	0006861b          	sext.w	a2,a3
   119d4:	10d12423          	sw	a3,264(sp)
   119d8:	10f13823          	sd	a5,272(sp)
   119dc:	00700693          	li	a3,7
   119e0:	00c6d463          	bge	a3,a2,119e8 <_vfprintf_r+0x127c>
   119e4:	0000106f          	j	129e4 <_vfprintf_r+0x2278>
   119e8:	02013683          	ld	a3,32(sp)
   119ec:	40e6863b          	subw	a2,a3,a4
   119f0:	00dd06b3          	add	a3,s10,a3
   119f4:	409686bb          	subw	a3,a3,s1
   119f8:	00060713          	mv	a4,a2
   119fc:	00c6d463          	bge	a3,a2,11a04 <_vfprintf_r+0x1298>
   11a00:	00068713          	mv	a4,a3
   11a04:	0007099b          	sext.w	s3,a4
   11a08:	03305863          	blez	s3,11a38 <_vfprintf_r+0x12cc>
   11a0c:	10812703          	lw	a4,264(sp)
   11a10:	013787b3          	add	a5,a5,s3
   11a14:	009db023          	sd	s1,0(s11)
   11a18:	0017069b          	addiw	a3,a4,1
   11a1c:	013db423          	sd	s3,8(s11)
   11a20:	10f13823          	sd	a5,272(sp)
   11a24:	10d12423          	sw	a3,264(sp)
   11a28:	00700713          	li	a4,7
   11a2c:	010d8d93          	addi	s11,s11,16
   11a30:	00d75463          	bge	a4,a3,11a38 <_vfprintf_r+0x12cc>
   11a34:	0040106f          	j	12a38 <_vfprintf_r+0x22cc>
   11a38:	fff9c493          	not	s1,s3
   11a3c:	43f4d493          	srai	s1,s1,0x3f
   11a40:	0099f4b3          	and	s1,s3,s1
   11a44:	409604bb          	subw	s1,a2,s1
   11a48:	00904463          	bgtz	s1,11a50 <_vfprintf_r+0x12e4>
   11a4c:	82cff06f          	j	10a78 <_vfprintf_r+0x30c>
   11a50:	10812703          	lw	a4,264(sp)
   11a54:	629b5263          	bge	s6,s1,12078 <_vfprintf_r+0x190c>
   11a58:	00700993          	li	s3,7
   11a5c:	00c0006f          	j	11a68 <_vfprintf_r+0x12fc>
   11a60:	ff04849b          	addiw	s1,s1,-16
   11a64:	609b5a63          	bge	s6,s1,12078 <_vfprintf_r+0x190c>
   11a68:	0017069b          	addiw	a3,a4,1
   11a6c:	01078793          	addi	a5,a5,16
   11a70:	00010717          	auipc	a4,0x10
   11a74:	5b870713          	addi	a4,a4,1464 # 22028 <zeroes.0>
   11a78:	00edb023          	sd	a4,0(s11)
   11a7c:	016db423          	sd	s6,8(s11)
   11a80:	10f13823          	sd	a5,272(sp)
   11a84:	0006871b          	sext.w	a4,a3
   11a88:	10d12423          	sw	a3,264(sp)
   11a8c:	010d8d93          	addi	s11,s11,16
   11a90:	fce9d8e3          	bge	s3,a4,11a60 <_vfprintf_r+0x12f4>
   11a94:	10010613          	addi	a2,sp,256
   11a98:	000c0593          	mv	a1,s8
   11a9c:	000c8513          	mv	a0,s9
   11aa0:	3550a0ef          	jal	ra,1c5f4 <__sprint_r>
   11aa4:	c40510e3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11aa8:	11013783          	ld	a5,272(sp)
   11aac:	10812703          	lw	a4,264(sp)
   11ab0:	18010d93          	addi	s11,sp,384
   11ab4:	fadff06f          	j	11a60 <_vfprintf_r+0x12f4>
   11ab8:	00197593          	andi	a1,s2,1
   11abc:	c0059663          	bnez	a1,10ec8 <_vfprintf_r+0x75c>
   11ac0:	00cdb423          	sd	a2,8(s11)
   11ac4:	11313823          	sd	s3,272(sp)
   11ac8:	10f12423          	sw	a5,264(sp)
   11acc:	00700713          	li	a4,7
   11ad0:	1ef74063          	blt	a4,a5,11cb0 <_vfprintf_r+0x1544>
   11ad4:	0026869b          	addiw	a3,a3,2
   11ad8:	020d8d93          	addi	s11,s11,32
   11adc:	c94ff06f          	j	10f70 <_vfprintf_r+0x804>
   11ae0:	c8f05863          	blez	a5,10f70 <_vfprintf_r+0x804>
   11ae4:	00fb4463          	blt	s6,a5,11aec <_vfprintf_r+0x1380>
   11ae8:	32c0106f          	j	12e14 <_vfprintf_r+0x26a8>
   11aec:	00700d13          	li	s10,7
   11af0:	00078d93          	mv	s11,a5
   11af4:	0100006f          	j	11b04 <_vfprintf_r+0x1398>
   11af8:	ff0d8d9b          	addiw	s11,s11,-16
   11afc:	19bb5263          	bge	s6,s11,11c80 <_vfprintf_r+0x1514>
   11b00:	001b871b          	addiw	a4,s7,1
   11b04:	01098993          	addi	s3,s3,16
   11b08:	00010797          	auipc	a5,0x10
   11b0c:	52078793          	addi	a5,a5,1312 # 22028 <zeroes.0>
   11b10:	00f4b023          	sd	a5,0(s1)
   11b14:	0164b423          	sd	s6,8(s1)
   11b18:	11313823          	sd	s3,272(sp)
   11b1c:	00070b9b          	sext.w	s7,a4
   11b20:	10e12423          	sw	a4,264(sp)
   11b24:	01048493          	addi	s1,s1,16
   11b28:	fd7d58e3          	bge	s10,s7,11af8 <_vfprintf_r+0x138c>
   11b2c:	10010613          	addi	a2,sp,256
   11b30:	000c0593          	mv	a1,s8
   11b34:	000c8513          	mv	a0,s9
   11b38:	2bd0a0ef          	jal	ra,1c5f4 <__sprint_r>
   11b3c:	ba0514e3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11b40:	11013983          	ld	s3,272(sp)
   11b44:	10812b83          	lw	s7,264(sp)
   11b48:	18010493          	addi	s1,sp,384
   11b4c:	fadff06f          	j	11af8 <_vfprintf_r+0x138c>
   11b50:	010af793          	andi	a5,s5,16
   11b54:	0c079463          	bnez	a5,11c1c <_vfprintf_r+0x14b0>
   11b58:	00813703          	ld	a4,8(sp)
   11b5c:	040af793          	andi	a5,s5,64
   11b60:	00072983          	lw	s3,0(a4)
   11b64:	66078863          	beqz	a5,121d4 <_vfprintf_r+0x1a68>
   11b68:	03099993          	slli	s3,s3,0x30
   11b6c:	0309d993          	srli	s3,s3,0x30
   11b70:	00d13423          	sd	a3,8(sp)
   11b74:	00100793          	li	a5,1
   11b78:	d24ff06f          	j	1109c <_vfprintf_r+0x930>
   11b7c:	01097793          	andi	a5,s2,16
   11b80:	0e079463          	bnez	a5,11c68 <_vfprintf_r+0x14fc>
   11b84:	00813703          	ld	a4,8(sp)
   11b88:	04097793          	andi	a5,s2,64
   11b8c:	00072983          	lw	s3,0(a4)
   11b90:	66078a63          	beqz	a5,12204 <_vfprintf_r+0x1a98>
   11b94:	03099993          	slli	s3,s3,0x30
   11b98:	0309d993          	srli	s3,s3,0x30
   11b9c:	cf0ff06f          	j	1108c <_vfprintf_r+0x920>
   11ba0:	01097793          	andi	a5,s2,16
   11ba4:	0a079a63          	bnez	a5,11c58 <_vfprintf_r+0x14ec>
   11ba8:	04097793          	andi	a5,s2,64
   11bac:	64078063          	beqz	a5,121ec <_vfprintf_r+0x1a80>
   11bb0:	00813783          	ld	a5,8(sp)
   11bb4:	00079983          	lh	s3,0(a5)
   11bb8:	00098793          	mv	a5,s3
   11bbc:	f607da63          	bgez	a5,11330 <_vfprintf_r+0xbc4>
   11bc0:	02d00793          	li	a5,45
   11bc4:	0cf107a3          	sb	a5,207(sp)
   11bc8:	413009b3          	neg	s3,s3
   11bcc:	00d13423          	sd	a3,8(sp)
   11bd0:	00090a93          	mv	s5,s2
   11bd4:	00100793          	li	a5,1
   11bd8:	cc8ff06f          	j	110a0 <_vfprintf_r+0x934>
   11bdc:	00197713          	andi	a4,s2,1
   11be0:	00071463          	bnez	a4,11be8 <_vfprintf_r+0x147c>
   11be4:	e95fe06f          	j	10a78 <_vfprintf_r+0x30c>
   11be8:	891ff06f          	j	11478 <_vfprintf_r+0xd0c>
   11bec:	000b8e13          	mv	t3,s7
   11bf0:	f24ff06f          	j	11314 <_vfprintf_r+0xba8>
   11bf4:	03000793          	li	a5,48
   11bf8:	16f10da3          	sb	a5,379(sp)
   11bfc:	17b10d13          	addi	s10,sp,379
   11c00:	cc8ff06f          	j	110c8 <_vfprintf_r+0x95c>
   11c04:	00013783          	ld	a5,0(sp)
   11c08:	00040d13          	mv	s10,s0
   11c0c:	00f73023          	sd	a5,0(a4)
   11c10:	eb5fe06f          	j	10ac4 <_vfprintf_r+0x358>
   11c14:	00044483          	lbu	s1,0(s0)
   11c18:	cf1fe06f          	j	10908 <_vfprintf_r+0x19c>
   11c1c:	00813783          	ld	a5,8(sp)
   11c20:	00d13423          	sd	a3,8(sp)
   11c24:	0007b983          	ld	s3,0(a5)
   11c28:	00100793          	li	a5,1
   11c2c:	c70ff06f          	j	1109c <_vfprintf_r+0x930>
   11c30:	00813783          	ld	a5,8(sp)
   11c34:	00f78793          	addi	a5,a5,15
   11c38:	ff07f793          	andi	a5,a5,-16
   11c3c:	0007b703          	ld	a4,0(a5)
   11c40:	0087b683          	ld	a3,8(a5)
   11c44:	01078793          	addi	a5,a5,16
   11c48:	00f13423          	sd	a5,8(sp)
   11c4c:	0ee13823          	sd	a4,240(sp)
   11c50:	0ed13c23          	sd	a3,248(sp)
   11c54:	f8dfe06f          	j	10be0 <_vfprintf_r+0x474>
   11c58:	00813783          	ld	a5,8(sp)
   11c5c:	0007b783          	ld	a5,0(a5)
   11c60:	00078993          	mv	s3,a5
   11c64:	ec8ff06f          	j	1132c <_vfprintf_r+0xbc0>
   11c68:	00813783          	ld	a5,8(sp)
   11c6c:	0007b983          	ld	s3,0(a5)
   11c70:	c1cff06f          	j	1108c <_vfprintf_r+0x920>
   11c74:	0006849b          	sext.w	s1,a3
   11c78:	cc904ae3          	bgtz	s1,1194c <_vfprintf_r+0x11e0>
   11c7c:	cf9ff06f          	j	11974 <_vfprintf_r+0x1208>
   11c80:	000d8793          	mv	a5,s11
   11c84:	001b869b          	addiw	a3,s7,1
   11c88:	01048713          	addi	a4,s1,16
   11c8c:	00f989b3          	add	s3,s3,a5
   11c90:	00010617          	auipc	a2,0x10
   11c94:	39860613          	addi	a2,a2,920 # 22028 <zeroes.0>
   11c98:	00f4b423          	sd	a5,8(s1)
   11c9c:	00c4b023          	sd	a2,0(s1)
   11ca0:	11313823          	sd	s3,272(sp)
   11ca4:	10d12423          	sw	a3,264(sp)
   11ca8:	00700793          	li	a5,7
   11cac:	7ad7dc63          	bge	a5,a3,12464 <_vfprintf_r+0x1cf8>
   11cb0:	10010613          	addi	a2,sp,256
   11cb4:	000c0593          	mv	a1,s8
   11cb8:	000c8513          	mv	a0,s9
   11cbc:	1390a0ef          	jal	ra,1c5f4 <__sprint_r>
   11cc0:	a20512e3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11cc4:	10812683          	lw	a3,264(sp)
   11cc8:	11013983          	ld	s3,272(sp)
   11ccc:	19010d93          	addi	s11,sp,400
   11cd0:	0016869b          	addiw	a3,a3,1
   11cd4:	18010493          	addi	s1,sp,384
   11cd8:	a98ff06f          	j	10f70 <_vfprintf_r+0x804>
   11cdc:	00010797          	auipc	a5,0x10
   11ce0:	1a478793          	addi	a5,a5,420 # 21e80 <__clzdi2+0x9c>
   11ce4:	000b8e13          	mv	t3,s7
   11ce8:	04f13423          	sd	a5,72(sp)
   11cec:	00813703          	ld	a4,8(sp)
   11cf0:	02097793          	andi	a5,s2,32
   11cf4:	00870693          	addi	a3,a4,8
   11cf8:	12078a63          	beqz	a5,11e2c <_vfprintf_r+0x16c0>
   11cfc:	00073983          	ld	s3,0(a4)
   11d00:	00197793          	andi	a5,s2,1
   11d04:	00078e63          	beqz	a5,11d20 <_vfprintf_r+0x15b4>
   11d08:	00098c63          	beqz	s3,11d20 <_vfprintf_r+0x15b4>
   11d0c:	00296913          	ori	s2,s2,2
   11d10:	03000793          	li	a5,48
   11d14:	0cf10823          	sb	a5,208(sp)
   11d18:	0c9108a3          	sb	s1,209(sp)
   11d1c:	0009091b          	sext.w	s2,s2
   11d20:	bff97713          	andi	a4,s2,-1025
   11d24:	00070a9b          	sext.w	s5,a4
   11d28:	00d13423          	sd	a3,8(sp)
   11d2c:	00200793          	li	a5,2
   11d30:	b6cff06f          	j	1109c <_vfprintf_r+0x930>
   11d34:	000b8e13          	mv	t3,s7
   11d38:	00090a93          	mv	s5,s2
   11d3c:	c88ff06f          	j	111c4 <_vfprintf_r+0xa58>
   11d40:	20096913          	ori	s2,s2,512
   11d44:	00144483          	lbu	s1,1(s0)
   11d48:	0009091b          	sext.w	s2,s2
   11d4c:	00140413          	addi	s0,s0,1
   11d50:	bb9fe06f          	j	10908 <_vfprintf_r+0x19c>
   11d54:	10010613          	addi	a2,sp,256
   11d58:	000c0593          	mv	a1,s8
   11d5c:	000c8513          	mv	a0,s9
   11d60:	0950a0ef          	jal	ra,1c5f4 <__sprint_r>
   11d64:	980510e3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11d68:	11013783          	ld	a5,272(sp)
   11d6c:	18010d93          	addi	s11,sp,384
   11d70:	f3cff06f          	j	114ac <_vfprintf_r+0xd40>
   11d74:	02096913          	ori	s2,s2,32
   11d78:	00144483          	lbu	s1,1(s0)
   11d7c:	0009091b          	sext.w	s2,s2
   11d80:	00140413          	addi	s0,s0,1
   11d84:	b85fe06f          	j	10908 <_vfprintf_r+0x19c>
   11d88:	00010797          	auipc	a5,0x10
   11d8c:	0e078793          	addi	a5,a5,224 # 21e68 <__clzdi2+0x84>
   11d90:	000b8e13          	mv	t3,s7
   11d94:	04f13423          	sd	a5,72(sp)
   11d98:	f55ff06f          	j	11cec <_vfprintf_r+0x1580>
   11d9c:	000b8e13          	mv	t3,s7
   11da0:	ad8ff06f          	j	11078 <_vfprintf_r+0x90c>
   11da4:	00600793          	li	a5,6
   11da8:	000b8b9b          	sext.w	s7,s7
   11dac:	71c7ec63          	bltu	a5,t3,124c4 <_vfprintf_r+0x1d58>
   11db0:	000b8a93          	mv	s5,s7
   11db4:	01313423          	sd	s3,8(sp)
   11db8:	00010d17          	auipc	s10,0x10
   11dbc:	0e0d0d13          	addi	s10,s10,224 # 21e98 <__clzdi2+0xb4>
   11dc0:	bd1fe06f          	j	10990 <_vfprintf_r+0x224>
   11dc4:	10812703          	lw	a4,264(sp)
   11dc8:	469b5a63          	bge	s6,s1,1223c <_vfprintf_r+0x1ad0>
   11dcc:	00700b93          	li	s7,7
   11dd0:	00c0006f          	j	11ddc <_vfprintf_r+0x1670>
   11dd4:	ff04849b          	addiw	s1,s1,-16
   11dd8:	469b5263          	bge	s6,s1,1223c <_vfprintf_r+0x1ad0>
   11ddc:	0017069b          	addiw	a3,a4,1
   11de0:	01078793          	addi	a5,a5,16
   11de4:	00010717          	auipc	a4,0x10
   11de8:	24470713          	addi	a4,a4,580 # 22028 <zeroes.0>
   11dec:	00edb023          	sd	a4,0(s11)
   11df0:	016db423          	sd	s6,8(s11)
   11df4:	10f13823          	sd	a5,272(sp)
   11df8:	0006871b          	sext.w	a4,a3
   11dfc:	10d12423          	sw	a3,264(sp)
   11e00:	010d8d93          	addi	s11,s11,16
   11e04:	fcebd8e3          	bge	s7,a4,11dd4 <_vfprintf_r+0x1668>
   11e08:	10010613          	addi	a2,sp,256
   11e0c:	000c0593          	mv	a1,s8
   11e10:	000c8513          	mv	a0,s9
   11e14:	7e00a0ef          	jal	ra,1c5f4 <__sprint_r>
   11e18:	8c0516e3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11e1c:	11013783          	ld	a5,272(sp)
   11e20:	10812703          	lw	a4,264(sp)
   11e24:	18010d93          	addi	s11,sp,384
   11e28:	fadff06f          	j	11dd4 <_vfprintf_r+0x1668>
   11e2c:	01097793          	andi	a5,s2,16
   11e30:	20078663          	beqz	a5,1203c <_vfprintf_r+0x18d0>
   11e34:	00813783          	ld	a5,8(sp)
   11e38:	0007b983          	ld	s3,0(a5)
   11e3c:	ec5ff06f          	j	11d00 <_vfprintf_r+0x1594>
   11e40:	10010613          	addi	a2,sp,256
   11e44:	000c0593          	mv	a1,s8
   11e48:	000c8513          	mv	a0,s9
   11e4c:	7a80a0ef          	jal	ra,1c5f4 <__sprint_r>
   11e50:	88051ae3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11e54:	11013983          	ld	s3,272(sp)
   11e58:	10812783          	lw	a5,264(sp)
   11e5c:	18010493          	addi	s1,sp,384
   11e60:	880ff06f          	j	10ee0 <_vfprintf_r+0x774>
   11e64:	10010613          	addi	a2,sp,256
   11e68:	000c0593          	mv	a1,s8
   11e6c:	000c8513          	mv	a0,s9
   11e70:	7840a0ef          	jal	ra,1c5f4 <__sprint_r>
   11e74:	860518e3          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   11e78:	11013983          	ld	s3,272(sp)
   11e7c:	10812b83          	lw	s7,264(sp)
   11e80:	18010493          	addi	s1,sp,384
   11e84:	888ff06f          	j	10f0c <_vfprintf_r+0x7a0>
   11e88:	00813c23          	sd	s0,24(sp)
   11e8c:	05813403          	ld	s0,88(sp)
   11e90:	17c10b93          	addi	s7,sp,380
   11e94:	400af913          	andi	s2,s5,1024
   11e98:	00000793          	li	a5,0
   11e9c:	000b8d13          	mv	s10,s7
   11ea0:	00913823          	sd	s1,16(sp)
   11ea4:	03413423          	sd	s4,40(sp)
   11ea8:	000b8493          	mv	s1,s7
   11eac:	00098a13          	mv	s4,s3
   11eb0:	000e0b93          	mv	s7,t3
   11eb4:	00090993          	mv	s3,s2
   11eb8:	00078913          	mv	s2,a5
   11ebc:	00a00593          	li	a1,10
   11ec0:	000a0513          	mv	a0,s4
   11ec4:	6b10f0ef          	jal	ra,21d74 <__umoddi3>
   11ec8:	0305051b          	addiw	a0,a0,48
   11ecc:	fea48fa3          	sb	a0,-1(s1)
   11ed0:	0019091b          	addiw	s2,s2,1
   11ed4:	fff48493          	addi	s1,s1,-1
   11ed8:	00098663          	beqz	s3,11ee4 <_vfprintf_r+0x1778>
   11edc:	00044683          	lbu	a3,0(s0)
   11ee0:	04d90663          	beq	s2,a3,11f2c <_vfprintf_r+0x17c0>
   11ee4:	00a00593          	li	a1,10
   11ee8:	000a0513          	mv	a0,s4
   11eec:	6410f0ef          	jal	ra,21d2c <__udivdi3>
   11ef0:	00900793          	li	a5,9
   11ef4:	0147f663          	bgeu	a5,s4,11f00 <_vfprintf_r+0x1794>
   11ef8:	00050a13          	mv	s4,a0
   11efc:	fc1ff06f          	j	11ebc <_vfprintf_r+0x1750>
   11f00:	000b8e13          	mv	t3,s7
   11f04:	000d0b93          	mv	s7,s10
   11f08:	00048d13          	mv	s10,s1
   11f0c:	04813c23          	sd	s0,88(sp)
   11f10:	03213023          	sd	s2,32(sp)
   11f14:	01813403          	ld	s0,24(sp)
   11f18:	02813a03          	ld	s4,40(sp)
   11f1c:	01013483          	ld	s1,16(sp)
   11f20:	41ab8bbb          	subw	s7,s7,s10
   11f24:	000a8913          	mv	s2,s5
   11f28:	9a0ff06f          	j	110c8 <_vfprintf_r+0x95c>
   11f2c:	0ff00793          	li	a5,255
   11f30:	faf68ae3          	beq	a3,a5,11ee4 <_vfprintf_r+0x1778>
   11f34:	00900793          	li	a5,9
   11f38:	fd47f4e3          	bgeu	a5,s4,11f00 <_vfprintf_r+0x1794>
   11f3c:	06813783          	ld	a5,104(sp)
   11f40:	07013583          	ld	a1,112(sp)
   11f44:	00000913          	li	s2,0
   11f48:	40f484b3          	sub	s1,s1,a5
   11f4c:	00078613          	mv	a2,a5
   11f50:	00048513          	mv	a0,s1
   11f54:	649070ef          	jal	ra,19d9c <strncpy>
   11f58:	00144683          	lbu	a3,1(s0)
   11f5c:	000a0513          	mv	a0,s4
   11f60:	00a00593          	li	a1,10
   11f64:	00d03733          	snez	a4,a3
   11f68:	00e40433          	add	s0,s0,a4
   11f6c:	5c10f0ef          	jal	ra,21d2c <__udivdi3>
   11f70:	00050a13          	mv	s4,a0
   11f74:	f49ff06f          	j	11ebc <_vfprintf_r+0x1750>
   11f78:	10812703          	lw	a4,264(sp)
   11f7c:	00010697          	auipc	a3,0x10
   11f80:	f2468693          	addi	a3,a3,-220 # 21ea0 <__clzdi2+0xbc>
   11f84:	00ddb023          	sd	a3,0(s11)
   11f88:	0017071b          	addiw	a4,a4,1
   11f8c:	00100693          	li	a3,1
   11f90:	00178793          	addi	a5,a5,1
   11f94:	00ddb423          	sd	a3,8(s11)
   11f98:	10e12423          	sw	a4,264(sp)
   11f9c:	0007069b          	sext.w	a3,a4
   11fa0:	10f13823          	sd	a5,272(sp)
   11fa4:	00700713          	li	a4,7
   11fa8:	010d8d93          	addi	s11,s11,16
   11fac:	4cd74463          	blt	a4,a3,12474 <_vfprintf_r+0x1d08>
   11fb0:	16061063          	bnez	a2,12110 <_vfprintf_r+0x19a4>
   11fb4:	02013683          	ld	a3,32(sp)
   11fb8:	00197713          	andi	a4,s2,1
   11fbc:	00e6e733          	or	a4,a3,a4
   11fc0:	00071463          	bnez	a4,11fc8 <_vfprintf_r+0x185c>
   11fc4:	ab5fe06f          	j	10a78 <_vfprintf_r+0x30c>
   11fc8:	04013683          	ld	a3,64(sp)
   11fcc:	03813703          	ld	a4,56(sp)
   11fd0:	010d8313          	addi	t1,s11,16
   11fd4:	00ddb023          	sd	a3,0(s11)
   11fd8:	10812683          	lw	a3,264(sp)
   11fdc:	00f707b3          	add	a5,a4,a5
   11fe0:	00edb423          	sd	a4,8(s11)
   11fe4:	0016869b          	addiw	a3,a3,1
   11fe8:	0006871b          	sext.w	a4,a3
   11fec:	10d12423          	sw	a3,264(sp)
   11ff0:	10f13823          	sd	a5,272(sp)
   11ff4:	00700693          	li	a3,7
   11ff8:	56e6c263          	blt	a3,a4,1255c <_vfprintf_r+0x1df0>
   11ffc:	02013683          	ld	a3,32(sp)
   12000:	0017071b          	addiw	a4,a4,1
   12004:	10e12423          	sw	a4,264(sp)
   12008:	00f687b3          	add	a5,a3,a5
   1200c:	00d33423          	sd	a3,8(t1)
   12010:	01a33023          	sd	s10,0(t1)
   12014:	0007069b          	sext.w	a3,a4
   12018:	10f13823          	sd	a5,272(sp)
   1201c:	00700713          	li	a4,7
   12020:	01030d93          	addi	s11,t1,16
   12024:	00d74463          	blt	a4,a3,1202c <_vfprintf_r+0x18c0>
   12028:	a51fe06f          	j	10a78 <_vfprintf_r+0x30c>
   1202c:	f69fe06f          	j	10f94 <_vfprintf_r+0x828>
   12030:	00048c93          	mv	s9,s1
   12034:	00090c13          	mv	s8,s2
   12038:	eacff06f          	j	116e4 <_vfprintf_r+0xf78>
   1203c:	00813703          	ld	a4,8(sp)
   12040:	04097793          	andi	a5,s2,64
   12044:	00072983          	lw	s3,0(a4)
   12048:	16078e63          	beqz	a5,121c4 <_vfprintf_r+0x1a58>
   1204c:	03099993          	slli	s3,s3,0x30
   12050:	0309d993          	srli	s3,s3,0x30
   12054:	cadff06f          	j	11d00 <_vfprintf_r+0x1594>
   12058:	10010613          	addi	a2,sp,256
   1205c:	000c0593          	mv	a1,s8
   12060:	000c8513          	mv	a0,s9
   12064:	5900a0ef          	jal	ra,1c5f4 <__sprint_r>
   12068:	e6051e63          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   1206c:	11013783          	ld	a5,272(sp)
   12070:	18010d93          	addi	s11,sp,384
   12074:	bf8ff06f          	j	1146c <_vfprintf_r+0xd00>
   12078:	00010697          	auipc	a3,0x10
   1207c:	fb068693          	addi	a3,a3,-80 # 22028 <zeroes.0>
   12080:	0017071b          	addiw	a4,a4,1
   12084:	00ddb023          	sd	a3,0(s11)
   12088:	009db423          	sd	s1,8(s11)
   1208c:	009787b3          	add	a5,a5,s1
   12090:	0007069b          	sext.w	a3,a4
   12094:	10e12423          	sw	a4,264(sp)
   12098:	10f13823          	sd	a5,272(sp)
   1209c:	00700713          	li	a4,7
   120a0:	00d74463          	blt	a4,a3,120a8 <_vfprintf_r+0x193c>
   120a4:	9d1fe06f          	j	10a74 <_vfprintf_r+0x308>
   120a8:	eedfe06f          	j	10f94 <_vfprintf_r+0x828>
   120ac:	00040c13          	mv	s8,s0
   120b0:	e34ff06f          	j	116e4 <_vfprintf_r+0xf78>
   120b4:	0f013503          	ld	a0,240(sp)
   120b8:	0f813583          	ld	a1,248(sp)
   120bc:	00000613          	li	a2,0
   120c0:	00000693          	li	a3,0
   120c4:	18c0e0ef          	jal	ra,20250 <__letf2>
   120c8:	100548e3          	bltz	a0,129d8 <_vfprintf_r+0x226c>
   120cc:	0cf14783          	lbu	a5,207(sp)
   120d0:	04700713          	li	a4,71
   120d4:	00010d17          	auipc	s10,0x10
   120d8:	d74d0d13          	addi	s10,s10,-652 # 21e48 <__clzdi2+0x64>
   120dc:	3a974e63          	blt	a4,s1,12498 <_vfprintf_r+0x1d2c>
   120e0:	f7f97913          	andi	s2,s2,-129
   120e4:	00013823          	sd	zero,16(sp)
   120e8:	02013823          	sd	zero,48(sp)
   120ec:	02013423          	sd	zero,40(sp)
   120f0:	00013c23          	sd	zero,24(sp)
   120f4:	0009091b          	sext.w	s2,s2
   120f8:	00300a93          	li	s5,3
   120fc:	00300b93          	li	s7,3
   12100:	00000e13          	li	t3,0
   12104:	00078463          	beqz	a5,1210c <_vfprintf_r+0x19a0>
   12108:	f5dfe06f          	j	11064 <_vfprintf_r+0x8f8>
   1210c:	899fe06f          	j	109a4 <_vfprintf_r+0x238>
   12110:	04013683          	ld	a3,64(sp)
   12114:	03813703          	ld	a4,56(sp)
   12118:	010d8313          	addi	t1,s11,16
   1211c:	00ddb023          	sd	a3,0(s11)
   12120:	10812683          	lw	a3,264(sp)
   12124:	00f707b3          	add	a5,a4,a5
   12128:	00edb423          	sd	a4,8(s11)
   1212c:	0016869b          	addiw	a3,a3,1
   12130:	0006871b          	sext.w	a4,a3
   12134:	10d12423          	sw	a3,264(sp)
   12138:	10f13823          	sd	a5,272(sp)
   1213c:	00700693          	li	a3,7
   12140:	40e6ce63          	blt	a3,a4,1255c <_vfprintf_r+0x1df0>
   12144:	ea065ce3          	bgez	a2,11ffc <_vfprintf_r+0x1890>
   12148:	ff000693          	li	a3,-16
   1214c:	40c004bb          	negw	s1,a2
   12150:	20d650e3          	bge	a2,a3,12b50 <_vfprintf_r+0x23e4>
   12154:	00700993          	li	s3,7
   12158:	00c0006f          	j	12164 <_vfprintf_r+0x19f8>
   1215c:	ff04849b          	addiw	s1,s1,-16
   12160:	1e9b58e3          	bge	s6,s1,12b50 <_vfprintf_r+0x23e4>
   12164:	0017069b          	addiw	a3,a4,1
   12168:	01078793          	addi	a5,a5,16
   1216c:	00010717          	auipc	a4,0x10
   12170:	ebc70713          	addi	a4,a4,-324 # 22028 <zeroes.0>
   12174:	00e33023          	sd	a4,0(t1)
   12178:	01633423          	sd	s6,8(t1)
   1217c:	10f13823          	sd	a5,272(sp)
   12180:	0006871b          	sext.w	a4,a3
   12184:	10d12423          	sw	a3,264(sp)
   12188:	01030313          	addi	t1,t1,16
   1218c:	fce9d8e3          	bge	s3,a4,1215c <_vfprintf_r+0x19f0>
   12190:	10010613          	addi	a2,sp,256
   12194:	000c0593          	mv	a1,s8
   12198:	000c8513          	mv	a0,s9
   1219c:	4580a0ef          	jal	ra,1c5f4 <__sprint_r>
   121a0:	d4051263          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   121a4:	11013783          	ld	a5,272(sp)
   121a8:	10812703          	lw	a4,264(sp)
   121ac:	18010313          	addi	t1,sp,384
   121b0:	fadff06f          	j	1215c <_vfprintf_r+0x19f0>
   121b4:	000d0513          	mv	a0,s10
   121b8:	ce8fe0ef          	jal	ra,106a0 <strlen>
   121bc:	00050b9b          	sext.w	s7,a0
   121c0:	e79fe06f          	j	11038 <_vfprintf_r+0x8cc>
   121c4:	20097793          	andi	a5,s2,512
   121c8:	34078c63          	beqz	a5,12520 <_vfprintf_r+0x1db4>
   121cc:	0ff9f993          	andi	s3,s3,255
   121d0:	b31ff06f          	j	11d00 <_vfprintf_r+0x1594>
   121d4:	200af793          	andi	a5,s5,512
   121d8:	32078a63          	beqz	a5,1250c <_vfprintf_r+0x1da0>
   121dc:	0ff9f993          	andi	s3,s3,255
   121e0:	00d13423          	sd	a3,8(sp)
   121e4:	00100793          	li	a5,1
   121e8:	eb5fe06f          	j	1109c <_vfprintf_r+0x930>
   121ec:	20097793          	andi	a5,s2,512
   121f0:	32078e63          	beqz	a5,1252c <_vfprintf_r+0x1dc0>
   121f4:	00813783          	ld	a5,8(sp)
   121f8:	00078983          	lb	s3,0(a5)
   121fc:	00098793          	mv	a5,s3
   12200:	92cff06f          	j	1132c <_vfprintf_r+0xbc0>
   12204:	20097793          	andi	a5,s2,512
   12208:	2e078463          	beqz	a5,124f0 <_vfprintf_r+0x1d84>
   1220c:	0ff9f993          	andi	s3,s3,255
   12210:	e7dfe06f          	j	1108c <_vfprintf_r+0x920>
   12214:	0f813783          	ld	a5,248(sp)
   12218:	3207cc63          	bltz	a5,12550 <_vfprintf_r+0x1de4>
   1221c:	0cf14783          	lbu	a5,207(sp)
   12220:	04700713          	li	a4,71
   12224:	00010d17          	auipc	s10,0x10
   12228:	c34d0d13          	addi	s10,s10,-972 # 21e58 <__clzdi2+0x74>
   1222c:	ea975ae3          	bge	a4,s1,120e0 <_vfprintf_r+0x1974>
   12230:	00010d17          	auipc	s10,0x10
   12234:	c30d0d13          	addi	s10,s10,-976 # 21e60 <__clzdi2+0x7c>
   12238:	ea9ff06f          	j	120e0 <_vfprintf_r+0x1974>
   1223c:	0017071b          	addiw	a4,a4,1
   12240:	00010697          	auipc	a3,0x10
   12244:	de868693          	addi	a3,a3,-536 # 22028 <zeroes.0>
   12248:	009787b3          	add	a5,a5,s1
   1224c:	00ddb023          	sd	a3,0(s11)
   12250:	009db423          	sd	s1,8(s11)
   12254:	0007069b          	sext.w	a3,a4
   12258:	10e12423          	sw	a4,264(sp)
   1225c:	10f13823          	sd	a5,272(sp)
   12260:	00700713          	li	a4,7
   12264:	010d8d93          	addi	s11,s11,16
   12268:	f2d75263          	bge	a4,a3,1198c <_vfprintf_r+0x1220>
   1226c:	10010613          	addi	a2,sp,256
   12270:	000c0593          	mv	a1,s8
   12274:	000c8513          	mv	a0,s9
   12278:	37c0a0ef          	jal	ra,1c5f4 <__sprint_r>
   1227c:	c6051463          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   12280:	11013783          	ld	a5,272(sp)
   12284:	18010d93          	addi	s11,sp,384
   12288:	f04ff06f          	j	1198c <_vfprintf_r+0x1220>
   1228c:	02013703          	ld	a4,32(sp)
   12290:	02813b83          	ld	s7,40(sp)
   12294:	00813c23          	sd	s0,24(sp)
   12298:	00ed06b3          	add	a3,s10,a4
   1229c:	07213023          	sd	s2,96(sp)
   122a0:	07413c23          	sd	s4,120(sp)
   122a4:	03513423          	sd	s5,40(sp)
   122a8:	000d8713          	mv	a4,s11
   122ac:	05813403          	ld	s0,88(sp)
   122b0:	07013a03          	ld	s4,112(sp)
   122b4:	06813983          	ld	s3,104(sp)
   122b8:	03013903          	ld	s2,48(sp)
   122bc:	00700893          	li	a7,7
   122c0:	000d0d93          	mv	s11,s10
   122c4:	00068a93          	mv	s5,a3
   122c8:	080b8e63          	beqz	s7,12364 <_vfprintf_r+0x1bf8>
   122cc:	08091e63          	bnez	s2,12368 <_vfprintf_r+0x1bfc>
   122d0:	fff40413          	addi	s0,s0,-1
   122d4:	fffb8b9b          	addiw	s7,s7,-1
   122d8:	10812683          	lw	a3,264(sp)
   122dc:	013787b3          	add	a5,a5,s3
   122e0:	01473023          	sd	s4,0(a4)
   122e4:	0016861b          	addiw	a2,a3,1
   122e8:	01373423          	sd	s3,8(a4)
   122ec:	10f13823          	sd	a5,272(sp)
   122f0:	10c12423          	sw	a2,264(sp)
   122f4:	01070713          	addi	a4,a4,16
   122f8:	10c8ce63          	blt	a7,a2,12414 <_vfprintf_r+0x1ca8>
   122fc:	00044603          	lbu	a2,0(s0)
   12300:	409a853b          	subw	a0,s5,s1
   12304:	0006069b          	sext.w	a3,a2
   12308:	00068813          	mv	a6,a3
   1230c:	00d55463          	bge	a0,a3,12314 <_vfprintf_r+0x1ba8>
   12310:	00050813          	mv	a6,a0
   12314:	00080d1b          	sext.w	s10,a6
   12318:	03a05863          	blez	s10,12348 <_vfprintf_r+0x1bdc>
   1231c:	10812683          	lw	a3,264(sp)
   12320:	01a787b3          	add	a5,a5,s10
   12324:	00973023          	sd	s1,0(a4)
   12328:	0016861b          	addiw	a2,a3,1
   1232c:	01a73423          	sd	s10,8(a4)
   12330:	10f13823          	sd	a5,272(sp)
   12334:	10c12423          	sw	a2,264(sp)
   12338:	10c8c063          	blt	a7,a2,12438 <_vfprintf_r+0x1ccc>
   1233c:	00044603          	lbu	a2,0(s0)
   12340:	01070713          	addi	a4,a4,16
   12344:	0006069b          	sext.w	a3,a2
   12348:	fffd4513          	not	a0,s10
   1234c:	43f55513          	srai	a0,a0,0x3f
   12350:	00ad7833          	and	a6,s10,a0
   12354:	41068d3b          	subw	s10,a3,a6
   12358:	01a04c63          	bgtz	s10,12370 <_vfprintf_r+0x1c04>
   1235c:	00c484b3          	add	s1,s1,a2
   12360:	f60b96e3          	bnez	s7,122cc <_vfprintf_r+0x1b60>
   12364:	4a090063          	beqz	s2,12804 <_vfprintf_r+0x2098>
   12368:	fff9091b          	addiw	s2,s2,-1
   1236c:	f6dff06f          	j	122d8 <_vfprintf_r+0x1b6c>
   12370:	10812603          	lw	a2,264(sp)
   12374:	01ab4863          	blt	s6,s10,12384 <_vfprintf_r+0x1c18>
   12378:	0640006f          	j	123dc <_vfprintf_r+0x1c70>
   1237c:	ff0d0d1b          	addiw	s10,s10,-16
   12380:	05ab5e63          	bge	s6,s10,123dc <_vfprintf_r+0x1c70>
   12384:	0016069b          	addiw	a3,a2,1
   12388:	01078793          	addi	a5,a5,16
   1238c:	00010617          	auipc	a2,0x10
   12390:	c9c60613          	addi	a2,a2,-868 # 22028 <zeroes.0>
   12394:	00c73023          	sd	a2,0(a4)
   12398:	01673423          	sd	s6,8(a4)
   1239c:	10f13823          	sd	a5,272(sp)
   123a0:	0006861b          	sext.w	a2,a3
   123a4:	10d12423          	sw	a3,264(sp)
   123a8:	01070713          	addi	a4,a4,16
   123ac:	fcc8d8e3          	bge	a7,a2,1237c <_vfprintf_r+0x1c10>
   123b0:	10010613          	addi	a2,sp,256
   123b4:	000c0593          	mv	a1,s8
   123b8:	000c8513          	mv	a0,s9
   123bc:	2380a0ef          	jal	ra,1c5f4 <__sprint_r>
   123c0:	b2051263          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   123c4:	ff0d0d1b          	addiw	s10,s10,-16
   123c8:	11013783          	ld	a5,272(sp)
   123cc:	10812603          	lw	a2,264(sp)
   123d0:	18010713          	addi	a4,sp,384
   123d4:	00700893          	li	a7,7
   123d8:	fbab46e3          	blt	s6,s10,12384 <_vfprintf_r+0x1c18>
   123dc:	0016061b          	addiw	a2,a2,1
   123e0:	00010697          	auipc	a3,0x10
   123e4:	c4868693          	addi	a3,a3,-952 # 22028 <zeroes.0>
   123e8:	01a787b3          	add	a5,a5,s10
   123ec:	00d73023          	sd	a3,0(a4)
   123f0:	01a73423          	sd	s10,8(a4)
   123f4:	10f13823          	sd	a5,272(sp)
   123f8:	0006069b          	sext.w	a3,a2
   123fc:	10c12423          	sw	a2,264(sp)
   12400:	4ed8c063          	blt	a7,a3,128e0 <_vfprintf_r+0x2174>
   12404:	00044603          	lbu	a2,0(s0)
   12408:	01070713          	addi	a4,a4,16
   1240c:	00c484b3          	add	s1,s1,a2
   12410:	f51ff06f          	j	12360 <_vfprintf_r+0x1bf4>
   12414:	10010613          	addi	a2,sp,256
   12418:	000c0593          	mv	a1,s8
   1241c:	000c8513          	mv	a0,s9
   12420:	1d40a0ef          	jal	ra,1c5f4 <__sprint_r>
   12424:	ac051063          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   12428:	11013783          	ld	a5,272(sp)
   1242c:	18010713          	addi	a4,sp,384
   12430:	00700893          	li	a7,7
   12434:	ec9ff06f          	j	122fc <_vfprintf_r+0x1b90>
   12438:	10010613          	addi	a2,sp,256
   1243c:	000c0593          	mv	a1,s8
   12440:	000c8513          	mv	a0,s9
   12444:	1b00a0ef          	jal	ra,1c5f4 <__sprint_r>
   12448:	a8051e63          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   1244c:	00044603          	lbu	a2,0(s0)
   12450:	11013783          	ld	a5,272(sp)
   12454:	18010713          	addi	a4,sp,384
   12458:	0006069b          	sext.w	a3,a2
   1245c:	00700893          	li	a7,7
   12460:	ee9ff06f          	j	12348 <_vfprintf_r+0x1bdc>
   12464:	0016869b          	addiw	a3,a3,1
   12468:	01070d93          	addi	s11,a4,16
   1246c:	00070493          	mv	s1,a4
   12470:	b01fe06f          	j	10f70 <_vfprintf_r+0x804>
   12474:	10010613          	addi	a2,sp,256
   12478:	000c0593          	mv	a1,s8
   1247c:	000c8513          	mv	a0,s9
   12480:	1740a0ef          	jal	ra,1c5f4 <__sprint_r>
   12484:	a6051063          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   12488:	0d812603          	lw	a2,216(sp)
   1248c:	11013783          	ld	a5,272(sp)
   12490:	18010d93          	addi	s11,sp,384
   12494:	b1dff06f          	j	11fb0 <_vfprintf_r+0x1844>
   12498:	00010d17          	auipc	s10,0x10
   1249c:	9b8d0d13          	addi	s10,s10,-1608 # 21e50 <__clzdi2+0x6c>
   124a0:	c41ff06f          	j	120e0 <_vfprintf_r+0x1974>
   124a4:	10010613          	addi	a2,sp,256
   124a8:	000c0593          	mv	a1,s8
   124ac:	000c8513          	mv	a0,s9
   124b0:	1440a0ef          	jal	ra,1c5f4 <__sprint_r>
   124b4:	a2051863          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   124b8:	11013783          	ld	a5,272(sp)
   124bc:	18010d93          	addi	s11,sp,384
   124c0:	cb4ff06f          	j	11974 <_vfprintf_r+0x1208>
   124c4:	00600b93          	li	s7,6
   124c8:	8e9ff06f          	j	11db0 <_vfprintf_r+0x1644>
   124cc:	02013683          	ld	a3,32(sp)
   124d0:	00dd0833          	add	a6,s10,a3
   124d4:	40e6863b          	subw	a2,a3,a4
   124d8:	40980e3b          	subw	t3,a6,s1
   124dc:	00060493          	mv	s1,a2
   124e0:	00ce5463          	bge	t3,a2,124e8 <_vfprintf_r+0x1d7c>
   124e4:	000e0493          	mv	s1,t3
   124e8:	0004899b          	sext.w	s3,s1
   124ec:	d4cff06f          	j	11a38 <_vfprintf_r+0x12cc>
   124f0:	02099993          	slli	s3,s3,0x20
   124f4:	0209d993          	srli	s3,s3,0x20
   124f8:	b95fe06f          	j	1108c <_vfprintf_r+0x920>
   124fc:	00013783          	ld	a5,0(sp)
   12500:	00040d13          	mv	s10,s0
   12504:	00f71023          	sh	a5,0(a4)
   12508:	dbcfe06f          	j	10ac4 <_vfprintf_r+0x358>
   1250c:	02099993          	slli	s3,s3,0x20
   12510:	0209d993          	srli	s3,s3,0x20
   12514:	00d13423          	sd	a3,8(sp)
   12518:	00100793          	li	a5,1
   1251c:	b81fe06f          	j	1109c <_vfprintf_r+0x930>
   12520:	02099993          	slli	s3,s3,0x20
   12524:	0209d993          	srli	s3,s3,0x20
   12528:	fd8ff06f          	j	11d00 <_vfprintf_r+0x1594>
   1252c:	00813783          	ld	a5,8(sp)
   12530:	0007a983          	lw	s3,0(a5)
   12534:	00098793          	mv	a5,s3
   12538:	df5fe06f          	j	1132c <_vfprintf_r+0xbc0>
   1253c:	10010613          	addi	a2,sp,256
   12540:	000c0593          	mv	a1,s8
   12544:	000c8513          	mv	a0,s9
   12548:	0ac0a0ef          	jal	ra,1c5f4 <__sprint_r>
   1254c:	d8cfe06f          	j	10ad8 <_vfprintf_r+0x36c>
   12550:	02d00793          	li	a5,45
   12554:	0cf107a3          	sb	a5,207(sp)
   12558:	cc9ff06f          	j	12220 <_vfprintf_r+0x1ab4>
   1255c:	10010613          	addi	a2,sp,256
   12560:	000c0593          	mv	a1,s8
   12564:	000c8513          	mv	a0,s9
   12568:	08c0a0ef          	jal	ra,1c5f4 <__sprint_r>
   1256c:	96051c63          	bnez	a0,116e4 <_vfprintf_r+0xf78>
   12570:	0d812603          	lw	a2,216(sp)
   12574:	11013783          	ld	a5,272(sp)
   12578:	10812703          	lw	a4,264(sp)
   1257c:	18010313          	addi	t1,sp,384
   12580:	a6065ee3          	bgez	a2,11ffc <_vfprintf_r+0x1890>
   12584:	bc5ff06f          	j	12148 <_vfprintf_r+0x19dc>
   12588:	03000793          	li	a5,48
   1258c:	0cf10823          	sb	a5,208(sp)
   12590:	05800713          	li	a4,88
   12594:	00296793          	ori	a5,s2,2
   12598:	0007879b          	sext.w	a5,a5
   1259c:	0ce108a3          	sb	a4,209(sp)
   125a0:	02f13823          	sd	a5,48(sp)
   125a4:	06300713          	li	a4,99
   125a8:	00013823          	sd	zero,16(sp)
   125ac:	11810d13          	addi	s10,sp,280
   125b0:	53c74063          	blt	a4,t3,12ad0 <_vfprintf_r+0x2364>
   125b4:	0f813a83          	ld	s5,248(sp)
   125b8:	fdf4f793          	andi	a5,s1,-33
   125bc:	10296913          	ori	s2,s2,258
   125c0:	02f13423          	sd	a5,40(sp)
   125c4:	06013023          	sd	zero,96(sp)
   125c8:	0f013b83          	ld	s7,240(sp)
   125cc:	0009091b          	sext.w	s2,s2
   125d0:	2e0acc63          	bltz	s5,128c8 <_vfprintf_r+0x215c>
   125d4:	06100793          	li	a5,97
   125d8:	6cf48263          	beq	s1,a5,12c9c <_vfprintf_r+0x2530>
   125dc:	04100793          	li	a5,65
   125e0:	00f48463          	beq	s1,a5,125e8 <_vfprintf_r+0x1e7c>
   125e4:	e88fe06f          	j	10c6c <_vfprintf_r+0x500>
   125e8:	000a8593          	mv	a1,s5
   125ec:	000b8513          	mv	a0,s7
   125f0:	01c13c23          	sd	t3,24(sp)
   125f4:	3d00f0ef          	jal	ra,219c4 <__trunctfdf2>
   125f8:	0d810513          	addi	a0,sp,216
   125fc:	2b8070ef          	jal	ra,198b4 <frexp>
   12600:	2a40f0ef          	jal	ra,218a4 <__extenddftf2>
   12604:	00010797          	auipc	a5,0x10
   12608:	a5c78793          	addi	a5,a5,-1444 # 22060 <zeroes.0+0x38>
   1260c:	0007b603          	ld	a2,0(a5)
   12610:	0087b683          	ld	a3,8(a5)
   12614:	5210d0ef          	jal	ra,20334 <__multf3>
   12618:	00000613          	li	a2,0
   1261c:	00000693          	li	a3,0
   12620:	00050993          	mv	s3,a0
   12624:	00058b93          	mv	s7,a1
   12628:	2750d0ef          	jal	ra,2009c <__eqtf2>
   1262c:	01813e03          	ld	t3,24(sp)
   12630:	00051663          	bnez	a0,1263c <_vfprintf_r+0x1ed0>
   12634:	00100713          	li	a4,1
   12638:	0ce12c23          	sw	a4,216(sp)
   1263c:	00010797          	auipc	a5,0x10
   12640:	82c78793          	addi	a5,a5,-2004 # 21e68 <__clzdi2+0x84>
   12644:	00f13c23          	sd	a5,24(sp)
   12648:	020e1713          	slli	a4,t3,0x20
   1264c:	00010697          	auipc	a3,0x10
   12650:	9f468693          	addi	a3,a3,-1548 # 22040 <zeroes.0+0x18>
   12654:	02075713          	srli	a4,a4,0x20
   12658:	0006b783          	ld	a5,0(a3)
   1265c:	00170713          	addi	a4,a4,1
   12660:	0086b683          	ld	a3,8(a3)
   12664:	00ed0733          	add	a4,s10,a4
   12668:	02e13023          	sd	a4,32(sp)
   1266c:	01cd073b          	addw	a4,s10,t3
   12670:	07413c23          	sd	s4,120(sp)
   12674:	0bb13023          	sd	s11,160(sp)
   12678:	0b913423          	sd	s9,168(sp)
   1267c:	0b813823          	sd	s8,176(sp)
   12680:	0ba13c23          	sd	s10,184(sp)
   12684:	000d0c13          	mv	s8,s10
   12688:	00098c93          	mv	s9,s3
   1268c:	08913423          	sd	s1,136(sp)
   12690:	08813823          	sd	s0,144(sp)
   12694:	09213c23          	sd	s2,152(sp)
   12698:	09c13023          	sd	t3,128(sp)
   1269c:	000b8d13          	mv	s10,s7
   126a0:	00070a13          	mv	s4,a4
   126a4:	00078d93          	mv	s11,a5
   126a8:	00068993          	mv	s3,a3
   126ac:	0140006f          	j	126c0 <_vfprintf_r+0x1f54>
   126b0:	00000613          	li	a2,0
   126b4:	00000693          	li	a3,0
   126b8:	1e50d0ef          	jal	ra,2009c <__eqtf2>
   126bc:	56050863          	beqz	a0,12c2c <_vfprintf_r+0x24c0>
   126c0:	000d8613          	mv	a2,s11
   126c4:	00098693          	mv	a3,s3
   126c8:	000c8513          	mv	a0,s9
   126cc:	000d0593          	mv	a1,s10
   126d0:	4650d0ef          	jal	ra,20334 <__multf3>
   126d4:	00058a93          	mv	s5,a1
   126d8:	00050b93          	mv	s7,a0
   126dc:	06c0f0ef          	jal	ra,21748 <__fixtfsi>
   126e0:	0005041b          	sext.w	s0,a0
   126e4:	1380f0ef          	jal	ra,2181c <__floatsitf>
   126e8:	00058693          	mv	a3,a1
   126ec:	00050613          	mv	a2,a0
   126f0:	000a8593          	mv	a1,s5
   126f4:	000b8513          	mv	a0,s7
   126f8:	5500e0ef          	jal	ra,20c48 <__subtf3>
   126fc:	01813783          	ld	a5,24(sp)
   12700:	000c0b93          	mv	s7,s8
   12704:	001c0c13          	addi	s8,s8,1
   12708:	00878733          	add	a4,a5,s0
   1270c:	00074683          	lbu	a3,0(a4)
   12710:	02013783          	ld	a5,32(sp)
   12714:	00050493          	mv	s1,a0
   12718:	fedc0fa3          	sb	a3,-1(s8)
   1271c:	00058913          	mv	s2,a1
   12720:	00050c93          	mv	s9,a0
   12724:	00058d13          	mv	s10,a1
   12728:	418a0abb          	subw	s5,s4,s8
   1272c:	f98792e3          	bne	a5,s8,126b0 <_vfprintf_r+0x1f44>
   12730:	08013e03          	ld	t3,128(sp)
   12734:	000c0a93          	mv	s5,s8
   12738:	08813023          	sd	s0,128(sp)
   1273c:	0a013d83          	ld	s11,160(sp)
   12740:	09013403          	ld	s0,144(sp)
   12744:	0a813c83          	ld	s9,168(sp)
   12748:	0b013c03          	ld	s8,176(sp)
   1274c:	0b813d03          	ld	s10,184(sp)
   12750:	08813483          	ld	s1,136(sp)
   12754:	09813903          	ld	s2,152(sp)
   12758:	fff00793          	li	a5,-1
   1275c:	07813a03          	ld	s4,120(sp)
   12760:	00050e93          	mv	t4,a0
   12764:	07713c23          	sd	s7,120(sp)
   12768:	00058713          	mv	a4,a1
   1276c:	02f13023          	sd	a5,32(sp)
   12770:	00010797          	auipc	a5,0x10
   12774:	8e078793          	addi	a5,a5,-1824 # 22050 <zeroes.0+0x28>
   12778:	0007bb83          	ld	s7,0(a5)
   1277c:	0087b983          	ld	s3,8(a5)
   12780:	000e8513          	mv	a0,t4
   12784:	000b8613          	mv	a2,s7
   12788:	00098693          	mv	a3,s3
   1278c:	00070593          	mv	a1,a4
   12790:	09c13423          	sd	t3,136(sp)
   12794:	09d13c23          	sd	t4,152(sp)
   12798:	08e13823          	sd	a4,144(sp)
   1279c:	1d10d0ef          	jal	ra,2016c <__getf2>
   127a0:	08813e03          	ld	t3,136(sp)
   127a4:	40a04263          	bgtz	a0,12ba8 <_vfprintf_r+0x243c>
   127a8:	09813e83          	ld	t4,152(sp)
   127ac:	09013703          	ld	a4,144(sp)
   127b0:	000b8613          	mv	a2,s7
   127b4:	00098693          	mv	a3,s3
   127b8:	000e8513          	mv	a0,t4
   127bc:	00070593          	mv	a1,a4
   127c0:	0dd0d0ef          	jal	ra,2009c <__eqtf2>
   127c4:	08813e03          	ld	t3,136(sp)
   127c8:	00051863          	bnez	a0,127d8 <_vfprintf_r+0x206c>
   127cc:	08013783          	ld	a5,128(sp)
   127d0:	0017f793          	andi	a5,a5,1
   127d4:	3c079a63          	bnez	a5,12ba8 <_vfprintf_r+0x243c>
   127d8:	02013683          	ld	a3,32(sp)
   127dc:	03000713          	li	a4,48
   127e0:	0016879b          	addiw	a5,a3,1
   127e4:	00fa87b3          	add	a5,s5,a5
   127e8:	0006c863          	bltz	a3,127f8 <_vfprintf_r+0x208c>
   127ec:	001a8a93          	addi	s5,s5,1
   127f0:	feea8fa3          	sb	a4,-1(s5)
   127f4:	ff579ce3          	bne	a5,s5,127ec <_vfprintf_r+0x2080>
   127f8:	41aa87bb          	subw	a5,s5,s10
   127fc:	02f13023          	sd	a5,32(sp)
   12800:	ce4fe06f          	j	10ce4 <_vfprintf_r+0x578>
   12804:	000d8d13          	mv	s10,s11
   12808:	00070d93          	mv	s11,a4
   1280c:	02013703          	ld	a4,32(sp)
   12810:	04813c23          	sd	s0,88(sp)
   12814:	06013903          	ld	s2,96(sp)
   12818:	00ed0733          	add	a4,s10,a4
   1281c:	01813403          	ld	s0,24(sp)
   12820:	07813a03          	ld	s4,120(sp)
   12824:	02813a83          	ld	s5,40(sp)
   12828:	96977a63          	bgeu	a4,s1,1199c <_vfprintf_r+0x1230>
   1282c:	00070493          	mv	s1,a4
   12830:	96cff06f          	j	1199c <_vfprintf_r+0x1230>
   12834:	01813703          	ld	a4,24(sp)
   12838:	ffd00793          	li	a5,-3
   1283c:	00f74463          	blt	a4,a5,12844 <_vfprintf_r+0x20d8>
   12840:	00ee5a63          	bge	t3,a4,12854 <_vfprintf_r+0x20e8>
   12844:	ffe4849b          	addiw	s1,s1,-2
   12848:	fdf4f793          	andi	a5,s1,-33
   1284c:	02f13423          	sd	a5,40(sp)
   12850:	cbcfe06f          	j	10d0c <_vfprintf_r+0x5a0>
   12854:	01813703          	ld	a4,24(sp)
   12858:	02013783          	ld	a5,32(sp)
   1285c:	20f74663          	blt	a4,a5,12a68 <_vfprintf_r+0x22fc>
   12860:	03013783          	ld	a5,48(sp)
   12864:	00070b93          	mv	s7,a4
   12868:	0017f793          	andi	a5,a5,1
   1286c:	00078663          	beqz	a5,12878 <_vfprintf_r+0x210c>
   12870:	03813783          	ld	a5,56(sp)
   12874:	00e78bbb          	addw	s7,a5,a4
   12878:	03013783          	ld	a5,48(sp)
   1287c:	4007f793          	andi	a5,a5,1024
   12880:	00078663          	beqz	a5,1288c <_vfprintf_r+0x2120>
   12884:	01813783          	ld	a5,24(sp)
   12888:	48f04663          	bgtz	a5,12d14 <_vfprintf_r+0x25a8>
   1288c:	fffbca93          	not	s5,s7
   12890:	43fada93          	srai	s5,s5,0x3f
   12894:	015bfab3          	and	s5,s7,s5
   12898:	000a8a9b          	sext.w	s5,s5
   1289c:	06700493          	li	s1,103
   128a0:	02013823          	sd	zero,48(sp)
   128a4:	02013423          	sd	zero,40(sp)
   128a8:	da4fe06f          	j	10e4c <_vfprintf_r+0x6e0>
   128ac:	0cf14783          	lbu	a5,207(sp)
   128b0:	00000e13          	li	t3,0
   128b4:	00078463          	beqz	a5,128bc <_vfprintf_r+0x2150>
   128b8:	facfe06f          	j	11064 <_vfprintf_r+0x8f8>
   128bc:	8e8fe06f          	j	109a4 <_vfprintf_r+0x238>
   128c0:	00013823          	sd	zero,16(sp)
   128c4:	00078913          	mv	s2,a5
   128c8:	fff00793          	li	a5,-1
   128cc:	03f79793          	slli	a5,a5,0x3f
   128d0:	00facab3          	xor	s5,s5,a5
   128d4:	02d00793          	li	a5,45
   128d8:	06f13023          	sd	a5,96(sp)
   128dc:	cf9ff06f          	j	125d4 <_vfprintf_r+0x1e68>
   128e0:	10010613          	addi	a2,sp,256
   128e4:	000c0593          	mv	a1,s8
   128e8:	000c8513          	mv	a0,s9
   128ec:	509090ef          	jal	ra,1c5f4 <__sprint_r>
   128f0:	00050463          	beqz	a0,128f8 <_vfprintf_r+0x218c>
   128f4:	df1fe06f          	j	116e4 <_vfprintf_r+0xf78>
   128f8:	00044603          	lbu	a2,0(s0)
   128fc:	11013783          	ld	a5,272(sp)
   12900:	18010713          	addi	a4,sp,384
   12904:	00700893          	li	a7,7
   12908:	00c484b3          	add	s1,s1,a2
   1290c:	a55ff06f          	j	12360 <_vfprintf_r+0x1bf4>
   12910:	000e0713          	mv	a4,t3
   12914:	0d810793          	addi	a5,sp,216
   12918:	0e810893          	addi	a7,sp,232
   1291c:	0dc10813          	addi	a6,sp,220
   12920:	00300693          	li	a3,3
   12924:	000b8593          	mv	a1,s7
   12928:	000a8613          	mv	a2,s5
   1292c:	000c8513          	mv	a0,s9
   12930:	01c13c23          	sd	t3,24(sp)
   12934:	408030ef          	jal	ra,15d3c <_ldtoa_r>
   12938:	00054703          	lbu	a4,0(a0)
   1293c:	03000793          	li	a5,48
   12940:	01813e03          	ld	t3,24(sp)
   12944:	00050d13          	mv	s10,a0
   12948:	06f70063          	beq	a4,a5,129a8 <_vfprintf_r+0x223c>
   1294c:	0d812783          	lw	a5,216(sp)
   12950:	01c787b3          	add	a5,a5,t3
   12954:	00fd09b3          	add	s3,s10,a5
   12958:	00000613          	li	a2,0
   1295c:	00000693          	li	a3,0
   12960:	000b8513          	mv	a0,s7
   12964:	000a8593          	mv	a1,s5
   12968:	01c13c23          	sd	t3,24(sp)
   1296c:	7300d0ef          	jal	ra,2009c <__eqtf2>
   12970:	01813e03          	ld	t3,24(sp)
   12974:	00098793          	mv	a5,s3
   12978:	00051463          	bnez	a0,12980 <_vfprintf_r+0x2214>
   1297c:	b60fe06f          	j	10cdc <_vfprintf_r+0x570>
   12980:	0e813783          	ld	a5,232(sp)
   12984:	0137e463          	bltu	a5,s3,1298c <_vfprintf_r+0x2220>
   12988:	b54fe06f          	j	10cdc <_vfprintf_r+0x570>
   1298c:	03000693          	li	a3,48
   12990:	00178713          	addi	a4,a5,1
   12994:	0ee13423          	sd	a4,232(sp)
   12998:	00d78023          	sb	a3,0(a5)
   1299c:	0e813783          	ld	a5,232(sp)
   129a0:	ff37e8e3          	bltu	a5,s3,12990 <_vfprintf_r+0x2224>
   129a4:	b38fe06f          	j	10cdc <_vfprintf_r+0x570>
   129a8:	00000613          	li	a2,0
   129ac:	00000693          	li	a3,0
   129b0:	000b8513          	mv	a0,s7
   129b4:	000a8593          	mv	a1,s5
   129b8:	01c13c23          	sd	t3,24(sp)
   129bc:	6e00d0ef          	jal	ra,2009c <__eqtf2>
   129c0:	01813e03          	ld	t3,24(sp)
   129c4:	f80504e3          	beqz	a0,1294c <_vfprintf_r+0x21e0>
   129c8:	00100713          	li	a4,1
   129cc:	41c707bb          	subw	a5,a4,t3
   129d0:	0cf12c23          	sw	a5,216(sp)
   129d4:	f7dff06f          	j	12950 <_vfprintf_r+0x21e4>
   129d8:	02d00793          	li	a5,45
   129dc:	0cf107a3          	sb	a5,207(sp)
   129e0:	ef0ff06f          	j	120d0 <_vfprintf_r+0x1964>
   129e4:	10010613          	addi	a2,sp,256
   129e8:	000c0593          	mv	a1,s8
   129ec:	000c8513          	mv	a0,s9
   129f0:	405090ef          	jal	ra,1c5f4 <__sprint_r>
   129f4:	00050463          	beqz	a0,129fc <_vfprintf_r+0x2290>
   129f8:	cedfe06f          	j	116e4 <_vfprintf_r+0xf78>
   129fc:	0d812703          	lw	a4,216(sp)
   12a00:	11013783          	ld	a5,272(sp)
   12a04:	18010d93          	addi	s11,sp,384
   12a08:	fe1fe06f          	j	119e8 <_vfprintf_r+0x127c>
   12a0c:	0cf14783          	lbu	a5,207(sp)
   12a10:	01313423          	sd	s3,8(sp)
   12a14:	02013823          	sd	zero,48(sp)
   12a18:	02013423          	sd	zero,40(sp)
   12a1c:	00013c23          	sd	zero,24(sp)
   12a20:	000e0a93          	mv	s5,t3
   12a24:	000e0b93          	mv	s7,t3
   12a28:	00000e13          	li	t3,0
   12a2c:	00078463          	beqz	a5,12a34 <_vfprintf_r+0x22c8>
   12a30:	e34fe06f          	j	11064 <_vfprintf_r+0x8f8>
   12a34:	f71fd06f          	j	109a4 <_vfprintf_r+0x238>
   12a38:	10010613          	addi	a2,sp,256
   12a3c:	000c0593          	mv	a1,s8
   12a40:	000c8513          	mv	a0,s9
   12a44:	3b1090ef          	jal	ra,1c5f4 <__sprint_r>
   12a48:	00050463          	beqz	a0,12a50 <_vfprintf_r+0x22e4>
   12a4c:	c99fe06f          	j	116e4 <_vfprintf_r+0xf78>
   12a50:	0d812603          	lw	a2,216(sp)
   12a54:	02013703          	ld	a4,32(sp)
   12a58:	11013783          	ld	a5,272(sp)
   12a5c:	18010d93          	addi	s11,sp,384
   12a60:	40c7063b          	subw	a2,a4,a2
   12a64:	fd5fe06f          	j	11a38 <_vfprintf_r+0x12cc>
   12a68:	02013703          	ld	a4,32(sp)
   12a6c:	03813783          	ld	a5,56(sp)
   12a70:	06700493          	li	s1,103
   12a74:	00e78bbb          	addw	s7,a5,a4
   12a78:	01813703          	ld	a4,24(sp)
   12a7c:	32e05463          	blez	a4,12da4 <_vfprintf_r+0x2638>
   12a80:	03013783          	ld	a5,48(sp)
   12a84:	4007f793          	andi	a5,a5,1024
   12a88:	28079863          	bnez	a5,12d18 <_vfprintf_r+0x25ac>
   12a8c:	fffbca93          	not	s5,s7
   12a90:	43fada93          	srai	s5,s5,0x3f
   12a94:	015bfab3          	and	s5,s7,s5
   12a98:	000a8a9b          	sext.w	s5,s5
   12a9c:	e05ff06f          	j	128a0 <_vfprintf_r+0x2134>
   12aa0:	03013783          	ld	a5,48(sp)
   12aa4:	01813703          	ld	a4,24(sp)
   12aa8:	0017f793          	andi	a5,a5,1
   12aac:	00fe67b3          	or	a5,t3,a5
   12ab0:	32e05463          	blez	a4,12dd8 <_vfprintf_r+0x266c>
   12ab4:	24079663          	bnez	a5,12d00 <_vfprintf_r+0x2594>
   12ab8:	01813b83          	ld	s7,24(sp)
   12abc:	06600493          	li	s1,102
   12ac0:	fc1ff06f          	j	12a80 <_vfprintf_r+0x2314>
   12ac4:	fff00793          	li	a5,-1
   12ac8:	00f13023          	sd	a5,0(sp)
   12acc:	81cfe06f          	j	10ae8 <_vfprintf_r+0x37c>
   12ad0:	001e059b          	addiw	a1,t3,1
   12ad4:	000c8513          	mv	a0,s9
   12ad8:	01c13823          	sd	t3,16(sp)
   12adc:	141040ef          	jal	ra,1741c <_malloc_r>
   12ae0:	01013e03          	ld	t3,16(sp)
   12ae4:	00050d13          	mv	s10,a0
   12ae8:	38050263          	beqz	a0,12e6c <_vfprintf_r+0x2700>
   12aec:	00a13823          	sd	a0,16(sp)
   12af0:	ac5ff06f          	j	125b4 <_vfprintf_r+0x1e48>
   12af4:	01cd09b3          	add	s3,s10,t3
   12af8:	e61ff06f          	j	12958 <_vfprintf_r+0x21ec>
   12afc:	00090a93          	mv	s5,s2
   12b00:	d45fe06f          	j	11844 <_vfprintf_r+0x10d8>
   12b04:	03000793          	li	a5,48
   12b08:	0cf10823          	sb	a5,208(sp)
   12b0c:	07800713          	li	a4,120
   12b10:	a85ff06f          	j	12594 <_vfprintf_r+0x1e28>
   12b14:	001e099b          	addiw	s3,t3,1
   12b18:	00098713          	mv	a4,s3
   12b1c:	0e810893          	addi	a7,sp,232
   12b20:	0dc10813          	addi	a6,sp,220
   12b24:	0d810793          	addi	a5,sp,216
   12b28:	00200693          	li	a3,2
   12b2c:	000b8593          	mv	a1,s7
   12b30:	000a8613          	mv	a2,s5
   12b34:	000c8513          	mv	a0,s9
   12b38:	01c13c23          	sd	t3,24(sp)
   12b3c:	200030ef          	jal	ra,15d3c <_ldtoa_r>
   12b40:	00050d13          	mv	s10,a0
   12b44:	01813e03          	ld	t3,24(sp)
   12b48:	013d09b3          	add	s3,s10,s3
   12b4c:	e0dff06f          	j	12958 <_vfprintf_r+0x21ec>
   12b50:	0017069b          	addiw	a3,a4,1
   12b54:	009787b3          	add	a5,a5,s1
   12b58:	0000f717          	auipc	a4,0xf
   12b5c:	4d070713          	addi	a4,a4,1232 # 22028 <zeroes.0>
   12b60:	00e33023          	sd	a4,0(t1)
   12b64:	00933423          	sd	s1,8(t1)
   12b68:	0006871b          	sext.w	a4,a3
   12b6c:	10d12423          	sw	a3,264(sp)
   12b70:	10f13823          	sd	a5,272(sp)
   12b74:	00700693          	li	a3,7
   12b78:	01030313          	addi	t1,t1,16
   12b7c:	c8e6d063          	bge	a3,a4,11ffc <_vfprintf_r+0x1890>
   12b80:	10010613          	addi	a2,sp,256
   12b84:	000c0593          	mv	a1,s8
   12b88:	000c8513          	mv	a0,s9
   12b8c:	269090ef          	jal	ra,1c5f4 <__sprint_r>
   12b90:	00050463          	beqz	a0,12b98 <_vfprintf_r+0x242c>
   12b94:	b51fe06f          	j	116e4 <_vfprintf_r+0xf78>
   12b98:	11013783          	ld	a5,272(sp)
   12b9c:	10812703          	lw	a4,264(sp)
   12ba0:	18010313          	addi	t1,sp,384
   12ba4:	c58ff06f          	j	11ffc <_vfprintf_r+0x1890>
   12ba8:	07813783          	ld	a5,120(sp)
   12bac:	0ef13423          	sd	a5,232(sp)
   12bb0:	01813783          	ld	a5,24(sp)
   12bb4:	fffac703          	lbu	a4,-1(s5)
   12bb8:	00f7c683          	lbu	a3,15(a5)
   12bbc:	000a8793          	mv	a5,s5
   12bc0:	02e69063          	bne	a3,a4,12be0 <_vfprintf_r+0x2474>
   12bc4:	03000613          	li	a2,48
   12bc8:	fec78fa3          	sb	a2,-1(a5)
   12bcc:	0e813783          	ld	a5,232(sp)
   12bd0:	fff78713          	addi	a4,a5,-1
   12bd4:	0ee13423          	sd	a4,232(sp)
   12bd8:	fff7c703          	lbu	a4,-1(a5)
   12bdc:	fee686e3          	beq	a3,a4,12bc8 <_vfprintf_r+0x245c>
   12be0:	0017069b          	addiw	a3,a4,1
   12be4:	03900613          	li	a2,57
   12be8:	0ff6f693          	andi	a3,a3,255
   12bec:	00c70663          	beq	a4,a2,12bf8 <_vfprintf_r+0x248c>
   12bf0:	fed78fa3          	sb	a3,-1(a5)
   12bf4:	c05ff06f          	j	127f8 <_vfprintf_r+0x208c>
   12bf8:	01813703          	ld	a4,24(sp)
   12bfc:	00a74683          	lbu	a3,10(a4)
   12c00:	fed78fa3          	sb	a3,-1(a5)
   12c04:	bf5ff06f          	j	127f8 <_vfprintf_r+0x208c>
   12c08:	00f72023          	sw	a5,0(a4)
   12c0c:	00040d13          	mv	s10,s0
   12c10:	eb5fd06f          	j	10ac4 <_vfprintf_r+0x358>
   12c14:	00600e13          	li	t3,6
   12c18:	82cfe06f          	j	10c44 <_vfprintf_r+0x4d8>
   12c1c:	000e0463          	beqz	t3,12c24 <_vfprintf_r+0x24b8>
   12c20:	824fe06f          	j	10c44 <_vfprintf_r+0x4d8>
   12c24:	00100e13          	li	t3,1
   12c28:	81cfe06f          	j	10c44 <_vfprintf_r+0x4d8>
   12c2c:	07813a03          	ld	s4,120(sp)
   12c30:	08013e03          	ld	t3,128(sp)
   12c34:	03513023          	sd	s5,32(sp)
   12c38:	08813023          	sd	s0,128(sp)
   12c3c:	000c0a93          	mv	s5,s8
   12c40:	00048e93          	mv	t4,s1
   12c44:	00090713          	mv	a4,s2
   12c48:	0a013d83          	ld	s11,160(sp)
   12c4c:	09013403          	ld	s0,144(sp)
   12c50:	0a813c83          	ld	s9,168(sp)
   12c54:	0b013c03          	ld	s8,176(sp)
   12c58:	0b813d03          	ld	s10,184(sp)
   12c5c:	08813483          	ld	s1,136(sp)
   12c60:	09813903          	ld	s2,152(sp)
   12c64:	07713c23          	sd	s7,120(sp)
   12c68:	b09ff06f          	j	12770 <_vfprintf_r+0x2004>
   12c6c:	0e210713          	addi	a4,sp,226
   12c70:	00069863          	bnez	a3,12c80 <_vfprintf_r+0x2514>
   12c74:	03000793          	li	a5,48
   12c78:	0ef10123          	sb	a5,226(sp)
   12c7c:	0e310713          	addi	a4,sp,227
   12c80:	20010693          	addi	a3,sp,512
   12c84:	030a879b          	addiw	a5,s5,48
   12c88:	40d706b3          	sub	a3,a4,a3
   12c8c:	00f70023          	sb	a5,0(a4)
   12c90:	1216879b          	addiw	a5,a3,289
   12c94:	04f13823          	sd	a5,80(sp)
   12c98:	964fe06f          	j	10dfc <_vfprintf_r+0x690>
   12c9c:	000a8593          	mv	a1,s5
   12ca0:	000b8513          	mv	a0,s7
   12ca4:	01c13c23          	sd	t3,24(sp)
   12ca8:	51d0e0ef          	jal	ra,219c4 <__trunctfdf2>
   12cac:	0d810513          	addi	a0,sp,216
   12cb0:	405060ef          	jal	ra,198b4 <frexp>
   12cb4:	3f10e0ef          	jal	ra,218a4 <__extenddftf2>
   12cb8:	0000f797          	auipc	a5,0xf
   12cbc:	3a878793          	addi	a5,a5,936 # 22060 <zeroes.0+0x38>
   12cc0:	0007b603          	ld	a2,0(a5)
   12cc4:	0087b683          	ld	a3,8(a5)
   12cc8:	66c0d0ef          	jal	ra,20334 <__multf3>
   12ccc:	00000613          	li	a2,0
   12cd0:	00000693          	li	a3,0
   12cd4:	00050993          	mv	s3,a0
   12cd8:	00058b93          	mv	s7,a1
   12cdc:	3c00d0ef          	jal	ra,2009c <__eqtf2>
   12ce0:	01813e03          	ld	t3,24(sp)
   12ce4:	00051663          	bnez	a0,12cf0 <_vfprintf_r+0x2584>
   12ce8:	00100713          	li	a4,1
   12cec:	0ce12c23          	sw	a4,216(sp)
   12cf0:	0000f797          	auipc	a5,0xf
   12cf4:	19078793          	addi	a5,a5,400 # 21e80 <__clzdi2+0x9c>
   12cf8:	00f13c23          	sd	a5,24(sp)
   12cfc:	94dff06f          	j	12648 <_vfprintf_r+0x1edc>
   12d00:	03813783          	ld	a5,56(sp)
   12d04:	06600493          	li	s1,102
   12d08:	00e78bbb          	addw	s7,a5,a4
   12d0c:	01cb8bbb          	addw	s7,s7,t3
   12d10:	d71ff06f          	j	12a80 <_vfprintf_r+0x2314>
   12d14:	06700493          	li	s1,103
   12d18:	05813603          	ld	a2,88(sp)
   12d1c:	0ff00713          	li	a4,255
   12d20:	00064783          	lbu	a5,0(a2)
   12d24:	12e78863          	beq	a5,a4,12e54 <_vfprintf_r+0x26e8>
   12d28:	01813703          	ld	a4,24(sp)
   12d2c:	00000813          	li	a6,0
   12d30:	00000513          	li	a0,0
   12d34:	0ff00693          	li	a3,255
   12d38:	0007859b          	sext.w	a1,a5
   12d3c:	00e7de63          	bge	a5,a4,12d58 <_vfprintf_r+0x25ec>
   12d40:	00164783          	lbu	a5,1(a2)
   12d44:	40b7073b          	subw	a4,a4,a1
   12d48:	04078863          	beqz	a5,12d98 <_vfprintf_r+0x262c>
   12d4c:	0015051b          	addiw	a0,a0,1
   12d50:	00160613          	addi	a2,a2,1
   12d54:	fed792e3          	bne	a5,a3,12d38 <_vfprintf_r+0x25cc>
   12d58:	04c13c23          	sd	a2,88(sp)
   12d5c:	00e13c23          	sd	a4,24(sp)
   12d60:	02a13423          	sd	a0,40(sp)
   12d64:	03013823          	sd	a6,48(sp)
   12d68:	02813783          	ld	a5,40(sp)
   12d6c:	03013703          	ld	a4,48(sp)
   12d70:	06813583          	ld	a1,104(sp)
   12d74:	00e7853b          	addw	a0,a5,a4
   12d78:	7490e0ef          	jal	ra,21cc0 <__muldi3>
   12d7c:	017507bb          	addw	a5,a0,s7
   12d80:	00078b9b          	sext.w	s7,a5
   12d84:	fffbca93          	not	s5,s7
   12d88:	43fada93          	srai	s5,s5,0x3f
   12d8c:	0157f7b3          	and	a5,a5,s5
   12d90:	00078a9b          	sext.w	s5,a5
   12d94:	8b8fe06f          	j	10e4c <_vfprintf_r+0x6e0>
   12d98:	00064783          	lbu	a5,0(a2)
   12d9c:	0018081b          	addiw	a6,a6,1
   12da0:	fb5ff06f          	j	12d54 <_vfprintf_r+0x25e8>
   12da4:	40eb87bb          	subw	a5,s7,a4
   12da8:	0017879b          	addiw	a5,a5,1
   12dac:	00078b9b          	sext.w	s7,a5
   12db0:	fffbca93          	not	s5,s7
   12db4:	43fada93          	srai	s5,s5,0x3f
   12db8:	0157f7b3          	and	a5,a5,s5
   12dbc:	00078a9b          	sext.w	s5,a5
   12dc0:	ae1ff06f          	j	128a0 <_vfprintf_r+0x2134>
   12dc4:	03013703          	ld	a4,48(sp)
   12dc8:	00177713          	andi	a4,a4,1
   12dcc:	00071463          	bnez	a4,12dd4 <_vfprintf_r+0x2668>
   12dd0:	850fe06f          	j	10e20 <_vfprintf_r+0x6b4>
   12dd4:	844fe06f          	j	10e18 <_vfprintf_r+0x6ac>
   12dd8:	00079a63          	bnez	a5,12dec <_vfprintf_r+0x2680>
   12ddc:	00100a93          	li	s5,1
   12de0:	06600493          	li	s1,102
   12de4:	00100b93          	li	s7,1
   12de8:	ab9ff06f          	j	128a0 <_vfprintf_r+0x2134>
   12dec:	03813783          	ld	a5,56(sp)
   12df0:	06600493          	li	s1,102
   12df4:	0017869b          	addiw	a3,a5,1
   12df8:	01c686bb          	addw	a3,a3,t3
   12dfc:	00068b9b          	sext.w	s7,a3
   12e00:	fffbca93          	not	s5,s7
   12e04:	43fada93          	srai	s5,s5,0x3f
   12e08:	0156f6b3          	and	a3,a3,s5
   12e0c:	00068a9b          	sext.w	s5,a3
   12e10:	a91ff06f          	j	128a0 <_vfprintf_r+0x2134>
   12e14:	000d8713          	mv	a4,s11
   12e18:	e75fe06f          	j	11c8c <_vfprintf_r+0x1520>
   12e1c:	00813683          	ld	a3,8(sp)
   12e20:	0006a703          	lw	a4,0(a3)
   12e24:	00868693          	addi	a3,a3,8
   12e28:	00070e13          	mv	t3,a4
   12e2c:	00075463          	bgez	a4,12e34 <_vfprintf_r+0x26c8>
   12e30:	fff00e13          	li	t3,-1
   12e34:	00144483          	lbu	s1,1(s0)
   12e38:	000e0b9b          	sext.w	s7,t3
   12e3c:	00d13423          	sd	a3,8(sp)
   12e40:	00078413          	mv	s0,a5
   12e44:	ac5fd06f          	j	10908 <_vfprintf_r+0x19c>
   12e48:	00200793          	li	a5,2
   12e4c:	04f13823          	sd	a5,80(sp)
   12e50:	fadfd06f          	j	10dfc <_vfprintf_r+0x690>
   12e54:	02013823          	sd	zero,48(sp)
   12e58:	02013423          	sd	zero,40(sp)
   12e5c:	f0dff06f          	j	12d68 <_vfprintf_r+0x25fc>
   12e60:	000e0993          	mv	s3,t3
   12e64:	013d09b3          	add	s3,s10,s3
   12e68:	af1ff06f          	j	12958 <_vfprintf_r+0x21ec>
   12e6c:	010c5783          	lhu	a5,16(s8)
   12e70:	0407e793          	ori	a5,a5,64
   12e74:	00fc1823          	sh	a5,16(s8)
   12e78:	c61fd06f          	j	10ad8 <_vfprintf_r+0x36c>

0000000000012e7c <vfprintf>:
   12e7c:	00060693          	mv	a3,a2
   12e80:	00058613          	mv	a2,a1
   12e84:	00050593          	mv	a1,a0
   12e88:	7581b503          	ld	a0,1880(gp) # 24db8 <_impure_ptr>
   12e8c:	8e1fd06f          	j	1076c <_vfprintf_r>

0000000000012e90 <__sbprintf>:
   12e90:	0105d783          	lhu	a5,16(a1)
   12e94:	0ac5ae03          	lw	t3,172(a1)
   12e98:	0125d303          	lhu	t1,18(a1)
   12e9c:	0305b883          	ld	a7,48(a1)
   12ea0:	0405b803          	ld	a6,64(a1)
   12ea4:	b3010113          	addi	sp,sp,-1232
   12ea8:	ffd7f793          	andi	a5,a5,-3
   12eac:	40000713          	li	a4,1024
   12eb0:	4c813023          	sd	s0,1216(sp)
   12eb4:	00f11823          	sh	a5,16(sp)
   12eb8:	00058413          	mv	s0,a1
   12ebc:	0b010793          	addi	a5,sp,176
   12ec0:	00010593          	mv	a1,sp
   12ec4:	4a913c23          	sd	s1,1208(sp)
   12ec8:	4b213823          	sd	s2,1200(sp)
   12ecc:	4c113423          	sd	ra,1224(sp)
   12ed0:	00050913          	mv	s2,a0
   12ed4:	0bc12623          	sw	t3,172(sp)
   12ed8:	00611923          	sh	t1,18(sp)
   12edc:	03113823          	sd	a7,48(sp)
   12ee0:	05013023          	sd	a6,64(sp)
   12ee4:	00f13023          	sd	a5,0(sp)
   12ee8:	00f13c23          	sd	a5,24(sp)
   12eec:	00e12623          	sw	a4,12(sp)
   12ef0:	02e12023          	sw	a4,32(sp)
   12ef4:	02012423          	sw	zero,40(sp)
   12ef8:	875fd0ef          	jal	ra,1076c <_vfprintf_r>
   12efc:	00050493          	mv	s1,a0
   12f00:	02055c63          	bgez	a0,12f38 <__sbprintf+0xa8>
   12f04:	01015783          	lhu	a5,16(sp)
   12f08:	0407f793          	andi	a5,a5,64
   12f0c:	00078863          	beqz	a5,12f1c <__sbprintf+0x8c>
   12f10:	01045783          	lhu	a5,16(s0)
   12f14:	0407e793          	ori	a5,a5,64
   12f18:	00f41823          	sh	a5,16(s0)
   12f1c:	4c813083          	ld	ra,1224(sp)
   12f20:	4c013403          	ld	s0,1216(sp)
   12f24:	4b013903          	ld	s2,1200(sp)
   12f28:	00048513          	mv	a0,s1
   12f2c:	4b813483          	ld	s1,1208(sp)
   12f30:	4d010113          	addi	sp,sp,1232
   12f34:	00008067          	ret
   12f38:	00010593          	mv	a1,sp
   12f3c:	00090513          	mv	a0,s2
   12f40:	504000ef          	jal	ra,13444 <_fflush_r>
   12f44:	fc0500e3          	beqz	a0,12f04 <__sbprintf+0x74>
   12f48:	fff00493          	li	s1,-1
   12f4c:	fb9ff06f          	j	12f04 <__sbprintf+0x74>

0000000000012f50 <__swsetup_r>:
   12f50:	fe010113          	addi	sp,sp,-32
   12f54:	00813823          	sd	s0,16(sp)
   12f58:	00913423          	sd	s1,8(sp)
   12f5c:	00113c23          	sd	ra,24(sp)
   12f60:	7581b783          	ld	a5,1880(gp) # 24db8 <_impure_ptr>
   12f64:	00050493          	mv	s1,a0
   12f68:	00058413          	mv	s0,a1
   12f6c:	00078663          	beqz	a5,12f78 <__swsetup_r+0x28>
   12f70:	0507a703          	lw	a4,80(a5)
   12f74:	08070463          	beqz	a4,12ffc <__swsetup_r+0xac>
   12f78:	01041703          	lh	a4,16(s0)
   12f7c:	03071793          	slli	a5,a4,0x30
   12f80:	00877693          	andi	a3,a4,8
   12f84:	0307d793          	srli	a5,a5,0x30
   12f88:	08068863          	beqz	a3,13018 <__swsetup_r+0xc8>
   12f8c:	01843683          	ld	a3,24(s0)
   12f90:	0a068863          	beqz	a3,13040 <__swsetup_r+0xf0>
   12f94:	0017f613          	andi	a2,a5,1
   12f98:	02060863          	beqz	a2,12fc8 <__swsetup_r+0x78>
   12f9c:	02042603          	lw	a2,32(s0)
   12fa0:	00042623          	sw	zero,12(s0)
   12fa4:	00000513          	li	a0,0
   12fa8:	40c0063b          	negw	a2,a2
   12fac:	02c42423          	sw	a2,40(s0)
   12fb0:	02068a63          	beqz	a3,12fe4 <__swsetup_r+0x94>
   12fb4:	01813083          	ld	ra,24(sp)
   12fb8:	01013403          	ld	s0,16(sp)
   12fbc:	00813483          	ld	s1,8(sp)
   12fc0:	02010113          	addi	sp,sp,32
   12fc4:	00008067          	ret
   12fc8:	0027f613          	andi	a2,a5,2
   12fcc:	00000593          	li	a1,0
   12fd0:	00061463          	bnez	a2,12fd8 <__swsetup_r+0x88>
   12fd4:	02042583          	lw	a1,32(s0)
   12fd8:	00b42623          	sw	a1,12(s0)
   12fdc:	00000513          	li	a0,0
   12fe0:	fc069ae3          	bnez	a3,12fb4 <__swsetup_r+0x64>
   12fe4:	0807f793          	andi	a5,a5,128
   12fe8:	fc0786e3          	beqz	a5,12fb4 <__swsetup_r+0x64>
   12fec:	04076713          	ori	a4,a4,64
   12ff0:	00e41823          	sh	a4,16(s0)
   12ff4:	fff00513          	li	a0,-1
   12ff8:	fbdff06f          	j	12fb4 <__swsetup_r+0x64>
   12ffc:	00078513          	mv	a0,a5
   13000:	081000ef          	jal	ra,13880 <__sinit>
   13004:	01041703          	lh	a4,16(s0)
   13008:	03071793          	slli	a5,a4,0x30
   1300c:	00877693          	andi	a3,a4,8
   13010:	0307d793          	srli	a5,a5,0x30
   13014:	f6069ce3          	bnez	a3,12f8c <__swsetup_r+0x3c>
   13018:	0107f693          	andi	a3,a5,16
   1301c:	08068263          	beqz	a3,130a0 <__swsetup_r+0x150>
   13020:	0047f793          	andi	a5,a5,4
   13024:	04079463          	bnez	a5,1306c <__swsetup_r+0x11c>
   13028:	01843683          	ld	a3,24(s0)
   1302c:	00876713          	ori	a4,a4,8
   13030:	03071793          	slli	a5,a4,0x30
   13034:	00e41823          	sh	a4,16(s0)
   13038:	0307d793          	srli	a5,a5,0x30
   1303c:	f4069ce3          	bnez	a3,12f94 <__swsetup_r+0x44>
   13040:	2807f613          	andi	a2,a5,640
   13044:	20000593          	li	a1,512
   13048:	f4b606e3          	beq	a2,a1,12f94 <__swsetup_r+0x44>
   1304c:	00040593          	mv	a1,s0
   13050:	00048513          	mv	a0,s1
   13054:	168040ef          	jal	ra,171bc <__smakebuf_r>
   13058:	01041703          	lh	a4,16(s0)
   1305c:	01843683          	ld	a3,24(s0)
   13060:	03071793          	slli	a5,a4,0x30
   13064:	0307d793          	srli	a5,a5,0x30
   13068:	f2dff06f          	j	12f94 <__swsetup_r+0x44>
   1306c:	05843583          	ld	a1,88(s0)
   13070:	00058e63          	beqz	a1,1308c <__swsetup_r+0x13c>
   13074:	07440793          	addi	a5,s0,116
   13078:	00f58863          	beq	a1,a5,13088 <__swsetup_r+0x138>
   1307c:	00048513          	mv	a0,s1
   13080:	1d9000ef          	jal	ra,13a58 <_free_r>
   13084:	01041703          	lh	a4,16(s0)
   13088:	04043c23          	sd	zero,88(s0)
   1308c:	01843683          	ld	a3,24(s0)
   13090:	fdb77713          	andi	a4,a4,-37
   13094:	00042423          	sw	zero,8(s0)
   13098:	00d43023          	sd	a3,0(s0)
   1309c:	f91ff06f          	j	1302c <__swsetup_r+0xdc>
   130a0:	00900793          	li	a5,9
   130a4:	00f4a023          	sw	a5,0(s1)
   130a8:	04076713          	ori	a4,a4,64
   130ac:	00e41823          	sh	a4,16(s0)
   130b0:	fff00513          	li	a0,-1
   130b4:	f01ff06f          	j	12fb4 <__swsetup_r+0x64>

00000000000130b8 <__call_exitprocs>:
   130b8:	fb010113          	addi	sp,sp,-80
   130bc:	03413023          	sd	s4,32(sp)
   130c0:	7481ba03          	ld	s4,1864(gp) # 24da8 <_global_impure_ptr>
   130c4:	03213823          	sd	s2,48(sp)
   130c8:	1f8a3903          	ld	s2,504(s4)
   130cc:	04113423          	sd	ra,72(sp)
   130d0:	04813023          	sd	s0,64(sp)
   130d4:	02913c23          	sd	s1,56(sp)
   130d8:	03313423          	sd	s3,40(sp)
   130dc:	01513c23          	sd	s5,24(sp)
   130e0:	01613823          	sd	s6,16(sp)
   130e4:	01713423          	sd	s7,8(sp)
   130e8:	01813023          	sd	s8,0(sp)
   130ec:	04090063          	beqz	s2,1312c <__call_exitprocs+0x74>
   130f0:	00050b13          	mv	s6,a0
   130f4:	00058b93          	mv	s7,a1
   130f8:	00100a93          	li	s5,1
   130fc:	fff00993          	li	s3,-1
   13100:	00892483          	lw	s1,8(s2)
   13104:	fff4841b          	addiw	s0,s1,-1
   13108:	02044263          	bltz	s0,1312c <__call_exitprocs+0x74>
   1310c:	00349493          	slli	s1,s1,0x3
   13110:	009904b3          	add	s1,s2,s1
   13114:	040b8463          	beqz	s7,1315c <__call_exitprocs+0xa4>
   13118:	2084b783          	ld	a5,520(s1)
   1311c:	05778063          	beq	a5,s7,1315c <__call_exitprocs+0xa4>
   13120:	fff4041b          	addiw	s0,s0,-1
   13124:	ff848493          	addi	s1,s1,-8
   13128:	ff3416e3          	bne	s0,s3,13114 <__call_exitprocs+0x5c>
   1312c:	04813083          	ld	ra,72(sp)
   13130:	04013403          	ld	s0,64(sp)
   13134:	03813483          	ld	s1,56(sp)
   13138:	03013903          	ld	s2,48(sp)
   1313c:	02813983          	ld	s3,40(sp)
   13140:	02013a03          	ld	s4,32(sp)
   13144:	01813a83          	ld	s5,24(sp)
   13148:	01013b03          	ld	s6,16(sp)
   1314c:	00813b83          	ld	s7,8(sp)
   13150:	00013c03          	ld	s8,0(sp)
   13154:	05010113          	addi	sp,sp,80
   13158:	00008067          	ret
   1315c:	00892783          	lw	a5,8(s2)
   13160:	0084b703          	ld	a4,8(s1)
   13164:	fff7879b          	addiw	a5,a5,-1
   13168:	06878263          	beq	a5,s0,131cc <__call_exitprocs+0x114>
   1316c:	0004b423          	sd	zero,8(s1)
   13170:	fa0708e3          	beqz	a4,13120 <__call_exitprocs+0x68>
   13174:	31092783          	lw	a5,784(s2)
   13178:	008a96bb          	sllw	a3,s5,s0
   1317c:	00892c03          	lw	s8,8(s2)
   13180:	00d7f7b3          	and	a5,a5,a3
   13184:	0007879b          	sext.w	a5,a5
   13188:	02079263          	bnez	a5,131ac <__call_exitprocs+0xf4>
   1318c:	000700e7          	jalr	a4
   13190:	00892703          	lw	a4,8(s2)
   13194:	1f8a3783          	ld	a5,504(s4)
   13198:	01871463          	bne	a4,s8,131a0 <__call_exitprocs+0xe8>
   1319c:	f92782e3          	beq	a5,s2,13120 <__call_exitprocs+0x68>
   131a0:	f80786e3          	beqz	a5,1312c <__call_exitprocs+0x74>
   131a4:	00078913          	mv	s2,a5
   131a8:	f59ff06f          	j	13100 <__call_exitprocs+0x48>
   131ac:	31492783          	lw	a5,788(s2)
   131b0:	1084b583          	ld	a1,264(s1)
   131b4:	00d7f7b3          	and	a5,a5,a3
   131b8:	0007879b          	sext.w	a5,a5
   131bc:	00079c63          	bnez	a5,131d4 <__call_exitprocs+0x11c>
   131c0:	000b0513          	mv	a0,s6
   131c4:	000700e7          	jalr	a4
   131c8:	fc9ff06f          	j	13190 <__call_exitprocs+0xd8>
   131cc:	00892423          	sw	s0,8(s2)
   131d0:	fa1ff06f          	j	13170 <__call_exitprocs+0xb8>
   131d4:	00058513          	mv	a0,a1
   131d8:	000700e7          	jalr	a4
   131dc:	fb5ff06f          	j	13190 <__call_exitprocs+0xd8>

00000000000131e0 <__sflush_r>:
   131e0:	01059783          	lh	a5,16(a1)
   131e4:	fd010113          	addi	sp,sp,-48
   131e8:	02813023          	sd	s0,32(sp)
   131ec:	01313423          	sd	s3,8(sp)
   131f0:	02113423          	sd	ra,40(sp)
   131f4:	00913c23          	sd	s1,24(sp)
   131f8:	01213823          	sd	s2,16(sp)
   131fc:	0087f693          	andi	a3,a5,8
   13200:	00058413          	mv	s0,a1
   13204:	00050993          	mv	s3,a0
   13208:	10069c63          	bnez	a3,13320 <__sflush_r+0x140>
   1320c:	00001737          	lui	a4,0x1
   13210:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   13214:	0085a683          	lw	a3,8(a1)
   13218:	00e7e7b3          	or	a5,a5,a4
   1321c:	00f59823          	sh	a5,16(a1)
   13220:	18d05663          	blez	a3,133ac <__sflush_r+0x1cc>
   13224:	04843703          	ld	a4,72(s0)
   13228:	0c070c63          	beqz	a4,13300 <__sflush_r+0x120>
   1322c:	03079793          	slli	a5,a5,0x30
   13230:	0307d793          	srli	a5,a5,0x30
   13234:	000016b7          	lui	a3,0x1
   13238:	0009a483          	lw	s1,0(s3)
   1323c:	00d7f6b3          	and	a3,a5,a3
   13240:	0009a023          	sw	zero,0(s3)
   13244:	03043583          	ld	a1,48(s0)
   13248:	16069863          	bnez	a3,133b8 <__sflush_r+0x1d8>
   1324c:	00000613          	li	a2,0
   13250:	00100693          	li	a3,1
   13254:	00098513          	mv	a0,s3
   13258:	000700e7          	jalr	a4
   1325c:	fff00793          	li	a5,-1
   13260:	00050613          	mv	a2,a0
   13264:	18f50c63          	beq	a0,a5,133fc <__sflush_r+0x21c>
   13268:	01045783          	lhu	a5,16(s0)
   1326c:	04843703          	ld	a4,72(s0)
   13270:	03043583          	ld	a1,48(s0)
   13274:	0047f793          	andi	a5,a5,4
   13278:	00078e63          	beqz	a5,13294 <__sflush_r+0xb4>
   1327c:	00842683          	lw	a3,8(s0)
   13280:	05843783          	ld	a5,88(s0)
   13284:	40d60633          	sub	a2,a2,a3
   13288:	00078663          	beqz	a5,13294 <__sflush_r+0xb4>
   1328c:	07042783          	lw	a5,112(s0)
   13290:	40f60633          	sub	a2,a2,a5
   13294:	00000693          	li	a3,0
   13298:	00098513          	mv	a0,s3
   1329c:	000700e7          	jalr	a4
   132a0:	fff00793          	li	a5,-1
   132a4:	10f51e63          	bne	a0,a5,133c0 <__sflush_r+0x1e0>
   132a8:	0009a703          	lw	a4,0(s3)
   132ac:	01041783          	lh	a5,16(s0)
   132b0:	16070863          	beqz	a4,13420 <__sflush_r+0x240>
   132b4:	01d00693          	li	a3,29
   132b8:	00d70663          	beq	a4,a3,132c4 <__sflush_r+0xe4>
   132bc:	01600693          	li	a3,22
   132c0:	16d71a63          	bne	a4,a3,13434 <__sflush_r+0x254>
   132c4:	01843683          	ld	a3,24(s0)
   132c8:	fffff737          	lui	a4,0xfffff
   132cc:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffda99f>
   132d0:	00e7f7b3          	and	a5,a5,a4
   132d4:	00f41823          	sh	a5,16(s0)
   132d8:	00042423          	sw	zero,8(s0)
   132dc:	00d43023          	sd	a3,0(s0)
   132e0:	05843583          	ld	a1,88(s0)
   132e4:	0099a023          	sw	s1,0(s3)
   132e8:	00058c63          	beqz	a1,13300 <__sflush_r+0x120>
   132ec:	07440793          	addi	a5,s0,116
   132f0:	00f58663          	beq	a1,a5,132fc <__sflush_r+0x11c>
   132f4:	00098513          	mv	a0,s3
   132f8:	760000ef          	jal	ra,13a58 <_free_r>
   132fc:	04043c23          	sd	zero,88(s0)
   13300:	00000513          	li	a0,0
   13304:	02813083          	ld	ra,40(sp)
   13308:	02013403          	ld	s0,32(sp)
   1330c:	01813483          	ld	s1,24(sp)
   13310:	01013903          	ld	s2,16(sp)
   13314:	00813983          	ld	s3,8(sp)
   13318:	03010113          	addi	sp,sp,48
   1331c:	00008067          	ret
   13320:	0185b903          	ld	s2,24(a1)
   13324:	fc090ee3          	beqz	s2,13300 <__sflush_r+0x120>
   13328:	0005b483          	ld	s1,0(a1)
   1332c:	03079713          	slli	a4,a5,0x30
   13330:	03075713          	srli	a4,a4,0x30
   13334:	00377713          	andi	a4,a4,3
   13338:	0125b023          	sd	s2,0(a1)
   1333c:	412484bb          	subw	s1,s1,s2
   13340:	00000793          	li	a5,0
   13344:	00071463          	bnez	a4,1334c <__sflush_r+0x16c>
   13348:	0205a783          	lw	a5,32(a1)
   1334c:	00f42623          	sw	a5,12(s0)
   13350:	00904863          	bgtz	s1,13360 <__sflush_r+0x180>
   13354:	fadff06f          	j	13300 <__sflush_r+0x120>
   13358:	00a90933          	add	s2,s2,a0
   1335c:	fa9052e3          	blez	s1,13300 <__sflush_r+0x120>
   13360:	04043783          	ld	a5,64(s0)
   13364:	03043583          	ld	a1,48(s0)
   13368:	00048693          	mv	a3,s1
   1336c:	00090613          	mv	a2,s2
   13370:	00098513          	mv	a0,s3
   13374:	000780e7          	jalr	a5
   13378:	40a484bb          	subw	s1,s1,a0
   1337c:	fca04ee3          	bgtz	a0,13358 <__sflush_r+0x178>
   13380:	01045783          	lhu	a5,16(s0)
   13384:	02813083          	ld	ra,40(sp)
   13388:	01813483          	ld	s1,24(sp)
   1338c:	0407e793          	ori	a5,a5,64
   13390:	00f41823          	sh	a5,16(s0)
   13394:	02013403          	ld	s0,32(sp)
   13398:	01013903          	ld	s2,16(sp)
   1339c:	00813983          	ld	s3,8(sp)
   133a0:	fff00513          	li	a0,-1
   133a4:	03010113          	addi	sp,sp,48
   133a8:	00008067          	ret
   133ac:	0705a703          	lw	a4,112(a1)
   133b0:	e6e04ae3          	bgtz	a4,13224 <__sflush_r+0x44>
   133b4:	f4dff06f          	j	13300 <__sflush_r+0x120>
   133b8:	09043603          	ld	a2,144(s0)
   133bc:	eb9ff06f          	j	13274 <__sflush_r+0x94>
   133c0:	01045783          	lhu	a5,16(s0)
   133c4:	fffff737          	lui	a4,0xfffff
   133c8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffda99f>
   133cc:	00e7f7b3          	and	a5,a5,a4
   133d0:	01843683          	ld	a3,24(s0)
   133d4:	0107979b          	slliw	a5,a5,0x10
   133d8:	4107d79b          	sraiw	a5,a5,0x10
   133dc:	00001737          	lui	a4,0x1
   133e0:	00f41823          	sh	a5,16(s0)
   133e4:	00042423          	sw	zero,8(s0)
   133e8:	00d43023          	sd	a3,0(s0)
   133ec:	00e7f7b3          	and	a5,a5,a4
   133f0:	ee0788e3          	beqz	a5,132e0 <__sflush_r+0x100>
   133f4:	08a43823          	sd	a0,144(s0)
   133f8:	ee9ff06f          	j	132e0 <__sflush_r+0x100>
   133fc:	0009a783          	lw	a5,0(s3)
   13400:	e60784e3          	beqz	a5,13268 <__sflush_r+0x88>
   13404:	01d00713          	li	a4,29
   13408:	00e78663          	beq	a5,a4,13414 <__sflush_r+0x234>
   1340c:	01600713          	li	a4,22
   13410:	f6e798e3          	bne	a5,a4,13380 <__sflush_r+0x1a0>
   13414:	0099a023          	sw	s1,0(s3)
   13418:	00000513          	li	a0,0
   1341c:	ee9ff06f          	j	13304 <__sflush_r+0x124>
   13420:	fffff737          	lui	a4,0xfffff
   13424:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffda99f>
   13428:	01843683          	ld	a3,24(s0)
   1342c:	00e7f7b3          	and	a5,a5,a4
   13430:	fadff06f          	j	133dc <__sflush_r+0x1fc>
   13434:	0407e793          	ori	a5,a5,64
   13438:	00f41823          	sh	a5,16(s0)
   1343c:	fff00513          	li	a0,-1
   13440:	ec5ff06f          	j	13304 <__sflush_r+0x124>

0000000000013444 <_fflush_r>:
   13444:	fe010113          	addi	sp,sp,-32
   13448:	00813823          	sd	s0,16(sp)
   1344c:	00113c23          	sd	ra,24(sp)
   13450:	00050413          	mv	s0,a0
   13454:	00050663          	beqz	a0,13460 <_fflush_r+0x1c>
   13458:	05052783          	lw	a5,80(a0)
   1345c:	02078063          	beqz	a5,1347c <_fflush_r+0x38>
   13460:	01059783          	lh	a5,16(a1)
   13464:	02079663          	bnez	a5,13490 <_fflush_r+0x4c>
   13468:	01813083          	ld	ra,24(sp)
   1346c:	01013403          	ld	s0,16(sp)
   13470:	00000513          	li	a0,0
   13474:	02010113          	addi	sp,sp,32
   13478:	00008067          	ret
   1347c:	00b13423          	sd	a1,8(sp)
   13480:	400000ef          	jal	ra,13880 <__sinit>
   13484:	00813583          	ld	a1,8(sp)
   13488:	01059783          	lh	a5,16(a1)
   1348c:	fc078ee3          	beqz	a5,13468 <_fflush_r+0x24>
   13490:	00040513          	mv	a0,s0
   13494:	01013403          	ld	s0,16(sp)
   13498:	01813083          	ld	ra,24(sp)
   1349c:	02010113          	addi	sp,sp,32
   134a0:	d41ff06f          	j	131e0 <__sflush_r>

00000000000134a4 <fflush>:
   134a4:	06050663          	beqz	a0,13510 <fflush+0x6c>
   134a8:	fe010113          	addi	sp,sp,-32
   134ac:	00813823          	sd	s0,16(sp)
   134b0:	00113c23          	sd	ra,24(sp)
   134b4:	00050413          	mv	s0,a0
   134b8:	7581b503          	ld	a0,1880(gp) # 24db8 <_impure_ptr>
   134bc:	00050663          	beqz	a0,134c8 <fflush+0x24>
   134c0:	05052783          	lw	a5,80(a0)
   134c4:	02078a63          	beqz	a5,134f8 <fflush+0x54>
   134c8:	01041783          	lh	a5,16(s0)
   134cc:	00079c63          	bnez	a5,134e4 <fflush+0x40>
   134d0:	01813083          	ld	ra,24(sp)
   134d4:	01013403          	ld	s0,16(sp)
   134d8:	00000513          	li	a0,0
   134dc:	02010113          	addi	sp,sp,32
   134e0:	00008067          	ret
   134e4:	00040593          	mv	a1,s0
   134e8:	01013403          	ld	s0,16(sp)
   134ec:	01813083          	ld	ra,24(sp)
   134f0:	02010113          	addi	sp,sp,32
   134f4:	cedff06f          	j	131e0 <__sflush_r>
   134f8:	00a13423          	sd	a0,8(sp)
   134fc:	384000ef          	jal	ra,13880 <__sinit>
   13500:	01041783          	lh	a5,16(s0)
   13504:	00813503          	ld	a0,8(sp)
   13508:	fc0784e3          	beqz	a5,134d0 <fflush+0x2c>
   1350c:	fd9ff06f          	j	134e4 <fflush+0x40>
   13510:	00000597          	auipc	a1,0x0
   13514:	f3458593          	addi	a1,a1,-204 # 13444 <_fflush_r>
   13518:	7481b503          	ld	a0,1864(gp) # 24da8 <_global_impure_ptr>
   1351c:	5ed0006f          	j	14308 <_fwalk_reent>

0000000000013520 <__fp_lock>:
   13520:	00000513          	li	a0,0
   13524:	00008067          	ret

0000000000013528 <_cleanup_r>:
   13528:	0000a597          	auipc	a1,0xa
   1352c:	6bc58593          	addi	a1,a1,1724 # 1dbe4 <_fclose_r>
   13530:	5d90006f          	j	14308 <_fwalk_reent>

0000000000013534 <__fp_unlock>:
   13534:	00000513          	li	a0,0
   13538:	00008067          	ret

000000000001353c <__sinit.part.0>:
   1353c:	fc010113          	addi	sp,sp,-64
   13540:	02113c23          	sd	ra,56(sp)
   13544:	02813823          	sd	s0,48(sp)
   13548:	02913423          	sd	s1,40(sp)
   1354c:	03213023          	sd	s2,32(sp)
   13550:	01313c23          	sd	s3,24(sp)
   13554:	01413823          	sd	s4,16(sp)
   13558:	01513423          	sd	s5,8(sp)
   1355c:	01613023          	sd	s6,0(sp)
   13560:	00853403          	ld	s0,8(a0)
   13564:	00000717          	auipc	a4,0x0
   13568:	fc470713          	addi	a4,a4,-60 # 13528 <_cleanup_r>
   1356c:	04e53c23          	sd	a4,88(a0)
   13570:	53850793          	addi	a5,a0,1336
   13574:	00300713          	li	a4,3
   13578:	52e52423          	sw	a4,1320(a0)
   1357c:	52f53823          	sd	a5,1328(a0)
   13580:	52053023          	sd	zero,1312(a0)
   13584:	00400793          	li	a5,4
   13588:	00050913          	mv	s2,a0
   1358c:	00f42823          	sw	a5,16(s0)
   13590:	00800613          	li	a2,8
   13594:	00000593          	li	a1,0
   13598:	0a042623          	sw	zero,172(s0)
   1359c:	00043023          	sd	zero,0(s0)
   135a0:	00043423          	sd	zero,8(s0)
   135a4:	00043c23          	sd	zero,24(s0)
   135a8:	02042023          	sw	zero,32(s0)
   135ac:	02042423          	sw	zero,40(s0)
   135b0:	0a440513          	addi	a0,s0,164
   135b4:	ea9fc0ef          	jal	ra,1045c <memset>
   135b8:	01093483          	ld	s1,16(s2)
   135bc:	00006b17          	auipc	s6,0x6
   135c0:	478b0b13          	addi	s6,s6,1144 # 19a34 <__sread>
   135c4:	00006a97          	auipc	s5,0x6
   135c8:	4d4a8a93          	addi	s5,s5,1236 # 19a98 <__swrite>
   135cc:	00006a17          	auipc	s4,0x6
   135d0:	554a0a13          	addi	s4,s4,1364 # 19b20 <__sseek>
   135d4:	00006997          	auipc	s3,0x6
   135d8:	5b498993          	addi	s3,s3,1460 # 19b88 <__sclose>
   135dc:	000107b7          	lui	a5,0x10
   135e0:	03643c23          	sd	s6,56(s0)
   135e4:	05543023          	sd	s5,64(s0)
   135e8:	05443423          	sd	s4,72(s0)
   135ec:	05343823          	sd	s3,80(s0)
   135f0:	02843823          	sd	s0,48(s0)
   135f4:	00978793          	addi	a5,a5,9 # 10009 <register_fini-0xa7>
   135f8:	00f4a823          	sw	a5,16(s1)
   135fc:	00800613          	li	a2,8
   13600:	00000593          	li	a1,0
   13604:	0a04a623          	sw	zero,172(s1)
   13608:	0004b023          	sd	zero,0(s1)
   1360c:	0004b423          	sd	zero,8(s1)
   13610:	0004bc23          	sd	zero,24(s1)
   13614:	0204a023          	sw	zero,32(s1)
   13618:	0204a423          	sw	zero,40(s1)
   1361c:	0a448513          	addi	a0,s1,164
   13620:	e3dfc0ef          	jal	ra,1045c <memset>
   13624:	01893403          	ld	s0,24(s2)
   13628:	000207b7          	lui	a5,0x20
   1362c:	0364bc23          	sd	s6,56(s1)
   13630:	0554b023          	sd	s5,64(s1)
   13634:	0544b423          	sd	s4,72(s1)
   13638:	0534b823          	sd	s3,80(s1)
   1363c:	0294b823          	sd	s1,48(s1)
   13640:	01278793          	addi	a5,a5,18 # 20012 <_write+0x3a>
   13644:	00f42823          	sw	a5,16(s0)
   13648:	0a042623          	sw	zero,172(s0)
   1364c:	00043023          	sd	zero,0(s0)
   13650:	00043423          	sd	zero,8(s0)
   13654:	00043c23          	sd	zero,24(s0)
   13658:	02042023          	sw	zero,32(s0)
   1365c:	02042423          	sw	zero,40(s0)
   13660:	0a440513          	addi	a0,s0,164
   13664:	00800613          	li	a2,8
   13668:	00000593          	li	a1,0
   1366c:	df1fc0ef          	jal	ra,1045c <memset>
   13670:	03813083          	ld	ra,56(sp)
   13674:	03643c23          	sd	s6,56(s0)
   13678:	05543023          	sd	s5,64(s0)
   1367c:	05443423          	sd	s4,72(s0)
   13680:	05343823          	sd	s3,80(s0)
   13684:	02843823          	sd	s0,48(s0)
   13688:	03013403          	ld	s0,48(sp)
   1368c:	00100793          	li	a5,1
   13690:	04f92823          	sw	a5,80(s2)
   13694:	02813483          	ld	s1,40(sp)
   13698:	02013903          	ld	s2,32(sp)
   1369c:	01813983          	ld	s3,24(sp)
   136a0:	01013a03          	ld	s4,16(sp)
   136a4:	00813a83          	ld	s5,8(sp)
   136a8:	00013b03          	ld	s6,0(sp)
   136ac:	04010113          	addi	sp,sp,64
   136b0:	00008067          	ret

00000000000136b4 <__sfmoreglue>:
   136b4:	fe010113          	addi	sp,sp,-32
   136b8:	fff5861b          	addiw	a2,a1,-1
   136bc:	00813823          	sd	s0,16(sp)
   136c0:	00161413          	slli	s0,a2,0x1
   136c4:	00c40433          	add	s0,s0,a2
   136c8:	00241413          	slli	s0,s0,0x2
   136cc:	40c40433          	sub	s0,s0,a2
   136d0:	00441413          	slli	s0,s0,0x4
   136d4:	01213023          	sd	s2,0(sp)
   136d8:	00058913          	mv	s2,a1
   136dc:	0c840593          	addi	a1,s0,200
   136e0:	00913423          	sd	s1,8(sp)
   136e4:	00113c23          	sd	ra,24(sp)
   136e8:	535030ef          	jal	ra,1741c <_malloc_r>
   136ec:	00050493          	mv	s1,a0
   136f0:	02050063          	beqz	a0,13710 <__sfmoreglue+0x5c>
   136f4:	01850513          	addi	a0,a0,24
   136f8:	0004b023          	sd	zero,0(s1)
   136fc:	0124a423          	sw	s2,8(s1)
   13700:	00a4b823          	sd	a0,16(s1)
   13704:	0b040613          	addi	a2,s0,176
   13708:	00000593          	li	a1,0
   1370c:	d51fc0ef          	jal	ra,1045c <memset>
   13710:	01813083          	ld	ra,24(sp)
   13714:	01013403          	ld	s0,16(sp)
   13718:	00013903          	ld	s2,0(sp)
   1371c:	00048513          	mv	a0,s1
   13720:	00813483          	ld	s1,8(sp)
   13724:	02010113          	addi	sp,sp,32
   13728:	00008067          	ret

000000000001372c <__sfp>:
   1372c:	fd010113          	addi	sp,sp,-48
   13730:	01213823          	sd	s2,16(sp)
   13734:	7481b903          	ld	s2,1864(gp) # 24da8 <_global_impure_ptr>
   13738:	05092783          	lw	a5,80(s2)
   1373c:	00913c23          	sd	s1,24(sp)
   13740:	02113423          	sd	ra,40(sp)
   13744:	02813023          	sd	s0,32(sp)
   13748:	01313423          	sd	s3,8(sp)
   1374c:	00050493          	mv	s1,a0
   13750:	0c078463          	beqz	a5,13818 <__sfp+0xec>
   13754:	52090913          	addi	s2,s2,1312
   13758:	00400993          	li	s3,4
   1375c:	00892783          	lw	a5,8(s2)
   13760:	01093403          	ld	s0,16(s2)
   13764:	0af05263          	blez	a5,13808 <__sfp+0xdc>
   13768:	fff7879b          	addiw	a5,a5,-1
   1376c:	02079793          	slli	a5,a5,0x20
   13770:	0207d793          	srli	a5,a5,0x20
   13774:	00178713          	addi	a4,a5,1
   13778:	00171793          	slli	a5,a4,0x1
   1377c:	00e787b3          	add	a5,a5,a4
   13780:	00279793          	slli	a5,a5,0x2
   13784:	40e787b3          	sub	a5,a5,a4
   13788:	00479793          	slli	a5,a5,0x4
   1378c:	00f407b3          	add	a5,s0,a5
   13790:	00c0006f          	j	1379c <__sfp+0x70>
   13794:	0b040413          	addi	s0,s0,176
   13798:	06f40863          	beq	s0,a5,13808 <__sfp+0xdc>
   1379c:	01041703          	lh	a4,16(s0)
   137a0:	fe071ae3          	bnez	a4,13794 <__sfp+0x68>
   137a4:	ffff07b7          	lui	a5,0xffff0
   137a8:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffcb1a1>
   137ac:	0a042623          	sw	zero,172(s0)
   137b0:	00043023          	sd	zero,0(s0)
   137b4:	00043423          	sd	zero,8(s0)
   137b8:	00f42823          	sw	a5,16(s0)
   137bc:	00043c23          	sd	zero,24(s0)
   137c0:	02042023          	sw	zero,32(s0)
   137c4:	02042423          	sw	zero,40(s0)
   137c8:	00800613          	li	a2,8
   137cc:	00000593          	li	a1,0
   137d0:	0a440513          	addi	a0,s0,164
   137d4:	c89fc0ef          	jal	ra,1045c <memset>
   137d8:	04043c23          	sd	zero,88(s0)
   137dc:	06042023          	sw	zero,96(s0)
   137e0:	06043c23          	sd	zero,120(s0)
   137e4:	08042023          	sw	zero,128(s0)
   137e8:	02813083          	ld	ra,40(sp)
   137ec:	00040513          	mv	a0,s0
   137f0:	02013403          	ld	s0,32(sp)
   137f4:	01813483          	ld	s1,24(sp)
   137f8:	01013903          	ld	s2,16(sp)
   137fc:	00813983          	ld	s3,8(sp)
   13800:	03010113          	addi	sp,sp,48
   13804:	00008067          	ret
   13808:	00093403          	ld	s0,0(s2)
   1380c:	00040c63          	beqz	s0,13824 <__sfp+0xf8>
   13810:	00040913          	mv	s2,s0
   13814:	f49ff06f          	j	1375c <__sfp+0x30>
   13818:	00090513          	mv	a0,s2
   1381c:	d21ff0ef          	jal	ra,1353c <__sinit.part.0>
   13820:	f35ff06f          	j	13754 <__sfp+0x28>
   13824:	2d800593          	li	a1,728
   13828:	00048513          	mv	a0,s1
   1382c:	3f1030ef          	jal	ra,1741c <_malloc_r>
   13830:	00050413          	mv	s0,a0
   13834:	02050663          	beqz	a0,13860 <__sfp+0x134>
   13838:	01850513          	addi	a0,a0,24
   1383c:	00043023          	sd	zero,0(s0)
   13840:	01342423          	sw	s3,8(s0)
   13844:	00a43823          	sd	a0,16(s0)
   13848:	2c000613          	li	a2,704
   1384c:	00000593          	li	a1,0
   13850:	c0dfc0ef          	jal	ra,1045c <memset>
   13854:	00893023          	sd	s0,0(s2)
   13858:	00040913          	mv	s2,s0
   1385c:	f01ff06f          	j	1375c <__sfp+0x30>
   13860:	00093023          	sd	zero,0(s2)
   13864:	00c00793          	li	a5,12
   13868:	00f4a023          	sw	a5,0(s1)
   1386c:	f7dff06f          	j	137e8 <__sfp+0xbc>

0000000000013870 <_cleanup>:
   13870:	0000a597          	auipc	a1,0xa
   13874:	37458593          	addi	a1,a1,884 # 1dbe4 <_fclose_r>
   13878:	7481b503          	ld	a0,1864(gp) # 24da8 <_global_impure_ptr>
   1387c:	28d0006f          	j	14308 <_fwalk_reent>

0000000000013880 <__sinit>:
   13880:	05052783          	lw	a5,80(a0)
   13884:	00078463          	beqz	a5,1388c <__sinit+0xc>
   13888:	00008067          	ret
   1388c:	cb1ff06f          	j	1353c <__sinit.part.0>

0000000000013890 <__sfp_lock_acquire>:
   13890:	00008067          	ret

0000000000013894 <__sfp_lock_release>:
   13894:	00008067          	ret

0000000000013898 <__sinit_lock_acquire>:
   13898:	00008067          	ret

000000000001389c <__sinit_lock_release>:
   1389c:	00008067          	ret

00000000000138a0 <__fp_lock_all>:
   138a0:	00000597          	auipc	a1,0x0
   138a4:	c8058593          	addi	a1,a1,-896 # 13520 <__fp_lock>
   138a8:	7581b503          	ld	a0,1880(gp) # 24db8 <_impure_ptr>
   138ac:	1950006f          	j	14240 <_fwalk>

00000000000138b0 <__fp_unlock_all>:
   138b0:	00000597          	auipc	a1,0x0
   138b4:	c8458593          	addi	a1,a1,-892 # 13534 <__fp_unlock>
   138b8:	7581b503          	ld	a0,1880(gp) # 24db8 <_impure_ptr>
   138bc:	1850006f          	j	14240 <_fwalk>

00000000000138c0 <__libc_fini_array>:
   138c0:	fe010113          	addi	sp,sp,-32
   138c4:	00813823          	sd	s0,16(sp)
   138c8:	00010797          	auipc	a5,0x10
   138cc:	3b078793          	addi	a5,a5,944 # 23c78 <impure_data>
   138d0:	00010417          	auipc	s0,0x10
   138d4:	3a040413          	addi	s0,s0,928 # 23c70 <__do_global_dtors_aux_fini_array_entry>
   138d8:	408787b3          	sub	a5,a5,s0
   138dc:	00913423          	sd	s1,8(sp)
   138e0:	00113c23          	sd	ra,24(sp)
   138e4:	4037d493          	srai	s1,a5,0x3
   138e8:	02048063          	beqz	s1,13908 <__libc_fini_array+0x48>
   138ec:	ff878793          	addi	a5,a5,-8
   138f0:	00878433          	add	s0,a5,s0
   138f4:	00043783          	ld	a5,0(s0)
   138f8:	fff48493          	addi	s1,s1,-1
   138fc:	ff840413          	addi	s0,s0,-8
   13900:	000780e7          	jalr	a5
   13904:	fe0498e3          	bnez	s1,138f4 <__libc_fini_array+0x34>
   13908:	01813083          	ld	ra,24(sp)
   1390c:	01013403          	ld	s0,16(sp)
   13910:	00813483          	ld	s1,8(sp)
   13914:	02010113          	addi	sp,sp,32
   13918:	00008067          	ret

000000000001391c <_malloc_trim_r>:
   1391c:	fd010113          	addi	sp,sp,-48
   13920:	02813023          	sd	s0,32(sp)
   13924:	00913c23          	sd	s1,24(sp)
   13928:	01213823          	sd	s2,16(sp)
   1392c:	01313423          	sd	s3,8(sp)
   13930:	01413023          	sd	s4,0(sp)
   13934:	00058993          	mv	s3,a1
   13938:	02113423          	sd	ra,40(sp)
   1393c:	00011a17          	auipc	s4,0x11
   13940:	c2ca0a13          	addi	s4,s4,-980 # 24568 <__malloc_av_>
   13944:	00050913          	mv	s2,a0
   13948:	664040ef          	jal	ra,17fac <__malloc_lock>
   1394c:	010a3703          	ld	a4,16(s4)
   13950:	000017b7          	lui	a5,0x1
   13954:	fdf78413          	addi	s0,a5,-33 # fdf <register_fini-0xf0d1>
   13958:	00873483          	ld	s1,8(a4)
   1395c:	41340433          	sub	s0,s0,s3
   13960:	ffc4f493          	andi	s1,s1,-4
   13964:	00940433          	add	s0,s0,s1
   13968:	00c45413          	srli	s0,s0,0xc
   1396c:	fff40413          	addi	s0,s0,-1
   13970:	00c41413          	slli	s0,s0,0xc
   13974:	00f44e63          	blt	s0,a5,13990 <_malloc_trim_r+0x74>
   13978:	00000593          	li	a1,0
   1397c:	00090513          	mv	a0,s2
   13980:	6e5050ef          	jal	ra,19864 <_sbrk_r>
   13984:	010a3783          	ld	a5,16(s4)
   13988:	009787b3          	add	a5,a5,s1
   1398c:	02f50863          	beq	a0,a5,139bc <_malloc_trim_r+0xa0>
   13990:	00090513          	mv	a0,s2
   13994:	61c040ef          	jal	ra,17fb0 <__malloc_unlock>
   13998:	02813083          	ld	ra,40(sp)
   1399c:	02013403          	ld	s0,32(sp)
   139a0:	01813483          	ld	s1,24(sp)
   139a4:	01013903          	ld	s2,16(sp)
   139a8:	00813983          	ld	s3,8(sp)
   139ac:	00013a03          	ld	s4,0(sp)
   139b0:	00000513          	li	a0,0
   139b4:	03010113          	addi	sp,sp,48
   139b8:	00008067          	ret
   139bc:	408005b3          	neg	a1,s0
   139c0:	00090513          	mv	a0,s2
   139c4:	6a1050ef          	jal	ra,19864 <_sbrk_r>
   139c8:	fff00793          	li	a5,-1
   139cc:	04f50a63          	beq	a0,a5,13a20 <_malloc_trim_r+0x104>
   139d0:	00011717          	auipc	a4,0x11
   139d4:	46870713          	addi	a4,a4,1128 # 24e38 <__malloc_current_mallinfo>
   139d8:	00072783          	lw	a5,0(a4)
   139dc:	010a3683          	ld	a3,16(s4)
   139e0:	408484b3          	sub	s1,s1,s0
   139e4:	0014e493          	ori	s1,s1,1
   139e8:	4087843b          	subw	s0,a5,s0
   139ec:	00090513          	mv	a0,s2
   139f0:	0096b423          	sd	s1,8(a3) # 1008 <register_fini-0xf0a8>
   139f4:	00872023          	sw	s0,0(a4)
   139f8:	5b8040ef          	jal	ra,17fb0 <__malloc_unlock>
   139fc:	02813083          	ld	ra,40(sp)
   13a00:	02013403          	ld	s0,32(sp)
   13a04:	01813483          	ld	s1,24(sp)
   13a08:	01013903          	ld	s2,16(sp)
   13a0c:	00813983          	ld	s3,8(sp)
   13a10:	00013a03          	ld	s4,0(sp)
   13a14:	00100513          	li	a0,1
   13a18:	03010113          	addi	sp,sp,48
   13a1c:	00008067          	ret
   13a20:	00000593          	li	a1,0
   13a24:	00090513          	mv	a0,s2
   13a28:	63d050ef          	jal	ra,19864 <_sbrk_r>
   13a2c:	010a3703          	ld	a4,16(s4)
   13a30:	01f00693          	li	a3,31
   13a34:	40e507b3          	sub	a5,a0,a4
   13a38:	f4f6dce3          	bge	a3,a5,13990 <_malloc_trim_r+0x74>
   13a3c:	7601b683          	ld	a3,1888(gp) # 24dc0 <__malloc_sbrk_base>
   13a40:	40d50533          	sub	a0,a0,a3
   13a44:	0017e793          	ori	a5,a5,1
   13a48:	00011697          	auipc	a3,0x11
   13a4c:	3ea6a823          	sw	a0,1008(a3) # 24e38 <__malloc_current_mallinfo>
   13a50:	00f73423          	sd	a5,8(a4)
   13a54:	f3dff06f          	j	13990 <_malloc_trim_r+0x74>

0000000000013a58 <_free_r>:
   13a58:	12058e63          	beqz	a1,13b94 <_free_r+0x13c>
   13a5c:	fe010113          	addi	sp,sp,-32
   13a60:	00813823          	sd	s0,16(sp)
   13a64:	00913423          	sd	s1,8(sp)
   13a68:	00058413          	mv	s0,a1
   13a6c:	00050493          	mv	s1,a0
   13a70:	00113c23          	sd	ra,24(sp)
   13a74:	538040ef          	jal	ra,17fac <__malloc_lock>
   13a78:	ff843583          	ld	a1,-8(s0)
   13a7c:	ff040713          	addi	a4,s0,-16
   13a80:	00011517          	auipc	a0,0x11
   13a84:	ae850513          	addi	a0,a0,-1304 # 24568 <__malloc_av_>
   13a88:	ffe5f793          	andi	a5,a1,-2
   13a8c:	00f70633          	add	a2,a4,a5
   13a90:	00863683          	ld	a3,8(a2)
   13a94:	01053803          	ld	a6,16(a0)
   13a98:	ffc6f693          	andi	a3,a3,-4
   13a9c:	1cc80063          	beq	a6,a2,13c5c <_free_r+0x204>
   13aa0:	00d63423          	sd	a3,8(a2)
   13aa4:	0015f593          	andi	a1,a1,1
   13aa8:	00d60833          	add	a6,a2,a3
   13aac:	0a059463          	bnez	a1,13b54 <_free_r+0xfc>
   13ab0:	ff043303          	ld	t1,-16(s0)
   13ab4:	00883583          	ld	a1,8(a6)
   13ab8:	00011897          	auipc	a7,0x11
   13abc:	ac088893          	addi	a7,a7,-1344 # 24578 <__malloc_av_+0x10>
   13ac0:	40670733          	sub	a4,a4,t1
   13ac4:	01073803          	ld	a6,16(a4)
   13ac8:	006787b3          	add	a5,a5,t1
   13acc:	0015f593          	andi	a1,a1,1
   13ad0:	15180663          	beq	a6,a7,13c1c <_free_r+0x1c4>
   13ad4:	01873303          	ld	t1,24(a4)
   13ad8:	00683c23          	sd	t1,24(a6)
   13adc:	01033823          	sd	a6,16(t1)
   13ae0:	1e058863          	beqz	a1,13cd0 <_free_r+0x278>
   13ae4:	0017e693          	ori	a3,a5,1
   13ae8:	00d73423          	sd	a3,8(a4)
   13aec:	00f63023          	sd	a5,0(a2)
   13af0:	1ff00693          	li	a3,511
   13af4:	0af6ec63          	bltu	a3,a5,13bac <_free_r+0x154>
   13af8:	0037d793          	srli	a5,a5,0x3
   13afc:	0017869b          	addiw	a3,a5,1
   13b00:	0016969b          	slliw	a3,a3,0x1
   13b04:	00369693          	slli	a3,a3,0x3
   13b08:	00853803          	ld	a6,8(a0)
   13b0c:	00d506b3          	add	a3,a0,a3
   13b10:	0006b583          	ld	a1,0(a3)
   13b14:	4027d61b          	sraiw	a2,a5,0x2
   13b18:	00100793          	li	a5,1
   13b1c:	00c797b3          	sll	a5,a5,a2
   13b20:	0107e7b3          	or	a5,a5,a6
   13b24:	ff068613          	addi	a2,a3,-16
   13b28:	00c73c23          	sd	a2,24(a4)
   13b2c:	00b73823          	sd	a1,16(a4)
   13b30:	00f53423          	sd	a5,8(a0)
   13b34:	00e6b023          	sd	a4,0(a3)
   13b38:	00e5bc23          	sd	a4,24(a1)
   13b3c:	01013403          	ld	s0,16(sp)
   13b40:	01813083          	ld	ra,24(sp)
   13b44:	00048513          	mv	a0,s1
   13b48:	00813483          	ld	s1,8(sp)
   13b4c:	02010113          	addi	sp,sp,32
   13b50:	4600406f          	j	17fb0 <__malloc_unlock>
   13b54:	00883583          	ld	a1,8(a6)
   13b58:	0015f593          	andi	a1,a1,1
   13b5c:	02059e63          	bnez	a1,13b98 <_free_r+0x140>
   13b60:	00d787b3          	add	a5,a5,a3
   13b64:	00011897          	auipc	a7,0x11
   13b68:	a1488893          	addi	a7,a7,-1516 # 24578 <__malloc_av_+0x10>
   13b6c:	01063683          	ld	a3,16(a2)
   13b70:	0017e813          	ori	a6,a5,1
   13b74:	00f705b3          	add	a1,a4,a5
   13b78:	17168a63          	beq	a3,a7,13cec <_free_r+0x294>
   13b7c:	01863603          	ld	a2,24(a2)
   13b80:	00c6bc23          	sd	a2,24(a3)
   13b84:	00d63823          	sd	a3,16(a2)
   13b88:	01073423          	sd	a6,8(a4)
   13b8c:	00f5b023          	sd	a5,0(a1)
   13b90:	f61ff06f          	j	13af0 <_free_r+0x98>
   13b94:	00008067          	ret
   13b98:	0017e693          	ori	a3,a5,1
   13b9c:	fed43c23          	sd	a3,-8(s0)
   13ba0:	00f63023          	sd	a5,0(a2)
   13ba4:	1ff00693          	li	a3,511
   13ba8:	f4f6f8e3          	bgeu	a3,a5,13af8 <_free_r+0xa0>
   13bac:	0097d693          	srli	a3,a5,0x9
   13bb0:	00400613          	li	a2,4
   13bb4:	0ed66a63          	bltu	a2,a3,13ca8 <_free_r+0x250>
   13bb8:	0067d693          	srli	a3,a5,0x6
   13bbc:	0396859b          	addiw	a1,a3,57
   13bc0:	0015959b          	slliw	a1,a1,0x1
   13bc4:	0386861b          	addiw	a2,a3,56
   13bc8:	00359593          	slli	a1,a1,0x3
   13bcc:	00b505b3          	add	a1,a0,a1
   13bd0:	0005b683          	ld	a3,0(a1)
   13bd4:	ff058593          	addi	a1,a1,-16
   13bd8:	12d58863          	beq	a1,a3,13d08 <_free_r+0x2b0>
   13bdc:	0086b603          	ld	a2,8(a3)
   13be0:	ffc67613          	andi	a2,a2,-4
   13be4:	00c7f663          	bgeu	a5,a2,13bf0 <_free_r+0x198>
   13be8:	0106b683          	ld	a3,16(a3)
   13bec:	fed598e3          	bne	a1,a3,13bdc <_free_r+0x184>
   13bf0:	0186b583          	ld	a1,24(a3)
   13bf4:	00b73c23          	sd	a1,24(a4)
   13bf8:	00d73823          	sd	a3,16(a4)
   13bfc:	01013403          	ld	s0,16(sp)
   13c00:	01813083          	ld	ra,24(sp)
   13c04:	00e5b823          	sd	a4,16(a1)
   13c08:	00048513          	mv	a0,s1
   13c0c:	00813483          	ld	s1,8(sp)
   13c10:	00e6bc23          	sd	a4,24(a3)
   13c14:	02010113          	addi	sp,sp,32
   13c18:	3980406f          	j	17fb0 <__malloc_unlock>
   13c1c:	14059a63          	bnez	a1,13d70 <_free_r+0x318>
   13c20:	01863583          	ld	a1,24(a2)
   13c24:	01063603          	ld	a2,16(a2)
   13c28:	00f687b3          	add	a5,a3,a5
   13c2c:	01013403          	ld	s0,16(sp)
   13c30:	00b63c23          	sd	a1,24(a2)
   13c34:	00c5b823          	sd	a2,16(a1)
   13c38:	0017e693          	ori	a3,a5,1
   13c3c:	01813083          	ld	ra,24(sp)
   13c40:	00d73423          	sd	a3,8(a4)
   13c44:	00048513          	mv	a0,s1
   13c48:	00f70733          	add	a4,a4,a5
   13c4c:	00813483          	ld	s1,8(sp)
   13c50:	00f73023          	sd	a5,0(a4)
   13c54:	02010113          	addi	sp,sp,32
   13c58:	3580406f          	j	17fb0 <__malloc_unlock>
   13c5c:	0015f593          	andi	a1,a1,1
   13c60:	00d787b3          	add	a5,a5,a3
   13c64:	02059063          	bnez	a1,13c84 <_free_r+0x22c>
   13c68:	ff043583          	ld	a1,-16(s0)
   13c6c:	40b70733          	sub	a4,a4,a1
   13c70:	01873683          	ld	a3,24(a4)
   13c74:	01073603          	ld	a2,16(a4)
   13c78:	00b787b3          	add	a5,a5,a1
   13c7c:	00d63c23          	sd	a3,24(a2)
   13c80:	00c6b823          	sd	a2,16(a3)
   13c84:	0017e693          	ori	a3,a5,1
   13c88:	00d73423          	sd	a3,8(a4)
   13c8c:	00e53823          	sd	a4,16(a0)
   13c90:	7681b703          	ld	a4,1896(gp) # 24dc8 <__malloc_trim_threshold>
   13c94:	eae7e4e3          	bltu	a5,a4,13b3c <_free_r+0xe4>
   13c98:	7881b583          	ld	a1,1928(gp) # 24de8 <__malloc_top_pad>
   13c9c:	00048513          	mv	a0,s1
   13ca0:	c7dff0ef          	jal	ra,1391c <_malloc_trim_r>
   13ca4:	e99ff06f          	j	13b3c <_free_r+0xe4>
   13ca8:	01400613          	li	a2,20
   13cac:	02d67663          	bgeu	a2,a3,13cd8 <_free_r+0x280>
   13cb0:	05400613          	li	a2,84
   13cb4:	06d66863          	bltu	a2,a3,13d24 <_free_r+0x2cc>
   13cb8:	00c7d693          	srli	a3,a5,0xc
   13cbc:	06f6859b          	addiw	a1,a3,111
   13cc0:	0015959b          	slliw	a1,a1,0x1
   13cc4:	06e6861b          	addiw	a2,a3,110
   13cc8:	00359593          	slli	a1,a1,0x3
   13ccc:	f01ff06f          	j	13bcc <_free_r+0x174>
   13cd0:	00d787b3          	add	a5,a5,a3
   13cd4:	e99ff06f          	j	13b6c <_free_r+0x114>
   13cd8:	05c6859b          	addiw	a1,a3,92
   13cdc:	0015959b          	slliw	a1,a1,0x1
   13ce0:	05b6861b          	addiw	a2,a3,91
   13ce4:	00359593          	slli	a1,a1,0x3
   13ce8:	ee5ff06f          	j	13bcc <_free_r+0x174>
   13cec:	02e53423          	sd	a4,40(a0)
   13cf0:	02e53023          	sd	a4,32(a0)
   13cf4:	01173c23          	sd	a7,24(a4)
   13cf8:	01173823          	sd	a7,16(a4)
   13cfc:	01073423          	sd	a6,8(a4)
   13d00:	00f5b023          	sd	a5,0(a1)
   13d04:	e39ff06f          	j	13b3c <_free_r+0xe4>
   13d08:	00853803          	ld	a6,8(a0)
   13d0c:	4026561b          	sraiw	a2,a2,0x2
   13d10:	00100793          	li	a5,1
   13d14:	00c79633          	sll	a2,a5,a2
   13d18:	01066633          	or	a2,a2,a6
   13d1c:	00c53423          	sd	a2,8(a0)
   13d20:	ed5ff06f          	j	13bf4 <_free_r+0x19c>
   13d24:	15400613          	li	a2,340
   13d28:	00d66e63          	bltu	a2,a3,13d44 <_free_r+0x2ec>
   13d2c:	00f7d693          	srli	a3,a5,0xf
   13d30:	0786859b          	addiw	a1,a3,120
   13d34:	0015959b          	slliw	a1,a1,0x1
   13d38:	0776861b          	addiw	a2,a3,119
   13d3c:	00359593          	slli	a1,a1,0x3
   13d40:	e8dff06f          	j	13bcc <_free_r+0x174>
   13d44:	55400613          	li	a2,1364
   13d48:	00d66e63          	bltu	a2,a3,13d64 <_free_r+0x30c>
   13d4c:	0127d693          	srli	a3,a5,0x12
   13d50:	07d6859b          	addiw	a1,a3,125
   13d54:	0015959b          	slliw	a1,a1,0x1
   13d58:	07c6861b          	addiw	a2,a3,124
   13d5c:	00359593          	slli	a1,a1,0x3
   13d60:	e6dff06f          	j	13bcc <_free_r+0x174>
   13d64:	7f000593          	li	a1,2032
   13d68:	07e00613          	li	a2,126
   13d6c:	e61ff06f          	j	13bcc <_free_r+0x174>
   13d70:	0017e693          	ori	a3,a5,1
   13d74:	00d73423          	sd	a3,8(a4)
   13d78:	00f63023          	sd	a5,0(a2)
   13d7c:	dc1ff06f          	j	13b3c <_free_r+0xe4>

0000000000013d80 <__sfvwrite_r>:
   13d80:	01063783          	ld	a5,16(a2)
   13d84:	28078863          	beqz	a5,14014 <__sfvwrite_r+0x294>
   13d88:	0105d783          	lhu	a5,16(a1)
   13d8c:	fa010113          	addi	sp,sp,-96
   13d90:	04813823          	sd	s0,80(sp)
   13d94:	03413823          	sd	s4,48(sp)
   13d98:	03513423          	sd	s5,40(sp)
   13d9c:	04113c23          	sd	ra,88(sp)
   13da0:	04913423          	sd	s1,72(sp)
   13da4:	05213023          	sd	s2,64(sp)
   13da8:	03313c23          	sd	s3,56(sp)
   13dac:	03613023          	sd	s6,32(sp)
   13db0:	01713c23          	sd	s7,24(sp)
   13db4:	01813823          	sd	s8,16(sp)
   13db8:	01913423          	sd	s9,8(sp)
   13dbc:	01a13023          	sd	s10,0(sp)
   13dc0:	0087f713          	andi	a4,a5,8
   13dc4:	00060a13          	mv	s4,a2
   13dc8:	00050a93          	mv	s5,a0
   13dcc:	00058413          	mv	s0,a1
   13dd0:	08070863          	beqz	a4,13e60 <__sfvwrite_r+0xe0>
   13dd4:	0185b703          	ld	a4,24(a1)
   13dd8:	08070463          	beqz	a4,13e60 <__sfvwrite_r+0xe0>
   13ddc:	0027f713          	andi	a4,a5,2
   13de0:	000a3903          	ld	s2,0(s4)
   13de4:	08070e63          	beqz	a4,13e80 <__sfvwrite_r+0x100>
   13de8:	04043783          	ld	a5,64(s0)
   13dec:	03043583          	ld	a1,48(s0)
   13df0:	80000b37          	lui	s6,0x80000
   13df4:	00000993          	li	s3,0
   13df8:	00000493          	li	s1,0
   13dfc:	c00b4b13          	xori	s6,s6,-1024
   13e00:	00098613          	mv	a2,s3
   13e04:	000a8513          	mv	a0,s5
   13e08:	04048463          	beqz	s1,13e50 <__sfvwrite_r+0xd0>
   13e0c:	00048693          	mv	a3,s1
   13e10:	009b7463          	bgeu	s6,s1,13e18 <__sfvwrite_r+0x98>
   13e14:	000b0693          	mv	a3,s6
   13e18:	0006869b          	sext.w	a3,a3
   13e1c:	000780e7          	jalr	a5
   13e20:	1ea05063          	blez	a0,14000 <__sfvwrite_r+0x280>
   13e24:	010a3783          	ld	a5,16(s4)
   13e28:	00a989b3          	add	s3,s3,a0
   13e2c:	40a484b3          	sub	s1,s1,a0
   13e30:	40a78533          	sub	a0,a5,a0
   13e34:	00aa3823          	sd	a0,16(s4)
   13e38:	16050e63          	beqz	a0,13fb4 <__sfvwrite_r+0x234>
   13e3c:	04043783          	ld	a5,64(s0)
   13e40:	03043583          	ld	a1,48(s0)
   13e44:	00098613          	mv	a2,s3
   13e48:	000a8513          	mv	a0,s5
   13e4c:	fc0490e3          	bnez	s1,13e0c <__sfvwrite_r+0x8c>
   13e50:	00093983          	ld	s3,0(s2)
   13e54:	00893483          	ld	s1,8(s2)
   13e58:	01090913          	addi	s2,s2,16
   13e5c:	fa5ff06f          	j	13e00 <__sfvwrite_r+0x80>
   13e60:	00040593          	mv	a1,s0
   13e64:	000a8513          	mv	a0,s5
   13e68:	8e8ff0ef          	jal	ra,12f50 <__swsetup_r>
   13e6c:	3c051663          	bnez	a0,14238 <__sfvwrite_r+0x4b8>
   13e70:	01045783          	lhu	a5,16(s0)
   13e74:	000a3903          	ld	s2,0(s4)
   13e78:	0027f713          	andi	a4,a5,2
   13e7c:	f60716e3          	bnez	a4,13de8 <__sfvwrite_r+0x68>
   13e80:	0017f713          	andi	a4,a5,1
   13e84:	0a071263          	bnez	a4,13f28 <__sfvwrite_r+0x1a8>
   13e88:	00c42483          	lw	s1,12(s0)
   13e8c:	00043503          	ld	a0,0(s0)
   13e90:	80000b37          	lui	s6,0x80000
   13e94:	ffeb4b93          	xori	s7,s6,-2
   13e98:	00000c13          	li	s8,0
   13e9c:	00000993          	li	s3,0
   13ea0:	fffb4b13          	not	s6,s6
   13ea4:	00048c93          	mv	s9,s1
   13ea8:	06098863          	beqz	s3,13f18 <__sfvwrite_r+0x198>
   13eac:	2007f713          	andi	a4,a5,512
   13eb0:	1c070863          	beqz	a4,14080 <__sfvwrite_r+0x300>
   13eb4:	00048d13          	mv	s10,s1
   13eb8:	2699f663          	bgeu	s3,s1,14124 <__sfvwrite_r+0x3a4>
   13ebc:	00098c93          	mv	s9,s3
   13ec0:	00098d13          	mv	s10,s3
   13ec4:	000d0613          	mv	a2,s10
   13ec8:	000c0593          	mv	a1,s8
   13ecc:	7c1030ef          	jal	ra,17e8c <memmove>
   13ed0:	00c42703          	lw	a4,12(s0)
   13ed4:	00043783          	ld	a5,0(s0)
   13ed8:	00098493          	mv	s1,s3
   13edc:	41970cbb          	subw	s9,a4,s9
   13ee0:	01a787b3          	add	a5,a5,s10
   13ee4:	01942623          	sw	s9,12(s0)
   13ee8:	00f43023          	sd	a5,0(s0)
   13eec:	00000993          	li	s3,0
   13ef0:	010a3603          	ld	a2,16(s4)
   13ef4:	009c0c33          	add	s8,s8,s1
   13ef8:	409604b3          	sub	s1,a2,s1
   13efc:	009a3823          	sd	s1,16(s4)
   13f00:	0a048a63          	beqz	s1,13fb4 <__sfvwrite_r+0x234>
   13f04:	00c42483          	lw	s1,12(s0)
   13f08:	00043503          	ld	a0,0(s0)
   13f0c:	01045783          	lhu	a5,16(s0)
   13f10:	00048c93          	mv	s9,s1
   13f14:	f8099ce3          	bnez	s3,13eac <__sfvwrite_r+0x12c>
   13f18:	00093c03          	ld	s8,0(s2)
   13f1c:	00893983          	ld	s3,8(s2)
   13f20:	01090913          	addi	s2,s2,16
   13f24:	f81ff06f          	j	13ea4 <__sfvwrite_r+0x124>
   13f28:	00000993          	li	s3,0
   13f2c:	00000513          	li	a0,0
   13f30:	00000c93          	li	s9,0
   13f34:	00000c13          	li	s8,0
   13f38:	0e0c0263          	beqz	s8,1401c <__sfvwrite_r+0x29c>
   13f3c:	0e050863          	beqz	a0,1402c <__sfvwrite_r+0x2ac>
   13f40:	00098b93          	mv	s7,s3
   13f44:	013c7463          	bgeu	s8,s3,13f4c <__sfvwrite_r+0x1cc>
   13f48:	000c0b93          	mv	s7,s8
   13f4c:	00043503          	ld	a0,0(s0)
   13f50:	01843783          	ld	a5,24(s0)
   13f54:	02042683          	lw	a3,32(s0)
   13f58:	000b8493          	mv	s1,s7
   13f5c:	00a7f863          	bgeu	a5,a0,13f6c <__sfvwrite_r+0x1ec>
   13f60:	00c42783          	lw	a5,12(s0)
   13f64:	00d78b3b          	addw	s6,a5,a3
   13f68:	0f7b4263          	blt	s6,s7,1404c <__sfvwrite_r+0x2cc>
   13f6c:	24dbca63          	blt	s7,a3,141c0 <__sfvwrite_r+0x440>
   13f70:	04043783          	ld	a5,64(s0)
   13f74:	03043583          	ld	a1,48(s0)
   13f78:	000c8613          	mv	a2,s9
   13f7c:	000a8513          	mv	a0,s5
   13f80:	000780e7          	jalr	a5
   13f84:	00050493          	mv	s1,a0
   13f88:	06a05c63          	blez	a0,14000 <__sfvwrite_r+0x280>
   13f8c:	0005079b          	sext.w	a5,a0
   13f90:	40f989bb          	subw	s3,s3,a5
   13f94:	00100513          	li	a0,1
   13f98:	04098c63          	beqz	s3,13ff0 <__sfvwrite_r+0x270>
   13f9c:	010a3783          	ld	a5,16(s4)
   13fa0:	009c8cb3          	add	s9,s9,s1
   13fa4:	409c0c33          	sub	s8,s8,s1
   13fa8:	409784b3          	sub	s1,a5,s1
   13fac:	009a3823          	sd	s1,16(s4)
   13fb0:	f80494e3          	bnez	s1,13f38 <__sfvwrite_r+0x1b8>
   13fb4:	00000513          	li	a0,0
   13fb8:	05813083          	ld	ra,88(sp)
   13fbc:	05013403          	ld	s0,80(sp)
   13fc0:	04813483          	ld	s1,72(sp)
   13fc4:	04013903          	ld	s2,64(sp)
   13fc8:	03813983          	ld	s3,56(sp)
   13fcc:	03013a03          	ld	s4,48(sp)
   13fd0:	02813a83          	ld	s5,40(sp)
   13fd4:	02013b03          	ld	s6,32(sp)
   13fd8:	01813b83          	ld	s7,24(sp)
   13fdc:	01013c03          	ld	s8,16(sp)
   13fe0:	00813c83          	ld	s9,8(sp)
   13fe4:	00013d03          	ld	s10,0(sp)
   13fe8:	06010113          	addi	sp,sp,96
   13fec:	00008067          	ret
   13ff0:	00040593          	mv	a1,s0
   13ff4:	000a8513          	mv	a0,s5
   13ff8:	c4cff0ef          	jal	ra,13444 <_fflush_r>
   13ffc:	fa0500e3          	beqz	a0,13f9c <__sfvwrite_r+0x21c>
   14000:	01041783          	lh	a5,16(s0)
   14004:	0407e793          	ori	a5,a5,64
   14008:	00f41823          	sh	a5,16(s0)
   1400c:	fff00513          	li	a0,-1
   14010:	fa9ff06f          	j	13fb8 <__sfvwrite_r+0x238>
   14014:	00000513          	li	a0,0
   14018:	00008067          	ret
   1401c:	00893c03          	ld	s8,8(s2)
   14020:	00093c83          	ld	s9,0(s2)
   14024:	01090913          	addi	s2,s2,16
   14028:	fe0c0ae3          	beqz	s8,1401c <__sfvwrite_r+0x29c>
   1402c:	000c0613          	mv	a2,s8
   14030:	00a00593          	li	a1,10
   14034:	000c8513          	mv	a0,s9
   14038:	469030ef          	jal	ra,17ca0 <memchr>
   1403c:	1e050263          	beqz	a0,14220 <__sfvwrite_r+0x4a0>
   14040:	00150513          	addi	a0,a0,1
   14044:	419509bb          	subw	s3,a0,s9
   14048:	ef9ff06f          	j	13f40 <__sfvwrite_r+0x1c0>
   1404c:	000c8593          	mv	a1,s9
   14050:	000b0613          	mv	a2,s6
   14054:	639030ef          	jal	ra,17e8c <memmove>
   14058:	00043783          	ld	a5,0(s0)
   1405c:	00040593          	mv	a1,s0
   14060:	000a8513          	mv	a0,s5
   14064:	016787b3          	add	a5,a5,s6
   14068:	00f43023          	sd	a5,0(s0)
   1406c:	bd8ff0ef          	jal	ra,13444 <_fflush_r>
   14070:	f80518e3          	bnez	a0,14000 <__sfvwrite_r+0x280>
   14074:	000b0793          	mv	a5,s6
   14078:	000b0493          	mv	s1,s6
   1407c:	f15ff06f          	j	13f90 <__sfvwrite_r+0x210>
   14080:	01843783          	ld	a5,24(s0)
   14084:	04a7ec63          	bltu	a5,a0,140dc <__sfvwrite_r+0x35c>
   14088:	02042c83          	lw	s9,32(s0)
   1408c:	0599e863          	bltu	s3,s9,140dc <__sfvwrite_r+0x35c>
   14090:	00098513          	mv	a0,s3
   14094:	013bf463          	bgeu	s7,s3,1409c <__sfvwrite_r+0x31c>
   14098:	000b0513          	mv	a0,s6
   1409c:	000c8593          	mv	a1,s9
   140a0:	0005051b          	sext.w	a0,a0
   140a4:	4810d0ef          	jal	ra,21d24 <__divdi3>
   140a8:	00050593          	mv	a1,a0
   140ac:	000c8513          	mv	a0,s9
   140b0:	4110d0ef          	jal	ra,21cc0 <__muldi3>
   140b4:	04043783          	ld	a5,64(s0)
   140b8:	03043583          	ld	a1,48(s0)
   140bc:	0005069b          	sext.w	a3,a0
   140c0:	000c0613          	mv	a2,s8
   140c4:	000a8513          	mv	a0,s5
   140c8:	000780e7          	jalr	a5
   140cc:	00050493          	mv	s1,a0
   140d0:	f2a058e3          	blez	a0,14000 <__sfvwrite_r+0x280>
   140d4:	409989b3          	sub	s3,s3,s1
   140d8:	e19ff06f          	j	13ef0 <__sfvwrite_r+0x170>
   140dc:	0099f463          	bgeu	s3,s1,140e4 <__sfvwrite_r+0x364>
   140e0:	00098493          	mv	s1,s3
   140e4:	00048613          	mv	a2,s1
   140e8:	000c0593          	mv	a1,s8
   140ec:	5a1030ef          	jal	ra,17e8c <memmove>
   140f0:	00c42783          	lw	a5,12(s0)
   140f4:	00043703          	ld	a4,0(s0)
   140f8:	409786bb          	subw	a3,a5,s1
   140fc:	00970733          	add	a4,a4,s1
   14100:	00d42623          	sw	a3,12(s0)
   14104:	00e43023          	sd	a4,0(s0)
   14108:	fc0696e3          	bnez	a3,140d4 <__sfvwrite_r+0x354>
   1410c:	00040593          	mv	a1,s0
   14110:	000a8513          	mv	a0,s5
   14114:	b30ff0ef          	jal	ra,13444 <_fflush_r>
   14118:	ee0514e3          	bnez	a0,14000 <__sfvwrite_r+0x280>
   1411c:	409989b3          	sub	s3,s3,s1
   14120:	dd1ff06f          	j	13ef0 <__sfvwrite_r+0x170>
   14124:	4807f713          	andi	a4,a5,1152
   14128:	d8070ee3          	beqz	a4,13ec4 <__sfvwrite_r+0x144>
   1412c:	02042483          	lw	s1,32(s0)
   14130:	01843583          	ld	a1,24(s0)
   14134:	00198713          	addi	a4,s3,1
   14138:	0014969b          	slliw	a3,s1,0x1
   1413c:	009686bb          	addw	a3,a3,s1
   14140:	40b50533          	sub	a0,a0,a1
   14144:	01f6d49b          	srliw	s1,a3,0x1f
   14148:	00050d1b          	sext.w	s10,a0
   1414c:	00d484bb          	addw	s1,s1,a3
   14150:	4014d49b          	sraiw	s1,s1,0x1
   14154:	01a70733          	add	a4,a4,s10
   14158:	00e4f663          	bgeu	s1,a4,14164 <__sfvwrite_r+0x3e4>
   1415c:	0019849b          	addiw	s1,s3,1
   14160:	00a484bb          	addw	s1,s1,a0
   14164:	4007f793          	andi	a5,a5,1024
   14168:	08078263          	beqz	a5,141ec <__sfvwrite_r+0x46c>
   1416c:	00048593          	mv	a1,s1
   14170:	000a8513          	mv	a0,s5
   14174:	2a8030ef          	jal	ra,1741c <_malloc_r>
   14178:	00050c93          	mv	s9,a0
   1417c:	0a050663          	beqz	a0,14228 <__sfvwrite_r+0x4a8>
   14180:	01843583          	ld	a1,24(s0)
   14184:	000d0613          	mv	a2,s10
   14188:	3e9030ef          	jal	ra,17d70 <memcpy>
   1418c:	01045783          	lhu	a5,16(s0)
   14190:	b7f7f793          	andi	a5,a5,-1153
   14194:	0807e793          	ori	a5,a5,128
   14198:	00f41823          	sh	a5,16(s0)
   1419c:	01ac8533          	add	a0,s9,s10
   141a0:	41a487bb          	subw	a5,s1,s10
   141a4:	01943c23          	sd	s9,24(s0)
   141a8:	00a43023          	sd	a0,0(s0)
   141ac:	02942023          	sw	s1,32(s0)
   141b0:	00098c93          	mv	s9,s3
   141b4:	00f42623          	sw	a5,12(s0)
   141b8:	00098d13          	mv	s10,s3
   141bc:	d09ff06f          	j	13ec4 <__sfvwrite_r+0x144>
   141c0:	000b8613          	mv	a2,s7
   141c4:	000c8593          	mv	a1,s9
   141c8:	4c5030ef          	jal	ra,17e8c <memmove>
   141cc:	00c42683          	lw	a3,12(s0)
   141d0:	00043703          	ld	a4,0(s0)
   141d4:	000b879b          	sext.w	a5,s7
   141d8:	417686bb          	subw	a3,a3,s7
   141dc:	01770733          	add	a4,a4,s7
   141e0:	00d42623          	sw	a3,12(s0)
   141e4:	00e43023          	sd	a4,0(s0)
   141e8:	da9ff06f          	j	13f90 <__sfvwrite_r+0x210>
   141ec:	00048613          	mv	a2,s1
   141f0:	000a8513          	mv	a0,s5
   141f4:	0f8050ef          	jal	ra,192ec <_realloc_r>
   141f8:	00050c93          	mv	s9,a0
   141fc:	fa0510e3          	bnez	a0,1419c <__sfvwrite_r+0x41c>
   14200:	01843583          	ld	a1,24(s0)
   14204:	000a8513          	mv	a0,s5
   14208:	851ff0ef          	jal	ra,13a58 <_free_r>
   1420c:	01041783          	lh	a5,16(s0)
   14210:	00c00713          	li	a4,12
   14214:	00eaa023          	sw	a4,0(s5)
   14218:	f7f7f793          	andi	a5,a5,-129
   1421c:	de9ff06f          	j	14004 <__sfvwrite_r+0x284>
   14220:	001c099b          	addiw	s3,s8,1
   14224:	d1dff06f          	j	13f40 <__sfvwrite_r+0x1c0>
   14228:	00c00713          	li	a4,12
   1422c:	01041783          	lh	a5,16(s0)
   14230:	00eaa023          	sw	a4,0(s5)
   14234:	dd1ff06f          	j	14004 <__sfvwrite_r+0x284>
   14238:	fff00513          	li	a0,-1
   1423c:	d7dff06f          	j	13fb8 <__sfvwrite_r+0x238>

0000000000014240 <_fwalk>:
   14240:	fc010113          	addi	sp,sp,-64
   14244:	03213023          	sd	s2,32(sp)
   14248:	01313c23          	sd	s3,24(sp)
   1424c:	01413823          	sd	s4,16(sp)
   14250:	01513423          	sd	s5,8(sp)
   14254:	01613023          	sd	s6,0(sp)
   14258:	02113c23          	sd	ra,56(sp)
   1425c:	02813823          	sd	s0,48(sp)
   14260:	02913423          	sd	s1,40(sp)
   14264:	00058a93          	mv	s5,a1
   14268:	52050993          	addi	s3,a0,1312
   1426c:	00000913          	li	s2,0
   14270:	00100b13          	li	s6,1
   14274:	fff00a13          	li	s4,-1
   14278:	0089a783          	lw	a5,8(s3)
   1427c:	0109b403          	ld	s0,16(s3)
   14280:	04f05a63          	blez	a5,142d4 <_fwalk+0x94>
   14284:	fff7879b          	addiw	a5,a5,-1
   14288:	02079493          	slli	s1,a5,0x20
   1428c:	0204d493          	srli	s1,s1,0x20
   14290:	00148793          	addi	a5,s1,1
   14294:	00179493          	slli	s1,a5,0x1
   14298:	00f484b3          	add	s1,s1,a5
   1429c:	00249493          	slli	s1,s1,0x2
   142a0:	40f484b3          	sub	s1,s1,a5
   142a4:	00449493          	slli	s1,s1,0x4
   142a8:	009404b3          	add	s1,s0,s1
   142ac:	01045783          	lhu	a5,16(s0)
   142b0:	00fb7e63          	bgeu	s6,a5,142cc <_fwalk+0x8c>
   142b4:	01241783          	lh	a5,18(s0)
   142b8:	00040513          	mv	a0,s0
   142bc:	01478863          	beq	a5,s4,142cc <_fwalk+0x8c>
   142c0:	000a80e7          	jalr	s5
   142c4:	01256933          	or	s2,a0,s2
   142c8:	0009091b          	sext.w	s2,s2
   142cc:	0b040413          	addi	s0,s0,176
   142d0:	fc849ee3          	bne	s1,s0,142ac <_fwalk+0x6c>
   142d4:	0009b983          	ld	s3,0(s3)
   142d8:	fa0990e3          	bnez	s3,14278 <_fwalk+0x38>
   142dc:	03813083          	ld	ra,56(sp)
   142e0:	03013403          	ld	s0,48(sp)
   142e4:	02813483          	ld	s1,40(sp)
   142e8:	01813983          	ld	s3,24(sp)
   142ec:	01013a03          	ld	s4,16(sp)
   142f0:	00813a83          	ld	s5,8(sp)
   142f4:	00013b03          	ld	s6,0(sp)
   142f8:	00090513          	mv	a0,s2
   142fc:	02013903          	ld	s2,32(sp)
   14300:	04010113          	addi	sp,sp,64
   14304:	00008067          	ret

0000000000014308 <_fwalk_reent>:
   14308:	fb010113          	addi	sp,sp,-80
   1430c:	03213823          	sd	s2,48(sp)
   14310:	03313423          	sd	s3,40(sp)
   14314:	03413023          	sd	s4,32(sp)
   14318:	01513c23          	sd	s5,24(sp)
   1431c:	01613823          	sd	s6,16(sp)
   14320:	01713423          	sd	s7,8(sp)
   14324:	04113423          	sd	ra,72(sp)
   14328:	04813023          	sd	s0,64(sp)
   1432c:	02913c23          	sd	s1,56(sp)
   14330:	00050b93          	mv	s7,a0
   14334:	00058a93          	mv	s5,a1
   14338:	52050993          	addi	s3,a0,1312
   1433c:	00000913          	li	s2,0
   14340:	00100b13          	li	s6,1
   14344:	fff00a13          	li	s4,-1
   14348:	0089a783          	lw	a5,8(s3)
   1434c:	0109b403          	ld	s0,16(s3)
   14350:	04f05c63          	blez	a5,143a8 <_fwalk_reent+0xa0>
   14354:	fff7879b          	addiw	a5,a5,-1
   14358:	02079493          	slli	s1,a5,0x20
   1435c:	0204d493          	srli	s1,s1,0x20
   14360:	00148793          	addi	a5,s1,1
   14364:	00179493          	slli	s1,a5,0x1
   14368:	00f484b3          	add	s1,s1,a5
   1436c:	00249493          	slli	s1,s1,0x2
   14370:	40f484b3          	sub	s1,s1,a5
   14374:	00449493          	slli	s1,s1,0x4
   14378:	009404b3          	add	s1,s0,s1
   1437c:	01045783          	lhu	a5,16(s0)
   14380:	02fb7063          	bgeu	s6,a5,143a0 <_fwalk_reent+0x98>
   14384:	01241783          	lh	a5,18(s0)
   14388:	00040593          	mv	a1,s0
   1438c:	000b8513          	mv	a0,s7
   14390:	01478863          	beq	a5,s4,143a0 <_fwalk_reent+0x98>
   14394:	000a80e7          	jalr	s5
   14398:	01256933          	or	s2,a0,s2
   1439c:	0009091b          	sext.w	s2,s2
   143a0:	0b040413          	addi	s0,s0,176
   143a4:	fc849ce3          	bne	s1,s0,1437c <_fwalk_reent+0x74>
   143a8:	0009b983          	ld	s3,0(s3)
   143ac:	f8099ee3          	bnez	s3,14348 <_fwalk_reent+0x40>
   143b0:	04813083          	ld	ra,72(sp)
   143b4:	04013403          	ld	s0,64(sp)
   143b8:	03813483          	ld	s1,56(sp)
   143bc:	02813983          	ld	s3,40(sp)
   143c0:	02013a03          	ld	s4,32(sp)
   143c4:	01813a83          	ld	s5,24(sp)
   143c8:	01013b03          	ld	s6,16(sp)
   143cc:	00813b83          	ld	s7,8(sp)
   143d0:	00090513          	mv	a0,s2
   143d4:	03013903          	ld	s2,48(sp)
   143d8:	05010113          	addi	sp,sp,80
   143dc:	00008067          	ret

00000000000143e0 <eshdn1>:
   143e0:	00450693          	addi	a3,a0,4
   143e4:	00000793          	li	a5,0
   143e8:	01a50513          	addi	a0,a0,26
   143ec:	ffff8837          	lui	a6,0xffff8
   143f0:	01c0006f          	j	1440c <eshdn1+0x2c>
   143f4:	0017979b          	slliw	a5,a5,0x1
   143f8:	00e69023          	sh	a4,0(a3)
   143fc:	03079793          	slli	a5,a5,0x30
   14400:	00268693          	addi	a3,a3,2
   14404:	0307d793          	srli	a5,a5,0x30
   14408:	02d50e63          	beq	a0,a3,14444 <eshdn1+0x64>
   1440c:	0006d703          	lhu	a4,0(a3)
   14410:	00177613          	andi	a2,a4,1
   14414:	00060463          	beqz	a2,1441c <eshdn1+0x3c>
   14418:	0017e793          	ori	a5,a5,1
   1441c:	00175713          	srli	a4,a4,0x1
   14420:	0027f613          	andi	a2,a5,2
   14424:	010765b3          	or	a1,a4,a6
   14428:	fc0606e3          	beqz	a2,143f4 <eshdn1+0x14>
   1442c:	0017979b          	slliw	a5,a5,0x1
   14430:	00b69023          	sh	a1,0(a3)
   14434:	03079793          	slli	a5,a5,0x30
   14438:	00268693          	addi	a3,a3,2
   1443c:	0307d793          	srli	a5,a5,0x30
   14440:	fcd516e3          	bne	a0,a3,1440c <eshdn1+0x2c>
   14444:	00008067          	ret

0000000000014448 <eshup1>:
   14448:	01850693          	addi	a3,a0,24
   1444c:	00000713          	li	a4,0
   14450:	00250513          	addi	a0,a0,2
   14454:	01c0006f          	j	14470 <eshup1+0x28>
   14458:	0017171b          	slliw	a4,a4,0x1
   1445c:	00f69023          	sh	a5,0(a3)
   14460:	03071713          	slli	a4,a4,0x30
   14464:	ffe68693          	addi	a3,a3,-2
   14468:	03075713          	srli	a4,a4,0x30
   1446c:	04d50263          	beq	a0,a3,144b0 <eshup1+0x68>
   14470:	0006d783          	lhu	a5,0(a3)
   14474:	00f7d613          	srli	a2,a5,0xf
   14478:	0017979b          	slliw	a5,a5,0x1
   1447c:	00060463          	beqz	a2,14484 <eshup1+0x3c>
   14480:	00176713          	ori	a4,a4,1
   14484:	03079793          	slli	a5,a5,0x30
   14488:	0307d793          	srli	a5,a5,0x30
   1448c:	00277613          	andi	a2,a4,2
   14490:	0017e593          	ori	a1,a5,1
   14494:	fc0602e3          	beqz	a2,14458 <eshup1+0x10>
   14498:	0017171b          	slliw	a4,a4,0x1
   1449c:	00b69023          	sh	a1,0(a3)
   144a0:	03071713          	slli	a4,a4,0x30
   144a4:	ffe68693          	addi	a3,a3,-2
   144a8:	03075713          	srli	a4,a4,0x30
   144ac:	fcd512e3          	bne	a0,a3,14470 <eshup1+0x28>
   144b0:	00008067          	ret

00000000000144b4 <m16m>:
   144b4:	fa010113          	addi	sp,sp,-96
   144b8:	03313c23          	sd	s3,56(sp)
   144bc:	000109b7          	lui	s3,0x10
   144c0:	04813823          	sd	s0,80(sp)
   144c4:	04913423          	sd	s1,72(sp)
   144c8:	05213023          	sd	s2,64(sp)
   144cc:	03413823          	sd	s4,48(sp)
   144d0:	03513423          	sd	s5,40(sp)
   144d4:	04113c23          	sd	ra,88(sp)
   144d8:	00050a13          	mv	s4,a0
   144dc:	00060493          	mv	s1,a2
   144e0:	00011b23          	sh	zero,22(sp)
   144e4:	00011c23          	sh	zero,24(sp)
   144e8:	01858913          	addi	s2,a1,24
   144ec:	01810413          	addi	s0,sp,24
   144f0:	00410a93          	addi	s5,sp,4
   144f4:	fff98993          	addi	s3,s3,-1 # ffff <register_fini-0xb1>
   144f8:	00095503          	lhu	a0,0(s2)
   144fc:	000a0593          	mv	a1,s4
   14500:	ffe40413          	addi	s0,s0,-2
   14504:	ffe90913          	addi	s2,s2,-2
   14508:	04051663          	bnez	a0,14554 <m16m+0xa0>
   1450c:	fe041f23          	sh	zero,-2(s0)
   14510:	ff5414e3          	bne	s0,s5,144f8 <m16m+0x44>
   14514:	00448613          	addi	a2,s1,4
   14518:	01a10713          	addi	a4,sp,26
   1451c:	00045783          	lhu	a5,0(s0)
   14520:	00240413          	addi	s0,s0,2
   14524:	00260613          	addi	a2,a2,2
   14528:	fef61f23          	sh	a5,-2(a2)
   1452c:	fee418e3          	bne	s0,a4,1451c <m16m+0x68>
   14530:	05813083          	ld	ra,88(sp)
   14534:	05013403          	ld	s0,80(sp)
   14538:	04813483          	ld	s1,72(sp)
   1453c:	04013903          	ld	s2,64(sp)
   14540:	03813983          	ld	s3,56(sp)
   14544:	03013a03          	ld	s4,48(sp)
   14548:	02813a83          	ld	s5,40(sp)
   1454c:	06010113          	addi	sp,sp,96
   14550:	00008067          	ret
   14554:	76c0d0ef          	jal	ra,21cc0 <__muldi3>
   14558:	00245783          	lhu	a5,2(s0)
   1455c:	00045603          	lhu	a2,0(s0)
   14560:	01357733          	and	a4,a0,s3
   14564:	00f70733          	add	a4,a4,a5
   14568:	01055793          	srli	a5,a0,0x10
   1456c:	01075693          	srli	a3,a4,0x10
   14570:	00c787b3          	add	a5,a5,a2
   14574:	00d787b3          	add	a5,a5,a3
   14578:	0107d693          	srli	a3,a5,0x10
   1457c:	00e41123          	sh	a4,2(s0)
   14580:	00f41023          	sh	a5,0(s0)
   14584:	fed41f23          	sh	a3,-2(s0)
   14588:	f75418e3          	bne	s0,s5,144f8 <m16m+0x44>
   1458c:	f89ff06f          	j	14514 <m16m+0x60>

0000000000014590 <emovo.constprop.0>:
   14590:	00055703          	lhu	a4,0(a0)
   14594:	00255783          	lhu	a5,2(a0)
   14598:	00070663          	beqz	a4,145a4 <emovo.constprop.0+0x14>
   1459c:	00008737          	lui	a4,0x8
   145a0:	00e7e7b3          	or	a5,a5,a4
   145a4:	00f59923          	sh	a5,18(a1)
   145a8:	00255703          	lhu	a4,2(a0)
   145ac:	000087b7          	lui	a5,0x8
   145b0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   145b4:	02f70463          	beq	a4,a5,145dc <emovo.constprop.0+0x4c>
   145b8:	00650793          	addi	a5,a0,6
   145bc:	01058593          	addi	a1,a1,16
   145c0:	01850513          	addi	a0,a0,24
   145c4:	0007d703          	lhu	a4,0(a5)
   145c8:	00278793          	addi	a5,a5,2
   145cc:	ffe58593          	addi	a1,a1,-2
   145d0:	00e59123          	sh	a4,2(a1)
   145d4:	fea798e3          	bne	a5,a0,145c4 <emovo.constprop.0+0x34>
   145d8:	00008067          	ret
   145dc:	00650793          	addi	a5,a0,6
   145e0:	01a50513          	addi	a0,a0,26
   145e4:	0007d703          	lhu	a4,0(a5)
   145e8:	00278793          	addi	a5,a5,2
   145ec:	02071a63          	bnez	a4,14620 <emovo.constprop.0+0x90>
   145f0:	fea79ae3          	bne	a5,a0,145e4 <emovo.constprop.0+0x54>
   145f4:	01258713          	addi	a4,a1,18
   145f8:	00058793          	mv	a5,a1
   145fc:	00278793          	addi	a5,a5,2
   14600:	fe079f23          	sh	zero,-2(a5)
   14604:	fef71ce3          	bne	a4,a5,145fc <emovo.constprop.0+0x6c>
   14608:	0125d783          	lhu	a5,18(a1)
   1460c:	00008737          	lui	a4,0x8
   14610:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14614:	00e7e7b3          	or	a5,a5,a4
   14618:	00f59923          	sh	a5,18(a1)
   1461c:	00008067          	ret
   14620:	01058713          	addi	a4,a1,16
   14624:	00058793          	mv	a5,a1
   14628:	00278793          	addi	a5,a5,2
   1462c:	fe079f23          	sh	zero,-2(a5)
   14630:	fef71ce3          	bne	a4,a5,14628 <emovo.constprop.0+0x98>
   14634:	ffffc7b7          	lui	a5,0xffffc
   14638:	00f59823          	sh	a5,16(a1)
   1463c:	ffff87b7          	lui	a5,0xffff8
   14640:	fff7c793          	not	a5,a5
   14644:	00f59923          	sh	a5,18(a1)
   14648:	00008067          	ret

000000000001464c <enormlz>:
   1464c:	00455783          	lhu	a5,4(a0)
   14650:	fe010113          	addi	sp,sp,-32
   14654:	00913423          	sd	s1,8(sp)
   14658:	00113c23          	sd	ra,24(sp)
   1465c:	00813823          	sd	s0,16(sp)
   14660:	01213023          	sd	s2,0(sp)
   14664:	00050493          	mv	s1,a0
   14668:	0c079863          	bnez	a5,14738 <enormlz+0xec>
   1466c:	00655703          	lhu	a4,6(a0)
   14670:	00000413          	li	s0,0
   14674:	00f75793          	srli	a5,a4,0xf
   14678:	0a079263          	bnez	a5,1471c <enormlz+0xd0>
   1467c:	01a50693          	addi	a3,a0,26
   14680:	0a000613          	li	a2,160
   14684:	02071863          	bnez	a4,146b4 <enormlz+0x68>
   14688:	00648793          	addi	a5,s1,6
   1468c:	0080006f          	j	14694 <enormlz+0x48>
   14690:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31a0>
   14694:	00278793          	addi	a5,a5,2
   14698:	fee79e23          	sh	a4,-4(a5)
   1469c:	fed79ae3          	bne	a5,a3,14690 <enormlz+0x44>
   146a0:	00049c23          	sh	zero,24(s1)
   146a4:	0104041b          	addiw	s0,s0,16
   146a8:	06c40a63          	beq	s0,a2,1471c <enormlz+0xd0>
   146ac:	0064d703          	lhu	a4,6(s1)
   146b0:	fc070ce3          	beqz	a4,14688 <enormlz+0x3c>
   146b4:	f0077793          	andi	a5,a4,-256
   146b8:	04079063          	bnez	a5,146f8 <enormlz+0xac>
   146bc:	01848513          	addi	a0,s1,24
   146c0:	00248593          	addi	a1,s1,2
   146c4:	00000793          	li	a5,0
   146c8:	00050713          	mv	a4,a0
   146cc:	00075683          	lhu	a3,0(a4)
   146d0:	ffe70713          	addi	a4,a4,-2
   146d4:	0086961b          	slliw	a2,a3,0x8
   146d8:	00c7e7b3          	or	a5,a5,a2
   146dc:	00f71123          	sh	a5,2(a4)
   146e0:	0086d793          	srli	a5,a3,0x8
   146e4:	fee594e3          	bne	a1,a4,146cc <enormlz+0x80>
   146e8:	0064d703          	lhu	a4,6(s1)
   146ec:	0084041b          	addiw	s0,s0,8
   146f0:	f0077793          	andi	a5,a4,-256
   146f4:	fc0788e3          	beqz	a5,146c4 <enormlz+0x78>
   146f8:	0a000913          	li	s2,160
   146fc:	0140006f          	j	14710 <enormlz+0xc4>
   14700:	0014041b          	addiw	s0,s0,1
   14704:	d45ff0ef          	jal	ra,14448 <eshup1>
   14708:	00894a63          	blt	s2,s0,1471c <enormlz+0xd0>
   1470c:	0064d703          	lhu	a4,6(s1)
   14710:	00f75713          	srli	a4,a4,0xf
   14714:	00048513          	mv	a0,s1
   14718:	fe0704e3          	beqz	a4,14700 <enormlz+0xb4>
   1471c:	01813083          	ld	ra,24(sp)
   14720:	00040513          	mv	a0,s0
   14724:	01013403          	ld	s0,16(sp)
   14728:	00813483          	ld	s1,8(sp)
   1472c:	00013903          	ld	s2,0(sp)
   14730:	02010113          	addi	sp,sp,32
   14734:	00008067          	ret
   14738:	f007f713          	andi	a4,a5,-256
   1473c:	00000413          	li	s0,0
   14740:	04071063          	bnez	a4,14780 <enormlz+0x134>
   14744:	f6f00913          	li	s2,-145
   14748:	0140006f          	j	1475c <enormlz+0x110>
   1474c:	fff4041b          	addiw	s0,s0,-1
   14750:	c91ff0ef          	jal	ra,143e0 <eshdn1>
   14754:	fd2404e3          	beq	s0,s2,1471c <enormlz+0xd0>
   14758:	0044d783          	lhu	a5,4(s1)
   1475c:	00048513          	mv	a0,s1
   14760:	fe0796e3          	bnez	a5,1474c <enormlz+0x100>
   14764:	01813083          	ld	ra,24(sp)
   14768:	00040513          	mv	a0,s0
   1476c:	01013403          	ld	s0,16(sp)
   14770:	00813483          	ld	s1,8(sp)
   14774:	00013903          	ld	s2,0(sp)
   14778:	02010113          	addi	sp,sp,32
   1477c:	00008067          	ret
   14780:	00450693          	addi	a3,a0,4
   14784:	01a50593          	addi	a1,a0,26
   14788:	00000713          	li	a4,0
   1478c:	0080006f          	j	14794 <enormlz+0x148>
   14790:	0006d783          	lhu	a5,0(a3)
   14794:	0087d61b          	srliw	a2,a5,0x8
   14798:	00c76733          	or	a4,a4,a2
   1479c:	0087979b          	slliw	a5,a5,0x8
   147a0:	00e69023          	sh	a4,0(a3)
   147a4:	03079713          	slli	a4,a5,0x30
   147a8:	00268693          	addi	a3,a3,2
   147ac:	03075713          	srli	a4,a4,0x30
   147b0:	fed590e3          	bne	a1,a3,14790 <enormlz+0x144>
   147b4:	0044d783          	lhu	a5,4(s1)
   147b8:	ff800413          	li	s0,-8
   147bc:	f89ff06f          	j	14744 <enormlz+0xf8>

00000000000147c0 <eshift.part.0>:
   147c0:	fd010113          	addi	sp,sp,-48
   147c4:	02813023          	sd	s0,32(sp)
   147c8:	00913c23          	sd	s1,24(sp)
   147cc:	02113423          	sd	ra,40(sp)
   147d0:	01213823          	sd	s2,16(sp)
   147d4:	01313423          	sd	s3,8(sp)
   147d8:	00058493          	mv	s1,a1
   147dc:	00050413          	mv	s0,a0
   147e0:	0a05c463          	bltz	a1,14888 <eshift.part.0+0xc8>
   147e4:	00f00793          	li	a5,15
   147e8:	00058613          	mv	a2,a1
   147ec:	00450513          	addi	a0,a0,4
   147f0:	01840693          	addi	a3,s0,24
   147f4:	00f00593          	li	a1,15
   147f8:	0297d463          	bge	a5,s1,14820 <eshift.part.0+0x60>
   147fc:	00050793          	mv	a5,a0
   14800:	0027d703          	lhu	a4,2(a5)
   14804:	00278793          	addi	a5,a5,2
   14808:	fee79f23          	sh	a4,-2(a5)
   1480c:	fef69ae3          	bne	a3,a5,14800 <eshift.part.0+0x40>
   14810:	00041c23          	sh	zero,24(s0)
   14814:	ff06061b          	addiw	a2,a2,-16
   14818:	fec5c2e3          	blt	a1,a2,147fc <eshift.part.0+0x3c>
   1481c:	00f4f493          	andi	s1,s1,15
   14820:	00700793          	li	a5,7
   14824:	0297d863          	bge	a5,s1,14854 <eshift.part.0+0x94>
   14828:	01840713          	addi	a4,s0,24
   1482c:	00240593          	addi	a1,s0,2
   14830:	00000793          	li	a5,0
   14834:	00075683          	lhu	a3,0(a4)
   14838:	ffe70713          	addi	a4,a4,-2
   1483c:	0086961b          	slliw	a2,a3,0x8
   14840:	00c7e7b3          	or	a5,a5,a2
   14844:	00f71123          	sh	a5,2(a4)
   14848:	0086d793          	srli	a5,a3,0x8
   1484c:	fee594e3          	bne	a1,a4,14834 <eshift.part.0+0x74>
   14850:	ff84849b          	addiw	s1,s1,-8
   14854:	00048a63          	beqz	s1,14868 <eshift.part.0+0xa8>
   14858:	fff4849b          	addiw	s1,s1,-1
   1485c:	00040513          	mv	a0,s0
   14860:	be9ff0ef          	jal	ra,14448 <eshup1>
   14864:	fe049ae3          	bnez	s1,14858 <eshift.part.0+0x98>
   14868:	00000513          	li	a0,0
   1486c:	02813083          	ld	ra,40(sp)
   14870:	02013403          	ld	s0,32(sp)
   14874:	01813483          	ld	s1,24(sp)
   14878:	01013903          	ld	s2,16(sp)
   1487c:	00813983          	ld	s3,8(sp)
   14880:	03010113          	addi	sp,sp,48
   14884:	00008067          	ret
   14888:	ff100793          	li	a5,-15
   1488c:	40b0093b          	negw	s2,a1
   14890:	12f5de63          	bge	a1,a5,149cc <eshift.part.0+0x20c>
   14894:	01850593          	addi	a1,a0,24
   14898:	00000993          	li	s3,0
   1489c:	00450693          	addi	a3,a0,4
   148a0:	00f00613          	li	a2,15
   148a4:	01845703          	lhu	a4,24(s0)
   148a8:	00058793          	mv	a5,a1
   148ac:	00e9e9b3          	or	s3,s3,a4
   148b0:	ffe7d703          	lhu	a4,-2(a5)
   148b4:	ffe78793          	addi	a5,a5,-2
   148b8:	00e79123          	sh	a4,2(a5)
   148bc:	fed79ae3          	bne	a5,a3,148b0 <eshift.part.0+0xf0>
   148c0:	00041223          	sh	zero,4(s0)
   148c4:	ff09091b          	addiw	s2,s2,-16
   148c8:	fd264ee3          	blt	a2,s2,148a4 <eshift.part.0+0xe4>
   148cc:	ff000913          	li	s2,-16
   148d0:	ff100713          	li	a4,-15
   148d4:	4099093b          	subw	s2,s2,s1
   148d8:	00000793          	li	a5,0
   148dc:	0ae4c663          	blt	s1,a4,14988 <eshift.part.0+0x1c8>
   148e0:	00f9093b          	addw	s2,s2,a5
   148e4:	00700793          	li	a5,7
   148e8:	0527ca63          	blt	a5,s2,1493c <eshift.part.0+0x17c>
   148ec:	0c090263          	beqz	s2,149b0 <eshift.part.0+0x1f0>
   148f0:	01845783          	lhu	a5,24(s0)
   148f4:	fff9091b          	addiw	s2,s2,-1
   148f8:	00040513          	mv	a0,s0
   148fc:	0017f793          	andi	a5,a5,1
   14900:	0137e9b3          	or	s3,a5,s3
   14904:	addff0ef          	jal	ra,143e0 <eshdn1>
   14908:	fe0914e3          	bnez	s2,148f0 <eshift.part.0+0x130>
   1490c:	0109979b          	slliw	a5,s3,0x10
   14910:	4107d79b          	sraiw	a5,a5,0x10
   14914:	08079663          	bnez	a5,149a0 <eshift.part.0+0x1e0>
   14918:	03099513          	slli	a0,s3,0x30
   1491c:	03055513          	srli	a0,a0,0x30
   14920:	02813083          	ld	ra,40(sp)
   14924:	02013403          	ld	s0,32(sp)
   14928:	01813483          	ld	s1,24(sp)
   1492c:	01013903          	ld	s2,16(sp)
   14930:	00813983          	ld	s3,8(sp)
   14934:	03010113          	addi	sp,sp,48
   14938:	00008067          	ret
   1493c:	0109999b          	slliw	s3,s3,0x10
   14940:	4109d99b          	sraiw	s3,s3,0x10
   14944:	01844783          	lbu	a5,24(s0)
   14948:	01a40593          	addi	a1,s0,26
   1494c:	00f9e9b3          	or	s3,s3,a5
   14950:	03099993          	slli	s3,s3,0x30
   14954:	0309d993          	srli	s3,s3,0x30
   14958:	00000793          	li	a5,0
   1495c:	0006d703          	lhu	a4,0(a3)
   14960:	00268693          	addi	a3,a3,2
   14964:	0087561b          	srliw	a2,a4,0x8
   14968:	00c7e7b3          	or	a5,a5,a2
   1496c:	0087171b          	slliw	a4,a4,0x8
   14970:	fef69f23          	sh	a5,-2(a3)
   14974:	03071793          	slli	a5,a4,0x30
   14978:	0307d793          	srli	a5,a5,0x30
   1497c:	fed590e3          	bne	a1,a3,1495c <eshift.part.0+0x19c>
   14980:	ff89091b          	addiw	s2,s2,-8
   14984:	f69ff06f          	j	148ec <eshift.part.0+0x12c>
   14988:	ff097793          	andi	a5,s2,-16
   1498c:	40f007bb          	negw	a5,a5
   14990:	00f9093b          	addw	s2,s2,a5
   14994:	00700793          	li	a5,7
   14998:	f527dae3          	bge	a5,s2,148ec <eshift.part.0+0x12c>
   1499c:	fa1ff06f          	j	1493c <eshift.part.0+0x17c>
   149a0:	00100993          	li	s3,1
   149a4:	03099513          	slli	a0,s3,0x30
   149a8:	03055513          	srli	a0,a0,0x30
   149ac:	f75ff06f          	j	14920 <eshift.part.0+0x160>
   149b0:	00098513          	mv	a0,s3
   149b4:	00099863          	bnez	s3,149c4 <eshift.part.0+0x204>
   149b8:	03051513          	slli	a0,a0,0x30
   149bc:	03055513          	srli	a0,a0,0x30
   149c0:	eadff06f          	j	1486c <eshift.part.0+0xac>
   149c4:	00100513          	li	a0,1
   149c8:	ff1ff06f          	j	149b8 <eshift.part.0+0x1f8>
   149cc:	ff900793          	li	a5,-7
   149d0:	00000993          	li	s3,0
   149d4:	00450693          	addi	a3,a0,4
   149d8:	f6f5c6e3          	blt	a1,a5,14944 <eshift.part.0+0x184>
   149dc:	f15ff06f          	j	148f0 <eshift.part.0+0x130>

00000000000149e0 <emovi>:
   149e0:	01255783          	lhu	a5,18(a0)
   149e4:	00008637          	lui	a2,0x8
   149e8:	fff60613          	addi	a2,a2,-1 # 7fff <register_fini-0x80b1>
   149ec:	00f7d79b          	srliw	a5,a5,0xf
   149f0:	40f007bb          	negw	a5,a5
   149f4:	00f59023          	sh	a5,0(a1)
   149f8:	01255683          	lhu	a3,18(a0)
   149fc:	01050793          	addi	a5,a0,16
   14a00:	00458713          	addi	a4,a1,4
   14a04:	00d676b3          	and	a3,a2,a3
   14a08:	00d59123          	sh	a3,2(a1)
   14a0c:	0006881b          	sext.w	a6,a3
   14a10:	02c68663          	beq	a3,a2,14a3c <emovi+0x5c>
   14a14:	00658713          	addi	a4,a1,6
   14a18:	00059223          	sh	zero,4(a1)
   14a1c:	ffe50513          	addi	a0,a0,-2
   14a20:	0007d683          	lhu	a3,0(a5)
   14a24:	ffe78793          	addi	a5,a5,-2
   14a28:	00270713          	addi	a4,a4,2
   14a2c:	fed71f23          	sh	a3,-2(a4)
   14a30:	fef518e3          	bne	a0,a5,14a20 <emovi+0x40>
   14a34:	00059c23          	sh	zero,24(a1)
   14a38:	00008067          	ret
   14a3c:	01255683          	lhu	a3,18(a0)
   14a40:	00d876b3          	and	a3,a6,a3
   14a44:	01069e63          	bne	a3,a6,14a60 <emovi+0x80>
   14a48:	01250813          	addi	a6,a0,18
   14a4c:	00050693          	mv	a3,a0
   14a50:	0006d603          	lhu	a2,0(a3)
   14a54:	00268693          	addi	a3,a3,2
   14a58:	00061e63          	bnez	a2,14a74 <emovi+0x94>
   14a5c:	ff069ae3          	bne	a3,a6,14a50 <emovi+0x70>
   14a60:	01a58593          	addi	a1,a1,26
   14a64:	00270713          	addi	a4,a4,2
   14a68:	fe071f23          	sh	zero,-2(a4)
   14a6c:	fee59ce3          	bne	a1,a4,14a64 <emovi+0x84>
   14a70:	00008067          	ret
   14a74:	00658713          	addi	a4,a1,6
   14a78:	00059223          	sh	zero,4(a1)
   14a7c:	ffc50513          	addi	a0,a0,-4
   14a80:	0007d683          	lhu	a3,0(a5)
   14a84:	ffe78793          	addi	a5,a5,-2
   14a88:	00270713          	addi	a4,a4,2
   14a8c:	fed71f23          	sh	a3,-2(a4)
   14a90:	fea798e3          	bne	a5,a0,14a80 <emovi+0xa0>
   14a94:	00008067          	ret

0000000000014a98 <ecmp>:
   14a98:	01255783          	lhu	a5,18(a0)
   14a9c:	fb010113          	addi	sp,sp,-80
   14aa0:	04813023          	sd	s0,64(sp)
   14aa4:	fff7c793          	not	a5,a5
   14aa8:	04113423          	sd	ra,72(sp)
   14aac:	03179713          	slli	a4,a5,0x31
   14ab0:	00058413          	mv	s0,a1
   14ab4:	00071e63          	bnez	a4,14ad0 <ecmp+0x38>
   14ab8:	01250693          	addi	a3,a0,18
   14abc:	00050793          	mv	a5,a0
   14ac0:	0007d703          	lhu	a4,0(a5)
   14ac4:	00278793          	addi	a5,a5,2
   14ac8:	08071c63          	bnez	a4,14b60 <ecmp+0xc8>
   14acc:	fed79ae3          	bne	a5,a3,14ac0 <ecmp+0x28>
   14ad0:	01245783          	lhu	a5,18(s0)
   14ad4:	fff7c793          	not	a5,a5
   14ad8:	03179713          	slli	a4,a5,0x31
   14adc:	06070063          	beqz	a4,14b3c <ecmp+0xa4>
   14ae0:	00010593          	mv	a1,sp
   14ae4:	efdff0ef          	jal	ra,149e0 <emovi>
   14ae8:	02010593          	addi	a1,sp,32
   14aec:	00040513          	mv	a0,s0
   14af0:	ef1ff0ef          	jal	ra,149e0 <emovi>
   14af4:	00015583          	lhu	a1,0(sp)
   14af8:	02015783          	lhu	a5,32(sp)
   14afc:	06b78c63          	beq	a5,a1,14b74 <ecmp+0xdc>
   14b00:	00210793          	addi	a5,sp,2
   14b04:	02210713          	addi	a4,sp,34
   14b08:	01810613          	addi	a2,sp,24
   14b0c:	0007d683          	lhu	a3,0(a5)
   14b10:	00278793          	addi	a5,a5,2
   14b14:	0a069663          	bnez	a3,14bc0 <ecmp+0x128>
   14b18:	00075683          	lhu	a3,0(a4)
   14b1c:	00270713          	addi	a4,a4,2
   14b20:	0a069063          	bnez	a3,14bc0 <ecmp+0x128>
   14b24:	fef614e3          	bne	a2,a5,14b0c <ecmp+0x74>
   14b28:	00000513          	li	a0,0
   14b2c:	04813083          	ld	ra,72(sp)
   14b30:	04013403          	ld	s0,64(sp)
   14b34:	05010113          	addi	sp,sp,80
   14b38:	00008067          	ret
   14b3c:	00040793          	mv	a5,s0
   14b40:	0007d703          	lhu	a4,0(a5)
   14b44:	01240693          	addi	a3,s0,18
   14b48:	00278793          	addi	a5,a5,2
   14b4c:	00071a63          	bnez	a4,14b60 <ecmp+0xc8>
   14b50:	f8d788e3          	beq	a5,a3,14ae0 <ecmp+0x48>
   14b54:	0007d703          	lhu	a4,0(a5)
   14b58:	00278793          	addi	a5,a5,2
   14b5c:	fe070ae3          	beqz	a4,14b50 <ecmp+0xb8>
   14b60:	04813083          	ld	ra,72(sp)
   14b64:	04013403          	ld	s0,64(sp)
   14b68:	ffe00513          	li	a0,-2
   14b6c:	05010113          	addi	sp,sp,80
   14b70:	00008067          	ret
   14b74:	00100513          	li	a0,1
   14b78:	04059c63          	bnez	a1,14bd0 <ecmp+0x138>
   14b7c:	00215603          	lhu	a2,2(sp)
   14b80:	02215683          	lhu	a3,34(sp)
   14b84:	00210713          	addi	a4,sp,2
   14b88:	02210793          	addi	a5,sp,34
   14b8c:	03810593          	addi	a1,sp,56
   14b90:	00278793          	addi	a5,a5,2
   14b94:	00270713          	addi	a4,a4,2
   14b98:	00d61e63          	bne	a2,a3,14bb4 <ecmp+0x11c>
   14b9c:	f8b786e3          	beq	a5,a1,14b28 <ecmp+0x90>
   14ba0:	00075603          	lhu	a2,0(a4)
   14ba4:	0007d683          	lhu	a3,0(a5)
   14ba8:	00270713          	addi	a4,a4,2
   14bac:	00278793          	addi	a5,a5,2
   14bb0:	fed606e3          	beq	a2,a3,14b9c <ecmp+0x104>
   14bb4:	f6c6ece3          	bltu	a3,a2,14b2c <ecmp+0x94>
   14bb8:	40a0053b          	negw	a0,a0
   14bbc:	f71ff06f          	j	14b2c <ecmp+0x94>
   14bc0:	00100513          	li	a0,1
   14bc4:	f60584e3          	beqz	a1,14b2c <ecmp+0x94>
   14bc8:	fff00513          	li	a0,-1
   14bcc:	f61ff06f          	j	14b2c <ecmp+0x94>
   14bd0:	fff00513          	li	a0,-1
   14bd4:	fa9ff06f          	j	14b7c <ecmp+0xe4>

0000000000014bd8 <emdnorm>:
   14bd8:	fc010113          	addi	sp,sp,-64
   14bdc:	02813823          	sd	s0,48(sp)
   14be0:	02913423          	sd	s1,40(sp)
   14be4:	03213023          	sd	s2,32(sp)
   14be8:	01313c23          	sd	s3,24(sp)
   14bec:	01413823          	sd	s4,16(sp)
   14bf0:	01513423          	sd	s5,8(sp)
   14bf4:	00068913          	mv	s2,a3
   14bf8:	00078493          	mv	s1,a5
   14bfc:	02113c23          	sd	ra,56(sp)
   14c00:	00050413          	mv	s0,a0
   14c04:	00058993          	mv	s3,a1
   14c08:	00060a13          	mv	s4,a2
   14c0c:	00070a93          	mv	s5,a4
   14c10:	a3dff0ef          	jal	ra,1464c <enormlz>
   14c14:	09000793          	li	a5,144
   14c18:	40a90933          	sub	s2,s2,a0
   14c1c:	1aa7da63          	bge	a5,a0,14dd0 <emdnorm+0x1f8>
   14c20:	000087b7          	lui	a5,0x8
   14c24:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   14c28:	2327d863          	bge	a5,s2,14e58 <emdnorm+0x280>
   14c2c:	200a8263          	beqz	s5,14e30 <emdnorm+0x258>
   14c30:	0044a503          	lw	a0,4(s1)
   14c34:	0004a783          	lw	a5,0(s1)
   14c38:	06a78a63          	beq	a5,a0,14cac <emdnorm+0xd4>
   14c3c:	01a48713          	addi	a4,s1,26
   14c40:	03448793          	addi	a5,s1,52
   14c44:	00270713          	addi	a4,a4,2
   14c48:	fe071f23          	sh	zero,-2(a4)
   14c4c:	fef71ce3          	bne	a4,a5,14c44 <emdnorm+0x6c>
   14c50:	03800793          	li	a5,56
   14c54:	36f50e63          	beq	a0,a5,14fd0 <emdnorm+0x3f8>
   14c58:	18a7de63          	bge	a5,a0,14df4 <emdnorm+0x21c>
   14c5c:	04000793          	li	a5,64
   14c60:	30f50c63          	beq	a0,a5,14f78 <emdnorm+0x3a0>
   14c64:	07100793          	li	a5,113
   14c68:	32f51e63          	bne	a0,a5,14fa4 <emdnorm+0x3cc>
   14c6c:	400087b7          	lui	a5,0x40008
   14c70:	fff78793          	addi	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe319f>
   14c74:	00a00713          	li	a4,10
   14c78:	00f4aa23          	sw	a5,20(s1)
   14c7c:	ffff87b7          	lui	a5,0xffff8
   14c80:	00e4a423          	sw	a4,8(s1)
   14c84:	00f49c23          	sh	a5,24(s1)
   14c88:	00e4a623          	sw	a4,12(s1)
   14c8c:	00a00793          	li	a5,10
   14c90:	00008737          	lui	a4,0x8
   14c94:	00878793          	addi	a5,a5,8 # ffffffffffff8008 <__BSS_END__+0xfffffffffffd31a8>
   14c98:	00179793          	slli	a5,a5,0x1
   14c9c:	00f487b3          	add	a5,s1,a5
   14ca0:	00e79523          	sh	a4,10(a5)
   14ca4:	00a4a023          	sw	a0,0(s1)
   14ca8:	1f205663          	blez	s2,14e94 <emdnorm+0x2bc>
   14cac:	0084a683          	lw	a3,8(s1)
   14cb0:	0144d603          	lhu	a2,20(s1)
   14cb4:	08f00713          	li	a4,143
   14cb8:	00169793          	slli	a5,a3,0x1
   14cbc:	00f40833          	add	a6,s0,a5
   14cc0:	00085883          	lhu	a7,0(a6) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31a0>
   14cc4:	00c8f5b3          	and	a1,a7,a2
   14cc8:	04a74863          	blt	a4,a0,14d18 <emdnorm+0x140>
   14ccc:	00b00713          	li	a4,11
   14cd0:	04d74463          	blt	a4,a3,14d18 <emdnorm+0x140>
   14cd4:	40d7073b          	subw	a4,a4,a3
   14cd8:	02071713          	slli	a4,a4,0x20
   14cdc:	02075713          	srli	a4,a4,0x20
   14ce0:	00d70733          	add	a4,a4,a3
   14ce4:	00171693          	slli	a3,a4,0x1
   14ce8:	00278793          	addi	a5,a5,2
   14cec:	00440713          	addi	a4,s0,4
   14cf0:	00f407b3          	add	a5,s0,a5
   14cf4:	00e68733          	add	a4,a3,a4
   14cf8:	0007d683          	lhu	a3,0(a5)
   14cfc:	00068463          	beqz	a3,14d04 <emdnorm+0x12c>
   14d00:	0015e593          	ori	a1,a1,1
   14d04:	00079023          	sh	zero,0(a5)
   14d08:	00278793          	addi	a5,a5,2
   14d0c:	fef716e3          	bne	a4,a5,14cf8 <emdnorm+0x120>
   14d10:	00085883          	lhu	a7,0(a6)
   14d14:	0144d603          	lhu	a2,20(s1)
   14d18:	fff64613          	not	a2,a2
   14d1c:	01167633          	and	a2,a2,a7
   14d20:	00c81023          	sh	a2,0(a6)
   14d24:	0164d783          	lhu	a5,22(s1)
   14d28:	00b7f733          	and	a4,a5,a1
   14d2c:	06070063          	beqz	a4,14d8c <emdnorm+0x1b4>
   14d30:	02b79263          	bne	a5,a1,14d54 <emdnorm+0x17c>
   14d34:	20099863          	bnez	s3,14f44 <emdnorm+0x36c>
   14d38:	00c4a783          	lw	a5,12(s1)
   14d3c:	0184d703          	lhu	a4,24(s1)
   14d40:	00179793          	slli	a5,a5,0x1
   14d44:	00f407b3          	add	a5,s0,a5
   14d48:	0007d783          	lhu	a5,0(a5)
   14d4c:	00e7f7b3          	and	a5,a5,a4
   14d50:	02078e63          	beqz	a5,14d8c <emdnorm+0x1b4>
   14d54:	03248613          	addi	a2,s1,50
   14d58:	01840693          	addi	a3,s0,24
   14d5c:	01c48493          	addi	s1,s1,28
   14d60:	00000713          	li	a4,0
   14d64:	00065783          	lhu	a5,0(a2)
   14d68:	0006d583          	lhu	a1,0(a3)
   14d6c:	ffe68693          	addi	a3,a3,-2
   14d70:	ffe60613          	addi	a2,a2,-2
   14d74:	00b787b3          	add	a5,a5,a1
   14d78:	00e787b3          	add	a5,a5,a4
   14d7c:	0107d713          	srli	a4,a5,0x10
   14d80:	00f69123          	sh	a5,2(a3)
   14d84:	00177713          	andi	a4,a4,1
   14d88:	fc961ee3          	bne	a2,s1,14d64 <emdnorm+0x18c>
   14d8c:	17205663          	blez	s2,14ef8 <emdnorm+0x320>
   14d90:	00445783          	lhu	a5,4(s0)
   14d94:	12079e63          	bnez	a5,14ed0 <emdnorm+0x2f8>
   14d98:	000087b7          	lui	a5,0x8
   14d9c:	00041c23          	sh	zero,24(s0)
   14da0:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   14da4:	0927c863          	blt	a5,s2,14e34 <emdnorm+0x25c>
   14da8:	01241123          	sh	s2,2(s0)
   14dac:	03813083          	ld	ra,56(sp)
   14db0:	03013403          	ld	s0,48(sp)
   14db4:	02813483          	ld	s1,40(sp)
   14db8:	02013903          	ld	s2,32(sp)
   14dbc:	01813983          	ld	s3,24(sp)
   14dc0:	01013a03          	ld	s4,16(sp)
   14dc4:	00813a83          	ld	s5,8(sp)
   14dc8:	04010113          	addi	sp,sp,64
   14dcc:	00008067          	ret
   14dd0:	0e095463          	bgez	s2,14eb8 <emdnorm+0x2e0>
   14dd4:	f7000793          	li	a5,-144
   14dd8:	08f95c63          	bge	s2,a5,14e70 <emdnorm+0x298>
   14ddc:	00240793          	addi	a5,s0,2
   14de0:	01a40413          	addi	s0,s0,26
   14de4:	00278793          	addi	a5,a5,2
   14de8:	fe079f23          	sh	zero,-2(a5)
   14dec:	fe879ce3          	bne	a5,s0,14de4 <emdnorm+0x20c>
   14df0:	fbdff06f          	j	14dac <emdnorm+0x1d4>
   14df4:	01800793          	li	a5,24
   14df8:	14f50a63          	beq	a0,a5,14f4c <emdnorm+0x374>
   14dfc:	03500793          	li	a5,53
   14e00:	1af51263          	bne	a0,a5,14fa4 <emdnorm+0x3cc>
   14e04:	00001737          	lui	a4,0x1
   14e08:	040007b7          	lui	a5,0x4000
   14e0c:	00600693          	li	a3,6
   14e10:	7ff78793          	addi	a5,a5,2047 # 40007ff <__BSS_END__+0x3fdb99f>
   14e14:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   14e18:	00f4aa23          	sw	a5,20(s1)
   14e1c:	00d4a423          	sw	a3,8(s1)
   14e20:	00e49c23          	sh	a4,24(s1)
   14e24:	00d4a623          	sw	a3,12(s1)
   14e28:	00600793          	li	a5,6
   14e2c:	e69ff06f          	j	14c94 <emdnorm+0xbc>
   14e30:	00041c23          	sh	zero,24(s0)
   14e34:	ffff87b7          	lui	a5,0xffff8
   14e38:	fff7c793          	not	a5,a5
   14e3c:	00f41123          	sh	a5,2(s0)
   14e40:	00440793          	addi	a5,s0,4
   14e44:	01840413          	addi	s0,s0,24
   14e48:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31a0>
   14e4c:	00278793          	addi	a5,a5,2
   14e50:	fef41ce3          	bne	s0,a5,14e48 <emdnorm+0x270>
   14e54:	f59ff06f          	j	14dac <emdnorm+0x1d4>
   14e58:	00240793          	addi	a5,s0,2
   14e5c:	01a40413          	addi	s0,s0,26
   14e60:	00278793          	addi	a5,a5,2
   14e64:	fe079f23          	sh	zero,-2(a5)
   14e68:	fe879ce3          	bne	a5,s0,14e60 <emdnorm+0x288>
   14e6c:	f41ff06f          	j	14dac <emdnorm+0x1d4>
   14e70:	0009059b          	sext.w	a1,s2
   14e74:	00040513          	mv	a0,s0
   14e78:	949ff0ef          	jal	ra,147c0 <eshift.part.0>
   14e7c:	00050463          	beqz	a0,14e84 <emdnorm+0x2ac>
   14e80:	00100993          	li	s3,1
   14e84:	0a0a8a63          	beqz	s5,14f38 <emdnorm+0x360>
   14e88:	0044a503          	lw	a0,4(s1)
   14e8c:	0004a783          	lw	a5,0(s1)
   14e90:	daa796e3          	bne	a5,a0,14c3c <emdnorm+0x64>
   14e94:	09000793          	li	a5,144
   14e98:	08f50263          	beq	a0,a5,14f1c <emdnorm+0x344>
   14e9c:	01845783          	lhu	a5,24(s0)
   14ea0:	00040513          	mv	a0,s0
   14ea4:	0017f793          	andi	a5,a5,1
   14ea8:	0137e9b3          	or	s3,a5,s3
   14eac:	d34ff0ef          	jal	ra,143e0 <eshdn1>
   14eb0:	0044a503          	lw	a0,4(s1)
   14eb4:	df9ff06f          	j	14cac <emdnorm+0xd4>
   14eb8:	ee0a80e3          	beqz	s5,14d98 <emdnorm+0x1c0>
   14ebc:	0044a503          	lw	a0,4(s1)
   14ec0:	0004a783          	lw	a5,0(s1)
   14ec4:	d6a79ce3          	bne	a5,a0,14c3c <emdnorm+0x64>
   14ec8:	df2042e3          	bgtz	s2,14cac <emdnorm+0xd4>
   14ecc:	fc9ff06f          	j	14e94 <emdnorm+0x2bc>
   14ed0:	00040513          	mv	a0,s0
   14ed4:	d0cff0ef          	jal	ra,143e0 <eshdn1>
   14ed8:	000087b7          	lui	a5,0x8
   14edc:	00190913          	addi	s2,s2,1
   14ee0:	00041c23          	sh	zero,24(s0)
   14ee4:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   14ee8:	f527c6e3          	blt	a5,s2,14e34 <emdnorm+0x25c>
   14eec:	ea095ee3          	bgez	s2,14da8 <emdnorm+0x1d0>
   14ef0:	00041123          	sh	zero,2(s0)
   14ef4:	eb9ff06f          	j	14dac <emdnorm+0x1d4>
   14ef8:	09000793          	li	a5,144
   14efc:	00f50663          	beq	a0,a5,14f08 <emdnorm+0x330>
   14f00:	00040513          	mv	a0,s0
   14f04:	d44ff0ef          	jal	ra,14448 <eshup1>
   14f08:	00445783          	lhu	a5,4(s0)
   14f0c:	fc0792e3          	bnez	a5,14ed0 <emdnorm+0x2f8>
   14f10:	00041c23          	sh	zero,24(s0)
   14f14:	fc094ee3          	bltz	s2,14ef0 <emdnorm+0x318>
   14f18:	e91ff06f          	j	14da8 <emdnorm+0x1d0>
   14f1c:	0084a803          	lw	a6,8(s1)
   14f20:	0144d603          	lhu	a2,20(s1)
   14f24:	00181813          	slli	a6,a6,0x1
   14f28:	01040833          	add	a6,s0,a6
   14f2c:	00085883          	lhu	a7,0(a6)
   14f30:	011675b3          	and	a1,a2,a7
   14f34:	de5ff06f          	j	14d18 <emdnorm+0x140>
   14f38:	00041c23          	sh	zero,24(s0)
   14f3c:	00041123          	sh	zero,2(s0)
   14f40:	e6dff06f          	j	14dac <emdnorm+0x1d4>
   14f44:	e00a08e3          	beqz	s4,14d54 <emdnorm+0x17c>
   14f48:	e45ff06f          	j	14d8c <emdnorm+0x1b4>
   14f4c:	008007b7          	lui	a5,0x800
   14f50:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7db29f>
   14f54:	00400713          	li	a4,4
   14f58:	00f4aa23          	sw	a5,20(s1)
   14f5c:	10000793          	li	a5,256
   14f60:	00e4a423          	sw	a4,8(s1)
   14f64:	00f49c23          	sh	a5,24(s1)
   14f68:	00e4a623          	sw	a4,12(s1)
   14f6c:	00400793          	li	a5,4
   14f70:	10000713          	li	a4,256
   14f74:	d21ff06f          	j	14c94 <emdnorm+0xbc>
   14f78:	00700793          	li	a5,7
   14f7c:	00f4a423          	sw	a5,8(s1)
   14f80:	800107b7          	lui	a5,0x80010
   14f84:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb19f>
   14f88:	00f4aa23          	sw	a5,20(s1)
   14f8c:	00100793          	li	a5,1
   14f90:	00f49c23          	sh	a5,24(s1)
   14f94:	00600793          	li	a5,6
   14f98:	00f4a623          	sw	a5,12(s1)
   14f9c:	00100713          	li	a4,1
   14fa0:	cf5ff06f          	j	14c94 <emdnorm+0xbc>
   14fa4:	00c00793          	li	a5,12
   14fa8:	00f4a423          	sw	a5,8(s1)
   14fac:	800107b7          	lui	a5,0x80010
   14fb0:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb19f>
   14fb4:	00f4aa23          	sw	a5,20(s1)
   14fb8:	00100793          	li	a5,1
   14fbc:	00f49c23          	sh	a5,24(s1)
   14fc0:	00b00793          	li	a5,11
   14fc4:	00f4a623          	sw	a5,12(s1)
   14fc8:	00100713          	li	a4,1
   14fcc:	cc9ff06f          	j	14c94 <emdnorm+0xbc>
   14fd0:	008007b7          	lui	a5,0x800
   14fd4:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7db29f>
   14fd8:	00600713          	li	a4,6
   14fdc:	00f4aa23          	sw	a5,20(s1)
   14fe0:	10000793          	li	a5,256
   14fe4:	00e4a423          	sw	a4,8(s1)
   14fe8:	00f49c23          	sh	a5,24(s1)
   14fec:	00e4a623          	sw	a4,12(s1)
   14ff0:	00600793          	li	a5,6
   14ff4:	10000713          	li	a4,256
   14ff8:	c9dff06f          	j	14c94 <emdnorm+0xbc>

0000000000014ffc <eiremain>:
   14ffc:	fa010113          	addi	sp,sp,-96
   15000:	05213023          	sd	s2,64(sp)
   15004:	03313c23          	sd	s3,56(sp)
   15008:	00058913          	mv	s2,a1
   1500c:	00255983          	lhu	s3,2(a0)
   15010:	04113c23          	sd	ra,88(sp)
   15014:	04813823          	sd	s0,80(sp)
   15018:	04913423          	sd	s1,72(sp)
   1501c:	03413823          	sd	s4,48(sp)
   15020:	00060493          	mv	s1,a2
   15024:	01713c23          	sd	s7,24(sp)
   15028:	03513423          	sd	s5,40(sp)
   1502c:	03613023          	sd	s6,32(sp)
   15030:	01813823          	sd	s8,16(sp)
   15034:	01913423          	sd	s9,8(sp)
   15038:	01a13023          	sd	s10,0(sp)
   1503c:	00050b93          	mv	s7,a0
   15040:	e0cff0ef          	jal	ra,1464c <enormlz>
   15044:	00295403          	lhu	s0,2(s2)
   15048:	00050793          	mv	a5,a0
   1504c:	00090513          	mv	a0,s2
   15050:	40f989b3          	sub	s3,s3,a5
   15054:	03448a13          	addi	s4,s1,52
   15058:	df4ff0ef          	jal	ra,1464c <enormlz>
   1505c:	40a40433          	sub	s0,s0,a0
   15060:	04e48713          	addi	a4,s1,78
   15064:	000a0793          	mv	a5,s4
   15068:	00278793          	addi	a5,a5,2
   1506c:	fe079f23          	sh	zero,-2(a5)
   15070:	fee79ce3          	bne	a5,a4,15068 <eiremain+0x6c>
   15074:	09344863          	blt	s0,s3,15104 <eiremain+0x108>
   15078:	004b8b13          	addi	s6,s7,4
   1507c:	00490a93          	addi	s5,s2,4
   15080:	01ab8c13          	addi	s8,s7,26
   15084:	00290d13          	addi	s10,s2,2
   15088:	000a8713          	mv	a4,s5
   1508c:	000b0793          	mv	a5,s6
   15090:	0007d603          	lhu	a2,0(a5)
   15094:	00075683          	lhu	a3,0(a4)
   15098:	00278793          	addi	a5,a5,2
   1509c:	00270713          	addi	a4,a4,2
   150a0:	0ad61a63          	bne	a2,a3,15154 <eiremain+0x158>
   150a4:	ff8796e3          	bne	a5,s8,15090 <eiremain+0x94>
   150a8:	018b8613          	addi	a2,s7,24
   150ac:	01890713          	addi	a4,s2,24
   150b0:	00000693          	li	a3,0
   150b4:	00075783          	lhu	a5,0(a4)
   150b8:	00065583          	lhu	a1,0(a2)
   150bc:	ffe70713          	addi	a4,a4,-2
   150c0:	40d787b3          	sub	a5,a5,a3
   150c4:	40b787b3          	sub	a5,a5,a1
   150c8:	0107d693          	srli	a3,a5,0x10
   150cc:	00f71123          	sh	a5,2(a4)
   150d0:	0016f693          	andi	a3,a3,1
   150d4:	ffe60613          	addi	a2,a2,-2
   150d8:	fced1ee3          	bne	s10,a4,150b4 <eiremain+0xb8>
   150dc:	00100c93          	li	s9,1
   150e0:	000a0513          	mv	a0,s4
   150e4:	b64ff0ef          	jal	ra,14448 <eshup1>
   150e8:	04c4d783          	lhu	a5,76(s1)
   150ec:	fff40413          	addi	s0,s0,-1
   150f0:	00090513          	mv	a0,s2
   150f4:	00fce7b3          	or	a5,s9,a5
   150f8:	04f49623          	sh	a5,76(s1)
   150fc:	b4cff0ef          	jal	ra,14448 <eshup1>
   15100:	f93454e3          	bge	s0,s3,15088 <eiremain+0x8c>
   15104:	00040693          	mv	a3,s0
   15108:	05013403          	ld	s0,80(sp)
   1510c:	05813083          	ld	ra,88(sp)
   15110:	03813983          	ld	s3,56(sp)
   15114:	03013a03          	ld	s4,48(sp)
   15118:	02813a83          	ld	s5,40(sp)
   1511c:	02013b03          	ld	s6,32(sp)
   15120:	01813b83          	ld	s7,24(sp)
   15124:	01013c03          	ld	s8,16(sp)
   15128:	00813c83          	ld	s9,8(sp)
   1512c:	00013d03          	ld	s10,0(sp)
   15130:	00048793          	mv	a5,s1
   15134:	00090513          	mv	a0,s2
   15138:	04813483          	ld	s1,72(sp)
   1513c:	04013903          	ld	s2,64(sp)
   15140:	00000713          	li	a4,0
   15144:	00000613          	li	a2,0
   15148:	00000593          	li	a1,0
   1514c:	06010113          	addi	sp,sp,96
   15150:	a89ff06f          	j	14bd8 <emdnorm>
   15154:	00000c93          	li	s9,0
   15158:	f8c6e4e3          	bltu	a3,a2,150e0 <eiremain+0xe4>
   1515c:	f4dff06f          	j	150a8 <eiremain+0xac>

0000000000015160 <emul>:
   15160:	f4010113          	addi	sp,sp,-192
   15164:	0a913423          	sd	s1,168(sp)
   15168:	00050493          	mv	s1,a0
   1516c:	01255503          	lhu	a0,18(a0)
   15170:	00008737          	lui	a4,0x8
   15174:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15178:	0a813823          	sd	s0,176(sp)
   1517c:	0b213023          	sd	s2,160(sp)
   15180:	09413823          	sd	s4,144(sp)
   15184:	0a113c23          	sd	ra,184(sp)
   15188:	09313c23          	sd	s3,152(sp)
   1518c:	09513423          	sd	s5,136(sp)
   15190:	09613023          	sd	s6,128(sp)
   15194:	07713c23          	sd	s7,120(sp)
   15198:	07813823          	sd	s8,112(sp)
   1519c:	07913423          	sd	s9,104(sp)
   151a0:	00a77533          	and	a0,a4,a0
   151a4:	00058913          	mv	s2,a1
   151a8:	00060413          	mv	s0,a2
   151ac:	00068a13          	mv	s4,a3
   151b0:	00e51e63          	bne	a0,a4,151cc <emul+0x6c>
   151b4:	01248993          	addi	s3,s1,18
   151b8:	00048713          	mv	a4,s1
   151bc:	00075603          	lhu	a2,0(a4)
   151c0:	00270713          	addi	a4,a4,2
   151c4:	16061863          	bnez	a2,15334 <emul+0x1d4>
   151c8:	ff371ae3          	bne	a4,s3,151bc <emul+0x5c>
   151cc:	01295603          	lhu	a2,18(s2)
   151d0:	000087b7          	lui	a5,0x8
   151d4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   151d8:	00f675b3          	and	a1,a2,a5
   151dc:	0af59c63          	bne	a1,a5,15294 <emul+0x134>
   151e0:	01290693          	addi	a3,s2,18
   151e4:	00090713          	mv	a4,s2
   151e8:	00075783          	lhu	a5,0(a4)
   151ec:	00270713          	addi	a4,a4,2
   151f0:	22079463          	bnez	a5,15418 <emul+0x2b8>
   151f4:	fee69ae3          	bne	a3,a4,151e8 <emul+0x88>
   151f8:	000087b7          	lui	a5,0x8
   151fc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15200:	08f50c63          	beq	a0,a5,15298 <emul+0x138>
   15204:	00090793          	mv	a5,s2
   15208:	0007d703          	lhu	a4,0(a5)
   1520c:	00278793          	addi	a5,a5,2
   15210:	3e071a63          	bnez	a4,15604 <emul+0x4a4>
   15214:	fef69ae3          	bne	a3,a5,15208 <emul+0xa8>
   15218:	0000d597          	auipc	a1,0xd
   1521c:	e9058593          	addi	a1,a1,-368 # 220a8 <ezero>
   15220:	00048513          	mv	a0,s1
   15224:	875ff0ef          	jal	ra,14a98 <ecmp>
   15228:	20050663          	beqz	a0,15434 <emul+0x2d4>
   1522c:	0124d503          	lhu	a0,18(s1)
   15230:	01295603          	lhu	a2,18(s2)
   15234:	000087b7          	lui	a5,0x8
   15238:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   1523c:	00f576b3          	and	a3,a0,a5
   15240:	00f67733          	and	a4,a2,a5
   15244:	00068813          	mv	a6,a3
   15248:	0007059b          	sext.w	a1,a4
   1524c:	12f69e63          	bne	a3,a5,15388 <emul+0x228>
   15250:	01248993          	addi	s3,s1,18
   15254:	0007059b          	sext.w	a1,a4
   15258:	00048793          	mv	a5,s1
   1525c:	0007d703          	lhu	a4,0(a5)
   15260:	00278793          	addi	a5,a5,2
   15264:	10071e63          	bnez	a4,15380 <emul+0x220>
   15268:	fef99ae3          	bne	s3,a5,1525c <emul+0xfc>
   1526c:	0004d783          	lhu	a5,0(s1)
   15270:	00248493          	addi	s1,s1,2
   15274:	34079663          	bnez	a5,155c0 <emul+0x460>
   15278:	ff349ae3          	bne	s1,s3,1526c <emul+0x10c>
   1527c:	00f55893          	srli	a7,a0,0xf
   15280:	00008737          	lui	a4,0x8
   15284:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15288:	14e59863          	bne	a1,a4,153d8 <emul+0x278>
   1528c:	01290693          	addi	a3,s2,18
   15290:	1380006f          	j	153c8 <emul+0x268>
   15294:	04f51863          	bne	a0,a5,152e4 <emul+0x184>
   15298:	01248993          	addi	s3,s1,18
   1529c:	00048793          	mv	a5,s1
   152a0:	0007d703          	lhu	a4,0(a5)
   152a4:	00278793          	addi	a5,a5,2
   152a8:	32071063          	bnez	a4,155c8 <emul+0x468>
   152ac:	fef99ae3          	bne	s3,a5,152a0 <emul+0x140>
   152b0:	0000d597          	auipc	a1,0xd
   152b4:	df858593          	addi	a1,a1,-520 # 220a8 <ezero>
   152b8:	00090513          	mv	a0,s2
   152bc:	fdcff0ef          	jal	ra,14a98 <ecmp>
   152c0:	16050a63          	beqz	a0,15434 <emul+0x2d4>
   152c4:	01295603          	lhu	a2,18(s2)
   152c8:	000087b7          	lui	a5,0x8
   152cc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   152d0:	00f675b3          	and	a1,a2,a5
   152d4:	18f58663          	beq	a1,a5,15460 <emul+0x300>
   152d8:	0124d503          	lhu	a0,18(s1)
   152dc:	00f57733          	and	a4,a0,a5
   152e0:	f6f70ce3          	beq	a4,a5,15258 <emul+0xf8>
   152e4:	00048513          	mv	a0,s1
   152e8:	00010593          	mv	a1,sp
   152ec:	ef4ff0ef          	jal	ra,149e0 <emovi>
   152f0:	02010593          	addi	a1,sp,32
   152f4:	00090513          	mv	a0,s2
   152f8:	ee8ff0ef          	jal	ra,149e0 <emovi>
   152fc:	00215483          	lhu	s1,2(sp)
   15300:	02215983          	lhu	s3,34(sp)
   15304:	16049263          	bnez	s1,15468 <emul+0x308>
   15308:	00410793          	addi	a5,sp,4
   1530c:	01810693          	addi	a3,sp,24
   15310:	2cd78663          	beq	a5,a3,155dc <emul+0x47c>
   15314:	0007d703          	lhu	a4,0(a5)
   15318:	00278793          	addi	a5,a5,2
   1531c:	fe070ae3          	beqz	a4,15310 <emul+0x1b0>
   15320:	00010513          	mv	a0,sp
   15324:	b28ff0ef          	jal	ra,1464c <enormlz>
   15328:	02215703          	lhu	a4,34(sp)
   1532c:	40a004b3          	neg	s1,a0
   15330:	13c0006f          	j	1546c <emul+0x30c>
   15334:	01448713          	addi	a4,s1,20
   15338:	0004d783          	lhu	a5,0(s1)
   1533c:	00248493          	addi	s1,s1,2
   15340:	00240413          	addi	s0,s0,2
   15344:	fef41f23          	sh	a5,-2(s0)
   15348:	fee498e3          	bne	s1,a4,15338 <emul+0x1d8>
   1534c:	0b813083          	ld	ra,184(sp)
   15350:	0b013403          	ld	s0,176(sp)
   15354:	0a813483          	ld	s1,168(sp)
   15358:	0a013903          	ld	s2,160(sp)
   1535c:	09813983          	ld	s3,152(sp)
   15360:	09013a03          	ld	s4,144(sp)
   15364:	08813a83          	ld	s5,136(sp)
   15368:	08013b03          	ld	s6,128(sp)
   1536c:	07813b83          	ld	s7,120(sp)
   15370:	07013c03          	ld	s8,112(sp)
   15374:	06813c83          	ld	s9,104(sp)
   15378:	0c010113          	addi	sp,sp,192
   1537c:	00008067          	ret
   15380:	00008837          	lui	a6,0x8
   15384:	fff80813          	addi	a6,a6,-1 # 7fff <register_fini-0x80b1>
   15388:	000087b7          	lui	a5,0x8
   1538c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15390:	f4f59ae3          	bne	a1,a5,152e4 <emul+0x184>
   15394:	01290693          	addi	a3,s2,18
   15398:	00090793          	mv	a5,s2
   1539c:	0007d703          	lhu	a4,0(a5)
   153a0:	00278793          	addi	a5,a5,2
   153a4:	f40710e3          	bnez	a4,152e4 <emul+0x184>
   153a8:	fed79ae3          	bne	a5,a3,1539c <emul+0x23c>
   153ac:	00008737          	lui	a4,0x8
   153b0:	0008081b          	sext.w	a6,a6
   153b4:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   153b8:	00f55893          	srli	a7,a0,0xf
   153bc:	01248993          	addi	s3,s1,18
   153c0:	00080593          	mv	a1,a6
   153c4:	eae804e3          	beq	a6,a4,1526c <emul+0x10c>
   153c8:	00095703          	lhu	a4,0(s2)
   153cc:	00290913          	addi	s2,s2,2
   153d0:	1e071463          	bnez	a4,155b8 <emul+0x458>
   153d4:	fed91ae3          	bne	s2,a3,153c8 <emul+0x268>
   153d8:	00f65793          	srli	a5,a2,0xf
   153dc:	411787b3          	sub	a5,a5,a7
   153e0:	00f037b3          	snez	a5,a5
   153e4:	00f79793          	slli	a5,a5,0xf
   153e8:	00f41923          	sh	a5,18(s0)
   153ec:	01240713          	addi	a4,s0,18
   153f0:	00040793          	mv	a5,s0
   153f4:	00278793          	addi	a5,a5,2
   153f8:	fe079f23          	sh	zero,-2(a5)
   153fc:	fee79ce3          	bne	a5,a4,153f4 <emul+0x294>
   15400:	01245783          	lhu	a5,18(s0)
   15404:	00008737          	lui	a4,0x8
   15408:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   1540c:	00e7e7b3          	or	a5,a5,a4
   15410:	00f41923          	sh	a5,18(s0)
   15414:	f39ff06f          	j	1534c <emul+0x1ec>
   15418:	01440713          	addi	a4,s0,20
   1541c:	00095783          	lhu	a5,0(s2)
   15420:	00240413          	addi	s0,s0,2
   15424:	00290913          	addi	s2,s2,2
   15428:	fef41f23          	sh	a5,-2(s0)
   1542c:	fee418e3          	bne	s0,a4,1541c <emul+0x2bc>
   15430:	f1dff06f          	j	1534c <emul+0x1ec>
   15434:	01040713          	addi	a4,s0,16
   15438:	00040793          	mv	a5,s0
   1543c:	00278793          	addi	a5,a5,2
   15440:	fe079f23          	sh	zero,-2(a5)
   15444:	fee79ce3          	bne	a5,a4,1543c <emul+0x2dc>
   15448:	ffffc7b7          	lui	a5,0xffffc
   1544c:	00f41823          	sh	a5,16(s0)
   15450:	ffff87b7          	lui	a5,0xffff8
   15454:	fff7c793          	not	a5,a5
   15458:	00f41923          	sh	a5,18(s0)
   1545c:	ef1ff06f          	j	1534c <emul+0x1ec>
   15460:	01290693          	addi	a3,s2,18
   15464:	da1ff06f          	j	15204 <emul+0xa4>
   15468:	00098713          	mv	a4,s3
   1546c:	00098913          	mv	s2,s3
   15470:	02410793          	addi	a5,sp,36
   15474:	03810693          	addi	a3,sp,56
   15478:	02071263          	bnez	a4,1549c <emul+0x33c>
   1547c:	16d78a63          	beq	a5,a3,155f0 <emul+0x490>
   15480:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31a0>
   15484:	00278793          	addi	a5,a5,2
   15488:	fe070ae3          	beqz	a4,1547c <emul+0x31c>
   1548c:	02010513          	addi	a0,sp,32
   15490:	9bcff0ef          	jal	ra,1464c <enormlz>
   15494:	02215703          	lhu	a4,34(sp)
   15498:	40a98933          	sub	s2,s3,a0
   1549c:	02015783          	lhu	a5,32(sp)
   154a0:	038a0993          	addi	s3,s4,56
   154a4:	02ea1b23          	sh	a4,54(s4)
   154a8:	02fa1a23          	sh	a5,52(s4)
   154ac:	04ea0713          	addi	a4,s4,78
   154b0:	00098793          	mv	a5,s3
   154b4:	00079023          	sh	zero,0(a5)
   154b8:	00278793          	addi	a5,a5,2
   154bc:	fef71ce3          	bne	a4,a5,154b4 <emul+0x354>
   154c0:	04ca0c13          	addi	s8,s4,76
   154c4:	00000b93          	li	s7,0
   154c8:	01810a93          	addi	s5,sp,24
   154cc:	00410c93          	addi	s9,sp,4
   154d0:	04210b13          	addi	s6,sp,66
   154d4:	000ad503          	lhu	a0,0(s5)
   154d8:	ffea8a93          	addi	s5,s5,-2
   154dc:	08051c63          	bnez	a0,15574 <emul+0x414>
   154e0:	04ca5783          	lhu	a5,76(s4)
   154e4:	000c0713          	mv	a4,s8
   154e8:	00fbebb3          	or	s7,s7,a5
   154ec:	ffe75603          	lhu	a2,-2(a4)
   154f0:	ffe70713          	addi	a4,a4,-2
   154f4:	00c71123          	sh	a2,2(a4)
   154f8:	fee99ae3          	bne	s3,a4,154ec <emul+0x38c>
   154fc:	020a1c23          	sh	zero,56(s4)
   15500:	fd9a9ae3          	bne	s5,s9,154d4 <emul+0x374>
   15504:	034a0713          	addi	a4,s4,52
   15508:	02010793          	addi	a5,sp,32
   1550c:	03a10613          	addi	a2,sp,58
   15510:	00075683          	lhu	a3,0(a4)
   15514:	00278793          	addi	a5,a5,2
   15518:	00270713          	addi	a4,a4,2
   1551c:	fed79f23          	sh	a3,-2(a5)
   15520:	fef618e3          	bne	a2,a5,15510 <emul+0x3b0>
   15524:	ffffc6b7          	lui	a3,0xffffc
   15528:	012484b3          	add	s1,s1,s2
   1552c:	00268693          	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd71a2>
   15530:	000b8593          	mv	a1,s7
   15534:	02010513          	addi	a0,sp,32
   15538:	000a0793          	mv	a5,s4
   1553c:	04000713          	li	a4,64
   15540:	00d486b3          	add	a3,s1,a3
   15544:	00000613          	li	a2,0
   15548:	e90ff0ef          	jal	ra,14bd8 <emdnorm>
   1554c:	02015703          	lhu	a4,32(sp)
   15550:	00015783          	lhu	a5,0(sp)
   15554:	00040593          	mv	a1,s0
   15558:	02010513          	addi	a0,sp,32
   1555c:	40e787b3          	sub	a5,a5,a4
   15560:	00f037b3          	snez	a5,a5
   15564:	40f007bb          	negw	a5,a5
   15568:	02f11023          	sh	a5,32(sp)
   1556c:	824ff0ef          	jal	ra,14590 <emovo.constprop.0>
   15570:	dddff06f          	j	1534c <emul+0x1ec>
   15574:	04010613          	addi	a2,sp,64
   15578:	02010593          	addi	a1,sp,32
   1557c:	f39fe0ef          	jal	ra,144b4 <m16m>
   15580:	000c0513          	mv	a0,s8
   15584:	00000593          	li	a1,0
   15588:	05810613          	addi	a2,sp,88
   1558c:	00055783          	lhu	a5,0(a0)
   15590:	00065703          	lhu	a4,0(a2)
   15594:	ffe50513          	addi	a0,a0,-2
   15598:	ffe60613          	addi	a2,a2,-2
   1559c:	00f70733          	add	a4,a4,a5
   155a0:	00b70733          	add	a4,a4,a1
   155a4:	01075593          	srli	a1,a4,0x10
   155a8:	00e51123          	sh	a4,2(a0)
   155ac:	0015f593          	andi	a1,a1,1
   155b0:	fd661ee3          	bne	a2,s6,1558c <emul+0x42c>
   155b4:	f2dff06f          	j	154e0 <emul+0x380>
   155b8:	00000793          	li	a5,0
   155bc:	e21ff06f          	j	153dc <emul+0x27c>
   155c0:	00000893          	li	a7,0
   155c4:	cbdff06f          	j	15280 <emul+0x120>
   155c8:	000087b7          	lui	a5,0x8
   155cc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   155d0:	e8f588e3          	beq	a1,a5,15460 <emul+0x300>
   155d4:	0124d503          	lhu	a0,18(s1)
   155d8:	c81ff06f          	j	15258 <emul+0xf8>
   155dc:	01440793          	addi	a5,s0,20
   155e0:	00240413          	addi	s0,s0,2
   155e4:	fe041f23          	sh	zero,-2(s0)
   155e8:	fe879ce3          	bne	a5,s0,155e0 <emul+0x480>
   155ec:	d61ff06f          	j	1534c <emul+0x1ec>
   155f0:	01440793          	addi	a5,s0,20
   155f4:	00240413          	addi	s0,s0,2
   155f8:	fe041f23          	sh	zero,-2(s0)
   155fc:	fe879ce3          	bne	a5,s0,155f4 <emul+0x494>
   15600:	d4dff06f          	j	1534c <emul+0x1ec>
   15604:	0124d503          	lhu	a0,18(s1)
   15608:	000087b7          	lui	a5,0x8
   1560c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15610:	00f575b3          	and	a1,a0,a5
   15614:	01248993          	addi	s3,s1,18
   15618:	00058813          	mv	a6,a1
   1561c:	d6f59ee3          	bne	a1,a5,15398 <emul+0x238>
   15620:	c39ff06f          	j	15258 <emul+0xf8>

0000000000015624 <ediv>:
   15624:	01255783          	lhu	a5,18(a0)
   15628:	f2010113          	addi	sp,sp,-224
   1562c:	0c813823          	sd	s0,208(sp)
   15630:	fff7c793          	not	a5,a5
   15634:	0c913423          	sd	s1,200(sp)
   15638:	0d213023          	sd	s2,192(sp)
   1563c:	0b313c23          	sd	s3,184(sp)
   15640:	0c113c23          	sd	ra,216(sp)
   15644:	0b413823          	sd	s4,176(sp)
   15648:	0b513423          	sd	s5,168(sp)
   1564c:	0b613023          	sd	s6,160(sp)
   15650:	09713c23          	sd	s7,152(sp)
   15654:	09813823          	sd	s8,144(sp)
   15658:	09913423          	sd	s9,136(sp)
   1565c:	09a13023          	sd	s10,128(sp)
   15660:	07b13c23          	sd	s11,120(sp)
   15664:	03179713          	slli	a4,a5,0x31
   15668:	00050493          	mv	s1,a0
   1566c:	00058913          	mv	s2,a1
   15670:	00060413          	mv	s0,a2
   15674:	00068993          	mv	s3,a3
   15678:	00071e63          	bnez	a4,15694 <ediv+0x70>
   1567c:	01250693          	addi	a3,a0,18
   15680:	00050793          	mv	a5,a0
   15684:	0007d703          	lhu	a4,0(a5)
   15688:	00278793          	addi	a5,a5,2
   1568c:	30071463          	bnez	a4,15994 <ediv+0x370>
   15690:	fed79ae3          	bne	a5,a3,15684 <ediv+0x60>
   15694:	01295783          	lhu	a5,18(s2)
   15698:	fff7c793          	not	a5,a5
   1569c:	03179713          	slli	a4,a5,0x31
   156a0:	00071e63          	bnez	a4,156bc <ediv+0x98>
   156a4:	01290693          	addi	a3,s2,18
   156a8:	00090793          	mv	a5,s2
   156ac:	0007d703          	lhu	a4,0(a5)
   156b0:	00278793          	addi	a5,a5,2
   156b4:	2e071e63          	bnez	a4,159b0 <ediv+0x38c>
   156b8:	fed79ae3          	bne	a5,a3,156ac <ediv+0x88>
   156bc:	0000d597          	auipc	a1,0xd
   156c0:	9ec58593          	addi	a1,a1,-1556 # 220a8 <ezero>
   156c4:	00048513          	mv	a0,s1
   156c8:	bd0ff0ef          	jal	ra,14a98 <ecmp>
   156cc:	30050063          	beqz	a0,159cc <ediv+0x3a8>
   156d0:	0124d603          	lhu	a2,18(s1)
   156d4:	01295583          	lhu	a1,18(s2)
   156d8:	000087b7          	lui	a5,0x8
   156dc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   156e0:	00f67533          	and	a0,a2,a5
   156e4:	00f5f6b3          	and	a3,a1,a5
   156e8:	0af51663          	bne	a0,a5,15794 <ediv+0x170>
   156ec:	01248813          	addi	a6,s1,18
   156f0:	00048793          	mv	a5,s1
   156f4:	0007d703          	lhu	a4,0(a5)
   156f8:	00278793          	addi	a5,a5,2
   156fc:	08071863          	bnez	a4,1578c <ediv+0x168>
   15700:	ff079ae3          	bne	a5,a6,156f4 <ediv+0xd0>
   15704:	000087b7          	lui	a5,0x8
   15708:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   1570c:	2cf69e63          	bne	a3,a5,159e8 <ediv+0x3c4>
   15710:	01290693          	addi	a3,s2,18
   15714:	00090793          	mv	a5,s2
   15718:	0007d703          	lhu	a4,0(a5)
   1571c:	00278793          	addi	a5,a5,2
   15720:	4a071063          	bnez	a4,15bc0 <ediv+0x59c>
   15724:	fed79ae3          	bne	a5,a3,15718 <ediv+0xf4>
   15728:	01040713          	addi	a4,s0,16
   1572c:	00040793          	mv	a5,s0
   15730:	00278793          	addi	a5,a5,2
   15734:	fe079f23          	sh	zero,-2(a5)
   15738:	fee79ce3          	bne	a5,a4,15730 <ediv+0x10c>
   1573c:	ffffc7b7          	lui	a5,0xffffc
   15740:	00f41823          	sh	a5,16(s0)
   15744:	ffff87b7          	lui	a5,0xffff8
   15748:	fff7c793          	not	a5,a5
   1574c:	00f41923          	sh	a5,18(s0)
   15750:	0d813083          	ld	ra,216(sp)
   15754:	0d013403          	ld	s0,208(sp)
   15758:	0c813483          	ld	s1,200(sp)
   1575c:	0c013903          	ld	s2,192(sp)
   15760:	0b813983          	ld	s3,184(sp)
   15764:	0b013a03          	ld	s4,176(sp)
   15768:	0a813a83          	ld	s5,168(sp)
   1576c:	0a013b03          	ld	s6,160(sp)
   15770:	09813b83          	ld	s7,152(sp)
   15774:	09013c03          	ld	s8,144(sp)
   15778:	08813c83          	ld	s9,136(sp)
   1577c:	08013d03          	ld	s10,128(sp)
   15780:	07813d83          	ld	s11,120(sp)
   15784:	0e010113          	addi	sp,sp,224
   15788:	00008067          	ret
   1578c:	000087b7          	lui	a5,0x8
   15790:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15794:	26f68463          	beq	a3,a5,159fc <ediv+0x3d8>
   15798:	00048513          	mv	a0,s1
   1579c:	01010593          	addi	a1,sp,16
   157a0:	a40ff0ef          	jal	ra,149e0 <emovi>
   157a4:	03010593          	addi	a1,sp,48
   157a8:	00090513          	mv	a0,s2
   157ac:	a34ff0ef          	jal	ra,149e0 <emovi>
   157b0:	03215a83          	lhu	s5,50(sp)
   157b4:	01215483          	lhu	s1,18(sp)
   157b8:	2c0a8a63          	beqz	s5,15a8c <ediv+0x468>
   157bc:	01513423          	sd	s5,8(sp)
   157c0:	00048613          	mv	a2,s1
   157c4:	00913023          	sd	s1,0(sp)
   157c8:	01410793          	addi	a5,sp,20
   157cc:	02810693          	addi	a3,sp,40
   157d0:	02061263          	bnez	a2,157f4 <ediv+0x1d0>
   157d4:	3ad78863          	beq	a5,a3,15b84 <ediv+0x560>
   157d8:	0007d703          	lhu	a4,0(a5)
   157dc:	00278793          	addi	a5,a5,2
   157e0:	fe070ae3          	beqz	a4,157d4 <ediv+0x1b0>
   157e4:	01010513          	addi	a0,sp,16
   157e8:	e65fe0ef          	jal	ra,1464c <enormlz>
   157ec:	40a487b3          	sub	a5,s1,a0
   157f0:	00f13023          	sd	a5,0(sp)
   157f4:	03012703          	lw	a4,48(sp)
   157f8:	03898a93          	addi	s5,s3,56
   157fc:	000a8793          	mv	a5,s5
   15800:	02e9aa23          	sw	a4,52(s3)
   15804:	04e98493          	addi	s1,s3,78
   15808:	00278793          	addi	a5,a5,2
   1580c:	fe079f23          	sh	zero,-2(a5)
   15810:	fef49ce3          	bne	s1,a5,15808 <ediv+0x1e4>
   15814:	03010513          	addi	a0,sp,48
   15818:	bc9fe0ef          	jal	ra,143e0 <eshdn1>
   1581c:	01615b03          	lhu	s6,22(sp)
   15820:	00010937          	lui	s2,0x10
   15824:	04810c13          	addi	s8,sp,72
   15828:	010b1a13          	slli	s4,s6,0x10
   1582c:	416a0a33          	sub	s4,s4,s6
   15830:	03210c93          	addi	s9,sp,50
   15834:	fff90913          	addi	s2,s2,-1 # ffff <register_fini-0xb1>
   15838:	06a10d13          	addi	s10,sp,106
   1583c:	05210d93          	addi	s11,sp,82
   15840:	03415783          	lhu	a5,52(sp)
   15844:	03615703          	lhu	a4,54(sp)
   15848:	00090b93          	mv	s7,s2
   1584c:	01079793          	slli	a5,a5,0x10
   15850:	00e78533          	add	a0,a5,a4
   15854:	00aa6a63          	bltu	s4,a0,15868 <ediv+0x244>
   15858:	000b0593          	mv	a1,s6
   1585c:	4d00c0ef          	jal	ra,21d2c <__udivdi3>
   15860:	03051b93          	slli	s7,a0,0x30
   15864:	030bdb93          	srli	s7,s7,0x30
   15868:	05010613          	addi	a2,sp,80
   1586c:	01010593          	addi	a1,sp,16
   15870:	000b8513          	mv	a0,s7
   15874:	c41fe0ef          	jal	ra,144b4 <m16m>
   15878:	03410713          	addi	a4,sp,52
   1587c:	05410793          	addi	a5,sp,84
   15880:	0007d603          	lhu	a2,0(a5)
   15884:	00075683          	lhu	a3,0(a4)
   15888:	00278793          	addi	a5,a5,2
   1588c:	00270713          	addi	a4,a4,2
   15890:	22d61663          	bne	a2,a3,15abc <ediv+0x498>
   15894:	ffa796e3          	bne	a5,s10,15880 <ediv+0x25c>
   15898:	00000793          	li	a5,0
   1589c:	06810693          	addi	a3,sp,104
   158a0:	000c0613          	mv	a2,s8
   158a4:	00065703          	lhu	a4,0(a2)
   158a8:	0006d583          	lhu	a1,0(a3)
   158ac:	ffe60613          	addi	a2,a2,-2
   158b0:	40f70733          	sub	a4,a4,a5
   158b4:	40b70733          	sub	a4,a4,a1
   158b8:	01075793          	srli	a5,a4,0x10
   158bc:	00e61123          	sh	a4,2(a2)
   158c0:	0017f793          	andi	a5,a5,1
   158c4:	ffe68693          	addi	a3,a3,-2
   158c8:	fd961ee3          	bne	a2,s9,158a4 <ediv+0x280>
   158cc:	017a9023          	sh	s7,0(s5)
   158d0:	03410793          	addi	a5,sp,52
   158d4:	0027d703          	lhu	a4,2(a5)
   158d8:	00278793          	addi	a5,a5,2
   158dc:	fee79f23          	sh	a4,-2(a5)
   158e0:	ff879ae3          	bne	a5,s8,158d4 <ediv+0x2b0>
   158e4:	04011423          	sh	zero,72(sp)
   158e8:	002a8a93          	addi	s5,s5,2
   158ec:	f5549ae3          	bne	s1,s5,15840 <ediv+0x21c>
   158f0:	00000713          	li	a4,0
   158f4:	03410793          	addi	a5,sp,52
   158f8:	04a10613          	addi	a2,sp,74
   158fc:	0007d683          	lhu	a3,0(a5)
   15900:	00278793          	addi	a5,a5,2
   15904:	00d76733          	or	a4,a4,a3
   15908:	fec79ae3          	bne	a5,a2,158fc <ediv+0x2d8>
   1590c:	0107179b          	slliw	a5,a4,0x10
   15910:	4107d79b          	sraiw	a5,a5,0x10
   15914:	00078463          	beqz	a5,1591c <ediv+0x2f8>
   15918:	00100713          	li	a4,1
   1591c:	03071593          	slli	a1,a4,0x30
   15920:	0305d593          	srli	a1,a1,0x30
   15924:	03498713          	addi	a4,s3,52
   15928:	03010793          	addi	a5,sp,48
   1592c:	00075683          	lhu	a3,0(a4)
   15930:	00278793          	addi	a5,a5,2
   15934:	00270713          	addi	a4,a4,2
   15938:	fed79f23          	sh	a3,-2(a5)
   1593c:	fef618e3          	bne	a2,a5,1592c <ediv+0x308>
   15940:	00813783          	ld	a5,8(sp)
   15944:	00013703          	ld	a4,0(sp)
   15948:	000046b7          	lui	a3,0x4
   1594c:	fff68693          	addi	a3,a3,-1 # 3fff <register_fini-0xc0b1>
   15950:	40e78ab3          	sub	s5,a5,a4
   15954:	03010513          	addi	a0,sp,48
   15958:	00098793          	mv	a5,s3
   1595c:	04000713          	li	a4,64
   15960:	00da86b3          	add	a3,s5,a3
   15964:	00000613          	li	a2,0
   15968:	a70ff0ef          	jal	ra,14bd8 <emdnorm>
   1596c:	03015703          	lhu	a4,48(sp)
   15970:	01015783          	lhu	a5,16(sp)
   15974:	00040593          	mv	a1,s0
   15978:	03010513          	addi	a0,sp,48
   1597c:	40e787b3          	sub	a5,a5,a4
   15980:	00f037b3          	snez	a5,a5
   15984:	40f007bb          	negw	a5,a5
   15988:	02f11823          	sh	a5,48(sp)
   1598c:	c05fe0ef          	jal	ra,14590 <emovo.constprop.0>
   15990:	dc1ff06f          	j	15750 <ediv+0x12c>
   15994:	01448713          	addi	a4,s1,20
   15998:	0004d783          	lhu	a5,0(s1)
   1599c:	00248493          	addi	s1,s1,2
   159a0:	00240413          	addi	s0,s0,2
   159a4:	fef41f23          	sh	a5,-2(s0)
   159a8:	fee498e3          	bne	s1,a4,15998 <ediv+0x374>
   159ac:	da5ff06f          	j	15750 <ediv+0x12c>
   159b0:	01490713          	addi	a4,s2,20
   159b4:	00095783          	lhu	a5,0(s2)
   159b8:	00290913          	addi	s2,s2,2
   159bc:	00240413          	addi	s0,s0,2
   159c0:	fef41f23          	sh	a5,-2(s0)
   159c4:	fee918e3          	bne	s2,a4,159b4 <ediv+0x390>
   159c8:	d89ff06f          	j	15750 <ediv+0x12c>
   159cc:	0000c597          	auipc	a1,0xc
   159d0:	6dc58593          	addi	a1,a1,1756 # 220a8 <ezero>
   159d4:	00090513          	mv	a0,s2
   159d8:	8c0ff0ef          	jal	ra,14a98 <ecmp>
   159dc:	ce051ae3          	bnez	a0,156d0 <ediv+0xac>
   159e0:	d49ff06f          	j	15728 <ediv+0x104>
   159e4:	da080ae3          	beqz	a6,15798 <ediv+0x174>
   159e8:	01440793          	addi	a5,s0,20
   159ec:	00240413          	addi	s0,s0,2
   159f0:	fe041f23          	sh	zero,-2(s0)
   159f4:	fef41ce3          	bne	s0,a5,159ec <ediv+0x3c8>
   159f8:	d59ff06f          	j	15750 <ediv+0x12c>
   159fc:	00000813          	li	a6,0
   15a00:	01290693          	addi	a3,s2,18
   15a04:	00090793          	mv	a5,s2
   15a08:	0007d703          	lhu	a4,0(a5)
   15a0c:	00278793          	addi	a5,a5,2
   15a10:	fc071ae3          	bnez	a4,159e4 <ediv+0x3c0>
   15a14:	fed79ae3          	bne	a5,a3,15a08 <ediv+0x3e4>
   15a18:	000087b7          	lui	a5,0x8
   15a1c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15a20:	04f50a63          	beq	a0,a5,15a74 <ediv+0x450>
   15a24:	00f65613          	srli	a2,a2,0xf
   15a28:	00095783          	lhu	a5,0(s2)
   15a2c:	00290913          	addi	s2,s2,2
   15a30:	18079063          	bnez	a5,15bb0 <ediv+0x58c>
   15a34:	fed91ae3          	bne	s2,a3,15a28 <ediv+0x404>
   15a38:	00f5d593          	srli	a1,a1,0xf
   15a3c:	00c58463          	beq	a1,a2,15a44 <ediv+0x420>
   15a40:	00008737          	lui	a4,0x8
   15a44:	00e41923          	sh	a4,18(s0)
   15a48:	00040793          	mv	a5,s0
   15a4c:	01240713          	addi	a4,s0,18
   15a50:	00278793          	addi	a5,a5,2
   15a54:	fe079f23          	sh	zero,-2(a5)
   15a58:	fee79ce3          	bne	a5,a4,15a50 <ediv+0x42c>
   15a5c:	01245783          	lhu	a5,18(s0)
   15a60:	00008737          	lui	a4,0x8
   15a64:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15a68:	00e7e7b3          	or	a5,a5,a4
   15a6c:	00f41923          	sh	a5,18(s0)
   15a70:	ce1ff06f          	j	15750 <ediv+0x12c>
   15a74:	01248513          	addi	a0,s1,18
   15a78:	0004d783          	lhu	a5,0(s1)
   15a7c:	00248493          	addi	s1,s1,2
   15a80:	12079c63          	bnez	a5,15bb8 <ediv+0x594>
   15a84:	fea49ae3          	bne	s1,a0,15a78 <ediv+0x454>
   15a88:	f9dff06f          	j	15a24 <ediv+0x400>
   15a8c:	03410793          	addi	a5,sp,52
   15a90:	04810c13          	addi	s8,sp,72
   15a94:	0cfc0e63          	beq	s8,a5,15b70 <ediv+0x54c>
   15a98:	0007d703          	lhu	a4,0(a5)
   15a9c:	00278793          	addi	a5,a5,2
   15aa0:	fe070ae3          	beqz	a4,15a94 <ediv+0x470>
   15aa4:	03010513          	addi	a0,sp,48
   15aa8:	ba5fe0ef          	jal	ra,1464c <enormlz>
   15aac:	40a007b3          	neg	a5,a0
   15ab0:	01215603          	lhu	a2,18(sp)
   15ab4:	00f13423          	sd	a5,8(sp)
   15ab8:	d0dff06f          	j	157c4 <ediv+0x1a0>
   15abc:	dcc6fee3          	bgeu	a3,a2,15898 <ediv+0x274>
   15ac0:	fffb879b          	addiw	a5,s7,-1
   15ac4:	03079893          	slli	a7,a5,0x30
   15ac8:	0308d893          	srli	a7,a7,0x30
   15acc:	00000693          	li	a3,0
   15ad0:	02810613          	addi	a2,sp,40
   15ad4:	06810713          	addi	a4,sp,104
   15ad8:	00075783          	lhu	a5,0(a4)
   15adc:	00065583          	lhu	a1,0(a2)
   15ae0:	ffe70713          	addi	a4,a4,-2
   15ae4:	40d787b3          	sub	a5,a5,a3
   15ae8:	40b787b3          	sub	a5,a5,a1
   15aec:	0107d693          	srli	a3,a5,0x10
   15af0:	00f71123          	sh	a5,2(a4)
   15af4:	0016f693          	andi	a3,a3,1
   15af8:	ffe60613          	addi	a2,a2,-2
   15afc:	fdb71ee3          	bne	a4,s11,15ad8 <ediv+0x4b4>
   15b00:	03410713          	addi	a4,sp,52
   15b04:	05410793          	addi	a5,sp,84
   15b08:	0007d603          	lhu	a2,0(a5)
   15b0c:	00075683          	lhu	a3,0(a4)
   15b10:	00278793          	addi	a5,a5,2
   15b14:	00270713          	addi	a4,a4,2
   15b18:	00d61863          	bne	a2,a3,15b28 <ediv+0x504>
   15b1c:	ffa796e3          	bne	a5,s10,15b08 <ediv+0x4e4>
   15b20:	00088b93          	mv	s7,a7
   15b24:	d75ff06f          	j	15898 <ediv+0x274>
   15b28:	fec6fce3          	bgeu	a3,a2,15b20 <ediv+0x4fc>
   15b2c:	ffeb851b          	addiw	a0,s7,-2
   15b30:	03051b93          	slli	s7,a0,0x30
   15b34:	030bdb93          	srli	s7,s7,0x30
   15b38:	00000693          	li	a3,0
   15b3c:	02810613          	addi	a2,sp,40
   15b40:	06810713          	addi	a4,sp,104
   15b44:	00075783          	lhu	a5,0(a4)
   15b48:	00065583          	lhu	a1,0(a2)
   15b4c:	ffe70713          	addi	a4,a4,-2
   15b50:	40d787b3          	sub	a5,a5,a3
   15b54:	40b787b3          	sub	a5,a5,a1
   15b58:	0107d693          	srli	a3,a5,0x10
   15b5c:	00f71123          	sh	a5,2(a4)
   15b60:	0016f693          	andi	a3,a3,1
   15b64:	ffe60613          	addi	a2,a2,-2
   15b68:	fdb71ee3          	bne	a4,s11,15b44 <ediv+0x520>
   15b6c:	d2dff06f          	j	15898 <ediv+0x274>
   15b70:	01440793          	addi	a5,s0,20
   15b74:	00240413          	addi	s0,s0,2
   15b78:	fe041f23          	sh	zero,-2(s0)
   15b7c:	fef41ce3          	bne	s0,a5,15b74 <ediv+0x550>
   15b80:	bd1ff06f          	j	15750 <ediv+0x12c>
   15b84:	01015703          	lhu	a4,16(sp)
   15b88:	03015783          	lhu	a5,48(sp)
   15b8c:	00f70463          	beq	a4,a5,15b94 <ediv+0x570>
   15b90:	00008637          	lui	a2,0x8
   15b94:	00c41923          	sh	a2,18(s0)
   15b98:	01240713          	addi	a4,s0,18
   15b9c:	00040793          	mv	a5,s0
   15ba0:	00278793          	addi	a5,a5,2
   15ba4:	fe079f23          	sh	zero,-2(a5)
   15ba8:	fef71ce3          	bne	a4,a5,15ba0 <ediv+0x57c>
   15bac:	eb1ff06f          	j	15a5c <ediv+0x438>
   15bb0:	00000593          	li	a1,0
   15bb4:	e89ff06f          	j	15a3c <ediv+0x418>
   15bb8:	00000613          	li	a2,0
   15bbc:	e6dff06f          	j	15a28 <ediv+0x404>
   15bc0:	00100813          	li	a6,1
   15bc4:	e41ff06f          	j	15a04 <ediv+0x3e0>

0000000000015bc8 <e113toe.isra.0>:
   15bc8:	fd010113          	addi	sp,sp,-48
   15bcc:	02813023          	sd	s0,32(sp)
   15bd0:	02113423          	sd	ra,40(sp)
   15bd4:	00058413          	mv	s0,a1
   15bd8:	00010793          	mv	a5,sp
   15bdc:	01a10713          	addi	a4,sp,26
   15be0:	00278793          	addi	a5,a5,2
   15be4:	fe079f23          	sh	zero,-2(a5)
   15be8:	fee79ce3          	bne	a5,a4,15be0 <e113toe.isra.0+0x18>
   15bec:	00e55783          	lhu	a5,14(a0)
   15bf0:	00f7d713          	srli	a4,a5,0xf
   15bf4:	06071c63          	bnez	a4,15c6c <e113toe.isra.0+0xa4>
   15bf8:	00008737          	lui	a4,0x8
   15bfc:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15c00:	00e7f6b3          	and	a3,a5,a4
   15c04:	00011023          	sh	zero,0(sp)
   15c08:	00068613          	mv	a2,a3
   15c0c:	06e68e63          	beq	a3,a4,15c88 <e113toe.isra.0+0xc0>
   15c10:	00e50793          	addi	a5,a0,14
   15c14:	00d11123          	sh	a3,2(sp)
   15c18:	00610713          	addi	a4,sp,6
   15c1c:	ffe7d683          	lhu	a3,-2(a5)
   15c20:	ffe78793          	addi	a5,a5,-2
   15c24:	00270713          	addi	a4,a4,2
   15c28:	fed71f23          	sh	a3,-2(a4)
   15c2c:	fef518e3          	bne	a0,a5,15c1c <e113toe.isra.0+0x54>
   15c30:	02061263          	bnez	a2,15c54 <e113toe.isra.0+0x8c>
   15c34:	00011223          	sh	zero,4(sp)
   15c38:	00040593          	mv	a1,s0
   15c3c:	00010513          	mv	a0,sp
   15c40:	951fe0ef          	jal	ra,14590 <emovo.constprop.0>
   15c44:	02813083          	ld	ra,40(sp)
   15c48:	02013403          	ld	s0,32(sp)
   15c4c:	03010113          	addi	sp,sp,48
   15c50:	00008067          	ret
   15c54:	00100793          	li	a5,1
   15c58:	fff00593          	li	a1,-1
   15c5c:	00010513          	mv	a0,sp
   15c60:	00f11223          	sh	a5,4(sp)
   15c64:	b5dfe0ef          	jal	ra,147c0 <eshift.part.0>
   15c68:	fd1ff06f          	j	15c38 <e113toe.isra.0+0x70>
   15c6c:	fff00713          	li	a4,-1
   15c70:	00e11023          	sh	a4,0(sp)
   15c74:	00008737          	lui	a4,0x8
   15c78:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15c7c:	00e7f6b3          	and	a3,a5,a4
   15c80:	00068613          	mv	a2,a3
   15c84:	f8e696e3          	bne	a3,a4,15c10 <e113toe.isra.0+0x48>
   15c88:	00050793          	mv	a5,a0
   15c8c:	00e50693          	addi	a3,a0,14
   15c90:	0007d703          	lhu	a4,0(a5)
   15c94:	00278793          	addi	a5,a5,2
   15c98:	06071c63          	bnez	a4,15d10 <e113toe.isra.0+0x148>
   15c9c:	fef69ae3          	bne	a3,a5,15c90 <e113toe.isra.0+0xc8>
   15ca0:	01440713          	addi	a4,s0,20
   15ca4:	00040793          	mv	a5,s0
   15ca8:	00278793          	addi	a5,a5,2
   15cac:	fe079f23          	sh	zero,-2(a5)
   15cb0:	fee79ce3          	bne	a5,a4,15ca8 <e113toe.isra.0+0xe0>
   15cb4:	01240713          	addi	a4,s0,18
   15cb8:	00040793          	mv	a5,s0
   15cbc:	00278793          	addi	a5,a5,2
   15cc0:	fe079f23          	sh	zero,-2(a5)
   15cc4:	fef71ce3          	bne	a4,a5,15cbc <e113toe.isra.0+0xf4>
   15cc8:	01245783          	lhu	a5,18(s0)
   15ccc:	000086b7          	lui	a3,0x8
   15cd0:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   15cd4:	00d7e7b3          	or	a5,a5,a3
   15cd8:	03079793          	slli	a5,a5,0x30
   15cdc:	0307d793          	srli	a5,a5,0x30
   15ce0:	00f41923          	sh	a5,18(s0)
   15ce4:	00e51683          	lh	a3,14(a0)
   15ce8:	f406dee3          	bgez	a3,15c44 <e113toe.isra.0+0x7c>
   15cec:	00040693          	mv	a3,s0
   15cf0:	0006d603          	lhu	a2,0(a3)
   15cf4:	00268693          	addi	a3,a3,2
   15cf8:	f40616e3          	bnez	a2,15c44 <e113toe.isra.0+0x7c>
   15cfc:	fed71ae3          	bne	a4,a3,15cf0 <e113toe.isra.0+0x128>
   15d00:	ffff8737          	lui	a4,0xffff8
   15d04:	00e7c7b3          	xor	a5,a5,a4
   15d08:	00f41923          	sh	a5,18(s0)
   15d0c:	f39ff06f          	j	15c44 <e113toe.isra.0+0x7c>
   15d10:	01040713          	addi	a4,s0,16
   15d14:	00040793          	mv	a5,s0
   15d18:	00278793          	addi	a5,a5,2
   15d1c:	fe079f23          	sh	zero,-2(a5)
   15d20:	fee79ce3          	bne	a5,a4,15d18 <e113toe.isra.0+0x150>
   15d24:	ffffc7b7          	lui	a5,0xffffc
   15d28:	00f41823          	sh	a5,16(s0)
   15d2c:	ffff87b7          	lui	a5,0xffff8
   15d30:	fff7c793          	not	a5,a5
   15d34:	00f41923          	sh	a5,18(s0)
   15d38:	f0dff06f          	j	15c44 <e113toe.isra.0+0x7c>

0000000000015d3c <_ldtoa_r>:
   15d3c:	db010113          	addi	sp,sp,-592
   15d40:	09100313          	li	t1,145
   15d44:	04c13423          	sd	a2,72(sp)
   15d48:	06053e03          	ld	t3,96(a0)
   15d4c:	02031613          	slli	a2,t1,0x20
   15d50:	fff60613          	addi	a2,a2,-1 # 7fff <register_fini-0x80b1>
   15d54:	24813023          	sd	s0,576(sp)
   15d58:	23413023          	sd	s4,544(sp)
   15d5c:	21613823          	sd	s6,528(sp)
   15d60:	24113423          	sd	ra,584(sp)
   15d64:	22913c23          	sd	s1,568(sp)
   15d68:	23213823          	sd	s2,560(sp)
   15d6c:	23313423          	sd	s3,552(sp)
   15d70:	21513c23          	sd	s5,536(sp)
   15d74:	21713423          	sd	s7,520(sp)
   15d78:	21813023          	sd	s8,512(sp)
   15d7c:	1f913c23          	sd	s9,504(sp)
   15d80:	1fa13823          	sd	s10,496(sp)
   15d84:	1fb13423          	sd	s11,488(sp)
   15d88:	04b13023          	sd	a1,64(sp)
   15d8c:	18c13823          	sd	a2,400(sp)
   15d90:	00e13423          	sd	a4,8(sp)
   15d94:	00f13823          	sd	a5,16(sp)
   15d98:	03113023          	sd	a7,32(sp)
   15d9c:	00050a13          	mv	s4,a0
   15da0:	00068b13          	mv	s6,a3
   15da4:	00080413          	mv	s0,a6
   15da8:	020e0263          	beqz	t3,15dcc <_ldtoa_r+0x90>
   15dac:	06852703          	lw	a4,104(a0)
   15db0:	00100793          	li	a5,1
   15db4:	000e0593          	mv	a1,t3
   15db8:	00e797bb          	sllw	a5,a5,a4
   15dbc:	00ee2423          	sw	a4,8(t3)
   15dc0:	00fe2623          	sw	a5,12(t3)
   15dc4:	298020ef          	jal	ra,1805c <_Bfree>
   15dc8:	060a3023          	sd	zero,96(s4)
   15dcc:	07010593          	addi	a1,sp,112
   15dd0:	04010513          	addi	a0,sp,64
   15dd4:	df5ff0ef          	jal	ra,15bc8 <e113toe.isra.0>
   15dd8:	08215683          	lhu	a3,130(sp)
   15ddc:	000087b7          	lui	a5,0x8
   15de0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15de4:	00f6f5b3          	and	a1,a3,a5
   15de8:	00f59e63          	bne	a1,a5,15e04 <_ldtoa_r+0xc8>
   15dec:	07010793          	addi	a5,sp,112
   15df0:	08210613          	addi	a2,sp,130
   15df4:	0007d703          	lhu	a4,0(a5)
   15df8:	00278793          	addi	a5,a5,2
   15dfc:	460718e3          	bnez	a4,16a6c <_ldtoa_r+0xd30>
   15e00:	fec79ae3          	bne	a5,a2,15df4 <_ldtoa_r+0xb8>
   15e04:	00f6d693          	srli	a3,a3,0xf
   15e08:	00d42023          	sw	a3,0(s0)
   15e0c:	00300793          	li	a5,3
   15e10:	12fb0ee3          	beq	s6,a5,1674c <_ldtoa_r+0xa10>
   15e14:	01400793          	li	a5,20
   15e18:	00f13023          	sd	a5,0(sp)
   15e1c:	440b1ce3          	bnez	s6,16a74 <_ldtoa_r+0xd38>
   15e20:	19412703          	lw	a4,404(sp)
   15e24:	000087b7          	lui	a5,0x8
   15e28:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15e2c:	00e13c23          	sd	a4,24(sp)
   15e30:	00f59e63          	bne	a1,a5,15e4c <_ldtoa_r+0x110>
   15e34:	07010793          	addi	a5,sp,112
   15e38:	08210693          	addi	a3,sp,130
   15e3c:	0007d703          	lhu	a4,0(a5)
   15e40:	00278793          	addi	a5,a5,2
   15e44:	180710e3          	bnez	a4,167c4 <_ldtoa_r+0xa88>
   15e48:	fed79ae3          	bne	a5,a3,15e3c <_ldtoa_r+0x100>
   15e4c:	09000793          	li	a5,144
   15e50:	18f12a23          	sw	a5,404(sp)
   15e54:	09010713          	addi	a4,sp,144
   15e58:	07010793          	addi	a5,sp,112
   15e5c:	08410613          	addi	a2,sp,132
   15e60:	0007d683          	lhu	a3,0(a5)
   15e64:	00278793          	addi	a5,a5,2
   15e68:	00270713          	addi	a4,a4,2 # ffffffffffff8002 <__BSS_END__+0xfffffffffffd31a2>
   15e6c:	fed71f23          	sh	a3,-2(a4)
   15e70:	fec798e3          	bne	a5,a2,15e60 <_ldtoa_r+0x124>
   15e74:	0a215603          	lhu	a2,162(sp)
   15e78:	00000913          	li	s2,0
   15e7c:	00f65793          	srli	a5,a2,0xf
   15e80:	60079a63          	bnez	a5,16494 <_ldtoa_r+0x758>
   15e84:	00000693          	li	a3,0
   15e88:	0b010793          	addi	a5,sp,176
   15e8c:	0000c717          	auipc	a4,0xc
   15e90:	23470713          	addi	a4,a4,564 # 220c0 <eone>
   15e94:	0c410d93          	addi	s11,sp,196
   15e98:	0080006f          	j	15ea0 <_ldtoa_r+0x164>
   15e9c:	00075683          	lhu	a3,0(a4)
   15ea0:	00278793          	addi	a5,a5,2
   15ea4:	fed79f23          	sh	a3,-2(a5)
   15ea8:	00270713          	addi	a4,a4,2
   15eac:	ffb798e3          	bne	a5,s11,15e9c <_ldtoa_r+0x160>
   15eb0:	16060a63          	beqz	a2,16024 <_ldtoa_r+0x2e8>
   15eb4:	000087b7          	lui	a5,0x8
   15eb8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15ebc:	56f60ae3          	beq	a2,a5,16c30 <_ldtoa_r+0xef4>
   15ec0:	0a011783          	lh	a5,160(sp)
   15ec4:	5e07d8e3          	bgez	a5,16cb4 <_ldtoa_r+0xf78>
   15ec8:	09010593          	addi	a1,sp,144
   15ecc:	0000c517          	auipc	a0,0xc
   15ed0:	1f450513          	addi	a0,a0,500 # 220c0 <eone>
   15ed4:	bc5fe0ef          	jal	ra,14a98 <ecmp>
   15ed8:	16050263          	beqz	a0,1603c <_ldtoa_r+0x300>
   15edc:	100544e3          	bltz	a0,167e4 <_ldtoa_r+0xaa8>
   15ee0:	0a215783          	lhu	a5,162(sp)
   15ee4:	66079ae3          	bnez	a5,16d58 <_ldtoa_r+0x101c>
   15ee8:	0a011783          	lh	a5,160(sp)
   15eec:	00000493          	li	s1,0
   15ef0:	19010993          	addi	s3,sp,400
   15ef4:	0207c663          	bltz	a5,15f20 <_ldtoa_r+0x1e4>
   15ef8:	0000c417          	auipc	s0,0xc
   15efc:	2d040413          	addi	s0,s0,720 # 221c8 <etens+0xf0>
   15f00:	09010613          	addi	a2,sp,144
   15f04:	00098693          	mv	a3,s3
   15f08:	00060593          	mv	a1,a2
   15f0c:	00040513          	mv	a0,s0
   15f10:	a50ff0ef          	jal	ra,15160 <emul>
   15f14:	0a011783          	lh	a5,160(sp)
   15f18:	fff4849b          	addiw	s1,s1,-1
   15f1c:	fe07d2e3          	bgez	a5,15f00 <_ldtoa_r+0x1c4>
   15f20:	0f010413          	addi	s0,sp,240
   15f24:	10810b93          	addi	s7,sp,264
   15f28:	00040713          	mv	a4,s0
   15f2c:	09010793          	addi	a5,sp,144
   15f30:	0a410613          	addi	a2,sp,164
   15f34:	0007d683          	lhu	a3,0(a5)
   15f38:	00278793          	addi	a5,a5,2
   15f3c:	00270713          	addi	a4,a4,2
   15f40:	fed71f23          	sh	a3,-2(a4)
   15f44:	fec798e3          	bne	a5,a2,15f34 <_ldtoa_r+0x1f8>
   15f48:	00000693          	li	a3,0
   15f4c:	0b010793          	addi	a5,sp,176
   15f50:	0000c717          	auipc	a4,0xc
   15f54:	17070713          	addi	a4,a4,368 # 220c0 <eone>
   15f58:	0080006f          	j	15f60 <_ldtoa_r+0x224>
   15f5c:	00075683          	lhu	a3,0(a4)
   15f60:	00278793          	addi	a5,a5,2
   15f64:	fed79f23          	sh	a3,-2(a5)
   15f68:	00270713          	addi	a4,a4,2
   15f6c:	ffb798e3          	bne	a5,s11,15f5c <_ldtoa_r+0x220>
   15f70:	fffffab7          	lui	s5,0xfffff
   15f74:	0000cc17          	auipc	s8,0xc
   15f78:	164c0c13          	addi	s8,s8,356 # 220d8 <etens>
   15f7c:	0000cc97          	auipc	s9,0xc
   15f80:	264c8c93          	addi	s9,s9,612 # 221e0 <emtens>
   15f84:	0000cd97          	auipc	s11,0xc
   15f88:	13cd8d93          	addi	s11,s11,316 # 220c0 <eone>
   15f8c:	0000cd17          	auipc	s10,0xc
   15f90:	23cd0d13          	addi	s10,s10,572 # 221c8 <etens+0xf0>
   15f94:	00c0006f          	j	15fa0 <_ldtoa_r+0x264>
   15f98:	014c8c93          	addi	s9,s9,20
   15f9c:	014c0c13          	addi	s8,s8,20
   15fa0:	00040593          	mv	a1,s0
   15fa4:	000d8513          	mv	a0,s11
   15fa8:	af1fe0ef          	jal	ra,14a98 <ecmp>
   15fac:	00050793          	mv	a5,a0
   15fb0:	00040593          	mv	a1,s0
   15fb4:	000c8513          	mv	a0,s9
   15fb8:	04f05663          	blez	a5,16004 <_ldtoa_r+0x2c8>
   15fbc:	addfe0ef          	jal	ra,14a98 <ecmp>
   15fc0:	00050793          	mv	a5,a0
   15fc4:	00098693          	mv	a3,s3
   15fc8:	00040613          	mv	a2,s0
   15fcc:	00040593          	mv	a1,s0
   15fd0:	000c0513          	mv	a0,s8
   15fd4:	0207c063          	bltz	a5,15ff4 <_ldtoa_r+0x2b8>
   15fd8:	988ff0ef          	jal	ra,15160 <emul>
   15fdc:	0b010613          	addi	a2,sp,176
   15fe0:	00098693          	mv	a3,s3
   15fe4:	00060593          	mv	a1,a2
   15fe8:	000c0513          	mv	a0,s8
   15fec:	974ff0ef          	jal	ra,15160 <emul>
   15ff0:	009a84bb          	addw	s1,s5,s1
   15ff4:	01fad79b          	srliw	a5,s5,0x1f
   15ff8:	015787bb          	addw	a5,a5,s5
   15ffc:	4017da9b          	sraiw	s5,a5,0x1
   16000:	f9ac1ce3          	bne	s8,s10,15f98 <_ldtoa_r+0x25c>
   16004:	0b010613          	addi	a2,sp,176
   16008:	00098693          	mv	a3,s3
   1600c:	0000c597          	auipc	a1,0xc
   16010:	0b458593          	addi	a1,a1,180 # 220c0 <eone>
   16014:	00060513          	mv	a0,a2
   16018:	e0cff0ef          	jal	ra,15624 <ediv>
   1601c:	15010a93          	addi	s5,sp,336
   16020:	0300006f          	j	16050 <_ldtoa_r+0x314>
   16024:	09010793          	addi	a5,sp,144
   16028:	0a210693          	addi	a3,sp,162
   1602c:	0007d703          	lhu	a4,0(a5)
   16030:	00278793          	addi	a5,a5,2
   16034:	e8071ae3          	bnez	a4,15ec8 <_ldtoa_r+0x18c>
   16038:	fef69ae3          	bne	a3,a5,1602c <_ldtoa_r+0x2f0>
   1603c:	00000493          	li	s1,0
   16040:	15010a93          	addi	s5,sp,336
   16044:	19010993          	addi	s3,sp,400
   16048:	0f010413          	addi	s0,sp,240
   1604c:	10810b93          	addi	s7,sp,264
   16050:	00040593          	mv	a1,s0
   16054:	0b010513          	addi	a0,sp,176
   16058:	989fe0ef          	jal	ra,149e0 <emovi>
   1605c:	0b010713          	addi	a4,sp,176
   16060:	00040793          	mv	a5,s0
   16064:	0007d683          	lhu	a3,0(a5)
   16068:	00278793          	addi	a5,a5,2
   1606c:	00270713          	addi	a4,a4,2
   16070:	fed71f23          	sh	a3,-2(a4)
   16074:	ff7798e3          	bne	a5,s7,16064 <_ldtoa_r+0x328>
   16078:	00040593          	mv	a1,s0
   1607c:	09010513          	addi	a0,sp,144
   16080:	0c011423          	sh	zero,200(sp)
   16084:	95dfe0ef          	jal	ra,149e0 <emovi>
   16088:	09010793          	addi	a5,sp,144
   1608c:	00045703          	lhu	a4,0(s0)
   16090:	00240413          	addi	s0,s0,2
   16094:	00278793          	addi	a5,a5,2
   16098:	fee79f23          	sh	a4,-2(a5)
   1609c:	ff7418e3          	bne	s0,s7,1608c <_ldtoa_r+0x350>
   160a0:	00098613          	mv	a2,s3
   160a4:	09010593          	addi	a1,sp,144
   160a8:	0b010513          	addi	a0,sp,176
   160ac:	0a011423          	sh	zero,168(sp)
   160b0:	f4dfe0ef          	jal	ra,14ffc <eiremain>
   160b4:	1dc15c03          	lhu	s8,476(sp)
   160b8:	1c0c1463          	bnez	s8,16280 <_ldtoa_r+0x544>
   160bc:	0000c417          	auipc	s0,0xc
   160c0:	fec40413          	addi	s0,s0,-20 # 220a8 <ezero>
   160c4:	0a810d13          	addi	s10,sp,168
   160c8:	09210d93          	addi	s11,sp,146
   160cc:	0d210c93          	addi	s9,sp,210
   160d0:	00040593          	mv	a1,s0
   160d4:	09010513          	addi	a0,sp,144
   160d8:	9c1fe0ef          	jal	ra,14a98 <ecmp>
   160dc:	1a050263          	beqz	a0,16280 <_ldtoa_r+0x544>
   160e0:	00000713          	li	a4,0
   160e4:	000d0693          	mv	a3,s10
   160e8:	01c0006f          	j	16104 <_ldtoa_r+0x3c8>
   160ec:	0017171b          	slliw	a4,a4,0x1
   160f0:	00f69023          	sh	a5,0(a3)
   160f4:	03071713          	slli	a4,a4,0x30
   160f8:	ffe68693          	addi	a3,a3,-2
   160fc:	03075713          	srli	a4,a4,0x30
   16100:	05b68263          	beq	a3,s11,16144 <_ldtoa_r+0x408>
   16104:	0006d783          	lhu	a5,0(a3)
   16108:	00f7d613          	srli	a2,a5,0xf
   1610c:	0017979b          	slliw	a5,a5,0x1
   16110:	00060463          	beqz	a2,16118 <_ldtoa_r+0x3dc>
   16114:	00176713          	ori	a4,a4,1
   16118:	03079793          	slli	a5,a5,0x30
   1611c:	0307d793          	srli	a5,a5,0x30
   16120:	00277613          	andi	a2,a4,2
   16124:	0017e593          	ori	a1,a5,1
   16128:	fc0602e3          	beqz	a2,160ec <_ldtoa_r+0x3b0>
   1612c:	0017171b          	slliw	a4,a4,0x1
   16130:	00b69023          	sh	a1,0(a3)
   16134:	03071713          	slli	a4,a4,0x30
   16138:	ffe68693          	addi	a3,a3,-2
   1613c:	03075713          	srli	a4,a4,0x30
   16140:	fdb692e3          	bne	a3,s11,16104 <_ldtoa_r+0x3c8>
   16144:	0d010713          	addi	a4,sp,208
   16148:	09010793          	addi	a5,sp,144
   1614c:	0007d683          	lhu	a3,0(a5)
   16150:	00278793          	addi	a5,a5,2
   16154:	00270713          	addi	a4,a4,2
   16158:	fed71f23          	sh	a3,-2(a4)
   1615c:	ffa798e3          	bne	a5,s10,1614c <_ldtoa_r+0x410>
   16160:	0e011423          	sh	zero,232(sp)
   16164:	00000713          	li	a4,0
   16168:	0e810693          	addi	a3,sp,232
   1616c:	01c0006f          	j	16188 <_ldtoa_r+0x44c>
   16170:	0017171b          	slliw	a4,a4,0x1
   16174:	00f69023          	sh	a5,0(a3)
   16178:	03071713          	slli	a4,a4,0x30
   1617c:	ffe68693          	addi	a3,a3,-2
   16180:	03075713          	srli	a4,a4,0x30
   16184:	05968263          	beq	a3,s9,161c8 <_ldtoa_r+0x48c>
   16188:	0006d783          	lhu	a5,0(a3)
   1618c:	00f7d613          	srli	a2,a5,0xf
   16190:	0017979b          	slliw	a5,a5,0x1
   16194:	00060463          	beqz	a2,1619c <_ldtoa_r+0x460>
   16198:	00176713          	ori	a4,a4,1
   1619c:	03079793          	slli	a5,a5,0x30
   161a0:	0307d793          	srli	a5,a5,0x30
   161a4:	00277613          	andi	a2,a4,2
   161a8:	0017e593          	ori	a1,a5,1
   161ac:	fc0602e3          	beqz	a2,16170 <_ldtoa_r+0x434>
   161b0:	0017171b          	slliw	a4,a4,0x1
   161b4:	00b69023          	sh	a1,0(a3)
   161b8:	03071713          	slli	a4,a4,0x30
   161bc:	ffe68693          	addi	a3,a3,-2
   161c0:	03075713          	srli	a4,a4,0x30
   161c4:	fd9692e3          	bne	a3,s9,16188 <_ldtoa_r+0x44c>
   161c8:	00000713          	li	a4,0
   161cc:	0e810693          	addi	a3,sp,232
   161d0:	01c0006f          	j	161ec <_ldtoa_r+0x4b0>
   161d4:	0017171b          	slliw	a4,a4,0x1
   161d8:	00f69023          	sh	a5,0(a3)
   161dc:	03071713          	slli	a4,a4,0x30
   161e0:	ffe68693          	addi	a3,a3,-2
   161e4:	03075713          	srli	a4,a4,0x30
   161e8:	05968263          	beq	a3,s9,1622c <_ldtoa_r+0x4f0>
   161ec:	0006d783          	lhu	a5,0(a3)
   161f0:	00f7d613          	srli	a2,a5,0xf
   161f4:	0017979b          	slliw	a5,a5,0x1
   161f8:	00060463          	beqz	a2,16200 <_ldtoa_r+0x4c4>
   161fc:	00176713          	ori	a4,a4,1
   16200:	03079793          	slli	a5,a5,0x30
   16204:	0307d793          	srli	a5,a5,0x30
   16208:	00277613          	andi	a2,a4,2
   1620c:	0017e593          	ori	a1,a5,1
   16210:	fc0602e3          	beqz	a2,161d4 <_ldtoa_r+0x498>
   16214:	0017171b          	slliw	a4,a4,0x1
   16218:	00b69023          	sh	a1,0(a3)
   1621c:	03071713          	slli	a4,a4,0x30
   16220:	ffe68693          	addi	a3,a3,-2
   16224:	03075713          	srli	a4,a4,0x30
   16228:	fd9692e3          	bne	a3,s9,161ec <_ldtoa_r+0x4b0>
   1622c:	00000613          	li	a2,0
   16230:	000d0693          	mv	a3,s10
   16234:	0e810713          	addi	a4,sp,232
   16238:	0006d583          	lhu	a1,0(a3)
   1623c:	00075783          	lhu	a5,0(a4)
   16240:	ffe68693          	addi	a3,a3,-2
   16244:	ffe70713          	addi	a4,a4,-2
   16248:	00b787b3          	add	a5,a5,a1
   1624c:	00c787b3          	add	a5,a5,a2
   16250:	0107d613          	srli	a2,a5,0x10
   16254:	00f69123          	sh	a5,2(a3)
   16258:	00167613          	andi	a2,a2,1
   1625c:	fd971ee3          	bne	a4,s9,16238 <_ldtoa_r+0x4fc>
   16260:	00098613          	mv	a2,s3
   16264:	09010593          	addi	a1,sp,144
   16268:	0b010513          	addi	a0,sp,176
   1626c:	d91fe0ef          	jal	ra,14ffc <eiremain>
   16270:	1dc15783          	lhu	a5,476(sp)
   16274:	fff4849b          	addiw	s1,s1,-1
   16278:	e4078ce3          	beqz	a5,160d0 <_ldtoa_r+0x394>
   1627c:	00078c13          	mv	s8,a5
   16280:	02d00793          	li	a5,45
   16284:	00091463          	bnez	s2,1628c <_ldtoa_r+0x550>
   16288:	02000793          	li	a5,32
   1628c:	14f10823          	sb	a5,336(sp)
   16290:	00300713          	li	a4,3
   16294:	00013783          	ld	a5,0(sp)
   16298:	00eb1463          	bne	s6,a4,162a0 <_ldtoa_r+0x564>
   1629c:	009787bb          	addw	a5,a5,s1
   162a0:	02a00713          	li	a4,42
   162a4:	0007841b          	sext.w	s0,a5
   162a8:	00f75463          	bge	a4,a5,162b0 <_ldtoa_r+0x574>
   162ac:	02a00413          	li	s0,42
   162b0:	00a00713          	li	a4,10
   162b4:	4eec0263          	beq	s8,a4,16798 <_ldtoa_r+0xa5c>
   162b8:	030c0c1b          	addiw	s8,s8,48
   162bc:	02e00713          	li	a4,46
   162c0:	158108a3          	sb	s8,337(sp)
   162c4:	14e10923          	sb	a4,338(sp)
   162c8:	1e07c263          	bltz	a5,164ac <_ldtoa_r+0x770>
   162cc:	15310913          	addi	s2,sp,339
   162d0:	00000b93          	li	s7,0
   162d4:	0d010c13          	addi	s8,sp,208
   162d8:	0a810d13          	addi	s10,sp,168
   162dc:	09210d93          	addi	s11,sp,146
   162e0:	0d210c93          	addi	s9,sp,210
   162e4:	00000713          	li	a4,0
   162e8:	000d0693          	mv	a3,s10
   162ec:	01c0006f          	j	16308 <_ldtoa_r+0x5cc>
   162f0:	0017171b          	slliw	a4,a4,0x1
   162f4:	00f69023          	sh	a5,0(a3)
   162f8:	03071713          	slli	a4,a4,0x30
   162fc:	ffe68693          	addi	a3,a3,-2
   16300:	03075713          	srli	a4,a4,0x30
   16304:	05b68263          	beq	a3,s11,16348 <_ldtoa_r+0x60c>
   16308:	0006d783          	lhu	a5,0(a3)
   1630c:	00f7d613          	srli	a2,a5,0xf
   16310:	0017979b          	slliw	a5,a5,0x1
   16314:	00060463          	beqz	a2,1631c <_ldtoa_r+0x5e0>
   16318:	00176713          	ori	a4,a4,1
   1631c:	03079793          	slli	a5,a5,0x30
   16320:	0307d793          	srli	a5,a5,0x30
   16324:	00277613          	andi	a2,a4,2
   16328:	0017e593          	ori	a1,a5,1
   1632c:	fc0602e3          	beqz	a2,162f0 <_ldtoa_r+0x5b4>
   16330:	0017171b          	slliw	a4,a4,0x1
   16334:	00b69023          	sh	a1,0(a3)
   16338:	03071713          	slli	a4,a4,0x30
   1633c:	ffe68693          	addi	a3,a3,-2
   16340:	03075713          	srli	a4,a4,0x30
   16344:	fdb692e3          	bne	a3,s11,16308 <_ldtoa_r+0x5cc>
   16348:	000c0713          	mv	a4,s8
   1634c:	09010793          	addi	a5,sp,144
   16350:	0007d683          	lhu	a3,0(a5)
   16354:	00278793          	addi	a5,a5,2
   16358:	00270713          	addi	a4,a4,2
   1635c:	fed71f23          	sh	a3,-2(a4)
   16360:	ffa798e3          	bne	a5,s10,16350 <_ldtoa_r+0x614>
   16364:	0e011423          	sh	zero,232(sp)
   16368:	00000713          	li	a4,0
   1636c:	0e810693          	addi	a3,sp,232
   16370:	01c0006f          	j	1638c <_ldtoa_r+0x650>
   16374:	0017171b          	slliw	a4,a4,0x1
   16378:	00f69023          	sh	a5,0(a3)
   1637c:	03071713          	slli	a4,a4,0x30
   16380:	ffe68693          	addi	a3,a3,-2
   16384:	03075713          	srli	a4,a4,0x30
   16388:	05968263          	beq	a3,s9,163cc <_ldtoa_r+0x690>
   1638c:	0006d783          	lhu	a5,0(a3)
   16390:	00f7d613          	srli	a2,a5,0xf
   16394:	0017979b          	slliw	a5,a5,0x1
   16398:	00060463          	beqz	a2,163a0 <_ldtoa_r+0x664>
   1639c:	00176713          	ori	a4,a4,1
   163a0:	03079793          	slli	a5,a5,0x30
   163a4:	0307d793          	srli	a5,a5,0x30
   163a8:	00277613          	andi	a2,a4,2
   163ac:	0017e593          	ori	a1,a5,1
   163b0:	fc0602e3          	beqz	a2,16374 <_ldtoa_r+0x638>
   163b4:	0017171b          	slliw	a4,a4,0x1
   163b8:	00b69023          	sh	a1,0(a3)
   163bc:	03071713          	slli	a4,a4,0x30
   163c0:	ffe68693          	addi	a3,a3,-2
   163c4:	03075713          	srli	a4,a4,0x30
   163c8:	fd9692e3          	bne	a3,s9,1638c <_ldtoa_r+0x650>
   163cc:	00000713          	li	a4,0
   163d0:	0e810693          	addi	a3,sp,232
   163d4:	01c0006f          	j	163f0 <_ldtoa_r+0x6b4>
   163d8:	0017171b          	slliw	a4,a4,0x1
   163dc:	00f69023          	sh	a5,0(a3)
   163e0:	03071713          	slli	a4,a4,0x30
   163e4:	ffe68693          	addi	a3,a3,-2
   163e8:	03075713          	srli	a4,a4,0x30
   163ec:	05968263          	beq	a3,s9,16430 <_ldtoa_r+0x6f4>
   163f0:	0006d783          	lhu	a5,0(a3)
   163f4:	00f7d613          	srli	a2,a5,0xf
   163f8:	0017979b          	slliw	a5,a5,0x1
   163fc:	00060463          	beqz	a2,16404 <_ldtoa_r+0x6c8>
   16400:	00176713          	ori	a4,a4,1
   16404:	03079793          	slli	a5,a5,0x30
   16408:	0307d793          	srli	a5,a5,0x30
   1640c:	00277613          	andi	a2,a4,2
   16410:	0017e593          	ori	a1,a5,1
   16414:	fc0602e3          	beqz	a2,163d8 <_ldtoa_r+0x69c>
   16418:	0017171b          	slliw	a4,a4,0x1
   1641c:	00b69023          	sh	a1,0(a3)
   16420:	03071713          	slli	a4,a4,0x30
   16424:	ffe68693          	addi	a3,a3,-2
   16428:	03075713          	srli	a4,a4,0x30
   1642c:	fd9692e3          	bne	a3,s9,163f0 <_ldtoa_r+0x6b4>
   16430:	00000613          	li	a2,0
   16434:	000d0693          	mv	a3,s10
   16438:	0e810713          	addi	a4,sp,232
   1643c:	0006d583          	lhu	a1,0(a3)
   16440:	00075783          	lhu	a5,0(a4)
   16444:	ffe68693          	addi	a3,a3,-2
   16448:	ffe70713          	addi	a4,a4,-2
   1644c:	00b787b3          	add	a5,a5,a1
   16450:	00c787b3          	add	a5,a5,a2
   16454:	0107d613          	srli	a2,a5,0x10
   16458:	00f69123          	sh	a5,2(a3)
   1645c:	00167613          	andi	a2,a2,1
   16460:	fd971ee3          	bne	a4,s9,1643c <_ldtoa_r+0x700>
   16464:	00098613          	mv	a2,s3
   16468:	09010593          	addi	a1,sp,144
   1646c:	0b010513          	addi	a0,sp,176
   16470:	b8dfe0ef          	jal	ra,14ffc <eiremain>
   16474:	1dc15603          	lhu	a2,476(sp)
   16478:	00190793          	addi	a5,s2,1
   1647c:	001b8b9b          	addiw	s7,s7,1
   16480:	0306071b          	addiw	a4,a2,48
   16484:	fee78fa3          	sb	a4,-1(a5)
   16488:	03744863          	blt	s0,s7,164b8 <_ldtoa_r+0x77c>
   1648c:	00078913          	mv	s2,a5
   16490:	e55ff06f          	j	162e4 <_ldtoa_r+0x5a8>
   16494:	03161613          	slli	a2,a2,0x31
   16498:	03165613          	srli	a2,a2,0x31
   1649c:	000107b7          	lui	a5,0x10
   164a0:	0ac11123          	sh	a2,162(sp)
   164a4:	fff78913          	addi	s2,a5,-1 # ffff <register_fini-0xb1>
   164a8:	9ddff06f          	j	15e84 <_ldtoa_r+0x148>
   164ac:	1dc15603          	lhu	a2,476(sp)
   164b0:	15210913          	addi	s2,sp,338
   164b4:	15310793          	addi	a5,sp,339
   164b8:	00400713          	li	a4,4
   164bc:	04c75e63          	bge	a4,a2,16518 <_ldtoa_r+0x7dc>
   164c0:	00500713          	li	a4,5
   164c4:	02e606e3          	beq	a2,a4,16cf0 <_ldtoa_r+0xfb4>
   164c8:	ffe7c703          	lbu	a4,-2(a5)
   164cc:	ffe78613          	addi	a2,a5,-2
   164d0:	07f77593          	andi	a1,a4,127
   164d4:	00058713          	mv	a4,a1
   164d8:	02044a63          	bltz	s0,1650c <_ldtoa_r+0x7d0>
   164dc:	02e00513          	li	a0,46
   164e0:	03800813          	li	a6,56
   164e4:	03000893          	li	a7,48
   164e8:	00070793          	mv	a5,a4
   164ec:	76a58863          	beq	a1,a0,16c5c <_ldtoa_r+0xf20>
   164f0:	78f85463          	bge	a6,a5,16c78 <_ldtoa_r+0xf3c>
   164f4:	fff64783          	lbu	a5,-1(a2)
   164f8:	01160023          	sb	a7,0(a2)
   164fc:	fff60613          	addi	a2,a2,-1
   16500:	07f7f593          	andi	a1,a5,127
   16504:	00058793          	mv	a5,a1
   16508:	fe5ff06f          	j	164ec <_ldtoa_r+0x7b0>
   1650c:	03100713          	li	a4,49
   16510:	fee78f23          	sb	a4,-2(a5)
   16514:	0014849b          	addiw	s1,s1,1
   16518:	00048613          	mv	a2,s1
   1651c:	0000c597          	auipc	a1,0xc
   16520:	b7c58593          	addi	a1,a1,-1156 # 22098 <zeroes.0+0x70>
   16524:	00090513          	mv	a0,s2
   16528:	494030ef          	jal	ra,199bc <sprintf>
   1652c:	08215783          	lhu	a5,130(sp)
   16530:	01813703          	ld	a4,24(sp)
   16534:	1a912023          	sw	s1,416(sp)
   16538:	fff7c793          	not	a5,a5
   1653c:	18e12a23          	sw	a4,404(sp)
   16540:	03179713          	slli	a4,a5,0x31
   16544:	18070463          	beqz	a4,166cc <_ldtoa_r+0x990>
   16548:	01013683          	ld	a3,16(sp)
   1654c:	15014703          	lbu	a4,336(sp)
   16550:	0014879b          	addiw	a5,s1,1
   16554:	00f6a023          	sw	a5,0(a3)
   16558:	000a8793          	mv	a5,s5
   1655c:	02070a63          	beqz	a4,16590 <_ldtoa_r+0x854>
   16560:	02e00693          	li	a3,46
   16564:	20d70463          	beq	a4,a3,1676c <_ldtoa_r+0xa30>
   16568:	0017c703          	lbu	a4,1(a5)
   1656c:	00178793          	addi	a5,a5,1
   16570:	fe071ae3          	bnez	a4,16564 <_ldtoa_r+0x828>
   16574:	04500693          	li	a3,69
   16578:	00fae663          	bltu	s5,a5,16584 <_ldtoa_r+0x848>
   1657c:	0140006f          	j	16590 <_ldtoa_r+0x854>
   16580:	01578863          	beq	a5,s5,16590 <_ldtoa_r+0x854>
   16584:	fff7c703          	lbu	a4,-1(a5)
   16588:	fff78793          	addi	a5,a5,-1
   1658c:	fed71ae3          	bne	a4,a3,16580 <_ldtoa_r+0x844>
   16590:	00078023          	sb	zero,0(a5)
   16594:	000a8793          	mv	a5,s5
   16598:	02000693          	li	a3,32
   1659c:	02d00613          	li	a2,45
   165a0:	0007c703          	lbu	a4,0(a5)
   165a4:	00d70463          	beq	a4,a3,165ac <_ldtoa_r+0x870>
   165a8:	00c71663          	bne	a4,a2,165b4 <_ldtoa_r+0x878>
   165ac:	00178793          	addi	a5,a5,1
   165b0:	ff1ff06f          	j	165a0 <_ldtoa_r+0x864>
   165b4:	000a8413          	mv	s0,s5
   165b8:	00c0006f          	j	165c4 <_ldtoa_r+0x888>
   165bc:	0007c703          	lbu	a4,0(a5)
   165c0:	00068413          	mv	s0,a3
   165c4:	00e40023          	sb	a4,0(s0)
   165c8:	00140693          	addi	a3,s0,1
   165cc:	00178793          	addi	a5,a5,1
   165d0:	fe0716e3          	bnez	a4,165bc <_ldtoa_r+0x880>
   165d4:	00200793          	li	a5,2
   165d8:	fff44703          	lbu	a4,-1(s0)
   165dc:	10fb0e63          	beq	s6,a5,166f8 <_ldtoa_r+0x9bc>
   165e0:	00013683          	ld	a3,0(sp)
   165e4:	00068793          	mv	a5,a3
   165e8:	0096d463          	bge	a3,s1,165f0 <_ldtoa_r+0x8b4>
   165ec:	00048793          	mv	a5,s1
   165f0:	03000613          	li	a2,48
   165f4:	0007869b          	sext.w	a3,a5
   165f8:	02c71663          	bne	a4,a2,16624 <_ldtoa_r+0x8e8>
   165fc:	415407b3          	sub	a5,s0,s5
   16600:	02f6d263          	bge	a3,a5,16624 <_ldtoa_r+0x8e8>
   16604:	03000613          	li	a2,48
   16608:	0080006f          	j	16610 <_ldtoa_r+0x8d4>
   1660c:	00e6dc63          	bge	a3,a4,16624 <_ldtoa_r+0x8e8>
   16610:	ffe44783          	lbu	a5,-2(s0)
   16614:	fe040fa3          	sb	zero,-1(s0)
   16618:	fff40413          	addi	s0,s0,-1
   1661c:	41540733          	sub	a4,s0,s5
   16620:	fec786e3          	beq	a5,a2,1660c <_ldtoa_r+0x8d0>
   16624:	00300793          	li	a5,3
   16628:	0efb0463          	beq	s6,a5,16710 <_ldtoa_r+0x9d4>
   1662c:	00813783          	ld	a5,8(sp)
   16630:	060a2423          	sw	zero,104(s4)
   16634:	0097891b          	addiw	s2,a5,9
   16638:	01f00793          	li	a5,31
   1663c:	1127f463          	bgeu	a5,s2,16744 <_ldtoa_r+0xa08>
   16640:	00100693          	li	a3,1
   16644:	00400793          	li	a5,4
   16648:	0017979b          	slliw	a5,a5,0x1
   1664c:	01c78713          	addi	a4,a5,28
   16650:	0006859b          	sext.w	a1,a3
   16654:	0016869b          	addiw	a3,a3,1
   16658:	fee978e3          	bgeu	s2,a4,16648 <_ldtoa_r+0x90c>
   1665c:	06ba2423          	sw	a1,104(s4)
   16660:	000a0513          	mv	a0,s4
   16664:	151010ef          	jal	ra,17fb4 <_Balloc>
   16668:	06aa3023          	sd	a0,96(s4)
   1666c:	000a8593          	mv	a1,s5
   16670:	00050493          	mv	s1,a0
   16674:	648030ef          	jal	ra,19cbc <strcpy>
   16678:	02013703          	ld	a4,32(sp)
   1667c:	00070863          	beqz	a4,1668c <_ldtoa_r+0x950>
   16680:	415407b3          	sub	a5,s0,s5
   16684:	00f487b3          	add	a5,s1,a5
   16688:	00f73023          	sd	a5,0(a4)
   1668c:	24813083          	ld	ra,584(sp)
   16690:	24013403          	ld	s0,576(sp)
   16694:	23013903          	ld	s2,560(sp)
   16698:	22813983          	ld	s3,552(sp)
   1669c:	22013a03          	ld	s4,544(sp)
   166a0:	21813a83          	ld	s5,536(sp)
   166a4:	21013b03          	ld	s6,528(sp)
   166a8:	20813b83          	ld	s7,520(sp)
   166ac:	20013c03          	ld	s8,512(sp)
   166b0:	1f813c83          	ld	s9,504(sp)
   166b4:	1f013d03          	ld	s10,496(sp)
   166b8:	1e813d83          	ld	s11,488(sp)
   166bc:	00048513          	mv	a0,s1
   166c0:	23813483          	ld	s1,568(sp)
   166c4:	25010113          	addi	sp,sp,592
   166c8:	00008067          	ret
   166cc:	07010793          	addi	a5,sp,112
   166d0:	08210693          	addi	a3,sp,130
   166d4:	0007d703          	lhu	a4,0(a5)
   166d8:	00278793          	addi	a5,a5,2
   166dc:	5a071463          	bnez	a4,16c84 <_ldtoa_r+0xf48>
   166e0:	fed79ae3          	bne	a5,a3,166d4 <_ldtoa_r+0x998>
   166e4:	01013703          	ld	a4,16(sp)
   166e8:	000027b7          	lui	a5,0x2
   166ec:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   166f0:	00f72023          	sw	a5,0(a4)
   166f4:	ea1ff06f          	j	16594 <_ldtoa_r+0x858>
   166f8:	03000793          	li	a5,48
   166fc:	f2f718e3          	bne	a4,a5,1662c <_ldtoa_r+0x8f0>
   16700:	415407b3          	sub	a5,s0,s5
   16704:	00100693          	li	a3,1
   16708:	eef6cee3          	blt	a3,a5,16604 <_ldtoa_r+0x8c8>
   1670c:	f21ff06f          	j	1662c <_ldtoa_r+0x8f0>
   16710:	00013783          	ld	a5,0(sp)
   16714:	009784bb          	addw	s1,a5,s1
   16718:	4e04c663          	bltz	s1,16c04 <_ldtoa_r+0xec8>
   1671c:	01013783          	ld	a5,16(sp)
   16720:	00813703          	ld	a4,8(sp)
   16724:	0007a783          	lw	a5,0(a5)
   16728:	00e787bb          	addw	a5,a5,a4
   1672c:	00f13423          	sd	a5,8(sp)
   16730:	00813783          	ld	a5,8(sp)
   16734:	060a2423          	sw	zero,104(s4)
   16738:	0037891b          	addiw	s2,a5,3
   1673c:	01f00793          	li	a5,31
   16740:	f127e0e3          	bltu	a5,s2,16640 <_ldtoa_r+0x904>
   16744:	00000593          	li	a1,0
   16748:	f19ff06f          	j	16660 <_ldtoa_r+0x924>
   1674c:	00813783          	ld	a5,8(sp)
   16750:	02a00713          	li	a4,42
   16754:	00078b93          	mv	s7,a5
   16758:	00f75463          	bge	a4,a5,16760 <_ldtoa_r+0xa24>
   1675c:	02a00b93          	li	s7,42
   16760:	000b879b          	sext.w	a5,s7
   16764:	00f13023          	sd	a5,0(sp)
   16768:	eb8ff06f          	j	15e20 <_ldtoa_r+0xe4>
   1676c:	0007c703          	lbu	a4,0(a5)
   16770:	e00702e3          	beqz	a4,16574 <_ldtoa_r+0x838>
   16774:	0017c703          	lbu	a4,1(a5)
   16778:	00178793          	addi	a5,a5,1
   1677c:	fee78fa3          	sb	a4,-1(a5)
   16780:	de070ae3          	beqz	a4,16574 <_ldtoa_r+0x838>
   16784:	0017c703          	lbu	a4,1(a5)
   16788:	00178793          	addi	a5,a5,1
   1678c:	fee78fa3          	sb	a4,-1(a5)
   16790:	fe0712e3          	bnez	a4,16774 <_ldtoa_r+0xa38>
   16794:	de1ff06f          	j	16574 <_ldtoa_r+0x838>
   16798:	03100713          	li	a4,49
   1679c:	14e108a3          	sb	a4,337(sp)
   167a0:	02e00713          	li	a4,46
   167a4:	14e10923          	sb	a4,338(sp)
   167a8:	0014849b          	addiw	s1,s1,1
   167ac:	2af05a63          	blez	a5,16a60 <_ldtoa_r+0xd24>
   167b0:	03000793          	li	a5,48
   167b4:	14f109a3          	sb	a5,339(sp)
   167b8:	fff4041b          	addiw	s0,s0,-1
   167bc:	15410913          	addi	s2,sp,340
   167c0:	b11ff06f          	j	162d0 <_ldtoa_r+0x594>
   167c4:	15010a93          	addi	s5,sp,336
   167c8:	0000c597          	auipc	a1,0xc
   167cc:	8d858593          	addi	a1,a1,-1832 # 220a0 <zeroes.0+0x78>
   167d0:	000a8513          	mv	a0,s5
   167d4:	000024b7          	lui	s1,0x2
   167d8:	1e4030ef          	jal	ra,199bc <sprintf>
   167dc:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   167e0:	d4dff06f          	j	1652c <_ldtoa_r+0x7f0>
   167e4:	0d010c13          	addi	s8,sp,208
   167e8:	000c0713          	mv	a4,s8
   167ec:	09010793          	addi	a5,sp,144
   167f0:	0a410613          	addi	a2,sp,164
   167f4:	0007d683          	lhu	a3,0(a5)
   167f8:	00278793          	addi	a5,a5,2
   167fc:	00270713          	addi	a4,a4,2
   16800:	fed71f23          	sh	a3,-2(a4)
   16804:	fec798e3          	bne	a5,a2,167f4 <_ldtoa_r+0xab8>
   16808:	000047b7          	lui	a5,0x4
   1680c:	08e78793          	addi	a5,a5,142 # 408e <register_fini-0xc022>
   16810:	0ef11123          	sh	a5,226(sp)
   16814:	000087b7          	lui	a5,0x8
   16818:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   1681c:	02f13423          	sd	a5,40(sp)
   16820:	ffffc7b7          	lui	a5,0xffffc
   16824:	0027879b          	addiw	a5,a5,2
   16828:	01000c93          	li	s9,16
   1682c:	00000493          	li	s1,0
   16830:	0000cd17          	auipc	s10,0xc
   16834:	948d0d13          	addi	s10,s10,-1720 # 22178 <etens+0xa0>
   16838:	15010a93          	addi	s5,sp,336
   1683c:	19010993          	addi	s3,sp,400
   16840:	0f010413          	addi	s0,sp,240
   16844:	0c210b93          	addi	s7,sp,194
   16848:	02f12a23          	sw	a5,52(sp)
   1684c:	00098693          	mv	a3,s3
   16850:	0b010613          	addi	a2,sp,176
   16854:	000c0593          	mv	a1,s8
   16858:	000d0513          	mv	a0,s10
   1685c:	dc9fe0ef          	jal	ra,15624 <ediv>
   16860:	05810713          	addi	a4,sp,88
   16864:	0b010793          	addi	a5,sp,176
   16868:	0007d683          	lhu	a3,0(a5) # ffffffffffffc000 <__BSS_END__+0xfffffffffffd71a0>
   1686c:	00278793          	addi	a5,a5,2
   16870:	00270713          	addi	a4,a4,2
   16874:	fed71f23          	sh	a3,-2(a4)
   16878:	ffb798e3          	bne	a5,s11,16868 <_ldtoa_r+0xb2c>
   1687c:	02813783          	ld	a5,40(sp)
   16880:	06a15803          	lhu	a6,106(sp)
   16884:	00f875b3          	and	a1,a6,a5
   16888:	03412783          	lw	a5,52(sp)
   1688c:	00f587bb          	addw	a5,a1,a5
   16890:	00078513          	mv	a0,a5
   16894:	38f05263          	blez	a5,16c18 <_ldtoa_r+0xedc>
   16898:	09000593          	li	a1,144
   1689c:	40f585bb          	subw	a1,a1,a5
   168a0:	00040713          	mv	a4,s0
   168a4:	05810793          	addi	a5,sp,88
   168a8:	06c10613          	addi	a2,sp,108
   168ac:	0007d683          	lhu	a3,0(a5)
   168b0:	00278793          	addi	a5,a5,2
   168b4:	00270713          	addi	a4,a4,2
   168b8:	fed71f23          	sh	a3,-2(a4)
   168bc:	fec798e3          	bne	a5,a2,168ac <_ldtoa_r+0xb70>
   168c0:	06b05863          	blez	a1,16930 <_ldtoa_r+0xbf4>
   168c4:	00f00793          	li	a5,15
   168c8:	00040713          	mv	a4,s0
   168cc:	02b7de63          	bge	a5,a1,16908 <_ldtoa_r+0xbcc>
   168d0:	08000693          	li	a3,128
   168d4:	40a686bb          	subw	a3,a3,a0
   168d8:	0046d69b          	srliw	a3,a3,0x4
   168dc:	0016871b          	addiw	a4,a3,1
   168e0:	00171713          	slli	a4,a4,0x1
   168e4:	00e40733          	add	a4,s0,a4
   168e8:	00040793          	mv	a5,s0
   168ec:	00278793          	addi	a5,a5,2
   168f0:	fe079f23          	sh	zero,-2(a5)
   168f4:	fee79ce3          	bne	a5,a4,168ec <_ldtoa_r+0xbb0>
   168f8:	08000593          	li	a1,128
   168fc:	40a585bb          	subw	a1,a1,a0
   16900:	0046969b          	slliw	a3,a3,0x4
   16904:	40d585bb          	subw	a1,a1,a3
   16908:	0000b797          	auipc	a5,0xb
   1690c:	7a078793          	addi	a5,a5,1952 # 220a8 <ezero>
   16910:	00159593          	slli	a1,a1,0x1
   16914:	00b785b3          	add	a1,a5,a1
   16918:	2405d683          	lhu	a3,576(a1)
   1691c:	00075783          	lhu	a5,0(a4)
   16920:	00d7f7b3          	and	a5,a5,a3
   16924:	00f71023          	sh	a5,0(a4)
   16928:	00f85813          	srli	a6,a6,0xf
   1692c:	14081a63          	bnez	a6,16a80 <_ldtoa_r+0xd44>
   16930:	0b010793          	addi	a5,sp,176
   16934:	00040713          	mv	a4,s0
   16938:	0007d603          	lhu	a2,0(a5)
   1693c:	00075683          	lhu	a3,0(a4)
   16940:	00278793          	addi	a5,a5,2
   16944:	00270713          	addi	a4,a4,2
   16948:	02d61463          	bne	a2,a3,16970 <_ldtoa_r+0xc34>
   1694c:	fefb96e3          	bne	s7,a5,16938 <_ldtoa_r+0xbfc>
   16950:	000c0713          	mv	a4,s8
   16954:	0b010793          	addi	a5,sp,176
   16958:	0007d683          	lhu	a3,0(a5)
   1695c:	00278793          	addi	a5,a5,2
   16960:	00270713          	addi	a4,a4,2
   16964:	fed71f23          	sh	a3,-2(a4)
   16968:	ffb798e3          	bne	a5,s11,16958 <_ldtoa_r+0xc1c>
   1696c:	009c84bb          	addw	s1,s9,s1
   16970:	014d0d13          	addi	s10,s10,20
   16974:	0000c797          	auipc	a5,0xc
   16978:	86878793          	addi	a5,a5,-1944 # 221dc <etens+0x104>
   1697c:	001cdc93          	srli	s9,s9,0x1
   16980:	ecfd16e3          	bne	s10,a5,1684c <_ldtoa_r+0xb10>
   16984:	0e215783          	lhu	a5,226(sp)
   16988:	0a215703          	lhu	a4,162(sp)
   1698c:	0e410613          	addi	a2,sp,228
   16990:	00e787bb          	addw	a5,a5,a4
   16994:	ffffc737          	lui	a4,0xffffc
   16998:	f727071b          	addiw	a4,a4,-142
   1699c:	00e787bb          	addw	a5,a5,a4
   169a0:	0ef11123          	sh	a5,226(sp)
   169a4:	09010713          	addi	a4,sp,144
   169a8:	000c0793          	mv	a5,s8
   169ac:	0007d683          	lhu	a3,0(a5)
   169b0:	00278793          	addi	a5,a5,2
   169b4:	00270713          	addi	a4,a4,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd71a2>
   169b8:	fed71f23          	sh	a3,-2(a4)
   169bc:	fec798e3          	bne	a5,a2,169ac <_ldtoa_r+0xc70>
   169c0:	00000693          	li	a3,0
   169c4:	0b010793          	addi	a5,sp,176
   169c8:	0000b717          	auipc	a4,0xb
   169cc:	6f870713          	addi	a4,a4,1784 # 220c0 <eone>
   169d0:	0080006f          	j	169d8 <_ldtoa_r+0xc9c>
   169d4:	00075683          	lhu	a3,0(a4)
   169d8:	00278793          	addi	a5,a5,2
   169dc:	fed79f23          	sh	a3,-2(a5)
   169e0:	00270713          	addi	a4,a4,2
   169e4:	ffb798e3          	bne	a5,s11,169d4 <_ldtoa_r+0xc98>
   169e8:	00001cb7          	lui	s9,0x1
   169ec:	0000bd97          	auipc	s11,0xb
   169f0:	6ecd8d93          	addi	s11,s11,1772 # 220d8 <etens>
   169f4:	0000bd17          	auipc	s10,0xb
   169f8:	7d4d0d13          	addi	s10,s10,2004 # 221c8 <etens+0xf0>
   169fc:	0100006f          	j	16a0c <_ldtoa_r+0xcd0>
   16a00:	001cdc93          	srli	s9,s9,0x1
   16a04:	25ad8863          	beq	s11,s10,16c54 <_ldtoa_r+0xf18>
   16a08:	014d8d93          	addi	s11,s11,20
   16a0c:	000c0593          	mv	a1,s8
   16a10:	000d0513          	mv	a0,s10
   16a14:	884fe0ef          	jal	ra,14a98 <ecmp>
   16a18:	00050793          	mv	a5,a0
   16a1c:	000c0593          	mv	a1,s8
   16a20:	000d8513          	mv	a0,s11
   16a24:	22f04863          	bgtz	a5,16c54 <_ldtoa_r+0xf18>
   16a28:	870fe0ef          	jal	ra,14a98 <ecmp>
   16a2c:	fca04ae3          	bgtz	a0,16a00 <_ldtoa_r+0xcc4>
   16a30:	00098693          	mv	a3,s3
   16a34:	000c0613          	mv	a2,s8
   16a38:	000c0593          	mv	a1,s8
   16a3c:	000d8513          	mv	a0,s11
   16a40:	be5fe0ef          	jal	ra,15624 <ediv>
   16a44:	0b010613          	addi	a2,sp,176
   16a48:	00098693          	mv	a3,s3
   16a4c:	00060593          	mv	a1,a2
   16a50:	000d8513          	mv	a0,s11
   16a54:	f0cfe0ef          	jal	ra,15160 <emul>
   16a58:	009c84bb          	addw	s1,s9,s1
   16a5c:	fa5ff06f          	j	16a00 <_ldtoa_r+0xcc4>
   16a60:	15310913          	addi	s2,sp,339
   16a64:	aa079ae3          	bnez	a5,16518 <_ldtoa_r+0x7dc>
   16a68:	869ff06f          	j	162d0 <_ldtoa_r+0x594>
   16a6c:	00000693          	li	a3,0
   16a70:	b98ff06f          	j	15e08 <_ldtoa_r+0xcc>
   16a74:	00813783          	ld	a5,8(sp)
   16a78:	fff7879b          	addiw	a5,a5,-1
   16a7c:	cd5ff06f          	j	16750 <_ldtoa_r+0xa14>
   16a80:	05810793          	addi	a5,sp,88
   16a84:	00040713          	mv	a4,s0
   16a88:	00c0006f          	j	16a94 <_ldtoa_r+0xd58>
   16a8c:	06a10693          	addi	a3,sp,106
   16a90:	eaf680e3          	beq	a3,a5,16930 <_ldtoa_r+0xbf4>
   16a94:	0007d603          	lhu	a2,0(a5)
   16a98:	00075683          	lhu	a3,0(a4)
   16a9c:	00278793          	addi	a5,a5,2
   16aa0:	00270713          	addi	a4,a4,2
   16aa4:	fed604e3          	beq	a2,a3,16a8c <_ldtoa_r+0xd50>
   16aa8:	10215783          	lhu	a5,258(sp)
   16aac:	02813703          	ld	a4,40(sp)
   16ab0:	00f777b3          	and	a5,a4,a5
   16ab4:	3ae78e63          	beq	a5,a4,16e70 <_ldtoa_r+0x1134>
   16ab8:	11010593          	addi	a1,sp,272
   16abc:	0000b517          	auipc	a0,0xb
   16ac0:	60450513          	addi	a0,a0,1540 # 220c0 <eone>
   16ac4:	f1dfd0ef          	jal	ra,149e0 <emovi>
   16ac8:	13010593          	addi	a1,sp,304
   16acc:	00040513          	mv	a0,s0
   16ad0:	f11fd0ef          	jal	ra,149e0 <emovi>
   16ad4:	11015703          	lhu	a4,272(sp)
   16ad8:	13215603          	lhu	a2,306(sp)
   16adc:	11215503          	lhu	a0,274(sp)
   16ae0:	fff74713          	not	a4,a4
   16ae4:	03071713          	slli	a4,a4,0x30
   16ae8:	03075713          	srli	a4,a4,0x30
   16aec:	10e11823          	sh	a4,272(sp)
   16af0:	40c505b3          	sub	a1,a0,a2
   16af4:	00060693          	mv	a3,a2
   16af8:	06b05e63          	blez	a1,16b74 <_ldtoa_r+0xe38>
   16afc:	000a8593          	mv	a1,s5
   16b00:	13010693          	addi	a3,sp,304
   16b04:	14810793          	addi	a5,sp,328
   16b08:	0006d803          	lhu	a6,0(a3)
   16b0c:	00268693          	addi	a3,a3,2
   16b10:	00258593          	addi	a1,a1,2
   16b14:	ff059f23          	sh	a6,-2(a1)
   16b18:	fef698e3          	bne	a3,a5,16b08 <_ldtoa_r+0xdcc>
   16b1c:	16011423          	sh	zero,360(sp)
   16b20:	13010693          	addi	a3,sp,304
   16b24:	11010593          	addi	a1,sp,272
   16b28:	0080006f          	j	16b30 <_ldtoa_r+0xdf4>
   16b2c:	0005d703          	lhu	a4,0(a1)
   16b30:	00268693          	addi	a3,a3,2
   16b34:	fee69f23          	sh	a4,-2(a3)
   16b38:	00258593          	addi	a1,a1,2
   16b3c:	fef698e3          	bne	a3,a5,16b2c <_ldtoa_r+0xdf0>
   16b40:	14011423          	sh	zero,328(sp)
   16b44:	11010713          	addi	a4,sp,272
   16b48:	000a8793          	mv	a5,s5
   16b4c:	16810593          	addi	a1,sp,360
   16b50:	0007d683          	lhu	a3,0(a5)
   16b54:	00278793          	addi	a5,a5,2
   16b58:	00270713          	addi	a4,a4,2
   16b5c:	fed71f23          	sh	a3,-2(a4)
   16b60:	feb798e3          	bne	a5,a1,16b50 <_ldtoa_r+0xe14>
   16b64:	13215683          	lhu	a3,306(sp)
   16b68:	40a605b3          	sub	a1,a2,a0
   16b6c:	12011423          	sh	zero,296(sp)
   16b70:	00068613          	mv	a2,a3
   16b74:	32058863          	beqz	a1,16ea4 <_ldtoa_r+0x1168>
   16b78:	02d13c23          	sd	a3,56(sp)
   16b7c:	f6f00793          	li	a5,-145
   16b80:	06f5ca63          	blt	a1,a5,16bf4 <_ldtoa_r+0xeb8>
   16b84:	0005859b          	sext.w	a1,a1
   16b88:	11010513          	addi	a0,sp,272
   16b8c:	c35fd0ef          	jal	ra,147c0 <eshift.part.0>
   16b90:	03813683          	ld	a3,56(sp)
   16b94:	00050593          	mv	a1,a0
   16b98:	14810793          	addi	a5,sp,328
   16b9c:	12810713          	addi	a4,sp,296
   16ba0:	11015503          	lhu	a0,272(sp)
   16ba4:	13015603          	lhu	a2,304(sp)
   16ba8:	34c50263          	beq	a0,a2,16eec <_ldtoa_r+0x11b0>
   16bac:	00000613          	li	a2,0
   16bb0:	13210813          	addi	a6,sp,306
   16bb4:	00060513          	mv	a0,a2
   16bb8:	0007d603          	lhu	a2,0(a5)
   16bbc:	00075883          	lhu	a7,0(a4)
   16bc0:	ffe78793          	addi	a5,a5,-2
   16bc4:	40a60633          	sub	a2,a2,a0
   16bc8:	41160633          	sub	a2,a2,a7
   16bcc:	01065513          	srli	a0,a2,0x10
   16bd0:	00c79123          	sh	a2,2(a5)
   16bd4:	00157513          	andi	a0,a0,1
   16bd8:	ffe70713          	addi	a4,a4,-2
   16bdc:	fd079ee3          	bne	a5,a6,16bb8 <_ldtoa_r+0xe7c>
   16be0:	00100613          	li	a2,1
   16be4:	00098793          	mv	a5,s3
   16be8:	04000713          	li	a4,64
   16bec:	13010513          	addi	a0,sp,304
   16bf0:	fe9fd0ef          	jal	ra,14bd8 <emdnorm>
   16bf4:	00040593          	mv	a1,s0
   16bf8:	13010513          	addi	a0,sp,304
   16bfc:	995fd0ef          	jal	ra,14590 <emovo.constprop.0>
   16c00:	d31ff06f          	j	16930 <_ldtoa_r+0xbf4>
   16c04:	01013783          	ld	a5,16(sp)
   16c08:	14010823          	sb	zero,336(sp)
   16c0c:	000a8413          	mv	s0,s5
   16c10:	0007a023          	sw	zero,0(a5)
   16c14:	b1dff06f          	j	16730 <_ldtoa_r+0x9f4>
   16c18:	00040793          	mv	a5,s0
   16c1c:	10410713          	addi	a4,sp,260
   16c20:	00278793          	addi	a5,a5,2
   16c24:	fe079f23          	sh	zero,-2(a5)
   16c28:	fee79ce3          	bne	a5,a4,16c20 <_ldtoa_r+0xee4>
   16c2c:	cfdff06f          	j	16928 <_ldtoa_r+0xbec>
   16c30:	15010a93          	addi	s5,sp,336
   16c34:	0a090063          	beqz	s2,16cd4 <_ldtoa_r+0xf98>
   16c38:	0000b597          	auipc	a1,0xb
   16c3c:	43858593          	addi	a1,a1,1080 # 22070 <zeroes.0+0x48>
   16c40:	000a8513          	mv	a0,s5
   16c44:	000024b7          	lui	s1,0x2
   16c48:	575020ef          	jal	ra,199bc <sprintf>
   16c4c:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16c50:	8ddff06f          	j	1652c <_ldtoa_r+0x7f0>
   16c54:	10810b93          	addi	s7,sp,264
   16c58:	bf8ff06f          	j	16050 <_ldtoa_r+0x314>
   16c5c:	fff64783          	lbu	a5,-1(a2)
   16c60:	03800713          	li	a4,56
   16c64:	0ef77463          	bgeu	a4,a5,16d4c <_ldtoa_r+0x1010>
   16c68:	03100793          	li	a5,49
   16c6c:	0014849b          	addiw	s1,s1,1
   16c70:	fef60fa3          	sb	a5,-1(a2)
   16c74:	8a5ff06f          	j	16518 <_ldtoa_r+0x7dc>
   16c78:	0015859b          	addiw	a1,a1,1
   16c7c:	00b60023          	sb	a1,0(a2)
   16c80:	899ff06f          	j	16518 <_ldtoa_r+0x7dc>
   16c84:	07010793          	addi	a5,sp,112
   16c88:	08210693          	addi	a3,sp,130
   16c8c:	0080006f          	j	16c94 <_ldtoa_r+0xf58>
   16c90:	8ad78ce3          	beq	a5,a3,16548 <_ldtoa_r+0x80c>
   16c94:	0007d703          	lhu	a4,0(a5)
   16c98:	00278793          	addi	a5,a5,2
   16c9c:	fe070ae3          	beqz	a4,16c90 <_ldtoa_r+0xf54>
   16ca0:	01013703          	ld	a4,16(sp)
   16ca4:	000027b7          	lui	a5,0x2
   16ca8:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   16cac:	00f72023          	sw	a5,0(a4)
   16cb0:	8e5ff06f          	j	16594 <_ldtoa_r+0x858>
   16cb4:	15010a93          	addi	s5,sp,336
   16cb8:	0000b597          	auipc	a1,0xb
   16cbc:	3d858593          	addi	a1,a1,984 # 22090 <zeroes.0+0x68>
   16cc0:	000a8513          	mv	a0,s5
   16cc4:	000024b7          	lui	s1,0x2
   16cc8:	4f5020ef          	jal	ra,199bc <sprintf>
   16ccc:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16cd0:	85dff06f          	j	1652c <_ldtoa_r+0x7f0>
   16cd4:	0000b597          	auipc	a1,0xb
   16cd8:	3ac58593          	addi	a1,a1,940 # 22080 <zeroes.0+0x58>
   16cdc:	000a8513          	mv	a0,s5
   16ce0:	000024b7          	lui	s1,0x2
   16ce4:	4d9020ef          	jal	ra,199bc <sprintf>
   16ce8:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16cec:	841ff06f          	j	1652c <_ldtoa_r+0x7f0>
   16cf0:	0b010593          	addi	a1,sp,176
   16cf4:	09010513          	addi	a0,sp,144
   16cf8:	02f13423          	sd	a5,40(sp)
   16cfc:	895fd0ef          	jal	ra,14590 <emovo.constprop.0>
   16d00:	0000b597          	auipc	a1,0xb
   16d04:	3a858593          	addi	a1,a1,936 # 220a8 <ezero>
   16d08:	0b010513          	addi	a0,sp,176
   16d0c:	d8dfd0ef          	jal	ra,14a98 <ecmp>
   16d10:	02813783          	ld	a5,40(sp)
   16d14:	fa051a63          	bnez	a0,164c8 <_ldtoa_r+0x78c>
   16d18:	800440e3          	bltz	s0,16518 <_ldtoa_r+0x7dc>
   16d1c:	ffe7c703          	lbu	a4,-2(a5)
   16d20:	fd270613          	addi	a2,a4,-46
   16d24:	00163613          	seqz	a2,a2
   16d28:	fff64613          	not	a2,a2
   16d2c:	00c90633          	add	a2,s2,a2
   16d30:	00064603          	lbu	a2,0(a2)
   16d34:	00167613          	andi	a2,a2,1
   16d38:	fe060063          	beqz	a2,16518 <_ldtoa_r+0x7dc>
   16d3c:	07f77593          	andi	a1,a4,127
   16d40:	ffe78613          	addi	a2,a5,-2
   16d44:	00058713          	mv	a4,a1
   16d48:	f94ff06f          	j	164dc <_ldtoa_r+0x7a0>
   16d4c:	0017879b          	addiw	a5,a5,1
   16d50:	fef60fa3          	sb	a5,-1(a2)
   16d54:	fc4ff06f          	j	16518 <_ldtoa_r+0x7dc>
   16d58:	0f010413          	addi	s0,sp,240
   16d5c:	00040593          	mv	a1,s0
   16d60:	09010513          	addi	a0,sp,144
   16d64:	00004c37          	lui	s8,0x4
   16d68:	c79fd0ef          	jal	ra,149e0 <emovi>
   16d6c:	00000493          	li	s1,0
   16d70:	10810b93          	addi	s7,sp,264
   16d74:	0e810993          	addi	s3,sp,232
   16d78:	0f210a93          	addi	s5,sp,242
   16d7c:	ffec0c13          	addi	s8,s8,-2 # 3ffe <register_fini-0xc0b2>
   16d80:	fd500c93          	li	s9,-43
   16d84:	10815783          	lhu	a5,264(sp)
   16d88:	0077f793          	andi	a5,a5,7
   16d8c:	0c079863          	bnez	a5,16e5c <_ldtoa_r+0x1120>
   16d90:	0d010713          	addi	a4,sp,208
   16d94:	00040793          	mv	a5,s0
   16d98:	0007d683          	lhu	a3,0(a5)
   16d9c:	00278793          	addi	a5,a5,2
   16da0:	00270713          	addi	a4,a4,2
   16da4:	fed71f23          	sh	a3,-2(a4)
   16da8:	ff7798e3          	bne	a5,s7,16d98 <_ldtoa_r+0x105c>
   16dac:	0d010513          	addi	a0,sp,208
   16db0:	0e011423          	sh	zero,232(sp)
   16db4:	e2cfd0ef          	jal	ra,143e0 <eshdn1>
   16db8:	0d010513          	addi	a0,sp,208
   16dbc:	e24fd0ef          	jal	ra,143e0 <eshdn1>
   16dc0:	00000613          	li	a2,0
   16dc4:	00098693          	mv	a3,s3
   16dc8:	000b8713          	mv	a4,s7
   16dcc:	0006d583          	lhu	a1,0(a3)
   16dd0:	00075783          	lhu	a5,0(a4)
   16dd4:	ffe68693          	addi	a3,a3,-2
   16dd8:	ffe70713          	addi	a4,a4,-2
   16ddc:	00b787b3          	add	a5,a5,a1
   16de0:	00c787b3          	add	a5,a5,a2
   16de4:	0107d613          	srli	a2,a5,0x10
   16de8:	00f69123          	sh	a5,2(a3)
   16dec:	00167613          	andi	a2,a2,1
   16df0:	fd571ee3          	bne	a4,s5,16dcc <_ldtoa_r+0x1090>
   16df4:	0d215783          	lhu	a5,210(sp)
   16df8:	0d415703          	lhu	a4,212(sp)
   16dfc:	0037879b          	addiw	a5,a5,3
   16e00:	0cf11923          	sh	a5,210(sp)
   16e04:	02070063          	beqz	a4,16e24 <_ldtoa_r+0x10e8>
   16e08:	0d010513          	addi	a0,sp,208
   16e0c:	dd4fd0ef          	jal	ra,143e0 <eshdn1>
   16e10:	0d215783          	lhu	a5,210(sp)
   16e14:	0d415703          	lhu	a4,212(sp)
   16e18:	0017879b          	addiw	a5,a5,1
   16e1c:	0cf11923          	sh	a5,210(sp)
   16e20:	fe0714e3          	bnez	a4,16e08 <_ldtoa_r+0x10cc>
   16e24:	0e815783          	lhu	a5,232(sp)
   16e28:	02079a63          	bnez	a5,16e5c <_ldtoa_r+0x1120>
   16e2c:	0d215783          	lhu	a5,210(sp)
   16e30:	02fc6663          	bltu	s8,a5,16e5c <_ldtoa_r+0x1120>
   16e34:	00040713          	mv	a4,s0
   16e38:	0d010793          	addi	a5,sp,208
   16e3c:	0007d683          	lhu	a3,0(a5)
   16e40:	00278793          	addi	a5,a5,2
   16e44:	00270713          	addi	a4,a4,2
   16e48:	fed71f23          	sh	a3,-2(a4)
   16e4c:	ff3798e3          	bne	a5,s3,16e3c <_ldtoa_r+0x1100>
   16e50:	10011423          	sh	zero,264(sp)
   16e54:	fff4849b          	addiw	s1,s1,-1
   16e58:	f39496e3          	bne	s1,s9,16d84 <_ldtoa_r+0x1048>
   16e5c:	09010593          	addi	a1,sp,144
   16e60:	00040513          	mv	a0,s0
   16e64:	f2cfd0ef          	jal	ra,14590 <emovo.constprop.0>
   16e68:	19010993          	addi	s3,sp,400
   16e6c:	8bcff06f          	j	15f28 <_ldtoa_r+0x1ec>
   16e70:	00040793          	mv	a5,s0
   16e74:	0007d703          	lhu	a4,0(a5)
   16e78:	00278793          	addi	a5,a5,2
   16e7c:	aa071ae3          	bnez	a4,16930 <_ldtoa_r+0xbf4>
   16e80:	10210713          	addi	a4,sp,258
   16e84:	fee798e3          	bne	a5,a4,16e74 <_ldtoa_r+0x1138>
   16e88:	00040793          	mv	a5,s0
   16e8c:	0007d703          	lhu	a4,0(a5)
   16e90:	00278793          	addi	a5,a5,2
   16e94:	c20712e3          	bnez	a4,16ab8 <_ldtoa_r+0xd7c>
   16e98:	10210713          	addi	a4,sp,258
   16e9c:	fee798e3          	bne	a5,a4,16e8c <_ldtoa_r+0x1150>
   16ea0:	a91ff06f          	j	16930 <_ldtoa_r+0xbf4>
   16ea4:	13410713          	addi	a4,sp,308
   16ea8:	11410793          	addi	a5,sp,276
   16eac:	0007d503          	lhu	a0,0(a5)
   16eb0:	00075583          	lhu	a1,0(a4)
   16eb4:	00278793          	addi	a5,a5,2
   16eb8:	00270713          	addi	a4,a4,2
   16ebc:	06b51463          	bne	a0,a1,16f24 <_ldtoa_r+0x11e8>
   16ec0:	12a10593          	addi	a1,sp,298
   16ec4:	feb794e3          	bne	a5,a1,16eac <_ldtoa_r+0x1170>
   16ec8:	11015703          	lhu	a4,272(sp)
   16ecc:	13015783          	lhu	a5,304(sp)
   16ed0:	06f70463          	beq	a4,a5,16f38 <_ldtoa_r+0x11fc>
   16ed4:	00040793          	mv	a5,s0
   16ed8:	10410713          	addi	a4,sp,260
   16edc:	00278793          	addi	a5,a5,2
   16ee0:	fe079f23          	sh	zero,-2(a5)
   16ee4:	fee79ce3          	bne	a5,a4,16edc <_ldtoa_r+0x11a0>
   16ee8:	a49ff06f          	j	16930 <_ldtoa_r+0xbf4>
   16eec:	00000613          	li	a2,0
   16ef0:	11210813          	addi	a6,sp,274
   16ef4:	0007d883          	lhu	a7,0(a5)
   16ef8:	00075503          	lhu	a0,0(a4)
   16efc:	ffe78793          	addi	a5,a5,-2
   16f00:	ffe70713          	addi	a4,a4,-2
   16f04:	01150533          	add	a0,a0,a7
   16f08:	00c50633          	add	a2,a0,a2
   16f0c:	01065513          	srli	a0,a2,0x10
   16f10:	00c79123          	sh	a2,2(a5)
   16f14:	00157613          	andi	a2,a0,1
   16f18:	fd071ee3          	bne	a4,a6,16ef4 <_ldtoa_r+0x11b8>
   16f1c:	00000613          	li	a2,0
   16f20:	cc5ff06f          	j	16be4 <_ldtoa_r+0xea8>
   16f24:	04a5e263          	bltu	a1,a0,16f68 <_ldtoa_r+0x122c>
   16f28:	00000593          	li	a1,0
   16f2c:	14810793          	addi	a5,sp,328
   16f30:	12810713          	addi	a4,sp,296
   16f34:	c6dff06f          	j	16ba0 <_ldtoa_r+0xe64>
   16f38:	00068793          	mv	a5,a3
   16f3c:	00069663          	bnez	a3,16f48 <_ldtoa_r+0x120c>
   16f40:	13611703          	lh	a4,310(sp)
   16f44:	08075c63          	bgez	a4,16fdc <_ldtoa_r+0x12a0>
   16f48:	13210713          	addi	a4,sp,306
   16f4c:	14810793          	addi	a5,sp,328
   16f50:	00075583          	lhu	a1,0(a4)
   16f54:	00270713          	addi	a4,a4,2
   16f58:	0c059c63          	bnez	a1,17030 <_ldtoa_r+0x12f4>
   16f5c:	fee79ae3          	bne	a5,a4,16f50 <_ldtoa_r+0x1214>
   16f60:	12c11923          	sh	a2,306(sp)
   16f64:	c91ff06f          	j	16bf4 <_ldtoa_r+0xeb8>
   16f68:	000a8613          	mv	a2,s5
   16f6c:	13010713          	addi	a4,sp,304
   16f70:	14810793          	addi	a5,sp,328
   16f74:	00075583          	lhu	a1,0(a4)
   16f78:	00270713          	addi	a4,a4,2
   16f7c:	00260613          	addi	a2,a2,2
   16f80:	feb61f23          	sh	a1,-2(a2)
   16f84:	fef718e3          	bne	a4,a5,16f74 <_ldtoa_r+0x1238>
   16f88:	16011423          	sh	zero,360(sp)
   16f8c:	13010593          	addi	a1,sp,304
   16f90:	11010613          	addi	a2,sp,272
   16f94:	12810713          	addi	a4,sp,296
   16f98:	00065503          	lhu	a0,0(a2)
   16f9c:	00260613          	addi	a2,a2,2
   16fa0:	00258593          	addi	a1,a1,2
   16fa4:	fea59f23          	sh	a0,-2(a1)
   16fa8:	fee618e3          	bne	a2,a4,16f98 <_ldtoa_r+0x125c>
   16fac:	14011423          	sh	zero,328(sp)
   16fb0:	11010513          	addi	a0,sp,272
   16fb4:	000a8613          	mv	a2,s5
   16fb8:	16810593          	addi	a1,sp,360
   16fbc:	00065803          	lhu	a6,0(a2)
   16fc0:	00260613          	addi	a2,a2,2
   16fc4:	00250513          	addi	a0,a0,2
   16fc8:	ff051f23          	sh	a6,-2(a0)
   16fcc:	feb618e3          	bne	a2,a1,16fbc <_ldtoa_r+0x1280>
   16fd0:	12011423          	sh	zero,296(sp)
   16fd4:	00000593          	li	a1,0
   16fd8:	bc9ff06f          	j	16ba0 <_ldtoa_r+0xe64>
   16fdc:	14810693          	addi	a3,sp,328
   16fe0:	13210813          	addi	a6,sp,306
   16fe4:	01c0006f          	j	17000 <_ldtoa_r+0x12c4>
   16fe8:	00e69023          	sh	a4,0(a3)
   16fec:	0017979b          	slliw	a5,a5,0x1
   16ff0:	03079793          	slli	a5,a5,0x30
   16ff4:	ffe68693          	addi	a3,a3,-2
   16ff8:	0307d793          	srli	a5,a5,0x30
   16ffc:	bf068ce3          	beq	a3,a6,16bf4 <_ldtoa_r+0xeb8>
   17000:	0006d703          	lhu	a4,0(a3)
   17004:	00f75613          	srli	a2,a4,0xf
   17008:	0017171b          	slliw	a4,a4,0x1
   1700c:	00060463          	beqz	a2,17014 <_ldtoa_r+0x12d8>
   17010:	0017e793          	ori	a5,a5,1
   17014:	03071713          	slli	a4,a4,0x30
   17018:	03075713          	srli	a4,a4,0x30
   1701c:	0027f613          	andi	a2,a5,2
   17020:	00176593          	ori	a1,a4,1
   17024:	fc0602e3          	beqz	a2,16fe8 <_ldtoa_r+0x12ac>
   17028:	00b69023          	sh	a1,0(a3)
   1702c:	fc1ff06f          	j	16fec <_ldtoa_r+0x12b0>
   17030:	00168613          	addi	a2,a3,1
   17034:	12c11923          	sh	a2,306(sp)
   17038:	bbdff06f          	j	16bf4 <_ldtoa_r+0xeb8>

000000000001703c <_ldcheck>:
   1703c:	00053703          	ld	a4,0(a0)
   17040:	00853783          	ld	a5,8(a0)
   17044:	fc010113          	addi	sp,sp,-64
   17048:	00010513          	mv	a0,sp
   1704c:	01010593          	addi	a1,sp,16
   17050:	00e13023          	sd	a4,0(sp)
   17054:	00f13423          	sd	a5,8(sp)
   17058:	02113c23          	sd	ra,56(sp)
   1705c:	b6dfe0ef          	jal	ra,15bc8 <e113toe.isra.0>
   17060:	02215783          	lhu	a5,34(sp)
   17064:	00000513          	li	a0,0
   17068:	fff7c793          	not	a5,a5
   1706c:	03179713          	slli	a4,a5,0x31
   17070:	02071063          	bnez	a4,17090 <_ldcheck+0x54>
   17074:	01010793          	addi	a5,sp,16
   17078:	02210693          	addi	a3,sp,34
   1707c:	0007d703          	lhu	a4,0(a5)
   17080:	00278793          	addi	a5,a5,2
   17084:	00071c63          	bnez	a4,1709c <_ldcheck+0x60>
   17088:	fed79ae3          	bne	a5,a3,1707c <_ldcheck+0x40>
   1708c:	00200513          	li	a0,2
   17090:	03813083          	ld	ra,56(sp)
   17094:	04010113          	addi	sp,sp,64
   17098:	00008067          	ret
   1709c:	00100513          	li	a0,1
   170a0:	ff1ff06f          	j	17090 <_ldcheck+0x54>

00000000000170a4 <__localeconv_l>:
   170a4:	10050513          	addi	a0,a0,256
   170a8:	00008067          	ret

00000000000170ac <_localeconv_r>:
   170ac:	e6018513          	addi	a0,gp,-416 # 244c0 <__global_locale+0x100>
   170b0:	00008067          	ret

00000000000170b4 <localeconv>:
   170b4:	e6018513          	addi	a0,gp,-416 # 244c0 <__global_locale+0x100>
   170b8:	00008067          	ret

00000000000170bc <_setlocale_r>:
   170bc:	04060063          	beqz	a2,170fc <_setlocale_r+0x40>
   170c0:	ff010113          	addi	sp,sp,-16
   170c4:	0000b597          	auipc	a1,0xb
   170c8:	25458593          	addi	a1,a1,596 # 22318 <bmask+0x30>
   170cc:	00060513          	mv	a0,a2
   170d0:	00813023          	sd	s0,0(sp)
   170d4:	00113423          	sd	ra,8(sp)
   170d8:	00060413          	mv	s0,a2
   170dc:	2b5020ef          	jal	ra,19b90 <strcmp>
   170e0:	02051463          	bnez	a0,17108 <_setlocale_r+0x4c>
   170e4:	0000b517          	auipc	a0,0xb
   170e8:	22c50513          	addi	a0,a0,556 # 22310 <bmask+0x28>
   170ec:	00813083          	ld	ra,8(sp)
   170f0:	00013403          	ld	s0,0(sp)
   170f4:	01010113          	addi	sp,sp,16
   170f8:	00008067          	ret
   170fc:	0000b517          	auipc	a0,0xb
   17100:	21450513          	addi	a0,a0,532 # 22310 <bmask+0x28>
   17104:	00008067          	ret
   17108:	0000b597          	auipc	a1,0xb
   1710c:	20858593          	addi	a1,a1,520 # 22310 <bmask+0x28>
   17110:	00040513          	mv	a0,s0
   17114:	27d020ef          	jal	ra,19b90 <strcmp>
   17118:	fc0506e3          	beqz	a0,170e4 <_setlocale_r+0x28>
   1711c:	0000b597          	auipc	a1,0xb
   17120:	d5c58593          	addi	a1,a1,-676 # 21e78 <__clzdi2+0x94>
   17124:	00040513          	mv	a0,s0
   17128:	269020ef          	jal	ra,19b90 <strcmp>
   1712c:	fa050ce3          	beqz	a0,170e4 <_setlocale_r+0x28>
   17130:	00000513          	li	a0,0
   17134:	fb9ff06f          	j	170ec <_setlocale_r+0x30>

0000000000017138 <__locale_mb_cur_max>:
   17138:	ec01c503          	lbu	a0,-320(gp) # 24520 <__global_locale+0x160>
   1713c:	00008067          	ret

0000000000017140 <setlocale>:
   17140:	04058063          	beqz	a1,17180 <setlocale+0x40>
   17144:	ff010113          	addi	sp,sp,-16
   17148:	00813023          	sd	s0,0(sp)
   1714c:	00058413          	mv	s0,a1
   17150:	00040513          	mv	a0,s0
   17154:	0000b597          	auipc	a1,0xb
   17158:	1c458593          	addi	a1,a1,452 # 22318 <bmask+0x30>
   1715c:	00113423          	sd	ra,8(sp)
   17160:	231020ef          	jal	ra,19b90 <strcmp>
   17164:	02051463          	bnez	a0,1718c <setlocale+0x4c>
   17168:	0000b517          	auipc	a0,0xb
   1716c:	1a850513          	addi	a0,a0,424 # 22310 <bmask+0x28>
   17170:	00813083          	ld	ra,8(sp)
   17174:	00013403          	ld	s0,0(sp)
   17178:	01010113          	addi	sp,sp,16
   1717c:	00008067          	ret
   17180:	0000b517          	auipc	a0,0xb
   17184:	19050513          	addi	a0,a0,400 # 22310 <bmask+0x28>
   17188:	00008067          	ret
   1718c:	0000b597          	auipc	a1,0xb
   17190:	18458593          	addi	a1,a1,388 # 22310 <bmask+0x28>
   17194:	00040513          	mv	a0,s0
   17198:	1f9020ef          	jal	ra,19b90 <strcmp>
   1719c:	fc0506e3          	beqz	a0,17168 <setlocale+0x28>
   171a0:	0000b597          	auipc	a1,0xb
   171a4:	cd858593          	addi	a1,a1,-808 # 21e78 <__clzdi2+0x94>
   171a8:	00040513          	mv	a0,s0
   171ac:	1e5020ef          	jal	ra,19b90 <strcmp>
   171b0:	fa050ce3          	beqz	a0,17168 <setlocale+0x28>
   171b4:	00000513          	li	a0,0
   171b8:	fb9ff06f          	j	17170 <setlocale+0x30>

00000000000171bc <__smakebuf_r>:
   171bc:	0105d783          	lhu	a5,16(a1)
   171c0:	f6010113          	addi	sp,sp,-160
   171c4:	08813823          	sd	s0,144(sp)
   171c8:	08113c23          	sd	ra,152(sp)
   171cc:	08913423          	sd	s1,136(sp)
   171d0:	09213023          	sd	s2,128(sp)
   171d4:	07313c23          	sd	s3,120(sp)
   171d8:	07413823          	sd	s4,112(sp)
   171dc:	0027f713          	andi	a4,a5,2
   171e0:	00058413          	mv	s0,a1
   171e4:	02070c63          	beqz	a4,1721c <__smakebuf_r+0x60>
   171e8:	07758793          	addi	a5,a1,119
   171ec:	00f5b023          	sd	a5,0(a1)
   171f0:	00f5bc23          	sd	a5,24(a1)
   171f4:	00100793          	li	a5,1
   171f8:	02f5a023          	sw	a5,32(a1)
   171fc:	09813083          	ld	ra,152(sp)
   17200:	09013403          	ld	s0,144(sp)
   17204:	08813483          	ld	s1,136(sp)
   17208:	08013903          	ld	s2,128(sp)
   1720c:	07813983          	ld	s3,120(sp)
   17210:	07013a03          	ld	s4,112(sp)
   17214:	0a010113          	addi	sp,sp,160
   17218:	00008067          	ret
   1721c:	01259583          	lh	a1,18(a1)
   17220:	00050493          	mv	s1,a0
   17224:	0805cc63          	bltz	a1,172bc <__smakebuf_r+0x100>
   17228:	00810613          	addi	a2,sp,8
   1722c:	4f1060ef          	jal	ra,1df1c <_fstat_r>
   17230:	08054463          	bltz	a0,172b8 <__smakebuf_r+0xfc>
   17234:	00c12903          	lw	s2,12(sp)
   17238:	0000f7b7          	lui	a5,0xf
   1723c:	40000993          	li	s3,1024
   17240:	00f97933          	and	s2,s2,a5
   17244:	000027b7          	lui	a5,0x2
   17248:	40f90933          	sub	s2,s2,a5
   1724c:	000017b7          	lui	a5,0x1
   17250:	00193913          	seqz	s2,s2
   17254:	80078a13          	addi	s4,a5,-2048 # 800 <register_fini-0xf8b0>
   17258:	00098593          	mv	a1,s3
   1725c:	00048513          	mv	a0,s1
   17260:	1bc000ef          	jal	ra,1741c <_malloc_r>
   17264:	01041783          	lh	a5,16(s0)
   17268:	06050e63          	beqz	a0,172e4 <__smakebuf_r+0x128>
   1726c:	ffffc717          	auipc	a4,0xffffc
   17270:	2bc70713          	addi	a4,a4,700 # 13528 <_cleanup_r>
   17274:	04e4bc23          	sd	a4,88(s1)
   17278:	0807e793          	ori	a5,a5,128
   1727c:	00f41823          	sh	a5,16(s0)
   17280:	00a43023          	sd	a0,0(s0)
   17284:	00a43c23          	sd	a0,24(s0)
   17288:	03342023          	sw	s3,32(s0)
   1728c:	08091863          	bnez	s2,1731c <__smakebuf_r+0x160>
   17290:	0147e7b3          	or	a5,a5,s4
   17294:	09813083          	ld	ra,152(sp)
   17298:	00f41823          	sh	a5,16(s0)
   1729c:	09013403          	ld	s0,144(sp)
   172a0:	08813483          	ld	s1,136(sp)
   172a4:	08013903          	ld	s2,128(sp)
   172a8:	07813983          	ld	s3,120(sp)
   172ac:	07013a03          	ld	s4,112(sp)
   172b0:	0a010113          	addi	sp,sp,160
   172b4:	00008067          	ret
   172b8:	01045783          	lhu	a5,16(s0)
   172bc:	0807f793          	andi	a5,a5,128
   172c0:	00000913          	li	s2,0
   172c4:	04078663          	beqz	a5,17310 <__smakebuf_r+0x154>
   172c8:	04000993          	li	s3,64
   172cc:	00098593          	mv	a1,s3
   172d0:	00048513          	mv	a0,s1
   172d4:	148000ef          	jal	ra,1741c <_malloc_r>
   172d8:	01041783          	lh	a5,16(s0)
   172dc:	00000a13          	li	s4,0
   172e0:	f80516e3          	bnez	a0,1726c <__smakebuf_r+0xb0>
   172e4:	2007f713          	andi	a4,a5,512
   172e8:	f0071ae3          	bnez	a4,171fc <__smakebuf_r+0x40>
   172ec:	ffc7f793          	andi	a5,a5,-4
   172f0:	0027e793          	ori	a5,a5,2
   172f4:	07740713          	addi	a4,s0,119
   172f8:	00f41823          	sh	a5,16(s0)
   172fc:	00100793          	li	a5,1
   17300:	00e43023          	sd	a4,0(s0)
   17304:	00e43c23          	sd	a4,24(s0)
   17308:	02f42023          	sw	a5,32(s0)
   1730c:	ef1ff06f          	j	171fc <__smakebuf_r+0x40>
   17310:	40000993          	li	s3,1024
   17314:	00000a13          	li	s4,0
   17318:	f41ff06f          	j	17258 <__smakebuf_r+0x9c>
   1731c:	01241583          	lh	a1,18(s0)
   17320:	00048513          	mv	a0,s1
   17324:	451060ef          	jal	ra,1df74 <_isatty_r>
   17328:	00051663          	bnez	a0,17334 <__smakebuf_r+0x178>
   1732c:	01041783          	lh	a5,16(s0)
   17330:	f61ff06f          	j	17290 <__smakebuf_r+0xd4>
   17334:	01045783          	lhu	a5,16(s0)
   17338:	ffc7f793          	andi	a5,a5,-4
   1733c:	0017e793          	ori	a5,a5,1
   17340:	0107979b          	slliw	a5,a5,0x10
   17344:	4107d79b          	sraiw	a5,a5,0x10
   17348:	f49ff06f          	j	17290 <__smakebuf_r+0xd4>

000000000001734c <__swhatbuf_r>:
   1734c:	f7010113          	addi	sp,sp,-144
   17350:	08813023          	sd	s0,128(sp)
   17354:	00058413          	mv	s0,a1
   17358:	01259583          	lh	a1,18(a1)
   1735c:	06913c23          	sd	s1,120(sp)
   17360:	07213823          	sd	s2,112(sp)
   17364:	08113423          	sd	ra,136(sp)
   17368:	00060493          	mv	s1,a2
   1736c:	00068913          	mv	s2,a3
   17370:	0405ca63          	bltz	a1,173c4 <__swhatbuf_r+0x78>
   17374:	00810613          	addi	a2,sp,8
   17378:	3a5060ef          	jal	ra,1df1c <_fstat_r>
   1737c:	04054463          	bltz	a0,173c4 <__swhatbuf_r+0x78>
   17380:	00c12783          	lw	a5,12(sp)
   17384:	0000f737          	lui	a4,0xf
   17388:	08813083          	ld	ra,136(sp)
   1738c:	00e7f7b3          	and	a5,a5,a4
   17390:	00002737          	lui	a4,0x2
   17394:	40e787b3          	sub	a5,a5,a4
   17398:	08013403          	ld	s0,128(sp)
   1739c:	0017b793          	seqz	a5,a5
   173a0:	00f92023          	sw	a5,0(s2)
   173a4:	40000793          	li	a5,1024
   173a8:	00f4b023          	sd	a5,0(s1)
   173ac:	00001537          	lui	a0,0x1
   173b0:	07813483          	ld	s1,120(sp)
   173b4:	07013903          	ld	s2,112(sp)
   173b8:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   173bc:	09010113          	addi	sp,sp,144
   173c0:	00008067          	ret
   173c4:	01041783          	lh	a5,16(s0)
   173c8:	00092023          	sw	zero,0(s2)
   173cc:	0807f793          	andi	a5,a5,128
   173d0:	02078463          	beqz	a5,173f8 <__swhatbuf_r+0xac>
   173d4:	08813083          	ld	ra,136(sp)
   173d8:	08013403          	ld	s0,128(sp)
   173dc:	04000793          	li	a5,64
   173e0:	00f4b023          	sd	a5,0(s1)
   173e4:	07013903          	ld	s2,112(sp)
   173e8:	07813483          	ld	s1,120(sp)
   173ec:	00000513          	li	a0,0
   173f0:	09010113          	addi	sp,sp,144
   173f4:	00008067          	ret
   173f8:	08813083          	ld	ra,136(sp)
   173fc:	08013403          	ld	s0,128(sp)
   17400:	40000793          	li	a5,1024
   17404:	00f4b023          	sd	a5,0(s1)
   17408:	07013903          	ld	s2,112(sp)
   1740c:	07813483          	ld	s1,120(sp)
   17410:	00000513          	li	a0,0
   17414:	09010113          	addi	sp,sp,144
   17418:	00008067          	ret

000000000001741c <_malloc_r>:
   1741c:	fa010113          	addi	sp,sp,-96
   17420:	04913423          	sd	s1,72(sp)
   17424:	05213023          	sd	s2,64(sp)
   17428:	04113c23          	sd	ra,88(sp)
   1742c:	04813823          	sd	s0,80(sp)
   17430:	03313c23          	sd	s3,56(sp)
   17434:	03413823          	sd	s4,48(sp)
   17438:	03513423          	sd	s5,40(sp)
   1743c:	03613023          	sd	s6,32(sp)
   17440:	01713c23          	sd	s7,24(sp)
   17444:	01813823          	sd	s8,16(sp)
   17448:	01913423          	sd	s9,8(sp)
   1744c:	01758493          	addi	s1,a1,23
   17450:	02e00793          	li	a5,46
   17454:	00050913          	mv	s2,a0
   17458:	0697e663          	bltu	a5,s1,174c4 <_malloc_r+0xa8>
   1745c:	02000793          	li	a5,32
   17460:	26b7e663          	bltu	a5,a1,176cc <_malloc_r+0x2b0>
   17464:	349000ef          	jal	ra,17fac <__malloc_lock>
   17468:	02000493          	li	s1,32
   1746c:	05000793          	li	a5,80
   17470:	00400613          	li	a2,4
   17474:	0000d997          	auipc	s3,0xd
   17478:	0f498993          	addi	s3,s3,244 # 24568 <__malloc_av_>
   1747c:	00f987b3          	add	a5,s3,a5
   17480:	0087b403          	ld	s0,8(a5)
   17484:	ff078713          	addi	a4,a5,-16
   17488:	28e40263          	beq	s0,a4,1770c <_malloc_r+0x2f0>
   1748c:	00843783          	ld	a5,8(s0)
   17490:	01843683          	ld	a3,24(s0)
   17494:	01043603          	ld	a2,16(s0)
   17498:	ffc7f793          	andi	a5,a5,-4
   1749c:	00f407b3          	add	a5,s0,a5
   174a0:	0087b703          	ld	a4,8(a5)
   174a4:	00d63c23          	sd	a3,24(a2)
   174a8:	00c6b823          	sd	a2,16(a3)
   174ac:	00176713          	ori	a4,a4,1
   174b0:	00090513          	mv	a0,s2
   174b4:	00e7b423          	sd	a4,8(a5)
   174b8:	2f9000ef          	jal	ra,17fb0 <__malloc_unlock>
   174bc:	01040513          	addi	a0,s0,16
   174c0:	2180006f          	j	176d8 <_malloc_r+0x2bc>
   174c4:	800007b7          	lui	a5,0x80000
   174c8:	ff04f493          	andi	s1,s1,-16
   174cc:	fff7c793          	not	a5,a5
   174d0:	1e97ee63          	bltu	a5,s1,176cc <_malloc_r+0x2b0>
   174d4:	1eb4ec63          	bltu	s1,a1,176cc <_malloc_r+0x2b0>
   174d8:	2d5000ef          	jal	ra,17fac <__malloc_lock>
   174dc:	1f700793          	li	a5,503
   174e0:	4e97f663          	bgeu	a5,s1,179cc <_malloc_r+0x5b0>
   174e4:	0094d793          	srli	a5,s1,0x9
   174e8:	34078c63          	beqz	a5,17840 <_malloc_r+0x424>
   174ec:	00400713          	li	a4,4
   174f0:	40f76c63          	bltu	a4,a5,17908 <_malloc_r+0x4ec>
   174f4:	0064d793          	srli	a5,s1,0x6
   174f8:	0397861b          	addiw	a2,a5,57
   174fc:	0016169b          	slliw	a3,a2,0x1
   17500:	0387851b          	addiw	a0,a5,56
   17504:	00369693          	slli	a3,a3,0x3
   17508:	0000d997          	auipc	s3,0xd
   1750c:	06098993          	addi	s3,s3,96 # 24568 <__malloc_av_>
   17510:	00d986b3          	add	a3,s3,a3
   17514:	0086b403          	ld	s0,8(a3)
   17518:	ff068693          	addi	a3,a3,-16
   1751c:	1e868e63          	beq	a3,s0,17718 <_malloc_r+0x2fc>
   17520:	01f00593          	li	a1,31
   17524:	0100006f          	j	17534 <_malloc_r+0x118>
   17528:	36075863          	bgez	a4,17898 <_malloc_r+0x47c>
   1752c:	01843403          	ld	s0,24(s0)
   17530:	1e868463          	beq	a3,s0,17718 <_malloc_r+0x2fc>
   17534:	00843783          	ld	a5,8(s0)
   17538:	ffc7f793          	andi	a5,a5,-4
   1753c:	40978733          	sub	a4,a5,s1
   17540:	fee5d4e3          	bge	a1,a4,17528 <_malloc_r+0x10c>
   17544:	0209b403          	ld	s0,32(s3)
   17548:	0000d897          	auipc	a7,0xd
   1754c:	03088893          	addi	a7,a7,48 # 24578 <__malloc_av_+0x10>
   17550:	00050613          	mv	a2,a0
   17554:	1d141a63          	bne	s0,a7,17728 <_malloc_r+0x30c>
   17558:	0089b783          	ld	a5,8(s3)
   1755c:	4026571b          	sraiw	a4,a2,0x2
   17560:	00100593          	li	a1,1
   17564:	00e595b3          	sll	a1,a1,a4
   17568:	22b7fe63          	bgeu	a5,a1,177a4 <_malloc_r+0x388>
   1756c:	0109b403          	ld	s0,16(s3)
   17570:	00843a03          	ld	s4,8(s0)
   17574:	ffca7a93          	andi	s5,s4,-4
   17578:	009ae863          	bltu	s5,s1,17588 <_malloc_r+0x16c>
   1757c:	409a87b3          	sub	a5,s5,s1
   17580:	01f00713          	li	a4,31
   17584:	2ef74663          	blt	a4,a5,17870 <_malloc_r+0x454>
   17588:	76018c93          	addi	s9,gp,1888 # 24dc0 <__malloc_sbrk_base>
   1758c:	000cb703          	ld	a4,0(s9) # 1000 <register_fini-0xf0b0>
   17590:	7881ba03          	ld	s4,1928(gp) # 24de8 <__malloc_top_pad>
   17594:	fff00793          	li	a5,-1
   17598:	01540bb3          	add	s7,s0,s5
   1759c:	01448a33          	add	s4,s1,s4
   175a0:	4ef70a63          	beq	a4,a5,17a94 <_malloc_r+0x678>
   175a4:	000017b7          	lui	a5,0x1
   175a8:	01f78793          	addi	a5,a5,31 # 101f <register_fini-0xf091>
   175ac:	00fa0a33          	add	s4,s4,a5
   175b0:	fffff7b7          	lui	a5,0xfffff
   175b4:	00fa7a33          	and	s4,s4,a5
   175b8:	000a0593          	mv	a1,s4
   175bc:	00090513          	mv	a0,s2
   175c0:	2a4020ef          	jal	ra,19864 <_sbrk_r>
   175c4:	fff00793          	li	a5,-1
   175c8:	00050b13          	mv	s6,a0
   175cc:	42f50a63          	beq	a0,a5,17a00 <_malloc_r+0x5e4>
   175d0:	43756663          	bltu	a0,s7,179fc <_malloc_r+0x5e0>
   175d4:	7d818c13          	addi	s8,gp,2008 # 24e38 <__malloc_current_mallinfo>
   175d8:	000c2703          	lw	a4,0(s8)
   175dc:	014707bb          	addw	a5,a4,s4
   175e0:	00fc2023          	sw	a5,0(s8)
   175e4:	00078693          	mv	a3,a5
   175e8:	54ab8e63          	beq	s7,a0,17b44 <_malloc_r+0x728>
   175ec:	000cb703          	ld	a4,0(s9)
   175f0:	fff00793          	li	a5,-1
   175f4:	56f70663          	beq	a4,a5,17b60 <_malloc_r+0x744>
   175f8:	417b07b3          	sub	a5,s6,s7
   175fc:	00d787bb          	addw	a5,a5,a3
   17600:	00fc2023          	sw	a5,0(s8)
   17604:	00fb7b93          	andi	s7,s6,15
   17608:	4a0b8863          	beqz	s7,17ab8 <_malloc_r+0x69c>
   1760c:	00001737          	lui	a4,0x1
   17610:	417b0b33          	sub	s6,s6,s7
   17614:	01070793          	addi	a5,a4,16 # 1010 <register_fini-0xf0a0>
   17618:	010b0b13          	addi	s6,s6,16 # ffffffff80000010 <__BSS_END__+0xffffffff7ffdb1b0>
   1761c:	417787b3          	sub	a5,a5,s7
   17620:	014b0cb3          	add	s9,s6,s4
   17624:	41978a33          	sub	s4,a5,s9
   17628:	fff70713          	addi	a4,a4,-1
   1762c:	00ea7a33          	and	s4,s4,a4
   17630:	000a0593          	mv	a1,s4
   17634:	00090513          	mv	a0,s2
   17638:	22c020ef          	jal	ra,19864 <_sbrk_r>
   1763c:	fff00793          	li	a5,-1
   17640:	56f50e63          	beq	a0,a5,17bbc <_malloc_r+0x7a0>
   17644:	41650533          	sub	a0,a0,s6
   17648:	000a071b          	sext.w	a4,s4
   1764c:	01450a33          	add	s4,a0,s4
   17650:	000c2783          	lw	a5,0(s8)
   17654:	0169b823          	sd	s6,16(s3)
   17658:	001a6a13          	ori	s4,s4,1
   1765c:	00e787bb          	addw	a5,a5,a4
   17660:	00fc2023          	sw	a5,0(s8)
   17664:	014b3423          	sd	s4,8(s6)
   17668:	51340063          	beq	s0,s3,17b68 <_malloc_r+0x74c>
   1766c:	01f00613          	li	a2,31
   17670:	51567063          	bgeu	a2,s5,17b70 <_malloc_r+0x754>
   17674:	00843683          	ld	a3,8(s0)
   17678:	fe8a8713          	addi	a4,s5,-24 # ffffffffffffefe8 <__BSS_END__+0xfffffffffffda188>
   1767c:	ff077713          	andi	a4,a4,-16
   17680:	0016f693          	andi	a3,a3,1
   17684:	00e6e6b3          	or	a3,a3,a4
   17688:	00d43423          	sd	a3,8(s0)
   1768c:	00900593          	li	a1,9
   17690:	00e406b3          	add	a3,s0,a4
   17694:	00b6b423          	sd	a1,8(a3)
   17698:	00b6b823          	sd	a1,16(a3)
   1769c:	52e66a63          	bltu	a2,a4,17bd0 <_malloc_r+0x7b4>
   176a0:	008b3a03          	ld	s4,8(s6)
   176a4:	000b0413          	mv	s0,s6
   176a8:	78018713          	addi	a4,gp,1920 # 24de0 <__malloc_max_sbrked_mem>
   176ac:	00073683          	ld	a3,0(a4)
   176b0:	00f6f463          	bgeu	a3,a5,176b8 <_malloc_r+0x29c>
   176b4:	00f73023          	sd	a5,0(a4)
   176b8:	77818713          	addi	a4,gp,1912 # 24dd8 <__malloc_max_total_mem>
   176bc:	00073683          	ld	a3,0(a4)
   176c0:	34f6f463          	bgeu	a3,a5,17a08 <_malloc_r+0x5ec>
   176c4:	00f73023          	sd	a5,0(a4)
   176c8:	3400006f          	j	17a08 <_malloc_r+0x5ec>
   176cc:	00c00793          	li	a5,12
   176d0:	00f92023          	sw	a5,0(s2)
   176d4:	00000513          	li	a0,0
   176d8:	05813083          	ld	ra,88(sp)
   176dc:	05013403          	ld	s0,80(sp)
   176e0:	04813483          	ld	s1,72(sp)
   176e4:	04013903          	ld	s2,64(sp)
   176e8:	03813983          	ld	s3,56(sp)
   176ec:	03013a03          	ld	s4,48(sp)
   176f0:	02813a83          	ld	s5,40(sp)
   176f4:	02013b03          	ld	s6,32(sp)
   176f8:	01813b83          	ld	s7,24(sp)
   176fc:	01013c03          	ld	s8,16(sp)
   17700:	00813c83          	ld	s9,8(sp)
   17704:	06010113          	addi	sp,sp,96
   17708:	00008067          	ret
   1770c:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xfffffffffffda1b8>
   17710:	0026061b          	addiw	a2,a2,2
   17714:	d6879ce3          	bne	a5,s0,1748c <_malloc_r+0x70>
   17718:	0209b403          	ld	s0,32(s3)
   1771c:	0000d897          	auipc	a7,0xd
   17720:	e5c88893          	addi	a7,a7,-420 # 24578 <__malloc_av_+0x10>
   17724:	e3140ae3          	beq	s0,a7,17558 <_malloc_r+0x13c>
   17728:	00843783          	ld	a5,8(s0)
   1772c:	01f00693          	li	a3,31
   17730:	ffc7f793          	andi	a5,a5,-4
   17734:	40978733          	sub	a4,a5,s1
   17738:	24e6cc63          	blt	a3,a4,17990 <_malloc_r+0x574>
   1773c:	0319b423          	sd	a7,40(s3)
   17740:	0319b023          	sd	a7,32(s3)
   17744:	10075663          	bgez	a4,17850 <_malloc_r+0x434>
   17748:	1ff00713          	li	a4,511
   1774c:	14f76c63          	bltu	a4,a5,178a4 <_malloc_r+0x488>
   17750:	0037d793          	srli	a5,a5,0x3
   17754:	0017871b          	addiw	a4,a5,1
   17758:	0017171b          	slliw	a4,a4,0x1
   1775c:	00371713          	slli	a4,a4,0x3
   17760:	0089b503          	ld	a0,8(s3)
   17764:	00e98733          	add	a4,s3,a4
   17768:	00073583          	ld	a1,0(a4)
   1776c:	4027d69b          	sraiw	a3,a5,0x2
   17770:	00100793          	li	a5,1
   17774:	00d797b3          	sll	a5,a5,a3
   17778:	00a7e7b3          	or	a5,a5,a0
   1777c:	ff070693          	addi	a3,a4,-16
   17780:	00d43c23          	sd	a3,24(s0)
   17784:	00b43823          	sd	a1,16(s0)
   17788:	00f9b423          	sd	a5,8(s3)
   1778c:	00873023          	sd	s0,0(a4)
   17790:	0085bc23          	sd	s0,24(a1)
   17794:	4026571b          	sraiw	a4,a2,0x2
   17798:	00100593          	li	a1,1
   1779c:	00e595b3          	sll	a1,a1,a4
   177a0:	dcb7e6e3          	bltu	a5,a1,1756c <_malloc_r+0x150>
   177a4:	00f5f733          	and	a4,a1,a5
   177a8:	02071463          	bnez	a4,177d0 <_malloc_r+0x3b4>
   177ac:	00159593          	slli	a1,a1,0x1
   177b0:	ffc67613          	andi	a2,a2,-4
   177b4:	00f5f733          	and	a4,a1,a5
   177b8:	0046061b          	addiw	a2,a2,4
   177bc:	00071a63          	bnez	a4,177d0 <_malloc_r+0x3b4>
   177c0:	00159593          	slli	a1,a1,0x1
   177c4:	00f5f733          	and	a4,a1,a5
   177c8:	0046061b          	addiw	a2,a2,4
   177cc:	fe070ae3          	beqz	a4,177c0 <_malloc_r+0x3a4>
   177d0:	01f00813          	li	a6,31
   177d4:	0016031b          	addiw	t1,a2,1
   177d8:	0013131b          	slliw	t1,t1,0x1
   177dc:	00331313          	slli	t1,t1,0x3
   177e0:	ff030313          	addi	t1,t1,-16
   177e4:	00698333          	add	t1,s3,t1
   177e8:	00030513          	mv	a0,t1
   177ec:	01853783          	ld	a5,24(a0)
   177f0:	00060e13          	mv	t3,a2
   177f4:	12f50e63          	beq	a0,a5,17930 <_malloc_r+0x514>
   177f8:	0087b703          	ld	a4,8(a5)
   177fc:	00078413          	mv	s0,a5
   17800:	0187b783          	ld	a5,24(a5)
   17804:	ffc77713          	andi	a4,a4,-4
   17808:	409706b3          	sub	a3,a4,s1
   1780c:	12d84e63          	blt	a6,a3,17948 <_malloc_r+0x52c>
   17810:	fe06c2e3          	bltz	a3,177f4 <_malloc_r+0x3d8>
   17814:	00e40733          	add	a4,s0,a4
   17818:	00873683          	ld	a3,8(a4)
   1781c:	01043603          	ld	a2,16(s0)
   17820:	00090513          	mv	a0,s2
   17824:	0016e693          	ori	a3,a3,1
   17828:	00d73423          	sd	a3,8(a4)
   1782c:	00f63c23          	sd	a5,24(a2)
   17830:	00c7b823          	sd	a2,16(a5)
   17834:	77c000ef          	jal	ra,17fb0 <__malloc_unlock>
   17838:	01040513          	addi	a0,s0,16
   1783c:	e9dff06f          	j	176d8 <_malloc_r+0x2bc>
   17840:	40000693          	li	a3,1024
   17844:	04000613          	li	a2,64
   17848:	03f00513          	li	a0,63
   1784c:	cbdff06f          	j	17508 <_malloc_r+0xec>
   17850:	00f407b3          	add	a5,s0,a5
   17854:	0087b703          	ld	a4,8(a5)
   17858:	00090513          	mv	a0,s2
   1785c:	00176713          	ori	a4,a4,1
   17860:	00e7b423          	sd	a4,8(a5)
   17864:	74c000ef          	jal	ra,17fb0 <__malloc_unlock>
   17868:	01040513          	addi	a0,s0,16
   1786c:	e6dff06f          	j	176d8 <_malloc_r+0x2bc>
   17870:	0014e713          	ori	a4,s1,1
   17874:	00e43423          	sd	a4,8(s0)
   17878:	009404b3          	add	s1,s0,s1
   1787c:	0099b823          	sd	s1,16(s3)
   17880:	0017e793          	ori	a5,a5,1
   17884:	00090513          	mv	a0,s2
   17888:	00f4b423          	sd	a5,8(s1)
   1788c:	724000ef          	jal	ra,17fb0 <__malloc_unlock>
   17890:	01040513          	addi	a0,s0,16
   17894:	e45ff06f          	j	176d8 <_malloc_r+0x2bc>
   17898:	01843683          	ld	a3,24(s0)
   1789c:	01043603          	ld	a2,16(s0)
   178a0:	bfdff06f          	j	1749c <_malloc_r+0x80>
   178a4:	0097d713          	srli	a4,a5,0x9
   178a8:	00400693          	li	a3,4
   178ac:	12e6fc63          	bgeu	a3,a4,179e4 <_malloc_r+0x5c8>
   178b0:	01400693          	li	a3,20
   178b4:	22e6ee63          	bltu	a3,a4,17af0 <_malloc_r+0x6d4>
   178b8:	05c7059b          	addiw	a1,a4,92
   178bc:	0015959b          	slliw	a1,a1,0x1
   178c0:	05b7069b          	addiw	a3,a4,91
   178c4:	00359593          	slli	a1,a1,0x3
   178c8:	00b985b3          	add	a1,s3,a1
   178cc:	0005b703          	ld	a4,0(a1)
   178d0:	ff058593          	addi	a1,a1,-16
   178d4:	1ce58463          	beq	a1,a4,17a9c <_malloc_r+0x680>
   178d8:	00873683          	ld	a3,8(a4)
   178dc:	ffc6f693          	andi	a3,a3,-4
   178e0:	00d7f663          	bgeu	a5,a3,178ec <_malloc_r+0x4d0>
   178e4:	01073703          	ld	a4,16(a4)
   178e8:	fee598e3          	bne	a1,a4,178d8 <_malloc_r+0x4bc>
   178ec:	01873583          	ld	a1,24(a4)
   178f0:	0089b783          	ld	a5,8(s3)
   178f4:	00b43c23          	sd	a1,24(s0)
   178f8:	00e43823          	sd	a4,16(s0)
   178fc:	0085b823          	sd	s0,16(a1)
   17900:	00873c23          	sd	s0,24(a4)
   17904:	e91ff06f          	j	17794 <_malloc_r+0x378>
   17908:	01400713          	li	a4,20
   1790c:	12f77063          	bgeu	a4,a5,17a2c <_malloc_r+0x610>
   17910:	05400713          	li	a4,84
   17914:	1ef76e63          	bltu	a4,a5,17b10 <_malloc_r+0x6f4>
   17918:	00c4d793          	srli	a5,s1,0xc
   1791c:	06f7861b          	addiw	a2,a5,111
   17920:	0016169b          	slliw	a3,a2,0x1
   17924:	06e7851b          	addiw	a0,a5,110
   17928:	00369693          	slli	a3,a3,0x3
   1792c:	bddff06f          	j	17508 <_malloc_r+0xec>
   17930:	001e0e1b          	addiw	t3,t3,1
   17934:	003e7793          	andi	a5,t3,3
   17938:	01050513          	addi	a0,a0,16
   1793c:	10078863          	beqz	a5,17a4c <_malloc_r+0x630>
   17940:	01853783          	ld	a5,24(a0)
   17944:	eb1ff06f          	j	177f4 <_malloc_r+0x3d8>
   17948:	01043603          	ld	a2,16(s0)
   1794c:	0014e593          	ori	a1,s1,1
   17950:	00b43423          	sd	a1,8(s0)
   17954:	00f63c23          	sd	a5,24(a2)
   17958:	00c7b823          	sd	a2,16(a5)
   1795c:	009404b3          	add	s1,s0,s1
   17960:	0299b423          	sd	s1,40(s3)
   17964:	0299b023          	sd	s1,32(s3)
   17968:	0016e793          	ori	a5,a3,1
   1796c:	0114bc23          	sd	a7,24(s1)
   17970:	0114b823          	sd	a7,16(s1)
   17974:	00f4b423          	sd	a5,8(s1)
   17978:	00e40733          	add	a4,s0,a4
   1797c:	00090513          	mv	a0,s2
   17980:	00d73023          	sd	a3,0(a4)
   17984:	62c000ef          	jal	ra,17fb0 <__malloc_unlock>
   17988:	01040513          	addi	a0,s0,16
   1798c:	d4dff06f          	j	176d8 <_malloc_r+0x2bc>
   17990:	0014e693          	ori	a3,s1,1
   17994:	00d43423          	sd	a3,8(s0)
   17998:	009404b3          	add	s1,s0,s1
   1799c:	0299b423          	sd	s1,40(s3)
   179a0:	0299b023          	sd	s1,32(s3)
   179a4:	00176693          	ori	a3,a4,1
   179a8:	0114bc23          	sd	a7,24(s1)
   179ac:	0114b823          	sd	a7,16(s1)
   179b0:	00d4b423          	sd	a3,8(s1)
   179b4:	00f407b3          	add	a5,s0,a5
   179b8:	00090513          	mv	a0,s2
   179bc:	00e7b023          	sd	a4,0(a5)
   179c0:	5f0000ef          	jal	ra,17fb0 <__malloc_unlock>
   179c4:	01040513          	addi	a0,s0,16
   179c8:	d11ff06f          	j	176d8 <_malloc_r+0x2bc>
   179cc:	0034d613          	srli	a2,s1,0x3
   179d0:	0016079b          	addiw	a5,a2,1
   179d4:	0017979b          	slliw	a5,a5,0x1
   179d8:	0006061b          	sext.w	a2,a2
   179dc:	00379793          	slli	a5,a5,0x3
   179e0:	a95ff06f          	j	17474 <_malloc_r+0x58>
   179e4:	0067d713          	srli	a4,a5,0x6
   179e8:	0397059b          	addiw	a1,a4,57
   179ec:	0015959b          	slliw	a1,a1,0x1
   179f0:	0387069b          	addiw	a3,a4,56
   179f4:	00359593          	slli	a1,a1,0x3
   179f8:	ed1ff06f          	j	178c8 <_malloc_r+0x4ac>
   179fc:	13340a63          	beq	s0,s3,17b30 <_malloc_r+0x714>
   17a00:	0109b403          	ld	s0,16(s3)
   17a04:	00843a03          	ld	s4,8(s0)
   17a08:	ffca7a13          	andi	s4,s4,-4
   17a0c:	409a07b3          	sub	a5,s4,s1
   17a10:	009a6663          	bltu	s4,s1,17a1c <_malloc_r+0x600>
   17a14:	01f00713          	li	a4,31
   17a18:	e4f74ce3          	blt	a4,a5,17870 <_malloc_r+0x454>
   17a1c:	00090513          	mv	a0,s2
   17a20:	590000ef          	jal	ra,17fb0 <__malloc_unlock>
   17a24:	00000513          	li	a0,0
   17a28:	cb1ff06f          	j	176d8 <_malloc_r+0x2bc>
   17a2c:	05c7861b          	addiw	a2,a5,92
   17a30:	0016169b          	slliw	a3,a2,0x1
   17a34:	05b7851b          	addiw	a0,a5,91
   17a38:	00369693          	slli	a3,a3,0x3
   17a3c:	acdff06f          	j	17508 <_malloc_r+0xec>
   17a40:	01033783          	ld	a5,16(t1)
   17a44:	fff6061b          	addiw	a2,a2,-1
   17a48:	1e679063          	bne	a5,t1,17c28 <_malloc_r+0x80c>
   17a4c:	00367793          	andi	a5,a2,3
   17a50:	ff030313          	addi	t1,t1,-16
   17a54:	fe0796e3          	bnez	a5,17a40 <_malloc_r+0x624>
   17a58:	0089b703          	ld	a4,8(s3)
   17a5c:	fff5c793          	not	a5,a1
   17a60:	00e7f7b3          	and	a5,a5,a4
   17a64:	00f9b423          	sd	a5,8(s3)
   17a68:	00159593          	slli	a1,a1,0x1
   17a6c:	b0b7e0e3          	bltu	a5,a1,1756c <_malloc_r+0x150>
   17a70:	ae058ee3          	beqz	a1,1756c <_malloc_r+0x150>
   17a74:	00f5f733          	and	a4,a1,a5
   17a78:	00071a63          	bnez	a4,17a8c <_malloc_r+0x670>
   17a7c:	00159593          	slli	a1,a1,0x1
   17a80:	00f5f733          	and	a4,a1,a5
   17a84:	004e0e1b          	addiw	t3,t3,4
   17a88:	fe070ae3          	beqz	a4,17a7c <_malloc_r+0x660>
   17a8c:	000e0613          	mv	a2,t3
   17a90:	d45ff06f          	j	177d4 <_malloc_r+0x3b8>
   17a94:	020a0a13          	addi	s4,s4,32
   17a98:	b21ff06f          	j	175b8 <_malloc_r+0x19c>
   17a9c:	0089b503          	ld	a0,8(s3)
   17aa0:	4026d69b          	sraiw	a3,a3,0x2
   17aa4:	00100793          	li	a5,1
   17aa8:	00d797b3          	sll	a5,a5,a3
   17aac:	00a7e7b3          	or	a5,a5,a0
   17ab0:	00f9b423          	sd	a5,8(s3)
   17ab4:	e41ff06f          	j	178f4 <_malloc_r+0x4d8>
   17ab8:	014b0bb3          	add	s7,s6,s4
   17abc:	41700bb3          	neg	s7,s7
   17ac0:	034b9b93          	slli	s7,s7,0x34
   17ac4:	034bdb93          	srli	s7,s7,0x34
   17ac8:	000b8593          	mv	a1,s7
   17acc:	00090513          	mv	a0,s2
   17ad0:	595010ef          	jal	ra,19864 <_sbrk_r>
   17ad4:	fff00793          	li	a5,-1
   17ad8:	00000713          	li	a4,0
   17adc:	b6f50ae3          	beq	a0,a5,17650 <_malloc_r+0x234>
   17ae0:	41650533          	sub	a0,a0,s6
   17ae4:	000b871b          	sext.w	a4,s7
   17ae8:	01750a33          	add	s4,a0,s7
   17aec:	b65ff06f          	j	17650 <_malloc_r+0x234>
   17af0:	05400693          	li	a3,84
   17af4:	08e6e463          	bltu	a3,a4,17b7c <_malloc_r+0x760>
   17af8:	00c7d713          	srli	a4,a5,0xc
   17afc:	06f7059b          	addiw	a1,a4,111
   17b00:	0015959b          	slliw	a1,a1,0x1
   17b04:	06e7069b          	addiw	a3,a4,110
   17b08:	00359593          	slli	a1,a1,0x3
   17b0c:	dbdff06f          	j	178c8 <_malloc_r+0x4ac>
   17b10:	15400713          	li	a4,340
   17b14:	08f76463          	bltu	a4,a5,17b9c <_malloc_r+0x780>
   17b18:	00f4d793          	srli	a5,s1,0xf
   17b1c:	0787861b          	addiw	a2,a5,120
   17b20:	0016169b          	slliw	a3,a2,0x1
   17b24:	0777851b          	addiw	a0,a5,119
   17b28:	00369693          	slli	a3,a3,0x3
   17b2c:	9ddff06f          	j	17508 <_malloc_r+0xec>
   17b30:	7d818c13          	addi	s8,gp,2008 # 24e38 <__malloc_current_mallinfo>
   17b34:	000c2783          	lw	a5,0(s8)
   17b38:	014786bb          	addw	a3,a5,s4
   17b3c:	00dc2023          	sw	a3,0(s8)
   17b40:	aadff06f          	j	175ec <_malloc_r+0x1d0>
   17b44:	034b9713          	slli	a4,s7,0x34
   17b48:	aa0712e3          	bnez	a4,175ec <_malloc_r+0x1d0>
   17b4c:	0109b403          	ld	s0,16(s3)
   17b50:	014a8a33          	add	s4,s5,s4
   17b54:	001a6a13          	ori	s4,s4,1
   17b58:	01443423          	sd	s4,8(s0)
   17b5c:	b4dff06f          	j	176a8 <_malloc_r+0x28c>
   17b60:	016cb023          	sd	s6,0(s9)
   17b64:	aa1ff06f          	j	17604 <_malloc_r+0x1e8>
   17b68:	000b0413          	mv	s0,s6
   17b6c:	b3dff06f          	j	176a8 <_malloc_r+0x28c>
   17b70:	00100793          	li	a5,1
   17b74:	00fb3423          	sd	a5,8(s6)
   17b78:	ea5ff06f          	j	17a1c <_malloc_r+0x600>
   17b7c:	15400693          	li	a3,340
   17b80:	06e6e663          	bltu	a3,a4,17bec <_malloc_r+0x7d0>
   17b84:	00f7d713          	srli	a4,a5,0xf
   17b88:	0787059b          	addiw	a1,a4,120
   17b8c:	0015959b          	slliw	a1,a1,0x1
   17b90:	0777069b          	addiw	a3,a4,119
   17b94:	00359593          	slli	a1,a1,0x3
   17b98:	d31ff06f          	j	178c8 <_malloc_r+0x4ac>
   17b9c:	55400713          	li	a4,1364
   17ba0:	06f76663          	bltu	a4,a5,17c0c <_malloc_r+0x7f0>
   17ba4:	0124d793          	srli	a5,s1,0x12
   17ba8:	07d7861b          	addiw	a2,a5,125
   17bac:	0016169b          	slliw	a3,a2,0x1
   17bb0:	07c7851b          	addiw	a0,a5,124
   17bb4:	00369693          	slli	a3,a3,0x3
   17bb8:	951ff06f          	j	17508 <_malloc_r+0xec>
   17bbc:	ff0b8b93          	addi	s7,s7,-16
   17bc0:	017c8a33          	add	s4,s9,s7
   17bc4:	416a0a33          	sub	s4,s4,s6
   17bc8:	00000713          	li	a4,0
   17bcc:	a85ff06f          	j	17650 <_malloc_r+0x234>
   17bd0:	01040593          	addi	a1,s0,16
   17bd4:	00090513          	mv	a0,s2
   17bd8:	e81fb0ef          	jal	ra,13a58 <_free_r>
   17bdc:	0109b403          	ld	s0,16(s3)
   17be0:	000c2783          	lw	a5,0(s8)
   17be4:	00843a03          	ld	s4,8(s0)
   17be8:	ac1ff06f          	j	176a8 <_malloc_r+0x28c>
   17bec:	55400693          	li	a3,1364
   17bf0:	02e6e663          	bltu	a3,a4,17c1c <_malloc_r+0x800>
   17bf4:	0127d713          	srli	a4,a5,0x12
   17bf8:	07d7059b          	addiw	a1,a4,125
   17bfc:	0015959b          	slliw	a1,a1,0x1
   17c00:	07c7069b          	addiw	a3,a4,124
   17c04:	00359593          	slli	a1,a1,0x3
   17c08:	cc1ff06f          	j	178c8 <_malloc_r+0x4ac>
   17c0c:	7f000693          	li	a3,2032
   17c10:	07f00613          	li	a2,127
   17c14:	07e00513          	li	a0,126
   17c18:	8f1ff06f          	j	17508 <_malloc_r+0xec>
   17c1c:	7f000593          	li	a1,2032
   17c20:	07e00693          	li	a3,126
   17c24:	ca5ff06f          	j	178c8 <_malloc_r+0x4ac>
   17c28:	0089b783          	ld	a5,8(s3)
   17c2c:	e3dff06f          	j	17a68 <_malloc_r+0x64c>

0000000000017c30 <_mbtowc_r>:
   17c30:	e481b783          	ld	a5,-440(gp) # 244a8 <__global_locale+0xe8>
   17c34:	00078067          	jr	a5

0000000000017c38 <__ascii_mbtowc>:
   17c38:	02058063          	beqz	a1,17c58 <__ascii_mbtowc+0x20>
   17c3c:	04060263          	beqz	a2,17c80 <__ascii_mbtowc+0x48>
   17c40:	04068863          	beqz	a3,17c90 <__ascii_mbtowc+0x58>
   17c44:	00064783          	lbu	a5,0(a2)
   17c48:	00f5a023          	sw	a5,0(a1)
   17c4c:	00064503          	lbu	a0,0(a2)
   17c50:	00a03533          	snez	a0,a0
   17c54:	00008067          	ret
   17c58:	ff010113          	addi	sp,sp,-16
   17c5c:	00c10593          	addi	a1,sp,12
   17c60:	02060463          	beqz	a2,17c88 <__ascii_mbtowc+0x50>
   17c64:	02068a63          	beqz	a3,17c98 <__ascii_mbtowc+0x60>
   17c68:	00064783          	lbu	a5,0(a2)
   17c6c:	00f5a023          	sw	a5,0(a1)
   17c70:	00064503          	lbu	a0,0(a2)
   17c74:	00a03533          	snez	a0,a0
   17c78:	01010113          	addi	sp,sp,16
   17c7c:	00008067          	ret
   17c80:	00000513          	li	a0,0
   17c84:	00008067          	ret
   17c88:	00000513          	li	a0,0
   17c8c:	fedff06f          	j	17c78 <__ascii_mbtowc+0x40>
   17c90:	ffe00513          	li	a0,-2
   17c94:	00008067          	ret
   17c98:	ffe00513          	li	a0,-2
   17c9c:	fddff06f          	j	17c78 <__ascii_mbtowc+0x40>

0000000000017ca0 <memchr>:
   17ca0:	00757793          	andi	a5,a0,7
   17ca4:	0ff5f693          	andi	a3,a1,255
   17ca8:	02078a63          	beqz	a5,17cdc <memchr+0x3c>
   17cac:	fff60793          	addi	a5,a2,-1
   17cb0:	02060e63          	beqz	a2,17cec <memchr+0x4c>
   17cb4:	fff00613          	li	a2,-1
   17cb8:	0180006f          	j	17cd0 <memchr+0x30>
   17cbc:	00150513          	addi	a0,a0,1
   17cc0:	00757713          	andi	a4,a0,7
   17cc4:	00070e63          	beqz	a4,17ce0 <memchr+0x40>
   17cc8:	fff78793          	addi	a5,a5,-1
   17ccc:	02c78063          	beq	a5,a2,17cec <memchr+0x4c>
   17cd0:	00054703          	lbu	a4,0(a0)
   17cd4:	fed714e3          	bne	a4,a3,17cbc <memchr+0x1c>
   17cd8:	00008067          	ret
   17cdc:	00060793          	mv	a5,a2
   17ce0:	00700713          	li	a4,7
   17ce4:	02f76663          	bltu	a4,a5,17d10 <memchr+0x70>
   17ce8:	00079663          	bnez	a5,17cf4 <memchr+0x54>
   17cec:	00000513          	li	a0,0
   17cf0:	00008067          	ret
   17cf4:	00f507b3          	add	a5,a0,a5
   17cf8:	00c0006f          	j	17d04 <memchr+0x64>
   17cfc:	00150513          	addi	a0,a0,1
   17d00:	fea786e3          	beq	a5,a0,17cec <memchr+0x4c>
   17d04:	00054703          	lbu	a4,0(a0)
   17d08:	fed71ae3          	bne	a4,a3,17cfc <memchr+0x5c>
   17d0c:	00008067          	ret
   17d10:	0ff5f593          	andi	a1,a1,255
   17d14:	00859713          	slli	a4,a1,0x8
   17d18:	00b765b3          	or	a1,a4,a1
   17d1c:	01059713          	slli	a4,a1,0x10
   17d20:	00b76733          	or	a4,a4,a1
   17d24:	02071593          	slli	a1,a4,0x20
   17d28:	00e5e5b3          	or	a1,a1,a4
   17d2c:	0000d897          	auipc	a7,0xd
   17d30:	0548b883          	ld	a7,84(a7) # 24d80 <__SDATA_BEGIN__+0x8>
   17d34:	0000d817          	auipc	a6,0xd
   17d38:	05483803          	ld	a6,84(a6) # 24d88 <__SDATA_BEGIN__+0x10>
   17d3c:	00700313          	li	t1,7
   17d40:	00053703          	ld	a4,0(a0)
   17d44:	00e5c733          	xor	a4,a1,a4
   17d48:	01170633          	add	a2,a4,a7
   17d4c:	fff74713          	not	a4,a4
   17d50:	00e67733          	and	a4,a2,a4
   17d54:	01077733          	and	a4,a4,a6
   17d58:	f8071ee3          	bnez	a4,17cf4 <memchr+0x54>
   17d5c:	ff878793          	addi	a5,a5,-8
   17d60:	00850513          	addi	a0,a0,8
   17d64:	fcf36ee3          	bltu	t1,a5,17d40 <memchr+0xa0>
   17d68:	f80796e3          	bnez	a5,17cf4 <memchr+0x54>
   17d6c:	f81ff06f          	j	17cec <memchr+0x4c>

0000000000017d70 <memcpy>:
   17d70:	00a5c7b3          	xor	a5,a1,a0
   17d74:	0077f793          	andi	a5,a5,7
   17d78:	00c508b3          	add	a7,a0,a2
   17d7c:	06079263          	bnez	a5,17de0 <memcpy+0x70>
   17d80:	00700793          	li	a5,7
   17d84:	04c7fe63          	bgeu	a5,a2,17de0 <memcpy+0x70>
   17d88:	00757793          	andi	a5,a0,7
   17d8c:	00050713          	mv	a4,a0
   17d90:	06079863          	bnez	a5,17e00 <memcpy+0x90>
   17d94:	ff88f613          	andi	a2,a7,-8
   17d98:	fc060793          	addi	a5,a2,-64
   17d9c:	08f76c63          	bltu	a4,a5,17e34 <memcpy+0xc4>
   17da0:	02c77c63          	bgeu	a4,a2,17dd8 <memcpy+0x68>
   17da4:	00058693          	mv	a3,a1
   17da8:	00070793          	mv	a5,a4
   17dac:	0006b803          	ld	a6,0(a3)
   17db0:	00878793          	addi	a5,a5,8
   17db4:	00868693          	addi	a3,a3,8
   17db8:	ff07bc23          	sd	a6,-8(a5)
   17dbc:	fec7e8e3          	bltu	a5,a2,17dac <memcpy+0x3c>
   17dc0:	fff60793          	addi	a5,a2,-1
   17dc4:	40e787b3          	sub	a5,a5,a4
   17dc8:	ff87f793          	andi	a5,a5,-8
   17dcc:	00878793          	addi	a5,a5,8
   17dd0:	00f70733          	add	a4,a4,a5
   17dd4:	00f585b3          	add	a1,a1,a5
   17dd8:	01176863          	bltu	a4,a7,17de8 <memcpy+0x78>
   17ddc:	00008067          	ret
   17de0:	00050713          	mv	a4,a0
   17de4:	ff157ce3          	bgeu	a0,a7,17ddc <memcpy+0x6c>
   17de8:	0005c783          	lbu	a5,0(a1)
   17dec:	00170713          	addi	a4,a4,1
   17df0:	00158593          	addi	a1,a1,1
   17df4:	fef70fa3          	sb	a5,-1(a4)
   17df8:	ff1768e3          	bltu	a4,a7,17de8 <memcpy+0x78>
   17dfc:	00008067          	ret
   17e00:	0005c683          	lbu	a3,0(a1)
   17e04:	00170713          	addi	a4,a4,1
   17e08:	00777793          	andi	a5,a4,7
   17e0c:	fed70fa3          	sb	a3,-1(a4)
   17e10:	00158593          	addi	a1,a1,1
   17e14:	f80780e3          	beqz	a5,17d94 <memcpy+0x24>
   17e18:	0005c683          	lbu	a3,0(a1)
   17e1c:	00170713          	addi	a4,a4,1
   17e20:	00777793          	andi	a5,a4,7
   17e24:	fed70fa3          	sb	a3,-1(a4)
   17e28:	00158593          	addi	a1,a1,1
   17e2c:	fc079ae3          	bnez	a5,17e00 <memcpy+0x90>
   17e30:	f65ff06f          	j	17d94 <memcpy+0x24>
   17e34:	0085b683          	ld	a3,8(a1)
   17e38:	0005b283          	ld	t0,0(a1)
   17e3c:	0105bf83          	ld	t6,16(a1)
   17e40:	0185bf03          	ld	t5,24(a1)
   17e44:	0205be83          	ld	t4,32(a1)
   17e48:	0285be03          	ld	t3,40(a1)
   17e4c:	0305b303          	ld	t1,48(a1)
   17e50:	0385b803          	ld	a6,56(a1)
   17e54:	00d73423          	sd	a3,8(a4)
   17e58:	0405b683          	ld	a3,64(a1)
   17e5c:	00573023          	sd	t0,0(a4)
   17e60:	01f73823          	sd	t6,16(a4)
   17e64:	01e73c23          	sd	t5,24(a4)
   17e68:	03d73023          	sd	t4,32(a4)
   17e6c:	03c73423          	sd	t3,40(a4)
   17e70:	02673823          	sd	t1,48(a4)
   17e74:	03073c23          	sd	a6,56(a4)
   17e78:	04d73023          	sd	a3,64(a4)
   17e7c:	04870713          	addi	a4,a4,72
   17e80:	04858593          	addi	a1,a1,72
   17e84:	faf768e3          	bltu	a4,a5,17e34 <memcpy+0xc4>
   17e88:	f19ff06f          	j	17da0 <memcpy+0x30>

0000000000017e8c <memmove>:
   17e8c:	02a5f663          	bgeu	a1,a0,17eb8 <memmove+0x2c>
   17e90:	00c587b3          	add	a5,a1,a2
   17e94:	02f57263          	bgeu	a0,a5,17eb8 <memmove+0x2c>
   17e98:	00c50733          	add	a4,a0,a2
   17e9c:	0e060a63          	beqz	a2,17f90 <memmove+0x104>
   17ea0:	fff7c683          	lbu	a3,-1(a5)
   17ea4:	fff78793          	addi	a5,a5,-1
   17ea8:	fff70713          	addi	a4,a4,-1
   17eac:	00d70023          	sb	a3,0(a4)
   17eb0:	fef598e3          	bne	a1,a5,17ea0 <memmove+0x14>
   17eb4:	00008067          	ret
   17eb8:	01f00793          	li	a5,31
   17ebc:	02c7e863          	bltu	a5,a2,17eec <memmove+0x60>
   17ec0:	00050793          	mv	a5,a0
   17ec4:	fff60693          	addi	a3,a2,-1
   17ec8:	0c060c63          	beqz	a2,17fa0 <memmove+0x114>
   17ecc:	00168693          	addi	a3,a3,1
   17ed0:	00d786b3          	add	a3,a5,a3
   17ed4:	0005c703          	lbu	a4,0(a1)
   17ed8:	00178793          	addi	a5,a5,1
   17edc:	00158593          	addi	a1,a1,1
   17ee0:	fee78fa3          	sb	a4,-1(a5)
   17ee4:	fed798e3          	bne	a5,a3,17ed4 <memmove+0x48>
   17ee8:	00008067          	ret
   17eec:	00a5e7b3          	or	a5,a1,a0
   17ef0:	0077f793          	andi	a5,a5,7
   17ef4:	0a079063          	bnez	a5,17f94 <memmove+0x108>
   17ef8:	fe060893          	addi	a7,a2,-32
   17efc:	fe08f893          	andi	a7,a7,-32
   17f00:	02088893          	addi	a7,a7,32
   17f04:	01150833          	add	a6,a0,a7
   17f08:	00058713          	mv	a4,a1
   17f0c:	00050793          	mv	a5,a0
   17f10:	00073683          	ld	a3,0(a4)
   17f14:	02070713          	addi	a4,a4,32
   17f18:	02078793          	addi	a5,a5,32
   17f1c:	fed7b023          	sd	a3,-32(a5)
   17f20:	fe873683          	ld	a3,-24(a4)
   17f24:	fed7b423          	sd	a3,-24(a5)
   17f28:	ff073683          	ld	a3,-16(a4)
   17f2c:	fed7b823          	sd	a3,-16(a5)
   17f30:	ff873683          	ld	a3,-8(a4)
   17f34:	fed7bc23          	sd	a3,-8(a5)
   17f38:	fcf81ce3          	bne	a6,a5,17f10 <memmove+0x84>
   17f3c:	01867713          	andi	a4,a2,24
   17f40:	011585b3          	add	a1,a1,a7
   17f44:	01f67813          	andi	a6,a2,31
   17f48:	04070e63          	beqz	a4,17fa4 <memmove+0x118>
   17f4c:	00058713          	mv	a4,a1
   17f50:	00078893          	mv	a7,a5
   17f54:	00700e13          	li	t3,7
   17f58:	00073303          	ld	t1,0(a4)
   17f5c:	00870713          	addi	a4,a4,8
   17f60:	40e806b3          	sub	a3,a6,a4
   17f64:	0068b023          	sd	t1,0(a7)
   17f68:	00d586b3          	add	a3,a1,a3
   17f6c:	00888893          	addi	a7,a7,8
   17f70:	fede64e3          	bltu	t3,a3,17f58 <memmove+0xcc>
   17f74:	ff880713          	addi	a4,a6,-8
   17f78:	ff877713          	andi	a4,a4,-8
   17f7c:	00870713          	addi	a4,a4,8
   17f80:	00767613          	andi	a2,a2,7
   17f84:	00e787b3          	add	a5,a5,a4
   17f88:	00e585b3          	add	a1,a1,a4
   17f8c:	f39ff06f          	j	17ec4 <memmove+0x38>
   17f90:	00008067          	ret
   17f94:	fff60693          	addi	a3,a2,-1
   17f98:	00050793          	mv	a5,a0
   17f9c:	f31ff06f          	j	17ecc <memmove+0x40>
   17fa0:	00008067          	ret
   17fa4:	00080613          	mv	a2,a6
   17fa8:	f1dff06f          	j	17ec4 <memmove+0x38>

0000000000017fac <__malloc_lock>:
   17fac:	00008067          	ret

0000000000017fb0 <__malloc_unlock>:
   17fb0:	00008067          	ret

0000000000017fb4 <_Balloc>:
   17fb4:	07853783          	ld	a5,120(a0)
   17fb8:	fe010113          	addi	sp,sp,-32
   17fbc:	00813823          	sd	s0,16(sp)
   17fc0:	00913423          	sd	s1,8(sp)
   17fc4:	00113c23          	sd	ra,24(sp)
   17fc8:	01213023          	sd	s2,0(sp)
   17fcc:	00050413          	mv	s0,a0
   17fd0:	00058493          	mv	s1,a1
   17fd4:	02078c63          	beqz	a5,1800c <_Balloc+0x58>
   17fd8:	00349513          	slli	a0,s1,0x3
   17fdc:	00a787b3          	add	a5,a5,a0
   17fe0:	0007b503          	ld	a0,0(a5)
   17fe4:	04050463          	beqz	a0,1802c <_Balloc+0x78>
   17fe8:	00053703          	ld	a4,0(a0)
   17fec:	00e7b023          	sd	a4,0(a5)
   17ff0:	00053823          	sd	zero,16(a0)
   17ff4:	01813083          	ld	ra,24(sp)
   17ff8:	01013403          	ld	s0,16(sp)
   17ffc:	00813483          	ld	s1,8(sp)
   18000:	00013903          	ld	s2,0(sp)
   18004:	02010113          	addi	sp,sp,32
   18008:	00008067          	ret
   1800c:	04100613          	li	a2,65
   18010:	00800593          	li	a1,8
   18014:	1fd050ef          	jal	ra,1da10 <_calloc_r>
   18018:	06a43c23          	sd	a0,120(s0)
   1801c:	00050793          	mv	a5,a0
   18020:	fa051ce3          	bnez	a0,17fd8 <_Balloc+0x24>
   18024:	00000513          	li	a0,0
   18028:	fcdff06f          	j	17ff4 <_Balloc+0x40>
   1802c:	00100913          	li	s2,1
   18030:	0099163b          	sllw	a2,s2,s1
   18034:	00060913          	mv	s2,a2
   18038:	00760613          	addi	a2,a2,7
   1803c:	00261613          	slli	a2,a2,0x2
   18040:	00100593          	li	a1,1
   18044:	00040513          	mv	a0,s0
   18048:	1c9050ef          	jal	ra,1da10 <_calloc_r>
   1804c:	fc050ce3          	beqz	a0,18024 <_Balloc+0x70>
   18050:	00952423          	sw	s1,8(a0)
   18054:	01252623          	sw	s2,12(a0)
   18058:	f99ff06f          	j	17ff0 <_Balloc+0x3c>

000000000001805c <_Bfree>:
   1805c:	02058063          	beqz	a1,1807c <_Bfree+0x20>
   18060:	0085a703          	lw	a4,8(a1)
   18064:	07853783          	ld	a5,120(a0)
   18068:	00371713          	slli	a4,a4,0x3
   1806c:	00e787b3          	add	a5,a5,a4
   18070:	0007b703          	ld	a4,0(a5)
   18074:	00e5b023          	sd	a4,0(a1)
   18078:	00b7b023          	sd	a1,0(a5)
   1807c:	00008067          	ret

0000000000018080 <__multadd>:
   18080:	fb010113          	addi	sp,sp,-80
   18084:	03213823          	sd	s2,48(sp)
   18088:	0145a903          	lw	s2,20(a1)
   1808c:	01813023          	sd	s8,0(sp)
   18090:	00010c37          	lui	s8,0x10
   18094:	04813023          	sd	s0,64(sp)
   18098:	02913c23          	sd	s1,56(sp)
   1809c:	03313423          	sd	s3,40(sp)
   180a0:	03413023          	sd	s4,32(sp)
   180a4:	01513c23          	sd	s5,24(sp)
   180a8:	01613823          	sd	s6,16(sp)
   180ac:	04113423          	sd	ra,72(sp)
   180b0:	01713423          	sd	s7,8(sp)
   180b4:	00058993          	mv	s3,a1
   180b8:	00050a13          	mv	s4,a0
   180bc:	00068413          	mv	s0,a3
   180c0:	01858493          	addi	s1,a1,24
   180c4:	00060a93          	mv	s5,a2
   180c8:	00000b13          	li	s6,0
   180cc:	fffc0c13          	addi	s8,s8,-1 # ffff <register_fini-0xb1>
   180d0:	0004ab83          	lw	s7,0(s1)
   180d4:	000a8593          	mv	a1,s5
   180d8:	00448493          	addi	s1,s1,4
   180dc:	018bf533          	and	a0,s7,s8
   180e0:	3e1090ef          	jal	ra,21cc0 <__muldi3>
   180e4:	0085043b          	addw	s0,a0,s0
   180e8:	000a8593          	mv	a1,s5
   180ec:	010bd51b          	srliw	a0,s7,0x10
   180f0:	3d1090ef          	jal	ra,21cc0 <__muldi3>
   180f4:	0104569b          	srliw	a3,s0,0x10
   180f8:	00a6853b          	addw	a0,a3,a0
   180fc:	0105179b          	slliw	a5,a0,0x10
   18100:	008c7433          	and	s0,s8,s0
   18104:	0087843b          	addw	s0,a5,s0
   18108:	fe84ae23          	sw	s0,-4(s1)
   1810c:	001b0b1b          	addiw	s6,s6,1
   18110:	0105541b          	srliw	s0,a0,0x10
   18114:	fb2b4ee3          	blt	s6,s2,180d0 <__multadd+0x50>
   18118:	02040263          	beqz	s0,1813c <__multadd+0xbc>
   1811c:	00c9a783          	lw	a5,12(s3)
   18120:	04f95863          	bge	s2,a5,18170 <__multadd+0xf0>
   18124:	00490793          	addi	a5,s2,4
   18128:	00279793          	slli	a5,a5,0x2
   1812c:	00f987b3          	add	a5,s3,a5
   18130:	0087a423          	sw	s0,8(a5)
   18134:	0019091b          	addiw	s2,s2,1
   18138:	0129aa23          	sw	s2,20(s3)
   1813c:	04813083          	ld	ra,72(sp)
   18140:	04013403          	ld	s0,64(sp)
   18144:	03813483          	ld	s1,56(sp)
   18148:	03013903          	ld	s2,48(sp)
   1814c:	02013a03          	ld	s4,32(sp)
   18150:	01813a83          	ld	s5,24(sp)
   18154:	01013b03          	ld	s6,16(sp)
   18158:	00813b83          	ld	s7,8(sp)
   1815c:	00013c03          	ld	s8,0(sp)
   18160:	00098513          	mv	a0,s3
   18164:	02813983          	ld	s3,40(sp)
   18168:	05010113          	addi	sp,sp,80
   1816c:	00008067          	ret
   18170:	0089a583          	lw	a1,8(s3)
   18174:	000a0513          	mv	a0,s4
   18178:	0015859b          	addiw	a1,a1,1
   1817c:	e39ff0ef          	jal	ra,17fb4 <_Balloc>
   18180:	00050493          	mv	s1,a0
   18184:	04050c63          	beqz	a0,181dc <__multadd+0x15c>
   18188:	0149a603          	lw	a2,20(s3)
   1818c:	01098593          	addi	a1,s3,16
   18190:	01050513          	addi	a0,a0,16
   18194:	00260613          	addi	a2,a2,2
   18198:	00261613          	slli	a2,a2,0x2
   1819c:	bd5ff0ef          	jal	ra,17d70 <memcpy>
   181a0:	0089a703          	lw	a4,8(s3)
   181a4:	078a3783          	ld	a5,120(s4)
   181a8:	00371713          	slli	a4,a4,0x3
   181ac:	00e787b3          	add	a5,a5,a4
   181b0:	0007b703          	ld	a4,0(a5)
   181b4:	00e9b023          	sd	a4,0(s3)
   181b8:	0137b023          	sd	s3,0(a5)
   181bc:	00490793          	addi	a5,s2,4
   181c0:	00048993          	mv	s3,s1
   181c4:	00279793          	slli	a5,a5,0x2
   181c8:	00f987b3          	add	a5,s3,a5
   181cc:	0087a423          	sw	s0,8(a5)
   181d0:	0019091b          	addiw	s2,s2,1
   181d4:	0129aa23          	sw	s2,20(s3)
   181d8:	f65ff06f          	j	1813c <__multadd+0xbc>
   181dc:	0000a697          	auipc	a3,0xa
   181e0:	14c68693          	addi	a3,a3,332 # 22328 <bmask+0x40>
   181e4:	00000613          	li	a2,0
   181e8:	0b500593          	li	a1,181
   181ec:	0000a517          	auipc	a0,0xa
   181f0:	15450513          	addi	a0,a0,340 # 22340 <bmask+0x58>
   181f4:	7a0050ef          	jal	ra,1d994 <__assert_func>

00000000000181f8 <__s2b>:
   181f8:	fc010113          	addi	sp,sp,-64
   181fc:	02813823          	sd	s0,48(sp)
   18200:	03213023          	sd	s2,32(sp)
   18204:	00058413          	mv	s0,a1
   18208:	00050913          	mv	s2,a0
   1820c:	00900593          	li	a1,9
   18210:	0086851b          	addiw	a0,a3,8
   18214:	02913423          	sd	s1,40(sp)
   18218:	01313c23          	sd	s3,24(sp)
   1821c:	01413823          	sd	s4,16(sp)
   18220:	02113c23          	sd	ra,56(sp)
   18224:	01513423          	sd	s5,8(sp)
   18228:	01613023          	sd	s6,0(sp)
   1822c:	00068493          	mv	s1,a3
   18230:	00060993          	mv	s3,a2
   18234:	00070a13          	mv	s4,a4
   18238:	2ed090ef          	jal	ra,21d24 <__divdi3>
   1823c:	00900793          	li	a5,9
   18240:	0e97de63          	bge	a5,s1,1833c <__s2b+0x144>
   18244:	0005051b          	sext.w	a0,a0
   18248:	00100793          	li	a5,1
   1824c:	00000593          	li	a1,0
   18250:	0017979b          	slliw	a5,a5,0x1
   18254:	0015859b          	addiw	a1,a1,1
   18258:	fea7cce3          	blt	a5,a0,18250 <__s2b+0x58>
   1825c:	00090513          	mv	a0,s2
   18260:	d55ff0ef          	jal	ra,17fb4 <_Balloc>
   18264:	00050593          	mv	a1,a0
   18268:	0c050e63          	beqz	a0,18344 <__s2b+0x14c>
   1826c:	00100793          	li	a5,1
   18270:	00f52a23          	sw	a5,20(a0)
   18274:	01452c23          	sw	s4,24(a0)
   18278:	00900793          	li	a5,9
   1827c:	0b37da63          	bge	a5,s3,18330 <__s2b+0x138>
   18280:	02099a13          	slli	s4,s3,0x20
   18284:	00940b13          	addi	s6,s0,9
   18288:	020a5a13          	srli	s4,s4,0x20
   1828c:	01440a33          	add	s4,s0,s4
   18290:	00098a9b          	sext.w	s5,s3
   18294:	000b0413          	mv	s0,s6
   18298:	00044683          	lbu	a3,0(s0)
   1829c:	00a00613          	li	a2,10
   182a0:	00090513          	mv	a0,s2
   182a4:	fd06869b          	addiw	a3,a3,-48
   182a8:	dd9ff0ef          	jal	ra,18080 <__multadd>
   182ac:	00140413          	addi	s0,s0,1
   182b0:	00050593          	mv	a1,a0
   182b4:	ff4412e3          	bne	s0,s4,18298 <__s2b+0xa0>
   182b8:	ff8a841b          	addiw	s0,s5,-8
   182bc:	02041413          	slli	s0,s0,0x20
   182c0:	02045413          	srli	s0,s0,0x20
   182c4:	008b0433          	add	s0,s6,s0
   182c8:	0299de63          	bge	s3,s1,18304 <__s2b+0x10c>
   182cc:	fff4849b          	addiw	s1,s1,-1
   182d0:	413484bb          	subw	s1,s1,s3
   182d4:	02049493          	slli	s1,s1,0x20
   182d8:	0204d493          	srli	s1,s1,0x20
   182dc:	00148493          	addi	s1,s1,1
   182e0:	009404b3          	add	s1,s0,s1
   182e4:	00044683          	lbu	a3,0(s0)
   182e8:	00a00613          	li	a2,10
   182ec:	00090513          	mv	a0,s2
   182f0:	fd06869b          	addiw	a3,a3,-48
   182f4:	d8dff0ef          	jal	ra,18080 <__multadd>
   182f8:	00140413          	addi	s0,s0,1
   182fc:	00050593          	mv	a1,a0
   18300:	fe9412e3          	bne	s0,s1,182e4 <__s2b+0xec>
   18304:	03813083          	ld	ra,56(sp)
   18308:	03013403          	ld	s0,48(sp)
   1830c:	02813483          	ld	s1,40(sp)
   18310:	02013903          	ld	s2,32(sp)
   18314:	01813983          	ld	s3,24(sp)
   18318:	01013a03          	ld	s4,16(sp)
   1831c:	00813a83          	ld	s5,8(sp)
   18320:	00013b03          	ld	s6,0(sp)
   18324:	00058513          	mv	a0,a1
   18328:	04010113          	addi	sp,sp,64
   1832c:	00008067          	ret
   18330:	00a40413          	addi	s0,s0,10
   18334:	00900993          	li	s3,9
   18338:	f91ff06f          	j	182c8 <__s2b+0xd0>
   1833c:	00000593          	li	a1,0
   18340:	f1dff06f          	j	1825c <__s2b+0x64>
   18344:	0000a697          	auipc	a3,0xa
   18348:	fe468693          	addi	a3,a3,-28 # 22328 <bmask+0x40>
   1834c:	00000613          	li	a2,0
   18350:	0ce00593          	li	a1,206
   18354:	0000a517          	auipc	a0,0xa
   18358:	fec50513          	addi	a0,a0,-20 # 22340 <bmask+0x58>
   1835c:	638050ef          	jal	ra,1d994 <__assert_func>

0000000000018360 <__hi0bits>:
   18360:	ffff0737          	lui	a4,0xffff0
   18364:	00e57733          	and	a4,a0,a4
   18368:	00050793          	mv	a5,a0
   1836c:	00000513          	li	a0,0
   18370:	00071663          	bnez	a4,1837c <__hi0bits+0x1c>
   18374:	0107979b          	slliw	a5,a5,0x10
   18378:	01000513          	li	a0,16
   1837c:	ff000737          	lui	a4,0xff000
   18380:	00e7f733          	and	a4,a5,a4
   18384:	00071663          	bnez	a4,18390 <__hi0bits+0x30>
   18388:	0087979b          	slliw	a5,a5,0x8
   1838c:	0085051b          	addiw	a0,a0,8
   18390:	f0000737          	lui	a4,0xf0000
   18394:	00e7f733          	and	a4,a5,a4
   18398:	00071663          	bnez	a4,183a4 <__hi0bits+0x44>
   1839c:	0047979b          	slliw	a5,a5,0x4
   183a0:	0045051b          	addiw	a0,a0,4
   183a4:	c0000737          	lui	a4,0xc0000
   183a8:	00e7f733          	and	a4,a5,a4
   183ac:	00071663          	bnez	a4,183b8 <__hi0bits+0x58>
   183b0:	0027979b          	slliw	a5,a5,0x2
   183b4:	0025051b          	addiw	a0,a0,2
   183b8:	0007ca63          	bltz	a5,183cc <__hi0bits+0x6c>
   183bc:	01e7d793          	srli	a5,a5,0x1e
   183c0:	0017f793          	andi	a5,a5,1
   183c4:	0015051b          	addiw	a0,a0,1
   183c8:	00078463          	beqz	a5,183d0 <__hi0bits+0x70>
   183cc:	00008067          	ret
   183d0:	02000513          	li	a0,32
   183d4:	00008067          	ret

00000000000183d8 <__lo0bits>:
   183d8:	00052783          	lw	a5,0(a0)
   183dc:	00050713          	mv	a4,a0
   183e0:	0077f693          	andi	a3,a5,7
   183e4:	00078613          	mv	a2,a5
   183e8:	02068463          	beqz	a3,18410 <__lo0bits+0x38>
   183ec:	0017f693          	andi	a3,a5,1
   183f0:	00000513          	li	a0,0
   183f4:	04069e63          	bnez	a3,18450 <__lo0bits+0x78>
   183f8:	00267613          	andi	a2,a2,2
   183fc:	0a060863          	beqz	a2,184ac <__lo0bits+0xd4>
   18400:	0017d79b          	srliw	a5,a5,0x1
   18404:	00f72023          	sw	a5,0(a4) # ffffffffc0000000 <__BSS_END__+0xffffffffbffdb1a0>
   18408:	00100513          	li	a0,1
   1840c:	00008067          	ret
   18410:	03079693          	slli	a3,a5,0x30
   18414:	0306d693          	srli	a3,a3,0x30
   18418:	00000513          	li	a0,0
   1841c:	06068e63          	beqz	a3,18498 <__lo0bits+0xc0>
   18420:	0ff7f693          	andi	a3,a5,255
   18424:	06068063          	beqz	a3,18484 <__lo0bits+0xac>
   18428:	00f7f693          	andi	a3,a5,15
   1842c:	04068263          	beqz	a3,18470 <__lo0bits+0x98>
   18430:	0037f693          	andi	a3,a5,3
   18434:	02068463          	beqz	a3,1845c <__lo0bits+0x84>
   18438:	0017f693          	andi	a3,a5,1
   1843c:	00069c63          	bnez	a3,18454 <__lo0bits+0x7c>
   18440:	0017d79b          	srliw	a5,a5,0x1
   18444:	0015051b          	addiw	a0,a0,1
   18448:	00079663          	bnez	a5,18454 <__lo0bits+0x7c>
   1844c:	02000513          	li	a0,32
   18450:	00008067          	ret
   18454:	00f72023          	sw	a5,0(a4)
   18458:	00008067          	ret
   1845c:	0027d79b          	srliw	a5,a5,0x2
   18460:	0017f693          	andi	a3,a5,1
   18464:	0025051b          	addiw	a0,a0,2
   18468:	fe0696e3          	bnez	a3,18454 <__lo0bits+0x7c>
   1846c:	fd5ff06f          	j	18440 <__lo0bits+0x68>
   18470:	0047d79b          	srliw	a5,a5,0x4
   18474:	0037f693          	andi	a3,a5,3
   18478:	0045051b          	addiw	a0,a0,4
   1847c:	fa069ee3          	bnez	a3,18438 <__lo0bits+0x60>
   18480:	fddff06f          	j	1845c <__lo0bits+0x84>
   18484:	0087d79b          	srliw	a5,a5,0x8
   18488:	00f7f693          	andi	a3,a5,15
   1848c:	0085051b          	addiw	a0,a0,8
   18490:	fa0690e3          	bnez	a3,18430 <__lo0bits+0x58>
   18494:	fddff06f          	j	18470 <__lo0bits+0x98>
   18498:	0107d79b          	srliw	a5,a5,0x10
   1849c:	0ff7f693          	andi	a3,a5,255
   184a0:	01000513          	li	a0,16
   184a4:	f80692e3          	bnez	a3,18428 <__lo0bits+0x50>
   184a8:	fddff06f          	j	18484 <__lo0bits+0xac>
   184ac:	0027d79b          	srliw	a5,a5,0x2
   184b0:	00f72023          	sw	a5,0(a4)
   184b4:	00200513          	li	a0,2
   184b8:	00008067          	ret

00000000000184bc <__i2b>:
   184bc:	07853783          	ld	a5,120(a0)
   184c0:	fe010113          	addi	sp,sp,-32
   184c4:	00813823          	sd	s0,16(sp)
   184c8:	00913423          	sd	s1,8(sp)
   184cc:	00113c23          	sd	ra,24(sp)
   184d0:	00050413          	mv	s0,a0
   184d4:	00058493          	mv	s1,a1
   184d8:	02078c63          	beqz	a5,18510 <__i2b+0x54>
   184dc:	0087b503          	ld	a0,8(a5)
   184e0:	06050263          	beqz	a0,18544 <__i2b+0x88>
   184e4:	00053703          	ld	a4,0(a0)
   184e8:	00e7b423          	sd	a4,8(a5)
   184ec:	01813083          	ld	ra,24(sp)
   184f0:	01013403          	ld	s0,16(sp)
   184f4:	00100793          	li	a5,1
   184f8:	02079793          	slli	a5,a5,0x20
   184fc:	00952c23          	sw	s1,24(a0)
   18500:	00f53823          	sd	a5,16(a0)
   18504:	00813483          	ld	s1,8(sp)
   18508:	02010113          	addi	sp,sp,32
   1850c:	00008067          	ret
   18510:	04100613          	li	a2,65
   18514:	00800593          	li	a1,8
   18518:	4f8050ef          	jal	ra,1da10 <_calloc_r>
   1851c:	06a43c23          	sd	a0,120(s0)
   18520:	00050793          	mv	a5,a0
   18524:	fa051ce3          	bnez	a0,184dc <__i2b+0x20>
   18528:	0000a697          	auipc	a3,0xa
   1852c:	e0068693          	addi	a3,a3,-512 # 22328 <bmask+0x40>
   18530:	00000613          	li	a2,0
   18534:	14000593          	li	a1,320
   18538:	0000a517          	auipc	a0,0xa
   1853c:	e0850513          	addi	a0,a0,-504 # 22340 <bmask+0x58>
   18540:	454050ef          	jal	ra,1d994 <__assert_func>
   18544:	02400613          	li	a2,36
   18548:	00100593          	li	a1,1
   1854c:	00040513          	mv	a0,s0
   18550:	4c0050ef          	jal	ra,1da10 <_calloc_r>
   18554:	fc050ae3          	beqz	a0,18528 <__i2b+0x6c>
   18558:	00100793          	li	a5,1
   1855c:	02179793          	slli	a5,a5,0x21
   18560:	00178793          	addi	a5,a5,1
   18564:	00f53423          	sd	a5,8(a0)
   18568:	f85ff06f          	j	184ec <__i2b+0x30>

000000000001856c <__multiply>:
   1856c:	f6010113          	addi	sp,sp,-160
   18570:	07313c23          	sd	s3,120(sp)
   18574:	05813823          	sd	s8,80(sp)
   18578:	01462983          	lw	s3,20(a2)
   1857c:	0145ac03          	lw	s8,20(a1)
   18580:	08813823          	sd	s0,144(sp)
   18584:	07413823          	sd	s4,112(sp)
   18588:	08113c23          	sd	ra,152(sp)
   1858c:	08913423          	sd	s1,136(sp)
   18590:	09213023          	sd	s2,128(sp)
   18594:	07513423          	sd	s5,104(sp)
   18598:	07613023          	sd	s6,96(sp)
   1859c:	05713c23          	sd	s7,88(sp)
   185a0:	05913423          	sd	s9,72(sp)
   185a4:	05a13023          	sd	s10,64(sp)
   185a8:	03b13c23          	sd	s11,56(sp)
   185ac:	00058a13          	mv	s4,a1
   185b0:	00060413          	mv	s0,a2
   185b4:	013c4c63          	blt	s8,s3,185cc <__multiply+0x60>
   185b8:	00098793          	mv	a5,s3
   185bc:	00058413          	mv	s0,a1
   185c0:	000c0993          	mv	s3,s8
   185c4:	00060a13          	mv	s4,a2
   185c8:	00078c13          	mv	s8,a5
   185cc:	00c42783          	lw	a5,12(s0)
   185d0:	0189873b          	addw	a4,s3,s8
   185d4:	00e13423          	sd	a4,8(sp)
   185d8:	00842583          	lw	a1,8(s0)
   185dc:	00e7d463          	bge	a5,a4,185e4 <__multiply+0x78>
   185e0:	0015859b          	addiw	a1,a1,1
   185e4:	9d1ff0ef          	jal	ra,17fb4 <_Balloc>
   185e8:	02a13423          	sd	a0,40(sp)
   185ec:	22050663          	beqz	a0,18818 <__multiply+0x2ac>
   185f0:	02813783          	ld	a5,40(sp)
   185f4:	01878b13          	addi	s6,a5,24
   185f8:	00813783          	ld	a5,8(sp)
   185fc:	00279a93          	slli	s5,a5,0x2
   18600:	015b0ab3          	add	s5,s6,s5
   18604:	000b0793          	mv	a5,s6
   18608:	015b7863          	bgeu	s6,s5,18618 <__multiply+0xac>
   1860c:	0007a023          	sw	zero,0(a5)
   18610:	00478793          	addi	a5,a5,4
   18614:	ff57ece3          	bltu	a5,s5,1860c <__multiply+0xa0>
   18618:	018a0a13          	addi	s4,s4,24
   1861c:	002c1c13          	slli	s8,s8,0x2
   18620:	01840793          	addi	a5,s0,24
   18624:	018a0733          	add	a4,s4,s8
   18628:	00299993          	slli	s3,s3,0x2
   1862c:	02f13023          	sd	a5,32(sp)
   18630:	00e13823          	sd	a4,16(sp)
   18634:	013789b3          	add	s3,a5,s3
   18638:	14ea7a63          	bgeu	s4,a4,1878c <__multiply+0x220>
   1863c:	00400713          	li	a4,4
   18640:	01940793          	addi	a5,s0,25
   18644:	00e13c23          	sd	a4,24(sp)
   18648:	1af9fc63          	bgeu	s3,a5,18800 <__multiply+0x294>
   1864c:	00010937          	lui	s2,0x10
   18650:	fff90913          	addi	s2,s2,-1 # ffff <register_fini-0xb1>
   18654:	01c0006f          	j	18670 <__multiply+0x104>
   18658:	0107dc1b          	srliw	s8,a5,0x10
   1865c:	0a0c1063          	bnez	s8,186fc <__multiply+0x190>
   18660:	01013783          	ld	a5,16(sp)
   18664:	004a0a13          	addi	s4,s4,4
   18668:	004b0b13          	addi	s6,s6,4
   1866c:	12fa7063          	bgeu	s4,a5,1878c <__multiply+0x220>
   18670:	000a2783          	lw	a5,0(s4)
   18674:	0127fdb3          	and	s11,a5,s2
   18678:	fe0d80e3          	beqz	s11,18658 <__multiply+0xec>
   1867c:	02013c83          	ld	s9,32(sp)
   18680:	000b0d13          	mv	s10,s6
   18684:	00000c13          	li	s8,0
   18688:	000cab83          	lw	s7,0(s9)
   1868c:	000d2483          	lw	s1,0(s10)
   18690:	000d8593          	mv	a1,s11
   18694:	012bf533          	and	a0,s7,s2
   18698:	628090ef          	jal	ra,21cc0 <__muldi3>
   1869c:	0124f433          	and	s0,s1,s2
   186a0:	0085043b          	addw	s0,a0,s0
   186a4:	000d8593          	mv	a1,s11
   186a8:	010bd51b          	srliw	a0,s7,0x10
   186ac:	614090ef          	jal	ra,21cc0 <__muldi3>
   186b0:	0184043b          	addw	s0,s0,s8
   186b4:	0104d49b          	srliw	s1,s1,0x10
   186b8:	00a484bb          	addw	s1,s1,a0
   186bc:	0104551b          	srliw	a0,s0,0x10
   186c0:	00a4853b          	addw	a0,s1,a0
   186c4:	0105169b          	slliw	a3,a0,0x10
   186c8:	00897433          	and	s0,s2,s0
   186cc:	004d0d13          	addi	s10,s10,4
   186d0:	00d46433          	or	s0,s0,a3
   186d4:	004c8c93          	addi	s9,s9,4
   186d8:	fe8d2e23          	sw	s0,-4(s10)
   186dc:	01055c1b          	srliw	s8,a0,0x10
   186e0:	fb3ce4e3          	bltu	s9,s3,18688 <__multiply+0x11c>
   186e4:	01813783          	ld	a5,24(sp)
   186e8:	00fb07b3          	add	a5,s6,a5
   186ec:	0187a023          	sw	s8,0(a5)
   186f0:	000a2783          	lw	a5,0(s4)
   186f4:	0107dc1b          	srliw	s8,a5,0x10
   186f8:	f60c04e3          	beqz	s8,18660 <__multiply+0xf4>
   186fc:	000b2c83          	lw	s9,0(s6)
   18700:	02013d83          	ld	s11,32(sp)
   18704:	000b0d13          	mv	s10,s6
   18708:	000c8413          	mv	s0,s9
   1870c:	00000493          	li	s1,0
   18710:	000da503          	lw	a0,0(s11)
   18714:	000c0593          	mv	a1,s8
   18718:	0104541b          	srliw	s0,s0,0x10
   1871c:	00a97533          	and	a0,s2,a0
   18720:	5a0090ef          	jal	ra,21cc0 <__muldi3>
   18724:	00a4043b          	addw	s0,s0,a0
   18728:	009404bb          	addw	s1,s0,s1
   1872c:	0104961b          	slliw	a2,s1,0x10
   18730:	012cf7b3          	and	a5,s9,s2
   18734:	00c7e7b3          	or	a5,a5,a2
   18738:	00fd2023          	sw	a5,0(s10)
   1873c:	002dd503          	lhu	a0,2(s11)
   18740:	004d2403          	lw	s0,4(s10)
   18744:	000c0593          	mv	a1,s8
   18748:	578090ef          	jal	ra,21cc0 <__muldi3>
   1874c:	012477b3          	and	a5,s0,s2
   18750:	0104d49b          	srliw	s1,s1,0x10
   18754:	00f5053b          	addw	a0,a0,a5
   18758:	0095053b          	addw	a0,a0,s1
   1875c:	004d8d93          	addi	s11,s11,4
   18760:	004d0d13          	addi	s10,s10,4
   18764:	00050c9b          	sext.w	s9,a0
   18768:	0105549b          	srliw	s1,a0,0x10
   1876c:	fb3de2e3          	bltu	s11,s3,18710 <__multiply+0x1a4>
   18770:	01813783          	ld	a5,24(sp)
   18774:	004a0a13          	addi	s4,s4,4
   18778:	00fb0733          	add	a4,s6,a5
   1877c:	01013783          	ld	a5,16(sp)
   18780:	01972023          	sw	s9,0(a4)
   18784:	004b0b13          	addi	s6,s6,4
   18788:	eefa64e3          	bltu	s4,a5,18670 <__multiply+0x104>
   1878c:	00813783          	ld	a5,8(sp)
   18790:	00f04c63          	bgtz	a5,187a8 <__multiply+0x23c>
   18794:	0200006f          	j	187b4 <__multiply+0x248>
   18798:	00813783          	ld	a5,8(sp)
   1879c:	fff7879b          	addiw	a5,a5,-1
   187a0:	00f13423          	sd	a5,8(sp)
   187a4:	00078863          	beqz	a5,187b4 <__multiply+0x248>
   187a8:	ffcaa783          	lw	a5,-4(s5)
   187ac:	ffca8a93          	addi	s5,s5,-4
   187b0:	fe0784e3          	beqz	a5,18798 <__multiply+0x22c>
   187b4:	02813783          	ld	a5,40(sp)
   187b8:	00813703          	ld	a4,8(sp)
   187bc:	09813083          	ld	ra,152(sp)
   187c0:	09013403          	ld	s0,144(sp)
   187c4:	00e7aa23          	sw	a4,20(a5)
   187c8:	08813483          	ld	s1,136(sp)
   187cc:	08013903          	ld	s2,128(sp)
   187d0:	07813983          	ld	s3,120(sp)
   187d4:	07013a03          	ld	s4,112(sp)
   187d8:	06813a83          	ld	s5,104(sp)
   187dc:	06013b03          	ld	s6,96(sp)
   187e0:	05813b83          	ld	s7,88(sp)
   187e4:	05013c03          	ld	s8,80(sp)
   187e8:	04813c83          	ld	s9,72(sp)
   187ec:	04013d03          	ld	s10,64(sp)
   187f0:	03813d83          	ld	s11,56(sp)
   187f4:	00078513          	mv	a0,a5
   187f8:	0a010113          	addi	sp,sp,160
   187fc:	00008067          	ret
   18800:	40898db3          	sub	s11,s3,s0
   18804:	fe7d8d93          	addi	s11,s11,-25
   18808:	ffcdfd93          	andi	s11,s11,-4
   1880c:	004d8793          	addi	a5,s11,4
   18810:	00f13c23          	sd	a5,24(sp)
   18814:	e39ff06f          	j	1864c <__multiply+0xe0>
   18818:	0000a697          	auipc	a3,0xa
   1881c:	b1068693          	addi	a3,a3,-1264 # 22328 <bmask+0x40>
   18820:	00000613          	li	a2,0
   18824:	15d00593          	li	a1,349
   18828:	0000a517          	auipc	a0,0xa
   1882c:	b1850513          	addi	a0,a0,-1256 # 22340 <bmask+0x58>
   18830:	164050ef          	jal	ra,1d994 <__assert_func>

0000000000018834 <__pow5mult>:
   18834:	fd010113          	addi	sp,sp,-48
   18838:	02813023          	sd	s0,32(sp)
   1883c:	01213823          	sd	s2,16(sp)
   18840:	01313423          	sd	s3,8(sp)
   18844:	02113423          	sd	ra,40(sp)
   18848:	00913c23          	sd	s1,24(sp)
   1884c:	00367793          	andi	a5,a2,3
   18850:	00060413          	mv	s0,a2
   18854:	00050993          	mv	s3,a0
   18858:	00058913          	mv	s2,a1
   1885c:	0a079e63          	bnez	a5,18918 <__pow5mult+0xe4>
   18860:	40245413          	srai	s0,s0,0x2
   18864:	06040663          	beqz	s0,188d0 <__pow5mult+0x9c>
   18868:	0709b483          	ld	s1,112(s3)
   1886c:	0c048a63          	beqz	s1,18940 <__pow5mult+0x10c>
   18870:	00147793          	andi	a5,s0,1
   18874:	02079063          	bnez	a5,18894 <__pow5mult+0x60>
   18878:	40145413          	srai	s0,s0,0x1
   1887c:	04040a63          	beqz	s0,188d0 <__pow5mult+0x9c>
   18880:	0004b503          	ld	a0,0(s1)
   18884:	06050663          	beqz	a0,188f0 <__pow5mult+0xbc>
   18888:	00050493          	mv	s1,a0
   1888c:	00147793          	andi	a5,s0,1
   18890:	fe0784e3          	beqz	a5,18878 <__pow5mult+0x44>
   18894:	00048613          	mv	a2,s1
   18898:	00090593          	mv	a1,s2
   1889c:	00098513          	mv	a0,s3
   188a0:	ccdff0ef          	jal	ra,1856c <__multiply>
   188a4:	06090663          	beqz	s2,18910 <__pow5mult+0xdc>
   188a8:	00892703          	lw	a4,8(s2)
   188ac:	0789b783          	ld	a5,120(s3)
   188b0:	40145413          	srai	s0,s0,0x1
   188b4:	00371713          	slli	a4,a4,0x3
   188b8:	00e787b3          	add	a5,a5,a4
   188bc:	0007b703          	ld	a4,0(a5)
   188c0:	00e93023          	sd	a4,0(s2)
   188c4:	0127b023          	sd	s2,0(a5)
   188c8:	00050913          	mv	s2,a0
   188cc:	fa041ae3          	bnez	s0,18880 <__pow5mult+0x4c>
   188d0:	02813083          	ld	ra,40(sp)
   188d4:	02013403          	ld	s0,32(sp)
   188d8:	01813483          	ld	s1,24(sp)
   188dc:	00813983          	ld	s3,8(sp)
   188e0:	00090513          	mv	a0,s2
   188e4:	01013903          	ld	s2,16(sp)
   188e8:	03010113          	addi	sp,sp,48
   188ec:	00008067          	ret
   188f0:	00048613          	mv	a2,s1
   188f4:	00048593          	mv	a1,s1
   188f8:	00098513          	mv	a0,s3
   188fc:	c71ff0ef          	jal	ra,1856c <__multiply>
   18900:	00a4b023          	sd	a0,0(s1)
   18904:	00053023          	sd	zero,0(a0)
   18908:	00050493          	mv	s1,a0
   1890c:	f81ff06f          	j	1888c <__pow5mult+0x58>
   18910:	00050913          	mv	s2,a0
   18914:	f65ff06f          	j	18878 <__pow5mult+0x44>
   18918:	fff7879b          	addiw	a5,a5,-1
   1891c:	0000a717          	auipc	a4,0xa
   18920:	adc70713          	addi	a4,a4,-1316 # 223f8 <p05.0>
   18924:	00279793          	slli	a5,a5,0x2
   18928:	00f707b3          	add	a5,a4,a5
   1892c:	0007a603          	lw	a2,0(a5)
   18930:	00000693          	li	a3,0
   18934:	f4cff0ef          	jal	ra,18080 <__multadd>
   18938:	00050913          	mv	s2,a0
   1893c:	f25ff06f          	j	18860 <__pow5mult+0x2c>
   18940:	00100593          	li	a1,1
   18944:	00098513          	mv	a0,s3
   18948:	e6cff0ef          	jal	ra,17fb4 <_Balloc>
   1894c:	00050493          	mv	s1,a0
   18950:	02050063          	beqz	a0,18970 <__pow5mult+0x13c>
   18954:	27100793          	li	a5,625
   18958:	00f52c23          	sw	a5,24(a0)
   1895c:	00100793          	li	a5,1
   18960:	00f52a23          	sw	a5,20(a0)
   18964:	06a9b823          	sd	a0,112(s3)
   18968:	00053023          	sd	zero,0(a0)
   1896c:	f05ff06f          	j	18870 <__pow5mult+0x3c>
   18970:	0000a697          	auipc	a3,0xa
   18974:	9b868693          	addi	a3,a3,-1608 # 22328 <bmask+0x40>
   18978:	00000613          	li	a2,0
   1897c:	14000593          	li	a1,320
   18980:	0000a517          	auipc	a0,0xa
   18984:	9c050513          	addi	a0,a0,-1600 # 22340 <bmask+0x58>
   18988:	00c050ef          	jal	ra,1d994 <__assert_func>

000000000001898c <__lshift>:
   1898c:	fc010113          	addi	sp,sp,-64
   18990:	01313c23          	sd	s3,24(sp)
   18994:	0145a983          	lw	s3,20(a1)
   18998:	00c5a783          	lw	a5,12(a1)
   1899c:	01513423          	sd	s5,8(sp)
   189a0:	40565a9b          	sraiw	s5,a2,0x5
   189a4:	015989bb          	addw	s3,s3,s5
   189a8:	02813823          	sd	s0,48(sp)
   189ac:	02913423          	sd	s1,40(sp)
   189b0:	03213023          	sd	s2,32(sp)
   189b4:	01413823          	sd	s4,16(sp)
   189b8:	01613023          	sd	s6,0(sp)
   189bc:	02113c23          	sd	ra,56(sp)
   189c0:	0019891b          	addiw	s2,s3,1
   189c4:	00058493          	mv	s1,a1
   189c8:	00060413          	mv	s0,a2
   189cc:	0085a583          	lw	a1,8(a1)
   189d0:	00050a13          	mv	s4,a0
   189d4:	40565b13          	srai	s6,a2,0x5
   189d8:	0127d863          	bge	a5,s2,189e8 <__lshift+0x5c>
   189dc:	0017979b          	slliw	a5,a5,0x1
   189e0:	0015859b          	addiw	a1,a1,1
   189e4:	ff27cce3          	blt	a5,s2,189dc <__lshift+0x50>
   189e8:	000a0513          	mv	a0,s4
   189ec:	dc8ff0ef          	jal	ra,17fb4 <_Balloc>
   189f0:	12050263          	beqz	a0,18b14 <__lshift+0x188>
   189f4:	01850693          	addi	a3,a0,24
   189f8:	03605863          	blez	s6,18a28 <__lshift+0x9c>
   189fc:	006a871b          	addiw	a4,s5,6
   18a00:	02071793          	slli	a5,a4,0x20
   18a04:	01e7d713          	srli	a4,a5,0x1e
   18a08:	00e50733          	add	a4,a0,a4
   18a0c:	00068793          	mv	a5,a3
   18a10:	00478793          	addi	a5,a5,4
   18a14:	fe07ae23          	sw	zero,-4(a5)
   18a18:	fee79ce3          	bne	a5,a4,18a10 <__lshift+0x84>
   18a1c:	020a9793          	slli	a5,s5,0x20
   18a20:	01e7da93          	srli	s5,a5,0x1e
   18a24:	015686b3          	add	a3,a3,s5
   18a28:	0144a803          	lw	a6,20(s1)
   18a2c:	01848793          	addi	a5,s1,24
   18a30:	01f47313          	andi	t1,s0,31
   18a34:	00281813          	slli	a6,a6,0x2
   18a38:	01078833          	add	a6,a5,a6
   18a3c:	0a030663          	beqz	t1,18ae8 <__lshift+0x15c>
   18a40:	02000593          	li	a1,32
   18a44:	406585bb          	subw	a1,a1,t1
   18a48:	00068893          	mv	a7,a3
   18a4c:	00000713          	li	a4,0
   18a50:	0007a603          	lw	a2,0(a5)
   18a54:	00488893          	addi	a7,a7,4
   18a58:	00478793          	addi	a5,a5,4
   18a5c:	0066163b          	sllw	a2,a2,t1
   18a60:	00c76733          	or	a4,a4,a2
   18a64:	fee8ae23          	sw	a4,-4(a7)
   18a68:	ffc7a703          	lw	a4,-4(a5)
   18a6c:	00b7573b          	srlw	a4,a4,a1
   18a70:	ff07e0e3          	bltu	a5,a6,18a50 <__lshift+0xc4>
   18a74:	01948613          	addi	a2,s1,25
   18a78:	00400793          	li	a5,4
   18a7c:	00c86a63          	bltu	a6,a2,18a90 <__lshift+0x104>
   18a80:	409807b3          	sub	a5,a6,s1
   18a84:	fe778793          	addi	a5,a5,-25
   18a88:	ffc7f793          	andi	a5,a5,-4
   18a8c:	00478793          	addi	a5,a5,4
   18a90:	00f686b3          	add	a3,a3,a5
   18a94:	00e6a023          	sw	a4,0(a3)
   18a98:	00070463          	beqz	a4,18aa0 <__lshift+0x114>
   18a9c:	00090993          	mv	s3,s2
   18aa0:	0084a703          	lw	a4,8(s1)
   18aa4:	078a3783          	ld	a5,120(s4)
   18aa8:	03813083          	ld	ra,56(sp)
   18aac:	00371713          	slli	a4,a4,0x3
   18ab0:	00e787b3          	add	a5,a5,a4
   18ab4:	0007b703          	ld	a4,0(a5)
   18ab8:	01352a23          	sw	s3,20(a0)
   18abc:	03013403          	ld	s0,48(sp)
   18ac0:	00e4b023          	sd	a4,0(s1)
   18ac4:	0097b023          	sd	s1,0(a5)
   18ac8:	02013903          	ld	s2,32(sp)
   18acc:	02813483          	ld	s1,40(sp)
   18ad0:	01813983          	ld	s3,24(sp)
   18ad4:	01013a03          	ld	s4,16(sp)
   18ad8:	00813a83          	ld	s5,8(sp)
   18adc:	00013b03          	ld	s6,0(sp)
   18ae0:	04010113          	addi	sp,sp,64
   18ae4:	00008067          	ret
   18ae8:	0007a703          	lw	a4,0(a5)
   18aec:	00478793          	addi	a5,a5,4
   18af0:	00468693          	addi	a3,a3,4
   18af4:	fee6ae23          	sw	a4,-4(a3)
   18af8:	fb07f4e3          	bgeu	a5,a6,18aa0 <__lshift+0x114>
   18afc:	0007a703          	lw	a4,0(a5)
   18b00:	00478793          	addi	a5,a5,4
   18b04:	00468693          	addi	a3,a3,4
   18b08:	fee6ae23          	sw	a4,-4(a3)
   18b0c:	fd07eee3          	bltu	a5,a6,18ae8 <__lshift+0x15c>
   18b10:	f91ff06f          	j	18aa0 <__lshift+0x114>
   18b14:	0000a697          	auipc	a3,0xa
   18b18:	81468693          	addi	a3,a3,-2028 # 22328 <bmask+0x40>
   18b1c:	00000613          	li	a2,0
   18b20:	1d900593          	li	a1,473
   18b24:	0000a517          	auipc	a0,0xa
   18b28:	81c50513          	addi	a0,a0,-2020 # 22340 <bmask+0x58>
   18b2c:	669040ef          	jal	ra,1d994 <__assert_func>

0000000000018b30 <__mcmp>:
   18b30:	0145a783          	lw	a5,20(a1)
   18b34:	00050813          	mv	a6,a0
   18b38:	01452503          	lw	a0,20(a0)
   18b3c:	40f5053b          	subw	a0,a0,a5
   18b40:	02051e63          	bnez	a0,18b7c <__mcmp+0x4c>
   18b44:	00279793          	slli	a5,a5,0x2
   18b48:	01880813          	addi	a6,a6,24
   18b4c:	01858593          	addi	a1,a1,24
   18b50:	00f80733          	add	a4,a6,a5
   18b54:	00f587b3          	add	a5,a1,a5
   18b58:	0080006f          	j	18b60 <__mcmp+0x30>
   18b5c:	02e87063          	bgeu	a6,a4,18b7c <__mcmp+0x4c>
   18b60:	ffc72603          	lw	a2,-4(a4)
   18b64:	ffc7a683          	lw	a3,-4(a5)
   18b68:	ffc70713          	addi	a4,a4,-4
   18b6c:	ffc78793          	addi	a5,a5,-4
   18b70:	fed606e3          	beq	a2,a3,18b5c <__mcmp+0x2c>
   18b74:	fff00513          	li	a0,-1
   18b78:	00d67463          	bgeu	a2,a3,18b80 <__mcmp+0x50>
   18b7c:	00008067          	ret
   18b80:	00100513          	li	a0,1
   18b84:	00008067          	ret

0000000000018b88 <__mdiff>:
   18b88:	fe010113          	addi	sp,sp,-32
   18b8c:	01462703          	lw	a4,20(a2)
   18b90:	01213023          	sd	s2,0(sp)
   18b94:	0145a903          	lw	s2,20(a1)
   18b98:	00813823          	sd	s0,16(sp)
   18b9c:	00913423          	sd	s1,8(sp)
   18ba0:	00113c23          	sd	ra,24(sp)
   18ba4:	40e9093b          	subw	s2,s2,a4
   18ba8:	00058493          	mv	s1,a1
   18bac:	00060413          	mv	s0,a2
   18bb0:	1a091863          	bnez	s2,18d60 <__mdiff+0x1d8>
   18bb4:	00271693          	slli	a3,a4,0x2
   18bb8:	01858593          	addi	a1,a1,24
   18bbc:	01860713          	addi	a4,a2,24
   18bc0:	00d587b3          	add	a5,a1,a3
   18bc4:	00d70733          	add	a4,a4,a3
   18bc8:	0080006f          	j	18bd0 <__mdiff+0x48>
   18bcc:	1af5f063          	bgeu	a1,a5,18d6c <__mdiff+0x1e4>
   18bd0:	ffc7a603          	lw	a2,-4(a5)
   18bd4:	ffc72683          	lw	a3,-4(a4)
   18bd8:	ffc78793          	addi	a5,a5,-4
   18bdc:	ffc70713          	addi	a4,a4,-4
   18be0:	fed606e3          	beq	a2,a3,18bcc <__mdiff+0x44>
   18be4:	16d66463          	bltu	a2,a3,18d4c <__mdiff+0x1c4>
   18be8:	0084a583          	lw	a1,8(s1)
   18bec:	bc8ff0ef          	jal	ra,17fb4 <_Balloc>
   18bf0:	1a050663          	beqz	a0,18d9c <__mdiff+0x214>
   18bf4:	0144a883          	lw	a7,20(s1)
   18bf8:	01442f83          	lw	t6,20(s0)
   18bfc:	01848493          	addi	s1,s1,24
   18c00:	00289313          	slli	t1,a7,0x2
   18c04:	01840813          	addi	a6,s0,24
   18c08:	002f9f93          	slli	t6,t6,0x2
   18c0c:	01850f13          	addi	t5,a0,24
   18c10:	00010e37          	lui	t3,0x10
   18c14:	01252823          	sw	s2,16(a0)
   18c18:	00648333          	add	t1,s1,t1
   18c1c:	01f80fb3          	add	t6,a6,t6
   18c20:	000f0613          	mv	a2,t5
   18c24:	00048e93          	mv	t4,s1
   18c28:	00000713          	li	a4,0
   18c2c:	fffe0e13          	addi	t3,t3,-1 # ffff <register_fini-0xb1>
   18c30:	000ea683          	lw	a3,0(t4)
   18c34:	00082583          	lw	a1,0(a6)
   18c38:	00460613          	addi	a2,a2,4
   18c3c:	01c6f7b3          	and	a5,a3,t3
   18c40:	00e787bb          	addw	a5,a5,a4
   18c44:	01c5f733          	and	a4,a1,t3
   18c48:	40e787bb          	subw	a5,a5,a4
   18c4c:	0105d59b          	srliw	a1,a1,0x10
   18c50:	0106d71b          	srliw	a4,a3,0x10
   18c54:	40b7073b          	subw	a4,a4,a1
   18c58:	4107d69b          	sraiw	a3,a5,0x10
   18c5c:	00d7073b          	addw	a4,a4,a3
   18c60:	0107169b          	slliw	a3,a4,0x10
   18c64:	01c7f7b3          	and	a5,a5,t3
   18c68:	00d7e7b3          	or	a5,a5,a3
   18c6c:	0007879b          	sext.w	a5,a5
   18c70:	00480813          	addi	a6,a6,4
   18c74:	fef62e23          	sw	a5,-4(a2)
   18c78:	004e8e93          	addi	t4,t4,4
   18c7c:	4107571b          	sraiw	a4,a4,0x10
   18c80:	fbf868e3          	bltu	a6,t6,18c30 <__mdiff+0xa8>
   18c84:	408f85b3          	sub	a1,t6,s0
   18c88:	fe758593          	addi	a1,a1,-25
   18c8c:	01940413          	addi	s0,s0,25
   18c90:	0025d593          	srli	a1,a1,0x2
   18c94:	00000693          	li	a3,0
   18c98:	008fe463          	bltu	t6,s0,18ca0 <__mdiff+0x118>
   18c9c:	00259693          	slli	a3,a1,0x2
   18ca0:	00df06b3          	add	a3,t5,a3
   18ca4:	00400813          	li	a6,4
   18ca8:	008fe663          	bltu	t6,s0,18cb4 <__mdiff+0x12c>
   18cac:	00158593          	addi	a1,a1,1
   18cb0:	00259813          	slli	a6,a1,0x2
   18cb4:	010484b3          	add	s1,s1,a6
   18cb8:	010f0f33          	add	t5,t5,a6
   18cbc:	0664f063          	bgeu	s1,t1,18d1c <__mdiff+0x194>
   18cc0:	00010837          	lui	a6,0x10
   18cc4:	000f0593          	mv	a1,t5
   18cc8:	00048613          	mv	a2,s1
   18ccc:	fff80813          	addi	a6,a6,-1 # ffff <register_fini-0xb1>
   18cd0:	00062683          	lw	a3,0(a2)
   18cd4:	00458593          	addi	a1,a1,4
   18cd8:	00460613          	addi	a2,a2,4
   18cdc:	0106f7b3          	and	a5,a3,a6
   18ce0:	00e787bb          	addw	a5,a5,a4
   18ce4:	0106d71b          	srliw	a4,a3,0x10
   18ce8:	4107d69b          	sraiw	a3,a5,0x10
   18cec:	00d7073b          	addw	a4,a4,a3
   18cf0:	0107169b          	slliw	a3,a4,0x10
   18cf4:	0107f7b3          	and	a5,a5,a6
   18cf8:	00d7e7b3          	or	a5,a5,a3
   18cfc:	0007879b          	sext.w	a5,a5
   18d00:	fef5ae23          	sw	a5,-4(a1)
   18d04:	4107571b          	sraiw	a4,a4,0x10
   18d08:	fc6664e3          	bltu	a2,t1,18cd0 <__mdiff+0x148>
   18d0c:	fff30693          	addi	a3,t1,-1
   18d10:	409684b3          	sub	s1,a3,s1
   18d14:	ffc4f693          	andi	a3,s1,-4
   18d18:	00df06b3          	add	a3,t5,a3
   18d1c:	00079a63          	bnez	a5,18d30 <__mdiff+0x1a8>
   18d20:	ffc6a783          	lw	a5,-4(a3)
   18d24:	fff8889b          	addiw	a7,a7,-1
   18d28:	ffc68693          	addi	a3,a3,-4
   18d2c:	fe078ae3          	beqz	a5,18d20 <__mdiff+0x198>
   18d30:	01813083          	ld	ra,24(sp)
   18d34:	01013403          	ld	s0,16(sp)
   18d38:	01152a23          	sw	a7,20(a0)
   18d3c:	00813483          	ld	s1,8(sp)
   18d40:	00013903          	ld	s2,0(sp)
   18d44:	02010113          	addi	sp,sp,32
   18d48:	00008067          	ret
   18d4c:	00048793          	mv	a5,s1
   18d50:	00100913          	li	s2,1
   18d54:	00040493          	mv	s1,s0
   18d58:	00078413          	mv	s0,a5
   18d5c:	e8dff06f          	j	18be8 <__mdiff+0x60>
   18d60:	fe0946e3          	bltz	s2,18d4c <__mdiff+0x1c4>
   18d64:	00000913          	li	s2,0
   18d68:	e81ff06f          	j	18be8 <__mdiff+0x60>
   18d6c:	00000593          	li	a1,0
   18d70:	a44ff0ef          	jal	ra,17fb4 <_Balloc>
   18d74:	04050263          	beqz	a0,18db8 <__mdiff+0x230>
   18d78:	01813083          	ld	ra,24(sp)
   18d7c:	01013403          	ld	s0,16(sp)
   18d80:	00100793          	li	a5,1
   18d84:	00f52a23          	sw	a5,20(a0)
   18d88:	00052c23          	sw	zero,24(a0)
   18d8c:	00813483          	ld	s1,8(sp)
   18d90:	00013903          	ld	s2,0(sp)
   18d94:	02010113          	addi	sp,sp,32
   18d98:	00008067          	ret
   18d9c:	00009697          	auipc	a3,0x9
   18da0:	58c68693          	addi	a3,a3,1420 # 22328 <bmask+0x40>
   18da4:	00000613          	li	a2,0
   18da8:	24000593          	li	a1,576
   18dac:	00009517          	auipc	a0,0x9
   18db0:	59450513          	addi	a0,a0,1428 # 22340 <bmask+0x58>
   18db4:	3e1040ef          	jal	ra,1d994 <__assert_func>
   18db8:	00009697          	auipc	a3,0x9
   18dbc:	57068693          	addi	a3,a3,1392 # 22328 <bmask+0x40>
   18dc0:	00000613          	li	a2,0
   18dc4:	23200593          	li	a1,562
   18dc8:	00009517          	auipc	a0,0x9
   18dcc:	57850513          	addi	a0,a0,1400 # 22340 <bmask+0x58>
   18dd0:	3c5040ef          	jal	ra,1d994 <__assert_func>

0000000000018dd4 <__ulp>:
   18dd4:	e20507d3          	fmv.x.d	a5,fa0
   18dd8:	7ff00737          	lui	a4,0x7ff00
   18ddc:	0207d793          	srli	a5,a5,0x20
   18de0:	00e7f733          	and	a4,a5,a4
   18de4:	fcc007b7          	lui	a5,0xfcc00
   18de8:	00e787bb          	addw	a5,a5,a4
   18dec:	0007871b          	sext.w	a4,a5
   18df0:	00e05863          	blez	a4,18e00 <__ulp+0x2c>
   18df4:	02079793          	slli	a5,a5,0x20
   18df8:	f2078553          	fmv.d.x	fa0,a5
   18dfc:	00008067          	ret
   18e00:	40f007bb          	negw	a5,a5
   18e04:	4147d71b          	sraiw	a4,a5,0x14
   18e08:	01300693          	li	a3,19
   18e0c:	00e6c863          	blt	a3,a4,18e1c <__ulp+0x48>
   18e10:	000807b7          	lui	a5,0x80
   18e14:	40e7d7bb          	sraw	a5,a5,a4
   18e18:	fddff06f          	j	18df4 <__ulp+0x20>
   18e1c:	fec7069b          	addiw	a3,a4,-20
   18e20:	01e00613          	li	a2,30
   18e24:	00000793          	li	a5,0
   18e28:	00100713          	li	a4,1
   18e2c:	00d64663          	blt	a2,a3,18e38 <__ulp+0x64>
   18e30:	80000737          	lui	a4,0x80000
   18e34:	00d7573b          	srlw	a4,a4,a3
   18e38:	0207d793          	srli	a5,a5,0x20
   18e3c:	02071713          	slli	a4,a4,0x20
   18e40:	02075713          	srli	a4,a4,0x20
   18e44:	02079793          	slli	a5,a5,0x20
   18e48:	00e7e7b3          	or	a5,a5,a4
   18e4c:	f2078553          	fmv.d.x	fa0,a5
   18e50:	00008067          	ret

0000000000018e54 <__b2d>:
   18e54:	fd010113          	addi	sp,sp,-48
   18e58:	00913c23          	sd	s1,24(sp)
   18e5c:	01452483          	lw	s1,20(a0)
   18e60:	02813023          	sd	s0,32(sp)
   18e64:	01850413          	addi	s0,a0,24
   18e68:	00249493          	slli	s1,s1,0x2
   18e6c:	009404b3          	add	s1,s0,s1
   18e70:	01213823          	sd	s2,16(sp)
   18e74:	ffc4a903          	lw	s2,-4(s1)
   18e78:	01313423          	sd	s3,8(sp)
   18e7c:	01413023          	sd	s4,0(sp)
   18e80:	00090513          	mv	a0,s2
   18e84:	00058993          	mv	s3,a1
   18e88:	02113423          	sd	ra,40(sp)
   18e8c:	cd4ff0ef          	jal	ra,18360 <__hi0bits>
   18e90:	02000693          	li	a3,32
   18e94:	40a687bb          	subw	a5,a3,a0
   18e98:	00f9a023          	sw	a5,0(s3)
   18e9c:	00a00793          	li	a5,10
   18ea0:	ffc48a13          	addi	s4,s1,-4
   18ea4:	0aa7d663          	bge	a5,a0,18f50 <__b2d+0xfc>
   18ea8:	ff55079b          	addiw	a5,a0,-11
   18eac:	07447063          	bgeu	s0,s4,18f0c <__b2d+0xb8>
   18eb0:	ff84a703          	lw	a4,-8(s1)
   18eb4:	06078063          	beqz	a5,18f14 <__b2d+0xc0>
   18eb8:	40f6853b          	subw	a0,a3,a5
   18ebc:	00f916bb          	sllw	a3,s2,a5
   18ec0:	00a7593b          	srlw	s2,a4,a0
   18ec4:	0126e6b3          	or	a3,a3,s2
   18ec8:	3ff00937          	lui	s2,0x3ff00
   18ecc:	0126e6b3          	or	a3,a3,s2
   18ed0:	00f7173b          	sllw	a4,a4,a5
   18ed4:	ff848613          	addi	a2,s1,-8
   18ed8:	02069793          	slli	a5,a3,0x20
   18edc:	0007069b          	sext.w	a3,a4
   18ee0:	00c47a63          	bgeu	s0,a2,18ef4 <__b2d+0xa0>
   18ee4:	ff44a683          	lw	a3,-12(s1)
   18ee8:	00a6d6bb          	srlw	a3,a3,a0
   18eec:	00e6e6b3          	or	a3,a3,a4
   18ef0:	0006869b          	sext.w	a3,a3
   18ef4:	0207d793          	srli	a5,a5,0x20
   18ef8:	02069693          	slli	a3,a3,0x20
   18efc:	0206d693          	srli	a3,a3,0x20
   18f00:	02079793          	slli	a5,a5,0x20
   18f04:	00d7e7b3          	or	a5,a5,a3
   18f08:	0240006f          	j	18f2c <__b2d+0xd8>
   18f0c:	00000713          	li	a4,0
   18f10:	08079663          	bnez	a5,18f9c <__b2d+0x148>
   18f14:	3ff007b7          	lui	a5,0x3ff00
   18f18:	00f967b3          	or	a5,s2,a5
   18f1c:	02071713          	slli	a4,a4,0x20
   18f20:	02075713          	srli	a4,a4,0x20
   18f24:	02079793          	slli	a5,a5,0x20
   18f28:	00e7e7b3          	or	a5,a5,a4
   18f2c:	02813083          	ld	ra,40(sp)
   18f30:	02013403          	ld	s0,32(sp)
   18f34:	01813483          	ld	s1,24(sp)
   18f38:	01013903          	ld	s2,16(sp)
   18f3c:	00813983          	ld	s3,8(sp)
   18f40:	00013a03          	ld	s4,0(sp)
   18f44:	f2078553          	fmv.d.x	fa0,a5
   18f48:	03010113          	addi	sp,sp,48
   18f4c:	00008067          	ret
   18f50:	00b00693          	li	a3,11
   18f54:	40a686bb          	subw	a3,a3,a0
   18f58:	3ff00737          	lui	a4,0x3ff00
   18f5c:	00d957bb          	srlw	a5,s2,a3
   18f60:	00e7e7b3          	or	a5,a5,a4
   18f64:	02079793          	slli	a5,a5,0x20
   18f68:	00000713          	li	a4,0
   18f6c:	01447663          	bgeu	s0,s4,18f78 <__b2d+0x124>
   18f70:	ff84a703          	lw	a4,-8(s1)
   18f74:	00d7573b          	srlw	a4,a4,a3
   18f78:	0155051b          	addiw	a0,a0,21
   18f7c:	00a9153b          	sllw	a0,s2,a0
   18f80:	00a76533          	or	a0,a4,a0
   18f84:	0207d793          	srli	a5,a5,0x20
   18f88:	02051513          	slli	a0,a0,0x20
   18f8c:	02055513          	srli	a0,a0,0x20
   18f90:	02079793          	slli	a5,a5,0x20
   18f94:	00a7e7b3          	or	a5,a5,a0
   18f98:	f95ff06f          	j	18f2c <__b2d+0xd8>
   18f9c:	00f917bb          	sllw	a5,s2,a5
   18fa0:	3ff00937          	lui	s2,0x3ff00
   18fa4:	0127e7b3          	or	a5,a5,s2
   18fa8:	02079793          	slli	a5,a5,0x20
   18fac:	00000693          	li	a3,0
   18fb0:	f45ff06f          	j	18ef4 <__b2d+0xa0>

0000000000018fb4 <__d2b>:
   18fb4:	fc010113          	addi	sp,sp,-64
   18fb8:	01413823          	sd	s4,16(sp)
   18fbc:	00058a13          	mv	s4,a1
   18fc0:	00100593          	li	a1,1
   18fc4:	02813823          	sd	s0,48(sp)
   18fc8:	01313c23          	sd	s3,24(sp)
   18fcc:	02113c23          	sd	ra,56(sp)
   18fd0:	02913423          	sd	s1,40(sp)
   18fd4:	03213023          	sd	s2,32(sp)
   18fd8:	e2050453          	fmv.x.d	s0,fa0
   18fdc:	00060993          	mv	s3,a2
   18fe0:	fd5fe0ef          	jal	ra,17fb4 <_Balloc>
   18fe4:	10050c63          	beqz	a0,190fc <__d2b+0x148>
   18fe8:	42045793          	srai	a5,s0,0x20
   18fec:	0147d91b          	srliw	s2,a5,0x14
   18ff0:	7ff97913          	andi	s2,s2,2047
   18ff4:	02c79793          	slli	a5,a5,0x2c
   18ff8:	00050493          	mv	s1,a0
   18ffc:	02c7d793          	srli	a5,a5,0x2c
   19000:	00090663          	beqz	s2,1900c <__d2b+0x58>
   19004:	00100737          	lui	a4,0x100
   19008:	00e7e7b3          	or	a5,a5,a4
   1900c:	00f12623          	sw	a5,12(sp)
   19010:	0004041b          	sext.w	s0,s0
   19014:	08040663          	beqz	s0,190a0 <__d2b+0xec>
   19018:	00810513          	addi	a0,sp,8
   1901c:	00812423          	sw	s0,8(sp)
   19020:	bb8ff0ef          	jal	ra,183d8 <__lo0bits>
   19024:	0c050463          	beqz	a0,190ec <__d2b+0x138>
   19028:	00c12703          	lw	a4,12(sp)
   1902c:	00812683          	lw	a3,8(sp)
   19030:	02000793          	li	a5,32
   19034:	40a787bb          	subw	a5,a5,a0
   19038:	00f717bb          	sllw	a5,a4,a5
   1903c:	00d7e7b3          	or	a5,a5,a3
   19040:	00a7573b          	srlw	a4,a4,a0
   19044:	00f4ac23          	sw	a5,24(s1)
   19048:	00e12623          	sw	a4,12(sp)
   1904c:	0007079b          	sext.w	a5,a4
   19050:	00f03433          	snez	s0,a5
   19054:	00140413          	addi	s0,s0,1
   19058:	00f4ae23          	sw	a5,28(s1)
   1905c:	0084aa23          	sw	s0,20(s1)
   19060:	06090263          	beqz	s2,190c4 <__d2b+0x110>
   19064:	bcd9091b          	addiw	s2,s2,-1075
   19068:	00a9093b          	addw	s2,s2,a0
   1906c:	03500793          	li	a5,53
   19070:	012a2023          	sw	s2,0(s4)
   19074:	40a7853b          	subw	a0,a5,a0
   19078:	00a9a023          	sw	a0,0(s3)
   1907c:	03813083          	ld	ra,56(sp)
   19080:	03013403          	ld	s0,48(sp)
   19084:	02013903          	ld	s2,32(sp)
   19088:	01813983          	ld	s3,24(sp)
   1908c:	01013a03          	ld	s4,16(sp)
   19090:	00048513          	mv	a0,s1
   19094:	02813483          	ld	s1,40(sp)
   19098:	04010113          	addi	sp,sp,64
   1909c:	00008067          	ret
   190a0:	00c10513          	addi	a0,sp,12
   190a4:	b34ff0ef          	jal	ra,183d8 <__lo0bits>
   190a8:	00100793          	li	a5,1
   190ac:	00f4aa23          	sw	a5,20(s1)
   190b0:	00c12783          	lw	a5,12(sp)
   190b4:	0205051b          	addiw	a0,a0,32
   190b8:	00100413          	li	s0,1
   190bc:	00f4ac23          	sw	a5,24(s1)
   190c0:	fa0912e3          	bnez	s2,19064 <__d2b+0xb0>
   190c4:	bce5051b          	addiw	a0,a0,-1074
   190c8:	00241793          	slli	a5,s0,0x2
   190cc:	00aa2023          	sw	a0,0(s4)
   190d0:	00f487b3          	add	a5,s1,a5
   190d4:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedb1b4>
   190d8:	0054141b          	slliw	s0,s0,0x5
   190dc:	a84ff0ef          	jal	ra,18360 <__hi0bits>
   190e0:	40a4043b          	subw	s0,s0,a0
   190e4:	0089a023          	sw	s0,0(s3)
   190e8:	f95ff06f          	j	1907c <__d2b+0xc8>
   190ec:	00812703          	lw	a4,8(sp)
   190f0:	00c12783          	lw	a5,12(sp)
   190f4:	00e4ac23          	sw	a4,24(s1)
   190f8:	f59ff06f          	j	19050 <__d2b+0x9c>
   190fc:	00009697          	auipc	a3,0x9
   19100:	22c68693          	addi	a3,a3,556 # 22328 <bmask+0x40>
   19104:	00000613          	li	a2,0
   19108:	30a00593          	li	a1,778
   1910c:	00009517          	auipc	a0,0x9
   19110:	23450513          	addi	a0,a0,564 # 22340 <bmask+0x58>
   19114:	081040ef          	jal	ra,1d994 <__assert_func>

0000000000019118 <__ratio>:
   19118:	fd010113          	addi	sp,sp,-48
   1911c:	00913c23          	sd	s1,24(sp)
   19120:	00058493          	mv	s1,a1
   19124:	00810593          	addi	a1,sp,8
   19128:	02113423          	sd	ra,40(sp)
   1912c:	02813023          	sd	s0,32(sp)
   19130:	01213823          	sd	s2,16(sp)
   19134:	00050913          	mv	s2,a0
   19138:	d1dff0ef          	jal	ra,18e54 <__b2d>
   1913c:	00c10593          	addi	a1,sp,12
   19140:	00048513          	mv	a0,s1
   19144:	e2050453          	fmv.x.d	s0,fa0
   19148:	d0dff0ef          	jal	ra,18e54 <__b2d>
   1914c:	0144a703          	lw	a4,20(s1)
   19150:	01492783          	lw	a5,20(s2) # 3ff00014 <__BSS_END__+0x3fedb1b4>
   19154:	00c12683          	lw	a3,12(sp)
   19158:	40e787bb          	subw	a5,a5,a4
   1915c:	00812703          	lw	a4,8(sp)
   19160:	0057979b          	slliw	a5,a5,0x5
   19164:	40d7073b          	subw	a4,a4,a3
   19168:	00e786bb          	addw	a3,a5,a4
   1916c:	00068793          	mv	a5,a3
   19170:	e2050753          	fmv.x.d	a4,fa0
   19174:	04d05463          	blez	a3,191bc <__ratio+0xa4>
   19178:	02045693          	srli	a3,s0,0x20
   1917c:	0147979b          	slliw	a5,a5,0x14
   19180:	00d787bb          	addw	a5,a5,a3
   19184:	fff00693          	li	a3,-1
   19188:	0206d693          	srli	a3,a3,0x20
   1918c:	02079793          	slli	a5,a5,0x20
   19190:	0086f433          	and	s0,a3,s0
   19194:	00f46433          	or	s0,s0,a5
   19198:	f20407d3          	fmv.d.x	fa5,s0
   1919c:	02813083          	ld	ra,40(sp)
   191a0:	02013403          	ld	s0,32(sp)
   191a4:	f2070753          	fmv.d.x	fa4,a4
   191a8:	01813483          	ld	s1,24(sp)
   191ac:	01013903          	ld	s2,16(sp)
   191b0:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   191b4:	03010113          	addi	sp,sp,48
   191b8:	00008067          	ret
   191bc:	02075693          	srli	a3,a4,0x20
   191c0:	0147979b          	slliw	a5,a5,0x14
   191c4:	40f687bb          	subw	a5,a3,a5
   191c8:	fff00693          	li	a3,-1
   191cc:	0206d693          	srli	a3,a3,0x20
   191d0:	02079793          	slli	a5,a5,0x20
   191d4:	00e6f733          	and	a4,a3,a4
   191d8:	00f76733          	or	a4,a4,a5
   191dc:	fbdff06f          	j	19198 <__ratio+0x80>

00000000000191e0 <_mprec_log10>:
   191e0:	01700793          	li	a5,23
   191e4:	02a7d263          	bge	a5,a0,19208 <_mprec_log10+0x28>
   191e8:	0000c797          	auipc	a5,0xc
   191ec:	ba87b507          	fld	fa0,-1112(a5) # 24d90 <__SDATA_BEGIN__+0x18>
   191f0:	0000c797          	auipc	a5,0xc
   191f4:	ba87b787          	fld	fa5,-1112(a5) # 24d98 <__SDATA_BEGIN__+0x20>
   191f8:	fff5051b          	addiw	a0,a0,-1
   191fc:	12f57553          	fmul.d	fa0,fa0,fa5
   19200:	fe051ce3          	bnez	a0,191f8 <_mprec_log10+0x18>
   19204:	00008067          	ret
   19208:	00009797          	auipc	a5,0x9
   1920c:	1f078793          	addi	a5,a5,496 # 223f8 <p05.0>
   19210:	00351513          	slli	a0,a0,0x3
   19214:	00a78533          	add	a0,a5,a0
   19218:	01053507          	fld	fa0,16(a0)
   1921c:	00008067          	ret

0000000000019220 <__copybits>:
   19220:	01462683          	lw	a3,20(a2)
   19224:	fff5859b          	addiw	a1,a1,-1
   19228:	4055d59b          	sraiw	a1,a1,0x5
   1922c:	0015859b          	addiw	a1,a1,1
   19230:	01860793          	addi	a5,a2,24
   19234:	00269693          	slli	a3,a3,0x2
   19238:	00259593          	slli	a1,a1,0x2
   1923c:	00d786b3          	add	a3,a5,a3
   19240:	00b505b3          	add	a1,a0,a1
   19244:	02d7f863          	bgeu	a5,a3,19274 <__copybits+0x54>
   19248:	00050713          	mv	a4,a0
   1924c:	0007a803          	lw	a6,0(a5)
   19250:	00478793          	addi	a5,a5,4
   19254:	00470713          	addi	a4,a4,4 # 100004 <__BSS_END__+0xdb1a4>
   19258:	ff072e23          	sw	a6,-4(a4)
   1925c:	fed7e8e3          	bltu	a5,a3,1924c <__copybits+0x2c>
   19260:	40c687b3          	sub	a5,a3,a2
   19264:	fe778793          	addi	a5,a5,-25
   19268:	ffc7f793          	andi	a5,a5,-4
   1926c:	00478793          	addi	a5,a5,4
   19270:	00f50533          	add	a0,a0,a5
   19274:	00b57863          	bgeu	a0,a1,19284 <__copybits+0x64>
   19278:	00450513          	addi	a0,a0,4
   1927c:	fe052e23          	sw	zero,-4(a0)
   19280:	feb56ce3          	bltu	a0,a1,19278 <__copybits+0x58>
   19284:	00008067          	ret

0000000000019288 <__any_on>:
   19288:	01452703          	lw	a4,20(a0)
   1928c:	4055d613          	srai	a2,a1,0x5
   19290:	01850693          	addi	a3,a0,24
   19294:	02c75263          	bge	a4,a2,192b8 <__any_on+0x30>
   19298:	00271793          	slli	a5,a4,0x2
   1929c:	00f687b3          	add	a5,a3,a5
   192a0:	04f6f263          	bgeu	a3,a5,192e4 <__any_on+0x5c>
   192a4:	ffc7a703          	lw	a4,-4(a5)
   192a8:	ffc78793          	addi	a5,a5,-4
   192ac:	fe070ae3          	beqz	a4,192a0 <__any_on+0x18>
   192b0:	00100513          	li	a0,1
   192b4:	00008067          	ret
   192b8:	00261793          	slli	a5,a2,0x2
   192bc:	00f687b3          	add	a5,a3,a5
   192c0:	fee650e3          	bge	a2,a4,192a0 <__any_on+0x18>
   192c4:	01f5f593          	andi	a1,a1,31
   192c8:	fc058ce3          	beqz	a1,192a0 <__any_on+0x18>
   192cc:	0007a603          	lw	a2,0(a5)
   192d0:	00100513          	li	a0,1
   192d4:	00b6573b          	srlw	a4,a2,a1
   192d8:	00b715bb          	sllw	a1,a4,a1
   192dc:	fcc582e3          	beq	a1,a2,192a0 <__any_on+0x18>
   192e0:	00008067          	ret
   192e4:	00000513          	li	a0,0
   192e8:	00008067          	ret

00000000000192ec <_realloc_r>:
   192ec:	fb010113          	addi	sp,sp,-80
   192f0:	03213823          	sd	s2,48(sp)
   192f4:	04113423          	sd	ra,72(sp)
   192f8:	04813023          	sd	s0,64(sp)
   192fc:	02913c23          	sd	s1,56(sp)
   19300:	03313423          	sd	s3,40(sp)
   19304:	03413023          	sd	s4,32(sp)
   19308:	01513c23          	sd	s5,24(sp)
   1930c:	01613823          	sd	s6,16(sp)
   19310:	01713423          	sd	s7,8(sp)
   19314:	01813023          	sd	s8,0(sp)
   19318:	00060913          	mv	s2,a2
   1931c:	1c058663          	beqz	a1,194e8 <_realloc_r+0x1fc>
   19320:	00058413          	mv	s0,a1
   19324:	00050a93          	mv	s5,a0
   19328:	c85fe0ef          	jal	ra,17fac <__malloc_lock>
   1932c:	ff843703          	ld	a4,-8(s0)
   19330:	01790493          	addi	s1,s2,23
   19334:	02e00793          	li	a5,46
   19338:	ff040b13          	addi	s6,s0,-16
   1933c:	ffc77a13          	andi	s4,a4,-4
   19340:	0e97fa63          	bgeu	a5,s1,19434 <_realloc_r+0x148>
   19344:	800007b7          	lui	a5,0x80000
   19348:	ff04f493          	andi	s1,s1,-16
   1934c:	fff7c793          	not	a5,a5
   19350:	0e97e663          	bltu	a5,s1,1943c <_realloc_r+0x150>
   19354:	0f24e463          	bltu	s1,s2,1943c <_realloc_r+0x150>
   19358:	014b09b3          	add	s3,s6,s4
   1935c:	129a5c63          	bge	s4,s1,19494 <_realloc_r+0x1a8>
   19360:	0000bb97          	auipc	s7,0xb
   19364:	208b8b93          	addi	s7,s7,520 # 24568 <__malloc_av_>
   19368:	010bb683          	ld	a3,16(s7)
   1936c:	0089b783          	ld	a5,8(s3)
   19370:	1d368e63          	beq	a3,s3,1954c <_realloc_r+0x260>
   19374:	ffe7f693          	andi	a3,a5,-2
   19378:	00d986b3          	add	a3,s3,a3
   1937c:	0086b683          	ld	a3,8(a3)
   19380:	0016f693          	andi	a3,a3,1
   19384:	14069463          	bnez	a3,194cc <_realloc_r+0x1e0>
   19388:	ffc7f793          	andi	a5,a5,-4
   1938c:	00fa06b3          	add	a3,s4,a5
   19390:	0e96d663          	bge	a3,s1,1947c <_realloc_r+0x190>
   19394:	00177713          	andi	a4,a4,1
   19398:	02071463          	bnez	a4,193c0 <_realloc_r+0xd4>
   1939c:	ff043c03          	ld	s8,-16(s0)
   193a0:	418b0c33          	sub	s8,s6,s8
   193a4:	008c3703          	ld	a4,8(s8)
   193a8:	ffc77713          	andi	a4,a4,-4
   193ac:	00f707b3          	add	a5,a4,a5
   193b0:	01478bb3          	add	s7,a5,s4
   193b4:	349bd863          	bge	s7,s1,19704 <_realloc_r+0x418>
   193b8:	00ea0bb3          	add	s7,s4,a4
   193bc:	2c9bd263          	bge	s7,s1,19680 <_realloc_r+0x394>
   193c0:	00090593          	mv	a1,s2
   193c4:	000a8513          	mv	a0,s5
   193c8:	854fe0ef          	jal	ra,1741c <_malloc_r>
   193cc:	00050913          	mv	s2,a0
   193d0:	04050c63          	beqz	a0,19428 <_realloc_r+0x13c>
   193d4:	ff843783          	ld	a5,-8(s0)
   193d8:	ff050713          	addi	a4,a0,-16
   193dc:	ffe7f793          	andi	a5,a5,-2
   193e0:	00fb07b3          	add	a5,s6,a5
   193e4:	28e78463          	beq	a5,a4,1966c <_realloc_r+0x380>
   193e8:	ff8a0613          	addi	a2,s4,-8
   193ec:	04800793          	li	a5,72
   193f0:	30c7e463          	bltu	a5,a2,196f8 <_realloc_r+0x40c>
   193f4:	02700713          	li	a4,39
   193f8:	00043683          	ld	a3,0(s0)
   193fc:	20c76c63          	bltu	a4,a2,19614 <_realloc_r+0x328>
   19400:	00050793          	mv	a5,a0
   19404:	00040713          	mv	a4,s0
   19408:	00d7b023          	sd	a3,0(a5) # ffffffff80000000 <__BSS_END__+0xffffffff7ffdb1a0>
   1940c:	00873683          	ld	a3,8(a4)
   19410:	00d7b423          	sd	a3,8(a5)
   19414:	01073703          	ld	a4,16(a4)
   19418:	00e7b823          	sd	a4,16(a5)
   1941c:	00040593          	mv	a1,s0
   19420:	000a8513          	mv	a0,s5
   19424:	e34fa0ef          	jal	ra,13a58 <_free_r>
   19428:	000a8513          	mv	a0,s5
   1942c:	b85fe0ef          	jal	ra,17fb0 <__malloc_unlock>
   19430:	0180006f          	j	19448 <_realloc_r+0x15c>
   19434:	02000493          	li	s1,32
   19438:	f324f0e3          	bgeu	s1,s2,19358 <_realloc_r+0x6c>
   1943c:	00c00793          	li	a5,12
   19440:	00faa023          	sw	a5,0(s5)
   19444:	00000913          	li	s2,0
   19448:	04813083          	ld	ra,72(sp)
   1944c:	04013403          	ld	s0,64(sp)
   19450:	03813483          	ld	s1,56(sp)
   19454:	02813983          	ld	s3,40(sp)
   19458:	02013a03          	ld	s4,32(sp)
   1945c:	01813a83          	ld	s5,24(sp)
   19460:	01013b03          	ld	s6,16(sp)
   19464:	00813b83          	ld	s7,8(sp)
   19468:	00013c03          	ld	s8,0(sp)
   1946c:	00090513          	mv	a0,s2
   19470:	03013903          	ld	s2,48(sp)
   19474:	05010113          	addi	sp,sp,80
   19478:	00008067          	ret
   1947c:	0189b783          	ld	a5,24(s3)
   19480:	0109b703          	ld	a4,16(s3)
   19484:	00068a13          	mv	s4,a3
   19488:	00db09b3          	add	s3,s6,a3
   1948c:	00f73c23          	sd	a5,24(a4)
   19490:	00e7b823          	sd	a4,16(a5)
   19494:	008b3783          	ld	a5,8(s6)
   19498:	409a0733          	sub	a4,s4,s1
   1949c:	01f00693          	li	a3,31
   194a0:	0017f793          	andi	a5,a5,1
   194a4:	06e6ec63          	bltu	a3,a4,1951c <_realloc_r+0x230>
   194a8:	00fa67b3          	or	a5,s4,a5
   194ac:	00fb3423          	sd	a5,8(s6)
   194b0:	0089b783          	ld	a5,8(s3)
   194b4:	0017e793          	ori	a5,a5,1
   194b8:	00f9b423          	sd	a5,8(s3)
   194bc:	000a8513          	mv	a0,s5
   194c0:	af1fe0ef          	jal	ra,17fb0 <__malloc_unlock>
   194c4:	00040913          	mv	s2,s0
   194c8:	f81ff06f          	j	19448 <_realloc_r+0x15c>
   194cc:	00177713          	andi	a4,a4,1
   194d0:	ee0718e3          	bnez	a4,193c0 <_realloc_r+0xd4>
   194d4:	ff043c03          	ld	s8,-16(s0)
   194d8:	418b0c33          	sub	s8,s6,s8
   194dc:	008c3703          	ld	a4,8(s8)
   194e0:	ffc77713          	andi	a4,a4,-4
   194e4:	ed5ff06f          	j	193b8 <_realloc_r+0xcc>
   194e8:	04013403          	ld	s0,64(sp)
   194ec:	04813083          	ld	ra,72(sp)
   194f0:	03813483          	ld	s1,56(sp)
   194f4:	03013903          	ld	s2,48(sp)
   194f8:	02813983          	ld	s3,40(sp)
   194fc:	02013a03          	ld	s4,32(sp)
   19500:	01813a83          	ld	s5,24(sp)
   19504:	01013b03          	ld	s6,16(sp)
   19508:	00813b83          	ld	s7,8(sp)
   1950c:	00013c03          	ld	s8,0(sp)
   19510:	00060593          	mv	a1,a2
   19514:	05010113          	addi	sp,sp,80
   19518:	f05fd06f          	j	1741c <_malloc_r>
   1951c:	00f4e7b3          	or	a5,s1,a5
   19520:	00fb3423          	sd	a5,8(s6)
   19524:	009b05b3          	add	a1,s6,s1
   19528:	00176713          	ori	a4,a4,1
   1952c:	00e5b423          	sd	a4,8(a1)
   19530:	0089b783          	ld	a5,8(s3)
   19534:	01058593          	addi	a1,a1,16
   19538:	000a8513          	mv	a0,s5
   1953c:	0017e793          	ori	a5,a5,1
   19540:	00f9b423          	sd	a5,8(s3)
   19544:	d14fa0ef          	jal	ra,13a58 <_free_r>
   19548:	f75ff06f          	j	194bc <_realloc_r+0x1d0>
   1954c:	ffc7f793          	andi	a5,a5,-4
   19550:	00fa06b3          	add	a3,s4,a5
   19554:	02048613          	addi	a2,s1,32
   19558:	0ec6d063          	bge	a3,a2,19638 <_realloc_r+0x34c>
   1955c:	00177713          	andi	a4,a4,1
   19560:	e60710e3          	bnez	a4,193c0 <_realloc_r+0xd4>
   19564:	ff043c03          	ld	s8,-16(s0)
   19568:	418b0c33          	sub	s8,s6,s8
   1956c:	008c3703          	ld	a4,8(s8)
   19570:	ffc77713          	andi	a4,a4,-4
   19574:	00f707b3          	add	a5,a4,a5
   19578:	014789b3          	add	s3,a5,s4
   1957c:	e2c9cee3          	blt	s3,a2,193b8 <_realloc_r+0xcc>
   19580:	018c3783          	ld	a5,24(s8)
   19584:	010c3703          	ld	a4,16(s8)
   19588:	ff8a0613          	addi	a2,s4,-8
   1958c:	04800693          	li	a3,72
   19590:	00f73c23          	sd	a5,24(a4)
   19594:	00e7b823          	sd	a4,16(a5)
   19598:	010c0913          	addi	s2,s8,16
   1959c:	26c6ec63          	bltu	a3,a2,19814 <_realloc_r+0x528>
   195a0:	02700593          	li	a1,39
   195a4:	00043703          	ld	a4,0(s0)
   195a8:	00090793          	mv	a5,s2
   195ac:	02c5f263          	bgeu	a1,a2,195d0 <_realloc_r+0x2e4>
   195b0:	00ec3823          	sd	a4,16(s8)
   195b4:	00843703          	ld	a4,8(s0)
   195b8:	03700793          	li	a5,55
   195bc:	00ec3c23          	sd	a4,24(s8)
   195c0:	26c7e263          	bltu	a5,a2,19824 <_realloc_r+0x538>
   195c4:	01043703          	ld	a4,16(s0)
   195c8:	020c0793          	addi	a5,s8,32
   195cc:	01040413          	addi	s0,s0,16
   195d0:	00e7b023          	sd	a4,0(a5)
   195d4:	00843703          	ld	a4,8(s0)
   195d8:	00e7b423          	sd	a4,8(a5)
   195dc:	01043703          	ld	a4,16(s0)
   195e0:	00e7b823          	sd	a4,16(a5)
   195e4:	009c0733          	add	a4,s8,s1
   195e8:	409987b3          	sub	a5,s3,s1
   195ec:	00ebb823          	sd	a4,16(s7)
   195f0:	0017e793          	ori	a5,a5,1
   195f4:	00f73423          	sd	a5,8(a4)
   195f8:	008c3783          	ld	a5,8(s8)
   195fc:	000a8513          	mv	a0,s5
   19600:	0017f793          	andi	a5,a5,1
   19604:	0097e4b3          	or	s1,a5,s1
   19608:	009c3423          	sd	s1,8(s8)
   1960c:	9a5fe0ef          	jal	ra,17fb0 <__malloc_unlock>
   19610:	e39ff06f          	j	19448 <_realloc_r+0x15c>
   19614:	00d53023          	sd	a3,0(a0)
   19618:	00843683          	ld	a3,8(s0)
   1961c:	03700713          	li	a4,55
   19620:	00d53423          	sd	a3,8(a0)
   19624:	16c76e63          	bltu	a4,a2,197a0 <_realloc_r+0x4b4>
   19628:	01043683          	ld	a3,16(s0)
   1962c:	01040713          	addi	a4,s0,16
   19630:	01050793          	addi	a5,a0,16
   19634:	dd5ff06f          	j	19408 <_realloc_r+0x11c>
   19638:	009b0b33          	add	s6,s6,s1
   1963c:	409687b3          	sub	a5,a3,s1
   19640:	016bb823          	sd	s6,16(s7)
   19644:	0017e793          	ori	a5,a5,1
   19648:	00fb3423          	sd	a5,8(s6)
   1964c:	ff843783          	ld	a5,-8(s0)
   19650:	000a8513          	mv	a0,s5
   19654:	00040913          	mv	s2,s0
   19658:	0017f793          	andi	a5,a5,1
   1965c:	0097e4b3          	or	s1,a5,s1
   19660:	fe943c23          	sd	s1,-8(s0)
   19664:	94dfe0ef          	jal	ra,17fb0 <__malloc_unlock>
   19668:	de1ff06f          	j	19448 <_realloc_r+0x15c>
   1966c:	ff853783          	ld	a5,-8(a0)
   19670:	ffc7f793          	andi	a5,a5,-4
   19674:	00fa0a33          	add	s4,s4,a5
   19678:	014b09b3          	add	s3,s6,s4
   1967c:	e19ff06f          	j	19494 <_realloc_r+0x1a8>
   19680:	018c3783          	ld	a5,24(s8)
   19684:	010c3703          	ld	a4,16(s8)
   19688:	ff8a0613          	addi	a2,s4,-8
   1968c:	04800693          	li	a3,72
   19690:	00f73c23          	sd	a5,24(a4)
   19694:	00e7b823          	sd	a4,16(a5)
   19698:	010c0913          	addi	s2,s8,16
   1969c:	017c09b3          	add	s3,s8,s7
   196a0:	0ec6e263          	bltu	a3,a2,19784 <_realloc_r+0x498>
   196a4:	02700593          	li	a1,39
   196a8:	00043703          	ld	a4,0(s0)
   196ac:	00090793          	mv	a5,s2
   196b0:	02c5f263          	bgeu	a1,a2,196d4 <_realloc_r+0x3e8>
   196b4:	00ec3823          	sd	a4,16(s8)
   196b8:	00843703          	ld	a4,8(s0)
   196bc:	03700793          	li	a5,55
   196c0:	00ec3c23          	sd	a4,24(s8)
   196c4:	10c7e063          	bltu	a5,a2,197c4 <_realloc_r+0x4d8>
   196c8:	01043703          	ld	a4,16(s0)
   196cc:	020c0793          	addi	a5,s8,32
   196d0:	01040413          	addi	s0,s0,16
   196d4:	00e7b023          	sd	a4,0(a5)
   196d8:	00843703          	ld	a4,8(s0)
   196dc:	000b8a13          	mv	s4,s7
   196e0:	000c0b13          	mv	s6,s8
   196e4:	00e7b423          	sd	a4,8(a5)
   196e8:	01043703          	ld	a4,16(s0)
   196ec:	00090413          	mv	s0,s2
   196f0:	00e7b823          	sd	a4,16(a5)
   196f4:	da1ff06f          	j	19494 <_realloc_r+0x1a8>
   196f8:	00040593          	mv	a1,s0
   196fc:	f90fe0ef          	jal	ra,17e8c <memmove>
   19700:	d1dff06f          	j	1941c <_realloc_r+0x130>
   19704:	0189b783          	ld	a5,24(s3)
   19708:	0109b703          	ld	a4,16(s3)
   1970c:	ff8a0613          	addi	a2,s4,-8
   19710:	04800693          	li	a3,72
   19714:	00f73c23          	sd	a5,24(a4)
   19718:	00e7b823          	sd	a4,16(a5)
   1971c:	010c3703          	ld	a4,16(s8)
   19720:	018c3783          	ld	a5,24(s8)
   19724:	010c0913          	addi	s2,s8,16
   19728:	017c09b3          	add	s3,s8,s7
   1972c:	00f73c23          	sd	a5,24(a4)
   19730:	00e7b823          	sd	a4,16(a5)
   19734:	04c6e863          	bltu	a3,a2,19784 <_realloc_r+0x498>
   19738:	02700693          	li	a3,39
   1973c:	00043703          	ld	a4,0(s0)
   19740:	00090793          	mv	a5,s2
   19744:	f8c6f8e3          	bgeu	a3,a2,196d4 <_realloc_r+0x3e8>
   19748:	00ec3823          	sd	a4,16(s8)
   1974c:	00843703          	ld	a4,8(s0)
   19750:	03700793          	li	a5,55
   19754:	00ec3c23          	sd	a4,24(s8)
   19758:	01043703          	ld	a4,16(s0)
   1975c:	f6c7f8e3          	bgeu	a5,a2,196cc <_realloc_r+0x3e0>
   19760:	02ec3023          	sd	a4,32(s8)
   19764:	01843703          	ld	a4,24(s0)
   19768:	04800793          	li	a5,72
   1976c:	02ec3423          	sd	a4,40(s8)
   19770:	02043703          	ld	a4,32(s0)
   19774:	06f60463          	beq	a2,a5,197dc <_realloc_r+0x4f0>
   19778:	030c0793          	addi	a5,s8,48
   1977c:	02040413          	addi	s0,s0,32
   19780:	f55ff06f          	j	196d4 <_realloc_r+0x3e8>
   19784:	00040593          	mv	a1,s0
   19788:	00090513          	mv	a0,s2
   1978c:	f00fe0ef          	jal	ra,17e8c <memmove>
   19790:	00090413          	mv	s0,s2
   19794:	000b8a13          	mv	s4,s7
   19798:	000c0b13          	mv	s6,s8
   1979c:	cf9ff06f          	j	19494 <_realloc_r+0x1a8>
   197a0:	01043703          	ld	a4,16(s0)
   197a4:	00e53823          	sd	a4,16(a0)
   197a8:	01843703          	ld	a4,24(s0)
   197ac:	00e53c23          	sd	a4,24(a0)
   197b0:	02043683          	ld	a3,32(s0)
   197b4:	04f60263          	beq	a2,a5,197f8 <_realloc_r+0x50c>
   197b8:	02040713          	addi	a4,s0,32
   197bc:	02050793          	addi	a5,a0,32
   197c0:	c49ff06f          	j	19408 <_realloc_r+0x11c>
   197c4:	01043783          	ld	a5,16(s0)
   197c8:	02fc3023          	sd	a5,32(s8)
   197cc:	01843783          	ld	a5,24(s0)
   197d0:	02fc3423          	sd	a5,40(s8)
   197d4:	02043703          	ld	a4,32(s0)
   197d8:	fad610e3          	bne	a2,a3,19778 <_realloc_r+0x48c>
   197dc:	02ec3823          	sd	a4,48(s8)
   197e0:	02843703          	ld	a4,40(s0)
   197e4:	040c0793          	addi	a5,s8,64
   197e8:	03040413          	addi	s0,s0,48
   197ec:	02ec3c23          	sd	a4,56(s8)
   197f0:	00043703          	ld	a4,0(s0)
   197f4:	ee1ff06f          	j	196d4 <_realloc_r+0x3e8>
   197f8:	02d53023          	sd	a3,32(a0)
   197fc:	02843683          	ld	a3,40(s0)
   19800:	03040713          	addi	a4,s0,48
   19804:	03050793          	addi	a5,a0,48
   19808:	02d53423          	sd	a3,40(a0)
   1980c:	03043683          	ld	a3,48(s0)
   19810:	bf9ff06f          	j	19408 <_realloc_r+0x11c>
   19814:	00040593          	mv	a1,s0
   19818:	00090513          	mv	a0,s2
   1981c:	e70fe0ef          	jal	ra,17e8c <memmove>
   19820:	dc5ff06f          	j	195e4 <_realloc_r+0x2f8>
   19824:	01043783          	ld	a5,16(s0)
   19828:	02fc3023          	sd	a5,32(s8)
   1982c:	01843783          	ld	a5,24(s0)
   19830:	02fc3423          	sd	a5,40(s8)
   19834:	02043703          	ld	a4,32(s0)
   19838:	00d60863          	beq	a2,a3,19848 <_realloc_r+0x55c>
   1983c:	030c0793          	addi	a5,s8,48
   19840:	02040413          	addi	s0,s0,32
   19844:	d8dff06f          	j	195d0 <_realloc_r+0x2e4>
   19848:	02ec3823          	sd	a4,48(s8)
   1984c:	02843703          	ld	a4,40(s0)
   19850:	040c0793          	addi	a5,s8,64
   19854:	03040413          	addi	s0,s0,48
   19858:	02ec3c23          	sd	a4,56(s8)
   1985c:	00043703          	ld	a4,0(s0)
   19860:	d71ff06f          	j	195d0 <_realloc_r+0x2e4>

0000000000019864 <_sbrk_r>:
   19864:	ff010113          	addi	sp,sp,-16
   19868:	00813023          	sd	s0,0(sp)
   1986c:	00050413          	mv	s0,a0
   19870:	00058513          	mv	a0,a1
   19874:	7801a823          	sw	zero,1936(gp) # 24df0 <errno>
   19878:	00113423          	sd	ra,8(sp)
   1987c:	6bc060ef          	jal	ra,1ff38 <_sbrk>
   19880:	fff00793          	li	a5,-1
   19884:	00f50a63          	beq	a0,a5,19898 <_sbrk_r+0x34>
   19888:	00813083          	ld	ra,8(sp)
   1988c:	00013403          	ld	s0,0(sp)
   19890:	01010113          	addi	sp,sp,16
   19894:	00008067          	ret
   19898:	7901a783          	lw	a5,1936(gp) # 24df0 <errno>
   1989c:	fe0786e3          	beqz	a5,19888 <_sbrk_r+0x24>
   198a0:	00813083          	ld	ra,8(sp)
   198a4:	00f42023          	sw	a5,0(s0)
   198a8:	00013403          	ld	s0,0(sp)
   198ac:	01010113          	addi	sp,sp,16
   198b0:	00008067          	ret

00000000000198b4 <frexp>:
   198b4:	e20507d3          	fmv.x.d	a5,fa0
   198b8:	80000637          	lui	a2,0x80000
   198bc:	fff64613          	not	a2,a2
   198c0:	4207d593          	srai	a1,a5,0x20
   198c4:	00c5f733          	and	a4,a1,a2
   198c8:	00052023          	sw	zero,0(a0)
   198cc:	7ff00837          	lui	a6,0x7ff00
   198d0:	00058693          	mv	a3,a1
   198d4:	07075a63          	bge	a4,a6,19948 <frexp+0x94>
   198d8:	00f76833          	or	a6,a4,a5
   198dc:	0008081b          	sext.w	a6,a6
   198e0:	06080463          	beqz	a6,19948 <frexp+0x94>
   198e4:	7ff00837          	lui	a6,0x7ff00
   198e8:	0105f5b3          	and	a1,a1,a6
   198ec:	00000813          	li	a6,0
   198f0:	02059063          	bnez	a1,19910 <frexp+0x5c>
   198f4:	0000b717          	auipc	a4,0xb
   198f8:	4ac73787          	fld	fa5,1196(a4) # 24da0 <__SDATA_BEGIN__+0x28>
   198fc:	12f577d3          	fmul.d	fa5,fa0,fa5
   19900:	fca00813          	li	a6,-54
   19904:	e20787d3          	fmv.x.d	a5,fa5
   19908:	4207d693          	srai	a3,a5,0x20
   1990c:	00c6f733          	and	a4,a3,a2
   19910:	80100637          	lui	a2,0x80100
   19914:	fff60613          	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800db19f>
   19918:	00c6f6b3          	and	a3,a3,a2
   1991c:	3fe00637          	lui	a2,0x3fe00
   19920:	00c6e6b3          	or	a3,a3,a2
   19924:	4147571b          	sraiw	a4,a4,0x14
   19928:	fff00613          	li	a2,-1
   1992c:	c027071b          	addiw	a4,a4,-1022
   19930:	02065613          	srli	a2,a2,0x20
   19934:	0107073b          	addw	a4,a4,a6
   19938:	02069693          	slli	a3,a3,0x20
   1993c:	00f677b3          	and	a5,a2,a5
   19940:	00e52023          	sw	a4,0(a0)
   19944:	00d7e7b3          	or	a5,a5,a3
   19948:	f2078553          	fmv.d.x	fa0,a5
   1994c:	00008067          	ret

0000000000019950 <_sprintf_r>:
   19950:	f0010113          	addi	sp,sp,-256
   19954:	0d810e93          	addi	t4,sp,216
   19958:	0ef13423          	sd	a5,232(sp)
   1995c:	80000337          	lui	t1,0x80000
   19960:	ffff07b7          	lui	a5,0xffff0
   19964:	00058e13          	mv	t3,a1
   19968:	fff34313          	not	t1,t1
   1996c:	0cd13c23          	sd	a3,216(sp)
   19970:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb3a8>
   19974:	01010593          	addi	a1,sp,16
   19978:	000e8693          	mv	a3,t4
   1997c:	0c113423          	sd	ra,200(sp)
   19980:	02f12023          	sw	a5,32(sp)
   19984:	0ee13023          	sd	a4,224(sp)
   19988:	0f013823          	sd	a6,240(sp)
   1998c:	0f113c23          	sd	a7,248(sp)
   19990:	01c13823          	sd	t3,16(sp)
   19994:	03c13423          	sd	t3,40(sp)
   19998:	02612823          	sw	t1,48(sp)
   1999c:	00612e23          	sw	t1,28(sp)
   199a0:	01d13423          	sd	t4,8(sp)
   199a4:	4a0000ef          	jal	ra,19e44 <_svfprintf_r>
   199a8:	01013783          	ld	a5,16(sp)
   199ac:	00078023          	sb	zero,0(a5)
   199b0:	0c813083          	ld	ra,200(sp)
   199b4:	10010113          	addi	sp,sp,256
   199b8:	00008067          	ret

00000000000199bc <sprintf>:
   199bc:	f0010113          	addi	sp,sp,-256
   199c0:	0d010e93          	addi	t4,sp,208
   199c4:	0ef13423          	sd	a5,232(sp)
   199c8:	80000337          	lui	t1,0x80000
   199cc:	ffff07b7          	lui	a5,0xffff0
   199d0:	00050e13          	mv	t3,a0
   199d4:	fff34313          	not	t1,t1
   199d8:	0cc13823          	sd	a2,208(sp)
   199dc:	0cd13c23          	sd	a3,216(sp)
   199e0:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb3a8>
   199e4:	00058613          	mv	a2,a1
   199e8:	000e8693          	mv	a3,t4
   199ec:	01010593          	addi	a1,sp,16
   199f0:	7581b503          	ld	a0,1880(gp) # 24db8 <_impure_ptr>
   199f4:	0c113423          	sd	ra,200(sp)
   199f8:	02f12023          	sw	a5,32(sp)
   199fc:	0ee13023          	sd	a4,224(sp)
   19a00:	0f013823          	sd	a6,240(sp)
   19a04:	0f113c23          	sd	a7,248(sp)
   19a08:	01c13823          	sd	t3,16(sp)
   19a0c:	03c13423          	sd	t3,40(sp)
   19a10:	02612823          	sw	t1,48(sp)
   19a14:	00612e23          	sw	t1,28(sp)
   19a18:	01d13423          	sd	t4,8(sp)
   19a1c:	428000ef          	jal	ra,19e44 <_svfprintf_r>
   19a20:	01013783          	ld	a5,16(sp)
   19a24:	00078023          	sb	zero,0(a5)
   19a28:	0c813083          	ld	ra,200(sp)
   19a2c:	10010113          	addi	sp,sp,256
   19a30:	00008067          	ret

0000000000019a34 <__sread>:
   19a34:	ff010113          	addi	sp,sp,-16
   19a38:	00813023          	sd	s0,0(sp)
   19a3c:	00058413          	mv	s0,a1
   19a40:	01259583          	lh	a1,18(a1)
   19a44:	00113423          	sd	ra,8(sp)
   19a48:	5d8040ef          	jal	ra,1e020 <_read_r>
   19a4c:	02054063          	bltz	a0,19a6c <__sread+0x38>
   19a50:	09043783          	ld	a5,144(s0)
   19a54:	00813083          	ld	ra,8(sp)
   19a58:	00a787b3          	add	a5,a5,a0
   19a5c:	08f43823          	sd	a5,144(s0)
   19a60:	00013403          	ld	s0,0(sp)
   19a64:	01010113          	addi	sp,sp,16
   19a68:	00008067          	ret
   19a6c:	01045783          	lhu	a5,16(s0)
   19a70:	fffff737          	lui	a4,0xfffff
   19a74:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda19f>
   19a78:	00e7f7b3          	and	a5,a5,a4
   19a7c:	00813083          	ld	ra,8(sp)
   19a80:	00f41823          	sh	a5,16(s0)
   19a84:	00013403          	ld	s0,0(sp)
   19a88:	01010113          	addi	sp,sp,16
   19a8c:	00008067          	ret

0000000000019a90 <__seofread>:
   19a90:	00000513          	li	a0,0
   19a94:	00008067          	ret

0000000000019a98 <__swrite>:
   19a98:	01059783          	lh	a5,16(a1)
   19a9c:	fd010113          	addi	sp,sp,-48
   19aa0:	02813023          	sd	s0,32(sp)
   19aa4:	00913c23          	sd	s1,24(sp)
   19aa8:	01213823          	sd	s2,16(sp)
   19aac:	01313423          	sd	s3,8(sp)
   19ab0:	02113423          	sd	ra,40(sp)
   19ab4:	1007f713          	andi	a4,a5,256
   19ab8:	00058413          	mv	s0,a1
   19abc:	00050493          	mv	s1,a0
   19ac0:	01259583          	lh	a1,18(a1)
   19ac4:	00060913          	mv	s2,a2
   19ac8:	00068993          	mv	s3,a3
   19acc:	02071e63          	bnez	a4,19b08 <__swrite+0x70>
   19ad0:	fffff737          	lui	a4,0xfffff
   19ad4:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda19f>
   19ad8:	00e7f7b3          	and	a5,a5,a4
   19adc:	00f41823          	sh	a5,16(s0)
   19ae0:	02013403          	ld	s0,32(sp)
   19ae4:	02813083          	ld	ra,40(sp)
   19ae8:	00098693          	mv	a3,s3
   19aec:	00090613          	mv	a2,s2
   19af0:	00813983          	ld	s3,8(sp)
   19af4:	01013903          	ld	s2,16(sp)
   19af8:	00048513          	mv	a0,s1
   19afc:	01813483          	ld	s1,24(sp)
   19b00:	03010113          	addi	sp,sp,48
   19b04:	6350306f          	j	1d938 <_write_r>
   19b08:	00200693          	li	a3,2
   19b0c:	00000613          	li	a2,0
   19b10:	4b4040ef          	jal	ra,1dfc4 <_lseek_r>
   19b14:	01041783          	lh	a5,16(s0)
   19b18:	01241583          	lh	a1,18(s0)
   19b1c:	fb5ff06f          	j	19ad0 <__swrite+0x38>

0000000000019b20 <__sseek>:
   19b20:	ff010113          	addi	sp,sp,-16
   19b24:	00813023          	sd	s0,0(sp)
   19b28:	00058413          	mv	s0,a1
   19b2c:	01259583          	lh	a1,18(a1)
   19b30:	00113423          	sd	ra,8(sp)
   19b34:	490040ef          	jal	ra,1dfc4 <_lseek_r>
   19b38:	fff00793          	li	a5,-1
   19b3c:	02f50463          	beq	a0,a5,19b64 <__sseek+0x44>
   19b40:	01045783          	lhu	a5,16(s0)
   19b44:	00001737          	lui	a4,0x1
   19b48:	00813083          	ld	ra,8(sp)
   19b4c:	00e7e7b3          	or	a5,a5,a4
   19b50:	08a43823          	sd	a0,144(s0)
   19b54:	00f41823          	sh	a5,16(s0)
   19b58:	00013403          	ld	s0,0(sp)
   19b5c:	01010113          	addi	sp,sp,16
   19b60:	00008067          	ret
   19b64:	01045783          	lhu	a5,16(s0)
   19b68:	fffff737          	lui	a4,0xfffff
   19b6c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda19f>
   19b70:	00e7f7b3          	and	a5,a5,a4
   19b74:	00813083          	ld	ra,8(sp)
   19b78:	00f41823          	sh	a5,16(s0)
   19b7c:	00013403          	ld	s0,0(sp)
   19b80:	01010113          	addi	sp,sp,16
   19b84:	00008067          	ret

0000000000019b88 <__sclose>:
   19b88:	01259583          	lh	a1,18(a1)
   19b8c:	7490306f          	j	1dad4 <_close_r>

0000000000019b90 <strcmp>:
   19b90:	00b56733          	or	a4,a0,a1
   19b94:	fff00393          	li	t2,-1
   19b98:	00777713          	andi	a4,a4,7
   19b9c:	0c071c63          	bnez	a4,19c74 <strcmp+0xe4>
   19ba0:	0000b797          	auipc	a5,0xb
   19ba4:	1d87b783          	ld	a5,472(a5) # 24d78 <__SDATA_BEGIN__>
   19ba8:	00053603          	ld	a2,0(a0)
   19bac:	0005b683          	ld	a3,0(a1)
   19bb0:	00f672b3          	and	t0,a2,a5
   19bb4:	00f66333          	or	t1,a2,a5
   19bb8:	00f282b3          	add	t0,t0,a5
   19bbc:	0062e2b3          	or	t0,t0,t1
   19bc0:	0c729e63          	bne	t0,t2,19c9c <strcmp+0x10c>
   19bc4:	04d61663          	bne	a2,a3,19c10 <strcmp+0x80>
   19bc8:	00853603          	ld	a2,8(a0)
   19bcc:	0085b683          	ld	a3,8(a1)
   19bd0:	00f672b3          	and	t0,a2,a5
   19bd4:	00f66333          	or	t1,a2,a5
   19bd8:	00f282b3          	add	t0,t0,a5
   19bdc:	0062e2b3          	or	t0,t0,t1
   19be0:	0a729a63          	bne	t0,t2,19c94 <strcmp+0x104>
   19be4:	02d61663          	bne	a2,a3,19c10 <strcmp+0x80>
   19be8:	01053603          	ld	a2,16(a0)
   19bec:	0105b683          	ld	a3,16(a1)
   19bf0:	00f672b3          	and	t0,a2,a5
   19bf4:	00f66333          	or	t1,a2,a5
   19bf8:	00f282b3          	add	t0,t0,a5
   19bfc:	0062e2b3          	or	t0,t0,t1
   19c00:	0a729463          	bne	t0,t2,19ca8 <strcmp+0x118>
   19c04:	01850513          	addi	a0,a0,24
   19c08:	01858593          	addi	a1,a1,24
   19c0c:	f8d60ee3          	beq	a2,a3,19ba8 <strcmp+0x18>
   19c10:	03061713          	slli	a4,a2,0x30
   19c14:	03069793          	slli	a5,a3,0x30
   19c18:	02f71a63          	bne	a4,a5,19c4c <strcmp+0xbc>
   19c1c:	02061713          	slli	a4,a2,0x20
   19c20:	02069793          	slli	a5,a3,0x20
   19c24:	02f71463          	bne	a4,a5,19c4c <strcmp+0xbc>
   19c28:	01061713          	slli	a4,a2,0x10
   19c2c:	01069793          	slli	a5,a3,0x10
   19c30:	00f71e63          	bne	a4,a5,19c4c <strcmp+0xbc>
   19c34:	03065713          	srli	a4,a2,0x30
   19c38:	0306d793          	srli	a5,a3,0x30
   19c3c:	40f70533          	sub	a0,a4,a5
   19c40:	0ff57593          	andi	a1,a0,255
   19c44:	02059063          	bnez	a1,19c64 <strcmp+0xd4>
   19c48:	00008067          	ret
   19c4c:	03075713          	srli	a4,a4,0x30
   19c50:	0307d793          	srli	a5,a5,0x30
   19c54:	40f70533          	sub	a0,a4,a5
   19c58:	0ff57593          	andi	a1,a0,255
   19c5c:	00059463          	bnez	a1,19c64 <strcmp+0xd4>
   19c60:	00008067          	ret
   19c64:	0ff77713          	andi	a4,a4,255
   19c68:	0ff7f793          	andi	a5,a5,255
   19c6c:	40f70533          	sub	a0,a4,a5
   19c70:	00008067          	ret
   19c74:	00054603          	lbu	a2,0(a0)
   19c78:	0005c683          	lbu	a3,0(a1)
   19c7c:	00150513          	addi	a0,a0,1
   19c80:	00158593          	addi	a1,a1,1
   19c84:	00d61463          	bne	a2,a3,19c8c <strcmp+0xfc>
   19c88:	fe0616e3          	bnez	a2,19c74 <strcmp+0xe4>
   19c8c:	40d60533          	sub	a0,a2,a3
   19c90:	00008067          	ret
   19c94:	00850513          	addi	a0,a0,8
   19c98:	00858593          	addi	a1,a1,8
   19c9c:	fcd61ce3          	bne	a2,a3,19c74 <strcmp+0xe4>
   19ca0:	00000513          	li	a0,0
   19ca4:	00008067          	ret
   19ca8:	01050513          	addi	a0,a0,16
   19cac:	01058593          	addi	a1,a1,16
   19cb0:	fcd612e3          	bne	a2,a3,19c74 <strcmp+0xe4>
   19cb4:	00000513          	li	a0,0
   19cb8:	00008067          	ret

0000000000019cbc <strcpy>:
   19cbc:	00b567b3          	or	a5,a0,a1
   19cc0:	0077f793          	andi	a5,a5,7
   19cc4:	0a079663          	bnez	a5,19d70 <strcpy+0xb4>
   19cc8:	0005b703          	ld	a4,0(a1)
   19ccc:	0000b697          	auipc	a3,0xb
   19cd0:	0ac6b683          	ld	a3,172(a3) # 24d78 <__SDATA_BEGIN__>
   19cd4:	fff00613          	li	a2,-1
   19cd8:	00d777b3          	and	a5,a4,a3
   19cdc:	00d787b3          	add	a5,a5,a3
   19ce0:	00e7e7b3          	or	a5,a5,a4
   19ce4:	00d7e7b3          	or	a5,a5,a3
   19ce8:	0ac79263          	bne	a5,a2,19d8c <strcpy+0xd0>
   19cec:	00050613          	mv	a2,a0
   19cf0:	fff00813          	li	a6,-1
   19cf4:	00e63023          	sd	a4,0(a2) # 3fe00000 <__BSS_END__+0x3fddb1a0>
   19cf8:	0085b703          	ld	a4,8(a1)
   19cfc:	00858593          	addi	a1,a1,8
   19d00:	00860613          	addi	a2,a2,8
   19d04:	00d777b3          	and	a5,a4,a3
   19d08:	00d787b3          	add	a5,a5,a3
   19d0c:	00e7e7b3          	or	a5,a5,a4
   19d10:	00d7e7b3          	or	a5,a5,a3
   19d14:	ff0780e3          	beq	a5,a6,19cf4 <strcpy+0x38>
   19d18:	0005c783          	lbu	a5,0(a1)
   19d1c:	0015c703          	lbu	a4,1(a1)
   19d20:	0025c683          	lbu	a3,2(a1)
   19d24:	00f60023          	sb	a5,0(a2)
   19d28:	04078263          	beqz	a5,19d6c <strcpy+0xb0>
   19d2c:	00e600a3          	sb	a4,1(a2)
   19d30:	02070e63          	beqz	a4,19d6c <strcpy+0xb0>
   19d34:	0035c783          	lbu	a5,3(a1)
   19d38:	00d60123          	sb	a3,2(a2)
   19d3c:	02068863          	beqz	a3,19d6c <strcpy+0xb0>
   19d40:	0045c703          	lbu	a4,4(a1)
   19d44:	00f601a3          	sb	a5,3(a2)
   19d48:	02078263          	beqz	a5,19d6c <strcpy+0xb0>
   19d4c:	0055c783          	lbu	a5,5(a1)
   19d50:	00e60223          	sb	a4,4(a2)
   19d54:	00070c63          	beqz	a4,19d6c <strcpy+0xb0>
   19d58:	0065c703          	lbu	a4,6(a1)
   19d5c:	00f602a3          	sb	a5,5(a2)
   19d60:	00078663          	beqz	a5,19d6c <strcpy+0xb0>
   19d64:	00e60323          	sb	a4,6(a2)
   19d68:	02071663          	bnez	a4,19d94 <strcpy+0xd8>
   19d6c:	00008067          	ret
   19d70:	00050793          	mv	a5,a0
   19d74:	0005c703          	lbu	a4,0(a1)
   19d78:	00178793          	addi	a5,a5,1
   19d7c:	00158593          	addi	a1,a1,1
   19d80:	fee78fa3          	sb	a4,-1(a5)
   19d84:	fe0718e3          	bnez	a4,19d74 <strcpy+0xb8>
   19d88:	00008067          	ret
   19d8c:	00050613          	mv	a2,a0
   19d90:	f89ff06f          	j	19d18 <strcpy+0x5c>
   19d94:	000603a3          	sb	zero,7(a2)
   19d98:	00008067          	ret

0000000000019d9c <strncpy>:
   19d9c:	00a5e7b3          	or	a5,a1,a0
   19da0:	0077f793          	andi	a5,a5,7
   19da4:	00050713          	mv	a4,a0
   19da8:	06079863          	bnez	a5,19e18 <strncpy+0x7c>
   19dac:	00700793          	li	a5,7
   19db0:	06c7f463          	bgeu	a5,a2,19e18 <strncpy+0x7c>
   19db4:	0000b317          	auipc	t1,0xb
   19db8:	fcc33303          	ld	t1,-52(t1) # 24d80 <__SDATA_BEGIN__+0x8>
   19dbc:	0000b897          	auipc	a7,0xb
   19dc0:	fcc8b883          	ld	a7,-52(a7) # 24d88 <__SDATA_BEGIN__+0x10>
   19dc4:	00700e13          	li	t3,7
   19dc8:	0005b683          	ld	a3,0(a1)
   19dcc:	006687b3          	add	a5,a3,t1
   19dd0:	fff6c813          	not	a6,a3
   19dd4:	0107f7b3          	and	a5,a5,a6
   19dd8:	0117f7b3          	and	a5,a5,a7
   19ddc:	02079e63          	bnez	a5,19e18 <strncpy+0x7c>
   19de0:	00d73023          	sd	a3,0(a4)
   19de4:	ff860613          	addi	a2,a2,-8
   19de8:	00870713          	addi	a4,a4,8
   19dec:	00858593          	addi	a1,a1,8
   19df0:	fcce6ce3          	bltu	t3,a2,19dc8 <strncpy+0x2c>
   19df4:	00158593          	addi	a1,a1,1
   19df8:	00170793          	addi	a5,a4,1
   19dfc:	02060463          	beqz	a2,19e24 <strncpy+0x88>
   19e00:	fff5c683          	lbu	a3,-1(a1)
   19e04:	fff60813          	addi	a6,a2,-1
   19e08:	fed78fa3          	sb	a3,-1(a5)
   19e0c:	00068e63          	beqz	a3,19e28 <strncpy+0x8c>
   19e10:	00078713          	mv	a4,a5
   19e14:	00080613          	mv	a2,a6
   19e18:	00158593          	addi	a1,a1,1
   19e1c:	00170793          	addi	a5,a4,1
   19e20:	fe0610e3          	bnez	a2,19e00 <strncpy+0x64>
   19e24:	00008067          	ret
   19e28:	00c70633          	add	a2,a4,a2
   19e2c:	00080a63          	beqz	a6,19e40 <strncpy+0xa4>
   19e30:	00178793          	addi	a5,a5,1
   19e34:	fe078fa3          	sb	zero,-1(a5)
   19e38:	fec79ce3          	bne	a5,a2,19e30 <strncpy+0x94>
   19e3c:	00008067          	ret
   19e40:	00008067          	ret

0000000000019e44 <_svfprintf_r>:
   19e44:	d9010113          	addi	sp,sp,-624
   19e48:	26113423          	sd	ra,616(sp)
   19e4c:	25313423          	sd	s3,584(sp)
   19e50:	23813023          	sd	s8,544(sp)
   19e54:	21913c23          	sd	s9,536(sp)
   19e58:	00058c13          	mv	s8,a1
   19e5c:	00060993          	mv	s3,a2
   19e60:	00d13823          	sd	a3,16(sp)
   19e64:	26813023          	sd	s0,608(sp)
   19e68:	24913c23          	sd	s1,600(sp)
   19e6c:	25213823          	sd	s2,592(sp)
   19e70:	25413023          	sd	s4,576(sp)
   19e74:	23513c23          	sd	s5,568(sp)
   19e78:	23613823          	sd	s6,560(sp)
   19e7c:	23713423          	sd	s7,552(sp)
   19e80:	21a13823          	sd	s10,528(sp)
   19e84:	21b13423          	sd	s11,520(sp)
   19e88:	00050c93          	mv	s9,a0
   19e8c:	a20fd0ef          	jal	ra,170ac <_localeconv_r>
   19e90:	00053783          	ld	a5,0(a0)
   19e94:	00078513          	mv	a0,a5
   19e98:	04f13023          	sd	a5,64(sp)
   19e9c:	805f60ef          	jal	ra,106a0 <strlen>
   19ea0:	010c5783          	lhu	a5,16(s8)
   19ea4:	0e013823          	sd	zero,240(sp)
   19ea8:	0e013c23          	sd	zero,248(sp)
   19eac:	0807f793          	andi	a5,a5,128
   19eb0:	02a13c23          	sd	a0,56(sp)
   19eb4:	00078863          	beqz	a5,19ec4 <_svfprintf_r+0x80>
   19eb8:	018c3783          	ld	a5,24(s8)
   19ebc:	00079463          	bnez	a5,19ec4 <_svfprintf_r+0x80>
   19ec0:	4f80106f          	j	1b3b8 <_svfprintf_r+0x1574>
   19ec4:	18010793          	addi	a5,sp,384
   19ec8:	00098d13          	mv	s10,s3
   19ecc:	10f13023          	sd	a5,256(sp)
   19ed0:	00078d93          	mv	s11,a5
   19ed4:	000d4783          	lbu	a5,0(s10)
   19ed8:	10013823          	sd	zero,272(sp)
   19edc:	10012423          	sw	zero,264(sp)
   19ee0:	02013023          	sd	zero,32(sp)
   19ee4:	04013423          	sd	zero,72(sp)
   19ee8:	04013823          	sd	zero,80(sp)
   19eec:	04013c23          	sd	zero,88(sp)
   19ef0:	06013423          	sd	zero,104(sp)
   19ef4:	06013823          	sd	zero,112(sp)
   19ef8:	00013023          	sd	zero,0(sp)
   19efc:	01000b13          	li	s6,16
   19f00:	24078863          	beqz	a5,1a150 <_svfprintf_r+0x30c>
   19f04:	000d0413          	mv	s0,s10
   19f08:	02500713          	li	a4,37
   19f0c:	2ae78863          	beq	a5,a4,1a1bc <_svfprintf_r+0x378>
   19f10:	00144783          	lbu	a5,1(s0)
   19f14:	00140413          	addi	s0,s0,1
   19f18:	fe079ae3          	bnez	a5,19f0c <_svfprintf_r+0xc8>
   19f1c:	41a404bb          	subw	s1,s0,s10
   19f20:	22048863          	beqz	s1,1a150 <_svfprintf_r+0x30c>
   19f24:	11013703          	ld	a4,272(sp)
   19f28:	10812783          	lw	a5,264(sp)
   19f2c:	01adb023          	sd	s10,0(s11)
   19f30:	00970733          	add	a4,a4,s1
   19f34:	0017879b          	addiw	a5,a5,1
   19f38:	009db423          	sd	s1,8(s11)
   19f3c:	10e13823          	sd	a4,272(sp)
   19f40:	10f12423          	sw	a5,264(sp)
   19f44:	0007871b          	sext.w	a4,a5
   19f48:	00700793          	li	a5,7
   19f4c:	010d8d93          	addi	s11,s11,16
   19f50:	26e7ce63          	blt	a5,a4,1a1cc <_svfprintf_r+0x388>
   19f54:	00013703          	ld	a4,0(sp)
   19f58:	00044783          	lbu	a5,0(s0)
   19f5c:	0097073b          	addw	a4,a4,s1
   19f60:	00e13023          	sd	a4,0(sp)
   19f64:	1e078663          	beqz	a5,1a150 <_svfprintf_r+0x30c>
   19f68:	fff00e13          	li	t3,-1
   19f6c:	00144483          	lbu	s1,1(s0)
   19f70:	0c0107a3          	sb	zero,207(sp)
   19f74:	00140413          	addi	s0,s0,1
   19f78:	00000a13          	li	s4,0
   19f7c:	00000913          	li	s2,0
   19f80:	00900993          	li	s3,9
   19f84:	02a00a93          	li	s5,42
   19f88:	000e0b93          	mv	s7,t3
   19f8c:	00140413          	addi	s0,s0,1
   19f90:	0004849b          	sext.w	s1,s1
   19f94:	05a00693          	li	a3,90
   19f98:	fe04879b          	addiw	a5,s1,-32
   19f9c:	0007871b          	sext.w	a4,a5
   19fa0:	04e6ee63          	bltu	a3,a4,19ffc <_svfprintf_r+0x1b8>
   19fa4:	02079713          	slli	a4,a5,0x20
   19fa8:	01e75793          	srli	a5,a4,0x1e
   19fac:	00008717          	auipc	a4,0x8
   19fb0:	57470713          	addi	a4,a4,1396 # 22520 <__mprec_bigtens+0x28>
   19fb4:	00e787b3          	add	a5,a5,a4
   19fb8:	0007a783          	lw	a5,0(a5)
   19fbc:	00e787b3          	add	a5,a5,a4
   19fc0:	00078067          	jr	a5
   19fc4:	00000a13          	li	s4,0
   19fc8:	00044703          	lbu	a4,0(s0)
   19fcc:	002a179b          	slliw	a5,s4,0x2
   19fd0:	014787bb          	addw	a5,a5,s4
   19fd4:	fd04849b          	addiw	s1,s1,-48
   19fd8:	0017979b          	slliw	a5,a5,0x1
   19fdc:	fd07061b          	addiw	a2,a4,-48
   19fe0:	00f48a3b          	addw	s4,s1,a5
   19fe4:	00140413          	addi	s0,s0,1
   19fe8:	0007049b          	sext.w	s1,a4
   19fec:	fcc9fee3          	bgeu	s3,a2,19fc8 <_svfprintf_r+0x184>
   19ff0:	fe04879b          	addiw	a5,s1,-32
   19ff4:	0007871b          	sext.w	a4,a5
   19ff8:	fae6f6e3          	bgeu	a3,a4,19fa4 <_svfprintf_r+0x160>
   19ffc:	14048a63          	beqz	s1,1a150 <_svfprintf_r+0x30c>
   1a000:	10910c23          	sb	s1,280(sp)
   1a004:	0c0107a3          	sb	zero,207(sp)
   1a008:	00100a93          	li	s5,1
   1a00c:	00100b93          	li	s7,1
   1a010:	11810d13          	addi	s10,sp,280
   1a014:	00013423          	sd	zero,8(sp)
   1a018:	00000e13          	li	t3,0
   1a01c:	02013823          	sd	zero,48(sp)
   1a020:	02013423          	sd	zero,40(sp)
   1a024:	00013c23          	sd	zero,24(sp)
   1a028:	00297f13          	andi	t5,s2,2
   1a02c:	000f0463          	beqz	t5,1a034 <_svfprintf_r+0x1f0>
   1a030:	002a8a9b          	addiw	s5,s5,2
   1a034:	08497e93          	andi	t4,s2,132
   1a038:	11013783          	ld	a5,272(sp)
   1a03c:	000e9663          	bnez	t4,1a048 <_svfprintf_r+0x204>
   1a040:	415a06bb          	subw	a3,s4,s5
   1a044:	50d044e3          	bgtz	a3,1ad4c <_svfprintf_r+0xf08>
   1a048:	0cf14703          	lbu	a4,207(sp)
   1a04c:	02070c63          	beqz	a4,1a084 <_svfprintf_r+0x240>
   1a050:	10812703          	lw	a4,264(sp)
   1a054:	0cf10693          	addi	a3,sp,207
   1a058:	00ddb023          	sd	a3,0(s11)
   1a05c:	0017071b          	addiw	a4,a4,1
   1a060:	00100693          	li	a3,1
   1a064:	00178793          	addi	a5,a5,1
   1a068:	00ddb423          	sd	a3,8(s11)
   1a06c:	10e12423          	sw	a4,264(sp)
   1a070:	0007069b          	sext.w	a3,a4
   1a074:	10f13823          	sd	a5,272(sp)
   1a078:	00700713          	li	a4,7
   1a07c:	010d8d93          	addi	s11,s11,16
   1a080:	42d74463          	blt	a4,a3,1a4a8 <_svfprintf_r+0x664>
   1a084:	020f0c63          	beqz	t5,1a0bc <_svfprintf_r+0x278>
   1a088:	10812703          	lw	a4,264(sp)
   1a08c:	0d010693          	addi	a3,sp,208
   1a090:	00ddb023          	sd	a3,0(s11)
   1a094:	0017071b          	addiw	a4,a4,1
   1a098:	00200693          	li	a3,2
   1a09c:	00278793          	addi	a5,a5,2
   1a0a0:	00ddb423          	sd	a3,8(s11)
   1a0a4:	10e12423          	sw	a4,264(sp)
   1a0a8:	0007069b          	sext.w	a3,a4
   1a0ac:	10f13823          	sd	a5,272(sp)
   1a0b0:	00700713          	li	a4,7
   1a0b4:	010d8d93          	addi	s11,s11,16
   1a0b8:	5cd748e3          	blt	a4,a3,1ae88 <_svfprintf_r+0x1044>
   1a0bc:	08000713          	li	a4,128
   1a0c0:	2aee86e3          	beq	t4,a4,1ab6c <_svfprintf_r+0xd28>
   1a0c4:	417e09bb          	subw	s3,t3,s7
   1a0c8:	39304ce3          	bgtz	s3,1ac60 <_svfprintf_r+0xe1c>
   1a0cc:	10097713          	andi	a4,s2,256
   1a0d0:	12071ee3          	bnez	a4,1aa0c <_svfprintf_r+0xbc8>
   1a0d4:	10812703          	lw	a4,264(sp)
   1a0d8:	017787b3          	add	a5,a5,s7
   1a0dc:	01adb023          	sd	s10,0(s11)
   1a0e0:	0017069b          	addiw	a3,a4,1
   1a0e4:	017db423          	sd	s7,8(s11)
   1a0e8:	10f13823          	sd	a5,272(sp)
   1a0ec:	10d12423          	sw	a3,264(sp)
   1a0f0:	00700713          	li	a4,7
   1a0f4:	4ed74063          	blt	a4,a3,1a5d4 <_svfprintf_r+0x790>
   1a0f8:	010d8d93          	addi	s11,s11,16
   1a0fc:	00497913          	andi	s2,s2,4
   1a100:	00090663          	beqz	s2,1a10c <_svfprintf_r+0x2c8>
   1a104:	415a04bb          	subw	s1,s4,s5
   1a108:	5a9048e3          	bgtz	s1,1aeb8 <_svfprintf_r+0x1074>
   1a10c:	000a0713          	mv	a4,s4
   1a110:	015a5463          	bge	s4,s5,1a118 <_svfprintf_r+0x2d4>
   1a114:	000a8713          	mv	a4,s5
   1a118:	00013683          	ld	a3,0(sp)
   1a11c:	00d7073b          	addw	a4,a4,a3
   1a120:	00e13023          	sd	a4,0(sp)
   1a124:	3e079ee3          	bnez	a5,1ad20 <_svfprintf_r+0xedc>
   1a128:	00813783          	ld	a5,8(sp)
   1a12c:	10012423          	sw	zero,264(sp)
   1a130:	00078863          	beqz	a5,1a140 <_svfprintf_r+0x2fc>
   1a134:	00813583          	ld	a1,8(sp)
   1a138:	000c8513          	mv	a0,s9
   1a13c:	91df90ef          	jal	ra,13a58 <_free_r>
   1a140:	18010d93          	addi	s11,sp,384
   1a144:	00040d13          	mv	s10,s0
   1a148:	000d4783          	lbu	a5,0(s10)
   1a14c:	da079ce3          	bnez	a5,19f04 <_svfprintf_r+0xc0>
   1a150:	11013783          	ld	a5,272(sp)
   1a154:	00078463          	beqz	a5,1a15c <_svfprintf_r+0x318>
   1a158:	2450106f          	j	1bb9c <_svfprintf_r+0x1d58>
   1a15c:	010c5783          	lhu	a5,16(s8)
   1a160:	0407f793          	andi	a5,a5,64
   1a164:	00078463          	beqz	a5,1a16c <_svfprintf_r+0x328>
   1a168:	1180206f          	j	1c280 <_svfprintf_r+0x243c>
   1a16c:	26813083          	ld	ra,616(sp)
   1a170:	26013403          	ld	s0,608(sp)
   1a174:	00013503          	ld	a0,0(sp)
   1a178:	25813483          	ld	s1,600(sp)
   1a17c:	25013903          	ld	s2,592(sp)
   1a180:	24813983          	ld	s3,584(sp)
   1a184:	24013a03          	ld	s4,576(sp)
   1a188:	23813a83          	ld	s5,568(sp)
   1a18c:	23013b03          	ld	s6,560(sp)
   1a190:	22813b83          	ld	s7,552(sp)
   1a194:	22013c03          	ld	s8,544(sp)
   1a198:	21813c83          	ld	s9,536(sp)
   1a19c:	21013d03          	ld	s10,528(sp)
   1a1a0:	20813d83          	ld	s11,520(sp)
   1a1a4:	27010113          	addi	sp,sp,624
   1a1a8:	00008067          	ret
   1a1ac:	01096913          	ori	s2,s2,16
   1a1b0:	00044483          	lbu	s1,0(s0)
   1a1b4:	0009091b          	sext.w	s2,s2
   1a1b8:	dd5ff06f          	j	19f8c <_svfprintf_r+0x148>
   1a1bc:	41a404bb          	subw	s1,s0,s10
   1a1c0:	d60492e3          	bnez	s1,19f24 <_svfprintf_r+0xe0>
   1a1c4:	00044783          	lbu	a5,0(s0)
   1a1c8:	d9dff06f          	j	19f64 <_svfprintf_r+0x120>
   1a1cc:	10010613          	addi	a2,sp,256
   1a1d0:	000c0593          	mv	a1,s8
   1a1d4:	000c8513          	mv	a0,s9
   1a1d8:	054040ef          	jal	ra,1e22c <__ssprint_r>
   1a1dc:	f80510e3          	bnez	a0,1a15c <_svfprintf_r+0x318>
   1a1e0:	18010d93          	addi	s11,sp,384
   1a1e4:	d71ff06f          	j	19f54 <_svfprintf_r+0x110>
   1a1e8:	00897793          	andi	a5,s2,8
   1a1ec:	000b8e13          	mv	t3,s7
   1a1f0:	00078463          	beqz	a5,1a1f8 <_svfprintf_r+0x3b4>
   1a1f4:	0900106f          	j	1b284 <_svfprintf_r+0x1440>
   1a1f8:	01013783          	ld	a5,16(sp)
   1a1fc:	01713423          	sd	s7,8(sp)
   1a200:	0007b507          	fld	fa0,0(a5)
   1a204:	00878793          	addi	a5,a5,8
   1a208:	00f13823          	sd	a5,16(sp)
   1a20c:	698070ef          	jal	ra,218a4 <__extenddftf2>
   1a210:	00813e03          	ld	t3,8(sp)
   1a214:	0ea13823          	sd	a0,240(sp)
   1a218:	0eb13c23          	sd	a1,248(sp)
   1a21c:	0f010513          	addi	a0,sp,240
   1a220:	01c13423          	sd	t3,8(sp)
   1a224:	e19fc0ef          	jal	ra,1703c <_ldcheck>
   1a228:	0ca12c23          	sw	a0,216(sp)
   1a22c:	00200793          	li	a5,2
   1a230:	00813e03          	ld	t3,8(sp)
   1a234:	00f51463          	bne	a0,a5,1a23c <_svfprintf_r+0x3f8>
   1a238:	6940106f          	j	1b8cc <_svfprintf_r+0x1a88>
   1a23c:	00100793          	li	a5,1
   1a240:	00f51463          	bne	a0,a5,1a248 <_svfprintf_r+0x404>
   1a244:	0390106f          	j	1ba7c <_svfprintf_r+0x1c38>
   1a248:	06100793          	li	a5,97
   1a24c:	00f49463          	bne	s1,a5,1a254 <_svfprintf_r+0x410>
   1a250:	7610106f          	j	1c1b0 <_svfprintf_r+0x236c>
   1a254:	04100793          	li	a5,65
   1a258:	00f49463          	bne	s1,a5,1a260 <_svfprintf_r+0x41c>
   1a25c:	4350106f          	j	1be90 <_svfprintf_r+0x204c>
   1a260:	fdf4f713          	andi	a4,s1,-33
   1a264:	fff00793          	li	a5,-1
   1a268:	02e13423          	sd	a4,40(sp)
   1a26c:	00fe1463          	bne	t3,a5,1a274 <_svfprintf_r+0x430>
   1a270:	1790106f          	j	1bbe8 <_svfprintf_r+0x1da4>
   1a274:	04700793          	li	a5,71
   1a278:	00f71463          	bne	a4,a5,1a280 <_svfprintf_r+0x43c>
   1a27c:	7e90106f          	j	1c264 <_svfprintf_r+0x2420>
   1a280:	0f813a83          	ld	s5,248(sp)
   1a284:	10096793          	ori	a5,s2,256
   1a288:	03213823          	sd	s2,48(sp)
   1a28c:	0f013b83          	ld	s7,240(sp)
   1a290:	0007879b          	sext.w	a5,a5
   1a294:	000ad463          	bgez	s5,1a29c <_svfprintf_r+0x458>
   1a298:	6750106f          	j	1c10c <_svfprintf_r+0x22c8>
   1a29c:	06013023          	sd	zero,96(sp)
   1a2a0:	00078913          	mv	s2,a5
   1a2a4:	00013423          	sd	zero,8(sp)
   1a2a8:	02813703          	ld	a4,40(sp)
   1a2ac:	04600793          	li	a5,70
   1a2b0:	00f71463          	bne	a4,a5,1a2b8 <_svfprintf_r+0x474>
   1a2b4:	2290106f          	j	1bcdc <_svfprintf_r+0x1e98>
   1a2b8:	04500793          	li	a5,69
   1a2bc:	00f71463          	bne	a4,a5,1a2c4 <_svfprintf_r+0x480>
   1a2c0:	7090106f          	j	1c1c8 <_svfprintf_r+0x2384>
   1a2c4:	000e0713          	mv	a4,t3
   1a2c8:	0d810793          	addi	a5,sp,216
   1a2cc:	0e810893          	addi	a7,sp,232
   1a2d0:	0dc10813          	addi	a6,sp,220
   1a2d4:	00200693          	li	a3,2
   1a2d8:	000b8593          	mv	a1,s7
   1a2dc:	000a8613          	mv	a2,s5
   1a2e0:	000c8513          	mv	a0,s9
   1a2e4:	01c13c23          	sd	t3,24(sp)
   1a2e8:	a55fb0ef          	jal	ra,15d3c <_ldtoa_r>
   1a2ec:	02813703          	ld	a4,40(sp)
   1a2f0:	04700793          	li	a5,71
   1a2f4:	01813e03          	ld	t3,24(sp)
   1a2f8:	00050d13          	mv	s10,a0
   1a2fc:	00f70463          	beq	a4,a5,1a304 <_svfprintf_r+0x4c0>
   1a300:	1a80206f          	j	1c4a8 <_svfprintf_r+0x2664>
   1a304:	03013783          	ld	a5,48(sp)
   1a308:	0017f793          	andi	a5,a5,1
   1a30c:	00078463          	beqz	a5,1a314 <_svfprintf_r+0x4d0>
   1a310:	6f50106f          	j	1c204 <_svfprintf_r+0x23c0>
   1a314:	0e813783          	ld	a5,232(sp)
   1a318:	41a787bb          	subw	a5,a5,s10
   1a31c:	02f13023          	sd	a5,32(sp)
   1a320:	0d812703          	lw	a4,216(sp)
   1a324:	04700793          	li	a5,71
   1a328:	00e13c23          	sd	a4,24(sp)
   1a32c:	02813703          	ld	a4,40(sp)
   1a330:	00f71463          	bne	a4,a5,1a338 <_svfprintf_r+0x4f4>
   1a334:	0ed0106f          	j	1bc20 <_svfprintf_r+0x1ddc>
   1a338:	02813703          	ld	a4,40(sp)
   1a33c:	04600793          	li	a5,70
   1a340:	00f71463          	bne	a4,a5,1a348 <_svfprintf_r+0x504>
   1a344:	2f90106f          	j	1be3c <_svfprintf_r+0x1ff8>
   1a348:	01813783          	ld	a5,24(sp)
   1a34c:	02813603          	ld	a2,40(sp)
   1a350:	04100713          	li	a4,65
   1a354:	fff78a9b          	addiw	s5,a5,-1
   1a358:	0d512c23          	sw	s5,216(sp)
   1a35c:	0ff4f793          	andi	a5,s1,255
   1a360:	00000693          	li	a3,0
   1a364:	00e61863          	bne	a2,a4,1a374 <_svfprintf_r+0x530>
   1a368:	00f7879b          	addiw	a5,a5,15
   1a36c:	0ff7f793          	andi	a5,a5,255
   1a370:	00100693          	li	a3,1
   1a374:	0ef10023          	sb	a5,224(sp)
   1a378:	02b00793          	li	a5,43
   1a37c:	000ada63          	bgez	s5,1a390 <_svfprintf_r+0x54c>
   1a380:	01813703          	ld	a4,24(sp)
   1a384:	00100793          	li	a5,1
   1a388:	40e78abb          	subw	s5,a5,a4
   1a38c:	02d00793          	li	a5,45
   1a390:	0ef100a3          	sb	a5,225(sp)
   1a394:	00900793          	li	a5,9
   1a398:	0157c463          	blt	a5,s5,1a3a0 <_svfprintf_r+0x55c>
   1a39c:	7450106f          	j	1c2e0 <_svfprintf_r+0x249c>
   1a3a0:	0ef10913          	addi	s2,sp,239
   1a3a4:	00090b93          	mv	s7,s2
   1a3a8:	00813c23          	sd	s0,24(sp)
   1a3ac:	00a00593          	li	a1,10
   1a3b0:	000a8513          	mv	a0,s5
   1a3b4:	1f5070ef          	jal	ra,21da8 <__moddi3>
   1a3b8:	0305079b          	addiw	a5,a0,48
   1a3bc:	fefb8fa3          	sb	a5,-1(s7)
   1a3c0:	000a8513          	mv	a0,s5
   1a3c4:	00a00593          	li	a1,10
   1a3c8:	15d070ef          	jal	ra,21d24 <__divdi3>
   1a3cc:	000a8413          	mv	s0,s5
   1a3d0:	06300793          	li	a5,99
   1a3d4:	000b8993          	mv	s3,s7
   1a3d8:	00050a9b          	sext.w	s5,a0
   1a3dc:	fffb8b93          	addi	s7,s7,-1
   1a3e0:	fc87c6e3          	blt	a5,s0,1a3ac <_svfprintf_r+0x568>
   1a3e4:	030a879b          	addiw	a5,s5,48
   1a3e8:	0ff7f693          	andi	a3,a5,255
   1a3ec:	fedb8fa3          	sb	a3,-1(s7)
   1a3f0:	ffe98793          	addi	a5,s3,-2
   1a3f4:	01813403          	ld	s0,24(sp)
   1a3f8:	0127e463          	bltu	a5,s2,1a400 <_svfprintf_r+0x5bc>
   1a3fc:	0c40206f          	j	1c4c0 <_svfprintf_r+0x267c>
   1a400:	0e210713          	addi	a4,sp,226
   1a404:	0080006f          	j	1a40c <_svfprintf_r+0x5c8>
   1a408:	0007c683          	lbu	a3,0(a5)
   1a40c:	00d70023          	sb	a3,0(a4)
   1a410:	00178793          	addi	a5,a5,1
   1a414:	00170713          	addi	a4,a4,1
   1a418:	ff2798e3          	bne	a5,s2,1a408 <_svfprintf_r+0x5c4>
   1a41c:	0f110793          	addi	a5,sp,241
   1a420:	0e210713          	addi	a4,sp,226
   1a424:	413787b3          	sub	a5,a5,s3
   1a428:	00f707b3          	add	a5,a4,a5
   1a42c:	0e010713          	addi	a4,sp,224
   1a430:	40e787bb          	subw	a5,a5,a4
   1a434:	04f13823          	sd	a5,80(sp)
   1a438:	05013783          	ld	a5,80(sp)
   1a43c:	02013683          	ld	a3,32(sp)
   1a440:	00100713          	li	a4,1
   1a444:	00d78bbb          	addw	s7,a5,a3
   1a448:	000b8793          	mv	a5,s7
   1a44c:	00d74463          	blt	a4,a3,1a454 <_svfprintf_r+0x610>
   1a450:	7d50106f          	j	1c424 <_svfprintf_r+0x25e0>
   1a454:	03813703          	ld	a4,56(sp)
   1a458:	00e78bbb          	addw	s7,a5,a4
   1a45c:	03013783          	ld	a5,48(sp)
   1a460:	fffbca93          	not	s5,s7
   1a464:	43fada93          	srai	s5,s5,0x3f
   1a468:	bff7f913          	andi	s2,a5,-1025
   1a46c:	0009091b          	sext.w	s2,s2
   1a470:	015bfab3          	and	s5,s7,s5
   1a474:	10096913          	ori	s2,s2,256
   1a478:	000a8a9b          	sext.w	s5,s5
   1a47c:	02013823          	sd	zero,48(sp)
   1a480:	02013423          	sd	zero,40(sp)
   1a484:	00013c23          	sd	zero,24(sp)
   1a488:	06013783          	ld	a5,96(sp)
   1a48c:	00079463          	bnez	a5,1a494 <_svfprintf_r+0x650>
   1a490:	0090106f          	j	1bc98 <_svfprintf_r+0x1e54>
   1a494:	02d00793          	li	a5,45
   1a498:	0cf107a3          	sb	a5,207(sp)
   1a49c:	00000e13          	li	t3,0
   1a4a0:	001a8a9b          	addiw	s5,s5,1
   1a4a4:	b85ff06f          	j	1a028 <_svfprintf_r+0x1e4>
   1a4a8:	10010613          	addi	a2,sp,256
   1a4ac:	000c0593          	mv	a1,s8
   1a4b0:	000c8513          	mv	a0,s9
   1a4b4:	09c13023          	sd	t3,128(sp)
   1a4b8:	07d13c23          	sd	t4,120(sp)
   1a4bc:	07e13023          	sd	t5,96(sp)
   1a4c0:	56d030ef          	jal	ra,1e22c <__ssprint_r>
   1a4c4:	060518e3          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1a4c8:	11013783          	ld	a5,272(sp)
   1a4cc:	08013e03          	ld	t3,128(sp)
   1a4d0:	07813e83          	ld	t4,120(sp)
   1a4d4:	06013f03          	ld	t5,96(sp)
   1a4d8:	18010d93          	addi	s11,sp,384
   1a4dc:	ba9ff06f          	j	1a084 <_svfprintf_r+0x240>
   1a4e0:	10812683          	lw	a3,264(sp)
   1a4e4:	02013583          	ld	a1,32(sp)
   1a4e8:	00178993          	addi	s3,a5,1
   1a4ec:	00100613          	li	a2,1
   1a4f0:	0016879b          	addiw	a5,a3,1
   1a4f4:	01adb023          	sd	s10,0(s11)
   1a4f8:	00078713          	mv	a4,a5
   1a4fc:	010d8493          	addi	s1,s11,16
   1a500:	3cb65ce3          	bge	a2,a1,1b0d8 <_svfprintf_r+0x1294>
   1a504:	00100693          	li	a3,1
   1a508:	10e12423          	sw	a4,264(sp)
   1a50c:	00ddb423          	sd	a3,8(s11)
   1a510:	11313823          	sd	s3,272(sp)
   1a514:	00700713          	li	a4,7
   1a518:	4ef74ee3          	blt	a4,a5,1b214 <_svfprintf_r+0x13d0>
   1a51c:	03813703          	ld	a4,56(sp)
   1a520:	04013683          	ld	a3,64(sp)
   1a524:	00178b9b          	addiw	s7,a5,1
   1a528:	00e989b3          	add	s3,s3,a4
   1a52c:	00d4b023          	sd	a3,0(s1)
   1a530:	00e4b423          	sd	a4,8(s1)
   1a534:	11313823          	sd	s3,272(sp)
   1a538:	11712423          	sw	s7,264(sp)
   1a53c:	00700793          	li	a5,7
   1a540:	01048493          	addi	s1,s1,16
   1a544:	4f77cae3          	blt	a5,s7,1b238 <_svfprintf_r+0x13f4>
   1a548:	0f013503          	ld	a0,240(sp)
   1a54c:	0f813583          	ld	a1,248(sp)
   1a550:	001b871b          	addiw	a4,s7,1
   1a554:	00000693          	li	a3,0
   1a558:	00000613          	li	a2,0
   1a55c:	00e12c23          	sw	a4,24(sp)
   1a560:	33d050ef          	jal	ra,2009c <__eqtf2>
   1a564:	01812703          	lw	a4,24(sp)
   1a568:	02013783          	ld	a5,32(sp)
   1a56c:	01048d93          	addi	s11,s1,16
   1a570:	0007069b          	sext.w	a3,a4
   1a574:	fff7879b          	addiw	a5,a5,-1
   1a578:	3a0500e3          	beqz	a0,1b118 <_svfprintf_r+0x12d4>
   1a57c:	00f989b3          	add	s3,s3,a5
   1a580:	001d0813          	addi	a6,s10,1
   1a584:	00f4b423          	sd	a5,8(s1)
   1a588:	0104b023          	sd	a6,0(s1)
   1a58c:	11313823          	sd	s3,272(sp)
   1a590:	10e12423          	sw	a4,264(sp)
   1a594:	00700793          	li	a5,7
   1a598:	00d7d463          	bge	a5,a3,1a5a0 <_svfprintf_r+0x75c>
   1a59c:	07c0106f          	j	1b618 <_svfprintf_r+0x17d4>
   1a5a0:	02048793          	addi	a5,s1,32
   1a5a4:	002b869b          	addiw	a3,s7,2
   1a5a8:	000d8493          	mv	s1,s11
   1a5ac:	00078d93          	mv	s11,a5
   1a5b0:	05013603          	ld	a2,80(sp)
   1a5b4:	0e010713          	addi	a4,sp,224
   1a5b8:	00e4b023          	sd	a4,0(s1)
   1a5bc:	013607b3          	add	a5,a2,s3
   1a5c0:	00c4b423          	sd	a2,8(s1)
   1a5c4:	10f13823          	sd	a5,272(sp)
   1a5c8:	10d12423          	sw	a3,264(sp)
   1a5cc:	00700713          	li	a4,7
   1a5d0:	b2d756e3          	bge	a4,a3,1a0fc <_svfprintf_r+0x2b8>
   1a5d4:	10010613          	addi	a2,sp,256
   1a5d8:	000c0593          	mv	a1,s8
   1a5dc:	000c8513          	mv	a0,s9
   1a5e0:	44d030ef          	jal	ra,1e22c <__ssprint_r>
   1a5e4:	74051863          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1a5e8:	11013783          	ld	a5,272(sp)
   1a5ec:	18010d93          	addi	s11,sp,384
   1a5f0:	b0dff06f          	j	1a0fc <_svfprintf_r+0x2b8>
   1a5f4:	01013703          	ld	a4,16(sp)
   1a5f8:	0c0107a3          	sb	zero,207(sp)
   1a5fc:	00100a93          	li	s5,1
   1a600:	00072783          	lw	a5,0(a4)
   1a604:	00870713          	addi	a4,a4,8
   1a608:	00e13823          	sd	a4,16(sp)
   1a60c:	10f10c23          	sb	a5,280(sp)
   1a610:	00100b93          	li	s7,1
   1a614:	11810d13          	addi	s10,sp,280
   1a618:	9fdff06f          	j	1a014 <_svfprintf_r+0x1d0>
   1a61c:	01013783          	ld	a5,16(sp)
   1a620:	0c0107a3          	sb	zero,207(sp)
   1a624:	000b8e13          	mv	t3,s7
   1a628:	0007bd03          	ld	s10,0(a5)
   1a62c:	00878993          	addi	s3,a5,8
   1a630:	000d1463          	bnez	s10,1a638 <_svfprintf_r+0x7f4>
   1a634:	2f40106f          	j	1b928 <_svfprintf_r+0x1ae4>
   1a638:	fff00793          	li	a5,-1
   1a63c:	5afb82e3          	beq	s7,a5,1b3e0 <_svfprintf_r+0x159c>
   1a640:	000b8613          	mv	a2,s7
   1a644:	00000593          	li	a1,0
   1a648:	000d0513          	mv	a0,s10
   1a64c:	01713823          	sd	s7,16(sp)
   1a650:	e50fd0ef          	jal	ra,17ca0 <memchr>
   1a654:	00a13423          	sd	a0,8(sp)
   1a658:	01013e03          	ld	t3,16(sp)
   1a65c:	00051463          	bnez	a0,1a664 <_svfprintf_r+0x820>
   1a660:	7780106f          	j	1bdd8 <_svfprintf_r+0x1f94>
   1a664:	00813783          	ld	a5,8(sp)
   1a668:	41a78bbb          	subw	s7,a5,s10
   1a66c:	0cf14783          	lbu	a5,207(sp)
   1a670:	fffbca93          	not	s5,s7
   1a674:	43fada93          	srai	s5,s5,0x3f
   1a678:	01313823          	sd	s3,16(sp)
   1a67c:	00013423          	sd	zero,8(sp)
   1a680:	02013823          	sd	zero,48(sp)
   1a684:	02013423          	sd	zero,40(sp)
   1a688:	00013c23          	sd	zero,24(sp)
   1a68c:	017afab3          	and	s5,s5,s7
   1a690:	00000e13          	li	t3,0
   1a694:	98078ae3          	beqz	a5,1a028 <_svfprintf_r+0x1e4>
   1a698:	001a8a9b          	addiw	s5,s5,1
   1a69c:	98dff06f          	j	1a028 <_svfprintf_r+0x1e4>
   1a6a0:	01096913          	ori	s2,s2,16
   1a6a4:	000b8e13          	mv	t3,s7
   1a6a8:	0009091b          	sext.w	s2,s2
   1a6ac:	01013703          	ld	a4,16(sp)
   1a6b0:	02097793          	andi	a5,s2,32
   1a6b4:	00870693          	addi	a3,a4,8
   1a6b8:	2c0788e3          	beqz	a5,1b188 <_svfprintf_r+0x1344>
   1a6bc:	00073983          	ld	s3,0(a4)
   1a6c0:	bff97713          	andi	a4,s2,-1025
   1a6c4:	00070a9b          	sext.w	s5,a4
   1a6c8:	00d13823          	sd	a3,16(sp)
   1a6cc:	00000793          	li	a5,0
   1a6d0:	0c0107a3          	sb	zero,207(sp)
   1a6d4:	fff00693          	li	a3,-1
   1a6d8:	2cde0c63          	beq	t3,a3,1a9b0 <_svfprintf_r+0xb6c>
   1a6dc:	f7faf913          	andi	s2,s5,-129
   1a6e0:	0009091b          	sext.w	s2,s2
   1a6e4:	2c099463          	bnez	s3,1a9ac <_svfprintf_r+0xb68>
   1a6e8:	420e1c63          	bnez	t3,1ab20 <_svfprintf_r+0xcdc>
   1a6ec:	20079ee3          	bnez	a5,1b108 <_svfprintf_r+0x12c4>
   1a6f0:	001afb93          	andi	s7,s5,1
   1a6f4:	17c10d13          	addi	s10,sp,380
   1a6f8:	360b9ee3          	bnez	s7,1b274 <_svfprintf_r+0x1430>
   1a6fc:	0cf14783          	lbu	a5,207(sp)
   1a700:	000b8a9b          	sext.w	s5,s7
   1a704:	01cbd463          	bge	s7,t3,1a70c <_svfprintf_r+0x8c8>
   1a708:	000e0a9b          	sext.w	s5,t3
   1a70c:	00013423          	sd	zero,8(sp)
   1a710:	02013823          	sd	zero,48(sp)
   1a714:	02013423          	sd	zero,40(sp)
   1a718:	00013c23          	sd	zero,24(sp)
   1a71c:	f6079ee3          	bnez	a5,1a698 <_svfprintf_r+0x854>
   1a720:	909ff06f          	j	1a028 <_svfprintf_r+0x1e4>
   1a724:	00044483          	lbu	s1,0(s0)
   1a728:	06800793          	li	a5,104
   1a72c:	44f484e3          	beq	s1,a5,1b374 <_svfprintf_r+0x1530>
   1a730:	04096913          	ori	s2,s2,64
   1a734:	0009091b          	sext.w	s2,s2
   1a738:	855ff06f          	j	19f8c <_svfprintf_r+0x148>
   1a73c:	01013683          	ld	a3,16(sp)
   1a740:	02097793          	andi	a5,s2,32
   1a744:	0006b703          	ld	a4,0(a3)
   1a748:	00868693          	addi	a3,a3,8
   1a74c:	00d13823          	sd	a3,16(sp)
   1a750:	02079a63          	bnez	a5,1a784 <_svfprintf_r+0x940>
   1a754:	01097793          	andi	a5,s2,16
   1a758:	02079663          	bnez	a5,1a784 <_svfprintf_r+0x940>
   1a75c:	04097793          	andi	a5,s2,64
   1a760:	00078463          	beqz	a5,1a768 <_svfprintf_r+0x924>
   1a764:	3ec0106f          	j	1bb50 <_svfprintf_r+0x1d0c>
   1a768:	20097913          	andi	s2,s2,512
   1a76c:	00013783          	ld	a5,0(sp)
   1a770:	00091463          	bnez	s2,1a778 <_svfprintf_r+0x934>
   1a774:	3010106f          	j	1c274 <_svfprintf_r+0x2430>
   1a778:	00f70023          	sb	a5,0(a4)
   1a77c:	00040d13          	mv	s10,s0
   1a780:	9c9ff06f          	j	1a148 <_svfprintf_r+0x304>
   1a784:	00013783          	ld	a5,0(sp)
   1a788:	00040d13          	mv	s10,s0
   1a78c:	00f73023          	sd	a5,0(a4)
   1a790:	9b9ff06f          	j	1a148 <_svfprintf_r+0x304>
   1a794:	00044483          	lbu	s1,0(s0)
   1a798:	06c00793          	li	a5,108
   1a79c:	3ef48ae3          	beq	s1,a5,1b390 <_svfprintf_r+0x154c>
   1a7a0:	01096913          	ori	s2,s2,16
   1a7a4:	0009091b          	sext.w	s2,s2
   1a7a8:	fe4ff06f          	j	19f8c <_svfprintf_r+0x148>
   1a7ac:	02096913          	ori	s2,s2,32
   1a7b0:	00044483          	lbu	s1,0(s0)
   1a7b4:	0009091b          	sext.w	s2,s2
   1a7b8:	fd4ff06f          	j	19f8c <_svfprintf_r+0x148>
   1a7bc:	01013683          	ld	a3,16(sp)
   1a7c0:	ffff87b7          	lui	a5,0xffff8
   1a7c4:	8307c793          	xori	a5,a5,-2000
   1a7c8:	0cf11823          	sh	a5,208(sp)
   1a7cc:	00868793          	addi	a5,a3,8
   1a7d0:	00296713          	ori	a4,s2,2
   1a7d4:	00f13823          	sd	a5,16(sp)
   1a7d8:	00007797          	auipc	a5,0x7
   1a7dc:	6a878793          	addi	a5,a5,1704 # 21e80 <__clzdi2+0x9c>
   1a7e0:	04f13423          	sd	a5,72(sp)
   1a7e4:	0006b983          	ld	s3,0(a3)
   1a7e8:	000b8e13          	mv	t3,s7
   1a7ec:	00070a9b          	sext.w	s5,a4
   1a7f0:	00200793          	li	a5,2
   1a7f4:	07800493          	li	s1,120
   1a7f8:	ed9ff06f          	j	1a6d0 <_svfprintf_r+0x88c>
   1a7fc:	01096713          	ori	a4,s2,16
   1a800:	000b8e13          	mv	t3,s7
   1a804:	00070a9b          	sext.w	s5,a4
   1a808:	01013703          	ld	a4,16(sp)
   1a80c:	020af793          	andi	a5,s5,32
   1a810:	00870693          	addi	a3,a4,8
   1a814:	1c078ae3          	beqz	a5,1b1e8 <_svfprintf_r+0x13a4>
   1a818:	00073983          	ld	s3,0(a4)
   1a81c:	00100793          	li	a5,1
   1a820:	00d13823          	sd	a3,16(sp)
   1a824:	eadff06f          	j	1a6d0 <_svfprintf_r+0x88c>
   1a828:	00896913          	ori	s2,s2,8
   1a82c:	00044483          	lbu	s1,0(s0)
   1a830:	0009091b          	sext.w	s2,s2
   1a834:	f58ff06f          	j	19f8c <_svfprintf_r+0x148>
   1a838:	08096913          	ori	s2,s2,128
   1a83c:	00044483          	lbu	s1,0(s0)
   1a840:	0009091b          	sext.w	s2,s2
   1a844:	f48ff06f          	j	19f8c <_svfprintf_r+0x148>
   1a848:	00044483          	lbu	s1,0(s0)
   1a84c:	00140793          	addi	a5,s0,1
   1a850:	01549463          	bne	s1,s5,1a858 <_svfprintf_r+0xa14>
   1a854:	4290106f          	j	1c47c <_svfprintf_r+0x2638>
   1a858:	fd04871b          	addiw	a4,s1,-48
   1a85c:	00078413          	mv	s0,a5
   1a860:	00000b93          	li	s7,0
   1a864:	f2e9ea63          	bltu	s3,a4,19f98 <_svfprintf_r+0x154>
   1a868:	00044603          	lbu	a2,0(s0)
   1a86c:	002b979b          	slliw	a5,s7,0x2
   1a870:	017787bb          	addw	a5,a5,s7
   1a874:	0017979b          	slliw	a5,a5,0x1
   1a878:	00e78bbb          	addw	s7,a5,a4
   1a87c:	fd06071b          	addiw	a4,a2,-48
   1a880:	00140413          	addi	s0,s0,1
   1a884:	fee9f2e3          	bgeu	s3,a4,1a868 <_svfprintf_r+0xa24>
   1a888:	00060493          	mv	s1,a2
   1a88c:	f0cff06f          	j	19f98 <_svfprintf_r+0x154>
   1a890:	00044483          	lbu	s1,0(s0)
   1a894:	00496913          	ori	s2,s2,4
   1a898:	0009091b          	sext.w	s2,s2
   1a89c:	ef0ff06f          	j	19f8c <_svfprintf_r+0x148>
   1a8a0:	02b00793          	li	a5,43
   1a8a4:	00044483          	lbu	s1,0(s0)
   1a8a8:	0cf107a3          	sb	a5,207(sp)
   1a8ac:	ee0ff06f          	j	19f8c <_svfprintf_r+0x148>
   1a8b0:	01013783          	ld	a5,16(sp)
   1a8b4:	00044483          	lbu	s1,0(s0)
   1a8b8:	0007aa03          	lw	s4,0(a5)
   1a8bc:	00878793          	addi	a5,a5,8
   1a8c0:	00f13823          	sd	a5,16(sp)
   1a8c4:	ec0a5463          	bgez	s4,19f8c <_svfprintf_r+0x148>
   1a8c8:	41400a3b          	negw	s4,s4
   1a8cc:	fc9ff06f          	j	1a894 <_svfprintf_r+0xa50>
   1a8d0:	000c8513          	mv	a0,s9
   1a8d4:	fd8fc0ef          	jal	ra,170ac <_localeconv_r>
   1a8d8:	00853783          	ld	a5,8(a0)
   1a8dc:	00078513          	mv	a0,a5
   1a8e0:	06f13823          	sd	a5,112(sp)
   1a8e4:	dbdf50ef          	jal	ra,106a0 <strlen>
   1a8e8:	00050793          	mv	a5,a0
   1a8ec:	000c8513          	mv	a0,s9
   1a8f0:	00078493          	mv	s1,a5
   1a8f4:	06f13423          	sd	a5,104(sp)
   1a8f8:	fb4fc0ef          	jal	ra,170ac <_localeconv_r>
   1a8fc:	01053783          	ld	a5,16(a0)
   1a900:	04f13c23          	sd	a5,88(sp)
   1a904:	1c048ce3          	beqz	s1,1b2dc <_svfprintf_r+0x1498>
   1a908:	00044483          	lbu	s1,0(s0)
   1a90c:	e8078063          	beqz	a5,19f8c <_svfprintf_r+0x148>
   1a910:	0007c783          	lbu	a5,0(a5)
   1a914:	e6078c63          	beqz	a5,19f8c <_svfprintf_r+0x148>
   1a918:	40096913          	ori	s2,s2,1024
   1a91c:	0009091b          	sext.w	s2,s2
   1a920:	e6cff06f          	j	19f8c <_svfprintf_r+0x148>
   1a924:	00196913          	ori	s2,s2,1
   1a928:	00044483          	lbu	s1,0(s0)
   1a92c:	0009091b          	sext.w	s2,s2
   1a930:	e5cff06f          	j	19f8c <_svfprintf_r+0x148>
   1a934:	0cf14783          	lbu	a5,207(sp)
   1a938:	00044483          	lbu	s1,0(s0)
   1a93c:	e4079863          	bnez	a5,19f8c <_svfprintf_r+0x148>
   1a940:	02000793          	li	a5,32
   1a944:	0cf107a3          	sb	a5,207(sp)
   1a948:	e44ff06f          	j	19f8c <_svfprintf_r+0x148>
   1a94c:	01096913          	ori	s2,s2,16
   1a950:	000b8e13          	mv	t3,s7
   1a954:	0009091b          	sext.w	s2,s2
   1a958:	01013703          	ld	a4,16(sp)
   1a95c:	02097793          	andi	a5,s2,32
   1a960:	00870693          	addi	a3,a4,8
   1a964:	040784e3          	beqz	a5,1b1ac <_svfprintf_r+0x1368>
   1a968:	00073783          	ld	a5,0(a4)
   1a96c:	00078993          	mv	s3,a5
   1a970:	0407cee3          	bltz	a5,1b1cc <_svfprintf_r+0x1388>
   1a974:	fff00793          	li	a5,-1
   1a978:	6cfe00e3          	beq	t3,a5,1b838 <_svfprintf_r+0x19f4>
   1a97c:	f7f97713          	andi	a4,s2,-129
   1a980:	00d13823          	sd	a3,16(sp)
   1a984:	00070a9b          	sext.w	s5,a4
   1a988:	76098c63          	beqz	s3,1b100 <_svfprintf_r+0x12bc>
   1a98c:	00900793          	li	a5,9
   1a990:	4b37eae3          	bltu	a5,s3,1b644 <_svfprintf_r+0x1800>
   1a994:	0309899b          	addiw	s3,s3,48
   1a998:	17310da3          	sb	s3,379(sp)
   1a99c:	000a8913          	mv	s2,s5
   1a9a0:	00100b93          	li	s7,1
   1a9a4:	17b10d13          	addi	s10,sp,379
   1a9a8:	d55ff06f          	j	1a6fc <_svfprintf_r+0x8b8>
   1a9ac:	00090a93          	mv	s5,s2
   1a9b0:	00100693          	li	a3,1
   1a9b4:	fcd78ce3          	beq	a5,a3,1a98c <_svfprintf_r+0xb48>
   1a9b8:	00200693          	li	a3,2
   1a9bc:	16d78e63          	beq	a5,a3,1ab38 <_svfprintf_r+0xcf4>
   1a9c0:	17c10b93          	addi	s7,sp,380
   1a9c4:	000b8d13          	mv	s10,s7
   1a9c8:	0079f793          	andi	a5,s3,7
   1a9cc:	03078793          	addi	a5,a5,48
   1a9d0:	fefd0fa3          	sb	a5,-1(s10)
   1a9d4:	0039d993          	srli	s3,s3,0x3
   1a9d8:	000d0693          	mv	a3,s10
   1a9dc:	fffd0d13          	addi	s10,s10,-1
   1a9e0:	fe0994e3          	bnez	s3,1a9c8 <_svfprintf_r+0xb84>
   1a9e4:	001af613          	andi	a2,s5,1
   1a9e8:	16060c63          	beqz	a2,1ab60 <_svfprintf_r+0xd1c>
   1a9ec:	03000613          	li	a2,48
   1a9f0:	16c78863          	beq	a5,a2,1ab60 <_svfprintf_r+0xd1c>
   1a9f4:	ffe68693          	addi	a3,a3,-2
   1a9f8:	fecd0fa3          	sb	a2,-1(s10)
   1a9fc:	40db8bbb          	subw	s7,s7,a3
   1aa00:	000a8913          	mv	s2,s5
   1aa04:	00068d13          	mv	s10,a3
   1aa08:	cf5ff06f          	j	1a6fc <_svfprintf_r+0x8b8>
   1aa0c:	06500713          	li	a4,101
   1aa10:	ac9758e3          	bge	a4,s1,1a4e0 <_svfprintf_r+0x69c>
   1aa14:	0f013503          	ld	a0,240(sp)
   1aa18:	0f813583          	ld	a1,248(sp)
   1aa1c:	00000613          	li	a2,0
   1aa20:	00000693          	li	a3,0
   1aa24:	06f13023          	sd	a5,96(sp)
   1aa28:	674050ef          	jal	ra,2009c <__eqtf2>
   1aa2c:	06013783          	ld	a5,96(sp)
   1aa30:	52051663          	bnez	a0,1af5c <_svfprintf_r+0x1118>
   1aa34:	10812703          	lw	a4,264(sp)
   1aa38:	00007697          	auipc	a3,0x7
   1aa3c:	46868693          	addi	a3,a3,1128 # 21ea0 <__clzdi2+0xbc>
   1aa40:	00ddb023          	sd	a3,0(s11)
   1aa44:	0017071b          	addiw	a4,a4,1
   1aa48:	00100693          	li	a3,1
   1aa4c:	00178793          	addi	a5,a5,1
   1aa50:	00ddb423          	sd	a3,8(s11)
   1aa54:	10e12423          	sw	a4,264(sp)
   1aa58:	0007069b          	sext.w	a3,a4
   1aa5c:	10f13823          	sd	a5,272(sp)
   1aa60:	00700713          	li	a4,7
   1aa64:	010d8d93          	addi	s11,s11,16
   1aa68:	5cd74ee3          	blt	a4,a3,1b844 <_svfprintf_r+0x1a00>
   1aa6c:	0d812703          	lw	a4,216(sp)
   1aa70:	02013683          	ld	a3,32(sp)
   1aa74:	7ed75463          	bge	a4,a3,1b25c <_svfprintf_r+0x1418>
   1aa78:	04013703          	ld	a4,64(sp)
   1aa7c:	03813683          	ld	a3,56(sp)
   1aa80:	010d8d93          	addi	s11,s11,16
   1aa84:	feedb823          	sd	a4,-16(s11)
   1aa88:	10812703          	lw	a4,264(sp)
   1aa8c:	00d787b3          	add	a5,a5,a3
   1aa90:	feddbc23          	sd	a3,-8(s11)
   1aa94:	0017071b          	addiw	a4,a4,1
   1aa98:	0007069b          	sext.w	a3,a4
   1aa9c:	10e12423          	sw	a4,264(sp)
   1aaa0:	10f13823          	sd	a5,272(sp)
   1aaa4:	00700713          	li	a4,7
   1aaa8:	0ad746e3          	blt	a4,a3,1b354 <_svfprintf_r+0x1510>
   1aaac:	02013703          	ld	a4,32(sp)
   1aab0:	fff7049b          	addiw	s1,a4,-1
   1aab4:	e4905463          	blez	s1,1a0fc <_svfprintf_r+0x2b8>
   1aab8:	10812703          	lw	a4,264(sp)
   1aabc:	5a9b54e3          	bge	s6,s1,1b864 <_svfprintf_r+0x1a20>
   1aac0:	00700993          	li	s3,7
   1aac4:	00c0006f          	j	1aad0 <_svfprintf_r+0xc8c>
   1aac8:	ff04849b          	addiw	s1,s1,-16
   1aacc:	589b5ce3          	bge	s6,s1,1b864 <_svfprintf_r+0x1a20>
   1aad0:	0017069b          	addiw	a3,a4,1
   1aad4:	01078793          	addi	a5,a5,16
   1aad8:	00008717          	auipc	a4,0x8
   1aadc:	bc870713          	addi	a4,a4,-1080 # 226a0 <zeroes.0>
   1aae0:	00edb023          	sd	a4,0(s11)
   1aae4:	016db423          	sd	s6,8(s11)
   1aae8:	10f13823          	sd	a5,272(sp)
   1aaec:	0006871b          	sext.w	a4,a3
   1aaf0:	10d12423          	sw	a3,264(sp)
   1aaf4:	010d8d93          	addi	s11,s11,16
   1aaf8:	fce9d8e3          	bge	s3,a4,1aac8 <_svfprintf_r+0xc84>
   1aafc:	10010613          	addi	a2,sp,256
   1ab00:	000c0593          	mv	a1,s8
   1ab04:	000c8513          	mv	a0,s9
   1ab08:	724030ef          	jal	ra,1e22c <__ssprint_r>
   1ab0c:	22051463          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1ab10:	11013783          	ld	a5,272(sp)
   1ab14:	10812703          	lw	a4,264(sp)
   1ab18:	18010d93          	addi	s11,sp,384
   1ab1c:	fadff06f          	j	1aac8 <_svfprintf_r+0xc84>
   1ab20:	00100713          	li	a4,1
   1ab24:	00e79463          	bne	a5,a4,1ab2c <_svfprintf_r+0xce8>
   1ab28:	6980106f          	j	1c1c0 <_svfprintf_r+0x237c>
   1ab2c:	00200713          	li	a4,2
   1ab30:	00090a93          	mv	s5,s2
   1ab34:	e8e796e3          	bne	a5,a4,1a9c0 <_svfprintf_r+0xb7c>
   1ab38:	04813703          	ld	a4,72(sp)
   1ab3c:	17c10b93          	addi	s7,sp,380
   1ab40:	000b8d13          	mv	s10,s7
   1ab44:	00f9f793          	andi	a5,s3,15
   1ab48:	00f707b3          	add	a5,a4,a5
   1ab4c:	0007c783          	lbu	a5,0(a5)
   1ab50:	0049d993          	srli	s3,s3,0x4
   1ab54:	fffd0d13          	addi	s10,s10,-1
   1ab58:	00fd0023          	sb	a5,0(s10)
   1ab5c:	fe0994e3          	bnez	s3,1ab44 <_svfprintf_r+0xd00>
   1ab60:	41ab8bbb          	subw	s7,s7,s10
   1ab64:	000a8913          	mv	s2,s5
   1ab68:	b95ff06f          	j	1a6fc <_svfprintf_r+0x8b8>
   1ab6c:	415a09bb          	subw	s3,s4,s5
   1ab70:	d5305a63          	blez	s3,1a0c4 <_svfprintf_r+0x280>
   1ab74:	10812703          	lw	a4,264(sp)
   1ab78:	093b5663          	bge	s6,s3,1ac04 <_svfprintf_r+0xdc0>
   1ab7c:	06813023          	sd	s0,96(sp)
   1ab80:	00700893          	li	a7,7
   1ab84:	000c0413          	mv	s0,s8
   1ab88:	00098c13          	mv	s8,s3
   1ab8c:	000e0993          	mv	s3,t3
   1ab90:	00c0006f          	j	1ab9c <_svfprintf_r+0xd58>
   1ab94:	ff0c0c1b          	addiw	s8,s8,-16
   1ab98:	058b5e63          	bge	s6,s8,1abf4 <_svfprintf_r+0xdb0>
   1ab9c:	0017069b          	addiw	a3,a4,1
   1aba0:	01078793          	addi	a5,a5,16
   1aba4:	00008717          	auipc	a4,0x8
   1aba8:	afc70713          	addi	a4,a4,-1284 # 226a0 <zeroes.0>
   1abac:	00edb023          	sd	a4,0(s11)
   1abb0:	016db423          	sd	s6,8(s11)
   1abb4:	10f13823          	sd	a5,272(sp)
   1abb8:	0006871b          	sext.w	a4,a3
   1abbc:	10d12423          	sw	a3,264(sp)
   1abc0:	010d8d93          	addi	s11,s11,16
   1abc4:	fce8d8e3          	bge	a7,a4,1ab94 <_svfprintf_r+0xd50>
   1abc8:	10010613          	addi	a2,sp,256
   1abcc:	00040593          	mv	a1,s0
   1abd0:	000c8513          	mv	a0,s9
   1abd4:	658030ef          	jal	ra,1e22c <__ssprint_r>
   1abd8:	4e0516e3          	bnez	a0,1b8c4 <_svfprintf_r+0x1a80>
   1abdc:	ff0c0c1b          	addiw	s8,s8,-16
   1abe0:	11013783          	ld	a5,272(sp)
   1abe4:	10812703          	lw	a4,264(sp)
   1abe8:	18010d93          	addi	s11,sp,384
   1abec:	00700893          	li	a7,7
   1abf0:	fb8b46e3          	blt	s6,s8,1ab9c <_svfprintf_r+0xd58>
   1abf4:	00098e13          	mv	t3,s3
   1abf8:	000c0993          	mv	s3,s8
   1abfc:	00040c13          	mv	s8,s0
   1ac00:	06013403          	ld	s0,96(sp)
   1ac04:	0017071b          	addiw	a4,a4,1
   1ac08:	00008697          	auipc	a3,0x8
   1ac0c:	a9868693          	addi	a3,a3,-1384 # 226a0 <zeroes.0>
   1ac10:	013787b3          	add	a5,a5,s3
   1ac14:	00ddb023          	sd	a3,0(s11)
   1ac18:	013db423          	sd	s3,8(s11)
   1ac1c:	0007069b          	sext.w	a3,a4
   1ac20:	10e12423          	sw	a4,264(sp)
   1ac24:	10f13823          	sd	a5,272(sp)
   1ac28:	00700713          	li	a4,7
   1ac2c:	010d8d93          	addi	s11,s11,16
   1ac30:	c8d75a63          	bge	a4,a3,1a0c4 <_svfprintf_r+0x280>
   1ac34:	10010613          	addi	a2,sp,256
   1ac38:	000c0593          	mv	a1,s8
   1ac3c:	000c8513          	mv	a0,s9
   1ac40:	07c13023          	sd	t3,96(sp)
   1ac44:	5e8030ef          	jal	ra,1e22c <__ssprint_r>
   1ac48:	0e051663          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1ac4c:	06013e03          	ld	t3,96(sp)
   1ac50:	11013783          	ld	a5,272(sp)
   1ac54:	18010d93          	addi	s11,sp,384
   1ac58:	417e09bb          	subw	s3,t3,s7
   1ac5c:	c7305863          	blez	s3,1a0cc <_svfprintf_r+0x288>
   1ac60:	10812703          	lw	a4,264(sp)
   1ac64:	073b5663          	bge	s6,s3,1acd0 <_svfprintf_r+0xe8c>
   1ac68:	00700893          	li	a7,7
   1ac6c:	00c0006f          	j	1ac78 <_svfprintf_r+0xe34>
   1ac70:	ff09899b          	addiw	s3,s3,-16
   1ac74:	053b5e63          	bge	s6,s3,1acd0 <_svfprintf_r+0xe8c>
   1ac78:	0017069b          	addiw	a3,a4,1
   1ac7c:	01078793          	addi	a5,a5,16
   1ac80:	00008717          	auipc	a4,0x8
   1ac84:	a2070713          	addi	a4,a4,-1504 # 226a0 <zeroes.0>
   1ac88:	00edb023          	sd	a4,0(s11)
   1ac8c:	016db423          	sd	s6,8(s11)
   1ac90:	10f13823          	sd	a5,272(sp)
   1ac94:	0006871b          	sext.w	a4,a3
   1ac98:	10d12423          	sw	a3,264(sp)
   1ac9c:	010d8d93          	addi	s11,s11,16
   1aca0:	fce8d8e3          	bge	a7,a4,1ac70 <_svfprintf_r+0xe2c>
   1aca4:	10010613          	addi	a2,sp,256
   1aca8:	000c0593          	mv	a1,s8
   1acac:	000c8513          	mv	a0,s9
   1acb0:	57c030ef          	jal	ra,1e22c <__ssprint_r>
   1acb4:	08051063          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1acb8:	ff09899b          	addiw	s3,s3,-16
   1acbc:	11013783          	ld	a5,272(sp)
   1acc0:	10812703          	lw	a4,264(sp)
   1acc4:	18010d93          	addi	s11,sp,384
   1acc8:	00700893          	li	a7,7
   1accc:	fb3b46e3          	blt	s6,s3,1ac78 <_svfprintf_r+0xe34>
   1acd0:	0017071b          	addiw	a4,a4,1
   1acd4:	00008697          	auipc	a3,0x8
   1acd8:	9cc68693          	addi	a3,a3,-1588 # 226a0 <zeroes.0>
   1acdc:	013787b3          	add	a5,a5,s3
   1ace0:	00ddb023          	sd	a3,0(s11)
   1ace4:	013db423          	sd	s3,8(s11)
   1ace8:	0007069b          	sext.w	a3,a4
   1acec:	10e12423          	sw	a4,264(sp)
   1acf0:	10f13823          	sd	a5,272(sp)
   1acf4:	00700713          	li	a4,7
   1acf8:	010d8d93          	addi	s11,s11,16
   1acfc:	bcd75863          	bge	a4,a3,1a0cc <_svfprintf_r+0x288>
   1ad00:	10010613          	addi	a2,sp,256
   1ad04:	000c0593          	mv	a1,s8
   1ad08:	000c8513          	mv	a0,s9
   1ad0c:	520030ef          	jal	ra,1e22c <__ssprint_r>
   1ad10:	02051263          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1ad14:	11013783          	ld	a5,272(sp)
   1ad18:	18010d93          	addi	s11,sp,384
   1ad1c:	bb0ff06f          	j	1a0cc <_svfprintf_r+0x288>
   1ad20:	10010613          	addi	a2,sp,256
   1ad24:	000c0593          	mv	a1,s8
   1ad28:	000c8513          	mv	a0,s9
   1ad2c:	500030ef          	jal	ra,1e22c <__ssprint_r>
   1ad30:	be050c63          	beqz	a0,1a128 <_svfprintf_r+0x2e4>
   1ad34:	00813783          	ld	a5,8(sp)
   1ad38:	c2078263          	beqz	a5,1a15c <_svfprintf_r+0x318>
   1ad3c:	00813583          	ld	a1,8(sp)
   1ad40:	000c8513          	mv	a0,s9
   1ad44:	d15f80ef          	jal	ra,13a58 <_free_r>
   1ad48:	c14ff06f          	j	1a15c <_svfprintf_r+0x318>
   1ad4c:	10812703          	lw	a4,264(sp)
   1ad50:	00008997          	auipc	s3,0x8
   1ad54:	94098993          	addi	s3,s3,-1728 # 22690 <blanks.1>
   1ad58:	0cdb5863          	bge	s6,a3,1ae28 <_svfprintf_r+0xfe4>
   1ad5c:	08813423          	sd	s0,136(sp)
   1ad60:	00068413          	mv	s0,a3
   1ad64:	000c0693          	mv	a3,s8
   1ad68:	08913023          	sd	s1,128(sp)
   1ad6c:	000a8c13          	mv	s8,s5
   1ad70:	000c8493          	mv	s1,s9
   1ad74:	000a0a93          	mv	s5,s4
   1ad78:	000d0c93          	mv	s9,s10
   1ad7c:	00090a13          	mv	s4,s2
   1ad80:	000b8d13          	mv	s10,s7
   1ad84:	00700f93          	li	t6,7
   1ad88:	07e13023          	sd	t5,96(sp)
   1ad8c:	07d13c23          	sd	t4,120(sp)
   1ad90:	000e0b93          	mv	s7,t3
   1ad94:	00068913          	mv	s2,a3
   1ad98:	00c0006f          	j	1ada4 <_svfprintf_r+0xf60>
   1ad9c:	ff04041b          	addiw	s0,s0,-16
   1ada0:	048b5863          	bge	s6,s0,1adf0 <_svfprintf_r+0xfac>
   1ada4:	0017071b          	addiw	a4,a4,1
   1ada8:	01078793          	addi	a5,a5,16
   1adac:	013db023          	sd	s3,0(s11)
   1adb0:	016db423          	sd	s6,8(s11)
   1adb4:	10f13823          	sd	a5,272(sp)
   1adb8:	10e12423          	sw	a4,264(sp)
   1adbc:	010d8d93          	addi	s11,s11,16
   1adc0:	fcefdee3          	bge	t6,a4,1ad9c <_svfprintf_r+0xf58>
   1adc4:	10010613          	addi	a2,sp,256
   1adc8:	00090593          	mv	a1,s2
   1adcc:	00048513          	mv	a0,s1
   1add0:	45c030ef          	jal	ra,1e22c <__ssprint_r>
   1add4:	22051ee3          	bnez	a0,1b810 <_svfprintf_r+0x19cc>
   1add8:	ff04041b          	addiw	s0,s0,-16
   1addc:	11013783          	ld	a5,272(sp)
   1ade0:	10812703          	lw	a4,264(sp)
   1ade4:	18010d93          	addi	s11,sp,384
   1ade8:	00700f93          	li	t6,7
   1adec:	fa8b4ce3          	blt	s6,s0,1ada4 <_svfprintf_r+0xf60>
   1adf0:	000b8e13          	mv	t3,s7
   1adf4:	00040693          	mv	a3,s0
   1adf8:	000d0b93          	mv	s7,s10
   1adfc:	06013f03          	ld	t5,96(sp)
   1ae00:	000c8d13          	mv	s10,s9
   1ae04:	07813e83          	ld	t4,120(sp)
   1ae08:	00048c93          	mv	s9,s1
   1ae0c:	08813403          	ld	s0,136(sp)
   1ae10:	08013483          	ld	s1,128(sp)
   1ae14:	00090613          	mv	a2,s2
   1ae18:	000a0913          	mv	s2,s4
   1ae1c:	000a8a13          	mv	s4,s5
   1ae20:	000c0a93          	mv	s5,s8
   1ae24:	00060c13          	mv	s8,a2
   1ae28:	0017071b          	addiw	a4,a4,1
   1ae2c:	00d787b3          	add	a5,a5,a3
   1ae30:	00ddb423          	sd	a3,8(s11)
   1ae34:	013db023          	sd	s3,0(s11)
   1ae38:	0007069b          	sext.w	a3,a4
   1ae3c:	10e12423          	sw	a4,264(sp)
   1ae40:	10f13823          	sd	a5,272(sp)
   1ae44:	00700713          	li	a4,7
   1ae48:	010d8d93          	addi	s11,s11,16
   1ae4c:	9ed75e63          	bge	a4,a3,1a048 <_svfprintf_r+0x204>
   1ae50:	10010613          	addi	a2,sp,256
   1ae54:	000c0593          	mv	a1,s8
   1ae58:	000c8513          	mv	a0,s9
   1ae5c:	09c13023          	sd	t3,128(sp)
   1ae60:	07d13c23          	sd	t4,120(sp)
   1ae64:	07e13023          	sd	t5,96(sp)
   1ae68:	3c4030ef          	jal	ra,1e22c <__ssprint_r>
   1ae6c:	ec0514e3          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1ae70:	11013783          	ld	a5,272(sp)
   1ae74:	08013e03          	ld	t3,128(sp)
   1ae78:	07813e83          	ld	t4,120(sp)
   1ae7c:	06013f03          	ld	t5,96(sp)
   1ae80:	18010d93          	addi	s11,sp,384
   1ae84:	9c4ff06f          	j	1a048 <_svfprintf_r+0x204>
   1ae88:	10010613          	addi	a2,sp,256
   1ae8c:	000c0593          	mv	a1,s8
   1ae90:	000c8513          	mv	a0,s9
   1ae94:	07c13c23          	sd	t3,120(sp)
   1ae98:	07d13023          	sd	t4,96(sp)
   1ae9c:	390030ef          	jal	ra,1e22c <__ssprint_r>
   1aea0:	e8051ae3          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1aea4:	11013783          	ld	a5,272(sp)
   1aea8:	07813e03          	ld	t3,120(sp)
   1aeac:	06013e83          	ld	t4,96(sp)
   1aeb0:	18010d93          	addi	s11,sp,384
   1aeb4:	a08ff06f          	j	1a0bc <_svfprintf_r+0x278>
   1aeb8:	10812703          	lw	a4,264(sp)
   1aebc:	00007997          	auipc	s3,0x7
   1aec0:	7d498993          	addi	s3,s3,2004 # 22690 <blanks.1>
   1aec4:	00700913          	li	s2,7
   1aec8:	009b4863          	blt	s6,s1,1aed8 <_svfprintf_r+0x1094>
   1aecc:	0540006f          	j	1af20 <_svfprintf_r+0x10dc>
   1aed0:	ff04849b          	addiw	s1,s1,-16
   1aed4:	049b5663          	bge	s6,s1,1af20 <_svfprintf_r+0x10dc>
   1aed8:	0017071b          	addiw	a4,a4,1
   1aedc:	01078793          	addi	a5,a5,16
   1aee0:	013db023          	sd	s3,0(s11)
   1aee4:	016db423          	sd	s6,8(s11)
   1aee8:	10f13823          	sd	a5,272(sp)
   1aeec:	10e12423          	sw	a4,264(sp)
   1aef0:	010d8d93          	addi	s11,s11,16
   1aef4:	fce95ee3          	bge	s2,a4,1aed0 <_svfprintf_r+0x108c>
   1aef8:	10010613          	addi	a2,sp,256
   1aefc:	000c0593          	mv	a1,s8
   1af00:	000c8513          	mv	a0,s9
   1af04:	328030ef          	jal	ra,1e22c <__ssprint_r>
   1af08:	e20516e3          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1af0c:	ff04849b          	addiw	s1,s1,-16
   1af10:	11013783          	ld	a5,272(sp)
   1af14:	10812703          	lw	a4,264(sp)
   1af18:	18010d93          	addi	s11,sp,384
   1af1c:	fa9b4ee3          	blt	s6,s1,1aed8 <_svfprintf_r+0x1094>
   1af20:	0017069b          	addiw	a3,a4,1
   1af24:	009787b3          	add	a5,a5,s1
   1af28:	013db023          	sd	s3,0(s11)
   1af2c:	009db423          	sd	s1,8(s11)
   1af30:	10f13823          	sd	a5,272(sp)
   1af34:	10d12423          	sw	a3,264(sp)
   1af38:	00700713          	li	a4,7
   1af3c:	9cd75863          	bge	a4,a3,1a10c <_svfprintf_r+0x2c8>
   1af40:	10010613          	addi	a2,sp,256
   1af44:	000c0593          	mv	a1,s8
   1af48:	000c8513          	mv	a0,s9
   1af4c:	2e0030ef          	jal	ra,1e22c <__ssprint_r>
   1af50:	de0512e3          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1af54:	11013783          	ld	a5,272(sp)
   1af58:	9b4ff06f          	j	1a10c <_svfprintf_r+0x2c8>
   1af5c:	0d812603          	lw	a2,216(sp)
   1af60:	7cc05a63          	blez	a2,1b734 <_svfprintf_r+0x18f0>
   1af64:	01813703          	ld	a4,24(sp)
   1af68:	02013683          	ld	a3,32(sp)
   1af6c:	0007049b          	sext.w	s1,a4
   1af70:	36e6ca63          	blt	a3,a4,1b2e4 <_svfprintf_r+0x14a0>
   1af74:	02905663          	blez	s1,1afa0 <_svfprintf_r+0x115c>
   1af78:	10812703          	lw	a4,264(sp)
   1af7c:	009787b3          	add	a5,a5,s1
   1af80:	01adb023          	sd	s10,0(s11)
   1af84:	0017069b          	addiw	a3,a4,1
   1af88:	009db423          	sd	s1,8(s11)
   1af8c:	10f13823          	sd	a5,272(sp)
   1af90:	10d12423          	sw	a3,264(sp)
   1af94:	00700713          	li	a4,7
   1af98:	010d8d93          	addi	s11,s11,16
   1af9c:	36d744e3          	blt	a4,a3,1bb04 <_svfprintf_r+0x1cc0>
   1afa0:	fff4c713          	not	a4,s1
   1afa4:	43f75713          	srai	a4,a4,0x3f
   1afa8:	00e4f4b3          	and	s1,s1,a4
   1afac:	01813703          	ld	a4,24(sp)
   1afb0:	409704bb          	subw	s1,a4,s1
   1afb4:	42904e63          	bgtz	s1,1b3f0 <_svfprintf_r+0x15ac>
   1afb8:	01813683          	ld	a3,24(sp)
   1afbc:	40097713          	andi	a4,s2,1024
   1afc0:	00dd04b3          	add	s1,s10,a3
   1afc4:	48071a63          	bnez	a4,1b458 <_svfprintf_r+0x1614>
   1afc8:	0d812703          	lw	a4,216(sp)
   1afcc:	02013683          	ld	a3,32(sp)
   1afd0:	00d74663          	blt	a4,a3,1afdc <_svfprintf_r+0x1198>
   1afd4:	00197693          	andi	a3,s2,1
   1afd8:	34068ae3          	beqz	a3,1bb2c <_svfprintf_r+0x1ce8>
   1afdc:	04013683          	ld	a3,64(sp)
   1afe0:	03813603          	ld	a2,56(sp)
   1afe4:	010d8d93          	addi	s11,s11,16
   1afe8:	feddb823          	sd	a3,-16(s11)
   1afec:	10812683          	lw	a3,264(sp)
   1aff0:	00c787b3          	add	a5,a5,a2
   1aff4:	fecdbc23          	sd	a2,-8(s11)
   1aff8:	0016869b          	addiw	a3,a3,1
   1affc:	0006861b          	sext.w	a2,a3
   1b000:	10d12423          	sw	a3,264(sp)
   1b004:	10f13823          	sd	a5,272(sp)
   1b008:	00700693          	li	a3,7
   1b00c:	5ac6c2e3          	blt	a3,a2,1bdb0 <_svfprintf_r+0x1f6c>
   1b010:	02013683          	ld	a3,32(sp)
   1b014:	40e6863b          	subw	a2,a3,a4
   1b018:	00dd06b3          	add	a3,s10,a3
   1b01c:	409686bb          	subw	a3,a3,s1
   1b020:	00060713          	mv	a4,a2
   1b024:	00c6d463          	bge	a3,a2,1b02c <_svfprintf_r+0x11e8>
   1b028:	00068713          	mv	a4,a3
   1b02c:	0007099b          	sext.w	s3,a4
   1b030:	03305663          	blez	s3,1b05c <_svfprintf_r+0x1218>
   1b034:	10812703          	lw	a4,264(sp)
   1b038:	013787b3          	add	a5,a5,s3
   1b03c:	009db023          	sd	s1,0(s11)
   1b040:	0017069b          	addiw	a3,a4,1
   1b044:	013db423          	sd	s3,8(s11)
   1b048:	10f13823          	sd	a5,272(sp)
   1b04c:	10d12423          	sw	a3,264(sp)
   1b050:	00700713          	li	a4,7
   1b054:	010d8d93          	addi	s11,s11,16
   1b058:	60d744e3          	blt	a4,a3,1be60 <_svfprintf_r+0x201c>
   1b05c:	fff9c493          	not	s1,s3
   1b060:	43f4d493          	srai	s1,s1,0x3f
   1b064:	0099f4b3          	and	s1,s3,s1
   1b068:	409604bb          	subw	s1,a2,s1
   1b06c:	88905863          	blez	s1,1a0fc <_svfprintf_r+0x2b8>
   1b070:	10812703          	lw	a4,264(sp)
   1b074:	7e9b5863          	bge	s6,s1,1b864 <_svfprintf_r+0x1a20>
   1b078:	00700993          	li	s3,7
   1b07c:	00c0006f          	j	1b088 <_svfprintf_r+0x1244>
   1b080:	ff04849b          	addiw	s1,s1,-16
   1b084:	7e9b5063          	bge	s6,s1,1b864 <_svfprintf_r+0x1a20>
   1b088:	0017069b          	addiw	a3,a4,1
   1b08c:	01078793          	addi	a5,a5,16
   1b090:	00007717          	auipc	a4,0x7
   1b094:	61070713          	addi	a4,a4,1552 # 226a0 <zeroes.0>
   1b098:	00edb023          	sd	a4,0(s11)
   1b09c:	016db423          	sd	s6,8(s11)
   1b0a0:	10f13823          	sd	a5,272(sp)
   1b0a4:	0006871b          	sext.w	a4,a3
   1b0a8:	10d12423          	sw	a3,264(sp)
   1b0ac:	010d8d93          	addi	s11,s11,16
   1b0b0:	fce9d8e3          	bge	s3,a4,1b080 <_svfprintf_r+0x123c>
   1b0b4:	10010613          	addi	a2,sp,256
   1b0b8:	000c0593          	mv	a1,s8
   1b0bc:	000c8513          	mv	a0,s9
   1b0c0:	16c030ef          	jal	ra,1e22c <__ssprint_r>
   1b0c4:	c60518e3          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b0c8:	11013783          	ld	a5,272(sp)
   1b0cc:	10812703          	lw	a4,264(sp)
   1b0d0:	18010d93          	addi	s11,sp,384
   1b0d4:	fadff06f          	j	1b080 <_svfprintf_r+0x123c>
   1b0d8:	00197593          	andi	a1,s2,1
   1b0dc:	c2059463          	bnez	a1,1a504 <_svfprintf_r+0x6c0>
   1b0e0:	00cdb423          	sd	a2,8(s11)
   1b0e4:	11313823          	sd	s3,272(sp)
   1b0e8:	10f12423          	sw	a5,264(sp)
   1b0ec:	00700713          	li	a4,7
   1b0f0:	52f74463          	blt	a4,a5,1b618 <_svfprintf_r+0x17d4>
   1b0f4:	0026869b          	addiw	a3,a3,2
   1b0f8:	020d8d93          	addi	s11,s11,32
   1b0fc:	cb4ff06f          	j	1a5b0 <_svfprintf_r+0x76c>
   1b100:	880e1ae3          	bnez	t3,1a994 <_svfprintf_r+0xb50>
   1b104:	000a8913          	mv	s2,s5
   1b108:	00000e13          	li	t3,0
   1b10c:	00000b93          	li	s7,0
   1b110:	17c10d13          	addi	s10,sp,380
   1b114:	de8ff06f          	j	1a6fc <_svfprintf_r+0x8b8>
   1b118:	c8f05c63          	blez	a5,1a5b0 <_svfprintf_r+0x76c>
   1b11c:	00fb4463          	blt	s6,a5,1b124 <_svfprintf_r+0x12e0>
   1b120:	3180106f          	j	1c438 <_svfprintf_r+0x25f4>
   1b124:	00700d13          	li	s10,7
   1b128:	00078d93          	mv	s11,a5
   1b12c:	0100006f          	j	1b13c <_svfprintf_r+0x12f8>
   1b130:	ff0d8d9b          	addiw	s11,s11,-16
   1b134:	0bbb5ce3          	bge	s6,s11,1b9ec <_svfprintf_r+0x1ba8>
   1b138:	001b871b          	addiw	a4,s7,1
   1b13c:	01098993          	addi	s3,s3,16
   1b140:	00007797          	auipc	a5,0x7
   1b144:	56078793          	addi	a5,a5,1376 # 226a0 <zeroes.0>
   1b148:	00f4b023          	sd	a5,0(s1)
   1b14c:	0164b423          	sd	s6,8(s1)
   1b150:	11313823          	sd	s3,272(sp)
   1b154:	00070b9b          	sext.w	s7,a4
   1b158:	10e12423          	sw	a4,264(sp)
   1b15c:	01048493          	addi	s1,s1,16
   1b160:	fd7d58e3          	bge	s10,s7,1b130 <_svfprintf_r+0x12ec>
   1b164:	10010613          	addi	a2,sp,256
   1b168:	000c0593          	mv	a1,s8
   1b16c:	000c8513          	mv	a0,s9
   1b170:	0bc030ef          	jal	ra,1e22c <__ssprint_r>
   1b174:	bc0510e3          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b178:	11013983          	ld	s3,272(sp)
   1b17c:	10812b83          	lw	s7,264(sp)
   1b180:	18010493          	addi	s1,sp,384
   1b184:	fadff06f          	j	1b130 <_svfprintf_r+0x12ec>
   1b188:	01097793          	andi	a5,s2,16
   1b18c:	14079263          	bnez	a5,1b2d0 <_svfprintf_r+0x148c>
   1b190:	01013703          	ld	a4,16(sp)
   1b194:	04097793          	andi	a5,s2,64
   1b198:	00072983          	lw	s3,0(a4)
   1b19c:	0a0784e3          	beqz	a5,1ba44 <_svfprintf_r+0x1c00>
   1b1a0:	03099993          	slli	s3,s3,0x30
   1b1a4:	0309d993          	srli	s3,s3,0x30
   1b1a8:	d18ff06f          	j	1a6c0 <_svfprintf_r+0x87c>
   1b1ac:	01097793          	andi	a5,s2,16
   1b1b0:	10079863          	bnez	a5,1b2c0 <_svfprintf_r+0x147c>
   1b1b4:	04097793          	andi	a5,s2,64
   1b1b8:	06078ae3          	beqz	a5,1ba2c <_svfprintf_r+0x1be8>
   1b1bc:	01013783          	ld	a5,16(sp)
   1b1c0:	00079983          	lh	s3,0(a5)
   1b1c4:	00098793          	mv	a5,s3
   1b1c8:	fa07d663          	bgez	a5,1a974 <_svfprintf_r+0xb30>
   1b1cc:	02d00793          	li	a5,45
   1b1d0:	0cf107a3          	sb	a5,207(sp)
   1b1d4:	413009b3          	neg	s3,s3
   1b1d8:	00d13823          	sd	a3,16(sp)
   1b1dc:	00090a93          	mv	s5,s2
   1b1e0:	00100793          	li	a5,1
   1b1e4:	cf0ff06f          	j	1a6d4 <_svfprintf_r+0x890>
   1b1e8:	010af793          	andi	a5,s5,16
   1b1ec:	0c079063          	bnez	a5,1b2ac <_svfprintf_r+0x1468>
   1b1f0:	01013703          	ld	a4,16(sp)
   1b1f4:	040af793          	andi	a5,s5,64
   1b1f8:	00072983          	lw	s3,0(a4)
   1b1fc:	04078ce3          	beqz	a5,1ba54 <_svfprintf_r+0x1c10>
   1b200:	03099993          	slli	s3,s3,0x30
   1b204:	0309d993          	srli	s3,s3,0x30
   1b208:	00d13823          	sd	a3,16(sp)
   1b20c:	00100793          	li	a5,1
   1b210:	cc0ff06f          	j	1a6d0 <_svfprintf_r+0x88c>
   1b214:	10010613          	addi	a2,sp,256
   1b218:	000c0593          	mv	a1,s8
   1b21c:	000c8513          	mv	a0,s9
   1b220:	00c030ef          	jal	ra,1e22c <__ssprint_r>
   1b224:	b00518e3          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b228:	11013983          	ld	s3,272(sp)
   1b22c:	10812783          	lw	a5,264(sp)
   1b230:	18010493          	addi	s1,sp,384
   1b234:	ae8ff06f          	j	1a51c <_svfprintf_r+0x6d8>
   1b238:	10010613          	addi	a2,sp,256
   1b23c:	000c0593          	mv	a1,s8
   1b240:	000c8513          	mv	a0,s9
   1b244:	7e9020ef          	jal	ra,1e22c <__ssprint_r>
   1b248:	ae0516e3          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b24c:	11013983          	ld	s3,272(sp)
   1b250:	10812b83          	lw	s7,264(sp)
   1b254:	18010493          	addi	s1,sp,384
   1b258:	af0ff06f          	j	1a548 <_svfprintf_r+0x704>
   1b25c:	00197713          	andi	a4,s2,1
   1b260:	00071463          	bnez	a4,1b268 <_svfprintf_r+0x1424>
   1b264:	e99fe06f          	j	1a0fc <_svfprintf_r+0x2b8>
   1b268:	811ff06f          	j	1aa78 <_svfprintf_r+0xc34>
   1b26c:	000b8e13          	mv	t3,s7
   1b270:	ee8ff06f          	j	1a958 <_svfprintf_r+0xb14>
   1b274:	03000793          	li	a5,48
   1b278:	16f10da3          	sb	a5,379(sp)
   1b27c:	17b10d13          	addi	s10,sp,379
   1b280:	c7cff06f          	j	1a6fc <_svfprintf_r+0x8b8>
   1b284:	01013783          	ld	a5,16(sp)
   1b288:	00f78793          	addi	a5,a5,15
   1b28c:	ff07f793          	andi	a5,a5,-16
   1b290:	0007b703          	ld	a4,0(a5)
   1b294:	0087b683          	ld	a3,8(a5)
   1b298:	01078793          	addi	a5,a5,16
   1b29c:	00f13823          	sd	a5,16(sp)
   1b2a0:	0ee13823          	sd	a4,240(sp)
   1b2a4:	0ed13c23          	sd	a3,248(sp)
   1b2a8:	f75fe06f          	j	1a21c <_svfprintf_r+0x3d8>
   1b2ac:	01013783          	ld	a5,16(sp)
   1b2b0:	00d13823          	sd	a3,16(sp)
   1b2b4:	0007b983          	ld	s3,0(a5)
   1b2b8:	00100793          	li	a5,1
   1b2bc:	c14ff06f          	j	1a6d0 <_svfprintf_r+0x88c>
   1b2c0:	01013783          	ld	a5,16(sp)
   1b2c4:	0007b783          	ld	a5,0(a5)
   1b2c8:	00078993          	mv	s3,a5
   1b2cc:	ea4ff06f          	j	1a970 <_svfprintf_r+0xb2c>
   1b2d0:	01013783          	ld	a5,16(sp)
   1b2d4:	0007b983          	ld	s3,0(a5)
   1b2d8:	be8ff06f          	j	1a6c0 <_svfprintf_r+0x87c>
   1b2dc:	00044483          	lbu	s1,0(s0)
   1b2e0:	cadfe06f          	j	19f8c <_svfprintf_r+0x148>
   1b2e4:	0006849b          	sext.w	s1,a3
   1b2e8:	c89048e3          	bgtz	s1,1af78 <_svfprintf_r+0x1134>
   1b2ec:	cb5ff06f          	j	1afa0 <_svfprintf_r+0x115c>
   1b2f0:	00007797          	auipc	a5,0x7
   1b2f4:	b9078793          	addi	a5,a5,-1136 # 21e80 <__clzdi2+0x9c>
   1b2f8:	000b8e13          	mv	t3,s7
   1b2fc:	04f13423          	sd	a5,72(sp)
   1b300:	01013703          	ld	a4,16(sp)
   1b304:	02097793          	andi	a5,s2,32
   1b308:	00870693          	addi	a3,a4,8
   1b30c:	2c078a63          	beqz	a5,1b5e0 <_svfprintf_r+0x179c>
   1b310:	00073983          	ld	s3,0(a4)
   1b314:	00197793          	andi	a5,s2,1
   1b318:	00078e63          	beqz	a5,1b334 <_svfprintf_r+0x14f0>
   1b31c:	00098c63          	beqz	s3,1b334 <_svfprintf_r+0x14f0>
   1b320:	00296913          	ori	s2,s2,2
   1b324:	03000793          	li	a5,48
   1b328:	0cf10823          	sb	a5,208(sp)
   1b32c:	0c9108a3          	sb	s1,209(sp)
   1b330:	0009091b          	sext.w	s2,s2
   1b334:	bff97713          	andi	a4,s2,-1025
   1b338:	00070a9b          	sext.w	s5,a4
   1b33c:	00d13823          	sd	a3,16(sp)
   1b340:	00200793          	li	a5,2
   1b344:	b8cff06f          	j	1a6d0 <_svfprintf_r+0x88c>
   1b348:	000b8e13          	mv	t3,s7
   1b34c:	00090a93          	mv	s5,s2
   1b350:	cb8ff06f          	j	1a808 <_svfprintf_r+0x9c4>
   1b354:	10010613          	addi	a2,sp,256
   1b358:	000c0593          	mv	a1,s8
   1b35c:	000c8513          	mv	a0,s9
   1b360:	6cd020ef          	jal	ra,1e22c <__ssprint_r>
   1b364:	9c0518e3          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b368:	11013783          	ld	a5,272(sp)
   1b36c:	18010d93          	addi	s11,sp,384
   1b370:	f3cff06f          	j	1aaac <_svfprintf_r+0xc68>
   1b374:	20096913          	ori	s2,s2,512
   1b378:	00144483          	lbu	s1,1(s0)
   1b37c:	0009091b          	sext.w	s2,s2
   1b380:	00140413          	addi	s0,s0,1
   1b384:	c09fe06f          	j	19f8c <_svfprintf_r+0x148>
   1b388:	000b8e13          	mv	t3,s7
   1b38c:	b20ff06f          	j	1a6ac <_svfprintf_r+0x868>
   1b390:	02096913          	ori	s2,s2,32
   1b394:	00144483          	lbu	s1,1(s0)
   1b398:	0009091b          	sext.w	s2,s2
   1b39c:	00140413          	addi	s0,s0,1
   1b3a0:	bedfe06f          	j	19f8c <_svfprintf_r+0x148>
   1b3a4:	00007797          	auipc	a5,0x7
   1b3a8:	ac478793          	addi	a5,a5,-1340 # 21e68 <__clzdi2+0x84>
   1b3ac:	000b8e13          	mv	t3,s7
   1b3b0:	04f13423          	sd	a5,72(sp)
   1b3b4:	f4dff06f          	j	1b300 <_svfprintf_r+0x14bc>
   1b3b8:	04000593          	li	a1,64
   1b3bc:	000c8513          	mv	a0,s9
   1b3c0:	85cfc0ef          	jal	ra,1741c <_malloc_r>
   1b3c4:	00ac3023          	sd	a0,0(s8)
   1b3c8:	00ac3c23          	sd	a0,24(s8)
   1b3cc:	00051463          	bnez	a0,1b3d4 <_svfprintf_r+0x1590>
   1b3d0:	1100106f          	j	1c4e0 <_svfprintf_r+0x269c>
   1b3d4:	04000793          	li	a5,64
   1b3d8:	02fc2023          	sw	a5,32(s8)
   1b3dc:	ae9fe06f          	j	19ec4 <_svfprintf_r+0x80>
   1b3e0:	000d0513          	mv	a0,s10
   1b3e4:	abcf50ef          	jal	ra,106a0 <strlen>
   1b3e8:	00050b9b          	sext.w	s7,a0
   1b3ec:	a80ff06f          	j	1a66c <_svfprintf_r+0x828>
   1b3f0:	10812703          	lw	a4,264(sp)
   1b3f4:	6a9b5a63          	bge	s6,s1,1baa8 <_svfprintf_r+0x1c64>
   1b3f8:	00700b93          	li	s7,7
   1b3fc:	00c0006f          	j	1b408 <_svfprintf_r+0x15c4>
   1b400:	ff04849b          	addiw	s1,s1,-16
   1b404:	6a9b5263          	bge	s6,s1,1baa8 <_svfprintf_r+0x1c64>
   1b408:	0017069b          	addiw	a3,a4,1
   1b40c:	01078793          	addi	a5,a5,16
   1b410:	00007717          	auipc	a4,0x7
   1b414:	29070713          	addi	a4,a4,656 # 226a0 <zeroes.0>
   1b418:	00edb023          	sd	a4,0(s11)
   1b41c:	016db423          	sd	s6,8(s11)
   1b420:	10f13823          	sd	a5,272(sp)
   1b424:	0006871b          	sext.w	a4,a3
   1b428:	10d12423          	sw	a3,264(sp)
   1b42c:	010d8d93          	addi	s11,s11,16
   1b430:	fcebd8e3          	bge	s7,a4,1b400 <_svfprintf_r+0x15bc>
   1b434:	10010613          	addi	a2,sp,256
   1b438:	000c0593          	mv	a1,s8
   1b43c:	000c8513          	mv	a0,s9
   1b440:	5ed020ef          	jal	ra,1e22c <__ssprint_r>
   1b444:	8e0518e3          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b448:	11013783          	ld	a5,272(sp)
   1b44c:	10812703          	lw	a4,264(sp)
   1b450:	18010d93          	addi	s11,sp,384
   1b454:	fadff06f          	j	1b400 <_svfprintf_r+0x15bc>
   1b458:	02013703          	ld	a4,32(sp)
   1b45c:	02813b83          	ld	s7,40(sp)
   1b460:	00813c23          	sd	s0,24(sp)
   1b464:	00ed06b3          	add	a3,s10,a4
   1b468:	07213023          	sd	s2,96(sp)
   1b46c:	07413c23          	sd	s4,120(sp)
   1b470:	03513423          	sd	s5,40(sp)
   1b474:	000d8713          	mv	a4,s11
   1b478:	05813403          	ld	s0,88(sp)
   1b47c:	07013a03          	ld	s4,112(sp)
   1b480:	06813983          	ld	s3,104(sp)
   1b484:	03013903          	ld	s2,48(sp)
   1b488:	00700893          	li	a7,7
   1b48c:	000d0d93          	mv	s11,s10
   1b490:	00068a93          	mv	s5,a3
   1b494:	080b8e63          	beqz	s7,1b530 <_svfprintf_r+0x16ec>
   1b498:	08091e63          	bnez	s2,1b534 <_svfprintf_r+0x16f0>
   1b49c:	fff40413          	addi	s0,s0,-1
   1b4a0:	fffb8b9b          	addiw	s7,s7,-1
   1b4a4:	10812683          	lw	a3,264(sp)
   1b4a8:	013787b3          	add	a5,a5,s3
   1b4ac:	01473023          	sd	s4,0(a4)
   1b4b0:	0016861b          	addiw	a2,a3,1
   1b4b4:	01373423          	sd	s3,8(a4)
   1b4b8:	10f13823          	sd	a5,272(sp)
   1b4bc:	10c12423          	sw	a2,264(sp)
   1b4c0:	01070713          	addi	a4,a4,16
   1b4c4:	12c8c863          	blt	a7,a2,1b5f4 <_svfprintf_r+0x17b0>
   1b4c8:	00044603          	lbu	a2,0(s0)
   1b4cc:	409a853b          	subw	a0,s5,s1
   1b4d0:	0006069b          	sext.w	a3,a2
   1b4d4:	00068813          	mv	a6,a3
   1b4d8:	00d55463          	bge	a0,a3,1b4e0 <_svfprintf_r+0x169c>
   1b4dc:	00050813          	mv	a6,a0
   1b4e0:	00080d1b          	sext.w	s10,a6
   1b4e4:	03a05863          	blez	s10,1b514 <_svfprintf_r+0x16d0>
   1b4e8:	10812683          	lw	a3,264(sp)
   1b4ec:	01a787b3          	add	a5,a5,s10
   1b4f0:	00973023          	sd	s1,0(a4)
   1b4f4:	0016861b          	addiw	a2,a3,1
   1b4f8:	01a73423          	sd	s10,8(a4)
   1b4fc:	10f13823          	sd	a5,272(sp)
   1b500:	10c12423          	sw	a2,264(sp)
   1b504:	38c8ca63          	blt	a7,a2,1b898 <_svfprintf_r+0x1a54>
   1b508:	00044603          	lbu	a2,0(s0)
   1b50c:	01070713          	addi	a4,a4,16
   1b510:	0006069b          	sext.w	a3,a2
   1b514:	fffd4513          	not	a0,s10
   1b518:	43f55513          	srai	a0,a0,0x3f
   1b51c:	00ad7833          	and	a6,s10,a0
   1b520:	41068d3b          	subw	s10,a3,a6
   1b524:	01a04c63          	bgtz	s10,1b53c <_svfprintf_r+0x16f8>
   1b528:	00c484b3          	add	s1,s1,a2
   1b52c:	f60b96e3          	bnez	s7,1b498 <_svfprintf_r+0x1654>
   1b530:	6c090063          	beqz	s2,1bbf0 <_svfprintf_r+0x1dac>
   1b534:	fff9091b          	addiw	s2,s2,-1
   1b538:	f6dff06f          	j	1b4a4 <_svfprintf_r+0x1660>
   1b53c:	10812603          	lw	a2,264(sp)
   1b540:	01ab4863          	blt	s6,s10,1b550 <_svfprintf_r+0x170c>
   1b544:	0640006f          	j	1b5a8 <_svfprintf_r+0x1764>
   1b548:	ff0d0d1b          	addiw	s10,s10,-16
   1b54c:	05ab5e63          	bge	s6,s10,1b5a8 <_svfprintf_r+0x1764>
   1b550:	0016069b          	addiw	a3,a2,1
   1b554:	01078793          	addi	a5,a5,16
   1b558:	00007617          	auipc	a2,0x7
   1b55c:	14860613          	addi	a2,a2,328 # 226a0 <zeroes.0>
   1b560:	00c73023          	sd	a2,0(a4)
   1b564:	01673423          	sd	s6,8(a4)
   1b568:	10f13823          	sd	a5,272(sp)
   1b56c:	0006861b          	sext.w	a2,a3
   1b570:	10d12423          	sw	a3,264(sp)
   1b574:	01070713          	addi	a4,a4,16
   1b578:	fcc8d8e3          	bge	a7,a2,1b548 <_svfprintf_r+0x1704>
   1b57c:	10010613          	addi	a2,sp,256
   1b580:	000c0593          	mv	a1,s8
   1b584:	000c8513          	mv	a0,s9
   1b588:	4a5020ef          	jal	ra,1e22c <__ssprint_r>
   1b58c:	fa051463          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b590:	ff0d0d1b          	addiw	s10,s10,-16
   1b594:	11013783          	ld	a5,272(sp)
   1b598:	10812603          	lw	a2,264(sp)
   1b59c:	18010713          	addi	a4,sp,384
   1b5a0:	00700893          	li	a7,7
   1b5a4:	fbab46e3          	blt	s6,s10,1b550 <_svfprintf_r+0x170c>
   1b5a8:	0016061b          	addiw	a2,a2,1
   1b5ac:	00007697          	auipc	a3,0x7
   1b5b0:	0f468693          	addi	a3,a3,244 # 226a0 <zeroes.0>
   1b5b4:	01a787b3          	add	a5,a5,s10
   1b5b8:	00d73023          	sd	a3,0(a4)
   1b5bc:	01a73423          	sd	s10,8(a4)
   1b5c0:	10f13823          	sd	a5,272(sp)
   1b5c4:	0006069b          	sext.w	a3,a2
   1b5c8:	10c12423          	sw	a2,264(sp)
   1b5cc:	6ed8c063          	blt	a7,a3,1bcac <_svfprintf_r+0x1e68>
   1b5d0:	00044603          	lbu	a2,0(s0)
   1b5d4:	01070713          	addi	a4,a4,16
   1b5d8:	00c484b3          	add	s1,s1,a2
   1b5dc:	f51ff06f          	j	1b52c <_svfprintf_r+0x16e8>
   1b5e0:	01097793          	andi	a5,s2,16
   1b5e4:	22078c63          	beqz	a5,1b81c <_svfprintf_r+0x19d8>
   1b5e8:	01013783          	ld	a5,16(sp)
   1b5ec:	0007b983          	ld	s3,0(a5)
   1b5f0:	d25ff06f          	j	1b314 <_svfprintf_r+0x14d0>
   1b5f4:	10010613          	addi	a2,sp,256
   1b5f8:	000c0593          	mv	a1,s8
   1b5fc:	000c8513          	mv	a0,s9
   1b600:	42d020ef          	jal	ra,1e22c <__ssprint_r>
   1b604:	f2051863          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b608:	11013783          	ld	a5,272(sp)
   1b60c:	18010713          	addi	a4,sp,384
   1b610:	00700893          	li	a7,7
   1b614:	eb5ff06f          	j	1b4c8 <_svfprintf_r+0x1684>
   1b618:	10010613          	addi	a2,sp,256
   1b61c:	000c0593          	mv	a1,s8
   1b620:	000c8513          	mv	a0,s9
   1b624:	409020ef          	jal	ra,1e22c <__ssprint_r>
   1b628:	f0051663          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b62c:	10812683          	lw	a3,264(sp)
   1b630:	11013983          	ld	s3,272(sp)
   1b634:	19010d93          	addi	s11,sp,400
   1b638:	0016869b          	addiw	a3,a3,1
   1b63c:	18010493          	addi	s1,sp,384
   1b640:	f71fe06f          	j	1a5b0 <_svfprintf_r+0x76c>
   1b644:	00813c23          	sd	s0,24(sp)
   1b648:	05813403          	ld	s0,88(sp)
   1b64c:	17c10b93          	addi	s7,sp,380
   1b650:	400af913          	andi	s2,s5,1024
   1b654:	00000793          	li	a5,0
   1b658:	000b8d13          	mv	s10,s7
   1b65c:	00913423          	sd	s1,8(sp)
   1b660:	03413423          	sd	s4,40(sp)
   1b664:	000b8493          	mv	s1,s7
   1b668:	00098a13          	mv	s4,s3
   1b66c:	000e0b93          	mv	s7,t3
   1b670:	00090993          	mv	s3,s2
   1b674:	00078913          	mv	s2,a5
   1b678:	00a00593          	li	a1,10
   1b67c:	000a0513          	mv	a0,s4
   1b680:	6f4060ef          	jal	ra,21d74 <__umoddi3>
   1b684:	0305051b          	addiw	a0,a0,48
   1b688:	fea48fa3          	sb	a0,-1(s1)
   1b68c:	0019091b          	addiw	s2,s2,1
   1b690:	fff48493          	addi	s1,s1,-1
   1b694:	00098663          	beqz	s3,1b6a0 <_svfprintf_r+0x185c>
   1b698:	00044683          	lbu	a3,0(s0)
   1b69c:	04d90663          	beq	s2,a3,1b6e8 <_svfprintf_r+0x18a4>
   1b6a0:	00a00593          	li	a1,10
   1b6a4:	000a0513          	mv	a0,s4
   1b6a8:	684060ef          	jal	ra,21d2c <__udivdi3>
   1b6ac:	00900793          	li	a5,9
   1b6b0:	0147f663          	bgeu	a5,s4,1b6bc <_svfprintf_r+0x1878>
   1b6b4:	00050a13          	mv	s4,a0
   1b6b8:	fc1ff06f          	j	1b678 <_svfprintf_r+0x1834>
   1b6bc:	000b8e13          	mv	t3,s7
   1b6c0:	000d0b93          	mv	s7,s10
   1b6c4:	00048d13          	mv	s10,s1
   1b6c8:	04813c23          	sd	s0,88(sp)
   1b6cc:	03213023          	sd	s2,32(sp)
   1b6d0:	01813403          	ld	s0,24(sp)
   1b6d4:	02813a03          	ld	s4,40(sp)
   1b6d8:	00813483          	ld	s1,8(sp)
   1b6dc:	41ab8bbb          	subw	s7,s7,s10
   1b6e0:	000a8913          	mv	s2,s5
   1b6e4:	818ff06f          	j	1a6fc <_svfprintf_r+0x8b8>
   1b6e8:	0ff00793          	li	a5,255
   1b6ec:	faf68ae3          	beq	a3,a5,1b6a0 <_svfprintf_r+0x185c>
   1b6f0:	00900793          	li	a5,9
   1b6f4:	fd47f4e3          	bgeu	a5,s4,1b6bc <_svfprintf_r+0x1878>
   1b6f8:	06813783          	ld	a5,104(sp)
   1b6fc:	07013583          	ld	a1,112(sp)
   1b700:	00000913          	li	s2,0
   1b704:	40f484b3          	sub	s1,s1,a5
   1b708:	00078613          	mv	a2,a5
   1b70c:	00048513          	mv	a0,s1
   1b710:	e8cfe0ef          	jal	ra,19d9c <strncpy>
   1b714:	00144683          	lbu	a3,1(s0)
   1b718:	000a0513          	mv	a0,s4
   1b71c:	00a00593          	li	a1,10
   1b720:	00d03733          	snez	a4,a3
   1b724:	00e40433          	add	s0,s0,a4
   1b728:	604060ef          	jal	ra,21d2c <__udivdi3>
   1b72c:	00050a13          	mv	s4,a0
   1b730:	f49ff06f          	j	1b678 <_svfprintf_r+0x1834>
   1b734:	10812703          	lw	a4,264(sp)
   1b738:	00006697          	auipc	a3,0x6
   1b73c:	76868693          	addi	a3,a3,1896 # 21ea0 <__clzdi2+0xbc>
   1b740:	00ddb023          	sd	a3,0(s11)
   1b744:	0017071b          	addiw	a4,a4,1
   1b748:	00100693          	li	a3,1
   1b74c:	00178793          	addi	a5,a5,1
   1b750:	00ddb423          	sd	a3,8(s11)
   1b754:	10e12423          	sw	a4,264(sp)
   1b758:	0007069b          	sext.w	a3,a4
   1b75c:	10f13823          	sd	a5,272(sp)
   1b760:	00700713          	li	a4,7
   1b764:	010d8d93          	addi	s11,s11,16
   1b768:	08d74263          	blt	a4,a3,1b7ec <_svfprintf_r+0x19a8>
   1b76c:	1c061e63          	bnez	a2,1b948 <_svfprintf_r+0x1b04>
   1b770:	02013683          	ld	a3,32(sp)
   1b774:	00197713          	andi	a4,s2,1
   1b778:	00e6e733          	or	a4,a3,a4
   1b77c:	00071463          	bnez	a4,1b784 <_svfprintf_r+0x1940>
   1b780:	97dfe06f          	j	1a0fc <_svfprintf_r+0x2b8>
   1b784:	04013683          	ld	a3,64(sp)
   1b788:	03813703          	ld	a4,56(sp)
   1b78c:	010d8313          	addi	t1,s11,16
   1b790:	00ddb023          	sd	a3,0(s11)
   1b794:	10812683          	lw	a3,264(sp)
   1b798:	00f707b3          	add	a5,a4,a5
   1b79c:	00edb423          	sd	a4,8(s11)
   1b7a0:	0016869b          	addiw	a3,a3,1
   1b7a4:	0006871b          	sext.w	a4,a3
   1b7a8:	10d12423          	sw	a3,264(sp)
   1b7ac:	10f13823          	sd	a5,272(sp)
   1b7b0:	00700693          	li	a3,7
   1b7b4:	40e6c463          	blt	a3,a4,1bbbc <_svfprintf_r+0x1d78>
   1b7b8:	02013683          	ld	a3,32(sp)
   1b7bc:	0017071b          	addiw	a4,a4,1
   1b7c0:	10e12423          	sw	a4,264(sp)
   1b7c4:	00f687b3          	add	a5,a3,a5
   1b7c8:	00d33423          	sd	a3,8(t1)
   1b7cc:	01a33023          	sd	s10,0(t1)
   1b7d0:	0007069b          	sext.w	a3,a4
   1b7d4:	10f13823          	sd	a5,272(sp)
   1b7d8:	00700713          	li	a4,7
   1b7dc:	01030d93          	addi	s11,t1,16
   1b7e0:	00d74463          	blt	a4,a3,1b7e8 <_svfprintf_r+0x19a4>
   1b7e4:	919fe06f          	j	1a0fc <_svfprintf_r+0x2b8>
   1b7e8:	dedfe06f          	j	1a5d4 <_svfprintf_r+0x790>
   1b7ec:	10010613          	addi	a2,sp,256
   1b7f0:	000c0593          	mv	a1,s8
   1b7f4:	000c8513          	mv	a0,s9
   1b7f8:	235020ef          	jal	ra,1e22c <__ssprint_r>
   1b7fc:	d2051c63          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b800:	0d812603          	lw	a2,216(sp)
   1b804:	11013783          	ld	a5,272(sp)
   1b808:	18010d93          	addi	s11,sp,384
   1b80c:	f61ff06f          	j	1b76c <_svfprintf_r+0x1928>
   1b810:	00048c93          	mv	s9,s1
   1b814:	00090c13          	mv	s8,s2
   1b818:	d1cff06f          	j	1ad34 <_svfprintf_r+0xef0>
   1b81c:	01013703          	ld	a4,16(sp)
   1b820:	04097793          	andi	a5,s2,64
   1b824:	00072983          	lw	s3,0(a4)
   1b828:	24078263          	beqz	a5,1ba6c <_svfprintf_r+0x1c28>
   1b82c:	03099993          	slli	s3,s3,0x30
   1b830:	0309d993          	srli	s3,s3,0x30
   1b834:	ae1ff06f          	j	1b314 <_svfprintf_r+0x14d0>
   1b838:	00090a93          	mv	s5,s2
   1b83c:	00d13823          	sd	a3,16(sp)
   1b840:	94cff06f          	j	1a98c <_svfprintf_r+0xb48>
   1b844:	10010613          	addi	a2,sp,256
   1b848:	000c0593          	mv	a1,s8
   1b84c:	000c8513          	mv	a0,s9
   1b850:	1dd020ef          	jal	ra,1e22c <__ssprint_r>
   1b854:	ce051063          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b858:	11013783          	ld	a5,272(sp)
   1b85c:	18010d93          	addi	s11,sp,384
   1b860:	a0cff06f          	j	1aa6c <_svfprintf_r+0xc28>
   1b864:	00007697          	auipc	a3,0x7
   1b868:	e3c68693          	addi	a3,a3,-452 # 226a0 <zeroes.0>
   1b86c:	0017071b          	addiw	a4,a4,1
   1b870:	00ddb023          	sd	a3,0(s11)
   1b874:	009db423          	sd	s1,8(s11)
   1b878:	009787b3          	add	a5,a5,s1
   1b87c:	0007069b          	sext.w	a3,a4
   1b880:	10e12423          	sw	a4,264(sp)
   1b884:	10f13823          	sd	a5,272(sp)
   1b888:	00700713          	li	a4,7
   1b88c:	00d74463          	blt	a4,a3,1b894 <_svfprintf_r+0x1a50>
   1b890:	869fe06f          	j	1a0f8 <_svfprintf_r+0x2b4>
   1b894:	d41fe06f          	j	1a5d4 <_svfprintf_r+0x790>
   1b898:	10010613          	addi	a2,sp,256
   1b89c:	000c0593          	mv	a1,s8
   1b8a0:	000c8513          	mv	a0,s9
   1b8a4:	189020ef          	jal	ra,1e22c <__ssprint_r>
   1b8a8:	c8051663          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b8ac:	00044603          	lbu	a2,0(s0)
   1b8b0:	11013783          	ld	a5,272(sp)
   1b8b4:	18010713          	addi	a4,sp,384
   1b8b8:	0006069b          	sext.w	a3,a2
   1b8bc:	00700893          	li	a7,7
   1b8c0:	c55ff06f          	j	1b514 <_svfprintf_r+0x16d0>
   1b8c4:	00040c13          	mv	s8,s0
   1b8c8:	c6cff06f          	j	1ad34 <_svfprintf_r+0xef0>
   1b8cc:	0f013503          	ld	a0,240(sp)
   1b8d0:	0f813583          	ld	a1,248(sp)
   1b8d4:	00000613          	li	a2,0
   1b8d8:	00000693          	li	a3,0
   1b8dc:	175040ef          	jal	ra,20250 <__letf2>
   1b8e0:	4c054263          	bltz	a0,1bda4 <_svfprintf_r+0x1f60>
   1b8e4:	0cf14783          	lbu	a5,207(sp)
   1b8e8:	04700713          	li	a4,71
   1b8ec:	00006d17          	auipc	s10,0x6
   1b8f0:	55cd0d13          	addi	s10,s10,1372 # 21e48 <__clzdi2+0x64>
   1b8f4:	20974263          	blt	a4,s1,1baf8 <_svfprintf_r+0x1cb4>
   1b8f8:	f7f97913          	andi	s2,s2,-129
   1b8fc:	00013423          	sd	zero,8(sp)
   1b900:	02013823          	sd	zero,48(sp)
   1b904:	02013423          	sd	zero,40(sp)
   1b908:	00013c23          	sd	zero,24(sp)
   1b90c:	0009091b          	sext.w	s2,s2
   1b910:	00300a93          	li	s5,3
   1b914:	00300b93          	li	s7,3
   1b918:	00000e13          	li	t3,0
   1b91c:	00078463          	beqz	a5,1b924 <_svfprintf_r+0x1ae0>
   1b920:	d79fe06f          	j	1a698 <_svfprintf_r+0x854>
   1b924:	f04fe06f          	j	1a028 <_svfprintf_r+0x1e4>
   1b928:	00600793          	li	a5,6
   1b92c:	000b8b9b          	sext.w	s7,s7
   1b930:	1fc7ea63          	bltu	a5,t3,1bb24 <_svfprintf_r+0x1ce0>
   1b934:	000b8a93          	mv	s5,s7
   1b938:	01313823          	sd	s3,16(sp)
   1b93c:	00006d17          	auipc	s10,0x6
   1b940:	55cd0d13          	addi	s10,s10,1372 # 21e98 <__clzdi2+0xb4>
   1b944:	ed0fe06f          	j	1a014 <_svfprintf_r+0x1d0>
   1b948:	04013683          	ld	a3,64(sp)
   1b94c:	03813703          	ld	a4,56(sp)
   1b950:	010d8313          	addi	t1,s11,16
   1b954:	00ddb023          	sd	a3,0(s11)
   1b958:	10812683          	lw	a3,264(sp)
   1b95c:	00f707b3          	add	a5,a4,a5
   1b960:	00edb423          	sd	a4,8(s11)
   1b964:	0016869b          	addiw	a3,a3,1
   1b968:	0006871b          	sext.w	a4,a3
   1b96c:	10d12423          	sw	a3,264(sp)
   1b970:	10f13823          	sd	a5,272(sp)
   1b974:	00700693          	li	a3,7
   1b978:	24e6c263          	blt	a3,a4,1bbbc <_svfprintf_r+0x1d78>
   1b97c:	e2065ee3          	bgez	a2,1b7b8 <_svfprintf_r+0x1974>
   1b980:	ff000693          	li	a3,-16
   1b984:	40c004bb          	negw	s1,a2
   1b988:	08d652e3          	bge	a2,a3,1c20c <_svfprintf_r+0x23c8>
   1b98c:	00700993          	li	s3,7
   1b990:	00c0006f          	j	1b99c <_svfprintf_r+0x1b58>
   1b994:	ff04849b          	addiw	s1,s1,-16
   1b998:	069b5ae3          	bge	s6,s1,1c20c <_svfprintf_r+0x23c8>
   1b99c:	0017069b          	addiw	a3,a4,1
   1b9a0:	01078793          	addi	a5,a5,16
   1b9a4:	00007717          	auipc	a4,0x7
   1b9a8:	cfc70713          	addi	a4,a4,-772 # 226a0 <zeroes.0>
   1b9ac:	00e33023          	sd	a4,0(t1)
   1b9b0:	01633423          	sd	s6,8(t1)
   1b9b4:	10f13823          	sd	a5,272(sp)
   1b9b8:	0006871b          	sext.w	a4,a3
   1b9bc:	10d12423          	sw	a3,264(sp)
   1b9c0:	01030313          	addi	t1,t1,16
   1b9c4:	fce9d8e3          	bge	s3,a4,1b994 <_svfprintf_r+0x1b50>
   1b9c8:	10010613          	addi	a2,sp,256
   1b9cc:	000c0593          	mv	a1,s8
   1b9d0:	000c8513          	mv	a0,s9
   1b9d4:	059020ef          	jal	ra,1e22c <__ssprint_r>
   1b9d8:	b4051e63          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1b9dc:	11013783          	ld	a5,272(sp)
   1b9e0:	10812703          	lw	a4,264(sp)
   1b9e4:	18010313          	addi	t1,sp,384
   1b9e8:	fadff06f          	j	1b994 <_svfprintf_r+0x1b50>
   1b9ec:	000d8793          	mv	a5,s11
   1b9f0:	001b869b          	addiw	a3,s7,1
   1b9f4:	01048713          	addi	a4,s1,16
   1b9f8:	00f989b3          	add	s3,s3,a5
   1b9fc:	00007617          	auipc	a2,0x7
   1ba00:	ca460613          	addi	a2,a2,-860 # 226a0 <zeroes.0>
   1ba04:	00f4b423          	sd	a5,8(s1)
   1ba08:	00c4b023          	sd	a2,0(s1)
   1ba0c:	11313823          	sd	s3,272(sp)
   1ba10:	10d12423          	sw	a3,264(sp)
   1ba14:	00700793          	li	a5,7
   1ba18:	c0d7c0e3          	blt	a5,a3,1b618 <_svfprintf_r+0x17d4>
   1ba1c:	0016869b          	addiw	a3,a3,1
   1ba20:	01070d93          	addi	s11,a4,16
   1ba24:	00070493          	mv	s1,a4
   1ba28:	b89fe06f          	j	1a5b0 <_svfprintf_r+0x76c>
   1ba2c:	20097793          	andi	a5,s2,512
   1ba30:	14078e63          	beqz	a5,1bb8c <_svfprintf_r+0x1d48>
   1ba34:	01013783          	ld	a5,16(sp)
   1ba38:	00078983          	lb	s3,0(a5)
   1ba3c:	00098793          	mv	a5,s3
   1ba40:	f31fe06f          	j	1a970 <_svfprintf_r+0xb2c>
   1ba44:	20097793          	andi	a5,s2,512
   1ba48:	12078c63          	beqz	a5,1bb80 <_svfprintf_r+0x1d3c>
   1ba4c:	0ff9f993          	andi	s3,s3,255
   1ba50:	c71fe06f          	j	1a6c0 <_svfprintf_r+0x87c>
   1ba54:	200af793          	andi	a5,s5,512
   1ba58:	10078a63          	beqz	a5,1bb6c <_svfprintf_r+0x1d28>
   1ba5c:	0ff9f993          	andi	s3,s3,255
   1ba60:	00d13823          	sd	a3,16(sp)
   1ba64:	00100793          	li	a5,1
   1ba68:	c69fe06f          	j	1a6d0 <_svfprintf_r+0x88c>
   1ba6c:	20097793          	andi	a5,s2,512
   1ba70:	0e078863          	beqz	a5,1bb60 <_svfprintf_r+0x1d1c>
   1ba74:	0ff9f993          	andi	s3,s3,255
   1ba78:	89dff06f          	j	1b314 <_svfprintf_r+0x14d0>
   1ba7c:	0f813783          	ld	a5,248(sp)
   1ba80:	1207da63          	bgez	a5,1bbb4 <_svfprintf_r+0x1d70>
   1ba84:	02d00793          	li	a5,45
   1ba88:	0cf107a3          	sb	a5,207(sp)
   1ba8c:	04700713          	li	a4,71
   1ba90:	00006d17          	auipc	s10,0x6
   1ba94:	3c8d0d13          	addi	s10,s10,968 # 21e58 <__clzdi2+0x74>
   1ba98:	e69750e3          	bge	a4,s1,1b8f8 <_svfprintf_r+0x1ab4>
   1ba9c:	00006d17          	auipc	s10,0x6
   1baa0:	3c4d0d13          	addi	s10,s10,964 # 21e60 <__clzdi2+0x7c>
   1baa4:	e55ff06f          	j	1b8f8 <_svfprintf_r+0x1ab4>
   1baa8:	0017071b          	addiw	a4,a4,1
   1baac:	00007697          	auipc	a3,0x7
   1bab0:	bf468693          	addi	a3,a3,-1036 # 226a0 <zeroes.0>
   1bab4:	009787b3          	add	a5,a5,s1
   1bab8:	00ddb023          	sd	a3,0(s11)
   1babc:	009db423          	sd	s1,8(s11)
   1bac0:	0007069b          	sext.w	a3,a4
   1bac4:	10e12423          	sw	a4,264(sp)
   1bac8:	10f13823          	sd	a5,272(sp)
   1bacc:	00700713          	li	a4,7
   1bad0:	010d8d93          	addi	s11,s11,16
   1bad4:	ced75263          	bge	a4,a3,1afb8 <_svfprintf_r+0x1174>
   1bad8:	10010613          	addi	a2,sp,256
   1badc:	000c0593          	mv	a1,s8
   1bae0:	000c8513          	mv	a0,s9
   1bae4:	748020ef          	jal	ra,1e22c <__ssprint_r>
   1bae8:	a4051663          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1baec:	11013783          	ld	a5,272(sp)
   1baf0:	18010d93          	addi	s11,sp,384
   1baf4:	cc4ff06f          	j	1afb8 <_svfprintf_r+0x1174>
   1baf8:	00006d17          	auipc	s10,0x6
   1bafc:	358d0d13          	addi	s10,s10,856 # 21e50 <__clzdi2+0x6c>
   1bb00:	df9ff06f          	j	1b8f8 <_svfprintf_r+0x1ab4>
   1bb04:	10010613          	addi	a2,sp,256
   1bb08:	000c0593          	mv	a1,s8
   1bb0c:	000c8513          	mv	a0,s9
   1bb10:	71c020ef          	jal	ra,1e22c <__ssprint_r>
   1bb14:	a2051063          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1bb18:	11013783          	ld	a5,272(sp)
   1bb1c:	18010d93          	addi	s11,sp,384
   1bb20:	c80ff06f          	j	1afa0 <_svfprintf_r+0x115c>
   1bb24:	00600b93          	li	s7,6
   1bb28:	e0dff06f          	j	1b934 <_svfprintf_r+0x1af0>
   1bb2c:	02013683          	ld	a3,32(sp)
   1bb30:	00dd0833          	add	a6,s10,a3
   1bb34:	40e6863b          	subw	a2,a3,a4
   1bb38:	40980e3b          	subw	t3,a6,s1
   1bb3c:	00060493          	mv	s1,a2
   1bb40:	00ce5463          	bge	t3,a2,1bb48 <_svfprintf_r+0x1d04>
   1bb44:	000e0493          	mv	s1,t3
   1bb48:	0004899b          	sext.w	s3,s1
   1bb4c:	d10ff06f          	j	1b05c <_svfprintf_r+0x1218>
   1bb50:	00013783          	ld	a5,0(sp)
   1bb54:	00040d13          	mv	s10,s0
   1bb58:	00f71023          	sh	a5,0(a4)
   1bb5c:	decfe06f          	j	1a148 <_svfprintf_r+0x304>
   1bb60:	02099993          	slli	s3,s3,0x20
   1bb64:	0209d993          	srli	s3,s3,0x20
   1bb68:	facff06f          	j	1b314 <_svfprintf_r+0x14d0>
   1bb6c:	02099993          	slli	s3,s3,0x20
   1bb70:	0209d993          	srli	s3,s3,0x20
   1bb74:	00d13823          	sd	a3,16(sp)
   1bb78:	00100793          	li	a5,1
   1bb7c:	b55fe06f          	j	1a6d0 <_svfprintf_r+0x88c>
   1bb80:	02099993          	slli	s3,s3,0x20
   1bb84:	0209d993          	srli	s3,s3,0x20
   1bb88:	b39fe06f          	j	1a6c0 <_svfprintf_r+0x87c>
   1bb8c:	01013783          	ld	a5,16(sp)
   1bb90:	0007a983          	lw	s3,0(a5)
   1bb94:	00098793          	mv	a5,s3
   1bb98:	dd9fe06f          	j	1a970 <_svfprintf_r+0xb2c>
   1bb9c:	10010613          	addi	a2,sp,256
   1bba0:	000c0593          	mv	a1,s8
   1bba4:	000c8513          	mv	a0,s9
   1bba8:	684020ef          	jal	ra,1e22c <__ssprint_r>
   1bbac:	010c5783          	lhu	a5,16(s8)
   1bbb0:	db0fe06f          	j	1a160 <_svfprintf_r+0x31c>
   1bbb4:	0cf14783          	lbu	a5,207(sp)
   1bbb8:	ed5ff06f          	j	1ba8c <_svfprintf_r+0x1c48>
   1bbbc:	10010613          	addi	a2,sp,256
   1bbc0:	000c0593          	mv	a1,s8
   1bbc4:	000c8513          	mv	a0,s9
   1bbc8:	664020ef          	jal	ra,1e22c <__ssprint_r>
   1bbcc:	96051463          	bnez	a0,1ad34 <_svfprintf_r+0xef0>
   1bbd0:	0d812603          	lw	a2,216(sp)
   1bbd4:	11013783          	ld	a5,272(sp)
   1bbd8:	10812703          	lw	a4,264(sp)
   1bbdc:	18010313          	addi	t1,sp,384
   1bbe0:	bc065ce3          	bgez	a2,1b7b8 <_svfprintf_r+0x1974>
   1bbe4:	d9dff06f          	j	1b980 <_svfprintf_r+0x1b3c>
   1bbe8:	00600e13          	li	t3,6
   1bbec:	e94fe06f          	j	1a280 <_svfprintf_r+0x43c>
   1bbf0:	000d8d13          	mv	s10,s11
   1bbf4:	00070d93          	mv	s11,a4
   1bbf8:	02013703          	ld	a4,32(sp)
   1bbfc:	04813c23          	sd	s0,88(sp)
   1bc00:	06013903          	ld	s2,96(sp)
   1bc04:	00ed0733          	add	a4,s10,a4
   1bc08:	01813403          	ld	s0,24(sp)
   1bc0c:	07813a03          	ld	s4,120(sp)
   1bc10:	02813a83          	ld	s5,40(sp)
   1bc14:	ba977a63          	bgeu	a4,s1,1afc8 <_svfprintf_r+0x1184>
   1bc18:	00070493          	mv	s1,a4
   1bc1c:	bacff06f          	j	1afc8 <_svfprintf_r+0x1184>
   1bc20:	01813703          	ld	a4,24(sp)
   1bc24:	ffd00793          	li	a5,-3
   1bc28:	00f74463          	blt	a4,a5,1bc30 <_svfprintf_r+0x1dec>
   1bc2c:	00ee5a63          	bge	t3,a4,1bc40 <_svfprintf_r+0x1dfc>
   1bc30:	ffe4849b          	addiw	s1,s1,-2
   1bc34:	fdf4f793          	andi	a5,s1,-33
   1bc38:	02f13423          	sd	a5,40(sp)
   1bc3c:	f0cfe06f          	j	1a348 <_svfprintf_r+0x504>
   1bc40:	01813703          	ld	a4,24(sp)
   1bc44:	02013783          	ld	a5,32(sp)
   1bc48:	1af74e63          	blt	a4,a5,1be04 <_svfprintf_r+0x1fc0>
   1bc4c:	03013783          	ld	a5,48(sp)
   1bc50:	00070b93          	mv	s7,a4
   1bc54:	0017f793          	andi	a5,a5,1
   1bc58:	00078663          	beqz	a5,1bc64 <_svfprintf_r+0x1e20>
   1bc5c:	03813783          	ld	a5,56(sp)
   1bc60:	00e78bbb          	addw	s7,a5,a4
   1bc64:	03013783          	ld	a5,48(sp)
   1bc68:	4007f793          	andi	a5,a5,1024
   1bc6c:	00078663          	beqz	a5,1bc78 <_svfprintf_r+0x1e34>
   1bc70:	01813783          	ld	a5,24(sp)
   1bc74:	68f04e63          	bgtz	a5,1c310 <_svfprintf_r+0x24cc>
   1bc78:	fffbca93          	not	s5,s7
   1bc7c:	43fada93          	srai	s5,s5,0x3f
   1bc80:	015bfab3          	and	s5,s7,s5
   1bc84:	000a8a9b          	sext.w	s5,s5
   1bc88:	06700493          	li	s1,103
   1bc8c:	02013823          	sd	zero,48(sp)
   1bc90:	02013423          	sd	zero,40(sp)
   1bc94:	ff4fe06f          	j	1a488 <_svfprintf_r+0x644>
   1bc98:	0cf14783          	lbu	a5,207(sp)
   1bc9c:	00000e13          	li	t3,0
   1bca0:	00078463          	beqz	a5,1bca8 <_svfprintf_r+0x1e64>
   1bca4:	9f5fe06f          	j	1a698 <_svfprintf_r+0x854>
   1bca8:	b80fe06f          	j	1a028 <_svfprintf_r+0x1e4>
   1bcac:	10010613          	addi	a2,sp,256
   1bcb0:	000c0593          	mv	a1,s8
   1bcb4:	000c8513          	mv	a0,s9
   1bcb8:	574020ef          	jal	ra,1e22c <__ssprint_r>
   1bcbc:	00050463          	beqz	a0,1bcc4 <_svfprintf_r+0x1e80>
   1bcc0:	874ff06f          	j	1ad34 <_svfprintf_r+0xef0>
   1bcc4:	00044603          	lbu	a2,0(s0)
   1bcc8:	11013783          	ld	a5,272(sp)
   1bccc:	18010713          	addi	a4,sp,384
   1bcd0:	00700893          	li	a7,7
   1bcd4:	00c484b3          	add	s1,s1,a2
   1bcd8:	855ff06f          	j	1b52c <_svfprintf_r+0x16e8>
   1bcdc:	000e0713          	mv	a4,t3
   1bce0:	0d810793          	addi	a5,sp,216
   1bce4:	0e810893          	addi	a7,sp,232
   1bce8:	0dc10813          	addi	a6,sp,220
   1bcec:	00300693          	li	a3,3
   1bcf0:	000b8593          	mv	a1,s7
   1bcf4:	000a8613          	mv	a2,s5
   1bcf8:	000c8513          	mv	a0,s9
   1bcfc:	01c13c23          	sd	t3,24(sp)
   1bd00:	83cfa0ef          	jal	ra,15d3c <_ldtoa_r>
   1bd04:	00054703          	lbu	a4,0(a0)
   1bd08:	03000793          	li	a5,48
   1bd0c:	01813e03          	ld	t3,24(sp)
   1bd10:	00050d13          	mv	s10,a0
   1bd14:	06f70063          	beq	a4,a5,1bd74 <_svfprintf_r+0x1f30>
   1bd18:	0d812783          	lw	a5,216(sp)
   1bd1c:	01c787b3          	add	a5,a5,t3
   1bd20:	00fd09b3          	add	s3,s10,a5
   1bd24:	00000613          	li	a2,0
   1bd28:	00000693          	li	a3,0
   1bd2c:	000b8513          	mv	a0,s7
   1bd30:	000a8593          	mv	a1,s5
   1bd34:	01c13c23          	sd	t3,24(sp)
   1bd38:	364040ef          	jal	ra,2009c <__eqtf2>
   1bd3c:	01813e03          	ld	t3,24(sp)
   1bd40:	00098793          	mv	a5,s3
   1bd44:	00051463          	bnez	a0,1bd4c <_svfprintf_r+0x1f08>
   1bd48:	dd0fe06f          	j	1a318 <_svfprintf_r+0x4d4>
   1bd4c:	0e813783          	ld	a5,232(sp)
   1bd50:	0137e463          	bltu	a5,s3,1bd58 <_svfprintf_r+0x1f14>
   1bd54:	dc4fe06f          	j	1a318 <_svfprintf_r+0x4d4>
   1bd58:	03000693          	li	a3,48
   1bd5c:	00178713          	addi	a4,a5,1
   1bd60:	0ee13423          	sd	a4,232(sp)
   1bd64:	00d78023          	sb	a3,0(a5)
   1bd68:	0e813783          	ld	a5,232(sp)
   1bd6c:	ff37e8e3          	bltu	a5,s3,1bd5c <_svfprintf_r+0x1f18>
   1bd70:	da8fe06f          	j	1a318 <_svfprintf_r+0x4d4>
   1bd74:	00000613          	li	a2,0
   1bd78:	00000693          	li	a3,0
   1bd7c:	000b8513          	mv	a0,s7
   1bd80:	000a8593          	mv	a1,s5
   1bd84:	01c13c23          	sd	t3,24(sp)
   1bd88:	314040ef          	jal	ra,2009c <__eqtf2>
   1bd8c:	01813e03          	ld	t3,24(sp)
   1bd90:	f80504e3          	beqz	a0,1bd18 <_svfprintf_r+0x1ed4>
   1bd94:	00100713          	li	a4,1
   1bd98:	41c707bb          	subw	a5,a4,t3
   1bd9c:	0cf12c23          	sw	a5,216(sp)
   1bda0:	f7dff06f          	j	1bd1c <_svfprintf_r+0x1ed8>
   1bda4:	02d00793          	li	a5,45
   1bda8:	0cf107a3          	sb	a5,207(sp)
   1bdac:	b3dff06f          	j	1b8e8 <_svfprintf_r+0x1aa4>
   1bdb0:	10010613          	addi	a2,sp,256
   1bdb4:	000c0593          	mv	a1,s8
   1bdb8:	000c8513          	mv	a0,s9
   1bdbc:	470020ef          	jal	ra,1e22c <__ssprint_r>
   1bdc0:	00050463          	beqz	a0,1bdc8 <_svfprintf_r+0x1f84>
   1bdc4:	f71fe06f          	j	1ad34 <_svfprintf_r+0xef0>
   1bdc8:	0d812703          	lw	a4,216(sp)
   1bdcc:	11013783          	ld	a5,272(sp)
   1bdd0:	18010d93          	addi	s11,sp,384
   1bdd4:	a3cff06f          	j	1b010 <_svfprintf_r+0x11cc>
   1bdd8:	0cf14783          	lbu	a5,207(sp)
   1bddc:	01313823          	sd	s3,16(sp)
   1bde0:	02013823          	sd	zero,48(sp)
   1bde4:	02013423          	sd	zero,40(sp)
   1bde8:	00013c23          	sd	zero,24(sp)
   1bdec:	000e0a93          	mv	s5,t3
   1bdf0:	000e0b93          	mv	s7,t3
   1bdf4:	00000e13          	li	t3,0
   1bdf8:	00078463          	beqz	a5,1be00 <_svfprintf_r+0x1fbc>
   1bdfc:	89dfe06f          	j	1a698 <_svfprintf_r+0x854>
   1be00:	a28fe06f          	j	1a028 <_svfprintf_r+0x1e4>
   1be04:	02013703          	ld	a4,32(sp)
   1be08:	03813783          	ld	a5,56(sp)
   1be0c:	06700493          	li	s1,103
   1be10:	00e78bbb          	addw	s7,a5,a4
   1be14:	01813703          	ld	a4,24(sp)
   1be18:	5ee05663          	blez	a4,1c404 <_svfprintf_r+0x25c0>
   1be1c:	03013783          	ld	a5,48(sp)
   1be20:	4007f793          	andi	a5,a5,1024
   1be24:	4e079863          	bnez	a5,1c314 <_svfprintf_r+0x24d0>
   1be28:	fffbca93          	not	s5,s7
   1be2c:	43fada93          	srai	s5,s5,0x3f
   1be30:	015bfab3          	and	s5,s7,s5
   1be34:	000a8a9b          	sext.w	s5,s5
   1be38:	e55ff06f          	j	1bc8c <_svfprintf_r+0x1e48>
   1be3c:	03013783          	ld	a5,48(sp)
   1be40:	01813703          	ld	a4,24(sp)
   1be44:	0017f793          	andi	a5,a5,1
   1be48:	00fe67b3          	or	a5,t3,a5
   1be4c:	5ee05a63          	blez	a4,1c440 <_svfprintf_r+0x25fc>
   1be50:	46079e63          	bnez	a5,1c2cc <_svfprintf_r+0x2488>
   1be54:	01813b83          	ld	s7,24(sp)
   1be58:	06600493          	li	s1,102
   1be5c:	fc1ff06f          	j	1be1c <_svfprintf_r+0x1fd8>
   1be60:	10010613          	addi	a2,sp,256
   1be64:	000c0593          	mv	a1,s8
   1be68:	000c8513          	mv	a0,s9
   1be6c:	3c0020ef          	jal	ra,1e22c <__ssprint_r>
   1be70:	00050463          	beqz	a0,1be78 <_svfprintf_r+0x2034>
   1be74:	ec1fe06f          	j	1ad34 <_svfprintf_r+0xef0>
   1be78:	0d812603          	lw	a2,216(sp)
   1be7c:	02013703          	ld	a4,32(sp)
   1be80:	11013783          	ld	a5,272(sp)
   1be84:	18010d93          	addi	s11,sp,384
   1be88:	40c7063b          	subw	a2,a4,a2
   1be8c:	9d0ff06f          	j	1b05c <_svfprintf_r+0x1218>
   1be90:	03000793          	li	a5,48
   1be94:	0cf10823          	sb	a5,208(sp)
   1be98:	05800713          	li	a4,88
   1be9c:	00296793          	ori	a5,s2,2
   1bea0:	0007879b          	sext.w	a5,a5
   1bea4:	0ce108a3          	sb	a4,209(sp)
   1bea8:	02f13823          	sd	a5,48(sp)
   1beac:	06300713          	li	a4,99
   1beb0:	00013423          	sd	zero,8(sp)
   1beb4:	11810d13          	addi	s10,sp,280
   1beb8:	2dc74a63          	blt	a4,t3,1c18c <_svfprintf_r+0x2348>
   1bebc:	0f813a83          	ld	s5,248(sp)
   1bec0:	fdf4f793          	andi	a5,s1,-33
   1bec4:	10296913          	ori	s2,s2,258
   1bec8:	02f13423          	sd	a5,40(sp)
   1becc:	06013023          	sd	zero,96(sp)
   1bed0:	0f013b83          	ld	s7,240(sp)
   1bed4:	0009091b          	sext.w	s2,s2
   1bed8:	220ace63          	bltz	s5,1c114 <_svfprintf_r+0x22d0>
   1bedc:	06100793          	li	a5,97
   1bee0:	4cf48063          	beq	s1,a5,1c3a0 <_svfprintf_r+0x255c>
   1bee4:	04100793          	li	a5,65
   1bee8:	00f48463          	beq	s1,a5,1bef0 <_svfprintf_r+0x20ac>
   1beec:	bbcfe06f          	j	1a2a8 <_svfprintf_r+0x464>
   1bef0:	000a8593          	mv	a1,s5
   1bef4:	000b8513          	mv	a0,s7
   1bef8:	01c13c23          	sd	t3,24(sp)
   1befc:	2c9050ef          	jal	ra,219c4 <__trunctfdf2>
   1bf00:	0d810513          	addi	a0,sp,216
   1bf04:	9b1fd0ef          	jal	ra,198b4 <frexp>
   1bf08:	19d050ef          	jal	ra,218a4 <__extenddftf2>
   1bf0c:	00006797          	auipc	a5,0x6
   1bf10:	15478793          	addi	a5,a5,340 # 22060 <zeroes.0+0x38>
   1bf14:	0007b603          	ld	a2,0(a5)
   1bf18:	0087b683          	ld	a3,8(a5)
   1bf1c:	418040ef          	jal	ra,20334 <__multf3>
   1bf20:	00000613          	li	a2,0
   1bf24:	00000693          	li	a3,0
   1bf28:	00050993          	mv	s3,a0
   1bf2c:	00058b93          	mv	s7,a1
   1bf30:	16c040ef          	jal	ra,2009c <__eqtf2>
   1bf34:	01813e03          	ld	t3,24(sp)
   1bf38:	00051663          	bnez	a0,1bf44 <_svfprintf_r+0x2100>
   1bf3c:	00100713          	li	a4,1
   1bf40:	0ce12c23          	sw	a4,216(sp)
   1bf44:	00006797          	auipc	a5,0x6
   1bf48:	f2478793          	addi	a5,a5,-220 # 21e68 <__clzdi2+0x84>
   1bf4c:	00f13c23          	sd	a5,24(sp)
   1bf50:	020e1713          	slli	a4,t3,0x20
   1bf54:	00006697          	auipc	a3,0x6
   1bf58:	0ec68693          	addi	a3,a3,236 # 22040 <zeroes.0+0x18>
   1bf5c:	02075713          	srli	a4,a4,0x20
   1bf60:	0006b783          	ld	a5,0(a3)
   1bf64:	00170713          	addi	a4,a4,1
   1bf68:	0086b683          	ld	a3,8(a3)
   1bf6c:	00ed0733          	add	a4,s10,a4
   1bf70:	02e13023          	sd	a4,32(sp)
   1bf74:	01cd073b          	addw	a4,s10,t3
   1bf78:	07413c23          	sd	s4,120(sp)
   1bf7c:	0bb13023          	sd	s11,160(sp)
   1bf80:	0b913423          	sd	s9,168(sp)
   1bf84:	0b813823          	sd	s8,176(sp)
   1bf88:	0ba13c23          	sd	s10,184(sp)
   1bf8c:	000d0c13          	mv	s8,s10
   1bf90:	00098c93          	mv	s9,s3
   1bf94:	08913423          	sd	s1,136(sp)
   1bf98:	08813823          	sd	s0,144(sp)
   1bf9c:	09213c23          	sd	s2,152(sp)
   1bfa0:	09c13023          	sd	t3,128(sp)
   1bfa4:	000b8d13          	mv	s10,s7
   1bfa8:	00070a13          	mv	s4,a4
   1bfac:	00078d93          	mv	s11,a5
   1bfb0:	00068993          	mv	s3,a3
   1bfb4:	0140006f          	j	1bfc8 <_svfprintf_r+0x2184>
   1bfb8:	00000613          	li	a2,0
   1bfbc:	00000693          	li	a3,0
   1bfc0:	0dc040ef          	jal	ra,2009c <__eqtf2>
   1bfc4:	2c050463          	beqz	a0,1c28c <_svfprintf_r+0x2448>
   1bfc8:	000d8613          	mv	a2,s11
   1bfcc:	00098693          	mv	a3,s3
   1bfd0:	000c8513          	mv	a0,s9
   1bfd4:	000d0593          	mv	a1,s10
   1bfd8:	35c040ef          	jal	ra,20334 <__multf3>
   1bfdc:	00058a93          	mv	s5,a1
   1bfe0:	00050b93          	mv	s7,a0
   1bfe4:	764050ef          	jal	ra,21748 <__fixtfsi>
   1bfe8:	0005041b          	sext.w	s0,a0
   1bfec:	031050ef          	jal	ra,2181c <__floatsitf>
   1bff0:	00058693          	mv	a3,a1
   1bff4:	00050613          	mv	a2,a0
   1bff8:	000a8593          	mv	a1,s5
   1bffc:	000b8513          	mv	a0,s7
   1c000:	449040ef          	jal	ra,20c48 <__subtf3>
   1c004:	01813783          	ld	a5,24(sp)
   1c008:	000c0a93          	mv	s5,s8
   1c00c:	001c0c13          	addi	s8,s8,1
   1c010:	00878733          	add	a4,a5,s0
   1c014:	00074683          	lbu	a3,0(a4)
   1c018:	02013783          	ld	a5,32(sp)
   1c01c:	00050493          	mv	s1,a0
   1c020:	fedc0fa3          	sb	a3,-1(s8)
   1c024:	00058913          	mv	s2,a1
   1c028:	00050c93          	mv	s9,a0
   1c02c:	00058d13          	mv	s10,a1
   1c030:	418a0bbb          	subw	s7,s4,s8
   1c034:	f98792e3          	bne	a5,s8,1bfb8 <_svfprintf_r+0x2174>
   1c038:	08013e03          	ld	t3,128(sp)
   1c03c:	03513023          	sd	s5,32(sp)
   1c040:	08813023          	sd	s0,128(sp)
   1c044:	000c0a93          	mv	s5,s8
   1c048:	0a013d83          	ld	s11,160(sp)
   1c04c:	09013403          	ld	s0,144(sp)
   1c050:	0a813c83          	ld	s9,168(sp)
   1c054:	0b013c03          	ld	s8,176(sp)
   1c058:	0b813d03          	ld	s10,184(sp)
   1c05c:	08813483          	ld	s1,136(sp)
   1c060:	09813903          	ld	s2,152(sp)
   1c064:	fff00793          	li	a5,-1
   1c068:	07813a03          	ld	s4,120(sp)
   1c06c:	00050e93          	mv	t4,a0
   1c070:	00058713          	mv	a4,a1
   1c074:	06f13c23          	sd	a5,120(sp)
   1c078:	00006797          	auipc	a5,0x6
   1c07c:	fd878793          	addi	a5,a5,-40 # 22050 <zeroes.0+0x28>
   1c080:	0007bb83          	ld	s7,0(a5)
   1c084:	0087b983          	ld	s3,8(a5)
   1c088:	000e8513          	mv	a0,t4
   1c08c:	000b8613          	mv	a2,s7
   1c090:	00098693          	mv	a3,s3
   1c094:	00070593          	mv	a1,a4
   1c098:	09c13423          	sd	t3,136(sp)
   1c09c:	09d13c23          	sd	t4,152(sp)
   1c0a0:	08e13823          	sd	a4,144(sp)
   1c0a4:	0c8040ef          	jal	ra,2016c <__getf2>
   1c0a8:	08813e03          	ld	t3,136(sp)
   1c0ac:	08a04063          	bgtz	a0,1c12c <_svfprintf_r+0x22e8>
   1c0b0:	09813e83          	ld	t4,152(sp)
   1c0b4:	09013703          	ld	a4,144(sp)
   1c0b8:	000b8613          	mv	a2,s7
   1c0bc:	00098693          	mv	a3,s3
   1c0c0:	000e8513          	mv	a0,t4
   1c0c4:	00070593          	mv	a1,a4
   1c0c8:	7d5030ef          	jal	ra,2009c <__eqtf2>
   1c0cc:	08813e03          	ld	t3,136(sp)
   1c0d0:	00051863          	bnez	a0,1c0e0 <_svfprintf_r+0x229c>
   1c0d4:	08013783          	ld	a5,128(sp)
   1c0d8:	0017f793          	andi	a5,a5,1
   1c0dc:	04079863          	bnez	a5,1c12c <_svfprintf_r+0x22e8>
   1c0e0:	07813683          	ld	a3,120(sp)
   1c0e4:	03000713          	li	a4,48
   1c0e8:	0016879b          	addiw	a5,a3,1
   1c0ec:	00fa87b3          	add	a5,s5,a5
   1c0f0:	0006c863          	bltz	a3,1c100 <_svfprintf_r+0x22bc>
   1c0f4:	001a8a93          	addi	s5,s5,1
   1c0f8:	feea8fa3          	sb	a4,-1(s5)
   1c0fc:	ff579ce3          	bne	a5,s5,1c0f4 <_svfprintf_r+0x22b0>
   1c100:	41aa87bb          	subw	a5,s5,s10
   1c104:	02f13023          	sd	a5,32(sp)
   1c108:	a18fe06f          	j	1a320 <_svfprintf_r+0x4dc>
   1c10c:	00013423          	sd	zero,8(sp)
   1c110:	00078913          	mv	s2,a5
   1c114:	fff00793          	li	a5,-1
   1c118:	03f79793          	slli	a5,a5,0x3f
   1c11c:	00facab3          	xor	s5,s5,a5
   1c120:	02d00793          	li	a5,45
   1c124:	06f13023          	sd	a5,96(sp)
   1c128:	db5ff06f          	j	1bedc <_svfprintf_r+0x2098>
   1c12c:	02013783          	ld	a5,32(sp)
   1c130:	0ef13423          	sd	a5,232(sp)
   1c134:	01813783          	ld	a5,24(sp)
   1c138:	fffac703          	lbu	a4,-1(s5)
   1c13c:	00f7c683          	lbu	a3,15(a5)
   1c140:	000a8793          	mv	a5,s5
   1c144:	02e69063          	bne	a3,a4,1c164 <_svfprintf_r+0x2320>
   1c148:	03000613          	li	a2,48
   1c14c:	fec78fa3          	sb	a2,-1(a5)
   1c150:	0e813783          	ld	a5,232(sp)
   1c154:	fff78713          	addi	a4,a5,-1
   1c158:	0ee13423          	sd	a4,232(sp)
   1c15c:	fff7c703          	lbu	a4,-1(a5)
   1c160:	fee686e3          	beq	a3,a4,1c14c <_svfprintf_r+0x2308>
   1c164:	0017069b          	addiw	a3,a4,1
   1c168:	03900613          	li	a2,57
   1c16c:	0ff6f693          	andi	a3,a3,255
   1c170:	00c70663          	beq	a4,a2,1c17c <_svfprintf_r+0x2338>
   1c174:	fed78fa3          	sb	a3,-1(a5)
   1c178:	f89ff06f          	j	1c100 <_svfprintf_r+0x22bc>
   1c17c:	01813703          	ld	a4,24(sp)
   1c180:	00a74683          	lbu	a3,10(a4)
   1c184:	fed78fa3          	sb	a3,-1(a5)
   1c188:	f79ff06f          	j	1c100 <_svfprintf_r+0x22bc>
   1c18c:	001e059b          	addiw	a1,t3,1
   1c190:	000c8513          	mv	a0,s9
   1c194:	01c13423          	sd	t3,8(sp)
   1c198:	a84fb0ef          	jal	ra,1741c <_malloc_r>
   1c19c:	00813e03          	ld	t3,8(sp)
   1c1a0:	00050d13          	mv	s10,a0
   1c1a4:	32050463          	beqz	a0,1c4cc <_svfprintf_r+0x2688>
   1c1a8:	00a13423          	sd	a0,8(sp)
   1c1ac:	d11ff06f          	j	1bebc <_svfprintf_r+0x2078>
   1c1b0:	03000793          	li	a5,48
   1c1b4:	0cf10823          	sb	a5,208(sp)
   1c1b8:	07800713          	li	a4,120
   1c1bc:	ce1ff06f          	j	1be9c <_svfprintf_r+0x2058>
   1c1c0:	00090a93          	mv	s5,s2
   1c1c4:	fd0fe06f          	j	1a994 <_svfprintf_r+0xb50>
   1c1c8:	001e099b          	addiw	s3,t3,1
   1c1cc:	00098713          	mv	a4,s3
   1c1d0:	0e810893          	addi	a7,sp,232
   1c1d4:	0dc10813          	addi	a6,sp,220
   1c1d8:	0d810793          	addi	a5,sp,216
   1c1dc:	00200693          	li	a3,2
   1c1e0:	000b8593          	mv	a1,s7
   1c1e4:	000a8613          	mv	a2,s5
   1c1e8:	000c8513          	mv	a0,s9
   1c1ec:	01c13c23          	sd	t3,24(sp)
   1c1f0:	b4df90ef          	jal	ra,15d3c <_ldtoa_r>
   1c1f4:	00050d13          	mv	s10,a0
   1c1f8:	01813e03          	ld	t3,24(sp)
   1c1fc:	013d09b3          	add	s3,s10,s3
   1c200:	b25ff06f          	j	1bd24 <_svfprintf_r+0x1ee0>
   1c204:	01cd09b3          	add	s3,s10,t3
   1c208:	b1dff06f          	j	1bd24 <_svfprintf_r+0x1ee0>
   1c20c:	0017069b          	addiw	a3,a4,1
   1c210:	009787b3          	add	a5,a5,s1
   1c214:	00006717          	auipc	a4,0x6
   1c218:	48c70713          	addi	a4,a4,1164 # 226a0 <zeroes.0>
   1c21c:	00e33023          	sd	a4,0(t1)
   1c220:	00933423          	sd	s1,8(t1)
   1c224:	0006871b          	sext.w	a4,a3
   1c228:	10d12423          	sw	a3,264(sp)
   1c22c:	10f13823          	sd	a5,272(sp)
   1c230:	00700693          	li	a3,7
   1c234:	01030313          	addi	t1,t1,16
   1c238:	d8e6d063          	bge	a3,a4,1b7b8 <_svfprintf_r+0x1974>
   1c23c:	10010613          	addi	a2,sp,256
   1c240:	000c0593          	mv	a1,s8
   1c244:	000c8513          	mv	a0,s9
   1c248:	7e5010ef          	jal	ra,1e22c <__ssprint_r>
   1c24c:	00050463          	beqz	a0,1c254 <_svfprintf_r+0x2410>
   1c250:	ae5fe06f          	j	1ad34 <_svfprintf_r+0xef0>
   1c254:	11013783          	ld	a5,272(sp)
   1c258:	10812703          	lw	a4,264(sp)
   1c25c:	18010313          	addi	t1,sp,384
   1c260:	d58ff06f          	j	1b7b8 <_svfprintf_r+0x1974>
   1c264:	000e0463          	beqz	t3,1c26c <_svfprintf_r+0x2428>
   1c268:	818fe06f          	j	1a280 <_svfprintf_r+0x43c>
   1c26c:	00100e13          	li	t3,1
   1c270:	810fe06f          	j	1a280 <_svfprintf_r+0x43c>
   1c274:	00f72023          	sw	a5,0(a4)
   1c278:	00040d13          	mv	s10,s0
   1c27c:	ecdfd06f          	j	1a148 <_svfprintf_r+0x304>
   1c280:	fff00793          	li	a5,-1
   1c284:	00f13023          	sd	a5,0(sp)
   1c288:	ee5fd06f          	j	1a16c <_svfprintf_r+0x328>
   1c28c:	07813a03          	ld	s4,120(sp)
   1c290:	08013e03          	ld	t3,128(sp)
   1c294:	03513023          	sd	s5,32(sp)
   1c298:	08813023          	sd	s0,128(sp)
   1c29c:	000c0a93          	mv	s5,s8
   1c2a0:	00048e93          	mv	t4,s1
   1c2a4:	00090713          	mv	a4,s2
   1c2a8:	0a013d83          	ld	s11,160(sp)
   1c2ac:	09013403          	ld	s0,144(sp)
   1c2b0:	0a813c83          	ld	s9,168(sp)
   1c2b4:	0b013c03          	ld	s8,176(sp)
   1c2b8:	0b813d03          	ld	s10,184(sp)
   1c2bc:	08813483          	ld	s1,136(sp)
   1c2c0:	09813903          	ld	s2,152(sp)
   1c2c4:	07713c23          	sd	s7,120(sp)
   1c2c8:	db1ff06f          	j	1c078 <_svfprintf_r+0x2234>
   1c2cc:	03813783          	ld	a5,56(sp)
   1c2d0:	06600493          	li	s1,102
   1c2d4:	00e78bbb          	addw	s7,a5,a4
   1c2d8:	01cb8bbb          	addw	s7,s7,t3
   1c2dc:	b41ff06f          	j	1be1c <_svfprintf_r+0x1fd8>
   1c2e0:	0e210713          	addi	a4,sp,226
   1c2e4:	00069863          	bnez	a3,1c2f4 <_svfprintf_r+0x24b0>
   1c2e8:	03000793          	li	a5,48
   1c2ec:	0ef10123          	sb	a5,226(sp)
   1c2f0:	0e310713          	addi	a4,sp,227
   1c2f4:	20010693          	addi	a3,sp,512
   1c2f8:	030a879b          	addiw	a5,s5,48
   1c2fc:	40d706b3          	sub	a3,a4,a3
   1c300:	00f70023          	sb	a5,0(a4)
   1c304:	1216879b          	addiw	a5,a3,289
   1c308:	04f13823          	sd	a5,80(sp)
   1c30c:	92cfe06f          	j	1a438 <_svfprintf_r+0x5f4>
   1c310:	06700493          	li	s1,103
   1c314:	05813603          	ld	a2,88(sp)
   1c318:	0ff00713          	li	a4,255
   1c31c:	00064783          	lbu	a5,0(a2)
   1c320:	18e78a63          	beq	a5,a4,1c4b4 <_svfprintf_r+0x2670>
   1c324:	01813703          	ld	a4,24(sp)
   1c328:	00000813          	li	a6,0
   1c32c:	00000513          	li	a0,0
   1c330:	0ff00693          	li	a3,255
   1c334:	0007859b          	sext.w	a1,a5
   1c338:	00e7de63          	bge	a5,a4,1c354 <_svfprintf_r+0x2510>
   1c33c:	00164783          	lbu	a5,1(a2)
   1c340:	40b7073b          	subw	a4,a4,a1
   1c344:	04078863          	beqz	a5,1c394 <_svfprintf_r+0x2550>
   1c348:	0015051b          	addiw	a0,a0,1
   1c34c:	00160613          	addi	a2,a2,1
   1c350:	fed792e3          	bne	a5,a3,1c334 <_svfprintf_r+0x24f0>
   1c354:	04c13c23          	sd	a2,88(sp)
   1c358:	00e13c23          	sd	a4,24(sp)
   1c35c:	02a13423          	sd	a0,40(sp)
   1c360:	03013823          	sd	a6,48(sp)
   1c364:	02813783          	ld	a5,40(sp)
   1c368:	03013703          	ld	a4,48(sp)
   1c36c:	06813583          	ld	a1,104(sp)
   1c370:	00e7853b          	addw	a0,a5,a4
   1c374:	14d050ef          	jal	ra,21cc0 <__muldi3>
   1c378:	017507bb          	addw	a5,a0,s7
   1c37c:	00078b9b          	sext.w	s7,a5
   1c380:	fffbca93          	not	s5,s7
   1c384:	43fada93          	srai	s5,s5,0x3f
   1c388:	0157f7b3          	and	a5,a5,s5
   1c38c:	00078a9b          	sext.w	s5,a5
   1c390:	8f8fe06f          	j	1a488 <_svfprintf_r+0x644>
   1c394:	00064783          	lbu	a5,0(a2)
   1c398:	0018081b          	addiw	a6,a6,1
   1c39c:	fb5ff06f          	j	1c350 <_svfprintf_r+0x250c>
   1c3a0:	000a8593          	mv	a1,s5
   1c3a4:	000b8513          	mv	a0,s7
   1c3a8:	01c13c23          	sd	t3,24(sp)
   1c3ac:	618050ef          	jal	ra,219c4 <__trunctfdf2>
   1c3b0:	0d810513          	addi	a0,sp,216
   1c3b4:	d00fd0ef          	jal	ra,198b4 <frexp>
   1c3b8:	4ec050ef          	jal	ra,218a4 <__extenddftf2>
   1c3bc:	00006797          	auipc	a5,0x6
   1c3c0:	ca478793          	addi	a5,a5,-860 # 22060 <zeroes.0+0x38>
   1c3c4:	0007b603          	ld	a2,0(a5)
   1c3c8:	0087b683          	ld	a3,8(a5)
   1c3cc:	769030ef          	jal	ra,20334 <__multf3>
   1c3d0:	00000613          	li	a2,0
   1c3d4:	00000693          	li	a3,0
   1c3d8:	00050993          	mv	s3,a0
   1c3dc:	00058b93          	mv	s7,a1
   1c3e0:	4bd030ef          	jal	ra,2009c <__eqtf2>
   1c3e4:	01813e03          	ld	t3,24(sp)
   1c3e8:	00051663          	bnez	a0,1c3f4 <_svfprintf_r+0x25b0>
   1c3ec:	00100713          	li	a4,1
   1c3f0:	0ce12c23          	sw	a4,216(sp)
   1c3f4:	00006797          	auipc	a5,0x6
   1c3f8:	a8c78793          	addi	a5,a5,-1396 # 21e80 <__clzdi2+0x9c>
   1c3fc:	00f13c23          	sd	a5,24(sp)
   1c400:	b51ff06f          	j	1bf50 <_svfprintf_r+0x210c>
   1c404:	40eb87bb          	subw	a5,s7,a4
   1c408:	0017879b          	addiw	a5,a5,1
   1c40c:	00078b9b          	sext.w	s7,a5
   1c410:	fffbca93          	not	s5,s7
   1c414:	43fada93          	srai	s5,s5,0x3f
   1c418:	0157f7b3          	and	a5,a5,s5
   1c41c:	00078a9b          	sext.w	s5,a5
   1c420:	86dff06f          	j	1bc8c <_svfprintf_r+0x1e48>
   1c424:	03013703          	ld	a4,48(sp)
   1c428:	00177713          	andi	a4,a4,1
   1c42c:	00071463          	bnez	a4,1c434 <_svfprintf_r+0x25f0>
   1c430:	82cfe06f          	j	1a45c <_svfprintf_r+0x618>
   1c434:	820fe06f          	j	1a454 <_svfprintf_r+0x610>
   1c438:	000d8713          	mv	a4,s11
   1c43c:	dbcff06f          	j	1b9f8 <_svfprintf_r+0x1bb4>
   1c440:	00079a63          	bnez	a5,1c454 <_svfprintf_r+0x2610>
   1c444:	00100a93          	li	s5,1
   1c448:	06600493          	li	s1,102
   1c44c:	00100b93          	li	s7,1
   1c450:	83dff06f          	j	1bc8c <_svfprintf_r+0x1e48>
   1c454:	03813783          	ld	a5,56(sp)
   1c458:	06600493          	li	s1,102
   1c45c:	0017869b          	addiw	a3,a5,1
   1c460:	01c686bb          	addw	a3,a3,t3
   1c464:	00068b9b          	sext.w	s7,a3
   1c468:	fffbca93          	not	s5,s7
   1c46c:	43fada93          	srai	s5,s5,0x3f
   1c470:	0156f6b3          	and	a3,a3,s5
   1c474:	00068a9b          	sext.w	s5,a3
   1c478:	815ff06f          	j	1bc8c <_svfprintf_r+0x1e48>
   1c47c:	01013683          	ld	a3,16(sp)
   1c480:	0006a703          	lw	a4,0(a3)
   1c484:	00868693          	addi	a3,a3,8
   1c488:	00070e13          	mv	t3,a4
   1c48c:	00075463          	bgez	a4,1c494 <_svfprintf_r+0x2650>
   1c490:	fff00e13          	li	t3,-1
   1c494:	00144483          	lbu	s1,1(s0)
   1c498:	000e0b9b          	sext.w	s7,t3
   1c49c:	00d13823          	sd	a3,16(sp)
   1c4a0:	00078413          	mv	s0,a5
   1c4a4:	ae9fd06f          	j	19f8c <_svfprintf_r+0x148>
   1c4a8:	000e0993          	mv	s3,t3
   1c4ac:	013d09b3          	add	s3,s10,s3
   1c4b0:	875ff06f          	j	1bd24 <_svfprintf_r+0x1ee0>
   1c4b4:	02013823          	sd	zero,48(sp)
   1c4b8:	02013423          	sd	zero,40(sp)
   1c4bc:	ea9ff06f          	j	1c364 <_svfprintf_r+0x2520>
   1c4c0:	00200793          	li	a5,2
   1c4c4:	04f13823          	sd	a5,80(sp)
   1c4c8:	f71fd06f          	j	1a438 <_svfprintf_r+0x5f4>
   1c4cc:	010c5783          	lhu	a5,16(s8)
   1c4d0:	0407e713          	ori	a4,a5,64
   1c4d4:	00070793          	mv	a5,a4
   1c4d8:	00ec1823          	sh	a4,16(s8)
   1c4dc:	c85fd06f          	j	1a160 <_svfprintf_r+0x31c>
   1c4e0:	00c00793          	li	a5,12
   1c4e4:	00fca023          	sw	a5,0(s9)
   1c4e8:	fff00793          	li	a5,-1
   1c4ec:	00f13023          	sd	a5,0(sp)
   1c4f0:	c7dfd06f          	j	1a16c <_svfprintf_r+0x328>

000000000001c4f4 <__sprint_r.part.0>:
   1c4f4:	0ac5a783          	lw	a5,172(a1)
   1c4f8:	fb010113          	addi	sp,sp,-80
   1c4fc:	00002737          	lui	a4,0x2
   1c500:	01513c23          	sd	s5,24(sp)
   1c504:	04113423          	sd	ra,72(sp)
   1c508:	04813023          	sd	s0,64(sp)
   1c50c:	02913c23          	sd	s1,56(sp)
   1c510:	03213823          	sd	s2,48(sp)
   1c514:	03313423          	sd	s3,40(sp)
   1c518:	03413023          	sd	s4,32(sp)
   1c51c:	01613823          	sd	s6,16(sp)
   1c520:	01713423          	sd	s7,8(sp)
   1c524:	00e7f7b3          	and	a5,a5,a4
   1c528:	00060a93          	mv	s5,a2
   1c52c:	0c078063          	beqz	a5,1c5ec <__sprint_r.part.0+0xf8>
   1c530:	01063783          	ld	a5,16(a2)
   1c534:	00063b03          	ld	s6,0(a2)
   1c538:	00058913          	mv	s2,a1
   1c53c:	00050993          	mv	s3,a0
   1c540:	fff00a13          	li	s4,-1
   1c544:	0a078063          	beqz	a5,1c5e4 <__sprint_r.part.0+0xf0>
   1c548:	008b3483          	ld	s1,8(s6)
   1c54c:	000b3403          	ld	s0,0(s6)
   1c550:	0024d493          	srli	s1,s1,0x2
   1c554:	00048b9b          	sext.w	s7,s1
   1c558:	07705c63          	blez	s7,1c5d0 <__sprint_r.part.0+0xdc>
   1c55c:	fff4849b          	addiw	s1,s1,-1
   1c560:	02049793          	slli	a5,s1,0x20
   1c564:	01e7d493          	srli	s1,a5,0x1e
   1c568:	00440793          	addi	a5,s0,4
   1c56c:	00f484b3          	add	s1,s1,a5
   1c570:	0080006f          	j	1c578 <__sprint_r.part.0+0x84>
   1c574:	04848c63          	beq	s1,s0,1c5cc <__sprint_r.part.0+0xd8>
   1c578:	00042583          	lw	a1,0(s0)
   1c57c:	00090613          	mv	a2,s2
   1c580:	00098513          	mv	a0,s3
   1c584:	0f1010ef          	jal	ra,1de74 <_fputwc_r>
   1c588:	0005051b          	sext.w	a0,a0
   1c58c:	00440413          	addi	s0,s0,4
   1c590:	ff4512e3          	bne	a0,s4,1c574 <__sprint_r.part.0+0x80>
   1c594:	fff00513          	li	a0,-1
   1c598:	04813083          	ld	ra,72(sp)
   1c59c:	04013403          	ld	s0,64(sp)
   1c5a0:	000ab823          	sd	zero,16(s5)
   1c5a4:	000aa423          	sw	zero,8(s5)
   1c5a8:	03813483          	ld	s1,56(sp)
   1c5ac:	03013903          	ld	s2,48(sp)
   1c5b0:	02813983          	ld	s3,40(sp)
   1c5b4:	02013a03          	ld	s4,32(sp)
   1c5b8:	01813a83          	ld	s5,24(sp)
   1c5bc:	01013b03          	ld	s6,16(sp)
   1c5c0:	00813b83          	ld	s7,8(sp)
   1c5c4:	05010113          	addi	sp,sp,80
   1c5c8:	00008067          	ret
   1c5cc:	010ab783          	ld	a5,16(s5)
   1c5d0:	002b9b93          	slli	s7,s7,0x2
   1c5d4:	417787b3          	sub	a5,a5,s7
   1c5d8:	00fab823          	sd	a5,16(s5)
   1c5dc:	010b0b13          	addi	s6,s6,16
   1c5e0:	f60794e3          	bnez	a5,1c548 <__sprint_r.part.0+0x54>
   1c5e4:	00000513          	li	a0,0
   1c5e8:	fb1ff06f          	j	1c598 <__sprint_r.part.0+0xa4>
   1c5ec:	f94f70ef          	jal	ra,13d80 <__sfvwrite_r>
   1c5f0:	fa9ff06f          	j	1c598 <__sprint_r.part.0+0xa4>

000000000001c5f4 <__sprint_r>:
   1c5f4:	01063703          	ld	a4,16(a2)
   1c5f8:	00070463          	beqz	a4,1c600 <__sprint_r+0xc>
   1c5fc:	ef9ff06f          	j	1c4f4 <__sprint_r.part.0>
   1c600:	00062423          	sw	zero,8(a2)
   1c604:	00000513          	li	a0,0
   1c608:	00008067          	ret

000000000001c60c <_vfiprintf_r>:
   1c60c:	e3010113          	addi	sp,sp,-464
   1c610:	1b213823          	sd	s2,432(sp)
   1c614:	1b313423          	sd	s3,424(sp)
   1c618:	19713423          	sd	s7,392(sp)
   1c61c:	1c113423          	sd	ra,456(sp)
   1c620:	1c813023          	sd	s0,448(sp)
   1c624:	1a913c23          	sd	s1,440(sp)
   1c628:	1b413023          	sd	s4,416(sp)
   1c62c:	19513c23          	sd	s5,408(sp)
   1c630:	19613823          	sd	s6,400(sp)
   1c634:	19813023          	sd	s8,384(sp)
   1c638:	17913c23          	sd	s9,376(sp)
   1c63c:	17a13823          	sd	s10,368(sp)
   1c640:	17b13423          	sd	s11,360(sp)
   1c644:	00d13823          	sd	a3,16(sp)
   1c648:	00050993          	mv	s3,a0
   1c64c:	00058913          	mv	s2,a1
   1c650:	00060b93          	mv	s7,a2
   1c654:	00050663          	beqz	a0,1c660 <_vfiprintf_r+0x54>
   1c658:	05052783          	lw	a5,80(a0)
   1c65c:	5a078a63          	beqz	a5,1cc10 <_vfiprintf_r+0x604>
   1c660:	01091703          	lh	a4,16(s2)
   1c664:	000026b7          	lui	a3,0x2
   1c668:	03071793          	slli	a5,a4,0x30
   1c66c:	0307d793          	srli	a5,a5,0x30
   1c670:	00d7f633          	and	a2,a5,a3
   1c674:	02061863          	bnez	a2,1c6a4 <_vfiprintf_r+0x98>
   1c678:	0ac92603          	lw	a2,172(s2)
   1c67c:	00d767b3          	or	a5,a4,a3
   1c680:	0107979b          	slliw	a5,a5,0x10
   1c684:	ffffe737          	lui	a4,0xffffe
   1c688:	4107d79b          	sraiw	a5,a5,0x10
   1c68c:	fff70713          	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd919f>
   1c690:	00e67733          	and	a4,a2,a4
   1c694:	00f91823          	sh	a5,16(s2)
   1c698:	03079793          	slli	a5,a5,0x30
   1c69c:	0ae92623          	sw	a4,172(s2)
   1c6a0:	0307d793          	srli	a5,a5,0x30
   1c6a4:	0087f713          	andi	a4,a5,8
   1c6a8:	3a070a63          	beqz	a4,1ca5c <_vfiprintf_r+0x450>
   1c6ac:	01893703          	ld	a4,24(s2)
   1c6b0:	3a070663          	beqz	a4,1ca5c <_vfiprintf_r+0x450>
   1c6b4:	01a7f793          	andi	a5,a5,26
   1c6b8:	00a00713          	li	a4,10
   1c6bc:	3ce78063          	beq	a5,a4,1ca7c <_vfiprintf_r+0x470>
   1c6c0:	ffff87b7          	lui	a5,0xffff8
   1c6c4:	0e010493          	addi	s1,sp,224
   1c6c8:	8307c793          	xori	a5,a5,-2000
   1c6cc:	06913023          	sd	s1,96(sp)
   1c6d0:	06013823          	sd	zero,112(sp)
   1c6d4:	06012423          	sw	zero,104(sp)
   1c6d8:	00013c23          	sd	zero,24(sp)
   1c6dc:	02013423          	sd	zero,40(sp)
   1c6e0:	02013c23          	sd	zero,56(sp)
   1c6e4:	02013823          	sd	zero,48(sp)
   1c6e8:	00013423          	sd	zero,8(sp)
   1c6ec:	04f13023          	sd	a5,64(sp)
   1c6f0:	00048413          	mv	s0,s1
   1c6f4:	000b8c13          	mv	s8,s7
   1c6f8:	000c4783          	lbu	a5,0(s8)
   1c6fc:	28078463          	beqz	a5,1c984 <_vfiprintf_r+0x378>
   1c700:	000c0a13          	mv	s4,s8
   1c704:	02500713          	li	a4,37
   1c708:	42e78a63          	beq	a5,a4,1cb3c <_vfiprintf_r+0x530>
   1c70c:	001a4783          	lbu	a5,1(s4)
   1c710:	001a0a13          	addi	s4,s4,1
   1c714:	fe079ae3          	bnez	a5,1c708 <_vfiprintf_r+0xfc>
   1c718:	418a0bbb          	subw	s7,s4,s8
   1c71c:	260b8463          	beqz	s7,1c984 <_vfiprintf_r+0x378>
   1c720:	06812783          	lw	a5,104(sp)
   1c724:	07013703          	ld	a4,112(sp)
   1c728:	01843023          	sd	s8,0(s0)
   1c72c:	0017869b          	addiw	a3,a5,1
   1c730:	00eb8733          	add	a4,s7,a4
   1c734:	01743423          	sd	s7,8(s0)
   1c738:	06e13823          	sd	a4,112(sp)
   1c73c:	06d12423          	sw	a3,104(sp)
   1c740:	00700793          	li	a5,7
   1c744:	01040413          	addi	s0,s0,16
   1c748:	02d7d063          	bge	a5,a3,1c768 <_vfiprintf_r+0x15c>
   1c74c:	44070ee3          	beqz	a4,1d3a8 <_vfiprintf_r+0xd9c>
   1c750:	06010613          	addi	a2,sp,96
   1c754:	00090593          	mv	a1,s2
   1c758:	00098513          	mv	a0,s3
   1c75c:	d99ff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1c760:	22051663          	bnez	a0,1c98c <_vfiprintf_r+0x380>
   1c764:	00048413          	mv	s0,s1
   1c768:	00813703          	ld	a4,8(sp)
   1c76c:	000a4783          	lbu	a5,0(s4)
   1c770:	0177073b          	addw	a4,a4,s7
   1c774:	00e13423          	sd	a4,8(sp)
   1c778:	20078663          	beqz	a5,1c984 <_vfiprintf_r+0x378>
   1c77c:	001a4783          	lbu	a5,1(s4)
   1c780:	001a0c13          	addi	s8,s4,1
   1c784:	04010ba3          	sb	zero,87(sp)
   1c788:	fff00a93          	li	s5,-1
   1c78c:	00000a13          	li	s4,0
   1c790:	00000b13          	li	s6,0
   1c794:	00900b93          	li	s7,9
   1c798:	02a00c93          	li	s9,42
   1c79c:	001c0c13          	addi	s8,s8,1
   1c7a0:	0007879b          	sext.w	a5,a5
   1c7a4:	05a00613          	li	a2,90
   1c7a8:	fe07871b          	addiw	a4,a5,-32
   1c7ac:	0007069b          	sext.w	a3,a4
   1c7b0:	04d66e63          	bltu	a2,a3,1c80c <_vfiprintf_r+0x200>
   1c7b4:	02071693          	slli	a3,a4,0x20
   1c7b8:	01e6d713          	srli	a4,a3,0x1e
   1c7bc:	00006697          	auipc	a3,0x6
   1c7c0:	ef468693          	addi	a3,a3,-268 # 226b0 <zeroes.0+0x10>
   1c7c4:	00d70733          	add	a4,a4,a3
   1c7c8:	00072703          	lw	a4,0(a4)
   1c7cc:	00d70733          	add	a4,a4,a3
   1c7d0:	00070067          	jr	a4
   1c7d4:	00000a13          	li	s4,0
   1c7d8:	000c4683          	lbu	a3,0(s8)
   1c7dc:	002a171b          	slliw	a4,s4,0x2
   1c7e0:	01470a3b          	addw	s4,a4,s4
   1c7e4:	fd07879b          	addiw	a5,a5,-48
   1c7e8:	001a1a1b          	slliw	s4,s4,0x1
   1c7ec:	fd06871b          	addiw	a4,a3,-48
   1c7f0:	01478a3b          	addw	s4,a5,s4
   1c7f4:	001c0c13          	addi	s8,s8,1
   1c7f8:	0006879b          	sext.w	a5,a3
   1c7fc:	fcebfee3          	bgeu	s7,a4,1c7d8 <_vfiprintf_r+0x1cc>
   1c800:	fe07871b          	addiw	a4,a5,-32
   1c804:	0007069b          	sext.w	a3,a4
   1c808:	fad676e3          	bgeu	a2,a3,1c7b4 <_vfiprintf_r+0x1a8>
   1c80c:	16078c63          	beqz	a5,1c984 <_vfiprintf_r+0x378>
   1c810:	06f10c23          	sb	a5,120(sp)
   1c814:	00100793          	li	a5,1
   1c818:	04010ba3          	sb	zero,87(sp)
   1c81c:	00100d13          	li	s10,1
   1c820:	00f13023          	sd	a5,0(sp)
   1c824:	07810c93          	addi	s9,sp,120
   1c828:	00000a93          	li	s5,0
   1c82c:	002b7f13          	andi	t5,s6,2
   1c830:	000f0463          	beqz	t5,1c838 <_vfiprintf_r+0x22c>
   1c834:	002d0d1b          	addiw	s10,s10,2
   1c838:	06812703          	lw	a4,104(sp)
   1c83c:	084b7e93          	andi	t4,s6,132
   1c840:	07013783          	ld	a5,112(sp)
   1c844:	0017051b          	addiw	a0,a4,1
   1c848:	00050613          	mv	a2,a0
   1c84c:	000e9663          	bnez	t4,1c858 <_vfiprintf_r+0x24c>
   1c850:	41aa0dbb          	subw	s11,s4,s10
   1c854:	11b048e3          	bgtz	s11,1d164 <_vfiprintf_r+0xb58>
   1c858:	05714603          	lbu	a2,87(sp)
   1c85c:	01040e13          	addi	t3,s0,16
   1c860:	02060c63          	beqz	a2,1c898 <_vfiprintf_r+0x28c>
   1c864:	05710713          	addi	a4,sp,87
   1c868:	00178793          	addi	a5,a5,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd31a1>
   1c86c:	00e43023          	sd	a4,0(s0)
   1c870:	00100713          	li	a4,1
   1c874:	00e43423          	sd	a4,8(s0)
   1c878:	06f13823          	sd	a5,112(sp)
   1c87c:	06a12423          	sw	a0,104(sp)
   1c880:	00700713          	li	a4,7
   1c884:	02a74ae3          	blt	a4,a0,1d0b8 <_vfiprintf_r+0xaac>
   1c888:	00050713          	mv	a4,a0
   1c88c:	000e0413          	mv	s0,t3
   1c890:	0015051b          	addiw	a0,a0,1
   1c894:	010e0e13          	addi	t3,t3,16
   1c898:	040f0e63          	beqz	t5,1c8f4 <_vfiprintf_r+0x2e8>
   1c89c:	05810713          	addi	a4,sp,88
   1c8a0:	00278793          	addi	a5,a5,2
   1c8a4:	00e43023          	sd	a4,0(s0)
   1c8a8:	00200713          	li	a4,2
   1c8ac:	00e43423          	sd	a4,8(s0)
   1c8b0:	06f13823          	sd	a5,112(sp)
   1c8b4:	06a12423          	sw	a0,104(sp)
   1c8b8:	00700713          	li	a4,7
   1c8bc:	06a752e3          	bge	a4,a0,1d120 <_vfiprintf_r+0xb14>
   1c8c0:	320780e3          	beqz	a5,1d3e0 <_vfiprintf_r+0xdd4>
   1c8c4:	06010613          	addi	a2,sp,96
   1c8c8:	00090593          	mv	a1,s2
   1c8cc:	00098513          	mv	a0,s3
   1c8d0:	03d13023          	sd	t4,32(sp)
   1c8d4:	c21ff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1c8d8:	0a051a63          	bnez	a0,1c98c <_vfiprintf_r+0x380>
   1c8dc:	06812703          	lw	a4,104(sp)
   1c8e0:	07013783          	ld	a5,112(sp)
   1c8e4:	02013e83          	ld	t4,32(sp)
   1c8e8:	0f010e13          	addi	t3,sp,240
   1c8ec:	0017051b          	addiw	a0,a4,1
   1c8f0:	00048413          	mv	s0,s1
   1c8f4:	08000613          	li	a2,128
   1c8f8:	5cce8663          	beq	t4,a2,1cec4 <_vfiprintf_r+0x8b8>
   1c8fc:	00013683          	ld	a3,0(sp)
   1c900:	40da8abb          	subw	s5,s5,a3
   1c904:	6b504c63          	bgtz	s5,1cfbc <_vfiprintf_r+0x9b0>
   1c908:	00013703          	ld	a4,0(sp)
   1c90c:	01943023          	sd	s9,0(s0)
   1c910:	06a12423          	sw	a0,104(sp)
   1c914:	00f707b3          	add	a5,a4,a5
   1c918:	00e43423          	sd	a4,8(s0)
   1c91c:	06f13823          	sd	a5,112(sp)
   1c920:	00700713          	li	a4,7
   1c924:	02a75263          	bge	a4,a0,1c948 <_vfiprintf_r+0x33c>
   1c928:	140784e3          	beqz	a5,1d270 <_vfiprintf_r+0xc64>
   1c92c:	06010613          	addi	a2,sp,96
   1c930:	00090593          	mv	a1,s2
   1c934:	00098513          	mv	a0,s3
   1c938:	bbdff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1c93c:	04051863          	bnez	a0,1c98c <_vfiprintf_r+0x380>
   1c940:	07013783          	ld	a5,112(sp)
   1c944:	00048e13          	mv	t3,s1
   1c948:	004b7313          	andi	t1,s6,4
   1c94c:	00030663          	beqz	t1,1c958 <_vfiprintf_r+0x34c>
   1c950:	41aa043b          	subw	s0,s4,s10
   1c954:	12804ae3          	bgtz	s0,1d288 <_vfiprintf_r+0xc7c>
   1c958:	000a0713          	mv	a4,s4
   1c95c:	01aa5463          	bge	s4,s10,1c964 <_vfiprintf_r+0x358>
   1c960:	000d0713          	mv	a4,s10
   1c964:	00813683          	ld	a3,8(sp)
   1c968:	00d7073b          	addw	a4,a4,a3
   1c96c:	00e13423          	sd	a4,8(sp)
   1c970:	72079063          	bnez	a5,1d090 <_vfiprintf_r+0xa84>
   1c974:	000c4783          	lbu	a5,0(s8)
   1c978:	06012423          	sw	zero,104(sp)
   1c97c:	00048413          	mv	s0,s1
   1c980:	d80790e3          	bnez	a5,1c700 <_vfiprintf_r+0xf4>
   1c984:	07013783          	ld	a5,112(sp)
   1c988:	600794e3          	bnez	a5,1d790 <_vfiprintf_r+0x1184>
   1c98c:	01095783          	lhu	a5,16(s2)
   1c990:	0407f793          	andi	a5,a5,64
   1c994:	64079ce3          	bnez	a5,1d7ec <_vfiprintf_r+0x11e0>
   1c998:	1c813083          	ld	ra,456(sp)
   1c99c:	1c013403          	ld	s0,448(sp)
   1c9a0:	00813503          	ld	a0,8(sp)
   1c9a4:	1b813483          	ld	s1,440(sp)
   1c9a8:	1b013903          	ld	s2,432(sp)
   1c9ac:	1a813983          	ld	s3,424(sp)
   1c9b0:	1a013a03          	ld	s4,416(sp)
   1c9b4:	19813a83          	ld	s5,408(sp)
   1c9b8:	19013b03          	ld	s6,400(sp)
   1c9bc:	18813b83          	ld	s7,392(sp)
   1c9c0:	18013c03          	ld	s8,384(sp)
   1c9c4:	17813c83          	ld	s9,376(sp)
   1c9c8:	17013d03          	ld	s10,368(sp)
   1c9cc:	16813d83          	ld	s11,360(sp)
   1c9d0:	1d010113          	addi	sp,sp,464
   1c9d4:	00008067          	ret
   1c9d8:	010b6b13          	ori	s6,s6,16
   1c9dc:	000c4783          	lbu	a5,0(s8)
   1c9e0:	000b0b1b          	sext.w	s6,s6
   1c9e4:	db9ff06f          	j	1c79c <_vfiprintf_r+0x190>
   1c9e8:	010b6313          	ori	t1,s6,16
   1c9ec:	00030b1b          	sext.w	s6,t1
   1c9f0:	01013703          	ld	a4,16(sp)
   1c9f4:	020b7793          	andi	a5,s6,32
   1c9f8:	00870613          	addi	a2,a4,8
   1c9fc:	14078863          	beqz	a5,1cb4c <_vfiprintf_r+0x540>
   1ca00:	00073783          	ld	a5,0(a4)
   1ca04:	00078b93          	mv	s7,a5
   1ca08:	1607c263          	bltz	a5,1cb6c <_vfiprintf_r+0x560>
   1ca0c:	fff00793          	li	a5,-1
   1ca10:	44fa82e3          	beq	s5,a5,1d654 <_vfiprintf_r+0x1048>
   1ca14:	f7fb7713          	andi	a4,s6,-129
   1ca18:	00070d1b          	sext.w	s10,a4
   1ca1c:	300b98e3          	bnez	s7,1d52c <_vfiprintf_r+0xf20>
   1ca20:	00c13823          	sd	a2,16(sp)
   1ca24:	720a9263          	bnez	s5,1d148 <_vfiprintf_r+0xb3c>
   1ca28:	000d0b13          	mv	s6,s10
   1ca2c:	00000a93          	li	s5,0
   1ca30:	00013023          	sd	zero,0(sp)
   1ca34:	0dc10c93          	addi	s9,sp,220
   1ca38:	00013703          	ld	a4,0(sp)
   1ca3c:	000a8793          	mv	a5,s5
   1ca40:	00ead463          	bge	s5,a4,1ca48 <_vfiprintf_r+0x43c>
   1ca44:	00070793          	mv	a5,a4
   1ca48:	05714703          	lbu	a4,87(sp)
   1ca4c:	00078d1b          	sext.w	s10,a5
   1ca50:	dc070ee3          	beqz	a4,1c82c <_vfiprintf_r+0x220>
   1ca54:	00178d1b          	addiw	s10,a5,1
   1ca58:	dd5ff06f          	j	1c82c <_vfiprintf_r+0x220>
   1ca5c:	00090593          	mv	a1,s2
   1ca60:	00098513          	mv	a0,s3
   1ca64:	cecf60ef          	jal	ra,12f50 <__swsetup_r>
   1ca68:	580512e3          	bnez	a0,1d7ec <_vfiprintf_r+0x11e0>
   1ca6c:	01095783          	lhu	a5,16(s2)
   1ca70:	00a00713          	li	a4,10
   1ca74:	01a7f793          	andi	a5,a5,26
   1ca78:	c4e794e3          	bne	a5,a4,1c6c0 <_vfiprintf_r+0xb4>
   1ca7c:	01291783          	lh	a5,18(s2)
   1ca80:	c407c0e3          	bltz	a5,1c6c0 <_vfiprintf_r+0xb4>
   1ca84:	1c013403          	ld	s0,448(sp)
   1ca88:	01013683          	ld	a3,16(sp)
   1ca8c:	1c813083          	ld	ra,456(sp)
   1ca90:	1b813483          	ld	s1,440(sp)
   1ca94:	1a013a03          	ld	s4,416(sp)
   1ca98:	19813a83          	ld	s5,408(sp)
   1ca9c:	19013b03          	ld	s6,400(sp)
   1caa0:	18013c03          	ld	s8,384(sp)
   1caa4:	17813c83          	ld	s9,376(sp)
   1caa8:	17013d03          	ld	s10,368(sp)
   1caac:	16813d83          	ld	s11,360(sp)
   1cab0:	000b8613          	mv	a2,s7
   1cab4:	00090593          	mv	a1,s2
   1cab8:	18813b83          	ld	s7,392(sp)
   1cabc:	1b013903          	ld	s2,432(sp)
   1cac0:	00098513          	mv	a0,s3
   1cac4:	1a813983          	ld	s3,424(sp)
   1cac8:	1d010113          	addi	sp,sp,464
   1cacc:	5710006f          	j	1d83c <__sbprintf>
   1cad0:	010b6313          	ori	t1,s6,16
   1cad4:	00030b1b          	sext.w	s6,t1
   1cad8:	01013703          	ld	a4,16(sp)
   1cadc:	020b7793          	andi	a5,s6,32
   1cae0:	00870613          	addi	a2,a4,8
   1cae4:	10078463          	beqz	a5,1cbec <_vfiprintf_r+0x5e0>
   1cae8:	00073b83          	ld	s7,0(a4)
   1caec:	bffb7713          	andi	a4,s6,-1025
   1caf0:	00070d1b          	sext.w	s10,a4
   1caf4:	00c13823          	sd	a2,16(sp)
   1caf8:	00000793          	li	a5,0
   1cafc:	04010ba3          	sb	zero,87(sp)
   1cb00:	fff00613          	li	a2,-1
   1cb04:	08ca8463          	beq	s5,a2,1cb8c <_vfiprintf_r+0x580>
   1cb08:	f7fd7313          	andi	t1,s10,-129
   1cb0c:	00030b1b          	sext.w	s6,t1
   1cb10:	620b9263          	bnez	s7,1d134 <_vfiprintf_r+0xb28>
   1cb14:	360a9263          	bnez	s5,1ce78 <_vfiprintf_r+0x86c>
   1cb18:	f0079ae3          	bnez	a5,1ca2c <_vfiprintf_r+0x420>
   1cb1c:	001d7793          	andi	a5,s10,1
   1cb20:	00f13023          	sd	a5,0(sp)
   1cb24:	0dc10c93          	addi	s9,sp,220
   1cb28:	f00788e3          	beqz	a5,1ca38 <_vfiprintf_r+0x42c>
   1cb2c:	03000793          	li	a5,48
   1cb30:	0cf10da3          	sb	a5,219(sp)
   1cb34:	0db10c93          	addi	s9,sp,219
   1cb38:	f01ff06f          	j	1ca38 <_vfiprintf_r+0x42c>
   1cb3c:	418a0bbb          	subw	s7,s4,s8
   1cb40:	be0b90e3          	bnez	s7,1c720 <_vfiprintf_r+0x114>
   1cb44:	000a4783          	lbu	a5,0(s4)
   1cb48:	c31ff06f          	j	1c778 <_vfiprintf_r+0x16c>
   1cb4c:	010b7793          	andi	a5,s6,16
   1cb50:	1a0798e3          	bnez	a5,1d500 <_vfiprintf_r+0xef4>
   1cb54:	040b7793          	andi	a5,s6,64
   1cb58:	36078ce3          	beqz	a5,1d6d0 <_vfiprintf_r+0x10c4>
   1cb5c:	01013783          	ld	a5,16(sp)
   1cb60:	00079b83          	lh	s7,0(a5)
   1cb64:	000b8793          	mv	a5,s7
   1cb68:	ea07d2e3          	bgez	a5,1ca0c <_vfiprintf_r+0x400>
   1cb6c:	02d00793          	li	a5,45
   1cb70:	04f10ba3          	sb	a5,87(sp)
   1cb74:	00c13823          	sd	a2,16(sp)
   1cb78:	fff00613          	li	a2,-1
   1cb7c:	41700bb3          	neg	s7,s7
   1cb80:	000b0d13          	mv	s10,s6
   1cb84:	00100793          	li	a5,1
   1cb88:	f8ca90e3          	bne	s5,a2,1cb08 <_vfiprintf_r+0x4fc>
   1cb8c:	00100613          	li	a2,1
   1cb90:	5ac78863          	beq	a5,a2,1d140 <_vfiprintf_r+0xb34>
   1cb94:	00200613          	li	a2,2
   1cb98:	2ec78a63          	beq	a5,a2,1ce8c <_vfiprintf_r+0x880>
   1cb9c:	0dc10c93          	addi	s9,sp,220
   1cba0:	007bf793          	andi	a5,s7,7
   1cba4:	03078793          	addi	a5,a5,48
   1cba8:	fefc8fa3          	sb	a5,-1(s9)
   1cbac:	003bdb93          	srli	s7,s7,0x3
   1cbb0:	000c8613          	mv	a2,s9
   1cbb4:	fffc8c93          	addi	s9,s9,-1
   1cbb8:	fe0b94e3          	bnez	s7,1cba0 <_vfiprintf_r+0x594>
   1cbbc:	001d7593          	andi	a1,s10,1
   1cbc0:	2e058863          	beqz	a1,1ceb0 <_vfiprintf_r+0x8a4>
   1cbc4:	03000593          	li	a1,48
   1cbc8:	2eb78463          	beq	a5,a1,1ceb0 <_vfiprintf_r+0x8a4>
   1cbcc:	ffe60613          	addi	a2,a2,-2
   1cbd0:	0dc10793          	addi	a5,sp,220
   1cbd4:	40c787bb          	subw	a5,a5,a2
   1cbd8:	febc8fa3          	sb	a1,-1(s9)
   1cbdc:	00f13023          	sd	a5,0(sp)
   1cbe0:	000d0b13          	mv	s6,s10
   1cbe4:	00060c93          	mv	s9,a2
   1cbe8:	e51ff06f          	j	1ca38 <_vfiprintf_r+0x42c>
   1cbec:	010b7793          	andi	a5,s6,16
   1cbf0:	100792e3          	bnez	a5,1d4f4 <_vfiprintf_r+0xee8>
   1cbf4:	01013703          	ld	a4,16(sp)
   1cbf8:	040b7793          	andi	a5,s6,64
   1cbfc:	00072b83          	lw	s7,0(a4)
   1cc00:	2c0780e3          	beqz	a5,1d6c0 <_vfiprintf_r+0x10b4>
   1cc04:	030b9b93          	slli	s7,s7,0x30
   1cc08:	030bdb93          	srli	s7,s7,0x30
   1cc0c:	ee1ff06f          	j	1caec <_vfiprintf_r+0x4e0>
   1cc10:	c71f60ef          	jal	ra,13880 <__sinit>
   1cc14:	a4dff06f          	j	1c660 <_vfiprintf_r+0x54>
   1cc18:	01013783          	ld	a5,16(sp)
   1cc1c:	04010ba3          	sb	zero,87(sp)
   1cc20:	0007bc83          	ld	s9,0(a5)
   1cc24:	00878b93          	addi	s7,a5,8
   1cc28:	260c80e3          	beqz	s9,1d688 <_vfiprintf_r+0x107c>
   1cc2c:	fff00793          	li	a5,-1
   1cc30:	18fa88e3          	beq	s5,a5,1d5c0 <_vfiprintf_r+0xfb4>
   1cc34:	000a8613          	mv	a2,s5
   1cc38:	00000593          	li	a1,0
   1cc3c:	000c8513          	mv	a0,s9
   1cc40:	860fb0ef          	jal	ra,17ca0 <memchr>
   1cc44:	360500e3          	beqz	a0,1d7a4 <_vfiprintf_r+0x1198>
   1cc48:	419507bb          	subw	a5,a0,s9
   1cc4c:	00f13023          	sd	a5,0(sp)
   1cc50:	01713823          	sd	s7,16(sp)
   1cc54:	00000a93          	li	s5,0
   1cc58:	de1ff06f          	j	1ca38 <_vfiprintf_r+0x42c>
   1cc5c:	01013703          	ld	a4,16(sp)
   1cc60:	04010ba3          	sb	zero,87(sp)
   1cc64:	00100d13          	li	s10,1
   1cc68:	00072783          	lw	a5,0(a4)
   1cc6c:	00870713          	addi	a4,a4,8
   1cc70:	00e13823          	sd	a4,16(sp)
   1cc74:	06f10c23          	sb	a5,120(sp)
   1cc78:	00100793          	li	a5,1
   1cc7c:	00f13023          	sd	a5,0(sp)
   1cc80:	07810c93          	addi	s9,sp,120
   1cc84:	ba5ff06f          	j	1c828 <_vfiprintf_r+0x21c>
   1cc88:	000c4783          	lbu	a5,0(s8)
   1cc8c:	06c00713          	li	a4,108
   1cc90:	1ee782e3          	beq	a5,a4,1d674 <_vfiprintf_r+0x1068>
   1cc94:	010b6b13          	ori	s6,s6,16
   1cc98:	000b0b1b          	sext.w	s6,s6
   1cc9c:	b01ff06f          	j	1c79c <_vfiprintf_r+0x190>
   1cca0:	000c4783          	lbu	a5,0(s8)
   1cca4:	06800713          	li	a4,104
   1cca8:	1ae78ce3          	beq	a5,a4,1d660 <_vfiprintf_r+0x1054>
   1ccac:	040b6b13          	ori	s6,s6,64
   1ccb0:	000b0b1b          	sext.w	s6,s6
   1ccb4:	ae9ff06f          	j	1c79c <_vfiprintf_r+0x190>
   1ccb8:	010b6713          	ori	a4,s6,16
   1ccbc:	00070d1b          	sext.w	s10,a4
   1ccc0:	01013703          	ld	a4,16(sp)
   1ccc4:	020d7793          	andi	a5,s10,32
   1ccc8:	00870613          	addi	a2,a4,8
   1cccc:	6e078463          	beqz	a5,1d3b4 <_vfiprintf_r+0xda8>
   1ccd0:	00073b83          	ld	s7,0(a4)
   1ccd4:	00100793          	li	a5,1
   1ccd8:	00c13823          	sd	a2,16(sp)
   1ccdc:	e21ff06f          	j	1cafc <_vfiprintf_r+0x4f0>
   1cce0:	080b6b13          	ori	s6,s6,128
   1cce4:	000c4783          	lbu	a5,0(s8)
   1cce8:	000b0b1b          	sext.w	s6,s6
   1ccec:	ab1ff06f          	j	1c79c <_vfiprintf_r+0x190>
   1ccf0:	01013703          	ld	a4,16(sp)
   1ccf4:	000c4783          	lbu	a5,0(s8)
   1ccf8:	00072a03          	lw	s4,0(a4)
   1ccfc:	00870713          	addi	a4,a4,8
   1cd00:	00e13823          	sd	a4,16(sp)
   1cd04:	a80a5ce3          	bgez	s4,1c79c <_vfiprintf_r+0x190>
   1cd08:	41400a3b          	negw	s4,s4
   1cd0c:	0840006f          	j	1cd90 <_vfiprintf_r+0x784>
   1cd10:	00098513          	mv	a0,s3
   1cd14:	b98fa0ef          	jal	ra,170ac <_localeconv_r>
   1cd18:	00853783          	ld	a5,8(a0)
   1cd1c:	00078513          	mv	a0,a5
   1cd20:	02f13823          	sd	a5,48(sp)
   1cd24:	97df30ef          	jal	ra,106a0 <strlen>
   1cd28:	00050793          	mv	a5,a0
   1cd2c:	00098513          	mv	a0,s3
   1cd30:	00078d13          	mv	s10,a5
   1cd34:	02f13c23          	sd	a5,56(sp)
   1cd38:	b74fa0ef          	jal	ra,170ac <_localeconv_r>
   1cd3c:	01053703          	ld	a4,16(a0)
   1cd40:	000c4783          	lbu	a5,0(s8)
   1cd44:	02e13423          	sd	a4,40(sp)
   1cd48:	a40d0ae3          	beqz	s10,1c79c <_vfiprintf_r+0x190>
   1cd4c:	a40708e3          	beqz	a4,1c79c <_vfiprintf_r+0x190>
   1cd50:	00074703          	lbu	a4,0(a4)
   1cd54:	a40704e3          	beqz	a4,1c79c <_vfiprintf_r+0x190>
   1cd58:	400b6b13          	ori	s6,s6,1024
   1cd5c:	000b0b1b          	sext.w	s6,s6
   1cd60:	a3dff06f          	j	1c79c <_vfiprintf_r+0x190>
   1cd64:	001b6b13          	ori	s6,s6,1
   1cd68:	000c4783          	lbu	a5,0(s8)
   1cd6c:	000b0b1b          	sext.w	s6,s6
   1cd70:	a2dff06f          	j	1c79c <_vfiprintf_r+0x190>
   1cd74:	05714703          	lbu	a4,87(sp)
   1cd78:	000c4783          	lbu	a5,0(s8)
   1cd7c:	a20710e3          	bnez	a4,1c79c <_vfiprintf_r+0x190>
   1cd80:	02000713          	li	a4,32
   1cd84:	04e10ba3          	sb	a4,87(sp)
   1cd88:	a15ff06f          	j	1c79c <_vfiprintf_r+0x190>
   1cd8c:	000c4783          	lbu	a5,0(s8)
   1cd90:	004b6b13          	ori	s6,s6,4
   1cd94:	000b0b1b          	sext.w	s6,s6
   1cd98:	a05ff06f          	j	1c79c <_vfiprintf_r+0x190>
   1cd9c:	02b00713          	li	a4,43
   1cda0:	000c4783          	lbu	a5,0(s8)
   1cda4:	04e10ba3          	sb	a4,87(sp)
   1cda8:	9f5ff06f          	j	1c79c <_vfiprintf_r+0x190>
   1cdac:	000c4783          	lbu	a5,0(s8)
   1cdb0:	001c0713          	addi	a4,s8,1
   1cdb4:	259786e3          	beq	a5,s9,1d800 <_vfiprintf_r+0x11f4>
   1cdb8:	fd07869b          	addiw	a3,a5,-48
   1cdbc:	00070c13          	mv	s8,a4
   1cdc0:	00000a93          	li	s5,0
   1cdc4:	9edbe2e3          	bltu	s7,a3,1c7a8 <_vfiprintf_r+0x19c>
   1cdc8:	000c4783          	lbu	a5,0(s8)
   1cdcc:	002a971b          	slliw	a4,s5,0x2
   1cdd0:	01570abb          	addw	s5,a4,s5
   1cdd4:	001a9a9b          	slliw	s5,s5,0x1
   1cdd8:	00da8abb          	addw	s5,s5,a3
   1cddc:	fd07869b          	addiw	a3,a5,-48
   1cde0:	001c0c13          	addi	s8,s8,1
   1cde4:	fedbf2e3          	bgeu	s7,a3,1cdc8 <_vfiprintf_r+0x7bc>
   1cde8:	9c1ff06f          	j	1c7a8 <_vfiprintf_r+0x19c>
   1cdec:	020b6b13          	ori	s6,s6,32
   1cdf0:	000c4783          	lbu	a5,0(s8)
   1cdf4:	000b0b1b          	sext.w	s6,s6
   1cdf8:	9a5ff06f          	j	1c79c <_vfiprintf_r+0x190>
   1cdfc:	01013783          	ld	a5,16(sp)
   1ce00:	002b6713          	ori	a4,s6,2
   1ce04:	00070d1b          	sext.w	s10,a4
   1ce08:	04013703          	ld	a4,64(sp)
   1ce0c:	0007bb83          	ld	s7,0(a5)
   1ce10:	00878793          	addi	a5,a5,8
   1ce14:	00f13823          	sd	a5,16(sp)
   1ce18:	00005797          	auipc	a5,0x5
   1ce1c:	06878793          	addi	a5,a5,104 # 21e80 <__clzdi2+0x9c>
   1ce20:	00f13c23          	sd	a5,24(sp)
   1ce24:	04e11c23          	sh	a4,88(sp)
   1ce28:	00200793          	li	a5,2
   1ce2c:	cd1ff06f          	j	1cafc <_vfiprintf_r+0x4f0>
   1ce30:	01013683          	ld	a3,16(sp)
   1ce34:	020b7793          	andi	a5,s6,32
   1ce38:	0006b703          	ld	a4,0(a3)
   1ce3c:	00868693          	addi	a3,a3,8
   1ce40:	00d13823          	sd	a3,16(sp)
   1ce44:	02079463          	bnez	a5,1ce6c <_vfiprintf_r+0x860>
   1ce48:	010b7793          	andi	a5,s6,16
   1ce4c:	02079063          	bnez	a5,1ce6c <_vfiprintf_r+0x860>
   1ce50:	040b7793          	andi	a5,s6,64
   1ce54:	0e079ae3          	bnez	a5,1d748 <_vfiprintf_r+0x113c>
   1ce58:	200b7313          	andi	t1,s6,512
   1ce5c:	00813783          	ld	a5,8(sp)
   1ce60:	18030ce3          	beqz	t1,1d7f8 <_vfiprintf_r+0x11ec>
   1ce64:	00f70023          	sb	a5,0(a4)
   1ce68:	891ff06f          	j	1c6f8 <_vfiprintf_r+0xec>
   1ce6c:	00813783          	ld	a5,8(sp)
   1ce70:	00f73023          	sd	a5,0(a4)
   1ce74:	885ff06f          	j	1c6f8 <_vfiprintf_r+0xec>
   1ce78:	00100713          	li	a4,1
   1ce7c:	14e78ae3          	beq	a5,a4,1d7d0 <_vfiprintf_r+0x11c4>
   1ce80:	00200713          	li	a4,2
   1ce84:	000b0d13          	mv	s10,s6
   1ce88:	d0e79ae3          	bne	a5,a4,1cb9c <_vfiprintf_r+0x590>
   1ce8c:	01813703          	ld	a4,24(sp)
   1ce90:	0dc10c93          	addi	s9,sp,220
   1ce94:	00fbf793          	andi	a5,s7,15
   1ce98:	00f707b3          	add	a5,a4,a5
   1ce9c:	0007c783          	lbu	a5,0(a5)
   1cea0:	004bdb93          	srli	s7,s7,0x4
   1cea4:	fffc8c93          	addi	s9,s9,-1
   1cea8:	00fc8023          	sb	a5,0(s9)
   1ceac:	fe0b94e3          	bnez	s7,1ce94 <_vfiprintf_r+0x888>
   1ceb0:	0dc10793          	addi	a5,sp,220
   1ceb4:	419787bb          	subw	a5,a5,s9
   1ceb8:	00f13023          	sd	a5,0(sp)
   1cebc:	000d0b13          	mv	s6,s10
   1cec0:	b79ff06f          	j	1ca38 <_vfiprintf_r+0x42c>
   1cec4:	41aa0dbb          	subw	s11,s4,s10
   1cec8:	a3b05ae3          	blez	s11,1c8fc <_vfiprintf_r+0x2f0>
   1cecc:	01000613          	li	a2,16
   1ced0:	11b654e3          	bge	a2,s11,1d7d8 <_vfiprintf_r+0x11cc>
   1ced4:	00006e17          	auipc	t3,0x6
   1ced8:	95ce0e13          	addi	t3,t3,-1700 # 22830 <zeroes.0>
   1cedc:	03413023          	sd	s4,32(sp)
   1cee0:	01000b93          	li	s7,16
   1cee4:	00090a13          	mv	s4,s2
   1cee8:	00700e93          	li	t4,7
   1ceec:	000e0913          	mv	s2,t3
   1cef0:	0180006f          	j	1cf08 <_vfiprintf_r+0x8fc>
   1cef4:	0027061b          	addiw	a2,a4,2
   1cef8:	01040413          	addi	s0,s0,16
   1cefc:	00050713          	mv	a4,a0
   1cf00:	ff0d8d9b          	addiw	s11,s11,-16
   1cf04:	05bbda63          	bge	s7,s11,1cf58 <_vfiprintf_r+0x94c>
   1cf08:	0017051b          	addiw	a0,a4,1
   1cf0c:	01078793          	addi	a5,a5,16
   1cf10:	01243023          	sd	s2,0(s0)
   1cf14:	01743423          	sd	s7,8(s0)
   1cf18:	06f13823          	sd	a5,112(sp)
   1cf1c:	06a12423          	sw	a0,104(sp)
   1cf20:	fcaedae3          	bge	t4,a0,1cef4 <_vfiprintf_r+0x8e8>
   1cf24:	18078263          	beqz	a5,1d0a8 <_vfiprintf_r+0xa9c>
   1cf28:	06010613          	addi	a2,sp,96
   1cf2c:	000a0593          	mv	a1,s4
   1cf30:	00098513          	mv	a0,s3
   1cf34:	dc0ff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1cf38:	40051e63          	bnez	a0,1d354 <_vfiprintf_r+0xd48>
   1cf3c:	06812703          	lw	a4,104(sp)
   1cf40:	ff0d8d9b          	addiw	s11,s11,-16
   1cf44:	07013783          	ld	a5,112(sp)
   1cf48:	00048413          	mv	s0,s1
   1cf4c:	0017061b          	addiw	a2,a4,1
   1cf50:	00700e93          	li	t4,7
   1cf54:	fbbbcae3          	blt	s7,s11,1cf08 <_vfiprintf_r+0x8fc>
   1cf58:	00090e13          	mv	t3,s2
   1cf5c:	000a0913          	mv	s2,s4
   1cf60:	02013a03          	ld	s4,32(sp)
   1cf64:	01040593          	addi	a1,s0,16
   1cf68:	01b787b3          	add	a5,a5,s11
   1cf6c:	01c43023          	sd	t3,0(s0)
   1cf70:	01b43423          	sd	s11,8(s0)
   1cf74:	06f13823          	sd	a5,112(sp)
   1cf78:	06c12423          	sw	a2,104(sp)
   1cf7c:	00700713          	li	a4,7
   1cf80:	54c75663          	bge	a4,a2,1d4cc <_vfiprintf_r+0xec0>
   1cf84:	78078663          	beqz	a5,1d710 <_vfiprintf_r+0x1104>
   1cf88:	06010613          	addi	a2,sp,96
   1cf8c:	00090593          	mv	a1,s2
   1cf90:	00098513          	mv	a0,s3
   1cf94:	d60ff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1cf98:	9e051ae3          	bnez	a0,1c98c <_vfiprintf_r+0x380>
   1cf9c:	00013683          	ld	a3,0(sp)
   1cfa0:	06812703          	lw	a4,104(sp)
   1cfa4:	07013783          	ld	a5,112(sp)
   1cfa8:	40da8abb          	subw	s5,s5,a3
   1cfac:	0f010e13          	addi	t3,sp,240
   1cfb0:	0017051b          	addiw	a0,a4,1
   1cfb4:	00048413          	mv	s0,s1
   1cfb8:	955058e3          	blez	s5,1c908 <_vfiprintf_r+0x2fc>
   1cfbc:	01000613          	li	a2,16
   1cfc0:	75565063          	bge	a2,s5,1d700 <_vfiprintf_r+0x10f4>
   1cfc4:	00006e17          	auipc	t3,0x6
   1cfc8:	86ce0e13          	addi	t3,t3,-1940 # 22830 <zeroes.0>
   1cfcc:	03413023          	sd	s4,32(sp)
   1cfd0:	01000b93          	li	s7,16
   1cfd4:	00090a13          	mv	s4,s2
   1cfd8:	00700d93          	li	s11,7
   1cfdc:	000e0913          	mv	s2,t3
   1cfe0:	0180006f          	j	1cff8 <_vfiprintf_r+0x9ec>
   1cfe4:	0027051b          	addiw	a0,a4,2
   1cfe8:	01040413          	addi	s0,s0,16
   1cfec:	00060713          	mv	a4,a2
   1cff0:	ff0a8a9b          	addiw	s5,s5,-16
   1cff4:	055bd863          	bge	s7,s5,1d044 <_vfiprintf_r+0xa38>
   1cff8:	0017061b          	addiw	a2,a4,1
   1cffc:	01078793          	addi	a5,a5,16
   1d000:	01243023          	sd	s2,0(s0)
   1d004:	01743423          	sd	s7,8(s0)
   1d008:	06f13823          	sd	a5,112(sp)
   1d00c:	06c12423          	sw	a2,104(sp)
   1d010:	fccddae3          	bge	s11,a2,1cfe4 <_vfiprintf_r+0x9d8>
   1d014:	06078663          	beqz	a5,1d080 <_vfiprintf_r+0xa74>
   1d018:	06010613          	addi	a2,sp,96
   1d01c:	000a0593          	mv	a1,s4
   1d020:	00098513          	mv	a0,s3
   1d024:	cd0ff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1d028:	32051663          	bnez	a0,1d354 <_vfiprintf_r+0xd48>
   1d02c:	06812703          	lw	a4,104(sp)
   1d030:	ff0a8a9b          	addiw	s5,s5,-16
   1d034:	07013783          	ld	a5,112(sp)
   1d038:	00048413          	mv	s0,s1
   1d03c:	0017051b          	addiw	a0,a4,1
   1d040:	fb5bcce3          	blt	s7,s5,1cff8 <_vfiprintf_r+0x9ec>
   1d044:	00090e13          	mv	t3,s2
   1d048:	000a0913          	mv	s2,s4
   1d04c:	02013a03          	ld	s4,32(sp)
   1d050:	01040613          	addi	a2,s0,16
   1d054:	015787b3          	add	a5,a5,s5
   1d058:	01c43023          	sd	t3,0(s0)
   1d05c:	01543423          	sd	s5,8(s0)
   1d060:	06f13823          	sd	a5,112(sp)
   1d064:	06a12423          	sw	a0,104(sp)
   1d068:	00700713          	li	a4,7
   1d06c:	30a74663          	blt	a4,a0,1d378 <_vfiprintf_r+0xd6c>
   1d070:	0015051b          	addiw	a0,a0,1
   1d074:	01060e13          	addi	t3,a2,16
   1d078:	00060413          	mv	s0,a2
   1d07c:	88dff06f          	j	1c908 <_vfiprintf_r+0x2fc>
   1d080:	00100513          	li	a0,1
   1d084:	00000713          	li	a4,0
   1d088:	00048413          	mv	s0,s1
   1d08c:	f65ff06f          	j	1cff0 <_vfiprintf_r+0x9e4>
   1d090:	06010613          	addi	a2,sp,96
   1d094:	00090593          	mv	a1,s2
   1d098:	00098513          	mv	a0,s3
   1d09c:	c58ff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1d0a0:	8c050ae3          	beqz	a0,1c974 <_vfiprintf_r+0x368>
   1d0a4:	8e9ff06f          	j	1c98c <_vfiprintf_r+0x380>
   1d0a8:	00100613          	li	a2,1
   1d0ac:	00000713          	li	a4,0
   1d0b0:	00048413          	mv	s0,s1
   1d0b4:	e4dff06f          	j	1cf00 <_vfiprintf_r+0x8f4>
   1d0b8:	32078e63          	beqz	a5,1d3f4 <_vfiprintf_r+0xde8>
   1d0bc:	06010613          	addi	a2,sp,96
   1d0c0:	00090593          	mv	a1,s2
   1d0c4:	00098513          	mv	a0,s3
   1d0c8:	05d13423          	sd	t4,72(sp)
   1d0cc:	03e13023          	sd	t5,32(sp)
   1d0d0:	c24ff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1d0d4:	8a051ce3          	bnez	a0,1c98c <_vfiprintf_r+0x380>
   1d0d8:	06812703          	lw	a4,104(sp)
   1d0dc:	07013783          	ld	a5,112(sp)
   1d0e0:	04813e83          	ld	t4,72(sp)
   1d0e4:	02013f03          	ld	t5,32(sp)
   1d0e8:	0f010e13          	addi	t3,sp,240
   1d0ec:	0017051b          	addiw	a0,a4,1
   1d0f0:	00048413          	mv	s0,s1
   1d0f4:	fa4ff06f          	j	1c898 <_vfiprintf_r+0x28c>
   1d0f8:	38079e63          	bnez	a5,1d494 <_vfiprintf_r+0xe88>
   1d0fc:	05714703          	lbu	a4,87(sp)
   1d100:	62071663          	bnez	a4,1d72c <_vfiprintf_r+0x1120>
   1d104:	2e0f0a63          	beqz	t5,1d3f8 <_vfiprintf_r+0xdec>
   1d108:	05810793          	addi	a5,sp,88
   1d10c:	0ef13023          	sd	a5,224(sp)
   1d110:	00200793          	li	a5,2
   1d114:	0ef13423          	sd	a5,232(sp)
   1d118:	0f010e13          	addi	t3,sp,240
   1d11c:	00100513          	li	a0,1
   1d120:	000e0413          	mv	s0,t3
   1d124:	00050713          	mv	a4,a0
   1d128:	0017051b          	addiw	a0,a4,1
   1d12c:	01040e13          	addi	t3,s0,16
   1d130:	fc4ff06f          	j	1c8f4 <_vfiprintf_r+0x2e8>
   1d134:	00100613          	li	a2,1
   1d138:	000b0d13          	mv	s10,s6
   1d13c:	a4c79ce3          	bne	a5,a2,1cb94 <_vfiprintf_r+0x588>
   1d140:	00900793          	li	a5,9
   1d144:	2d77e463          	bltu	a5,s7,1d40c <_vfiprintf_r+0xe00>
   1d148:	030b8b9b          	addiw	s7,s7,48
   1d14c:	00100793          	li	a5,1
   1d150:	0d710da3          	sb	s7,219(sp)
   1d154:	000d0b13          	mv	s6,s10
   1d158:	00f13023          	sd	a5,0(sp)
   1d15c:	0db10c93          	addi	s9,sp,219
   1d160:	8d9ff06f          	j	1ca38 <_vfiprintf_r+0x42c>
   1d164:	01000593          	li	a1,16
   1d168:	65b5d663          	bge	a1,s11,1d7b4 <_vfiprintf_r+0x11a8>
   1d16c:	00005b97          	auipc	s7,0x5
   1d170:	6b4b8b93          	addi	s7,s7,1716 # 22820 <blanks.1>
   1d174:	000b8693          	mv	a3,s7
   1d178:	01000e13          	li	t3,16
   1d17c:	000a0b93          	mv	s7,s4
   1d180:	00700f93          	li	t6,7
   1d184:	00090a13          	mv	s4,s2
   1d188:	03e13023          	sd	t5,32(sp)
   1d18c:	000d8913          	mv	s2,s11
   1d190:	05d13423          	sd	t4,72(sp)
   1d194:	000c0d93          	mv	s11,s8
   1d198:	000a8c13          	mv	s8,s5
   1d19c:	00068a93          	mv	s5,a3
   1d1a0:	01c0006f          	j	1d1bc <_vfiprintf_r+0xbb0>
   1d1a4:	0027061b          	addiw	a2,a4,2
   1d1a8:	01040413          	addi	s0,s0,16
   1d1ac:	00068713          	mv	a4,a3
   1d1b0:	ff09091b          	addiw	s2,s2,-16
   1d1b4:	052e5e63          	bge	t3,s2,1d210 <_vfiprintf_r+0xc04>
   1d1b8:	0017061b          	addiw	a2,a4,1
   1d1bc:	01078793          	addi	a5,a5,16
   1d1c0:	01543023          	sd	s5,0(s0)
   1d1c4:	01c43423          	sd	t3,8(s0)
   1d1c8:	06f13823          	sd	a5,112(sp)
   1d1cc:	0006069b          	sext.w	a3,a2
   1d1d0:	06c12423          	sw	a2,104(sp)
   1d1d4:	fcdfd8e3          	bge	t6,a3,1d1a4 <_vfiprintf_r+0xb98>
   1d1d8:	08078463          	beqz	a5,1d260 <_vfiprintf_r+0xc54>
   1d1dc:	06010613          	addi	a2,sp,96
   1d1e0:	000a0593          	mv	a1,s4
   1d1e4:	00098513          	mv	a0,s3
   1d1e8:	b0cff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1d1ec:	16051463          	bnez	a0,1d354 <_vfiprintf_r+0xd48>
   1d1f0:	06812703          	lw	a4,104(sp)
   1d1f4:	01000e13          	li	t3,16
   1d1f8:	ff09091b          	addiw	s2,s2,-16
   1d1fc:	07013783          	ld	a5,112(sp)
   1d200:	00048413          	mv	s0,s1
   1d204:	0017061b          	addiw	a2,a4,1
   1d208:	00700f93          	li	t6,7
   1d20c:	fb2e46e3          	blt	t3,s2,1d1b8 <_vfiprintf_r+0xbac>
   1d210:	02013f03          	ld	t5,32(sp)
   1d214:	04813e83          	ld	t4,72(sp)
   1d218:	000a8713          	mv	a4,s5
   1d21c:	000c0a93          	mv	s5,s8
   1d220:	000d8c13          	mv	s8,s11
   1d224:	00090d93          	mv	s11,s2
   1d228:	000a0913          	mv	s2,s4
   1d22c:	000b8a13          	mv	s4,s7
   1d230:	00070b93          	mv	s7,a4
   1d234:	01b787b3          	add	a5,a5,s11
   1d238:	01743023          	sd	s7,0(s0)
   1d23c:	01b43423          	sd	s11,8(s0)
   1d240:	06f13823          	sd	a5,112(sp)
   1d244:	06c12423          	sw	a2,104(sp)
   1d248:	00700713          	li	a4,7
   1d24c:	eac746e3          	blt	a4,a2,1d0f8 <_vfiprintf_r+0xaec>
   1d250:	01040413          	addi	s0,s0,16
   1d254:	0016051b          	addiw	a0,a2,1
   1d258:	00060713          	mv	a4,a2
   1d25c:	dfcff06f          	j	1c858 <_vfiprintf_r+0x24c>
   1d260:	00000713          	li	a4,0
   1d264:	00100613          	li	a2,1
   1d268:	00048413          	mv	s0,s1
   1d26c:	f45ff06f          	j	1d1b0 <_vfiprintf_r+0xba4>
   1d270:	06012423          	sw	zero,104(sp)
   1d274:	004b7313          	andi	t1,s6,4
   1d278:	0e030263          	beqz	t1,1d35c <_vfiprintf_r+0xd50>
   1d27c:	41aa043b          	subw	s0,s4,s10
   1d280:	0c805e63          	blez	s0,1d35c <_vfiprintf_r+0xd50>
   1d284:	00048e13          	mv	t3,s1
   1d288:	01000713          	li	a4,16
   1d28c:	06812603          	lw	a2,104(sp)
   1d290:	52875863          	bge	a4,s0,1d7c0 <_vfiprintf_r+0x11b4>
   1d294:	00005b97          	auipc	s7,0x5
   1d298:	58cb8b93          	addi	s7,s7,1420 # 22820 <blanks.1>
   1d29c:	01000c93          	li	s9,16
   1d2a0:	00700d93          	li	s11,7
   1d2a4:	0180006f          	j	1d2bc <_vfiprintf_r+0xcb0>
   1d2a8:	0026071b          	addiw	a4,a2,2
   1d2ac:	010e0e13          	addi	t3,t3,16
   1d2b0:	00068613          	mv	a2,a3
   1d2b4:	ff04041b          	addiw	s0,s0,-16
   1d2b8:	048cd863          	bge	s9,s0,1d308 <_vfiprintf_r+0xcfc>
   1d2bc:	0016069b          	addiw	a3,a2,1
   1d2c0:	01078793          	addi	a5,a5,16
   1d2c4:	017e3023          	sd	s7,0(t3)
   1d2c8:	019e3423          	sd	s9,8(t3)
   1d2cc:	06f13823          	sd	a5,112(sp)
   1d2d0:	06d12423          	sw	a3,104(sp)
   1d2d4:	fcdddae3          	bge	s11,a3,1d2a8 <_vfiprintf_r+0xc9c>
   1d2d8:	06078663          	beqz	a5,1d344 <_vfiprintf_r+0xd38>
   1d2dc:	06010613          	addi	a2,sp,96
   1d2e0:	00090593          	mv	a1,s2
   1d2e4:	00098513          	mv	a0,s3
   1d2e8:	a0cff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1d2ec:	ea051063          	bnez	a0,1c98c <_vfiprintf_r+0x380>
   1d2f0:	06812603          	lw	a2,104(sp)
   1d2f4:	ff04041b          	addiw	s0,s0,-16
   1d2f8:	07013783          	ld	a5,112(sp)
   1d2fc:	00048e13          	mv	t3,s1
   1d300:	0016071b          	addiw	a4,a2,1
   1d304:	fa8ccce3          	blt	s9,s0,1d2bc <_vfiprintf_r+0xcb0>
   1d308:	008787b3          	add	a5,a5,s0
   1d30c:	017e3023          	sd	s7,0(t3)
   1d310:	008e3423          	sd	s0,8(t3)
   1d314:	06f13823          	sd	a5,112(sp)
   1d318:	06e12423          	sw	a4,104(sp)
   1d31c:	00700613          	li	a2,7
   1d320:	e2e65c63          	bge	a2,a4,1c958 <_vfiprintf_r+0x34c>
   1d324:	02078c63          	beqz	a5,1d35c <_vfiprintf_r+0xd50>
   1d328:	06010613          	addi	a2,sp,96
   1d32c:	00090593          	mv	a1,s2
   1d330:	00098513          	mv	a0,s3
   1d334:	9c0ff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1d338:	e4051a63          	bnez	a0,1c98c <_vfiprintf_r+0x380>
   1d33c:	07013783          	ld	a5,112(sp)
   1d340:	e18ff06f          	j	1c958 <_vfiprintf_r+0x34c>
   1d344:	00100713          	li	a4,1
   1d348:	00000613          	li	a2,0
   1d34c:	00048e13          	mv	t3,s1
   1d350:	f65ff06f          	j	1d2b4 <_vfiprintf_r+0xca8>
   1d354:	000a0913          	mv	s2,s4
   1d358:	e34ff06f          	j	1c98c <_vfiprintf_r+0x380>
   1d35c:	000a0793          	mv	a5,s4
   1d360:	01aa5463          	bge	s4,s10,1d368 <_vfiprintf_r+0xd5c>
   1d364:	000d0793          	mv	a5,s10
   1d368:	00813703          	ld	a4,8(sp)
   1d36c:	00e787bb          	addw	a5,a5,a4
   1d370:	00f13423          	sd	a5,8(sp)
   1d374:	e00ff06f          	j	1c974 <_vfiprintf_r+0x368>
   1d378:	2a078063          	beqz	a5,1d618 <_vfiprintf_r+0x100c>
   1d37c:	06010613          	addi	a2,sp,96
   1d380:	00090593          	mv	a1,s2
   1d384:	00098513          	mv	a0,s3
   1d388:	96cff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1d38c:	e0051063          	bnez	a0,1c98c <_vfiprintf_r+0x380>
   1d390:	06812503          	lw	a0,104(sp)
   1d394:	07013783          	ld	a5,112(sp)
   1d398:	0f010e13          	addi	t3,sp,240
   1d39c:	0015051b          	addiw	a0,a0,1
   1d3a0:	00048413          	mv	s0,s1
   1d3a4:	d64ff06f          	j	1c908 <_vfiprintf_r+0x2fc>
   1d3a8:	06012423          	sw	zero,104(sp)
   1d3ac:	00048413          	mv	s0,s1
   1d3b0:	bb8ff06f          	j	1c768 <_vfiprintf_r+0x15c>
   1d3b4:	010d7793          	andi	a5,s10,16
   1d3b8:	12079463          	bnez	a5,1d4e0 <_vfiprintf_r+0xed4>
   1d3bc:	01013703          	ld	a4,16(sp)
   1d3c0:	040d7793          	andi	a5,s10,64
   1d3c4:	00072b83          	lw	s7,0(a4)
   1d3c8:	32078063          	beqz	a5,1d6e8 <_vfiprintf_r+0x10dc>
   1d3cc:	030b9b93          	slli	s7,s7,0x30
   1d3d0:	030bdb93          	srli	s7,s7,0x30
   1d3d4:	00c13823          	sd	a2,16(sp)
   1d3d8:	00100793          	li	a5,1
   1d3dc:	f20ff06f          	j	1cafc <_vfiprintf_r+0x4f0>
   1d3e0:	0f010e13          	addi	t3,sp,240
   1d3e4:	00100513          	li	a0,1
   1d3e8:	00000713          	li	a4,0
   1d3ec:	00048413          	mv	s0,s1
   1d3f0:	d04ff06f          	j	1c8f4 <_vfiprintf_r+0x2e8>
   1d3f4:	100f1e63          	bnez	t5,1d510 <_vfiprintf_r+0xf04>
   1d3f8:	00000713          	li	a4,0
   1d3fc:	0f010e13          	addi	t3,sp,240
   1d400:	00100513          	li	a0,1
   1d404:	00048413          	mv	s0,s1
   1d408:	cecff06f          	j	1c8f4 <_vfiprintf_r+0x2e8>
   1d40c:	00813023          	sd	s0,0(sp)
   1d410:	000b8413          	mv	s0,s7
   1d414:	02813b83          	ld	s7,40(sp)
   1d418:	400d7d93          	andi	s11,s10,1024
   1d41c:	00000b13          	li	s6,0
   1d420:	0dc10c93          	addi	s9,sp,220
   1d424:	00a00593          	li	a1,10
   1d428:	00040513          	mv	a0,s0
   1d42c:	149040ef          	jal	ra,21d74 <__umoddi3>
   1d430:	0305051b          	addiw	a0,a0,48
   1d434:	feac8fa3          	sb	a0,-1(s9)
   1d438:	001b0b1b          	addiw	s6,s6,1
   1d43c:	fffc8c93          	addi	s9,s9,-1
   1d440:	000d8663          	beqz	s11,1d44c <_vfiprintf_r+0xe40>
   1d444:	000bc703          	lbu	a4,0(s7)
   1d448:	03670063          	beq	a4,s6,1d468 <_vfiprintf_r+0xe5c>
   1d44c:	00a00593          	li	a1,10
   1d450:	00040513          	mv	a0,s0
   1d454:	0d9040ef          	jal	ra,21d2c <__udivdi3>
   1d458:	00900793          	li	a5,9
   1d45c:	0087fe63          	bgeu	a5,s0,1d478 <_vfiprintf_r+0xe6c>
   1d460:	00050413          	mv	s0,a0
   1d464:	fc1ff06f          	j	1d424 <_vfiprintf_r+0xe18>
   1d468:	0ff00793          	li	a5,255
   1d46c:	fef700e3          	beq	a4,a5,1d44c <_vfiprintf_r+0xe40>
   1d470:	00900793          	li	a5,9
   1d474:	1687e463          	bltu	a5,s0,1d5dc <_vfiprintf_r+0xfd0>
   1d478:	0dc10793          	addi	a5,sp,220
   1d47c:	419787bb          	subw	a5,a5,s9
   1d480:	00013403          	ld	s0,0(sp)
   1d484:	03713423          	sd	s7,40(sp)
   1d488:	00f13023          	sd	a5,0(sp)
   1d48c:	000d0b13          	mv	s6,s10
   1d490:	da8ff06f          	j	1ca38 <_vfiprintf_r+0x42c>
   1d494:	06010613          	addi	a2,sp,96
   1d498:	00090593          	mv	a1,s2
   1d49c:	00098513          	mv	a0,s3
   1d4a0:	05d13423          	sd	t4,72(sp)
   1d4a4:	03e13023          	sd	t5,32(sp)
   1d4a8:	84cff0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1d4ac:	ce051063          	bnez	a0,1c98c <_vfiprintf_r+0x380>
   1d4b0:	06812703          	lw	a4,104(sp)
   1d4b4:	07013783          	ld	a5,112(sp)
   1d4b8:	04813e83          	ld	t4,72(sp)
   1d4bc:	02013f03          	ld	t5,32(sp)
   1d4c0:	00048413          	mv	s0,s1
   1d4c4:	0017051b          	addiw	a0,a4,1
   1d4c8:	b90ff06f          	j	1c858 <_vfiprintf_r+0x24c>
   1d4cc:	0016051b          	addiw	a0,a2,1
   1d4d0:	01058e13          	addi	t3,a1,16
   1d4d4:	00060713          	mv	a4,a2
   1d4d8:	00058413          	mv	s0,a1
   1d4dc:	c20ff06f          	j	1c8fc <_vfiprintf_r+0x2f0>
   1d4e0:	01013783          	ld	a5,16(sp)
   1d4e4:	00c13823          	sd	a2,16(sp)
   1d4e8:	0007bb83          	ld	s7,0(a5)
   1d4ec:	00100793          	li	a5,1
   1d4f0:	e0cff06f          	j	1cafc <_vfiprintf_r+0x4f0>
   1d4f4:	01013783          	ld	a5,16(sp)
   1d4f8:	0007bb83          	ld	s7,0(a5)
   1d4fc:	df0ff06f          	j	1caec <_vfiprintf_r+0x4e0>
   1d500:	01013783          	ld	a5,16(sp)
   1d504:	0007b783          	ld	a5,0(a5)
   1d508:	00078b93          	mv	s7,a5
   1d50c:	cfcff06f          	j	1ca08 <_vfiprintf_r+0x3fc>
   1d510:	05810793          	addi	a5,sp,88
   1d514:	0ef13023          	sd	a5,224(sp)
   1d518:	00200793          	li	a5,2
   1d51c:	0ef13423          	sd	a5,232(sp)
   1d520:	0f010413          	addi	s0,sp,240
   1d524:	00100713          	li	a4,1
   1d528:	c01ff06f          	j	1d128 <_vfiprintf_r+0xb1c>
   1d52c:	00c13823          	sd	a2,16(sp)
   1d530:	c11ff06f          	j	1d140 <_vfiprintf_r+0xb34>
   1d534:	01013683          	ld	a3,16(sp)
   1d538:	00005717          	auipc	a4,0x5
   1d53c:	93070713          	addi	a4,a4,-1744 # 21e68 <__clzdi2+0x84>
   1d540:	00e13c23          	sd	a4,24(sp)
   1d544:	020b7713          	andi	a4,s6,32
   1d548:	00868613          	addi	a2,a3,8
   1d54c:	06070063          	beqz	a4,1d5ac <_vfiprintf_r+0xfa0>
   1d550:	0006bb83          	ld	s7,0(a3)
   1d554:	001b7713          	andi	a4,s6,1
   1d558:	00070e63          	beqz	a4,1d574 <_vfiprintf_r+0xf68>
   1d55c:	000b8c63          	beqz	s7,1d574 <_vfiprintf_r+0xf68>
   1d560:	002b6313          	ori	t1,s6,2
   1d564:	03000713          	li	a4,48
   1d568:	04e10c23          	sb	a4,88(sp)
   1d56c:	04f10ca3          	sb	a5,89(sp)
   1d570:	00030b1b          	sext.w	s6,t1
   1d574:	bffb7713          	andi	a4,s6,-1025
   1d578:	00070d1b          	sext.w	s10,a4
   1d57c:	00c13823          	sd	a2,16(sp)
   1d580:	00200793          	li	a5,2
   1d584:	d78ff06f          	j	1cafc <_vfiprintf_r+0x4f0>
   1d588:	000b0d13          	mv	s10,s6
   1d58c:	f34ff06f          	j	1ccc0 <_vfiprintf_r+0x6b4>
   1d590:	01013683          	ld	a3,16(sp)
   1d594:	00005717          	auipc	a4,0x5
   1d598:	8ec70713          	addi	a4,a4,-1812 # 21e80 <__clzdi2+0x9c>
   1d59c:	00e13c23          	sd	a4,24(sp)
   1d5a0:	020b7713          	andi	a4,s6,32
   1d5a4:	00868613          	addi	a2,a3,8
   1d5a8:	fa0714e3          	bnez	a4,1d550 <_vfiprintf_r+0xf44>
   1d5ac:	010b7713          	andi	a4,s6,16
   1d5b0:	08070463          	beqz	a4,1d638 <_vfiprintf_r+0x102c>
   1d5b4:	01013703          	ld	a4,16(sp)
   1d5b8:	00073b83          	ld	s7,0(a4)
   1d5bc:	f99ff06f          	j	1d554 <_vfiprintf_r+0xf48>
   1d5c0:	000c8513          	mv	a0,s9
   1d5c4:	8dcf30ef          	jal	ra,106a0 <strlen>
   1d5c8:	0005079b          	sext.w	a5,a0
   1d5cc:	00f13023          	sd	a5,0(sp)
   1d5d0:	01713823          	sd	s7,16(sp)
   1d5d4:	00000a93          	li	s5,0
   1d5d8:	c60ff06f          	j	1ca38 <_vfiprintf_r+0x42c>
   1d5dc:	03813783          	ld	a5,56(sp)
   1d5e0:	03013583          	ld	a1,48(sp)
   1d5e4:	00000b13          	li	s6,0
   1d5e8:	40fc8cb3          	sub	s9,s9,a5
   1d5ec:	00078613          	mv	a2,a5
   1d5f0:	000c8513          	mv	a0,s9
   1d5f4:	fa8fc0ef          	jal	ra,19d9c <strncpy>
   1d5f8:	001bc703          	lbu	a4,1(s7)
   1d5fc:	00040513          	mv	a0,s0
   1d600:	00a00593          	li	a1,10
   1d604:	00e037b3          	snez	a5,a4
   1d608:	00fb8bb3          	add	s7,s7,a5
   1d60c:	720040ef          	jal	ra,21d2c <__udivdi3>
   1d610:	00050413          	mv	s0,a0
   1d614:	e11ff06f          	j	1d424 <_vfiprintf_r+0xe18>
   1d618:	00013783          	ld	a5,0(sp)
   1d61c:	00100713          	li	a4,1
   1d620:	0f913023          	sd	s9,224(sp)
   1d624:	0ef13423          	sd	a5,232(sp)
   1d628:	06f13823          	sd	a5,112(sp)
   1d62c:	06e12423          	sw	a4,104(sp)
   1d630:	0f010e13          	addi	t3,sp,240
   1d634:	b14ff06f          	j	1c948 <_vfiprintf_r+0x33c>
   1d638:	01013683          	ld	a3,16(sp)
   1d63c:	040b7713          	andi	a4,s6,64
   1d640:	0006ab83          	lw	s7,0(a3)
   1d644:	06070663          	beqz	a4,1d6b0 <_vfiprintf_r+0x10a4>
   1d648:	030b9b93          	slli	s7,s7,0x30
   1d64c:	030bdb93          	srli	s7,s7,0x30
   1d650:	f05ff06f          	j	1d554 <_vfiprintf_r+0xf48>
   1d654:	000b0d13          	mv	s10,s6
   1d658:	00c13823          	sd	a2,16(sp)
   1d65c:	ae5ff06f          	j	1d140 <_vfiprintf_r+0xb34>
   1d660:	200b6b13          	ori	s6,s6,512
   1d664:	001c4783          	lbu	a5,1(s8)
   1d668:	000b0b1b          	sext.w	s6,s6
   1d66c:	001c0c13          	addi	s8,s8,1
   1d670:	92cff06f          	j	1c79c <_vfiprintf_r+0x190>
   1d674:	020b6b13          	ori	s6,s6,32
   1d678:	001c4783          	lbu	a5,1(s8)
   1d67c:	000b0b1b          	sext.w	s6,s6
   1d680:	001c0c13          	addi	s8,s8,1
   1d684:	918ff06f          	j	1c79c <_vfiprintf_r+0x190>
   1d688:	00600793          	li	a5,6
   1d68c:	000a8c93          	mv	s9,s5
   1d690:	0957ea63          	bltu	a5,s5,1d724 <_vfiprintf_r+0x1118>
   1d694:	000c879b          	sext.w	a5,s9
   1d698:	00f13023          	sd	a5,0(sp)
   1d69c:	00078d13          	mv	s10,a5
   1d6a0:	01713823          	sd	s7,16(sp)
   1d6a4:	00004c97          	auipc	s9,0x4
   1d6a8:	7f4c8c93          	addi	s9,s9,2036 # 21e98 <__clzdi2+0xb4>
   1d6ac:	97cff06f          	j	1c828 <_vfiprintf_r+0x21c>
   1d6b0:	200b7713          	andi	a4,s6,512
   1d6b4:	0c070863          	beqz	a4,1d784 <_vfiprintf_r+0x1178>
   1d6b8:	0ffbfb93          	andi	s7,s7,255
   1d6bc:	e99ff06f          	j	1d554 <_vfiprintf_r+0xf48>
   1d6c0:	200b7793          	andi	a5,s6,512
   1d6c4:	0a078a63          	beqz	a5,1d778 <_vfiprintf_r+0x116c>
   1d6c8:	0ffbfb93          	andi	s7,s7,255
   1d6cc:	c20ff06f          	j	1caec <_vfiprintf_r+0x4e0>
   1d6d0:	200b7793          	andi	a5,s6,512
   1d6d4:	08078a63          	beqz	a5,1d768 <_vfiprintf_r+0x115c>
   1d6d8:	01013783          	ld	a5,16(sp)
   1d6dc:	00078b83          	lb	s7,0(a5)
   1d6e0:	000b8793          	mv	a5,s7
   1d6e4:	b24ff06f          	j	1ca08 <_vfiprintf_r+0x3fc>
   1d6e8:	200d7793          	andi	a5,s10,512
   1d6ec:	06078463          	beqz	a5,1d754 <_vfiprintf_r+0x1148>
   1d6f0:	0ffbfb93          	andi	s7,s7,255
   1d6f4:	00c13823          	sd	a2,16(sp)
   1d6f8:	00100793          	li	a5,1
   1d6fc:	c00ff06f          	j	1cafc <_vfiprintf_r+0x4f0>
   1d700:	000e0613          	mv	a2,t3
   1d704:	00005e17          	auipc	t3,0x5
   1d708:	12ce0e13          	addi	t3,t3,300 # 22830 <zeroes.0>
   1d70c:	949ff06f          	j	1d054 <_vfiprintf_r+0xa48>
   1d710:	0f010e13          	addi	t3,sp,240
   1d714:	00100513          	li	a0,1
   1d718:	00000713          	li	a4,0
   1d71c:	00048413          	mv	s0,s1
   1d720:	9dcff06f          	j	1c8fc <_vfiprintf_r+0x2f0>
   1d724:	00600c93          	li	s9,6
   1d728:	f6dff06f          	j	1d694 <_vfiprintf_r+0x1088>
   1d72c:	05710793          	addi	a5,sp,87
   1d730:	0ef13023          	sd	a5,224(sp)
   1d734:	00100793          	li	a5,1
   1d738:	0ef13423          	sd	a5,232(sp)
   1d73c:	0f010e13          	addi	t3,sp,240
   1d740:	00100513          	li	a0,1
   1d744:	944ff06f          	j	1c888 <_vfiprintf_r+0x27c>
   1d748:	00813783          	ld	a5,8(sp)
   1d74c:	00f71023          	sh	a5,0(a4)
   1d750:	fa9fe06f          	j	1c6f8 <_vfiprintf_r+0xec>
   1d754:	020b9b93          	slli	s7,s7,0x20
   1d758:	020bdb93          	srli	s7,s7,0x20
   1d75c:	00c13823          	sd	a2,16(sp)
   1d760:	00100793          	li	a5,1
   1d764:	b98ff06f          	j	1cafc <_vfiprintf_r+0x4f0>
   1d768:	01013783          	ld	a5,16(sp)
   1d76c:	0007ab83          	lw	s7,0(a5)
   1d770:	000b8793          	mv	a5,s7
   1d774:	a94ff06f          	j	1ca08 <_vfiprintf_r+0x3fc>
   1d778:	020b9b93          	slli	s7,s7,0x20
   1d77c:	020bdb93          	srli	s7,s7,0x20
   1d780:	b6cff06f          	j	1caec <_vfiprintf_r+0x4e0>
   1d784:	020b9b93          	slli	s7,s7,0x20
   1d788:	020bdb93          	srli	s7,s7,0x20
   1d78c:	dc9ff06f          	j	1d554 <_vfiprintf_r+0xf48>
   1d790:	06010613          	addi	a2,sp,96
   1d794:	00090593          	mv	a1,s2
   1d798:	00098513          	mv	a0,s3
   1d79c:	d59fe0ef          	jal	ra,1c4f4 <__sprint_r.part.0>
   1d7a0:	9ecff06f          	j	1c98c <_vfiprintf_r+0x380>
   1d7a4:	01513023          	sd	s5,0(sp)
   1d7a8:	01713823          	sd	s7,16(sp)
   1d7ac:	00000a93          	li	s5,0
   1d7b0:	a88ff06f          	j	1ca38 <_vfiprintf_r+0x42c>
   1d7b4:	00005b97          	auipc	s7,0x5
   1d7b8:	06cb8b93          	addi	s7,s7,108 # 22820 <blanks.1>
   1d7bc:	a79ff06f          	j	1d234 <_vfiprintf_r+0xc28>
   1d7c0:	0016071b          	addiw	a4,a2,1
   1d7c4:	00005b97          	auipc	s7,0x5
   1d7c8:	05cb8b93          	addi	s7,s7,92 # 22820 <blanks.1>
   1d7cc:	b3dff06f          	j	1d308 <_vfiprintf_r+0xcfc>
   1d7d0:	000b0d13          	mv	s10,s6
   1d7d4:	975ff06f          	j	1d148 <_vfiprintf_r+0xb3c>
   1d7d8:	000e0593          	mv	a1,t3
   1d7dc:	00050613          	mv	a2,a0
   1d7e0:	00005e17          	auipc	t3,0x5
   1d7e4:	050e0e13          	addi	t3,t3,80 # 22830 <zeroes.0>
   1d7e8:	f80ff06f          	j	1cf68 <_vfiprintf_r+0x95c>
   1d7ec:	fff00793          	li	a5,-1
   1d7f0:	00f13423          	sd	a5,8(sp)
   1d7f4:	9a4ff06f          	j	1c998 <_vfiprintf_r+0x38c>
   1d7f8:	00f72023          	sw	a5,0(a4)
   1d7fc:	efdfe06f          	j	1c6f8 <_vfiprintf_r+0xec>
   1d800:	01013683          	ld	a3,16(sp)
   1d804:	0006a783          	lw	a5,0(a3)
   1d808:	00868693          	addi	a3,a3,8
   1d80c:	00078a9b          	sext.w	s5,a5
   1d810:	0007d463          	bgez	a5,1d818 <_vfiprintf_r+0x120c>
   1d814:	fff00a93          	li	s5,-1
   1d818:	001c4783          	lbu	a5,1(s8)
   1d81c:	00d13823          	sd	a3,16(sp)
   1d820:	00070c13          	mv	s8,a4
   1d824:	f79fe06f          	j	1c79c <_vfiprintf_r+0x190>

000000000001d828 <vfiprintf>:
   1d828:	00060693          	mv	a3,a2
   1d82c:	00058613          	mv	a2,a1
   1d830:	00050593          	mv	a1,a0
   1d834:	7581b503          	ld	a0,1880(gp) # 24db8 <_impure_ptr>
   1d838:	dd5fe06f          	j	1c60c <_vfiprintf_r>

000000000001d83c <__sbprintf>:
   1d83c:	0105d783          	lhu	a5,16(a1)
   1d840:	0ac5ae03          	lw	t3,172(a1)
   1d844:	0125d303          	lhu	t1,18(a1)
   1d848:	0305b883          	ld	a7,48(a1)
   1d84c:	0405b803          	ld	a6,64(a1)
   1d850:	b3010113          	addi	sp,sp,-1232
   1d854:	ffd7f793          	andi	a5,a5,-3
   1d858:	40000713          	li	a4,1024
   1d85c:	4c813023          	sd	s0,1216(sp)
   1d860:	00f11823          	sh	a5,16(sp)
   1d864:	00058413          	mv	s0,a1
   1d868:	0b010793          	addi	a5,sp,176
   1d86c:	00010593          	mv	a1,sp
   1d870:	4a913c23          	sd	s1,1208(sp)
   1d874:	4b213823          	sd	s2,1200(sp)
   1d878:	4c113423          	sd	ra,1224(sp)
   1d87c:	00050913          	mv	s2,a0
   1d880:	0bc12623          	sw	t3,172(sp)
   1d884:	00611923          	sh	t1,18(sp)
   1d888:	03113823          	sd	a7,48(sp)
   1d88c:	05013023          	sd	a6,64(sp)
   1d890:	00f13023          	sd	a5,0(sp)
   1d894:	00f13c23          	sd	a5,24(sp)
   1d898:	00e12623          	sw	a4,12(sp)
   1d89c:	02e12023          	sw	a4,32(sp)
   1d8a0:	02012423          	sw	zero,40(sp)
   1d8a4:	d69fe0ef          	jal	ra,1c60c <_vfiprintf_r>
   1d8a8:	00050493          	mv	s1,a0
   1d8ac:	02055c63          	bgez	a0,1d8e4 <__sbprintf+0xa8>
   1d8b0:	01015783          	lhu	a5,16(sp)
   1d8b4:	0407f793          	andi	a5,a5,64
   1d8b8:	00078863          	beqz	a5,1d8c8 <__sbprintf+0x8c>
   1d8bc:	01045783          	lhu	a5,16(s0)
   1d8c0:	0407e793          	ori	a5,a5,64
   1d8c4:	00f41823          	sh	a5,16(s0)
   1d8c8:	4c813083          	ld	ra,1224(sp)
   1d8cc:	4c013403          	ld	s0,1216(sp)
   1d8d0:	4b013903          	ld	s2,1200(sp)
   1d8d4:	00048513          	mv	a0,s1
   1d8d8:	4b813483          	ld	s1,1208(sp)
   1d8dc:	4d010113          	addi	sp,sp,1232
   1d8e0:	00008067          	ret
   1d8e4:	00010593          	mv	a1,sp
   1d8e8:	00090513          	mv	a0,s2
   1d8ec:	b59f50ef          	jal	ra,13444 <_fflush_r>
   1d8f0:	fc0500e3          	beqz	a0,1d8b0 <__sbprintf+0x74>
   1d8f4:	fff00493          	li	s1,-1
   1d8f8:	fb9ff06f          	j	1d8b0 <__sbprintf+0x74>

000000000001d8fc <_wctomb_r>:
   1d8fc:	e401b783          	ld	a5,-448(gp) # 244a0 <__global_locale+0xe0>
   1d900:	00078067          	jr	a5

000000000001d904 <__ascii_wctomb>:
   1d904:	0006079b          	sext.w	a5,a2
   1d908:	02058463          	beqz	a1,1d930 <__ascii_wctomb+0x2c>
   1d90c:	0ff00713          	li	a4,255
   1d910:	00f76863          	bltu	a4,a5,1d920 <__ascii_wctomb+0x1c>
   1d914:	00c58023          	sb	a2,0(a1)
   1d918:	00100513          	li	a0,1
   1d91c:	00008067          	ret
   1d920:	08a00793          	li	a5,138
   1d924:	00f52023          	sw	a5,0(a0)
   1d928:	fff00513          	li	a0,-1
   1d92c:	00008067          	ret
   1d930:	00000513          	li	a0,0
   1d934:	00008067          	ret

000000000001d938 <_write_r>:
   1d938:	ff010113          	addi	sp,sp,-16
   1d93c:	00058713          	mv	a4,a1
   1d940:	00813023          	sd	s0,0(sp)
   1d944:	00060593          	mv	a1,a2
   1d948:	00050413          	mv	s0,a0
   1d94c:	00068613          	mv	a2,a3
   1d950:	00070513          	mv	a0,a4
   1d954:	7801a823          	sw	zero,1936(gp) # 24df0 <errno>
   1d958:	00113423          	sd	ra,8(sp)
   1d95c:	67c020ef          	jal	ra,1ffd8 <_write>
   1d960:	fff00793          	li	a5,-1
   1d964:	00f50a63          	beq	a0,a5,1d978 <_write_r+0x40>
   1d968:	00813083          	ld	ra,8(sp)
   1d96c:	00013403          	ld	s0,0(sp)
   1d970:	01010113          	addi	sp,sp,16
   1d974:	00008067          	ret
   1d978:	7901a783          	lw	a5,1936(gp) # 24df0 <errno>
   1d97c:	fe0786e3          	beqz	a5,1d968 <_write_r+0x30>
   1d980:	00813083          	ld	ra,8(sp)
   1d984:	00f42023          	sw	a5,0(s0)
   1d988:	00013403          	ld	s0,0(sp)
   1d98c:	01010113          	addi	sp,sp,16
   1d990:	00008067          	ret

000000000001d994 <__assert_func>:
   1d994:	ff010113          	addi	sp,sp,-16
   1d998:	00068793          	mv	a5,a3
   1d99c:	7581b703          	ld	a4,1880(gp) # 24db8 <_impure_ptr>
   1d9a0:	00060813          	mv	a6,a2
   1d9a4:	00113423          	sd	ra,8(sp)
   1d9a8:	01873883          	ld	a7,24(a4)
   1d9ac:	00078613          	mv	a2,a5
   1d9b0:	00050693          	mv	a3,a0
   1d9b4:	00058713          	mv	a4,a1
   1d9b8:	00005797          	auipc	a5,0x5
   1d9bc:	e8878793          	addi	a5,a5,-376 # 22840 <zeroes.0+0x10>
   1d9c0:	00080c63          	beqz	a6,1d9d8 <__assert_func+0x44>
   1d9c4:	00005597          	auipc	a1,0x5
   1d9c8:	e8c58593          	addi	a1,a1,-372 # 22850 <zeroes.0+0x20>
   1d9cc:	00088513          	mv	a0,a7
   1d9d0:	330000ef          	jal	ra,1dd00 <fiprintf>
   1d9d4:	4ad010ef          	jal	ra,1f680 <abort>
   1d9d8:	00004797          	auipc	a5,0x4
   1d9dc:	4a078793          	addi	a5,a5,1184 # 21e78 <__clzdi2+0x94>
   1d9e0:	00078813          	mv	a6,a5
   1d9e4:	fe1ff06f          	j	1d9c4 <__assert_func+0x30>

000000000001d9e8 <__assert>:
   1d9e8:	ff010113          	addi	sp,sp,-16
   1d9ec:	00060693          	mv	a3,a2
   1d9f0:	00000613          	li	a2,0
   1d9f4:	00113423          	sd	ra,8(sp)
   1d9f8:	f9dff0ef          	jal	ra,1d994 <__assert_func>

000000000001d9fc <atexit>:
   1d9fc:	00050593          	mv	a1,a0
   1da00:	00000693          	li	a3,0
   1da04:	00000613          	li	a2,0
   1da08:	00000513          	li	a0,0
   1da0c:	48d0106f          	j	1f698 <__register_exitproc>

000000000001da10 <_calloc_r>:
   1da10:	ff010113          	addi	sp,sp,-16
   1da14:	00813023          	sd	s0,0(sp)
   1da18:	00050413          	mv	s0,a0
   1da1c:	00058513          	mv	a0,a1
   1da20:	00060593          	mv	a1,a2
   1da24:	00113423          	sd	ra,8(sp)
   1da28:	298040ef          	jal	ra,21cc0 <__muldi3>
   1da2c:	00050593          	mv	a1,a0
   1da30:	00040513          	mv	a0,s0
   1da34:	9e9f90ef          	jal	ra,1741c <_malloc_r>
   1da38:	00050413          	mv	s0,a0
   1da3c:	02050863          	beqz	a0,1da6c <_calloc_r+0x5c>
   1da40:	ff853603          	ld	a2,-8(a0)
   1da44:	04800713          	li	a4,72
   1da48:	ffc67613          	andi	a2,a2,-4
   1da4c:	ff860613          	addi	a2,a2,-8
   1da50:	06c76063          	bltu	a4,a2,1dab0 <_calloc_r+0xa0>
   1da54:	02700693          	li	a3,39
   1da58:	00050793          	mv	a5,a0
   1da5c:	02c6e263          	bltu	a3,a2,1da80 <_calloc_r+0x70>
   1da60:	0007b023          	sd	zero,0(a5)
   1da64:	0007b423          	sd	zero,8(a5)
   1da68:	0007b823          	sd	zero,16(a5)
   1da6c:	00813083          	ld	ra,8(sp)
   1da70:	00040513          	mv	a0,s0
   1da74:	00013403          	ld	s0,0(sp)
   1da78:	01010113          	addi	sp,sp,16
   1da7c:	00008067          	ret
   1da80:	00053023          	sd	zero,0(a0)
   1da84:	00053423          	sd	zero,8(a0)
   1da88:	03700793          	li	a5,55
   1da8c:	04c7f063          	bgeu	a5,a2,1dacc <_calloc_r+0xbc>
   1da90:	00053823          	sd	zero,16(a0)
   1da94:	00053c23          	sd	zero,24(a0)
   1da98:	02050793          	addi	a5,a0,32
   1da9c:	fce612e3          	bne	a2,a4,1da60 <_calloc_r+0x50>
   1daa0:	02053023          	sd	zero,32(a0)
   1daa4:	03050793          	addi	a5,a0,48
   1daa8:	02053423          	sd	zero,40(a0)
   1daac:	fb5ff06f          	j	1da60 <_calloc_r+0x50>
   1dab0:	00000593          	li	a1,0
   1dab4:	9a9f20ef          	jal	ra,1045c <memset>
   1dab8:	00813083          	ld	ra,8(sp)
   1dabc:	00040513          	mv	a0,s0
   1dac0:	00013403          	ld	s0,0(sp)
   1dac4:	01010113          	addi	sp,sp,16
   1dac8:	00008067          	ret
   1dacc:	01050793          	addi	a5,a0,16
   1dad0:	f91ff06f          	j	1da60 <_calloc_r+0x50>

000000000001dad4 <_close_r>:
   1dad4:	ff010113          	addi	sp,sp,-16
   1dad8:	00813023          	sd	s0,0(sp)
   1dadc:	00050413          	mv	s0,a0
   1dae0:	00058513          	mv	a0,a1
   1dae4:	7801a823          	sw	zero,1936(gp) # 24df0 <errno>
   1dae8:	00113423          	sd	ra,8(sp)
   1daec:	230020ef          	jal	ra,1fd1c <_close>
   1daf0:	fff00793          	li	a5,-1
   1daf4:	00f50a63          	beq	a0,a5,1db08 <_close_r+0x34>
   1daf8:	00813083          	ld	ra,8(sp)
   1dafc:	00013403          	ld	s0,0(sp)
   1db00:	01010113          	addi	sp,sp,16
   1db04:	00008067          	ret
   1db08:	7901a783          	lw	a5,1936(gp) # 24df0 <errno>
   1db0c:	fe0786e3          	beqz	a5,1daf8 <_close_r+0x24>
   1db10:	00813083          	ld	ra,8(sp)
   1db14:	00f42023          	sw	a5,0(s0)
   1db18:	00013403          	ld	s0,0(sp)
   1db1c:	01010113          	addi	sp,sp,16
   1db20:	00008067          	ret

000000000001db24 <_fclose_r.part.0>:
   1db24:	fe010113          	addi	sp,sp,-32
   1db28:	00813823          	sd	s0,16(sp)
   1db2c:	00913423          	sd	s1,8(sp)
   1db30:	01213023          	sd	s2,0(sp)
   1db34:	00058413          	mv	s0,a1
   1db38:	00113c23          	sd	ra,24(sp)
   1db3c:	00050493          	mv	s1,a0
   1db40:	ea0f50ef          	jal	ra,131e0 <__sflush_r>
   1db44:	05043783          	ld	a5,80(s0)
   1db48:	00050913          	mv	s2,a0
   1db4c:	00078a63          	beqz	a5,1db60 <_fclose_r.part.0+0x3c>
   1db50:	03043583          	ld	a1,48(s0)
   1db54:	00048513          	mv	a0,s1
   1db58:	000780e7          	jalr	a5
   1db5c:	06054463          	bltz	a0,1dbc4 <_fclose_r.part.0+0xa0>
   1db60:	01045783          	lhu	a5,16(s0)
   1db64:	0807f793          	andi	a5,a5,128
   1db68:	06079663          	bnez	a5,1dbd4 <_fclose_r.part.0+0xb0>
   1db6c:	05843583          	ld	a1,88(s0)
   1db70:	00058c63          	beqz	a1,1db88 <_fclose_r.part.0+0x64>
   1db74:	07440793          	addi	a5,s0,116
   1db78:	00f58663          	beq	a1,a5,1db84 <_fclose_r.part.0+0x60>
   1db7c:	00048513          	mv	a0,s1
   1db80:	ed9f50ef          	jal	ra,13a58 <_free_r>
   1db84:	04043c23          	sd	zero,88(s0)
   1db88:	07843583          	ld	a1,120(s0)
   1db8c:	00058863          	beqz	a1,1db9c <_fclose_r.part.0+0x78>
   1db90:	00048513          	mv	a0,s1
   1db94:	ec5f50ef          	jal	ra,13a58 <_free_r>
   1db98:	06043c23          	sd	zero,120(s0)
   1db9c:	cf5f50ef          	jal	ra,13890 <__sfp_lock_acquire>
   1dba0:	00041823          	sh	zero,16(s0)
   1dba4:	cf1f50ef          	jal	ra,13894 <__sfp_lock_release>
   1dba8:	01813083          	ld	ra,24(sp)
   1dbac:	01013403          	ld	s0,16(sp)
   1dbb0:	00813483          	ld	s1,8(sp)
   1dbb4:	00090513          	mv	a0,s2
   1dbb8:	00013903          	ld	s2,0(sp)
   1dbbc:	02010113          	addi	sp,sp,32
   1dbc0:	00008067          	ret
   1dbc4:	01045783          	lhu	a5,16(s0)
   1dbc8:	fff00913          	li	s2,-1
   1dbcc:	0807f793          	andi	a5,a5,128
   1dbd0:	f8078ee3          	beqz	a5,1db6c <_fclose_r.part.0+0x48>
   1dbd4:	01843583          	ld	a1,24(s0)
   1dbd8:	00048513          	mv	a0,s1
   1dbdc:	e7df50ef          	jal	ra,13a58 <_free_r>
   1dbe0:	f8dff06f          	j	1db6c <_fclose_r.part.0+0x48>

000000000001dbe4 <_fclose_r>:
   1dbe4:	06058463          	beqz	a1,1dc4c <_fclose_r+0x68>
   1dbe8:	fe010113          	addi	sp,sp,-32
   1dbec:	00813823          	sd	s0,16(sp)
   1dbf0:	00113c23          	sd	ra,24(sp)
   1dbf4:	00050413          	mv	s0,a0
   1dbf8:	00050663          	beqz	a0,1dc04 <_fclose_r+0x20>
   1dbfc:	05052783          	lw	a5,80(a0)
   1dc00:	02078a63          	beqz	a5,1dc34 <_fclose_r+0x50>
   1dc04:	01059783          	lh	a5,16(a1)
   1dc08:	00079c63          	bnez	a5,1dc20 <_fclose_r+0x3c>
   1dc0c:	01813083          	ld	ra,24(sp)
   1dc10:	01013403          	ld	s0,16(sp)
   1dc14:	00000513          	li	a0,0
   1dc18:	02010113          	addi	sp,sp,32
   1dc1c:	00008067          	ret
   1dc20:	00040513          	mv	a0,s0
   1dc24:	01013403          	ld	s0,16(sp)
   1dc28:	01813083          	ld	ra,24(sp)
   1dc2c:	02010113          	addi	sp,sp,32
   1dc30:	ef5ff06f          	j	1db24 <_fclose_r.part.0>
   1dc34:	00b13423          	sd	a1,8(sp)
   1dc38:	c49f50ef          	jal	ra,13880 <__sinit>
   1dc3c:	00813583          	ld	a1,8(sp)
   1dc40:	01059783          	lh	a5,16(a1)
   1dc44:	fc0784e3          	beqz	a5,1dc0c <_fclose_r+0x28>
   1dc48:	fd9ff06f          	j	1dc20 <_fclose_r+0x3c>
   1dc4c:	00000513          	li	a0,0
   1dc50:	00008067          	ret

000000000001dc54 <fclose>:
   1dc54:	06050663          	beqz	a0,1dcc0 <fclose+0x6c>
   1dc58:	fe010113          	addi	sp,sp,-32
   1dc5c:	00813823          	sd	s0,16(sp)
   1dc60:	00113c23          	sd	ra,24(sp)
   1dc64:	00050413          	mv	s0,a0
   1dc68:	7581b503          	ld	a0,1880(gp) # 24db8 <_impure_ptr>
   1dc6c:	00050663          	beqz	a0,1dc78 <fclose+0x24>
   1dc70:	05052783          	lw	a5,80(a0)
   1dc74:	02078a63          	beqz	a5,1dca8 <fclose+0x54>
   1dc78:	01041783          	lh	a5,16(s0)
   1dc7c:	00079c63          	bnez	a5,1dc94 <fclose+0x40>
   1dc80:	01813083          	ld	ra,24(sp)
   1dc84:	01013403          	ld	s0,16(sp)
   1dc88:	00000513          	li	a0,0
   1dc8c:	02010113          	addi	sp,sp,32
   1dc90:	00008067          	ret
   1dc94:	00040593          	mv	a1,s0
   1dc98:	01013403          	ld	s0,16(sp)
   1dc9c:	01813083          	ld	ra,24(sp)
   1dca0:	02010113          	addi	sp,sp,32
   1dca4:	e81ff06f          	j	1db24 <_fclose_r.part.0>
   1dca8:	00a13423          	sd	a0,8(sp)
   1dcac:	bd5f50ef          	jal	ra,13880 <__sinit>
   1dcb0:	01041783          	lh	a5,16(s0)
   1dcb4:	00813503          	ld	a0,8(sp)
   1dcb8:	fc0784e3          	beqz	a5,1dc80 <fclose+0x2c>
   1dcbc:	fd9ff06f          	j	1dc94 <fclose+0x40>
   1dcc0:	00000513          	li	a0,0
   1dcc4:	00008067          	ret

000000000001dcc8 <_fiprintf_r>:
   1dcc8:	fb010113          	addi	sp,sp,-80
   1dccc:	02810313          	addi	t1,sp,40
   1dcd0:	02d13423          	sd	a3,40(sp)
   1dcd4:	00030693          	mv	a3,t1
   1dcd8:	00113c23          	sd	ra,24(sp)
   1dcdc:	02e13823          	sd	a4,48(sp)
   1dce0:	02f13c23          	sd	a5,56(sp)
   1dce4:	05013023          	sd	a6,64(sp)
   1dce8:	05113423          	sd	a7,72(sp)
   1dcec:	00613423          	sd	t1,8(sp)
   1dcf0:	91dfe0ef          	jal	ra,1c60c <_vfiprintf_r>
   1dcf4:	01813083          	ld	ra,24(sp)
   1dcf8:	05010113          	addi	sp,sp,80
   1dcfc:	00008067          	ret

000000000001dd00 <fiprintf>:
   1dd00:	fb010113          	addi	sp,sp,-80
   1dd04:	02010313          	addi	t1,sp,32
   1dd08:	02c13023          	sd	a2,32(sp)
   1dd0c:	02d13423          	sd	a3,40(sp)
   1dd10:	00058613          	mv	a2,a1
   1dd14:	00030693          	mv	a3,t1
   1dd18:	00050593          	mv	a1,a0
   1dd1c:	7581b503          	ld	a0,1880(gp) # 24db8 <_impure_ptr>
   1dd20:	00113c23          	sd	ra,24(sp)
   1dd24:	02e13823          	sd	a4,48(sp)
   1dd28:	02f13c23          	sd	a5,56(sp)
   1dd2c:	05013023          	sd	a6,64(sp)
   1dd30:	05113423          	sd	a7,72(sp)
   1dd34:	00613423          	sd	t1,8(sp)
   1dd38:	8d5fe0ef          	jal	ra,1c60c <_vfiprintf_r>
   1dd3c:	01813083          	ld	ra,24(sp)
   1dd40:	05010113          	addi	sp,sp,80
   1dd44:	00008067          	ret

000000000001dd48 <__fputwc>:
   1dd48:	fb010113          	addi	sp,sp,-80
   1dd4c:	04813023          	sd	s0,64(sp)
   1dd50:	03313423          	sd	s3,40(sp)
   1dd54:	01613823          	sd	s6,16(sp)
   1dd58:	04113423          	sd	ra,72(sp)
   1dd5c:	02913c23          	sd	s1,56(sp)
   1dd60:	03213823          	sd	s2,48(sp)
   1dd64:	03413023          	sd	s4,32(sp)
   1dd68:	01513c23          	sd	s5,24(sp)
   1dd6c:	00050b13          	mv	s6,a0
   1dd70:	00058993          	mv	s3,a1
   1dd74:	00060413          	mv	s0,a2
   1dd78:	bc0f90ef          	jal	ra,17138 <__locale_mb_cur_max>
   1dd7c:	00100793          	li	a5,1
   1dd80:	02f51063          	bne	a0,a5,1dda0 <__fputwc+0x58>
   1dd84:	fff9879b          	addiw	a5,s3,-1
   1dd88:	0fe00713          	li	a4,254
   1dd8c:	00f76a63          	bltu	a4,a5,1dda0 <__fputwc+0x58>
   1dd90:	0ff9f713          	andi	a4,s3,255
   1dd94:	00e10423          	sb	a4,8(sp)
   1dd98:	00100913          	li	s2,1
   1dd9c:	02c0006f          	j	1ddc8 <__fputwc+0x80>
   1dda0:	0a440693          	addi	a3,s0,164
   1dda4:	00098613          	mv	a2,s3
   1dda8:	00810593          	addi	a1,sp,8
   1ddac:	000b0513          	mv	a0,s6
   1ddb0:	7d0010ef          	jal	ra,1f580 <_wcrtomb_r>
   1ddb4:	fff00793          	li	a5,-1
   1ddb8:	00050913          	mv	s2,a0
   1ddbc:	0af50263          	beq	a0,a5,1de60 <__fputwc+0x118>
   1ddc0:	08050c63          	beqz	a0,1de58 <__fputwc+0x110>
   1ddc4:	00814703          	lbu	a4,8(sp)
   1ddc8:	00000493          	li	s1,0
   1ddcc:	fff00a13          	li	s4,-1
   1ddd0:	00a00a93          	li	s5,10
   1ddd4:	0280006f          	j	1ddfc <__fputwc+0xb4>
   1ddd8:	00043783          	ld	a5,0(s0)
   1dddc:	00178693          	addi	a3,a5,1
   1dde0:	00d43023          	sd	a3,0(s0)
   1dde4:	00e78023          	sb	a4,0(a5)
   1dde8:	00148493          	addi	s1,s1,1
   1ddec:	00810793          	addi	a5,sp,8
   1ddf0:	009787b3          	add	a5,a5,s1
   1ddf4:	0724f263          	bgeu	s1,s2,1de58 <__fputwc+0x110>
   1ddf8:	0007c703          	lbu	a4,0(a5)
   1ddfc:	00c42783          	lw	a5,12(s0)
   1de00:	fff7879b          	addiw	a5,a5,-1
   1de04:	00f42623          	sw	a5,12(s0)
   1de08:	fc07d8e3          	bgez	a5,1ddd8 <__fputwc+0x90>
   1de0c:	02842683          	lw	a3,40(s0)
   1de10:	00070593          	mv	a1,a4
   1de14:	00040613          	mv	a2,s0
   1de18:	000b0513          	mv	a0,s6
   1de1c:	00d7c463          	blt	a5,a3,1de24 <__fputwc+0xdc>
   1de20:	fb571ce3          	bne	a4,s5,1ddd8 <__fputwc+0x90>
   1de24:	5c4010ef          	jal	ra,1f3e8 <__swbuf_r>
   1de28:	fd4510e3          	bne	a0,s4,1dde8 <__fputwc+0xa0>
   1de2c:	fff00513          	li	a0,-1
   1de30:	04813083          	ld	ra,72(sp)
   1de34:	04013403          	ld	s0,64(sp)
   1de38:	03813483          	ld	s1,56(sp)
   1de3c:	03013903          	ld	s2,48(sp)
   1de40:	02813983          	ld	s3,40(sp)
   1de44:	02013a03          	ld	s4,32(sp)
   1de48:	01813a83          	ld	s5,24(sp)
   1de4c:	01013b03          	ld	s6,16(sp)
   1de50:	05010113          	addi	sp,sp,80
   1de54:	00008067          	ret
   1de58:	0009851b          	sext.w	a0,s3
   1de5c:	fd5ff06f          	j	1de30 <__fputwc+0xe8>
   1de60:	01045783          	lhu	a5,16(s0)
   1de64:	fff00513          	li	a0,-1
   1de68:	0407e793          	ori	a5,a5,64
   1de6c:	00f41823          	sh	a5,16(s0)
   1de70:	fc1ff06f          	j	1de30 <__fputwc+0xe8>

000000000001de74 <_fputwc_r>:
   1de74:	01061783          	lh	a5,16(a2)
   1de78:	03279713          	slli	a4,a5,0x32
   1de7c:	02074063          	bltz	a4,1de9c <_fputwc_r+0x28>
   1de80:	0ac62703          	lw	a4,172(a2)
   1de84:	000026b7          	lui	a3,0x2
   1de88:	00d7e7b3          	or	a5,a5,a3
   1de8c:	000026b7          	lui	a3,0x2
   1de90:	00d76733          	or	a4,a4,a3
   1de94:	00f61823          	sh	a5,16(a2)
   1de98:	0ae62623          	sw	a4,172(a2)
   1de9c:	eadff06f          	j	1dd48 <__fputwc>

000000000001dea0 <fputwc>:
   1dea0:	fe010113          	addi	sp,sp,-32
   1dea4:	00813823          	sd	s0,16(sp)
   1dea8:	00113c23          	sd	ra,24(sp)
   1deac:	7581b403          	ld	s0,1880(gp) # 24db8 <_impure_ptr>
   1deb0:	00058613          	mv	a2,a1
   1deb4:	00050593          	mv	a1,a0
   1deb8:	00040663          	beqz	s0,1dec4 <fputwc+0x24>
   1debc:	05042783          	lw	a5,80(s0)
   1dec0:	04078063          	beqz	a5,1df00 <fputwc+0x60>
   1dec4:	01061783          	lh	a5,16(a2)
   1dec8:	03279713          	slli	a4,a5,0x32
   1decc:	02074063          	bltz	a4,1deec <fputwc+0x4c>
   1ded0:	0ac62703          	lw	a4,172(a2)
   1ded4:	000026b7          	lui	a3,0x2
   1ded8:	00d7e7b3          	or	a5,a5,a3
   1dedc:	000026b7          	lui	a3,0x2
   1dee0:	00d76733          	or	a4,a4,a3
   1dee4:	00f61823          	sh	a5,16(a2)
   1dee8:	0ae62623          	sw	a4,172(a2)
   1deec:	00040513          	mv	a0,s0
   1def0:	01013403          	ld	s0,16(sp)
   1def4:	01813083          	ld	ra,24(sp)
   1def8:	02010113          	addi	sp,sp,32
   1defc:	e4dff06f          	j	1dd48 <__fputwc>
   1df00:	00a13023          	sd	a0,0(sp)
   1df04:	00040513          	mv	a0,s0
   1df08:	00c13423          	sd	a2,8(sp)
   1df0c:	975f50ef          	jal	ra,13880 <__sinit>
   1df10:	00813603          	ld	a2,8(sp)
   1df14:	00013583          	ld	a1,0(sp)
   1df18:	fadff06f          	j	1dec4 <fputwc+0x24>

000000000001df1c <_fstat_r>:
   1df1c:	ff010113          	addi	sp,sp,-16
   1df20:	00058713          	mv	a4,a1
   1df24:	00813023          	sd	s0,0(sp)
   1df28:	00060593          	mv	a1,a2
   1df2c:	00050413          	mv	s0,a0
   1df30:	00070513          	mv	a0,a4
   1df34:	7801a823          	sw	zero,1936(gp) # 24df0 <errno>
   1df38:	00113423          	sd	ra,8(sp)
   1df3c:	67d010ef          	jal	ra,1fdb8 <_fstat>
   1df40:	fff00793          	li	a5,-1
   1df44:	00f50a63          	beq	a0,a5,1df58 <_fstat_r+0x3c>
   1df48:	00813083          	ld	ra,8(sp)
   1df4c:	00013403          	ld	s0,0(sp)
   1df50:	01010113          	addi	sp,sp,16
   1df54:	00008067          	ret
   1df58:	7901a783          	lw	a5,1936(gp) # 24df0 <errno>
   1df5c:	fe0786e3          	beqz	a5,1df48 <_fstat_r+0x2c>
   1df60:	00813083          	ld	ra,8(sp)
   1df64:	00f42023          	sw	a5,0(s0)
   1df68:	00013403          	ld	s0,0(sp)
   1df6c:	01010113          	addi	sp,sp,16
   1df70:	00008067          	ret

000000000001df74 <_isatty_r>:
   1df74:	ff010113          	addi	sp,sp,-16
   1df78:	00813023          	sd	s0,0(sp)
   1df7c:	00050413          	mv	s0,a0
   1df80:	00058513          	mv	a0,a1
   1df84:	7801a823          	sw	zero,1936(gp) # 24df0 <errno>
   1df88:	00113423          	sd	ra,8(sp)
   1df8c:	6a9010ef          	jal	ra,1fe34 <_isatty>
   1df90:	fff00793          	li	a5,-1
   1df94:	00f50a63          	beq	a0,a5,1dfa8 <_isatty_r+0x34>
   1df98:	00813083          	ld	ra,8(sp)
   1df9c:	00013403          	ld	s0,0(sp)
   1dfa0:	01010113          	addi	sp,sp,16
   1dfa4:	00008067          	ret
   1dfa8:	7901a783          	lw	a5,1936(gp) # 24df0 <errno>
   1dfac:	fe0786e3          	beqz	a5,1df98 <_isatty_r+0x24>
   1dfb0:	00813083          	ld	ra,8(sp)
   1dfb4:	00f42023          	sw	a5,0(s0)
   1dfb8:	00013403          	ld	s0,0(sp)
   1dfbc:	01010113          	addi	sp,sp,16
   1dfc0:	00008067          	ret

000000000001dfc4 <_lseek_r>:
   1dfc4:	ff010113          	addi	sp,sp,-16
   1dfc8:	00058713          	mv	a4,a1
   1dfcc:	00813023          	sd	s0,0(sp)
   1dfd0:	00060593          	mv	a1,a2
   1dfd4:	00050413          	mv	s0,a0
   1dfd8:	00068613          	mv	a2,a3
   1dfdc:	00070513          	mv	a0,a4
   1dfe0:	7801a823          	sw	zero,1936(gp) # 24df0 <errno>
   1dfe4:	00113423          	sd	ra,8(sp)
   1dfe8:	6b1010ef          	jal	ra,1fe98 <_lseek>
   1dfec:	fff00793          	li	a5,-1
   1dff0:	00f50a63          	beq	a0,a5,1e004 <_lseek_r+0x40>
   1dff4:	00813083          	ld	ra,8(sp)
   1dff8:	00013403          	ld	s0,0(sp)
   1dffc:	01010113          	addi	sp,sp,16
   1e000:	00008067          	ret
   1e004:	7901a783          	lw	a5,1936(gp) # 24df0 <errno>
   1e008:	fe0786e3          	beqz	a5,1dff4 <_lseek_r+0x30>
   1e00c:	00813083          	ld	ra,8(sp)
   1e010:	00f42023          	sw	a5,0(s0)
   1e014:	00013403          	ld	s0,0(sp)
   1e018:	01010113          	addi	sp,sp,16
   1e01c:	00008067          	ret

000000000001e020 <_read_r>:
   1e020:	ff010113          	addi	sp,sp,-16
   1e024:	00058713          	mv	a4,a1
   1e028:	00813023          	sd	s0,0(sp)
   1e02c:	00060593          	mv	a1,a2
   1e030:	00050413          	mv	s0,a0
   1e034:	00068613          	mv	a2,a3
   1e038:	00070513          	mv	a0,a4
   1e03c:	7801a823          	sw	zero,1936(gp) # 24df0 <errno>
   1e040:	00113423          	sd	ra,8(sp)
   1e044:	6a5010ef          	jal	ra,1fee8 <_read>
   1e048:	fff00793          	li	a5,-1
   1e04c:	00f50a63          	beq	a0,a5,1e060 <_read_r+0x40>
   1e050:	00813083          	ld	ra,8(sp)
   1e054:	00013403          	ld	s0,0(sp)
   1e058:	01010113          	addi	sp,sp,16
   1e05c:	00008067          	ret
   1e060:	7901a783          	lw	a5,1936(gp) # 24df0 <errno>
   1e064:	fe0786e3          	beqz	a5,1e050 <_read_r+0x30>
   1e068:	00813083          	ld	ra,8(sp)
   1e06c:	00f42023          	sw	a5,0(s0)
   1e070:	00013403          	ld	s0,0(sp)
   1e074:	01010113          	addi	sp,sp,16
   1e078:	00008067          	ret

000000000001e07c <cleanup_glue>:
   1e07c:	fd010113          	addi	sp,sp,-48
   1e080:	01213823          	sd	s2,16(sp)
   1e084:	0005b903          	ld	s2,0(a1)
   1e088:	02813023          	sd	s0,32(sp)
   1e08c:	00913c23          	sd	s1,24(sp)
   1e090:	02113423          	sd	ra,40(sp)
   1e094:	01313423          	sd	s3,8(sp)
   1e098:	01413023          	sd	s4,0(sp)
   1e09c:	00058413          	mv	s0,a1
   1e0a0:	00050493          	mv	s1,a0
   1e0a4:	04090263          	beqz	s2,1e0e8 <cleanup_glue+0x6c>
   1e0a8:	00093983          	ld	s3,0(s2)
   1e0ac:	02098863          	beqz	s3,1e0dc <cleanup_glue+0x60>
   1e0b0:	0009ba03          	ld	s4,0(s3)
   1e0b4:	000a0e63          	beqz	s4,1e0d0 <cleanup_glue+0x54>
   1e0b8:	000a3583          	ld	a1,0(s4)
   1e0bc:	00058463          	beqz	a1,1e0c4 <cleanup_glue+0x48>
   1e0c0:	fbdff0ef          	jal	ra,1e07c <cleanup_glue>
   1e0c4:	000a0593          	mv	a1,s4
   1e0c8:	00048513          	mv	a0,s1
   1e0cc:	98df50ef          	jal	ra,13a58 <_free_r>
   1e0d0:	00098593          	mv	a1,s3
   1e0d4:	00048513          	mv	a0,s1
   1e0d8:	981f50ef          	jal	ra,13a58 <_free_r>
   1e0dc:	00090593          	mv	a1,s2
   1e0e0:	00048513          	mv	a0,s1
   1e0e4:	975f50ef          	jal	ra,13a58 <_free_r>
   1e0e8:	00040593          	mv	a1,s0
   1e0ec:	02013403          	ld	s0,32(sp)
   1e0f0:	02813083          	ld	ra,40(sp)
   1e0f4:	01013903          	ld	s2,16(sp)
   1e0f8:	00813983          	ld	s3,8(sp)
   1e0fc:	00013a03          	ld	s4,0(sp)
   1e100:	00048513          	mv	a0,s1
   1e104:	01813483          	ld	s1,24(sp)
   1e108:	03010113          	addi	sp,sp,48
   1e10c:	94df506f          	j	13a58 <_free_r>

000000000001e110 <_reclaim_reent>:
   1e110:	7581b783          	ld	a5,1880(gp) # 24db8 <_impure_ptr>
   1e114:	10a78a63          	beq	a5,a0,1e228 <_reclaim_reent+0x118>
   1e118:	07853583          	ld	a1,120(a0)
   1e11c:	fd010113          	addi	sp,sp,-48
   1e120:	00913c23          	sd	s1,24(sp)
   1e124:	02113423          	sd	ra,40(sp)
   1e128:	02813023          	sd	s0,32(sp)
   1e12c:	01213823          	sd	s2,16(sp)
   1e130:	01313423          	sd	s3,8(sp)
   1e134:	00050493          	mv	s1,a0
   1e138:	04058063          	beqz	a1,1e178 <_reclaim_reent+0x68>
   1e13c:	00000913          	li	s2,0
   1e140:	20000993          	li	s3,512
   1e144:	012587b3          	add	a5,a1,s2
   1e148:	0007b403          	ld	s0,0(a5)
   1e14c:	00040e63          	beqz	s0,1e168 <_reclaim_reent+0x58>
   1e150:	00040593          	mv	a1,s0
   1e154:	00043403          	ld	s0,0(s0)
   1e158:	00048513          	mv	a0,s1
   1e15c:	8fdf50ef          	jal	ra,13a58 <_free_r>
   1e160:	fe0418e3          	bnez	s0,1e150 <_reclaim_reent+0x40>
   1e164:	0784b583          	ld	a1,120(s1)
   1e168:	00890913          	addi	s2,s2,8
   1e16c:	fd391ce3          	bne	s2,s3,1e144 <_reclaim_reent+0x34>
   1e170:	00048513          	mv	a0,s1
   1e174:	8e5f50ef          	jal	ra,13a58 <_free_r>
   1e178:	0604b583          	ld	a1,96(s1)
   1e17c:	00058663          	beqz	a1,1e188 <_reclaim_reent+0x78>
   1e180:	00048513          	mv	a0,s1
   1e184:	8d5f50ef          	jal	ra,13a58 <_free_r>
   1e188:	1f84b403          	ld	s0,504(s1)
   1e18c:	02040063          	beqz	s0,1e1ac <_reclaim_reent+0x9c>
   1e190:	20048913          	addi	s2,s1,512
   1e194:	01240c63          	beq	s0,s2,1e1ac <_reclaim_reent+0x9c>
   1e198:	00040593          	mv	a1,s0
   1e19c:	00043403          	ld	s0,0(s0)
   1e1a0:	00048513          	mv	a0,s1
   1e1a4:	8b5f50ef          	jal	ra,13a58 <_free_r>
   1e1a8:	fe8918e3          	bne	s2,s0,1e198 <_reclaim_reent+0x88>
   1e1ac:	0884b583          	ld	a1,136(s1)
   1e1b0:	00058663          	beqz	a1,1e1bc <_reclaim_reent+0xac>
   1e1b4:	00048513          	mv	a0,s1
   1e1b8:	8a1f50ef          	jal	ra,13a58 <_free_r>
   1e1bc:	0504a783          	lw	a5,80(s1)
   1e1c0:	04078663          	beqz	a5,1e20c <_reclaim_reent+0xfc>
   1e1c4:	0584b783          	ld	a5,88(s1)
   1e1c8:	00048513          	mv	a0,s1
   1e1cc:	000780e7          	jalr	a5
   1e1d0:	5204b403          	ld	s0,1312(s1)
   1e1d4:	02040c63          	beqz	s0,1e20c <_reclaim_reent+0xfc>
   1e1d8:	00043583          	ld	a1,0(s0)
   1e1dc:	00058663          	beqz	a1,1e1e8 <_reclaim_reent+0xd8>
   1e1e0:	00048513          	mv	a0,s1
   1e1e4:	e99ff0ef          	jal	ra,1e07c <cleanup_glue>
   1e1e8:	00040593          	mv	a1,s0
   1e1ec:	02013403          	ld	s0,32(sp)
   1e1f0:	02813083          	ld	ra,40(sp)
   1e1f4:	01013903          	ld	s2,16(sp)
   1e1f8:	00813983          	ld	s3,8(sp)
   1e1fc:	00048513          	mv	a0,s1
   1e200:	01813483          	ld	s1,24(sp)
   1e204:	03010113          	addi	sp,sp,48
   1e208:	851f506f          	j	13a58 <_free_r>
   1e20c:	02813083          	ld	ra,40(sp)
   1e210:	02013403          	ld	s0,32(sp)
   1e214:	01813483          	ld	s1,24(sp)
   1e218:	01013903          	ld	s2,16(sp)
   1e21c:	00813983          	ld	s3,8(sp)
   1e220:	03010113          	addi	sp,sp,48
   1e224:	00008067          	ret
   1e228:	00008067          	ret

000000000001e22c <__ssprint_r>:
   1e22c:	01063783          	ld	a5,16(a2)
   1e230:	fb010113          	addi	sp,sp,-80
   1e234:	03413023          	sd	s4,32(sp)
   1e238:	04113423          	sd	ra,72(sp)
   1e23c:	04813023          	sd	s0,64(sp)
   1e240:	02913c23          	sd	s1,56(sp)
   1e244:	03213823          	sd	s2,48(sp)
   1e248:	03313423          	sd	s3,40(sp)
   1e24c:	01513c23          	sd	s5,24(sp)
   1e250:	01613823          	sd	s6,16(sp)
   1e254:	01713423          	sd	s7,8(sp)
   1e258:	01813023          	sd	s8,0(sp)
   1e25c:	00060a13          	mv	s4,a2
   1e260:	10078c63          	beqz	a5,1e378 <__ssprint_r+0x14c>
   1e264:	00050a93          	mv	s5,a0
   1e268:	00063983          	ld	s3,0(a2)
   1e26c:	0005b503          	ld	a0,0(a1)
   1e270:	00c5a403          	lw	s0,12(a1)
   1e274:	00058913          	mv	s2,a1
   1e278:	00000b13          	li	s6,0
   1e27c:	00000493          	li	s1,0
   1e280:	12048863          	beqz	s1,1e3b0 <__ssprint_r+0x184>
   1e284:	00040c13          	mv	s8,s0
   1e288:	0004879b          	sext.w	a5,s1
   1e28c:	1284ea63          	bltu	s1,s0,1e3c0 <__ssprint_r+0x194>
   1e290:	01095783          	lhu	a5,16(s2)
   1e294:	00048b9b          	sext.w	s7,s1
   1e298:	4807f713          	andi	a4,a5,1152
   1e29c:	0a070063          	beqz	a4,1e33c <__ssprint_r+0x110>
   1e2a0:	02092683          	lw	a3,32(s2)
   1e2a4:	01893583          	ld	a1,24(s2)
   1e2a8:	00148713          	addi	a4,s1,1
   1e2ac:	0016941b          	slliw	s0,a3,0x1
   1e2b0:	00d406bb          	addw	a3,s0,a3
   1e2b4:	40b50533          	sub	a0,a0,a1
   1e2b8:	01f6d41b          	srliw	s0,a3,0x1f
   1e2bc:	00050b9b          	sext.w	s7,a0
   1e2c0:	00d4043b          	addw	s0,s0,a3
   1e2c4:	4014541b          	sraiw	s0,s0,0x1
   1e2c8:	01770733          	add	a4,a4,s7
   1e2cc:	00e47663          	bgeu	s0,a4,1e2d8 <__ssprint_r+0xac>
   1e2d0:	0014841b          	addiw	s0,s1,1
   1e2d4:	00a4043b          	addw	s0,s0,a0
   1e2d8:	4007f793          	andi	a5,a5,1024
   1e2dc:	0e078a63          	beqz	a5,1e3d0 <__ssprint_r+0x1a4>
   1e2e0:	00040593          	mv	a1,s0
   1e2e4:	000a8513          	mv	a0,s5
   1e2e8:	934f90ef          	jal	ra,1741c <_malloc_r>
   1e2ec:	00050c13          	mv	s8,a0
   1e2f0:	10050063          	beqz	a0,1e3f0 <__ssprint_r+0x1c4>
   1e2f4:	01893583          	ld	a1,24(s2)
   1e2f8:	000b8613          	mv	a2,s7
   1e2fc:	a75f90ef          	jal	ra,17d70 <memcpy>
   1e300:	01095783          	lhu	a5,16(s2)
   1e304:	b7f7f793          	andi	a5,a5,-1153
   1e308:	0807e793          	ori	a5,a5,128
   1e30c:	00f91823          	sh	a5,16(s2)
   1e310:	017c0533          	add	a0,s8,s7
   1e314:	41740bbb          	subw	s7,s0,s7
   1e318:	0004879b          	sext.w	a5,s1
   1e31c:	01893c23          	sd	s8,24(s2)
   1e320:	02892023          	sw	s0,32(s2)
   1e324:	01792623          	sw	s7,12(s2)
   1e328:	00a93023          	sd	a0,0(s2)
   1e32c:	00078413          	mv	s0,a5
   1e330:	00078b93          	mv	s7,a5
   1e334:	00078c13          	mv	s8,a5
   1e338:	08f4e463          	bltu	s1,a5,1e3c0 <__ssprint_r+0x194>
   1e33c:	00040613          	mv	a2,s0
   1e340:	000b0593          	mv	a1,s6
   1e344:	b49f90ef          	jal	ra,17e8c <memmove>
   1e348:	00c92603          	lw	a2,12(s2)
   1e34c:	00093503          	ld	a0,0(s2)
   1e350:	010a3783          	ld	a5,16(s4)
   1e354:	4086043b          	subw	s0,a2,s0
   1e358:	01850533          	add	a0,a0,s8
   1e35c:	00892623          	sw	s0,12(s2)
   1e360:	00a93023          	sd	a0,0(s2)
   1e364:	417787b3          	sub	a5,a5,s7
   1e368:	00fa3823          	sd	a5,16(s4)
   1e36c:	017b0b33          	add	s6,s6,s7
   1e370:	417484b3          	sub	s1,s1,s7
   1e374:	f00796e3          	bnez	a5,1e280 <__ssprint_r+0x54>
   1e378:	000a2423          	sw	zero,8(s4)
   1e37c:	00000513          	li	a0,0
   1e380:	04813083          	ld	ra,72(sp)
   1e384:	04013403          	ld	s0,64(sp)
   1e388:	03813483          	ld	s1,56(sp)
   1e38c:	03013903          	ld	s2,48(sp)
   1e390:	02813983          	ld	s3,40(sp)
   1e394:	02013a03          	ld	s4,32(sp)
   1e398:	01813a83          	ld	s5,24(sp)
   1e39c:	01013b03          	ld	s6,16(sp)
   1e3a0:	00813b83          	ld	s7,8(sp)
   1e3a4:	00013c03          	ld	s8,0(sp)
   1e3a8:	05010113          	addi	sp,sp,80
   1e3ac:	00008067          	ret
   1e3b0:	0009bb03          	ld	s6,0(s3)
   1e3b4:	0089b483          	ld	s1,8(s3)
   1e3b8:	01098993          	addi	s3,s3,16
   1e3bc:	ec5ff06f          	j	1e280 <__ssprint_r+0x54>
   1e3c0:	00078413          	mv	s0,a5
   1e3c4:	00078b93          	mv	s7,a5
   1e3c8:	00078c13          	mv	s8,a5
   1e3cc:	f71ff06f          	j	1e33c <__ssprint_r+0x110>
   1e3d0:	00040613          	mv	a2,s0
   1e3d4:	000a8513          	mv	a0,s5
   1e3d8:	f15fa0ef          	jal	ra,192ec <_realloc_r>
   1e3dc:	00050c13          	mv	s8,a0
   1e3e0:	f20518e3          	bnez	a0,1e310 <__ssprint_r+0xe4>
   1e3e4:	01893583          	ld	a1,24(s2)
   1e3e8:	000a8513          	mv	a0,s5
   1e3ec:	e6cf50ef          	jal	ra,13a58 <_free_r>
   1e3f0:	00c00793          	li	a5,12
   1e3f4:	00faa023          	sw	a5,0(s5)
   1e3f8:	01095783          	lhu	a5,16(s2)
   1e3fc:	fff00513          	li	a0,-1
   1e400:	0407e793          	ori	a5,a5,64
   1e404:	00f91823          	sh	a5,16(s2)
   1e408:	000a3823          	sd	zero,16(s4)
   1e40c:	000a2423          	sw	zero,8(s4)
   1e410:	f71ff06f          	j	1e380 <__ssprint_r+0x154>

000000000001e414 <_svfiprintf_r>:
   1e414:	0105d783          	lhu	a5,16(a1)
   1e418:	e3010113          	addi	sp,sp,-464
   1e41c:	1a913c23          	sd	s1,440(sp)
   1e420:	1b313423          	sd	s3,424(sp)
   1e424:	19713423          	sd	s7,392(sp)
   1e428:	1c113423          	sd	ra,456(sp)
   1e42c:	1c813023          	sd	s0,448(sp)
   1e430:	1b213823          	sd	s2,432(sp)
   1e434:	1b413023          	sd	s4,416(sp)
   1e438:	19513c23          	sd	s5,408(sp)
   1e43c:	19613823          	sd	s6,400(sp)
   1e440:	19813023          	sd	s8,384(sp)
   1e444:	17913c23          	sd	s9,376(sp)
   1e448:	17a13823          	sd	s10,368(sp)
   1e44c:	17b13423          	sd	s11,360(sp)
   1e450:	0807f793          	andi	a5,a5,128
   1e454:	00d13823          	sd	a3,16(sp)
   1e458:	00058493          	mv	s1,a1
   1e45c:	00050993          	mv	s3,a0
   1e460:	00060b93          	mv	s7,a2
   1e464:	00078663          	beqz	a5,1e470 <_svfiprintf_r+0x5c>
   1e468:	0185b783          	ld	a5,24(a1)
   1e46c:	52078ce3          	beqz	a5,1f1a4 <_svfiprintf_r+0xd90>
   1e470:	ffff87b7          	lui	a5,0xffff8
   1e474:	0e010913          	addi	s2,sp,224
   1e478:	8307c793          	xori	a5,a5,-2000
   1e47c:	07213023          	sd	s2,96(sp)
   1e480:	06013823          	sd	zero,112(sp)
   1e484:	06012423          	sw	zero,104(sp)
   1e488:	00013c23          	sd	zero,24(sp)
   1e48c:	02013023          	sd	zero,32(sp)
   1e490:	02013823          	sd	zero,48(sp)
   1e494:	02013423          	sd	zero,40(sp)
   1e498:	00013423          	sd	zero,8(sp)
   1e49c:	02f13c23          	sd	a5,56(sp)
   1e4a0:	00090413          	mv	s0,s2
   1e4a4:	000b8c13          	mv	s8,s7
   1e4a8:	000c4783          	lbu	a5,0(s8)
   1e4ac:	22078863          	beqz	a5,1e6dc <_svfiprintf_r+0x2c8>
   1e4b0:	000c0a13          	mv	s4,s8
   1e4b4:	02500693          	li	a3,37
   1e4b8:	36d78a63          	beq	a5,a3,1e82c <_svfiprintf_r+0x418>
   1e4bc:	001a4783          	lbu	a5,1(s4)
   1e4c0:	001a0a13          	addi	s4,s4,1
   1e4c4:	fe079ae3          	bnez	a5,1e4b8 <_svfiprintf_r+0xa4>
   1e4c8:	418a0bbb          	subw	s7,s4,s8
   1e4cc:	200b8863          	beqz	s7,1e6dc <_svfiprintf_r+0x2c8>
   1e4d0:	07013703          	ld	a4,112(sp)
   1e4d4:	06812783          	lw	a5,104(sp)
   1e4d8:	01843023          	sd	s8,0(s0)
   1e4dc:	01770733          	add	a4,a4,s7
   1e4e0:	0017879b          	addiw	a5,a5,1
   1e4e4:	01743423          	sd	s7,8(s0)
   1e4e8:	06e13823          	sd	a4,112(sp)
   1e4ec:	06f12423          	sw	a5,104(sp)
   1e4f0:	0007871b          	sext.w	a4,a5
   1e4f4:	00700793          	li	a5,7
   1e4f8:	01040413          	addi	s0,s0,16
   1e4fc:	34e7c063          	blt	a5,a4,1e83c <_svfiprintf_r+0x428>
   1e500:	00813703          	ld	a4,8(sp)
   1e504:	000a4783          	lbu	a5,0(s4)
   1e508:	0177073b          	addw	a4,a4,s7
   1e50c:	00e13423          	sd	a4,8(sp)
   1e510:	1c078663          	beqz	a5,1e6dc <_svfiprintf_r+0x2c8>
   1e514:	001a4783          	lbu	a5,1(s4)
   1e518:	001a0c13          	addi	s8,s4,1
   1e51c:	04010ba3          	sb	zero,87(sp)
   1e520:	fff00a93          	li	s5,-1
   1e524:	00000a13          	li	s4,0
   1e528:	00000b13          	li	s6,0
   1e52c:	00900b93          	li	s7,9
   1e530:	02a00d13          	li	s10,42
   1e534:	001c0c13          	addi	s8,s8,1
   1e538:	0007879b          	sext.w	a5,a5
   1e53c:	05a00613          	li	a2,90
   1e540:	fe07871b          	addiw	a4,a5,-32
   1e544:	0007069b          	sext.w	a3,a4
   1e548:	04d66e63          	bltu	a2,a3,1e5a4 <_svfiprintf_r+0x190>
   1e54c:	02071693          	slli	a3,a4,0x20
   1e550:	01e6d713          	srli	a4,a3,0x1e
   1e554:	00004697          	auipc	a3,0x4
   1e558:	43468693          	addi	a3,a3,1076 # 22988 <_ctype_+0x108>
   1e55c:	00d70733          	add	a4,a4,a3
   1e560:	00072703          	lw	a4,0(a4)
   1e564:	00d70733          	add	a4,a4,a3
   1e568:	00070067          	jr	a4
   1e56c:	00000a13          	li	s4,0
   1e570:	000c4683          	lbu	a3,0(s8)
   1e574:	002a171b          	slliw	a4,s4,0x2
   1e578:	01470a3b          	addw	s4,a4,s4
   1e57c:	fd07879b          	addiw	a5,a5,-48
   1e580:	001a1a1b          	slliw	s4,s4,0x1
   1e584:	fd06871b          	addiw	a4,a3,-48
   1e588:	01478a3b          	addw	s4,a5,s4
   1e58c:	001c0c13          	addi	s8,s8,1
   1e590:	0006879b          	sext.w	a5,a3
   1e594:	fcebfee3          	bgeu	s7,a4,1e570 <_svfiprintf_r+0x15c>
   1e598:	fe07871b          	addiw	a4,a5,-32
   1e59c:	0007069b          	sext.w	a3,a4
   1e5a0:	fad676e3          	bgeu	a2,a3,1e54c <_svfiprintf_r+0x138>
   1e5a4:	12078c63          	beqz	a5,1e6dc <_svfiprintf_r+0x2c8>
   1e5a8:	06f10c23          	sb	a5,120(sp)
   1e5ac:	00100793          	li	a5,1
   1e5b0:	04010ba3          	sb	zero,87(sp)
   1e5b4:	00100d93          	li	s11,1
   1e5b8:	00f13023          	sd	a5,0(sp)
   1e5bc:	07810d13          	addi	s10,sp,120
   1e5c0:	00000a93          	li	s5,0
   1e5c4:	002b7f13          	andi	t5,s6,2
   1e5c8:	000f0463          	beqz	t5,1e5d0 <_svfiprintf_r+0x1bc>
   1e5cc:	002d8d9b          	addiw	s11,s11,2
   1e5d0:	084b7e93          	andi	t4,s6,132
   1e5d4:	07013783          	ld	a5,112(sp)
   1e5d8:	06812603          	lw	a2,104(sp)
   1e5dc:	000e9663          	bnez	t4,1e5e8 <_svfiprintf_r+0x1d4>
   1e5e0:	41ba0bbb          	subw	s7,s4,s11
   1e5e4:	79704e63          	bgtz	s7,1ed80 <_svfiprintf_r+0x96c>
   1e5e8:	05714e03          	lbu	t3,87(sp)
   1e5ec:	0016051b          	addiw	a0,a2,1
   1e5f0:	01040593          	addi	a1,s0,16
   1e5f4:	040e0063          	beqz	t3,1e634 <_svfiprintf_r+0x220>
   1e5f8:	05710e13          	addi	t3,sp,87
   1e5fc:	00178793          	addi	a5,a5,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd31a1>
   1e600:	01c43023          	sd	t3,0(s0)
   1e604:	00100e13          	li	t3,1
   1e608:	01c43423          	sd	t3,8(s0)
   1e60c:	06f13823          	sd	a5,112(sp)
   1e610:	06a12423          	sw	a0,104(sp)
   1e614:	00700693          	li	a3,7
   1e618:	0aa6cce3          	blt	a3,a0,1eed0 <_svfiprintf_r+0xabc>
   1e61c:	00260e1b          	addiw	t3,a2,2
   1e620:	02040693          	addi	a3,s0,32
   1e624:	00050613          	mv	a2,a0
   1e628:	00058413          	mv	s0,a1
   1e62c:	000e0513          	mv	a0,t3
   1e630:	00068593          	mv	a1,a3
   1e634:	020f0c63          	beqz	t5,1e66c <_svfiprintf_r+0x258>
   1e638:	05810693          	addi	a3,sp,88
   1e63c:	00278793          	addi	a5,a5,2
   1e640:	00d43023          	sd	a3,0(s0)
   1e644:	00200693          	li	a3,2
   1e648:	00d43423          	sd	a3,8(s0)
   1e64c:	06f13823          	sd	a5,112(sp)
   1e650:	06a12423          	sw	a0,104(sp)
   1e654:	00700693          	li	a3,7
   1e658:	04a6c2e3          	blt	a3,a0,1ee9c <_svfiprintf_r+0xa88>
   1e65c:	00050613          	mv	a2,a0
   1e660:	00058413          	mv	s0,a1
   1e664:	0015051b          	addiw	a0,a0,1
   1e668:	01058593          	addi	a1,a1,16
   1e66c:	08000693          	li	a3,128
   1e670:	54de8c63          	beq	t4,a3,1ebc8 <_svfiprintf_r+0x7b4>
   1e674:	00013703          	ld	a4,0(sp)
   1e678:	40ea8abb          	subw	s5,s5,a4
   1e67c:	61504263          	bgtz	s5,1ec80 <_svfiprintf_r+0x86c>
   1e680:	00013703          	ld	a4,0(sp)
   1e684:	01a43023          	sd	s10,0(s0)
   1e688:	06a12423          	sw	a0,104(sp)
   1e68c:	00f707b3          	add	a5,a4,a5
   1e690:	00e43423          	sd	a4,8(s0)
   1e694:	06f13823          	sd	a5,112(sp)
   1e698:	00700693          	li	a3,7
   1e69c:	6aa6c263          	blt	a3,a0,1ed40 <_svfiprintf_r+0x92c>
   1e6a0:	004b7313          	andi	t1,s6,4
   1e6a4:	00030663          	beqz	t1,1e6b0 <_svfiprintf_r+0x29c>
   1e6a8:	41ba043b          	subw	s0,s4,s11
   1e6ac:	068040e3          	bgtz	s0,1ef0c <_svfiprintf_r+0xaf8>
   1e6b0:	000a0693          	mv	a3,s4
   1e6b4:	01ba5463          	bge	s4,s11,1e6bc <_svfiprintf_r+0x2a8>
   1e6b8:	000d8693          	mv	a3,s11
   1e6bc:	00813703          	ld	a4,8(sp)
   1e6c0:	00e6873b          	addw	a4,a3,a4
   1e6c4:	00e13423          	sd	a4,8(sp)
   1e6c8:	68079c63          	bnez	a5,1ed60 <_svfiprintf_r+0x94c>
   1e6cc:	000c4783          	lbu	a5,0(s8)
   1e6d0:	06012423          	sw	zero,104(sp)
   1e6d4:	00090413          	mv	s0,s2
   1e6d8:	dc079ce3          	bnez	a5,1e4b0 <_svfiprintf_r+0x9c>
   1e6dc:	07013783          	ld	a5,112(sp)
   1e6e0:	46079ce3          	bnez	a5,1f358 <_svfiprintf_r+0xf44>
   1e6e4:	0104d783          	lhu	a5,16(s1)
   1e6e8:	0407f793          	andi	a5,a5,64
   1e6ec:	4a079ae3          	bnez	a5,1f3a0 <_svfiprintf_r+0xf8c>
   1e6f0:	1c813083          	ld	ra,456(sp)
   1e6f4:	1c013403          	ld	s0,448(sp)
   1e6f8:	00813503          	ld	a0,8(sp)
   1e6fc:	1b813483          	ld	s1,440(sp)
   1e700:	1b013903          	ld	s2,432(sp)
   1e704:	1a813983          	ld	s3,424(sp)
   1e708:	1a013a03          	ld	s4,416(sp)
   1e70c:	19813a83          	ld	s5,408(sp)
   1e710:	19013b03          	ld	s6,400(sp)
   1e714:	18813b83          	ld	s7,392(sp)
   1e718:	18013c03          	ld	s8,384(sp)
   1e71c:	17813c83          	ld	s9,376(sp)
   1e720:	17013d03          	ld	s10,368(sp)
   1e724:	16813d83          	ld	s11,360(sp)
   1e728:	1d010113          	addi	sp,sp,464
   1e72c:	00008067          	ret
   1e730:	010b6b13          	ori	s6,s6,16
   1e734:	000c4783          	lbu	a5,0(s8)
   1e738:	000b0b1b          	sext.w	s6,s6
   1e73c:	df9ff06f          	j	1e534 <_svfiprintf_r+0x120>
   1e740:	010b6313          	ori	t1,s6,16
   1e744:	00030b1b          	sext.w	s6,t1
   1e748:	01013703          	ld	a4,16(sp)
   1e74c:	020b7793          	andi	a5,s6,32
   1e750:	00870613          	addi	a2,a4,8
   1e754:	12078463          	beqz	a5,1e87c <_svfiprintf_r+0x468>
   1e758:	00073783          	ld	a5,0(a4)
   1e75c:	00078b93          	mv	s7,a5
   1e760:	1207ce63          	bltz	a5,1e89c <_svfiprintf_r+0x488>
   1e764:	fff00793          	li	a5,-1
   1e768:	2afa8ee3          	beq	s5,a5,1f224 <_svfiprintf_r+0xe10>
   1e76c:	f7fb7693          	andi	a3,s6,-129
   1e770:	00c13823          	sd	a2,16(sp)
   1e774:	00068d9b          	sext.w	s11,a3
   1e778:	040b84e3          	beqz	s7,1efc0 <_svfiprintf_r+0xbac>
   1e77c:	00900793          	li	a5,9
   1e780:	0b77e8e3          	bltu	a5,s7,1f030 <_svfiprintf_r+0xc1c>
   1e784:	030b8b9b          	addiw	s7,s7,48
   1e788:	00100793          	li	a5,1
   1e78c:	0d710da3          	sb	s7,219(sp)
   1e790:	000d8b13          	mv	s6,s11
   1e794:	00f13023          	sd	a5,0(sp)
   1e798:	0db10d13          	addi	s10,sp,219
   1e79c:	06c0006f          	j	1e808 <_svfiprintf_r+0x3f4>
   1e7a0:	010b6313          	ori	t1,s6,16
   1e7a4:	00030b1b          	sext.w	s6,t1
   1e7a8:	01013703          	ld	a4,16(sp)
   1e7ac:	020b7793          	andi	a5,s6,32
   1e7b0:	00870613          	addi	a2,a4,8
   1e7b4:	0a078263          	beqz	a5,1e858 <_svfiprintf_r+0x444>
   1e7b8:	00073b83          	ld	s7,0(a4)
   1e7bc:	bffb7693          	andi	a3,s6,-1025
   1e7c0:	00068d9b          	sext.w	s11,a3
   1e7c4:	00c13823          	sd	a2,16(sp)
   1e7c8:	00000793          	li	a5,0
   1e7cc:	04010ba3          	sb	zero,87(sp)
   1e7d0:	fff00613          	li	a2,-1
   1e7d4:	0eca8463          	beq	s5,a2,1e8bc <_svfiprintf_r+0x4a8>
   1e7d8:	f7fdf313          	andi	t1,s11,-129
   1e7dc:	00030b1b          	sext.w	s6,t1
   1e7e0:	580b9c63          	bnez	s7,1ed78 <_svfiprintf_r+0x964>
   1e7e4:	380a9c63          	bnez	s5,1eb7c <_svfiprintf_r+0x768>
   1e7e8:	7e079063          	bnez	a5,1efc8 <_svfiprintf_r+0xbb4>
   1e7ec:	001df793          	andi	a5,s11,1
   1e7f0:	00f13023          	sd	a5,0(sp)
   1e7f4:	0dc10d13          	addi	s10,sp,220
   1e7f8:	00078863          	beqz	a5,1e808 <_svfiprintf_r+0x3f4>
   1e7fc:	03000793          	li	a5,48
   1e800:	0cf10da3          	sb	a5,219(sp)
   1e804:	0db10d13          	addi	s10,sp,219
   1e808:	00013703          	ld	a4,0(sp)
   1e80c:	000a8793          	mv	a5,s5
   1e810:	00ead463          	bge	s5,a4,1e818 <_svfiprintf_r+0x404>
   1e814:	00070793          	mv	a5,a4
   1e818:	05714683          	lbu	a3,87(sp)
   1e81c:	00078d9b          	sext.w	s11,a5
   1e820:	da0682e3          	beqz	a3,1e5c4 <_svfiprintf_r+0x1b0>
   1e824:	00178d9b          	addiw	s11,a5,1
   1e828:	d9dff06f          	j	1e5c4 <_svfiprintf_r+0x1b0>
   1e82c:	418a0bbb          	subw	s7,s4,s8
   1e830:	ca0b90e3          	bnez	s7,1e4d0 <_svfiprintf_r+0xbc>
   1e834:	000a4783          	lbu	a5,0(s4)
   1e838:	cd9ff06f          	j	1e510 <_svfiprintf_r+0xfc>
   1e83c:	06010613          	addi	a2,sp,96
   1e840:	00048593          	mv	a1,s1
   1e844:	00098513          	mv	a0,s3
   1e848:	9e5ff0ef          	jal	ra,1e22c <__ssprint_r>
   1e84c:	e8051ce3          	bnez	a0,1e6e4 <_svfiprintf_r+0x2d0>
   1e850:	00090413          	mv	s0,s2
   1e854:	cadff06f          	j	1e500 <_svfiprintf_r+0xec>
   1e858:	010b7793          	andi	a5,s6,16
   1e85c:	08079ae3          	bnez	a5,1f0f0 <_svfiprintf_r+0xcdc>
   1e860:	01013703          	ld	a4,16(sp)
   1e864:	040b7793          	andi	a5,s6,64
   1e868:	00072b83          	lw	s7,0(a4)
   1e86c:	24078ee3          	beqz	a5,1f2c8 <_svfiprintf_r+0xeb4>
   1e870:	030b9b93          	slli	s7,s7,0x30
   1e874:	030bdb93          	srli	s7,s7,0x30
   1e878:	f45ff06f          	j	1e7bc <_svfiprintf_r+0x3a8>
   1e87c:	010b7793          	andi	a5,s6,16
   1e880:	060790e3          	bnez	a5,1f0e0 <_svfiprintf_r+0xccc>
   1e884:	040b7793          	andi	a5,s6,64
   1e888:	220784e3          	beqz	a5,1f2b0 <_svfiprintf_r+0xe9c>
   1e88c:	01013783          	ld	a5,16(sp)
   1e890:	00079b83          	lh	s7,0(a5)
   1e894:	000b8793          	mv	a5,s7
   1e898:	ec07d6e3          	bgez	a5,1e764 <_svfiprintf_r+0x350>
   1e89c:	02d00793          	li	a5,45
   1e8a0:	04f10ba3          	sb	a5,87(sp)
   1e8a4:	00c13823          	sd	a2,16(sp)
   1e8a8:	fff00613          	li	a2,-1
   1e8ac:	41700bb3          	neg	s7,s7
   1e8b0:	000b0d93          	mv	s11,s6
   1e8b4:	00100793          	li	a5,1
   1e8b8:	f2ca90e3          	bne	s5,a2,1e7d8 <_svfiprintf_r+0x3c4>
   1e8bc:	00100613          	li	a2,1
   1e8c0:	eac78ee3          	beq	a5,a2,1e77c <_svfiprintf_r+0x368>
   1e8c4:	00200613          	li	a2,2
   1e8c8:	2cc78463          	beq	a5,a2,1eb90 <_svfiprintf_r+0x77c>
   1e8cc:	0dc10d13          	addi	s10,sp,220
   1e8d0:	007bf793          	andi	a5,s7,7
   1e8d4:	03078793          	addi	a5,a5,48
   1e8d8:	fefd0fa3          	sb	a5,-1(s10)
   1e8dc:	003bdb93          	srli	s7,s7,0x3
   1e8e0:	000d0613          	mv	a2,s10
   1e8e4:	fffd0d13          	addi	s10,s10,-1
   1e8e8:	fe0b94e3          	bnez	s7,1e8d0 <_svfiprintf_r+0x4bc>
   1e8ec:	001df593          	andi	a1,s11,1
   1e8f0:	2c058263          	beqz	a1,1ebb4 <_svfiprintf_r+0x7a0>
   1e8f4:	03000593          	li	a1,48
   1e8f8:	2ab78e63          	beq	a5,a1,1ebb4 <_svfiprintf_r+0x7a0>
   1e8fc:	ffe60613          	addi	a2,a2,-2
   1e900:	0dc10793          	addi	a5,sp,220
   1e904:	40c787bb          	subw	a5,a5,a2
   1e908:	febd0fa3          	sb	a1,-1(s10)
   1e90c:	00f13023          	sd	a5,0(sp)
   1e910:	000d8b13          	mv	s6,s11
   1e914:	00060d13          	mv	s10,a2
   1e918:	ef1ff06f          	j	1e808 <_svfiprintf_r+0x3f4>
   1e91c:	01013783          	ld	a5,16(sp)
   1e920:	04010ba3          	sb	zero,87(sp)
   1e924:	0007bd03          	ld	s10,0(a5)
   1e928:	00878b93          	addi	s7,a5,8
   1e92c:	140d0ce3          	beqz	s10,1f284 <_svfiprintf_r+0xe70>
   1e930:	fff00793          	li	a5,-1
   1e934:	04fa8ae3          	beq	s5,a5,1f188 <_svfiprintf_r+0xd74>
   1e938:	000a8613          	mv	a2,s5
   1e93c:	00000593          	li	a1,0
   1e940:	000d0513          	mv	a0,s10
   1e944:	b5cf90ef          	jal	ra,17ca0 <memchr>
   1e948:	220502e3          	beqz	a0,1f36c <_svfiprintf_r+0xf58>
   1e94c:	41a507bb          	subw	a5,a0,s10
   1e950:	00f13023          	sd	a5,0(sp)
   1e954:	01713823          	sd	s7,16(sp)
   1e958:	00000a93          	li	s5,0
   1e95c:	eadff06f          	j	1e808 <_svfiprintf_r+0x3f4>
   1e960:	01013703          	ld	a4,16(sp)
   1e964:	04010ba3          	sb	zero,87(sp)
   1e968:	00100d93          	li	s11,1
   1e96c:	00072783          	lw	a5,0(a4)
   1e970:	00870713          	addi	a4,a4,8
   1e974:	00e13823          	sd	a4,16(sp)
   1e978:	06f10c23          	sb	a5,120(sp)
   1e97c:	00100793          	li	a5,1
   1e980:	00f13023          	sd	a5,0(sp)
   1e984:	07810d13          	addi	s10,sp,120
   1e988:	c39ff06f          	j	1e5c0 <_svfiprintf_r+0x1ac>
   1e98c:	020b6b13          	ori	s6,s6,32
   1e990:	000c4783          	lbu	a5,0(s8)
   1e994:	000b0b1b          	sext.w	s6,s6
   1e998:	b9dff06f          	j	1e534 <_svfiprintf_r+0x120>
   1e99c:	01013783          	ld	a5,16(sp)
   1e9a0:	03813703          	ld	a4,56(sp)
   1e9a4:	002b6693          	ori	a3,s6,2
   1e9a8:	0007bb83          	ld	s7,0(a5)
   1e9ac:	00878793          	addi	a5,a5,8
   1e9b0:	00f13823          	sd	a5,16(sp)
   1e9b4:	00003797          	auipc	a5,0x3
   1e9b8:	4cc78793          	addi	a5,a5,1228 # 21e80 <__clzdi2+0x9c>
   1e9bc:	00f13c23          	sd	a5,24(sp)
   1e9c0:	00068d9b          	sext.w	s11,a3
   1e9c4:	04e11c23          	sh	a4,88(sp)
   1e9c8:	00200793          	li	a5,2
   1e9cc:	e01ff06f          	j	1e7cc <_svfiprintf_r+0x3b8>
   1e9d0:	01013703          	ld	a4,16(sp)
   1e9d4:	020b7793          	andi	a5,s6,32
   1e9d8:	00073683          	ld	a3,0(a4)
   1e9dc:	00870713          	addi	a4,a4,8
   1e9e0:	00e13823          	sd	a4,16(sp)
   1e9e4:	02079463          	bnez	a5,1ea0c <_svfiprintf_r+0x5f8>
   1e9e8:	010b7793          	andi	a5,s6,16
   1e9ec:	02079063          	bnez	a5,1ea0c <_svfiprintf_r+0x5f8>
   1e9f0:	040b7793          	andi	a5,s6,64
   1e9f4:	14079ce3          	bnez	a5,1f34c <_svfiprintf_r+0xf38>
   1e9f8:	200b7313          	andi	t1,s6,512
   1e9fc:	00813783          	ld	a5,8(sp)
   1ea00:	18030ce3          	beqz	t1,1f398 <_svfiprintf_r+0xf84>
   1ea04:	00f68023          	sb	a5,0(a3)
   1ea08:	aa1ff06f          	j	1e4a8 <_svfiprintf_r+0x94>
   1ea0c:	00813783          	ld	a5,8(sp)
   1ea10:	00f6b023          	sd	a5,0(a3)
   1ea14:	a95ff06f          	j	1e4a8 <_svfiprintf_r+0x94>
   1ea18:	000c4783          	lbu	a5,0(s8)
   1ea1c:	06c00713          	li	a4,108
   1ea20:	04e788e3          	beq	a5,a4,1f270 <_svfiprintf_r+0xe5c>
   1ea24:	010b6b13          	ori	s6,s6,16
   1ea28:	000b0b1b          	sext.w	s6,s6
   1ea2c:	b09ff06f          	j	1e534 <_svfiprintf_r+0x120>
   1ea30:	000c4783          	lbu	a5,0(s8)
   1ea34:	06800713          	li	a4,104
   1ea38:	02e782e3          	beq	a5,a4,1f25c <_svfiprintf_r+0xe48>
   1ea3c:	040b6b13          	ori	s6,s6,64
   1ea40:	000b0b1b          	sext.w	s6,s6
   1ea44:	af1ff06f          	j	1e534 <_svfiprintf_r+0x120>
   1ea48:	010b6693          	ori	a3,s6,16
   1ea4c:	00068d9b          	sext.w	s11,a3
   1ea50:	01013703          	ld	a4,16(sp)
   1ea54:	020df793          	andi	a5,s11,32
   1ea58:	00870613          	addi	a2,a4,8
   1ea5c:	56078e63          	beqz	a5,1efd8 <_svfiprintf_r+0xbc4>
   1ea60:	00073b83          	ld	s7,0(a4)
   1ea64:	00100793          	li	a5,1
   1ea68:	00c13823          	sd	a2,16(sp)
   1ea6c:	d61ff06f          	j	1e7cc <_svfiprintf_r+0x3b8>
   1ea70:	080b6b13          	ori	s6,s6,128
   1ea74:	000c4783          	lbu	a5,0(s8)
   1ea78:	000b0b1b          	sext.w	s6,s6
   1ea7c:	ab9ff06f          	j	1e534 <_svfiprintf_r+0x120>
   1ea80:	01013703          	ld	a4,16(sp)
   1ea84:	000c4783          	lbu	a5,0(s8)
   1ea88:	00072a03          	lw	s4,0(a4)
   1ea8c:	00870713          	addi	a4,a4,8
   1ea90:	00e13823          	sd	a4,16(sp)
   1ea94:	aa0a50e3          	bgez	s4,1e534 <_svfiprintf_r+0x120>
   1ea98:	41400a3b          	negw	s4,s4
   1ea9c:	0840006f          	j	1eb20 <_svfiprintf_r+0x70c>
   1eaa0:	00098513          	mv	a0,s3
   1eaa4:	e08f80ef          	jal	ra,170ac <_localeconv_r>
   1eaa8:	00853783          	ld	a5,8(a0)
   1eaac:	00078513          	mv	a0,a5
   1eab0:	02f13423          	sd	a5,40(sp)
   1eab4:	bedf10ef          	jal	ra,106a0 <strlen>
   1eab8:	00050793          	mv	a5,a0
   1eabc:	00098513          	mv	a0,s3
   1eac0:	00078c93          	mv	s9,a5
   1eac4:	02f13823          	sd	a5,48(sp)
   1eac8:	de4f80ef          	jal	ra,170ac <_localeconv_r>
   1eacc:	01053703          	ld	a4,16(a0)
   1ead0:	000c4783          	lbu	a5,0(s8)
   1ead4:	02e13023          	sd	a4,32(sp)
   1ead8:	a40c8ee3          	beqz	s9,1e534 <_svfiprintf_r+0x120>
   1eadc:	a4070ce3          	beqz	a4,1e534 <_svfiprintf_r+0x120>
   1eae0:	00074703          	lbu	a4,0(a4)
   1eae4:	a40708e3          	beqz	a4,1e534 <_svfiprintf_r+0x120>
   1eae8:	400b6b13          	ori	s6,s6,1024
   1eaec:	000b0b1b          	sext.w	s6,s6
   1eaf0:	a45ff06f          	j	1e534 <_svfiprintf_r+0x120>
   1eaf4:	001b6b13          	ori	s6,s6,1
   1eaf8:	000c4783          	lbu	a5,0(s8)
   1eafc:	000b0b1b          	sext.w	s6,s6
   1eb00:	a35ff06f          	j	1e534 <_svfiprintf_r+0x120>
   1eb04:	05714703          	lbu	a4,87(sp)
   1eb08:	000c4783          	lbu	a5,0(s8)
   1eb0c:	a20714e3          	bnez	a4,1e534 <_svfiprintf_r+0x120>
   1eb10:	02000713          	li	a4,32
   1eb14:	04e10ba3          	sb	a4,87(sp)
   1eb18:	a1dff06f          	j	1e534 <_svfiprintf_r+0x120>
   1eb1c:	000c4783          	lbu	a5,0(s8)
   1eb20:	004b6b13          	ori	s6,s6,4
   1eb24:	000b0b1b          	sext.w	s6,s6
   1eb28:	a0dff06f          	j	1e534 <_svfiprintf_r+0x120>
   1eb2c:	02b00713          	li	a4,43
   1eb30:	000c4783          	lbu	a5,0(s8)
   1eb34:	04e10ba3          	sb	a4,87(sp)
   1eb38:	9fdff06f          	j	1e534 <_svfiprintf_r+0x120>
   1eb3c:	000c4783          	lbu	a5,0(s8)
   1eb40:	001c0713          	addi	a4,s8,1
   1eb44:	07a784e3          	beq	a5,s10,1f3ac <_svfiprintf_r+0xf98>
   1eb48:	fd07869b          	addiw	a3,a5,-48
   1eb4c:	00070c13          	mv	s8,a4
   1eb50:	00000a93          	li	s5,0
   1eb54:	9edbe6e3          	bltu	s7,a3,1e540 <_svfiprintf_r+0x12c>
   1eb58:	000c4783          	lbu	a5,0(s8)
   1eb5c:	002a971b          	slliw	a4,s5,0x2
   1eb60:	01570abb          	addw	s5,a4,s5
   1eb64:	001a9a9b          	slliw	s5,s5,0x1
   1eb68:	00da8abb          	addw	s5,s5,a3
   1eb6c:	fd07869b          	addiw	a3,a5,-48
   1eb70:	001c0c13          	addi	s8,s8,1
   1eb74:	fedbf2e3          	bgeu	s7,a3,1eb58 <_svfiprintf_r+0x744>
   1eb78:	9c9ff06f          	j	1e540 <_svfiprintf_r+0x12c>
   1eb7c:	00100693          	li	a3,1
   1eb80:	7ed78e63          	beq	a5,a3,1f37c <_svfiprintf_r+0xf68>
   1eb84:	00200693          	li	a3,2
   1eb88:	000b0d93          	mv	s11,s6
   1eb8c:	d4d790e3          	bne	a5,a3,1e8cc <_svfiprintf_r+0x4b8>
   1eb90:	01813703          	ld	a4,24(sp)
   1eb94:	0dc10d13          	addi	s10,sp,220
   1eb98:	00fbf793          	andi	a5,s7,15
   1eb9c:	00f707b3          	add	a5,a4,a5
   1eba0:	0007c783          	lbu	a5,0(a5)
   1eba4:	004bdb93          	srli	s7,s7,0x4
   1eba8:	fffd0d13          	addi	s10,s10,-1
   1ebac:	00fd0023          	sb	a5,0(s10)
   1ebb0:	fe0b94e3          	bnez	s7,1eb98 <_svfiprintf_r+0x784>
   1ebb4:	0dc10793          	addi	a5,sp,220
   1ebb8:	41a787bb          	subw	a5,a5,s10
   1ebbc:	00f13023          	sd	a5,0(sp)
   1ebc0:	000d8b13          	mv	s6,s11
   1ebc4:	c45ff06f          	j	1e808 <_svfiprintf_r+0x3f4>
   1ebc8:	41ba0bbb          	subw	s7,s4,s11
   1ebcc:	ab7054e3          	blez	s7,1e674 <_svfiprintf_r+0x260>
   1ebd0:	01000693          	li	a3,16
   1ebd4:	7b76d863          	bge	a3,s7,1f384 <_svfiprintf_r+0xf70>
   1ebd8:	00004c97          	auipc	s9,0x4
   1ebdc:	f30c8c93          	addi	s9,s9,-208 # 22b08 <zeroes.0>
   1ebe0:	01000713          	li	a4,16
   1ebe4:	00700e93          	li	t4,7
   1ebe8:	00c0006f          	j	1ebf4 <_svfiprintf_r+0x7e0>
   1ebec:	ff0b8b9b          	addiw	s7,s7,-16
   1ebf0:	05775a63          	bge	a4,s7,1ec44 <_svfiprintf_r+0x830>
   1ebf4:	0016061b          	addiw	a2,a2,1
   1ebf8:	01078793          	addi	a5,a5,16
   1ebfc:	01943023          	sd	s9,0(s0)
   1ec00:	00e43423          	sd	a4,8(s0)
   1ec04:	06f13823          	sd	a5,112(sp)
   1ec08:	06c12423          	sw	a2,104(sp)
   1ec0c:	01040413          	addi	s0,s0,16
   1ec10:	fccedee3          	bge	t4,a2,1ebec <_svfiprintf_r+0x7d8>
   1ec14:	06010613          	addi	a2,sp,96
   1ec18:	00048593          	mv	a1,s1
   1ec1c:	00098513          	mv	a0,s3
   1ec20:	e0cff0ef          	jal	ra,1e22c <__ssprint_r>
   1ec24:	ac0510e3          	bnez	a0,1e6e4 <_svfiprintf_r+0x2d0>
   1ec28:	01000713          	li	a4,16
   1ec2c:	ff0b8b9b          	addiw	s7,s7,-16
   1ec30:	07013783          	ld	a5,112(sp)
   1ec34:	06812603          	lw	a2,104(sp)
   1ec38:	00090413          	mv	s0,s2
   1ec3c:	00700e93          	li	t4,7
   1ec40:	fb774ae3          	blt	a4,s7,1ebf4 <_svfiprintf_r+0x7e0>
   1ec44:	0016061b          	addiw	a2,a2,1
   1ec48:	01040693          	addi	a3,s0,16
   1ec4c:	017787b3          	add	a5,a5,s7
   1ec50:	01943023          	sd	s9,0(s0)
   1ec54:	01743423          	sd	s7,8(s0)
   1ec58:	06f13823          	sd	a5,112(sp)
   1ec5c:	06c12423          	sw	a2,104(sp)
   1ec60:	00700593          	li	a1,7
   1ec64:	5cc5c663          	blt	a1,a2,1f230 <_svfiprintf_r+0xe1c>
   1ec68:	00013703          	ld	a4,0(sp)
   1ec6c:	0016051b          	addiw	a0,a2,1
   1ec70:	01068593          	addi	a1,a3,16
   1ec74:	40ea8abb          	subw	s5,s5,a4
   1ec78:	00068413          	mv	s0,a3
   1ec7c:	a15052e3          	blez	s5,1e680 <_svfiprintf_r+0x26c>
   1ec80:	01000693          	li	a3,16
   1ec84:	6756de63          	bge	a3,s5,1f300 <_svfiprintf_r+0xeec>
   1ec88:	00004c97          	auipc	s9,0x4
   1ec8c:	e80c8c93          	addi	s9,s9,-384 # 22b08 <zeroes.0>
   1ec90:	01000b93          	li	s7,16
   1ec94:	00700813          	li	a6,7
   1ec98:	00c0006f          	j	1eca4 <_svfiprintf_r+0x890>
   1ec9c:	ff0a8a9b          	addiw	s5,s5,-16
   1eca0:	055bd863          	bge	s7,s5,1ecf0 <_svfiprintf_r+0x8dc>
   1eca4:	0016061b          	addiw	a2,a2,1
   1eca8:	01078793          	addi	a5,a5,16
   1ecac:	01943023          	sd	s9,0(s0)
   1ecb0:	01743423          	sd	s7,8(s0)
   1ecb4:	06f13823          	sd	a5,112(sp)
   1ecb8:	06c12423          	sw	a2,104(sp)
   1ecbc:	01040413          	addi	s0,s0,16
   1ecc0:	fcc85ee3          	bge	a6,a2,1ec9c <_svfiprintf_r+0x888>
   1ecc4:	06010613          	addi	a2,sp,96
   1ecc8:	00048593          	mv	a1,s1
   1eccc:	00098513          	mv	a0,s3
   1ecd0:	d5cff0ef          	jal	ra,1e22c <__ssprint_r>
   1ecd4:	a00518e3          	bnez	a0,1e6e4 <_svfiprintf_r+0x2d0>
   1ecd8:	ff0a8a9b          	addiw	s5,s5,-16
   1ecdc:	07013783          	ld	a5,112(sp)
   1ece0:	06812603          	lw	a2,104(sp)
   1ece4:	00090413          	mv	s0,s2
   1ece8:	00700813          	li	a6,7
   1ecec:	fb5bcce3          	blt	s7,s5,1eca4 <_svfiprintf_r+0x890>
   1ecf0:	0016051b          	addiw	a0,a2,1
   1ecf4:	01040693          	addi	a3,s0,16
   1ecf8:	015787b3          	add	a5,a5,s5
   1ecfc:	01943023          	sd	s9,0(s0)
   1ed00:	01543423          	sd	s5,8(s0)
   1ed04:	06f13823          	sd	a5,112(sp)
   1ed08:	06a12423          	sw	a0,104(sp)
   1ed0c:	00700613          	li	a2,7
   1ed10:	2ea64a63          	blt	a2,a0,1f004 <_svfiprintf_r+0xbf0>
   1ed14:	00013703          	ld	a4,0(sp)
   1ed18:	00068413          	mv	s0,a3
   1ed1c:	0015051b          	addiw	a0,a0,1
   1ed20:	00f707b3          	add	a5,a4,a5
   1ed24:	01068593          	addi	a1,a3,16
   1ed28:	01a43023          	sd	s10,0(s0)
   1ed2c:	00e43423          	sd	a4,8(s0)
   1ed30:	06f13823          	sd	a5,112(sp)
   1ed34:	06a12423          	sw	a0,104(sp)
   1ed38:	00700693          	li	a3,7
   1ed3c:	96a6d2e3          	bge	a3,a0,1e6a0 <_svfiprintf_r+0x28c>
   1ed40:	06010613          	addi	a2,sp,96
   1ed44:	00048593          	mv	a1,s1
   1ed48:	00098513          	mv	a0,s3
   1ed4c:	ce0ff0ef          	jal	ra,1e22c <__ssprint_r>
   1ed50:	98051ae3          	bnez	a0,1e6e4 <_svfiprintf_r+0x2d0>
   1ed54:	07013783          	ld	a5,112(sp)
   1ed58:	00090593          	mv	a1,s2
   1ed5c:	945ff06f          	j	1e6a0 <_svfiprintf_r+0x28c>
   1ed60:	06010613          	addi	a2,sp,96
   1ed64:	00048593          	mv	a1,s1
   1ed68:	00098513          	mv	a0,s3
   1ed6c:	cc0ff0ef          	jal	ra,1e22c <__ssprint_r>
   1ed70:	94050ee3          	beqz	a0,1e6cc <_svfiprintf_r+0x2b8>
   1ed74:	971ff06f          	j	1e6e4 <_svfiprintf_r+0x2d0>
   1ed78:	000b0d93          	mv	s11,s6
   1ed7c:	b41ff06f          	j	1e8bc <_svfiprintf_r+0x4a8>
   1ed80:	01000693          	li	a3,16
   1ed84:	00004c97          	auipc	s9,0x4
   1ed88:	d74c8c93          	addi	s9,s9,-652 # 22af8 <blanks.1>
   1ed8c:	0b76dc63          	bge	a3,s7,1ee44 <_svfiprintf_r+0xa30>
   1ed90:	00048693          	mv	a3,s1
   1ed94:	000c8713          	mv	a4,s9
   1ed98:	000b8493          	mv	s1,s7
   1ed9c:	000c0c93          	mv	s9,s8
   1eda0:	000a0b93          	mv	s7,s4
   1eda4:	000a8c13          	mv	s8,s5
   1eda8:	01000e13          	li	t3,16
   1edac:	00700f93          	li	t6,7
   1edb0:	05e13023          	sd	t5,64(sp)
   1edb4:	05d13423          	sd	t4,72(sp)
   1edb8:	00070a93          	mv	s5,a4
   1edbc:	00068a13          	mv	s4,a3
   1edc0:	00c0006f          	j	1edcc <_svfiprintf_r+0x9b8>
   1edc4:	ff04849b          	addiw	s1,s1,-16
   1edc8:	049e5a63          	bge	t3,s1,1ee1c <_svfiprintf_r+0xa08>
   1edcc:	0016061b          	addiw	a2,a2,1
   1edd0:	01078793          	addi	a5,a5,16
   1edd4:	01543023          	sd	s5,0(s0)
   1edd8:	01c43423          	sd	t3,8(s0)
   1eddc:	06f13823          	sd	a5,112(sp)
   1ede0:	06c12423          	sw	a2,104(sp)
   1ede4:	01040413          	addi	s0,s0,16
   1ede8:	fccfdee3          	bge	t6,a2,1edc4 <_svfiprintf_r+0x9b0>
   1edec:	06010613          	addi	a2,sp,96
   1edf0:	000a0593          	mv	a1,s4
   1edf4:	00098513          	mv	a0,s3
   1edf8:	c34ff0ef          	jal	ra,1e22c <__ssprint_r>
   1edfc:	42051063          	bnez	a0,1f21c <_svfiprintf_r+0xe08>
   1ee00:	01000e13          	li	t3,16
   1ee04:	ff04849b          	addiw	s1,s1,-16
   1ee08:	07013783          	ld	a5,112(sp)
   1ee0c:	06812603          	lw	a2,104(sp)
   1ee10:	00090413          	mv	s0,s2
   1ee14:	00700f93          	li	t6,7
   1ee18:	fa9e4ae3          	blt	t3,s1,1edcc <_svfiprintf_r+0x9b8>
   1ee1c:	04013f03          	ld	t5,64(sp)
   1ee20:	04813e83          	ld	t4,72(sp)
   1ee24:	000a0693          	mv	a3,s4
   1ee28:	000a8713          	mv	a4,s5
   1ee2c:	000b8a13          	mv	s4,s7
   1ee30:	000c0a93          	mv	s5,s8
   1ee34:	00048b93          	mv	s7,s1
   1ee38:	000c8c13          	mv	s8,s9
   1ee3c:	00068493          	mv	s1,a3
   1ee40:	00070c93          	mv	s9,a4
   1ee44:	0016061b          	addiw	a2,a2,1
   1ee48:	017787b3          	add	a5,a5,s7
   1ee4c:	01943023          	sd	s9,0(s0)
   1ee50:	01743423          	sd	s7,8(s0)
   1ee54:	06f13823          	sd	a5,112(sp)
   1ee58:	06c12423          	sw	a2,104(sp)
   1ee5c:	00700693          	li	a3,7
   1ee60:	01040413          	addi	s0,s0,16
   1ee64:	f8c6d263          	bge	a3,a2,1e5e8 <_svfiprintf_r+0x1d4>
   1ee68:	06010613          	addi	a2,sp,96
   1ee6c:	00048593          	mv	a1,s1
   1ee70:	00098513          	mv	a0,s3
   1ee74:	05d13423          	sd	t4,72(sp)
   1ee78:	05e13023          	sd	t5,64(sp)
   1ee7c:	bb0ff0ef          	jal	ra,1e22c <__ssprint_r>
   1ee80:	860512e3          	bnez	a0,1e6e4 <_svfiprintf_r+0x2d0>
   1ee84:	07013783          	ld	a5,112(sp)
   1ee88:	06812603          	lw	a2,104(sp)
   1ee8c:	04813e83          	ld	t4,72(sp)
   1ee90:	04013f03          	ld	t5,64(sp)
   1ee94:	00090413          	mv	s0,s2
   1ee98:	f50ff06f          	j	1e5e8 <_svfiprintf_r+0x1d4>
   1ee9c:	06010613          	addi	a2,sp,96
   1eea0:	00048593          	mv	a1,s1
   1eea4:	00098513          	mv	a0,s3
   1eea8:	05d13023          	sd	t4,64(sp)
   1eeac:	b80ff0ef          	jal	ra,1e22c <__ssprint_r>
   1eeb0:	82051ae3          	bnez	a0,1e6e4 <_svfiprintf_r+0x2d0>
   1eeb4:	06812603          	lw	a2,104(sp)
   1eeb8:	07013783          	ld	a5,112(sp)
   1eebc:	04013e83          	ld	t4,64(sp)
   1eec0:	0f010593          	addi	a1,sp,240
   1eec4:	0016051b          	addiw	a0,a2,1
   1eec8:	00090413          	mv	s0,s2
   1eecc:	fa0ff06f          	j	1e66c <_svfiprintf_r+0x258>
   1eed0:	06010613          	addi	a2,sp,96
   1eed4:	00048593          	mv	a1,s1
   1eed8:	00098513          	mv	a0,s3
   1eedc:	05d13423          	sd	t4,72(sp)
   1eee0:	05e13023          	sd	t5,64(sp)
   1eee4:	b48ff0ef          	jal	ra,1e22c <__ssprint_r>
   1eee8:	fe051e63          	bnez	a0,1e6e4 <_svfiprintf_r+0x2d0>
   1eeec:	06812603          	lw	a2,104(sp)
   1eef0:	07013783          	ld	a5,112(sp)
   1eef4:	04813e83          	ld	t4,72(sp)
   1eef8:	04013f03          	ld	t5,64(sp)
   1eefc:	0f010593          	addi	a1,sp,240
   1ef00:	0016051b          	addiw	a0,a2,1
   1ef04:	00090413          	mv	s0,s2
   1ef08:	f2cff06f          	j	1e634 <_svfiprintf_r+0x220>
   1ef0c:	01000613          	li	a2,16
   1ef10:	06812683          	lw	a3,104(sp)
   1ef14:	00004c97          	auipc	s9,0x4
   1ef18:	be4c8c93          	addi	s9,s9,-1052 # 22af8 <blanks.1>
   1ef1c:	01000b93          	li	s7,16
   1ef20:	00700d13          	li	s10,7
   1ef24:	00058713          	mv	a4,a1
   1ef28:	00864863          	blt	a2,s0,1ef38 <_svfiprintf_r+0xb24>
   1ef2c:	0580006f          	j	1ef84 <_svfiprintf_r+0xb70>
   1ef30:	ff04041b          	addiw	s0,s0,-16
   1ef34:	048bd663          	bge	s7,s0,1ef80 <_svfiprintf_r+0xb6c>
   1ef38:	0016869b          	addiw	a3,a3,1
   1ef3c:	01078793          	addi	a5,a5,16
   1ef40:	01973023          	sd	s9,0(a4)
   1ef44:	01773423          	sd	s7,8(a4)
   1ef48:	06f13823          	sd	a5,112(sp)
   1ef4c:	06d12423          	sw	a3,104(sp)
   1ef50:	01070713          	addi	a4,a4,16
   1ef54:	fcdd5ee3          	bge	s10,a3,1ef30 <_svfiprintf_r+0xb1c>
   1ef58:	06010613          	addi	a2,sp,96
   1ef5c:	00048593          	mv	a1,s1
   1ef60:	00098513          	mv	a0,s3
   1ef64:	ac8ff0ef          	jal	ra,1e22c <__ssprint_r>
   1ef68:	f6051e63          	bnez	a0,1e6e4 <_svfiprintf_r+0x2d0>
   1ef6c:	ff04041b          	addiw	s0,s0,-16
   1ef70:	07013783          	ld	a5,112(sp)
   1ef74:	06812683          	lw	a3,104(sp)
   1ef78:	00090713          	mv	a4,s2
   1ef7c:	fa8bcee3          	blt	s7,s0,1ef38 <_svfiprintf_r+0xb24>
   1ef80:	00070593          	mv	a1,a4
   1ef84:	0016861b          	addiw	a2,a3,1
   1ef88:	008787b3          	add	a5,a5,s0
   1ef8c:	0195b023          	sd	s9,0(a1)
   1ef90:	0085b423          	sd	s0,8(a1)
   1ef94:	06f13823          	sd	a5,112(sp)
   1ef98:	06c12423          	sw	a2,104(sp)
   1ef9c:	00700693          	li	a3,7
   1efa0:	f0c6d863          	bge	a3,a2,1e6b0 <_svfiprintf_r+0x29c>
   1efa4:	06010613          	addi	a2,sp,96
   1efa8:	00048593          	mv	a1,s1
   1efac:	00098513          	mv	a0,s3
   1efb0:	a7cff0ef          	jal	ra,1e22c <__ssprint_r>
   1efb4:	f2051863          	bnez	a0,1e6e4 <_svfiprintf_r+0x2d0>
   1efb8:	07013783          	ld	a5,112(sp)
   1efbc:	ef4ff06f          	j	1e6b0 <_svfiprintf_r+0x29c>
   1efc0:	fc0a9263          	bnez	s5,1e784 <_svfiprintf_r+0x370>
   1efc4:	000d8b13          	mv	s6,s11
   1efc8:	00000a93          	li	s5,0
   1efcc:	00013023          	sd	zero,0(sp)
   1efd0:	0dc10d13          	addi	s10,sp,220
   1efd4:	835ff06f          	j	1e808 <_svfiprintf_r+0x3f4>
   1efd8:	010df793          	andi	a5,s11,16
   1efdc:	12079063          	bnez	a5,1f0fc <_svfiprintf_r+0xce8>
   1efe0:	01013703          	ld	a4,16(sp)
   1efe4:	040df793          	andi	a5,s11,64
   1efe8:	00072b83          	lw	s7,0(a4)
   1efec:	2e078663          	beqz	a5,1f2d8 <_svfiprintf_r+0xec4>
   1eff0:	030b9b93          	slli	s7,s7,0x30
   1eff4:	030bdb93          	srli	s7,s7,0x30
   1eff8:	00c13823          	sd	a2,16(sp)
   1effc:	00100793          	li	a5,1
   1f000:	fccff06f          	j	1e7cc <_svfiprintf_r+0x3b8>
   1f004:	06010613          	addi	a2,sp,96
   1f008:	00048593          	mv	a1,s1
   1f00c:	00098513          	mv	a0,s3
   1f010:	a1cff0ef          	jal	ra,1e22c <__ssprint_r>
   1f014:	ec051863          	bnez	a0,1e6e4 <_svfiprintf_r+0x2d0>
   1f018:	06812503          	lw	a0,104(sp)
   1f01c:	07013783          	ld	a5,112(sp)
   1f020:	0f010593          	addi	a1,sp,240
   1f024:	0015051b          	addiw	a0,a0,1
   1f028:	00090413          	mv	s0,s2
   1f02c:	e54ff06f          	j	1e680 <_svfiprintf_r+0x26c>
   1f030:	400df793          	andi	a5,s11,1024
   1f034:	00813023          	sd	s0,0(sp)
   1f038:	02013403          	ld	s0,32(sp)
   1f03c:	0dc10d13          	addi	s10,sp,220
   1f040:	05313023          	sd	s3,64(sp)
   1f044:	000b8993          	mv	s3,s7
   1f048:	00078b93          	mv	s7,a5
   1f04c:	000c0793          	mv	a5,s8
   1f050:	00000c93          	li	s9,0
   1f054:	00048c13          	mv	s8,s1
   1f058:	00900b13          	li	s6,9
   1f05c:	000d0493          	mv	s1,s10
   1f060:	00078d13          	mv	s10,a5
   1f064:	00a00593          	li	a1,10
   1f068:	00098513          	mv	a0,s3
   1f06c:	509020ef          	jal	ra,21d74 <__umoddi3>
   1f070:	0305051b          	addiw	a0,a0,48
   1f074:	fea48fa3          	sb	a0,-1(s1)
   1f078:	001c8c9b          	addiw	s9,s9,1
   1f07c:	fff48493          	addi	s1,s1,-1
   1f080:	000b8663          	beqz	s7,1f08c <_svfiprintf_r+0xc78>
   1f084:	00044683          	lbu	a3,0(s0)
   1f088:	01968e63          	beq	a3,s9,1f0a4 <_svfiprintf_r+0xc90>
   1f08c:	00a00593          	li	a1,10
   1f090:	00098513          	mv	a0,s3
   1f094:	499020ef          	jal	ra,21d2c <__udivdi3>
   1f098:	013b7c63          	bgeu	s6,s3,1f0b0 <_svfiprintf_r+0xc9c>
   1f09c:	00050993          	mv	s3,a0
   1f0a0:	fc5ff06f          	j	1f064 <_svfiprintf_r+0xc50>
   1f0a4:	0ff00793          	li	a5,255
   1f0a8:	fef682e3          	beq	a3,a5,1f08c <_svfiprintf_r+0xc78>
   1f0ac:	113b6c63          	bltu	s6,s3,1f1c4 <_svfiprintf_r+0xdb0>
   1f0b0:	000d0793          	mv	a5,s10
   1f0b4:	00048d13          	mv	s10,s1
   1f0b8:	000c0493          	mv	s1,s8
   1f0bc:	00078c13          	mv	s8,a5
   1f0c0:	0dc10793          	addi	a5,sp,220
   1f0c4:	41a787bb          	subw	a5,a5,s10
   1f0c8:	02813023          	sd	s0,32(sp)
   1f0cc:	04013983          	ld	s3,64(sp)
   1f0d0:	00013403          	ld	s0,0(sp)
   1f0d4:	000d8b13          	mv	s6,s11
   1f0d8:	00f13023          	sd	a5,0(sp)
   1f0dc:	f2cff06f          	j	1e808 <_svfiprintf_r+0x3f4>
   1f0e0:	01013783          	ld	a5,16(sp)
   1f0e4:	0007b783          	ld	a5,0(a5)
   1f0e8:	00078b93          	mv	s7,a5
   1f0ec:	e74ff06f          	j	1e760 <_svfiprintf_r+0x34c>
   1f0f0:	01013783          	ld	a5,16(sp)
   1f0f4:	0007bb83          	ld	s7,0(a5)
   1f0f8:	ec4ff06f          	j	1e7bc <_svfiprintf_r+0x3a8>
   1f0fc:	01013783          	ld	a5,16(sp)
   1f100:	00c13823          	sd	a2,16(sp)
   1f104:	0007bb83          	ld	s7,0(a5)
   1f108:	00100793          	li	a5,1
   1f10c:	ec0ff06f          	j	1e7cc <_svfiprintf_r+0x3b8>
   1f110:	000b0d93          	mv	s11,s6
   1f114:	93dff06f          	j	1ea50 <_svfiprintf_r+0x63c>
   1f118:	00003717          	auipc	a4,0x3
   1f11c:	d5070713          	addi	a4,a4,-688 # 21e68 <__clzdi2+0x84>
   1f120:	00e13c23          	sd	a4,24(sp)
   1f124:	01013703          	ld	a4,16(sp)
   1f128:	020b7693          	andi	a3,s6,32
   1f12c:	00870613          	addi	a2,a4,8
   1f130:	00069863          	bnez	a3,1f140 <_svfiprintf_r+0xd2c>
   1f134:	010b7693          	andi	a3,s6,16
   1f138:	0c068463          	beqz	a3,1f200 <_svfiprintf_r+0xdec>
   1f13c:	01013703          	ld	a4,16(sp)
   1f140:	00073b83          	ld	s7,0(a4)
   1f144:	001b7693          	andi	a3,s6,1
   1f148:	00068e63          	beqz	a3,1f164 <_svfiprintf_r+0xd50>
   1f14c:	000b8c63          	beqz	s7,1f164 <_svfiprintf_r+0xd50>
   1f150:	002b6313          	ori	t1,s6,2
   1f154:	03000693          	li	a3,48
   1f158:	04d10c23          	sb	a3,88(sp)
   1f15c:	04f10ca3          	sb	a5,89(sp)
   1f160:	00030b1b          	sext.w	s6,t1
   1f164:	bffb7693          	andi	a3,s6,-1025
   1f168:	00068d9b          	sext.w	s11,a3
   1f16c:	00c13823          	sd	a2,16(sp)
   1f170:	00200793          	li	a5,2
   1f174:	e58ff06f          	j	1e7cc <_svfiprintf_r+0x3b8>
   1f178:	00003717          	auipc	a4,0x3
   1f17c:	d0870713          	addi	a4,a4,-760 # 21e80 <__clzdi2+0x9c>
   1f180:	00e13c23          	sd	a4,24(sp)
   1f184:	fa1ff06f          	j	1f124 <_svfiprintf_r+0xd10>
   1f188:	000d0513          	mv	a0,s10
   1f18c:	d14f10ef          	jal	ra,106a0 <strlen>
   1f190:	0005079b          	sext.w	a5,a0
   1f194:	00f13023          	sd	a5,0(sp)
   1f198:	01713823          	sd	s7,16(sp)
   1f19c:	00000a93          	li	s5,0
   1f1a0:	e68ff06f          	j	1e808 <_svfiprintf_r+0x3f4>
   1f1a4:	04000593          	li	a1,64
   1f1a8:	a74f80ef          	jal	ra,1741c <_malloc_r>
   1f1ac:	00a4b023          	sd	a0,0(s1)
   1f1b0:	00a4bc23          	sd	a0,24(s1)
   1f1b4:	22050063          	beqz	a0,1f3d4 <_svfiprintf_r+0xfc0>
   1f1b8:	04000793          	li	a5,64
   1f1bc:	02f4a023          	sw	a5,32(s1)
   1f1c0:	ab0ff06f          	j	1e470 <_svfiprintf_r+0x5c>
   1f1c4:	03013783          	ld	a5,48(sp)
   1f1c8:	02813583          	ld	a1,40(sp)
   1f1cc:	00000c93          	li	s9,0
   1f1d0:	40f484b3          	sub	s1,s1,a5
   1f1d4:	00078613          	mv	a2,a5
   1f1d8:	00048513          	mv	a0,s1
   1f1dc:	bc1fa0ef          	jal	ra,19d9c <strncpy>
   1f1e0:	00144683          	lbu	a3,1(s0)
   1f1e4:	00098513          	mv	a0,s3
   1f1e8:	00a00593          	li	a1,10
   1f1ec:	00d03733          	snez	a4,a3
   1f1f0:	00e40433          	add	s0,s0,a4
   1f1f4:	339020ef          	jal	ra,21d2c <__udivdi3>
   1f1f8:	00050993          	mv	s3,a0
   1f1fc:	e69ff06f          	j	1f064 <_svfiprintf_r+0xc50>
   1f200:	01013703          	ld	a4,16(sp)
   1f204:	040b7693          	andi	a3,s6,64
   1f208:	00072b83          	lw	s7,0(a4)
   1f20c:	0e068263          	beqz	a3,1f2f0 <_svfiprintf_r+0xedc>
   1f210:	030b9b93          	slli	s7,s7,0x30
   1f214:	030bdb93          	srli	s7,s7,0x30
   1f218:	f2dff06f          	j	1f144 <_svfiprintf_r+0xd30>
   1f21c:	000a0493          	mv	s1,s4
   1f220:	cc4ff06f          	j	1e6e4 <_svfiprintf_r+0x2d0>
   1f224:	000b0d93          	mv	s11,s6
   1f228:	00c13823          	sd	a2,16(sp)
   1f22c:	d50ff06f          	j	1e77c <_svfiprintf_r+0x368>
   1f230:	06010613          	addi	a2,sp,96
   1f234:	00048593          	mv	a1,s1
   1f238:	00098513          	mv	a0,s3
   1f23c:	ff1fe0ef          	jal	ra,1e22c <__ssprint_r>
   1f240:	ca051263          	bnez	a0,1e6e4 <_svfiprintf_r+0x2d0>
   1f244:	06812603          	lw	a2,104(sp)
   1f248:	07013783          	ld	a5,112(sp)
   1f24c:	0f010593          	addi	a1,sp,240
   1f250:	0016051b          	addiw	a0,a2,1
   1f254:	00090413          	mv	s0,s2
   1f258:	c1cff06f          	j	1e674 <_svfiprintf_r+0x260>
   1f25c:	200b6b13          	ori	s6,s6,512
   1f260:	001c4783          	lbu	a5,1(s8)
   1f264:	000b0b1b          	sext.w	s6,s6
   1f268:	001c0c13          	addi	s8,s8,1
   1f26c:	ac8ff06f          	j	1e534 <_svfiprintf_r+0x120>
   1f270:	020b6b13          	ori	s6,s6,32
   1f274:	001c4783          	lbu	a5,1(s8)
   1f278:	000b0b1b          	sext.w	s6,s6
   1f27c:	001c0c13          	addi	s8,s8,1
   1f280:	ab4ff06f          	j	1e534 <_svfiprintf_r+0x120>
   1f284:	00600793          	li	a5,6
   1f288:	000a8d13          	mv	s10,s5
   1f28c:	0157f463          	bgeu	a5,s5,1f294 <_svfiprintf_r+0xe80>
   1f290:	00600d13          	li	s10,6
   1f294:	000d079b          	sext.w	a5,s10
   1f298:	00f13023          	sd	a5,0(sp)
   1f29c:	00078d93          	mv	s11,a5
   1f2a0:	01713823          	sd	s7,16(sp)
   1f2a4:	00003d17          	auipc	s10,0x3
   1f2a8:	bf4d0d13          	addi	s10,s10,-1036 # 21e98 <__clzdi2+0xb4>
   1f2ac:	b14ff06f          	j	1e5c0 <_svfiprintf_r+0x1ac>
   1f2b0:	200b7793          	andi	a5,s6,512
   1f2b4:	08078463          	beqz	a5,1f33c <_svfiprintf_r+0xf28>
   1f2b8:	01013783          	ld	a5,16(sp)
   1f2bc:	00078b83          	lb	s7,0(a5)
   1f2c0:	000b8793          	mv	a5,s7
   1f2c4:	c9cff06f          	j	1e760 <_svfiprintf_r+0x34c>
   1f2c8:	200b7793          	andi	a5,s6,512
   1f2cc:	06078263          	beqz	a5,1f330 <_svfiprintf_r+0xf1c>
   1f2d0:	0ffbfb93          	andi	s7,s7,255
   1f2d4:	ce8ff06f          	j	1e7bc <_svfiprintf_r+0x3a8>
   1f2d8:	200df793          	andi	a5,s11,512
   1f2dc:	04078063          	beqz	a5,1f31c <_svfiprintf_r+0xf08>
   1f2e0:	0ffbfb93          	andi	s7,s7,255
   1f2e4:	00c13823          	sd	a2,16(sp)
   1f2e8:	00100793          	li	a5,1
   1f2ec:	ce0ff06f          	j	1e7cc <_svfiprintf_r+0x3b8>
   1f2f0:	200b7693          	andi	a3,s6,512
   1f2f4:	00068e63          	beqz	a3,1f310 <_svfiprintf_r+0xefc>
   1f2f8:	0ffbfb93          	andi	s7,s7,255
   1f2fc:	e49ff06f          	j	1f144 <_svfiprintf_r+0xd30>
   1f300:	00058693          	mv	a3,a1
   1f304:	00004c97          	auipc	s9,0x4
   1f308:	804c8c93          	addi	s9,s9,-2044 # 22b08 <zeroes.0>
   1f30c:	9edff06f          	j	1ecf8 <_svfiprintf_r+0x8e4>
   1f310:	020b9b93          	slli	s7,s7,0x20
   1f314:	020bdb93          	srli	s7,s7,0x20
   1f318:	e2dff06f          	j	1f144 <_svfiprintf_r+0xd30>
   1f31c:	020b9b93          	slli	s7,s7,0x20
   1f320:	020bdb93          	srli	s7,s7,0x20
   1f324:	00c13823          	sd	a2,16(sp)
   1f328:	00100793          	li	a5,1
   1f32c:	ca0ff06f          	j	1e7cc <_svfiprintf_r+0x3b8>
   1f330:	020b9b93          	slli	s7,s7,0x20
   1f334:	020bdb93          	srli	s7,s7,0x20
   1f338:	c84ff06f          	j	1e7bc <_svfiprintf_r+0x3a8>
   1f33c:	01013783          	ld	a5,16(sp)
   1f340:	0007ab83          	lw	s7,0(a5)
   1f344:	000b8793          	mv	a5,s7
   1f348:	c18ff06f          	j	1e760 <_svfiprintf_r+0x34c>
   1f34c:	00813783          	ld	a5,8(sp)
   1f350:	00f69023          	sh	a5,0(a3)
   1f354:	954ff06f          	j	1e4a8 <_svfiprintf_r+0x94>
   1f358:	06010613          	addi	a2,sp,96
   1f35c:	00048593          	mv	a1,s1
   1f360:	00098513          	mv	a0,s3
   1f364:	ec9fe0ef          	jal	ra,1e22c <__ssprint_r>
   1f368:	b7cff06f          	j	1e6e4 <_svfiprintf_r+0x2d0>
   1f36c:	01513023          	sd	s5,0(sp)
   1f370:	01713823          	sd	s7,16(sp)
   1f374:	00000a93          	li	s5,0
   1f378:	c90ff06f          	j	1e808 <_svfiprintf_r+0x3f4>
   1f37c:	000b0d93          	mv	s11,s6
   1f380:	c04ff06f          	j	1e784 <_svfiprintf_r+0x370>
   1f384:	00058693          	mv	a3,a1
   1f388:	00050613          	mv	a2,a0
   1f38c:	00003c97          	auipc	s9,0x3
   1f390:	77cc8c93          	addi	s9,s9,1916 # 22b08 <zeroes.0>
   1f394:	8b9ff06f          	j	1ec4c <_svfiprintf_r+0x838>
   1f398:	00f6a023          	sw	a5,0(a3)
   1f39c:	90cff06f          	j	1e4a8 <_svfiprintf_r+0x94>
   1f3a0:	fff00793          	li	a5,-1
   1f3a4:	00f13423          	sd	a5,8(sp)
   1f3a8:	b48ff06f          	j	1e6f0 <_svfiprintf_r+0x2dc>
   1f3ac:	01013683          	ld	a3,16(sp)
   1f3b0:	0006a783          	lw	a5,0(a3)
   1f3b4:	00868693          	addi	a3,a3,8
   1f3b8:	00078a9b          	sext.w	s5,a5
   1f3bc:	0007d463          	bgez	a5,1f3c4 <_svfiprintf_r+0xfb0>
   1f3c0:	fff00a93          	li	s5,-1
   1f3c4:	001c4783          	lbu	a5,1(s8)
   1f3c8:	00d13823          	sd	a3,16(sp)
   1f3cc:	00070c13          	mv	s8,a4
   1f3d0:	964ff06f          	j	1e534 <_svfiprintf_r+0x120>
   1f3d4:	00c00793          	li	a5,12
   1f3d8:	00f9a023          	sw	a5,0(s3)
   1f3dc:	fff00793          	li	a5,-1
   1f3e0:	00f13423          	sd	a5,8(sp)
   1f3e4:	b0cff06f          	j	1e6f0 <_svfiprintf_r+0x2dc>

000000000001f3e8 <__swbuf_r>:
   1f3e8:	fd010113          	addi	sp,sp,-48
   1f3ec:	02813023          	sd	s0,32(sp)
   1f3f0:	00913c23          	sd	s1,24(sp)
   1f3f4:	01213823          	sd	s2,16(sp)
   1f3f8:	02113423          	sd	ra,40(sp)
   1f3fc:	01313423          	sd	s3,8(sp)
   1f400:	00050913          	mv	s2,a0
   1f404:	00058493          	mv	s1,a1
   1f408:	00060413          	mv	s0,a2
   1f40c:	00050663          	beqz	a0,1f418 <__swbuf_r+0x30>
   1f410:	05052783          	lw	a5,80(a0)
   1f414:	14078a63          	beqz	a5,1f568 <__swbuf_r+0x180>
   1f418:	01041703          	lh	a4,16(s0)
   1f41c:	02842683          	lw	a3,40(s0)
   1f420:	00877793          	andi	a5,a4,8
   1f424:	00d42623          	sw	a3,12(s0)
   1f428:	03071693          	slli	a3,a4,0x30
   1f42c:	0306d693          	srli	a3,a3,0x30
   1f430:	08078463          	beqz	a5,1f4b8 <__swbuf_r+0xd0>
   1f434:	01843783          	ld	a5,24(s0)
   1f438:	08078063          	beqz	a5,1f4b8 <__swbuf_r+0xd0>
   1f43c:	00002637          	lui	a2,0x2
   1f440:	0ff4f993          	andi	s3,s1,255
   1f444:	00c6f6b3          	and	a3,a3,a2
   1f448:	00098493          	mv	s1,s3
   1f44c:	0a068063          	beqz	a3,1f4ec <__swbuf_r+0x104>
   1f450:	00043703          	ld	a4,0(s0)
   1f454:	02042683          	lw	a3,32(s0)
   1f458:	40f707bb          	subw	a5,a4,a5
   1f45c:	0ad7de63          	bge	a5,a3,1f518 <__swbuf_r+0x130>
   1f460:	00c42683          	lw	a3,12(s0)
   1f464:	00170613          	addi	a2,a4,1
   1f468:	00c43023          	sd	a2,0(s0)
   1f46c:	fff6869b          	addiw	a3,a3,-1
   1f470:	00d42623          	sw	a3,12(s0)
   1f474:	01370023          	sb	s3,0(a4)
   1f478:	02042703          	lw	a4,32(s0)
   1f47c:	0017879b          	addiw	a5,a5,1
   1f480:	0cf70863          	beq	a4,a5,1f550 <__swbuf_r+0x168>
   1f484:	01045783          	lhu	a5,16(s0)
   1f488:	0017f793          	andi	a5,a5,1
   1f48c:	00078663          	beqz	a5,1f498 <__swbuf_r+0xb0>
   1f490:	00a00793          	li	a5,10
   1f494:	0af48e63          	beq	s1,a5,1f550 <__swbuf_r+0x168>
   1f498:	02813083          	ld	ra,40(sp)
   1f49c:	02013403          	ld	s0,32(sp)
   1f4a0:	01013903          	ld	s2,16(sp)
   1f4a4:	00813983          	ld	s3,8(sp)
   1f4a8:	00048513          	mv	a0,s1
   1f4ac:	01813483          	ld	s1,24(sp)
   1f4b0:	03010113          	addi	sp,sp,48
   1f4b4:	00008067          	ret
   1f4b8:	00040593          	mv	a1,s0
   1f4bc:	00090513          	mv	a0,s2
   1f4c0:	a91f30ef          	jal	ra,12f50 <__swsetup_r>
   1f4c4:	08051e63          	bnez	a0,1f560 <__swbuf_r+0x178>
   1f4c8:	01041703          	lh	a4,16(s0)
   1f4cc:	00002637          	lui	a2,0x2
   1f4d0:	0ff4f993          	andi	s3,s1,255
   1f4d4:	03071693          	slli	a3,a4,0x30
   1f4d8:	0306d693          	srli	a3,a3,0x30
   1f4dc:	00c6f6b3          	and	a3,a3,a2
   1f4e0:	01843783          	ld	a5,24(s0)
   1f4e4:	00098493          	mv	s1,s3
   1f4e8:	f60694e3          	bnez	a3,1f450 <__swbuf_r+0x68>
   1f4ec:	0ac42683          	lw	a3,172(s0)
   1f4f0:	00c76733          	or	a4,a4,a2
   1f4f4:	ffffe637          	lui	a2,0xffffe
   1f4f8:	fff60613          	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd919f>
   1f4fc:	00c6f6b3          	and	a3,a3,a2
   1f500:	00e41823          	sh	a4,16(s0)
   1f504:	00043703          	ld	a4,0(s0)
   1f508:	0ad42623          	sw	a3,172(s0)
   1f50c:	02042683          	lw	a3,32(s0)
   1f510:	40f707bb          	subw	a5,a4,a5
   1f514:	f4d7c6e3          	blt	a5,a3,1f460 <__swbuf_r+0x78>
   1f518:	00040593          	mv	a1,s0
   1f51c:	00090513          	mv	a0,s2
   1f520:	f25f30ef          	jal	ra,13444 <_fflush_r>
   1f524:	02051e63          	bnez	a0,1f560 <__swbuf_r+0x178>
   1f528:	00043703          	ld	a4,0(s0)
   1f52c:	00c42683          	lw	a3,12(s0)
   1f530:	00100793          	li	a5,1
   1f534:	00170613          	addi	a2,a4,1
   1f538:	fff6869b          	addiw	a3,a3,-1
   1f53c:	00c43023          	sd	a2,0(s0)
   1f540:	00d42623          	sw	a3,12(s0)
   1f544:	01370023          	sb	s3,0(a4)
   1f548:	02042703          	lw	a4,32(s0)
   1f54c:	f2f71ce3          	bne	a4,a5,1f484 <__swbuf_r+0x9c>
   1f550:	00040593          	mv	a1,s0
   1f554:	00090513          	mv	a0,s2
   1f558:	eedf30ef          	jal	ra,13444 <_fflush_r>
   1f55c:	f2050ee3          	beqz	a0,1f498 <__swbuf_r+0xb0>
   1f560:	fff00493          	li	s1,-1
   1f564:	f35ff06f          	j	1f498 <__swbuf_r+0xb0>
   1f568:	b18f40ef          	jal	ra,13880 <__sinit>
   1f56c:	eadff06f          	j	1f418 <__swbuf_r+0x30>

000000000001f570 <__swbuf>:
   1f570:	00058613          	mv	a2,a1
   1f574:	00050593          	mv	a1,a0
   1f578:	7581b503          	ld	a0,1880(gp) # 24db8 <_impure_ptr>
   1f57c:	e6dff06f          	j	1f3e8 <__swbuf_r>

000000000001f580 <_wcrtomb_r>:
   1f580:	fd010113          	addi	sp,sp,-48
   1f584:	02813023          	sd	s0,32(sp)
   1f588:	00913c23          	sd	s1,24(sp)
   1f58c:	02113423          	sd	ra,40(sp)
   1f590:	00050413          	mv	s0,a0
   1f594:	00068493          	mv	s1,a3
   1f598:	e401b783          	ld	a5,-448(gp) # 244a0 <__global_locale+0xe0>
   1f59c:	02058263          	beqz	a1,1f5c0 <_wcrtomb_r+0x40>
   1f5a0:	000780e7          	jalr	a5
   1f5a4:	fff00793          	li	a5,-1
   1f5a8:	02f50663          	beq	a0,a5,1f5d4 <_wcrtomb_r+0x54>
   1f5ac:	02813083          	ld	ra,40(sp)
   1f5b0:	02013403          	ld	s0,32(sp)
   1f5b4:	01813483          	ld	s1,24(sp)
   1f5b8:	03010113          	addi	sp,sp,48
   1f5bc:	00008067          	ret
   1f5c0:	00000613          	li	a2,0
   1f5c4:	00010593          	mv	a1,sp
   1f5c8:	000780e7          	jalr	a5
   1f5cc:	fff00793          	li	a5,-1
   1f5d0:	fcf51ee3          	bne	a0,a5,1f5ac <_wcrtomb_r+0x2c>
   1f5d4:	0004a023          	sw	zero,0(s1)
   1f5d8:	08a00793          	li	a5,138
   1f5dc:	02813083          	ld	ra,40(sp)
   1f5e0:	00f42023          	sw	a5,0(s0)
   1f5e4:	02013403          	ld	s0,32(sp)
   1f5e8:	01813483          	ld	s1,24(sp)
   1f5ec:	03010113          	addi	sp,sp,48
   1f5f0:	00008067          	ret

000000000001f5f4 <wcrtomb>:
   1f5f4:	fd010113          	addi	sp,sp,-48
   1f5f8:	02813023          	sd	s0,32(sp)
   1f5fc:	00913c23          	sd	s1,24(sp)
   1f600:	02113423          	sd	ra,40(sp)
   1f604:	00060413          	mv	s0,a2
   1f608:	7581b483          	ld	s1,1880(gp) # 24db8 <_impure_ptr>
   1f60c:	e401b783          	ld	a5,-448(gp) # 244a0 <__global_locale+0xe0>
   1f610:	02050a63          	beqz	a0,1f644 <wcrtomb+0x50>
   1f614:	00058613          	mv	a2,a1
   1f618:	00040693          	mv	a3,s0
   1f61c:	00050593          	mv	a1,a0
   1f620:	00048513          	mv	a0,s1
   1f624:	000780e7          	jalr	a5
   1f628:	fff00793          	li	a5,-1
   1f62c:	02f50a63          	beq	a0,a5,1f660 <wcrtomb+0x6c>
   1f630:	02813083          	ld	ra,40(sp)
   1f634:	02013403          	ld	s0,32(sp)
   1f638:	01813483          	ld	s1,24(sp)
   1f63c:	03010113          	addi	sp,sp,48
   1f640:	00008067          	ret
   1f644:	00060693          	mv	a3,a2
   1f648:	00010593          	mv	a1,sp
   1f64c:	00000613          	li	a2,0
   1f650:	00048513          	mv	a0,s1
   1f654:	000780e7          	jalr	a5
   1f658:	fff00793          	li	a5,-1
   1f65c:	fcf51ae3          	bne	a0,a5,1f630 <wcrtomb+0x3c>
   1f660:	00042023          	sw	zero,0(s0)
   1f664:	02813083          	ld	ra,40(sp)
   1f668:	02013403          	ld	s0,32(sp)
   1f66c:	08a00793          	li	a5,138
   1f670:	00f4a023          	sw	a5,0(s1)
   1f674:	01813483          	ld	s1,24(sp)
   1f678:	03010113          	addi	sp,sp,48
   1f67c:	00008067          	ret

000000000001f680 <abort>:
   1f680:	ff010113          	addi	sp,sp,-16
   1f684:	00600513          	li	a0,6
   1f688:	00113423          	sd	ra,8(sp)
   1f68c:	374000ef          	jal	ra,1fa00 <raise>
   1f690:	00100513          	li	a0,1
   1f694:	6e0000ef          	jal	ra,1fd74 <_exit>

000000000001f698 <__register_exitproc>:
   1f698:	7481b703          	ld	a4,1864(gp) # 24da8 <_global_impure_ptr>
   1f69c:	1f873783          	ld	a5,504(a4)
   1f6a0:	06078063          	beqz	a5,1f700 <__register_exitproc+0x68>
   1f6a4:	0087a703          	lw	a4,8(a5)
   1f6a8:	01f00813          	li	a6,31
   1f6ac:	08e84663          	blt	a6,a4,1f738 <__register_exitproc+0xa0>
   1f6b0:	02050863          	beqz	a0,1f6e0 <__register_exitproc+0x48>
   1f6b4:	00371813          	slli	a6,a4,0x3
   1f6b8:	01078833          	add	a6,a5,a6
   1f6bc:	10c83823          	sd	a2,272(a6) # 7ff00110 <__BSS_END__+0x7fedb2b0>
   1f6c0:	3107a883          	lw	a7,784(a5)
   1f6c4:	00100613          	li	a2,1
   1f6c8:	00e6163b          	sllw	a2,a2,a4
   1f6cc:	00c8e8b3          	or	a7,a7,a2
   1f6d0:	3117a823          	sw	a7,784(a5)
   1f6d4:	20d83823          	sd	a3,528(a6)
   1f6d8:	00200693          	li	a3,2
   1f6dc:	02d50863          	beq	a0,a3,1f70c <__register_exitproc+0x74>
   1f6e0:	00270693          	addi	a3,a4,2
   1f6e4:	00369693          	slli	a3,a3,0x3
   1f6e8:	0017071b          	addiw	a4,a4,1
   1f6ec:	00e7a423          	sw	a4,8(a5)
   1f6f0:	00d787b3          	add	a5,a5,a3
   1f6f4:	00b7b023          	sd	a1,0(a5)
   1f6f8:	00000513          	li	a0,0
   1f6fc:	00008067          	ret
   1f700:	20070793          	addi	a5,a4,512
   1f704:	1ef73c23          	sd	a5,504(a4)
   1f708:	f9dff06f          	j	1f6a4 <__register_exitproc+0xc>
   1f70c:	3147a683          	lw	a3,788(a5)
   1f710:	00000513          	li	a0,0
   1f714:	00c6e633          	or	a2,a3,a2
   1f718:	00270693          	addi	a3,a4,2
   1f71c:	00369693          	slli	a3,a3,0x3
   1f720:	0017071b          	addiw	a4,a4,1
   1f724:	30c7aa23          	sw	a2,788(a5)
   1f728:	00e7a423          	sw	a4,8(a5)
   1f72c:	00d787b3          	add	a5,a5,a3
   1f730:	00b7b023          	sd	a1,0(a5)
   1f734:	00008067          	ret
   1f738:	fff00513          	li	a0,-1
   1f73c:	00008067          	ret

000000000001f740 <_init_signal_r>:
   1f740:	51853783          	ld	a5,1304(a0)
   1f744:	00078663          	beqz	a5,1f750 <_init_signal_r+0x10>
   1f748:	00000513          	li	a0,0
   1f74c:	00008067          	ret
   1f750:	ff010113          	addi	sp,sp,-16
   1f754:	10000593          	li	a1,256
   1f758:	00813023          	sd	s0,0(sp)
   1f75c:	00113423          	sd	ra,8(sp)
   1f760:	00050413          	mv	s0,a0
   1f764:	cb9f70ef          	jal	ra,1741c <_malloc_r>
   1f768:	50a43c23          	sd	a0,1304(s0)
   1f76c:	02050463          	beqz	a0,1f794 <_init_signal_r+0x54>
   1f770:	10050793          	addi	a5,a0,256
   1f774:	00053023          	sd	zero,0(a0)
   1f778:	00850513          	addi	a0,a0,8
   1f77c:	fef51ce3          	bne	a0,a5,1f774 <_init_signal_r+0x34>
   1f780:	00000513          	li	a0,0
   1f784:	00813083          	ld	ra,8(sp)
   1f788:	00013403          	ld	s0,0(sp)
   1f78c:	01010113          	addi	sp,sp,16
   1f790:	00008067          	ret
   1f794:	fff00513          	li	a0,-1
   1f798:	fedff06f          	j	1f784 <_init_signal_r+0x44>

000000000001f79c <_signal_r>:
   1f79c:	fd010113          	addi	sp,sp,-48
   1f7a0:	00913c23          	sd	s1,24(sp)
   1f7a4:	02113423          	sd	ra,40(sp)
   1f7a8:	02813023          	sd	s0,32(sp)
   1f7ac:	01f00793          	li	a5,31
   1f7b0:	00050493          	mv	s1,a0
   1f7b4:	02b7ea63          	bltu	a5,a1,1f7e8 <_signal_r+0x4c>
   1f7b8:	51853703          	ld	a4,1304(a0)
   1f7bc:	00058413          	mv	s0,a1
   1f7c0:	04070463          	beqz	a4,1f808 <_signal_r+0x6c>
   1f7c4:	00341413          	slli	s0,s0,0x3
   1f7c8:	00870433          	add	s0,a4,s0
   1f7cc:	00043503          	ld	a0,0(s0)
   1f7d0:	00c43023          	sd	a2,0(s0)
   1f7d4:	02813083          	ld	ra,40(sp)
   1f7d8:	02013403          	ld	s0,32(sp)
   1f7dc:	01813483          	ld	s1,24(sp)
   1f7e0:	03010113          	addi	sp,sp,48
   1f7e4:	00008067          	ret
   1f7e8:	02813083          	ld	ra,40(sp)
   1f7ec:	02013403          	ld	s0,32(sp)
   1f7f0:	01600793          	li	a5,22
   1f7f4:	00f52023          	sw	a5,0(a0)
   1f7f8:	01813483          	ld	s1,24(sp)
   1f7fc:	fff00513          	li	a0,-1
   1f800:	03010113          	addi	sp,sp,48
   1f804:	00008067          	ret
   1f808:	10000593          	li	a1,256
   1f80c:	00c13423          	sd	a2,8(sp)
   1f810:	c0df70ef          	jal	ra,1741c <_malloc_r>
   1f814:	50a4bc23          	sd	a0,1304(s1)
   1f818:	00050713          	mv	a4,a0
   1f81c:	02050063          	beqz	a0,1f83c <_signal_r+0xa0>
   1f820:	00813603          	ld	a2,8(sp)
   1f824:	00050793          	mv	a5,a0
   1f828:	10050693          	addi	a3,a0,256
   1f82c:	0007b023          	sd	zero,0(a5)
   1f830:	00878793          	addi	a5,a5,8
   1f834:	fef69ce3          	bne	a3,a5,1f82c <_signal_r+0x90>
   1f838:	f8dff06f          	j	1f7c4 <_signal_r+0x28>
   1f83c:	fff00513          	li	a0,-1
   1f840:	f95ff06f          	j	1f7d4 <_signal_r+0x38>

000000000001f844 <_raise_r>:
   1f844:	fe010113          	addi	sp,sp,-32
   1f848:	00913423          	sd	s1,8(sp)
   1f84c:	00113c23          	sd	ra,24(sp)
   1f850:	00813823          	sd	s0,16(sp)
   1f854:	01f00793          	li	a5,31
   1f858:	00050493          	mv	s1,a0
   1f85c:	0ab7ea63          	bltu	a5,a1,1f910 <_raise_r+0xcc>
   1f860:	51853783          	ld	a5,1304(a0)
   1f864:	00058413          	mv	s0,a1
   1f868:	04078463          	beqz	a5,1f8b0 <_raise_r+0x6c>
   1f86c:	00359713          	slli	a4,a1,0x3
   1f870:	00e787b3          	add	a5,a5,a4
   1f874:	0007b703          	ld	a4,0(a5)
   1f878:	02070c63          	beqz	a4,1f8b0 <_raise_r+0x6c>
   1f87c:	00100693          	li	a3,1
   1f880:	06d70c63          	beq	a4,a3,1f8f8 <_raise_r+0xb4>
   1f884:	fff00693          	li	a3,-1
   1f888:	04d70863          	beq	a4,a3,1f8d8 <_raise_r+0x94>
   1f88c:	00058513          	mv	a0,a1
   1f890:	0007b023          	sd	zero,0(a5)
   1f894:	000700e7          	jalr	a4
   1f898:	00000513          	li	a0,0
   1f89c:	01813083          	ld	ra,24(sp)
   1f8a0:	01013403          	ld	s0,16(sp)
   1f8a4:	00813483          	ld	s1,8(sp)
   1f8a8:	02010113          	addi	sp,sp,32
   1f8ac:	00008067          	ret
   1f8b0:	00048513          	mv	a0,s1
   1f8b4:	464000ef          	jal	ra,1fd18 <_getpid_r>
   1f8b8:	00040613          	mv	a2,s0
   1f8bc:	01013403          	ld	s0,16(sp)
   1f8c0:	01813083          	ld	ra,24(sp)
   1f8c4:	00050593          	mv	a1,a0
   1f8c8:	00048513          	mv	a0,s1
   1f8cc:	00813483          	ld	s1,8(sp)
   1f8d0:	02010113          	addi	sp,sp,32
   1f8d4:	3ec0006f          	j	1fcc0 <_kill_r>
   1f8d8:	01813083          	ld	ra,24(sp)
   1f8dc:	01013403          	ld	s0,16(sp)
   1f8e0:	01600793          	li	a5,22
   1f8e4:	00f52023          	sw	a5,0(a0)
   1f8e8:	00813483          	ld	s1,8(sp)
   1f8ec:	00100513          	li	a0,1
   1f8f0:	02010113          	addi	sp,sp,32
   1f8f4:	00008067          	ret
   1f8f8:	01813083          	ld	ra,24(sp)
   1f8fc:	01013403          	ld	s0,16(sp)
   1f900:	00813483          	ld	s1,8(sp)
   1f904:	00000513          	li	a0,0
   1f908:	02010113          	addi	sp,sp,32
   1f90c:	00008067          	ret
   1f910:	01600793          	li	a5,22
   1f914:	00f52023          	sw	a5,0(a0)
   1f918:	fff00513          	li	a0,-1
   1f91c:	f81ff06f          	j	1f89c <_raise_r+0x58>

000000000001f920 <__sigtramp_r>:
   1f920:	01f00793          	li	a5,31
   1f924:	0cb7ea63          	bltu	a5,a1,1f9f8 <__sigtramp_r+0xd8>
   1f928:	51853703          	ld	a4,1304(a0)
   1f92c:	fe010113          	addi	sp,sp,-32
   1f930:	00813823          	sd	s0,16(sp)
   1f934:	00913423          	sd	s1,8(sp)
   1f938:	00113c23          	sd	ra,24(sp)
   1f93c:	00058413          	mv	s0,a1
   1f940:	00050493          	mv	s1,a0
   1f944:	06070063          	beqz	a4,1f9a4 <__sigtramp_r+0x84>
   1f948:	00341513          	slli	a0,s0,0x3
   1f94c:	00a70733          	add	a4,a4,a0
   1f950:	00073783          	ld	a5,0(a4)
   1f954:	02078c63          	beqz	a5,1f98c <__sigtramp_r+0x6c>
   1f958:	fff00693          	li	a3,-1
   1f95c:	08d78663          	beq	a5,a3,1f9e8 <__sigtramp_r+0xc8>
   1f960:	00100693          	li	a3,1
   1f964:	06d78663          	beq	a5,a3,1f9d0 <__sigtramp_r+0xb0>
   1f968:	00040513          	mv	a0,s0
   1f96c:	00073023          	sd	zero,0(a4)
   1f970:	000780e7          	jalr	a5
   1f974:	00000513          	li	a0,0
   1f978:	01813083          	ld	ra,24(sp)
   1f97c:	01013403          	ld	s0,16(sp)
   1f980:	00813483          	ld	s1,8(sp)
   1f984:	02010113          	addi	sp,sp,32
   1f988:	00008067          	ret
   1f98c:	01813083          	ld	ra,24(sp)
   1f990:	01013403          	ld	s0,16(sp)
   1f994:	00813483          	ld	s1,8(sp)
   1f998:	00100513          	li	a0,1
   1f99c:	02010113          	addi	sp,sp,32
   1f9a0:	00008067          	ret
   1f9a4:	10000593          	li	a1,256
   1f9a8:	a75f70ef          	jal	ra,1741c <_malloc_r>
   1f9ac:	50a4bc23          	sd	a0,1304(s1)
   1f9b0:	00050713          	mv	a4,a0
   1f9b4:	02050e63          	beqz	a0,1f9f0 <__sigtramp_r+0xd0>
   1f9b8:	00050793          	mv	a5,a0
   1f9bc:	10050693          	addi	a3,a0,256
   1f9c0:	0007b023          	sd	zero,0(a5)
   1f9c4:	00878793          	addi	a5,a5,8
   1f9c8:	fed79ce3          	bne	a5,a3,1f9c0 <__sigtramp_r+0xa0>
   1f9cc:	f7dff06f          	j	1f948 <__sigtramp_r+0x28>
   1f9d0:	01813083          	ld	ra,24(sp)
   1f9d4:	01013403          	ld	s0,16(sp)
   1f9d8:	00813483          	ld	s1,8(sp)
   1f9dc:	00300513          	li	a0,3
   1f9e0:	02010113          	addi	sp,sp,32
   1f9e4:	00008067          	ret
   1f9e8:	00200513          	li	a0,2
   1f9ec:	f8dff06f          	j	1f978 <__sigtramp_r+0x58>
   1f9f0:	fff00513          	li	a0,-1
   1f9f4:	f85ff06f          	j	1f978 <__sigtramp_r+0x58>
   1f9f8:	fff00513          	li	a0,-1
   1f9fc:	00008067          	ret

000000000001fa00 <raise>:
   1fa00:	fe010113          	addi	sp,sp,-32
   1fa04:	00913423          	sd	s1,8(sp)
   1fa08:	00113c23          	sd	ra,24(sp)
   1fa0c:	00813823          	sd	s0,16(sp)
   1fa10:	01f00793          	li	a5,31
   1fa14:	7581b483          	ld	s1,1880(gp) # 24db8 <_impure_ptr>
   1fa18:	0aa7e863          	bltu	a5,a0,1fac8 <raise+0xc8>
   1fa1c:	5184b783          	ld	a5,1304(s1)
   1fa20:	00050413          	mv	s0,a0
   1fa24:	04078263          	beqz	a5,1fa68 <raise+0x68>
   1fa28:	00351713          	slli	a4,a0,0x3
   1fa2c:	00e787b3          	add	a5,a5,a4
   1fa30:	0007b703          	ld	a4,0(a5)
   1fa34:	02070a63          	beqz	a4,1fa68 <raise+0x68>
   1fa38:	00100693          	li	a3,1
   1fa3c:	06d70a63          	beq	a4,a3,1fab0 <raise+0xb0>
   1fa40:	fff00693          	li	a3,-1
   1fa44:	04d70663          	beq	a4,a3,1fa90 <raise+0x90>
   1fa48:	0007b023          	sd	zero,0(a5)
   1fa4c:	000700e7          	jalr	a4
   1fa50:	00000513          	li	a0,0
   1fa54:	01813083          	ld	ra,24(sp)
   1fa58:	01013403          	ld	s0,16(sp)
   1fa5c:	00813483          	ld	s1,8(sp)
   1fa60:	02010113          	addi	sp,sp,32
   1fa64:	00008067          	ret
   1fa68:	00048513          	mv	a0,s1
   1fa6c:	2ac000ef          	jal	ra,1fd18 <_getpid_r>
   1fa70:	00040613          	mv	a2,s0
   1fa74:	01013403          	ld	s0,16(sp)
   1fa78:	01813083          	ld	ra,24(sp)
   1fa7c:	00050593          	mv	a1,a0
   1fa80:	00048513          	mv	a0,s1
   1fa84:	00813483          	ld	s1,8(sp)
   1fa88:	02010113          	addi	sp,sp,32
   1fa8c:	2340006f          	j	1fcc0 <_kill_r>
   1fa90:	01813083          	ld	ra,24(sp)
   1fa94:	01013403          	ld	s0,16(sp)
   1fa98:	01600793          	li	a5,22
   1fa9c:	00f4a023          	sw	a5,0(s1)
   1faa0:	00100513          	li	a0,1
   1faa4:	00813483          	ld	s1,8(sp)
   1faa8:	02010113          	addi	sp,sp,32
   1faac:	00008067          	ret
   1fab0:	01813083          	ld	ra,24(sp)
   1fab4:	01013403          	ld	s0,16(sp)
   1fab8:	00813483          	ld	s1,8(sp)
   1fabc:	00000513          	li	a0,0
   1fac0:	02010113          	addi	sp,sp,32
   1fac4:	00008067          	ret
   1fac8:	01600793          	li	a5,22
   1facc:	00f4a023          	sw	a5,0(s1)
   1fad0:	fff00513          	li	a0,-1
   1fad4:	f81ff06f          	j	1fa54 <raise+0x54>

000000000001fad8 <signal>:
   1fad8:	fe010113          	addi	sp,sp,-32
   1fadc:	01213023          	sd	s2,0(sp)
   1fae0:	00113c23          	sd	ra,24(sp)
   1fae4:	00813823          	sd	s0,16(sp)
   1fae8:	00913423          	sd	s1,8(sp)
   1faec:	01f00793          	li	a5,31
   1faf0:	7581b903          	ld	s2,1880(gp) # 24db8 <_impure_ptr>
   1faf4:	02a7ee63          	bltu	a5,a0,1fb30 <signal+0x58>
   1faf8:	00050413          	mv	s0,a0
   1fafc:	51893503          	ld	a0,1304(s2)
   1fb00:	00058493          	mv	s1,a1
   1fb04:	04050863          	beqz	a0,1fb54 <signal+0x7c>
   1fb08:	00341413          	slli	s0,s0,0x3
   1fb0c:	00850433          	add	s0,a0,s0
   1fb10:	00043503          	ld	a0,0(s0)
   1fb14:	00943023          	sd	s1,0(s0)
   1fb18:	01813083          	ld	ra,24(sp)
   1fb1c:	01013403          	ld	s0,16(sp)
   1fb20:	00813483          	ld	s1,8(sp)
   1fb24:	00013903          	ld	s2,0(sp)
   1fb28:	02010113          	addi	sp,sp,32
   1fb2c:	00008067          	ret
   1fb30:	01813083          	ld	ra,24(sp)
   1fb34:	01013403          	ld	s0,16(sp)
   1fb38:	01600793          	li	a5,22
   1fb3c:	00f92023          	sw	a5,0(s2)
   1fb40:	00813483          	ld	s1,8(sp)
   1fb44:	00013903          	ld	s2,0(sp)
   1fb48:	fff00513          	li	a0,-1
   1fb4c:	02010113          	addi	sp,sp,32
   1fb50:	00008067          	ret
   1fb54:	10000593          	li	a1,256
   1fb58:	00090513          	mv	a0,s2
   1fb5c:	8c1f70ef          	jal	ra,1741c <_malloc_r>
   1fb60:	50a93c23          	sd	a0,1304(s2)
   1fb64:	00050e63          	beqz	a0,1fb80 <signal+0xa8>
   1fb68:	00050793          	mv	a5,a0
   1fb6c:	10050713          	addi	a4,a0,256
   1fb70:	0007b023          	sd	zero,0(a5)
   1fb74:	00878793          	addi	a5,a5,8
   1fb78:	fef71ce3          	bne	a4,a5,1fb70 <signal+0x98>
   1fb7c:	f8dff06f          	j	1fb08 <signal+0x30>
   1fb80:	fff00513          	li	a0,-1
   1fb84:	f95ff06f          	j	1fb18 <signal+0x40>

000000000001fb88 <_init_signal>:
   1fb88:	ff010113          	addi	sp,sp,-16
   1fb8c:	00813023          	sd	s0,0(sp)
   1fb90:	7581b403          	ld	s0,1880(gp) # 24db8 <_impure_ptr>
   1fb94:	51843783          	ld	a5,1304(s0)
   1fb98:	00113423          	sd	ra,8(sp)
   1fb9c:	00078c63          	beqz	a5,1fbb4 <_init_signal+0x2c>
   1fba0:	00000513          	li	a0,0
   1fba4:	00813083          	ld	ra,8(sp)
   1fba8:	00013403          	ld	s0,0(sp)
   1fbac:	01010113          	addi	sp,sp,16
   1fbb0:	00008067          	ret
   1fbb4:	10000593          	li	a1,256
   1fbb8:	00040513          	mv	a0,s0
   1fbbc:	861f70ef          	jal	ra,1741c <_malloc_r>
   1fbc0:	50a43c23          	sd	a0,1304(s0)
   1fbc4:	00050c63          	beqz	a0,1fbdc <_init_signal+0x54>
   1fbc8:	10050793          	addi	a5,a0,256
   1fbcc:	00053023          	sd	zero,0(a0)
   1fbd0:	00850513          	addi	a0,a0,8
   1fbd4:	fef51ce3          	bne	a0,a5,1fbcc <_init_signal+0x44>
   1fbd8:	fc9ff06f          	j	1fba0 <_init_signal+0x18>
   1fbdc:	fff00513          	li	a0,-1
   1fbe0:	fc5ff06f          	j	1fba4 <_init_signal+0x1c>

000000000001fbe4 <__sigtramp>:
   1fbe4:	fe010113          	addi	sp,sp,-32
   1fbe8:	00913423          	sd	s1,8(sp)
   1fbec:	00113c23          	sd	ra,24(sp)
   1fbf0:	00813823          	sd	s0,16(sp)
   1fbf4:	01f00793          	li	a5,31
   1fbf8:	7581b483          	ld	s1,1880(gp) # 24db8 <_impure_ptr>
   1fbfc:	0aa7ee63          	bltu	a5,a0,1fcb8 <__sigtramp+0xd4>
   1fc00:	5184b703          	ld	a4,1304(s1)
   1fc04:	00050413          	mv	s0,a0
   1fc08:	06070063          	beqz	a4,1fc68 <__sigtramp+0x84>
   1fc0c:	00341513          	slli	a0,s0,0x3
   1fc10:	00a70733          	add	a4,a4,a0
   1fc14:	00073783          	ld	a5,0(a4)
   1fc18:	02078c63          	beqz	a5,1fc50 <__sigtramp+0x6c>
   1fc1c:	fff00693          	li	a3,-1
   1fc20:	08d78863          	beq	a5,a3,1fcb0 <__sigtramp+0xcc>
   1fc24:	00100693          	li	a3,1
   1fc28:	06d78863          	beq	a5,a3,1fc98 <__sigtramp+0xb4>
   1fc2c:	00040513          	mv	a0,s0
   1fc30:	00073023          	sd	zero,0(a4)
   1fc34:	000780e7          	jalr	a5
   1fc38:	00000513          	li	a0,0
   1fc3c:	01813083          	ld	ra,24(sp)
   1fc40:	01013403          	ld	s0,16(sp)
   1fc44:	00813483          	ld	s1,8(sp)
   1fc48:	02010113          	addi	sp,sp,32
   1fc4c:	00008067          	ret
   1fc50:	01813083          	ld	ra,24(sp)
   1fc54:	01013403          	ld	s0,16(sp)
   1fc58:	00813483          	ld	s1,8(sp)
   1fc5c:	00100513          	li	a0,1
   1fc60:	02010113          	addi	sp,sp,32
   1fc64:	00008067          	ret
   1fc68:	10000593          	li	a1,256
   1fc6c:	00048513          	mv	a0,s1
   1fc70:	facf70ef          	jal	ra,1741c <_malloc_r>
   1fc74:	50a4bc23          	sd	a0,1304(s1)
   1fc78:	00050713          	mv	a4,a0
   1fc7c:	02050e63          	beqz	a0,1fcb8 <__sigtramp+0xd4>
   1fc80:	00050793          	mv	a5,a0
   1fc84:	10050693          	addi	a3,a0,256
   1fc88:	0007b023          	sd	zero,0(a5)
   1fc8c:	00878793          	addi	a5,a5,8
   1fc90:	fed79ce3          	bne	a5,a3,1fc88 <__sigtramp+0xa4>
   1fc94:	f79ff06f          	j	1fc0c <__sigtramp+0x28>
   1fc98:	01813083          	ld	ra,24(sp)
   1fc9c:	01013403          	ld	s0,16(sp)
   1fca0:	00813483          	ld	s1,8(sp)
   1fca4:	00300513          	li	a0,3
   1fca8:	02010113          	addi	sp,sp,32
   1fcac:	00008067          	ret
   1fcb0:	00200513          	li	a0,2
   1fcb4:	f89ff06f          	j	1fc3c <__sigtramp+0x58>
   1fcb8:	fff00513          	li	a0,-1
   1fcbc:	f81ff06f          	j	1fc3c <__sigtramp+0x58>

000000000001fcc0 <_kill_r>:
   1fcc0:	ff010113          	addi	sp,sp,-16
   1fcc4:	00058713          	mv	a4,a1
   1fcc8:	00813023          	sd	s0,0(sp)
   1fccc:	00060593          	mv	a1,a2
   1fcd0:	00050413          	mv	s0,a0
   1fcd4:	00070513          	mv	a0,a4
   1fcd8:	7801a823          	sw	zero,1936(gp) # 24df0 <errno>
   1fcdc:	00113423          	sd	ra,8(sp)
   1fce0:	194000ef          	jal	ra,1fe74 <_kill>
   1fce4:	fff00793          	li	a5,-1
   1fce8:	00f50a63          	beq	a0,a5,1fcfc <_kill_r+0x3c>
   1fcec:	00813083          	ld	ra,8(sp)
   1fcf0:	00013403          	ld	s0,0(sp)
   1fcf4:	01010113          	addi	sp,sp,16
   1fcf8:	00008067          	ret
   1fcfc:	7901a783          	lw	a5,1936(gp) # 24df0 <errno>
   1fd00:	fe0786e3          	beqz	a5,1fcec <_kill_r+0x2c>
   1fd04:	00813083          	ld	ra,8(sp)
   1fd08:	00f42023          	sw	a5,0(s0)
   1fd0c:	00013403          	ld	s0,0(sp)
   1fd10:	01010113          	addi	sp,sp,16
   1fd14:	00008067          	ret

000000000001fd18 <_getpid_r>:
   1fd18:	1140006f          	j	1fe2c <_getpid>

000000000001fd1c <_close>:
   1fd1c:	ff010113          	addi	sp,sp,-16
   1fd20:	00113423          	sd	ra,8(sp)
   1fd24:	00813023          	sd	s0,0(sp)
   1fd28:	00000593          	li	a1,0
   1fd2c:	00000613          	li	a2,0
   1fd30:	00000693          	li	a3,0
   1fd34:	00000713          	li	a4,0
   1fd38:	00000793          	li	a5,0
   1fd3c:	03900893          	li	a7,57
   1fd40:	00000073          	ecall
   1fd44:	00050413          	mv	s0,a0
   1fd48:	00054c63          	bltz	a0,1fd60 <_close+0x44>
   1fd4c:	0005051b          	sext.w	a0,a0
   1fd50:	00813083          	ld	ra,8(sp)
   1fd54:	00013403          	ld	s0,0(sp)
   1fd58:	01010113          	addi	sp,sp,16
   1fd5c:	00008067          	ret
   1fd60:	334000ef          	jal	ra,20094 <__errno>
   1fd64:	4080043b          	negw	s0,s0
   1fd68:	00852023          	sw	s0,0(a0)
   1fd6c:	fff00513          	li	a0,-1
   1fd70:	fe1ff06f          	j	1fd50 <_close+0x34>

000000000001fd74 <_exit>:
   1fd74:	00000593          	li	a1,0
   1fd78:	00000613          	li	a2,0
   1fd7c:	00000693          	li	a3,0
   1fd80:	00000713          	li	a4,0
   1fd84:	00000793          	li	a5,0
   1fd88:	05d00893          	li	a7,93
   1fd8c:	00000073          	ecall
   1fd90:	00054463          	bltz	a0,1fd98 <_exit+0x24>
   1fd94:	0000006f          	j	1fd94 <_exit+0x20>
   1fd98:	ff010113          	addi	sp,sp,-16
   1fd9c:	00813023          	sd	s0,0(sp)
   1fda0:	00050413          	mv	s0,a0
   1fda4:	00113423          	sd	ra,8(sp)
   1fda8:	4080043b          	negw	s0,s0
   1fdac:	2e8000ef          	jal	ra,20094 <__errno>
   1fdb0:	00852023          	sw	s0,0(a0)
   1fdb4:	0000006f          	j	1fdb4 <_exit+0x40>

000000000001fdb8 <_fstat>:
   1fdb8:	f6010113          	addi	sp,sp,-160
   1fdbc:	08913423          	sd	s1,136(sp)
   1fdc0:	08113c23          	sd	ra,152(sp)
   1fdc4:	00058493          	mv	s1,a1
   1fdc8:	08813823          	sd	s0,144(sp)
   1fdcc:	00010593          	mv	a1,sp
   1fdd0:	00000613          	li	a2,0
   1fdd4:	00000693          	li	a3,0
   1fdd8:	00000713          	li	a4,0
   1fddc:	00000793          	li	a5,0
   1fde0:	05000893          	li	a7,80
   1fde4:	00000073          	ecall
   1fde8:	00050413          	mv	s0,a0
   1fdec:	02054663          	bltz	a0,1fe18 <_fstat+0x60>
   1fdf0:	0005041b          	sext.w	s0,a0
   1fdf4:	00048513          	mv	a0,s1
   1fdf8:	00010593          	mv	a1,sp
   1fdfc:	22c000ef          	jal	ra,20028 <_conv_stat>
   1fe00:	09813083          	ld	ra,152(sp)
   1fe04:	00040513          	mv	a0,s0
   1fe08:	09013403          	ld	s0,144(sp)
   1fe0c:	08813483          	ld	s1,136(sp)
   1fe10:	0a010113          	addi	sp,sp,160
   1fe14:	00008067          	ret
   1fe18:	4080043b          	negw	s0,s0
   1fe1c:	278000ef          	jal	ra,20094 <__errno>
   1fe20:	00852023          	sw	s0,0(a0)
   1fe24:	fff00413          	li	s0,-1
   1fe28:	fcdff06f          	j	1fdf4 <_fstat+0x3c>

000000000001fe2c <_getpid>:
   1fe2c:	00100513          	li	a0,1
   1fe30:	00008067          	ret

000000000001fe34 <_isatty>:
   1fe34:	f8010113          	addi	sp,sp,-128
   1fe38:	00810593          	addi	a1,sp,8
   1fe3c:	06113c23          	sd	ra,120(sp)
   1fe40:	f79ff0ef          	jal	ra,1fdb8 <_fstat>
   1fe44:	fff00793          	li	a5,-1
   1fe48:	00f50e63          	beq	a0,a5,1fe64 <_isatty+0x30>
   1fe4c:	00c12503          	lw	a0,12(sp)
   1fe50:	07813083          	ld	ra,120(sp)
   1fe54:	40d5551b          	sraiw	a0,a0,0xd
   1fe58:	00157513          	andi	a0,a0,1
   1fe5c:	08010113          	addi	sp,sp,128
   1fe60:	00008067          	ret
   1fe64:	07813083          	ld	ra,120(sp)
   1fe68:	00000513          	li	a0,0
   1fe6c:	08010113          	addi	sp,sp,128
   1fe70:	00008067          	ret

000000000001fe74 <_kill>:
   1fe74:	ff010113          	addi	sp,sp,-16
   1fe78:	00113423          	sd	ra,8(sp)
   1fe7c:	218000ef          	jal	ra,20094 <__errno>
   1fe80:	00813083          	ld	ra,8(sp)
   1fe84:	01600793          	li	a5,22
   1fe88:	00f52023          	sw	a5,0(a0)
   1fe8c:	fff00513          	li	a0,-1
   1fe90:	01010113          	addi	sp,sp,16
   1fe94:	00008067          	ret

000000000001fe98 <_lseek>:
   1fe98:	ff010113          	addi	sp,sp,-16
   1fe9c:	00113423          	sd	ra,8(sp)
   1fea0:	00813023          	sd	s0,0(sp)
   1fea4:	00000693          	li	a3,0
   1fea8:	00000713          	li	a4,0
   1feac:	00000793          	li	a5,0
   1feb0:	03e00893          	li	a7,62
   1feb4:	00000073          	ecall
   1feb8:	00050413          	mv	s0,a0
   1febc:	00054c63          	bltz	a0,1fed4 <_lseek+0x3c>
   1fec0:	00813083          	ld	ra,8(sp)
   1fec4:	00040513          	mv	a0,s0
   1fec8:	00013403          	ld	s0,0(sp)
   1fecc:	01010113          	addi	sp,sp,16
   1fed0:	00008067          	ret
   1fed4:	4080043b          	negw	s0,s0
   1fed8:	1bc000ef          	jal	ra,20094 <__errno>
   1fedc:	00852023          	sw	s0,0(a0)
   1fee0:	fff00413          	li	s0,-1
   1fee4:	fddff06f          	j	1fec0 <_lseek+0x28>

000000000001fee8 <_read>:
   1fee8:	ff010113          	addi	sp,sp,-16
   1feec:	00113423          	sd	ra,8(sp)
   1fef0:	00813023          	sd	s0,0(sp)
   1fef4:	00000693          	li	a3,0
   1fef8:	00000713          	li	a4,0
   1fefc:	00000793          	li	a5,0
   1ff00:	03f00893          	li	a7,63
   1ff04:	00000073          	ecall
   1ff08:	00050413          	mv	s0,a0
   1ff0c:	00054c63          	bltz	a0,1ff24 <_read+0x3c>
   1ff10:	00813083          	ld	ra,8(sp)
   1ff14:	00040513          	mv	a0,s0
   1ff18:	00013403          	ld	s0,0(sp)
   1ff1c:	01010113          	addi	sp,sp,16
   1ff20:	00008067          	ret
   1ff24:	4080043b          	negw	s0,s0
   1ff28:	16c000ef          	jal	ra,20094 <__errno>
   1ff2c:	00852023          	sw	s0,0(a0)
   1ff30:	fff00413          	li	s0,-1
   1ff34:	fddff06f          	j	1ff10 <_read+0x28>

000000000001ff38 <_sbrk>:
   1ff38:	79818313          	addi	t1,gp,1944 # 24df8 <heap_end.0>
   1ff3c:	00033783          	ld	a5,0(t1)
   1ff40:	ff010113          	addi	sp,sp,-16
   1ff44:	00113423          	sd	ra,8(sp)
   1ff48:	00050813          	mv	a6,a0
   1ff4c:	02079863          	bnez	a5,1ff7c <_sbrk+0x44>
   1ff50:	00000513          	li	a0,0
   1ff54:	00000593          	li	a1,0
   1ff58:	00000613          	li	a2,0
   1ff5c:	00000693          	li	a3,0
   1ff60:	00000713          	li	a4,0
   1ff64:	0d600893          	li	a7,214
   1ff68:	00000073          	ecall
   1ff6c:	fff00713          	li	a4,-1
   1ff70:	00050793          	mv	a5,a0
   1ff74:	04e50463          	beq	a0,a4,1ffbc <_sbrk+0x84>
   1ff78:	00a33023          	sd	a0,0(t1)
   1ff7c:	00f80533          	add	a0,a6,a5
   1ff80:	00000593          	li	a1,0
   1ff84:	00000613          	li	a2,0
   1ff88:	00000693          	li	a3,0
   1ff8c:	00000713          	li	a4,0
   1ff90:	00000793          	li	a5,0
   1ff94:	0d600893          	li	a7,214
   1ff98:	00000073          	ecall
   1ff9c:	00033783          	ld	a5,0(t1)
   1ffa0:	00f80833          	add	a6,a6,a5
   1ffa4:	01051c63          	bne	a0,a6,1ffbc <_sbrk+0x84>
   1ffa8:	00813083          	ld	ra,8(sp)
   1ffac:	00a33023          	sd	a0,0(t1)
   1ffb0:	00078513          	mv	a0,a5
   1ffb4:	01010113          	addi	sp,sp,16
   1ffb8:	00008067          	ret
   1ffbc:	0d8000ef          	jal	ra,20094 <__errno>
   1ffc0:	00813083          	ld	ra,8(sp)
   1ffc4:	00c00793          	li	a5,12
   1ffc8:	00f52023          	sw	a5,0(a0)
   1ffcc:	fff00513          	li	a0,-1
   1ffd0:	01010113          	addi	sp,sp,16
   1ffd4:	00008067          	ret

000000000001ffd8 <_write>:
   1ffd8:	ff010113          	addi	sp,sp,-16
   1ffdc:	00113423          	sd	ra,8(sp)
   1ffe0:	00813023          	sd	s0,0(sp)
   1ffe4:	00000693          	li	a3,0
   1ffe8:	00000713          	li	a4,0
   1ffec:	00000793          	li	a5,0
   1fff0:	04000893          	li	a7,64
   1fff4:	00000073          	ecall
   1fff8:	00050413          	mv	s0,a0
   1fffc:	00054c63          	bltz	a0,20014 <_write+0x3c>
   20000:	00813083          	ld	ra,8(sp)
   20004:	00040513          	mv	a0,s0
   20008:	00013403          	ld	s0,0(sp)
   2000c:	01010113          	addi	sp,sp,16
   20010:	00008067          	ret
   20014:	4080043b          	negw	s0,s0
   20018:	07c000ef          	jal	ra,20094 <__errno>
   2001c:	00852023          	sw	s0,0(a0)
   20020:	fff00413          	li	s0,-1
   20024:	fddff06f          	j	20000 <_write+0x28>

0000000000020028 <_conv_stat>:
   20028:	0005b383          	ld	t2,0(a1)
   2002c:	0085b283          	ld	t0,8(a1)
   20030:	0105af83          	lw	t6,16(a1)
   20034:	0145af03          	lw	t5,20(a1)
   20038:	0185ae83          	lw	t4,24(a1)
   2003c:	01c5ae03          	lw	t3,28(a1)
   20040:	0205b303          	ld	t1,32(a1)
   20044:	0305b883          	ld	a7,48(a1)
   20048:	0405b803          	ld	a6,64(a1)
   2004c:	0385a603          	lw	a2,56(a1)
   20050:	0485b683          	ld	a3,72(a1)
   20054:	0585b703          	ld	a4,88(a1)
   20058:	0685b783          	ld	a5,104(a1)
   2005c:	00751023          	sh	t2,0(a0)
   20060:	00551123          	sh	t0,2(a0)
   20064:	01f52223          	sw	t6,4(a0)
   20068:	01e51423          	sh	t5,8(a0)
   2006c:	01d51523          	sh	t4,10(a0)
   20070:	01c51623          	sh	t3,12(a0)
   20074:	00651723          	sh	t1,14(a0)
   20078:	01153823          	sd	a7,16(a0)
   2007c:	05053823          	sd	a6,80(a0)
   20080:	04c53423          	sd	a2,72(a0)
   20084:	00d53c23          	sd	a3,24(a0)
   20088:	02e53423          	sd	a4,40(a0)
   2008c:	02f53c23          	sd	a5,56(a0)
   20090:	00008067          	ret

0000000000020094 <__errno>:
   20094:	7581b503          	ld	a0,1880(gp) # 24db8 <_impure_ptr>
   20098:	00008067          	ret

000000000002009c <__eqtf2>:
   2009c:	00050813          	mv	a6,a0
   200a0:	002027f3          	frrm	a5
   200a4:	00008537          	lui	a0,0x8
   200a8:	0305d893          	srli	a7,a1,0x30
   200ac:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   200b0:	fff00793          	li	a5,-1
   200b4:	0107d793          	srli	a5,a5,0x10
   200b8:	0306d313          	srli	t1,a3,0x30
   200bc:	00a8f8b3          	and	a7,a7,a0
   200c0:	00f5f733          	and	a4,a1,a5
   200c4:	00a37333          	and	t1,t1,a0
   200c8:	00f6f7b3          	and	a5,a3,a5
   200cc:	03f5d593          	srli	a1,a1,0x3f
   200d0:	03f6d693          	srli	a3,a3,0x3f
   200d4:	00a89a63          	bne	a7,a0,200e8 <__eqtf2+0x4c>
   200d8:	01076533          	or	a0,a4,a6
   200dc:	02051663          	bnez	a0,20108 <__eqtf2+0x6c>
   200e0:	05131863          	bne	t1,a7,20130 <__eqtf2+0x94>
   200e4:	0080006f          	j	200ec <__eqtf2+0x50>
   200e8:	04a31863          	bne	t1,a0,20138 <__eqtf2+0x9c>
   200ec:	00c7e533          	or	a0,a5,a2
   200f0:	04050463          	beqz	a0,20138 <__eqtf2+0x9c>
   200f4:	000086b7          	lui	a3,0x8
   200f8:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   200fc:	02d89663          	bne	a7,a3,20128 <__eqtf2+0x8c>
   20100:	01076533          	or	a0,a4,a6
   20104:	02050263          	beqz	a0,20128 <__eqtf2+0x8c>
   20108:	02f75713          	srli	a4,a4,0x2f
   2010c:	04070c63          	beqz	a4,20164 <__eqtf2+0xc8>
   20110:	00008737          	lui	a4,0x8
   20114:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20118:	00100513          	li	a0,1
   2011c:	00e31c63          	bne	t1,a4,20134 <__eqtf2+0x98>
   20120:	00c7e633          	or	a2,a5,a2
   20124:	00060863          	beqz	a2,20134 <__eqtf2+0x98>
   20128:	02f7d793          	srli	a5,a5,0x2f
   2012c:	02078c63          	beqz	a5,20164 <__eqtf2+0xc8>
   20130:	00100513          	li	a0,1
   20134:	00008067          	ret
   20138:	00100513          	li	a0,1
   2013c:	fe689ce3          	bne	a7,t1,20134 <__eqtf2+0x98>
   20140:	fef71ae3          	bne	a4,a5,20134 <__eqtf2+0x98>
   20144:	fec818e3          	bne	a6,a2,20134 <__eqtf2+0x98>
   20148:	00d58a63          	beq	a1,a3,2015c <__eqtf2+0xc0>
   2014c:	fe0894e3          	bnez	a7,20134 <__eqtf2+0x98>
   20150:	01076533          	or	a0,a4,a6
   20154:	00a03533          	snez	a0,a0
   20158:	00008067          	ret
   2015c:	00000513          	li	a0,0
   20160:	00008067          	ret
   20164:	00186073          	csrsi	fflags,16
   20168:	fc9ff06f          	j	20130 <__eqtf2+0x94>

000000000002016c <__getf2>:
   2016c:	00050893          	mv	a7,a0
   20170:	002027f3          	frrm	a5
   20174:	00008337          	lui	t1,0x8
   20178:	fff30313          	addi	t1,t1,-1 # 7fff <register_fini-0x80b1>
   2017c:	fff00793          	li	a5,-1
   20180:	0305d813          	srli	a6,a1,0x30
   20184:	0107d793          	srli	a5,a5,0x10
   20188:	0306d713          	srli	a4,a3,0x30
   2018c:	00687833          	and	a6,a6,t1
   20190:	00f5fe33          	and	t3,a1,a5
   20194:	03f5d513          	srli	a0,a1,0x3f
   20198:	00f6f7b3          	and	a5,a3,a5
   2019c:	00677733          	and	a4,a4,t1
   201a0:	03f6d693          	srli	a3,a3,0x3f
   201a4:	00681c63          	bne	a6,t1,201bc <__getf2+0x50>
   201a8:	011e65b3          	or	a1,t3,a7
   201ac:	08058a63          	beqz	a1,20240 <__getf2+0xd4>
   201b0:	00186073          	csrsi	fflags,16
   201b4:	ffe00513          	li	a0,-2
   201b8:	00008067          	ret
   201bc:	00671663          	bne	a4,t1,201c8 <__getf2+0x5c>
   201c0:	00c7e5b3          	or	a1,a5,a2
   201c4:	fe0596e3          	bnez	a1,201b0 <__getf2+0x44>
   201c8:	06081e63          	bnez	a6,20244 <__getf2+0xd8>
   201cc:	011e65b3          	or	a1,t3,a7
   201d0:	0015b593          	seqz	a1,a1
   201d4:	04071663          	bnez	a4,20220 <__getf2+0xb4>
   201d8:	00c7e333          	or	t1,a5,a2
   201dc:	04031263          	bnez	t1,20220 <__getf2+0xb4>
   201e0:	02059863          	bnez	a1,20210 <__getf2+0xa4>
   201e4:	02050a63          	beqz	a0,20218 <__getf2+0xac>
   201e8:	fff00513          	li	a0,-1
   201ec:	00008067          	ret
   201f0:	fff00513          	li	a0,-1
   201f4:	04068063          	beqz	a3,20234 <__getf2+0xc8>
   201f8:	00068513          	mv	a0,a3
   201fc:	00008067          	ret
   20200:	ffc7e2e3          	bltu	a5,t3,201e4 <__getf2+0x78>
   20204:	02fe1a63          	bne	t3,a5,20238 <__getf2+0xcc>
   20208:	fd166ee3          	bltu	a2,a7,201e4 <__getf2+0x78>
   2020c:	02c8e263          	bltu	a7,a2,20230 <__getf2+0xc4>
   20210:	00000513          	li	a0,0
   20214:	00008067          	ret
   20218:	00100513          	li	a0,1
   2021c:	00008067          	ret
   20220:	fc0598e3          	bnez	a1,201f0 <__getf2+0x84>
   20224:	fcd510e3          	bne	a0,a3,201e4 <__getf2+0x78>
   20228:	fb074ee3          	blt	a4,a6,201e4 <__getf2+0x78>
   2022c:	fce85ae3          	bge	a6,a4,20200 <__getf2+0x94>
   20230:	fa050ce3          	beqz	a0,201e8 <__getf2+0x7c>
   20234:	00008067          	ret
   20238:	fefe6ce3          	bltu	t3,a5,20230 <__getf2+0xc4>
   2023c:	fd5ff06f          	j	20210 <__getf2+0xa4>
   20240:	f90700e3          	beq	a4,a6,201c0 <__getf2+0x54>
   20244:	fe0710e3          	bnez	a4,20224 <__getf2+0xb8>
   20248:	00000593          	li	a1,0
   2024c:	f8dff06f          	j	201d8 <__getf2+0x6c>

0000000000020250 <__letf2>:
   20250:	00050893          	mv	a7,a0
   20254:	002027f3          	frrm	a5
   20258:	00008337          	lui	t1,0x8
   2025c:	fff30313          	addi	t1,t1,-1 # 7fff <register_fini-0x80b1>
   20260:	fff00793          	li	a5,-1
   20264:	0305d813          	srli	a6,a1,0x30
   20268:	0107d793          	srli	a5,a5,0x10
   2026c:	0306d713          	srli	a4,a3,0x30
   20270:	00687833          	and	a6,a6,t1
   20274:	00f5fe33          	and	t3,a1,a5
   20278:	03f5d513          	srli	a0,a1,0x3f
   2027c:	00f6f7b3          	and	a5,a3,a5
   20280:	00677733          	and	a4,a4,t1
   20284:	03f6d693          	srli	a3,a3,0x3f
   20288:	00681c63          	bne	a6,t1,202a0 <__letf2+0x50>
   2028c:	011e65b3          	or	a1,t3,a7
   20290:	08058a63          	beqz	a1,20324 <__letf2+0xd4>
   20294:	00186073          	csrsi	fflags,16
   20298:	00200513          	li	a0,2
   2029c:	00008067          	ret
   202a0:	00671663          	bne	a4,t1,202ac <__letf2+0x5c>
   202a4:	00c7e5b3          	or	a1,a5,a2
   202a8:	fe0596e3          	bnez	a1,20294 <__letf2+0x44>
   202ac:	06081e63          	bnez	a6,20328 <__letf2+0xd8>
   202b0:	011e65b3          	or	a1,t3,a7
   202b4:	0015b593          	seqz	a1,a1
   202b8:	04071663          	bnez	a4,20304 <__letf2+0xb4>
   202bc:	00c7e333          	or	t1,a5,a2
   202c0:	04031263          	bnez	t1,20304 <__letf2+0xb4>
   202c4:	02059863          	bnez	a1,202f4 <__letf2+0xa4>
   202c8:	02050a63          	beqz	a0,202fc <__letf2+0xac>
   202cc:	fff00513          	li	a0,-1
   202d0:	00008067          	ret
   202d4:	fff00513          	li	a0,-1
   202d8:	04068063          	beqz	a3,20318 <__letf2+0xc8>
   202dc:	00068513          	mv	a0,a3
   202e0:	00008067          	ret
   202e4:	ffc7e2e3          	bltu	a5,t3,202c8 <__letf2+0x78>
   202e8:	02fe1a63          	bne	t3,a5,2031c <__letf2+0xcc>
   202ec:	fd166ee3          	bltu	a2,a7,202c8 <__letf2+0x78>
   202f0:	02c8e263          	bltu	a7,a2,20314 <__letf2+0xc4>
   202f4:	00000513          	li	a0,0
   202f8:	00008067          	ret
   202fc:	00100513          	li	a0,1
   20300:	00008067          	ret
   20304:	fc0598e3          	bnez	a1,202d4 <__letf2+0x84>
   20308:	fcd510e3          	bne	a0,a3,202c8 <__letf2+0x78>
   2030c:	fb074ee3          	blt	a4,a6,202c8 <__letf2+0x78>
   20310:	fce85ae3          	bge	a6,a4,202e4 <__letf2+0x94>
   20314:	fa050ce3          	beqz	a0,202cc <__letf2+0x7c>
   20318:	00008067          	ret
   2031c:	fefe6ce3          	bltu	t3,a5,20314 <__letf2+0xc4>
   20320:	fd5ff06f          	j	202f4 <__letf2+0xa4>
   20324:	f90700e3          	beq	a4,a6,202a4 <__letf2+0x54>
   20328:	fe0710e3          	bnez	a4,20308 <__letf2+0xb8>
   2032c:	00000593          	li	a1,0
   20330:	f8dff06f          	j	202bc <__letf2+0x6c>

0000000000020334 <__multf3>:
   20334:	f9010113          	addi	sp,sp,-112
   20338:	03513c23          	sd	s5,56(sp)
   2033c:	01913c23          	sd	s9,24(sp)
   20340:	06113423          	sd	ra,104(sp)
   20344:	06813023          	sd	s0,96(sp)
   20348:	04913c23          	sd	s1,88(sp)
   2034c:	05213823          	sd	s2,80(sp)
   20350:	05313423          	sd	s3,72(sp)
   20354:	05413023          	sd	s4,64(sp)
   20358:	03613823          	sd	s6,48(sp)
   2035c:	03713423          	sd	s7,40(sp)
   20360:	03813023          	sd	s8,32(sp)
   20364:	01a13823          	sd	s10,16(sp)
   20368:	01b13423          	sd	s11,8(sp)
   2036c:	00060c93          	mv	s9,a2
   20370:	00068a93          	mv	s5,a3
   20374:	00202973          	frrm	s2
   20378:	00008737          	lui	a4,0x8
   2037c:	0305da13          	srli	s4,a1,0x30
   20380:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20384:	01059b93          	slli	s7,a1,0x10
   20388:	00ea77b3          	and	a5,s4,a4
   2038c:	0009091b          	sext.w	s2,s2
   20390:	010bdb93          	srli	s7,s7,0x10
   20394:	03f5db13          	srli	s6,a1,0x3f
   20398:	04078263          	beqz	a5,203dc <__multf3+0xa8>
   2039c:	00050993          	mv	s3,a0
   203a0:	00078a1b          	sext.w	s4,a5
   203a4:	0ae78663          	beq	a5,a4,20450 <__multf3+0x11c>
   203a8:	003b9b93          	slli	s7,s7,0x3
   203ac:	03d55713          	srli	a4,a0,0x3d
   203b0:	01776733          	or	a4,a4,s7
   203b4:	ffffca37          	lui	s4,0xffffc
   203b8:	00100b93          	li	s7,1
   203bc:	033b9b93          	slli	s7,s7,0x33
   203c0:	001a0a13          	addi	s4,s4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd71a1>
   203c4:	01776bb3          	or	s7,a4,s7
   203c8:	00351993          	slli	s3,a0,0x3
   203cc:	01478a33          	add	s4,a5,s4
   203d0:	00000c13          	li	s8,0
   203d4:	00000493          	li	s1,0
   203d8:	0940006f          	j	2046c <__multf3+0x138>
   203dc:	00abe7b3          	or	a5,s7,a0
   203e0:	00050413          	mv	s0,a0
   203e4:	10078e63          	beqz	a5,20500 <__multf3+0x1cc>
   203e8:	040b8663          	beqz	s7,20434 <__multf3+0x100>
   203ec:	000b8513          	mv	a0,s7
   203f0:	1f5010ef          	jal	ra,21de4 <__clzdi2>
   203f4:	0005079b          	sext.w	a5,a0
   203f8:	ff178693          	addi	a3,a5,-15
   203fc:	03c00613          	li	a2,60
   20400:	0006871b          	sext.w	a4,a3
   20404:	02d64e63          	blt	a2,a3,20440 <__multf3+0x10c>
   20408:	03d00693          	li	a3,61
   2040c:	0037099b          	addiw	s3,a4,3
   20410:	40e6873b          	subw	a4,a3,a4
   20414:	013b9bb3          	sll	s7,s7,s3
   20418:	00e45733          	srl	a4,s0,a4
   2041c:	01776bb3          	or	s7,a4,s7
   20420:	013419b3          	sll	s3,s0,s3
   20424:	ffffca37          	lui	s4,0xffffc
   20428:	011a0a13          	addi	s4,s4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd71b1>
   2042c:	40fa0a33          	sub	s4,s4,a5
   20430:	fa1ff06f          	j	203d0 <__multf3+0x9c>
   20434:	1b1010ef          	jal	ra,21de4 <__clzdi2>
   20438:	0405079b          	addiw	a5,a0,64
   2043c:	fbdff06f          	j	203f8 <__multf3+0xc4>
   20440:	fc37071b          	addiw	a4,a4,-61
   20444:	00e41bb3          	sll	s7,s0,a4
   20448:	00000993          	li	s3,0
   2044c:	fd9ff06f          	j	20424 <__multf3+0xf0>
   20450:	00abe7b3          	or	a5,s7,a0
   20454:	0c078063          	beqz	a5,20514 <__multf3+0x1e0>
   20458:	02fbd793          	srli	a5,s7,0x2f
   2045c:	0017f793          	andi	a5,a5,1
   20460:	00300c13          	li	s8,3
   20464:	01000493          	li	s1,16
   20468:	f60796e3          	bnez	a5,203d4 <__multf3+0xa0>
   2046c:	000086b7          	lui	a3,0x8
   20470:	030ad713          	srli	a4,s5,0x30
   20474:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   20478:	010a9413          	slli	s0,s5,0x10
   2047c:	00d77533          	and	a0,a4,a3
   20480:	000c8793          	mv	a5,s9
   20484:	01045413          	srli	s0,s0,0x10
   20488:	03fada93          	srli	s5,s5,0x3f
   2048c:	08050c63          	beqz	a0,20524 <__multf3+0x1f0>
   20490:	0005071b          	sext.w	a4,a0
   20494:	10d50263          	beq	a0,a3,20598 <__multf3+0x264>
   20498:	00341413          	slli	s0,s0,0x3
   2049c:	03dcd713          	srli	a4,s9,0x3d
   204a0:	00876733          	or	a4,a4,s0
   204a4:	00100413          	li	s0,1
   204a8:	03341413          	slli	s0,s0,0x33
   204ac:	00876433          	or	s0,a4,s0
   204b0:	ffffc737          	lui	a4,0xffffc
   204b4:	00170713          	addi	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd71a1>
   204b8:	003c9793          	slli	a5,s9,0x3
   204bc:	00e50733          	add	a4,a0,a4
   204c0:	00000693          	li	a3,0
   204c4:	01470a33          	add	s4,a4,s4
   204c8:	002c1713          	slli	a4,s8,0x2
   204cc:	00d76733          	or	a4,a4,a3
   204d0:	fff70713          	addi	a4,a4,-1
   204d4:	00e00613          	li	a2,14
   204d8:	015b4833          	xor	a6,s6,s5
   204dc:	001a0313          	addi	t1,s4,1
   204e0:	18e66263          	bltu	a2,a4,20664 <__multf3+0x330>
   204e4:	00002617          	auipc	a2,0x2
   204e8:	63460613          	addi	a2,a2,1588 # 22b18 <zeroes.0+0x10>
   204ec:	00271713          	slli	a4,a4,0x2
   204f0:	00c70733          	add	a4,a4,a2
   204f4:	00072703          	lw	a4,0(a4)
   204f8:	00c70733          	add	a4,a4,a2
   204fc:	00070067          	jr	a4
   20500:	00000b93          	li	s7,0
   20504:	00000993          	li	s3,0
   20508:	00000a13          	li	s4,0
   2050c:	00100c13          	li	s8,1
   20510:	ec5ff06f          	j	203d4 <__multf3+0xa0>
   20514:	00000b93          	li	s7,0
   20518:	00000993          	li	s3,0
   2051c:	00200c13          	li	s8,2
   20520:	eb5ff06f          	j	203d4 <__multf3+0xa0>
   20524:	008ce7b3          	or	a5,s9,s0
   20528:	08078863          	beqz	a5,205b8 <__multf3+0x284>
   2052c:	04040663          	beqz	s0,20578 <__multf3+0x244>
   20530:	00040513          	mv	a0,s0
   20534:	0b1010ef          	jal	ra,21de4 <__clzdi2>
   20538:	0005051b          	sext.w	a0,a0
   2053c:	ff150793          	addi	a5,a0,-15
   20540:	03c00693          	li	a3,60
   20544:	0007871b          	sext.w	a4,a5
   20548:	04f6c063          	blt	a3,a5,20588 <__multf3+0x254>
   2054c:	03d00693          	li	a3,61
   20550:	0037079b          	addiw	a5,a4,3
   20554:	40e6873b          	subw	a4,a3,a4
   20558:	00f41433          	sll	s0,s0,a5
   2055c:	00ecd733          	srl	a4,s9,a4
   20560:	00876433          	or	s0,a4,s0
   20564:	00fc97b3          	sll	a5,s9,a5
   20568:	ffffc737          	lui	a4,0xffffc
   2056c:	01170713          	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd71b1>
   20570:	40a70733          	sub	a4,a4,a0
   20574:	f4dff06f          	j	204c0 <__multf3+0x18c>
   20578:	000c8513          	mv	a0,s9
   2057c:	069010ef          	jal	ra,21de4 <__clzdi2>
   20580:	0405051b          	addiw	a0,a0,64
   20584:	fb9ff06f          	j	2053c <__multf3+0x208>
   20588:	fc37071b          	addiw	a4,a4,-61
   2058c:	00ec9433          	sll	s0,s9,a4
   20590:	00000793          	li	a5,0
   20594:	fd5ff06f          	j	20568 <__multf3+0x234>
   20598:	008ce6b3          	or	a3,s9,s0
   2059c:	02068863          	beqz	a3,205cc <__multf3+0x298>
   205a0:	02f45693          	srli	a3,s0,0x2f
   205a4:	0016f693          	andi	a3,a3,1
   205a8:	02069a63          	bnez	a3,205dc <__multf3+0x2a8>
   205ac:	00300693          	li	a3,3
   205b0:	01000493          	li	s1,16
   205b4:	f11ff06f          	j	204c4 <__multf3+0x190>
   205b8:	00000413          	li	s0,0
   205bc:	00000793          	li	a5,0
   205c0:	00000713          	li	a4,0
   205c4:	00100693          	li	a3,1
   205c8:	efdff06f          	j	204c4 <__multf3+0x190>
   205cc:	00000413          	li	s0,0
   205d0:	00000793          	li	a5,0
   205d4:	00200693          	li	a3,2
   205d8:	eedff06f          	j	204c4 <__multf3+0x190>
   205dc:	00300693          	li	a3,3
   205e0:	ee5ff06f          	j	204c4 <__multf3+0x190>
   205e4:	00100413          	li	s0,1
   205e8:	00008737          	lui	a4,0x8
   205ec:	02f41413          	slli	s0,s0,0x2f
   205f0:	00000513          	li	a0,0
   205f4:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   205f8:	00000813          	li	a6,0
   205fc:	01000493          	li	s1,16
   20600:	03171713          	slli	a4,a4,0x31
   20604:	03175713          	srli	a4,a4,0x31
   20608:	00f81813          	slli	a6,a6,0xf
   2060c:	01041413          	slli	s0,s0,0x10
   20610:	00e86733          	or	a4,a6,a4
   20614:	03071713          	slli	a4,a4,0x30
   20618:	01045593          	srli	a1,s0,0x10
   2061c:	00e5e5b3          	or	a1,a1,a4
   20620:	00048463          	beqz	s1,20628 <__multf3+0x2f4>
   20624:	0014a073          	csrs	fflags,s1
   20628:	06813083          	ld	ra,104(sp)
   2062c:	06013403          	ld	s0,96(sp)
   20630:	05813483          	ld	s1,88(sp)
   20634:	05013903          	ld	s2,80(sp)
   20638:	04813983          	ld	s3,72(sp)
   2063c:	04013a03          	ld	s4,64(sp)
   20640:	03813a83          	ld	s5,56(sp)
   20644:	03013b03          	ld	s6,48(sp)
   20648:	02813b83          	ld	s7,40(sp)
   2064c:	02013c03          	ld	s8,32(sp)
   20650:	01813c83          	ld	s9,24(sp)
   20654:	01013d03          	ld	s10,16(sp)
   20658:	00813d83          	ld	s11,8(sp)
   2065c:	07010113          	addi	sp,sp,112
   20660:	00008067          	ret
   20664:	fff00713          	li	a4,-1
   20668:	013b8ab3          	add	s5,s7,s3
   2066c:	008783b3          	add	t2,a5,s0
   20670:	02075713          	srli	a4,a4,0x20
   20674:	013abfb3          	sltu	t6,s5,s3
   20678:	00f3b2b3          	sltu	t0,t2,a5
   2067c:	0209dc13          	srli	s8,s3,0x20
   20680:	0207df13          	srli	t5,a5,0x20
   20684:	00e9f9b3          	and	s3,s3,a4
   20688:	00e7f7b3          	and	a5,a5,a4
   2068c:	000f8e93          	mv	t4,t6
   20690:	00028b13          	mv	s6,t0
   20694:	00098513          	mv	a0,s3
   20698:	00078593          	mv	a1,a5
   2069c:	624010ef          	jal	ra,21cc0 <__muldi3>
   206a0:	00050893          	mv	a7,a0
   206a4:	000f0593          	mv	a1,t5
   206a8:	00098513          	mv	a0,s3
   206ac:	614010ef          	jal	ra,21cc0 <__muldi3>
   206b0:	00050e13          	mv	t3,a0
   206b4:	00078593          	mv	a1,a5
   206b8:	000c0513          	mv	a0,s8
   206bc:	604010ef          	jal	ra,21cc0 <__muldi3>
   206c0:	00050713          	mv	a4,a0
   206c4:	000f0593          	mv	a1,t5
   206c8:	000c0513          	mv	a0,s8
   206cc:	5f4010ef          	jal	ra,21cc0 <__muldi3>
   206d0:	0208d793          	srli	a5,a7,0x20
   206d4:	00ee0e33          	add	t3,t3,a4
   206d8:	01c787b3          	add	a5,a5,t3
   206dc:	00050f13          	mv	t5,a0
   206e0:	00e7f863          	bgeu	a5,a4,206f0 <__multf3+0x3bc>
   206e4:	00100713          	li	a4,1
   206e8:	02071713          	slli	a4,a4,0x20
   206ec:	00e50f33          	add	t5,a0,a4
   206f0:	fff00713          	li	a4,-1
   206f4:	02075713          	srli	a4,a4,0x20
   206f8:	00e7fe33          	and	t3,a5,a4
   206fc:	0207d513          	srli	a0,a5,0x20
   20700:	00e8f8b3          	and	a7,a7,a4
   20704:	00eafcb3          	and	s9,s5,a4
   20708:	00e3f9b3          	and	s3,t2,a4
   2070c:	020e1e13          	slli	t3,t3,0x20
   20710:	01e50f33          	add	t5,a0,t5
   20714:	011e0e33          	add	t3,t3,a7
   20718:	020ad793          	srli	a5,s5,0x20
   2071c:	0203dc13          	srli	s8,t2,0x20
   20720:	000c8513          	mv	a0,s9
   20724:	00098593          	mv	a1,s3
   20728:	598010ef          	jal	ra,21cc0 <__muldi3>
   2072c:	00050713          	mv	a4,a0
   20730:	000c0593          	mv	a1,s8
   20734:	000c8513          	mv	a0,s9
   20738:	588010ef          	jal	ra,21cc0 <__muldi3>
   2073c:	00050893          	mv	a7,a0
   20740:	00098593          	mv	a1,s3
   20744:	00078513          	mv	a0,a5
   20748:	578010ef          	jal	ra,21cc0 <__muldi3>
   2074c:	00050993          	mv	s3,a0
   20750:	000c0593          	mv	a1,s8
   20754:	00078513          	mv	a0,a5
   20758:	568010ef          	jal	ra,21cc0 <__muldi3>
   2075c:	02075793          	srli	a5,a4,0x20
   20760:	013888b3          	add	a7,a7,s3
   20764:	011787b3          	add	a5,a5,a7
   20768:	00050c93          	mv	s9,a0
   2076c:	0137f863          	bgeu	a5,s3,2077c <__multf3+0x448>
   20770:	00100693          	li	a3,1
   20774:	02069693          	slli	a3,a3,0x20
   20778:	00d50cb3          	add	s9,a0,a3
   2077c:	fff00593          	li	a1,-1
   20780:	0205d593          	srli	a1,a1,0x20
   20784:	00b7f8b3          	and	a7,a5,a1
   20788:	00b77733          	and	a4,a4,a1
   2078c:	0207dc13          	srli	s8,a5,0x20
   20790:	020bdd93          	srli	s11,s7,0x20
   20794:	02045793          	srli	a5,s0,0x20
   20798:	00bbfbb3          	and	s7,s7,a1
   2079c:	00b47433          	and	s0,s0,a1
   207a0:	02089893          	slli	a7,a7,0x20
   207a4:	00e888b3          	add	a7,a7,a4
   207a8:	000b8513          	mv	a0,s7
   207ac:	00040593          	mv	a1,s0
   207b0:	510010ef          	jal	ra,21cc0 <__muldi3>
   207b4:	00050d13          	mv	s10,a0
   207b8:	00078593          	mv	a1,a5
   207bc:	000b8513          	mv	a0,s7
   207c0:	500010ef          	jal	ra,21cc0 <__muldi3>
   207c4:	00050993          	mv	s3,a0
   207c8:	00040593          	mv	a1,s0
   207cc:	000d8513          	mv	a0,s11
   207d0:	4f0010ef          	jal	ra,21cc0 <__muldi3>
   207d4:	00050413          	mv	s0,a0
   207d8:	00078593          	mv	a1,a5
   207dc:	000d8513          	mv	a0,s11
   207e0:	4e0010ef          	jal	ra,21cc0 <__muldi3>
   207e4:	008985b3          	add	a1,s3,s0
   207e8:	020d5713          	srli	a4,s10,0x20
   207ec:	00e585b3          	add	a1,a1,a4
   207f0:	0085f863          	bgeu	a1,s0,20800 <__multf3+0x4cc>
   207f4:	00100793          	li	a5,1
   207f8:	02079793          	slli	a5,a5,0x20
   207fc:	00f50533          	add	a0,a0,a5
   20800:	0205d693          	srli	a3,a1,0x20
   20804:	01e888b3          	add	a7,a7,t5
   20808:	00a686b3          	add	a3,a3,a0
   2080c:	fff00513          	li	a0,-1
   20810:	02055513          	srli	a0,a0,0x20
   20814:	01e8b7b3          	sltu	a5,a7,t5
   20818:	00a5f733          	and	a4,a1,a0
   2081c:	00fc0c33          	add	s8,s8,a5
   20820:	416005b3          	neg	a1,s6
   20824:	019c0cb3          	add	s9,s8,s9
   20828:	41d00eb3          	neg	t4,t4
   2082c:	0155f5b3          	and	a1,a1,s5
   20830:	019585b3          	add	a1,a1,s9
   20834:	00fcb7b3          	sltu	a5,s9,a5
   20838:	007ef3b3          	and	t2,t4,t2
   2083c:	005ff633          	and	a2,t6,t0
   20840:	00b383b3          	add	t2,t2,a1
   20844:	00c78633          	add	a2,a5,a2
   20848:	0195bcb3          	sltu	s9,a1,s9
   2084c:	01960633          	add	a2,a2,s9
   20850:	00b3b5b3          	sltu	a1,t2,a1
   20854:	41c88eb3          	sub	t4,a7,t3
   20858:	00ad7d33          	and	s10,s10,a0
   2085c:	02071713          	slli	a4,a4,0x20
   20860:	01d8b533          	sltu	a0,a7,t4
   20864:	00b60633          	add	a2,a2,a1
   20868:	41e385b3          	sub	a1,t2,t5
   2086c:	00b3b7b3          	sltu	a5,t2,a1
   20870:	01a70733          	add	a4,a4,s10
   20874:	40a585b3          	sub	a1,a1,a0
   20878:	00000513          	li	a0,0
   2087c:	01d8f663          	bgeu	a7,t4,20888 <__multf3+0x554>
   20880:	407f03b3          	sub	t2,t5,t2
   20884:	0013b513          	seqz	a0,t2
   20888:	00f563b3          	or	t2,a0,a5
   2088c:	40ee8533          	sub	a0,t4,a4
   20890:	00d60633          	add	a2,a2,a3
   20894:	00aeb7b3          	sltu	a5,t4,a0
   20898:	40d586b3          	sub	a3,a1,a3
   2089c:	00d5b5b3          	sltu	a1,a1,a3
   208a0:	40f707b3          	sub	a5,a4,a5
   208a4:	00000893          	li	a7,0
   208a8:	00aef463          	bgeu	t4,a0,208b0 <__multf3+0x57c>
   208ac:	0016b893          	seqz	a7,a3
   208b0:	00f686b3          	add	a3,a3,a5
   208b4:	00e6b733          	sltu	a4,a3,a4
   208b8:	00c70733          	add	a4,a4,a2
   208bc:	40770733          	sub	a4,a4,t2
   208c0:	00b8e5b3          	or	a1,a7,a1
   208c4:	00d51793          	slli	a5,a0,0xd
   208c8:	40b70733          	sub	a4,a4,a1
   208cc:	00d71713          	slli	a4,a4,0xd
   208d0:	0336d413          	srli	s0,a3,0x33
   208d4:	01c7e7b3          	or	a5,a5,t3
   208d8:	00876433          	or	s0,a4,s0
   208dc:	00f037b3          	snez	a5,a5
   208e0:	03355513          	srli	a0,a0,0x33
   208e4:	03475713          	srli	a4,a4,0x34
   208e8:	00a7e7b3          	or	a5,a5,a0
   208ec:	00d69693          	slli	a3,a3,0xd
   208f0:	00177713          	andi	a4,a4,1
   208f4:	00d7e7b3          	or	a5,a5,a3
   208f8:	0a070463          	beqz	a4,209a0 <__multf3+0x66c>
   208fc:	0017d713          	srli	a4,a5,0x1
   20900:	0017f793          	andi	a5,a5,1
   20904:	03f41513          	slli	a0,s0,0x3f
   20908:	00f767b3          	or	a5,a4,a5
   2090c:	00a7e7b3          	or	a5,a5,a0
   20910:	00145413          	srli	s0,s0,0x1
   20914:	00004737          	lui	a4,0x4
   20918:	fff70713          	addi	a4,a4,-1 # 3fff <register_fini-0xc0b1>
   2091c:	00e30733          	add	a4,t1,a4
   20920:	12e05263          	blez	a4,20a44 <__multf3+0x710>
   20924:	0077f693          	andi	a3,a5,7
   20928:	08068863          	beqz	a3,209b8 <__multf3+0x684>
   2092c:	00200693          	li	a3,2
   20930:	0014e493          	ori	s1,s1,1
   20934:	08d90063          	beq	s2,a3,209b4 <__multf3+0x680>
   20938:	00300693          	li	a3,3
   2093c:	06d90663          	beq	s2,a3,209a8 <__multf3+0x674>
   20940:	06091c63          	bnez	s2,209b8 <__multf3+0x684>
   20944:	00f7f693          	andi	a3,a5,15
   20948:	00400613          	li	a2,4
   2094c:	06c68663          	beq	a3,a2,209b8 <__multf3+0x684>
   20950:	00478693          	addi	a3,a5,4
   20954:	00f6b7b3          	sltu	a5,a3,a5
   20958:	00f40433          	add	s0,s0,a5
   2095c:	00068793          	mv	a5,a3
   20960:	0580006f          	j	209b8 <__multf3+0x684>
   20964:	000b0813          	mv	a6,s6
   20968:	000b8413          	mv	s0,s7
   2096c:	00098793          	mv	a5,s3
   20970:	000c0693          	mv	a3,s8
   20974:	00200713          	li	a4,2
   20978:	2ae68063          	beq	a3,a4,20c18 <__multf3+0x8e4>
   2097c:	00300713          	li	a4,3
   20980:	2ae68663          	beq	a3,a4,20c2c <__multf3+0x8f8>
   20984:	00100713          	li	a4,1
   20988:	f8e696e3          	bne	a3,a4,20914 <__multf3+0x5e0>
   2098c:	00000413          	li	s0,0
   20990:	00000513          	li	a0,0
   20994:	2600006f          	j	20bf4 <__multf3+0x8c0>
   20998:	000a8813          	mv	a6,s5
   2099c:	fd9ff06f          	j	20974 <__multf3+0x640>
   209a0:	000a0313          	mv	t1,s4
   209a4:	f71ff06f          	j	20914 <__multf3+0x5e0>
   209a8:	00081863          	bnez	a6,209b8 <__multf3+0x684>
   209ac:	00878693          	addi	a3,a5,8
   209b0:	fa5ff06f          	j	20954 <__multf3+0x620>
   209b4:	fe081ce3          	bnez	a6,209ac <__multf3+0x678>
   209b8:	03445693          	srli	a3,s0,0x34
   209bc:	0016f693          	andi	a3,a3,1
   209c0:	00068e63          	beqz	a3,209dc <__multf3+0x6a8>
   209c4:	fff00713          	li	a4,-1
   209c8:	03471713          	slli	a4,a4,0x34
   209cc:	fff70713          	addi	a4,a4,-1
   209d0:	00e47433          	and	s0,s0,a4
   209d4:	00004737          	lui	a4,0x4
   209d8:	00e30733          	add	a4,t1,a4
   209dc:	000086b7          	lui	a3,0x8
   209e0:	ffe68613          	addi	a2,a3,-2 # 7ffe <register_fini-0x80b2>
   209e4:	00e64c63          	blt	a2,a4,209fc <__multf3+0x6c8>
   209e8:	03d41513          	slli	a0,s0,0x3d
   209ec:	0037d793          	srli	a5,a5,0x3
   209f0:	00f56533          	or	a0,a0,a5
   209f4:	00345413          	srli	s0,s0,0x3
   209f8:	c09ff06f          	j	20600 <__multf3+0x2cc>
   209fc:	00200793          	li	a5,2
   20a00:	02f90a63          	beq	s2,a5,20a34 <__multf3+0x700>
   20a04:	00300793          	li	a5,3
   20a08:	fff68713          	addi	a4,a3,-1
   20a0c:	00f90863          	beq	s2,a5,20a1c <__multf3+0x6e8>
   20a10:	00091863          	bnez	s2,20a20 <__multf3+0x6ec>
   20a14:	00000513          	li	a0,0
   20a18:	0100006f          	j	20a28 <__multf3+0x6f4>
   20a1c:	fe080ce3          	beqz	a6,20a14 <__multf3+0x6e0>
   20a20:	fff00513          	li	a0,-1
   20a24:	00060713          	mv	a4,a2
   20a28:	0054e493          	ori	s1,s1,5
   20a2c:	00050413          	mv	s0,a0
   20a30:	bd1ff06f          	j	20600 <__multf3+0x2cc>
   20a34:	fe0806e3          	beqz	a6,20a20 <__multf3+0x6ec>
   20a38:	00000513          	li	a0,0
   20a3c:	fff68713          	addi	a4,a3,-1
   20a40:	fe9ff06f          	j	20a28 <__multf3+0x6f4>
   20a44:	00100693          	li	a3,1
   20a48:	06071463          	bnez	a4,20ab0 <__multf3+0x77c>
   20a4c:	0077f613          	andi	a2,a5,7
   20a50:	00040693          	mv	a3,s0
   20a54:	04060863          	beqz	a2,20aa4 <__multf3+0x770>
   20a58:	00200613          	li	a2,2
   20a5c:	0014e493          	ori	s1,s1,1
   20a60:	04c90063          	beq	s2,a2,20aa0 <__multf3+0x76c>
   20a64:	00300613          	li	a2,3
   20a68:	02c90663          	beq	s2,a2,20a94 <__multf3+0x760>
   20a6c:	02091c63          	bnez	s2,20aa4 <__multf3+0x770>
   20a70:	00f7f613          	andi	a2,a5,15
   20a74:	00400593          	li	a1,4
   20a78:	02b60663          	beq	a2,a1,20aa4 <__multf3+0x770>
   20a7c:	ffc7b693          	sltiu	a3,a5,-4
   20a80:	0016c693          	xori	a3,a3,1
   20a84:	02069693          	slli	a3,a3,0x20
   20a88:	0206d693          	srli	a3,a3,0x20
   20a8c:	008686b3          	add	a3,a3,s0
   20a90:	0140006f          	j	20aa4 <__multf3+0x770>
   20a94:	00081863          	bnez	a6,20aa4 <__multf3+0x770>
   20a98:	ff87b693          	sltiu	a3,a5,-8
   20a9c:	fe5ff06f          	j	20a80 <__multf3+0x74c>
   20aa0:	fe081ce3          	bnez	a6,20a98 <__multf3+0x764>
   20aa4:	0346d693          	srli	a3,a3,0x34
   20aa8:	0016c693          	xori	a3,a3,1
   20aac:	0016f693          	andi	a3,a3,1
   20ab0:	00100593          	li	a1,1
   20ab4:	40e585b3          	sub	a1,a1,a4
   20ab8:	07400713          	li	a4,116
   20abc:	10b74263          	blt	a4,a1,20bc0 <__multf3+0x88c>
   20ac0:	03f00613          	li	a2,63
   20ac4:	0005871b          	sext.w	a4,a1
   20ac8:	06b64463          	blt	a2,a1,20b30 <__multf3+0x7fc>
   20acc:	04000613          	li	a2,64
   20ad0:	40e6063b          	subw	a2,a2,a4
   20ad4:	00c41533          	sll	a0,s0,a2
   20ad8:	00e7d5b3          	srl	a1,a5,a4
   20adc:	00c797b3          	sll	a5,a5,a2
   20ae0:	00b56533          	or	a0,a0,a1
   20ae4:	00f037b3          	snez	a5,a5
   20ae8:	00f56533          	or	a0,a0,a5
   20aec:	00e45433          	srl	s0,s0,a4
   20af0:	00757793          	andi	a5,a0,7
   20af4:	08078063          	beqz	a5,20b74 <__multf3+0x840>
   20af8:	00200793          	li	a5,2
   20afc:	0014e493          	ori	s1,s1,1
   20b00:	06f90863          	beq	s2,a5,20b70 <__multf3+0x83c>
   20b04:	00300793          	li	a5,3
   20b08:	04f90e63          	beq	s2,a5,20b64 <__multf3+0x830>
   20b0c:	06091463          	bnez	s2,20b74 <__multf3+0x840>
   20b10:	00f57793          	andi	a5,a0,15
   20b14:	00400713          	li	a4,4
   20b18:	04e78e63          	beq	a5,a4,20b74 <__multf3+0x840>
   20b1c:	00450793          	addi	a5,a0,4
   20b20:	00a7b533          	sltu	a0,a5,a0
   20b24:	00a40433          	add	s0,s0,a0
   20b28:	00078513          	mv	a0,a5
   20b2c:	0480006f          	j	20b74 <__multf3+0x840>
   20b30:	fc07051b          	addiw	a0,a4,-64
   20b34:	04000893          	li	a7,64
   20b38:	00a45533          	srl	a0,s0,a0
   20b3c:	00000613          	li	a2,0
   20b40:	01158863          	beq	a1,a7,20b50 <__multf3+0x81c>
   20b44:	08000613          	li	a2,128
   20b48:	40e6073b          	subw	a4,a2,a4
   20b4c:	00e41633          	sll	a2,s0,a4
   20b50:	00f667b3          	or	a5,a2,a5
   20b54:	00f037b3          	snez	a5,a5
   20b58:	00f56533          	or	a0,a0,a5
   20b5c:	00000413          	li	s0,0
   20b60:	f91ff06f          	j	20af0 <__multf3+0x7bc>
   20b64:	00081863          	bnez	a6,20b74 <__multf3+0x840>
   20b68:	00850793          	addi	a5,a0,8
   20b6c:	fb5ff06f          	j	20b20 <__multf3+0x7ec>
   20b70:	fe081ce3          	bnez	a6,20b68 <__multf3+0x834>
   20b74:	03345793          	srli	a5,s0,0x33
   20b78:	0017f793          	andi	a5,a5,1
   20b7c:	02078063          	beqz	a5,20b9c <__multf3+0x868>
   20b80:	0014e493          	ori	s1,s1,1
   20b84:	00000413          	li	s0,0
   20b88:	00000513          	li	a0,0
   20b8c:	00100713          	li	a4,1
   20b90:	a60688e3          	beqz	a3,20600 <__multf3+0x2cc>
   20b94:	0024e493          	ori	s1,s1,2
   20b98:	a69ff06f          	j	20600 <__multf3+0x2cc>
   20b9c:	03d41793          	slli	a5,s0,0x3d
   20ba0:	00355513          	srli	a0,a0,0x3
   20ba4:	00a7e533          	or	a0,a5,a0
   20ba8:	00345413          	srli	s0,s0,0x3
   20bac:	00000713          	li	a4,0
   20bb0:	a40688e3          	beqz	a3,20600 <__multf3+0x2cc>
   20bb4:	0014f793          	andi	a5,s1,1
   20bb8:	a40784e3          	beqz	a5,20600 <__multf3+0x2cc>
   20bbc:	fd9ff06f          	j	20b94 <__multf3+0x860>
   20bc0:	0087e533          	or	a0,a5,s0
   20bc4:	02050463          	beqz	a0,20bec <__multf3+0x8b8>
   20bc8:	00200793          	li	a5,2
   20bcc:	0014e493          	ori	s1,s1,1
   20bd0:	02f90e63          	beq	s2,a5,20c0c <__multf3+0x8d8>
   20bd4:	00300793          	li	a5,3
   20bd8:	02f90263          	beq	s2,a5,20bfc <__multf3+0x8c8>
   20bdc:	00100793          	li	a5,1
   20be0:	00091463          	bnez	s2,20be8 <__multf3+0x8b4>
   20be4:	00500793          	li	a5,5
   20be8:	0037d513          	srli	a0,a5,0x3
   20bec:	0024e493          	ori	s1,s1,2
   20bf0:	00000413          	li	s0,0
   20bf4:	00000713          	li	a4,0
   20bf8:	a09ff06f          	j	20600 <__multf3+0x2cc>
   20bfc:	00900793          	li	a5,9
   20c00:	fe0804e3          	beqz	a6,20be8 <__multf3+0x8b4>
   20c04:	00100793          	li	a5,1
   20c08:	fe1ff06f          	j	20be8 <__multf3+0x8b4>
   20c0c:	00900793          	li	a5,9
   20c10:	fc081ce3          	bnez	a6,20be8 <__multf3+0x8b4>
   20c14:	ff1ff06f          	j	20c04 <__multf3+0x8d0>
   20c18:	00008737          	lui	a4,0x8
   20c1c:	00000413          	li	s0,0
   20c20:	00000513          	li	a0,0
   20c24:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20c28:	9d9ff06f          	j	20600 <__multf3+0x2cc>
   20c2c:	00100413          	li	s0,1
   20c30:	00008737          	lui	a4,0x8
   20c34:	02f41413          	slli	s0,s0,0x2f
   20c38:	00000513          	li	a0,0
   20c3c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20c40:	00000813          	li	a6,0
   20c44:	9bdff06f          	j	20600 <__multf3+0x2cc>

0000000000020c48 <__subtf3>:
   20c48:	fd010113          	addi	sp,sp,-48
   20c4c:	02113423          	sd	ra,40(sp)
   20c50:	02813023          	sd	s0,32(sp)
   20c54:	00913c23          	sd	s1,24(sp)
   20c58:	01213823          	sd	s2,16(sp)
   20c5c:	01313423          	sd	s3,8(sp)
   20c60:	01413023          	sd	s4,0(sp)
   20c64:	00202473          	frrm	s0
   20c68:	fff00713          	li	a4,-1
   20c6c:	01075713          	srli	a4,a4,0x10
   20c70:	00008837          	lui	a6,0x8
   20c74:	0305d893          	srli	a7,a1,0x30
   20c78:	fff80813          	addi	a6,a6,-1 # 7fff <register_fini-0x80b1>
   20c7c:	0306de93          	srli	t4,a3,0x30
   20c80:	03f5d493          	srli	s1,a1,0x3f
   20c84:	03f6d313          	srli	t1,a3,0x3f
   20c88:	00e5f5b3          	and	a1,a1,a4
   20c8c:	00e6f6b3          	and	a3,a3,a4
   20c90:	00359593          	slli	a1,a1,0x3
   20c94:	03d55793          	srli	a5,a0,0x3d
   20c98:	03d65713          	srli	a4,a2,0x3d
   20c9c:	0108f8b3          	and	a7,a7,a6
   20ca0:	010efeb3          	and	t4,t4,a6
   20ca4:	00369693          	slli	a3,a3,0x3
   20ca8:	00b7e7b3          	or	a5,a5,a1
   20cac:	0004041b          	sext.w	s0,s0
   20cb0:	00088993          	mv	s3,a7
   20cb4:	00351513          	slli	a0,a0,0x3
   20cb8:	000e8593          	mv	a1,t4
   20cbc:	00d76733          	or	a4,a4,a3
   20cc0:	00361613          	slli	a2,a2,0x3
   20cc4:	010e9663          	bne	t4,a6,20cd0 <__subtf3+0x88>
   20cc8:	00c766b3          	or	a3,a4,a2
   20ccc:	00069463          	bnez	a3,20cd4 <__subtf3+0x8c>
   20cd0:	00134313          	xori	t1,t1,1
   20cd4:	41d886bb          	subw	a3,a7,t4
   20cd8:	00008e37          	lui	t3,0x8
   20cdc:	0006881b          	sext.w	a6,a3
   20ce0:	fffe0f13          	addi	t5,t3,-1 # 7fff <register_fini-0x80b1>
   20ce4:	4c931663          	bne	t1,s1,211b0 <__subtf3+0x568>
   20ce8:	13005c63          	blez	a6,20e20 <__subtf3+0x1d8>
   20cec:	0a0e9663          	bnez	t4,20d98 <__subtf3+0x150>
   20cf0:	00c765b3          	or	a1,a4,a2
   20cf4:	00059a63          	bnez	a1,20d08 <__subtf3+0xc0>
   20cf8:	09e88063          	beq	a7,t5,20d78 <__subtf3+0x130>
   20cfc:	00078713          	mv	a4,a5
   20d00:	00088593          	mv	a1,a7
   20d04:	1010006f          	j	21604 <__subtf3+0x9bc>
   20d08:	fff6881b          	addiw	a6,a3,-1
   20d0c:	06081463          	bnez	a6,20d74 <__subtf3+0x12c>
   20d10:	00a60633          	add	a2,a2,a0
   20d14:	00a63533          	sltu	a0,a2,a0
   20d18:	00f70733          	add	a4,a4,a5
   20d1c:	00a70733          	add	a4,a4,a0
   20d20:	00088593          	mv	a1,a7
   20d24:	00060513          	mv	a0,a2
   20d28:	03375793          	srli	a5,a4,0x33
   20d2c:	0017f793          	andi	a5,a5,1
   20d30:	0c078ae3          	beqz	a5,21604 <__subtf3+0x9bc>
   20d34:	000086b7          	lui	a3,0x8
   20d38:	00158593          	addi	a1,a1,1
   20d3c:	fff68793          	addi	a5,a3,-1 # 7fff <register_fini-0x80b1>
   20d40:	42f58e63          	beq	a1,a5,2117c <__subtf3+0x534>
   20d44:	fff00793          	li	a5,-1
   20d48:	03379793          	slli	a5,a5,0x33
   20d4c:	fff78793          	addi	a5,a5,-1
   20d50:	00f777b3          	and	a5,a4,a5
   20d54:	00155713          	srli	a4,a0,0x1
   20d58:	00157513          	andi	a0,a0,1
   20d5c:	00a76533          	or	a0,a4,a0
   20d60:	03f79713          	slli	a4,a5,0x3f
   20d64:	00a76533          	or	a0,a4,a0
   20d68:	0017d793          	srli	a5,a5,0x1
   20d6c:	00000813          	li	a6,0
   20d70:	3900006f          	j	21100 <__subtf3+0x4b8>
   20d74:	03e89a63          	bne	a7,t5,20da8 <__subtf3+0x160>
   20d78:	00a7e733          	or	a4,a5,a0
   20d7c:	100704e3          	beqz	a4,21684 <__subtf3+0xa3c>
   20d80:	0327d713          	srli	a4,a5,0x32
   20d84:	00177713          	andi	a4,a4,1
   20d88:	00088593          	mv	a1,a7
   20d8c:	00000813          	li	a6,0
   20d90:	36071863          	bnez	a4,21100 <__subtf3+0x4b8>
   20d94:	0c00006f          	j	20e54 <__subtf3+0x20c>
   20d98:	ffe880e3          	beq	a7,t5,20d78 <__subtf3+0x130>
   20d9c:	00100693          	li	a3,1
   20da0:	03369693          	slli	a3,a3,0x33
   20da4:	00d76733          	or	a4,a4,a3
   20da8:	07400693          	li	a3,116
   20dac:	0706c463          	blt	a3,a6,20e14 <__subtf3+0x1cc>
   20db0:	03f00693          	li	a3,63
   20db4:	0306c663          	blt	a3,a6,20de0 <__subtf3+0x198>
   20db8:	04000593          	li	a1,64
   20dbc:	410585bb          	subw	a1,a1,a6
   20dc0:	00b716b3          	sll	a3,a4,a1
   20dc4:	01065333          	srl	t1,a2,a6
   20dc8:	00b61633          	sll	a2,a2,a1
   20dcc:	0066e6b3          	or	a3,a3,t1
   20dd0:	00c03633          	snez	a2,a2
   20dd4:	00c6e633          	or	a2,a3,a2
   20dd8:	01075733          	srl	a4,a4,a6
   20ddc:	f35ff06f          	j	20d10 <__subtf3+0xc8>
   20de0:	fc08069b          	addiw	a3,a6,-64
   20de4:	04000313          	li	t1,64
   20de8:	00d756b3          	srl	a3,a4,a3
   20dec:	00000593          	li	a1,0
   20df0:	00680863          	beq	a6,t1,20e00 <__subtf3+0x1b8>
   20df4:	08000593          	li	a1,128
   20df8:	410585bb          	subw	a1,a1,a6
   20dfc:	00b715b3          	sll	a1,a4,a1
   20e00:	00c5e633          	or	a2,a1,a2
   20e04:	00c03633          	snez	a2,a2
   20e08:	00c6e633          	or	a2,a3,a2
   20e0c:	00000713          	li	a4,0
   20e10:	f01ff06f          	j	20d10 <__subtf3+0xc8>
   20e14:	00c76633          	or	a2,a4,a2
   20e18:	00c03633          	snez	a2,a2
   20e1c:	ff1ff06f          	j	20e0c <__subtf3+0x1c4>
   20e20:	12080063          	beqz	a6,20f40 <__subtf3+0x2f8>
   20e24:	08089063          	bnez	a7,20ea4 <__subtf3+0x25c>
   20e28:	00a7e833          	or	a6,a5,a0
   20e2c:	02081863          	bnez	a6,20e5c <__subtf3+0x214>
   20e30:	00060513          	mv	a0,a2
   20e34:	7dee9863          	bne	t4,t5,21604 <__subtf3+0x9bc>
   20e38:	00c76533          	or	a0,a4,a2
   20e3c:	020508e3          	beqz	a0,2166c <__subtf3+0xa24>
   20e40:	03275793          	srli	a5,a4,0x32
   20e44:	0017f793          	andi	a5,a5,1
   20e48:	020798e3          	bnez	a5,21678 <__subtf3+0xa30>
   20e4c:	00070793          	mv	a5,a4
   20e50:	00060513          	mv	a0,a2
   20e54:	01000693          	li	a3,16
   20e58:	1440006f          	j	20f9c <__subtf3+0x354>
   20e5c:	fff6c693          	not	a3,a3
   20e60:	0006869b          	sext.w	a3,a3
   20e64:	00069c63          	bnez	a3,20e7c <__subtf3+0x234>
   20e68:	00c50533          	add	a0,a0,a2
   20e6c:	00e78733          	add	a4,a5,a4
   20e70:	00c53633          	sltu	a2,a0,a2
   20e74:	00c70733          	add	a4,a4,a2
   20e78:	eb1ff06f          	j	20d28 <__subtf3+0xe0>
   20e7c:	03ee9e63          	bne	t4,t5,20eb8 <__subtf3+0x270>
   20e80:	00c76533          	or	a0,a4,a2
   20e84:	7e050463          	beqz	a0,2166c <__subtf3+0xa24>
   20e88:	03275793          	srli	a5,a4,0x32
   20e8c:	0017f793          	andi	a5,a5,1
   20e90:	7e079463          	bnez	a5,21678 <__subtf3+0xa30>
   20e94:	00070793          	mv	a5,a4
   20e98:	00060513          	mv	a0,a2
   20e9c:	00000813          	li	a6,0
   20ea0:	fb5ff06f          	j	20e54 <__subtf3+0x20c>
   20ea4:	fdee8ee3          	beq	t4,t5,20e80 <__subtf3+0x238>
   20ea8:	00100813          	li	a6,1
   20eac:	03381813          	slli	a6,a6,0x33
   20eb0:	40d006bb          	negw	a3,a3
   20eb4:	0107e7b3          	or	a5,a5,a6
   20eb8:	07400813          	li	a6,116
   20ebc:	06d84c63          	blt	a6,a3,20f34 <__subtf3+0x2ec>
   20ec0:	03f00813          	li	a6,63
   20ec4:	02d84e63          	blt	a6,a3,20f00 <__subtf3+0x2b8>
   20ec8:	04000893          	li	a7,64
   20ecc:	40d888bb          	subw	a7,a7,a3
   20ed0:	00d55333          	srl	t1,a0,a3
   20ed4:	01179833          	sll	a6,a5,a7
   20ed8:	01151533          	sll	a0,a0,a7
   20edc:	00686833          	or	a6,a6,t1
   20ee0:	00a03533          	snez	a0,a0
   20ee4:	00a86533          	or	a0,a6,a0
   20ee8:	00d7d6b3          	srl	a3,a5,a3
   20eec:	00c50533          	add	a0,a0,a2
   20ef0:	00e686b3          	add	a3,a3,a4
   20ef4:	00c53633          	sltu	a2,a0,a2
   20ef8:	00c68733          	add	a4,a3,a2
   20efc:	e2dff06f          	j	20d28 <__subtf3+0xe0>
   20f00:	fc06881b          	addiw	a6,a3,-64
   20f04:	04000313          	li	t1,64
   20f08:	0107d833          	srl	a6,a5,a6
   20f0c:	00000893          	li	a7,0
   20f10:	00668863          	beq	a3,t1,20f20 <__subtf3+0x2d8>
   20f14:	08000893          	li	a7,128
   20f18:	40d886bb          	subw	a3,a7,a3
   20f1c:	00d798b3          	sll	a7,a5,a3
   20f20:	00a8e533          	or	a0,a7,a0
   20f24:	00a03533          	snez	a0,a0
   20f28:	00a86533          	or	a0,a6,a0
   20f2c:	00000693          	li	a3,0
   20f30:	fbdff06f          	j	20eec <__subtf3+0x2a4>
   20f34:	00a7e533          	or	a0,a5,a0
   20f38:	00a03533          	snez	a0,a0
   20f3c:	ff1ff06f          	j	20f2c <__subtf3+0x2e4>
   20f40:	00188593          	addi	a1,a7,1
   20f44:	ffee0693          	addi	a3,t3,-2
   20f48:	00d5f333          	and	t1,a1,a3
   20f4c:	18031863          	bnez	t1,210dc <__subtf3+0x494>
   20f50:	00a7e5b3          	or	a1,a5,a0
   20f54:	06089263          	bnez	a7,20fb8 <__subtf3+0x370>
   20f58:	6c058263          	beqz	a1,2161c <__subtf3+0x9d4>
   20f5c:	00c766b3          	or	a3,a4,a2
   20f60:	48068263          	beqz	a3,213e4 <__subtf3+0x79c>
   20f64:	00c50633          	add	a2,a0,a2
   20f68:	00e787b3          	add	a5,a5,a4
   20f6c:	00a63533          	sltu	a0,a2,a0
   20f70:	00a787b3          	add	a5,a5,a0
   20f74:	0337d713          	srli	a4,a5,0x33
   20f78:	00177713          	andi	a4,a4,1
   20f7c:	6a070263          	beqz	a4,21620 <__subtf3+0x9d8>
   20f80:	fff00713          	li	a4,-1
   20f84:	03371713          	slli	a4,a4,0x33
   20f88:	fff70713          	addi	a4,a4,-1
   20f8c:	00e7f7b3          	and	a5,a5,a4
   20f90:	00060513          	mv	a0,a2
   20f94:	00000693          	li	a3,0
   20f98:	00100593          	li	a1,1
   20f9c:	00757713          	andi	a4,a0,7
   20fa0:	1a071263          	bnez	a4,21144 <__subtf3+0x4fc>
   20fa4:	08080663          	beqz	a6,21030 <__subtf3+0x3e8>
   20fa8:	0016f713          	andi	a4,a3,1
   20fac:	08070263          	beqz	a4,21030 <__subtf3+0x3e8>
   20fb0:	0026e693          	ori	a3,a3,2
   20fb4:	07c0006f          	j	21030 <__subtf3+0x3e8>
   20fb8:	03e89c63          	bne	a7,t5,20ff0 <__subtf3+0x3a8>
   20fbc:	78058063          	beqz	a1,2173c <__subtf3+0xaf4>
   20fc0:	0327d693          	srli	a3,a5,0x32
   20fc4:	0016f693          	andi	a3,a3,1
   20fc8:	0016b693          	seqz	a3,a3
   20fcc:	00469693          	slli	a3,a3,0x4
   20fd0:	051e9063          	bne	t4,a7,21010 <__subtf3+0x3c8>
   20fd4:	00c768b3          	or	a7,a4,a2
   20fd8:	02088063          	beqz	a7,20ff8 <__subtf3+0x3b0>
   20fdc:	03275893          	srli	a7,a4,0x32
   20fe0:	0018f893          	andi	a7,a7,1
   20fe4:	00089a63          	bnez	a7,20ff8 <__subtf3+0x3b0>
   20fe8:	01000693          	li	a3,16
   20fec:	00c0006f          	j	20ff8 <__subtf3+0x3b0>
   20ff0:	00000693          	li	a3,0
   20ff4:	ffee80e3          	beq	t4,t5,20fd4 <__subtf3+0x38c>
   20ff8:	00059c63          	bnez	a1,21010 <__subtf3+0x3c8>
   20ffc:	00070793          	mv	a5,a4
   21000:	00060513          	mv	a0,a2
   21004:	000085b7          	lui	a1,0x8
   21008:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   2100c:	f91ff06f          	j	20f9c <__subtf3+0x354>
   21010:	00c76633          	or	a2,a4,a2
   21014:	fe0608e3          	beqz	a2,21004 <__subtf3+0x3bc>
   21018:	00100793          	li	a5,1
   2101c:	000085b7          	lui	a1,0x8
   21020:	00000493          	li	s1,0
   21024:	03279793          	slli	a5,a5,0x32
   21028:	00000513          	li	a0,0
   2102c:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   21030:	0337d713          	srli	a4,a5,0x33
   21034:	00177713          	andi	a4,a4,1
   21038:	02070263          	beqz	a4,2105c <__subtf3+0x414>
   2103c:	00008737          	lui	a4,0x8
   21040:	00158593          	addi	a1,a1,1
   21044:	fff70613          	addi	a2,a4,-1 # 7fff <register_fini-0x80b1>
   21048:	6ac58863          	beq	a1,a2,216f8 <__subtf3+0xab0>
   2104c:	fff00713          	li	a4,-1
   21050:	03371713          	slli	a4,a4,0x33
   21054:	fff70713          	addi	a4,a4,-1
   21058:	00e7f7b3          	and	a5,a5,a4
   2105c:	00355713          	srli	a4,a0,0x3
   21060:	03d79513          	slli	a0,a5,0x3d
   21064:	00e56533          	or	a0,a0,a4
   21068:	00008737          	lui	a4,0x8
   2106c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   21070:	0037d793          	srli	a5,a5,0x3
   21074:	02e59063          	bne	a1,a4,21094 <__subtf3+0x44c>
   21078:	00f56533          	or	a0,a0,a5
   2107c:	00000793          	li	a5,0
   21080:	00050a63          	beqz	a0,21094 <__subtf3+0x44c>
   21084:	00100793          	li	a5,1
   21088:	02f79793          	slli	a5,a5,0x2f
   2108c:	00000513          	li	a0,0
   21090:	00000493          	li	s1,0
   21094:	03159593          	slli	a1,a1,0x31
   21098:	00f4949b          	slliw	s1,s1,0xf
   2109c:	0315d593          	srli	a1,a1,0x31
   210a0:	0095e5b3          	or	a1,a1,s1
   210a4:	01079793          	slli	a5,a5,0x10
   210a8:	03059493          	slli	s1,a1,0x30
   210ac:	0107d593          	srli	a1,a5,0x10
   210b0:	0095e5b3          	or	a1,a1,s1
   210b4:	00068463          	beqz	a3,210bc <__subtf3+0x474>
   210b8:	0016a073          	csrs	fflags,a3
   210bc:	02813083          	ld	ra,40(sp)
   210c0:	02013403          	ld	s0,32(sp)
   210c4:	01813483          	ld	s1,24(sp)
   210c8:	01013903          	ld	s2,16(sp)
   210cc:	00813983          	ld	s3,8(sp)
   210d0:	00013a03          	ld	s4,0(sp)
   210d4:	03010113          	addi	sp,sp,48
   210d8:	00008067          	ret
   210dc:	03e58663          	beq	a1,t5,21108 <__subtf3+0x4c0>
   210e0:	00c50633          	add	a2,a0,a2
   210e4:	00a63533          	sltu	a0,a2,a0
   210e8:	00e787b3          	add	a5,a5,a4
   210ec:	00a787b3          	add	a5,a5,a0
   210f0:	03f79513          	slli	a0,a5,0x3f
   210f4:	00165613          	srli	a2,a2,0x1
   210f8:	00c56533          	or	a0,a0,a2
   210fc:	0017d793          	srli	a5,a5,0x1
   21100:	00000693          	li	a3,0
   21104:	e99ff06f          	j	20f9c <__subtf3+0x354>
   21108:	00040863          	beqz	s0,21118 <__subtf3+0x4d0>
   2110c:	00300793          	li	a5,3
   21110:	00f41c63          	bne	s0,a5,21128 <__subtf3+0x4e0>
   21114:	02049063          	bnez	s1,21134 <__subtf3+0x4ec>
   21118:	00000793          	li	a5,0
   2111c:	00000513          	li	a0,0
   21120:	00500693          	li	a3,5
   21124:	f0dff06f          	j	21030 <__subtf3+0x3e8>
   21128:	00200793          	li	a5,2
   2112c:	00f41463          	bne	s0,a5,21134 <__subtf3+0x4ec>
   21130:	fe0494e3          	bnez	s1,21118 <__subtf3+0x4d0>
   21134:	fff00793          	li	a5,-1
   21138:	fff00513          	li	a0,-1
   2113c:	00068593          	mv	a1,a3
   21140:	00500693          	li	a3,5
   21144:	00200713          	li	a4,2
   21148:	0016e693          	ori	a3,a3,1
   2114c:	5ae40063          	beq	s0,a4,216ec <__subtf3+0xaa4>
   21150:	00300713          	li	a4,3
   21154:	58e40663          	beq	s0,a4,216e0 <__subtf3+0xa98>
   21158:	58041c63          	bnez	s0,216f0 <__subtf3+0xaa8>
   2115c:	00f57713          	andi	a4,a0,15
   21160:	00400613          	li	a2,4
   21164:	58c70663          	beq	a4,a2,216f0 <__subtf3+0xaa8>
   21168:	00450713          	addi	a4,a0,4
   2116c:	00a73533          	sltu	a0,a4,a0
   21170:	00a787b3          	add	a5,a5,a0
   21174:	00070513          	mv	a0,a4
   21178:	5780006f          	j	216f0 <__subtf3+0xaa8>
   2117c:	f8040ee3          	beqz	s0,21118 <__subtf3+0x4d0>
   21180:	00300793          	li	a5,3
   21184:	00f41e63          	bne	s0,a5,211a0 <__subtf3+0x558>
   21188:	f80488e3          	beqz	s1,21118 <__subtf3+0x4d0>
   2118c:	fff00793          	li	a5,-1
   21190:	fff00513          	li	a0,-1
   21194:	ffe68593          	addi	a1,a3,-2
   21198:	00000813          	li	a6,0
   2119c:	fa5ff06f          	j	21140 <__subtf3+0x4f8>
   211a0:	00200793          	li	a5,2
   211a4:	fef414e3          	bne	s0,a5,2118c <__subtf3+0x544>
   211a8:	f60498e3          	bnez	s1,21118 <__subtf3+0x4d0>
   211ac:	fe1ff06f          	j	2118c <__subtf3+0x544>
   211b0:	0f005063          	blez	a6,21290 <__subtf3+0x648>
   211b4:	080e9463          	bnez	t4,2123c <__subtf3+0x5f4>
   211b8:	00c765b3          	or	a1,a4,a2
   211bc:	b2058ee3          	beqz	a1,20cf8 <__subtf3+0xb0>
   211c0:	fff6881b          	addiw	a6,a3,-1
   211c4:	02081e63          	bnez	a6,21200 <__subtf3+0x5b8>
   211c8:	40c50633          	sub	a2,a0,a2
   211cc:	00c53533          	sltu	a0,a0,a2
   211d0:	40e78733          	sub	a4,a5,a4
   211d4:	40a70733          	sub	a4,a4,a0
   211d8:	00088593          	mv	a1,a7
   211dc:	00060513          	mv	a0,a2
   211e0:	03375793          	srli	a5,a4,0x33
   211e4:	0017f793          	andi	a5,a5,1
   211e8:	40078e63          	beqz	a5,21604 <__subtf3+0x9bc>
   211ec:	00d71713          	slli	a4,a4,0xd
   211f0:	00d75913          	srli	s2,a4,0xd
   211f4:	00050a13          	mv	s4,a0
   211f8:	00058993          	mv	s3,a1
   211fc:	3240006f          	j	21520 <__subtf3+0x8d8>
   21200:	b7e88ce3          	beq	a7,t5,20d78 <__subtf3+0x130>
   21204:	07400693          	li	a3,116
   21208:	0706ce63          	blt	a3,a6,21284 <__subtf3+0x63c>
   2120c:	03f00693          	li	a3,63
   21210:	0506c063          	blt	a3,a6,21250 <__subtf3+0x608>
   21214:	04000593          	li	a1,64
   21218:	410585bb          	subw	a1,a1,a6
   2121c:	00b716b3          	sll	a3,a4,a1
   21220:	01065333          	srl	t1,a2,a6
   21224:	00b61633          	sll	a2,a2,a1
   21228:	0066e6b3          	or	a3,a3,t1
   2122c:	00c03633          	snez	a2,a2
   21230:	00c6e633          	or	a2,a3,a2
   21234:	01075733          	srl	a4,a4,a6
   21238:	f91ff06f          	j	211c8 <__subtf3+0x580>
   2123c:	b3e88ee3          	beq	a7,t5,20d78 <__subtf3+0x130>
   21240:	00100693          	li	a3,1
   21244:	03369693          	slli	a3,a3,0x33
   21248:	00d76733          	or	a4,a4,a3
   2124c:	fb9ff06f          	j	21204 <__subtf3+0x5bc>
   21250:	fc08069b          	addiw	a3,a6,-64
   21254:	04000313          	li	t1,64
   21258:	00d756b3          	srl	a3,a4,a3
   2125c:	00000593          	li	a1,0
   21260:	00680863          	beq	a6,t1,21270 <__subtf3+0x628>
   21264:	08000593          	li	a1,128
   21268:	410585bb          	subw	a1,a1,a6
   2126c:	00b715b3          	sll	a1,a4,a1
   21270:	00c5e633          	or	a2,a1,a2
   21274:	00c03633          	snez	a2,a2
   21278:	00c6e633          	or	a2,a3,a2
   2127c:	00000713          	li	a4,0
   21280:	f49ff06f          	j	211c8 <__subtf3+0x580>
   21284:	00c76633          	or	a2,a4,a2
   21288:	00c03633          	snez	a2,a2
   2128c:	ff1ff06f          	j	2127c <__subtf3+0x634>
   21290:	12080063          	beqz	a6,213b0 <__subtf3+0x768>
   21294:	08089063          	bnez	a7,21314 <__subtf3+0x6cc>
   21298:	00a7e833          	or	a6,a5,a0
   2129c:	02081663          	bnez	a6,212c8 <__subtf3+0x680>
   212a0:	37ee9863          	bne	t4,t5,21610 <__subtf3+0x9c8>
   212a4:	00c76533          	or	a0,a4,a2
   212a8:	3e050663          	beqz	a0,21694 <__subtf3+0xa4c>
   212ac:	03275793          	srli	a5,a4,0x32
   212b0:	0017f793          	andi	a5,a5,1
   212b4:	3e079663          	bnez	a5,216a0 <__subtf3+0xa58>
   212b8:	00070793          	mv	a5,a4
   212bc:	00060513          	mv	a0,a2
   212c0:	00030493          	mv	s1,t1
   212c4:	b91ff06f          	j	20e54 <__subtf3+0x20c>
   212c8:	fff6c693          	not	a3,a3
   212cc:	0006869b          	sext.w	a3,a3
   212d0:	00069e63          	bnez	a3,212ec <__subtf3+0x6a4>
   212d4:	40a60533          	sub	a0,a2,a0
   212d8:	40f70733          	sub	a4,a4,a5
   212dc:	00a63633          	sltu	a2,a2,a0
   212e0:	40c70733          	sub	a4,a4,a2
   212e4:	00030493          	mv	s1,t1
   212e8:	ef9ff06f          	j	211e0 <__subtf3+0x598>
   212ec:	03ee9e63          	bne	t4,t5,21328 <__subtf3+0x6e0>
   212f0:	00c76533          	or	a0,a4,a2
   212f4:	3a050063          	beqz	a0,21694 <__subtf3+0xa4c>
   212f8:	03275793          	srli	a5,a4,0x32
   212fc:	0017f793          	andi	a5,a5,1
   21300:	3a079063          	bnez	a5,216a0 <__subtf3+0xa58>
   21304:	00070793          	mv	a5,a4
   21308:	00060513          	mv	a0,a2
   2130c:	00030493          	mv	s1,t1
   21310:	b8dff06f          	j	20e9c <__subtf3+0x254>
   21314:	fdee8ee3          	beq	t4,t5,212f0 <__subtf3+0x6a8>
   21318:	00100813          	li	a6,1
   2131c:	03381813          	slli	a6,a6,0x33
   21320:	40d006bb          	negw	a3,a3
   21324:	0107e7b3          	or	a5,a5,a6
   21328:	07400813          	li	a6,116
   2132c:	06d84c63          	blt	a6,a3,213a4 <__subtf3+0x75c>
   21330:	03f00813          	li	a6,63
   21334:	02d84e63          	blt	a6,a3,21370 <__subtf3+0x728>
   21338:	04000893          	li	a7,64
   2133c:	40d888bb          	subw	a7,a7,a3
   21340:	01179833          	sll	a6,a5,a7
   21344:	00d55e33          	srl	t3,a0,a3
   21348:	01151533          	sll	a0,a0,a7
   2134c:	01c86833          	or	a6,a6,t3
   21350:	00a03533          	snez	a0,a0
   21354:	00a86533          	or	a0,a6,a0
   21358:	00d7d7b3          	srl	a5,a5,a3
   2135c:	40a60533          	sub	a0,a2,a0
   21360:	40f707b3          	sub	a5,a4,a5
   21364:	00a63633          	sltu	a2,a2,a0
   21368:	40c78733          	sub	a4,a5,a2
   2136c:	f79ff06f          	j	212e4 <__subtf3+0x69c>
   21370:	fc06881b          	addiw	a6,a3,-64
   21374:	04000e13          	li	t3,64
   21378:	0107d833          	srl	a6,a5,a6
   2137c:	00000893          	li	a7,0
   21380:	01c68863          	beq	a3,t3,21390 <__subtf3+0x748>
   21384:	08000893          	li	a7,128
   21388:	40d886bb          	subw	a3,a7,a3
   2138c:	00d798b3          	sll	a7,a5,a3
   21390:	00a8e533          	or	a0,a7,a0
   21394:	00a03533          	snez	a0,a0
   21398:	00a86533          	or	a0,a6,a0
   2139c:	00000793          	li	a5,0
   213a0:	fbdff06f          	j	2135c <__subtf3+0x714>
   213a4:	00a7e533          	or	a0,a5,a0
   213a8:	00a03533          	snez	a0,a0
   213ac:	ff1ff06f          	j	2139c <__subtf3+0x754>
   213b0:	00188593          	addi	a1,a7,1
   213b4:	ffee0693          	addi	a3,t3,-2
   213b8:	00d5f6b3          	and	a3,a1,a3
   213bc:	12069a63          	bnez	a3,214f0 <__subtf3+0x8a8>
   213c0:	00a7ee33          	or	t3,a5,a0
   213c4:	00c765b3          	or	a1,a4,a2
   213c8:	0c089663          	bnez	a7,21494 <__subtf3+0x84c>
   213cc:	060e1c63          	bnez	t3,21444 <__subtf3+0x7fc>
   213d0:	24059c63          	bnez	a1,21628 <__subtf3+0x9e0>
   213d4:	ffe40493          	addi	s1,s0,-2
   213d8:	0014b493          	seqz	s1,s1
   213dc:	00000793          	li	a5,0
   213e0:	00000513          	li	a0,0
   213e4:	00f56733          	or	a4,a0,a5
   213e8:	2e070463          	beqz	a4,216d0 <__subtf3+0xa88>
   213ec:	03f55713          	srli	a4,a0,0x3f
   213f0:	00179813          	slli	a6,a5,0x1
   213f4:	00e80833          	add	a6,a6,a4
   213f8:	00151713          	slli	a4,a0,0x1
   213fc:	00777613          	andi	a2,a4,7
   21400:	00000693          	li	a3,0
   21404:	02060663          	beqz	a2,21430 <__subtf3+0x7e8>
   21408:	00200693          	li	a3,2
   2140c:	24d40a63          	beq	s0,a3,21660 <__subtf3+0xa18>
   21410:	00300693          	li	a3,3
   21414:	22d40663          	beq	s0,a3,21640 <__subtf3+0x9f8>
   21418:	00100693          	li	a3,1
   2141c:	00041a63          	bnez	s0,21430 <__subtf3+0x7e8>
   21420:	00f77613          	andi	a2,a4,15
   21424:	00400593          	li	a1,4
   21428:	ffc73713          	sltiu	a4,a4,-4
   2142c:	22b61063          	bne	a2,a1,2164c <__subtf3+0xa04>
   21430:	03485813          	srli	a6,a6,0x34
   21434:	00184813          	xori	a6,a6,1
   21438:	00187813          	andi	a6,a6,1
   2143c:	00000593          	li	a1,0
   21440:	b5dff06f          	j	20f9c <__subtf3+0x354>
   21444:	fa0580e3          	beqz	a1,213e4 <__subtf3+0x79c>
   21448:	40c505b3          	sub	a1,a0,a2
   2144c:	00b53833          	sltu	a6,a0,a1
   21450:	40e786b3          	sub	a3,a5,a4
   21454:	410686b3          	sub	a3,a3,a6
   21458:	0336d813          	srli	a6,a3,0x33
   2145c:	00187813          	andi	a6,a6,1
   21460:	00080e63          	beqz	a6,2147c <__subtf3+0x834>
   21464:	40a60533          	sub	a0,a2,a0
   21468:	40f707b3          	sub	a5,a4,a5
   2146c:	00a63633          	sltu	a2,a2,a0
   21470:	40c787b3          	sub	a5,a5,a2
   21474:	00030493          	mv	s1,t1
   21478:	f6dff06f          	j	213e4 <__subtf3+0x79c>
   2147c:	00d5e533          	or	a0,a1,a3
   21480:	1a051a63          	bnez	a0,21634 <__subtf3+0x9ec>
   21484:	ffe40493          	addi	s1,s0,-2
   21488:	0014b493          	seqz	s1,s1
   2148c:	00000793          	li	a5,0
   21490:	f55ff06f          	j	213e4 <__subtf3+0x79c>
   21494:	03e89a63          	bne	a7,t5,214c8 <__subtf3+0x880>
   21498:	280e0c63          	beqz	t3,21730 <__subtf3+0xae8>
   2149c:	0327d693          	srli	a3,a5,0x32
   214a0:	0016f693          	andi	a3,a3,1
   214a4:	0016b693          	seqz	a3,a3
   214a8:	00469693          	slli	a3,a3,0x4
   214ac:	031e9e63          	bne	t4,a7,214e8 <__subtf3+0x8a0>
   214b0:	02058063          	beqz	a1,214d0 <__subtf3+0x888>
   214b4:	03275893          	srli	a7,a4,0x32
   214b8:	0018f893          	andi	a7,a7,1
   214bc:	00089a63          	bnez	a7,214d0 <__subtf3+0x888>
   214c0:	01000693          	li	a3,16
   214c4:	00c0006f          	j	214d0 <__subtf3+0x888>
   214c8:	00000693          	li	a3,0
   214cc:	ffee82e3          	beq	t4,t5,214b0 <__subtf3+0x868>
   214d0:	000e1c63          	bnez	t3,214e8 <__subtf3+0x8a0>
   214d4:	1c058e63          	beqz	a1,216b0 <__subtf3+0xa68>
   214d8:	00070793          	mv	a5,a4
   214dc:	00060513          	mv	a0,a2
   214e0:	00030493          	mv	s1,t1
   214e4:	b21ff06f          	j	21004 <__subtf3+0x3bc>
   214e8:	b0058ee3          	beqz	a1,21004 <__subtf3+0x3bc>
   214ec:	b2dff06f          	j	21018 <__subtf3+0x3d0>
   214f0:	40c50a33          	sub	s4,a0,a2
   214f4:	014536b3          	sltu	a3,a0,s4
   214f8:	40e78933          	sub	s2,a5,a4
   214fc:	40d90933          	sub	s2,s2,a3
   21500:	03395693          	srli	a3,s2,0x33
   21504:	0016f693          	andi	a3,a3,1
   21508:	08068663          	beqz	a3,21594 <__subtf3+0x94c>
   2150c:	40a60a33          	sub	s4,a2,a0
   21510:	40f70733          	sub	a4,a4,a5
   21514:	01463633          	sltu	a2,a2,s4
   21518:	40c70933          	sub	s2,a4,a2
   2151c:	00030493          	mv	s1,t1
   21520:	08090063          	beqz	s2,215a0 <__subtf3+0x958>
   21524:	00090513          	mv	a0,s2
   21528:	0bd000ef          	jal	ra,21de4 <__clzdi2>
   2152c:	0005051b          	sext.w	a0,a0
   21530:	ff45059b          	addiw	a1,a0,-12
   21534:	03f00793          	li	a5,63
   21538:	00058693          	mv	a3,a1
   2153c:	06b7ca63          	blt	a5,a1,215b0 <__subtf3+0x968>
   21540:	04000713          	li	a4,64
   21544:	40b7073b          	subw	a4,a4,a1
   21548:	00b91933          	sll	s2,s2,a1
   2154c:	00ea5733          	srl	a4,s4,a4
   21550:	01276733          	or	a4,a4,s2
   21554:	00ba1533          	sll	a0,s4,a1
   21558:	0935cc63          	blt	a1,s3,215f0 <__subtf3+0x9a8>
   2155c:	413686bb          	subw	a3,a3,s3
   21560:	0016879b          	addiw	a5,a3,1
   21564:	03f00613          	li	a2,63
   21568:	04f64c63          	blt	a2,a5,215c0 <__subtf3+0x978>
   2156c:	04000693          	li	a3,64
   21570:	40f686bb          	subw	a3,a3,a5
   21574:	00f555b3          	srl	a1,a0,a5
   21578:	00d71633          	sll	a2,a4,a3
   2157c:	00d51533          	sll	a0,a0,a3
   21580:	00b66633          	or	a2,a2,a1
   21584:	00a03533          	snez	a0,a0
   21588:	00a66533          	or	a0,a2,a0
   2158c:	00f757b3          	srl	a5,a4,a5
   21590:	e55ff06f          	j	213e4 <__subtf3+0x79c>
   21594:	012a6533          	or	a0,s4,s2
   21598:	f80514e3          	bnez	a0,21520 <__subtf3+0x8d8>
   2159c:	ee9ff06f          	j	21484 <__subtf3+0x83c>
   215a0:	000a0513          	mv	a0,s4
   215a4:	041000ef          	jal	ra,21de4 <__clzdi2>
   215a8:	0405051b          	addiw	a0,a0,64
   215ac:	f85ff06f          	j	21530 <__subtf3+0x8e8>
   215b0:	fb45071b          	addiw	a4,a0,-76
   215b4:	00ea1733          	sll	a4,s4,a4
   215b8:	00000513          	li	a0,0
   215bc:	f9dff06f          	j	21558 <__subtf3+0x910>
   215c0:	fc16869b          	addiw	a3,a3,-63
   215c4:	04000813          	li	a6,64
   215c8:	00d75633          	srl	a2,a4,a3
   215cc:	00000693          	li	a3,0
   215d0:	01078863          	beq	a5,a6,215e0 <__subtf3+0x998>
   215d4:	08000693          	li	a3,128
   215d8:	40f686bb          	subw	a3,a3,a5
   215dc:	00d716b3          	sll	a3,a4,a3
   215e0:	00d56533          	or	a0,a0,a3
   215e4:	00a03533          	snez	a0,a0
   215e8:	00a66533          	or	a0,a2,a0
   215ec:	ea1ff06f          	j	2148c <__subtf3+0x844>
   215f0:	fff00793          	li	a5,-1
   215f4:	03379793          	slli	a5,a5,0x33
   215f8:	fff78793          	addi	a5,a5,-1
   215fc:	40b985b3          	sub	a1,s3,a1
   21600:	00f77733          	and	a4,a4,a5
   21604:	00070793          	mv	a5,a4
   21608:	dc058ee3          	beqz	a1,213e4 <__subtf3+0x79c>
   2160c:	f60ff06f          	j	20d6c <__subtf3+0x124>
   21610:	00060513          	mv	a0,a2
   21614:	00030493          	mv	s1,t1
   21618:	fedff06f          	j	21604 <__subtf3+0x9bc>
   2161c:	00070793          	mv	a5,a4
   21620:	00060513          	mv	a0,a2
   21624:	dc1ff06f          	j	213e4 <__subtf3+0x79c>
   21628:	00070793          	mv	a5,a4
   2162c:	00060513          	mv	a0,a2
   21630:	e45ff06f          	j	21474 <__subtf3+0x82c>
   21634:	00068793          	mv	a5,a3
   21638:	00058513          	mv	a0,a1
   2163c:	da9ff06f          	j	213e4 <__subtf3+0x79c>
   21640:	00100693          	li	a3,1
   21644:	de0496e3          	bnez	s1,21430 <__subtf3+0x7e8>
   21648:	ff873713          	sltiu	a4,a4,-8
   2164c:	00174713          	xori	a4,a4,1
   21650:	02071713          	slli	a4,a4,0x20
   21654:	02075713          	srli	a4,a4,0x20
   21658:	00e80833          	add	a6,a6,a4
   2165c:	dd5ff06f          	j	21430 <__subtf3+0x7e8>
   21660:	00100693          	li	a3,1
   21664:	dc0486e3          	beqz	s1,21430 <__subtf3+0x7e8>
   21668:	fe1ff06f          	j	21648 <__subtf3+0xa00>
   2166c:	00000793          	li	a5,0
   21670:	00000693          	li	a3,0
   21674:	9bdff06f          	j	21030 <__subtf3+0x3e8>
   21678:	00070793          	mv	a5,a4
   2167c:	00060513          	mv	a0,a2
   21680:	eecff06f          	j	20d6c <__subtf3+0x124>
   21684:	00000793          	li	a5,0
   21688:	00000513          	li	a0,0
   2168c:	00088593          	mv	a1,a7
   21690:	fe1ff06f          	j	21670 <__subtf3+0xa28>
   21694:	00000793          	li	a5,0
   21698:	00030493          	mv	s1,t1
   2169c:	fd5ff06f          	j	21670 <__subtf3+0xa28>
   216a0:	00070793          	mv	a5,a4
   216a4:	00060513          	mv	a0,a2
   216a8:	00030493          	mv	s1,t1
   216ac:	ec0ff06f          	j	20d6c <__subtf3+0x124>
   216b0:	00100793          	li	a5,1
   216b4:	000085b7          	lui	a1,0x8
   216b8:	00000513          	li	a0,0
   216bc:	00000493          	li	s1,0
   216c0:	03279793          	slli	a5,a5,0x32
   216c4:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   216c8:	01000693          	li	a3,16
   216cc:	965ff06f          	j	21030 <__subtf3+0x3e8>
   216d0:	00000793          	li	a5,0
   216d4:	00000513          	li	a0,0
   216d8:	00000593          	li	a1,0
   216dc:	f95ff06f          	j	21670 <__subtf3+0xa28>
   216e0:	00049863          	bnez	s1,216f0 <__subtf3+0xaa8>
   216e4:	00850713          	addi	a4,a0,8
   216e8:	a85ff06f          	j	2116c <__subtf3+0x524>
   216ec:	fe049ce3          	bnez	s1,216e4 <__subtf3+0xa9c>
   216f0:	8c0810e3          	bnez	a6,20fb0 <__subtf3+0x368>
   216f4:	93dff06f          	j	21030 <__subtf3+0x3e8>
   216f8:	00000513          	li	a0,0
   216fc:	02040463          	beqz	s0,21724 <__subtf3+0xadc>
   21700:	00300793          	li	a5,3
   21704:	00f41a63          	bne	s0,a5,21718 <__subtf3+0xad0>
   21708:	00048e63          	beqz	s1,21724 <__subtf3+0xadc>
   2170c:	fff00513          	li	a0,-1
   21710:	ffe70593          	addi	a1,a4,-2
   21714:	0100006f          	j	21724 <__subtf3+0xadc>
   21718:	00200793          	li	a5,2
   2171c:	fef418e3          	bne	s0,a5,2170c <__subtf3+0xac4>
   21720:	fe0486e3          	beqz	s1,2170c <__subtf3+0xac4>
   21724:	0056e693          	ori	a3,a3,5
   21728:	00050793          	mv	a5,a0
   2172c:	931ff06f          	j	2105c <__subtf3+0x414>
   21730:	00000693          	li	a3,0
   21734:	db1e90e3          	bne	t4,a7,214d4 <__subtf3+0x88c>
   21738:	d79ff06f          	j	214b0 <__subtf3+0x868>
   2173c:	00000693          	li	a3,0
   21740:	8b1e9ee3          	bne	t4,a7,20ffc <__subtf3+0x3b4>
   21744:	891ff06f          	j	20fd4 <__subtf3+0x38c>

0000000000021748 <__fixtfsi>:
   21748:	00050613          	mv	a2,a0
   2174c:	002027f3          	frrm	a5
   21750:	00004837          	lui	a6,0x4
   21754:	00159693          	slli	a3,a1,0x1
   21758:	01059793          	slli	a5,a1,0x10
   2175c:	0316d693          	srli	a3,a3,0x31
   21760:	ffe80713          	addi	a4,a6,-2 # 3ffe <register_fini-0xc0b2>
   21764:	0107d793          	srli	a5,a5,0x10
   21768:	03f5d593          	srli	a1,a1,0x3f
   2176c:	00d74c63          	blt	a4,a3,21784 <__fixtfsi+0x3c>
   21770:	08069c63          	bnez	a3,21808 <__fixtfsi+0xc0>
   21774:	00f567b3          	or	a5,a0,a5
   21778:	00000513          	li	a0,0
   2177c:	04079063          	bnez	a5,217bc <__fixtfsi+0x74>
   21780:	00008067          	ret
   21784:	01d80713          	addi	a4,a6,29
   21788:	02d75e63          	bge	a4,a3,217c4 <__fixtfsi+0x7c>
   2178c:	80000737          	lui	a4,0x80000
   21790:	fff74713          	not	a4,a4
   21794:	00b7053b          	addw	a0,a4,a1
   21798:	06058c63          	beqz	a1,21810 <__fixtfsi+0xc8>
   2179c:	01e80813          	addi	a6,a6,30
   217a0:	01000713          	li	a4,16
   217a4:	07069863          	bne	a3,a6,21814 <__fixtfsi+0xcc>
   217a8:	0117d693          	srli	a3,a5,0x11
   217ac:	06069463          	bnez	a3,21814 <__fixtfsi+0xcc>
   217b0:	02f79793          	slli	a5,a5,0x2f
   217b4:	00c7e7b3          	or	a5,a5,a2
   217b8:	04078663          	beqz	a5,21804 <__fixtfsi+0xbc>
   217bc:	00100713          	li	a4,1
   217c0:	0540006f          	j	21814 <__fixtfsi+0xcc>
   217c4:	00100513          	li	a0,1
   217c8:	03051513          	slli	a0,a0,0x30
   217cc:	00a7e7b3          	or	a5,a5,a0
   217d0:	ffffc737          	lui	a4,0xffffc
   217d4:	00004537          	lui	a0,0x4
   217d8:	02f5051b          	addiw	a0,a0,47
   217dc:	0117071b          	addiw	a4,a4,17
   217e0:	00d7073b          	addw	a4,a4,a3
   217e4:	40d506bb          	subw	a3,a0,a3
   217e8:	00e79733          	sll	a4,a5,a4
   217ec:	00d7d7b3          	srl	a5,a5,a3
   217f0:	00c76733          	or	a4,a4,a2
   217f4:	0007851b          	sext.w	a0,a5
   217f8:	00058463          	beqz	a1,21800 <__fixtfsi+0xb8>
   217fc:	40a0053b          	negw	a0,a0
   21800:	fa071ee3          	bnez	a4,217bc <__fixtfsi+0x74>
   21804:	00008067          	ret
   21808:	00000513          	li	a0,0
   2180c:	fb1ff06f          	j	217bc <__fixtfsi+0x74>
   21810:	01000713          	li	a4,16
   21814:	00172073          	csrs	fflags,a4
   21818:	fedff06f          	j	21804 <__fixtfsi+0xbc>

000000000002181c <__floatsitf>:
   2181c:	fe010113          	addi	sp,sp,-32
   21820:	00113c23          	sd	ra,24(sp)
   21824:	00813823          	sd	s0,16(sp)
   21828:	00913423          	sd	s1,8(sp)
   2182c:	06050463          	beqz	a0,21894 <__floatsitf+0x78>
   21830:	0005079b          	sext.w	a5,a0
   21834:	03f55493          	srli	s1,a0,0x3f
   21838:	00055463          	bgez	a0,21840 <__floatsitf+0x24>
   2183c:	40f007bb          	negw	a5,a5
   21840:	02079413          	slli	s0,a5,0x20
   21844:	02045413          	srli	s0,s0,0x20
   21848:	00040513          	mv	a0,s0
   2184c:	598000ef          	jal	ra,21de4 <__clzdi2>
   21850:	000045b7          	lui	a1,0x4
   21854:	03e5859b          	addiw	a1,a1,62
   21858:	ff15079b          	addiw	a5,a0,-15
   2185c:	40a585bb          	subw	a1,a1,a0
   21860:	00f417b3          	sll	a5,s0,a5
   21864:	01813083          	ld	ra,24(sp)
   21868:	01013403          	ld	s0,16(sp)
   2186c:	00f4949b          	slliw	s1,s1,0xf
   21870:	0095e5b3          	or	a1,a1,s1
   21874:	01079793          	slli	a5,a5,0x10
   21878:	03059593          	slli	a1,a1,0x30
   2187c:	0107d793          	srli	a5,a5,0x10
   21880:	00813483          	ld	s1,8(sp)
   21884:	00000513          	li	a0,0
   21888:	00b7e5b3          	or	a1,a5,a1
   2188c:	02010113          	addi	sp,sp,32
   21890:	00008067          	ret
   21894:	00000793          	li	a5,0
   21898:	00000593          	li	a1,0
   2189c:	00000493          	li	s1,0
   218a0:	fc5ff06f          	j	21864 <__floatsitf+0x48>

00000000000218a4 <__extenddftf2>:
   218a4:	fe010113          	addi	sp,sp,-32
   218a8:	e20507d3          	fmv.x.d	a5,fa0
   218ac:	00113c23          	sd	ra,24(sp)
   218b0:	00813823          	sd	s0,16(sp)
   218b4:	00913423          	sd	s1,8(sp)
   218b8:	00202773          	frrm	a4
   218bc:	0347d513          	srli	a0,a5,0x34
   218c0:	7ff57513          	andi	a0,a0,2047
   218c4:	00c79413          	slli	s0,a5,0xc
   218c8:	03f7d493          	srli	s1,a5,0x3f
   218cc:	00150793          	addi	a5,a0,1 # 4001 <register_fini-0xc0af>
   218d0:	7fe7f793          	andi	a5,a5,2046
   218d4:	00c45413          	srli	s0,s0,0xc
   218d8:	02078063          	beqz	a5,218f8 <__extenddftf2+0x54>
   218dc:	000047b7          	lui	a5,0x4
   218e0:	c0078793          	addi	a5,a5,-1024 # 3c00 <register_fini-0xc4b0>
   218e4:	00445593          	srli	a1,s0,0x4
   218e8:	00f50533          	add	a0,a0,a5
   218ec:	03c41413          	slli	s0,s0,0x3c
   218f0:	00000793          	li	a5,0
   218f4:	0880006f          	j	2197c <__extenddftf2+0xd8>
   218f8:	04051a63          	bnez	a0,2194c <__extenddftf2+0xa8>
   218fc:	00000593          	li	a1,0
   21900:	fe0408e3          	beqz	s0,218f0 <__extenddftf2+0x4c>
   21904:	00040513          	mv	a0,s0
   21908:	4dc000ef          	jal	ra,21de4 <__clzdi2>
   2190c:	0005071b          	sext.w	a4,a0
   21910:	00e00793          	li	a5,14
   21914:	02e7c463          	blt	a5,a4,2193c <__extenddftf2+0x98>
   21918:	00f00593          	li	a1,15
   2191c:	40a585bb          	subw	a1,a1,a0
   21920:	0315079b          	addiw	a5,a0,49
   21924:	00b455b3          	srl	a1,s0,a1
   21928:	00f41433          	sll	s0,s0,a5
   2192c:	000047b7          	lui	a5,0x4
   21930:	c0c7879b          	addiw	a5,a5,-1012
   21934:	40a7853b          	subw	a0,a5,a0
   21938:	fb9ff06f          	j	218f0 <__extenddftf2+0x4c>
   2193c:	ff15059b          	addiw	a1,a0,-15
   21940:	00b415b3          	sll	a1,s0,a1
   21944:	00000413          	li	s0,0
   21948:	fe5ff06f          	j	2192c <__extenddftf2+0x88>
   2194c:	06040463          	beqz	s0,219b4 <__extenddftf2+0x110>
   21950:	00100713          	li	a4,1
   21954:	03371793          	slli	a5,a4,0x33
   21958:	00f477b3          	and	a5,s0,a5
   2195c:	00445593          	srli	a1,s0,0x4
   21960:	0017b793          	seqz	a5,a5
   21964:	02f71713          	slli	a4,a4,0x2f
   21968:	00008537          	lui	a0,0x8
   2196c:	00479793          	slli	a5,a5,0x4
   21970:	00e5e5b3          	or	a1,a1,a4
   21974:	03c41413          	slli	s0,s0,0x3c
   21978:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   2197c:	00f4949b          	slliw	s1,s1,0xf
   21980:	01059593          	slli	a1,a1,0x10
   21984:	00956533          	or	a0,a0,s1
   21988:	03051513          	slli	a0,a0,0x30
   2198c:	0105d593          	srli	a1,a1,0x10
   21990:	00a5e5b3          	or	a1,a1,a0
   21994:	00078463          	beqz	a5,2199c <__extenddftf2+0xf8>
   21998:	0017a073          	csrs	fflags,a5
   2199c:	01813083          	ld	ra,24(sp)
   219a0:	00040513          	mv	a0,s0
   219a4:	01013403          	ld	s0,16(sp)
   219a8:	00813483          	ld	s1,8(sp)
   219ac:	02010113          	addi	sp,sp,32
   219b0:	00008067          	ret
   219b4:	00008537          	lui	a0,0x8
   219b8:	00000593          	li	a1,0
   219bc:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   219c0:	f31ff06f          	j	218f0 <__extenddftf2+0x4c>

00000000000219c4 <__trunctfdf2>:
   219c4:	00202873          	frrm	a6
   219c8:	00008337          	lui	t1,0x8
   219cc:	0305d713          	srli	a4,a1,0x30
   219d0:	fff30e13          	addi	t3,t1,-1 # 7fff <register_fini-0x80b1>
   219d4:	01c77633          	and	a2,a4,t3
   219d8:	03f5d693          	srli	a3,a1,0x3f
   219dc:	00160793          	addi	a5,a2,1
   219e0:	01059593          	slli	a1,a1,0x10
   219e4:	ffe30313          	addi	t1,t1,-2
   219e8:	00d5d593          	srli	a1,a1,0xd
   219ec:	03d55713          	srli	a4,a0,0x3d
   219f0:	0067f333          	and	t1,a5,t1
   219f4:	0008081b          	sext.w	a6,a6
   219f8:	00b76733          	or	a4,a4,a1
   219fc:	00351e93          	slli	t4,a0,0x3
   21a00:	1e030e63          	beqz	t1,21bfc <__trunctfdf2+0x238>
   21a04:	ffffc7b7          	lui	a5,0xffffc
   21a08:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd75a0>
   21a0c:	00f60633          	add	a2,a2,a5
   21a10:	7fe00793          	li	a5,2046
   21a14:	0ec7d063          	bge	a5,a2,21af4 <__trunctfdf2+0x130>
   21a18:	06080063          	beqz	a6,21a78 <__trunctfdf2+0xb4>
   21a1c:	00300793          	li	a5,3
   21a20:	04f81663          	bne	a6,a5,21a6c <__trunctfdf2+0xa8>
   21a24:	04068a63          	beqz	a3,21a78 <__trunctfdf2+0xb4>
   21a28:	fff00793          	li	a5,-1
   21a2c:	7fe00613          	li	a2,2046
   21a30:	00000713          	li	a4,0
   21a34:	00500893          	li	a7,5
   21a38:	00200593          	li	a1,2
   21a3c:	0018e893          	ori	a7,a7,1
   21a40:	24b80263          	beq	a6,a1,21c84 <__trunctfdf2+0x2c0>
   21a44:	00300593          	li	a1,3
   21a48:	22b80863          	beq	a6,a1,21c78 <__trunctfdf2+0x2b4>
   21a4c:	00081a63          	bnez	a6,21a60 <__trunctfdf2+0x9c>
   21a50:	00f7f593          	andi	a1,a5,15
   21a54:	00400513          	li	a0,4
   21a58:	00a58463          	beq	a1,a0,21a60 <__trunctfdf2+0x9c>
   21a5c:	00478793          	addi	a5,a5,4
   21a60:	02070263          	beqz	a4,21a84 <__trunctfdf2+0xc0>
   21a64:	0028e893          	ori	a7,a7,2
   21a68:	01c0006f          	j	21a84 <__trunctfdf2+0xc0>
   21a6c:	00200793          	li	a5,2
   21a70:	faf81ce3          	bne	a6,a5,21a28 <__trunctfdf2+0x64>
   21a74:	fa068ae3          	beqz	a3,21a28 <__trunctfdf2+0x64>
   21a78:	00000793          	li	a5,0
   21a7c:	7ff00613          	li	a2,2047
   21a80:	00500893          	li	a7,5
   21a84:	0377d713          	srli	a4,a5,0x37
   21a88:	00177713          	andi	a4,a4,1
   21a8c:	02070063          	beqz	a4,21aac <__trunctfdf2+0xe8>
   21a90:	00160613          	addi	a2,a2,1
   21a94:	7ff00713          	li	a4,2047
   21a98:	1ee60a63          	beq	a2,a4,21c8c <__trunctfdf2+0x2c8>
   21a9c:	fff00593          	li	a1,-1
   21aa0:	03759593          	slli	a1,a1,0x37
   21aa4:	fff58593          	addi	a1,a1,-1 # 3fff <register_fini-0xc0b1>
   21aa8:	00b7f7b3          	and	a5,a5,a1
   21aac:	7ff00713          	li	a4,2047
   21ab0:	0037d793          	srli	a5,a5,0x3
   21ab4:	00e61a63          	bne	a2,a4,21ac8 <__trunctfdf2+0x104>
   21ab8:	00078863          	beqz	a5,21ac8 <__trunctfdf2+0x104>
   21abc:	00100793          	li	a5,1
   21ac0:	03379793          	slli	a5,a5,0x33
   21ac4:	00000693          	li	a3,0
   21ac8:	7ff67713          	andi	a4,a2,2047
   21acc:	00c79793          	slli	a5,a5,0xc
   21ad0:	03471713          	slli	a4,a4,0x34
   21ad4:	00c7d793          	srli	a5,a5,0xc
   21ad8:	00f767b3          	or	a5,a4,a5
   21adc:	03f69693          	slli	a3,a3,0x3f
   21ae0:	00d7e7b3          	or	a5,a5,a3
   21ae4:	00088463          	beqz	a7,21aec <__trunctfdf2+0x128>
   21ae8:	0018a073          	csrs	fflags,a7
   21aec:	f2078553          	fmv.d.x	fa0,a5
   21af0:	00008067          	ret
   21af4:	0cc04a63          	bgtz	a2,21bc8 <__trunctfdf2+0x204>
   21af8:	fcc00793          	li	a5,-52
   21afc:	14f64a63          	blt	a2,a5,21c50 <__trunctfdf2+0x28c>
   21b00:	00100793          	li	a5,1
   21b04:	03379793          	slli	a5,a5,0x33
   21b08:	03d00e13          	li	t3,61
   21b0c:	00f76733          	or	a4,a4,a5
   21b10:	40ce0e33          	sub	t3,t3,a2
   21b14:	03f00793          	li	a5,63
   21b18:	0006089b          	sext.w	a7,a2
   21b1c:	07c7ce63          	blt	a5,t3,21b98 <__trunctfdf2+0x1d4>
   21b20:	0038859b          	addiw	a1,a7,3
   21b24:	03d00613          	li	a2,61
   21b28:	4116063b          	subw	a2,a2,a7
   21b2c:	00be97b3          	sll	a5,t4,a1
   21b30:	00ced633          	srl	a2,t4,a2
   21b34:	00f037b3          	snez	a5,a5
   21b38:	00f667b3          	or	a5,a2,a5
   21b3c:	00b71733          	sll	a4,a4,a1
   21b40:	00f767b3          	or	a5,a4,a5
   21b44:	00000613          	li	a2,0
   21b48:	0c078063          	beqz	a5,21c08 <__trunctfdf2+0x244>
   21b4c:	00179713          	slli	a4,a5,0x1
   21b50:	00777613          	andi	a2,a4,7
   21b54:	00000893          	li	a7,0
   21b58:	02060663          	beqz	a2,21b84 <__trunctfdf2+0x1c0>
   21b5c:	00200613          	li	a2,2
   21b60:	10c80263          	beq	a6,a2,21c64 <__trunctfdf2+0x2a0>
   21b64:	00300613          	li	a2,3
   21b68:	00100893          	li	a7,1
   21b6c:	0ec80663          	beq	a6,a2,21c58 <__trunctfdf2+0x294>
   21b70:	00081a63          	bnez	a6,21b84 <__trunctfdf2+0x1c0>
   21b74:	00f77613          	andi	a2,a4,15
   21b78:	00400593          	li	a1,4
   21b7c:	00b60463          	beq	a2,a1,21b84 <__trunctfdf2+0x1c0>
   21b80:	00470713          	addi	a4,a4,4 # ffffffffffffc004 <__BSS_END__+0xfffffffffffd71a4>
   21b84:	03875713          	srli	a4,a4,0x38
   21b88:	00174713          	xori	a4,a4,1
   21b8c:	00177713          	andi	a4,a4,1
   21b90:	00000613          	li	a2,0
   21b94:	0540006f          	j	21be8 <__trunctfdf2+0x224>
   21b98:	ffd00313          	li	t1,-3
   21b9c:	4113033b          	subw	t1,t1,a7
   21ba0:	04000793          	li	a5,64
   21ba4:	00675333          	srl	t1,a4,t1
   21ba8:	00000593          	li	a1,0
   21bac:	00fe0663          	beq	t3,a5,21bb8 <__trunctfdf2+0x1f4>
   21bb0:	0438861b          	addiw	a2,a7,67
   21bb4:	00c715b3          	sll	a1,a4,a2
   21bb8:	01d5e5b3          	or	a1,a1,t4
   21bbc:	00b035b3          	snez	a1,a1
   21bc0:	00b367b3          	or	a5,t1,a1
   21bc4:	f81ff06f          	j	21b44 <__trunctfdf2+0x180>
   21bc8:	00751793          	slli	a5,a0,0x7
   21bcc:	00f037b3          	snez	a5,a5
   21bd0:	03ced593          	srli	a1,t4,0x3c
   21bd4:	00471713          	slli	a4,a4,0x4
   21bd8:	00b7e7b3          	or	a5,a5,a1
   21bdc:	00f767b3          	or	a5,a4,a5
   21be0:	00000893          	li	a7,0
   21be4:	00000713          	li	a4,0
   21be8:	0077f593          	andi	a1,a5,7
   21bec:	e40596e3          	bnez	a1,21a38 <__trunctfdf2+0x74>
   21bf0:	e8070ae3          	beqz	a4,21a84 <__trunctfdf2+0xc0>
   21bf4:	0018f713          	andi	a4,a7,1
   21bf8:	e69ff06f          	j	21a60 <__trunctfdf2+0x9c>
   21bfc:	01d767b3          	or	a5,a4,t4
   21c00:	00061863          	bnez	a2,21c10 <__trunctfdf2+0x24c>
   21c04:	04079663          	bnez	a5,21c50 <__trunctfdf2+0x28c>
   21c08:	00000893          	li	a7,0
   21c0c:	e79ff06f          	j	21a84 <__trunctfdf2+0xc0>
   21c10:	06078063          	beqz	a5,21c70 <__trunctfdf2+0x2ac>
   21c14:	00000893          	li	a7,0
   21c18:	01c61863          	bne	a2,t3,21c28 <__trunctfdf2+0x264>
   21c1c:	03275893          	srli	a7,a4,0x32
   21c20:	0018b893          	seqz	a7,a7
   21c24:	00489893          	slli	a7,a7,0x4
   21c28:	03ced793          	srli	a5,t4,0x3c
   21c2c:	00471713          	slli	a4,a4,0x4
   21c30:	00f76733          	or	a4,a4,a5
   21c34:	00100793          	li	a5,1
   21c38:	ff877713          	andi	a4,a4,-8
   21c3c:	03679793          	slli	a5,a5,0x36
   21c40:	00f767b3          	or	a5,a4,a5
   21c44:	7ff00613          	li	a2,2047
   21c48:	00000713          	li	a4,0
   21c4c:	f9dff06f          	j	21be8 <__trunctfdf2+0x224>
   21c50:	00100793          	li	a5,1
   21c54:	ef9ff06f          	j	21b4c <__trunctfdf2+0x188>
   21c58:	f20696e3          	bnez	a3,21b84 <__trunctfdf2+0x1c0>
   21c5c:	00870713          	addi	a4,a4,8
   21c60:	f25ff06f          	j	21b84 <__trunctfdf2+0x1c0>
   21c64:	00100893          	li	a7,1
   21c68:	f0068ee3          	beqz	a3,21b84 <__trunctfdf2+0x1c0>
   21c6c:	ff1ff06f          	j	21c5c <__trunctfdf2+0x298>
   21c70:	7ff00613          	li	a2,2047
   21c74:	f95ff06f          	j	21c08 <__trunctfdf2+0x244>
   21c78:	de0694e3          	bnez	a3,21a60 <__trunctfdf2+0x9c>
   21c7c:	00878793          	addi	a5,a5,8
   21c80:	de1ff06f          	j	21a60 <__trunctfdf2+0x9c>
   21c84:	dc068ee3          	beqz	a3,21a60 <__trunctfdf2+0x9c>
   21c88:	ff5ff06f          	j	21c7c <__trunctfdf2+0x2b8>
   21c8c:	00000793          	li	a5,0
   21c90:	02080463          	beqz	a6,21cb8 <__trunctfdf2+0x2f4>
   21c94:	00300713          	li	a4,3
   21c98:	00e81a63          	bne	a6,a4,21cac <__trunctfdf2+0x2e8>
   21c9c:	00068e63          	beqz	a3,21cb8 <__trunctfdf2+0x2f4>
   21ca0:	fff00793          	li	a5,-1
   21ca4:	7fe00613          	li	a2,2046
   21ca8:	0100006f          	j	21cb8 <__trunctfdf2+0x2f4>
   21cac:	00200713          	li	a4,2
   21cb0:	fee818e3          	bne	a6,a4,21ca0 <__trunctfdf2+0x2dc>
   21cb4:	fe0686e3          	beqz	a3,21ca0 <__trunctfdf2+0x2dc>
   21cb8:	0058e893          	ori	a7,a7,5
   21cbc:	df1ff06f          	j	21aac <__trunctfdf2+0xe8>

0000000000021cc0 <__muldi3>:
   21cc0:	00050613          	mv	a2,a0
   21cc4:	00000513          	li	a0,0
   21cc8:	0015f693          	andi	a3,a1,1
   21ccc:	00068463          	beqz	a3,21cd4 <__muldi3+0x14>
   21cd0:	00c50533          	add	a0,a0,a2
   21cd4:	0015d593          	srli	a1,a1,0x1
   21cd8:	00161613          	slli	a2,a2,0x1
   21cdc:	fe0596e3          	bnez	a1,21cc8 <__muldi3+0x8>
   21ce0:	00008067          	ret

0000000000021ce4 <__udivsi3>:
   21ce4:	02051513          	slli	a0,a0,0x20
   21ce8:	02059593          	slli	a1,a1,0x20
   21cec:	00008293          	mv	t0,ra
   21cf0:	03c000ef          	jal	ra,21d2c <__udivdi3>
   21cf4:	0005051b          	sext.w	a0,a0
   21cf8:	00028067          	jr	t0 # 10510 <memset+0xb4>

0000000000021cfc <__umodsi3>:
   21cfc:	02051513          	slli	a0,a0,0x20
   21d00:	02059593          	slli	a1,a1,0x20
   21d04:	02055513          	srli	a0,a0,0x20
   21d08:	0205d593          	srli	a1,a1,0x20
   21d0c:	00008293          	mv	t0,ra
   21d10:	01c000ef          	jal	ra,21d2c <__udivdi3>
   21d14:	0005851b          	sext.w	a0,a1
   21d18:	00028067          	jr	t0

0000000000021d1c <__divsi3>:
   21d1c:	fff00293          	li	t0,-1
   21d20:	0a558c63          	beq	a1,t0,21dd8 <__moddi3+0x30>

0000000000021d24 <__divdi3>:
   21d24:	06054063          	bltz	a0,21d84 <__umoddi3+0x10>
   21d28:	0605c663          	bltz	a1,21d94 <__umoddi3+0x20>

0000000000021d2c <__udivdi3>:
   21d2c:	00058613          	mv	a2,a1
   21d30:	00050593          	mv	a1,a0
   21d34:	fff00513          	li	a0,-1
   21d38:	02060c63          	beqz	a2,21d70 <__udivdi3+0x44>
   21d3c:	00100693          	li	a3,1
   21d40:	00b67a63          	bgeu	a2,a1,21d54 <__udivdi3+0x28>
   21d44:	00c05863          	blez	a2,21d54 <__udivdi3+0x28>
   21d48:	00161613          	slli	a2,a2,0x1
   21d4c:	00169693          	slli	a3,a3,0x1
   21d50:	feb66ae3          	bltu	a2,a1,21d44 <__udivdi3+0x18>
   21d54:	00000513          	li	a0,0
   21d58:	00c5e663          	bltu	a1,a2,21d64 <__udivdi3+0x38>
   21d5c:	40c585b3          	sub	a1,a1,a2
   21d60:	00d56533          	or	a0,a0,a3
   21d64:	0016d693          	srli	a3,a3,0x1
   21d68:	00165613          	srli	a2,a2,0x1
   21d6c:	fe0696e3          	bnez	a3,21d58 <__udivdi3+0x2c>
   21d70:	00008067          	ret

0000000000021d74 <__umoddi3>:
   21d74:	00008293          	mv	t0,ra
   21d78:	fb5ff0ef          	jal	ra,21d2c <__udivdi3>
   21d7c:	00058513          	mv	a0,a1
   21d80:	00028067          	jr	t0
   21d84:	40a00533          	neg	a0,a0
   21d88:	00b04863          	bgtz	a1,21d98 <__umoddi3+0x24>
   21d8c:	40b005b3          	neg	a1,a1
   21d90:	f9dff06f          	j	21d2c <__udivdi3>
   21d94:	40b005b3          	neg	a1,a1
   21d98:	00008293          	mv	t0,ra
   21d9c:	f91ff0ef          	jal	ra,21d2c <__udivdi3>
   21da0:	40a00533          	neg	a0,a0
   21da4:	00028067          	jr	t0

0000000000021da8 <__moddi3>:
   21da8:	00008293          	mv	t0,ra
   21dac:	0005ca63          	bltz	a1,21dc0 <__moddi3+0x18>
   21db0:	00054c63          	bltz	a0,21dc8 <__moddi3+0x20>
   21db4:	f79ff0ef          	jal	ra,21d2c <__udivdi3>
   21db8:	00058513          	mv	a0,a1
   21dbc:	00028067          	jr	t0
   21dc0:	40b005b3          	neg	a1,a1
   21dc4:	fe0558e3          	bgez	a0,21db4 <__moddi3+0xc>
   21dc8:	40a00533          	neg	a0,a0
   21dcc:	f61ff0ef          	jal	ra,21d2c <__udivdi3>
   21dd0:	40b00533          	neg	a0,a1
   21dd4:	00028067          	jr	t0
   21dd8:	01f29293          	slli	t0,t0,0x1f
   21ddc:	f45514e3          	bne	a0,t0,21d24 <__divdi3>
   21de0:	00008067          	ret

0000000000021de4 <__clzdi2>:
   21de4:	03800793          	li	a5,56
   21de8:	00f55733          	srl	a4,a0,a5
   21dec:	0ff77713          	andi	a4,a4,255
   21df0:	00071663          	bnez	a4,21dfc <__clzdi2+0x18>
   21df4:	ff878793          	addi	a5,a5,-8
   21df8:	fe0798e3          	bnez	a5,21de8 <__clzdi2+0x4>
   21dfc:	04000713          	li	a4,64
   21e00:	40f70733          	sub	a4,a4,a5
   21e04:	00f55533          	srl	a0,a0,a5
   21e08:	00001797          	auipc	a5,0x1
   21e0c:	d5078793          	addi	a5,a5,-688 # 22b58 <__clz_tab>
   21e10:	00a78533          	add	a0,a5,a0
   21e14:	00054503          	lbu	a0,0(a0)
   21e18:	40a7053b          	subw	a0,a4,a0
   21e1c:	00008067          	ret
