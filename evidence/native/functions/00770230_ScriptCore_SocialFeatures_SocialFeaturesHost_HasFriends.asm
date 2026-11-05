# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770230 (ScriptCore.SocialFeatures::SocialFeaturesHost_HasFriends)
Paired Ghidra pseudocode: 00770230_ScriptCore_SocialFeatures_SocialFeaturesHost_HasFriends.c
Window: [0x00770230, 0x00770240) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770230: e9 3b 2b 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770230 <.text+0x36f230>:
  770230:	e9 3b 2b 2b 00                                  	jmp    0xa22d70
  770235:	cc                                              	int3
  770236:	cc                                              	int3
  770237:	cc                                              	int3
  770238:	cc                                              	int3
  770239:	cc                                              	int3
  77023a:	cc                                              	int3
  77023b:	cc                                              	int3
  77023c:	cc                                              	int3
  77023d:	cc                                              	int3
  77023e:	cc                                              	int3
  77023f:	cc                                              	int3
