# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534480 (LoadSaveManager_SaveGame_Impl)
Paired Ghidra pseudocode: 10534480_LoadSaveManager_SaveGame_Impl.c
Window: [0x10534480, 0x105344d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x105344d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534480: 56 e8 9a 6c 02 00 8b f0 85 f6 75 02 5e c3 57 e8
10534490: cc a9 b3 ff 8b f8 33 c0 85 ff 74 2e 8b 4c 24 0c
105344a0: 85 c9 74 14 8b 06 8b 90 cc 00 00 00 51 8b ce ff
105344b0: d2 85 c0 75 03 5f 5e c3 8b 4c 24 14 8b 54 24 10
105344c0: 51 52 50 8b cf e8 36 00 b4 ff 5f 5e c3 cc cc cc

LINEAR DISASSEMBLY
10534480 <.text+0x533480>:
10534480:	56                                              	push   esi
10534481:	e8 9a 6c 02 00                                  	call   0x1055b120
10534486:	8b f0                                           	mov    esi,eax
10534488:	85 f6                                           	test   esi,esi
1053448a:	75 02                                           	jne    0x1053448e
1053448c:	5e                                              	pop    esi
1053448d:	c3                                              	ret
1053448e:	57                                              	push   edi
1053448f:	e8 cc a9 b3 ff                                  	call   0x1006ee60
10534494:	8b f8                                           	mov    edi,eax
10534496:	33 c0                                           	xor    eax,eax
10534498:	85 ff                                           	test   edi,edi
1053449a:	74 2e                                           	je     0x105344ca
1053449c:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105344a0:	85 c9                                           	test   ecx,ecx
105344a2:	74 14                                           	je     0x105344b8
105344a4:	8b 06                                           	mov    eax,DWORD PTR [esi]
105344a6:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
105344ac:	51                                              	push   ecx
105344ad:	8b ce                                           	mov    ecx,esi
105344af:	ff d2                                           	call   edx
105344b1:	85 c0                                           	test   eax,eax
105344b3:	75 03                                           	jne    0x105344b8
105344b5:	5f                                              	pop    edi
105344b6:	5e                                              	pop    esi
105344b7:	c3                                              	ret
105344b8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105344bc:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105344c0:	51                                              	push   ecx
105344c1:	52                                              	push   edx
105344c2:	50                                              	push   eax
105344c3:	8b cf                                           	mov    ecx,edi
105344c5:	e8 36 00 b4 ff                                  	call   0x10074500
105344ca:	5f                                              	pop    edi
105344cb:	5e                                              	pop    esi
105344cc:	c3                                              	ret
105344cd:	cc                                              	int3
105344ce:	cc                                              	int3
105344cf:	cc                                              	int3
