# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561e50 (SocialFeaturesHost_HasFriends)
Paired Ghidra pseudocode: 10561E50_SocialFeaturesHost_HasFriends.c
Window: [0x10561e50, 0x10561e60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561e60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561e50: e9 5b bc 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561e50 <.text+0x560e50>:
10561e50:	e9 5b bc 2a 00                                  	jmp    0x1080dab0
10561e55:	cc                                              	int3
10561e56:	cc                                              	int3
10561e57:	cc                                              	int3
10561e58:	cc                                              	int3
10561e59:	cc                                              	int3
10561e5a:	cc                                              	int3
10561e5b:	cc                                              	int3
10561e5c:	cc                                              	int3
10561e5d:	cc                                              	int3
10561e5e:	cc                                              	int3
10561e5f:	cc                                              	int3
