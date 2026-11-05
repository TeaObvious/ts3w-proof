# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770070 (ScriptCore.SocialFeatures::SocialFeaturesHost_FriendsGetSearchResultNucleusID)
Paired Ghidra pseudocode: 00770070_ScriptCore_SocialFeatures_SocialFeaturesHost_FriendsGetSearchResultNucleusID.c
Window: [0x00770070, 0x00770080) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770070: e9 eb 28 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770070 <.text+0x36f070>:
  770070:	e9 eb 28 2b 00                                  	jmp    0xa22960
  770075:	cc                                              	int3
  770076:	cc                                              	int3
  770077:	cc                                              	int3
  770078:	cc                                              	int3
  770079:	cc                                              	int3
  77007a:	cc                                              	int3
  77007b:	cc                                              	int3
  77007c:	cc                                              	int3
  77007d:	cc                                              	int3
  77007e:	cc                                              	int3
  77007f:	cc                                              	int3
