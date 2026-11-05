# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c6a0 (RoadSplineWrap_GetKnots)
Paired Ghidra pseudocode: 1098C6A0_RoadSplineWrap_GetKnots.c
Window: [0x1098c6a0, 0x1098c780) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c6a0: 55 8b ec 83 e4 f0 83 ec 20 8b 45 08 0f 28 40 30
1098c6b0: 0f 28 48 40 0f 28 50 50 0f 28 58 60 8b 45 0c 0f
1098c6c0: 29 04 24 f3 0f 10 24 24 0f 29 44 24 10 f3 0f 10
1098c6d0: 44 24 14 f3 0f 11 44 24 04 8b 54 24 04 0f 29 4c
1098c6e0: 24 10 f3 0f 10 44 24 10 89 50 04 f3 0f 11 24 24
1098c6f0: 8b 0c 24 89 08 8b 45 10 f3 0f 11 04 24 8b 0c 24
1098c700: 0f 29 4c 24 10 f3 0f 10 44 24 14 f3 0f 11 44 24
1098c710: 04 8b 54 24 04 0f 29 54 24 10 f3 0f 10 44 24 10
1098c720: f3 0f 11 04 24 89 08 8b 0c 24 89 50 04 8b 45 14
1098c730: 0f 29 54 24 10 f3 0f 10 44 24 14 f3 0f 11 44 24
1098c740: 04 8b 54 24 04 0f 29 5c 24 10 f3 0f 10 44 24 10
1098c750: 89 08 89 50 04 8b 45 18 f3 0f 11 04 24 8b 0c 24
1098c760: 0f 29 5c 24 10 f3 0f 10 44 24 14 f3 0f 11 44 24
1098c770: 04 8b 54 24 04 89 08 89 50 04 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
1098c6a0 <.text+0x98b6a0>:
1098c6a0:	55                                              	push   ebp
1098c6a1:	8b ec                                           	mov    ebp,esp
1098c6a3:	83 e4 f0                                        	and    esp,0xfffffff0
1098c6a6:	83 ec 20                                        	sub    esp,0x20
1098c6a9:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1098c6ac:	0f 28 40 30                                     	movaps xmm0,XMMWORD PTR [eax+0x30]
1098c6b0:	0f 28 48 40                                     	movaps xmm1,XMMWORD PTR [eax+0x40]
1098c6b4:	0f 28 50 50                                     	movaps xmm2,XMMWORD PTR [eax+0x50]
1098c6b8:	0f 28 58 60                                     	movaps xmm3,XMMWORD PTR [eax+0x60]
1098c6bc:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1098c6bf:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
1098c6c3:	f3 0f 10 24 24                                  	movss  xmm4,DWORD PTR [esp]
1098c6c8:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1098c6cd:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
1098c6d3:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1098c6d9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098c6dd:	0f 29 4c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm1
1098c6e2:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
1098c6e8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1098c6eb:	f3 0f 11 24 24                                  	movss  DWORD PTR [esp],xmm4
1098c6f0:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098c6f3:	89 08                                           	mov    DWORD PTR [eax],ecx
1098c6f5:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
1098c6f8:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1098c6fd:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098c700:	0f 29 4c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm1
1098c705:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
1098c70b:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1098c711:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098c715:	0f 29 54 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm2
1098c71a:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
1098c720:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1098c725:	89 08                                           	mov    DWORD PTR [eax],ecx
1098c727:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098c72a:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1098c72d:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
1098c730:	0f 29 54 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm2
1098c735:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
1098c73b:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1098c741:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098c745:	0f 29 5c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm3
1098c74a:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
1098c750:	89 08                                           	mov    DWORD PTR [eax],ecx
1098c752:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1098c755:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
1098c758:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1098c75d:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098c760:	0f 29 5c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm3
1098c765:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
1098c76b:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1098c771:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098c775:	89 08                                           	mov    DWORD PTR [eax],ecx
1098c777:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1098c77a:	8b e5                                           	mov    esp,ebp
1098c77c:	5d                                              	pop    ebp
1098c77d:	c3                                              	ret
1098c77e:	cc                                              	int3
1098c77f:	cc                                              	int3
