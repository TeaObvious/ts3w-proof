# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105342d0 (LoadSaveManager_LoadGame_Impl)
Paired Ghidra pseudocode: 105342D0_LoadSaveManager_LoadGame_Impl.c
Window: [0x105342d0, 0x10534320) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10534320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105342d0: 56 e8 4a 6e 02 00 8b f0 85 f6 75 04 32 c0 5e c3
105342e0: 57 e8 7a ab b3 ff 8b f8 85 ff 74 15 8b 4c 24 0c
105342f0: 8b 06 8b 90 cc 00 00 00 51 8b ce ff d2 85 c0 75
10534300: 05 5f 32 c0 5e c3 50 8b cf e8 72 06 b4 ff 5f 5e
10534310: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105342d0 <.text+0x5332d0>:
105342d0:	56                                              	push   esi
105342d1:	e8 4a 6e 02 00                                  	call   0x1055b120
105342d6:	8b f0                                           	mov    esi,eax
105342d8:	85 f6                                           	test   esi,esi
105342da:	75 04                                           	jne    0x105342e0
105342dc:	32 c0                                           	xor    al,al
105342de:	5e                                              	pop    esi
105342df:	c3                                              	ret
105342e0:	57                                              	push   edi
105342e1:	e8 7a ab b3 ff                                  	call   0x1006ee60
105342e6:	8b f8                                           	mov    edi,eax
105342e8:	85 ff                                           	test   edi,edi
105342ea:	74 15                                           	je     0x10534301
105342ec:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105342f0:	8b 06                                           	mov    eax,DWORD PTR [esi]
105342f2:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
105342f8:	51                                              	push   ecx
105342f9:	8b ce                                           	mov    ecx,esi
105342fb:	ff d2                                           	call   edx
105342fd:	85 c0                                           	test   eax,eax
105342ff:	75 05                                           	jne    0x10534306
10534301:	5f                                              	pop    edi
10534302:	32 c0                                           	xor    al,al
10534304:	5e                                              	pop    esi
10534305:	c3                                              	ret
10534306:	50                                              	push   eax
10534307:	8b cf                                           	mov    ecx,edi
10534309:	e8 72 06 b4 ff                                  	call   0x10074980
1053430e:	5f                                              	pop    edi
1053430f:	5e                                              	pop    esi
10534310:	c3                                              	ret
10534311:	cc                                              	int3
10534312:	cc                                              	int3
10534313:	cc                                              	int3
10534314:	cc                                              	int3
10534315:	cc                                              	int3
10534316:	cc                                              	int3
10534317:	cc                                              	int3
10534318:	cc                                              	int3
10534319:	cc                                              	int3
1053431a:	cc                                              	int3
1053431b:	cc                                              	int3
1053431c:	cc                                              	int3
1053431d:	cc                                              	int3
1053431e:	cc                                              	int3
1053431f:	cc                                              	int3
