# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ff70 (SimBuilderWrap_GetObjectId)
Paired Ghidra pseudocode: 1098FF70_SimBuilderWrap_GetObjectId.c
Window: [0x1098ff70, 0x1098ff90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ff90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ff70: 8b 4c 24 04 8b 81 f8 01 00 00 8b 91 fc 01 00 00
1098ff80: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ff70 <.text+0x98ef70>:
1098ff70:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ff74:	8b 81 f8 01 00 00                               	mov    eax,DWORD PTR [ecx+0x1f8]
1098ff7a:	8b 91 fc 01 00 00                               	mov    edx,DWORD PTR [ecx+0x1fc]
1098ff80:	c3                                              	ret
1098ff81:	cc                                              	int3
1098ff82:	cc                                              	int3
1098ff83:	cc                                              	int3
1098ff84:	cc                                              	int3
1098ff85:	cc                                              	int3
1098ff86:	cc                                              	int3
1098ff87:	cc                                              	int3
1098ff88:	cc                                              	int3
1098ff89:	cc                                              	int3
1098ff8a:	cc                                              	int3
1098ff8b:	cc                                              	int3
1098ff8c:	cc                                              	int3
1098ff8d:	cc                                              	int3
1098ff8e:	cc                                              	int3
1098ff8f:	cc                                              	int3
