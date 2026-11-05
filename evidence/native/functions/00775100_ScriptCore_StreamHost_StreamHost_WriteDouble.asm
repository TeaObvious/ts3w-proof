# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775100 (ScriptCore.StreamHost::StreamHost_WriteDouble)
Paired actual Ghidra pseudocode: 00775100_ScriptCore_StreamHost_StreamHost_WriteDouble.c
Envelope [0x00775100,0x0077517e); 126 bytes; exact owned ranges: [0x00775100,0x0077517e)
Owned: 126 original bytes / 44 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00775100 <original>:
  00775100:	83 ec 08                                       	SUB ESP,0x8
  00775103:	56                                             	PUSH ESI
  00775104:	8b 74 24 10                                    	MOV ESI,dword ptr [ESP + 0x10]
  00775108:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  0077510e:	75 07                                          	JNZ 0x00775117
  00775110:	a1 3c 78 1d 01                                 	MOV EAX,[0x011d783c]
  00775115:	eb 33                                          	JMP 0x0077514a
  00775117:	8b c6                                          	MOV EAX,ESI
  00775119:	25 00 00 00 ff                                 	AND EAX,0xff000000
  0077511e:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  00775123:	74 04                                          	JZ 0x00775129
  00775125:	33 c0                                          	XOR EAX,EAX
  00775127:	eb 21                                          	JMP 0x0077514a
  00775129:	e8 62 42 ff ff                                 	CALL 0x00769390
  0077512e:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00775130:	8b c8                                          	MOV ECX,EAX
  00775132:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  00775138:	56                                             	PUSH ESI
  00775139:	ff d0                                          	CALL EAX
  0077513b:	85 c0                                          	TEST EAX,EAX
  0077513d:	74 0b                                          	JZ 0x0077514a
  0077513f:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  00775144:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  0077514a:	85 c0                                          	TEST EAX,EAX
  0077514c:	5e                                             	POP ESI
  0077514d:	75 09                                          	JNZ 0x00775158
  0077514f:	b8 fe ff ff ff                                 	MOV EAX,0xfffffffe
  00775154:	83 c4 08                                       	ADD ESP,0x8
  00775157:	c3                                             	RET
  00775158:	dd 44 24 10                                    	FLD double ptr [ESP + 0x10]
  0077515c:	6a 08                                          	PUSH 0x8
  0077515e:	dd 5c 24 04                                    	FSTP double ptr [ESP + 0x4]
  00775162:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00775164:	8b 52 38                                       	MOV EDX,dword ptr [EDX + 0x38]
  00775167:	8d 4c 24 04                                    	LEA ECX,[ESP + 0x4]
  0077516b:	51                                             	PUSH ECX
  0077516c:	8b c8                                          	MOV ECX,EAX
  0077516e:	ff d2                                          	CALL EDX
  00775170:	f6 d8                                          	NEG AL
  00775172:	1b c0                                          	SBB EAX,EAX
  00775174:	83 e0 03                                       	AND EAX,0x3
  00775177:	83 c0 fd                                       	ADD EAX,-0x3
  0077517a:	83 c4 08                                       	ADD ESP,0x8
  0077517d:	c3                                             	RET
