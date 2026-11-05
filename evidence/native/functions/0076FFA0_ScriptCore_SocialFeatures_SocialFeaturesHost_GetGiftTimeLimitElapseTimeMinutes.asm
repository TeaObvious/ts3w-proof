# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ffa0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetGiftTimeLimitElapseTimeMinutes)
Paired Ghidra pseudocode: 0076FFA0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetGiftTimeLimitElapseTimeMinutes.c
Window: [0x0076ffa0, 0x0076ffb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ffb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ffa0: e9 9b 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ffa0 <.text+0x36efa0>:
  76ffa0:	e9 9b 26 2b 00                                  	jmp    0xa22640
  76ffa5:	cc                                              	int3
  76ffa6:	cc                                              	int3
  76ffa7:	cc                                              	int3
  76ffa8:	cc                                              	int3
  76ffa9:	cc                                              	int3
  76ffaa:	cc                                              	int3
  76ffab:	cc                                              	int3
  76ffac:	cc                                              	int3
  76ffad:	cc                                              	int3
  76ffae:	cc                                              	int3
  76ffaf:	cc                                              	int3
