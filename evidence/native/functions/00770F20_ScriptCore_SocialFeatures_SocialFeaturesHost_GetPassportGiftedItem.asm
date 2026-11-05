# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770f20 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportGiftedItem)
Paired Ghidra pseudocode: 00770F20_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportGiftedItem.c
Window: [0x00770f20, 0x00770f30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770f20: e9 3b 45 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770f20 <.text+0x36ff20>:
  770f20:	e9 3b 45 2b 00                                  	jmp    0xa25460
  770f25:	cc                                              	int3
  770f26:	cc                                              	int3
  770f27:	cc                                              	int3
  770f28:	cc                                              	int3
  770f29:	cc                                              	int3
  770f2a:	cc                                              	int3
  770f2b:	cc                                              	int3
  770f2c:	cc                                              	int3
  770f2d:	cc                                              	int3
  770f2e:	cc                                              	int3
  770f2f:	cc                                              	int3
