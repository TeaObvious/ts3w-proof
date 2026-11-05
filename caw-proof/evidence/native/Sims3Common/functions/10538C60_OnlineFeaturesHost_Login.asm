# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10538c60 (OnlineFeaturesHost_Login)
Paired Ghidra pseudocode: 10538C60_OnlineFeaturesHost_Login.c
Window: [0x10538c60, 0x10538c70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10538c70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10538c60: e9 cb f4 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10538c60 <.text+0x537c60>:
10538c60:	e9 cb f4 ff ff                                  	jmp    0x10538130
10538c65:	cc                                              	int3
10538c66:	cc                                              	int3
10538c67:	cc                                              	int3
10538c68:	cc                                              	int3
10538c69:	cc                                              	int3
10538c6a:	cc                                              	int3
10538c6b:	cc                                              	int3
10538c6c:	cc                                              	int3
10538c6d:	cc                                              	int3
10538c6e:	cc                                              	int3
10538c6f:	cc                                              	int3
