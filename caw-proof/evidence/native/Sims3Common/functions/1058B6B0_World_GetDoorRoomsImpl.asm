# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058b6b0 (World_GetDoorRoomsImpl)
Paired Ghidra pseudocode: 1058B6B0_World_GetDoorRoomsImpl.c
Window: [0x1058b6b0, 0x1058b6e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058b6e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058b6b0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
1058b6c0: dc fa ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc
1058b6d0: 8b 44 24 04 c7 00 10 04 c3 10 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
1058b6b0 <.text+0x58a6b0>:
1058b6b0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1058b6b4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1058b6b8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1058b6bc:	50                                              	push   eax
1058b6bd:	51                                              	push   ecx
1058b6be:	52                                              	push   edx
1058b6bf:	e8 dc fa ff ff                                  	call   0x1058b1a0
1058b6c4:	83 c4 0c                                        	add    esp,0xc
1058b6c7:	c3                                              	ret
1058b6c8:	cc                                              	int3
1058b6c9:	cc                                              	int3
1058b6ca:	cc                                              	int3
1058b6cb:	cc                                              	int3
1058b6cc:	cc                                              	int3
1058b6cd:	cc                                              	int3
1058b6ce:	cc                                              	int3
1058b6cf:	cc                                              	int3
1058b6d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1058b6d4:	c7 00 10 04 c3 10                               	mov    DWORD PTR [eax],0x10c30410
1058b6da:	c2 04 00                                        	ret    0x4
1058b6dd:	cc                                              	int3
1058b6de:	cc                                              	int3
1058b6df:	cc                                              	int3
