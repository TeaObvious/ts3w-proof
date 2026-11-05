# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770e70 (ScriptCore.SocialFeatures::SocialFeaturesHost_CancelPassport)
Paired Ghidra pseudocode: 00770E70_ScriptCore_SocialFeatures_SocialFeaturesHost_CancelPassport.c
Window: [0x00770e70, 0x00770e80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770e80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770e70: e9 2b 44 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770e70 <.text+0x36fe70>:
  770e70:	e9 2b 44 2b 00                                  	jmp    0xa252a0
  770e75:	cc                                              	int3
  770e76:	cc                                              	int3
  770e77:	cc                                              	int3
  770e78:	cc                                              	int3
  770e79:	cc                                              	int3
  770e7a:	cc                                              	int3
  770e7b:	cc                                              	int3
  770e7c:	cc                                              	int3
  770e7d:	cc                                              	int3
  770e7e:	cc                                              	int3
  770e7f:	cc                                              	int3
