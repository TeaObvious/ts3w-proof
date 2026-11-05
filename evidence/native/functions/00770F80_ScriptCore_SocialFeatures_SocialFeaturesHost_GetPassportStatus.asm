# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770f80 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportStatus)
Paired Ghidra pseudocode: 00770F80_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportStatus.c
Window: [0x00770f80, 0x00770f90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770f90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770f80: e9 7b 45 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770f80 <.text+0x36ff80>:
  770f80:	e9 7b 45 2b 00                                  	jmp    0xa25500
  770f85:	cc                                              	int3
  770f86:	cc                                              	int3
  770f87:	cc                                              	int3
  770f88:	cc                                              	int3
  770f89:	cc                                              	int3
  770f8a:	cc                                              	int3
  770f8b:	cc                                              	int3
  770f8c:	cc                                              	int3
  770f8d:	cc                                              	int3
  770f8e:	cc                                              	int3
  770f8f:	cc                                              	int3
