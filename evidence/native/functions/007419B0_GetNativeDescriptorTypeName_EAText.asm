# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007419b0 (GetNativeDescriptorTypeName_EAText)
Paired Ghidra pseudocode: 007419B0_GetNativeDescriptorTypeName_EAText.c
Window: [0x007419b0, 0x007419c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007419c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007419b0: b8 04 1f 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007419b0 <.text+0x3409b0>:
  7419b0:	b8 04 1f 00 01                                  	mov    eax,0x1001f04
  7419b5:	c3                                              	ret
  7419b6:	cc                                              	int3
  7419b7:	cc                                              	int3
  7419b8:	cc                                              	int3
  7419b9:	cc                                              	int3
  7419ba:	cc                                              	int3
  7419bb:	cc                                              	int3
  7419bc:	cc                                              	int3
  7419bd:	cc                                              	int3
  7419be:	cc                                              	int3
  7419bf:	cc                                              	int3
