# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be500 (UserToolUtils_CheckObjectPlacementImpl)
Paired Ghidra pseudocode: 102BE500_UserToolUtils_CheckObjectPlacementImpl.c
Window: [0x102be500, 0x102be510) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be500: e9 7b fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be500 <.text+0x2bd500>:
102be500:	e9 7b fc ff ff                                  	jmp    0x102be180
102be505:	cc                                              	int3
102be506:	cc                                              	int3
102be507:	cc                                              	int3
102be508:	cc                                              	int3
102be509:	cc                                              	int3
102be50a:	cc                                              	int3
102be50b:	cc                                              	int3
102be50c:	cc                                              	int3
102be50d:	cc                                              	int3
102be50e:	cc                                              	int3
102be50f:	cc                                              	int3
