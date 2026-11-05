# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775530 (ScriptCore.StreamHost::StreamHost_ReadDouble)
Paired actual Ghidra pseudocode: 00775530_ScriptCore_StreamHost_StreamHost_ReadDouble.c
Envelope [0x00775530,0x007755cc); 156 bytes; exact owned ranges: [0x00775530,0x007755cc)
Owned: 156 original bytes / 53 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00775530 <original>:
  00775530:	83 ec 08                                       	SUB ESP,0x8
  00775533:	56                                             	PUSH ESI
  00775534:	8b 74 24 10                                    	MOV ESI,dword ptr [ESP + 0x10]
  00775538:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  0077553e:	75 08                                          	JNZ 0x00775548
  00775540:	8b 0d 3c 78 1d 01                              	MOV ECX,dword ptr [0x011d783c]
  00775546:	eb 35                                          	JMP 0x0077557d
  00775548:	8b c6                                          	MOV EAX,ESI
  0077554a:	25 00 00 00 ff                                 	AND EAX,0xff000000
  0077554f:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  00775554:	74 04                                          	JZ 0x0077555a
  00775556:	33 c9                                          	XOR ECX,ECX
  00775558:	eb 23                                          	JMP 0x0077557d
  0077555a:	e8 31 3e ff ff                                 	CALL 0x00769390
  0077555f:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00775561:	8b c8                                          	MOV ECX,EAX
  00775563:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  00775569:	56                                             	PUSH ESI
  0077556a:	ff d0                                          	CALL EAX
  0077556c:	85 c0                                          	TEST EAX,EAX
  0077556e:	74 0b                                          	JZ 0x0077557b
  00775570:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  00775575:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  0077557b:	8b c8                                          	MOV ECX,EAX
  0077557d:	85 c9                                          	TEST ECX,ECX
  0077557f:	5e                                             	POP ESI
  00775580:	75 07                                          	JNZ 0x00775589
  00775582:	8d 41 fe                                       	LEA EAX,[ECX + -0x2]
  00775585:	83 c4 08                                       	ADD ESP,0x8
  00775588:	c3                                             	RET
  00775589:	c7 04 24 00 00 00 00                           	MOV dword ptr [ESP],0x0
  00775590:	c7 44 24 04 00 00 00 00                        	MOV dword ptr [ESP + 0x4],0x0
  00775598:	8b 11                                          	MOV EDX,dword ptr [ECX]
  0077559a:	8b 52 30                                       	MOV EDX,dword ptr [EDX + 0x30]
  0077559d:	6a 08                                          	PUSH 0x8
  0077559f:	8d 44 24 04                                    	LEA EAX,[ESP + 0x4]
  007755a3:	50                                             	PUSH EAX
  007755a4:	ff d2                                          	CALL EDX
  007755a6:	83 f8 08                                       	CMP EAX,0x8
  007755a9:	74 12                                          	JZ 0x007755bd
  007755ab:	33 c9                                          	XOR ECX,ECX
  007755ad:	83 f8 ff                                       	CMP EAX,-0x1
  007755b0:	0f 95 c1                                       	SETNZ CL
  007755b3:	8d 4c 09 fd                                    	LEA ECX,[ECX + ECX*0x1 + -0x3]
  007755b7:	8b c1                                          	MOV EAX,ECX
  007755b9:	83 c4 08                                       	ADD ESP,0x8
  007755bc:	c3                                             	RET
  007755bd:	dd 04 24                                       	FLD double ptr [ESP]
  007755c0:	8b 54 24 10                                    	MOV EDX,dword ptr [ESP + 0x10]
  007755c4:	dd 1a                                          	FSTP double ptr [EDX]
  007755c6:	33 c0                                          	XOR EAX,EAX
  007755c8:	83 c4 08                                       	ADD ESP,0x8
  007755cb:	c3                                             	RET
