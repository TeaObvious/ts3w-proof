# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3bb0 (CASUtils_FrameHeadImpl)
Paired Ghidra pseudocode: 103A3BB0_CASUtils_FrameHeadImpl.c
Window: [0x103a3bb0, 0x103a3bc0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3bb0: e9 ab f3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3bb0 <.text+0x3a2bb0>:
103a3bb0:	e9 ab f3 ff ff                                  	jmp    0x103a2f60
103a3bb5:	cc                                              	int3
103a3bb6:	cc                                              	int3
103a3bb7:	cc                                              	int3
103a3bb8:	cc                                              	int3
103a3bb9:	cc                                              	int3
103a3bba:	cc                                              	int3
103a3bbb:	cc                                              	int3
103a3bbc:	cc                                              	int3
103a3bbd:	cc                                              	int3
103a3bbe:	cc                                              	int3
103a3bbf:	cc                                              	int3
