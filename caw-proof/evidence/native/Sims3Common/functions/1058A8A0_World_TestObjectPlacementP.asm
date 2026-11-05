# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058a8a0 (World_TestObjectPlacementP)
Paired Ghidra pseudocode: 1058A8A0_World_TestObjectPlacementP.c
Window: [0x1058a8a0, 0x1058a8d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058a8d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058a8a0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 6a 00 6a 00
1058a8b0: 6a 00 6a 00 6a 00 50 8b 44 24 1c 6a 00 51 52 50
1058a8c0: e8 db f5 ff ff 83 c4 28 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1058a8a0 <.text+0x5898a0>:
1058a8a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1058a8a4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1058a8a8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1058a8ac:	6a 00                                           	push   0x0
1058a8ae:	6a 00                                           	push   0x0
1058a8b0:	6a 00                                           	push   0x0
1058a8b2:	6a 00                                           	push   0x0
1058a8b4:	6a 00                                           	push   0x0
1058a8b6:	50                                              	push   eax
1058a8b7:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1058a8bb:	6a 00                                           	push   0x0
1058a8bd:	51                                              	push   ecx
1058a8be:	52                                              	push   edx
1058a8bf:	50                                              	push   eax
1058a8c0:	e8 db f5 ff ff                                  	call   0x10589ea0
1058a8c5:	83 c4 28                                        	add    esp,0x28
1058a8c8:	c3                                              	ret
1058a8c9:	cc                                              	int3
1058a8ca:	cc                                              	int3
1058a8cb:	cc                                              	int3
1058a8cc:	cc                                              	int3
1058a8cd:	cc                                              	int3
1058a8ce:	cc                                              	int3
1058a8cf:	cc                                              	int3
