# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00795ab0 (ScriptCore.World::World_GetLotNameKey)
Paired Ghidra pseudocode: 00795AB0_ScriptCore_World_World_GetLotNameKey.c
Window: [0x00795ab0, 0x00795bf0) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x00795bf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00795ab0: 8b 0d c4 db 1e 01 83 ec 54 85 c9 56 57 74 15 8b
00795ac0: 44 24 64 8b 54 24 60 6a 00 50 52 e8 40 cd 4c 00
00795ad0: 8b f0 eb 02 33 f6 e8 b5 38 fd ff 85 f6 8b f8 0f
00795ae0: 84 f8 00 00 00 85 ff 0f 84 f0 00 00 00 8b 86 c0
00795af0: 03 00 00 85 c0 0f 84 e2 00 00 00 b9 54 8e 1c 01
00795b00: 89 4c 24 0c 89 4c 24 10 50 8d 4c 24 10 c7 44 24
00795b10: 1c 18 1c 01 01 c7 44 24 18 56 8e 1c 01 e8 2e 34
00795b20: c7 ff 6a 01 6a 10 8d 44 24 14 50 6a 09 be f4 a6
00795b30: fb 00 6a 13 8d 4c 24 30 89 74 24 30 66 c7 44 24
00795b40: 38 00 00 66 c7 44 24 3a 00 00 e8 71 fe d5 ff 8d
00795b50: 4c 24 1c 51 8d 4c 24 40 c7 44 24 40 6c 88 00 01
00795b60: 66 c7 44 24 4a 13 00 66 c7 44 24 48 02 00 e8 3d
00795b70: 09 d6 ff f6 44 24 24 04 89 74 24 1c 74 0b 6a 00
00795b80: 8d 4c 24 20 e8 d7 fb d5 ff 8b 17 8b 52 50 8d 44
00795b90: 24 08 50 8d 4c 24 40 51 8b cf ff d2 f6 44 24 44
00795ba0: 04 8b 7c 24 08 89 74 24 3c 74 0b 6a 00 8d 4c 24
00795bb0: 40 e8 aa fb d5 ff 8b 4c 24 14 8b 44 24 0c 2b c8
00795bc0: 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 0e e9
00795bd0: d4 ff 83 c4 04 8b c7 5f 5e 83 c4 54 c3 5f 33 c0
00795be0: 5e 83 c4 54 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00795ab0 <.text+0x394ab0>:
  795ab0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  795ab6:	83 ec 54                                        	sub    esp,0x54
  795ab9:	85 c9                                           	test   ecx,ecx
  795abb:	56                                              	push   esi
  795abc:	57                                              	push   edi
  795abd:	74 15                                           	je     0x795ad4
  795abf:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  795ac3:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
  795ac7:	6a 00                                           	push   0x0
  795ac9:	50                                              	push   eax
  795aca:	52                                              	push   edx
  795acb:	e8 40 cd 4c 00                                  	call   0xc62810
  795ad0:	8b f0                                           	mov    esi,eax
  795ad2:	eb 02                                           	jmp    0x795ad6
  795ad4:	33 f6                                           	xor    esi,esi
  795ad6:	e8 b5 38 fd ff                                  	call   0x769390
  795adb:	85 f6                                           	test   esi,esi
  795add:	8b f8                                           	mov    edi,eax
  795adf:	0f 84 f8 00 00 00                               	je     0x795bdd
  795ae5:	85 ff                                           	test   edi,edi
  795ae7:	0f 84 f0 00 00 00                               	je     0x795bdd
  795aed:	8b 86 c0 03 00 00                               	mov    eax,DWORD PTR [esi+0x3c0]
  795af3:	85 c0                                           	test   eax,eax
  795af5:	0f 84 e2 00 00 00                               	je     0x795bdd
  795afb:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  795b00:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  795b04:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  795b08:	50                                              	push   eax
  795b09:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  795b0d:	c7 44 24 1c 18 1c 01 01                         	mov    DWORD PTR [esp+0x1c],0x1011c18
  795b15:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  795b1d:	e8 2e 34 c7 ff                                  	call   0x408f50
  795b22:	6a 01                                           	push   0x1
  795b24:	6a 10                                           	push   0x10
  795b26:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  795b2a:	50                                              	push   eax
  795b2b:	6a 09                                           	push   0x9
  795b2d:	be f4 a6 fb 00                                  	mov    esi,0xfba6f4
  795b32:	6a 13                                           	push   0x13
  795b34:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  795b38:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  795b3c:	66 c7 44 24 38 00 00                            	mov    WORD PTR [esp+0x38],0x0
  795b43:	66 c7 44 24 3a 00 00                            	mov    WORD PTR [esp+0x3a],0x0
  795b4a:	e8 71 fe d5 ff                                  	call   0x4f59c0
  795b4f:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  795b53:	51                                              	push   ecx
  795b54:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  795b58:	c7 44 24 40 6c 88 00 01                         	mov    DWORD PTR [esp+0x40],0x100886c
  795b60:	66 c7 44 24 4a 13 00                            	mov    WORD PTR [esp+0x4a],0x13
  795b67:	66 c7 44 24 48 02 00                            	mov    WORD PTR [esp+0x48],0x2
  795b6e:	e8 3d 09 d6 ff                                  	call   0x4f64b0
  795b73:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  795b78:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  795b7c:	74 0b                                           	je     0x795b89
  795b7e:	6a 00                                           	push   0x0
  795b80:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  795b84:	e8 d7 fb d5 ff                                  	call   0x4f5760
  795b89:	8b 17                                           	mov    edx,DWORD PTR [edi]
  795b8b:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  795b8e:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  795b92:	50                                              	push   eax
  795b93:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  795b97:	51                                              	push   ecx
  795b98:	8b cf                                           	mov    ecx,edi
  795b9a:	ff d2                                           	call   edx
  795b9c:	f6 44 24 44 04                                  	test   BYTE PTR [esp+0x44],0x4
  795ba1:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  795ba5:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
  795ba9:	74 0b                                           	je     0x795bb6
  795bab:	6a 00                                           	push   0x0
  795bad:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  795bb1:	e8 aa fb d5 ff                                  	call   0x4f5760
  795bb6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  795bba:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  795bbe:	2b c8                                           	sub    ecx,eax
  795bc0:	83 e1 fe                                        	and    ecx,0xfffffffe
  795bc3:	83 f9 02                                        	cmp    ecx,0x2
  795bc6:	7e 0d                                           	jle    0x795bd5
  795bc8:	85 c0                                           	test   eax,eax
  795bca:	74 09                                           	je     0x795bd5
  795bcc:	50                                              	push   eax
  795bcd:	e8 0e e9 d4 ff                                  	call   0x4e44e0
  795bd2:	83 c4 04                                        	add    esp,0x4
  795bd5:	8b c7                                           	mov    eax,edi
  795bd7:	5f                                              	pop    edi
  795bd8:	5e                                              	pop    esi
  795bd9:	83 c4 54                                        	add    esp,0x54
  795bdc:	c3                                              	ret
  795bdd:	5f                                              	pop    edi
  795bde:	33 c0                                           	xor    eax,eax
  795be0:	5e                                              	pop    esi
  795be1:	83 c4 54                                        	add    esp,0x54
  795be4:	c3                                              	ret
  795be5:	cc                                              	int3
  795be6:	cc                                              	int3
  795be7:	cc                                              	int3
  795be8:	cc                                              	int3
  795be9:	cc                                              	int3
  795bea:	cc                                              	int3
  795beb:	cc                                              	int3
  795bec:	cc                                              	int3
  795bed:	cc                                              	int3
  795bee:	cc                                              	int3
  795bef:	cc                                              	int3
