# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770700 (ScriptCore.SocialFeatures::SocialFeaturesHost_ClearOfflineTNSMessages)
Paired Ghidra pseudocode: 00770700_ScriptCore_SocialFeatures_SocialFeaturesHost_ClearOfflineTNSMessages.c
Window: [0x00770700, 0x00770710) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770700: e9 5b 32 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770700 <.text+0x36f700>:
  770700:	e9 5b 32 2b 00                                  	jmp    0xa23960
  770705:	cc                                              	int3
  770706:	cc                                              	int3
  770707:	cc                                              	int3
  770708:	cc                                              	int3
  770709:	cc                                              	int3
  77070a:	cc                                              	int3
  77070b:	cc                                              	int3
  77070c:	cc                                              	int3
  77070d:	cc                                              	int3
  77070e:	cc                                              	int3
  77070f:	cc                                              	int3
