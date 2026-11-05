# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770b10 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeStatEarnedCount)
Paired Ghidra pseudocode: 00770B10_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeStatEarnedCount.c
Window: [0x00770b10, 0x00770b20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770b10: e9 6b 3d 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770b10 <.text+0x36fb10>:
  770b10:	e9 6b 3d 2b 00                                  	jmp    0xa24880
  770b15:	cc                                              	int3
  770b16:	cc                                              	int3
  770b17:	cc                                              	int3
  770b18:	cc                                              	int3
  770b19:	cc                                              	int3
  770b1a:	cc                                              	int3
  770b1b:	cc                                              	int3
  770b1c:	cc                                              	int3
  770b1d:	cc                                              	int3
  770b1e:	cc                                              	int3
  770b1f:	cc                                              	int3
