# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1d60 (CASUtils_SimOutfitGetUniformComponentsImpl)
Paired Ghidra pseudocode: 103A1D60_CASUtils_SimOutfitGetUniformComponentsImpl.c
Window: [0x103a1d60, 0x103a1db0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1d60: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1d70: 35 74 08 83 c8 ff 83 ca ff 5e c3 e8 a0 93 1b 00
103a1d80: 8b 10 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74
103a1d90: e2 8b 88 d0 00 00 00 8b 90 d4 00 00 00 8b c1 5e
103a1da0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1d60 <.text+0x3a0d60>:
103a1d60:	56                                              	push   esi
103a1d61:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1d65:	8b c6                                           	mov    eax,esi
103a1d67:	25 00 00 00 ff                                  	and    eax,0xff000000
103a1d6c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1d71:	74 08                                           	je     0x103a1d7b
103a1d73:	83 c8 ff                                        	or     eax,0xffffffff
103a1d76:	83 ca ff                                        	or     edx,0xffffffff
103a1d79:	5e                                              	pop    esi
103a1d7a:	c3                                              	ret
103a1d7b:	e8 a0 93 1b 00                                  	call   0x1055b120
103a1d80:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1d82:	8b c8                                           	mov    ecx,eax
103a1d84:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1d8a:	56                                              	push   esi
103a1d8b:	ff d0                                           	call   eax
103a1d8d:	85 c0                                           	test   eax,eax
103a1d8f:	74 e2                                           	je     0x103a1d73
103a1d91:	8b 88 d0 00 00 00                               	mov    ecx,DWORD PTR [eax+0xd0]
103a1d97:	8b 90 d4 00 00 00                               	mov    edx,DWORD PTR [eax+0xd4]
103a1d9d:	8b c1                                           	mov    eax,ecx
103a1d9f:	5e                                              	pop    esi
103a1da0:	c3                                              	ret
103a1da1:	cc                                              	int3
103a1da2:	cc                                              	int3
103a1da3:	cc                                              	int3
103a1da4:	cc                                              	int3
103a1da5:	cc                                              	int3
103a1da6:	cc                                              	int3
103a1da7:	cc                                              	int3
103a1da8:	cc                                              	int3
103a1da9:	cc                                              	int3
103a1daa:	cc                                              	int3
103a1dab:	cc                                              	int3
103a1dac:	cc                                              	int3
103a1dad:	cc                                              	int3
103a1dae:	cc                                              	int3
103a1daf:	cc                                              	int3
