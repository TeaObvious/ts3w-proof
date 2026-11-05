# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058a8d0 (World_TestObjectPlacementPQ)
Paired Ghidra pseudocode: 1058A8D0_World_TestObjectPlacementPQ.c
Window: [0x1058a8d0, 0x1058a900) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058a900
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058a8d0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 6a 00 6a 00
1058a8e0: 6a 00 6a 00 50 8b 44 24 1c 51 8b 4c 24 1c 6a 00
1058a8f0: 52 50 51 e8 a8 f5 ff ff 83 c4 28 c3 cc cc cc cc

LINEAR DISASSEMBLY
1058a8d0 <.text+0x5898d0>:
1058a8d0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1058a8d4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1058a8d8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1058a8dc:	6a 00                                           	push   0x0
1058a8de:	6a 00                                           	push   0x0
1058a8e0:	6a 00                                           	push   0x0
1058a8e2:	6a 00                                           	push   0x0
1058a8e4:	50                                              	push   eax
1058a8e5:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1058a8e9:	51                                              	push   ecx
1058a8ea:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1058a8ee:	6a 00                                           	push   0x0
1058a8f0:	52                                              	push   edx
1058a8f1:	50                                              	push   eax
1058a8f2:	51                                              	push   ecx
1058a8f3:	e8 a8 f5 ff ff                                  	call   0x10589ea0
1058a8f8:	83 c4 28                                        	add    esp,0x28
1058a8fb:	c3                                              	ret
1058a8fc:	cc                                              	int3
1058a8fd:	cc                                              	int3
1058a8fe:	cc                                              	int3
1058a8ff:	cc                                              	int3
