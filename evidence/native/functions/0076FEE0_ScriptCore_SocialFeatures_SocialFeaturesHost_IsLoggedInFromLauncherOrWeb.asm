# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076fee0 (ScriptCore.SocialFeatures::SocialFeaturesHost_IsLoggedInFromLauncherOrWeb)
Paired Ghidra pseudocode: 0076FEE0_ScriptCore_SocialFeatures_SocialFeaturesHost_IsLoggedInFromLauncherOrWeb.c
Window: [0x0076fee0, 0x0076fef0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076fef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076fee0: e9 7b 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076fee0 <.text+0x36eee0>:
  76fee0:	e9 7b 26 2b 00                                  	jmp    0xa22560
  76fee5:	cc                                              	int3
  76fee6:	cc                                              	int3
  76fee7:	cc                                              	int3
  76fee8:	cc                                              	int3
  76fee9:	cc                                              	int3
  76feea:	cc                                              	int3
  76feeb:	cc                                              	int3
  76feec:	cc                                              	int3
  76feed:	cc                                              	int3
  76feee:	cc                                              	int3
  76feef:	cc                                              	int3
