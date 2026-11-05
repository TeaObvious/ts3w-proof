# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058b5b0 (World_TestObjectPlacementPE)
Paired Ghidra pseudocode: 1058B5B0_World_TestObjectPlacementPE.c
Window: [0x1058b5b0, 0x1058b5f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058b5f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058b5b0: 8b 44 24 1c 8b 4c 24 14 8b 54 24 10 50 50 8b 44
1058b5c0: 24 20 50 8b 44 24 18 51 8b 4c 24 18 6a 00 52 8b
1058b5d0: 54 24 1c 6a 00 50 51 52 e8 c3 e8 ff ff 83 c4 28
1058b5e0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1058b5b0 <.text+0x58a5b0>:
1058b5b0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1058b5b4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1058b5b8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1058b5bc:	50                                              	push   eax
1058b5bd:	50                                              	push   eax
1058b5be:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1058b5c2:	50                                              	push   eax
1058b5c3:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1058b5c7:	51                                              	push   ecx
1058b5c8:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1058b5cc:	6a 00                                           	push   0x0
1058b5ce:	52                                              	push   edx
1058b5cf:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1058b5d3:	6a 00                                           	push   0x0
1058b5d5:	50                                              	push   eax
1058b5d6:	51                                              	push   ecx
1058b5d7:	52                                              	push   edx
1058b5d8:	e8 c3 e8 ff ff                                  	call   0x10589ea0
1058b5dd:	83 c4 28                                        	add    esp,0x28
1058b5e0:	c3                                              	ret
1058b5e1:	cc                                              	int3
1058b5e2:	cc                                              	int3
1058b5e3:	cc                                              	int3
1058b5e4:	cc                                              	int3
1058b5e5:	cc                                              	int3
1058b5e6:	cc                                              	int3
1058b5e7:	cc                                              	int3
1058b5e8:	cc                                              	int3
1058b5e9:	cc                                              	int3
1058b5ea:	cc                                              	int3
1058b5eb:	cc                                              	int3
1058b5ec:	cc                                              	int3
1058b5ed:	cc                                              	int3
1058b5ee:	cc                                              	int3
1058b5ef:	cc                                              	int3
