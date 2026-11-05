# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105821d0 (World_SetFloorCutoutStateForObjectImpl)
Paired Ghidra pseudocode: 105821D0_World_SetFloorCutoutStateForObjectImpl.c
Window: [0x105821d0, 0x105821f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105821f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105821d0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
105821e0: 9c e2 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105821d0 <.text+0x5811d0>:
105821d0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105821d4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105821d8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105821dc:	50                                              	push   eax
105821dd:	51                                              	push   ecx
105821de:	52                                              	push   edx
105821df:	e8 9c e2 ff ff                                  	call   0x10580480
105821e4:	83 c4 0c                                        	add    esp,0xc
105821e7:	c3                                              	ret
105821e8:	cc                                              	int3
105821e9:	cc                                              	int3
105821ea:	cc                                              	int3
105821eb:	cc                                              	int3
105821ec:	cc                                              	int3
105821ed:	cc                                              	int3
105821ee:	cc                                              	int3
105821ef:	cc                                              	int3
