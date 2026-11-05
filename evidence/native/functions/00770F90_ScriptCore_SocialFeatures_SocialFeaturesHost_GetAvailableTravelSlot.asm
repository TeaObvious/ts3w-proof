# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770f90 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetAvailableTravelSlot)
Paired Ghidra pseudocode: 00770F90_ScriptCore_SocialFeatures_SocialFeaturesHost_GetAvailableTravelSlot.c
Window: [0x00770f90, 0x00770fa0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770fa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770f90: e9 8b 45 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770f90 <.text+0x36ff90>:
  770f90:	e9 8b 45 2b 00                                  	jmp    0xa25520
  770f95:	cc                                              	int3
  770f96:	cc                                              	int3
  770f97:	cc                                              	int3
  770f98:	cc                                              	int3
  770f99:	cc                                              	int3
  770f9a:	cc                                              	int3
  770f9b:	cc                                              	int3
  770f9c:	cc                                              	int3
  770f9d:	cc                                              	int3
  770f9e:	cc                                              	int3
  770f9f:	cc                                              	int3
