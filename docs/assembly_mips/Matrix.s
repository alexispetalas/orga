
Matrix.o:     file format elf32-tradlittlemips

Disassembly of section .text:

00000000 <leerEntradaEstandard>:
   0:	3c1c0000 	lui	gp,0x0
   4:	279c0000 	addiu	gp,gp,0
   8:	0399e021 	addu	gp,gp,t9
   c:	27bdfec8 	addiu	sp,sp,-312
  10:	afbc0010 	sw	gp,16(sp)
  14:	afbf0130 	sw	ra,304(sp)
  18:	afbe012c 	sw	s8,300(sp)
  1c:	afbc0128 	sw	gp,296(sp)
  20:	03a0f021 	move	s8,sp
  24:	afc00118 	sw	zero,280(s8)
  28:	afc0011c 	sw	zero,284(s8)
  2c:	afc00120 	sw	zero,288(s8)
  30:	afc00124 	sw	zero,292(s8)
  34:	27c40018 	addiu	a0,s8,24
  38:	240500ff 	li	a1,255
  3c:	8f860000 	lw	a2,0(gp)
  40:	8f990000 	lw	t9,0(gp)
  44:	00000000 	nop
  48:	0320f809 	jalr	t9
  4c:	00000000 	nop
  50:	8fdc0010 	lw	gp,16(s8)
  54:	14400003 	bnez	v0,64 <leerEntradaEstandard+0x64>
  58:	00000000 	nop
  5c:	10000071 	b	224 <leerEntradaEstandard+0x224>
  60:	00000000 	nop
  64:	27c40018 	addiu	a0,s8,24
  68:	8f990000 	lw	t9,0(gp)
  6c:	00000000 	nop
  70:	0320f809 	jalr	t9
  74:	00000000 	nop
  78:	8fdc0010 	lw	gp,16(s8)
  7c:	2c420003 	sltiu	v0,v0,3
  80:	1440ffec 	bnez	v0,34 <leerEntradaEstandard+0x34>
  84:	00000000 	nop
  88:	8fc20118 	lw	v0,280(s8)
  8c:	00000000 	nop
  90:	30420001 	andi	v0,v0,0x1
  94:	1440001a 	bnez	v0,100 <leerEntradaEstandard+0x100>
  98:	00000000 	nop
  9c:	27c40018 	addiu	a0,s8,24
  a0:	8fc50118 	lw	a1,280(s8)
  a4:	8f990000 	lw	t9,0(gp)
  a8:	00000000 	nop
  ac:	0320f809 	jalr	t9
  b0:	00000000 	nop
  b4:	8fdc0010 	lw	gp,16(s8)
  b8:	afc2011c 	sw	v0,284(s8)
  bc:	8fc2011c 	lw	v0,284(s8)
  c0:	00000000 	nop
  c4:	14400052 	bnez	v0,210 <leerEntradaEstandard+0x210>
  c8:	00000000 	nop
  cc:	8f840000 	lw	a0,0(gp)
  d0:	00000000 	nop
  d4:	248400b0 	addiu	a0,a0,176
  d8:	8f850000 	lw	a1,0(gp)
  dc:	00000000 	nop
  e0:	24a50000 	addiu	a1,a1,0
  e4:	8f990000 	lw	t9,0(gp)
  e8:	00000000 	nop
  ec:	0320f809 	jalr	t9
  f0:	00000000 	nop
  f4:	8fdc0010 	lw	gp,16(s8)
  f8:	1000004a 	b	224 <leerEntradaEstandard+0x224>
  fc:	00000000 	nop
 100:	27c40018 	addiu	a0,s8,24
 104:	8fc50118 	lw	a1,280(s8)
 108:	8f990000 	lw	t9,0(gp)
 10c:	00000000 	nop
 110:	0320f809 	jalr	t9
 114:	00000000 	nop
 118:	8fdc0010 	lw	gp,16(s8)
 11c:	afc20120 	sw	v0,288(s8)
 120:	8fc20120 	lw	v0,288(s8)
 124:	00000000 	nop
 128:	14400015 	bnez	v0,180 <leerEntradaEstandard+0x180>
 12c:	00000000 	nop
 130:	8fc4011c 	lw	a0,284(s8)
 134:	8f990000 	lw	t9,0(gp)
 138:	00000000 	nop
 13c:	0320f809 	jalr	t9
 140:	00000000 	nop
 144:	8fdc0010 	lw	gp,16(s8)
 148:	00000000 	nop
 14c:	8f840000 	lw	a0,0(gp)
 150:	00000000 	nop
 154:	248400b0 	addiu	a0,a0,176
 158:	8f850000 	lw	a1,0(gp)
 15c:	00000000 	nop
 160:	24a50000 	addiu	a1,a1,0
 164:	8f990000 	lw	t9,0(gp)
 168:	00000000 	nop
 16c:	0320f809 	jalr	t9
 170:	00000000 	nop
 174:	8fdc0010 	lw	gp,16(s8)
 178:	1000002a 	b	224 <leerEntradaEstandard+0x224>
 17c:	00000000 	nop
 180:	8fc4011c 	lw	a0,284(s8)
 184:	8fc50120 	lw	a1,288(s8)
 188:	8f990000 	lw	t9,0(gp)
 18c:	00000000 	nop
 190:	0320f809 	jalr	t9
 194:	00000000 	nop
 198:	8fdc0010 	lw	gp,16(s8)
 19c:	afc20124 	sw	v0,292(s8)
 1a0:	8fc20124 	lw	v0,292(s8)
 1a4:	00000000 	nop
 1a8:	10400007 	beqz	v0,1c8 <leerEntradaEstandard+0x1c8>
 1ac:	00000000 	nop
 1b0:	8fc40124 	lw	a0,292(s8)
 1b4:	8f990000 	lw	t9,0(gp)
 1b8:	00000000 	nop
 1bc:	0320f809 	jalr	t9
 1c0:	00000000 	nop
 1c4:	8fdc0010 	lw	gp,16(s8)
 1c8:	8fc4011c 	lw	a0,284(s8)
 1cc:	8f990000 	lw	t9,0(gp)
 1d0:	00000000 	nop
 1d4:	0320f809 	jalr	t9
 1d8:	00000000 	nop
 1dc:	8fdc0010 	lw	gp,16(s8)
 1e0:	8fc40120 	lw	a0,288(s8)
 1e4:	8f990000 	lw	t9,0(gp)
 1e8:	00000000 	nop
 1ec:	0320f809 	jalr	t9
 1f0:	00000000 	nop
 1f4:	8fdc0010 	lw	gp,16(s8)
 1f8:	8fc40124 	lw	a0,292(s8)
 1fc:	8f990000 	lw	t9,0(gp)
 200:	00000000 	nop
 204:	0320f809 	jalr	t9
 208:	00000000 	nop
 20c:	8fdc0010 	lw	gp,16(s8)
 210:	8fc20118 	lw	v0,280(s8)
 214:	00000000 	nop
 218:	24420001 	addiu	v0,v0,1
 21c:	1000ff85 	b	34 <leerEntradaEstandard+0x34>
 220:	afc20118 	sw	v0,280(s8)
 224:	00001021 	move	v0,zero
 228:	03c0e821 	move	sp,s8
 22c:	8fbf0130 	lw	ra,304(sp)
 230:	8fbe012c 	lw	s8,300(sp)
 234:	03e00008 	jr	ra
 238:	27bd0138 	addiu	sp,sp,312

0000023c <imprimirMatriz>:
 23c:	3c1c0000 	lui	gp,0x0
 240:	279c0000 	addiu	gp,gp,0
 244:	0399e021 	addu	gp,gp,t9
 248:	27bdffd0 	addiu	sp,sp,-48
 24c:	afbc0010 	sw	gp,16(sp)
 250:	afbf0028 	sw	ra,40(sp)
 254:	afbe0024 	sw	s8,36(sp)
 258:	afbc0020 	sw	gp,32(sp)
 25c:	03a0f021 	move	s8,sp
 260:	afc40030 	sw	a0,48(s8)
 264:	8fc20030 	lw	v0,48(s8)
 268:	8fc30030 	lw	v1,48(s8)
 26c:	8f840000 	lw	a0,0(gp)
 270:	00000000 	nop
 274:	2484006c 	addiu	a0,a0,108
 278:	8c450000 	lw	a1,0(v0)
 27c:	8c660004 	lw	a2,4(v1)
 280:	8f990000 	lw	t9,0(gp)
 284:	00000000 	nop
 288:	0320f809 	jalr	t9
 28c:	00000000 	nop
 290:	8fdc0010 	lw	gp,16(s8)
 294:	afc00018 	sw	zero,24(s8)
 298:	8fc20030 	lw	v0,48(s8)
 29c:	8fc30018 	lw	v1,24(s8)
 2a0:	8c420000 	lw	v0,0(v0)
 2a4:	00000000 	nop
 2a8:	0062102a 	slt	v0,v1,v0
 2ac:	14400003 	bnez	v0,2bc <imprimirMatriz+0x80>
 2b0:	00000000 	nop
 2b4:	1000002f 	b	374 <imprimirMatriz+0x138>
 2b8:	00000000 	nop
 2bc:	afc0001c 	sw	zero,28(s8)
 2c0:	8fc20030 	lw	v0,48(s8)
 2c4:	8fc3001c 	lw	v1,28(s8)
 2c8:	8c420004 	lw	v0,4(v0)
 2cc:	00000000 	nop
 2d0:	0062102a 	slt	v0,v1,v0
 2d4:	14400003 	bnez	v0,2e4 <imprimirMatriz+0xa8>
 2d8:	00000000 	nop
 2dc:	10000020 	b	360 <imprimirMatriz+0x124>
 2e0:	00000000 	nop
 2e4:	8fc40030 	lw	a0,48(s8)
 2e8:	8fc20018 	lw	v0,24(s8)
 2ec:	00000000 	nop
 2f0:	00021880 	sll	v1,v0,0x2
 2f4:	8c820008 	lw	v0,8(a0)
 2f8:	00000000 	nop
 2fc:	00622021 	addu	a0,v1,v0
 300:	8fc2001c 	lw	v0,28(s8)
 304:	00000000 	nop
 308:	00021880 	sll	v1,v0,0x2
 30c:	8c820000 	lw	v0,0(a0)
 310:	00000000 	nop
 314:	00621021 	addu	v0,v1,v0
 318:	c4400000 	lwc1	$f0,0(v0)
 31c:	00000000 	nop
 320:	46000021 	cvt.d.s	$f0,$f0
 324:	8f840000 	lw	a0,0(gp)
 328:	00000000 	nop
 32c:	24840074 	addiu	a0,a0,116
 330:	44060000 	mfc1	a2,$f0
 334:	44070800 	mfc1	a3,$f1
 338:	8f990000 	lw	t9,0(gp)
 33c:	00000000 	nop
 340:	0320f809 	jalr	t9
 344:	00000000 	nop
 348:	8fdc0010 	lw	gp,16(s8)
 34c:	8fc2001c 	lw	v0,28(s8)
 350:	00000000 	nop
 354:	24420001 	addiu	v0,v0,1
 358:	1000ffd9 	b	2c0 <imprimirMatriz+0x84>
 35c:	afc2001c 	sw	v0,28(s8)
 360:	8fc20018 	lw	v0,24(s8)
 364:	00000000 	nop
 368:	24420001 	addiu	v0,v0,1
 36c:	1000ffca 	b	298 <imprimirMatriz+0x5c>
 370:	afc20018 	sw	v0,24(s8)
 374:	8f840000 	lw	a0,0(gp)
 378:	00000000 	nop
 37c:	24840078 	addiu	a0,a0,120
 380:	8f990000 	lw	t9,0(gp)
 384:	00000000 	nop
 388:	0320f809 	jalr	t9
 38c:	00000000 	nop
 390:	8fdc0010 	lw	gp,16(s8)
 394:	03c0e821 	move	sp,s8
 398:	8fbf0028 	lw	ra,40(sp)
 39c:	8fbe0024 	lw	s8,36(sp)
 3a0:	03e00008 	jr	ra
 3a4:	27bd0030 	addiu	sp,sp,48

000003a8 <liberarMatriz>:
 3a8:	3c1c0000 	lui	gp,0x0
 3ac:	279c0000 	addiu	gp,gp,0
 3b0:	0399e021 	addu	gp,gp,t9
 3b4:	27bdffd0 	addiu	sp,sp,-48
 3b8:	afbc0010 	sw	gp,16(sp)
 3bc:	afbf0028 	sw	ra,40(sp)
 3c0:	afbe0024 	sw	s8,36(sp)
 3c4:	afbc0020 	sw	gp,32(sp)
 3c8:	03a0f021 	move	s8,sp
 3cc:	afc40030 	sw	a0,48(s8)
 3d0:	afc00018 	sw	zero,24(s8)
 3d4:	8fc20030 	lw	v0,48(s8)
 3d8:	8fc30018 	lw	v1,24(s8)
 3dc:	8c420000 	lw	v0,0(v0)
 3e0:	00000000 	nop
 3e4:	0062102a 	slt	v0,v1,v0
 3e8:	14400003 	bnez	v0,3f8 <liberarMatriz+0x50>
 3ec:	00000000 	nop
 3f0:	10000013 	b	440 <liberarMatriz+0x98>
 3f4:	00000000 	nop
 3f8:	8fc40030 	lw	a0,48(s8)
 3fc:	8fc20018 	lw	v0,24(s8)
 400:	00000000 	nop
 404:	00021880 	sll	v1,v0,0x2
 408:	8c820008 	lw	v0,8(a0)
 40c:	00000000 	nop
 410:	00621021 	addu	v0,v1,v0
 414:	8c440000 	lw	a0,0(v0)
 418:	8f990000 	lw	t9,0(gp)
 41c:	00000000 	nop
 420:	0320f809 	jalr	t9
 424:	00000000 	nop
 428:	8fdc0010 	lw	gp,16(s8)
 42c:	8fc20018 	lw	v0,24(s8)
 430:	00000000 	nop
 434:	24420001 	addiu	v0,v0,1
 438:	1000ffe6 	b	3d4 <liberarMatriz+0x2c>
 43c:	afc20018 	sw	v0,24(s8)
 440:	8fc20030 	lw	v0,48(s8)
 444:	00000000 	nop
 448:	8c440008 	lw	a0,8(v0)
 44c:	8f990000 	lw	t9,0(gp)
 450:	00000000 	nop
 454:	0320f809 	jalr	t9
 458:	00000000 	nop
 45c:	8fdc0010 	lw	gp,16(s8)
 460:	8fc40030 	lw	a0,48(s8)
 464:	8f990000 	lw	t9,0(gp)
 468:	00000000 	nop
 46c:	0320f809 	jalr	t9
 470:	00000000 	nop
 474:	8fdc0010 	lw	gp,16(s8)
 478:	afc00030 	sw	zero,48(s8)
 47c:	03c0e821 	move	sp,s8
 480:	8fbf0028 	lw	ra,40(sp)
 484:	8fbe0024 	lw	s8,36(sp)
 488:	03e00008 	jr	ra
 48c:	27bd0030 	addiu	sp,sp,48

00000490 <serializeMatrix>:
 490:	3c1c0000 	lui	gp,0x0
 494:	279c0000 	addiu	gp,gp,0
 498:	0399e021 	addu	gp,gp,t9
 49c:	27bdffe8 	addiu	sp,sp,-24
 4a0:	afbc0000 	sw	gp,0(sp)
 4a4:	afbe0014 	sw	s8,20(sp)
 4a8:	afbc0010 	sw	gp,16(sp)
 4ac:	03a0f021 	move	s8,sp
 4b0:	afc40018 	sw	a0,24(s8)
 4b4:	afc00008 	sw	zero,8(s8)
 4b8:	8fc20008 	lw	v0,8(s8)
 4bc:	03c0e821 	move	sp,s8
 4c0:	8fbe0014 	lw	s8,20(sp)
 4c4:	03e00008 	jr	ra
 4c8:	27bd0018 	addiu	sp,sp,24

000004cc <deserializeMatrix>:
 4cc:	3c1c0000 	lui	gp,0x0
 4d0:	279c0000 	addiu	gp,gp,0
 4d4:	0399e021 	addu	gp,gp,t9
 4d8:	27bdffb0 	addiu	sp,sp,-80
 4dc:	afbc0018 	sw	gp,24(sp)
 4e0:	afbf004c 	sw	ra,76(sp)
 4e4:	afbe0048 	sw	s8,72(sp)
 4e8:	afbc0044 	sw	gp,68(sp)
 4ec:	afb00040 	sw	s0,64(sp)
 4f0:	03a0f021 	move	s8,sp
 4f4:	afc40050 	sw	a0,80(s8)
 4f8:	afc50054 	sw	a1,84(s8)
 4fc:	2402ffff 	li	v0,-1
 500:	afc20020 	sw	v0,32(s8)
 504:	2402ffff 	li	v0,-1
 508:	afc20024 	sw	v0,36(s8)
 50c:	27c20024 	addiu	v0,s8,36
 510:	8fc40050 	lw	a0,80(s8)
 514:	8f850000 	lw	a1,0(gp)
 518:	00000000 	nop
 51c:	24a5007c 	addiu	a1,a1,124
 520:	27c60020 	addiu	a2,s8,32
 524:	00403821 	move	a3,v0
 528:	8f990000 	lw	t9,0(gp)
 52c:	00000000 	nop
 530:	0320f809 	jalr	t9
 534:	00000000 	nop
 538:	8fdc0018 	lw	gp,24(s8)
 53c:	afc20028 	sw	v0,40(s8)
 540:	8fc30028 	lw	v1,40(s8)
 544:	24020002 	li	v0,2
 548:	10620013 	beq	v1,v0,598 <deserializeMatrix+0xcc>
 54c:	00000000 	nop
 550:	8f840000 	lw	a0,0(gp)
 554:	00000000 	nop
 558:	248400b0 	addiu	a0,a0,176
 55c:	8f850000 	lw	a1,0(gp)
 560:	00000000 	nop
 564:	24a50084 	addiu	a1,a1,132
 568:	8fc60054 	lw	a2,84(s8)
 56c:	8f990000 	lw	t9,0(gp)
 570:	00000000 	nop
 574:	0320f809 	jalr	t9
 578:	00000000 	nop
 57c:	8fdc0018 	lw	gp,24(s8)
 580:	24040001 	li	a0,1
 584:	8f990000 	lw	t9,0(gp)
 588:	00000000 	nop
 58c:	0320f809 	jalr	t9
 590:	00000000 	nop
 594:	8fdc0018 	lw	gp,24(s8)
 598:	8fc20020 	lw	v0,32(s8)
 59c:	00000000 	nop
 5a0:	04400007 	bltz	v0,5c0 <deserializeMatrix+0xf4>
 5a4:	00000000 	nop
 5a8:	8fc20024 	lw	v0,36(s8)
 5ac:	00000000 	nop
 5b0:	04400003 	bltz	v0,5c0 <deserializeMatrix+0xf4>
 5b4:	00000000 	nop
 5b8:	10000013 	b	608 <deserializeMatrix+0x13c>
 5bc:	00000000 	nop
 5c0:	8f840000 	lw	a0,0(gp)
 5c4:	00000000 	nop
 5c8:	248400b0 	addiu	a0,a0,176
 5cc:	8f850000 	lw	a1,0(gp)
 5d0:	00000000 	nop
 5d4:	24a500b8 	addiu	a1,a1,184
 5d8:	8fc60054 	lw	a2,84(s8)
 5dc:	8f990000 	lw	t9,0(gp)
 5e0:	00000000 	nop
 5e4:	0320f809 	jalr	t9
 5e8:	00000000 	nop
 5ec:	8fdc0018 	lw	gp,24(s8)
 5f0:	24040001 	li	a0,1
 5f4:	8f990000 	lw	t9,0(gp)
 5f8:	00000000 	nop
 5fc:	0320f809 	jalr	t9
 600:	00000000 	nop
 604:	8fdc0018 	lw	gp,24(s8)
 608:	8fc40020 	lw	a0,32(s8)
 60c:	8fc50024 	lw	a1,36(s8)
 610:	8f990000 	lw	t9,0(gp)
 614:	00000000 	nop
 618:	0320f809 	jalr	t9
 61c:	00000000 	nop
 620:	8fdc0018 	lw	gp,24(s8)
 624:	afc2002c 	sw	v0,44(s8)
 628:	8fc40050 	lw	a0,80(s8)
 62c:	8f850000 	lw	a1,0(gp)
 630:	00000000 	nop
 634:	24a50100 	addiu	a1,a1,256
 638:	8f990000 	lw	t9,0(gp)
 63c:	00000000 	nop
 640:	0320f809 	jalr	t9
 644:	00000000 	nop
 648:	8fdc0018 	lw	gp,24(s8)
 64c:	afc20030 	sw	v0,48(s8)
 650:	8fc40030 	lw	a0,48(s8)
 654:	8f850000 	lw	a1,0(gp)
 658:	00000000 	nop
 65c:	24a50100 	addiu	a1,a1,256
 660:	8f990000 	lw	t9,0(gp)
 664:	00000000 	nop
 668:	0320f809 	jalr	t9
 66c:	00000000 	nop
 670:	8fdc0018 	lw	gp,24(s8)
 674:	afc20034 	sw	v0,52(s8)
 678:	afc00038 	sw	zero,56(s8)
 67c:	afc0003c 	sw	zero,60(s8)
 680:	8fc20034 	lw	v0,52(s8)
 684:	00000000 	nop
 688:	1040003d 	beqz	v0,780 <deserializeMatrix+0x2b4>
 68c:	00000000 	nop
 690:	8fc20038 	lw	v0,56(s8)
 694:	8fc30020 	lw	v1,32(s8)
 698:	00000000 	nop
 69c:	0043102a 	slt	v0,v0,v1
 6a0:	14400003 	bnez	v0,6b0 <deserializeMatrix+0x1e4>
 6a4:	00000000 	nop
 6a8:	10000035 	b	780 <deserializeMatrix+0x2b4>
 6ac:	00000000 	nop
 6b0:	8fc4002c 	lw	a0,44(s8)
 6b4:	8fc20038 	lw	v0,56(s8)
 6b8:	00000000 	nop
 6bc:	00021880 	sll	v1,v0,0x2
 6c0:	8c820008 	lw	v0,8(a0)
 6c4:	00000000 	nop
 6c8:	00622021 	addu	a0,v1,v0
 6cc:	8fc2003c 	lw	v0,60(s8)
 6d0:	00000000 	nop
 6d4:	00021880 	sll	v1,v0,0x2
 6d8:	8c820000 	lw	v0,0(a0)
 6dc:	00000000 	nop
 6e0:	00628021 	addu	s0,v1,v0
 6e4:	8fc40034 	lw	a0,52(s8)
 6e8:	8f990000 	lw	t9,0(gp)
 6ec:	00000000 	nop
 6f0:	0320f809 	jalr	t9
 6f4:	00000000 	nop
 6f8:	8fdc0018 	lw	gp,24(s8)
 6fc:	46200020 	cvt.s.d	$f0,$f0
 700:	e6000000 	swc1	$f0,0(s0)
 704:	00002021 	move	a0,zero
 708:	8f850000 	lw	a1,0(gp)
 70c:	00000000 	nop
 710:	24a50100 	addiu	a1,a1,256
 714:	8f990000 	lw	t9,0(gp)
 718:	00000000 	nop
 71c:	0320f809 	jalr	t9
 720:	00000000 	nop
 724:	8fdc0018 	lw	gp,24(s8)
 728:	afc20034 	sw	v0,52(s8)
 72c:	8fc30038 	lw	v1,56(s8)
 730:	8fc20020 	lw	v0,32(s8)
 734:	00000000 	nop
 738:	0062102a 	slt	v0,v1,v0
 73c:	1040ffd0 	beqz	v0,680 <deserializeMatrix+0x1b4>
 740:	00000000 	nop
 744:	8fc2003c 	lw	v0,60(s8)
 748:	00000000 	nop
 74c:	24420001 	addiu	v0,v0,1
 750:	afc2003c 	sw	v0,60(s8)
 754:	8fc3003c 	lw	v1,60(s8)
 758:	8fc20024 	lw	v0,36(s8)
 75c:	00000000 	nop
 760:	1462ffc7 	bne	v1,v0,680 <deserializeMatrix+0x1b4>
 764:	00000000 	nop
 768:	8fc20038 	lw	v0,56(s8)
 76c:	00000000 	nop
 770:	24420001 	addiu	v0,v0,1
 774:	afc20038 	sw	v0,56(s8)
 778:	1000ffc1 	b	680 <deserializeMatrix+0x1b4>
 77c:	afc0003c 	sw	zero,60(s8)
 780:	8fc30038 	lw	v1,56(s8)
 784:	8fc20020 	lw	v0,32(s8)
 788:	00000000 	nop
 78c:	1062001f 	beq	v1,v0,80c <deserializeMatrix+0x340>
 790:	00000000 	nop
 794:	8fc2002c 	lw	v0,44(s8)
 798:	8fc7002c 	lw	a3,44(s8)
 79c:	8fc30054 	lw	v1,84(s8)
 7a0:	00000000 	nop
 7a4:	afa30010 	sw	v1,16(sp)
 7a8:	8f840000 	lw	a0,0(gp)
 7ac:	00000000 	nop
 7b0:	248400b0 	addiu	a0,a0,176
 7b4:	8f850000 	lw	a1,0(gp)
 7b8:	00000000 	nop
 7bc:	24a50104 	addiu	a1,a1,260
 7c0:	8c460000 	lw	a2,0(v0)
 7c4:	8ce70004 	lw	a3,4(a3)
 7c8:	8f990000 	lw	t9,0(gp)
 7cc:	00000000 	nop
 7d0:	0320f809 	jalr	t9
 7d4:	00000000 	nop
 7d8:	8fdc0018 	lw	gp,24(s8)
 7dc:	8fc4002c 	lw	a0,44(s8)
 7e0:	8f990000 	lw	t9,0(gp)
 7e4:	00000000 	nop
 7e8:	0320f809 	jalr	t9
 7ec:	00000000 	nop
 7f0:	8fdc0018 	lw	gp,24(s8)
 7f4:	24040001 	li	a0,1
 7f8:	8f990000 	lw	t9,0(gp)
 7fc:	00000000 	nop
 800:	0320f809 	jalr	t9
 804:	00000000 	nop
 808:	8fdc0018 	lw	gp,24(s8)
 80c:	8fc2002c 	lw	v0,44(s8)
 810:	03c0e821 	move	sp,s8
 814:	8fbf004c 	lw	ra,76(sp)
 818:	8fbe0048 	lw	s8,72(sp)
 81c:	8fb00040 	lw	s0,64(sp)
 820:	03e00008 	jr	ra
 824:	27bd0050 	addiu	sp,sp,80

00000828 <nuevaMatriz>:
 828:	3c1c0000 	lui	gp,0x0
 82c:	279c0000 	addiu	gp,gp,0
 830:	0399e021 	addu	gp,gp,t9
 834:	27bdffd0 	addiu	sp,sp,-48
 838:	afbc0010 	sw	gp,16(sp)
 83c:	afbf002c 	sw	ra,44(sp)
 840:	afbe0028 	sw	s8,40(sp)
 844:	afbc0024 	sw	gp,36(sp)
 848:	afb00020 	sw	s0,32(sp)
 84c:	03a0f021 	move	s8,sp
 850:	afc40030 	sw	a0,48(s8)
 854:	afc50034 	sw	a1,52(s8)
 858:	2404000c 	li	a0,12
 85c:	8f990000 	lw	t9,0(gp)
 860:	00000000 	nop
 864:	0320f809 	jalr	t9
 868:	00000000 	nop
 86c:	8fdc0010 	lw	gp,16(s8)
 870:	afc20018 	sw	v0,24(s8)
 874:	8fc30018 	lw	v1,24(s8)
 878:	8fc20030 	lw	v0,48(s8)
 87c:	00000000 	nop
 880:	ac620000 	sw	v0,0(v1)
 884:	8fc30018 	lw	v1,24(s8)
 888:	8fc20034 	lw	v0,52(s8)
 88c:	00000000 	nop
 890:	ac620004 	sw	v0,4(v1)
 894:	8fd00018 	lw	s0,24(s8)
 898:	8fc20018 	lw	v0,24(s8)
 89c:	00000000 	nop
 8a0:	8c420000 	lw	v0,0(v0)
 8a4:	00000000 	nop
 8a8:	00021080 	sll	v0,v0,0x2
 8ac:	00402021 	move	a0,v0
 8b0:	8f990000 	lw	t9,0(gp)
 8b4:	00000000 	nop
 8b8:	0320f809 	jalr	t9
 8bc:	00000000 	nop
 8c0:	8fdc0010 	lw	gp,16(s8)
 8c4:	ae020008 	sw	v0,8(s0)
 8c8:	afc0001c 	sw	zero,28(s8)
 8cc:	8fc20018 	lw	v0,24(s8)
 8d0:	8fc3001c 	lw	v1,28(s8)
 8d4:	8c420000 	lw	v0,0(v0)
 8d8:	00000000 	nop
 8dc:	0062102a 	slt	v0,v1,v0
 8e0:	14400003 	bnez	v0,8f0 <nuevaMatriz+0xc8>
 8e4:	00000000 	nop
 8e8:	10000019 	b	950 <nuevaMatriz+0x128>
 8ec:	00000000 	nop
 8f0:	8fc40018 	lw	a0,24(s8)
 8f4:	8fc2001c 	lw	v0,28(s8)
 8f8:	00000000 	nop
 8fc:	00021880 	sll	v1,v0,0x2
 900:	8c820008 	lw	v0,8(a0)
 904:	00000000 	nop
 908:	00628021 	addu	s0,v1,v0
 90c:	8fc20018 	lw	v0,24(s8)
 910:	00000000 	nop
 914:	8c420004 	lw	v0,4(v0)
 918:	00000000 	nop
 91c:	00021080 	sll	v0,v0,0x2
 920:	00402021 	move	a0,v0
 924:	8f990000 	lw	t9,0(gp)
 928:	00000000 	nop
 92c:	0320f809 	jalr	t9
 930:	00000000 	nop
 934:	8fdc0010 	lw	gp,16(s8)
 938:	ae020000 	sw	v0,0(s0)
 93c:	8fc2001c 	lw	v0,28(s8)
 940:	00000000 	nop
 944:	24420001 	addiu	v0,v0,1
 948:	1000ffe0 	b	8cc <nuevaMatriz+0xa4>
 94c:	afc2001c 	sw	v0,28(s8)
 950:	8fc20018 	lw	v0,24(s8)
 954:	03c0e821 	move	sp,s8
 958:	8fbf002c 	lw	ra,44(sp)
 95c:	8fbe0028 	lw	s8,40(sp)
 960:	8fb00020 	lw	s0,32(sp)
 964:	03e00008 	jr	ra
 968:	27bd0030 	addiu	sp,sp,48

0000096c <procesarMatrices>:
 96c:	3c1c0000 	lui	gp,0x0
 970:	279c0000 	addiu	gp,gp,0
 974:	0399e021 	addu	gp,gp,t9
 978:	27bdffc0 	addiu	sp,sp,-64
 97c:	afbc0010 	sw	gp,16(sp)
 980:	afbf0038 	sw	ra,56(sp)
 984:	afbe0034 	sw	s8,52(sp)
 988:	afbc0030 	sw	gp,48(sp)
 98c:	03a0f021 	move	s8,sp
 990:	afc40040 	sw	a0,64(s8)
 994:	afc50044 	sw	a1,68(s8)
 998:	afc00018 	sw	zero,24(s8)
 99c:	8fc20040 	lw	v0,64(s8)
 9a0:	8fc30044 	lw	v1,68(s8)
 9a4:	8c440004 	lw	a0,4(v0)
 9a8:	8c620000 	lw	v0,0(v1)
 9ac:	00000000 	nop
 9b0:	1482006b 	bne	a0,v0,b60 <procesarMatrices+0x1f4>
 9b4:	00000000 	nop
 9b8:	8fc20040 	lw	v0,64(s8)
 9bc:	8fc30044 	lw	v1,68(s8)
 9c0:	8c440000 	lw	a0,0(v0)
 9c4:	8c650004 	lw	a1,4(v1)
 9c8:	8f990000 	lw	t9,0(gp)
 9cc:	00000000 	nop
 9d0:	0320f809 	jalr	t9
 9d4:	00000000 	nop
 9d8:	8fdc0010 	lw	gp,16(s8)
 9dc:	afc20018 	sw	v0,24(s8)
 9e0:	afc0001c 	sw	zero,28(s8)
 9e4:	8fc20040 	lw	v0,64(s8)
 9e8:	8fc3001c 	lw	v1,28(s8)
 9ec:	8c420000 	lw	v0,0(v0)
 9f0:	00000000 	nop
 9f4:	0062102a 	slt	v0,v1,v0
 9f8:	14400003 	bnez	v0,a08 <procesarMatrices+0x9c>
 9fc:	00000000 	nop
 a00:	10000068 	b	ba4 <procesarMatrices+0x238>
 a04:	00000000 	nop
 a08:	afc00020 	sw	zero,32(s8)
 a0c:	8fc20044 	lw	v0,68(s8)
 a10:	8fc30020 	lw	v1,32(s8)
 a14:	8c420004 	lw	v0,4(v0)
 a18:	00000000 	nop
 a1c:	0062102a 	slt	v0,v1,v0
 a20:	14400003 	bnez	v0,a30 <procesarMatrices+0xc4>
 a24:	00000000 	nop
 a28:	10000048 	b	b4c <procesarMatrices+0x1e0>
 a2c:	00000000 	nop
 a30:	afc00028 	sw	zero,40(s8)
 a34:	afc00024 	sw	zero,36(s8)
 a38:	8fc20040 	lw	v0,64(s8)
 a3c:	8fc30024 	lw	v1,36(s8)
 a40:	8c420004 	lw	v0,4(v0)
 a44:	00000000 	nop
 a48:	0062102a 	slt	v0,v1,v0
 a4c:	14400003 	bnez	v0,a5c <procesarMatrices+0xf0>
 a50:	00000000 	nop
 a54:	10000028 	b	af8 <procesarMatrices+0x18c>
 a58:	00000000 	nop
 a5c:	8fc40040 	lw	a0,64(s8)
 a60:	8fc2001c 	lw	v0,28(s8)
 a64:	00000000 	nop
 a68:	00021880 	sll	v1,v0,0x2
 a6c:	8c820008 	lw	v0,8(a0)
 a70:	00000000 	nop
 a74:	00622021 	addu	a0,v1,v0
 a78:	8fc20024 	lw	v0,36(s8)
 a7c:	00000000 	nop
 a80:	00021880 	sll	v1,v0,0x2
 a84:	8c820000 	lw	v0,0(a0)
 a88:	00000000 	nop
 a8c:	00622821 	addu	a1,v1,v0
 a90:	8fc40044 	lw	a0,68(s8)
 a94:	8fc20024 	lw	v0,36(s8)
 a98:	00000000 	nop
 a9c:	00021880 	sll	v1,v0,0x2
 aa0:	8c820008 	lw	v0,8(a0)
 aa4:	00000000 	nop
 aa8:	00622021 	addu	a0,v1,v0
 aac:	8fc20020 	lw	v0,32(s8)
 ab0:	00000000 	nop
 ab4:	00021880 	sll	v1,v0,0x2
 ab8:	8c820000 	lw	v0,0(a0)
 abc:	00000000 	nop
 ac0:	00621021 	addu	v0,v1,v0
 ac4:	c4a20000 	lwc1	$f2,0(a1)
 ac8:	c4400000 	lwc1	$f0,0(v0)
 acc:	00000000 	nop
 ad0:	46001082 	mul.s	$f2,$f2,$f0
 ad4:	c7c00028 	lwc1	$f0,40(s8)
 ad8:	00000000 	nop
 adc:	46020000 	add.s	$f0,$f0,$f2
 ae0:	e7c00028 	swc1	$f0,40(s8)
 ae4:	8fc20024 	lw	v0,36(s8)
 ae8:	00000000 	nop
 aec:	24420001 	addiu	v0,v0,1
 af0:	1000ffd1 	b	a38 <procesarMatrices+0xcc>
 af4:	afc20024 	sw	v0,36(s8)
 af8:	8fc40018 	lw	a0,24(s8)
 afc:	8fc2001c 	lw	v0,28(s8)
 b00:	00000000 	nop
 b04:	00021880 	sll	v1,v0,0x2
 b08:	8c820008 	lw	v0,8(a0)
 b0c:	00000000 	nop
 b10:	00622021 	addu	a0,v1,v0
 b14:	8fc20020 	lw	v0,32(s8)
 b18:	00000000 	nop
 b1c:	00021880 	sll	v1,v0,0x2
 b20:	8c820000 	lw	v0,0(a0)
 b24:	00000000 	nop
 b28:	00621021 	addu	v0,v1,v0
 b2c:	c7c00028 	lwc1	$f0,40(s8)
 b30:	00000000 	nop
 b34:	e4400000 	swc1	$f0,0(v0)
 b38:	8fc20020 	lw	v0,32(s8)
 b3c:	00000000 	nop
 b40:	24420001 	addiu	v0,v0,1
 b44:	1000ffb1 	b	a0c <procesarMatrices+0xa0>
 b48:	afc20020 	sw	v0,32(s8)
 b4c:	8fc2001c 	lw	v0,28(s8)
 b50:	00000000 	nop
 b54:	24420001 	addiu	v0,v0,1
 b58:	1000ffa2 	b	9e4 <procesarMatrices+0x78>
 b5c:	afc2001c 	sw	v0,28(s8)
 b60:	8f840000 	lw	a0,0(gp)
 b64:	00000000 	nop
 b68:	248400b0 	addiu	a0,a0,176
 b6c:	8f850000 	lw	a1,0(gp)
 b70:	00000000 	nop
 b74:	24a5013c 	addiu	a1,a1,316
 b78:	8f990000 	lw	t9,0(gp)
 b7c:	00000000 	nop
 b80:	0320f809 	jalr	t9
 b84:	00000000 	nop
 b88:	8fdc0010 	lw	gp,16(s8)
 b8c:	24040001 	li	a0,1
 b90:	8f990000 	lw	t9,0(gp)
 b94:	00000000 	nop
 b98:	0320f809 	jalr	t9
 b9c:	00000000 	nop
 ba0:	8fdc0010 	lw	gp,16(s8)
 ba4:	8fc20018 	lw	v0,24(s8)
 ba8:	03c0e821 	move	sp,s8
 bac:	8fbf0038 	lw	ra,56(sp)
 bb0:	8fbe0034 	lw	s8,52(sp)
 bb4:	03e00008 	jr	ra
 bb8:	27bd0040 	addiu	sp,sp,64
 bbc:	00000000 	nop
