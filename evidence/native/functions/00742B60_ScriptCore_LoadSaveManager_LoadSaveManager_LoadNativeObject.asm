# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00742b60 (ScriptCore.LoadSaveManager::LoadSaveManager_LoadNativeObject)
Paired actual Ghidra pseudocode: 00742B60_ScriptCore_LoadSaveManager_LoadSaveManager_LoadNativeObject.c
Envelope [0x00742b60,0x00742b9e); 62 bytes; exact owned ranges: [0x00742b60,0x00742b9e)
Owned: 62 original bytes / 25 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00742b60 <original>:
  00742b60:	56                                             	PUSH ESI
  00742b61:	8b 74 24 08                                    	MOV ESI,dword ptr [ESP + 0x8]
  00742b65:	8b c6                                          	MOV EAX,ESI
  00742b67:	25 00 00 00 ff                                 	AND EAX,0xff000000
  00742b6c:	3d 00 00 00 41                                 	CMP EAX,0x41000000
  00742b71:	74 05                                          	JZ 0x00742b78
  00742b73:	83 c8 ff                                       	OR EAX,0xffffffff
  00742b76:	5e                                             	POP ESI
  00742b77:	c3                                             	RET
  00742b78:	e8 13 68 02 00                                 	CALL 0x00769390
  00742b7d:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00742b7f:	8b c8                                          	MOV ECX,EAX
  00742b81:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  00742b87:	56                                             	PUSH ESI
  00742b88:	ff d0                                          	CALL EAX
  00742b8a:	85 c0                                          	TEST EAX,EAX
  00742b8c:	74 e5                                          	JZ 0x00742b73
  00742b8e:	8b 4c 24 0c                                    	MOV ECX,dword ptr [ESP + 0xc]
  00742b92:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00742b94:	8b 52 08                                       	MOV EDX,dword ptr [EDX + 0x8]
  00742b97:	51                                             	PUSH ECX
  00742b98:	8b c8                                          	MOV ECX,EAX
  00742b9a:	ff d2                                          	CALL EDX
  00742b9c:	5e                                             	POP ESI
  00742b9d:	c3                                             	RET
