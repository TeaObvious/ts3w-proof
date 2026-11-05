# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105797c0 (World_ExportInfoImpl)
Paired Ghidra pseudocode: 105797C0_World_ExportInfoImpl.c
Window: [0x105797c0, 0x105797f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105797f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105797c0: 8b 0d c4 00 c7 10 85 c9 74 05 e9 81 49 fe ff c3
105797d0: a1 c4 00 c7 10 85 c0 74 0f 33 c9 83 b8 b4 01 00
105797e0: 00 02 0f 94 c1 8a c1 c3 32 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
105797c0 <.text+0x5787c0>:
105797c0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105797c6:	85 c9                                           	test   ecx,ecx
105797c8:	74 05                                           	je     0x105797cf
105797ca:	e9 81 49 fe ff                                  	jmp    0x1055e150
105797cf:	c3                                              	ret
105797d0:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
105797d5:	85 c0                                           	test   eax,eax
105797d7:	74 0f                                           	je     0x105797e8
105797d9:	33 c9                                           	xor    ecx,ecx
105797db:	83 b8 b4 01 00 00 02                            	cmp    DWORD PTR [eax+0x1b4],0x2
105797e2:	0f 94 c1                                        	sete   cl
105797e5:	8a c1                                           	mov    al,cl
105797e7:	c3                                              	ret
105797e8:	32 c0                                           	xor    al,al
105797ea:	c3                                              	ret
105797eb:	cc                                              	int3
105797ec:	cc                                              	int3
105797ed:	cc                                              	int3
105797ee:	cc                                              	int3
105797ef:	cc                                              	int3
