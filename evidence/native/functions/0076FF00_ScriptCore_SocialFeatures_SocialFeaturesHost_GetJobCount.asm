# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ff00 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetJobCount)
Paired Ghidra pseudocode: 0076FF00_ScriptCore_SocialFeatures_SocialFeaturesHost_GetJobCount.c
Window: [0x0076ff00, 0x0076ff10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ff10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ff00: e9 7b 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ff00 <.text+0x36ef00>:
  76ff00:	e9 7b 26 2b 00                                  	jmp    0xa22580
  76ff05:	cc                                              	int3
  76ff06:	cc                                              	int3
  76ff07:	cc                                              	int3
  76ff08:	cc                                              	int3
  76ff09:	cc                                              	int3
  76ff0a:	cc                                              	int3
  76ff0b:	cc                                              	int3
  76ff0c:	cc                                              	int3
  76ff0d:	cc                                              	int3
  76ff0e:	cc                                              	int3
  76ff0f:	cc                                              	int3
