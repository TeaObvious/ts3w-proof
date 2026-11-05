# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ec50 (CASUtils_SimBuilderSetFurMapImpl)
Paired Ghidra pseudocode: 1039EC50_CASUtils_SimBuilderSetFurMapImpl.c
Window: [0x1039ec50, 0x1039ecb0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ecb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ec50: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039ec60: 35 75 47 e8 b8 c4 1b 00 8b 10 8b c8 8b 82 cc 00
1039ec70: 00 00 56 ff d0 85 c0 74 31 8b 4c 24 14 8b 54 24
1039ec80: 18 8b 74 24 10 81 48 1c 00 00 02 00 57 8b 7c 24
1039ec90: 10 89 88 70 02 00 00 89 90 74 02 00 00 89 b8 78
1039eca0: 02 00 00 89 b0 7c 02 00 00 5f 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
1039ec50 <.text+0x39dc50>:
1039ec50:	56                                              	push   esi
1039ec51:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ec55:	8b c6                                           	mov    eax,esi
1039ec57:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ec5c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ec61:	75 47                                           	jne    0x1039ecaa
1039ec63:	e8 b8 c4 1b 00                                  	call   0x1055b120
1039ec68:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039ec6a:	8b c8                                           	mov    ecx,eax
1039ec6c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039ec72:	56                                              	push   esi
1039ec73:	ff d0                                           	call   eax
1039ec75:	85 c0                                           	test   eax,eax
1039ec77:	74 31                                           	je     0x1039ecaa
1039ec79:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1039ec7d:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1039ec81:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
1039ec85:	81 48 1c 00 00 02 00                            	or     DWORD PTR [eax+0x1c],0x20000
1039ec8c:	57                                              	push   edi
1039ec8d:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1039ec91:	89 88 70 02 00 00                               	mov    DWORD PTR [eax+0x270],ecx
1039ec97:	89 90 74 02 00 00                               	mov    DWORD PTR [eax+0x274],edx
1039ec9d:	89 b8 78 02 00 00                               	mov    DWORD PTR [eax+0x278],edi
1039eca3:	89 b0 7c 02 00 00                               	mov    DWORD PTR [eax+0x27c],esi
1039eca9:	5f                                              	pop    edi
1039ecaa:	5e                                              	pop    esi
1039ecab:	c3                                              	ret
1039ecac:	cc                                              	int3
1039ecad:	cc                                              	int3
1039ecae:	cc                                              	int3
1039ecaf:	cc                                              	int3
