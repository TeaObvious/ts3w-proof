# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749790 (GetNativeDescriptorTypeName_ProfilerUtils)
Paired Ghidra pseudocode: 00749790_GetNativeDescriptorTypeName_ProfilerUtils.c
Window: [0x00749790, 0x007497a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007497a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749790: b8 04 4d 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00749790 <.text+0x348790>:
  749790:	b8 04 4d 00 01                                  	mov    eax,0x1004d04
  749795:	c3                                              	ret
  749796:	cc                                              	int3
  749797:	cc                                              	int3
  749798:	cc                                              	int3
  749799:	cc                                              	int3
  74979a:	cc                                              	int3
  74979b:	cc                                              	int3
  74979c:	cc                                              	int3
  74979d:	cc                                              	int3
  74979e:	cc                                              	int3
  74979f:	cc                                              	int3
