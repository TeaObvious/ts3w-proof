# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567dc0 (StreamHost_Close)
Paired Ghidra pseudocode: 10567DC0_StreamHost_Close.c
Window: [0x10567dc0, 0x10567dd0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567dd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567dc0: e9 1b f5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567dc0 <.text+0x566dc0>:
10567dc0:	e9 1b f5 ff ff                                  	jmp    0x105672e0
10567dc5:	cc                                              	int3
10567dc6:	cc                                              	int3
10567dc7:	cc                                              	int3
10567dc8:	cc                                              	int3
10567dc9:	cc                                              	int3
10567dca:	cc                                              	int3
10567dcb:	cc                                              	int3
10567dcc:	cc                                              	int3
10567dcd:	cc                                              	int3
10567dce:	cc                                              	int3
10567dcf:	cc                                              	int3
