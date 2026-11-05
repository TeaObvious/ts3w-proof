# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007752f0 (ScriptCore.StreamHost::StreamHost_WriteCharUTF8)
Paired actual Ghidra pseudocode: 007752F0_ScriptCore_StreamHost_StreamHost_WriteCharUTF8.c
Envelope [0x007752f0,0x0077537d); 141 bytes; exact owned ranges: [0x007752f0,0x0077537d)
Owned: 141 original bytes / 52 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007752f0 <original>:
  007752f0:	83 ec 08                                       	SUB ESP,0x8
  007752f3:	56                                             	PUSH ESI
  007752f4:	8b 74 24 10                                    	MOV ESI,dword ptr [ESP + 0x10]
  007752f8:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  007752fe:	75 08                                          	JNZ 0x00775308
  00775300:	8b 35 3c 78 1d 01                              	MOV ESI,dword ptr [0x011d783c]
  00775306:	eb 35                                          	JMP 0x0077533d
  00775308:	8b c6                                          	MOV EAX,ESI
  0077530a:	25 00 00 00 ff                                 	AND EAX,0xff000000
  0077530f:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  00775314:	74 04                                          	JZ 0x0077531a
  00775316:	33 f6                                          	XOR ESI,ESI
  00775318:	eb 23                                          	JMP 0x0077533d
  0077531a:	e8 71 40 ff ff                                 	CALL 0x00769390
  0077531f:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00775321:	8b c8                                          	MOV ECX,EAX
  00775323:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  00775329:	56                                             	PUSH ESI
  0077532a:	ff d0                                          	CALL EAX
  0077532c:	85 c0                                          	TEST EAX,EAX
  0077532e:	74 0b                                          	JZ 0x0077533b
  00775330:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  00775335:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  0077533b:	8b f0                                          	MOV ESI,EAX
  0077533d:	85 f6                                          	TEST ESI,ESI
  0077533f:	75 08                                          	JNZ 0x00775349
  00775341:	8d 46 fe                                       	LEA EAX,[ESI + -0x2]
  00775344:	5e                                             	POP ESI
  00775345:	83 c4 08                                       	ADD ESP,0x8
  00775348:	c3                                             	RET
  00775349:	6a 01                                          	PUSH 0x1
  0077534b:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  0077534f:	51                                             	PUSH ECX
  00775350:	8d 54 24 0c                                    	LEA EDX,[ESP + 0xc]
  00775354:	6a 08                                          	PUSH 0x8
  00775356:	52                                             	PUSH EDX
  00775357:	e8 34 f3 d7 ff                                 	CALL 0x004f4690
  0077535c:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0077535e:	8b 52 38                                       	MOV EDX,dword ptr [EDX + 0x38]
  00775361:	83 c4 10                                       	ADD ESP,0x10
  00775364:	50                                             	PUSH EAX
  00775365:	8d 44 24 08                                    	LEA EAX,[ESP + 0x8]
  00775369:	50                                             	PUSH EAX
  0077536a:	8b ce                                          	MOV ECX,ESI
  0077536c:	ff d2                                          	CALL EDX
  0077536e:	f6 d8                                          	NEG AL
  00775370:	5e                                             	POP ESI
  00775371:	1b c0                                          	SBB EAX,EAX
  00775373:	83 e0 03                                       	AND EAX,0x3
  00775376:	83 c0 fd                                       	ADD EAX,-0x3
  00775379:	83 c4 08                                       	ADD ESP,0x8
  0077537c:	c3                                             	RET
