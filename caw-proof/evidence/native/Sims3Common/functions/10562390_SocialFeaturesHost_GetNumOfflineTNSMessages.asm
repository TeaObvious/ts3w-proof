# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562390 (SocialFeaturesHost_GetNumOfflineTNSMessages)
Paired Ghidra pseudocode: 10562390_SocialFeaturesHost_GetNumOfflineTNSMessages.c
Window: [0x10562390, 0x105623a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105623a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562390: e9 eb c3 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562390 <.text+0x561390>:
10562390:	e9 eb c3 2a 00                                  	jmp    0x1080e780
10562395:	cc                                              	int3
10562396:	cc                                              	int3
10562397:	cc                                              	int3
10562398:	cc                                              	int3
10562399:	cc                                              	int3
1056239a:	cc                                              	int3
1056239b:	cc                                              	int3
1056239c:	cc                                              	int3
1056239d:	cc                                              	int3
1056239e:	cc                                              	int3
1056239f:	cc                                              	int3
