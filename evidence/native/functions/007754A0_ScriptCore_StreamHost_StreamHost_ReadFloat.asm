# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007754a0 (ScriptCore.StreamHost::StreamHost_ReadFloat)
Paired actual Ghidra pseudocode: 007754A0_ScriptCore_StreamHost_StreamHost_ReadFloat.c
Envelope [0x007754a0,0x0077552e); 142 bytes; exact owned ranges: [0x007754a0,0x0077552e)
Owned: 142 original bytes / 48 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007754a0 <original>:
  007754a0:	56                                             	PUSH ESI
  007754a1:	8b 74 24 08                                    	MOV ESI,dword ptr [ESP + 0x8]
  007754a5:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  007754ab:	75 08                                          	JNZ 0x007754b5
  007754ad:	8b 0d 3c 78 1d 01                              	MOV ECX,dword ptr [0x011d783c]
  007754b3:	eb 35                                          	JMP 0x007754ea
  007754b5:	8b c6                                          	MOV EAX,ESI
  007754b7:	25 00 00 00 ff                                 	AND EAX,0xff000000
  007754bc:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  007754c1:	74 04                                          	JZ 0x007754c7
  007754c3:	33 c9                                          	XOR ECX,ECX
  007754c5:	eb 23                                          	JMP 0x007754ea
  007754c7:	e8 c4 3e ff ff                                 	CALL 0x00769390
  007754cc:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007754ce:	8b c8                                          	MOV ECX,EAX
  007754d0:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  007754d6:	56                                             	PUSH ESI
  007754d7:	ff d0                                          	CALL EAX
  007754d9:	85 c0                                          	TEST EAX,EAX
  007754db:	74 0b                                          	JZ 0x007754e8
  007754dd:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  007754e2:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  007754e8:	8b c8                                          	MOV ECX,EAX
  007754ea:	85 c9                                          	TEST ECX,ECX
  007754ec:	5e                                             	POP ESI
  007754ed:	75 04                                          	JNZ 0x007754f3
  007754ef:	8d 41 fe                                       	LEA EAX,[ECX + -0x2]
  007754f2:	c3                                             	RET
  007754f3:	c7 44 24 04 00 00 00 00                        	MOV dword ptr [ESP + 0x4],0x0
  007754fb:	8b 11                                          	MOV EDX,dword ptr [ECX]
  007754fd:	8b 52 30                                       	MOV EDX,dword ptr [EDX + 0x30]
  00775500:	6a 04                                          	PUSH 0x4
  00775502:	8d 44 24 08                                    	LEA EAX,[ESP + 0x8]
  00775506:	50                                             	PUSH EAX
  00775507:	ff d2                                          	CALL EDX
  00775509:	83 f8 04                                       	CMP EAX,0x4
  0077550c:	74 0f                                          	JZ 0x0077551d
  0077550e:	33 c9                                          	XOR ECX,ECX
  00775510:	83 f8 ff                                       	CMP EAX,-0x1
  00775513:	0f 95 c1                                       	SETNZ CL
  00775516:	8d 4c 09 fd                                    	LEA ECX,[ECX + ECX*0x1 + -0x3]
  0077551a:	8b c1                                          	MOV EAX,ECX
  0077551c:	c3                                             	RET
  0077551d:	8b 54 24 08                                    	MOV EDX,dword ptr [ESP + 0x8]
  00775521:	f3 0f 10 44 24 04                              	MOVSS XMM0,dword ptr [ESP + 0x4]
  00775527:	f3 0f 11 02                                    	MOVSS dword ptr [EDX],XMM0
  0077552b:	33 c0                                          	XOR EAX,EAX
  0077552d:	c3                                             	RET
