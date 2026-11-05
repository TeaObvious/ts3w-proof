# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993560 (TextRenderer_DrawText)
Paired Ghidra pseudocode: 10993560_TextRenderer_DrawText.c
Window: [0x10993560, 0x10993780) (544 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993560: 55 8b ec 83 e4 f0 81 ec d4 02 00 00 53 8b 5d 08
10993570: 85 db 56 57 0f 84 fa 01 00 00 8d 4c 24 68 e8 4d
10993580: 22 f0 ff f3 0f 10 05 ac 76 b9 10 6a 01 f3 0f 11
10993590: 84 24 6c 02 00 00 c7 84 24 b0 02 00 00 01 00 00
109935a0: 00 e8 2a 13 ef ff 8b 10 8b 52 20 83 c4 04 6a 01
109935b0: 6a ff 68 ff ff 00 00 6a 00 6a 00 8d 4c 24 7c 51
109935c0: 8b c8 ff d2 8b f8 e8 f5 5e a7 ff 8d 4c 24 30 51
109935d0: 8b c8 e8 69 7b a7 ff e8 c4 ad b4 ff 8b c8 e8 6d
109935e0: 25 01 00 f3 0f 10 45 18 f3 0f 10 15 d4 b0 ac 10
109935f0: f3 0f 11 44 24 28 f3 0f 10 45 14 f3 0f 11 44 24
10993600: 24 f3 0f 10 45 10 f3 0f 11 44 24 20 8b 54 24 38
10993610: 2b 54 24 30 f3 0f 11 54 24 2c 0f 28 4c 24 20 0f
10993620: 29 4c 24 50 0f 28 98 40 01 00 00 0f 28 a0 30 01
10993630: 00 00 0f 28 c1 0f c6 c1 55 0f 59 c3 0f 28 d9 0f
10993640: c6 d9 00 0f 59 dc 0f 28 a0 50 01 00 00 0f 58 c3
10993650: 0f 28 d9 0f c6 d9 aa 0f 59 dc 0f 58 c3 0f 28 d9
10993660: 0f c6 d9 ff 0f 28 88 60 01 00 00 0f 59 d9 0f 58
10993670: c3 0f 28 c8 0f c6 c8 ff 0f 28 d8 0f c6 d8 00 0f
10993680: 5e d9 0f 29 5c 24 20 0f 28 d8 0f c6 d8 55 0f 5e
10993690: d9 f3 0f 10 0d ec 10 b3 10 0f 29 44 24 50 f3 0f
109936a0: 10 44 24 20 0f 29 5c 24 40 f3 0f 59 c1 f3 0f 58
109936b0: c1 f3 0f 2a da f3 0f 59 c3 f3 0f 10 5c 24 40 f3
109936c0: 0f 59 d9 f3 0f 58 d9 f3 0f 11 44 24 18 0f 28 ca
109936d0: 8b 44 24 3c 2b 44 24 34 8b 75 0c f3 0f 5c cb f3
109936e0: 0f 2a d8 8b c6 f3 0f 59 cb f3 0f 11 4c 24 1c c7
109936f0: 84 24 8c 02 00 00 00 00 00 ff 8d 50 02 8d 49 00
10993700: 66 8b 08 83 c0 02 66 85 c9 75 f5 8d 4c 24 68 51
10993710: 57 83 ec 08 2b c2 f3 0f 58 ca f3 0f 11 4c 24 04
10993720: d1 f8 f3 0f 58 c2 f3 0f 11 04 24 50 56 8b cb e8
10993730: ec 59 af ff 8b c6 c7 84 24 8c 02 00 00 ff ff ff
10993740: ff 8d 50 02 66 8b 08 83 c0 02 66 85 c9 75 f5 d9
10993750: 44 24 1c 2b c2 8d 54 24 68 52 57 83 ec 08 d9 5c
10993760: 24 04 d1 f8 d9 44 24 28 8b cb d9 1c 24 50 56 e8
10993770: ac 59 af ff 5f 5e 5b 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10993560 <.text+0x992560>:
10993560:	55                                              	push   ebp
10993561:	8b ec                                           	mov    ebp,esp
10993563:	83 e4 f0                                        	and    esp,0xfffffff0
10993566:	81 ec d4 02 00 00                               	sub    esp,0x2d4
1099356c:	53                                              	push   ebx
1099356d:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
10993570:	85 db                                           	test   ebx,ebx
10993572:	56                                              	push   esi
10993573:	57                                              	push   edi
10993574:	0f 84 fa 01 00 00                               	je     0x10993774
1099357a:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
1099357e:	e8 4d 22 f0 ff                                  	call   0x108957d0
10993583:	f3 0f 10 05 ac 76 b9 10                         	movss  xmm0,DWORD PTR ds:0x10b976ac
1099358b:	6a 01                                           	push   0x1
1099358d:	f3 0f 11 84 24 6c 02 00 00                      	movss  DWORD PTR [esp+0x26c],xmm0
10993596:	c7 84 24 b0 02 00 00 01 00 00 00                	mov    DWORD PTR [esp+0x2b0],0x1
109935a1:	e8 2a 13 ef ff                                  	call   0x108848d0
109935a6:	8b 10                                           	mov    edx,DWORD PTR [eax]
109935a8:	8b 52 20                                        	mov    edx,DWORD PTR [edx+0x20]
109935ab:	83 c4 04                                        	add    esp,0x4
109935ae:	6a 01                                           	push   0x1
109935b0:	6a ff                                           	push   0xffffffff
109935b2:	68 ff ff 00 00                                  	push   0xffff
109935b7:	6a 00                                           	push   0x0
109935b9:	6a 00                                           	push   0x0
109935bb:	8d 4c 24 7c                                     	lea    ecx,[esp+0x7c]
109935bf:	51                                              	push   ecx
109935c0:	8b c8                                           	mov    ecx,eax
109935c2:	ff d2                                           	call   edx
109935c4:	8b f8                                           	mov    edi,eax
109935c6:	e8 f5 5e a7 ff                                  	call   0x104094c0
109935cb:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
109935cf:	51                                              	push   ecx
109935d0:	8b c8                                           	mov    ecx,eax
109935d2:	e8 69 7b a7 ff                                  	call   0x1040b140
109935d7:	e8 c4 ad b4 ff                                  	call   0x104de3a0
109935dc:	8b c8                                           	mov    ecx,eax
109935de:	e8 6d 25 01 00                                  	call   0x109a5b50
109935e3:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
109935e8:	f3 0f 10 15 d4 b0 ac 10                         	movss  xmm2,DWORD PTR ds:0x10acb0d4
109935f0:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
109935f6:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
109935fb:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
10993601:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
10993606:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1099360c:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
10993610:	2b 54 24 30                                     	sub    edx,DWORD PTR [esp+0x30]
10993614:	f3 0f 11 54 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm2
1099361a:	0f 28 4c 24 20                                  	movaps xmm1,XMMWORD PTR [esp+0x20]
1099361f:	0f 29 4c 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm1
10993624:	0f 28 98 40 01 00 00                            	movaps xmm3,XMMWORD PTR [eax+0x140]
1099362b:	0f 28 a0 30 01 00 00                            	movaps xmm4,XMMWORD PTR [eax+0x130]
10993632:	0f 28 c1                                        	movaps xmm0,xmm1
10993635:	0f c6 c1 55                                     	shufps xmm0,xmm1,0x55
10993639:	0f 59 c3                                        	mulps  xmm0,xmm3
1099363c:	0f 28 d9                                        	movaps xmm3,xmm1
1099363f:	0f c6 d9 00                                     	shufps xmm3,xmm1,0x0
10993643:	0f 59 dc                                        	mulps  xmm3,xmm4
10993646:	0f 28 a0 50 01 00 00                            	movaps xmm4,XMMWORD PTR [eax+0x150]
1099364d:	0f 58 c3                                        	addps  xmm0,xmm3
10993650:	0f 28 d9                                        	movaps xmm3,xmm1
10993653:	0f c6 d9 aa                                     	shufps xmm3,xmm1,0xaa
10993657:	0f 59 dc                                        	mulps  xmm3,xmm4
1099365a:	0f 58 c3                                        	addps  xmm0,xmm3
1099365d:	0f 28 d9                                        	movaps xmm3,xmm1
10993660:	0f c6 d9 ff                                     	shufps xmm3,xmm1,0xff
10993664:	0f 28 88 60 01 00 00                            	movaps xmm1,XMMWORD PTR [eax+0x160]
1099366b:	0f 59 d9                                        	mulps  xmm3,xmm1
1099366e:	0f 58 c3                                        	addps  xmm0,xmm3
10993671:	0f 28 c8                                        	movaps xmm1,xmm0
10993674:	0f c6 c8 ff                                     	shufps xmm1,xmm0,0xff
10993678:	0f 28 d8                                        	movaps xmm3,xmm0
1099367b:	0f c6 d8 00                                     	shufps xmm3,xmm0,0x0
1099367f:	0f 5e d9                                        	divps  xmm3,xmm1
10993682:	0f 29 5c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm3
10993687:	0f 28 d8                                        	movaps xmm3,xmm0
1099368a:	0f c6 d8 55                                     	shufps xmm3,xmm0,0x55
1099368e:	0f 5e d9                                        	divps  xmm3,xmm1
10993691:	f3 0f 10 0d ec 10 b3 10                         	movss  xmm1,DWORD PTR ds:0x10b310ec
10993699:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
1099369e:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
109936a4:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
109936a9:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
109936ad:	f3 0f 58 c1                                     	addss  xmm0,xmm1
109936b1:	f3 0f 2a da                                     	cvtsi2ss xmm3,edx
109936b5:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
109936b9:	f3 0f 10 5c 24 40                               	movss  xmm3,DWORD PTR [esp+0x40]
109936bf:	f3 0f 59 d9                                     	mulss  xmm3,xmm1
109936c3:	f3 0f 58 d9                                     	addss  xmm3,xmm1
109936c7:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
109936cd:	0f 28 ca                                        	movaps xmm1,xmm2
109936d0:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
109936d4:	2b 44 24 34                                     	sub    eax,DWORD PTR [esp+0x34]
109936d8:	8b 75 0c                                        	mov    esi,DWORD PTR [ebp+0xc]
109936db:	f3 0f 5c cb                                     	subss  xmm1,xmm3
109936df:	f3 0f 2a d8                                     	cvtsi2ss xmm3,eax
109936e3:	8b c6                                           	mov    eax,esi
109936e5:	f3 0f 59 cb                                     	mulss  xmm1,xmm3
109936e9:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
109936ef:	c7 84 24 8c 02 00 00 00 00 00 ff                	mov    DWORD PTR [esp+0x28c],0xff000000
109936fa:	8d 50 02                                        	lea    edx,[eax+0x2]
109936fd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10993700:	66 8b 08                                        	mov    cx,WORD PTR [eax]
10993703:	83 c0 02                                        	add    eax,0x2
10993706:	66 85 c9                                        	test   cx,cx
10993709:	75 f5                                           	jne    0x10993700
1099370b:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
1099370f:	51                                              	push   ecx
10993710:	57                                              	push   edi
10993711:	83 ec 08                                        	sub    esp,0x8
10993714:	2b c2                                           	sub    eax,edx
10993716:	f3 0f 58 ca                                     	addss  xmm1,xmm2
1099371a:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10993720:	d1 f8                                           	sar    eax,1
10993722:	f3 0f 58 c2                                     	addss  xmm0,xmm2
10993726:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1099372b:	50                                              	push   eax
1099372c:	56                                              	push   esi
1099372d:	8b cb                                           	mov    ecx,ebx
1099372f:	e8 ec 59 af ff                                  	call   0x10489120
10993734:	8b c6                                           	mov    eax,esi
10993736:	c7 84 24 8c 02 00 00 ff ff ff ff                	mov    DWORD PTR [esp+0x28c],0xffffffff
10993741:	8d 50 02                                        	lea    edx,[eax+0x2]
10993744:	66 8b 08                                        	mov    cx,WORD PTR [eax]
10993747:	83 c0 02                                        	add    eax,0x2
1099374a:	66 85 c9                                        	test   cx,cx
1099374d:	75 f5                                           	jne    0x10993744
1099374f:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
10993753:	2b c2                                           	sub    eax,edx
10993755:	8d 54 24 68                                     	lea    edx,[esp+0x68]
10993759:	52                                              	push   edx
1099375a:	57                                              	push   edi
1099375b:	83 ec 08                                        	sub    esp,0x8
1099375e:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10993762:	d1 f8                                           	sar    eax,1
10993764:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
10993768:	8b cb                                           	mov    ecx,ebx
1099376a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1099376d:	50                                              	push   eax
1099376e:	56                                              	push   esi
1099376f:	e8 ac 59 af ff                                  	call   0x10489120
10993774:	5f                                              	pop    edi
10993775:	5e                                              	pop    esi
10993776:	5b                                              	pop    ebx
10993777:	8b e5                                           	mov    esp,ebp
10993779:	5d                                              	pop    ebp
1099377a:	c3                                              	ret
1099377b:	cc                                              	int3
1099377c:	cc                                              	int3
1099377d:	cc                                              	int3
1099377e:	cc                                              	int3
1099377f:	cc                                              	int3
