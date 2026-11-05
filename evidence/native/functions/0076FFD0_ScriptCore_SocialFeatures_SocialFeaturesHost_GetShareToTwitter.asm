# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ffd0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetShareToTwitter)
Paired Ghidra pseudocode: 0076FFD0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetShareToTwitter.c
Window: [0x0076ffd0, 0x0076ffe0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ffe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ffd0: e9 cb 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ffd0 <.text+0x36efd0>:
  76ffd0:	e9 cb 26 2b 00                                  	jmp    0xa226a0
  76ffd5:	cc                                              	int3
  76ffd6:	cc                                              	int3
  76ffd7:	cc                                              	int3
  76ffd8:	cc                                              	int3
  76ffd9:	cc                                              	int3
  76ffda:	cc                                              	int3
  76ffdb:	cc                                              	int3
  76ffdc:	cc                                              	int3
  76ffdd:	cc                                              	int3
  76ffde:	cc                                              	int3
  76ffdf:	cc                                              	int3
