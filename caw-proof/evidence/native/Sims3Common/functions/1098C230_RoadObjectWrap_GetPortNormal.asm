# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c230 (RoadObjectWrap_GetPortNormal)
Paired Ghidra pseudocode: 1098C230_RoadObjectWrap_GetPortNormal.c
Window: [0x1098c230, 0x1098c280) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c280
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c230: 55 8b ec 83 e4 f0 83 ec 20 8b 55 0c 8b 4d 08 8b
1098c240: 01 8b 40 24 52 8d 54 24 14 52 ff d0 0f 28 00 0f
1098c250: 29 04 24 f3 0f 10 0c 24 0f 29 44 24 10 f3 0f 10
1098c260: 44 24 14 f3 0f 11 0c 24 8b 04 24 f3 0f 11 44 24
1098c270: 04 8b 54 24 04 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c230 <.text+0x98b230>:
1098c230:	55                                              	push   ebp
1098c231:	8b ec                                           	mov    ebp,esp
1098c233:	83 e4 f0                                        	and    esp,0xfffffff0
1098c236:	83 ec 20                                        	sub    esp,0x20
1098c239:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
1098c23c:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098c23f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098c241:	8b 40 24                                        	mov    eax,DWORD PTR [eax+0x24]
1098c244:	52                                              	push   edx
1098c245:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1098c249:	52                                              	push   edx
1098c24a:	ff d0                                           	call   eax
1098c24c:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
1098c24f:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
1098c253:	f3 0f 10 0c 24                                  	movss  xmm1,DWORD PTR [esp]
1098c258:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1098c25d:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
1098c263:	f3 0f 11 0c 24                                  	movss  DWORD PTR [esp],xmm1
1098c268:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
1098c26b:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1098c271:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098c275:	8b e5                                           	mov    esp,ebp
1098c277:	5d                                              	pop    ebp
1098c278:	c3                                              	ret
1098c279:	cc                                              	int3
1098c27a:	cc                                              	int3
1098c27b:	cc                                              	int3
1098c27c:	cc                                              	int3
1098c27d:	cc                                              	int3
1098c27e:	cc                                              	int3
1098c27f:	cc                                              	int3
