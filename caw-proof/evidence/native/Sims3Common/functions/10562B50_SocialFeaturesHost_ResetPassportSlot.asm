# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562b50 (SocialFeaturesHost_ResetPassportSlot)
Paired Ghidra pseudocode: 10562B50_SocialFeaturesHost_ResetPassportSlot.c
Window: [0x10562b50, 0x10562b60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562b60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562b50: e9 1b d6 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562b50 <.text+0x561b50>:
10562b50:	e9 1b d6 2a 00                                  	jmp    0x10810170
10562b55:	cc                                              	int3
10562b56:	cc                                              	int3
10562b57:	cc                                              	int3
10562b58:	cc                                              	int3
10562b59:	cc                                              	int3
10562b5a:	cc                                              	int3
10562b5b:	cc                                              	int3
10562b5c:	cc                                              	int3
10562b5d:	cc                                              	int3
10562b5e:	cc                                              	int3
10562b5f:	cc                                              	int3
