# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ff90 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumGiftsSentInTimeLimit)
Paired Ghidra pseudocode: 0076FF90_ScriptCore_SocialFeatures_SocialFeaturesHost_GetNumGiftsSentInTimeLimit.c
Window: [0x0076ff90, 0x0076ffa0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ffa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ff90: e9 8b 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ff90 <.text+0x36ef90>:
  76ff90:	e9 8b 26 2b 00                                  	jmp    0xa22620
  76ff95:	cc                                              	int3
  76ff96:	cc                                              	int3
  76ff97:	cc                                              	int3
  76ff98:	cc                                              	int3
  76ff99:	cc                                              	int3
  76ff9a:	cc                                              	int3
  76ff9b:	cc                                              	int3
  76ff9c:	cc                                              	int3
  76ff9d:	cc                                              	int3
  76ff9e:	cc                                              	int3
  76ff9f:	cc                                              	int3
