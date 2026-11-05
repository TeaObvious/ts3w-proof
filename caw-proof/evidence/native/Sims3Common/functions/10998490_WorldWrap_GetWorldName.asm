# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998490 (WorldWrap_GetWorldName)
Paired Ghidra pseudocode: 10998490_WorldWrap_GetWorldName.c
Window: [0x10998490, 0x109984b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109984b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998490: 8b 44 24 04 85 c0 74 0b 8d 88 70 02 00 00 e9 3d
109984a0: 3e a0 ff 83 c8 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998490 <.text+0x997490>:
10998490:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998494:	85 c0                                           	test   eax,eax
10998496:	74 0b                                           	je     0x109984a3
10998498:	8d 88 70 02 00 00                               	lea    ecx,[eax+0x270]
1099849e:	e9 3d 3e a0 ff                                  	jmp    0x1039c2e0
109984a3:	83 c8 ff                                        	or     eax,0xffffffff
109984a6:	c3                                              	ret
109984a7:	cc                                              	int3
109984a8:	cc                                              	int3
109984a9:	cc                                              	int3
109984aa:	cc                                              	int3
109984ab:	cc                                              	int3
109984ac:	cc                                              	int3
109984ad:	cc                                              	int3
109984ae:	cc                                              	int3
109984af:	cc                                              	int3
