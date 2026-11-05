# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749820 (GetNativeDescriptorTypeName_Queries)
Paired Ghidra pseudocode: 00749820_GetNativeDescriptorTypeName_Queries.c
Window: [0x00749820, 0x00749830) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749820: b8 d0 4d 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00749820 <.text+0x348820>:
  749820:	b8 d0 4d 00 01                                  	mov    eax,0x1004dd0
  749825:	c3                                              	ret
  749826:	cc                                              	int3
  749827:	cc                                              	int3
  749828:	cc                                              	int3
  749829:	cc                                              	int3
  74982a:	cc                                              	int3
  74982b:	cc                                              	int3
  74982c:	cc                                              	int3
  74982d:	cc                                              	int3
  74982e:	cc                                              	int3
  74982f:	cc                                              	int3
