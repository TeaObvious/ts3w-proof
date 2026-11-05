# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786570 (GetNativeDescriptorTypeName_World)
Paired Ghidra pseudocode: 00786570_GetNativeDescriptorTypeName_World.c
Window: [0x00786570, 0x00786580) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786570: b8 ec 3d fc 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786570 <.text+0x385570>:
  786570:	b8 ec 3d fc 00                                  	mov    eax,0xfc3dec
  786575:	c3                                              	ret
  786576:	cc                                              	int3
  786577:	cc                                              	int3
  786578:	cc                                              	int3
  786579:	cc                                              	int3
  78657a:	cc                                              	int3
  78657b:	cc                                              	int3
  78657c:	cc                                              	int3
  78657d:	cc                                              	int3
  78657e:	cc                                              	int3
  78657f:	cc                                              	int3
