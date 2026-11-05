# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775080 (ScriptCore.StreamHost::StreamHost_WriteFloat)
Paired actual Ghidra pseudocode: 00775080_ScriptCore_StreamHost_StreamHost_WriteFloat.c
Envelope [0x00775080,0x007750f9); 121 bytes; exact owned ranges: [0x00775080,0x007750f9)
Owned: 121 original bytes / 41 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00775080 <original>:
  00775080:	56                                             	PUSH ESI
  00775081:	8b 74 24 08                                    	MOV ESI,dword ptr [ESP + 0x8]
  00775085:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  0077508b:	75 07                                          	JNZ 0x00775094
  0077508d:	a1 3c 78 1d 01                                 	MOV EAX,[0x011d783c]
  00775092:	eb 33                                          	JMP 0x007750c7
  00775094:	8b c6                                          	MOV EAX,ESI
  00775096:	25 00 00 00 ff                                 	AND EAX,0xff000000
  0077509b:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  007750a0:	74 04                                          	JZ 0x007750a6
  007750a2:	33 c0                                          	XOR EAX,EAX
  007750a4:	eb 21                                          	JMP 0x007750c7
  007750a6:	e8 e5 42 ff ff                                 	CALL 0x00769390
  007750ab:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007750ad:	8b c8                                          	MOV ECX,EAX
  007750af:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  007750b5:	56                                             	PUSH ESI
  007750b6:	ff d0                                          	CALL EAX
  007750b8:	85 c0                                          	TEST EAX,EAX
  007750ba:	74 0b                                          	JZ 0x007750c7
  007750bc:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  007750c1:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  007750c7:	85 c0                                          	TEST EAX,EAX
  007750c9:	5e                                             	POP ESI
  007750ca:	75 06                                          	JNZ 0x007750d2
  007750cc:	b8 fe ff ff ff                                 	MOV EAX,0xfffffffe
  007750d1:	c3                                             	RET
  007750d2:	f3 0f 10 44 24 08                              	MOVSS XMM0,dword ptr [ESP + 0x8]
  007750d8:	f3 0f 11 44 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM0
  007750de:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007750e0:	8b 52 38                                       	MOV EDX,dword ptr [EDX + 0x38]
  007750e3:	6a 04                                          	PUSH 0x4
  007750e5:	8d 4c 24 08                                    	LEA ECX,[ESP + 0x8]
  007750e9:	51                                             	PUSH ECX
  007750ea:	8b c8                                          	MOV ECX,EAX
  007750ec:	ff d2                                          	CALL EDX
  007750ee:	f6 d8                                          	NEG AL
  007750f0:	1b c0                                          	SBB EAX,EAX
  007750f2:	83 e0 03                                       	AND EAX,0x3
  007750f5:	83 c0 fd                                       	ADD EAX,-0x3
  007750f8:	c3                                             	RET
