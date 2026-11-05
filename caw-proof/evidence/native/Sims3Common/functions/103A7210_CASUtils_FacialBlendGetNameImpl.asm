# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a7210 (CASUtils_FacialBlendGetNameImpl)
Paired Ghidra pseudocode: 103A7210_CASUtils_FacialBlendGetNameImpl.c
Window: [0x103a7210, 0x103a7220) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a7220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a7210: e9 5b f2 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a7210 <.text+0x3a6210>:
103a7210:	e9 5b f2 ff ff                                  	jmp    0x103a6470
103a7215:	cc                                              	int3
103a7216:	cc                                              	int3
103a7217:	cc                                              	int3
103a7218:	cc                                              	int3
103a7219:	cc                                              	int3
103a721a:	cc                                              	int3
103a721b:	cc                                              	int3
103a721c:	cc                                              	int3
103a721d:	cc                                              	int3
103a721e:	cc                                              	int3
103a721f:	cc                                              	int3
