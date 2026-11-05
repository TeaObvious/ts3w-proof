# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e740 (SceneManWrap_SetSunColor)
Paired Ghidra pseudocode: 1098E740_SceneManWrap_SetSunColor.c
Window: [0x1098e740, 0x1098e7d0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e7d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e740: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 20 e8 df fc b4
1098e750: ff 85 c0 74 71 8b 55 0c 8b ca c1 f9 10 81 e1 ff
1098e760: 00 00 00 f3 0f 2a c1 8b ca 81 e1 ff 00 00 00 f3
1098e770: 0f 2a c9 c1 fa 08 f3 0f 11 4c 24 08 81 e2 ff 00
1098e780: 00 00 f3 0f 2a ca 6a 01 f3 0f 11 44 24 10 f3 0f
1098e790: 11 44 24 04 f3 0f 10 05 2c 83 ab 10 8d 54 24 14
1098e7a0: f3 0f 11 4c 24 08 0f 28 4c 24 04 8d 88 40 01 00
1098e7b0: 00 52 0f c6 c0 00 51 0f 59 c8 8b c8 0f 29 4c 24
1098e7c0: 1c e8 2a 51 b1 ff 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e740 <.text+0x98d740>:
1098e740:	55                                              	push   ebp
1098e741:	8b ec                                           	mov    ebp,esp
1098e743:	83 e4 f0                                        	and    esp,0xfffffff0
1098e746:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098e749:	83 ec 20                                        	sub    esp,0x20
1098e74c:	e8 df fc b4 ff                                  	call   0x104de430
1098e751:	85 c0                                           	test   eax,eax
1098e753:	74 71                                           	je     0x1098e7c6
1098e755:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
1098e758:	8b ca                                           	mov    ecx,edx
1098e75a:	c1 f9 10                                        	sar    ecx,0x10
1098e75d:	81 e1 ff 00 00 00                               	and    ecx,0xff
1098e763:	f3 0f 2a c1                                     	cvtsi2ss xmm0,ecx
1098e767:	8b ca                                           	mov    ecx,edx
1098e769:	81 e1 ff 00 00 00                               	and    ecx,0xff
1098e76f:	f3 0f 2a c9                                     	cvtsi2ss xmm1,ecx
1098e773:	c1 fa 08                                        	sar    edx,0x8
1098e776:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098e77c:	81 e2 ff 00 00 00                               	and    edx,0xff
1098e782:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
1098e786:	6a 01                                           	push   0x1
1098e788:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1098e78e:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1098e794:	f3 0f 10 05 2c 83 ab 10                         	movss  xmm0,DWORD PTR ds:0x10ab832c
1098e79c:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1098e7a0:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098e7a6:	0f 28 4c 24 04                                  	movaps xmm1,XMMWORD PTR [esp+0x4]
1098e7ab:	8d 88 40 01 00 00                               	lea    ecx,[eax+0x140]
1098e7b1:	52                                              	push   edx
1098e7b2:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1098e7b6:	51                                              	push   ecx
1098e7b7:	0f 59 c8                                        	mulps  xmm1,xmm0
1098e7ba:	8b c8                                           	mov    ecx,eax
1098e7bc:	0f 29 4c 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm1
1098e7c1:	e8 2a 51 b1 ff                                  	call   0x104a38f0
1098e7c6:	8b e5                                           	mov    esp,ebp
1098e7c8:	5d                                              	pop    ebp
1098e7c9:	c3                                              	ret
1098e7ca:	cc                                              	int3
1098e7cb:	cc                                              	int3
1098e7cc:	cc                                              	int3
1098e7cd:	cc                                              	int3
1098e7ce:	cc                                              	int3
1098e7cf:	cc                                              	int3
