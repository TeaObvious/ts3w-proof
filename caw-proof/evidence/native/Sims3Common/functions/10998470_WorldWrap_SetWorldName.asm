# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998470 (WorldWrap_SetWorldName)
Paired Ghidra pseudocode: 10998470_WorldWrap_SetWorldName.c
Window: [0x10998470, 0x10998490) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998470: 8b 44 24 04 85 c0 74 0a 8b 4c 24 08 89 88 d0 02
10998480: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998470 <.text+0x997470>:
10998470:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998474:	85 c0                                           	test   eax,eax
10998476:	74 0a                                           	je     0x10998482
10998478:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1099847c:	89 88 d0 02 00 00                               	mov    DWORD PTR [eax+0x2d0],ecx
10998482:	c3                                              	ret
10998483:	cc                                              	int3
10998484:	cc                                              	int3
10998485:	cc                                              	int3
10998486:	cc                                              	int3
10998487:	cc                                              	int3
10998488:	cc                                              	int3
10998489:	cc                                              	int3
1099848a:	cc                                              	int3
1099848b:	cc                                              	int3
1099848c:	cc                                              	int3
1099848d:	cc                                              	int3
1099848e:	cc                                              	int3
1099848f:	cc                                              	int3
