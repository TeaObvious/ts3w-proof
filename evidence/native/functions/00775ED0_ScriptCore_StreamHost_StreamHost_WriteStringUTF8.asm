# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775ed0 (ScriptCore.StreamHost::StreamHost_WriteStringUTF8)
Paired actual Ghidra pseudocode: 00775ED0_ScriptCore_StreamHost_StreamHost_WriteStringUTF8.c
Envelope [0x00775ed0,0x00775fe2); 274 bytes; exact owned ranges: [0x00775ed0,0x00775fe2)
Owned: 274 original bytes / 117 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00775ed0 <original>:
  00775ed0:	83 ec 18                                       	SUB ESP,0x18
  00775ed3:	57                                             	PUSH EDI
  00775ed4:	8b 7c 24 24                                    	MOV EDI,dword ptr [ESP + 0x24]
  00775ed8:	85 ff                                          	TEST EDI,EDI
  00775eda:	75 08                                          	JNZ 0x00775ee4
  00775edc:	8d 47 fa                                       	LEA EAX,[EDI + -0x6]
  00775edf:	5f                                             	POP EDI
  00775ee0:	83 c4 18                                       	ADD ESP,0x18
  00775ee3:	c3                                             	RET
  00775ee4:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  00775ee8:	3b 05 38 78 1d 01                              	CMP EAX,dword ptr [0x011d7838]
  00775eee:	55                                             	PUSH EBP
  00775eef:	75 08                                          	JNZ 0x00775ef9
  00775ef1:	8b 2d 3c 78 1d 01                              	MOV EBP,dword ptr [0x011d783c]
  00775ef7:	eb 0b                                          	JMP 0x00775f04
  00775ef9:	50                                             	PUSH EAX
  00775efa:	e8 81 ef ff ff                                 	CALL 0x00774e80
  00775eff:	83 c4 04                                       	ADD ESP,0x4
  00775f02:	8b e8                                          	MOV EBP,EAX
  00775f04:	85 ed                                          	TEST EBP,EBP
  00775f06:	75 09                                          	JNZ 0x00775f11
  00775f08:	8d 45 fe                                       	LEA EAX,[EBP + -0x2]
  00775f0b:	5d                                             	POP EBP
  00775f0c:	5f                                             	POP EDI
  00775f0d:	83 c4 18                                       	ADD ESP,0x18
  00775f10:	c3                                             	RET
  00775f11:	53                                             	PUSH EBX
  00775f12:	56                                             	PUSH ESI
  00775f13:	e8 78 34 ff ff                                 	CALL 0x00769390
  00775f18:	8b f0                                          	MOV ESI,EAX
  00775f1a:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00775f1c:	8b 50 5c                                       	MOV EDX,dword ptr [EAX + 0x5c]
  00775f1f:	6a 00                                          	PUSH 0x0
  00775f21:	57                                             	PUSH EDI
  00775f22:	8b ce                                          	MOV ECX,ESI
  00775f24:	ff d2                                          	CALL EDX
  00775f26:	50                                             	PUSH EAX
  00775f27:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00775f29:	8b 50 58                                       	MOV EDX,dword ptr [EAX + 0x58]
  00775f2c:	57                                             	PUSH EDI
  00775f2d:	8b ce                                          	MOV ECX,ESI
  00775f2f:	ff d2                                          	CALL EDX
  00775f31:	50                                             	PUSH EAX
  00775f32:	8d 44 24 24                                    	LEA EAX,[ESP + 0x24]
  00775f36:	50                                             	PUSH EAX
  00775f37:	e8 84 dd d7 ff                                 	CALL 0x004f3cc0
  00775f3c:	8b 5c 24 2c                                    	MOV EBX,dword ptr [ESP + 0x2c]
  00775f40:	2b 5c 24 28                                    	SUB EBX,dword ptr [ESP + 0x28]
  00775f44:	83 c4 10                                       	ADD ESP,0x10
  00775f47:	8a c3                                          	MOV AL,BL
  00775f49:	8b d3                                          	MOV EDX,EBX
  00775f4b:	24 7f                                          	AND AL,0x7f
  00775f4d:	c1 ea 07                                       	SHR EDX,0x7
  00775f50:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00775f54:	74 10                                          	JZ 0x00775f66
  00775f56:	04 80                                          	ADD AL,0x80
  00775f58:	88 01                                          	MOV byte ptr [ECX],AL
  00775f5a:	8a c2                                          	MOV AL,DL
  00775f5c:	83 c1 01                                       	ADD ECX,0x1
  00775f5f:	24 7f                                          	AND AL,0x7f
  00775f61:	c1 ea 07                                       	SHR EDX,0x7
  00775f64:	75 f0                                          	JNZ 0x00775f56
  00775f66:	88 01                                          	MOV byte ptr [ECX],AL
  00775f68:	8b 55 00                                       	MOV EDX,dword ptr [EBP]
  00775f6b:	8b 52 38                                       	MOV EDX,dword ptr [EDX + 0x38]
  00775f6e:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  00775f72:	2b c8                                          	SUB ECX,EAX
  00775f74:	83 c1 01                                       	ADD ECX,0x1
  00775f77:	51                                             	PUSH ECX
  00775f78:	8b c8                                          	MOV ECX,EAX
  00775f7a:	51                                             	PUSH ECX
  00775f7b:	8b cd                                          	MOV ECX,EBP
  00775f7d:	ff d2                                          	CALL EDX
  00775f7f:	84 c0                                          	TEST AL,AL
  00775f81:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00775f85:	74 14                                          	JZ 0x00775f9b
  00775f87:	8b 55 00                                       	MOV EDX,dword ptr [EBP]
  00775f8a:	8b 52 38                                       	MOV EDX,dword ptr [EDX + 0x38]
  00775f8d:	53                                             	PUSH EBX
  00775f8e:	50                                             	PUSH EAX
  00775f8f:	8b cd                                          	MOV ECX,EBP
  00775f91:	ff d2                                          	CALL EDX
  00775f93:	84 c0                                          	TEST AL,AL
  00775f95:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00775f99:	75 25                                          	JNZ 0x00775fc0
  00775f9b:	8b 4c 24 20                                    	MOV ECX,dword ptr [ESP + 0x20]
  00775f9f:	2b c8                                          	SUB ECX,EAX
  00775fa1:	83 f9 01                                       	CMP ECX,0x1
  00775fa4:	7e 0d                                          	JLE 0x00775fb3
  00775fa6:	85 c0                                          	TEST EAX,EAX
  00775fa8:	74 09                                          	JZ 0x00775fb3
  00775faa:	50                                             	PUSH EAX
  00775fab:	e8 30 e5 d6 ff                                 	CALL 0x004e44e0
  00775fb0:	83 c4 04                                       	ADD ESP,0x4
  00775fb3:	5e                                             	POP ESI
  00775fb4:	5b                                             	POP EBX
  00775fb5:	5d                                             	POP EBP
  00775fb6:	b8 fd ff ff ff                                 	MOV EAX,0xfffffffd
  00775fbb:	5f                                             	POP EDI
  00775fbc:	83 c4 18                                       	ADD ESP,0x18
  00775fbf:	c3                                             	RET
  00775fc0:	8b 54 24 20                                    	MOV EDX,dword ptr [ESP + 0x20]
  00775fc4:	2b d0                                          	SUB EDX,EAX
  00775fc6:	83 fa 01                                       	CMP EDX,0x1
  00775fc9:	7e 0d                                          	JLE 0x00775fd8
  00775fcb:	85 c0                                          	TEST EAX,EAX
  00775fcd:	74 09                                          	JZ 0x00775fd8
  00775fcf:	50                                             	PUSH EAX
  00775fd0:	e8 0b e5 d6 ff                                 	CALL 0x004e44e0
  00775fd5:	83 c4 04                                       	ADD ESP,0x4
  00775fd8:	5e                                             	POP ESI
  00775fd9:	5b                                             	POP EBX
  00775fda:	5d                                             	POP EBP
  00775fdb:	33 c0                                          	XOR EAX,EAX
  00775fdd:	5f                                             	POP EDI
  00775fde:	83 c4 18                                       	ADD ESP,0x18
  00775fe1:	c3                                             	RET
