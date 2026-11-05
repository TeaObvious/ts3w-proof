# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105819d0 (World_SetRoomMarkerSeed)
Paired Ghidra pseudocode: 105819D0_World_SetRoomMarkerSeed.c
Window: [0x105819d0, 0x105819f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105819f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105819d0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
105819e0: ec df ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105819d0 <.text+0x5809d0>:
105819d0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105819d4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105819d8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105819dc:	50                                              	push   eax
105819dd:	51                                              	push   ecx
105819de:	52                                              	push   edx
105819df:	e8 ec df ff ff                                  	call   0x1057f9d0
105819e4:	83 c4 0c                                        	add    esp,0xc
105819e7:	c3                                              	ret
105819e8:	cc                                              	int3
105819e9:	cc                                              	int3
105819ea:	cc                                              	int3
105819eb:	cc                                              	int3
105819ec:	cc                                              	int3
105819ed:	cc                                              	int3
105819ee:	cc                                              	int3
105819ef:	cc                                              	int3
