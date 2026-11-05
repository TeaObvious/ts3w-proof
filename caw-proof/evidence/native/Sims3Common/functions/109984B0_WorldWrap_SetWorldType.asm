# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109984b0 (WorldWrap_SetWorldType)
Paired Ghidra pseudocode: 109984B0_WorldWrap_SetWorldType.c
Window: [0x109984b0, 0x109984d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109984d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109984b0: 8b 44 24 04 85 c0 74 0a 8b 4c 24 08 89 88 d4 02
109984c0: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109984b0 <.text+0x9974b0>:
109984b0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109984b4:	85 c0                                           	test   eax,eax
109984b6:	74 0a                                           	je     0x109984c2
109984b8:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
109984bc:	89 88 d4 02 00 00                               	mov    DWORD PTR [eax+0x2d4],ecx
109984c2:	c3                                              	ret
109984c3:	cc                                              	int3
109984c4:	cc                                              	int3
109984c5:	cc                                              	int3
109984c6:	cc                                              	int3
109984c7:	cc                                              	int3
109984c8:	cc                                              	int3
109984c9:	cc                                              	int3
109984ca:	cc                                              	int3
109984cb:	cc                                              	int3
109984cc:	cc                                              	int3
109984cd:	cc                                              	int3
109984ce:	cc                                              	int3
109984cf:	cc                                              	int3
