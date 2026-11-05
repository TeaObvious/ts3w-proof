# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b6da10 (PoolRenderManager_HandleLotEvent)
Paired actual Ghidra pseudocode: 00B6DA10_PoolRenderManager_HandleLotEvent.c
Envelope [0x00b6da10,0x00b6dcfb); 747 bytes; exact owned ranges: [0x00b6da10,0x00b6dcfb)
Owned: 747 original bytes / 253 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b6da10 <original>:
  00b6da10:	83 ec 30                                       	SUB ESP,0x30
  00b6da13:	53                                             	PUSH EBX
  00b6da14:	55                                             	PUSH EBP
  00b6da15:	8b e9                                          	MOV EBP,ECX
  00b6da17:	8b 45 04                                       	MOV EAX,dword ptr [EBP + 0x4]
  00b6da1a:	8b 4c 24 3c                                    	MOV ECX,dword ptr [ESP + 0x3c]
  00b6da1e:	81 f9 8c d8 51 52                              	CMP ECX,0x5251d88c
  00b6da24:	8b 50 10                                       	MOV EDX,dword ptr [EAX + 0x10]
  00b6da27:	8b 40 14                                       	MOV EAX,dword ptr [EAX + 0x14]
  00b6da2a:	56                                             	PUSH ESI
  00b6da2b:	57                                             	PUSH EDI
  00b6da2c:	0f 87 89 02 00 00                              	JA 0x00b6dcbb
  00b6da32:	0f 84 93 02 00 00                              	JZ 0x00b6dccb
  00b6da38:	81 f9 1d bf fa 03                              	CMP ECX,0x3fabf1d
  00b6da3e:	0f 84 9f 01 00 00                              	JZ 0x00b6dbe3
  00b6da44:	81 f9 32 8d 4d 04                              	CMP ECX,0x44d8d32
  00b6da4a:	0f 85 9f 02 00 00                              	JNZ 0x00b6dcef
  00b6da50:	8b 7c 24 48                                    	MOV EDI,dword ptr [ESP + 0x48]
  00b6da54:	8b 4f 08                                       	MOV ECX,dword ptr [EDI + 0x8]
  00b6da57:	3b ca                                          	CMP ECX,EDX
  00b6da59:	75 07                                          	JNZ 0x00b6da62
  00b6da5b:	8b 57 0c                                       	MOV EDX,dword ptr [EDI + 0xc]
  00b6da5e:	3b d0                                          	CMP EDX,EAX
  00b6da60:	74 0c                                          	JZ 0x00b6da6e
  00b6da62:	5f                                             	POP EDI
  00b6da63:	5e                                             	POP ESI
  00b6da64:	5d                                             	POP EBP
  00b6da65:	32 c0                                          	XOR AL,AL
  00b6da67:	5b                                             	POP EBX
  00b6da68:	83 c4 30                                       	ADD ESP,0x30
  00b6da6b:	c2 08 00                                       	RET 0x8
  00b6da6e:	0f be 47 12                                    	MOVSX EAX,byte ptr [EDI + 0x12]
  00b6da72:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00b6da76:	51                                             	PUSH ECX
  00b6da77:	8d 54 24 34                                    	LEA EDX,[ESP + 0x34]
  00b6da7b:	8d 75 20                                       	LEA ESI,[EBP + 0x20]
  00b6da7e:	52                                             	PUSH EDX
  00b6da7f:	8b ce                                          	MOV ECX,ESI
  00b6da81:	89 44 24 20                                    	MOV dword ptr [ESP + 0x20],EAX
  00b6da85:	e8 26 df ee ff                                 	CALL 0x00a5b9b0
  00b6da8a:	8b 4e 08                                       	MOV ECX,dword ptr [ESI + 0x8]
  00b6da8d:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  00b6da90:	8b 44 24 30                                    	MOV EAX,dword ptr [ESP + 0x30]
  00b6da94:	3b 04 8a                                       	CMP EAX,dword ptr [EDX + ECX*0x4]
  00b6da97:	c7 44 24 14 00 00 00 00                        	MOV dword ptr [ESP + 0x14],0x0
  00b6da9f:	75 6a                                          	JNZ 0x00b6db0b
  00b6daa1:	6a 00                                          	PUSH 0x0
  00b6daa3:	6a 00                                          	PUSH 0x0
  00b6daa5:	6a 00                                          	PUSH 0x0
  00b6daa7:	6a 00                                          	PUSH 0x0
  00b6daa9:	68 e0 fa 06 01                                 	PUSH 0x106fae0
  00b6daae:	68 80 02 00 00                                 	PUSH 0x280
  00b6dab3:	e8 48 6a 97 ff                                 	CALL 0x004e4500
  00b6dab8:	83 c4 18                                       	ADD ESP,0x18
  00b6dabb:	85 c0                                          	TEST EAX,EAX
  00b6dabd:	74 09                                          	JZ 0x00b6dac8
  00b6dabf:	8b c8                                          	MOV ECX,EAX
  00b6dac1:	e8 2a 8b ff ff                                 	CALL 0x00b665f0
  00b6dac6:	eb 02                                          	JMP 0x00b6daca
  00b6dac8:	33 c0                                          	XOR EAX,EAX
  00b6daca:	50                                             	PUSH EAX
  00b6dacb:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00b6dacf:	e8 2c b2 d5 ff                                 	CALL 0x008c8d00
  00b6dad4:	0f be 47 12                                    	MOVSX EAX,byte ptr [EDI + 0x12]
  00b6dad8:	8b 4d 04                                       	MOV ECX,dword ptr [EBP + 0x4]
  00b6dadb:	8b 5c 24 14                                    	MOV EBX,dword ptr [ESP + 0x14]
  00b6dadf:	50                                             	PUSH EAX
  00b6dae0:	55                                             	PUSH EBP
  00b6dae1:	51                                             	PUSH ECX
  00b6dae2:	8b cb                                          	MOV ECX,EBX
  00b6dae4:	e8 b7 9c ff ff                                 	CALL 0x00b677a0
  00b6dae9:	0f be 57 12                                    	MOVSX EDX,byte ptr [EDI + 0x12]
  00b6daed:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  00b6daf1:	50                                             	PUSH EAX
  00b6daf2:	8d 4c 24 20                                    	LEA ECX,[ESP + 0x20]
  00b6daf6:	51                                             	PUSH ECX
  00b6daf7:	8b ce                                          	MOV ECX,ESI
  00b6daf9:	89 54 24 24                                    	MOV dword ptr [ESP + 0x24],EDX
  00b6dafd:	e8 ae 5a c8 ff                                 	CALL 0x007f35b0
  00b6db02:	8b c8                                          	MOV ECX,EAX
  00b6db04:	e8 07 ba a3 ff                                 	CALL 0x005a9510
  00b6db09:	eb 11                                          	JMP 0x00b6db1c
  00b6db0b:	83 c0 04                                       	ADD EAX,0x4
  00b6db0e:	50                                             	PUSH EAX
  00b6db0f:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00b6db13:	e8 f8 b9 a3 ff                                 	CALL 0x005a9510
  00b6db18:	8b 5c 24 14                                    	MOV EBX,dword ptr [ESP + 0x14]
  00b6db1c:	85 db                                          	TEST EBX,EBX
  00b6db1e:	0f 84 7e 00 00 00                              	JZ 0x00b6dba2
  00b6db24:	83 7f 2c 00                                    	CMP dword ptr [EDI + 0x2c],0x0
  00b6db28:	75 16                                          	JNZ 0x00b6db40
  00b6db2a:	0f b6 57 34                                    	MOVZX EDX,byte ptr [EDI + 0x34]
  00b6db2e:	52                                             	PUSH EDX
  00b6db2f:	8d 47 13                                       	LEA EAX,[EDI + 0x13]
  00b6db32:	50                                             	PUSH EAX
  00b6db33:	8d 4f 10                                       	LEA ECX,[EDI + 0x10]
  00b6db36:	51                                             	PUSH ECX
  00b6db37:	8b cb                                          	MOV ECX,EBX
  00b6db39:	e8 e2 85 ff ff                                 	CALL 0x00b66120
  00b6db3e:	eb 62                                          	JMP 0x00b6dba2
  00b6db40:	8b 77 20                                       	MOV ESI,dword ptr [EDI + 0x20]
  00b6db43:	8d 47 1c                                       	LEA EAX,[EDI + 0x1c]
  00b6db46:	3b f0                                          	CMP ESI,EAX
  00b6db48:	74 58                                          	JZ 0x00b6dba2
  00b6db4a:	8d 9b 00 00 00 00                              	LEA EBX,[EBX]
  00b6db50:	0f b6 46 14                                    	MOVZX EAX,byte ptr [ESI + 0x14]
  00b6db54:	0f b6 56 10                                    	MOVZX EDX,byte ptr [ESI + 0x10]
  00b6db58:	8a 4e 18                                       	MOV CL,byte ptr [ESI + 0x18]
  00b6db5b:	88 44 24 11                                    	MOV byte ptr [ESP + 0x11],AL
  00b6db5f:	8a 47 12                                       	MOV AL,byte ptr [EDI + 0x12]
  00b6db62:	88 54 24 10                                    	MOV byte ptr [ESP + 0x10],DL
  00b6db66:	0f b6 56 1c                                    	MOVZX EDX,byte ptr [ESI + 0x1c]
  00b6db6a:	88 44 24 12                                    	MOV byte ptr [ESP + 0x12],AL
  00b6db6e:	88 44 24 46                                    	MOV byte ptr [ESP + 0x46],AL
  00b6db72:	0f b6 47 34                                    	MOVZX EAX,byte ptr [EDI + 0x34]
  00b6db76:	88 4c 24 44                                    	MOV byte ptr [ESP + 0x44],CL
  00b6db7a:	50                                             	PUSH EAX
  00b6db7b:	8d 4c 24 48                                    	LEA ECX,[ESP + 0x48]
  00b6db7f:	88 54 24 49                                    	MOV byte ptr [ESP + 0x49],DL
  00b6db83:	51                                             	PUSH ECX
  00b6db84:	8d 54 24 18                                    	LEA EDX,[ESP + 0x18]
  00b6db88:	52                                             	PUSH EDX
  00b6db89:	8b cb                                          	MOV ECX,EBX
  00b6db8b:	e8 90 85 ff ff                                 	CALL 0x00b66120
  00b6db90:	56                                             	PUSH ESI
  00b6db91:	e8 9a 34 97 ff                                 	CALL 0x004e1030
  00b6db96:	8b f0                                          	MOV ESI,EAX
  00b6db98:	8d 47 1c                                       	LEA EAX,[EDI + 0x1c]
  00b6db9b:	83 c4 04                                       	ADD ESP,0x4
  00b6db9e:	3b f0                                          	CMP ESI,EAX
  00b6dba0:	75 ae                                          	JNZ 0x00b6db50
  00b6dba2:	0f be 47 12                                    	MOVSX EAX,byte ptr [EDI + 0x12]
  00b6dba6:	c6 44 24 20 00                                 	MOV byte ptr [ESP + 0x20],0x0
  00b6dbab:	8b 4c 24 20                                    	MOV ECX,dword ptr [ESP + 0x20]
  00b6dbaf:	51                                             	PUSH ECX
  00b6dbb0:	8d 54 24 28                                    	LEA EDX,[ESP + 0x28]
  00b6dbb4:	89 44 24 28                                    	MOV dword ptr [ESP + 0x28],EAX
  00b6dbb8:	52                                             	PUSH EDX
  00b6dbb9:	8d 44 24 40                                    	LEA EAX,[ESP + 0x40]
  00b6dbbd:	50                                             	PUSH EAX
  00b6dbbe:	8d 4d 40                                       	LEA ECX,[EBP + 0x40]
  00b6dbc1:	e8 aa ae ab ff                                 	CALL 0x00628a70
  00b6dbc6:	85 db                                          	TEST EBX,EBX
  00b6dbc8:	0f 84 21 01 00 00                              	JZ 0x00b6dcef
  00b6dbce:	8b 13                                          	MOV EDX,dword ptr [EBX]
  00b6dbd0:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  00b6dbd3:	8b cb                                          	MOV ECX,EBX
  00b6dbd5:	ff d0                                          	CALL EAX
  00b6dbd7:	5f                                             	POP EDI
  00b6dbd8:	5e                                             	POP ESI
  00b6dbd9:	5d                                             	POP EBP
  00b6dbda:	b0 01                                          	MOV AL,0x1
  00b6dbdc:	5b                                             	POP EBX
  00b6dbdd:	83 c4 30                                       	ADD ESP,0x30
  00b6dbe0:	c2 08 00                                       	RET 0x8
  00b6dbe3:	8b 74 24 48                                    	MOV ESI,dword ptr [ESP + 0x48]
  00b6dbe7:	8b 4e 08                                       	MOV ECX,dword ptr [ESI + 0x8]
  00b6dbea:	8b 79 48                                       	MOV EDI,dword ptr [ECX + 0x48]
  00b6dbed:	3b fa                                          	CMP EDI,EDX
  00b6dbef:	0f 85 fa 00 00 00                              	JNZ 0x00b6dcef
  00b6dbf5:	8b 49 4c                                       	MOV ECX,dword ptr [ECX + 0x4c]
  00b6dbf8:	3b c8                                          	CMP ECX,EAX
  00b6dbfa:	0f 85 ef 00 00 00                              	JNZ 0x00b6dcef
  00b6dc00:	80 7d 7c 00                                    	CMP byte ptr [EBP + 0x7c],0x0
  00b6dc04:	75 38                                          	JNZ 0x00b6dc3e
  00b6dc06:	83 7e 0c 00                                    	CMP dword ptr [ESI + 0xc],0x0
  00b6dc0a:	74 32                                          	JZ 0x00b6dc3e
  00b6dc0c:	8b 95 b0 00 00 00                              	MOV EDX,dword ptr [EBP + 0xb0]
  00b6dc12:	f6 c2 01                                       	TEST DL,0x1
  00b6dc15:	8d 8d b0 00 00 00                              	LEA ECX,[EBP + 0xb0]
  00b6dc1b:	74 05                                          	JZ 0x00b6dc22
  00b6dc1d:	e8 2e 84 c8 ff                                 	CALL 0x007f6050
  00b6dc22:	8b 85 b4 00 00 00                              	MOV EAX,dword ptr [EBP + 0xb4]
  00b6dc28:	a8 01                                          	TEST AL,0x1
  00b6dc2a:	8d 8d b4 00 00 00                              	LEA ECX,[EBP + 0xb4]
  00b6dc30:	74 05                                          	JZ 0x00b6dc37
  00b6dc32:	e8 19 84 c8 ff                                 	CALL 0x007f6050
  00b6dc37:	8b cd                                          	MOV ECX,EBP
  00b6dc39:	e8 e2 f4 ff ff                                 	CALL 0x00b6d120
  00b6dc3e:	8d 4c 24 28                                    	LEA ECX,[ESP + 0x28]
  00b6dc42:	83 c5 20                                       	ADD EBP,0x20
  00b6dc45:	51                                             	PUSH ECX
  00b6dc46:	8b cd                                          	MOV ECX,EBP
  00b6dc48:	e8 23 d1 dc ff                                 	CALL 0x0093ad70
  00b6dc4d:	8b 55 08                                       	MOV EDX,dword ptr [EBP + 0x8]
  00b6dc50:	8b 45 04                                       	MOV EAX,dword ptr [EBP + 0x4]
  00b6dc53:	8b 1c 90                                       	MOV EBX,dword ptr [EAX + EDX*0x4]
  00b6dc56:	8b 74 24 28                                    	MOV ESI,dword ptr [ESP + 0x28]
  00b6dc5a:	3b f3                                          	CMP ESI,EBX
  00b6dc5c:	0f 84 8d 00 00 00                              	JZ 0x00b6dcef
  00b6dc62:	8b 6c 24 2c                                    	MOV EBP,dword ptr [ESP + 0x2c]
  00b6dc66:	8b 7e 04                                       	MOV EDI,dword ptr [ESI + 0x4]
  00b6dc69:	85 ff                                          	TEST EDI,EDI
  00b6dc6b:	74 08                                          	JZ 0x00b6dc75
  00b6dc6d:	8b 17                                          	MOV EDX,dword ptr [EDI]
  00b6dc6f:	8b 02                                          	MOV EAX,dword ptr [EDX]
  00b6dc71:	8b cf                                          	MOV ECX,EDI
  00b6dc73:	ff d0                                          	CALL EAX
  00b6dc75:	83 3e ff                                       	CMP dword ptr [ESI],-0x1
  00b6dc78:	7e 13                                          	JLE 0x00b6dc8d
  00b6dc7a:	85 ff                                          	TEST EDI,EDI
  00b6dc7c:	74 1c                                          	JZ 0x00b6dc9a
  00b6dc7e:	8b 4c 24 48                                    	MOV ECX,dword ptr [ESP + 0x48]
  00b6dc82:	8b 51 0c                                       	MOV EDX,dword ptr [ECX + 0xc]
  00b6dc85:	52                                             	PUSH EDX
  00b6dc86:	8b cf                                          	MOV ECX,EDI
  00b6dc88:	e8 43 83 ff ff                                 	CALL 0x00b65fd0
  00b6dc8d:	85 ff                                          	TEST EDI,EDI
  00b6dc8f:	74 09                                          	JZ 0x00b6dc9a
  00b6dc91:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00b6dc93:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00b6dc96:	8b cf                                          	MOV ECX,EDI
  00b6dc98:	ff d2                                          	CALL EDX
  00b6dc9a:	8b 76 08                                       	MOV ESI,dword ptr [ESI + 0x8]
  00b6dc9d:	85 f6                                          	TEST ESI,ESI
  00b6dc9f:	75 0a                                          	JNZ 0x00b6dcab
  00b6dca1:	8b 75 04                                       	MOV ESI,dword ptr [EBP + 0x4]
  00b6dca4:	83 c5 04                                       	ADD EBP,0x4
  00b6dca7:	85 f6                                          	TEST ESI,ESI
  00b6dca9:	74 f6                                          	JZ 0x00b6dca1
  00b6dcab:	3b f3                                          	CMP ESI,EBX
  00b6dcad:	75 b7                                          	JNZ 0x00b6dc66
  00b6dcaf:	5f                                             	POP EDI
  00b6dcb0:	5e                                             	POP ESI
  00b6dcb1:	5d                                             	POP EBP
  00b6dcb2:	b0 01                                          	MOV AL,0x1
  00b6dcb4:	5b                                             	POP EBX
  00b6dcb5:	83 c4 30                                       	ADD ESP,0x30
  00b6dcb8:	c2 08 00                                       	RET 0x8
  00b6dcbb:	81 f9 d2 d9 51 92                              	CMP ECX,0x9251d9d2
  00b6dcc1:	74 08                                          	JZ 0x00b6dccb
  00b6dcc3:	81 f9 0a 94 26 b1                              	CMP ECX,0xb126940a
  00b6dcc9:	75 24                                          	JNZ 0x00b6dcef
  00b6dccb:	8b 4c 24 48                                    	MOV ECX,dword ptr [ESP + 0x48]
  00b6dccf:	8b 71 08                                       	MOV ESI,dword ptr [ECX + 0x8]
  00b6dcd2:	3b f2                                          	CMP ESI,EDX
  00b6dcd4:	75 19                                          	JNZ 0x00b6dcef
  00b6dcd6:	8b 49 0c                                       	MOV ECX,dword ptr [ECX + 0xc]
  00b6dcd9:	3b c8                                          	CMP ECX,EAX
  00b6dcdb:	75 12                                          	JNZ 0x00b6dcef
  00b6dcdd:	33 c0                                          	XOR EAX,EAX
  00b6dcdf:	c6 45 1d 01                                    	MOV byte ptr [EBP + 0x1d],0x1
  00b6dce3:	89 45 60                                       	MOV dword ptr [EBP + 0x60],EAX
  00b6dce6:	89 45 64                                       	MOV dword ptr [EBP + 0x64],EAX
  00b6dce9:	89 45 68                                       	MOV dword ptr [EBP + 0x68],EAX
  00b6dcec:	89 45 6c                                       	MOV dword ptr [EBP + 0x6c],EAX
  00b6dcef:	5f                                             	POP EDI
  00b6dcf0:	5e                                             	POP ESI
  00b6dcf1:	5d                                             	POP EBP
  00b6dcf2:	b0 01                                          	MOV AL,0x1
  00b6dcf4:	5b                                             	POP EBX
  00b6dcf5:	83 c4 30                                       	ADD ESP,0x30
  00b6dcf8:	c2 08 00                                       	RET 0x8
