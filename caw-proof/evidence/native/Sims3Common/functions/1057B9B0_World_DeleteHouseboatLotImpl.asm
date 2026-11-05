# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b9b0 (World_DeleteHouseboatLotImpl)
Paired Ghidra pseudocode: 1057B9B0_World_DeleteHouseboatLotImpl.c
Window: [0x1057b9b0, 0x1057b9d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b9d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b9b0: 8b 44 24 08 8b 4c 24 04 50 51 e8 81 e2 ff ff 83
1057b9c0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b9b0 <.text+0x57a9b0>:
1057b9b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b9b4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1057b9b8:	50                                              	push   eax
1057b9b9:	51                                              	push   ecx
1057b9ba:	e8 81 e2 ff ff                                  	call   0x10579c40
1057b9bf:	83 c4 08                                        	add    esp,0x8
1057b9c2:	c3                                              	ret
1057b9c3:	cc                                              	int3
1057b9c4:	cc                                              	int3
1057b9c5:	cc                                              	int3
1057b9c6:	cc                                              	int3
1057b9c7:	cc                                              	int3
1057b9c8:	cc                                              	int3
1057b9c9:	cc                                              	int3
1057b9ca:	cc                                              	int3
1057b9cb:	cc                                              	int3
1057b9cc:	cc                                              	int3
1057b9cd:	cc                                              	int3
1057b9ce:	cc                                              	int3
1057b9cf:	cc                                              	int3
