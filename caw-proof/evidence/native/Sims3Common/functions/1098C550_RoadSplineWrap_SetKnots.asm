# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c550 (RoadSplineWrap_SetKnots)
Paired Ghidra pseudocode: 1098C550_RoadSplineWrap_SetKnots.c
Window: [0x1098c550, 0x1098c630) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c550: 55 8b ec 83 e4 f0 83 ec 40 f3 0f 10 45 24 f3 0f
1098c560: 10 4d 28 f3 0f 11 44 24 0c f3 0f 11 44 24 08 f3
1098c570: 0f 11 4c 24 04 f3 0f 10 4d 20 f3 0f 11 04 24 0f
1098c580: 28 04 24 0f 29 44 24 10 f3 0f 10 45 1c f3 0f 11
1098c590: 44 24 0c f3 0f 11 44 24 08 f3 0f 11 4c 24 04 f3
1098c5a0: 0f 10 4d 18 f3 0f 11 04 24 0f 28 04 24 0f 29 44
1098c5b0: 24 20 f3 0f 10 45 14 f3 0f 11 44 24 0c f3 0f 11
1098c5c0: 44 24 08 f3 0f 11 4c 24 04 f3 0f 10 4d 10 f3 0f
1098c5d0: 11 04 24 0f 28 04 24 8d 44 24 10 50 8d 4c 24 24
1098c5e0: 51 8b 4d 08 0f 29 44 24 38 f3 0f 10 45 0c 8d 54
1098c5f0: 24 38 f3 0f 11 44 24 14 f3 0f 11 44 24 10 f3 0f
1098c600: 11 4c 24 0c f3 0f 11 44 24 08 0f 28 44 24 08 52
1098c610: 8d 44 24 0c 50 0f 29 44 24 10 e8 81 01 7b ff 8b
1098c620: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c550 <.text+0x98b550>:
1098c550:	55                                              	push   ebp
1098c551:	8b ec                                           	mov    ebp,esp
1098c553:	83 e4 f0                                        	and    esp,0xfffffff0
1098c556:	83 ec 40                                        	sub    esp,0x40
1098c559:	f3 0f 10 45 24                                  	movss  xmm0,DWORD PTR [ebp+0x24]
1098c55e:	f3 0f 10 4d 28                                  	movss  xmm1,DWORD PTR [ebp+0x28]
1098c563:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098c569:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098c56f:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1098c575:	f3 0f 10 4d 20                                  	movss  xmm1,DWORD PTR [ebp+0x20]
1098c57a:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1098c57f:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1098c583:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1098c588:	f3 0f 10 45 1c                                  	movss  xmm0,DWORD PTR [ebp+0x1c]
1098c58d:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098c593:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098c599:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1098c59f:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
1098c5a4:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1098c5a9:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1098c5ad:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1098c5b2:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
1098c5b7:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098c5bd:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098c5c3:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1098c5c9:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
1098c5ce:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1098c5d3:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1098c5d7:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098c5db:	50                                              	push   eax
1098c5dc:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098c5e0:	51                                              	push   ecx
1098c5e1:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098c5e4:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
1098c5e9:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
1098c5ee:	8d 54 24 38                                     	lea    edx,[esp+0x38]
1098c5f2:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1098c5f8:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1098c5fe:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1098c604:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098c60a:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
1098c60f:	52                                              	push   edx
1098c610:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
1098c614:	50                                              	push   eax
1098c615:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1098c61a:	e8 81 01 7b ff                                  	call   0x1013c7a0
1098c61f:	8b e5                                           	mov    esp,ebp
1098c621:	5d                                              	pop    ebp
1098c622:	c3                                              	ret
1098c623:	cc                                              	int3
1098c624:	cc                                              	int3
1098c625:	cc                                              	int3
1098c626:	cc                                              	int3
1098c627:	cc                                              	int3
1098c628:	cc                                              	int3
1098c629:	cc                                              	int3
1098c62a:	cc                                              	int3
1098c62b:	cc                                              	int3
1098c62c:	cc                                              	int3
1098c62d:	cc                                              	int3
1098c62e:	cc                                              	int3
1098c62f:	cc                                              	int3
