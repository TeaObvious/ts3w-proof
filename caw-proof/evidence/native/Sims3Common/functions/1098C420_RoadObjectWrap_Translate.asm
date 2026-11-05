# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c420 (RoadObjectWrap_Translate)
Paired Ghidra pseudocode: 1098C420_RoadObjectWrap_Translate.c
Window: [0x1098c420, 0x1098c470) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c420: 55 8b ec 83 e4 f0 83 ec 10 8b 55 14 f3 0f 10 45
1098c430: 0c 8b 4d 08 f3 0f 10 4d 10 8b 01 8b 40 18 52 f3
1098c440: 0f 11 44 24 10 f3 0f 11 44 24 0c f3 0f 11 4c 24
1098c450: 08 f3 0f 11 44 24 04 0f 28 44 24 04 8d 54 24 04
1098c460: 52 0f 29 44 24 08 ff d0 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
1098c420 <.text+0x98b420>:
1098c420:	55                                              	push   ebp
1098c421:	8b ec                                           	mov    ebp,esp
1098c423:	83 e4 f0                                        	and    esp,0xfffffff0
1098c426:	83 ec 10                                        	sub    esp,0x10
1098c429:	8b 55 14                                        	mov    edx,DWORD PTR [ebp+0x14]
1098c42c:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
1098c431:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098c434:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
1098c439:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098c43b:	8b 40 18                                        	mov    eax,DWORD PTR [eax+0x18]
1098c43e:	52                                              	push   edx
1098c43f:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1098c445:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098c44b:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098c451:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1098c457:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
1098c45c:	8d 54 24 04                                     	lea    edx,[esp+0x4]
1098c460:	52                                              	push   edx
1098c461:	0f 29 44 24 08                                  	movaps XMMWORD PTR [esp+0x8],xmm0
1098c466:	ff d0                                           	call   eax
1098c468:	8b e5                                           	mov    esp,ebp
1098c46a:	5d                                              	pop    ebp
1098c46b:	c3                                              	ret
1098c46c:	cc                                              	int3
1098c46d:	cc                                              	int3
1098c46e:	cc                                              	int3
1098c46f:	cc                                              	int3
