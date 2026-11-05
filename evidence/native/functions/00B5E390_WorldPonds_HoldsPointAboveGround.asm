# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00b5e390 (WorldPonds_HoldsPointAboveGround)
Paired actual Ghidra pseudocode: 00B5E390_WorldPonds_HoldsPointAboveGround.c
Envelope [0x00b5e390,0x00b5e43b); 171 bytes. Exact owned ranges: [0x00b5e390,0x00b5e43b)
Owned: 171 pristine PE bytes / 61 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b5e390 <original>:
  00b5e390:	d9 44 24 08                                    	FLD float ptr [ESP + 0x8]
  00b5e394:	56                                             	PUSH ESI
  00b5e395:	83 ec 08                                       	SUB ESP,0x8
  00b5e398:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00b5e39c:	8b f1                                          	MOV ESI,ECX
  00b5e39e:	d9 44 24 10                                    	FLD float ptr [ESP + 0x10]
  00b5e3a2:	8d 8e 80 04 00 00                              	LEA ECX,[ESI + 0x480]
  00b5e3a8:	d9 1c 24                                       	FSTP float ptr [ESP]
  00b5e3ab:	e8 50 fe ff ff                                 	CALL 0x00b5e200
  00b5e3b0:	84 c0                                          	TEST AL,AL
  00b5e3b2:	74 7a                                          	JZ 0x00b5e42e
  00b5e3b4:	d9 44 24 0c                                    	FLD float ptr [ESP + 0xc]
  00b5e3b8:	8b 8e 14 02 00 00                              	MOV ECX,dword ptr [ESI + 0x214]
  00b5e3be:	6a 00                                          	PUSH 0x0
  00b5e3c0:	6a 00                                          	PUSH 0x0
  00b5e3c2:	6a 00                                          	PUSH 0x0
  00b5e3c4:	6a 00                                          	PUSH 0x0
  00b5e3c6:	6a 00                                          	PUSH 0x0
  00b5e3c8:	6a 01                                          	PUSH 0x1
  00b5e3ca:	6a 00                                          	PUSH 0x0
  00b5e3cc:	83 ec 08                                       	SUB ESP,0x8
  00b5e3cf:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00b5e3d3:	d9 44 24 2c                                    	FLD float ptr [ESP + 0x2c]
  00b5e3d7:	d9 1c 24                                       	FSTP float ptr [ESP]
  00b5e3da:	e8 b1 bc 10 00                                 	CALL 0x00c6a090
  00b5e3df:	d9 86 18 02 00 00                              	FLD float ptr [ESI + 0x218]
  00b5e3e5:	df f1                                          	FCOMIP ST0,ST1
  00b5e3e7:	dd d8                                          	FSTP ST0
  00b5e3e9:	76 43                                          	JBE 0x00b5e42e
  00b5e3eb:	80 7c 24 10 00                                 	CMP byte ptr [ESP + 0x10],0x0
  00b5e3f0:	53                                             	PUSH EBX
  00b5e3f1:	b3 01                                          	MOV BL,0x1
  00b5e3f3:	74 3f                                          	JZ 0x00b5e434
  00b5e3f5:	8b 86 14 02 00 00                              	MOV EAX,dword ptr [ESI + 0x214]
  00b5e3fb:	8b 48 5c                                       	MOV ECX,dword ptr [EAX + 0x5c]
  00b5e3fe:	85 c9                                          	TEST ECX,ECX
  00b5e400:	74 32                                          	JZ 0x00b5e434
  00b5e402:	d9 44 24 10                                    	FLD float ptr [ESP + 0x10]
  00b5e406:	6a 00                                          	PUSH 0x0
  00b5e408:	6a 00                                          	PUSH 0x0
  00b5e40a:	6a 00                                          	PUSH 0x0
  00b5e40c:	6a 00                                          	PUSH 0x0
  00b5e40e:	6a 01                                          	PUSH 0x1
  00b5e410:	83 ec 08                                       	SUB ESP,0x8
  00b5e413:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00b5e417:	d9 44 24 28                                    	FLD float ptr [ESP + 0x28]
  00b5e41b:	d9 1c 24                                       	FSTP float ptr [ESP]
  00b5e41e:	e8 3d 9b 01 00                                 	CALL 0x00b77f60
  00b5e423:	84 c0                                          	TEST AL,AL
  00b5e425:	74 0d                                          	JZ 0x00b5e434
  00b5e427:	5b                                             	POP EBX
  00b5e428:	32 c0                                          	XOR AL,AL
  00b5e42a:	5e                                             	POP ESI
  00b5e42b:	c2 0c 00                                       	RET 0xc
  00b5e42e:	32 c0                                          	XOR AL,AL
  00b5e430:	5e                                             	POP ESI
  00b5e431:	c2 0c 00                                       	RET 0xc
  00b5e434:	8a c3                                          	MOV AL,BL
  00b5e436:	5b                                             	POP EBX
  00b5e437:	5e                                             	POP ESI
  00b5e438:	c2 0c 00                                       	RET 0xc
