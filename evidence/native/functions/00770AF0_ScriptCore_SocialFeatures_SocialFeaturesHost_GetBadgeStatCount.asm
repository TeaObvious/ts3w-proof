# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770af0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeStatCount)
Paired Ghidra pseudocode: 00770AF0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeStatCount.c
Window: [0x00770af0, 0x00770b00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770af0: e9 1b 3d 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770af0 <.text+0x36faf0>:
  770af0:	e9 1b 3d 2b 00                                  	jmp    0xa24810
  770af5:	cc                                              	int3
  770af6:	cc                                              	int3
  770af7:	cc                                              	int3
  770af8:	cc                                              	int3
  770af9:	cc                                              	int3
  770afa:	cc                                              	int3
  770afb:	cc                                              	int3
  770afc:	cc                                              	int3
  770afd:	cc                                              	int3
  770afe:	cc                                              	int3
  770aff:	cc                                              	int3
