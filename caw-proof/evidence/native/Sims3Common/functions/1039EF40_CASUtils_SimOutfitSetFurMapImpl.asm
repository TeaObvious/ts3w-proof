# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ef40 (CASUtils_SimOutfitSetFurMapImpl)
Paired Ghidra pseudocode: 1039EF40_CASUtils_SimOutfitSetFurMapImpl.c
Window: [0x1039ef40, 0x1039efa0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039efa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ef40: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039ef50: 35 75 40 e8 c8 c1 1b 00 8b 10 8b c8 8b 82 cc 00
1039ef60: 00 00 56 ff d0 85 c0 74 2a 8b 4c 24 14 8b 54 24
1039ef70: 18 8b 74 24 10 57 8b 7c 24 10 89 88 88 00 00 00
1039ef80: 89 90 8c 00 00 00 89 b8 90 00 00 00 89 b0 94 00
1039ef90: 00 00 5f 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039ef40 <.text+0x39df40>:
1039ef40:	56                                              	push   esi
1039ef41:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ef45:	8b c6                                           	mov    eax,esi
1039ef47:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ef4c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ef51:	75 40                                           	jne    0x1039ef93
1039ef53:	e8 c8 c1 1b 00                                  	call   0x1055b120
1039ef58:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039ef5a:	8b c8                                           	mov    ecx,eax
1039ef5c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039ef62:	56                                              	push   esi
1039ef63:	ff d0                                           	call   eax
1039ef65:	85 c0                                           	test   eax,eax
1039ef67:	74 2a                                           	je     0x1039ef93
1039ef69:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1039ef6d:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1039ef71:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
1039ef75:	57                                              	push   edi
1039ef76:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1039ef7a:	89 88 88 00 00 00                               	mov    DWORD PTR [eax+0x88],ecx
1039ef80:	89 90 8c 00 00 00                               	mov    DWORD PTR [eax+0x8c],edx
1039ef86:	89 b8 90 00 00 00                               	mov    DWORD PTR [eax+0x90],edi
1039ef8c:	89 b0 94 00 00 00                               	mov    DWORD PTR [eax+0x94],esi
1039ef92:	5f                                              	pop    edi
1039ef93:	5e                                              	pop    esi
1039ef94:	c3                                              	ret
1039ef95:	cc                                              	int3
1039ef96:	cc                                              	int3
1039ef97:	cc                                              	int3
1039ef98:	cc                                              	int3
1039ef99:	cc                                              	int3
1039ef9a:	cc                                              	int3
1039ef9b:	cc                                              	int3
1039ef9c:	cc                                              	int3
1039ef9d:	cc                                              	int3
1039ef9e:	cc                                              	int3
1039ef9f:	cc                                              	int3
