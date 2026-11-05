# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770e30 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportId)
Paired Ghidra pseudocode: 00770E30_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportId.c
Window: [0x00770e30, 0x00770e40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770e30: e9 cb 43 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770e30 <.text+0x36fe30>:
  770e30:	e9 cb 43 2b 00                                  	jmp    0xa25200
  770e35:	cc                                              	int3
  770e36:	cc                                              	int3
  770e37:	cc                                              	int3
  770e38:	cc                                              	int3
  770e39:	cc                                              	int3
  770e3a:	cc                                              	int3
  770e3b:	cc                                              	int3
  770e3c:	cc                                              	int3
  770e3d:	cc                                              	int3
  770e3e:	cc                                              	int3
  770e3f:	cc                                              	int3
