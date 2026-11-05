# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770a50 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadges)
Paired Ghidra pseudocode: 00770A50_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadges.c
Window: [0x00770a50, 0x00770a60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770a50: e9 bb 3e 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770a50 <.text+0x36fa50>:
  770a50:	e9 bb 3e 2b 00                                  	jmp    0xa24910
  770a55:	cc                                              	int3
  770a56:	cc                                              	int3
  770a57:	cc                                              	int3
  770a58:	cc                                              	int3
  770a59:	cc                                              	int3
  770a5a:	cc                                              	int3
  770a5b:	cc                                              	int3
  770a5c:	cc                                              	int3
  770a5d:	cc                                              	int3
  770a5e:	cc                                              	int3
  770a5f:	cc                                              	int3
