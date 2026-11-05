# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x004f3cc0 (Utf_ConvertWideSpanToByteStorage)
Paired actual Ghidra pseudocode: 004F3CC0_Utf_ConvertWideSpanToByteStorage.c
Envelope [0x004f3cc0,0x004f3def); 303 bytes; exact owned ranges: [0x004f3cc0,0x004f3def)
Owned: 303 original bytes / 105 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
004f3cc0 <original>:
  004f3cc0:	81 ec 08 02 00 00                              	SUB ESP,0x208
  004f3cc6:	55                                             	PUSH EBP
  004f3cc7:	8b ac 24 14 02 00 00                           	MOV EBP,dword ptr [ESP + 0x214]
  004f3cce:	56                                             	PUSH ESI
  004f3ccf:	57                                             	PUSH EDI
  004f3cd0:	8b bc 24 20 02 00 00                           	MOV EDI,dword ptr [ESP + 0x220]
  004f3cd7:	83 ff ff                                       	CMP EDI,-0x1
  004f3cda:	75 0b                                          	JNZ 0x004f3ce7
  004f3cdc:	55                                             	PUSH EBP
  004f3cdd:	e8 de a5 00 00                                 	CALL 0x004fe2c0
  004f3ce2:	83 c4 04                                       	ADD ESP,0x4
  004f3ce5:	8b f8                                          	MOV EDI,EAX
  004f3ce7:	6a 08                                          	PUSH 0x8
  004f3ce9:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  004f3ced:	50                                             	PUSH EAX
  004f3cee:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  004f3cf2:	51                                             	PUSH ECX
  004f3cf3:	6a 10                                          	PUSH 0x10
  004f3cf5:	57                                             	PUSH EDI
  004f3cf6:	55                                             	PUSH EBP
  004f3cf7:	c7 44 24 28 00 02 00 00                        	MOV dword ptr [ESP + 0x28],0x200
  004f3cff:	e8 ec 03 00 00                                 	CALL 0x004f40f0
  004f3d04:	83 c4 18                                       	ADD ESP,0x18
  004f3d07:	3b c7                                          	CMP EAX,EDI
  004f3d09:	72 6a                                          	JC 0x004f3d75
  004f3d0b:	8b 84 24 24 02 00 00                           	MOV EAX,dword ptr [ESP + 0x224]
  004f3d12:	85 c0                                          	TEST EAX,EAX
  004f3d14:	8b b4 24 18 02 00 00                           	MOV ESI,dword ptr [ESP + 0x218]
  004f3d1b:	74 2a                                          	JZ 0x004f3d47
  004f3d1d:	89 44 24 0c                                    	MOV dword ptr [ESP + 0xc],EAX
  004f3d21:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  004f3d25:	8d 54 24 0c                                    	LEA EDX,[ESP + 0xc]
  004f3d29:	52                                             	PUSH EDX
  004f3d2a:	8d 4c 04 18                                    	LEA ECX,[ESP + EAX*0x1 + 0x18]
  004f3d2e:	51                                             	PUSH ECX
  004f3d2f:	8d 54 24 1c                                    	LEA EDX,[ESP + 0x1c]
  004f3d33:	52                                             	PUSH EDX
  004f3d34:	8b ce                                          	MOV ECX,ESI
  004f3d36:	e8 75 1b f1 ff                                 	CALL 0x004058b0
  004f3d3b:	5f                                             	POP EDI
  004f3d3c:	8b c6                                          	MOV EAX,ESI
  004f3d3e:	5e                                             	POP ESI
  004f3d3f:	5d                                             	POP EBP
  004f3d40:	81 c4 08 02 00 00                              	ADD ESP,0x208
  004f3d46:	c3                                             	RET
  004f3d47:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  004f3d4b:	8d 44 24 0c                                    	LEA EAX,[ESP + 0xc]
  004f3d4f:	50                                             	PUSH EAX
  004f3d50:	8d 54 0c 18                                    	LEA EDX,[ESP + ECX*0x1 + 0x18]
  004f3d54:	52                                             	PUSH EDX
  004f3d55:	8d 44 24 1c                                    	LEA EAX,[ESP + 0x1c]
  004f3d59:	50                                             	PUSH EAX
  004f3d5a:	8b ce                                          	MOV ECX,ESI
  004f3d5c:	c7 44 24 18 58 a5 fb 00                        	MOV dword ptr [ESP + 0x18],0xfba558
  004f3d64:	e8 47 1b f1 ff                                 	CALL 0x004058b0
  004f3d69:	5f                                             	POP EDI
  004f3d6a:	8b c6                                          	MOV EAX,ESI
  004f3d6c:	5e                                             	POP ESI
  004f3d6d:	5d                                             	POP EBP
  004f3d6e:	81 c4 08 02 00 00                              	ADD ESP,0x208
  004f3d74:	c3                                             	RET
  004f3d75:	53                                             	PUSH EBX
  004f3d76:	8b 9c 24 28 02 00 00                           	MOV EBX,dword ptr [ESP + 0x228]
  004f3d7d:	6a 00                                          	PUSH 0x0
  004f3d7f:	6a 00                                          	PUSH 0x0
  004f3d81:	6a 00                                          	PUSH 0x0
  004f3d83:	6a 00                                          	PUSH 0x0
  004f3d85:	8d 04 bd 00 00 00 00                           	LEA EAX,[EDI*0x4 + 0x0]
  004f3d8c:	53                                             	PUSH EBX
  004f3d8d:	50                                             	PUSH EAX
  004f3d8e:	89 44 24 2c                                    	MOV dword ptr [ESP + 0x2c],EAX
  004f3d92:	e8 69 07 ff ff                                 	CALL 0x004e4500
  004f3d97:	6a 08                                          	PUSH 0x8
  004f3d99:	8d 4c 24 30                                    	LEA ECX,[ESP + 0x30]
  004f3d9d:	51                                             	PUSH ECX
  004f3d9e:	8b f0                                          	MOV ESI,EAX
  004f3da0:	56                                             	PUSH ESI
  004f3da1:	6a 10                                          	PUSH 0x10
  004f3da3:	57                                             	PUSH EDI
  004f3da4:	55                                             	PUSH EBP
  004f3da5:	e8 46 03 00 00                                 	CALL 0x004f40f0
  004f3daa:	8b 44 24 44                                    	MOV EAX,dword ptr [ESP + 0x44]
  004f3dae:	8b bc 24 4c 02 00 00                           	MOV EDI,dword ptr [ESP + 0x24c]
  004f3db5:	83 c4 30                                       	ADD ESP,0x30
  004f3db8:	85 db                                          	TEST EBX,EBX
  004f3dba:	8d 54 24 10                                    	LEA EDX,[ESP + 0x10]
  004f3dbe:	52                                             	PUSH EDX
  004f3dbf:	8d 0c 06                                       	LEA ECX,[ESI + EAX*0x1]
  004f3dc2:	51                                             	PUSH ECX
  004f3dc3:	56                                             	PUSH ESI
  004f3dc4:	8b cf                                          	MOV ECX,EDI
  004f3dc6:	89 5c 24 1c                                    	MOV dword ptr [ESP + 0x1c],EBX
  004f3dca:	75 08                                          	JNZ 0x004f3dd4
  004f3dcc:	c7 44 24 1c 58 a5 fb 00                        	MOV dword ptr [ESP + 0x1c],0xfba558
  004f3dd4:	e8 d7 1a f1 ff                                 	CALL 0x004058b0
  004f3dd9:	56                                             	PUSH ESI
  004f3dda:	e8 01 07 ff ff                                 	CALL 0x004e44e0
  004f3ddf:	83 c4 04                                       	ADD ESP,0x4
  004f3de2:	5b                                             	POP EBX
  004f3de3:	8b c7                                          	MOV EAX,EDI
  004f3de5:	5f                                             	POP EDI
  004f3de6:	5e                                             	POP ESI
  004f3de7:	5d                                             	POP EBP
  004f3de8:	81 c4 08 02 00 00                              	ADD ESP,0x208
  004f3dee:	c3                                             	RET
