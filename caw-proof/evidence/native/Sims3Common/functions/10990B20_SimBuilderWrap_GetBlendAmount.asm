# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990b20 (SimBuilderWrap_GetBlendAmount)
Paired Ghidra pseudocode: 10990B20_SimBuilderWrap_GetBlendAmount.c
Window: [0x10990b20, 0x10990b70) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990b20: 8b 4c 24 04 8b 81 08 02 00 00 81 c1 08 02 00 00
10990b30: 33 d2 3b c1 56 74 16 8b 74 24 0c eb 03 8d 49 00
10990b40: 3b d6 74 18 8b 00 83 c2 01 3b c1 75 f3 0f 57 c0
10990b50: f3 0f 11 44 24 08 d9 44 24 08 5e c3 f3 0f 10 40
10990b60: 18 f3 0f 11 44 24 08 d9 44 24 08 5e c3 cc cc cc

LINEAR DISASSEMBLY
10990b20 <.text+0x98fb20>:
10990b20:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10990b24:	8b 81 08 02 00 00                               	mov    eax,DWORD PTR [ecx+0x208]
10990b2a:	81 c1 08 02 00 00                               	add    ecx,0x208
10990b30:	33 d2                                           	xor    edx,edx
10990b32:	3b c1                                           	cmp    eax,ecx
10990b34:	56                                              	push   esi
10990b35:	74 16                                           	je     0x10990b4d
10990b37:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
10990b3b:	eb 03                                           	jmp    0x10990b40
10990b3d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10990b40:	3b d6                                           	cmp    edx,esi
10990b42:	74 18                                           	je     0x10990b5c
10990b44:	8b 00                                           	mov    eax,DWORD PTR [eax]
10990b46:	83 c2 01                                        	add    edx,0x1
10990b49:	3b c1                                           	cmp    eax,ecx
10990b4b:	75 f3                                           	jne    0x10990b40
10990b4d:	0f 57 c0                                        	xorps  xmm0,xmm0
10990b50:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10990b56:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10990b5a:	5e                                              	pop    esi
10990b5b:	c3                                              	ret
10990b5c:	f3 0f 10 40 18                                  	movss  xmm0,DWORD PTR [eax+0x18]
10990b61:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10990b67:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10990b6b:	5e                                              	pop    esi
10990b6c:	c3                                              	ret
10990b6d:	cc                                              	int3
10990b6e:	cc                                              	int3
10990b6f:	cc                                              	int3
