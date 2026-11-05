# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ff10 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetCrossroadsTime)
Paired Ghidra pseudocode: 0076FF10_ScriptCore_SocialFeatures_SocialFeaturesHost_GetCrossroadsTime.c
Window: [0x0076ff10, 0x0076ff20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ff20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ff10: e9 5b 28 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ff10 <.text+0x36ef10>:
  76ff10:	e9 5b 28 2b 00                                  	jmp    0xa22770
  76ff15:	cc                                              	int3
  76ff16:	cc                                              	int3
  76ff17:	cc                                              	int3
  76ff18:	cc                                              	int3
  76ff19:	cc                                              	int3
  76ff1a:	cc                                              	int3
  76ff1b:	cc                                              	int3
  76ff1c:	cc                                              	int3
  76ff1d:	cc                                              	int3
  76ff1e:	cc                                              	int3
  76ff1f:	cc                                              	int3
