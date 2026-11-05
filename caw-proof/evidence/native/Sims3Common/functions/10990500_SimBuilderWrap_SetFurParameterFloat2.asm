# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990500 (SimBuilderWrap_SetFurParameterFloat2)
Paired Ghidra pseudocode: 10990500_SimBuilderWrap_SetFurParameterFloat2.c
Window: [0x10990500, 0x109905c0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x109905c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990500: 55 8b ec 83 e4 f0 8b 4d 08 33 c0 83 ec 50 3b c8
10990510: 0f 84 a2 00 00 00 f3 0f 10 45 10 8b 55 0c f3 0f
10990520: 11 44 24 0c f3 0f 11 44 24 08 f3 0f 11 44 24 04
10990530: f3 0f 11 04 24 0f 28 04 24 0f 29 04 24 0f 28 44
10990540: 24 30 0f 29 44 24 10 f3 0f 10 04 24 f3 0f 11 44
10990550: 24 10 f3 0f 10 45 14 f3 0f 11 44 24 0c f3 0f 11
10990560: 44 24 08 f3 0f 11 44 24 04 f3 0f 11 04 24 0f 28
10990570: 04 24 0f 29 04 24 0f 28 44 24 10 89 44 24 40 89
10990580: 44 24 44 89 44 24 48 89 44 24 4c 0f 29 44 24 10
10990590: f3 0f 10 04 24 8d 44 24 20 50 f3 0f 11 44 24 18
109905a0: 0f 28 44 24 14 52 c7 44 24 28 02 00 00 00 0f 29
109905b0: 44 24 38 e8 08 b0 a4 ff 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
10990500 <.text+0x98f500>:
10990500:	55                                              	push   ebp
10990501:	8b ec                                           	mov    ebp,esp
10990503:	83 e4 f0                                        	and    esp,0xfffffff0
10990506:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10990509:	33 c0                                           	xor    eax,eax
1099050b:	83 ec 50                                        	sub    esp,0x50
1099050e:	3b c8                                           	cmp    ecx,eax
10990510:	0f 84 a2 00 00 00                               	je     0x109905b8
10990516:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
1099051b:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
1099051e:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10990524:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1099052a:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10990530:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10990535:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10990539:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
1099053d:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
10990542:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10990547:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
1099054c:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10990552:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
10990557:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1099055d:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10990563:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10990569:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1099056e:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10990572:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10990576:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1099057b:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
1099057f:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
10990583:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
10990587:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
1099058b:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10990590:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
10990595:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10990599:	50                                              	push   eax
1099059a:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
109905a0:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
109905a5:	52                                              	push   edx
109905a6:	c7 44 24 28 02 00 00 00                         	mov    DWORD PTR [esp+0x28],0x2
109905ae:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
109905b3:	e8 08 b0 a4 ff                                  	call   0x103db5c0
109905b8:	8b e5                                           	mov    esp,ebp
109905ba:	5d                                              	pop    ebp
109905bb:	c3                                              	ret
109905bc:	cc                                              	int3
109905bd:	cc                                              	int3
109905be:	cc                                              	int3
109905bf:	cc                                              	int3
