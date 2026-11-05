# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770ed0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportGuid)
Paired Ghidra pseudocode: 00770ED0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportGuid.c
Window: [0x00770ed0, 0x00770ee0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770ee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770ed0: e9 eb 44 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770ed0 <.text+0x36fed0>:
  770ed0:	e9 eb 44 2b 00                                  	jmp    0xa253c0
  770ed5:	cc                                              	int3
  770ed6:	cc                                              	int3
  770ed7:	cc                                              	int3
  770ed8:	cc                                              	int3
  770ed9:	cc                                              	int3
  770eda:	cc                                              	int3
  770edb:	cc                                              	int3
  770edc:	cc                                              	int3
  770edd:	cc                                              	int3
  770ede:	cc                                              	int3
  770edf:	cc                                              	int3
