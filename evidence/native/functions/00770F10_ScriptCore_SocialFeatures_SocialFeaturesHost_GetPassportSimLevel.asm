# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770f10 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportSimLevel)
Paired Ghidra pseudocode: 00770F10_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportSimLevel.c
Window: [0x00770f10, 0x00770f20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770f20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770f10: e9 2b 45 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770f10 <.text+0x36ff10>:
  770f10:	e9 2b 45 2b 00                                  	jmp    0xa25440
  770f15:	cc                                              	int3
  770f16:	cc                                              	int3
  770f17:	cc                                              	int3
  770f18:	cc                                              	int3
  770f19:	cc                                              	int3
  770f1a:	cc                                              	int3
  770f1b:	cc                                              	int3
  770f1c:	cc                                              	int3
  770f1d:	cc                                              	int3
  770f1e:	cc                                              	int3
  770f1f:	cc                                              	int3
