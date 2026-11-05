# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007d43f0 (PersistWriter_WriteNativeHandle)
Paired actual Ghidra pseudocode: 007D43F0_PersistWriter_WriteNativeHandle.c
Envelope [0x007d43f0,0x007d448e); 158 bytes; exact owned ranges: [0x007d43f0,0x007d448e)
Owned: 158 original bytes / 67 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007d43f0 <original>:
  007d43f0:	83 ec 08                                       	SUB ESP,0x8
  007d43f3:	53                                             	PUSH EBX
  007d43f4:	8b 5c 24 10                                    	MOV EBX,dword ptr [ESP + 0x10]
  007d43f8:	56                                             	PUSH ESI
  007d43f9:	57                                             	PUSH EDI
  007d43fa:	8b f9                                          	MOV EDI,ECX
  007d43fc:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  007d4400:	51                                             	PUSH ECX
  007d4401:	8b c3                                          	MOV EAX,EBX
  007d4403:	8d 54 24 10                                    	LEA EDX,[ESP + 0x10]
  007d4407:	c1 e8 18                                       	SHR EAX,0x18
  007d440a:	8d 77 7c                                       	LEA ESI,[EDI + 0x7c]
  007d440d:	52                                             	PUSH EDX
  007d440e:	8b ce                                          	MOV ECX,ESI
  007d4410:	88 44 24 20                                    	MOV byte ptr [ESP + 0x20],AL
  007d4414:	e8 77 fc ff ff                                 	CALL 0x007d4090
  007d4419:	8b 00                                          	MOV EAX,dword ptr [EAX]
  007d441b:	8b 4e 08                                       	MOV ECX,dword ptr [ESI + 0x8]
  007d441e:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  007d4421:	3b 04 8a                                       	CMP EAX,dword ptr [EDX + ECX*0x4]
  007d4424:	74 05                                          	JZ 0x007d442b
  007d4426:	8b 70 04                                       	MOV ESI,dword ptr [EAX + 0x4]
  007d4429:	eb 02                                          	JMP 0x007d442d
  007d442b:	33 f6                                          	XOR ESI,ESI
  007d442d:	85 db                                          	TEST EBX,EBX
  007d442f:	74 1a                                          	JZ 0x007d444b
  007d4431:	85 f6                                          	TEST ESI,ESI
  007d4433:	74 16                                          	JZ 0x007d444b
  007d4435:	e8 56 4f f9 ff                                 	CALL 0x00769390
  007d443a:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007d443c:	8b c8                                          	MOV ECX,EAX
  007d443e:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  007d4444:	53                                             	PUSH EBX
  007d4445:	ff d0                                          	CALL EAX
  007d4447:	85 c0                                          	TEST EAX,EAX
  007d4449:	75 26                                          	JNZ 0x007d4471
  007d444b:	8b 4f 14                                       	MOV ECX,dword ptr [EDI + 0x14]
  007d444e:	8b 57 0c                                       	MOV EDX,dword ptr [EDI + 0xc]
  007d4451:	8d 77 04                                       	LEA ESI,[EDI + 0x4]
  007d4454:	51                                             	PUSH ECX
  007d4455:	6a ff                                          	PUSH -0x1
  007d4457:	52                                             	PUSH EDX
  007d4458:	e8 03 9c d0 ff                                 	CALL 0x004de060
  007d445d:	83 c4 0c                                       	ADD ESP,0xc
  007d4460:	8b ce                                          	MOV ECX,ESI
  007d4462:	50                                             	PUSH EAX
  007d4463:	e8 88 35 00 00                                 	CALL 0x007d79f0
  007d4468:	5f                                             	POP EDI
  007d4469:	5e                                             	POP ESI
  007d446a:	5b                                             	POP EBX
  007d446b:	83 c4 08                                       	ADD ESP,0x8
  007d446e:	c2 04 00                                       	RET 0x4
  007d4471:	8b 16                                          	MOV EDX,dword ptr [ESI]
  007d4473:	50                                             	PUSH EAX
  007d4474:	8b 42 1c                                       	MOV EAX,dword ptr [EDX + 0x1c]
  007d4477:	8b ce                                          	MOV ECX,ESI
  007d4479:	ff d0                                          	CALL EAX
  007d447b:	8b 17                                          	MOV EDX,dword ptr [EDI]
  007d447d:	50                                             	PUSH EAX
  007d447e:	8b 42 0c                                       	MOV EAX,dword ptr [EDX + 0xc]
  007d4481:	8b cf                                          	MOV ECX,EDI
  007d4483:	ff d0                                          	CALL EAX
  007d4485:	5f                                             	POP EDI
  007d4486:	5e                                             	POP ESI
  007d4487:	5b                                             	POP EBX
  007d4488:	83 c4 08                                       	ADD ESP,0x8
  007d448b:	c2 04 00                                       	RET 0x4
