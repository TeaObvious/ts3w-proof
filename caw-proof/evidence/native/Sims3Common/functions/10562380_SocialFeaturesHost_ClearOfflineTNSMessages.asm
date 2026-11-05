# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562380 (SocialFeaturesHost_ClearOfflineTNSMessages)
Paired Ghidra pseudocode: 10562380_SocialFeaturesHost_ClearOfflineTNSMessages.c
Window: [0x10562380, 0x10562390) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562390
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562380: e9 cb c3 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562380 <.text+0x561380>:
10562380:	e9 cb c3 2a 00                                  	jmp    0x1080e750
10562385:	cc                                              	int3
10562386:	cc                                              	int3
10562387:	cc                                              	int3
10562388:	cc                                              	int3
10562389:	cc                                              	int3
1056238a:	cc                                              	int3
1056238b:	cc                                              	int3
1056238c:	cc                                              	int3
1056238d:	cc                                              	int3
1056238e:	cc                                              	int3
1056238f:	cc                                              	int3
