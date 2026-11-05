# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1450 (CASUtils_SimBuilderSaveOutfitImpl)
Paired Ghidra pseudocode: 103A1450_CASUtils_SimBuilderSaveOutfitImpl.c
Window: [0x103a1450, 0x103a14a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a14a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1450: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 83 ec 10 50
103a1460: 8b 44 24 20 51 8b 4c 24 20 52 50 51 8d 54 24 14
103a1470: 52 e8 aa e4 ff ff 8b 4c 24 2c 8b 10 89 11 8b 50
103a1480: 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41 0c
103a1490: 8b c1 83 c4 28 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1450 <.text+0x3a0450>:
103a1450:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
103a1454:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
103a1458:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
103a145c:	83 ec 10                                        	sub    esp,0x10
103a145f:	50                                              	push   eax
103a1460:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
103a1464:	51                                              	push   ecx
103a1465:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a1469:	52                                              	push   edx
103a146a:	50                                              	push   eax
103a146b:	51                                              	push   ecx
103a146c:	8d 54 24 14                                     	lea    edx,[esp+0x14]
103a1470:	52                                              	push   edx
103a1471:	e8 aa e4 ff ff                                  	call   0x1039f920
103a1476:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
103a147a:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a147c:	89 11                                           	mov    DWORD PTR [ecx],edx
103a147e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1481:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a1484:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a1487:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
103a148a:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a148d:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
103a1490:	8b c1                                           	mov    eax,ecx
103a1492:	83 c4 28                                        	add    esp,0x28
103a1495:	c3                                              	ret
103a1496:	cc                                              	int3
103a1497:	cc                                              	int3
103a1498:	cc                                              	int3
103a1499:	cc                                              	int3
103a149a:	cc                                              	int3
103a149b:	cc                                              	int3
103a149c:	cc                                              	int3
103a149d:	cc                                              	int3
103a149e:	cc                                              	int3
103a149f:	cc                                              	int3
