# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105550a0 (Route_AddObjectToIgnoreForRouteEndTurn)
Paired Ghidra pseudocode: 105550A0_Route_AddObjectToIgnoreForRouteEndTurn.c
Window: [0x105550a0, 0x105550c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105550c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105550a0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
105550b0: 1c f3 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105550a0 <.text+0x5540a0>:
105550a0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105550a4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105550a8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105550ac:	50                                              	push   eax
105550ad:	51                                              	push   ecx
105550ae:	52                                              	push   edx
105550af:	e8 1c f3 ff ff                                  	call   0x105543d0
105550b4:	83 c4 0c                                        	add    esp,0xc
105550b7:	c3                                              	ret
105550b8:	cc                                              	int3
105550b9:	cc                                              	int3
105550ba:	cc                                              	int3
105550bb:	cc                                              	int3
105550bc:	cc                                              	int3
105550bd:	cc                                              	int3
105550be:	cc                                              	int3
105550bf:	cc                                              	int3
