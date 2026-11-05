# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c9a0 (SacsWrap_RegisterResourceFactories)
Paired Ghidra pseudocode: 1098C9A0_SacsWrap_RegisterResourceFactories.c
Window: [0x1098c9a0, 0x1098c9b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c9b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c9a0: e9 9b 33 c6 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c9a0 <.text+0x98b9a0>:
1098c9a0:	e9 9b 33 c6 ff                                  	jmp    0x105efd40
1098c9a5:	cc                                              	int3
1098c9a6:	cc                                              	int3
1098c9a7:	cc                                              	int3
1098c9a8:	cc                                              	int3
1098c9a9:	cc                                              	int3
1098c9aa:	cc                                              	int3
1098c9ab:	cc                                              	int3
1098c9ac:	cc                                              	int3
1098c9ad:	cc                                              	int3
1098c9ae:	cc                                              	int3
1098c9af:	cc                                              	int3
