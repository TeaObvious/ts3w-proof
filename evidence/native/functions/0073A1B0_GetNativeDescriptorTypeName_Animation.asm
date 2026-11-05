# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073a1b0 (GetNativeDescriptorTypeName_Animation)
Paired Ghidra pseudocode: 0073A1B0_GetNativeDescriptorTypeName_Animation.c
Window: [0x0073a1b0, 0x0073a1c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073a1c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073a1b0: b8 40 fd ff 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073a1b0 <.text+0x3391b0>:
  73a1b0:	b8 40 fd ff 00                                  	mov    eax,0xfffd40
  73a1b5:	c3                                              	ret
  73a1b6:	cc                                              	int3
  73a1b7:	cc                                              	int3
  73a1b8:	cc                                              	int3
  73a1b9:	cc                                              	int3
  73a1ba:	cc                                              	int3
  73a1bb:	cc                                              	int3
  73a1bc:	cc                                              	int3
  73a1bd:	cc                                              	int3
  73a1be:	cc                                              	int3
  73a1bf:	cc                                              	int3
