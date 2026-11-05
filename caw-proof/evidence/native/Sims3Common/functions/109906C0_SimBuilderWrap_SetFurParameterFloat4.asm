# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109906c0 (SimBuilderWrap_SetFurParameterFloat4)
Paired Ghidra pseudocode: 109906C0_SimBuilderWrap_SetFurParameterFloat4.c
Window: [0x109906c0, 0x109907f0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x109907f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109906c0: 55 8b ec 83 e4 f0 8b 4d 08 33 c0 83 ec 50 3b c8
109906d0: 0f 84 14 01 00 00 f3 0f 10 45 10 f3 0f 11 44 24
109906e0: 0c f3 0f 11 44 24 08 f3 0f 11 44 24 04 f3 0f 11
109906f0: 04 24 0f 28 04 24 0f 29 04 24 0f 28 44 24 30 0f
10990700: 29 44 24 10 f3 0f 10 04 24 f3 0f 11 44 24 10 f3
10990710: 0f 10 45 14 f3 0f 11 44 24 0c f3 0f 11 44 24 08
10990720: f3 0f 11 44 24 04 f3 0f 11 04 24 0f 28 04 24 0f
10990730: 29 04 24 0f 28 44 24 10 8b 55 0c 0f 29 44 24 10
10990740: f3 0f 10 04 24 f3 0f 11 44 24 14 f3 0f 10 45 18
10990750: f3 0f 11 44 24 0c f3 0f 11 44 24 08 f3 0f 11 44
10990760: 24 04 f3 0f 11 04 24 0f 28 04 24 0f 29 04 24 0f
10990770: 28 44 24 10 0f 29 44 24 10 f3 0f 10 04 24 f3 0f
10990780: 11 44 24 18 f3 0f 10 45 1c f3 0f 11 44 24 0c f3
10990790: 0f 11 44 24 08 f3 0f 11 44 24 04 f3 0f 11 04 24
109907a0: 0f 28 04 24 0f 29 04 24 0f 28 44 24 10 89 44 24
109907b0: 40 89 44 24 44 89 44 24 48 89 44 24 4c 0f 29 44
109907c0: 24 10 f3 0f 10 04 24 8d 44 24 20 50 f3 0f 11 44
109907d0: 24 20 0f 28 44 24 14 52 c7 44 24 28 04 00 00 00
109907e0: 0f 29 44 24 38 e8 d6 ad a4 ff 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
109906c0 <.text+0x98f6c0>:
109906c0:	55                                              	push   ebp
109906c1:	8b ec                                           	mov    ebp,esp
109906c3:	83 e4 f0                                        	and    esp,0xfffffff0
109906c6:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
109906c9:	33 c0                                           	xor    eax,eax
109906cb:	83 ec 50                                        	sub    esp,0x50
109906ce:	3b c8                                           	cmp    ecx,eax
109906d0:	0f 84 14 01 00 00                               	je     0x109907ea
109906d6:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
109906db:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
109906e1:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
109906e7:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
109906ed:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
109906f2:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
109906f6:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
109906fa:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
109906ff:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10990704:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
10990709:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1099070f:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
10990714:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1099071a:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10990720:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10990726:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1099072b:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1099072f:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10990733:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10990738:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
1099073b:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10990740:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
10990745:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1099074b:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
10990750:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10990756:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1099075c:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10990762:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10990767:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1099076b:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
1099076f:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10990774:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10990779:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
1099077e:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10990784:	f3 0f 10 45 1c                                  	movss  xmm0,DWORD PTR [ebp+0x1c]
10990789:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1099078f:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10990795:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1099079b:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
109907a0:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
109907a4:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
109907a8:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
109907ad:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
109907b1:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
109907b5:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
109907b9:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
109907bd:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
109907c2:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
109907c7:	8d 44 24 20                                     	lea    eax,[esp+0x20]
109907cb:	50                                              	push   eax
109907cc:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
109907d2:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
109907d7:	52                                              	push   edx
109907d8:	c7 44 24 28 04 00 00 00                         	mov    DWORD PTR [esp+0x28],0x4
109907e0:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
109907e5:	e8 d6 ad a4 ff                                  	call   0x103db5c0
109907ea:	8b e5                                           	mov    esp,ebp
109907ec:	5d                                              	pop    ebp
109907ed:	c3                                              	ret
109907ee:	cc                                              	int3
109907ef:	cc                                              	int3
