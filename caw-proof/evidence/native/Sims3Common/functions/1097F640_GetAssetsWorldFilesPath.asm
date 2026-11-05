# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f640 (GetAssetsWorldFilesPath)
Paired Ghidra pseudocode: 1097F640_GetAssetsWorldFilesPath.c
Window: [0x1097f640, 0x1097f680) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f640: 51 56 57 b9 c0 26 c7 10 33 f6 e8 21 f5 a0 ff 8b
1097f650: f8 85 ff 76 1e 8d 44 24 08 50 56 b9 c0 26 c7 10
1097f660: e8 2b f5 a0 ff 83 7c 24 08 01 74 0d 83 c6 01 3b
1097f670: f7 72 e2 5f 33 c0 5e 59 c3 8b 00 5f 5e 59 c3 cc

LINEAR DISASSEMBLY
1097f640 <.text+0x97e640>:
1097f640:	51                                              	push   ecx
1097f641:	56                                              	push   esi
1097f642:	57                                              	push   edi
1097f643:	b9 c0 26 c7 10                                  	mov    ecx,0x10c726c0
1097f648:	33 f6                                           	xor    esi,esi
1097f64a:	e8 21 f5 a0 ff                                  	call   0x1038eb70
1097f64f:	8b f8                                           	mov    edi,eax
1097f651:	85 ff                                           	test   edi,edi
1097f653:	76 1e                                           	jbe    0x1097f673
1097f655:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1097f659:	50                                              	push   eax
1097f65a:	56                                              	push   esi
1097f65b:	b9 c0 26 c7 10                                  	mov    ecx,0x10c726c0
1097f660:	e8 2b f5 a0 ff                                  	call   0x1038eb90
1097f665:	83 7c 24 08 01                                  	cmp    DWORD PTR [esp+0x8],0x1
1097f66a:	74 0d                                           	je     0x1097f679
1097f66c:	83 c6 01                                        	add    esi,0x1
1097f66f:	3b f7                                           	cmp    esi,edi
1097f671:	72 e2                                           	jb     0x1097f655
1097f673:	5f                                              	pop    edi
1097f674:	33 c0                                           	xor    eax,eax
1097f676:	5e                                              	pop    esi
1097f677:	59                                              	pop    ecx
1097f678:	c3                                              	ret
1097f679:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097f67b:	5f                                              	pop    edi
1097f67c:	5e                                              	pop    esi
1097f67d:	59                                              	pop    ecx
1097f67e:	c3                                              	ret
1097f67f:	cc                                              	int3
