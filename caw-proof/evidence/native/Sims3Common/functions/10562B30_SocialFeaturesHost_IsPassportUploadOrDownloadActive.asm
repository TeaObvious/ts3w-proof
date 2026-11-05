# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562b30 (SocialFeaturesHost_IsPassportUploadOrDownloadActive)
Paired Ghidra pseudocode: 10562B30_SocialFeaturesHost_IsPassportUploadOrDownloadActive.c
Window: [0x10562b30, 0x10562b40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562b30: e9 cb d5 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562b30 <.text+0x561b30>:
10562b30:	e9 cb d5 2a 00                                  	jmp    0x10810100
10562b35:	cc                                              	int3
10562b36:	cc                                              	int3
10562b37:	cc                                              	int3
10562b38:	cc                                              	int3
10562b39:	cc                                              	int3
10562b3a:	cc                                              	int3
10562b3b:	cc                                              	int3
10562b3c:	cc                                              	int3
10562b3d:	cc                                              	int3
10562b3e:	cc                                              	int3
10562b3f:	cc                                              	int3
