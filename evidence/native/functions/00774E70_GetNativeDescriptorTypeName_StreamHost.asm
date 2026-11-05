# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774e70 (GetNativeDescriptorTypeName_StreamHost)
Paired Ghidra pseudocode: 00774E70_GetNativeDescriptorTypeName_StreamHost.c
Window: [0x00774e70, 0x00774e80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774e80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774e70: b8 80 d7 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774e70 <.text+0x373e70>:
  774e70:	b8 80 d7 00 01                                  	mov    eax,0x100d780
  774e75:	c3                                              	ret
  774e76:	cc                                              	int3
  774e77:	cc                                              	int3
  774e78:	cc                                              	int3
  774e79:	cc                                              	int3
  774e7a:	cc                                              	int3
  774e7b:	cc                                              	int3
  774e7c:	cc                                              	int3
  774e7d:	cc                                              	int3
  774e7e:	cc                                              	int3
  774e7f:	cc                                              	int3
