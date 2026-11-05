# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e630 (Simulator_DisableScriptImpl)
Paired Ghidra pseudocode: 1055E630_Simulator_DisableScriptImpl.c
Window: [0x1055e630, 0x1055e6a0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e6a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e630: 56 e8 ea ca ff ff 8b f0 85 f6 74 59 8b 06 8b 90
1055e640: 14 01 00 00 53 8b 5c 24 0c 57 8b 7c 24 14 57 53
1055e650: 8b ce ff d2 84 c0 74 27 e8 43 bb 1c 00 85 c0 74
1055e660: 32 57 53 8b c8 e8 46 c5 1c 00 85 c0 74 25 6a 00
1055e670: 50 6a 20 e8 78 9c 1c 00 83 c4 0c 5f 5b 5e c3 8b
1055e680: c3 0b c7 74 0e 8b 16 8b 82 0c 01 00 00 57 53 8b
1055e690: ce ff d0 5f 5b 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055e630 <.text+0x55d630>:
1055e630:	56                                              	push   esi
1055e631:	e8 ea ca ff ff                                  	call   0x1055b120
1055e636:	8b f0                                           	mov    esi,eax
1055e638:	85 f6                                           	test   esi,esi
1055e63a:	74 59                                           	je     0x1055e695
1055e63c:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055e63e:	8b 90 14 01 00 00                               	mov    edx,DWORD PTR [eax+0x114]
1055e644:	53                                              	push   ebx
1055e645:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
1055e649:	57                                              	push   edi
1055e64a:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1055e64e:	57                                              	push   edi
1055e64f:	53                                              	push   ebx
1055e650:	8b ce                                           	mov    ecx,esi
1055e652:	ff d2                                           	call   edx
1055e654:	84 c0                                           	test   al,al
1055e656:	74 27                                           	je     0x1055e67f
1055e658:	e8 43 bb 1c 00                                  	call   0x1072a1a0
1055e65d:	85 c0                                           	test   eax,eax
1055e65f:	74 32                                           	je     0x1055e693
1055e661:	57                                              	push   edi
1055e662:	53                                              	push   ebx
1055e663:	8b c8                                           	mov    ecx,eax
1055e665:	e8 46 c5 1c 00                                  	call   0x1072abb0
1055e66a:	85 c0                                           	test   eax,eax
1055e66c:	74 25                                           	je     0x1055e693
1055e66e:	6a 00                                           	push   0x0
1055e670:	50                                              	push   eax
1055e671:	6a 20                                           	push   0x20
1055e673:	e8 78 9c 1c 00                                  	call   0x107282f0
1055e678:	83 c4 0c                                        	add    esp,0xc
1055e67b:	5f                                              	pop    edi
1055e67c:	5b                                              	pop    ebx
1055e67d:	5e                                              	pop    esi
1055e67e:	c3                                              	ret
1055e67f:	8b c3                                           	mov    eax,ebx
1055e681:	0b c7                                           	or     eax,edi
1055e683:	74 0e                                           	je     0x1055e693
1055e685:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055e687:	8b 82 0c 01 00 00                               	mov    eax,DWORD PTR [edx+0x10c]
1055e68d:	57                                              	push   edi
1055e68e:	53                                              	push   ebx
1055e68f:	8b ce                                           	mov    ecx,esi
1055e691:	ff d0                                           	call   eax
1055e693:	5f                                              	pop    edi
1055e694:	5b                                              	pop    ebx
1055e695:	5e                                              	pop    esi
1055e696:	c3                                              	ret
1055e697:	cc                                              	int3
1055e698:	cc                                              	int3
1055e699:	cc                                              	int3
1055e69a:	cc                                              	int3
1055e69b:	cc                                              	int3
1055e69c:	cc                                              	int3
1055e69d:	cc                                              	int3
1055e69e:	cc                                              	int3
1055e69f:	cc                                              	int3
