# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770fd0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportMessageType)
Paired Ghidra pseudocode: 00770FD0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportMessageType.c
Window: [0x00770fd0, 0x00770fe0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770fe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770fd0: e9 fb 45 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770fd0 <.text+0x36ffd0>:
  770fd0:	e9 fb 45 2b 00                                  	jmp    0xa255d0
  770fd5:	cc                                              	int3
  770fd6:	cc                                              	int3
  770fd7:	cc                                              	int3
  770fd8:	cc                                              	int3
  770fd9:	cc                                              	int3
  770fda:	cc                                              	int3
  770fdb:	cc                                              	int3
  770fdc:	cc                                              	int3
  770fdd:	cc                                              	int3
  770fde:	cc                                              	int3
  770fdf:	cc                                              	int3
