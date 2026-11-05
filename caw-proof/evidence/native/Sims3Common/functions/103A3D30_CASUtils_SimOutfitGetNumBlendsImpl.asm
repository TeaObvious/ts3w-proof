# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3d30 (CASUtils_SimOutfitGetNumBlendsImpl)
Paired Ghidra pseudocode: 103A3D30_CASUtils_SimOutfitGetNumBlendsImpl.c
Window: [0x103a3d30, 0x103a3d80) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3d80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3d30: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a3d40: 35 74 04 33 c0 5e c3 e8 d4 73 1b 00 8b 10 8b c8
103a3d50: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 88 bc
103a3d60: 02 00 00 2b 88 b8 02 00 00 b8 ab aa aa 2a f7 e9
103a3d70: c1 fa 02 8b c2 c1 e8 1f 03 c2 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
103a3d30 <.text+0x3a2d30>:
103a3d30:	56                                              	push   esi
103a3d31:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a3d35:	8b c6                                           	mov    eax,esi
103a3d37:	25 00 00 00 ff                                  	and    eax,0xff000000
103a3d3c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a3d41:	74 04                                           	je     0x103a3d47
103a3d43:	33 c0                                           	xor    eax,eax
103a3d45:	5e                                              	pop    esi
103a3d46:	c3                                              	ret
103a3d47:	e8 d4 73 1b 00                                  	call   0x1055b120
103a3d4c:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a3d4e:	8b c8                                           	mov    ecx,eax
103a3d50:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a3d56:	56                                              	push   esi
103a3d57:	ff d0                                           	call   eax
103a3d59:	85 c0                                           	test   eax,eax
103a3d5b:	74 e6                                           	je     0x103a3d43
103a3d5d:	8b 88 bc 02 00 00                               	mov    ecx,DWORD PTR [eax+0x2bc]
103a3d63:	2b 88 b8 02 00 00                               	sub    ecx,DWORD PTR [eax+0x2b8]
103a3d69:	b8 ab aa aa 2a                                  	mov    eax,0x2aaaaaab
103a3d6e:	f7 e9                                           	imul   ecx
103a3d70:	c1 fa 02                                        	sar    edx,0x2
103a3d73:	8b c2                                           	mov    eax,edx
103a3d75:	c1 e8 1f                                        	shr    eax,0x1f
103a3d78:	03 c2                                           	add    eax,edx
103a3d7a:	5e                                              	pop    esi
103a3d7b:	c3                                              	ret
103a3d7c:	cc                                              	int3
103a3d7d:	cc                                              	int3
103a3d7e:	cc                                              	int3
103a3d7f:	cc                                              	int3
