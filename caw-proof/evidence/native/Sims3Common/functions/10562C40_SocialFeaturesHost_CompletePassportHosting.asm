# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562c40 (SocialFeaturesHost_CompletePassportHosting)
Paired Ghidra pseudocode: 10562C40_SocialFeaturesHost_CompletePassportHosting.c
Window: [0x10562c40, 0x10562c50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562c50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562c40: e9 3b d7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562c40 <.text+0x561c40>:
10562c40:	e9 3b d7 2a 00                                  	jmp    0x10810380
10562c45:	cc                                              	int3
10562c46:	cc                                              	int3
10562c47:	cc                                              	int3
10562c48:	cc                                              	int3
10562c49:	cc                                              	int3
10562c4a:	cc                                              	int3
10562c4b:	cc                                              	int3
10562c4c:	cc                                              	int3
10562c4d:	cc                                              	int3
10562c4e:	cc                                              	int3
10562c4f:	cc                                              	int3
