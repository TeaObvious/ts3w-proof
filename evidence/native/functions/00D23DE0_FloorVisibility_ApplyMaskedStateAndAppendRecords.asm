# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00d23de0 (FloorVisibility_ApplyMaskedStateAndAppendRecords)
Paired actual Ghidra pseudocode: 00D23DE0_FloorVisibility_ApplyMaskedStateAndAppendRecords.c
Envelope [0x00d23de0,0x00d23eb9); 217 bytes; exact owned ranges: [0x00d23de0,0x00d23eb9)
Owned: 217 original bytes / 70 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00d23de0 <original>:
  00d23de0:	83 ec 10                                       	SUB ESP,0x10
  00d23de3:	53                                             	PUSH EBX
  00d23de4:	8b 5c 24 1c                                    	MOV EBX,dword ptr [ESP + 0x1c]
  00d23de8:	55                                             	PUSH EBP
  00d23de9:	8b e9                                          	MOV EBP,ECX
  00d23deb:	8b 45 50                                       	MOV EAX,dword ptr [EBP + 0x50]
  00d23dee:	56                                             	PUSH ESI
  00d23def:	33 c9                                          	XOR ECX,ECX
  00d23df1:	57                                             	PUSH EDI
  00d23df2:	8b b8 90 02 00 00                              	MOV EDI,dword ptr [EAX + 0x290]
  00d23df8:	89 4c 24 10                                    	MOV dword ptr [ESP + 0x10],ECX
  00d23dfc:	c7 44 24 14 04 00 00 00                        	MOV dword ptr [ESP + 0x14],0x4
  00d23e04:	8b 74 24 24                                    	MOV ESI,dword ptr [ESP + 0x24]
  00d23e08:	b0 01                                          	MOV AL,0x1
  00d23e0a:	d2 e0                                          	SHL AL,CL
  00d23e0c:	84 46 03                                       	TEST byte ptr [ESI + 0x3],AL
  00d23e0f:	0f 84 84 00 00 00                              	JZ 0x00d23e99
  00d23e15:	66 8b 0e                                       	MOV CX,word ptr [ESI]
  00d23e18:	8a 56 02                                       	MOV DL,byte ptr [ESI + 0x2]
  00d23e1b:	88 44 24 2b                                    	MOV byte ptr [ESP + 0x2b],AL
  00d23e1f:	8d 44 24 28                                    	LEA EAX,[ESP + 0x28]
  00d23e23:	66 89 4c 24 28                                 	MOV word ptr [ESP + 0x28],CX
  00d23e28:	50                                             	PUSH EAX
  00d23e29:	8b cf                                          	MOV ECX,EDI
  00d23e2b:	88 54 24 2e                                    	MOV byte ptr [ESP + 0x2e],DL
  00d23e2f:	e8 dc 8c d6 ff                                 	CALL 0x00a8cb10
  00d23e34:	3a c3                                          	CMP AL,BL
  00d23e36:	74 61                                          	JZ 0x00d23e99
  00d23e38:	8a 4c 24 2a                                    	MOV CL,byte ptr [ESP + 0x2a]
  00d23e3c:	66 8b 74 24 28                                 	MOV SI,word ptr [ESP + 0x28]
  00d23e41:	8a 54 24 2b                                    	MOV DL,byte ptr [ESP + 0x2b]
  00d23e45:	8d 44 24 28                                    	LEA EAX,[ESP + 0x28]
  00d23e49:	50                                             	PUSH EAX
  00d23e4a:	88 4c 24 1e                                    	MOV byte ptr [ESP + 0x1e],CL
  00d23e4e:	53                                             	PUSH EBX
  00d23e4f:	8b cf                                          	MOV ECX,EDI
  00d23e51:	66 89 74 24 20                                 	MOV word ptr [ESP + 0x20],SI
  00d23e56:	88 54 24 23                                    	MOV byte ptr [ESP + 0x23],DL
  00d23e5a:	88 5c 24 24                                    	MOV byte ptr [ESP + 0x24],BL
  00d23e5e:	e8 bd 2a d7 ff                                 	CALL 0x00a96920
  00d23e63:	8b 45 58                                       	MOV EAX,dword ptr [EBP + 0x58]
  00d23e66:	3b 45 5c                                       	CMP EAX,dword ptr [EBP + 0x5c]
  00d23e69:	8d 4d 54                                       	LEA ECX,[EBP + 0x54]
  00d23e6c:	73 20                                          	JNC 0x00d23e8e
  00d23e6e:	85 c0                                          	TEST EAX,EAX
  00d23e70:	8d 50 05                                       	LEA EDX,[EAX + 0x5]
  00d23e73:	89 51 04                                       	MOV dword ptr [ECX + 0x4],EDX
  00d23e76:	74 21                                          	JZ 0x00d23e99
  00d23e78:	8a 4c 24 1a                                    	MOV CL,byte ptr [ESP + 0x1a]
  00d23e7c:	8a 54 24 1b                                    	MOV DL,byte ptr [ESP + 0x1b]
  00d23e80:	66 89 30                                       	MOV word ptr [EAX],SI
  00d23e83:	88 48 02                                       	MOV byte ptr [EAX + 0x2],CL
  00d23e86:	88 50 03                                       	MOV byte ptr [EAX + 0x3],DL
  00d23e89:	88 58 04                                       	MOV byte ptr [EAX + 0x4],BL
  00d23e8c:	eb 0b                                          	JMP 0x00d23e99
  00d23e8e:	8d 54 24 18                                    	LEA EDX,[ESP + 0x18]
  00d23e92:	52                                             	PUSH EDX
  00d23e93:	50                                             	PUSH EAX
  00d23e94:	e8 f7 fd ff ff                                 	CALL 0x00d23c90
  00d23e99:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00d23e9d:	83 c1 01                                       	ADD ECX,0x1
  00d23ea0:	83 6c 24 14 01                                 	SUB dword ptr [ESP + 0x14],0x1
  00d23ea5:	89 4c 24 10                                    	MOV dword ptr [ESP + 0x10],ECX
  00d23ea9:	0f 85 55 ff ff ff                              	JNZ 0x00d23e04
  00d23eaf:	5f                                             	POP EDI
  00d23eb0:	5e                                             	POP ESI
  00d23eb1:	5d                                             	POP EBP
  00d23eb2:	5b                                             	POP EBX
  00d23eb3:	83 c4 10                                       	ADD ESP,0x10
  00d23eb6:	c2 08 00                                       	RET 0x8
