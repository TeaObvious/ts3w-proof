# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997460 (WorldTerrainWrap_GetRoadTextureFilePath)
Paired Ghidra pseudocode: 10997460_WorldTerrainWrap_GetRoadTextureFilePath.c
Window: [0x10997460, 0x10997480) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997460: a1 c4 00 c7 10 8b 54 24 08 8b 48 5c 8b 44 24 04
10997470: 52 50 e8 e9 c4 7a ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997460 <.text+0x996460>:
10997460:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10997465:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10997469:	8b 48 5c                                        	mov    ecx,DWORD PTR [eax+0x5c]
1099746c:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10997470:	52                                              	push   edx
10997471:	50                                              	push   eax
10997472:	e8 e9 c4 7a ff                                  	call   0x10143960
10997477:	c3                                              	ret
10997478:	cc                                              	int3
10997479:	cc                                              	int3
1099747a:	cc                                              	int3
1099747b:	cc                                              	int3
1099747c:	cc                                              	int3
1099747d:	cc                                              	int3
1099747e:	cc                                              	int3
1099747f:	cc                                              	int3
