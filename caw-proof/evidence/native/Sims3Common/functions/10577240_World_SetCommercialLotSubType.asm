# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577240 (World_SetCommercialLotSubType)
Paired Ghidra pseudocode: 10577240_World_SetCommercialLotSubType.c
Window: [0x10577240, 0x10577280) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577280
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577240: 8b 0d c4 00 c7 10 85 c9 74 28 8b 44 24 08 8b 54
10577250: 24 04 6a 00 50 52 e8 b5 fd cb ff 85 c0 74 13 83
10577260: b8 08 04 00 00 01 75 0a 8b 4c 24 0c 89 88 0c 04
10577270: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577240 <.text+0x576240>:
10577240:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577246:	85 c9                                           	test   ecx,ecx
10577248:	74 28                                           	je     0x10577272
1057724a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057724e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10577252:	6a 00                                           	push   0x0
10577254:	50                                              	push   eax
10577255:	52                                              	push   edx
10577256:	e8 b5 fd cb ff                                  	call   0x10237010
1057725b:	85 c0                                           	test   eax,eax
1057725d:	74 13                                           	je     0x10577272
1057725f:	83 b8 08 04 00 00 01                            	cmp    DWORD PTR [eax+0x408],0x1
10577266:	75 0a                                           	jne    0x10577272
10577268:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057726c:	89 88 0c 04 00 00                               	mov    DWORD PTR [eax+0x40c],ecx
10577272:	c3                                              	ret
10577273:	cc                                              	int3
10577274:	cc                                              	int3
10577275:	cc                                              	int3
10577276:	cc                                              	int3
10577277:	cc                                              	int3
10577278:	cc                                              	int3
10577279:	cc                                              	int3
1057727a:	cc                                              	int3
1057727b:	cc                                              	int3
1057727c:	cc                                              	int3
1057727d:	cc                                              	int3
1057727e:	cc                                              	int3
1057727f:	cc                                              	int3
