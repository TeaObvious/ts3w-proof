# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770ef0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportSimOwner)
Paired Ghidra pseudocode: 00770EF0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportSimOwner.c
Window: [0x00770ef0, 0x00770f00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770f00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770ef0: e9 0b 45 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770ef0 <.text+0x36fef0>:
  770ef0:	e9 0b 45 2b 00                                  	jmp    0xa25400
  770ef5:	cc                                              	int3
  770ef6:	cc                                              	int3
  770ef7:	cc                                              	int3
  770ef8:	cc                                              	int3
  770ef9:	cc                                              	int3
  770efa:	cc                                              	int3
  770efb:	cc                                              	int3
  770efc:	cc                                              	int3
  770efd:	cc                                              	int3
  770efe:	cc                                              	int3
  770eff:	cc                                              	int3
