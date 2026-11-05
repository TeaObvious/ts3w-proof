# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1b00 (CASUtils_SimOutfitGetMorphWeightAImpl)
Paired Ghidra pseudocode: 103A1B00_CASUtils_SimOutfitGetMorphWeightAImpl.c
Window: [0x103a1b00, 0x103a1b50) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1b00: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1b10: 35 74 0f 0f 57 c0 f3 0f 11 44 24 08 d9 44 24 08
103a1b20: 5e c3 e8 f9 95 1b 00 8b 10 8b c8 8b 82 cc 00 00
103a1b30: 00 56 ff d0 85 c0 74 db f3 0f 10 40 68 f3 0f 11
103a1b40: 44 24 08 d9 44 24 08 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1b00 <.text+0x3a0b00>:
103a1b00:	56                                              	push   esi
103a1b01:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1b05:	8b c6                                           	mov    eax,esi
103a1b07:	25 00 00 00 ff                                  	and    eax,0xff000000
103a1b0c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1b11:	74 0f                                           	je     0x103a1b22
103a1b13:	0f 57 c0                                        	xorps  xmm0,xmm0
103a1b16:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1b1c:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1b20:	5e                                              	pop    esi
103a1b21:	c3                                              	ret
103a1b22:	e8 f9 95 1b 00                                  	call   0x1055b120
103a1b27:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1b29:	8b c8                                           	mov    ecx,eax
103a1b2b:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1b31:	56                                              	push   esi
103a1b32:	ff d0                                           	call   eax
103a1b34:	85 c0                                           	test   eax,eax
103a1b36:	74 db                                           	je     0x103a1b13
103a1b38:	f3 0f 10 40 68                                  	movss  xmm0,DWORD PTR [eax+0x68]
103a1b3d:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1b43:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1b47:	5e                                              	pop    esi
103a1b48:	c3                                              	ret
103a1b49:	cc                                              	int3
103a1b4a:	cc                                              	int3
103a1b4b:	cc                                              	int3
103a1b4c:	cc                                              	int3
103a1b4d:	cc                                              	int3
103a1b4e:	cc                                              	int3
103a1b4f:	cc                                              	int3
