# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf23b0 (RoofPolygon_AdjustDiagonalNormalFrame)
Complete Ghidra function body: 0x00bf23b0..0x00bf2539 (exclusive end)
Ghidra body ranges: [[00bf23b0, 00bf2538]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf23b0 <.text+0x7f13b0>:
  bf23b0:	55                                              	push   ebp
  bf23b1:	8b ec                                           	mov    ebp,esp
  bf23b3:	83 e4 f0                                        	and    esp,0xfffffff0
  bf23b6:	81 ec a0 00 00 00                               	sub    esp,0xa0
  bf23bc:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  bf23bf:	0f 28 01                                        	movaps xmm0,XMMWORD PTR [ecx]
  bf23c2:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
  bf23c6:	d9 04 24                                        	fld    DWORD PTR [esp]
  bf23c9:	d9 e1                                           	fabs
  bf23cb:	d9 05 e8 34 07 01                               	fld    DWORD PTR ds:0x10734e8
  bf23d1:	d9 c9                                           	fxch   st(1)
  bf23d3:	df f1                                           	fcomip st,st(1)
  bf23d5:	0f 86 58 01 00 00                               	jbe    0xbf2533
  bf23db:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
  bf23df:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  bf23e3:	d9 e1                                           	fabs
  bf23e5:	df f1                                           	fcomip st,st(1)
  bf23e7:	dd d8                                           	fstp   st(0)
  bf23e9:	0f 86 46 01 00 00                               	jbe    0xbf2535
  bf23ef:	f3 0f 10 05 e4 34 07 01                         	movss  xmm0,DWORD PTR ds:0x10734e4
  bf23f7:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  bf23fb:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
  bf23ff:	d9 04 24                                        	fld    DWORD PTR [esp]
  bf2402:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
  bf2406:	d9 fe                                           	fsin
  bf2408:	f3 0f 10 1d f8 98 f9 00                         	movss  xmm3,DWORD PTR ds:0xf998f8
  bf2410:	f3 0f 10 05 cc 4c 0f 01                         	movss  xmm0,DWORD PTR ds:0x10f4ccc
  bf2418:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  bf241c:	0f 29 5c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm3
  bf2421:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  bf2425:	0f 57 db                                        	xorps  xmm3,xmm3
  bf2428:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  bf242d:	0f 29 84 24 90 00 00 00                         	movaps XMMWORD PTR [esp+0x90],xmm0
  bf2435:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  bf243a:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  bf243f:	d9 5c 24 1c                                     	fstp   DWORD PTR [esp+0x1c]
  bf2443:	d9 04 24                                        	fld    DWORD PTR [esp]
  bf2446:	d9 ff                                           	fcos
  bf2448:	f3 0f 10 4c 24 1c                               	movss  xmm1,DWORD PTR [esp+0x1c]
  bf244e:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  bf2452:	0f 5c d9                                        	subps  xmm3,xmm1
  bf2455:	0f 29 4c 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm1
  bf245a:	0f 29 9c 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm3
  bf2462:	f3 0f 10 8c 24 80 00 00 00                      	movss  xmm1,DWORD PTR [esp+0x80]
  bf246b:	d9 5c 24 1c                                     	fstp   DWORD PTR [esp+0x1c]
  bf246f:	f3 0f 10 54 24 1c                               	movss  xmm2,DWORD PTR [esp+0x1c]
  bf2475:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  bf2479:	0f 29 14 24                                     	movaps XMMWORD PTR [esp],xmm2
  bf247d:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
  bf2482:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  bf2488:	f3 0f 10 4c 24 40                               	movss  xmm1,DWORD PTR [esp+0x40]
  bf248e:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  bf2494:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  bf249a:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  bf249f:	0f 28 0c 24                                     	movaps xmm1,XMMWORD PTR [esp]
  bf24a3:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  bf24a9:	0f 29 54 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm2
  bf24ae:	f3 0f 10 54 24 60                               	movss  xmm2,DWORD PTR [esp+0x60]
  bf24b4:	f3 0f 10 5c 24 70                               	movss  xmm3,DWORD PTR [esp+0x70]
  bf24ba:	f3 0f 11 54 24 08                               	movss  DWORD PTR [esp+0x8],xmm2
  bf24c0:	f3 0f 10 54 24 30                               	movss  xmm2,DWORD PTR [esp+0x30]
  bf24c6:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  bf24cc:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  bf24d1:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
  bf24d7:	f3 0f 11 54 24 04                               	movss  DWORD PTR [esp+0x4],xmm2
  bf24dd:	0f 28 14 24                                     	movaps xmm2,XMMWORD PTR [esp]
  bf24e1:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  bf24e7:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  bf24ec:	0f 28 01                                        	movaps xmm0,XMMWORD PTR [ecx]
  bf24ef:	0f 28 e0                                        	movaps xmm4,xmm0
  bf24f2:	0f c6 e0 00                                     	shufps xmm4,xmm0,0x0
  bf24f6:	0f 59 e1                                        	mulps  xmm4,xmm1
  bf24f9:	f3 0f 11 5c 24 08                               	movss  DWORD PTR [esp+0x8],xmm3
  bf24ff:	f3 0f 10 9c 24 90 00 00 00                      	movss  xmm3,DWORD PTR [esp+0x90]
  bf2508:	0f 28 c8                                        	movaps xmm1,xmm0
  bf250b:	0f c6 c8 55                                     	shufps xmm1,xmm0,0x55
  bf250f:	0f 59 ca                                        	mulps  xmm1,xmm2
  bf2512:	0f 58 e1                                        	addps  xmm4,xmm1
  bf2515:	f3 0f 11 5c 24 04                               	movss  DWORD PTR [esp+0x4],xmm3
  bf251b:	0f 28 1c 24                                     	movaps xmm3,XMMWORD PTR [esp]
  bf251f:	0f 28 c8                                        	movaps xmm1,xmm0
  bf2522:	0f c6 c8 aa                                     	shufps xmm1,xmm0,0xaa
  bf2526:	0f 59 cb                                        	mulps  xmm1,xmm3
  bf2529:	0f 58 e1                                        	addps  xmm4,xmm1
  bf252c:	0f 29 21                                        	movaps XMMWORD PTR [ecx],xmm4
  bf252f:	8b e5                                           	mov    esp,ebp
  bf2531:	5d                                              	pop    ebp
  bf2532:	c3                                              	ret
  bf2533:	dd d8                                           	fstp   st(0)
  bf2535:	8b e5                                           	mov    esp,ebp
  bf2537:	5d                                              	pop    ebp
  bf2538:	c3                                              	ret
