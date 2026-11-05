# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561c30 (SocialFeaturesHost_GetFriendCount)
Paired Ghidra pseudocode: 10561C30_SocialFeaturesHost_GetFriendCount.c
Window: [0x10561c30, 0x10561c40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561c30: e9 6b b9 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561c30 <.text+0x560c30>:
10561c30:	e9 6b b9 2a 00                                  	jmp    0x1080d5a0
10561c35:	cc                                              	int3
10561c36:	cc                                              	int3
10561c37:	cc                                              	int3
10561c38:	cc                                              	int3
10561c39:	cc                                              	int3
10561c3a:	cc                                              	int3
10561c3b:	cc                                              	int3
10561c3c:	cc                                              	int3
10561c3d:	cc                                              	int3
10561c3e:	cc                                              	int3
10561c3f:	cc                                              	int3
