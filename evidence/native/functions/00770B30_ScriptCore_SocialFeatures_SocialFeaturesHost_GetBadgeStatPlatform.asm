# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770b30 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeStatPlatform)
Paired Ghidra pseudocode: 00770B30_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeStatPlatform.c
Window: [0x00770b30, 0x00770b40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770b30: e9 ab 3d 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770b30 <.text+0x36fb30>:
  770b30:	e9 ab 3d 2b 00                                  	jmp    0xa248e0
  770b35:	cc                                              	int3
  770b36:	cc                                              	int3
  770b37:	cc                                              	int3
  770b38:	cc                                              	int3
  770b39:	cc                                              	int3
  770b3a:	cc                                              	int3
  770b3b:	cc                                              	int3
  770b3c:	cc                                              	int3
  770b3d:	cc                                              	int3
  770b3e:	cc                                              	int3
  770b3f:	cc                                              	int3
