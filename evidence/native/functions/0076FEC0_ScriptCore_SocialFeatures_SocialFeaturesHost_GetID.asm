# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076fec0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetID)
Paired Ghidra pseudocode: 0076FEC0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetID.c
Window: [0x0076fec0, 0x0076fed0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076fed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076fec0: e9 5b 26 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076fec0 <.text+0x36eec0>:
  76fec0:	e9 5b 26 2b 00                                  	jmp    0xa22520
  76fec5:	cc                                              	int3
  76fec6:	cc                                              	int3
  76fec7:	cc                                              	int3
  76fec8:	cc                                              	int3
  76fec9:	cc                                              	int3
  76feca:	cc                                              	int3
  76fecb:	cc                                              	int3
  76fecc:	cc                                              	int3
  76fecd:	cc                                              	int3
  76fece:	cc                                              	int3
  76fecf:	cc                                              	int3
