# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00774f50 (ScriptCore.StreamHost::StreamHost_WriteInt)
Paired actual Ghidra pseudocode: 00774F50_ScriptCore_StreamHost_StreamHost_WriteInt.c
Envelope [0x00774f50,0x00774fe4); 148 bytes; exact owned ranges: [0x00774f50,0x00774fe4)
Owned: 148 original bytes / 57 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00774f50 <original>:
  00774f50:	56                                             	PUSH ESI
  00774f51:	8b 74 24 08                                    	MOV ESI,dword ptr [ESP + 0x8]
  00774f55:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  00774f5b:	75 08                                          	JNZ 0x00774f65
  00774f5d:	8b 35 3c 78 1d 01                              	MOV ESI,dword ptr [0x011d783c]
  00774f63:	eb 35                                          	JMP 0x00774f9a
  00774f65:	8b c6                                          	MOV EAX,ESI
  00774f67:	25 00 00 00 ff                                 	AND EAX,0xff000000
  00774f6c:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  00774f71:	74 04                                          	JZ 0x00774f77
  00774f73:	33 f6                                          	XOR ESI,ESI
  00774f75:	eb 23                                          	JMP 0x00774f9a
  00774f77:	e8 14 44 ff ff                                 	CALL 0x00769390
  00774f7c:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00774f7e:	8b c8                                          	MOV ECX,EAX
  00774f80:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  00774f86:	56                                             	PUSH ESI
  00774f87:	ff d0                                          	CALL EAX
  00774f89:	85 c0                                          	TEST EAX,EAX
  00774f8b:	74 0b                                          	JZ 0x00774f98
  00774f8d:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  00774f92:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  00774f98:	8b f0                                          	MOV ESI,EAX
  00774f9a:	85 f6                                          	TEST ESI,ESI
  00774f9c:	75 05                                          	JNZ 0x00774fa3
  00774f9e:	8d 46 fe                                       	LEA EAX,[ESI + -0x2]
  00774fa1:	5e                                             	POP ESI
  00774fa2:	c3                                             	RET
  00774fa3:	57                                             	PUSH EDI
  00774fa4:	8b 7c 24 14                                    	MOV EDI,dword ptr [ESP + 0x14]
  00774fa8:	83 ff 04                                       	CMP EDI,0x4
  00774fab:	7e 08                                          	JLE 0x00774fb5
  00774fad:	5f                                             	POP EDI
  00774fae:	b8 f9 ff ff ff                                 	MOV EAX,0xfffffff9
  00774fb3:	5e                                             	POP ESI
  00774fb4:	c3                                             	RET
  00774fb5:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00774fb9:	57                                             	PUSH EDI
  00774fba:	51                                             	PUSH ECX
  00774fbb:	8d 54 24 14                                    	LEA EDX,[ESP + 0x14]
  00774fbf:	52                                             	PUSH EDX
  00774fc0:	e8 4b fe ff ff                                 	CALL 0x00774e10
  00774fc5:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00774fc7:	8b 50 38                                       	MOV EDX,dword ptr [EAX + 0x38]
  00774fca:	83 c4 0c                                       	ADD ESP,0xc
  00774fcd:	57                                             	PUSH EDI
  00774fce:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00774fd2:	51                                             	PUSH ECX
  00774fd3:	8b ce                                          	MOV ECX,ESI
  00774fd5:	ff d2                                          	CALL EDX
  00774fd7:	f6 d8                                          	NEG AL
  00774fd9:	5f                                             	POP EDI
  00774fda:	5e                                             	POP ESI
  00774fdb:	1b c0                                          	SBB EAX,EAX
  00774fdd:	83 e0 03                                       	AND EAX,0x3
  00774fe0:	83 c0 fd                                       	ADD EAX,-0x3
  00774fe3:	c3                                             	RET
