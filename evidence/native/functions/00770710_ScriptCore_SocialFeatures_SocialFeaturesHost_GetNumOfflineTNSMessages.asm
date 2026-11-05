# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770710 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumOfflineTNSMessages)
Paired Ghidra pseudocode: 00770710_ScriptCore_SocialFeatures_SocialFeaturesHost_GetNumOfflineTNSMessages.c
Window: [0x00770710, 0x00770720) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770710: e9 7b 32 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770710 <.text+0x36f710>:
  770710:	e9 7b 32 2b 00                                  	jmp    0xa23990
  770715:	cc                                              	int3
  770716:	cc                                              	int3
  770717:	cc                                              	int3
  770718:	cc                                              	int3
  770719:	cc                                              	int3
  77071a:	cc                                              	int3
  77071b:	cc                                              	int3
  77071c:	cc                                              	int3
  77071d:	cc                                              	int3
  77071e:	cc                                              	int3
  77071f:	cc                                              	int3
