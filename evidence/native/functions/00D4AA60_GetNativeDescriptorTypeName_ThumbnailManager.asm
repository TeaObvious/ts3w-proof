# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d4aa60 (GetNativeDescriptorTypeName_ThumbnailManager)
Paired Ghidra pseudocode: 00D4AA60_GetNativeDescriptorTypeName_ThumbnailManager.c
Window: [0x00d4aa60, 0x00d4aa70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d4aa70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d4aa60: b8 ec e1 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d4aa60 <.text+0x949a60>:
  d4aa60:	b8 ec e1 00 01                                  	mov    eax,0x100e1ec
  d4aa65:	c3                                              	ret
  d4aa66:	cc                                              	int3
  d4aa67:	cc                                              	int3
  d4aa68:	cc                                              	int3
  d4aa69:	cc                                              	int3
  d4aa6a:	cc                                              	int3
  d4aa6b:	cc                                              	int3
  d4aa6c:	cc                                              	int3
  d4aa6d:	cc                                              	int3
  d4aa6e:	cc                                              	int3
  d4aa6f:	cc                                              	int3
