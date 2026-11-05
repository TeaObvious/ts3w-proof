# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770b00 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeStatCategory)
Paired Ghidra pseudocode: 00770B00_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeStatCategory.c
Window: [0x00770b00, 0x00770b10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770b00: e9 3b 3d 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770b00 <.text+0x36fb00>:
  770b00:	e9 3b 3d 2b 00                                  	jmp    0xa24840
  770b05:	cc                                              	int3
  770b06:	cc                                              	int3
  770b07:	cc                                              	int3
  770b08:	cc                                              	int3
  770b09:	cc                                              	int3
  770b0a:	cc                                              	int3
  770b0b:	cc                                              	int3
  770b0c:	cc                                              	int3
  770b0d:	cc                                              	int3
  770b0e:	cc                                              	int3
  770b0f:	cc                                              	int3
