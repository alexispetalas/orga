
tp0.o:     file format elf32-tradlittlemips

Disassembly of section .text:

00000000 <main>:
   0:	3c1c0000 	lui	gp,0x0
   4:	279c0000 	addiu	gp,gp,0
   8:	0399e021 	addu	gp,gp,t9
   c:	27bdffd0 	addiu	sp,sp,-48
  10:	afbc0010 	sw	gp,16(sp)
  14:	afbf0028 	sw	ra,40(sp)
  18:	afbe0024 	sw	s8,36(sp)
  1c:	afbc0020 	sw	gp,32(sp)
  20:	03a0f021 	move	s8,sp
  24:	afc40030 	sw	a0,48(s8)
  28:	afc50034 	sw	a1,52(s8)
  2c:	8fc40030 	lw	a0,48(s8)
  30:	8fc50034 	lw	a1,52(s8)
  34:	8f990000 	lw	t9,0(gp)
  38:	00000000 	nop
  3c:	0320f809 	jalr	t9
  40:	00000000 	nop
  44:	8fdc0010 	lw	gp,16(s8)
  48:	afc20018 	sw	v0,24(s8)
  4c:	8fc20018 	lw	v0,24(s8)
  50:	00000000 	nop
  54:	14400008 	bnez	v0,78 <main+0x78>
  58:	00000000 	nop
  5c:	8f990000 	lw	t9,0(gp)
  60:	00000000 	nop
  64:	0320f809 	jalr	t9
  68:	00000000 	nop
  6c:	8fdc0010 	lw	gp,16(s8)
  70:	1000000d 	b	a8 <main+0xa8>
  74:	afc20018 	sw	v0,24(s8)
  78:	8fc30018 	lw	v1,24(s8)
  7c:	24020001 	li	v0,1
  80:	14620009 	bne	v1,v0,a8 <main+0xa8>
  84:	00000000 	nop
  88:	8f840000 	lw	a0,0(gp)
  8c:	00000000 	nop
  90:	24840000 	addiu	a0,a0,0
  94:	8f990000 	lw	t9,0(gp)
  98:	00000000 	nop
  9c:	0320f809 	jalr	t9
  a0:	00000000 	nop
  a4:	8fdc0010 	lw	gp,16(s8)
  a8:	00001021 	move	v0,zero
  ac:	03c0e821 	move	sp,s8
  b0:	8fbf0028 	lw	ra,40(sp)
  b4:	8fbe0024 	lw	s8,36(sp)
  b8:	03e00008 	jr	ra
  bc:	27bd0030 	addiu	sp,sp,48
