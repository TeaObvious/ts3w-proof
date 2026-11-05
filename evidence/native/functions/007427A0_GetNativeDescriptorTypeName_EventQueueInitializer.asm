# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007427a0 (GetNativeDescriptorTypeName_EventQueueInitializer)
Paired Ghidra pseudocode: 007427A0_GetNativeDescriptorTypeName_EventQueueInitializer.c
Window: [0x007427a0, 0x007427b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007427b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007427a0: b8 a4 22 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007427a0 <.text+0x3417a0>:
  7427a0:	b8 a4 22 00 01                                  	mov    eax,0x10022a4
  7427a5:	c3                                              	ret
  7427a6:	cc                                              	int3
  7427a7:	cc                                              	int3
  7427a8:	cc                                              	int3
  7427a9:	cc                                              	int3
  7427aa:	cc                                              	int3
  7427ab:	cc                                              	int3
  7427ac:	cc                                              	int3
  7427ad:	cc                                              	int3
  7427ae:	cc                                              	int3
  7427af:	cc                                              	int3
