# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00ab6ac0 (Lot_ContainsFoundationCatalogProduct)
Paired actual Ghidra pseudocode: 00AB6AC0_Lot_ContainsFoundationCatalogProduct.c
Envelope [0x00ab6ac0,0x00ab6c9b); 475 bytes; exact owned ranges: [0x00ab6ac0,0x00ab6bca),[0x00ab6bd0,0x00ab6c9b)
Owned: 469 original bytes / 159 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00ab6ac0 <original>:
  00ab6ac0:	83 ec 3c                                       	SUB ESP,0x3c
  00ab6ac3:	53                                             	PUSH EBX
  00ab6ac4:	55                                             	PUSH EBP
  00ab6ac5:	8b d9                                          	MOV EBX,ECX
  00ab6ac7:	33 ed                                          	XOR EBP,EBP
  00ab6ac9:	39 ab a4 02 00 00                              	CMP dword ptr [EBX + 0x2a4],EBP
  00ab6acf:	89 5c 24 20                                    	MOV dword ptr [ESP + 0x20],EBX
  00ab6ad3:	75 08                                          	JNZ 0x00ab6add
  00ab6ad5:	5d                                             	POP EBP
  00ab6ad6:	32 c0                                          	XOR AL,AL
  00ab6ad8:	5b                                             	POP EBX
  00ab6ad9:	83 c4 3c                                       	ADD ESP,0x3c
  00ab6adc:	c3                                             	RET
  00ab6add:	56                                             	PUSH ESI
  00ab6ade:	8b 35 34 e0 1e 01                              	MOV ESI,dword ptr [0x011ee034]
  00ab6ae4:	57                                             	PUSH EDI
  00ab6ae5:	8d 44 24 2c                                    	LEA EAX,[ESP + 0x2c]
  00ab6ae9:	50                                             	PUSH EAX
  00ab6aea:	6a 02                                          	PUSH 0x2
  00ab6aec:	8b ce                                          	MOV ECX,ESI
  00ab6aee:	89 6c 24 34                                    	MOV dword ptr [ESP + 0x34],EBP
  00ab6af2:	89 6c 24 38                                    	MOV dword ptr [ESP + 0x38],EBP
  00ab6af6:	89 6c 24 3c                                    	MOV dword ptr [ESP + 0x3c],EBP
  00ab6afa:	c7 44 24 40 2c 60 06 01                        	MOV dword ptr [ESP + 0x40],0x106602c
  00ab6b02:	e8 e9 94 1d 00                                 	CALL 0x00c8fff0
  00ab6b07:	8d 4c 24 2c                                    	LEA ECX,[ESP + 0x2c]
  00ab6b0b:	51                                             	PUSH ECX
  00ab6b0c:	6a 01                                          	PUSH 0x1
  00ab6b0e:	8b ce                                          	MOV ECX,ESI
  00ab6b10:	e8 db 94 1d 00                                 	CALL 0x00c8fff0
  00ab6b15:	8d 54 24 2c                                    	LEA EDX,[ESP + 0x2c]
  00ab6b19:	52                                             	PUSH EDX
  00ab6b1a:	6a 07                                          	PUSH 0x7
  00ab6b1c:	8b ce                                          	MOV ECX,ESI
  00ab6b1e:	e8 cd 94 1d 00                                 	CALL 0x00c8fff0
  00ab6b23:	8d 44 24 2c                                    	LEA EAX,[ESP + 0x2c]
  00ab6b27:	50                                             	PUSH EAX
  00ab6b28:	6a 08                                          	PUSH 0x8
  00ab6b2a:	8b ce                                          	MOV ECX,ESI
  00ab6b2c:	e8 bf 94 1d 00                                 	CALL 0x00c8fff0
  00ab6b31:	8d 4c 24 2c                                    	LEA ECX,[ESP + 0x2c]
  00ab6b35:	51                                             	PUSH ECX
  00ab6b36:	6a 09                                          	PUSH 0x9
  00ab6b38:	8b ce                                          	MOV ECX,ESI
  00ab6b3a:	e8 b1 94 1d 00                                 	CALL 0x00c8fff0
  00ab6b3f:	8b 8b a4 02 00 00                              	MOV ECX,dword ptr [EBX + 0x2a4]
  00ab6b45:	8b 71 24                                       	MOV ESI,dword ptr [ECX + 0x24]
  00ab6b48:	0f af 71 20                                    	IMUL ESI,dword ptr [ECX + 0x20]
  00ab6b4c:	8b 7c 24 30                                    	MOV EDI,dword ptr [ESP + 0x30]
  00ab6b50:	2b 7c 24 2c                                    	SUB EDI,dword ptr [ESP + 0x2c]
  00ab6b54:	83 c8 ff                                       	OR EAX,0xffffffff
  00ab6b57:	8d 54 24 18                                    	LEA EDX,[ESP + 0x18]
  00ab6b5b:	52                                             	PUSH EDX
  00ab6b5c:	89 44 24 40                                    	MOV dword ptr [ESP + 0x40],EAX
  00ab6b60:	89 44 24 44                                    	MOV dword ptr [ESP + 0x44],EAX
  00ab6b64:	89 44 24 48                                    	MOV dword ptr [ESP + 0x48],EAX
  00ab6b68:	89 44 24 4c                                    	MOV dword ptr [ESP + 0x4c],EAX
  00ab6b6c:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  00ab6b70:	50                                             	PUSH EAX
  00ab6b71:	56                                             	PUSH ESI
  00ab6b72:	55                                             	PUSH EBP
  00ab6b73:	8d 54 24 4c                                    	LEA EDX,[ESP + 0x4c]
  00ab6b77:	52                                             	PUSH EDX
  00ab6b78:	c1 ff 02                                       	SAR EDI,0x2
  00ab6b7b:	89 74 24 38                                    	MOV dword ptr [ESP + 0x38],ESI
  00ab6b7f:	e8 2c d3 ff ff                                 	CALL 0x00ab3eb0
  00ab6b84:	84 c0                                          	TEST AL,AL
  00ab6b86:	0f 84 dd 00 00 00                              	JZ 0x00ab6c69
  00ab6b8c:	8d 64 24 00                                    	LEA ESP,[ESP]
  00ab6b90:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00ab6b94:	83 f8 10                                       	CMP EAX,0x10
  00ab6b97:	8b d0                                          	MOV EDX,EAX
  00ab6b99:	89 44 24 14                                    	MOV dword ptr [ESP + 0x14],EAX
  00ab6b9d:	0f 83 99 00 00 00                              	JNC 0x00ab6c3c
  00ab6ba3:	8b ab a4 02 00 00                              	MOV EBP,dword ptr [EBX + 0x2a4]
  00ab6ba9:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00ab6bad:	8b 45 48                                       	MOV EAX,dword ptr [EBP + 0x48]
  00ab6bb0:	0f b7 04 48                                    	MOVZX EAX,word ptr [EAX + ECX*0x2]
  00ab6bb4:	8b 5c 24 2c                                    	MOV EBX,dword ptr [ESP + 0x2c]
  00ab6bb8:	8b c8                                          	MOV ECX,EAX
  00ab6bba:	81 e1 00 80 00 00                              	AND ECX,0x8000
  00ab6bc0:	89 44 24 20                                    	MOV dword ptr [ESP + 0x20],EAX
  00ab6bc4:	89 4c 24 1c                                    	MOV dword ptr [ESP + 0x1c],ECX
  00ab6bc8:	eb 0e                                          	JMP 0x00ab6bd8
  00ab6bca:	8d 9b 00 00 00 00                              	.byte 0x8d,0x9b,0x00,0x00,0x00,0x00 # UNOWNED alignment bytes
  00ab6bd0:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00ab6bd4:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  00ab6bd8:	66 85 c9                                       	TEST CX,CX
  00ab6bdb:	74 0c                                          	JZ 0x00ab6be9
  00ab6bdd:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00ab6be1:	c1 e1 04                                       	SHL ECX,0x4
  00ab6be4:	03 4d 38                                       	ADD ECX,dword ptr [EBP + 0x38]
  00ab6be7:	eb 0e                                          	JMP 0x00ab6bf7
  00ab6be9:	0f b7 c8                                       	MOVZX ECX,AX
  00ab6bec:	c1 e1 04                                       	SHL ECX,0x4
  00ab6bef:	03 ca                                          	ADD ECX,EDX
  00ab6bf1:	c1 e1 04                                       	SHL ECX,0x4
  00ab6bf4:	03 4d 28                                       	ADD ECX,dword ptr [EBP + 0x28]
  00ab6bf7:	33 f6                                          	XOR ESI,ESI
  00ab6bf9:	8d a4 24 00 00 00 00                           	LEA ESP,[ESP]
  00ab6c00:	33 c0                                          	XOR EAX,EAX
  00ab6c02:	85 ff                                          	TEST EDI,EDI
  00ab6c04:	76 16                                          	JBE 0x00ab6c1c
  00ab6c06:	8b 14 b1                                       	MOV EDX,dword ptr [ECX + ESI*0x4]
  00ab6c09:	8d a4 24 00 00 00 00                           	LEA ESP,[ESP]
  00ab6c10:	3b 14 83                                       	CMP EDX,dword ptr [EBX + EAX*0x4]
  00ab6c13:	74 6f                                          	JZ 0x00ab6c84
  00ab6c15:	83 c0 01                                       	ADD EAX,0x1
  00ab6c18:	3b c7                                          	CMP EAX,EDI
  00ab6c1a:	72 f4                                          	JC 0x00ab6c10
  00ab6c1c:	83 c6 01                                       	ADD ESI,0x1
  00ab6c1f:	83 fe 04                                       	CMP ESI,0x4
  00ab6c22:	72 dc                                          	JC 0x00ab6c00
  00ab6c24:	8b 54 24 14                                    	MOV EDX,dword ptr [ESP + 0x14]
  00ab6c28:	83 c2 01                                       	ADD EDX,0x1
  00ab6c2b:	83 fa 10                                       	CMP EDX,0x10
  00ab6c2e:	89 54 24 14                                    	MOV dword ptr [ESP + 0x14],EDX
  00ab6c32:	72 9c                                          	JC 0x00ab6bd0
  00ab6c34:	8b 74 24 24                                    	MOV ESI,dword ptr [ESP + 0x24]
  00ab6c38:	8b 5c 24 28                                    	MOV EBX,dword ptr [ESP + 0x28]
  00ab6c3c:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  00ab6c40:	8d 54 24 18                                    	LEA EDX,[ESP + 0x18]
  00ab6c44:	52                                             	PUSH EDX
  00ab6c45:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00ab6c49:	51                                             	PUSH ECX
  00ab6c4a:	8b 8b a4 02 00 00                              	MOV ECX,dword ptr [EBX + 0x2a4]
  00ab6c50:	56                                             	PUSH ESI
  00ab6c51:	83 c0 01                                       	ADD EAX,0x1
  00ab6c54:	50                                             	PUSH EAX
  00ab6c55:	8d 54 24 4c                                    	LEA EDX,[ESP + 0x4c]
  00ab6c59:	52                                             	PUSH EDX
  00ab6c5a:	e8 51 d2 ff ff                                 	CALL 0x00ab3eb0
  00ab6c5f:	84 c0                                          	TEST AL,AL
  00ab6c61:	0f 85 29 ff ff ff                              	JNZ 0x00ab6b90
  00ab6c67:	33 ed                                          	XOR EBP,EBP
  00ab6c69:	8b 44 24 2c                                    	MOV EAX,dword ptr [ESP + 0x2c]
  00ab6c6d:	3b c5                                          	CMP EAX,EBP
  00ab6c6f:	74 09                                          	JZ 0x00ab6c7a
  00ab6c71:	50                                             	PUSH EAX
  00ab6c72:	e8 69 d8 a2 ff                                 	CALL 0x004e44e0
  00ab6c77:	83 c4 04                                       	ADD ESP,0x4
  00ab6c7a:	5f                                             	POP EDI
  00ab6c7b:	5e                                             	POP ESI
  00ab6c7c:	5d                                             	POP EBP
  00ab6c7d:	32 c0                                          	XOR AL,AL
  00ab6c7f:	5b                                             	POP EBX
  00ab6c80:	83 c4 3c                                       	ADD ESP,0x3c
  00ab6c83:	c3                                             	RET
  00ab6c84:	85 db                                          	TEST EBX,EBX
  00ab6c86:	74 09                                          	JZ 0x00ab6c91
  00ab6c88:	53                                             	PUSH EBX
  00ab6c89:	e8 52 d8 a2 ff                                 	CALL 0x004e44e0
  00ab6c8e:	83 c4 04                                       	ADD ESP,0x4
  00ab6c91:	5f                                             	POP EDI
  00ab6c92:	5e                                             	POP ESI
  00ab6c93:	5d                                             	POP EBP
  00ab6c94:	b0 01                                          	MOV AL,0x1
  00ab6c96:	5b                                             	POP EBX
  00ab6c97:	83 c4 3c                                       	ADD ESP,0x3c
  00ab6c9a:	c3                                             	RET
