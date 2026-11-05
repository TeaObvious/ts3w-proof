# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b4a0 (GetNativeDescriptorTypeName_RouteManager)
Paired Ghidra pseudocode: 0074B4A0_GetNativeDescriptorTypeName_RouteManager.c
Window: [0x0074b4a0, 0x0074b4b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074b4b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b4a0: b8 24 52 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074b4a0 <.text+0x34a4a0>:
  74b4a0:	b8 24 52 00 01                                  	mov    eax,0x1005224
  74b4a5:	c3                                              	ret
  74b4a6:	cc                                              	int3
  74b4a7:	cc                                              	int3
  74b4a8:	cc                                              	int3
  74b4a9:	cc                                              	int3
  74b4aa:	cc                                              	int3
  74b4ab:	cc                                              	int3
  74b4ac:	cc                                              	int3
  74b4ad:	cc                                              	int3
  74b4ae:	cc                                              	int3
  74b4af:	cc                                              	int3
