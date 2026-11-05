# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b67ea0 (PoolGeometry_RebuildWaterGroups)
Paired actual Ghidra pseudocode: 00B67EA0_PoolGeometry_RebuildWaterGroups.c
Envelope [0x00b67ea0,0x00b6807b); 475 bytes; exact owned ranges: [0x00b67ea0,0x00b6807b)
Owned: 475 original bytes / 149 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b67ea0 <original>:
  00b67ea0:	83 ec 28                                       	SUB ESP,0x28
  00b67ea3:	53                                             	PUSH EBX
  00b67ea4:	55                                             	PUSH EBP
  00b67ea5:	56                                             	PUSH ESI
  00b67ea6:	8b f1                                          	MOV ESI,ECX
  00b67ea8:	80 be 68 02 00 00 00                           	CMP byte ptr [ESI + 0x268],0x0
  00b67eaf:	57                                             	PUSH EDI
  00b67eb0:	74 29                                          	JZ 0x00b67edb
  00b67eb2:	e8 b9 02 b8 ff                                 	CALL 0x006e8170
  00b67eb7:	8b f8                                          	MOV EDI,EAX
  00b67eb9:	33 db                                          	XOR EBX,EBX
  00b67ebb:	3b fb                                          	CMP EDI,EBX
  00b67ebd:	74 14                                          	JZ 0x00b67ed3
  00b67ebf:	56                                             	PUSH ESI
  00b67ec0:	8b cf                                          	MOV ECX,EDI
  00b67ec2:	e8 29 04 b8 ff                                 	CALL 0x006e82f0
  00b67ec7:	8b 8f f4 04 00 00                              	MOV ECX,dword ptr [EDI + 0x4f4]
  00b67ecd:	56                                             	PUSH ESI
  00b67ece:	e8 2d db bb ff                                 	CALL 0x00725a00
  00b67ed3:	88 9e 68 02 00 00                              	MOV byte ptr [ESI + 0x268],BL
  00b67ed9:	eb 02                                          	JMP 0x00b67edd
  00b67edb:	33 db                                          	XOR EBX,EBX
  00b67edd:	8b 86 44 02 00 00                              	MOV EAX,dword ptr [ESI + 0x244]
  00b67ee3:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00b67eeb:	89 86 48 02 00 00                              	MOV dword ptr [ESI + 0x248],EAX
  00b67ef1:	8b 8e 54 02 00 00                              	MOV ECX,dword ptr [ESI + 0x254]
  00b67ef7:	89 8e 58 02 00 00                              	MOV dword ptr [ESI + 0x258],ECX
  00b67efd:	8b 86 10 02 00 00                              	MOV EAX,dword ptr [ESI + 0x210]
  00b67f03:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  00b67f09:	f3 0f 10 05 88 fd 03 01                        	MOVSS XMM0,dword ptr [0x0103fd88]
  00b67f11:	f3 0f 11 44 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM0
  00b67f17:	c7 44 24 34 94 f6 06 01                        	MOV dword ptr [ESP + 0x34],0x106f694
  00b67f1f:	c7 44 24 20 01 00 00 00                        	MOV dword ptr [ESP + 0x20],0x1
  00b67f27:	c7 44 24 1c 00 d9 14 01                        	MOV dword ptr [ESP + 0x1c],0x114d900
  00b67f2f:	89 5c 24 24                                    	MOV dword ptr [ESP + 0x24],EBX
  00b67f33:	89 5c 24 30                                    	MOV dword ptr [ESP + 0x30],EBX
  00b67f37:	8b 68 64                                       	MOV EBP,dword ptr [EAX + 0x64]
  00b67f3a:	3b eb                                          	CMP EBP,EBX
  00b67f3c:	8b 78 60                                       	MOV EDI,dword ptr [EAX + 0x60]
  00b67f3f:	89 5c 24 14                                    	MOV dword ptr [ESP + 0x14],EBX
  00b67f43:	76 74                                          	JBE 0x00b67fb9
  00b67f45:	3b fb                                          	CMP EDI,EBX
  00b67f47:	76 5b                                          	JBE 0x00b67fa4
  00b67f49:	8d a4 24 00 00 00 00                           	LEA ESP,[ESP]
  00b67f50:	8b 86 20 02 00 00                              	MOV EAX,dword ptr [ESI + 0x220]
  00b67f56:	0f af c3                                       	IMUL EAX,EBX
  00b67f59:	03 44 24 14                                    	ADD EAX,dword ptr [ESP + 0x14]
  00b67f5d:	b2 01                                          	MOV DL,0x1
  00b67f5f:	8b c8                                          	MOV ECX,EAX
  00b67f61:	83 e1 07                                       	AND ECX,0x7
  00b67f64:	d2 e2                                          	SHL DL,CL
  00b67f66:	8b 8e 24 02 00 00                              	MOV ECX,dword ptr [ESI + 0x224]
  00b67f6c:	c1 f8 03                                       	SAR EAX,0x3
  00b67f6f:	84 14 08                                       	TEST byte ptr [EAX + ECX*0x1],DL
  00b67f72:	74 27                                          	JZ 0x00b67f9b
  00b67f74:	8a 54 24 14                                    	MOV DL,byte ptr [ESP + 0x14]
  00b67f78:	8a 86 64 02 00 00                              	MOV AL,byte ptr [ESI + 0x264]
  00b67f7e:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00b67f82:	88 54 24 12                                    	MOV byte ptr [ESP + 0x12],DL
  00b67f86:	51                                             	PUSH ECX
  00b67f87:	8d 54 24 15                                    	LEA EDX,[ESP + 0x15]
  00b67f8b:	52                                             	PUSH EDX
  00b67f8c:	8b ce                                          	MOV ECX,ESI
  00b67f8e:	88 5c 24 19                                    	MOV byte ptr [ESP + 0x19],BL
  00b67f92:	88 44 24 1b                                    	MOV byte ptr [ESP + 0x1b],AL
  00b67f96:	e8 b5 f9 ff ff                                 	CALL 0x00b67950
  00b67f9b:	83 c3 01                                       	ADD EBX,0x1
  00b67f9e:	3b df                                          	CMP EBX,EDI
  00b67fa0:	72 ae                                          	JC 0x00b67f50
  00b67fa2:	33 db                                          	XOR EBX,EBX
  00b67fa4:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00b67fa8:	83 c0 01                                       	ADD EAX,0x1
  00b67fab:	3b c5                                          	CMP EAX,EBP
  00b67fad:	89 44 24 14                                    	MOV dword ptr [ESP + 0x14],EAX
  00b67fb1:	72 92                                          	JC 0x00b67f45
  00b67fb3:	39 5c 24 24                                    	CMP dword ptr [ESP + 0x24],EBX
  00b67fb7:	75 35                                          	JNZ 0x00b67fee
  00b67fb9:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  00b67fbd:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00b67fc1:	50                                             	PUSH EAX
  00b67fc2:	51                                             	PUSH ECX
  00b67fc3:	8d 4c 24 20                                    	LEA ECX,[ESP + 0x20]
  00b67fc7:	e8 04 f5 ff ff                                 	CALL 0x00b674d0
  00b67fcc:	83 7c 24 20 01                                 	CMP dword ptr [ESP + 0x20],0x1
  00b67fd1:	89 5c 24 24                                    	MOV dword ptr [ESP + 0x24],EBX
  00b67fd5:	76 0d                                          	JBE 0x00b67fe4
  00b67fd7:	8b 54 24 1c                                    	MOV EDX,dword ptr [ESP + 0x1c]
  00b67fdb:	52                                             	PUSH EDX
  00b67fdc:	e8 ff c4 97 ff                                 	CALL 0x004e44e0
  00b67fe1:	83 c4 04                                       	ADD ESP,0x4
  00b67fe4:	5f                                             	POP EDI
  00b67fe5:	5e                                             	POP ESI
  00b67fe6:	5d                                             	POP EBP
  00b67fe7:	32 c0                                          	XOR AL,AL
  00b67fe9:	5b                                             	POP EBX
  00b67fea:	83 c4 28                                       	ADD ESP,0x28
  00b67fed:	c3                                             	RET
  00b67fee:	8d 44 24 18                                    	LEA EAX,[ESP + 0x18]
  00b67ff2:	50                                             	PUSH EAX
  00b67ff3:	8b ce                                          	MOV ECX,ESI
  00b67ff5:	e8 f6 e9 ff ff                                 	CALL 0x00b669f0
  00b67ffa:	84 c0                                          	TEST AL,AL
  00b67ffc:	75 35                                          	JNZ 0x00b68033
  00b67ffe:	8b 4c 24 20                                    	MOV ECX,dword ptr [ESP + 0x20]
  00b68002:	8b 54 24 1c                                    	MOV EDX,dword ptr [ESP + 0x1c]
  00b68006:	51                                             	PUSH ECX
  00b68007:	52                                             	PUSH EDX
  00b68008:	8d 4c 24 20                                    	LEA ECX,[ESP + 0x20]
  00b6800c:	e8 bf f4 ff ff                                 	CALL 0x00b674d0
  00b68011:	83 7c 24 20 01                                 	CMP dword ptr [ESP + 0x20],0x1
  00b68016:	89 5c 24 24                                    	MOV dword ptr [ESP + 0x24],EBX
  00b6801a:	76 c8                                          	JBE 0x00b67fe4
  00b6801c:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00b68020:	50                                             	PUSH EAX
  00b68021:	e8 ba c4 97 ff                                 	CALL 0x004e44e0
  00b68026:	83 c4 04                                       	ADD ESP,0x4
  00b68029:	5f                                             	POP EDI
  00b6802a:	5e                                             	POP ESI
  00b6802b:	5d                                             	POP EBP
  00b6802c:	32 c0                                          	XOR AL,AL
  00b6802e:	5b                                             	POP EBX
  00b6802f:	83 c4 28                                       	ADD ESP,0x28
  00b68032:	c3                                             	RET
  00b68033:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00b68037:	51                                             	PUSH ECX
  00b68038:	8b ce                                          	MOV ECX,ESI
  00b6803a:	e8 31 f5 ff ff                                 	CALL 0x00b67570
  00b6803f:	8b ce                                          	MOV ECX,ESI
  00b68041:	e8 3a e7 ff ff                                 	CALL 0x00b66780
  00b68046:	8b 54 24 20                                    	MOV EDX,dword ptr [ESP + 0x20]
  00b6804a:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00b6804e:	52                                             	PUSH EDX
  00b6804f:	50                                             	PUSH EAX
  00b68050:	8d 4c 24 20                                    	LEA ECX,[ESP + 0x20]
  00b68054:	e8 77 f4 ff ff                                 	CALL 0x00b674d0
  00b68059:	83 7c 24 20 01                                 	CMP dword ptr [ESP + 0x20],0x1
  00b6805e:	89 5c 24 24                                    	MOV dword ptr [ESP + 0x24],EBX
  00b68062:	76 0d                                          	JBE 0x00b68071
  00b68064:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00b68068:	51                                             	PUSH ECX
  00b68069:	e8 72 c4 97 ff                                 	CALL 0x004e44e0
  00b6806e:	83 c4 04                                       	ADD ESP,0x4
  00b68071:	5f                                             	POP EDI
  00b68072:	5e                                             	POP ESI
  00b68073:	5d                                             	POP EBP
  00b68074:	b0 01                                          	MOV AL,0x1
  00b68076:	5b                                             	POP EBX
  00b68077:	83 c4 28                                       	ADD ESP,0x28
  00b6807a:	c3                                             	RET
