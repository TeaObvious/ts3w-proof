# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770720 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetOfflineTNSMessageId)
Paired Ghidra pseudocode: 00770720_ScriptCore_SocialFeatures_SocialFeaturesHost_GetOfflineTNSMessageId.c
Window: [0x00770720, 0x00770730) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770720: e9 9b 32 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770720 <.text+0x36f720>:
  770720:	e9 9b 32 2b 00                                  	jmp    0xa239c0
  770725:	cc                                              	int3
  770726:	cc                                              	int3
  770727:	cc                                              	int3
  770728:	cc                                              	int3
  770729:	cc                                              	int3
  77072a:	cc                                              	int3
  77072b:	cc                                              	int3
  77072c:	cc                                              	int3
  77072d:	cc                                              	int3
  77072e:	cc                                              	int3
  77072f:	cc                                              	int3
