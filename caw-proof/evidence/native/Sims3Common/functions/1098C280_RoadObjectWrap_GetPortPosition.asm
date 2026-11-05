# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c280 (RoadObjectWrap_GetPortPosition)
Paired Ghidra pseudocode: 1098C280_RoadObjectWrap_GetPortPosition.c
Window: [0x1098c280, 0x1098c2d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c2d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c280: 55 8b ec 83 e4 f0 83 ec 20 8b 55 0c 8b 4d 08 8b
1098c290: 01 8b 40 28 52 8d 54 24 14 52 ff d0 0f 28 00 0f
1098c2a0: 29 04 24 f3 0f 10 0c 24 0f 29 44 24 10 f3 0f 10
1098c2b0: 44 24 14 f3 0f 11 0c 24 8b 04 24 f3 0f 11 44 24
1098c2c0: 04 8b 54 24 04 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c280 <.text+0x98b280>:
1098c280:	55                                              	push   ebp
1098c281:	8b ec                                           	mov    ebp,esp
1098c283:	83 e4 f0                                        	and    esp,0xfffffff0
1098c286:	83 ec 20                                        	sub    esp,0x20
1098c289:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
1098c28c:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098c28f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098c291:	8b 40 28                                        	mov    eax,DWORD PTR [eax+0x28]
1098c294:	52                                              	push   edx
1098c295:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1098c299:	52                                              	push   edx
1098c29a:	ff d0                                           	call   eax
1098c29c:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
1098c29f:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
1098c2a3:	f3 0f 10 0c 24                                  	movss  xmm1,DWORD PTR [esp]
1098c2a8:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1098c2ad:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
1098c2b3:	f3 0f 11 0c 24                                  	movss  DWORD PTR [esp],xmm1
1098c2b8:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
1098c2bb:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1098c2c1:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098c2c5:	8b e5                                           	mov    esp,ebp
1098c2c7:	5d                                              	pop    ebp
1098c2c8:	c3                                              	ret
1098c2c9:	cc                                              	int3
1098c2ca:	cc                                              	int3
1098c2cb:	cc                                              	int3
1098c2cc:	cc                                              	int3
1098c2cd:	cc                                              	int3
1098c2ce:	cc                                              	int3
1098c2cf:	cc                                              	int3
