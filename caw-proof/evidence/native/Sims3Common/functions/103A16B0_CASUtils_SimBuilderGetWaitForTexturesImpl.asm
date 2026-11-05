# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a16b0 (CASUtils_SimBuilderGetWaitForTexturesImpl)
Paired Ghidra pseudocode: 103A16B0_CASUtils_SimBuilderGetWaitForTexturesImpl.c
Window: [0x103a16b0, 0x103a16f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a16f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a16b0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a16c0: 35 75 1b e8 58 9a 1b 00 8b 10 8b c8 8b 82 cc 00
103a16d0: 00 00 56 ff d0 85 c0 74 05 8a 40 6a 5e c3 32 c0
103a16e0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a16b0 <.text+0x3a06b0>:
103a16b0:	56                                              	push   esi
103a16b1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a16b5:	8b c6                                           	mov    eax,esi
103a16b7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a16bc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a16c1:	75 1b                                           	jne    0x103a16de
103a16c3:	e8 58 9a 1b 00                                  	call   0x1055b120
103a16c8:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a16ca:	8b c8                                           	mov    ecx,eax
103a16cc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a16d2:	56                                              	push   esi
103a16d3:	ff d0                                           	call   eax
103a16d5:	85 c0                                           	test   eax,eax
103a16d7:	74 05                                           	je     0x103a16de
103a16d9:	8a 40 6a                                        	mov    al,BYTE PTR [eax+0x6a]
103a16dc:	5e                                              	pop    esi
103a16dd:	c3                                              	ret
103a16de:	32 c0                                           	xor    al,al
103a16e0:	5e                                              	pop    esi
103a16e1:	c3                                              	ret
103a16e2:	cc                                              	int3
103a16e3:	cc                                              	int3
103a16e4:	cc                                              	int3
103a16e5:	cc                                              	int3
103a16e6:	cc                                              	int3
103a16e7:	cc                                              	int3
103a16e8:	cc                                              	int3
103a16e9:	cc                                              	int3
103a16ea:	cc                                              	int3
103a16eb:	cc                                              	int3
103a16ec:	cc                                              	int3
103a16ed:	cc                                              	int3
103a16ee:	cc                                              	int3
103a16ef:	cc                                              	int3
