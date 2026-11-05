# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007d4360 (PersistWriter_IndexNativeHandle)
Paired actual Ghidra pseudocode: 007D4360_PersistWriter_IndexNativeHandle.c
Envelope [0x007d4360,0x007d43ea); 138 bytes; exact owned ranges: [0x007d4360,0x007d43ea)
Owned: 138 original bytes / 60 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007d4360 <original>:
  007d4360:	83 ec 08                                       	SUB ESP,0x8
  007d4363:	53                                             	PUSH EBX
  007d4364:	8b 5c 24 10                                    	MOV EBX,dword ptr [ESP + 0x10]
  007d4368:	85 db                                          	TEST EBX,EBX
  007d436a:	57                                             	PUSH EDI
  007d436b:	8b f9                                          	MOV EDI,ECX
  007d436d:	75 0b                                          	JNZ 0x007d437a
  007d436f:	5f                                             	POP EDI
  007d4370:	83 c8 ff                                       	OR EAX,0xffffffff
  007d4373:	5b                                             	POP EBX
  007d4374:	83 c4 08                                       	ADD ESP,0x8
  007d4377:	c2 04 00                                       	RET 0x4
  007d437a:	56                                             	PUSH ESI
  007d437b:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  007d437f:	51                                             	PUSH ECX
  007d4380:	8b c3                                          	MOV EAX,EBX
  007d4382:	8d 54 24 10                                    	LEA EDX,[ESP + 0x10]
  007d4386:	c1 e8 18                                       	SHR EAX,0x18
  007d4389:	8d 77 7c                                       	LEA ESI,[EDI + 0x7c]
  007d438c:	52                                             	PUSH EDX
  007d438d:	8b ce                                          	MOV ECX,ESI
  007d438f:	88 44 24 20                                    	MOV byte ptr [ESP + 0x20],AL
  007d4393:	e8 f8 fc ff ff                                 	CALL 0x007d4090
  007d4398:	8b 00                                          	MOV EAX,dword ptr [EAX]
  007d439a:	8b 4e 08                                       	MOV ECX,dword ptr [ESI + 0x8]
  007d439d:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  007d43a0:	3b 04 8a                                       	CMP EAX,dword ptr [EDX + ECX*0x4]
  007d43a3:	74 1d                                          	JZ 0x007d43c2
  007d43a5:	8b 70 04                                       	MOV ESI,dword ptr [EAX + 0x4]
  007d43a8:	85 f6                                          	TEST ESI,ESI
  007d43aa:	74 16                                          	JZ 0x007d43c2
  007d43ac:	e8 df 4f f9 ff                                 	CALL 0x00769390
  007d43b1:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007d43b3:	8b c8                                          	MOV ECX,EAX
  007d43b5:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  007d43bb:	53                                             	PUSH EBX
  007d43bc:	ff d0                                          	CALL EAX
  007d43be:	85 c0                                          	TEST EAX,EAX
  007d43c0:	75 0c                                          	JNZ 0x007d43ce
  007d43c2:	5e                                             	POP ESI
  007d43c3:	5f                                             	POP EDI
  007d43c4:	83 c8 ff                                       	OR EAX,0xffffffff
  007d43c7:	5b                                             	POP EBX
  007d43c8:	83 c4 08                                       	ADD ESP,0x8
  007d43cb:	c2 04 00                                       	RET 0x4
  007d43ce:	8b 16                                          	MOV EDX,dword ptr [ESI]
  007d43d0:	8b 1f                                          	MOV EBX,dword ptr [EDI]
  007d43d2:	50                                             	PUSH EAX
  007d43d3:	8b 42 1c                                       	MOV EAX,dword ptr [EDX + 0x1c]
  007d43d6:	8b ce                                          	MOV ECX,ESI
  007d43d8:	ff d0                                          	CALL EAX
  007d43da:	8b 13                                          	MOV EDX,dword ptr [EBX]
  007d43dc:	50                                             	PUSH EAX
  007d43dd:	8b cf                                          	MOV ECX,EDI
  007d43df:	ff d2                                          	CALL EDX
  007d43e1:	5e                                             	POP ESI
  007d43e2:	5f                                             	POP EDI
  007d43e3:	5b                                             	POP EBX
  007d43e4:	83 c4 08                                       	ADD ESP,0x8
  007d43e7:	c2 04 00                                       	RET 0x4
