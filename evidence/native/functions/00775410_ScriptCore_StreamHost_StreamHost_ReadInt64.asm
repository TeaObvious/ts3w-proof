# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775410 (ScriptCore.StreamHost::StreamHost_ReadInt64)
Paired actual Ghidra pseudocode: 00775410_ScriptCore_StreamHost_StreamHost_ReadInt64.c
Envelope [0x00775410,0x00775497); 135 bytes; exact owned ranges: [0x00775410,0x00775497)
Owned: 135 original bytes / 46 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00775410 <original>:
  00775410:	56                                             	PUSH ESI
  00775411:	8b 74 24 08                                    	MOV ESI,dword ptr [ESP + 0x8]
  00775415:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  0077541b:	75 08                                          	JNZ 0x00775425
  0077541d:	8b 0d 3c 78 1d 01                              	MOV ECX,dword ptr [0x011d783c]
  00775423:	eb 35                                          	JMP 0x0077545a
  00775425:	8b c6                                          	MOV EAX,ESI
  00775427:	25 00 00 00 ff                                 	AND EAX,0xff000000
  0077542c:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  00775431:	74 04                                          	JZ 0x00775437
  00775433:	33 c9                                          	XOR ECX,ECX
  00775435:	eb 23                                          	JMP 0x0077545a
  00775437:	e8 54 3f ff ff                                 	CALL 0x00769390
  0077543c:	8b 10                                          	MOV EDX,dword ptr [EAX]
  0077543e:	8b c8                                          	MOV ECX,EAX
  00775440:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  00775446:	56                                             	PUSH ESI
  00775447:	ff d0                                          	CALL EAX
  00775449:	85 c0                                          	TEST EAX,EAX
  0077544b:	74 0b                                          	JZ 0x00775458
  0077544d:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  00775452:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  00775458:	8b c8                                          	MOV ECX,EAX
  0077545a:	85 c9                                          	TEST ECX,ECX
  0077545c:	5e                                             	POP ESI
  0077545d:	75 06                                          	JNZ 0x00775465
  0077545f:	b8 fe ff ff ff                                 	MOV EAX,0xfffffffe
  00775464:	c3                                             	RET
  00775465:	8b 44 24 08                                    	MOV EAX,dword ptr [ESP + 0x8]
  00775469:	c7 00 00 00 00 00                              	MOV dword ptr [EAX],0x0
  0077546f:	c7 40 04 00 00 00 00                           	MOV dword ptr [EAX + 0x4],0x0
  00775476:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00775478:	6a 08                                          	PUSH 0x8
  0077547a:	50                                             	PUSH EAX
  0077547b:	8b 42 30                                       	MOV EAX,dword ptr [EDX + 0x30]
  0077547e:	ff d0                                          	CALL EAX
  00775480:	83 f8 08                                       	CMP EAX,0x8
  00775483:	74 0f                                          	JZ 0x00775494
  00775485:	33 c9                                          	XOR ECX,ECX
  00775487:	83 f8 ff                                       	CMP EAX,-0x1
  0077548a:	0f 95 c1                                       	SETNZ CL
  0077548d:	8d 4c 09 fd                                    	LEA ECX,[ECX + ECX*0x1 + -0x3]
  00775491:	8b c1                                          	MOV EAX,ECX
  00775493:	c3                                             	RET
  00775494:	33 c0                                          	XOR EAX,EAX
  00775496:	c3                                             	RET
