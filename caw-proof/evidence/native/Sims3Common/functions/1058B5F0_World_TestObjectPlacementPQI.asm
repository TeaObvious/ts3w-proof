# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058b5f0 (World_TestObjectPlacementPQI)
Paired Ghidra pseudocode: 1058B5F0_World_TestObjectPlacementPQI.c
Window: [0x1058b5f0, 0x1058b620) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058b620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058b5f0: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 6a 00 6a 00
1058b600: 6a 00 6a 00 50 8b 44 24 20 51 8b 4c 24 20 52 8b
1058b610: 54 24 20 50 51 52 e8 85 e8 ff ff 83 c4 28 c3 cc

LINEAR DISASSEMBLY
1058b5f0 <.text+0x58a5f0>:
1058b5f0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1058b5f4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1058b5f8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1058b5fc:	6a 00                                           	push   0x0
1058b5fe:	6a 00                                           	push   0x0
1058b600:	6a 00                                           	push   0x0
1058b602:	6a 00                                           	push   0x0
1058b604:	50                                              	push   eax
1058b605:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1058b609:	51                                              	push   ecx
1058b60a:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1058b60e:	52                                              	push   edx
1058b60f:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1058b613:	50                                              	push   eax
1058b614:	51                                              	push   ecx
1058b615:	52                                              	push   edx
1058b616:	e8 85 e8 ff ff                                  	call   0x10589ea0
1058b61b:	83 c4 28                                        	add    esp,0x28
1058b61e:	c3                                              	ret
1058b61f:	cc                                              	int3
