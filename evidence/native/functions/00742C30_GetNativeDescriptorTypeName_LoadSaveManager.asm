# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00742c30 (GetNativeDescriptorTypeName_LoadSaveManager)
Paired Ghidra pseudocode: 00742C30_GetNativeDescriptorTypeName_LoadSaveManager.c
Window: [0x00742c30, 0x00742c40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00742c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00742c30: b8 f8 23 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00742c30 <.text+0x341c30>:
  742c30:	b8 f8 23 00 01                                  	mov    eax,0x10023f8
  742c35:	c3                                              	ret
  742c36:	cc                                              	int3
  742c37:	cc                                              	int3
  742c38:	cc                                              	int3
  742c39:	cc                                              	int3
  742c3a:	cc                                              	int3
  742c3b:	cc                                              	int3
  742c3c:	cc                                              	int3
  742c3d:	cc                                              	int3
  742c3e:	cc                                              	int3
  742c3f:	cc                                              	int3
