# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00aafb40 (LoadSaveManager_DispatchLoad)
Paired actual Ghidra pseudocode: 00AAFB40_LoadSaveManager_DispatchLoad.c
Envelope [0x00aafb40,0x00aafdb7); 631 bytes; exact owned ranges: [0x00aafb40,0x00aafdb7)
Owned: 631 original bytes / 211 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00aafb40 <original>:
  00aafb40:	55                                             	PUSH EBP
  00aafb41:	8b ec                                          	MOV EBP,ESP
  00aafb43:	83 e4 f8                                       	AND ESP,0xfffffff8
  00aafb46:	b8 b4 1c 00 00                                 	MOV EAX,0x1cb4
  00aafb4b:	e8 f0 fc 4c 00                                 	CALL 0x00f7f840
  00aafb50:	53                                             	PUSH EBX
  00aafb51:	8b 5d 08                                       	MOV EBX,dword ptr [EBP + 0x8]
  00aafb54:	85 db                                          	TEST EBX,EBX
  00aafb56:	56                                             	PUSH ESI
  00aafb57:	8b f1                                          	MOV ESI,ECX
  00aafb59:	8a 46 1c                                       	MOV AL,byte ptr [ESI + 0x1c]
  00aafb5c:	57                                             	PUSH EDI
  00aafb5d:	89 74 24 14                                    	MOV dword ptr [ESP + 0x14],ESI
  00aafb61:	88 44 24 10                                    	MOV byte ptr [ESP + 0x10],AL
  00aafb65:	75 04                                          	JNZ 0x00aafb6b
  00aafb67:	84 c0                                          	TEST AL,AL
  00aafb69:	74 68                                          	JZ 0x00aafbd3
  00aafb6b:	80 7e 1d 00                                    	CMP byte ptr [ESI + 0x1d],0x0
  00aafb6f:	75 62                                          	JNZ 0x00aafbd3
  00aafb71:	a1 c4 db 1e 01                                 	MOV EAX,[0x011edbc4]
  00aafb76:	85 c0                                          	TEST EAX,EAX
  00aafb78:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00aafb7c:	74 55                                          	JZ 0x00aafbd3
  00aafb7e:	8d 4c 24 20                                    	LEA ECX,[ESP + 0x20]
  00aafb82:	c7 80 b4 01 00 00 01 00 00 00                  	MOV dword ptr [EAX + 0x1b4],0x1
  00aafb8c:	c6 40 44 01                                    	MOV byte ptr [EAX + 0x44],0x1
  00aafb90:	e8 4b cc a3 ff                                 	CALL 0x004ec7e0
  00aafb95:	85 db                                          	TEST EBX,EBX
  00aafb97:	74 05                                          	JZ 0x00aafb9e
  00aafb99:	8b 43 08                                       	MOV EAX,dword ptr [EBX + 0x8]
  00aafb9c:	eb 02                                          	JMP 0x00aafba0
  00aafb9e:	33 c0                                          	XOR EAX,EAX
  00aafba0:	50                                             	PUSH EAX
  00aafba1:	8d 8c 24 34 04 00 00                           	LEA ECX,[ESP + 0x434]
  00aafba8:	e8 73 af ff ff                                 	CALL 0x00aaab20
  00aafbad:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  00aafbb1:	50                                             	PUSH EAX
  00aafbb2:	6a 01                                          	PUSH 0x1
  00aafbb4:	8d 8c 24 38 04 00 00                           	LEA ECX,[ESP + 0x438]
  00aafbbb:	51                                             	PUSH ECX
  00aafbbc:	8b ce                                          	MOV ECX,ESI
  00aafbbe:	e8 1d d4 ff ff                                 	CALL 0x00aacfe0
  00aafbc3:	85 c0                                          	TEST EAX,EAX
  00aafbc5:	74 17                                          	JZ 0x00aafbde
  00aafbc7:	8d 8c 24 30 04 00 00                           	LEA ECX,[ESP + 0x430]
  00aafbce:	e8 fd a5 ff ff                                 	CALL 0x00aaa1d0
  00aafbd3:	32 c0                                          	XOR AL,AL
  00aafbd5:	5f                                             	POP EDI
  00aafbd6:	5e                                             	POP ESI
  00aafbd7:	5b                                             	POP EBX
  00aafbd8:	8b e5                                          	MOV ESP,EBP
  00aafbda:	5d                                             	POP EBP
  00aafbdb:	c2 04 00                                       	RET 0x4
  00aafbde:	80 7c 24 10 00                                 	CMP byte ptr [ESP + 0x10],0x0
  00aafbe3:	c6 44 24 0f 00                                 	MOV byte ptr [ESP + 0xf],0x0
  00aafbe8:	75 3f                                          	JNZ 0x00aafc29
  00aafbea:	8d 8c 24 70 0c 00 00                           	LEA ECX,[ESP + 0xc70]
  00aafbf1:	e8 aa 55 d3 ff                                 	CALL 0x007e51a0
  00aafbf6:	50                                             	PUSH EAX
  00aafbf7:	e8 74 c1 a2 ff                                 	CALL 0x004dbd70
  00aafbfc:	83 c4 04                                       	ADD ESP,0x4
  00aafbff:	84 c0                                          	TEST AL,AL
  00aafc01:	75 26                                          	JNZ 0x00aafc29
  00aafc03:	8d 8c 24 90 10 00 00                           	LEA ECX,[ESP + 0x1090]
  00aafc0a:	e8 91 55 d3 ff                                 	CALL 0x007e51a0
  00aafc0f:	50                                             	PUSH EAX
  00aafc10:	e8 5b c1 a2 ff                                 	CALL 0x004dbd70
  00aafc15:	83 c4 04                                       	ADD ESP,0x4
  00aafc18:	84 c0                                          	TEST AL,AL
  00aafc1a:	88 44 24 0f                                    	MOV byte ptr [ESP + 0xf],AL
  00aafc1e:	74 a7                                          	JZ 0x00aafbc7
  00aafc20:	8d b4 24 90 10 00 00                           	LEA ESI,[ESP + 0x1090]
  00aafc27:	eb 07                                          	JMP 0x00aafc30
  00aafc29:	8d b4 24 70 0c 00 00                           	LEA ESI,[ESP + 0xc70]
  00aafc30:	b9 04 01 00 00                                 	MOV ECX,0x104
  00aafc35:	8d 7c 24 20                                    	LEA EDI,[ESP + 0x20]
  00aafc39:	f3 a5                                          	MOVSD.REP ES:EDI,ESI
  00aafc3b:	33 ff                                          	XOR EDI,EDI
  00aafc3d:	57                                             	PUSH EDI
  00aafc3e:	57                                             	PUSH EDI
  00aafc3f:	57                                             	PUSH EDI
  00aafc40:	57                                             	PUSH EDI
  00aafc41:	68 c8 57 06 01                                 	PUSH 0x10657c8
  00aafc46:	68 98 03 00 00                                 	PUSH 0x398
  00aafc4b:	c6 44 24 26 00                                 	MOV byte ptr [ESP + 0x26],0x0
  00aafc50:	89 7c 24 30                                    	MOV dword ptr [ESP + 0x30],EDI
  00aafc54:	e8 07 4b a3 ff                                 	CALL 0x004e4760
  00aafc59:	8b f0                                          	MOV ESI,EAX
  00aafc5b:	83 c4 18                                       	ADD ESP,0x18
  00aafc5e:	3b f7                                          	CMP ESI,EDI
  00aafc60:	74 14                                          	JZ 0x00aafc76
  00aafc62:	57                                             	PUSH EDI
  00aafc63:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  00aafc67:	e8 34 55 d3 ff                                 	CALL 0x007e51a0
  00aafc6c:	50                                             	PUSH EAX
  00aafc6d:	8b ce                                          	MOV ECX,ESI
  00aafc6f:	e8 1c 96 9f ff                                 	CALL 0x004a9290
  00aafc74:	eb 02                                          	JMP 0x00aafc78
  00aafc76:	33 c0                                          	XOR EAX,EAX
  00aafc78:	50                                             	PUSH EAX
  00aafc79:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  00aafc7d:	e8 7e 0b 9f ff                                 	CALL 0x004a0800
  00aafc82:	8b 74 24 18                                    	MOV ESI,dword ptr [ESP + 0x18]
  00aafc86:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00aafc88:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  00aafc8b:	8b ce                                          	MOV ECX,ESI
  00aafc8d:	ff d0                                          	CALL EAX
  00aafc8f:	84 c0                                          	TEST AL,AL
  00aafc91:	74 74                                          	JZ 0x00aafd07
  00aafc93:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00aafc95:	8b 42 18                                       	MOV EAX,dword ptr [EDX + 0x18]
  00aafc98:	57                                             	PUSH EDI
  00aafc99:	6a 03                                          	PUSH 0x3
  00aafc9b:	6a 01                                          	PUSH 0x1
  00aafc9d:	8b ce                                          	MOV ECX,ESI
  00aafc9f:	ff d0                                          	CALL EAX
  00aafca1:	84 c0                                          	TEST AL,AL
  00aafca3:	74 31                                          	JZ 0x00aafcd6
  00aafca5:	3b df                                          	CMP EBX,EDI
  00aafca7:	74 14                                          	JZ 0x00aafcbd
  00aafca9:	80 7c 24 10 00                                 	CMP byte ptr [ESP + 0x10],0x0
  00aafcae:	75 0d                                          	JNZ 0x00aafcbd
  00aafcb0:	8b 4c 24 14                                    	MOV ECX,dword ptr [ESP + 0x14]
  00aafcb4:	53                                             	PUSH EBX
  00aafcb5:	83 c1 18                                       	ADD ECX,0x18
  00aafcb8:	e8 d3 68 ab ff                                 	CALL 0x00566590
  00aafcbd:	8b 4c 24 14                                    	MOV ECX,dword ptr [ESP + 0x14]
  00aafcc1:	56                                             	PUSH ESI
  00aafcc2:	e8 19 ba ff ff                                 	CALL 0x00aab6e0
  00aafcc7:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00aafcc9:	88 44 24 0e                                    	MOV byte ptr [ESP + 0xe],AL
  00aafccd:	8b 42 1c                                       	MOV EAX,dword ptr [EDX + 0x1c]
  00aafcd0:	8b ce                                          	MOV ECX,ESI
  00aafcd2:	ff d0                                          	CALL EAX
  00aafcd4:	eb 28                                          	JMP 0x00aafcfe
  00aafcd6:	8d 4c 24 20                                    	LEA ECX,[ESP + 0x20]
  00aafcda:	e8 c1 54 d3 ff                                 	CALL 0x007e51a0
  00aafcdf:	50                                             	PUSH EAX
  00aafce0:	e8 8b c0 a2 ff                                 	CALL 0x004dbd70
  00aafce5:	83 c4 04                                       	ADD ESP,0x4
  00aafce8:	84 c0                                          	TEST AL,AL
  00aafcea:	74 12                                          	JZ 0x00aafcfe
  00aafcec:	8d 4c 24 20                                    	LEA ECX,[ESP + 0x20]
  00aafcf0:	e8 ab 54 d3 ff                                 	CALL 0x007e51a0
  00aafcf5:	50                                             	PUSH EAX
  00aafcf6:	e8 75 c1 a2 ff                                 	CALL 0x004dbe70
  00aafcfb:	83 c4 04                                       	ADD ESP,0x4
  00aafcfe:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00aafd00:	8b 42 08                                       	MOV EAX,dword ptr [EDX + 0x8]
  00aafd03:	8b ce                                          	MOV ECX,ESI
  00aafd05:	ff d0                                          	CALL EAX
  00aafd07:	3b f7                                          	CMP ESI,EDI
  00aafd09:	74 0b                                          	JZ 0x00aafd16
  00aafd0b:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  00aafd0e:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  00aafd11:	8d 4e 04                                       	LEA ECX,[ESI + 0x4]
  00aafd14:	ff d0                                          	CALL EAX
  00aafd16:	80 7c 24 0e 00                                 	CMP byte ptr [ESP + 0xe],0x0
  00aafd1b:	8b 74 24 14                                    	MOV ESI,dword ptr [ESP + 0x14]
  00aafd1f:	75 26                                          	JNZ 0x00aafd47
  00aafd21:	8b 4e 18                                       	MOV ECX,dword ptr [ESI + 0x18]
  00aafd24:	3b cf                                          	CMP ECX,EDI
  00aafd26:	74 1f                                          	JZ 0x00aafd47
  00aafd28:	89 7e 18                                       	MOV dword ptr [ESI + 0x18],EDI
  00aafd2b:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00aafd2e:	83 c0 ff                                       	ADD EAX,-0x1
  00aafd31:	3b c7                                          	CMP EAX,EDI
  00aafd33:	89 41 04                                       	MOV dword ptr [ECX + 0x4],EAX
  00aafd36:	75 0f                                          	JNZ 0x00aafd47
  00aafd38:	c7 41 04 01 00 00 00                           	MOV dword ptr [ECX + 0x4],0x1
  00aafd3f:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00aafd41:	8b 02                                          	MOV EAX,dword ptr [EDX]
  00aafd43:	6a 01                                          	PUSH 0x1
  00aafd45:	ff d0                                          	CALL EAX
  00aafd47:	80 7c 24 10 00                                 	CMP byte ptr [ESP + 0x10],0x0
  00aafd4c:	75 48                                          	JNZ 0x00aafd96
  00aafd4e:	80 7c 24 0f 00                                 	CMP byte ptr [ESP + 0xf],0x0
  00aafd53:	75 41                                          	JNZ 0x00aafd96
  00aafd55:	e8 06 31 ed ff                                 	CALL 0x00982e60
  00aafd5a:	3b c7                                          	CMP EAX,EDI
  00aafd5c:	74 13                                          	JZ 0x00aafd71
  00aafd5e:	8b 88 64 06 00 00                              	MOV ECX,dword ptr [EAX + 0x664]
  00aafd64:	3b cf                                          	CMP ECX,EDI
  00aafd66:	74 09                                          	JZ 0x00aafd71
  00aafd68:	6a 01                                          	PUSH 0x1
  00aafd6a:	57                                             	PUSH EDI
  00aafd6b:	57                                             	PUSH EDI
  00aafd6c:	e8 af a6 f1 ff                                 	CALL 0x009ca420
  00aafd71:	8b 8c 24 40 08 00 00                           	MOV ECX,dword ptr [ESP + 0x840]
  00aafd78:	6a 01                                          	PUSH 0x1
  00aafd7a:	51                                             	PUSH ECX
  00aafd7b:	8b ce                                          	MOV ECX,ESI
  00aafd7d:	e8 8e f7 ff ff                                 	CALL 0x00aaf510
  00aafd82:	84 c0                                          	TEST AL,AL
  00aafd84:	75 04                                          	JNZ 0x00aafd8a
  00aafd86:	88 44 24 0e                                    	MOV byte ptr [ESP + 0xe],AL
  00aafd8a:	6a 01                                          	PUSH 0x1
  00aafd8c:	6a 01                                          	PUSH 0x1
  00aafd8e:	e8 bd d3 ff ff                                 	CALL 0x00aad150
  00aafd93:	83 c4 08                                       	ADD ESP,0x8
  00aafd96:	8b 54 24 1c                                    	MOV EDX,dword ptr [ESP + 0x1c]
  00aafd9a:	8d 8c 24 30 04 00 00                           	LEA ECX,[ESP + 0x430]
  00aafda1:	c6 42 44 00                                    	MOV byte ptr [EDX + 0x44],0x0
  00aafda5:	e8 26 a4 ff ff                                 	CALL 0x00aaa1d0
  00aafdaa:	8a 44 24 0e                                    	MOV AL,byte ptr [ESP + 0xe]
  00aafdae:	5f                                             	POP EDI
  00aafdaf:	5e                                             	POP ESI
  00aafdb0:	5b                                             	POP EBX
  00aafdb1:	8b e5                                          	MOV ESP,EBP
  00aafdb3:	5d                                             	POP EBP
  00aafdb4:	c2 04 00                                       	RET 0x4
