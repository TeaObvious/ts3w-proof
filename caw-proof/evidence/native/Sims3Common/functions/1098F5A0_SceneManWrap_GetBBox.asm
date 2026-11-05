# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f5a0 (SceneManWrap_GetBBox)
Paired Ghidra pseudocode: 1098F5A0_SceneManWrap_GetBBox.c
Window: [0x1098f5a0, 0x1098f720) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f5a0: 55 8b ec 83 e4 f0 81 ec fc 01 00 00 8b 4d 0c 56
1098f5b0: 8d 44 24 10 50 c7 44 24 14 00 00 00 00 c7 44 24
1098f5c0: 18 00 00 00 00 c7 44 24 1c 00 00 00 00 c7 44 24
1098f5d0: 20 24 72 b9 10 e8 36 ef b4 ff 8d 4c 24 30 e8 8d
1098f5e0: 36 af ff 8b 4c 24 14 8b 44 24 10 2b c8 33 f6 c1
1098f5f0: f9 02 0f 84 90 00 00 00 8b 14 b0 83 c2 40 52 8d
1098f600: 8c 24 94 00 00 00 e8 45 a2 af ff 83 bc 24 ec 01
1098f610: 00 00 00 74 5b 0f 28 84 24 a0 00 00 00 0f c6 c0
1098f620: 00 f3 0f 11 44 24 58 0f 28 84 24 b0 00 00 00 0f
1098f630: c6 c0 00 f3 0f 11 44 24 20 f3 0f 10 44 24 20 0f
1098f640: 2f 44 24 58 72 2a 8d 84 24 d0 00 00 00 50 8d 8c
1098f650: 24 a4 00 00 00 51 8d 4c 24 78 e8 81 52 af ff 8d
1098f660: 54 24 70 8d 44 24 30 52 50 8b c8 e8 b0 34 af ff
1098f670: 8b 4c 24 14 8b 44 24 10 2b c8 83 c6 01 c1 f9 02
1098f680: 3b f1 0f 82 70 ff ff ff 0f 28 44 24 30 0f c6 c0
1098f690: 00 f3 0f 11 44 24 58 0f 28 44 24 40 0f c6 c0 00
1098f6a0: f3 0f 11 44 24 20 f3 0f 10 44 24 58 0f 2f 44 24
1098f6b0: 20 76 1c f3 0f 10 05 d4 b0 ac 10 0f c6 c0 00 0f
1098f6c0: 57 c9 0f 5c c8 0f 29 4c 24 30 0f 29 44 24 40 8d
1098f6d0: 54 24 30 52 8d 44 24 5c 50 e8 d2 73 ff ff 8b 75
1098f6e0: 08 8b 08 8b 50 04 89 0e 8b 48 08 89 56 04 8b 50
1098f6f0: 0c 89 4e 08 8b 48 10 89 56 0c 8b 50 14 8b 44 24
1098f700: 18 83 c4 08 85 c0 89 4e 10 89 56 14 74 09 50 e8
1098f710: 7c 97 f8 ff 83 c4 04 8b c6 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
1098f5a0 <.text+0x98e5a0>:
1098f5a0:	55                                              	push   ebp
1098f5a1:	8b ec                                           	mov    ebp,esp
1098f5a3:	83 e4 f0                                        	and    esp,0xfffffff0
1098f5a6:	81 ec fc 01 00 00                               	sub    esp,0x1fc
1098f5ac:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
1098f5af:	56                                              	push   esi
1098f5b0:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098f5b4:	50                                              	push   eax
1098f5b5:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
1098f5bd:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
1098f5c5:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
1098f5cd:	c7 44 24 20 24 72 b9 10                         	mov    DWORD PTR [esp+0x20],0x10b97224
1098f5d5:	e8 36 ef b4 ff                                  	call   0x104de510
1098f5da:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1098f5de:	e8 8d 36 af ff                                  	call   0x10482c70
1098f5e3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1098f5e7:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098f5eb:	2b c8                                           	sub    ecx,eax
1098f5ed:	33 f6                                           	xor    esi,esi
1098f5ef:	c1 f9 02                                        	sar    ecx,0x2
1098f5f2:	0f 84 90 00 00 00                               	je     0x1098f688
1098f5f8:	8b 14 b0                                        	mov    edx,DWORD PTR [eax+esi*4]
1098f5fb:	83 c2 40                                        	add    edx,0x40
1098f5fe:	52                                              	push   edx
1098f5ff:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
1098f606:	e8 45 a2 af ff                                  	call   0x10489850
1098f60b:	83 bc 24 ec 01 00 00 00                         	cmp    DWORD PTR [esp+0x1ec],0x0
1098f613:	74 5b                                           	je     0x1098f670
1098f615:	0f 28 84 24 a0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xa0]
1098f61d:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1098f621:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
1098f627:	0f 28 84 24 b0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xb0]
1098f62f:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1098f633:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1098f639:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
1098f63f:	0f 2f 44 24 58                                  	comiss xmm0,DWORD PTR [esp+0x58]
1098f644:	72 2a                                           	jb     0x1098f670
1098f646:	8d 84 24 d0 00 00 00                            	lea    eax,[esp+0xd0]
1098f64d:	50                                              	push   eax
1098f64e:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
1098f655:	51                                              	push   ecx
1098f656:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
1098f65a:	e8 81 52 af ff                                  	call   0x104848e0
1098f65f:	8d 54 24 70                                     	lea    edx,[esp+0x70]
1098f663:	8d 44 24 30                                     	lea    eax,[esp+0x30]
1098f667:	52                                              	push   edx
1098f668:	50                                              	push   eax
1098f669:	8b c8                                           	mov    ecx,eax
1098f66b:	e8 b0 34 af ff                                  	call   0x10482b20
1098f670:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1098f674:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098f678:	2b c8                                           	sub    ecx,eax
1098f67a:	83 c6 01                                        	add    esi,0x1
1098f67d:	c1 f9 02                                        	sar    ecx,0x2
1098f680:	3b f1                                           	cmp    esi,ecx
1098f682:	0f 82 70 ff ff ff                               	jb     0x1098f5f8
1098f688:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
1098f68d:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1098f691:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
1098f697:	0f 28 44 24 40                                  	movaps xmm0,XMMWORD PTR [esp+0x40]
1098f69c:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1098f6a0:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1098f6a6:	f3 0f 10 44 24 58                               	movss  xmm0,DWORD PTR [esp+0x58]
1098f6ac:	0f 2f 44 24 20                                  	comiss xmm0,DWORD PTR [esp+0x20]
1098f6b1:	76 1c                                           	jbe    0x1098f6cf
1098f6b3:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1098f6bb:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1098f6bf:	0f 57 c9                                        	xorps  xmm1,xmm1
1098f6c2:	0f 5c c8                                        	subps  xmm1,xmm0
1098f6c5:	0f 29 4c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm1
1098f6ca:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
1098f6cf:	8d 54 24 30                                     	lea    edx,[esp+0x30]
1098f6d3:	52                                              	push   edx
1098f6d4:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
1098f6d8:	50                                              	push   eax
1098f6d9:	e8 d2 73 ff ff                                  	call   0x10986ab0
1098f6de:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
1098f6e1:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1098f6e3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098f6e6:	89 0e                                           	mov    DWORD PTR [esi],ecx
1098f6e8:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1098f6eb:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
1098f6ee:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098f6f1:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
1098f6f4:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
1098f6f7:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
1098f6fa:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1098f6fd:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1098f701:	83 c4 08                                        	add    esp,0x8
1098f704:	85 c0                                           	test   eax,eax
1098f706:	89 4e 10                                        	mov    DWORD PTR [esi+0x10],ecx
1098f709:	89 56 14                                        	mov    DWORD PTR [esi+0x14],edx
1098f70c:	74 09                                           	je     0x1098f717
1098f70e:	50                                              	push   eax
1098f70f:	e8 7c 97 f8 ff                                  	call   0x10918e90
1098f714:	83 c4 04                                        	add    esp,0x4
1098f717:	8b c6                                           	mov    eax,esi
1098f719:	5e                                              	pop    esi
1098f71a:	8b e5                                           	mov    esp,ebp
1098f71c:	5d                                              	pop    ebp
1098f71d:	c3                                              	ret
1098f71e:	cc                                              	int3
1098f71f:	cc                                              	int3
