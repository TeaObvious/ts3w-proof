# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d7f0 (GetNativeDescriptorTypeName_CameraController)
Paired Ghidra pseudocode: 0073D7F0_GetNativeDescriptorTypeName_CameraController.c
Window: [0x0073d7f0, 0x0073d800) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d7f0: b8 9c 09 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073d7f0 <.text+0x33c7f0>:
  73d7f0:	b8 9c 09 00 01                                  	mov    eax,0x100099c
  73d7f5:	c3                                              	ret
  73d7f6:	cc                                              	int3
  73d7f7:	cc                                              	int3
  73d7f8:	cc                                              	int3
  73d7f9:	cc                                              	int3
  73d7fa:	cc                                              	int3
  73d7fb:	cc                                              	int3
  73d7fc:	cc                                              	int3
  73d7fd:	cc                                              	int3
  73d7fe:	cc                                              	int3
  73d7ff:	cc                                              	int3
