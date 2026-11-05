# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005abb40 (ScriptCore.CASUtils::CASUtils_SimOutfitGetPartPresetImpl)
Paired Ghidra pseudocode: 005ABB40_ScriptCore_CASUtils_CASUtils_SimOutfitGetPartPresetImpl.c
Window: [0x005abb40, 0x005abc80) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x005abc80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005abb40: 83 ec 40 57 8b 7c 24 48 8b c7 25 00 00 00 ff 3d
005abb50: 00 00 00 35 74 07 33 c0 5f 83 c4 40 c3 56 e8 2d
005abb60: d8 1b 00 8b f0 8b 16 8b 82 cc 00 00 00 57 8b ce
005abb70: ff d0 85 c0 74 7b 8b 54 24 5c b9 54 8e 1c 01 89
005abb80: 4c 24 08 89 4c 24 0c 8b 4c 24 58 89 4c 24 18 8b
005abb90: 4c 24 50 89 54 24 1c 8b 54 24 54 89 4c 24 20 8d
005abba0: 4c 24 08 89 54 24 24 51 8d 54 24 1c 52 8b c8 c7
005abbb0: 44 24 1c 0c f9 fd 00 c7 44 24 18 56 8e 1c 01 e8
005abbc0: ec ab 03 00 8b 4c 24 0c 8b 44 24 08 2b c8 f7 c1
005abbd0: fe ff ff ff 75 23 8b 54 24 10 2b d0 83 e2 fe 83
005abbe0: fa 02 7e 0d 85 c0 74 09 50 e8 f2 88 f3 ff 83 c4
005abbf0: 04 5e 33 c0 5f 83 c4 40 c3 6a 01 6a 10 8d 44 24
005abc00: 10 50 6a 09 6a 13 8d 4c 24 3c c7 44 24 3c 6c 88
005abc10: 00 01 66 c7 44 24 46 13 00 66 c7 44 24 44 0b 00
005abc20: e8 9b 9d f4 ff 8b 16 8b 52 50 8d 44 24 4c 50 8d
005abc30: 4c 24 2c 51 8b ce ff d2 f6 44 24 30 04 8b 74 24
005abc40: 4c c7 44 24 28 f4 a6 fb 00 74 0b 6a 00 8d 4c 24
005abc50: 2c e8 0a 9b f4 ff 8b 4c 24 10 8b 44 24 08 2b c8
005abc60: 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 6e 88
005abc70: f3 ff 83 c4 04 8b c6 5e 5f 83 c4 40 c3 cc cc cc

LINEAR DISASSEMBLY
005abb40 <.text+0x1aab40>:
  5abb40:	83 ec 40                                        	sub    esp,0x40
  5abb43:	57                                              	push   edi
  5abb44:	8b 7c 24 48                                     	mov    edi,DWORD PTR [esp+0x48]
  5abb48:	8b c7                                           	mov    eax,edi
  5abb4a:	25 00 00 00 ff                                  	and    eax,0xff000000
  5abb4f:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5abb54:	74 07                                           	je     0x5abb5d
  5abb56:	33 c0                                           	xor    eax,eax
  5abb58:	5f                                              	pop    edi
  5abb59:	83 c4 40                                        	add    esp,0x40
  5abb5c:	c3                                              	ret
  5abb5d:	56                                              	push   esi
  5abb5e:	e8 2d d8 1b 00                                  	call   0x769390
  5abb63:	8b f0                                           	mov    esi,eax
  5abb65:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5abb67:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5abb6d:	57                                              	push   edi
  5abb6e:	8b ce                                           	mov    ecx,esi
  5abb70:	ff d0                                           	call   eax
  5abb72:	85 c0                                           	test   eax,eax
  5abb74:	74 7b                                           	je     0x5abbf1
  5abb76:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
  5abb7a:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  5abb7f:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5abb83:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  5abb87:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
  5abb8b:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5abb8f:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
  5abb93:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  5abb97:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
  5abb9b:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  5abb9f:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  5abba3:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5abba7:	51                                              	push   ecx
  5abba8:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  5abbac:	52                                              	push   edx
  5abbad:	8b c8                                           	mov    ecx,eax
  5abbaf:	c7 44 24 1c 0c f9 fd 00                         	mov    DWORD PTR [esp+0x1c],0xfdf90c
  5abbb7:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  5abbbf:	e8 ec ab 03 00                                  	call   0x5e67b0
  5abbc4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5abbc8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5abbcc:	2b c8                                           	sub    ecx,eax
  5abbce:	f7 c1 fe ff ff ff                               	test   ecx,0xfffffffe
  5abbd4:	75 23                                           	jne    0x5abbf9
  5abbd6:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  5abbda:	2b d0                                           	sub    edx,eax
  5abbdc:	83 e2 fe                                        	and    edx,0xfffffffe
  5abbdf:	83 fa 02                                        	cmp    edx,0x2
  5abbe2:	7e 0d                                           	jle    0x5abbf1
  5abbe4:	85 c0                                           	test   eax,eax
  5abbe6:	74 09                                           	je     0x5abbf1
  5abbe8:	50                                              	push   eax
  5abbe9:	e8 f2 88 f3 ff                                  	call   0x4e44e0
  5abbee:	83 c4 04                                        	add    esp,0x4
  5abbf1:	5e                                              	pop    esi
  5abbf2:	33 c0                                           	xor    eax,eax
  5abbf4:	5f                                              	pop    edi
  5abbf5:	83 c4 40                                        	add    esp,0x40
  5abbf8:	c3                                              	ret
  5abbf9:	6a 01                                           	push   0x1
  5abbfb:	6a 10                                           	push   0x10
  5abbfd:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5abc01:	50                                              	push   eax
  5abc02:	6a 09                                           	push   0x9
  5abc04:	6a 13                                           	push   0x13
  5abc06:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  5abc0a:	c7 44 24 3c 6c 88 00 01                         	mov    DWORD PTR [esp+0x3c],0x100886c
  5abc12:	66 c7 44 24 46 13 00                            	mov    WORD PTR [esp+0x46],0x13
  5abc19:	66 c7 44 24 44 0b 00                            	mov    WORD PTR [esp+0x44],0xb
  5abc20:	e8 9b 9d f4 ff                                  	call   0x4f59c0
  5abc25:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5abc27:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5abc2a:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
  5abc2e:	50                                              	push   eax
  5abc2f:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5abc33:	51                                              	push   ecx
  5abc34:	8b ce                                           	mov    ecx,esi
  5abc36:	ff d2                                           	call   edx
  5abc38:	f6 44 24 30 04                                  	test   BYTE PTR [esp+0x30],0x4
  5abc3d:	8b 74 24 4c                                     	mov    esi,DWORD PTR [esp+0x4c]
  5abc41:	c7 44 24 28 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x28],0xfba6f4
  5abc49:	74 0b                                           	je     0x5abc56
  5abc4b:	6a 00                                           	push   0x0
  5abc4d:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5abc51:	e8 0a 9b f4 ff                                  	call   0x4f5760
  5abc56:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5abc5a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5abc5e:	2b c8                                           	sub    ecx,eax
  5abc60:	83 e1 fe                                        	and    ecx,0xfffffffe
  5abc63:	83 f9 02                                        	cmp    ecx,0x2
  5abc66:	7e 0d                                           	jle    0x5abc75
  5abc68:	85 c0                                           	test   eax,eax
  5abc6a:	74 09                                           	je     0x5abc75
  5abc6c:	50                                              	push   eax
  5abc6d:	e8 6e 88 f3 ff                                  	call   0x4e44e0
  5abc72:	83 c4 04                                        	add    esp,0x4
  5abc75:	8b c6                                           	mov    eax,esi
  5abc77:	5e                                              	pop    esi
  5abc78:	5f                                              	pop    edi
  5abc79:	83 c4 40                                        	add    esp,0x40
  5abc7c:	c3                                              	ret
  5abc7d:	cc                                              	int3
  5abc7e:	cc                                              	int3
  5abc7f:	cc                                              	int3
