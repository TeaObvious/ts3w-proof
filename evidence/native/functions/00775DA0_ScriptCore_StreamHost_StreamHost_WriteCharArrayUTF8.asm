# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775da0 (ScriptCore.StreamHost::StreamHost_WriteCharArrayUTF8)
Paired actual Ghidra pseudocode: 00775DA0_ScriptCore_StreamHost_StreamHost_WriteCharArrayUTF8.c
Envelope [0x00775da0,0x00775ecd); 301 bytes; exact owned ranges: [0x00775da0,0x00775ecd)
Owned: 301 original bytes / 119 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00775da0 <original>:
  00775da0:	83 ec 2c                                       	SUB ESP,0x2c
  00775da3:	55                                             	PUSH EBP
  00775da4:	8b 6c 24 38                                    	MOV EBP,dword ptr [ESP + 0x38]
  00775da8:	85 ed                                          	TEST EBP,EBP
  00775daa:	75 08                                          	JNZ 0x00775db4
  00775dac:	8d 45 fa                                       	LEA EAX,[EBP + -0x6]
  00775daf:	5d                                             	POP EBP
  00775db0:	83 c4 2c                                       	ADD ESP,0x2c
  00775db3:	c3                                             	RET
  00775db4:	53                                             	PUSH EBX
  00775db5:	8b 5c 24 40                                    	MOV EBX,dword ptr [ESP + 0x40]
  00775db9:	85 db                                          	TEST EBX,EBX
  00775dbb:	57                                             	PUSH EDI
  00775dbc:	0f 8c ff 00 00 00                              	JL 0x00775ec1
  00775dc2:	8b 7c 24 48                                    	MOV EDI,dword ptr [ESP + 0x48]
  00775dc6:	85 ff                                          	TEST EDI,EDI
  00775dc8:	0f 8e f3 00 00 00                              	JLE 0x00775ec1
  00775dce:	8b 44 24 3c                                    	MOV EAX,dword ptr [ESP + 0x3c]
  00775dd2:	3b 05 38 78 1d 01                              	CMP EAX,dword ptr [0x011d7838]
  00775dd8:	56                                             	PUSH ESI
  00775dd9:	75 08                                          	JNZ 0x00775de3
  00775ddb:	8b 35 3c 78 1d 01                              	MOV ESI,dword ptr [0x011d783c]
  00775de1:	eb 0b                                          	JMP 0x00775dee
  00775de3:	50                                             	PUSH EAX
  00775de4:	e8 97 f0 ff ff                                 	CALL 0x00774e80
  00775de9:	83 c4 04                                       	ADD ESP,0x4
  00775dec:	8b f0                                          	MOV ESI,EAX
  00775dee:	85 f6                                          	TEST ESI,ESI
  00775df0:	75 0b                                          	JNZ 0x00775dfd
  00775df2:	8d 46 fe                                       	LEA EAX,[ESI + -0x2]
  00775df5:	5e                                             	POP ESI
  00775df6:	5f                                             	POP EDI
  00775df7:	5b                                             	POP EBX
  00775df8:	5d                                             	POP EBP
  00775df9:	83 c4 2c                                       	ADD ESP,0x2c
  00775dfc:	c3                                             	RET
  00775dfd:	c7 44 24 44 00 00 00 00                        	MOV dword ptr [ESP + 0x44],0x0
  00775e05:	e8 86 35 ff ff                                 	CALL 0x00769390
  00775e0a:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00775e0c:	8b 52 7c                                       	MOV EDX,dword ptr [EDX + 0x7c]
  00775e0f:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00775e13:	51                                             	PUSH ECX
  00775e14:	8d 4c 24 48                                    	LEA ECX,[ESP + 0x48]
  00775e18:	51                                             	PUSH ECX
  00775e19:	55                                             	PUSH EBP
  00775e1a:	8b c8                                          	MOV ECX,EAX
  00775e1c:	ff d2                                          	CALL EDX
  00775e1e:	83 7c 24 44 00                                 	CMP dword ptr [ESP + 0x44],0x0
  00775e23:	75 0d                                          	JNZ 0x00775e32
  00775e25:	5e                                             	POP ESI
  00775e26:	5f                                             	POP EDI
  00775e27:	5b                                             	POP EBX
  00775e28:	b8 fa ff ff ff                                 	MOV EAX,0xfffffffa
  00775e2d:	5d                                             	POP EBP
  00775e2e:	83 c4 2c                                       	ADD ESP,0x2c
  00775e31:	c3                                             	RET
  00775e32:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  00775e36:	3b d8                                          	CMP EBX,EAX
  00775e38:	7d 7a                                          	JGE 0x00775eb4
  00775e3a:	2b c3                                          	SUB EAX,EBX
  00775e3c:	3b c7                                          	CMP EAX,EDI
  00775e3e:	7c 74                                          	JL 0x00775eb4
  00775e40:	6a 01                                          	PUSH 0x1
  00775e42:	56                                             	PUSH ESI
  00775e43:	8d 4c 24 2c                                    	LEA ECX,[ESP + 0x2c]
  00775e47:	e8 94 35 06 00                                 	CALL 0x007d93e0
  00775e4c:	8b 44 24 44                                    	MOV EAX,dword ptr [ESP + 0x44]
  00775e50:	68 b8 d7 00 01                                 	PUSH 0x100d7b8
  00775e55:	57                                             	PUSH EDI
  00775e56:	50                                             	PUSH EAX
  00775e57:	8d 4c 24 20                                    	LEA ECX,[ESP + 0x20]
  00775e5b:	51                                             	PUSH ECX
  00775e5c:	e8 5f de d7 ff                                 	CALL 0x004f3cc0
  00775e61:	8b 4c 24 24                                    	MOV ECX,dword ptr [ESP + 0x24]
  00775e65:	8b 44 24 28                                    	MOV EAX,dword ptr [ESP + 0x28]
  00775e69:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00775e6b:	2b c1                                          	SUB EAX,ECX
  00775e6d:	83 c4 10                                       	ADD ESP,0x10
  00775e70:	50                                             	PUSH EAX
  00775e71:	8b 42 38                                       	MOV EAX,dword ptr [EDX + 0x38]
  00775e74:	51                                             	PUSH ECX
  00775e75:	8b ce                                          	MOV ECX,ESI
  00775e77:	ff d0                                          	CALL EAX
  00775e79:	84 c0                                          	TEST AL,AL
  00775e7b:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00775e7f:	75 1b                                          	JNZ 0x00775e9c
  00775e81:	e8 3a 68 fa ff                                 	CALL 0x0071c6c0
  00775e86:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  00775e8a:	e8 01 1b 06 00                                 	CALL 0x007d7990
  00775e8f:	5e                                             	POP ESI
  00775e90:	5f                                             	POP EDI
  00775e91:	5b                                             	POP EBX
  00775e92:	b8 fd ff ff ff                                 	MOV EAX,0xfffffffd
  00775e97:	5d                                             	POP EBP
  00775e98:	83 c4 2c                                       	ADD ESP,0x2c
  00775e9b:	c3                                             	RET
  00775e9c:	e8 1f 68 fa ff                                 	CALL 0x0071c6c0
  00775ea1:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  00775ea5:	e8 e6 1a 06 00                                 	CALL 0x007d7990
  00775eaa:	5e                                             	POP ESI
  00775eab:	5f                                             	POP EDI
  00775eac:	5b                                             	POP EBX
  00775ead:	33 c0                                          	XOR EAX,EAX
  00775eaf:	5d                                             	POP EBP
  00775eb0:	83 c4 2c                                       	ADD ESP,0x2c
  00775eb3:	c3                                             	RET
  00775eb4:	5e                                             	POP ESI
  00775eb5:	5f                                             	POP EDI
  00775eb6:	5b                                             	POP EBX
  00775eb7:	b8 f9 ff ff ff                                 	MOV EAX,0xfffffff9
  00775ebc:	5d                                             	POP EBP
  00775ebd:	83 c4 2c                                       	ADD ESP,0x2c
  00775ec0:	c3                                             	RET
  00775ec1:	5f                                             	POP EDI
  00775ec2:	5b                                             	POP EBX
  00775ec3:	b8 f9 ff ff ff                                 	MOV EAX,0xfffffff9
  00775ec8:	5d                                             	POP EBP
  00775ec9:	83 c4 2c                                       	ADD ESP,0x2c
  00775ecc:	c3                                             	RET
