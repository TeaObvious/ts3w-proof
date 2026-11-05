# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1620 (CASUtils_SimBuilderSetUseCompressionImpl)
Paired Ghidra pseudocode: 103A1620_CASUtils_SimBuilderSetUseCompressionImpl.c
Window: [0x103a1620, 0x103a1670) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1620: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1630: 35 75 34 e8 e8 9a 1b 00 8b 10 8b c8 8b 82 cc 00
103a1640: 00 00 56 ff d0 85 c0 74 1e 8a 4c 24 0c 3a 48 69
103a1650: 74 15 81 48 1c 00 4f 00 00 88 48 69 b9 1f 00 00
103a1660: 00 89 48 14 89 48 18 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1620 <.text+0x3a0620>:
103a1620:	56                                              	push   esi
103a1621:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1625:	8b c6                                           	mov    eax,esi
103a1627:	25 00 00 00 ff                                  	and    eax,0xff000000
103a162c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1631:	75 34                                           	jne    0x103a1667
103a1633:	e8 e8 9a 1b 00                                  	call   0x1055b120
103a1638:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a163a:	8b c8                                           	mov    ecx,eax
103a163c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1642:	56                                              	push   esi
103a1643:	ff d0                                           	call   eax
103a1645:	85 c0                                           	test   eax,eax
103a1647:	74 1e                                           	je     0x103a1667
103a1649:	8a 4c 24 0c                                     	mov    cl,BYTE PTR [esp+0xc]
103a164d:	3a 48 69                                        	cmp    cl,BYTE PTR [eax+0x69]
103a1650:	74 15                                           	je     0x103a1667
103a1652:	81 48 1c 00 4f 00 00                            	or     DWORD PTR [eax+0x1c],0x4f00
103a1659:	88 48 69                                        	mov    BYTE PTR [eax+0x69],cl
103a165c:	b9 1f 00 00 00                                  	mov    ecx,0x1f
103a1661:	89 48 14                                        	mov    DWORD PTR [eax+0x14],ecx
103a1664:	89 48 18                                        	mov    DWORD PTR [eax+0x18],ecx
103a1667:	5e                                              	pop    esi
103a1668:	c3                                              	ret
103a1669:	cc                                              	int3
103a166a:	cc                                              	int3
103a166b:	cc                                              	int3
103a166c:	cc                                              	int3
103a166d:	cc                                              	int3
103a166e:	cc                                              	int3
103a166f:	cc                                              	int3
