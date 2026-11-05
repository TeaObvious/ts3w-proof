# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770dd0 (ScriptCore.SocialFeatures::SocialFeaturesHost_HandlePassportUploadError)
Paired Ghidra pseudocode: 00770DD0_ScriptCore_SocialFeatures_SocialFeaturesHost_HandlePassportUploadError.c
Window: [0x00770dd0, 0x00770de0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770de0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770dd0: e9 4b 43 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770dd0 <.text+0x36fdd0>:
  770dd0:	e9 4b 43 2b 00                                  	jmp    0xa25120
  770dd5:	cc                                              	int3
  770dd6:	cc                                              	int3
  770dd7:	cc                                              	int3
  770dd8:	cc                                              	int3
  770dd9:	cc                                              	int3
  770dda:	cc                                              	int3
  770ddb:	cc                                              	int3
  770ddc:	cc                                              	int3
  770ddd:	cc                                              	int3
  770dde:	cc                                              	int3
  770ddf:	cc                                              	int3
