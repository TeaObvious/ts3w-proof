# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00743250 (ScriptCore.LoadSaveManager::LoadSaveManager_CreateLoadSaveFileInfo_Impl)
Paired actual Ghidra pseudocode: 00743250_ScriptCore_LoadSaveManager_LoadSaveManager_CreateLoadSaveFileInfo_Impl.c
Envelope [0x00743250,0x00743306); 182 bytes; exact owned ranges: [0x00743250,0x00743306)
Owned: 182 original bytes / 73 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00743250 <original>:
  00743250:	83 ec 14                                       	SUB ESP,0x14
  00743253:	57                                             	PUSH EDI
  00743254:	8b 7c 24 1c                                    	MOV EDI,dword ptr [ESP + 0x1c]
  00743258:	85 ff                                          	TEST EDI,EDI
  0074325a:	75 07                                          	JNZ 0x00743263
  0074325c:	33 c0                                          	XOR EAX,EAX
  0074325e:	5f                                             	POP EDI
  0074325f:	83 c4 14                                       	ADD ESP,0x14
  00743262:	c3                                             	RET
  00743263:	56                                             	PUSH ESI
  00743264:	e8 27 61 02 00                                 	CALL 0x00769390
  00743269:	8b f0                                          	MOV ESI,EAX
  0074326b:	85 f6                                          	TEST ESI,ESI
  0074326d:	74 16                                          	JZ 0x00743285
  0074326f:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00743271:	8b 50 58                                       	MOV EDX,dword ptr [EAX + 0x58]
  00743274:	57                                             	PUSH EDI
  00743275:	8b ce                                          	MOV ECX,ESI
  00743277:	ff d2                                          	CALL EDX
  00743279:	8b f8                                          	MOV EDI,EAX
  0074327b:	85 ff                                          	TEST EDI,EDI
  0074327d:	74 06                                          	JZ 0x00743285
  0074327f:	66 83 3f 00                                    	CMP word ptr [EDI],0x0
  00743283:	75 08                                          	JNZ 0x0074328d
  00743285:	5e                                             	POP ESI
  00743286:	33 c0                                          	XOR EAX,EAX
  00743288:	5f                                             	POP EDI
  00743289:	83 c4 14                                       	ADD ESP,0x14
  0074328c:	c3                                             	RET
  0074328d:	53                                             	PUSH EBX
  0074328e:	e8 2d 67 36 00                                 	CALL 0x00aa99c0
  00743293:	8b d8                                          	MOV EBX,EAX
  00743295:	85 db                                          	TEST EBX,EBX
  00743297:	74 3d                                          	JZ 0x007432d6
  00743299:	8d 44 24 0c                                    	LEA EAX,[ESP + 0xc]
  0074329d:	50                                             	PUSH EAX
  0074329e:	57                                             	PUSH EDI
  0074329f:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  007432a3:	c7 44 24 14 4c 26 00 01                        	MOV dword ptr [ESP + 0x14],0x100264c
  007432ab:	e8 d0 85 cc ff                                 	CALL 0x0040b880
  007432b0:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  007432b4:	51                                             	PUSH ECX
  007432b5:	8d 54 24 14                                    	LEA EDX,[ESP + 0x14]
  007432b9:	52                                             	PUSH EDX
  007432ba:	8b cb                                          	MOV ECX,EBX
  007432bc:	c7 44 24 2c 00 00 00 00                        	MOV dword ptr [ESP + 0x2c],0x0
  007432c4:	e8 97 81 36 00                                 	CALL 0x00aab460
  007432c9:	84 c0                                          	TEST AL,AL
  007432cb:	75 12                                          	JNZ 0x007432df
  007432cd:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  007432d1:	e8 1a c6 da ff                                 	CALL 0x004ef8f0
  007432d6:	5b                                             	POP EBX
  007432d7:	5e                                             	POP ESI
  007432d8:	33 c0                                          	XOR EAX,EAX
  007432da:	5f                                             	POP EDI
  007432db:	83 c4 14                                       	ADD ESP,0x14
  007432de:	c3                                             	RET
  007432df:	8b 4c 24 24                                    	MOV ECX,dword ptr [ESP + 0x24]
  007432e3:	8b 06                                          	MOV EAX,dword ptr [ESI]
  007432e5:	8b 90 c8 00 00 00                              	MOV EDX,dword ptr [EAX + 0xc8]
  007432eb:	6a 40                                          	PUSH 0x40
  007432ed:	51                                             	PUSH ECX
  007432ee:	8b ce                                          	MOV ECX,ESI
  007432f0:	ff d2                                          	CALL EDX
  007432f2:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  007432f6:	8b f0                                          	MOV ESI,EAX
  007432f8:	e8 f3 c5 da ff                                 	CALL 0x004ef8f0
  007432fd:	5b                                             	POP EBX
  007432fe:	8b c6                                          	MOV EAX,ESI
  00743300:	5e                                             	POP ESI
  00743301:	5f                                             	POP EDI
  00743302:	83 c4 14                                       	ADD ESP,0x14
  00743305:	c3                                             	RET
