# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074a9a0 (GetNativeDescriptorTypeName_Random)
Paired Ghidra pseudocode: 0074A9A0_GetNativeDescriptorTypeName_Random.c
Window: [0x0074a9a0, 0x0074a9b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074a9b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074a9a0: b8 00 e3 fe 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074a9a0 <.text+0x3499a0>:
  74a9a0:	b8 00 e3 fe 00                                  	mov    eax,0xfee300
  74a9a5:	c3                                              	ret
  74a9a6:	cc                                              	int3
  74a9a7:	cc                                              	int3
  74a9a8:	cc                                              	int3
  74a9a9:	cc                                              	int3
  74a9aa:	cc                                              	int3
  74a9ab:	cc                                              	int3
  74a9ac:	cc                                              	int3
  74a9ad:	cc                                              	int3
  74a9ae:	cc                                              	int3
  74a9af:	cc                                              	int3
