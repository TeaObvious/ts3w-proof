# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109984d0 (WorldWrap_GetWorldType)
Paired Ghidra pseudocode: 109984D0_WorldWrap_GetWorldType.c
Window: [0x109984d0, 0x109984f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109984f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109984d0: 8b 44 24 04 85 c0 74 0b 8d 88 70 02 00 00 e9 8d
109984e0: 3f a0 ff 83 c8 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109984d0 <.text+0x9974d0>:
109984d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109984d4:	85 c0                                           	test   eax,eax
109984d6:	74 0b                                           	je     0x109984e3
109984d8:	8d 88 70 02 00 00                               	lea    ecx,[eax+0x270]
109984de:	e9 8d 3f a0 ff                                  	jmp    0x1039c470
109984e3:	83 c8 ff                                        	or     eax,0xffffffff
109984e6:	c3                                              	ret
109984e7:	cc                                              	int3
109984e8:	cc                                              	int3
109984e9:	cc                                              	int3
109984ea:	cc                                              	int3
109984eb:	cc                                              	int3
109984ec:	cc                                              	int3
109984ed:	cc                                              	int3
109984ee:	cc                                              	int3
109984ef:	cc                                              	int3
