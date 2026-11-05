# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c650 (RoadSplineWrap_GetSplineParamNearestPoint)
Paired Ghidra pseudocode: 1098C650_RoadSplineWrap_GetSplineParamNearestPoint.c
Window: [0x1098c650, 0x1098c6a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c6a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c650: 55 8b ec 83 e4 f0 83 ec 10 f3 0f 10 45 0c f3 0f
1098c660: 10 4d 10 8b 4d 08 f3 0f 11 44 24 0c f3 0f 11 44
1098c670: 24 08 f3 0f 11 4c 24 04 f3 0f 11 04 24 0f 28 04
1098c680: 24 8d 04 24 50 0f 29 44 24 04 e8 31 e3 7a ff 8b
1098c690: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c650 <.text+0x98b650>:
1098c650:	55                                              	push   ebp
1098c651:	8b ec                                           	mov    ebp,esp
1098c653:	83 e4 f0                                        	and    esp,0xfffffff0
1098c656:	83 ec 10                                        	sub    esp,0x10
1098c659:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
1098c65e:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
1098c663:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098c666:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098c66c:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098c672:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1098c678:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1098c67d:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1098c681:	8d 04 24                                        	lea    eax,[esp]
1098c684:	50                                              	push   eax
1098c685:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
1098c68a:	e8 31 e3 7a ff                                  	call   0x1013a9c0
1098c68f:	8b e5                                           	mov    esp,ebp
1098c691:	5d                                              	pop    ebp
1098c692:	c3                                              	ret
1098c693:	cc                                              	int3
1098c694:	cc                                              	int3
1098c695:	cc                                              	int3
1098c696:	cc                                              	int3
1098c697:	cc                                              	int3
1098c698:	cc                                              	int3
1098c699:	cc                                              	int3
1098c69a:	cc                                              	int3
1098c69b:	cc                                              	int3
1098c69c:	cc                                              	int3
1098c69d:	cc                                              	int3
1098c69e:	cc                                              	int3
1098c69f:	cc                                              	int3
