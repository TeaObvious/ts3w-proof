# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740190 (GetNativeDescriptorTypeName_DebugDraw)
Paired Ghidra pseudocode: 00740190_GetNativeDescriptorTypeName_DebugDraw.c
Window: [0x00740190, 0x007401b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007401b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740190: b8 fc 17 00 01 c3 cc cc cc cc cc cc cc cc cc cc
007401a0: b8 3c 18 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00740190 <.text+0x33f190>:
  740190:	b8 fc 17 00 01                                  	mov    eax,0x10017fc
  740195:	c3                                              	ret
  740196:	cc                                              	int3
  740197:	cc                                              	int3
  740198:	cc                                              	int3
  740199:	cc                                              	int3
  74019a:	cc                                              	int3
  74019b:	cc                                              	int3
  74019c:	cc                                              	int3
  74019d:	cc                                              	int3
  74019e:	cc                                              	int3
  74019f:	cc                                              	int3
  7401a0:	b8 3c 18 00 01                                  	mov    eax,0x100183c
  7401a5:	c3                                              	ret
  7401a6:	cc                                              	int3
  7401a7:	cc                                              	int3
  7401a8:	cc                                              	int3
  7401a9:	cc                                              	int3
  7401aa:	cc                                              	int3
  7401ab:	cc                                              	int3
  7401ac:	cc                                              	int3
  7401ad:	cc                                              	int3
  7401ae:	cc                                              	int3
  7401af:	cc                                              	int3
