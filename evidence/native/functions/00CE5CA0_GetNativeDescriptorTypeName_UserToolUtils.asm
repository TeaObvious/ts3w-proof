# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce5ca0 (GetNativeDescriptorTypeName_UserToolUtils)
Paired Ghidra pseudocode: 00CE5CA0_GetNativeDescriptorTypeName_UserToolUtils.c
Window: [0x00ce5ca0, 0x00ce5cb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce5cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce5ca0: b8 40 15 08 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce5ca0 <.text+0x8e4ca0>:
  ce5ca0:	b8 40 15 08 01                                  	mov    eax,0x1081540
  ce5ca5:	c3                                              	ret
  ce5ca6:	cc                                              	int3
  ce5ca7:	cc                                              	int3
  ce5ca8:	cc                                              	int3
  ce5ca9:	cc                                              	int3
  ce5caa:	cc                                              	int3
  ce5cab:	cc                                              	int3
  ce5cac:	cc                                              	int3
  ce5cad:	cc                                              	int3
  ce5cae:	cc                                              	int3
  ce5caf:	cc                                              	int3
