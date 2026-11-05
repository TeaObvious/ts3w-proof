# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10538c50 (OnlineFeaturesHost_CheckConnectionURL)
Paired Ghidra pseudocode: 10538C50_OnlineFeaturesHost_CheckConnectionURL.c
Window: [0x10538c50, 0x10538c60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10538c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10538c50: e9 0b f4 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10538c50 <.text+0x537c50>:
10538c50:	e9 0b f4 ff ff                                  	jmp    0x10538060
10538c55:	cc                                              	int3
10538c56:	cc                                              	int3
10538c57:	cc                                              	int3
10538c58:	cc                                              	int3
10538c59:	cc                                              	int3
10538c5a:	cc                                              	int3
10538c5b:	cc                                              	int3
10538c5c:	cc                                              	int3
10538c5d:	cc                                              	int3
10538c5e:	cc                                              	int3
10538c5f:	cc                                              	int3
