# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775380 (ScriptCore.StreamHost::StreamHost_ReadInt)
Paired actual Ghidra pseudocode: 00775380_ScriptCore_StreamHost_StreamHost_ReadInt.c
Envelope [0x00775380,0x0077540e); 142 bytes; exact owned ranges: [0x00775380,0x0077540e)
Owned: 142 original bytes / 53 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00775380 <original>:
  00775380:	56                                             	PUSH ESI
  00775381:	8b 74 24 08                                    	MOV ESI,dword ptr [ESP + 0x8]
  00775385:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  0077538b:	75 08                                          	JNZ 0x00775395
  0077538d:	8b 0d 3c 78 1d 01                              	MOV ECX,dword ptr [0x011d783c]
  00775393:	eb 35                                          	JMP 0x007753ca
  00775395:	8b c6                                          	MOV EAX,ESI
  00775397:	25 00 00 00 ff                                 	AND EAX,0xff000000
  0077539c:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  007753a1:	74 04                                          	JZ 0x007753a7
  007753a3:	33 c9                                          	XOR ECX,ECX
  007753a5:	eb 23                                          	JMP 0x007753ca
  007753a7:	e8 e4 3f ff ff                                 	CALL 0x00769390
  007753ac:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007753ae:	8b c8                                          	MOV ECX,EAX
  007753b0:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  007753b6:	56                                             	PUSH ESI
  007753b7:	ff d0                                          	CALL EAX
  007753b9:	85 c0                                          	TEST EAX,EAX
  007753bb:	74 0b                                          	JZ 0x007753c8
  007753bd:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  007753c2:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  007753c8:	8b c8                                          	MOV ECX,EAX
  007753ca:	85 c9                                          	TEST ECX,ECX
  007753cc:	75 05                                          	JNZ 0x007753d3
  007753ce:	8d 41 fe                                       	LEA EAX,[ECX + -0x2]
  007753d1:	5e                                             	POP ESI
  007753d2:	c3                                             	RET
  007753d3:	8b 74 24 0c                                    	MOV ESI,dword ptr [ESP + 0xc]
  007753d7:	83 fe 04                                       	CMP ESI,0x4
  007753da:	7e 07                                          	JLE 0x007753e3
  007753dc:	b8 fd ff ff ff                                 	MOV EAX,0xfffffffd
  007753e1:	5e                                             	POP ESI
  007753e2:	c3                                             	RET
  007753e3:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  007753e7:	c7 00 00 00 00 00                              	MOV dword ptr [EAX],0x0
  007753ed:	8b 11                                          	MOV EDX,dword ptr [ECX]
  007753ef:	56                                             	PUSH ESI
  007753f0:	50                                             	PUSH EAX
  007753f1:	8b 42 30                                       	MOV EAX,dword ptr [EDX + 0x30]
  007753f4:	ff d0                                          	CALL EAX
  007753f6:	3b c6                                          	CMP EAX,ESI
  007753f8:	74 10                                          	JZ 0x0077540a
  007753fa:	33 c9                                          	XOR ECX,ECX
  007753fc:	83 f8 ff                                       	CMP EAX,-0x1
  007753ff:	0f 95 c1                                       	SETNZ CL
  00775402:	5e                                             	POP ESI
  00775403:	8d 4c 09 fd                                    	LEA ECX,[ECX + ECX*0x1 + -0x3]
  00775407:	8b c1                                          	MOV EAX,ECX
  00775409:	c3                                             	RET
  0077540a:	33 c0                                          	XOR EAX,EAX
  0077540c:	5e                                             	POP ESI
  0077540d:	c3                                             	RET
