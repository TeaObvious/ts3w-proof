# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a7220 (CASUtils_CompoundBlendGetNameImpl)
Paired Ghidra pseudocode: 103A7220_CASUtils_CompoundBlendGetNameImpl.c
Window: [0x103a7220, 0x103a7230) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a7230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a7220: e9 eb f2 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a7220 <.text+0x3a6220>:
103a7220:	e9 eb f2 ff ff                                  	jmp    0x103a6510
103a7225:	cc                                              	int3
103a7226:	cc                                              	int3
103a7227:	cc                                              	int3
103a7228:	cc                                              	int3
103a7229:	cc                                              	int3
103a722a:	cc                                              	int3
103a722b:	cc                                              	int3
103a722c:	cc                                              	int3
103a722d:	cc                                              	int3
103a722e:	cc                                              	int3
103a722f:	cc                                              	int3
