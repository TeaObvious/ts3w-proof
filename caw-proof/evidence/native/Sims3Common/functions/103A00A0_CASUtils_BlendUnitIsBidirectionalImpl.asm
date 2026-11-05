# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a00a0 (CASUtils_BlendUnitIsBidirectionalImpl)
Paired Ghidra pseudocode: 103A00A0_CASUtils_BlendUnitIsBidirectionalImpl.c
Window: [0x103a00a0, 0x103a00e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a00e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a00a0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a00b0: 35 74 04 32 c0 5e c3 e8 64 b0 1b 00 8b 10 8b c8
103a00c0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8a 40 50
103a00d0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a00a0 <.text+0x39f0a0>:
103a00a0:	56                                              	push   esi
103a00a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a00a5:	8b c6                                           	mov    eax,esi
103a00a7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a00ac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a00b1:	74 04                                           	je     0x103a00b7
103a00b3:	32 c0                                           	xor    al,al
103a00b5:	5e                                              	pop    esi
103a00b6:	c3                                              	ret
103a00b7:	e8 64 b0 1b 00                                  	call   0x1055b120
103a00bc:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a00be:	8b c8                                           	mov    ecx,eax
103a00c0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a00c6:	56                                              	push   esi
103a00c7:	ff d0                                           	call   eax
103a00c9:	85 c0                                           	test   eax,eax
103a00cb:	74 e6                                           	je     0x103a00b3
103a00cd:	8a 40 50                                        	mov    al,BYTE PTR [eax+0x50]
103a00d0:	5e                                              	pop    esi
103a00d1:	c3                                              	ret
103a00d2:	cc                                              	int3
103a00d3:	cc                                              	int3
103a00d4:	cc                                              	int3
103a00d5:	cc                                              	int3
103a00d6:	cc                                              	int3
103a00d7:	cc                                              	int3
103a00d8:	cc                                              	int3
103a00d9:	cc                                              	int3
103a00da:	cc                                              	int3
103a00db:	cc                                              	int3
103a00dc:	cc                                              	int3
103a00dd:	cc                                              	int3
103a00de:	cc                                              	int3
103a00df:	cc                                              	int3
