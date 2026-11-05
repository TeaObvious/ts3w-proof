# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00774ff0 (ScriptCore.StreamHost::StreamHost_WriteInt64)
Paired actual Ghidra pseudocode: 00774FF0_ScriptCore_StreamHost_StreamHost_WriteInt64.c
Envelope [0x00774ff0,0x00775075); 133 bytes; exact owned ranges: [0x00774ff0,0x00775075)
Owned: 133 original bytes / 46 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00774ff0 <original>:
  00774ff0:	83 ec 08                                       	SUB ESP,0x8
  00774ff3:	56                                             	PUSH ESI
  00774ff4:	8b 74 24 10                                    	MOV ESI,dword ptr [ESP + 0x10]
  00774ff8:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  00774ffe:	75 07                                          	JNZ 0x00775007
  00775000:	a1 3c 78 1d 01                                 	MOV EAX,[0x011d783c]
  00775005:	eb 33                                          	JMP 0x0077503a
  00775007:	8b c6                                          	MOV EAX,ESI
  00775009:	25 00 00 00 ff                                 	AND EAX,0xff000000
  0077500e:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  00775013:	74 04                                          	JZ 0x00775019
  00775015:	33 c0                                          	XOR EAX,EAX
  00775017:	eb 21                                          	JMP 0x0077503a
  00775019:	e8 72 43 ff ff                                 	CALL 0x00769390
  0077501e:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00775020:	8b c8                                          	MOV ECX,EAX
  00775022:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  00775028:	56                                             	PUSH ESI
  00775029:	ff d0                                          	CALL EAX
  0077502b:	85 c0                                          	TEST EAX,EAX
  0077502d:	74 0b                                          	JZ 0x0077503a
  0077502f:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  00775034:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  0077503a:	85 c0                                          	TEST EAX,EAX
  0077503c:	5e                                             	POP ESI
  0077503d:	75 09                                          	JNZ 0x00775048
  0077503f:	b8 fe ff ff ff                                 	MOV EAX,0xfffffffe
  00775044:	83 c4 08                                       	ADD ESP,0x8
  00775047:	c3                                             	RET
  00775048:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  0077504c:	8b 54 24 14                                    	MOV EDX,dword ptr [ESP + 0x14]
  00775050:	89 0c 24                                       	MOV dword ptr [ESP],ECX
  00775053:	89 54 24 04                                    	MOV dword ptr [ESP + 0x4],EDX
  00775057:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00775059:	8b 52 38                                       	MOV EDX,dword ptr [EDX + 0x38]
  0077505c:	6a 08                                          	PUSH 0x8
  0077505e:	8d 4c 24 04                                    	LEA ECX,[ESP + 0x4]
  00775062:	51                                             	PUSH ECX
  00775063:	8b c8                                          	MOV ECX,EAX
  00775065:	ff d2                                          	CALL EDX
  00775067:	f6 d8                                          	NEG AL
  00775069:	1b c0                                          	SBB EAX,EAX
  0077506b:	83 e0 03                                       	AND EAX,0x3
  0077506e:	83 c0 fd                                       	ADD EAX,-0x3
  00775071:	83 c4 08                                       	ADD ESP,0x8
  00775074:	c3                                             	RET
