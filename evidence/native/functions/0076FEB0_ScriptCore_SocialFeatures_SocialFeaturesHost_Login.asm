# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076feb0 (ScriptCore.SocialFeatures::SocialFeaturesHost_Login)
Paired Ghidra pseudocode: 0076FEB0_ScriptCore_SocialFeatures_SocialFeaturesHost_Login.c
Window: [0x0076feb0, 0x0076fec0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076fec0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076feb0: e9 2b 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076feb0 <.text+0x36eeb0>:
  76feb0:	e9 2b 26 2b 00                                  	jmp    0xa224e0
  76feb5:	cc                                              	int3
  76feb6:	cc                                              	int3
  76feb7:	cc                                              	int3
  76feb8:	cc                                              	int3
  76feb9:	cc                                              	int3
  76feba:	cc                                              	int3
  76febb:	cc                                              	int3
  76febc:	cc                                              	int3
  76febd:	cc                                              	int3
  76febe:	cc                                              	int3
  76febf:	cc                                              	int3
