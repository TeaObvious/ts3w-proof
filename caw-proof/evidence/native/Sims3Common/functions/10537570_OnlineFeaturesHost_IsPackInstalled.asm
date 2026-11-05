# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537570 (OnlineFeaturesHost_IsPackInstalled)
Paired Ghidra pseudocode: 10537570_OnlineFeaturesHost_IsPackInstalled.c
Window: [0x10537570, 0x10537580) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537570: e9 7b fe ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10537570 <.text+0x536570>:
10537570:	e9 7b fe ff ff                                  	jmp    0x105373f0
10537575:	cc                                              	int3
10537576:	cc                                              	int3
10537577:	cc                                              	int3
10537578:	cc                                              	int3
10537579:	cc                                              	int3
1053757a:	cc                                              	int3
1053757b:	cc                                              	int3
1053757c:	cc                                              	int3
1053757d:	cc                                              	int3
1053757e:	cc                                              	int3
1053757f:	cc                                              	int3
