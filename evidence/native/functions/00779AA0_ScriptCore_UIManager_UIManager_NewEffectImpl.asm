# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779aa0 (ScriptCore.UIManager::UIManager_NewEffectImpl)
Paired Ghidra pseudocode: 00779AA0_ScriptCore_UIManager_UIManager_NewEffectImpl.c
Window: [0x00779aa0, 0x00779c10) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779aa0: 8b 44 24 04 83 f8 06 56 57 0f 87 36 01 00 00 ff
00779ab0: 24 85 ec 9b 77 00 6a 00 68 b8 ef 00 01 6a 04 6a
00779ac0: 78 e8 ea b5 d8 ff 83 c4 10 85 c0 0f 84 14 01 00
00779ad0: 00 8b c8 e8 28 8f da ff e9 dc 00 00 00 6a 00 68
00779ae0: 98 ef 00 01 6a 04 68 80 00 00 00 e8 c0 b5 d8 ff
00779af0: 83 c4 10 85 c0 0f 84 ea 00 00 00 8b c8 e8 4e a0
00779b00: da ff e9 b2 00 00 00 6a 00 68 78 ef 00 01 6a 04
00779b10: 68 cc 00 00 00 e8 96 b5 d8 ff 83 c4 10 85 c0 0f
00779b20: 84 c0 00 00 00 8b c8 e8 04 94 db ff e9 88 00 00
00779b30: 00 6a 00 68 58 ef 00 01 6a 04 6a 7c e8 6f b5 d8
00779b40: ff 83 c4 10 85 c0 0f 84 99 00 00 00 8b c8 e8 7d
00779b50: b1 db ff eb 64 6a 00 68 38 ef 00 01 6a 10 68 a0
00779b60: 00 00 00 e8 48 b5 d8 ff 83 c4 10 85 c0 74 76 8b
00779b70: c8 e8 ba c2 db ff eb 41 6a 00 68 1c ef 00 01 6a
00779b80: 04 68 88 00 00 00 e8 25 b5 d8 ff 83 c4 10 85 c0
00779b90: 74 53 8b c8 e8 c7 aa 06 00 eb 1e 6a 00 68 f8 ee
00779ba0: 00 01 6a 04 6a 28 e8 05 b5 d8 ff 83 c4 10 85 c0
00779bb0: 74 33 8b c8 e8 a7 c8 d9 ff 85 c0 74 28 8d 70 10
00779bc0: 85 f6 74 21 e8 c7 f7 fe ff 8b f8 8b 06 8b 10 8b
00779bd0: ce ff d2 8b 07 8b 90 c8 00 00 00 6a 30 56 8b cf
00779be0: ff d2 5f 5e c3 5f 33 c0 5e c3 8b ff b6 9a 77 00
00779bf0: dd 9a 77 00 07 9b 77 00 31 9b 77 00 55 9b 77 00
00779c00: 78 9b 77 00 9b 9b 77 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00779aa0 <.text+0x378aa0>:
  779aa0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  779aa4:	83 f8 06                                        	cmp    eax,0x6
  779aa7:	56                                              	push   esi
  779aa8:	57                                              	push   edi
  779aa9:	0f 87 36 01 00 00                               	ja     0x779be5
  779aaf:	ff 24 85 ec 9b 77 00                            	jmp    DWORD PTR [eax*4+0x779bec]
  779ab6:	6a 00                                           	push   0x0
  779ab8:	68 b8 ef 00 01                                  	push   0x100efb8
  779abd:	6a 04                                           	push   0x4
  779abf:	6a 78                                           	push   0x78
  779ac1:	e8 ea b5 d8 ff                                  	call   0x5050b0
  779ac6:	83 c4 10                                        	add    esp,0x10
  779ac9:	85 c0                                           	test   eax,eax
  779acb:	0f 84 14 01 00 00                               	je     0x779be5
  779ad1:	8b c8                                           	mov    ecx,eax
  779ad3:	e8 28 8f da ff                                  	call   0x522a00
  779ad8:	e9 dc 00 00 00                                  	jmp    0x779bb9
  779add:	6a 00                                           	push   0x0
  779adf:	68 98 ef 00 01                                  	push   0x100ef98
  779ae4:	6a 04                                           	push   0x4
  779ae6:	68 80 00 00 00                                  	push   0x80
  779aeb:	e8 c0 b5 d8 ff                                  	call   0x5050b0
  779af0:	83 c4 10                                        	add    esp,0x10
  779af3:	85 c0                                           	test   eax,eax
  779af5:	0f 84 ea 00 00 00                               	je     0x779be5
  779afb:	8b c8                                           	mov    ecx,eax
  779afd:	e8 4e a0 da ff                                  	call   0x523b50
  779b02:	e9 b2 00 00 00                                  	jmp    0x779bb9
  779b07:	6a 00                                           	push   0x0
  779b09:	68 78 ef 00 01                                  	push   0x100ef78
  779b0e:	6a 04                                           	push   0x4
  779b10:	68 cc 00 00 00                                  	push   0xcc
  779b15:	e8 96 b5 d8 ff                                  	call   0x5050b0
  779b1a:	83 c4 10                                        	add    esp,0x10
  779b1d:	85 c0                                           	test   eax,eax
  779b1f:	0f 84 c0 00 00 00                               	je     0x779be5
  779b25:	8b c8                                           	mov    ecx,eax
  779b27:	e8 04 94 db ff                                  	call   0x532f30
  779b2c:	e9 88 00 00 00                                  	jmp    0x779bb9
  779b31:	6a 00                                           	push   0x0
  779b33:	68 58 ef 00 01                                  	push   0x100ef58
  779b38:	6a 04                                           	push   0x4
  779b3a:	6a 7c                                           	push   0x7c
  779b3c:	e8 6f b5 d8 ff                                  	call   0x5050b0
  779b41:	83 c4 10                                        	add    esp,0x10
  779b44:	85 c0                                           	test   eax,eax
  779b46:	0f 84 99 00 00 00                               	je     0x779be5
  779b4c:	8b c8                                           	mov    ecx,eax
  779b4e:	e8 7d b1 db ff                                  	call   0x534cd0
  779b53:	eb 64                                           	jmp    0x779bb9
  779b55:	6a 00                                           	push   0x0
  779b57:	68 38 ef 00 01                                  	push   0x100ef38
  779b5c:	6a 10                                           	push   0x10
  779b5e:	68 a0 00 00 00                                  	push   0xa0
  779b63:	e8 48 b5 d8 ff                                  	call   0x5050b0
  779b68:	83 c4 10                                        	add    esp,0x10
  779b6b:	85 c0                                           	test   eax,eax
  779b6d:	74 76                                           	je     0x779be5
  779b6f:	8b c8                                           	mov    ecx,eax
  779b71:	e8 ba c2 db ff                                  	call   0x535e30
  779b76:	eb 41                                           	jmp    0x779bb9
  779b78:	6a 00                                           	push   0x0
  779b7a:	68 1c ef 00 01                                  	push   0x100ef1c
  779b7f:	6a 04                                           	push   0x4
  779b81:	68 88 00 00 00                                  	push   0x88
  779b86:	e8 25 b5 d8 ff                                  	call   0x5050b0
  779b8b:	83 c4 10                                        	add    esp,0x10
  779b8e:	85 c0                                           	test   eax,eax
  779b90:	74 53                                           	je     0x779be5
  779b92:	8b c8                                           	mov    ecx,eax
  779b94:	e8 c7 aa 06 00                                  	call   0x7e4660
  779b99:	eb 1e                                           	jmp    0x779bb9
  779b9b:	6a 00                                           	push   0x0
  779b9d:	68 f8 ee 00 01                                  	push   0x100eef8
  779ba2:	6a 04                                           	push   0x4
  779ba4:	6a 28                                           	push   0x28
  779ba6:	e8 05 b5 d8 ff                                  	call   0x5050b0
  779bab:	83 c4 10                                        	add    esp,0x10
  779bae:	85 c0                                           	test   eax,eax
  779bb0:	74 33                                           	je     0x779be5
  779bb2:	8b c8                                           	mov    ecx,eax
  779bb4:	e8 a7 c8 d9 ff                                  	call   0x516460
  779bb9:	85 c0                                           	test   eax,eax
  779bbb:	74 28                                           	je     0x779be5
  779bbd:	8d 70 10                                        	lea    esi,[eax+0x10]
  779bc0:	85 f6                                           	test   esi,esi
  779bc2:	74 21                                           	je     0x779be5
  779bc4:	e8 c7 f7 fe ff                                  	call   0x769390
  779bc9:	8b f8                                           	mov    edi,eax
  779bcb:	8b 06                                           	mov    eax,DWORD PTR [esi]
  779bcd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779bcf:	8b ce                                           	mov    ecx,esi
  779bd1:	ff d2                                           	call   edx
  779bd3:	8b 07                                           	mov    eax,DWORD PTR [edi]
  779bd5:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
  779bdb:	6a 30                                           	push   0x30
  779bdd:	56                                              	push   esi
  779bde:	8b cf                                           	mov    ecx,edi
  779be0:	ff d2                                           	call   edx
  779be2:	5f                                              	pop    edi
  779be3:	5e                                              	pop    esi
  779be4:	c3                                              	ret
  779be5:	5f                                              	pop    edi
  779be6:	33 c0                                           	xor    eax,eax
  779be8:	5e                                              	pop    esi
  779be9:	c3                                              	ret
  779bea:	8b ff                                           	mov    edi,edi
  779bec:	b6 9a                                           	mov    dh,0x9a
  779bee:	77 00                                           	ja     0x779bf0
  779bf0:	dd 9a 77 00 07 9b                               	fstp   QWORD PTR [edx-0x64f8ff89]
  779bf6:	77 00                                           	ja     0x779bf8
  779bf8:	31 9b 77 00 55 9b                               	xor    DWORD PTR [ebx-0x64aaff89],ebx
  779bfe:	77 00                                           	ja     0x779c00
  779c00:	78 9b                                           	js     0x779b9d
  779c02:	77 00                                           	ja     0x779c04
  779c04:	9b                                              	fwait
  779c05:	9b                                              	fwait
  779c06:	77 00                                           	ja     0x779c08
  779c08:	cc                                              	int3
  779c09:	cc                                              	int3
  779c0a:	cc                                              	int3
  779c0b:	cc                                              	int3
  779c0c:	cc                                              	int3
  779c0d:	cc                                              	int3
  779c0e:	cc                                              	int3
  779c0f:	cc                                              	int3
