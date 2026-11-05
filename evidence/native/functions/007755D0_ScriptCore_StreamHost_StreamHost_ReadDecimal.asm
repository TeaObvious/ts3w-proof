# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007755d0 (ScriptCore.StreamHost::StreamHost_ReadDecimal)
Paired actual Ghidra pseudocode: 007755D0_ScriptCore_StreamHost_StreamHost_ReadDecimal.c
Envelope [0x007755d0,0x00775672); 162 bytes; exact owned ranges: [0x007755d0,0x00775672)
Owned: 162 original bytes / 57 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007755d0 <original>:
  007755d0:	83 ec 10                                       	SUB ESP,0x10
  007755d3:	56                                             	PUSH ESI
  007755d4:	8b 74 24 18                                    	MOV ESI,dword ptr [ESP + 0x18]
  007755d8:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  007755de:	75 08                                          	JNZ 0x007755e8
  007755e0:	8b 0d 3c 78 1d 01                              	MOV ECX,dword ptr [0x011d783c]
  007755e6:	eb 35                                          	JMP 0x0077561d
  007755e8:	8b c6                                          	MOV EAX,ESI
  007755ea:	25 00 00 00 ff                                 	AND EAX,0xff000000
  007755ef:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  007755f4:	74 04                                          	JZ 0x007755fa
  007755f6:	33 c9                                          	XOR ECX,ECX
  007755f8:	eb 23                                          	JMP 0x0077561d
  007755fa:	e8 91 3d ff ff                                 	CALL 0x00769390
  007755ff:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00775601:	8b c8                                          	MOV ECX,EAX
  00775603:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  00775609:	56                                             	PUSH ESI
  0077560a:	ff d0                                          	CALL EAX
  0077560c:	85 c0                                          	TEST EAX,EAX
  0077560e:	74 0b                                          	JZ 0x0077561b
  00775610:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  00775615:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  0077561b:	8b c8                                          	MOV ECX,EAX
  0077561d:	85 c9                                          	TEST ECX,ECX
  0077561f:	5e                                             	POP ESI
  00775620:	75 07                                          	JNZ 0x00775629
  00775622:	8d 41 fe                                       	LEA EAX,[ECX + -0x2]
  00775625:	83 c4 10                                       	ADD ESP,0x10
  00775628:	c3                                             	RET
  00775629:	8b 11                                          	MOV EDX,dword ptr [ECX]
  0077562b:	8b 52 30                                       	MOV EDX,dword ptr [EDX + 0x30]
  0077562e:	6a 10                                          	PUSH 0x10
  00775630:	8d 44 24 04                                    	LEA EAX,[ESP + 0x4]
  00775634:	50                                             	PUSH EAX
  00775635:	ff d2                                          	CALL EDX
  00775637:	83 f8 10                                       	CMP EAX,0x10
  0077563a:	74 12                                          	JZ 0x0077564e
  0077563c:	33 c9                                          	XOR ECX,ECX
  0077563e:	83 f8 ff                                       	CMP EAX,-0x1
  00775641:	0f 95 c1                                       	SETNZ CL
  00775644:	8d 4c 09 fd                                    	LEA ECX,[ECX + ECX*0x1 + -0x3]
  00775648:	8b c1                                          	MOV EAX,ECX
  0077564a:	83 c4 10                                       	ADD ESP,0x10
  0077564d:	c3                                             	RET
  0077564e:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00775652:	8b 14 24                                       	MOV EDX,dword ptr [ESP]
  00775655:	8b 4c 24 04                                    	MOV ECX,dword ptr [ESP + 0x4]
  00775659:	89 50 08                                       	MOV dword ptr [EAX + 0x8],EDX
  0077565c:	8b 54 24 08                                    	MOV EDX,dword ptr [ESP + 0x8]
  00775660:	89 48 0c                                       	MOV dword ptr [EAX + 0xc],ECX
  00775663:	8b 4c 24 0c                                    	MOV ECX,dword ptr [ESP + 0xc]
  00775667:	89 50 04                                       	MOV dword ptr [EAX + 0x4],EDX
  0077566a:	89 08                                          	MOV dword ptr [EAX],ECX
  0077566c:	33 c0                                          	XOR EAX,EAX
  0077566e:	83 c4 10                                       	ADD ESP,0x10
  00775671:	c3                                             	RET
