# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581a10 (World_StairsGetFloorCoverExtents)
Paired Ghidra pseudocode: 10581A10_World_StairsGetFloorCoverExtents.c
Window: [0x10581a10, 0x10581a30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581a10: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10581a20: 08 51 52 50 e8 d7 e0 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10581a10 <.text+0x580a10>:
10581a10:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10581a14:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10581a18:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10581a1c:	50                                              	push   eax
10581a1d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581a21:	51                                              	push   ecx
10581a22:	52                                              	push   edx
10581a23:	50                                              	push   eax
10581a24:	e8 d7 e0 ff ff                                  	call   0x1057fb00
10581a29:	83 c4 10                                        	add    esp,0x10
10581a2c:	c3                                              	ret
10581a2d:	cc                                              	int3
10581a2e:	cc                                              	int3
10581a2f:	cc                                              	int3
