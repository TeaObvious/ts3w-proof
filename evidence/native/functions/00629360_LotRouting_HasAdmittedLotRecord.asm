# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00629360 (LotRouting_HasAdmittedLotRecord)
Paired actual Ghidra pseudocode: 00629360_LotRouting_HasAdmittedLotRecord.c
Envelope [0x00629360,0x006293d5); 117 bytes. Exact owned ranges: [0x00629360,0x006293d5)
Owned: 117 pristine PE bytes / 49 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope alignment bytes; they are not Listing instructions or function-body bytes.
Inferred stored prototypes remain unchanged; physical register/stack/AL and original managed evidence govern ABI interpretation.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00629360 <original>:
  00629360:	83 ec 08                                       	SUB ESP,0x8
  00629363:	53                                             	PUSH EBX
  00629364:	8b 5c 24 14                                    	MOV EBX,dword ptr [ESP + 0x14]
  00629368:	56                                             	PUSH ESI
  00629369:	57                                             	PUSH EDI
  0062936a:	8b 7c 24 18                                    	MOV EDI,dword ptr [ESP + 0x18]
  0062936e:	8b c7                                          	MOV EAX,EDI
  00629370:	0b c3                                          	OR EAX,EBX
  00629372:	8b f1                                          	MOV ESI,ECX
  00629374:	74 54                                          	JZ 0x006293ca
  00629376:	8b cf                                          	MOV ECX,EDI
  00629378:	23 cb                                          	AND ECX,EBX
  0062937a:	83 f9 ff                                       	CMP ECX,-0x1
  0062937d:	74 4b                                          	JZ 0x006293ca
  0062937f:	e8 9c fb 65 00                                 	CALL 0x00c88f20
  00629384:	3b 78 48                                       	CMP EDI,dword ptr [EAX + 0x48]
  00629387:	75 05                                          	JNZ 0x0062938e
  00629389:	3b 58 4c                                       	CMP EBX,dword ptr [EAX + 0x4c]
  0062938c:	74 3c                                          	JZ 0x006293ca
  0062938e:	8d 54 24 18                                    	LEA EDX,[ESP + 0x18]
  00629392:	52                                             	PUSH EDX
  00629393:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  00629397:	83 c6 48                                       	ADD ESI,0x48
  0062939a:	50                                             	PUSH EAX
  0062939b:	8b ce                                          	MOV ECX,ESI
  0062939d:	e8 8e f3 ff ff                                 	CALL 0x00628730
  006293a2:	8b 4e 08                                       	MOV ECX,dword ptr [ESI + 0x8]
  006293a5:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  006293a8:	8b 44 24 0c                                    	MOV EAX,dword ptr [ESP + 0xc]
  006293ac:	3b 04 8a                                       	CMP EAX,dword ptr [EDX + ECX*0x4]
  006293af:	74 19                                          	JZ 0x006293ca
  006293b1:	8b 48 10                                       	MOV ECX,dword ptr [EAX + 0x10]
  006293b4:	3b cf                                          	CMP ECX,EDI
  006293b6:	75 12                                          	JNZ 0x006293ca
  006293b8:	8b 50 14                                       	MOV EDX,dword ptr [EAX + 0x14]
  006293bb:	3b d3                                          	CMP EDX,EBX
  006293bd:	75 0b                                          	JNZ 0x006293ca
  006293bf:	5f                                             	POP EDI
  006293c0:	5e                                             	POP ESI
  006293c1:	b0 01                                          	MOV AL,0x1
  006293c3:	5b                                             	POP EBX
  006293c4:	83 c4 08                                       	ADD ESP,0x8
  006293c7:	c2 08 00                                       	RET 0x8
  006293ca:	5f                                             	POP EDI
  006293cb:	5e                                             	POP ESI
  006293cc:	32 c0                                          	XOR AL,AL
  006293ce:	5b                                             	POP EBX
  006293cf:	83 c4 08                                       	ADD ESP,0x8
  006293d2:	c2 08 00                                       	RET 0x8
