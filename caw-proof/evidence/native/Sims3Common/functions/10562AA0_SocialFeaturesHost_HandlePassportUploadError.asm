# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562aa0 (SocialFeaturesHost_HandlePassportUploadError)
Paired Ghidra pseudocode: 10562AA0_SocialFeaturesHost_HandlePassportUploadError.c
Window: [0x10562aa0, 0x10562ab0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562ab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562aa0: e9 1b d5 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562aa0 <.text+0x561aa0>:
10562aa0:	e9 1b d5 2a 00                                  	jmp    0x1080ffc0
10562aa5:	cc                                              	int3
10562aa6:	cc                                              	int3
10562aa7:	cc                                              	int3
10562aa8:	cc                                              	int3
10562aa9:	cc                                              	int3
10562aaa:	cc                                              	int3
10562aab:	cc                                              	int3
10562aac:	cc                                              	int3
10562aad:	cc                                              	int3
10562aae:	cc                                              	int3
10562aaf:	cc                                              	int3
