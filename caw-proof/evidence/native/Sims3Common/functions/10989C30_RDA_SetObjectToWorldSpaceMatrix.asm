# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989c30 (RDA_SetObjectToWorldSpaceMatrix)
Paired Ghidra pseudocode: 10989C30_RDA_SetObjectToWorldSpaceMatrix.c
Window: [0x10989c30, 0x10989d40) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989d40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989c30: 55 8b ec 83 e4 f0 83 ec 5c 56 8b 75 08 85 f6 0f
10989c40: 84 f0 00 00 00 e8 56 47 b5 ff 85 c0 0f 84 e3 00
10989c50: 00 00 f3 0f 10 46 0c f3 0f 11 44 24 1c f3 0f 10
10989c60: 46 08 f3 0f 11 44 24 18 f3 0f 10 46 04 f3 0f 11
10989c70: 44 24 14 f3 0f 10 06 f3 0f 11 44 24 10 0f 28 44
10989c80: 24 10 0f 29 44 24 20 f3 0f 10 46 1c f3 0f 11 44
10989c90: 24 1c f3 0f 10 46 18 f3 0f 11 44 24 18 f3 0f 10
10989ca0: 46 14 f3 0f 11 44 24 14 f3 0f 10 46 10 f3 0f 11
10989cb0: 44 24 10 0f 28 44 24 10 0f 29 44 24 30 f3 0f 10
10989cc0: 46 2c f3 0f 11 44 24 1c f3 0f 10 46 28 f3 0f 11
10989cd0: 44 24 18 f3 0f 10 46 24 f3 0f 11 44 24 14 f3 0f
10989ce0: 10 46 20 f3 0f 11 44 24 10 0f 28 44 24 10 0f 29
10989cf0: 44 24 40 f3 0f 10 46 3c f3 0f 11 44 24 1c f3 0f
10989d00: 10 46 38 f3 0f 11 44 24 18 f3 0f 10 46 34 f3 0f
10989d10: 11 44 24 14 f3 0f 10 46 30 8d 4c 24 20 f3 0f 11
10989d20: 44 24 10 0f 28 44 24 10 51 8b c8 0f 29 44 24 54
10989d30: e8 ab 61 b5 ff 5e 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10989c30 <.text+0x988c30>:
10989c30:	55                                              	push   ebp
10989c31:	8b ec                                           	mov    ebp,esp
10989c33:	83 e4 f0                                        	and    esp,0xfffffff0
10989c36:	83 ec 5c                                        	sub    esp,0x5c
10989c39:	56                                              	push   esi
10989c3a:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
10989c3d:	85 f6                                           	test   esi,esi
10989c3f:	0f 84 f0 00 00 00                               	je     0x10989d35
10989c45:	e8 56 47 b5 ff                                  	call   0x104de3a0
10989c4a:	85 c0                                           	test   eax,eax
10989c4c:	0f 84 e3 00 00 00                               	je     0x10989d35
10989c52:	f3 0f 10 46 0c                                  	movss  xmm0,DWORD PTR [esi+0xc]
10989c57:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10989c5d:	f3 0f 10 46 08                                  	movss  xmm0,DWORD PTR [esi+0x8]
10989c62:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10989c68:	f3 0f 10 46 04                                  	movss  xmm0,DWORD PTR [esi+0x4]
10989c6d:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10989c73:	f3 0f 10 06                                     	movss  xmm0,DWORD PTR [esi]
10989c77:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10989c7d:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10989c82:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10989c87:	f3 0f 10 46 1c                                  	movss  xmm0,DWORD PTR [esi+0x1c]
10989c8c:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10989c92:	f3 0f 10 46 18                                  	movss  xmm0,DWORD PTR [esi+0x18]
10989c97:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10989c9d:	f3 0f 10 46 14                                  	movss  xmm0,DWORD PTR [esi+0x14]
10989ca2:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10989ca8:	f3 0f 10 46 10                                  	movss  xmm0,DWORD PTR [esi+0x10]
10989cad:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10989cb3:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10989cb8:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
10989cbd:	f3 0f 10 46 2c                                  	movss  xmm0,DWORD PTR [esi+0x2c]
10989cc2:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10989cc8:	f3 0f 10 46 28                                  	movss  xmm0,DWORD PTR [esi+0x28]
10989ccd:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10989cd3:	f3 0f 10 46 24                                  	movss  xmm0,DWORD PTR [esi+0x24]
10989cd8:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10989cde:	f3 0f 10 46 20                                  	movss  xmm0,DWORD PTR [esi+0x20]
10989ce3:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10989ce9:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10989cee:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
10989cf3:	f3 0f 10 46 3c                                  	movss  xmm0,DWORD PTR [esi+0x3c]
10989cf8:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10989cfe:	f3 0f 10 46 38                                  	movss  xmm0,DWORD PTR [esi+0x38]
10989d03:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10989d09:	f3 0f 10 46 34                                  	movss  xmm0,DWORD PTR [esi+0x34]
10989d0e:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10989d14:	f3 0f 10 46 30                                  	movss  xmm0,DWORD PTR [esi+0x30]
10989d19:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10989d1d:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10989d23:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10989d28:	51                                              	push   ecx
10989d29:	8b c8                                           	mov    ecx,eax
10989d2b:	0f 29 44 24 54                                  	movaps XMMWORD PTR [esp+0x54],xmm0
10989d30:	e8 ab 61 b5 ff                                  	call   0x104dfee0
10989d35:	5e                                              	pop    esi
10989d36:	8b e5                                           	mov    esp,ebp
10989d38:	5d                                              	pop    ebp
10989d39:	c3                                              	ret
10989d3a:	cc                                              	int3
10989d3b:	cc                                              	int3
10989d3c:	cc                                              	int3
10989d3d:	cc                                              	int3
10989d3e:	cc                                              	int3
10989d3f:	cc                                              	int3
