# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ffe0 (CASUtils_FacialBlendGetRegionFlagsImpl)
Paired Ghidra pseudocode: 1039FFE0_CASUtils_FacialBlendGetRegionFlagsImpl.c
Window: [0x1039ffe0, 0x103a0020) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ffe0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039fff0: 35 74 04 33 c0 5e c3 e8 24 b1 1b 00 8b 10 8b c8
103a0000: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b c8 5e
103a0010: e9 eb 00 02 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039ffe0 <.text+0x39efe0>:
1039ffe0:	56                                              	push   esi
1039ffe1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ffe5:	8b c6                                           	mov    eax,esi
1039ffe7:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ffec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039fff1:	74 04                                           	je     0x1039fff7
1039fff3:	33 c0                                           	xor    eax,eax
1039fff5:	5e                                              	pop    esi
1039fff6:	c3                                              	ret
1039fff7:	e8 24 b1 1b 00                                  	call   0x1055b120
1039fffc:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039fffe:	8b c8                                           	mov    ecx,eax
103a0000:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a0006:	56                                              	push   esi
103a0007:	ff d0                                           	call   eax
103a0009:	85 c0                                           	test   eax,eax
103a000b:	74 e6                                           	je     0x1039fff3
103a000d:	8b c8                                           	mov    ecx,eax
103a000f:	5e                                              	pop    esi
103a0010:	e9 eb 00 02 00                                  	jmp    0x103c0100
103a0015:	cc                                              	int3
103a0016:	cc                                              	int3
103a0017:	cc                                              	int3
103a0018:	cc                                              	int3
103a0019:	cc                                              	int3
103a001a:	cc                                              	int3
103a001b:	cc                                              	int3
103a001c:	cc                                              	int3
103a001d:	cc                                              	int3
103a001e:	cc                                              	int3
103a001f:	cc                                              	int3
