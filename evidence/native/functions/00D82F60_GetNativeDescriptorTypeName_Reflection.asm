# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d82f60 (GetNativeDescriptorTypeName_Reflection)
Paired Ghidra pseudocode: 00D82F60_GetNativeDescriptorTypeName_Reflection.c
Window: [0x00d82f60, 0x00d82f70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d82f70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d82f60: b8 e4 d0 08 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d82f60 <.text+0x981f60>:
  d82f60:	b8 e4 d0 08 01                                  	mov    eax,0x108d0e4
  d82f65:	c3                                              	ret
  d82f66:	cc                                              	int3
  d82f67:	cc                                              	int3
  d82f68:	cc                                              	int3
  d82f69:	cc                                              	int3
  d82f6a:	cc                                              	int3
  d82f6b:	cc                                              	int3
  d82f6c:	cc                                              	int3
  d82f6d:	cc                                              	int3
  d82f6e:	cc                                              	int3
  d82f6f:	cc                                              	int3
