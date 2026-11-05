# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00742c40 (ScriptCore.LoadSaveManager::LoadSaveManager_SaveGame_Impl)
Paired actual Ghidra pseudocode: 00742C40_ScriptCore_LoadSaveManager_LoadSaveManager_SaveGame_Impl.c
Envelope [0x00742c40,0x00742c8d); 77 bytes; exact owned ranges: [0x00742c40,0x00742c8d)
Owned: 77 original bytes / 36 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00742c40 <original>:
  00742c40:	56                                             	PUSH ESI
  00742c41:	e8 4a 67 02 00                                 	CALL 0x00769390
  00742c46:	8b f0                                          	MOV ESI,EAX
  00742c48:	85 f6                                          	TEST ESI,ESI
  00742c4a:	75 02                                          	JNZ 0x00742c4e
  00742c4c:	5e                                             	POP ESI
  00742c4d:	c3                                             	RET
  00742c4e:	57                                             	PUSH EDI
  00742c4f:	e8 6c 6d 36 00                                 	CALL 0x00aa99c0
  00742c54:	8b f8                                          	MOV EDI,EAX
  00742c56:	33 c0                                          	XOR EAX,EAX
  00742c58:	85 ff                                          	TEST EDI,EDI
  00742c5a:	74 2e                                          	JZ 0x00742c8a
  00742c5c:	8b 4c 24 0c                                    	MOV ECX,dword ptr [ESP + 0xc]
  00742c60:	85 c9                                          	TEST ECX,ECX
  00742c62:	74 14                                          	JZ 0x00742c78
  00742c64:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00742c66:	8b 90 cc 00 00 00                              	MOV EDX,dword ptr [EAX + 0xcc]
  00742c6c:	51                                             	PUSH ECX
  00742c6d:	8b ce                                          	MOV ECX,ESI
  00742c6f:	ff d2                                          	CALL EDX
  00742c71:	85 c0                                          	TEST EAX,EAX
  00742c73:	75 03                                          	JNZ 0x00742c78
  00742c75:	5f                                             	POP EDI
  00742c76:	5e                                             	POP ESI
  00742c77:	c3                                             	RET
  00742c78:	8b 4c 24 14                                    	MOV ECX,dword ptr [ESP + 0x14]
  00742c7c:	8b 54 24 10                                    	MOV EDX,dword ptr [ESP + 0x10]
  00742c80:	51                                             	PUSH ECX
  00742c81:	52                                             	PUSH EDX
  00742c82:	50                                             	PUSH EAX
  00742c83:	8b cf                                          	MOV ECX,EDI
  00742c85:	e8 36 ca 36 00                                 	CALL 0x00aaf6c0
  00742c8a:	5f                                             	POP EDI
  00742c8b:	5e                                             	POP ESI
  00742c8c:	c3                                             	RET
