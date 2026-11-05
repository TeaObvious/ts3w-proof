# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c820 (RoadSquareWrap_GetPosition)
Paired Ghidra pseudocode: 1098C820_RoadSquareWrap_GetPosition.c
Window: [0x1098c820, 0x1098c860) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c820: 55 8b ec 83 e4 f0 83 ec 20 8b 45 08 0f 28 40 30
1098c830: 0f 29 04 24 f3 0f 10 0c 24 0f 29 44 24 10 f3 0f
1098c840: 10 44 24 14 f3 0f 11 0c 24 8b 04 24 f3 0f 11 44
1098c850: 24 04 8b 54 24 04 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c820 <.text+0x98b820>:
1098c820:	55                                              	push   ebp
1098c821:	8b ec                                           	mov    ebp,esp
1098c823:	83 e4 f0                                        	and    esp,0xfffffff0
1098c826:	83 ec 20                                        	sub    esp,0x20
1098c829:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1098c82c:	0f 28 40 30                                     	movaps xmm0,XMMWORD PTR [eax+0x30]
1098c830:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
1098c834:	f3 0f 10 0c 24                                  	movss  xmm1,DWORD PTR [esp]
1098c839:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1098c83e:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
1098c844:	f3 0f 11 0c 24                                  	movss  DWORD PTR [esp],xmm1
1098c849:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
1098c84c:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1098c852:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098c856:	8b e5                                           	mov    esp,ebp
1098c858:	5d                                              	pop    ebp
1098c859:	c3                                              	ret
1098c85a:	cc                                              	int3
1098c85b:	cc                                              	int3
1098c85c:	cc                                              	int3
1098c85d:	cc                                              	int3
1098c85e:	cc                                              	int3
1098c85f:	cc                                              	int3
