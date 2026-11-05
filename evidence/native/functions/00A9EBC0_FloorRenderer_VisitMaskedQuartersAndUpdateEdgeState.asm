# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00a9ebc0 (FloorRenderer_VisitMaskedQuartersAndUpdateEdgeState)
Paired actual Ghidra pseudocode: 00A9EBC0_FloorRenderer_VisitMaskedQuartersAndUpdateEdgeState.c
Envelope [0x00a9ebc0,0x00a9ec8f); 207 bytes; exact owned ranges: [0x00a9ebc0,0x00a9ec8f)
Owned: 207 original bytes / 72 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00a9ebc0 <original>:
  00a9ebc0:	83 ec 10                                       	SUB ESP,0x10
  00a9ebc3:	53                                             	PUSH EBX
  00a9ebc4:	55                                             	PUSH EBP
  00a9ebc5:	8b 6c 24 1c                                    	MOV EBP,dword ptr [ESP + 0x1c]
  00a9ebc9:	56                                             	PUSH ESI
  00a9ebca:	57                                             	PUSH EDI
  00a9ebcb:	8b f9                                          	MOV EDI,ECX
  00a9ebcd:	33 db                                          	XOR EBX,EBX
  00a9ebcf:	90                                             	NOP
  00a9ebd0:	8b cb                                          	MOV ECX,EBX
  00a9ebd2:	b8 01 00 00 00                                 	MOV EAX,0x1
  00a9ebd7:	d3 e0                                          	SHL EAX,CL
  00a9ebd9:	0f be 4d 03                                    	MOVSX ECX,byte ptr [EBP + 0x3]
  00a9ebdd:	85 c1                                          	TEST ECX,EAX
  00a9ebdf:	0f 84 94 00 00 00                              	JZ 0x00a9ec79
  00a9ebe5:	8a 55 00                                       	MOV DL,byte ptr [EBP]
  00a9ebe8:	8a 45 01                                       	MOV AL,byte ptr [EBP + 0x1]
  00a9ebeb:	8b 8f 00 01 00 00                              	MOV ECX,dword ptr [EDI + 0x100]
  00a9ebf1:	88 54 24 24                                    	MOV byte ptr [ESP + 0x24],DL
  00a9ebf5:	8d 54 24 10                                    	LEA EDX,[ESP + 0x10]
  00a9ebf9:	88 44 24 25                                    	MOV byte ptr [ESP + 0x25],AL
  00a9ebfd:	52                                             	PUSH EDX
  00a9ebfe:	8d 44 24 28                                    	LEA EAX,[ESP + 0x28]
  00a9ec02:	50                                             	PUSH EAX
  00a9ec03:	88 5c 24 2e                                    	MOV byte ptr [ESP + 0x2e],BL
  00a9ec07:	e8 24 8e fe ff                                 	CALL 0x00a87a30
  00a9ec0c:	84 c0                                          	TEST AL,AL
  00a9ec0e:	74 54                                          	JZ 0x00a9ec64
  00a9ec10:	83 7f 14 00                                    	CMP dword ptr [EDI + 0x14],0x0
  00a9ec14:	74 42                                          	JZ 0x00a9ec58
  00a9ec16:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00a9ec1a:	51                                             	PUSH ECX
  00a9ec1b:	8d 54 24 1c                                    	LEA EDX,[ESP + 0x1c]
  00a9ec1f:	8d b7 e0 00 00 00                              	LEA ESI,[EDI + 0xe0]
  00a9ec25:	52                                             	PUSH EDX
  00a9ec26:	8b ce                                          	MOV ECX,ESI
  00a9ec28:	e8 e3 db ff ff                                 	CALL 0x00a9c810
  00a9ec2d:	8b 4e 08                                       	MOV ECX,dword ptr [ESI + 0x8]
  00a9ec30:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  00a9ec33:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00a9ec37:	3b 04 8a                                       	CMP EAX,dword ptr [EDX + ECX*0x4]
  00a9ec3a:	74 28                                          	JZ 0x00a9ec64
  00a9ec3c:	8d 48 08                                       	LEA ECX,[EAX + 0x8]
  00a9ec3f:	e8 2c c0 ff ff                                 	CALL 0x00a9ac70
  00a9ec44:	84 c0                                          	TEST AL,AL
  00a9ec46:	74 1c                                          	JZ 0x00a9ec64
  00a9ec48:	6a 00                                          	PUSH 0x0
  00a9ec4a:	8d 44 24 28                                    	LEA EAX,[ESP + 0x28]
  00a9ec4e:	50                                             	PUSH EAX
  00a9ec4f:	8b cf                                          	MOV ECX,EDI
  00a9ec51:	e8 0a f9 ff ff                                 	CALL 0x00a9e560
  00a9ec56:	eb 0c                                          	JMP 0x00a9ec64
  00a9ec58:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  00a9ec5c:	51                                             	PUSH ECX
  00a9ec5d:	8b cf                                          	MOV ECX,EDI
  00a9ec5f:	e8 9c f6 ff ff                                 	CALL 0x00a9e300
  00a9ec64:	80 7c 24 28 00                                 	CMP byte ptr [ESP + 0x28],0x0
  00a9ec69:	74 0e                                          	JZ 0x00a9ec79
  00a9ec6b:	6a 01                                          	PUSH 0x1
  00a9ec6d:	8d 54 24 28                                    	LEA EDX,[ESP + 0x28]
  00a9ec71:	52                                             	PUSH EDX
  00a9ec72:	8b cf                                          	MOV ECX,EDI
  00a9ec74:	e8 47 fb ff ff                                 	CALL 0x00a9e7c0
  00a9ec79:	83 c3 01                                       	ADD EBX,0x1
  00a9ec7c:	83 fb 04                                       	CMP EBX,0x4
  00a9ec7f:	0f 8c 4b ff ff ff                              	JL 0x00a9ebd0
  00a9ec85:	5f                                             	POP EDI
  00a9ec86:	5e                                             	POP ESI
  00a9ec87:	5d                                             	POP EBP
  00a9ec88:	5b                                             	POP EBX
  00a9ec89:	83 c4 10                                       	ADD ESP,0x10
  00a9ec8c:	c2 08 00                                       	RET 0x8
