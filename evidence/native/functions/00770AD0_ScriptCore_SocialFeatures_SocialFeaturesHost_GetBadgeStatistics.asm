# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770ad0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeStatistics)
Paired Ghidra pseudocode: 00770AD0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeStatistics.c
Window: [0x00770ad0, 0x00770ae0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770ad0: e9 db 3c 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770ad0 <.text+0x36fad0>:
  770ad0:	e9 db 3c 2b 00                                  	jmp    0xa247b0
  770ad5:	cc                                              	int3
  770ad6:	cc                                              	int3
  770ad7:	cc                                              	int3
  770ad8:	cc                                              	int3
  770ad9:	cc                                              	int3
  770ada:	cc                                              	int3
  770adb:	cc                                              	int3
  770adc:	cc                                              	int3
  770add:	cc                                              	int3
  770ade:	cc                                              	int3
  770adf:	cc                                              	int3
