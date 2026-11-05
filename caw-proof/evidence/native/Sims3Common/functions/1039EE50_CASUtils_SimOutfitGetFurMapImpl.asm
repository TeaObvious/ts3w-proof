# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ee50 (CASUtils_SimOutfitGetFurMapImpl)
Paired Ghidra pseudocode: 1039EE50_CASUtils_SimOutfitGetFurMapImpl.c
Window: [0x1039ee50, 0x1039eec0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039eec0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ee50: 33 c0 56 8b 74 24 08 89 06 89 46 04 89 46 08 57
1039ee60: 8b 7c 24 10 89 46 0c 8b c7 25 00 00 00 ff 3d 00
1039ee70: 00 00 35 75 39 e8 a6 c2 1b 00 8b 10 8b c8 8b 82
1039ee80: cc 00 00 00 57 ff d0 85 c0 74 23 8b 88 94 00 00
1039ee90: 00 8b 90 88 00 00 00 89 4e 04 8b 88 8c 00 00 00
1039eea0: 89 56 08 8b 90 90 00 00 00 89 4e 0c 89 16 5f 8b
1039eeb0: c6 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039ee50 <.text+0x39de50>:
1039ee50:	33 c0                                           	xor    eax,eax
1039ee52:	56                                              	push   esi
1039ee53:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ee57:	89 06                                           	mov    DWORD PTR [esi],eax
1039ee59:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1039ee5c:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
1039ee5f:	57                                              	push   edi
1039ee60:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1039ee64:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
1039ee67:	8b c7                                           	mov    eax,edi
1039ee69:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ee6e:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ee73:	75 39                                           	jne    0x1039eeae
1039ee75:	e8 a6 c2 1b 00                                  	call   0x1055b120
1039ee7a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039ee7c:	8b c8                                           	mov    ecx,eax
1039ee7e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039ee84:	57                                              	push   edi
1039ee85:	ff d0                                           	call   eax
1039ee87:	85 c0                                           	test   eax,eax
1039ee89:	74 23                                           	je     0x1039eeae
1039ee8b:	8b 88 94 00 00 00                               	mov    ecx,DWORD PTR [eax+0x94]
1039ee91:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
1039ee97:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
1039ee9a:	8b 88 8c 00 00 00                               	mov    ecx,DWORD PTR [eax+0x8c]
1039eea0:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
1039eea3:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
1039eea9:	89 4e 0c                                        	mov    DWORD PTR [esi+0xc],ecx
1039eeac:	89 16                                           	mov    DWORD PTR [esi],edx
1039eeae:	5f                                              	pop    edi
1039eeaf:	8b c6                                           	mov    eax,esi
1039eeb1:	5e                                              	pop    esi
1039eeb2:	c3                                              	ret
1039eeb3:	cc                                              	int3
1039eeb4:	cc                                              	int3
1039eeb5:	cc                                              	int3
1039eeb6:	cc                                              	int3
1039eeb7:	cc                                              	int3
1039eeb8:	cc                                              	int3
1039eeb9:	cc                                              	int3
1039eeba:	cc                                              	int3
1039eebb:	cc                                              	int3
1039eebc:	cc                                              	int3
1039eebd:	cc                                              	int3
1039eebe:	cc                                              	int3
1039eebf:	cc                                              	int3
