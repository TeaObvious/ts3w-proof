# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056c080 (UIManager_NewEffectImpl)
Paired Ghidra pseudocode: 1056C080_UIManager_NewEffectImpl.c
Window: [0x1056c080, 0x1056c090) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056c090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056c080: e9 bb f5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056c080 <.text+0x56b080>:
1056c080:	e9 bb f5 ff ff                                  	jmp    0x1056b640
1056c085:	cc                                              	int3
1056c086:	cc                                              	int3
1056c087:	cc                                              	int3
1056c088:	cc                                              	int3
1056c089:	cc                                              	int3
1056c08a:	cc                                              	int3
1056c08b:	cc                                              	int3
1056c08c:	cc                                              	int3
1056c08d:	cc                                              	int3
1056c08e:	cc                                              	int3
1056c08f:	cc                                              	int3
