# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ff70 (ScriptCore.SocialFeatures::SocialFeaturesHost_ResetAllGiftingValues)
Paired Ghidra pseudocode: 0076FF70_ScriptCore_SocialFeatures_SocialFeaturesHost_ResetAllGiftingValues.c
Window: [0x0076ff70, 0x0076ff80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ff80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ff70: e9 8b 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ff70 <.text+0x36ef70>:
  76ff70:	e9 8b 26 2b 00                                  	jmp    0xa22600
  76ff75:	cc                                              	int3
  76ff76:	cc                                              	int3
  76ff77:	cc                                              	int3
  76ff78:	cc                                              	int3
  76ff79:	cc                                              	int3
  76ff7a:	cc                                              	int3
  76ff7b:	cc                                              	int3
  76ff7c:	cc                                              	int3
  76ff7d:	cc                                              	int3
  76ff7e:	cc                                              	int3
  76ff7f:	cc                                              	int3
