# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ffc0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetShareToFB)
Paired Ghidra pseudocode: 0076FFC0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetShareToFB.c
Window: [0x0076ffc0, 0x0076ffd0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ffd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ffc0: e9 bb 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ffc0 <.text+0x36efc0>:
  76ffc0:	e9 bb 26 2b 00                                  	jmp    0xa22680
  76ffc5:	cc                                              	int3
  76ffc6:	cc                                              	int3
  76ffc7:	cc                                              	int3
  76ffc8:	cc                                              	int3
  76ffc9:	cc                                              	int3
  76ffca:	cc                                              	int3
  76ffcb:	cc                                              	int3
  76ffcc:	cc                                              	int3
  76ffcd:	cc                                              	int3
  76ffce:	cc                                              	int3
  76ffcf:	cc                                              	int3
