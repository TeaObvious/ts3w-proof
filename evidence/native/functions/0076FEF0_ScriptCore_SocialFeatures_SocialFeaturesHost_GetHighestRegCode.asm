# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076fef0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetHighestRegCode)
Paired Ghidra pseudocode: 0076FEF0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetHighestRegCode.c
Window: [0x0076fef0, 0x0076ff00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ff00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076fef0: e9 fb 27 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076fef0 <.text+0x36eef0>:
  76fef0:	e9 fb 27 2b 00                                  	jmp    0xa226f0
  76fef5:	cc                                              	int3
  76fef6:	cc                                              	int3
  76fef7:	cc                                              	int3
  76fef8:	cc                                              	int3
  76fef9:	cc                                              	int3
  76fefa:	cc                                              	int3
  76fefb:	cc                                              	int3
  76fefc:	cc                                              	int3
  76fefd:	cc                                              	int3
  76fefe:	cc                                              	int3
  76feff:	cc                                              	int3
