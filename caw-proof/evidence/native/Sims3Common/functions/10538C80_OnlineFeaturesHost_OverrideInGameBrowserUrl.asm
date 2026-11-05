# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10538c80 (OnlineFeaturesHost_OverrideInGameBrowserUrl)
Paired Ghidra pseudocode: 10538C80_OnlineFeaturesHost_OverrideInGameBrowserUrl.c
Window: [0x10538c80, 0x10538c90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10538c90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10538c80: e9 5b fa ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10538c80 <.text+0x537c80>:
10538c80:	e9 5b fa ff ff                                  	jmp    0x105386e0
10538c85:	cc                                              	int3
10538c86:	cc                                              	int3
10538c87:	cc                                              	int3
10538c88:	cc                                              	int3
10538c89:	cc                                              	int3
10538c8a:	cc                                              	int3
10538c8b:	cc                                              	int3
10538c8c:	cc                                              	int3
10538c8d:	cc                                              	int3
10538c8e:	cc                                              	int3
10538c8f:	cc                                              	int3
