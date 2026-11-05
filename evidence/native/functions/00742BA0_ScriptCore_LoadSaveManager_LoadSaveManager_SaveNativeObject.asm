# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00742ba0 (ScriptCore.LoadSaveManager::LoadSaveManager_SaveNativeObject)
Paired actual Ghidra pseudocode: 00742BA0_ScriptCore_LoadSaveManager_LoadSaveManager_SaveNativeObject.c
Envelope [0x00742ba0,0x00742bdf); 63 bytes; exact owned ranges: [0x00742ba0,0x00742bdf)
Owned: 63 original bytes / 27 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00742ba0 <original>:
  00742ba0:	56                                             	PUSH ESI
  00742ba1:	8b 74 24 08                                    	MOV ESI,dword ptr [ESP + 0x8]
  00742ba5:	8b c6                                          	MOV EAX,ESI
  00742ba7:	c1 e8 18                                       	SHR EAX,0x18
  00742baa:	83 f8 42                                       	CMP EAX,0x42
  00742bad:	74 0a                                          	JZ 0x00742bb9
  00742baf:	83 f8 44                                       	CMP EAX,0x44
  00742bb2:	74 05                                          	JZ 0x00742bb9
  00742bb4:	83 c8 ff                                       	OR EAX,0xffffffff
  00742bb7:	5e                                             	POP ESI
  00742bb8:	c3                                             	RET
  00742bb9:	e8 d2 67 02 00                                 	CALL 0x00769390
  00742bbe:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00742bc0:	8b c8                                          	MOV ECX,EAX
  00742bc2:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  00742bc8:	56                                             	PUSH ESI
  00742bc9:	ff d0                                          	CALL EAX
  00742bcb:	85 c0                                          	TEST EAX,EAX
  00742bcd:	74 e5                                          	JZ 0x00742bb4
  00742bcf:	8b 4c 24 0c                                    	MOV ECX,dword ptr [ESP + 0xc]
  00742bd3:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00742bd5:	8b 52 04                                       	MOV EDX,dword ptr [EDX + 0x4]
  00742bd8:	51                                             	PUSH ECX
  00742bd9:	8b c8                                          	MOV ECX,EAX
  00742bdb:	ff d2                                          	CALL EDX
  00742bdd:	5e                                             	POP ESI
  00742bde:	c3                                             	RET
