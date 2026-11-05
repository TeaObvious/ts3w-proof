# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770f70 (ScriptCore.SocialFeatures::SocialFeaturesHost_CompletePassportHosting)
Paired Ghidra pseudocode: 00770F70_ScriptCore_SocialFeatures_SocialFeaturesHost_CompletePassportHosting.c
Window: [0x00770f70, 0x00770f80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770f80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770f70: e9 6b 45 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770f70 <.text+0x36ff70>:
  770f70:	e9 6b 45 2b 00                                  	jmp    0xa254e0
  770f75:	cc                                              	int3
  770f76:	cc                                              	int3
  770f77:	cc                                              	int3
  770f78:	cc                                              	int3
  770f79:	cc                                              	int3
  770f7a:	cc                                              	int3
  770f7b:	cc                                              	int3
  770f7c:	cc                                              	int3
  770f7d:	cc                                              	int3
  770f7e:	cc                                              	int3
  770f7f:	cc                                              	int3
