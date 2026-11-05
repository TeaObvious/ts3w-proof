# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ff80 (ScriptCore.SocialFeatures::SocialFeaturesHost_ResetGiftTimeLimit)
Paired Ghidra pseudocode: 0076FF80_ScriptCore_SocialFeatures_SocialFeaturesHost_ResetGiftTimeLimit.c
Window: [0x0076ff80, 0x0076ff90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ff90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ff80: e9 5b 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ff80 <.text+0x36ef80>:
  76ff80:	e9 5b 26 2b 00                                  	jmp    0xa225e0
  76ff85:	cc                                              	int3
  76ff86:	cc                                              	int3
  76ff87:	cc                                              	int3
  76ff88:	cc                                              	int3
  76ff89:	cc                                              	int3
  76ff8a:	cc                                              	int3
  76ff8b:	cc                                              	int3
  76ff8c:	cc                                              	int3
  76ff8d:	cc                                              	int3
  76ff8e:	cc                                              	int3
  76ff8f:	cc                                              	int3
