# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076e3e0 (GetNativeDescriptorTypeName_Slots)
Paired Ghidra pseudocode: 0076E3E0_GetNativeDescriptorTypeName_Slots.c
Window: [0x0076e3e0, 0x0076e3f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076e3f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076e3e0: b8 f4 98 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076e3e0 <.text+0x36d3e0>:
  76e3e0:	b8 f4 98 00 01                                  	mov    eax,0x10098f4
  76e3e5:	c3                                              	ret
  76e3e6:	cc                                              	int3
  76e3e7:	cc                                              	int3
  76e3e8:	cc                                              	int3
  76e3e9:	cc                                              	int3
  76e3ea:	cc                                              	int3
  76e3eb:	cc                                              	int3
  76e3ec:	cc                                              	int3
  76e3ed:	cc                                              	int3
  76e3ee:	cc                                              	int3
  76e3ef:	cc                                              	int3
