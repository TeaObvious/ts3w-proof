# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561b80 (SocialFeaturesHost_ResetGiftTimeLimit)
Paired Ghidra pseudocode: 10561B80_SocialFeaturesHost_ResetGiftTimeLimit.c
Window: [0x10561b80, 0x10561b90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561b90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561b80: e9 9b b7 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561b80 <.text+0x560b80>:
10561b80:	e9 9b b7 2a 00                                  	jmp    0x1080d320
10561b85:	cc                                              	int3
10561b86:	cc                                              	int3
10561b87:	cc                                              	int3
10561b88:	cc                                              	int3
10561b89:	cc                                              	int3
10561b8a:	cc                                              	int3
10561b8b:	cc                                              	int3
10561b8c:	cc                                              	int3
10561b8d:	cc                                              	int3
10561b8e:	cc                                              	int3
10561b8f:	cc                                              	int3
