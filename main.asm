
main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	4d c0       	rjmp	.+154    	; 0x9c <__ctors_end>
   2:	d4 c1       	rjmp	.+936    	; 0x3ac <__vector_1>
   4:	67 c0       	rjmp	.+206    	; 0xd4 <__bad_interrupt>
   6:	66 c0       	rjmp	.+204    	; 0xd4 <__bad_interrupt>
   8:	65 c0       	rjmp	.+202    	; 0xd4 <__bad_interrupt>
   a:	64 c0       	rjmp	.+200    	; 0xd4 <__bad_interrupt>
   c:	63 c0       	rjmp	.+198    	; 0xd4 <__bad_interrupt>
   e:	62 c0       	rjmp	.+196    	; 0xd4 <__bad_interrupt>
  10:	61 c0       	rjmp	.+194    	; 0xd4 <__bad_interrupt>
  12:	60 c0       	rjmp	.+192    	; 0xd4 <__bad_interrupt>
  14:	5f c0       	rjmp	.+190    	; 0xd4 <__bad_interrupt>
  16:	5e c0       	rjmp	.+188    	; 0xd4 <__bad_interrupt>
  18:	5d c0       	rjmp	.+186    	; 0xd4 <__bad_interrupt>
  1a:	5c c0       	rjmp	.+184    	; 0xd4 <__bad_interrupt>
  1c:	5b c0       	rjmp	.+182    	; 0xd4 <__bad_interrupt>

0000001e <__trampolines_end>:
  1e:	09 02       	muls	r16, r25
  20:	22 00       	.word	0x0022	; ????
  22:	01 01       	movw	r0, r2
  24:	00 80       	ld	r0, Z
  26:	19 09       	sbc	r17, r9
  28:	04 00       	.word	0x0004	; ????
  2a:	00 01       	movw	r0, r0
  2c:	03 00       	.word	0x0003	; ????
  2e:	00 00       	nop
  30:	09 21       	and	r16, r9
  32:	01 01       	movw	r0, r2
  34:	00 01       	movw	r0, r0
  36:	22 2a       	or	r2, r18
  38:	00 07       	cpc	r16, r16
  3a:	05 81       	ldd	r16, Z+5	; 0x05
  3c:	03 08       	sbc	r0, r3
  3e:	00 0a       	sbc	r0, r16

00000040 <usbDescriptorDevice>:
  40:	12 01 10 01 00 00 00 08 42 42 31 e1 00 01 01 02     ........BB1.....
  50:	00 01                                               ..

00000052 <usbDescriptorStringDevice>:
  52:	12 03 53 00 4e 00 45 00 53 00 20 00 50 00 61 00     ..S.N.E.S. .P.a.
  62:	64 00                                               d.

00000064 <usbDescriptorStringVendor>:
  64:	0a 03 61 00 62 00 62 00 65 00                       ..a.b.b.e.

0000006e <usbDescriptorString0>:
  6e:	04 03 09 04                                         ....

00000072 <usbDescriptorHidReport>:
  72:	05 01 09 05 a1 01 09 01 a1 00 09 30 09 31 15 00     ...........0.1..
  82:	25 02 75 02 95 02 81 02 c0 05 09 19 01 29 08 15     %.u..........)..
  92:	00 25 01 75 01 95 08 81 02 c0                       .%.u......

0000009c <__ctors_end>:
  9c:	11 24       	eor	r1, r1
  9e:	1f be       	out	0x3f, r1	; 63
  a0:	cf e5       	ldi	r28, 0x5F	; 95
  a2:	d1 e0       	ldi	r29, 0x01	; 1
  a4:	de bf       	out	0x3e, r29	; 62
  a6:	cd bf       	out	0x3d, r28	; 61

000000a8 <__do_copy_data>:
  a8:	10 e0       	ldi	r17, 0x00	; 0
  aa:	a0 e6       	ldi	r26, 0x60	; 96
  ac:	b0 e0       	ldi	r27, 0x00	; 0
  ae:	e2 e2       	ldi	r30, 0x22	; 34
  b0:	f9 e0       	ldi	r31, 0x09	; 9
  b2:	03 c0       	rjmp	.+6      	; 0xba <__do_copy_data+0x12>
  b4:	c8 95       	lpm
  b6:	31 96       	adiw	r30, 0x01	; 1
  b8:	0d 92       	st	X+, r0
  ba:	a2 36       	cpi	r26, 0x62	; 98
  bc:	b1 07       	cpc	r27, r17
  be:	d1 f7       	brne	.-12     	; 0xb4 <__do_copy_data+0xc>

000000c0 <__do_clear_bss>:
  c0:	10 e0       	ldi	r17, 0x00	; 0
  c2:	a2 e6       	ldi	r26, 0x62	; 98
  c4:	b0 e0       	ldi	r27, 0x00	; 0
  c6:	01 c0       	rjmp	.+2      	; 0xca <.do_clear_bss_start>

000000c8 <.do_clear_bss_loop>:
  c8:	1d 92       	st	X+, r1

000000ca <.do_clear_bss_start>:
  ca:	aa 39       	cpi	r26, 0x9A	; 154
  cc:	b1 07       	cpc	r27, r17
  ce:	e1 f7       	brne	.-8      	; 0xc8 <.do_clear_bss_loop>
  d0:	e3 d3       	rcall	.+1990   	; 0x898 <main>
  d2:	25 c4       	rjmp	.+2122   	; 0x91e <_exit>

000000d4 <__bad_interrupt>:
  d4:	95 cf       	rjmp	.-214    	; 0x0 <__vectors>

000000d6 <usbSetInterrupt>:
  d6:	cf 93       	push	r28
  d8:	c6 2f       	mov	r28, r22
  da:	20 91 6f 00 	lds	r18, 0x006F
  de:	24 ff       	sbrs	r18, 4
  e0:	07 c0       	rjmp	.+14     	; 0xf0 <usbSetInterrupt+0x1a>
  e2:	30 91 70 00 	lds	r19, 0x0070
  e6:	28 e8       	ldi	r18, 0x88	; 136
  e8:	23 27       	eor	r18, r19
  ea:	20 93 70 00 	sts	0x0070, r18
  ee:	03 c0       	rjmp	.+6      	; 0xf6 <usbSetInterrupt+0x20>
  f0:	2a e5       	ldi	r18, 0x5A	; 90
  f2:	20 93 6f 00 	sts	0x006F, r18
  f6:	dc 01       	movw	r26, r24
  f8:	e1 e7       	ldi	r30, 0x71	; 113
  fa:	f0 e0       	ldi	r31, 0x00	; 0
  fc:	9c 2f       	mov	r25, r28
  fe:	9e 0f       	add	r25, r30
 100:	8d 91       	ld	r24, X+
 102:	81 93       	st	Z+, r24
 104:	89 2f       	mov	r24, r25
 106:	8e 1b       	sub	r24, r30
 108:	18 16       	cp	r1, r24
 10a:	d4 f3       	brlt	.-12     	; 0x100 <usbSetInterrupt+0x2a>
 10c:	6c 2f       	mov	r22, r28
 10e:	81 e7       	ldi	r24, 0x71	; 113
 110:	90 e0       	ldi	r25, 0x00	; 0
 112:	35 d1       	rcall	.+618    	; 0x37e <usbCrc16Append>
 114:	cc 5f       	subi	r28, 0xFC	; 252
 116:	c0 93 6f 00 	sts	0x006F, r28
 11a:	cf 91       	pop	r28
 11c:	08 95       	ret

0000011e <usbPoll>:
 11e:	cf 93       	push	r28
 120:	df 93       	push	r29
 122:	80 91 80 00 	lds	r24, 0x0080
 126:	83 50       	subi	r24, 0x03	; 3
 128:	87 fd       	sbrc	r24, 7
 12a:	a3 c0       	rjmp	.+326    	; 0x272 <__stack+0x113>
 12c:	90 91 7d 00 	lds	r25, 0x007D
 130:	20 91 7c 00 	lds	r18, 0x007C
 134:	2d 32       	cpi	r18, 0x2D	; 45
 136:	09 f0       	breq	.+2      	; 0x13a <usbPoll+0x1c>
 138:	9a c0       	rjmp	.+308    	; 0x26e <__stack+0x10f>
 13a:	88 30       	cpi	r24, 0x08	; 8
 13c:	09 f0       	breq	.+2      	; 0x140 <usbPoll+0x22>
 13e:	97 c0       	rjmp	.+302    	; 0x26e <__stack+0x10f>
 140:	cc e0       	ldi	r28, 0x0C	; 12
 142:	d0 e0       	ldi	r29, 0x00	; 0
 144:	c9 1b       	sub	r28, r25
 146:	d1 09       	sbc	r29, r1
 148:	cc 57       	subi	r28, 0x7C	; 124
 14a:	df 4f       	sbci	r29, 0xFF	; 255
 14c:	83 ec       	ldi	r24, 0xC3	; 195
 14e:	80 93 64 00 	sts	0x0064, r24
 152:	8a e5       	ldi	r24, 0x5A	; 90
 154:	80 93 61 00 	sts	0x0061, r24
 158:	10 92 63 00 	sts	0x0063, r1
 15c:	88 81       	ld	r24, Y
 15e:	80 76       	andi	r24, 0x60	; 96
 160:	19 f0       	breq	.+6      	; 0x168 <__stack+0x9>
 162:	ce 01       	movw	r24, r28
 164:	81 d2       	rcall	.+1282   	; 0x668 <usbFunctionSetup>
 166:	7a c0       	rjmp	.+244    	; 0x25c <__stack+0xfd>
 168:	9a 81       	ldd	r25, Y+2	; 0x02
 16a:	10 92 6d 00 	sts	0x006D, r1
 16e:	89 81       	ldd	r24, Y+1	; 0x01
 170:	81 11       	cpse	r24, r1
 172:	06 c0       	rjmp	.+12     	; 0x180 <__stack+0x21>
 174:	10 92 6e 00 	sts	0x006E, r1
 178:	2d e6       	ldi	r18, 0x6D	; 109
 17a:	30 e0       	ldi	r19, 0x00	; 0
 17c:	82 e0       	ldi	r24, 0x02	; 2
 17e:	6a c0       	rjmp	.+212    	; 0x254 <__stack+0xf5>
 180:	85 30       	cpi	r24, 0x05	; 5
 182:	19 f4       	brne	.+6      	; 0x18a <__stack+0x2b>
 184:	90 93 81 00 	sts	0x0081, r25
 188:	62 c0       	rjmp	.+196    	; 0x24e <__stack+0xef>
 18a:	86 30       	cpi	r24, 0x06	; 6
 18c:	09 f0       	breq	.+2      	; 0x190 <__stack+0x31>
 18e:	49 c0       	rjmp	.+146    	; 0x222 <__stack+0xc3>
 190:	8b 81       	ldd	r24, Y+3	; 0x03
 192:	81 30       	cpi	r24, 0x01	; 1
 194:	19 f4       	brne	.+6      	; 0x19c <__stack+0x3d>
 196:	80 e4       	ldi	r24, 0x40	; 64
 198:	90 e0       	ldi	r25, 0x00	; 0
 19a:	24 c0       	rjmp	.+72     	; 0x1e4 <__stack+0x85>
 19c:	82 30       	cpi	r24, 0x02	; 2
 19e:	41 f4       	brne	.+16     	; 0x1b0 <__stack+0x51>
 1a0:	8e e1       	ldi	r24, 0x1E	; 30
 1a2:	90 e0       	ldi	r25, 0x00	; 0
 1a4:	90 93 7f 00 	sts	0x007F, r25
 1a8:	80 93 7e 00 	sts	0x007E, r24
 1ac:	82 e2       	ldi	r24, 0x22	; 34
 1ae:	35 c0       	rjmp	.+106    	; 0x21a <__stack+0xbb>
 1b0:	83 30       	cpi	r24, 0x03	; 3
 1b2:	f1 f4       	brne	.+60     	; 0x1f0 <__stack+0x91>
 1b4:	91 11       	cpse	r25, r1
 1b6:	08 c0       	rjmp	.+16     	; 0x1c8 <__stack+0x69>
 1b8:	8e e6       	ldi	r24, 0x6E	; 110
 1ba:	90 e0       	ldi	r25, 0x00	; 0
 1bc:	90 93 7f 00 	sts	0x007F, r25
 1c0:	80 93 7e 00 	sts	0x007E, r24
 1c4:	84 e0       	ldi	r24, 0x04	; 4
 1c6:	29 c0       	rjmp	.+82     	; 0x21a <__stack+0xbb>
 1c8:	91 30       	cpi	r25, 0x01	; 1
 1ca:	41 f4       	brne	.+16     	; 0x1dc <__stack+0x7d>
 1cc:	84 e6       	ldi	r24, 0x64	; 100
 1ce:	90 e0       	ldi	r25, 0x00	; 0
 1d0:	90 93 7f 00 	sts	0x007F, r25
 1d4:	80 93 7e 00 	sts	0x007E, r24
 1d8:	8a e0       	ldi	r24, 0x0A	; 10
 1da:	1f c0       	rjmp	.+62     	; 0x21a <__stack+0xbb>
 1dc:	92 30       	cpi	r25, 0x02	; 2
 1de:	e1 f4       	brne	.+56     	; 0x218 <__stack+0xb9>
 1e0:	82 e5       	ldi	r24, 0x52	; 82
 1e2:	90 e0       	ldi	r25, 0x00	; 0
 1e4:	90 93 7f 00 	sts	0x007F, r25
 1e8:	80 93 7e 00 	sts	0x007E, r24
 1ec:	82 e1       	ldi	r24, 0x12	; 18
 1ee:	15 c0       	rjmp	.+42     	; 0x21a <__stack+0xbb>
 1f0:	81 32       	cpi	r24, 0x21	; 33
 1f2:	41 f4       	brne	.+16     	; 0x204 <__stack+0xa5>
 1f4:	80 e3       	ldi	r24, 0x30	; 48
 1f6:	90 e0       	ldi	r25, 0x00	; 0
 1f8:	90 93 7f 00 	sts	0x007F, r25
 1fc:	80 93 7e 00 	sts	0x007E, r24
 200:	89 e0       	ldi	r24, 0x09	; 9
 202:	0b c0       	rjmp	.+22     	; 0x21a <__stack+0xbb>
 204:	82 32       	cpi	r24, 0x22	; 34
 206:	41 f4       	brne	.+16     	; 0x218 <__stack+0xb9>
 208:	82 e7       	ldi	r24, 0x72	; 114
 20a:	90 e0       	ldi	r25, 0x00	; 0
 20c:	90 93 7f 00 	sts	0x007F, r25
 210:	80 93 7e 00 	sts	0x007E, r24
 214:	8a e2       	ldi	r24, 0x2A	; 42
 216:	01 c0       	rjmp	.+2      	; 0x21a <__stack+0xbb>
 218:	80 e0       	ldi	r24, 0x00	; 0
 21a:	90 e4       	ldi	r25, 0x40	; 64
 21c:	90 93 63 00 	sts	0x0063, r25
 220:	1d c0       	rjmp	.+58     	; 0x25c <__stack+0xfd>
 222:	88 30       	cpi	r24, 0x08	; 8
 224:	69 f0       	breq	.+26     	; 0x240 <__stack+0xe1>
 226:	89 30       	cpi	r24, 0x09	; 9
 228:	19 f4       	brne	.+6      	; 0x230 <__stack+0xd1>
 22a:	90 93 83 00 	sts	0x0083, r25
 22e:	0f c0       	rjmp	.+30     	; 0x24e <__stack+0xef>
 230:	8a 30       	cpi	r24, 0x0A	; 10
 232:	49 f0       	breq	.+18     	; 0x246 <__stack+0xe7>
 234:	8b 30       	cpi	r24, 0x0B	; 11
 236:	59 f4       	brne	.+22     	; 0x24e <__stack+0xef>
 238:	8b e4       	ldi	r24, 0x4B	; 75
 23a:	80 93 70 00 	sts	0x0070, r24
 23e:	07 c0       	rjmp	.+14     	; 0x24e <__stack+0xef>
 240:	23 e8       	ldi	r18, 0x83	; 131
 242:	30 e0       	ldi	r19, 0x00	; 0
 244:	02 c0       	rjmp	.+4      	; 0x24a <__stack+0xeb>
 246:	2d e6       	ldi	r18, 0x6D	; 109
 248:	30 e0       	ldi	r19, 0x00	; 0
 24a:	81 e0       	ldi	r24, 0x01	; 1
 24c:	03 c0       	rjmp	.+6      	; 0x254 <__stack+0xf5>
 24e:	2d e6       	ldi	r18, 0x6D	; 109
 250:	30 e0       	ldi	r19, 0x00	; 0
 252:	80 e0       	ldi	r24, 0x00	; 0
 254:	30 93 7f 00 	sts	0x007F, r19
 258:	20 93 7e 00 	sts	0x007E, r18
 25c:	9f 81       	ldd	r25, Y+7	; 0x07
 25e:	91 11       	cpse	r25, r1
 260:	04 c0       	rjmp	.+8      	; 0x26a <__stack+0x10b>
 262:	9e 81       	ldd	r25, Y+6	; 0x06
 264:	98 17       	cp	r25, r24
 266:	08 f4       	brcc	.+2      	; 0x26a <__stack+0x10b>
 268:	89 2f       	mov	r24, r25
 26a:	80 93 60 00 	sts	0x0060, r24
 26e:	10 92 80 00 	sts	0x0080, r1
 272:	80 91 61 00 	lds	r24, 0x0061
 276:	84 ff       	sbrs	r24, 4
 278:	47 c0       	rjmp	.+142    	; 0x308 <__stack+0x1a9>
 27a:	80 91 60 00 	lds	r24, 0x0060
 27e:	8f 3f       	cpi	r24, 0xFF	; 255
 280:	09 f4       	brne	.+2      	; 0x284 <__stack+0x125>
 282:	42 c0       	rjmp	.+132    	; 0x308 <__stack+0x1a9>
 284:	c8 2f       	mov	r28, r24
 286:	89 30       	cpi	r24, 0x09	; 9
 288:	08 f0       	brcs	.+2      	; 0x28c <__stack+0x12d>
 28a:	c8 e0       	ldi	r28, 0x08	; 8
 28c:	8c 1b       	sub	r24, r28
 28e:	80 93 60 00 	sts	0x0060, r24
 292:	90 91 64 00 	lds	r25, 0x0064
 296:	88 e8       	ldi	r24, 0x88	; 136
 298:	89 27       	eor	r24, r25
 29a:	80 93 64 00 	sts	0x0064, r24
 29e:	cc 23       	and	r28, r28
 2a0:	39 f1       	breq	.+78     	; 0x2f0 <__stack+0x191>
 2a2:	80 91 7e 00 	lds	r24, 0x007E
 2a6:	90 91 7f 00 	lds	r25, 0x007F
 2aa:	20 91 63 00 	lds	r18, 0x0063
 2ae:	26 ff       	sbrs	r18, 6
 2b0:	0b c0       	rjmp	.+22     	; 0x2c8 <__stack+0x169>
 2b2:	a5 e6       	ldi	r26, 0x65	; 101
 2b4:	b0 e0       	ldi	r27, 0x00	; 0
 2b6:	fc 01       	movw	r30, r24
 2b8:	2c 2f       	mov	r18, r28
 2ba:	28 0f       	add	r18, r24
 2bc:	34 91       	lpm	r19, Z
 2be:	3d 93       	st	X+, r19
 2c0:	31 96       	adiw	r30, 0x01	; 1
 2c2:	2e 13       	cpse	r18, r30
 2c4:	fb cf       	rjmp	.-10     	; 0x2bc <__stack+0x15d>
 2c6:	09 c0       	rjmp	.+18     	; 0x2da <__stack+0x17b>
 2c8:	dc 01       	movw	r26, r24
 2ca:	e5 e6       	ldi	r30, 0x65	; 101
 2cc:	f0 e0       	ldi	r31, 0x00	; 0
 2ce:	2c 2f       	mov	r18, r28
 2d0:	2e 0f       	add	r18, r30
 2d2:	3d 91       	ld	r19, X+
 2d4:	31 93       	st	Z+, r19
 2d6:	2e 13       	cpse	r18, r30
 2d8:	fc cf       	rjmp	.-8      	; 0x2d2 <__stack+0x173>
 2da:	2f ef       	ldi	r18, 0xFF	; 255
 2dc:	2c 0f       	add	r18, r28
 2de:	30 e0       	ldi	r19, 0x00	; 0
 2e0:	2f 5f       	subi	r18, 0xFF	; 255
 2e2:	3f 4f       	sbci	r19, 0xFF	; 255
 2e4:	82 0f       	add	r24, r18
 2e6:	93 1f       	adc	r25, r19
 2e8:	90 93 7f 00 	sts	0x007F, r25
 2ec:	80 93 7e 00 	sts	0x007E, r24
 2f0:	6c 2f       	mov	r22, r28
 2f2:	85 e6       	ldi	r24, 0x65	; 101
 2f4:	90 e0       	ldi	r25, 0x00	; 0
 2f6:	43 d0       	rcall	.+134    	; 0x37e <usbCrc16Append>
 2f8:	cc 5f       	subi	r28, 0xFC	; 252
 2fa:	cc 30       	cpi	r28, 0x0C	; 12
 2fc:	19 f0       	breq	.+6      	; 0x304 <__stack+0x1a5>
 2fe:	8f ef       	ldi	r24, 0xFF	; 255
 300:	80 93 60 00 	sts	0x0060, r24
 304:	c0 93 61 00 	sts	0x0061, r28
 308:	84 e1       	ldi	r24, 0x14	; 20
 30a:	96 b3       	in	r25, 0x16	; 22
 30c:	96 70       	andi	r25, 0x06	; 6
 30e:	31 f4       	brne	.+12     	; 0x31c <__stack+0x1bd>
 310:	81 50       	subi	r24, 0x01	; 1
 312:	d9 f7       	brne	.-10     	; 0x30a <__stack+0x1ab>
 314:	10 92 81 00 	sts	0x0081, r1
 318:	10 92 7b 00 	sts	0x007B, r1
 31c:	c1 e0       	ldi	r28, 0x01	; 1
 31e:	81 11       	cpse	r24, r1
 320:	c0 e0       	ldi	r28, 0x00	; 0
 322:	80 91 62 00 	lds	r24, 0x0062
 326:	8c 17       	cp	r24, r28
 328:	29 f0       	breq	.+10     	; 0x334 <__stack+0x1d5>
 32a:	c1 11       	cpse	r28, r1
 32c:	01 c0       	rjmp	.+2      	; 0x330 <__stack+0x1d1>
 32e:	9e d1       	rcall	.+828    	; 0x66c <hadUsbReset>
 330:	c0 93 62 00 	sts	0x0062, r28
 334:	df 91       	pop	r29
 336:	cf 91       	pop	r28
 338:	08 95       	ret

0000033a <usbInit>:
 33a:	85 b7       	in	r24, 0x35	; 53
 33c:	82 60       	ori	r24, 0x02	; 2
 33e:	85 bf       	out	0x35, r24	; 53
 340:	8b b7       	in	r24, 0x3b	; 59
 342:	80 64       	ori	r24, 0x40	; 64
 344:	8b bf       	out	0x3b, r24	; 59
 346:	ef e6       	ldi	r30, 0x6F	; 111
 348:	f0 e0       	ldi	r31, 0x00	; 0
 34a:	8b e4       	ldi	r24, 0x4B	; 75
 34c:	81 83       	std	Z+1, r24	; 0x01
 34e:	8a e5       	ldi	r24, 0x5A	; 90
 350:	80 83       	st	Z, r24
 352:	08 95       	ret

00000354 <usbCrc16>:
 354:	a8 2f       	mov	r26, r24
 356:	b9 2f       	mov	r27, r25
 358:	80 e0       	ldi	r24, 0x00	; 0
 35a:	90 e0       	ldi	r25, 0x00	; 0
 35c:	41 e0       	ldi	r20, 0x01	; 1
 35e:	50 ea       	ldi	r21, 0xA0	; 160
 360:	60 95       	com	r22
 362:	30 e0       	ldi	r19, 0x00	; 0
 364:	09 c0       	rjmp	.+18     	; 0x378 <usbCrcLoopEntry>

00000366 <usbCrcByteLoop>:
 366:	2d 91       	ld	r18, X+
 368:	82 27       	eor	r24, r18

0000036a <usbCrcBitLoop>:
 36a:	97 95       	ror	r25
 36c:	87 95       	ror	r24
 36e:	10 f0       	brcs	.+4      	; 0x374 <usbCrcNoXor>
 370:	84 27       	eor	r24, r20
 372:	95 27       	eor	r25, r21

00000374 <usbCrcNoXor>:
 374:	30 5e       	subi	r19, 0xE0	; 224
 376:	c8 f3       	brcs	.-14     	; 0x36a <usbCrcBitLoop>

00000378 <usbCrcLoopEntry>:
 378:	6f 5f       	subi	r22, 0xFF	; 255
 37a:	a8 f3       	brcs	.-22     	; 0x366 <usbCrcByteLoop>

0000037c <usbCrcReady>:
 37c:	08 95       	ret

0000037e <usbCrc16Append>:
 37e:	ea df       	rcall	.-44     	; 0x354 <usbCrc16>
 380:	8d 93       	st	X+, r24
 382:	9d 93       	st	X+, r25
 384:	08 95       	ret

00000386 <usbMeasureFrameLength>:
 386:	a6 e0       	ldi	r26, 0x06	; 6
 388:	88 27       	eor	r24, r24
 38a:	99 27       	eor	r25, r25

0000038c <usbMFTime16>:
 38c:	aa 95       	dec	r26
 38e:	69 f0       	breq	.+26     	; 0x3aa <usbMFTimeout>

00000390 <usbMFWaitStrobe>:
 390:	01 97       	sbiw	r24, 0x01	; 1
 392:	e1 f3       	breq	.-8      	; 0x38c <usbMFTime16>
 394:	b1 99       	sbic	0x16, 1	; 22
 396:	fc cf       	rjmp	.-8      	; 0x390 <usbMFWaitStrobe>

00000398 <usbMFWaitIdle>:
 398:	b1 9b       	sbis	0x16, 1	; 22
 39a:	fe cf       	rjmp	.-4      	; 0x398 <usbMFWaitIdle>
 39c:	81 e0       	ldi	r24, 0x01	; 1
 39e:	99 27       	eor	r25, r25

000003a0 <usbMFWaitLoop>:
 3a0:	a6 b3       	in	r26, 0x16	; 22
 3a2:	01 96       	adiw	r24, 0x01	; 1
 3a4:	11 f0       	breq	.+4      	; 0x3aa <usbMFTimeout>
 3a6:	a6 70       	andi	r26, 0x06	; 6
 3a8:	d9 f7       	brne	.-10     	; 0x3a0 <usbMFWaitLoop>

000003aa <usbMFTimeout>:
 3aa:	08 95       	ret

000003ac <__vector_1>:
 3ac:	cf 93       	push	r28
 3ae:	cf b7       	in	r28, 0x3f	; 63
 3b0:	cf 93       	push	r28

000003b2 <waitForJ>:
 3b2:	c3 95       	inc	r28
 3b4:	b1 9b       	sbis	0x16, 1	; 22
 3b6:	e9 f7       	brne	.-6      	; 0x3b2 <waitForJ>

000003b8 <waitForK>:
 3b8:	b1 9b       	sbis	0x16, 1	; 22
 3ba:	0b c0       	rjmp	.+22     	; 0x3d2 <foundK>
 3bc:	b1 9b       	sbis	0x16, 1	; 22
 3be:	09 c0       	rjmp	.+18     	; 0x3d2 <foundK>
 3c0:	b1 9b       	sbis	0x16, 1	; 22
 3c2:	07 c0       	rjmp	.+14     	; 0x3d2 <foundK>
 3c4:	b1 9b       	sbis	0x16, 1	; 22
 3c6:	05 c0       	rjmp	.+10     	; 0x3d2 <foundK>
 3c8:	b1 9b       	sbis	0x16, 1	; 22
 3ca:	03 c0       	rjmp	.+6      	; 0x3d2 <foundK>
 3cc:	b1 9b       	sbis	0x16, 1	; 22
 3ce:	01 c0       	rjmp	.+2      	; 0x3d2 <foundK>
 3d0:	d5 c0       	rjmp	.+426    	; 0x57c <sofError>

000003d2 <foundK>:
 3d2:	0f 92       	push	r0
 3d4:	df 93       	push	r29
 3d6:	c0 91 7d 00 	lds	r28, 0x007D
 3da:	dd 27       	eor	r29, r29
 3dc:	cc 57       	subi	r28, 0x7C	; 124
 3de:	df 4f       	sbci	r29, 0xFF	; 255
 3e0:	01 2e       	mov	r0, r17
 3e2:	b1 9b       	sbis	0x16, 1	; 22
 3e4:	03 c0       	rjmp	.+6      	; 0x3ec <haveTwoBitsK>
 3e6:	df 91       	pop	r29
 3e8:	0f 90       	pop	r0
 3ea:	e6 cf       	rjmp	.-52     	; 0x3b8 <waitForK>

000003ec <haveTwoBitsK>:
 3ec:	2f 93       	push	r18
 3ee:	0f 93       	push	r16
 3f0:	1f 93       	push	r17
 3f2:	4f 93       	push	r20
 3f4:	2f ef       	ldi	r18, 0xFF	; 255
 3f6:	4f 6f       	ori	r20, 0xFF	; 255
 3f8:	06 b3       	in	r16, 0x16	; 22
 3fa:	01 fb       	bst	r16, 1
 3fc:	20 f9       	bld	r18, 0
 3fe:	5f 93       	push	r21
 400:	3f 93       	push	r19
 402:	50 e0       	ldi	r21, 0x00	; 0
 404:	3b e0       	ldi	r19, 0x0B	; 11
 406:	65 c0       	rjmp	.+202    	; 0x4d2 <rxbit1>

00000408 <continueWithBit5>:
 408:	16 b3       	in	r17, 0x16	; 22
 40a:	01 26       	eor	r0, r17
 40c:	50 29       	or	r21, r0
 40e:	51 fd       	sbrc	r21, 1
 410:	c8 95       	lpm
 412:	56 b3       	in	r21, 0x16	; 22
 414:	01 27       	eor	r16, r17
 416:	01 fb       	bst	r16, 1
 418:	25 f9       	bld	r18, 5
 41a:	2f 73       	andi	r18, 0x3F	; 63
 41c:	06 b3       	in	r16, 0x16	; 22
 41e:	b1 f0       	breq	.+44     	; 0x44c <unstuff5>
 420:	50 27       	eor	r21, r16
 422:	10 27       	eor	r17, r16
 424:	11 fb       	bst	r17, 1
 426:	26 f9       	bld	r18, 6

00000428 <didUnstuff6>:
 428:	06 b2       	in	r0, 0x16	; 22
 42a:	22 30       	cpi	r18, 0x02	; 2
 42c:	f0 f0       	brcs	.+60     	; 0x46a <unstuff6>

0000042e <didUnstuff5>:
 42e:	00 c0       	rjmp	.+0      	; 0x430 <didUnstuff5+0x2>
 430:	16 b3       	in	r17, 0x16	; 22
 432:	01 27       	eor	r16, r17
 434:	01 fb       	bst	r16, 1
 436:	27 f9       	bld	r18, 7

00000438 <didUnstuff7>:
 438:	01 26       	eor	r0, r17
 43a:	50 29       	or	r21, r0
 43c:	06 b2       	in	r0, 0x16	; 22
 43e:	24 30       	cpi	r18, 0x04	; 4
 440:	e8 f5       	brcc	.+122    	; 0x4bc <rxLoop>

00000442 <unstuff7>:
 442:	4f 77       	andi	r20, 0x7F	; 127
 444:	20 68       	ori	r18, 0x80	; 128
 446:	16 b3       	in	r17, 0x16	; 22
 448:	00 00       	nop
 44a:	f6 cf       	rjmp	.-20     	; 0x438 <didUnstuff7>

0000044c <unstuff5>:
 44c:	50 27       	eor	r21, r16
 44e:	4f 7d       	andi	r20, 0xDF	; 223
 450:	20 62       	ori	r18, 0x20	; 32
 452:	06 b2       	in	r0, 0x16	; 22
 454:	10 2f       	mov	r17, r16
 456:	00 00       	nop
 458:	00 c0       	rjmp	.+0      	; 0x45a <unstuff5+0xe>
 45a:	06 b3       	in	r16, 0x16	; 22
 45c:	00 26       	eor	r0, r16
 45e:	50 29       	or	r21, r0
 460:	10 27       	eor	r17, r16
 462:	11 fb       	bst	r17, 1
 464:	26 f9       	bld	r18, 6
 466:	06 b2       	in	r0, 0x16	; 22
 468:	e2 cf       	rjmp	.-60     	; 0x42e <didUnstuff5>

0000046a <unstuff6>:
 46a:	4f 7b       	andi	r20, 0xBF	; 191
 46c:	06 b3       	in	r16, 0x16	; 22
 46e:	20 64       	ori	r18, 0x40	; 64
 470:	00 c0       	rjmp	.+0      	; 0x472 <unstuff6+0x8>
 472:	da cf       	rjmp	.-76     	; 0x428 <didUnstuff6>

00000474 <unstuff0>:
 474:	01 26       	eor	r0, r17
 476:	50 29       	or	r21, r0
 478:	16 70       	andi	r17, 0x06	; 6
 47a:	06 b2       	in	r0, 0x16	; 22
 47c:	69 f1       	breq	.+90     	; 0x4d8 <didUnstuff0>
 47e:	4e 7f       	andi	r20, 0xFE	; 254
 480:	21 60       	ori	r18, 0x01	; 1
 482:	01 2f       	mov	r16, r17
 484:	16 b3       	in	r17, 0x16	; 22
 486:	28 c0       	rjmp	.+80     	; 0x4d8 <didUnstuff0>

00000488 <unstuff1>:
 488:	00 26       	eor	r0, r16
 48a:	50 29       	or	r21, r0
 48c:	4d 7f       	andi	r20, 0xFD	; 253
 48e:	06 b2       	in	r0, 0x16	; 22
 490:	22 60       	ori	r18, 0x02	; 2
 492:	10 2f       	mov	r17, r16
 494:	29 c0       	rjmp	.+82     	; 0x4e8 <didUnstuff1>

00000496 <unstuff2>:
 496:	01 26       	eor	r0, r17
 498:	50 29       	or	r21, r0
 49a:	4b 7f       	andi	r20, 0xFB	; 251
 49c:	06 b2       	in	r0, 0x16	; 22
 49e:	24 60       	ori	r18, 0x04	; 4
 4a0:	01 2f       	mov	r16, r17
 4a2:	2d c0       	rjmp	.+90     	; 0x4fe <didUnstuff2>

000004a4 <unstuff3>:
 4a4:	16 b3       	in	r17, 0x16	; 22
 4a6:	01 26       	eor	r0, r17
 4a8:	50 29       	or	r21, r0
 4aa:	47 7f       	andi	r20, 0xF7	; 247
 4ac:	28 60       	ori	r18, 0x08	; 8
 4ae:	00 00       	nop
 4b0:	06 b2       	in	r0, 0x16	; 22
 4b2:	2e c0       	rjmp	.+92     	; 0x510 <didUnstuff3>

000004b4 <unstuff4>:
 4b4:	4f 7e       	andi	r20, 0xEF	; 239
 4b6:	06 b3       	in	r16, 0x16	; 22
 4b8:	20 61       	ori	r18, 0x10	; 16
 4ba:	30 c0       	rjmp	.+96     	; 0x51c <didUnstuff4>

000004bc <rxLoop>:
 4bc:	42 27       	eor	r20, r18
 4be:	06 b3       	in	r16, 0x16	; 22
 4c0:	49 93       	st	Y+, r20
 4c2:	00 26       	eor	r0, r16
 4c4:	50 29       	or	r21, r0
 4c6:	10 27       	eor	r17, r16
 4c8:	06 b2       	in	r0, 0x16	; 22
 4ca:	4f ef       	ldi	r20, 0xFF	; 255
 4cc:	11 fb       	bst	r17, 1
 4ce:	20 f9       	bld	r18, 0
 4d0:	29 7f       	andi	r18, 0xF9	; 249

000004d2 <rxbit1>:
 4d2:	16 b3       	in	r17, 0x16	; 22
 4d4:	79 f2       	breq	.-98     	; 0x474 <unstuff0>
 4d6:	16 70       	andi	r17, 0x06	; 6

000004d8 <didUnstuff0>:
 4d8:	59 f1       	breq	.+86     	; 0x530 <se0>
 4da:	01 26       	eor	r0, r17
 4dc:	50 29       	or	r21, r0
 4de:	06 b2       	in	r0, 0x16	; 22
 4e0:	01 27       	eor	r16, r17
 4e2:	01 fb       	bst	r16, 1
 4e4:	21 f9       	bld	r18, 1
 4e6:	23 7f       	andi	r18, 0xF3	; 243

000004e8 <didUnstuff1>:
 4e8:	06 b3       	in	r16, 0x16	; 22
 4ea:	71 f2       	breq	.-100    	; 0x488 <unstuff1>
 4ec:	00 26       	eor	r0, r16
 4ee:	50 29       	or	r21, r0
 4f0:	31 50       	subi	r19, 0x01	; 1
 4f2:	d0 f0       	brcs	.+52     	; 0x528 <overflow>
 4f4:	06 b2       	in	r0, 0x16	; 22
 4f6:	10 27       	eor	r17, r16
 4f8:	11 fb       	bst	r17, 1
 4fa:	22 f9       	bld	r18, 2
 4fc:	27 7e       	andi	r18, 0xE7	; 231

000004fe <didUnstuff2>:
 4fe:	16 b3       	in	r17, 0x16	; 22
 500:	51 f2       	breq	.-108    	; 0x496 <unstuff2>
 502:	01 26       	eor	r0, r17
 504:	50 29       	or	r21, r0
 506:	01 27       	eor	r16, r17
 508:	01 fb       	bst	r16, 1
 50a:	06 b2       	in	r0, 0x16	; 22
 50c:	23 f9       	bld	r18, 3
 50e:	2f 7c       	andi	r18, 0xCF	; 207

00000510 <didUnstuff3>:
 510:	49 f2       	breq	.-110    	; 0x4a4 <unstuff3>
 512:	00 00       	nop
 514:	06 b3       	in	r16, 0x16	; 22
 516:	10 27       	eor	r17, r16
 518:	11 fb       	bst	r17, 1
 51a:	24 f9       	bld	r18, 4

0000051c <didUnstuff4>:
 51c:	00 26       	eor	r0, r16
 51e:	50 29       	or	r21, r0
 520:	06 b2       	in	r0, 0x16	; 22
 522:	2f 79       	andi	r18, 0x9F	; 159
 524:	39 f2       	breq	.-114    	; 0x4b4 <unstuff4>
 526:	70 cf       	rjmp	.-288    	; 0x408 <continueWithBit5>

00000528 <overflow>:
 528:	10 e4       	ldi	r17, 0x40	; 64
 52a:	1a bf       	out	0x3a, r17	; 58

0000052c <ignorePacket>:
 52c:	00 27       	eor	r16, r16
 52e:	19 c0       	rjmp	.+50     	; 0x562 <handleSetupOrOut>

00000530 <se0>:
 530:	3b 50       	subi	r19, 0x0B	; 11
 532:	31 95       	neg	r19
 534:	c3 1b       	sub	r28, r19
 536:	d0 40       	sbci	r29, 0x00	; 0
 538:	10 e4       	ldi	r17, 0x40	; 64
 53a:	1a bf       	out	0x3a, r17	; 58
 53c:	08 81       	ld	r16, Y
 53e:	03 3c       	cpi	r16, 0xC3	; 195
 540:	09 f1       	breq	.+66     	; 0x584 <handleData>
 542:	0b 34       	cpi	r16, 0x4B	; 75
 544:	f9 f0       	breq	.+62     	; 0x584 <handleData>
 546:	20 91 7b 00 	lds	r18, 0x007B
 54a:	19 81       	ldd	r17, Y+1	; 0x01
 54c:	11 0f       	add	r17, r17
 54e:	12 13       	cpse	r17, r18
 550:	ed cf       	rjmp	.-38     	; 0x52c <ignorePacket>
 552:	4a 81       	ldd	r20, Y+2	; 0x02
 554:	44 1f       	adc	r20, r20
 556:	09 36       	cpi	r16, 0x69	; 105
 558:	51 f1       	breq	.+84     	; 0x5ae <handleIn>
 55a:	0d 32       	cpi	r16, 0x2D	; 45
 55c:	11 f0       	breq	.+4      	; 0x562 <handleSetupOrOut>
 55e:	01 3e       	cpi	r16, 0xE1	; 225
 560:	29 f7       	brne	.-54     	; 0x52c <ignorePacket>

00000562 <handleSetupOrOut>:
 562:	00 93 82 00 	sts	0x0082, r16

00000566 <doReturn>:
 566:	3f 91       	pop	r19
 568:	5f 91       	pop	r21
 56a:	4f 91       	pop	r20
 56c:	1f 91       	pop	r17
 56e:	0f 91       	pop	r16
 570:	2f 91       	pop	r18
 572:	df 91       	pop	r29
 574:	0f 90       	pop	r0
 576:	ca b7       	in	r28, 0x3a	; 58
 578:	c6 fd       	sbrc	r28, 6
 57a:	1b cf       	rjmp	.-458    	; 0x3b2 <waitForJ>

0000057c <sofError>:
 57c:	cf 91       	pop	r28
 57e:	cf bf       	out	0x3f, r28	; 63
 580:	cf 91       	pop	r28
 582:	18 95       	reti

00000584 <handleData>:
 584:	20 91 82 00 	lds	r18, 0x0082
 588:	22 23       	and	r18, r18
 58a:	69 f3       	breq	.-38     	; 0x566 <doReturn>
 58c:	10 91 80 00 	lds	r17, 0x0080
 590:	11 23       	and	r17, r17
 592:	79 f5       	brne	.+94     	; 0x5f2 <sendNakAndReti>
 594:	34 30       	cpi	r19, 0x04	; 4
 596:	7a f1       	brmi	.+94     	; 0x5f6 <sendAckAndReti>
 598:	30 93 80 00 	sts	0x0080, r19
 59c:	20 93 7c 00 	sts	0x007C, r18
 5a0:	10 91 7d 00 	lds	r17, 0x007D
 5a4:	3b e0       	ldi	r19, 0x0B	; 11
 5a6:	31 1b       	sub	r19, r17
 5a8:	30 93 7d 00 	sts	0x007D, r19
 5ac:	24 c0       	rjmp	.+72     	; 0x5f6 <sendAckAndReti>

000005ae <handleIn>:
 5ae:	00 91 80 00 	lds	r16, 0x0080
 5b2:	01 30       	cpi	r16, 0x01	; 1
 5b4:	f4 f4       	brge	.+60     	; 0x5f2 <sendNakAndReti>
 5b6:	0a e5       	ldi	r16, 0x5A	; 90
 5b8:	4f 70       	andi	r20, 0x0F	; 15
 5ba:	49 f4       	brne	.+18     	; 0x5ce <handleIn1>
 5bc:	30 91 61 00 	lds	r19, 0x0061
 5c0:	34 fd       	sbrc	r19, 4
 5c2:	1a c0       	rjmp	.+52     	; 0x5f8 <sendCntAndReti>
 5c4:	00 93 61 00 	sts	0x0061, r16
 5c8:	c4 e6       	ldi	r28, 0x64	; 100
 5ca:	d0 e0       	ldi	r29, 0x00	; 0
 5cc:	19 c0       	rjmp	.+50     	; 0x600 <usbSendAndReti>

000005ce <handleIn1>:
 5ce:	30 91 6f 00 	lds	r19, 0x006F
 5d2:	34 fd       	sbrc	r19, 4
 5d4:	11 c0       	rjmp	.+34     	; 0x5f8 <sendCntAndReti>
 5d6:	00 93 6f 00 	sts	0x006F, r16
 5da:	c0 e7       	ldi	r28, 0x70	; 112
 5dc:	d0 e0       	ldi	r29, 0x00	; 0
 5de:	10 c0       	rjmp	.+32     	; 0x600 <usbSendAndReti>

000005e0 <bitstuff7>:
 5e0:	05 27       	eor	r16, r21
 5e2:	10 e0       	ldi	r17, 0x00	; 0
 5e4:	00 c0       	rjmp	.+0      	; 0x5e6 <bitstuff7+0x6>
 5e6:	21 c0       	rjmp	.+66     	; 0x62a <didStuff7>

000005e8 <bitstuffN>:
 5e8:	05 27       	eor	r16, r21
 5ea:	10 e0       	ldi	r17, 0x00	; 0
 5ec:	c8 95       	lpm
 5ee:	08 bb       	out	0x18, r16	; 24
 5f0:	14 c0       	rjmp	.+40     	; 0x61a <didStuffN>

000005f2 <sendNakAndReti>:
 5f2:	3a e5       	ldi	r19, 0x5A	; 90
 5f4:	01 c0       	rjmp	.+2      	; 0x5f8 <sendCntAndReti>

000005f6 <sendAckAndReti>:
 5f6:	32 ed       	ldi	r19, 0xD2	; 210

000005f8 <sendCntAndReti>:
 5f8:	03 2e       	mov	r0, r19
 5fa:	c0 e0       	ldi	r28, 0x00	; 0
 5fc:	d0 e0       	ldi	r29, 0x00	; 0
 5fe:	32 e0       	ldi	r19, 0x02	; 2

00000600 <usbSendAndReti>:
 600:	17 b3       	in	r17, 0x17	; 23
 602:	16 60       	ori	r17, 0x06	; 6
 604:	c1 9a       	sbi	0x18, 1	; 24
 606:	08 b3       	in	r16, 0x18	; 24
 608:	17 bb       	out	0x17, r17	; 23
 60a:	56 e0       	ldi	r21, 0x06	; 6
 60c:	20 e8       	ldi	r18, 0x80	; 128
 60e:	4f ef       	ldi	r20, 0xFF	; 255

00000610 <bitloop>:
 610:	20 ff       	sbrs	r18, 0
 612:	05 27       	eor	r16, r21
 614:	08 bb       	out	0x18, r16	; 24
 616:	27 95       	ror	r18
 618:	17 95       	ror	r17

0000061a <didStuffN>:
 61a:	1c 3f       	cpi	r17, 0xFC	; 252
 61c:	28 f7       	brcc	.-54     	; 0x5e8 <bitstuffN>
 61e:	00 00       	nop
 620:	45 52       	subi	r20, 0x25	; 37
 622:	b0 f7       	brcc	.-20     	; 0x610 <bitloop>
 624:	20 ff       	sbrs	r18, 0
 626:	05 27       	eor	r16, r21
 628:	27 95       	ror	r18

0000062a <didStuff7>:
 62a:	08 bb       	out	0x18, r16	; 24
 62c:	17 95       	ror	r17
 62e:	1c 3f       	cpi	r17, 0xFC	; 252
 630:	b8 f6       	brcc	.-82     	; 0x5e0 <bitstuff7>
 632:	29 91       	ld	r18, Y+
 634:	3a 95       	dec	r19
 636:	61 f7       	brne	.-40     	; 0x610 <bitloop>
 638:	09 7f       	andi	r16, 0xF9	; 249
 63a:	10 91 81 00 	lds	r17, 0x0081
 63e:	11 0f       	add	r17, r17
 640:	08 bb       	out	0x18, r16	; 24
 642:	c2 50       	subi	r28, 0x02	; 2
 644:	d0 40       	sbci	r29, 0x00	; 0
 646:	11 f0       	breq	.+4      	; 0x64c <skipAddrAssign>
 648:	10 93 7b 00 	sts	0x007B, r17

0000064c <skipAddrAssign>:
 64c:	10 e4       	ldi	r17, 0x40	; 64
 64e:	1a bf       	out	0x3a, r17	; 58
 650:	02 60       	ori	r16, 0x02	; 2
 652:	17 b3       	in	r17, 0x17	; 23
 654:	19 7f       	andi	r17, 0xF9	; 249
 656:	40 2f       	mov	r20, r16
 658:	49 7f       	andi	r20, 0xF9	; 249
 65a:	54 e0       	ldi	r21, 0x04	; 4

0000065c <se0Delay>:
 65c:	5a 95       	dec	r21
 65e:	f1 f7       	brne	.-4      	; 0x65c <se0Delay>
 660:	08 bb       	out	0x18, r16	; 24
 662:	17 bb       	out	0x17, r17	; 23
 664:	48 bb       	out	0x18, r20	; 24
 666:	7f cf       	rjmp	.-258    	; 0x566 <doReturn>

00000668 <usbFunctionSetup>:
 668:	80 e0       	ldi	r24, 0x00	; 0
 66a:	08 95       	ret

0000066c <hadUsbReset>:
 66c:	9f 92       	push	r9
 66e:	af 92       	push	r10
 670:	bf 92       	push	r11
 672:	cf 92       	push	r12
 674:	df 92       	push	r13
 676:	ef 92       	push	r14
 678:	ff 92       	push	r15
 67a:	0f 93       	push	r16
 67c:	1f 93       	push	r17
 67e:	cf 93       	push	r28
 680:	df 93       	push	r29
 682:	1f 92       	push	r1
 684:	cd b7       	in	r28, 0x3d	; 61
 686:	de b7       	in	r29, 0x3e	; 62
 688:	20 e0       	ldi	r18, 0x00	; 0
 68a:	f1 2c       	mov	r15, r1
 68c:	0f e0       	ldi	r16, 0x0F	; 15
 68e:	17 e2       	ldi	r17, 0x27	; 39
 690:	e1 2c       	mov	r14, r1
 692:	3c ec       	ldi	r19, 0xCC	; 204
 694:	a3 2e       	mov	r10, r19
 696:	36 ef       	ldi	r19, 0xF6	; 246
 698:	b3 2e       	mov	r11, r19
 69a:	87 e0       	ldi	r24, 0x07	; 7
 69c:	c8 2e       	mov	r12, r24
 69e:	d1 2c       	mov	r13, r1
 6a0:	90 e4       	ldi	r25, 0x40	; 64
 6a2:	99 2e       	mov	r9, r25
 6a4:	80 e0       	ldi	r24, 0x00	; 0
 6a6:	90 e0       	ldi	r25, 0x00	; 0
 6a8:	84 33       	cpi	r24, 0x34	; 52
 6aa:	99 40       	sbci	r25, 0x09	; 9
 6ac:	14 f4       	brge	.+4      	; 0x6b2 <hadUsbReset+0x46>
 6ae:	e9 0c       	add	r14, r9
 6b0:	01 c0       	rjmp	.+2      	; 0x6b4 <hadUsbReset+0x48>
 6b2:	e9 18       	sub	r14, r9
 6b4:	e1 be       	out	0x31, r14	; 49
 6b6:	29 83       	std	Y+1, r18	; 0x01
 6b8:	66 de       	rcall	.-820    	; 0x386 <usbMeasureFrameLength>
 6ba:	29 81       	ldd	r18, Y+1	; 0x01
 6bc:	85 33       	cpi	r24, 0x35	; 53
 6be:	39 e0       	ldi	r19, 0x09	; 9
 6c0:	93 07       	cpc	r25, r19
 6c2:	24 f0       	brlt	.+8      	; 0x6cc <hadUsbReset+0x60>
 6c4:	ac 01       	movw	r20, r24
 6c6:	44 53       	subi	r20, 0x34	; 52
 6c8:	59 40       	sbci	r21, 0x09	; 9
 6ca:	03 c0       	rjmp	.+6      	; 0x6d2 <hadUsbReset+0x66>
 6cc:	a5 01       	movw	r20, r10
 6ce:	48 1b       	sub	r20, r24
 6d0:	59 0b       	sbc	r21, r25
 6d2:	40 17       	cp	r20, r16
 6d4:	51 07       	cpc	r21, r17
 6d6:	14 f4       	brge	.+4      	; 0x6dc <hadUsbReset+0x70>
 6d8:	fe 2c       	mov	r15, r14
 6da:	8a 01       	movw	r16, r20
 6dc:	96 94       	lsr	r9
 6de:	31 e0       	ldi	r19, 0x01	; 1
 6e0:	c3 1a       	sub	r12, r19
 6e2:	d1 08       	sbc	r13, r1
 6e4:	09 f7       	brne	.-62     	; 0x6a8 <hadUsbReset+0x3c>
 6e6:	21 30       	cpi	r18, 0x01	; 1
 6e8:	21 f0       	breq	.+8      	; 0x6f2 <hadUsbReset+0x86>
 6ea:	20 e8       	ldi	r18, 0x80	; 128
 6ec:	e2 2e       	mov	r14, r18
 6ee:	21 e0       	ldi	r18, 0x01	; 1
 6f0:	d4 cf       	rjmp	.-88     	; 0x69a <hadUsbReset+0x2e>
 6f2:	f1 be       	out	0x31, r15	; 49
 6f4:	0f 90       	pop	r0
 6f6:	df 91       	pop	r29
 6f8:	cf 91       	pop	r28
 6fa:	1f 91       	pop	r17
 6fc:	0f 91       	pop	r16
 6fe:	ff 90       	pop	r15
 700:	ef 90       	pop	r14
 702:	df 90       	pop	r13
 704:	cf 90       	pop	r12
 706:	bf 90       	pop	r11
 708:	af 90       	pop	r10
 70a:	9f 90       	pop	r9
 70c:	08 95       	ret

0000070e <clearReport>:
 70e:	fc 01       	movw	r30, r24
 710:	90 81       	ld	r25, Z
 712:	90 74       	andi	r25, 0x40	; 64
 714:	95 60       	ori	r25, 0x05	; 5
 716:	9f 7b       	andi	r25, 0xBF	; 191
 718:	90 83       	st	Z, r25
 71a:	81 81       	ldd	r24, Z+1	; 0x01
 71c:	88 7f       	andi	r24, 0xF8	; 248
 71e:	87 7f       	andi	r24, 0xF7	; 247
 720:	81 83       	std	Z+1, r24	; 0x01
 722:	08 95       	ret

00000724 <reportsEqual>:
 724:	fc 01       	movw	r30, r24
 726:	db 01       	movw	r26, r22
 728:	8c 91       	ld	r24, X
 72a:	90 81       	ld	r25, Z
 72c:	98 27       	eor	r25, r24
 72e:	89 2f       	mov	r24, r25
 730:	8f 73       	andi	r24, 0x3F	; 63
 732:	59 f4       	brne	.+22     	; 0x74a <reportsEqual+0x26>
 734:	97 fd       	sbrc	r25, 7
 736:	09 c0       	rjmp	.+18     	; 0x74a <reportsEqual+0x26>
 738:	96 fd       	sbrc	r25, 6
 73a:	07 c0       	rjmp	.+14     	; 0x74a <reportsEqual+0x26>
 73c:	11 96       	adiw	r26, 0x01	; 1
 73e:	9c 91       	ld	r25, X
 740:	81 81       	ldd	r24, Z+1	; 0x01
 742:	98 27       	eor	r25, r24
 744:	9f 70       	andi	r25, 0x0F	; 15
 746:	81 e0       	ldi	r24, 0x01	; 1
 748:	09 f0       	breq	.+2      	; 0x74c <reportsEqual+0x28>
 74a:	80 e0       	ldi	r24, 0x00	; 0
 74c:	08 95       	ret

0000074e <buildReport>:
 74e:	cf 93       	push	r28
 750:	df 93       	push	r29
 752:	ec 01       	movw	r28, r24
 754:	dc df       	rcall	.-72     	; 0x70e <clearReport>

 756:	c3 9a       	sbi	0x18, 3		; 24				- 2 cycles
 758:	85 e0       	ldi	r24, 0x05	; 5				- 1 cycle ----------
 75a:	98 2f       	mov	r25, r24	;				- 1 cycle        ^
 75c:	9a 95       	dec	r25		;				- 1 cycle      1.09 µs
 75e:	f1 f7       	brne	.-4      	; 0x75c <buildReport+0xe>	- 1/2 cycles     v
 760:	c3 98       	cbi	0x18, 3		; 24				- 2 cycles ---------
 762:	8a 95       	dec	r24		;				- 1 cycle      0.85 µs
 764:	f1 f7       	brne	.-4      	; 0x762 <buildReport+0x14>	- 1/2 cycles -------
 766:	b4 99       	sbic	0x16, 4		; 22				- 1/2 cycles
 768:	03 c0       	rjmp	.+6      	; 0x770 <buildReport+0x22>	- 2 cycles
 76a:	88 81       	ld	r24, Y		;				- 2 cycles ---------
 76c:	80 61       	ori	r24, 0x10	; 16				- 1 cycle      0.30 µs
 76e:	88 83       	st	Y, r24		;				- 2 cycles ---------

 770:	c0 9a       	sbi	0x18, 0		; 24				- 
 772:	85 e0       	ldi	r24, 0x05	; 5
 774:	98 2f       	mov	r25, r24
 776:	9a 95       	dec	r25
 778:	f1 f7       	brne	.-4      	; 0x776 <buildReport+0x28>
 77a:	c0 98       	cbi	0x18, 0	; 24
 77c:	8a 95       	dec	r24
 77e:	f1 f7       	brne	.-4      	; 0x77c <buildReport+0x2e>
 780:	b4 99       	sbic	0x16, 4	; 22
 782:	03 c0       	rjmp	.+6      	; 0x78a <buildReport+0x3c>
 784:	88 81       	ld	r24, Y
 786:	80 64       	ori	r24, 0x40	; 64
 788:	88 83       	st	Y, r24
 78a:	c0 9a       	sbi	0x18, 0	; 24
 78c:	85 e0       	ldi	r24, 0x05	; 5
 78e:	98 2f       	mov	r25, r24
 790:	9a 95       	dec	r25
 792:	f1 f7       	brne	.-4      	; 0x790 <buildReport+0x42>
 794:	c0 98       	cbi	0x18, 0	; 24
 796:	8a 95       	dec	r24
 798:	f1 f7       	brne	.-4      	; 0x796 <buildReport+0x48>
 79a:	b4 99       	sbic	0x16, 4	; 22
 79c:	03 c0       	rjmp	.+6      	; 0x7a4 <buildReport+0x56>
 79e:	89 81       	ldd	r24, Y+1	; 0x01
 7a0:	84 60       	ori	r24, 0x04	; 4
 7a2:	89 83       	std	Y+1, r24	; 0x01
 7a4:	c0 9a       	sbi	0x18, 0	; 24
 7a6:	85 e0       	ldi	r24, 0x05	; 5
 7a8:	98 2f       	mov	r25, r24
 7aa:	9a 95       	dec	r25
 7ac:	f1 f7       	brne	.-4      	; 0x7aa <buildReport+0x5c>
 7ae:	c0 98       	cbi	0x18, 0	; 24
 7b0:	8a 95       	dec	r24
 7b2:	f1 f7       	brne	.-4      	; 0x7b0 <buildReport+0x62>
 7b4:	b4 99       	sbic	0x16, 4	; 22
 7b6:	03 c0       	rjmp	.+6      	; 0x7be <buildReport+0x70>
 7b8:	89 81       	ldd	r24, Y+1	; 0x01
 7ba:	88 60       	ori	r24, 0x08	; 8
 7bc:	89 83       	std	Y+1, r24	; 0x01
 7be:	c0 9a       	sbi	0x18, 0	; 24
 7c0:	85 e0       	ldi	r24, 0x05	; 5
 7c2:	98 2f       	mov	r25, r24
 7c4:	9a 95       	dec	r25
 7c6:	f1 f7       	brne	.-4      	; 0x7c4 <buildReport+0x76>
 7c8:	c0 98       	cbi	0x18, 0	; 24
 7ca:	8a 95       	dec	r24
 7cc:	f1 f7       	brne	.-4      	; 0x7ca <buildReport+0x7c>
 7ce:	b4 99       	sbic	0x16, 4	; 22
 7d0:	03 c0       	rjmp	.+6      	; 0x7d8 <buildReport+0x8a>
 7d2:	88 81       	ld	r24, Y
 7d4:	83 7f       	andi	r24, 0xF3	; 243
 7d6:	88 83       	st	Y, r24
 7d8:	c0 9a       	sbi	0x18, 0	; 24
 7da:	85 e0       	ldi	r24, 0x05	; 5
 7dc:	98 2f       	mov	r25, r24
 7de:	9a 95       	dec	r25
 7e0:	f1 f7       	brne	.-4      	; 0x7de <buildReport+0x90>
 7e2:	c0 98       	cbi	0x18, 0	; 24
 7e4:	8a 95       	dec	r24
 7e6:	f1 f7       	brne	.-4      	; 0x7e4 <buildReport+0x96>
 7e8:	b4 99       	sbic	0x16, 4	; 22
 7ea:	04 c0       	rjmp	.+8      	; 0x7f4 <buildReport+0xa6>
 7ec:	88 81       	ld	r24, Y
 7ee:	83 7f       	andi	r24, 0xF3	; 243
 7f0:	88 60       	ori	r24, 0x08	; 8
 7f2:	88 83       	st	Y, r24
 7f4:	c0 9a       	sbi	0x18, 0	; 24
 7f6:	85 e0       	ldi	r24, 0x05	; 5
 7f8:	98 2f       	mov	r25, r24
 7fa:	9a 95       	dec	r25
 7fc:	f1 f7       	brne	.-4      	; 0x7fa <buildReport+0xac>
 7fe:	c0 98       	cbi	0x18, 0	; 24
 800:	8a 95       	dec	r24
 802:	f1 f7       	brne	.-4      	; 0x800 <buildReport+0xb2>
 804:	b4 99       	sbic	0x16, 4	; 22
 806:	03 c0       	rjmp	.+6      	; 0x80e <buildReport+0xc0>
 808:	88 81       	ld	r24, Y
 80a:	8c 7f       	andi	r24, 0xFC	; 252
 80c:	88 83       	st	Y, r24
 80e:	c0 9a       	sbi	0x18, 0	; 24
 810:	85 e0       	ldi	r24, 0x05	; 5
 812:	98 2f       	mov	r25, r24
 814:	9a 95       	dec	r25
 816:	f1 f7       	brne	.-4      	; 0x814 <buildReport+0xc6>
 818:	c0 98       	cbi	0x18, 0	; 24
 81a:	8a 95       	dec	r24
 81c:	f1 f7       	brne	.-4      	; 0x81a <buildReport+0xcc>
 81e:	b4 99       	sbic	0x16, 4	; 22
 820:	04 c0       	rjmp	.+8      	; 0x82a <buildReport+0xdc>
 822:	88 81       	ld	r24, Y
 824:	8c 7f       	andi	r24, 0xFC	; 252
 826:	82 60       	ori	r24, 0x02	; 2
 828:	88 83       	st	Y, r24
 82a:	c0 9a       	sbi	0x18, 0	; 24
 82c:	85 e0       	ldi	r24, 0x05	; 5
 82e:	98 2f       	mov	r25, r24
 830:	9a 95       	dec	r25
 832:	f1 f7       	brne	.-4      	; 0x830 <buildReport+0xe2>
 834:	c0 98       	cbi	0x18, 0	; 24
 836:	8a 95       	dec	r24
 838:	f1 f7       	brne	.-4      	; 0x836 <buildReport+0xe8>
 83a:	b4 99       	sbic	0x16, 4	; 22
 83c:	03 c0       	rjmp	.+6      	; 0x844 <buildReport+0xf6>
 83e:	88 81       	ld	r24, Y
 840:	80 62       	ori	r24, 0x20	; 32
 842:	88 83       	st	Y, r24
 844:	c0 9a       	sbi	0x18, 0	; 24
 846:	85 e0       	ldi	r24, 0x05	; 5
 848:	98 2f       	mov	r25, r24
 84a:	9a 95       	dec	r25
 84c:	f1 f7       	brne	.-4      	; 0x84a <buildReport+0xfc>
 84e:	c0 98       	cbi	0x18, 0	; 24
 850:	8a 95       	dec	r24
 852:	f1 f7       	brne	.-4      	; 0x850 <buildReport+0x102>
 854:	b4 99       	sbic	0x16, 4	; 22
 856:	03 c0       	rjmp	.+6      	; 0x85e <buildReport+0x110>
 858:	88 81       	ld	r24, Y
 85a:	80 68       	ori	r24, 0x80	; 128
 85c:	88 83       	st	Y, r24
 85e:	c0 9a       	sbi	0x18, 0	; 24
 860:	85 e0       	ldi	r24, 0x05	; 5
 862:	98 2f       	mov	r25, r24
 864:	9a 95       	dec	r25
 866:	f1 f7       	brne	.-4      	; 0x864 <buildReport+0x116>
 868:	c0 98       	cbi	0x18, 0	; 24
 86a:	8a 95       	dec	r24
 86c:	f1 f7       	brne	.-4      	; 0x86a <buildReport+0x11c>
 86e:	b4 99       	sbic	0x16, 4	; 22
 870:	03 c0       	rjmp	.+6      	; 0x878 <buildReport+0x12a>
 872:	89 81       	ldd	r24, Y+1	; 0x01
 874:	81 60       	ori	r24, 0x01	; 1
 876:	89 83       	std	Y+1, r24	; 0x01
 878:	c0 9a       	sbi	0x18, 0	; 24
 87a:	85 e0       	ldi	r24, 0x05	; 5
 87c:	98 2f       	mov	r25, r24
 87e:	9a 95       	dec	r25
 880:	f1 f7       	brne	.-4      	; 0x87e <buildReport+0x130>
 882:	c0 98       	cbi	0x18, 0	; 24
 884:	8a 95       	dec	r24
 886:	f1 f7       	brne	.-4      	; 0x884 <buildReport+0x136>
 888:	b4 99       	sbic	0x16, 4	; 22
 88a:	03 c0       	rjmp	.+6      	; 0x892 <buildReport+0x144>
 88c:	89 81       	ldd	r24, Y+1	; 0x01
 88e:	82 60       	ori	r24, 0x02	; 2
 890:	89 83       	std	Y+1, r24	; 0x01
 892:	df 91       	pop	r29
 894:	cf 91       	pop	r28
 896:	08 95       	ret

00000898 <main>:
 898:	cf 93       	push	r28
 89a:	df 93       	push	r29
 89c:	00 d0       	rcall	.+0      	; 0x89e <main+0x6>
 89e:	00 d0       	rcall	.+0      	; 0x8a0 <main+0x8>
 8a0:	cd b7       	in	r28, 0x3d	; 61
 8a2:	de b7       	in	r29, 0x3e	; 62
 8a4:	ce 01       	movw	r24, r28
 8a6:	03 96       	adiw	r24, 0x03	; 3
 8a8:	32 df       	rcall	.-412    	; 0x70e <clearReport>
 8aa:	ce 01       	movw	r24, r28
 8ac:	01 96       	adiw	r24, 0x01	; 1
 8ae:	2f df       	rcall	.-418    	; 0x70e <clearReport>
 8b0:	b8 9a       	sbi	0x17, 0	; 23
 8b2:	bb 9a       	sbi	0x17, 3	; 23
 8b4:	bc 98       	cbi	0x17, 4	; 23
 8b6:	c0 98       	cbi	0x18, 0	; 24
 8b8:	c3 98       	cbi	0x18, 3	; 24
 8ba:	c4 98       	cbi	0x18, 4	; 24
 8bc:	2e e0       	ldi	r18, 0x0E	; 14
 8be:	88 e1       	ldi	r24, 0x18	; 24
 8c0:	90 e0       	ldi	r25, 0x00	; 0
 8c2:	0f b6       	in	r0, 0x3f	; 63
 8c4:	f8 94       	cli
 8c6:	a8 95       	wdr
 8c8:	81 bd       	out	0x21, r24	; 33
 8ca:	0f be       	out	0x3f, r0	; 63
 8cc:	21 bd       	out	0x21, r18	; 33
 8ce:	35 dd       	rcall	.-1430   	; 0x33a <usbInit>
 8d0:	b9 9a       	sbi	0x17, 1	; 23
 8d2:	8a ef       	ldi	r24, 0xFA	; 250
 8d4:	2a e3       	ldi	r18, 0x3A	; 58
 8d6:	30 e2       	ldi	r19, 0x20	; 32
 8d8:	a8 95       	wdr
 8da:	f9 01       	movw	r30, r18
 8dc:	31 97       	sbiw	r30, 0x01	; 1
 8de:	f1 f7       	brne	.-4      	; 0x8dc <main+0x44>
 8e0:	81 50       	subi	r24, 0x01	; 1
 8e2:	d1 f7       	brne	.-12     	; 0x8d8 <main+0x40>
 8e4:	b9 98       	cbi	0x17, 1	; 23
 8e6:	78 94       	sei
 8e8:	a8 95       	wdr
 8ea:	a8 95       	wdr
 8ec:	18 dc       	rcall	.-2000   	; 0x11e <usbPoll>
 8ee:	ce 01       	movw	r24, r28
 8f0:	03 96       	adiw	r24, 0x03	; 3
 8f2:	2d df       	rcall	.-422    	; 0x74e <buildReport>
 8f4:	80 91 6f 00 	lds	r24, 0x006F
 8f8:	84 ff       	sbrs	r24, 4
 8fa:	f7 cf       	rjmp	.-18     	; 0x8ea <main+0x52>
 8fc:	be 01       	movw	r22, r28
 8fe:	6f 5f       	subi	r22, 0xFF	; 255
 900:	7f 4f       	sbci	r23, 0xFF	; 255
 902:	ce 01       	movw	r24, r28
 904:	03 96       	adiw	r24, 0x03	; 3
 906:	0e df       	rcall	.-484    	; 0x724 <reportsEqual>
 908:	81 11       	cpse	r24, r1
 90a:	ef cf       	rjmp	.-34     	; 0x8ea <main+0x52>
 90c:	62 e0       	ldi	r22, 0x02	; 2
 90e:	ce 01       	movw	r24, r28
 910:	03 96       	adiw	r24, 0x03	; 3
 912:	e1 db       	rcall	.-2110   	; 0xd6 <usbSetInterrupt>
 914:	8b 81       	ldd	r24, Y+3	; 0x03
 916:	9c 81       	ldd	r25, Y+4	; 0x04
 918:	9a 83       	std	Y+2, r25	; 0x02
 91a:	89 83       	std	Y+1, r24	; 0x01
 91c:	e6 cf       	rjmp	.-52     	; 0x8ea <main+0x52>

0000091e <_exit>:
 91e:	f8 94       	cli

00000920 <__stop_program>:
 920:	ff cf       	rjmp	.-2      	; 0x920 <__stop_program>
