# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563e80 (SocialFeaturesHost_GetBadgePoints)
Paired Ghidra pseudocode: 10563E80_SocialFeaturesHost_GetBadgePoints.c
Window: [0x10563e80, 0x10563e90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563e80: e9 cb f8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10563e80 <.text+0x562e80>:
10563e80:	e9 cb f8 ff ff                                  	jmp    0x10563750
10563e85:	cc                                              	int3
10563e86:	cc                                              	int3
10563e87:	cc                                              	int3
10563e88:	cc                                              	int3
10563e89:	cc                                              	int3
10563e8a:	cc                                              	int3
10563e8b:	cc                                              	int3
10563e8c:	cc                                              	int3
10563e8d:	cc                                              	int3
10563e8e:	cc                                              	int3
10563e8f:	cc                                              	int3
