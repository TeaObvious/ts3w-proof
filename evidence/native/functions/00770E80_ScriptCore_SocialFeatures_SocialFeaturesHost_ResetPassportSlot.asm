# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770e80 (ScriptCore.SocialFeatures::SocialFeaturesHost_ResetPassportSlot)
Paired Ghidra pseudocode: 00770E80_ScriptCore_SocialFeatures_SocialFeaturesHost_ResetPassportSlot.c
Window: [0x00770e80, 0x00770e90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770e80: e9 4b 44 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770e80 <.text+0x36fe80>:
  770e80:	e9 4b 44 2b 00                                  	jmp    0xa252d0
  770e85:	cc                                              	int3
  770e86:	cc                                              	int3
  770e87:	cc                                              	int3
  770e88:	cc                                              	int3
  770e89:	cc                                              	int3
  770e8a:	cc                                              	int3
  770e8b:	cc                                              	int3
  770e8c:	cc                                              	int3
  770e8d:	cc                                              	int3
  770e8e:	cc                                              	int3
  770e8f:	cc                                              	int3
