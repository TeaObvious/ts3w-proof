# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109991a0 (WorldWrap_RequestCameraMove)
Paired Ghidra pseudocode: 109991A0_WorldWrap_RequestCameraMove.c
Window: [0x109991a0, 0x10999610) (1136 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109991a0: 55 8b ec 83 e4 f0 81 ec f8 00 00 00 56 57 e8 7d
109991b0: 34 dc ff 8b c8 e8 c6 e8 f9 ff 85 c0 0f 84 3d 04
109991c0: 00 00 8b c8 e8 87 37 dc ff 8b f0 85 f6 0f 84 2c
109991d0: 04 00 00 8b 7e 0c 85 ff 0f 84 21 04 00 00 8d 84
109991e0: 24 80 00 00 00 50 8b cf e8 f3 ad db ff 0f 28 84
109991f0: 24 80 00 00 00 0f 28 ac 24 a0 00 00 00 0f 28 4f
10999200: 60 0f 28 d0 0f 5c d5 0f 59 d2 0f 28 da 0f c6 d3
10999210: 02 0f 28 e3 0f c6 e3 01 0f 58 d4 0f 28 a4 24 c0
10999220: 00 00 00 0f 58 d3 0f 28 d8 0f 5c dc 0f 59 db 0f
10999230: 28 f3 0f c6 de 02 0f 28 fe 0f c6 fe 01 0f 58 df
10999240: 0f 58 de 0f c6 d2 00 0f c6 db 00 0f 51 d2 0f 51
10999250: db f3 0f 11 54 24 70 f3 0f 11 5c 24 20 f3 0f 10
10999260: 54 24 20 0f 2f 54 24 70 0f 5c c1 0f 82 fa 00 00
10999270: 00 0f 28 e0 0f 5c e9 f3 0f 10 35 ec 10 b3 10 0f
10999280: 28 cd 0f 59 cd 0f 28 c1 0f c6 c1 02 0f 28 d1 0f
10999290: c6 d1 01 0f 58 c2 0f 58 c1 0f c6 c0 00 0f 52 d0
109992a0: 0f 29 44 24 10 0f 28 cc 0f 59 cc 0f 28 c1 0f c6
109992b0: c1 02 0f 28 d9 0f c6 d9 01 0f 58 c3 f3 0f 10 1d
109992c0: d4 b0 ac 10 0f 58 c1 0f c6 c0 00 0f 52 c8 0f 28
109992d0: f9 0f 59 f9 0f 59 f8 0f c6 db 00 0f c6 f6 00 0f
109992e0: 28 c3 0f 5c c7 0f 28 f9 0f 59 fe 0f 59 c7 0f 58
109992f0: c1 0f 59 c4 0f 28 ca 0f 59 ca 0f 59 4c 24 10 0f
10999300: 28 e3 0f 5c e1 0f 28 ca 0f 59 ce 0f 59 e1 0f 58
10999310: e2 0f 59 e5 0f 59 c4 0f 28 c8 0f c6 c8 02 0f 28
10999320: d0 0f c6 d0 01 0f 58 ca 0f 58 c8 f3 0f 10 05 84
10999330: e1 aa 10 0f 28 d1 0f c6 d1 00 0f c6 c0 00 0f 5f
10999340: d0 0f 5d d3 0f 29 54 24 10 d9 44 24 10 0f 29 5c
10999350: 24 60 0f 29 74 24 50 e8 c0 75 0f 00 d9 5c 24 0c
10999360: f3 0f 10 44 24 0c e9 f5 00 00 00 0f 5c e1 0f 28
10999370: e8 0f 28 cd 0f 59 cd 0f 28 c1 0f c6 c1 02 0f 28
10999380: d1 0f c6 d1 01 0f 58 c2 0f 58 c1 0f c6 c0 00 0f
10999390: 52 d8 0f 28 fb 0f 59 fb 0f 59 f8 0f 28 d4 0f 59
109993a0: d4 0f 28 ca 0f c6 ca 02 0f 28 f2 0f c6 f2 01 0f
109993b0: 58 ce f3 0f 10 35 d4 b0 ac 10 0f 58 ca 0f c6 c9
109993c0: 00 0f 52 d1 0f 29 4c 24 10 f3 0f 10 0d ec 10 b3
109993d0: 10 0f c6 f6 00 0f c6 c9 00 0f 28 c6 0f 5c c7 0f
109993e0: 28 fb 0f 59 f9 0f 59 c7 0f 58 c3 0f 59 c5 0f 28
109993f0: da 0f 59 da 0f 59 5c 24 10 0f 28 ee 0f 5c eb 0f
10999400: 28 da 0f 59 d9 0f 59 eb 0f 58 ea 0f 29 4c 24 50
10999410: 0f 59 ec 0f 59 c5 0f 28 c8 0f c6 c8 02 0f 28 d0
10999420: 0f c6 d0 01 0f 58 ca 0f 58 c8 f3 0f 10 05 84 e1
10999430: aa 10 0f 28 d1 0f c6 d1 00 0f c6 c0 00 0f 5f d0
10999440: 0f 5d d6 0f 29 54 24 10 d9 44 24 10 0f 29 74 24
10999450: 60 e8 c6 74 0f 00 d9 5c 24 0c f3 0f 10 44 24 0c
10999460: 0f c6 c0 00 0f 29 44 24 10 f3 0f 10 44 24 10 f3
10999470: 0f 59 05 ec 10 b3 10 f3 0f 10 c0 0f c6 c0 00 0f
10999480: 29 44 24 10 d9 44 24 10 f3 0f 10 4f 1c d9 fe f3
10999490: 0f 10 57 20 f3 0f 10 5d 0c d9 5c 24 0c f3 0f 10
109994a0: 44 24 0c 0f c6 c0 00 0f 29 44 24 10 0f 28 c3 f3
109994b0: 0f 5e 44 24 10 0f c6 c0 00 0f 29 44 24 10 f3 0f
109994c0: 10 44 24 10 0f 2f c8 f3 0f 11 44 24 0c 76 0c f3
109994d0: 0f 58 cb f3 0f 11 4c 24 0c eb 0f 0f 2f c2 76 0a
109994e0: f3 0f 5c d3 f3 0f 11 54 24 0c 8b 45 08 f3 0f 10
109994f0: 48 08 f3 0f 10 00 f3 0f 11 44 24 2c f3 0f 11 44
10999500: 24 20 f3 0f 11 4c 24 28 f3 0f 10 48 04 f3 0f 11
10999510: 4c 24 24 0f 28 6c 24 20 0f 29 6c 24 30 0f 28 47
10999520: 50 0f 57 db 0f 5c d8 0f 28 cb 0f 59 cb 0f 28 c1
10999530: 0f c6 c1 02 0f 28 d1 0f c6 d1 01 0f 58 c2 0f 28
10999540: 54 24 60 0f 58 c1 0f c6 c0 00 0f 52 e0 0f 28 f4
10999550: 0f 59 f4 0f 59 f0 0f 28 ca 0f 5c ce 0f 28 74 24
10999560: 50 0f 28 fc 0f 59 fe 0f 59 cf 0f 58 cc 0f 28 e1
10999570: 0f 59 e1 0f 59 e0 0f 5c d4 0f 28 c1 0f 59 c6 0f
10999580: 59 d0 f3 0f 10 44 24 0c 0f 58 d1 0f 59 d3 0f c6
10999590: c0 00 0f 59 d0 0f 5c ea 0f 29 6c 24 40 8b 16 8b
109995a0: 42 0c 68 db 4e 39 4d 8b ce ff d0 8b 16 8b f8 8b
109995b0: 42 0c 68 9b 61 bc 14 8b ce ff d0 85 ff 74 1e 8b
109995c0: 17 8b 52 2c 8d 44 24 30 50 8d 4c 24 44 51 8b cf
109995d0: ff d2 b8 01 00 00 00 5f 5e 8b e5 5d c3 85 c0 74
109995e0: 1e 8b 10 8b 52 2c 8d 4c 24 30 51 8d 4c 24 44 51
109995f0: 8b c8 ff d2 b8 01 00 00 00 5f 5e 8b e5 5d c3 5f
10999600: 33 c0 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109991a0 <.text+0x9981a0>:
109991a0:	55                                              	push   ebp
109991a1:	8b ec                                           	mov    ebp,esp
109991a3:	83 e4 f0                                        	and    esp,0xfffffff0
109991a6:	81 ec f8 00 00 00                               	sub    esp,0xf8
109991ac:	56                                              	push   esi
109991ad:	57                                              	push   edi
109991ae:	e8 7d 34 dc ff                                  	call   0x1075c630
109991b3:	8b c8                                           	mov    ecx,eax
109991b5:	e8 c6 e8 f9 ff                                  	call   0x10937a80
109991ba:	85 c0                                           	test   eax,eax
109991bc:	0f 84 3d 04 00 00                               	je     0x109995ff
109991c2:	8b c8                                           	mov    ecx,eax
109991c4:	e8 87 37 dc ff                                  	call   0x1075c950
109991c9:	8b f0                                           	mov    esi,eax
109991cb:	85 f6                                           	test   esi,esi
109991cd:	0f 84 2c 04 00 00                               	je     0x109995ff
109991d3:	8b 7e 0c                                        	mov    edi,DWORD PTR [esi+0xc]
109991d6:	85 ff                                           	test   edi,edi
109991d8:	0f 84 21 04 00 00                               	je     0x109995ff
109991de:	8d 84 24 80 00 00 00                            	lea    eax,[esp+0x80]
109991e5:	50                                              	push   eax
109991e6:	8b cf                                           	mov    ecx,edi
109991e8:	e8 f3 ad db ff                                  	call   0x10753fe0
109991ed:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
109991f5:	0f 28 ac 24 a0 00 00 00                         	movaps xmm5,XMMWORD PTR [esp+0xa0]
109991fd:	0f 28 4f 60                                     	movaps xmm1,XMMWORD PTR [edi+0x60]
10999201:	0f 28 d0                                        	movaps xmm2,xmm0
10999204:	0f 5c d5                                        	subps  xmm2,xmm5
10999207:	0f 59 d2                                        	mulps  xmm2,xmm2
1099920a:	0f 28 da                                        	movaps xmm3,xmm2
1099920d:	0f c6 d3 02                                     	shufps xmm2,xmm3,0x2
10999211:	0f 28 e3                                        	movaps xmm4,xmm3
10999214:	0f c6 e3 01                                     	shufps xmm4,xmm3,0x1
10999218:	0f 58 d4                                        	addps  xmm2,xmm4
1099921b:	0f 28 a4 24 c0 00 00 00                         	movaps xmm4,XMMWORD PTR [esp+0xc0]
10999223:	0f 58 d3                                        	addps  xmm2,xmm3
10999226:	0f 28 d8                                        	movaps xmm3,xmm0
10999229:	0f 5c dc                                        	subps  xmm3,xmm4
1099922c:	0f 59 db                                        	mulps  xmm3,xmm3
1099922f:	0f 28 f3                                        	movaps xmm6,xmm3
10999232:	0f c6 de 02                                     	shufps xmm3,xmm6,0x2
10999236:	0f 28 fe                                        	movaps xmm7,xmm6
10999239:	0f c6 fe 01                                     	shufps xmm7,xmm6,0x1
1099923d:	0f 58 df                                        	addps  xmm3,xmm7
10999240:	0f 58 de                                        	addps  xmm3,xmm6
10999243:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
10999247:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
1099924b:	0f 51 d2                                        	sqrtps xmm2,xmm2
1099924e:	0f 51 db                                        	sqrtps xmm3,xmm3
10999251:	f3 0f 11 54 24 70                               	movss  DWORD PTR [esp+0x70],xmm2
10999257:	f3 0f 11 5c 24 20                               	movss  DWORD PTR [esp+0x20],xmm3
1099925d:	f3 0f 10 54 24 20                               	movss  xmm2,DWORD PTR [esp+0x20]
10999263:	0f 2f 54 24 70                                  	comiss xmm2,DWORD PTR [esp+0x70]
10999268:	0f 5c c1                                        	subps  xmm0,xmm1
1099926b:	0f 82 fa 00 00 00                               	jb     0x1099936b
10999271:	0f 28 e0                                        	movaps xmm4,xmm0
10999274:	0f 5c e9                                        	subps  xmm5,xmm1
10999277:	f3 0f 10 35 ec 10 b3 10                         	movss  xmm6,DWORD PTR ds:0x10b310ec
1099927f:	0f 28 cd                                        	movaps xmm1,xmm5
10999282:	0f 59 cd                                        	mulps  xmm1,xmm5
10999285:	0f 28 c1                                        	movaps xmm0,xmm1
10999288:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
1099928c:	0f 28 d1                                        	movaps xmm2,xmm1
1099928f:	0f c6 d1 01                                     	shufps xmm2,xmm1,0x1
10999293:	0f 58 c2                                        	addps  xmm0,xmm2
10999296:	0f 58 c1                                        	addps  xmm0,xmm1
10999299:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1099929d:	0f 52 d0                                        	rsqrtps xmm2,xmm0
109992a0:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
109992a5:	0f 28 cc                                        	movaps xmm1,xmm4
109992a8:	0f 59 cc                                        	mulps  xmm1,xmm4
109992ab:	0f 28 c1                                        	movaps xmm0,xmm1
109992ae:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
109992b2:	0f 28 d9                                        	movaps xmm3,xmm1
109992b5:	0f c6 d9 01                                     	shufps xmm3,xmm1,0x1
109992b9:	0f 58 c3                                        	addps  xmm0,xmm3
109992bc:	f3 0f 10 1d d4 b0 ac 10                         	movss  xmm3,DWORD PTR ds:0x10acb0d4
109992c4:	0f 58 c1                                        	addps  xmm0,xmm1
109992c7:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
109992cb:	0f 52 c8                                        	rsqrtps xmm1,xmm0
109992ce:	0f 28 f9                                        	movaps xmm7,xmm1
109992d1:	0f 59 f9                                        	mulps  xmm7,xmm1
109992d4:	0f 59 f8                                        	mulps  xmm7,xmm0
109992d7:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
109992db:	0f c6 f6 00                                     	shufps xmm6,xmm6,0x0
109992df:	0f 28 c3                                        	movaps xmm0,xmm3
109992e2:	0f 5c c7                                        	subps  xmm0,xmm7
109992e5:	0f 28 f9                                        	movaps xmm7,xmm1
109992e8:	0f 59 fe                                        	mulps  xmm7,xmm6
109992eb:	0f 59 c7                                        	mulps  xmm0,xmm7
109992ee:	0f 58 c1                                        	addps  xmm0,xmm1
109992f1:	0f 59 c4                                        	mulps  xmm0,xmm4
109992f4:	0f 28 ca                                        	movaps xmm1,xmm2
109992f7:	0f 59 ca                                        	mulps  xmm1,xmm2
109992fa:	0f 59 4c 24 10                                  	mulps  xmm1,XMMWORD PTR [esp+0x10]
109992ff:	0f 28 e3                                        	movaps xmm4,xmm3
10999302:	0f 5c e1                                        	subps  xmm4,xmm1
10999305:	0f 28 ca                                        	movaps xmm1,xmm2
10999308:	0f 59 ce                                        	mulps  xmm1,xmm6
1099930b:	0f 59 e1                                        	mulps  xmm4,xmm1
1099930e:	0f 58 e2                                        	addps  xmm4,xmm2
10999311:	0f 59 e5                                        	mulps  xmm4,xmm5
10999314:	0f 59 c4                                        	mulps  xmm0,xmm4
10999317:	0f 28 c8                                        	movaps xmm1,xmm0
1099931a:	0f c6 c8 02                                     	shufps xmm1,xmm0,0x2
1099931e:	0f 28 d0                                        	movaps xmm2,xmm0
10999321:	0f c6 d0 01                                     	shufps xmm2,xmm0,0x1
10999325:	0f 58 ca                                        	addps  xmm1,xmm2
10999328:	0f 58 c8                                        	addps  xmm1,xmm0
1099932b:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
10999333:	0f 28 d1                                        	movaps xmm2,xmm1
10999336:	0f c6 d1 00                                     	shufps xmm2,xmm1,0x0
1099933a:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1099933e:	0f 5f d0                                        	maxps  xmm2,xmm0
10999341:	0f 5d d3                                        	minps  xmm2,xmm3
10999344:	0f 29 54 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm2
10999349:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
1099934d:	0f 29 5c 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm3
10999352:	0f 29 74 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm6
10999357:	e8 c0 75 0f 00                                  	call   0x10a9091c
1099935c:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10999360:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
10999366:	e9 f5 00 00 00                                  	jmp    0x10999460
1099936b:	0f 5c e1                                        	subps  xmm4,xmm1
1099936e:	0f 28 e8                                        	movaps xmm5,xmm0
10999371:	0f 28 cd                                        	movaps xmm1,xmm5
10999374:	0f 59 cd                                        	mulps  xmm1,xmm5
10999377:	0f 28 c1                                        	movaps xmm0,xmm1
1099937a:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
1099937e:	0f 28 d1                                        	movaps xmm2,xmm1
10999381:	0f c6 d1 01                                     	shufps xmm2,xmm1,0x1
10999385:	0f 58 c2                                        	addps  xmm0,xmm2
10999388:	0f 58 c1                                        	addps  xmm0,xmm1
1099938b:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1099938f:	0f 52 d8                                        	rsqrtps xmm3,xmm0
10999392:	0f 28 fb                                        	movaps xmm7,xmm3
10999395:	0f 59 fb                                        	mulps  xmm7,xmm3
10999398:	0f 59 f8                                        	mulps  xmm7,xmm0
1099939b:	0f 28 d4                                        	movaps xmm2,xmm4
1099939e:	0f 59 d4                                        	mulps  xmm2,xmm4
109993a1:	0f 28 ca                                        	movaps xmm1,xmm2
109993a4:	0f c6 ca 02                                     	shufps xmm1,xmm2,0x2
109993a8:	0f 28 f2                                        	movaps xmm6,xmm2
109993ab:	0f c6 f2 01                                     	shufps xmm6,xmm2,0x1
109993af:	0f 58 ce                                        	addps  xmm1,xmm6
109993b2:	f3 0f 10 35 d4 b0 ac 10                         	movss  xmm6,DWORD PTR ds:0x10acb0d4
109993ba:	0f 58 ca                                        	addps  xmm1,xmm2
109993bd:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
109993c1:	0f 52 d1                                        	rsqrtps xmm2,xmm1
109993c4:	0f 29 4c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm1
109993c9:	f3 0f 10 0d ec 10 b3 10                         	movss  xmm1,DWORD PTR ds:0x10b310ec
109993d1:	0f c6 f6 00                                     	shufps xmm6,xmm6,0x0
109993d5:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
109993d9:	0f 28 c6                                        	movaps xmm0,xmm6
109993dc:	0f 5c c7                                        	subps  xmm0,xmm7
109993df:	0f 28 fb                                        	movaps xmm7,xmm3
109993e2:	0f 59 f9                                        	mulps  xmm7,xmm1
109993e5:	0f 59 c7                                        	mulps  xmm0,xmm7
109993e8:	0f 58 c3                                        	addps  xmm0,xmm3
109993eb:	0f 59 c5                                        	mulps  xmm0,xmm5
109993ee:	0f 28 da                                        	movaps xmm3,xmm2
109993f1:	0f 59 da                                        	mulps  xmm3,xmm2
109993f4:	0f 59 5c 24 10                                  	mulps  xmm3,XMMWORD PTR [esp+0x10]
109993f9:	0f 28 ee                                        	movaps xmm5,xmm6
109993fc:	0f 5c eb                                        	subps  xmm5,xmm3
109993ff:	0f 28 da                                        	movaps xmm3,xmm2
10999402:	0f 59 d9                                        	mulps  xmm3,xmm1
10999405:	0f 59 eb                                        	mulps  xmm5,xmm3
10999408:	0f 58 ea                                        	addps  xmm5,xmm2
1099940b:	0f 29 4c 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm1
10999410:	0f 59 ec                                        	mulps  xmm5,xmm4
10999413:	0f 59 c5                                        	mulps  xmm0,xmm5
10999416:	0f 28 c8                                        	movaps xmm1,xmm0
10999419:	0f c6 c8 02                                     	shufps xmm1,xmm0,0x2
1099941d:	0f 28 d0                                        	movaps xmm2,xmm0
10999420:	0f c6 d0 01                                     	shufps xmm2,xmm0,0x1
10999424:	0f 58 ca                                        	addps  xmm1,xmm2
10999427:	0f 58 c8                                        	addps  xmm1,xmm0
1099942a:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
10999432:	0f 28 d1                                        	movaps xmm2,xmm1
10999435:	0f c6 d1 00                                     	shufps xmm2,xmm1,0x0
10999439:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1099943d:	0f 5f d0                                        	maxps  xmm2,xmm0
10999440:	0f 5d d6                                        	minps  xmm2,xmm6
10999443:	0f 29 54 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm2
10999448:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
1099944c:	0f 29 74 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm6
10999451:	e8 c6 74 0f 00                                  	call   0x10a9091c
10999456:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1099945a:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
10999460:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
10999464:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10999469:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
1099946f:	f3 0f 59 05 ec 10 b3 10                         	mulss  xmm0,DWORD PTR ds:0x10b310ec
10999477:	f3 0f 10 c0                                     	movss  xmm0,xmm0
1099947b:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1099947f:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10999484:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10999488:	f3 0f 10 4f 1c                                  	movss  xmm1,DWORD PTR [edi+0x1c]
1099948d:	d9 fe                                           	fsin
1099948f:	f3 0f 10 57 20                                  	movss  xmm2,DWORD PTR [edi+0x20]
10999494:	f3 0f 10 5d 0c                                  	movss  xmm3,DWORD PTR [ebp+0xc]
10999499:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1099949d:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
109994a3:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
109994a7:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
109994ac:	0f 28 c3                                        	movaps xmm0,xmm3
109994af:	f3 0f 5e 44 24 10                               	divss  xmm0,DWORD PTR [esp+0x10]
109994b5:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
109994b9:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
109994be:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
109994c4:	0f 2f c8                                        	comiss xmm1,xmm0
109994c7:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
109994cd:	76 0c                                           	jbe    0x109994db
109994cf:	f3 0f 58 cb                                     	addss  xmm1,xmm3
109994d3:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
109994d9:	eb 0f                                           	jmp    0x109994ea
109994db:	0f 2f c2                                        	comiss xmm0,xmm2
109994de:	76 0a                                           	jbe    0x109994ea
109994e0:	f3 0f 5c d3                                     	subss  xmm2,xmm3
109994e4:	f3 0f 11 54 24 0c                               	movss  DWORD PTR [esp+0xc],xmm2
109994ea:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
109994ed:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
109994f2:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
109994f6:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
109994fc:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
10999502:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
10999508:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1099950d:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
10999513:	0f 28 6c 24 20                                  	movaps xmm5,XMMWORD PTR [esp+0x20]
10999518:	0f 29 6c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm5
1099951d:	0f 28 47 50                                     	movaps xmm0,XMMWORD PTR [edi+0x50]
10999521:	0f 57 db                                        	xorps  xmm3,xmm3
10999524:	0f 5c d8                                        	subps  xmm3,xmm0
10999527:	0f 28 cb                                        	movaps xmm1,xmm3
1099952a:	0f 59 cb                                        	mulps  xmm1,xmm3
1099952d:	0f 28 c1                                        	movaps xmm0,xmm1
10999530:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
10999534:	0f 28 d1                                        	movaps xmm2,xmm1
10999537:	0f c6 d1 01                                     	shufps xmm2,xmm1,0x1
1099953b:	0f 58 c2                                        	addps  xmm0,xmm2
1099953e:	0f 28 54 24 60                                  	movaps xmm2,XMMWORD PTR [esp+0x60]
10999543:	0f 58 c1                                        	addps  xmm0,xmm1
10999546:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1099954a:	0f 52 e0                                        	rsqrtps xmm4,xmm0
1099954d:	0f 28 f4                                        	movaps xmm6,xmm4
10999550:	0f 59 f4                                        	mulps  xmm6,xmm4
10999553:	0f 59 f0                                        	mulps  xmm6,xmm0
10999556:	0f 28 ca                                        	movaps xmm1,xmm2
10999559:	0f 5c ce                                        	subps  xmm1,xmm6
1099955c:	0f 28 74 24 50                                  	movaps xmm6,XMMWORD PTR [esp+0x50]
10999561:	0f 28 fc                                        	movaps xmm7,xmm4
10999564:	0f 59 fe                                        	mulps  xmm7,xmm6
10999567:	0f 59 cf                                        	mulps  xmm1,xmm7
1099956a:	0f 58 cc                                        	addps  xmm1,xmm4
1099956d:	0f 28 e1                                        	movaps xmm4,xmm1
10999570:	0f 59 e1                                        	mulps  xmm4,xmm1
10999573:	0f 59 e0                                        	mulps  xmm4,xmm0
10999576:	0f 5c d4                                        	subps  xmm2,xmm4
10999579:	0f 28 c1                                        	movaps xmm0,xmm1
1099957c:	0f 59 c6                                        	mulps  xmm0,xmm6
1099957f:	0f 59 d0                                        	mulps  xmm2,xmm0
10999582:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
10999588:	0f 58 d1                                        	addps  xmm2,xmm1
1099958b:	0f 59 d3                                        	mulps  xmm2,xmm3
1099958e:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
10999592:	0f 59 d0                                        	mulps  xmm2,xmm0
10999595:	0f 5c ea                                        	subps  xmm5,xmm2
10999598:	0f 29 6c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm5
1099959d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1099959f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
109995a2:	68 db 4e 39 4d                                  	push   0x4d394edb
109995a7:	8b ce                                           	mov    ecx,esi
109995a9:	ff d0                                           	call   eax
109995ab:	8b 16                                           	mov    edx,DWORD PTR [esi]
109995ad:	8b f8                                           	mov    edi,eax
109995af:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
109995b2:	68 9b 61 bc 14                                  	push   0x14bc619b
109995b7:	8b ce                                           	mov    ecx,esi
109995b9:	ff d0                                           	call   eax
109995bb:	85 ff                                           	test   edi,edi
109995bd:	74 1e                                           	je     0x109995dd
109995bf:	8b 17                                           	mov    edx,DWORD PTR [edi]
109995c1:	8b 52 2c                                        	mov    edx,DWORD PTR [edx+0x2c]
109995c4:	8d 44 24 30                                     	lea    eax,[esp+0x30]
109995c8:	50                                              	push   eax
109995c9:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
109995cd:	51                                              	push   ecx
109995ce:	8b cf                                           	mov    ecx,edi
109995d0:	ff d2                                           	call   edx
109995d2:	b8 01 00 00 00                                  	mov    eax,0x1
109995d7:	5f                                              	pop    edi
109995d8:	5e                                              	pop    esi
109995d9:	8b e5                                           	mov    esp,ebp
109995db:	5d                                              	pop    ebp
109995dc:	c3                                              	ret
109995dd:	85 c0                                           	test   eax,eax
109995df:	74 1e                                           	je     0x109995ff
109995e1:	8b 10                                           	mov    edx,DWORD PTR [eax]
109995e3:	8b 52 2c                                        	mov    edx,DWORD PTR [edx+0x2c]
109995e6:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
109995ea:	51                                              	push   ecx
109995eb:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
109995ef:	51                                              	push   ecx
109995f0:	8b c8                                           	mov    ecx,eax
109995f2:	ff d2                                           	call   edx
109995f4:	b8 01 00 00 00                                  	mov    eax,0x1
109995f9:	5f                                              	pop    edi
109995fa:	5e                                              	pop    esi
109995fb:	8b e5                                           	mov    esp,ebp
109995fd:	5d                                              	pop    ebp
109995fe:	c3                                              	ret
109995ff:	5f                                              	pop    edi
10999600:	33 c0                                           	xor    eax,eax
10999602:	5e                                              	pop    esi
10999603:	8b e5                                           	mov    esp,ebp
10999605:	5d                                              	pop    ebp
10999606:	c3                                              	ret
10999607:	cc                                              	int3
10999608:	cc                                              	int3
10999609:	cc                                              	int3
1099960a:	cc                                              	int3
1099960b:	cc                                              	int3
1099960c:	cc                                              	int3
1099960d:	cc                                              	int3
1099960e:	cc                                              	int3
1099960f:	cc                                              	int3
