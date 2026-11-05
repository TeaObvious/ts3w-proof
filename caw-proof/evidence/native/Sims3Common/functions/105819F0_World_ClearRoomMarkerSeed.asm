# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105819f0 (World_ClearRoomMarkerSeed)
Paired Ghidra pseudocode: 105819F0_World_ClearRoomMarkerSeed.c
Window: [0x105819f0, 0x10581a10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105819f0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10581a00: 8c e0 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105819f0 <.text+0x5809f0>:
105819f0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105819f4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105819f8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105819fc:	50                                              	push   eax
105819fd:	51                                              	push   ecx
105819fe:	52                                              	push   edx
105819ff:	e8 8c e0 ff ff                                  	call   0x1057fa90
10581a04:	83 c4 0c                                        	add    esp,0xc
10581a07:	c3                                              	ret
10581a08:	cc                                              	int3
10581a09:	cc                                              	int3
10581a0a:	cc                                              	int3
10581a0b:	cc                                              	int3
10581a0c:	cc                                              	int3
10581a0d:	cc                                              	int3
10581a0e:	cc                                              	int3
10581a0f:	cc                                              	int3
