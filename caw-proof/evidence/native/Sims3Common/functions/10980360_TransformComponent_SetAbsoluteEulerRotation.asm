# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980360 (TransformComponent_SetAbsoluteEulerRotation)
Paired Ghidra pseudocode: 10980360_TransformComponent_SetAbsoluteEulerRotation.c
Window: [0x10980360, 0x109804d0) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x109804d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980360: 55 8b ec 83 e4 f0 83 ec 40 8b 45 0c f3 0f 10 48
10980370: 08 f3 0f 10 00 f3 0f 11 4c 24 18 f3 0f 10 48 04
10980380: f3 0f 11 44 24 1c f3 0f 11 44 24 10 f3 0f 11 4c
10980390: 24 14 0f 28 44 24 10 f3 0f 10 0d ec 10 b3 10 0f
109803a0: 28 d0 0f c6 d0 00 0f c6 c9 00 0f 59 d1 0f 29 54
109803b0: 24 10 d9 44 24 10 0f 29 44 24 30 d9 fe 0f 29 54
109803c0: 24 10 0f 28 d8 0f c6 d8 55 0f 59 d9 0f c6 c0 aa
109803d0: 0f 59 c1 d9 5c 24 0c d9 44 24 10 d9 ff f3 0f 10
109803e0: 74 24 0c 0f 29 5c 24 10 0f c6 f6 00 d9 5c 24 0c
109803f0: d9 44 24 10 d9 fe f3 0f 10 7c 24 0c 0f 29 5c 24
10980400: 10 0f c6 ff 00 d9 5c 24 0c d9 44 24 10 d9 ff f3
10980410: 0f 10 54 24 0c 0f 29 44 24 10 0f c6 d2 00 d9 5c
10980420: 24 0c d9 44 24 10 d9 fe f3 0f 10 5c 24 0c 0f 29
10980430: 44 24 10 0f c6 db 00 d9 5c 24 0c d9 44 24 10 d9
10980440: ff f3 0f 10 64 24 0c 0f c6 e4 00 0f 28 c4 0f 59
10980450: c7 0f 59 e6 0f 29 64 24 10 0f 59 e3 d9 5c 24 0c
10980460: f3 0f 10 6c 24 0c 0f c6 ed 00 0f 28 cd 0f 59 cf
10980470: 0f 59 ee 0f 28 f8 0f 28 f5 0f 59 f3 0f 59 fa 0f
10980480: 5c f7 0f 28 f9 0f 59 c3 0f 59 cb 0f 28 5c 24 10
10980490: 0f 59 fa 0f 59 ea 0f 59 da 0f 58 e7 0f 5c c5 0f
109804a0: 58 cb 0f c6 f4 10 0f c6 c1 32 8b 4d 08 8d 44 24
109804b0: 20 0f c6 f0 88 50 0f 29 74 24 24 e8 d0 a9 dc ff
109804c0: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980360 <.text+0x97f360>:
10980360:	55                                              	push   ebp
10980361:	8b ec                                           	mov    ebp,esp
10980363:	83 e4 f0                                        	and    esp,0xfffffff0
10980366:	83 ec 40                                        	sub    esp,0x40
10980369:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1098036c:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
10980371:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10980375:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
1098037b:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10980380:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10980386:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1098038c:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10980392:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10980397:	f3 0f 10 0d ec 10 b3 10                         	movss  xmm1,DWORD PTR ds:0x10b310ec
1098039f:	0f 28 d0                                        	movaps xmm2,xmm0
109803a2:	0f c6 d0 00                                     	shufps xmm2,xmm0,0x0
109803a6:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
109803aa:	0f 59 d1                                        	mulps  xmm2,xmm1
109803ad:	0f 29 54 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm2
109803b2:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
109803b6:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
109803bb:	d9 fe                                           	fsin
109803bd:	0f 29 54 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm2
109803c2:	0f 28 d8                                        	movaps xmm3,xmm0
109803c5:	0f c6 d8 55                                     	shufps xmm3,xmm0,0x55
109803c9:	0f 59 d9                                        	mulps  xmm3,xmm1
109803cc:	0f c6 c0 aa                                     	shufps xmm0,xmm0,0xaa
109803d0:	0f 59 c1                                        	mulps  xmm0,xmm1
109803d3:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
109803d7:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
109803db:	d9 ff                                           	fcos
109803dd:	f3 0f 10 74 24 0c                               	movss  xmm6,DWORD PTR [esp+0xc]
109803e3:	0f 29 5c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm3
109803e8:	0f c6 f6 00                                     	shufps xmm6,xmm6,0x0
109803ec:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
109803f0:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
109803f4:	d9 fe                                           	fsin
109803f6:	f3 0f 10 7c 24 0c                               	movss  xmm7,DWORD PTR [esp+0xc]
109803fc:	0f 29 5c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm3
10980401:	0f c6 ff 00                                     	shufps xmm7,xmm7,0x0
10980405:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10980409:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
1098040d:	d9 ff                                           	fcos
1098040f:	f3 0f 10 54 24 0c                               	movss  xmm2,DWORD PTR [esp+0xc]
10980415:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1098041a:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
1098041e:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10980422:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10980426:	d9 fe                                           	fsin
10980428:	f3 0f 10 5c 24 0c                               	movss  xmm3,DWORD PTR [esp+0xc]
1098042e:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10980433:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
10980437:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1098043b:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
1098043f:	d9 ff                                           	fcos
10980441:	f3 0f 10 64 24 0c                               	movss  xmm4,DWORD PTR [esp+0xc]
10980447:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
1098044b:	0f 28 c4                                        	movaps xmm0,xmm4
1098044e:	0f 59 c7                                        	mulps  xmm0,xmm7
10980451:	0f 59 e6                                        	mulps  xmm4,xmm6
10980454:	0f 29 64 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm4
10980459:	0f 59 e3                                        	mulps  xmm4,xmm3
1098045c:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10980460:	f3 0f 10 6c 24 0c                               	movss  xmm5,DWORD PTR [esp+0xc]
10980466:	0f c6 ed 00                                     	shufps xmm5,xmm5,0x0
1098046a:	0f 28 cd                                        	movaps xmm1,xmm5
1098046d:	0f 59 cf                                        	mulps  xmm1,xmm7
10980470:	0f 59 ee                                        	mulps  xmm5,xmm6
10980473:	0f 28 f8                                        	movaps xmm7,xmm0
10980476:	0f 28 f5                                        	movaps xmm6,xmm5
10980479:	0f 59 f3                                        	mulps  xmm6,xmm3
1098047c:	0f 59 fa                                        	mulps  xmm7,xmm2
1098047f:	0f 5c f7                                        	subps  xmm6,xmm7
10980482:	0f 28 f9                                        	movaps xmm7,xmm1
10980485:	0f 59 c3                                        	mulps  xmm0,xmm3
10980488:	0f 59 cb                                        	mulps  xmm1,xmm3
1098048b:	0f 28 5c 24 10                                  	movaps xmm3,XMMWORD PTR [esp+0x10]
10980490:	0f 59 fa                                        	mulps  xmm7,xmm2
10980493:	0f 59 ea                                        	mulps  xmm5,xmm2
10980496:	0f 59 da                                        	mulps  xmm3,xmm2
10980499:	0f 58 e7                                        	addps  xmm4,xmm7
1098049c:	0f 5c c5                                        	subps  xmm0,xmm5
1098049f:	0f 58 cb                                        	addps  xmm1,xmm3
109804a2:	0f c6 f4 10                                     	shufps xmm6,xmm4,0x10
109804a6:	0f c6 c1 32                                     	shufps xmm0,xmm1,0x32
109804aa:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
109804ad:	8d 44 24 20                                     	lea    eax,[esp+0x20]
109804b1:	0f c6 f0 88                                     	shufps xmm6,xmm0,0x88
109804b5:	50                                              	push   eax
109804b6:	0f 29 74 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm6
109804bb:	e8 d0 a9 dc ff                                  	call   0x1074ae90
109804c0:	8b e5                                           	mov    esp,ebp
109804c2:	5d                                              	pop    ebp
109804c3:	c3                                              	ret
109804c4:	cc                                              	int3
109804c5:	cc                                              	int3
109804c6:	cc                                              	int3
109804c7:	cc                                              	int3
109804c8:	cc                                              	int3
109804c9:	cc                                              	int3
109804ca:	cc                                              	int3
109804cb:	cc                                              	int3
109804cc:	cc                                              	int3
109804cd:	cc                                              	int3
109804ce:	cc                                              	int3
109804cf:	cc                                              	int3
