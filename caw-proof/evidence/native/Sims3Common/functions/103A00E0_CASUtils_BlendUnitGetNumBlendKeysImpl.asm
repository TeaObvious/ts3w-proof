# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a00e0 (CASUtils_BlendUnitGetNumBlendKeysImpl)
Paired Ghidra pseudocode: 103A00E0_CASUtils_BlendUnitGetNumBlendKeysImpl.c
Window: [0x103a00e0, 0x103a0120) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a00e0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a00f0: 35 74 04 33 c0 5e c3 e8 24 b0 1b 00 8b 10 8b c8
103a0100: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 40 60
103a0110: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a00e0 <.text+0x39f0e0>:
103a00e0:	56                                              	push   esi
103a00e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a00e5:	8b c6                                           	mov    eax,esi
103a00e7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a00ec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a00f1:	74 04                                           	je     0x103a00f7
103a00f3:	33 c0                                           	xor    eax,eax
103a00f5:	5e                                              	pop    esi
103a00f6:	c3                                              	ret
103a00f7:	e8 24 b0 1b 00                                  	call   0x1055b120
103a00fc:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a00fe:	8b c8                                           	mov    ecx,eax
103a0100:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a0106:	56                                              	push   esi
103a0107:	ff d0                                           	call   eax
103a0109:	85 c0                                           	test   eax,eax
103a010b:	74 e6                                           	je     0x103a00f3
103a010d:	8b 40 60                                        	mov    eax,DWORD PTR [eax+0x60]
103a0110:	5e                                              	pop    esi
103a0111:	c3                                              	ret
103a0112:	cc                                              	int3
103a0113:	cc                                              	int3
103a0114:	cc                                              	int3
103a0115:	cc                                              	int3
103a0116:	cc                                              	int3
103a0117:	cc                                              	int3
103a0118:	cc                                              	int3
103a0119:	cc                                              	int3
103a011a:	cc                                              	int3
103a011b:	cc                                              	int3
103a011c:	cc                                              	int3
103a011d:	cc                                              	int3
103a011e:	cc                                              	int3
103a011f:	cc                                              	int3
