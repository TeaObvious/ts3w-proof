# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ffb0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPendingDevGiftType)
Paired Ghidra pseudocode: 0076FFB0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPendingDevGiftType.c
Window: [0x0076ffb0, 0x0076ffc0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ffc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ffb0: e9 ab 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ffb0 <.text+0x36efb0>:
  76ffb0:	e9 ab 26 2b 00                                  	jmp    0xa22660
  76ffb5:	cc                                              	int3
  76ffb6:	cc                                              	int3
  76ffb7:	cc                                              	int3
  76ffb8:	cc                                              	int3
  76ffb9:	cc                                              	int3
  76ffba:	cc                                              	int3
  76ffbb:	cc                                              	int3
  76ffbc:	cc                                              	int3
  76ffbd:	cc                                              	int3
  76ffbe:	cc                                              	int3
  76ffbf:	cc                                              	int3
