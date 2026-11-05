# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00766f00 (GetSACSDescriptorTypeName)
Paired Ghidra pseudocode: 00766F00_GetSACSDescriptorTypeName.c
Window: [0x00766f00, 0x00766f10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00766f10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00766f00: b8 a0 7d 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00766f00 <.text+0x365f00>:
  766f00:	b8 a0 7d 00 01                                  	mov    eax,0x1007da0
  766f05:	c3                                              	ret
  766f06:	cc                                              	int3
  766f07:	cc                                              	int3
  766f08:	cc                                              	int3
  766f09:	cc                                              	int3
  766f0a:	cc                                              	int3
  766f0b:	cc                                              	int3
  766f0c:	cc                                              	int3
  766f0d:	cc                                              	int3
  766f0e:	cc                                              	int3
  766f0f:	cc                                              	int3
