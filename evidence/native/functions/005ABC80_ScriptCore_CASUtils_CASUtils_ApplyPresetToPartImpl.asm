# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005abc80 (ScriptCore.CASUtils::CASUtils_ApplyPresetToPartImpl)
Paired Ghidra pseudocode: 005ABC80_ScriptCore_CASUtils_CASUtils_ApplyPresetToPartImpl.c
Window: [0x005abc80, 0x005abdf0) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x005abdf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005abc80: 81 ec 80 00 00 00 53 e8 04 d7 1b 00 8b 8c 24 d4
005abc90: 00 00 00 8b 10 8b 52 58 51 8b c8 ff d2 8b d8 85
005abca0: db 75 0a 32 c0 5b 81 c4 80 00 00 00 c3 56 8b b4
005abcb0: 24 8c 00 00 00 8b c6 25 00 00 00 ff 3d 00 00 00
005abcc0: 35 57 0f 85 c3 00 00 00 e8 c3 d6 1b 00 8b 10 8b
005abcd0: c8 8b 82 cc 00 00 00 56 ff d0 8b f8 85 ff 0f 84
005abce0: a7 00 00 00 8d 4c 24 2c e8 d3 3d 01 00 53 8d 4c
005abcf0: 24 30 e8 69 43 01 00 8d 4c 24 2c e8 50 32 01 00
005abd00: 84 c0 74 7e 8b 94 24 a0 00 00 00 8b 8c 24 9c 00
005abd10: 00 00 8b 84 24 94 00 00 00 89 4c 24 1c 8b 8c 24
005abd20: 98 00 00 00 89 54 24 20 8d 54 24 1c 52 89 4c 24
005abd30: 2c 57 8d 4c 24 34 89 44 24 2c e8 21 32 01 00 84
005abd40: c0 8d 4c 24 2c 74 3f 6a 00 6a 00 8d 44 24 14 50
005abd50: c7 44 24 18 00 00 00 00 c7 44 24 1c 00 00 00 00
005abd60: c7 44 24 20 00 00 00 00 c7 44 24 24 0c f9 fd 00
005abd70: e8 9b 45 01 00 84 c0 75 1e 8d 4c 24 0c e8 4e f5
005abd80: ff ff 8d 4c 24 2c e8 55 3f 01 00 5f 5e 32 c0 5b
005abd90: 81 c4 80 00 00 00 c3 8b 74 24 0c 8b 5c 24 10 3b
005abda0: f3 74 23 8b 06 8b 4e 04 0f b6 56 08 50 8b 40 58
005abdb0: 51 52 50 8d 4c 24 2c 51 8b cf e8 11 79 03 00 83
005abdc0: c6 0c 3b f3 75 dd 8d 4c 24 0c e8 01 f5 ff ff 8d
005abdd0: 4c 24 2c e8 08 3f 01 00 5f 5e b0 01 5b 81 c4 80
005abde0: 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005abc80 <.text+0x1aac80>:
  5abc80:	81 ec 80 00 00 00                               	sub    esp,0x80
  5abc86:	53                                              	push   ebx
  5abc87:	e8 04 d7 1b 00                                  	call   0x769390
  5abc8c:	8b 8c 24 d4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd4]
  5abc93:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5abc95:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  5abc98:	51                                              	push   ecx
  5abc99:	8b c8                                           	mov    ecx,eax
  5abc9b:	ff d2                                           	call   edx
  5abc9d:	8b d8                                           	mov    ebx,eax
  5abc9f:	85 db                                           	test   ebx,ebx
  5abca1:	75 0a                                           	jne    0x5abcad
  5abca3:	32 c0                                           	xor    al,al
  5abca5:	5b                                              	pop    ebx
  5abca6:	81 c4 80 00 00 00                               	add    esp,0x80
  5abcac:	c3                                              	ret
  5abcad:	56                                              	push   esi
  5abcae:	8b b4 24 8c 00 00 00                            	mov    esi,DWORD PTR [esp+0x8c]
  5abcb5:	8b c6                                           	mov    eax,esi
  5abcb7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5abcbc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5abcc1:	57                                              	push   edi
  5abcc2:	0f 85 c3 00 00 00                               	jne    0x5abd8b
  5abcc8:	e8 c3 d6 1b 00                                  	call   0x769390
  5abccd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5abccf:	8b c8                                           	mov    ecx,eax
  5abcd1:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5abcd7:	56                                              	push   esi
  5abcd8:	ff d0                                           	call   eax
  5abcda:	8b f8                                           	mov    edi,eax
  5abcdc:	85 ff                                           	test   edi,edi
  5abcde:	0f 84 a7 00 00 00                               	je     0x5abd8b
  5abce4:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5abce8:	e8 d3 3d 01 00                                  	call   0x5bfac0
  5abced:	53                                              	push   ebx
  5abcee:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  5abcf2:	e8 69 43 01 00                                  	call   0x5c0060
  5abcf7:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5abcfb:	e8 50 32 01 00                                  	call   0x5bef50
  5abd00:	84 c0                                           	test   al,al
  5abd02:	74 7e                                           	je     0x5abd82
  5abd04:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  5abd0b:	8b 8c 24 9c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x9c]
  5abd12:	8b 84 24 94 00 00 00                            	mov    eax,DWORD PTR [esp+0x94]
  5abd19:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  5abd1d:	8b 8c 24 98 00 00 00                            	mov    ecx,DWORD PTR [esp+0x98]
  5abd24:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  5abd28:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  5abd2c:	52                                              	push   edx
  5abd2d:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  5abd31:	57                                              	push   edi
  5abd32:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  5abd36:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  5abd3a:	e8 21 32 01 00                                  	call   0x5bef60
  5abd3f:	84 c0                                           	test   al,al
  5abd41:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5abd45:	74 3f                                           	je     0x5abd86
  5abd47:	6a 00                                           	push   0x0
  5abd49:	6a 00                                           	push   0x0
  5abd4b:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  5abd4f:	50                                              	push   eax
  5abd50:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  5abd58:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  5abd60:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  5abd68:	c7 44 24 24 0c f9 fd 00                         	mov    DWORD PTR [esp+0x24],0xfdf90c
  5abd70:	e8 9b 45 01 00                                  	call   0x5c0310
  5abd75:	84 c0                                           	test   al,al
  5abd77:	75 1e                                           	jne    0x5abd97
  5abd79:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5abd7d:	e8 4e f5 ff ff                                  	call   0x5ab2d0
  5abd82:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5abd86:	e8 55 3f 01 00                                  	call   0x5bfce0
  5abd8b:	5f                                              	pop    edi
  5abd8c:	5e                                              	pop    esi
  5abd8d:	32 c0                                           	xor    al,al
  5abd8f:	5b                                              	pop    ebx
  5abd90:	81 c4 80 00 00 00                               	add    esp,0x80
  5abd96:	c3                                              	ret
  5abd97:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5abd9b:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  5abd9f:	3b f3                                           	cmp    esi,ebx
  5abda1:	74 23                                           	je     0x5abdc6
  5abda3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5abda5:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  5abda8:	0f b6 56 08                                     	movzx  edx,BYTE PTR [esi+0x8]
  5abdac:	50                                              	push   eax
  5abdad:	8b 40 58                                        	mov    eax,DWORD PTR [eax+0x58]
  5abdb0:	51                                              	push   ecx
  5abdb1:	52                                              	push   edx
  5abdb2:	50                                              	push   eax
  5abdb3:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5abdb7:	51                                              	push   ecx
  5abdb8:	8b cf                                           	mov    ecx,edi
  5abdba:	e8 11 79 03 00                                  	call   0x5e36d0
  5abdbf:	83 c6 0c                                        	add    esi,0xc
  5abdc2:	3b f3                                           	cmp    esi,ebx
  5abdc4:	75 dd                                           	jne    0x5abda3
  5abdc6:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5abdca:	e8 01 f5 ff ff                                  	call   0x5ab2d0
  5abdcf:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5abdd3:	e8 08 3f 01 00                                  	call   0x5bfce0
  5abdd8:	5f                                              	pop    edi
  5abdd9:	5e                                              	pop    esi
  5abdda:	b0 01                                           	mov    al,0x1
  5abddc:	5b                                              	pop    ebx
  5abddd:	81 c4 80 00 00 00                               	add    esp,0x80
  5abde3:	c3                                              	ret
  5abde4:	cc                                              	int3
  5abde5:	cc                                              	int3
  5abde6:	cc                                              	int3
  5abde7:	cc                                              	int3
  5abde8:	cc                                              	int3
  5abde9:	cc                                              	int3
  5abdea:	cc                                              	int3
  5abdeb:	cc                                              	int3
  5abdec:	cc                                              	int3
  5abded:	cc                                              	int3
  5abdee:	cc                                              	int3
  5abdef:	cc                                              	int3
