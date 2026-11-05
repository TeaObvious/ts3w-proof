# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ff60 (ScriptCore.SocialFeatures::SocialFeaturesHost_SetDevGiftToAccepted)
Paired Ghidra pseudocode: 0076FF60_ScriptCore_SocialFeatures_SocialFeaturesHost_SetDevGiftToAccepted.c
Window: [0x0076ff60, 0x0076ff70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ff70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ff60: e9 5b 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ff60 <.text+0x36ef60>:
  76ff60:	e9 5b 26 2b 00                                  	jmp    0xa225c0
  76ff65:	cc                                              	int3
  76ff66:	cc                                              	int3
  76ff67:	cc                                              	int3
  76ff68:	cc                                              	int3
  76ff69:	cc                                              	int3
  76ff6a:	cc                                              	int3
  76ff6b:	cc                                              	int3
  76ff6c:	cc                                              	int3
  76ff6d:	cc                                              	int3
  76ff6e:	cc                                              	int3
  76ff6f:	cc                                              	int3
