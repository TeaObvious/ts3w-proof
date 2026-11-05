# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007847b0 (GetNativeDescriptorTypeName_WeatherControl)
Paired Ghidra pseudocode: 007847B0_GetNativeDescriptorTypeName_WeatherControl.c
Window: [0x007847b0, 0x007847c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007847c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007847b0: b8 48 17 01 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007847b0 <.text+0x3837b0>:
  7847b0:	b8 48 17 01 01                                  	mov    eax,0x1011748
  7847b5:	c3                                              	ret
  7847b6:	cc                                              	int3
  7847b7:	cc                                              	int3
  7847b8:	cc                                              	int3
  7847b9:	cc                                              	int3
  7847ba:	cc                                              	int3
  7847bb:	cc                                              	int3
  7847bc:	cc                                              	int3
  7847bd:	cc                                              	int3
  7847be:	cc                                              	int3
  7847bf:	cc                                              	int3
