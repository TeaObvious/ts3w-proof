# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00742d30 (DirectTargetOf_LoadSaveManager_LoadSaveManager_SaveChallengeData)
Paired actual Ghidra pseudocode: 00742D30_DirectTargetOf_LoadSaveManager_LoadSaveManager_SaveChallengeData.c
Envelope [0x00742d30,0x00742d94); 100 bytes; exact owned ranges: [0x00742d30,0x00742d94)
Owned: 100 original bytes / 50 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00742d30 <original>:
  00742d30:	56                                             	PUSH ESI
  00742d31:	e8 5a 66 02 00                                 	CALL 0x00769390
  00742d36:	8b f0                                          	MOV ESI,EAX
  00742d38:	85 f6                                          	TEST ESI,ESI
  00742d3a:	75 02                                          	JNZ 0x00742d3e
  00742d3c:	5e                                             	POP ESI
  00742d3d:	c3                                             	RET
  00742d3e:	53                                             	PUSH EBX
  00742d3f:	e8 7c 6c 36 00                                 	CALL 0x00aa99c0
  00742d44:	8b d8                                          	MOV EBX,EAX
  00742d46:	85 db                                          	TEST EBX,EBX
  00742d48:	75 03                                          	JNZ 0x00742d4d
  00742d4a:	5b                                             	POP EBX
  00742d4b:	5e                                             	POP ESI
  00742d4c:	c3                                             	RET
  00742d4d:	8b 4c 24 0c                                    	MOV ECX,dword ptr [ESP + 0xc]
  00742d51:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00742d53:	8b 50 58                                       	MOV EDX,dword ptr [EAX + 0x58]
  00742d56:	57                                             	PUSH EDI
  00742d57:	51                                             	PUSH ECX
  00742d58:	8b ce                                          	MOV ECX,ESI
  00742d5a:	ff d2                                          	CALL EDX
  00742d5c:	8b f8                                          	MOV EDI,EAX
  00742d5e:	85 ff                                          	TEST EDI,EDI
  00742d60:	74 1a                                          	JZ 0x00742d7c
  00742d62:	66 83 3f 00                                    	CMP word ptr [EDI],0x0
  00742d66:	74 14                                          	JZ 0x00742d7c
  00742d68:	8b 4c 24 18                                    	MOV ECX,dword ptr [ESP + 0x18]
  00742d6c:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00742d6e:	8b 50 58                                       	MOV EDX,dword ptr [EAX + 0x58]
  00742d71:	51                                             	PUSH ECX
  00742d72:	8b ce                                          	MOV ECX,ESI
  00742d74:	ff d2                                          	CALL EDX
  00742d76:	66 83 3f 00                                    	CMP word ptr [EDI],0x0
  00742d7a:	75 06                                          	JNZ 0x00742d82
  00742d7c:	5f                                             	POP EDI
  00742d7d:	5b                                             	POP EBX
  00742d7e:	33 c0                                          	XOR EAX,EAX
  00742d80:	5e                                             	POP ESI
  00742d81:	c3                                             	RET
  00742d82:	50                                             	PUSH EAX
  00742d83:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00742d87:	50                                             	PUSH EAX
  00742d88:	57                                             	PUSH EDI
  00742d89:	8b cb                                          	MOV ECX,EBX
  00742d8b:	e8 20 b9 36 00                                 	CALL 0x00aae6b0
  00742d90:	5f                                             	POP EDI
  00742d91:	5b                                             	POP EBX
  00742d92:	5e                                             	POP ESI
  00742d93:	c3                                             	RET
