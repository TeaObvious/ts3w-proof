# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00742e60 (ScriptCore.LoadSaveManager::LoadSaveManager_DestroyNativeWriter)
Paired actual Ghidra pseudocode: 00742E60_ScriptCore_LoadSaveManager_LoadSaveManager_DestroyNativeWriter.c
Envelope [0x00742e60,0x00742e9e); 62 bytes; exact owned ranges: [0x00742e60,0x00742e9e)
Owned: 62 original bytes / 24 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00742e60 <original>:
  00742e60:	56                                             	PUSH ESI
  00742e61:	8b 74 24 08                                    	MOV ESI,dword ptr [ESP + 0x8]
  00742e65:	8b c6                                          	MOV EAX,ESI
  00742e67:	c1 e8 18                                       	SHR EAX,0x18
  00742e6a:	83 f8 42                                       	CMP EAX,0x42
  00742e6d:	74 05                                          	JZ 0x00742e74
  00742e6f:	83 f8 44                                       	CMP EAX,0x44
  00742e72:	75 28                                          	JNZ 0x00742e9c
  00742e74:	e8 17 65 02 00                                 	CALL 0x00769390
  00742e79:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00742e7b:	8b c8                                          	MOV ECX,EAX
  00742e7d:	8b 82 d8 00 00 00                              	MOV EAX,dword ptr [EDX + 0xd8]
  00742e83:	56                                             	PUSH ESI
  00742e84:	ff d0                                          	CALL EAX
  00742e86:	8b f0                                          	MOV ESI,EAX
  00742e88:	85 f6                                          	TEST ESI,ESI
  00742e8a:	74 10                                          	JZ 0x00742e9c
  00742e8c:	8b ce                                          	MOV ECX,ESI
  00742e8e:	e8 5d 13 09 00                                 	CALL 0x007d41f0
  00742e93:	56                                             	PUSH ESI
  00742e94:	e8 47 16 da ff                                 	CALL 0x004e44e0
  00742e99:	83 c4 04                                       	ADD ESP,0x4
  00742e9c:	5e                                             	POP ESI
  00742e9d:	c3                                             	RET
