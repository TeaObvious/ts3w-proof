# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d83c90 (GetNativeDescriptorTypeName_TaskControl)
Paired Ghidra pseudocode: 00D83C90_GetNativeDescriptorTypeName_TaskControl.c
Window: [0x00d83c90, 0x00d83ca0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d83ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d83c90: b8 f0 d5 08 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d83c90 <.text+0x982c90>:
  d83c90:	b8 f0 d5 08 01                                  	mov    eax,0x108d5f0
  d83c95:	c3                                              	ret
  d83c96:	cc                                              	int3
  d83c97:	cc                                              	int3
  d83c98:	cc                                              	int3
  d83c99:	cc                                              	int3
  d83c9a:	cc                                              	int3
  d83c9b:	cc                                              	int3
  d83c9c:	cc                                              	int3
  d83c9d:	cc                                              	int3
  d83c9e:	cc                                              	int3
  d83c9f:	cc                                              	int3
