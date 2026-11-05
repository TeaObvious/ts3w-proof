# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989d60 (ResourceMgr_SetDatabaseMap)
Paired Ghidra pseudocode: 10989D60_ResourceMgr_SetDatabaseMap.c
Window: [0x10989d60, 0x10989d80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989d80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989d60: 83 3d 78 80 cb 10 00 74 03 33 c0 c3 8b 44 24 04
10989d70: a3 78 80 cb 10 b8 01 00 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10989d60 <.text+0x988d60>:
10989d60:	83 3d 78 80 cb 10 00                            	cmp    DWORD PTR ds:0x10cb8078,0x0
10989d67:	74 03                                           	je     0x10989d6c
10989d69:	33 c0                                           	xor    eax,eax
10989d6b:	c3                                              	ret
10989d6c:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10989d70:	a3 78 80 cb 10                                  	mov    ds:0x10cb8078,eax
10989d75:	b8 01 00 00 00                                  	mov    eax,0x1
10989d7a:	c3                                              	ret
10989d7b:	cc                                              	int3
10989d7c:	cc                                              	int3
10989d7d:	cc                                              	int3
10989d7e:	cc                                              	int3
10989d7f:	cc                                              	int3
