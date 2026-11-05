# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10538c90 (OnlineFeaturesHost_OverrideInGameBrowserUrlXroads)
Paired Ghidra pseudocode: 10538C90_OnlineFeaturesHost_OverrideInGameBrowserUrlXroads.c
Window: [0x10538c90, 0x10538ca0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10538ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10538c90: e9 eb fa ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10538c90 <.text+0x537c90>:
10538c90:	e9 eb fa ff ff                                  	jmp    0x10538780
10538c95:	cc                                              	int3
10538c96:	cc                                              	int3
10538c97:	cc                                              	int3
10538c98:	cc                                              	int3
10538c99:	cc                                              	int3
10538c9a:	cc                                              	int3
10538c9b:	cc                                              	int3
10538c9c:	cc                                              	int3
10538c9d:	cc                                              	int3
10538c9e:	cc                                              	int3
10538c9f:	cc                                              	int3
