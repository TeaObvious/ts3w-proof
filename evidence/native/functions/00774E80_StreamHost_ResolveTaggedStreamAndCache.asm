# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00774e80 (StreamHost_ResolveTaggedStreamAndCache)
Paired actual Ghidra pseudocode: 00774E80_StreamHost_ResolveTaggedStreamAndCache.c
Envelope [0x00774e80,0x00774eba); 58 bytes; exact owned ranges: [0x00774e80,0x00774eba)
Owned: 58 original bytes / 21 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00774e80 <original>:
  00774e80:	56                                             	PUSH ESI
  00774e81:	8b 74 24 08                                    	MOV ESI,dword ptr [ESP + 0x8]
  00774e85:	8b c6                                          	MOV EAX,ESI
  00774e87:	25 00 00 00 ff                                 	AND EAX,0xff000000
  00774e8c:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  00774e91:	74 04                                          	JZ 0x00774e97
  00774e93:	33 c0                                          	XOR EAX,EAX
  00774e95:	5e                                             	POP ESI
  00774e96:	c3                                             	RET
  00774e97:	e8 f4 44 ff ff                                 	CALL 0x00769390
  00774e9c:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00774e9e:	8b c8                                          	MOV ECX,EAX
  00774ea0:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  00774ea6:	56                                             	PUSH ESI
  00774ea7:	ff d0                                          	CALL EAX
  00774ea9:	85 c0                                          	TEST EAX,EAX
  00774eab:	74 0b                                          	JZ 0x00774eb8
  00774ead:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  00774eb2:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  00774eb8:	5e                                             	POP ESI
  00774eb9:	c3                                             	RET
