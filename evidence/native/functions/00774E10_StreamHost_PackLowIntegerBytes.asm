# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00774e10 (StreamHost_PackLowIntegerBytes)
Paired actual Ghidra pseudocode: 00774E10_StreamHost_PackLowIntegerBytes.c
Envelope [0x00774e10,0x00774e64); 84 bytes; exact owned ranges: [0x00774e10,0x00774e64)
Owned: 84 original bytes / 30 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00774e10 <original>:
  00774e10:	8b 44 24 0c                                    	MOV EAX,dword ptr [ESP + 0xc]
  00774e14:	83 f8 01                                       	CMP EAX,0x1
  00774e17:	75 0b                                          	JNZ 0x00774e24
  00774e19:	8a 44 24 08                                    	MOV AL,byte ptr [ESP + 0x8]
  00774e1d:	8b 4c 24 04                                    	MOV ECX,dword ptr [ESP + 0x4]
  00774e21:	88 01                                          	MOV byte ptr [ECX],AL
  00774e23:	c3                                             	RET
  00774e24:	83 f8 04                                       	CMP EAX,0x4
  00774e27:	75 0b                                          	JNZ 0x00774e34
  00774e29:	8b 54 24 08                                    	MOV EDX,dword ptr [ESP + 0x8]
  00774e2d:	8b 44 24 04                                    	MOV EAX,dword ptr [ESP + 0x4]
  00774e31:	89 10                                          	MOV dword ptr [EAX],EDX
  00774e33:	c3                                             	RET
  00774e34:	83 f8 02                                       	CMP EAX,0x2
  00774e37:	75 0d                                          	JNZ 0x00774e46
  00774e39:	66 8b 4c 24 08                                 	MOV CX,word ptr [ESP + 0x8]
  00774e3e:	8b 54 24 04                                    	MOV EDX,dword ptr [ESP + 0x4]
  00774e42:	66 89 0a                                       	MOV word ptr [EDX],CX
  00774e45:	c3                                             	RET
  00774e46:	83 f8 03                                       	CMP EAX,0x3
  00774e49:	75 18                                          	JNZ 0x00774e63
  00774e4b:	8b 44 24 08                                    	MOV EAX,dword ptr [ESP + 0x8]
  00774e4f:	8b 4c 24 04                                    	MOV ECX,dword ptr [ESP + 0x4]
  00774e53:	8b d0                                          	MOV EDX,EAX
  00774e55:	c1 ea 08                                       	SHR EDX,0x8
  00774e58:	88 01                                          	MOV byte ptr [ECX],AL
  00774e5a:	c1 e8 10                                       	SHR EAX,0x10
  00774e5d:	88 51 01                                       	MOV byte ptr [ECX + 0x1],DL
  00774e60:	88 41 02                                       	MOV byte ptr [ECX + 0x2],AL
  00774e63:	c3                                             	RET
