# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999d30 (WorldWrap_GetCenter)
Paired Ghidra pseudocode: 10999D30_WorldWrap_GetCenter.c
Window: [0x10999d30, 0x10999da0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999d30: 55 8b ec 83 e4 f0 83 ec 20 8b 4d 08 6a 01 8d 44
10999d40: 24 14 50 e8 48 58 8a ff 0f 28 00 8b 45 0c 0f 29
10999d50: 04 24 f3 0f 10 0c 24 0f 29 44 24 10 f3 0f 11 0c
10999d60: 24 f3 0f 10 4c 24 14 8b 0c 24 0f 29 44 24 10 f3
10999d70: 0f 10 44 24 18 89 08 f3 0f 11 4c 24 04 8b 54 24
10999d80: 04 f3 0f 11 44 24 08 8b 4c 24 08 89 50 04 89 48
10999d90: 08 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999d30 <.text+0x998d30>:
10999d30:	55                                              	push   ebp
10999d31:	8b ec                                           	mov    ebp,esp
10999d33:	83 e4 f0                                        	and    esp,0xfffffff0
10999d36:	83 ec 20                                        	sub    esp,0x20
10999d39:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10999d3c:	6a 01                                           	push   0x1
10999d3e:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10999d42:	50                                              	push   eax
10999d43:	e8 48 58 8a ff                                  	call   0x1023f590
10999d48:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
10999d4b:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10999d4e:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10999d52:	f3 0f 10 0c 24                                  	movss  xmm1,DWORD PTR [esp]
10999d57:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10999d5c:	f3 0f 11 0c 24                                  	movss  DWORD PTR [esp],xmm1
10999d61:	f3 0f 10 4c 24 14                               	movss  xmm1,DWORD PTR [esp+0x14]
10999d67:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
10999d6a:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10999d6f:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
10999d75:	89 08                                           	mov    DWORD PTR [eax],ecx
10999d77:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10999d7d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10999d81:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10999d87:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10999d8b:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10999d8e:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10999d91:	8b e5                                           	mov    esp,ebp
10999d93:	5d                                              	pop    ebp
10999d94:	c3                                              	ret
10999d95:	cc                                              	int3
10999d96:	cc                                              	int3
10999d97:	cc                                              	int3
10999d98:	cc                                              	int3
10999d99:	cc                                              	int3
10999d9a:	cc                                              	int3
10999d9b:	cc                                              	int3
10999d9c:	cc                                              	int3
10999d9d:	cc                                              	int3
10999d9e:	cc                                              	int3
10999d9f:	cc                                              	int3
