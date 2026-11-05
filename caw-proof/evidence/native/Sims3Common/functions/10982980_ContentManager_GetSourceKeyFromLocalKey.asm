# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982980 (ContentManager_GetSourceKeyFromLocalKey)
Paired Ghidra pseudocode: 10982980_ContentManager_GetSourceKeyFromLocalKey.c
Window: [0x10982980, 0x10982ad0) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982ad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982980: 81 ec 40 01 00 00 53 55 56 57 e8 31 1b df ff 33
10982990: f6 3b c6 89 44 24 14 0f 84 0e 01 00 00 8b 84 24
109829a0: 58 01 00 00 8b bc 24 5c 01 00 00 8b 9c 24 60 01
109829b0: 00 00 8b ac 24 54 01 00 00 8d 4c 24 2c 89 7c 24
109829c0: 3c 89 5c 24 40 89 6c 24 44 89 44 24 48 89 74 24
109829d0: 1c 89 74 24 20 89 74 24 24 89 74 24 28 e8 8e 0b
109829e0: fb ff 8d 4c 24 1c 51 8b 4c 24 18 8d 54 24 30 52
109829f0: 8d 44 24 44 50 89 74 24 1c e8 e2 2d df ff 84 c0
10982a00: 74 4d 8b 84 24 64 01 00 00 8b 4c 24 24 8b 54 24
10982a10: 1c 89 08 8b 4c 24 20 89 50 08 8b 54 24 28 89 48
10982a20: 0c 89 50 04 6a 10 8d 44 24 14 50 8d 4c 24 54 51
10982a30: 8d 4c 24 38 e8 47 1f fb ff 8d 54 24 4c 52 ff 15
10982a40: c4 b6 aa 10 5f 5e 5d 5b 81 c4 40 01 00 00 c3 e8
10982a50: ac e9 b9 ff 3b c6 89 74 24 14 89 74 24 18 74 4b
10982a60: 8d 4c 24 14 51 8d 54 24 40 52 8b c8 e8 ff e7 b9
10982a70: ff 84 c0 74 36 8b 84 24 64 01 00 00 8b 8c 24 58
10982a80: 01 00 00 89 48 04 8d 4c 24 2c 89 28 89 78 08 89
10982a90: 58 0c e8 b9 09 fb ff 8b 54 24 18 52 56 8d 4c 24
10982aa0: 34 e8 1a 09 fb ff e9 79 ff ff ff 68 fc 24 b6 10
10982ab0: ff 15 c4 b6 aa 10 5f 5e 5d 5b 81 c4 40 01 00 00
10982ac0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10982980 <.text+0x981980>:
10982980:	81 ec 40 01 00 00                               	sub    esp,0x140
10982986:	53                                              	push   ebx
10982987:	55                                              	push   ebp
10982988:	56                                              	push   esi
10982989:	57                                              	push   edi
1098298a:	e8 31 1b df ff                                  	call   0x107744c0
1098298f:	33 f6                                           	xor    esi,esi
10982991:	3b c6                                           	cmp    eax,esi
10982993:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10982997:	0f 84 0e 01 00 00                               	je     0x10982aab
1098299d:	8b 84 24 58 01 00 00                            	mov    eax,DWORD PTR [esp+0x158]
109829a4:	8b bc 24 5c 01 00 00                            	mov    edi,DWORD PTR [esp+0x15c]
109829ab:	8b 9c 24 60 01 00 00                            	mov    ebx,DWORD PTR [esp+0x160]
109829b2:	8b ac 24 54 01 00 00                            	mov    ebp,DWORD PTR [esp+0x154]
109829b9:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
109829bd:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
109829c1:	89 5c 24 40                                     	mov    DWORD PTR [esp+0x40],ebx
109829c5:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
109829c9:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
109829cd:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
109829d1:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
109829d5:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
109829d9:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
109829dd:	e8 8e 0b fb ff                                  	call   0x10933570
109829e2:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
109829e6:	51                                              	push   ecx
109829e7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109829eb:	8d 54 24 30                                     	lea    edx,[esp+0x30]
109829ef:	52                                              	push   edx
109829f0:	8d 44 24 44                                     	lea    eax,[esp+0x44]
109829f4:	50                                              	push   eax
109829f5:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
109829f9:	e8 e2 2d df ff                                  	call   0x107757e0
109829fe:	84 c0                                           	test   al,al
10982a00:	74 4d                                           	je     0x10982a4f
10982a02:	8b 84 24 64 01 00 00                            	mov    eax,DWORD PTR [esp+0x164]
10982a09:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10982a0d:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10982a11:	89 08                                           	mov    DWORD PTR [eax],ecx
10982a13:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10982a17:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10982a1a:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10982a1e:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
10982a21:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10982a24:	6a 10                                           	push   0x10
10982a26:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10982a2a:	50                                              	push   eax
10982a2b:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10982a2f:	51                                              	push   ecx
10982a30:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10982a34:	e8 47 1f fb ff                                  	call   0x10934980
10982a39:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
10982a3d:	52                                              	push   edx
10982a3e:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10982a44:	5f                                              	pop    edi
10982a45:	5e                                              	pop    esi
10982a46:	5d                                              	pop    ebp
10982a47:	5b                                              	pop    ebx
10982a48:	81 c4 40 01 00 00                               	add    esp,0x140
10982a4e:	c3                                              	ret
10982a4f:	e8 ac e9 b9 ff                                  	call   0x10521400
10982a54:	3b c6                                           	cmp    eax,esi
10982a56:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
10982a5a:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
10982a5e:	74 4b                                           	je     0x10982aab
10982a60:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10982a64:	51                                              	push   ecx
10982a65:	8d 54 24 40                                     	lea    edx,[esp+0x40]
10982a69:	52                                              	push   edx
10982a6a:	8b c8                                           	mov    ecx,eax
10982a6c:	e8 ff e7 b9 ff                                  	call   0x10521270
10982a71:	84 c0                                           	test   al,al
10982a73:	74 36                                           	je     0x10982aab
10982a75:	8b 84 24 64 01 00 00                            	mov    eax,DWORD PTR [esp+0x164]
10982a7c:	8b 8c 24 58 01 00 00                            	mov    ecx,DWORD PTR [esp+0x158]
10982a83:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10982a86:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10982a8a:	89 28                                           	mov    DWORD PTR [eax],ebp
10982a8c:	89 78 08                                        	mov    DWORD PTR [eax+0x8],edi
10982a8f:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
10982a92:	e8 b9 09 fb ff                                  	call   0x10933450
10982a97:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10982a9b:	52                                              	push   edx
10982a9c:	56                                              	push   esi
10982a9d:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10982aa1:	e8 1a 09 fb ff                                  	call   0x109333c0
10982aa6:	e9 79 ff ff ff                                  	jmp    0x10982a24
10982aab:	68 fc 24 b6 10                                  	push   0x10b624fc
10982ab0:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10982ab6:	5f                                              	pop    edi
10982ab7:	5e                                              	pop    esi
10982ab8:	5d                                              	pop    ebp
10982ab9:	5b                                              	pop    ebx
10982aba:	81 c4 40 01 00 00                               	add    esp,0x140
10982ac0:	c3                                              	ret
10982ac1:	cc                                              	int3
10982ac2:	cc                                              	int3
10982ac3:	cc                                              	int3
10982ac4:	cc                                              	int3
10982ac5:	cc                                              	int3
10982ac6:	cc                                              	int3
10982ac7:	cc                                              	int3
10982ac8:	cc                                              	int3
10982ac9:	cc                                              	int3
10982aca:	cc                                              	int3
10982acb:	cc                                              	int3
10982acc:	cc                                              	int3
10982acd:	cc                                              	int3
10982ace:	cc                                              	int3
10982acf:	cc                                              	int3
