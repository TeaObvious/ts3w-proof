# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10560110 (Slots_AttachToSlotWithOffsetImpl)
Paired Ghidra pseudocode: 10560110_Slots_AttachToSlotWithOffsetImpl.c
Window: [0x10560110, 0x10560470) (864 bytes; stop exclusive)
Next defined Ghidra entry: 0x10560470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10560110: 55 8b ec 83 e4 f0 81 ec 34 01 00 00 8b 45 28 f3
10560120: 0f 10 48 08 f3 0f 11 4c 24 0c f3 0f 10 48 04 f3
10560130: 0f 11 4c 24 08 f3 0f 10 4d 2c 0f c6 c9 00 0f 29
10560140: 4c 24 24 d9 44 24 24 f3 0f 10 00 d9 fe f3 0f 11
10560150: 44 24 10 f3 0f 11 44 24 04 0f 28 44 24 04 0f 29
10560160: 84 24 84 00 00 00 0f 29 4c 24 24 f3 0f 10 0d d4
10560170: b0 ac 10 0f c6 c9 00 53 56 57 d9 5c 24 2c d9 44
10560180: 24 30 d9 ff f3 0f 10 44 24 2c 0f c6 c0 00 d9 5c
10560190: 24 2c f3 0f 10 74 24 2c 0f c6 f6 00 0f 5c ce 0f
105601a0: 28 f9 0f 28 8c 24 90 00 00 00 0f 28 df 0f 28 ef
105601b0: 0f 28 d1 0f c6 d1 00 0f 28 e1 0f c6 e1 55 0f c6
105601c0: c9 aa 0f 59 f9 0f 29 7c 24 10 0f 28 f8 0f 59 fa
105601d0: 0f 29 7c 24 40 0f 28 f8 0f 59 c1 0f 29 44 24 60
105601e0: 0f 57 c0 0f 29 44 24 50 0f 29 84 24 80 00 00 00
105601f0: 0f 59 fc 0f 29 7c 24 30 0f 28 7c 24 10 0f 28 c7
10560200: 0f 59 c1 0f 58 c6 0f 29 84 24 a0 00 00 00 0f 28
10560210: c7 0f 28 7c 24 60 0f 59 c4 0f 5c 44 24 40 0f 29
10560220: 84 24 c0 00 00 00 0f 28 44 24 10 0f 59 c2 0f 58
10560230: 44 24 30 0f 29 84 24 e0 00 00 00 0f 28 44 24 50
10560240: 0f 29 44 24 70 0f 59 ec 0f 28 c5 0f 59 c1 0f 58
10560250: 44 24 40 0f 29 84 24 d0 00 00 00 0f 28 c5 0f 59
10560260: c4 0f 59 ea 0f 58 c6 0f 5c ef 0f 59 da 0f 29 84
10560270: 24 b0 00 00 00 0f 29 ac 24 f0 00 00 00 0f 28 44
10560280: 24 50 0f 29 44 24 60 0f 28 c3 0f 59 c1 0f 5c 44
10560290: 24 30 0f 29 44 24 30 0f 28 c3 0f 59 c4 0f 58 c7
105602a0: 0f 29 44 24 50 f3 0f 10 44 24 60 f3 0f 11 44 24
105602b0: 1c f3 0f 10 44 24 30 f3 0f 11 44 24 18 f3 0f 10
105602c0: 44 24 50 f3 0f 11 44 24 14 8b 45 24 0f 59 da 0f
105602d0: 58 de 0f 29 5c 24 40 f3 0f 10 44 24 40 f3 0f 11
105602e0: 44 24 10 0f 28 44 24 10 0f 29 84 24 00 01 00 00
105602f0: f3 0f 10 44 24 70 f3 0f 11 44 24 1c f3 0f 10 84
10560300: 24 d0 00 00 00 f3 0f 11 44 24 18 f3 0f 10 84 24
10560310: b0 00 00 00 f3 0f 11 44 24 14 f3 0f 10 84 24 f0
10560320: 00 00 00 f3 0f 11 44 24 10 0f 28 44 24 10 0f 29
10560330: 84 24 10 01 00 00 f3 0f 10 84 24 80 00 00 00 f3
10560340: 0f 11 44 24 1c f3 0f 10 84 24 a0 00 00 00 f3 0f
10560350: 11 44 24 18 f3 0f 10 84 24 c0 00 00 00 f3 0f 11
10560360: 44 24 14 f3 0f 10 84 24 e0 00 00 00 f3 0f 11 44
10560370: 24 10 0f 28 44 24 10 0f 29 84 24 20 01 00 00 f3
10560380: 0f 10 05 d4 b0 ac 10 f3 0f 11 44 24 1c f3 0f 10
10560390: 40 08 f3 0f 11 44 24 18 f3 0f 10 40 04 f3 0f 11
105603a0: 44 24 14 f3 0f 10 00 f3 0f 11 44 24 10 0f 28 44
105603b0: 24 10 0f 29 84 24 30 01 00 00 e8 e1 9d 1c 00 8b
105603c0: 4d 08 8b f8 8b 45 0c 50 51 8b cf e8 e0 a7 1c 00
105603d0: 8b f0 85 f6 74 14 8b 15 98 d9 c8 10 52 8b ce e8
105603e0: bc 69 1c 00 8b d8 85 db 75 15 b8 e9 03 00 00 33
105603f0: c9 85 c0 0f 94 c1 8b c1 5f 5e 5b 8b e5 5d c3 8b
10560400: 45 14 8b 4d 10 50 51 8b cf e8 a2 a7 1c 00 8b f8
10560410: 85 ff 75 15 b8 ea 03 00 00 33 c9 85 c0 0f 94 c1
10560420: 8b c1 5f 5e 5b 8b e5 5d c3 80 7d 20 00 74 19 8b
10560430: 15 c4 0c c8 10 52 8b ce e8 63 69 1c 00 85 c0 74
10560440: 07 8b c8 e8 f8 eb 1c 00 8b 45 1c 8b 55 18 50 8d
10560450: 8c 24 04 01 00 00 51 52 57 8b cb e8 b0 c2 1e 00
10560460: 33 c9 85 c0 0f 94 c1 5f 5e 5b 8b c1 8b e5 5d c3

LINEAR DISASSEMBLY
10560110 <.text+0x55f110>:
10560110:	55                                              	push   ebp
10560111:	8b ec                                           	mov    ebp,esp
10560113:	83 e4 f0                                        	and    esp,0xfffffff0
10560116:	81 ec 34 01 00 00                               	sub    esp,0x134
1056011c:	8b 45 28                                        	mov    eax,DWORD PTR [ebp+0x28]
1056011f:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
10560124:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1056012a:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1056012f:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10560135:	f3 0f 10 4d 2c                                  	movss  xmm1,DWORD PTR [ebp+0x2c]
1056013a:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
1056013e:	0f 29 4c 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm1
10560143:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
10560147:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1056014b:	d9 fe                                           	fsin
1056014d:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10560153:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10560159:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
1056015e:	0f 29 84 24 84 00 00 00                         	movaps XMMWORD PTR [esp+0x84],xmm0
10560166:	0f 29 4c 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm1
1056016b:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
10560173:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10560177:	53                                              	push   ebx
10560178:	56                                              	push   esi
10560179:	57                                              	push   edi
1056017a:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
1056017e:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
10560182:	d9 ff                                           	fcos
10560184:	f3 0f 10 44 24 2c                               	movss  xmm0,DWORD PTR [esp+0x2c]
1056018a:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1056018e:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
10560192:	f3 0f 10 74 24 2c                               	movss  xmm6,DWORD PTR [esp+0x2c]
10560198:	0f c6 f6 00                                     	shufps xmm6,xmm6,0x0
1056019c:	0f 5c ce                                        	subps  xmm1,xmm6
1056019f:	0f 28 f9                                        	movaps xmm7,xmm1
105601a2:	0f 28 8c 24 90 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0x90]
105601aa:	0f 28 df                                        	movaps xmm3,xmm7
105601ad:	0f 28 ef                                        	movaps xmm5,xmm7
105601b0:	0f 28 d1                                        	movaps xmm2,xmm1
105601b3:	0f c6 d1 00                                     	shufps xmm2,xmm1,0x0
105601b7:	0f 28 e1                                        	movaps xmm4,xmm1
105601ba:	0f c6 e1 55                                     	shufps xmm4,xmm1,0x55
105601be:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
105601c2:	0f 59 f9                                        	mulps  xmm7,xmm1
105601c5:	0f 29 7c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm7
105601ca:	0f 28 f8                                        	movaps xmm7,xmm0
105601cd:	0f 59 fa                                        	mulps  xmm7,xmm2
105601d0:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm7
105601d5:	0f 28 f8                                        	movaps xmm7,xmm0
105601d8:	0f 59 c1                                        	mulps  xmm0,xmm1
105601db:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
105601e0:	0f 57 c0                                        	xorps  xmm0,xmm0
105601e3:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
105601e8:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
105601f0:	0f 59 fc                                        	mulps  xmm7,xmm4
105601f3:	0f 29 7c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm7
105601f8:	0f 28 7c 24 10                                  	movaps xmm7,XMMWORD PTR [esp+0x10]
105601fd:	0f 28 c7                                        	movaps xmm0,xmm7
10560200:	0f 59 c1                                        	mulps  xmm0,xmm1
10560203:	0f 58 c6                                        	addps  xmm0,xmm6
10560206:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm0
1056020e:	0f 28 c7                                        	movaps xmm0,xmm7
10560211:	0f 28 7c 24 60                                  	movaps xmm7,XMMWORD PTR [esp+0x60]
10560216:	0f 59 c4                                        	mulps  xmm0,xmm4
10560219:	0f 5c 44 24 40                                  	subps  xmm0,XMMWORD PTR [esp+0x40]
1056021e:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
10560226:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1056022b:	0f 59 c2                                        	mulps  xmm0,xmm2
1056022e:	0f 58 44 24 30                                  	addps  xmm0,XMMWORD PTR [esp+0x30]
10560233:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
1056023b:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
10560240:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
10560245:	0f 59 ec                                        	mulps  xmm5,xmm4
10560248:	0f 28 c5                                        	movaps xmm0,xmm5
1056024b:	0f 59 c1                                        	mulps  xmm0,xmm1
1056024e:	0f 58 44 24 40                                  	addps  xmm0,XMMWORD PTR [esp+0x40]
10560253:	0f 29 84 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm0
1056025b:	0f 28 c5                                        	movaps xmm0,xmm5
1056025e:	0f 59 c4                                        	mulps  xmm0,xmm4
10560261:	0f 59 ea                                        	mulps  xmm5,xmm2
10560264:	0f 58 c6                                        	addps  xmm0,xmm6
10560267:	0f 5c ef                                        	subps  xmm5,xmm7
1056026a:	0f 59 da                                        	mulps  xmm3,xmm2
1056026d:	0f 29 84 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm0
10560275:	0f 29 ac 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm5
1056027d:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
10560282:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
10560287:	0f 28 c3                                        	movaps xmm0,xmm3
1056028a:	0f 59 c1                                        	mulps  xmm0,xmm1
1056028d:	0f 5c 44 24 30                                  	subps  xmm0,XMMWORD PTR [esp+0x30]
10560292:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
10560297:	0f 28 c3                                        	movaps xmm0,xmm3
1056029a:	0f 59 c4                                        	mulps  xmm0,xmm4
1056029d:	0f 58 c7                                        	addps  xmm0,xmm7
105602a0:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
105602a5:	f3 0f 10 44 24 60                               	movss  xmm0,DWORD PTR [esp+0x60]
105602ab:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
105602b1:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
105602b7:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
105602bd:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
105602c3:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
105602c9:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
105602cc:	0f 59 da                                        	mulps  xmm3,xmm2
105602cf:	0f 58 de                                        	addps  xmm3,xmm6
105602d2:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
105602d7:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
105602dd:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
105602e3:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
105602e8:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
105602f0:	f3 0f 10 44 24 70                               	movss  xmm0,DWORD PTR [esp+0x70]
105602f6:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
105602fc:	f3 0f 10 84 24 d0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd0]
10560305:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1056030b:	f3 0f 10 84 24 b0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xb0]
10560314:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1056031a:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xf0]
10560323:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10560329:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1056032e:	0f 29 84 24 10 01 00 00                         	movaps XMMWORD PTR [esp+0x110],xmm0
10560336:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
1056033f:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10560345:	f3 0f 10 84 24 a0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xa0]
1056034e:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10560354:	f3 0f 10 84 24 c0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xc0]
1056035d:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10560363:	f3 0f 10 84 24 e0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xe0]
1056036c:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10560372:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10560377:	0f 29 84 24 20 01 00 00                         	movaps XMMWORD PTR [esp+0x120],xmm0
1056037f:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
10560387:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1056038d:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
10560392:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10560398:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
1056039d:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
105603a3:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
105603a7:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
105603ad:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
105603b2:	0f 29 84 24 30 01 00 00                         	movaps XMMWORD PTR [esp+0x130],xmm0
105603ba:	e8 e1 9d 1c 00                                  	call   0x1072a1a0
105603bf:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
105603c2:	8b f8                                           	mov    edi,eax
105603c4:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
105603c7:	50                                              	push   eax
105603c8:	51                                              	push   ecx
105603c9:	8b cf                                           	mov    ecx,edi
105603cb:	e8 e0 a7 1c 00                                  	call   0x1072abb0
105603d0:	8b f0                                           	mov    esi,eax
105603d2:	85 f6                                           	test   esi,esi
105603d4:	74 14                                           	je     0x105603ea
105603d6:	8b 15 98 d9 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d998
105603dc:	52                                              	push   edx
105603dd:	8b ce                                           	mov    ecx,esi
105603df:	e8 bc 69 1c 00                                  	call   0x10726da0
105603e4:	8b d8                                           	mov    ebx,eax
105603e6:	85 db                                           	test   ebx,ebx
105603e8:	75 15                                           	jne    0x105603ff
105603ea:	b8 e9 03 00 00                                  	mov    eax,0x3e9
105603ef:	33 c9                                           	xor    ecx,ecx
105603f1:	85 c0                                           	test   eax,eax
105603f3:	0f 94 c1                                        	sete   cl
105603f6:	8b c1                                           	mov    eax,ecx
105603f8:	5f                                              	pop    edi
105603f9:	5e                                              	pop    esi
105603fa:	5b                                              	pop    ebx
105603fb:	8b e5                                           	mov    esp,ebp
105603fd:	5d                                              	pop    ebp
105603fe:	c3                                              	ret
105603ff:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
10560402:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
10560405:	50                                              	push   eax
10560406:	51                                              	push   ecx
10560407:	8b cf                                           	mov    ecx,edi
10560409:	e8 a2 a7 1c 00                                  	call   0x1072abb0
1056040e:	8b f8                                           	mov    edi,eax
10560410:	85 ff                                           	test   edi,edi
10560412:	75 15                                           	jne    0x10560429
10560414:	b8 ea 03 00 00                                  	mov    eax,0x3ea
10560419:	33 c9                                           	xor    ecx,ecx
1056041b:	85 c0                                           	test   eax,eax
1056041d:	0f 94 c1                                        	sete   cl
10560420:	8b c1                                           	mov    eax,ecx
10560422:	5f                                              	pop    edi
10560423:	5e                                              	pop    esi
10560424:	5b                                              	pop    ebx
10560425:	8b e5                                           	mov    esp,ebp
10560427:	5d                                              	pop    ebp
10560428:	c3                                              	ret
10560429:	80 7d 20 00                                     	cmp    BYTE PTR [ebp+0x20],0x0
1056042d:	74 19                                           	je     0x10560448
1056042f:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
10560435:	52                                              	push   edx
10560436:	8b ce                                           	mov    ecx,esi
10560438:	e8 63 69 1c 00                                  	call   0x10726da0
1056043d:	85 c0                                           	test   eax,eax
1056043f:	74 07                                           	je     0x10560448
10560441:	8b c8                                           	mov    ecx,eax
10560443:	e8 f8 eb 1c 00                                  	call   0x1072f040
10560448:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
1056044b:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
1056044e:	50                                              	push   eax
1056044f:	8d 8c 24 04 01 00 00                            	lea    ecx,[esp+0x104]
10560456:	51                                              	push   ecx
10560457:	52                                              	push   edx
10560458:	57                                              	push   edi
10560459:	8b cb                                           	mov    ecx,ebx
1056045b:	e8 b0 c2 1e 00                                  	call   0x1074c710
10560460:	33 c9                                           	xor    ecx,ecx
10560462:	85 c0                                           	test   eax,eax
10560464:	0f 94 c1                                        	sete   cl
10560467:	5f                                              	pop    edi
10560468:	5e                                              	pop    esi
10560469:	5b                                              	pop    ebx
1056046a:	8b c1                                           	mov    eax,ecx
1056046c:	8b e5                                           	mov    esp,ebp
1056046e:	5d                                              	pop    ebp
1056046f:	c3                                              	ret
