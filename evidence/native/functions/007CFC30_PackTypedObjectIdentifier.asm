# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x007cfc30 (PackTypedObjectIdentifier)
Paired actual Ghidra pseudocode: 007CFC30_PackTypedObjectIdentifier.c
Envelope [0x007cfc30,0x007cfc6c); 60 bytes. Exact owned ranges: [0x007cfc30,0x007cfc6c)
Owned: 60 pristine PE bytes / 23 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope alignment bytes; they are not Listing instructions or function-body bytes.
Inferred stored prototypes remain unchanged; physical register/stack/AL and original managed evidence govern ABI interpretation.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007cfc30 <original>:
  007cfc30:	8b 44 24 0c                                    	MOV EAX,dword ptr [ESP + 0xc]
  007cfc34:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  007cfc38:	0f a4 c1 08                                    	SHLD ECX,EAX,0x8
  007cfc3c:	c1 e0 08                                       	SHL EAX,0x8
  007cfc3f:	56                                             	PUSH ESI
  007cfc40:	8b f0                                          	MOV ESI,EAX
  007cfc42:	0f b6 44 24 0c                                 	MOVZX EAX,byte ptr [ESP + 0xc]
  007cfc47:	99                                             	CDQ
  007cfc48:	0b f0                                          	OR ESI,EAX
  007cfc4a:	8b 44 24 08                                    	MOV EAX,dword ptr [ESP + 0x8]
  007cfc4e:	0b ca                                          	OR ECX,EDX
  007cfc50:	0f a4 f1 07                                    	SHLD ECX,ESI,0x7
  007cfc54:	83 e0 7f                                       	AND EAX,0x7f
  007cfc57:	99                                             	CDQ
  007cfc58:	c1 e6 07                                       	SHL ESI,0x7
  007cfc5b:	0b f0                                          	OR ESI,EAX
  007cfc5d:	0b d1                                          	OR EDX,ECX
  007cfc5f:	0f a4 f2 01                                    	SHLD EDX,ESI,0x1
  007cfc63:	03 f6                                          	ADD ESI,ESI
  007cfc65:	8b c6                                          	MOV EAX,ESI
  007cfc67:	83 c8 01                                       	OR EAX,0x1
  007cfc6a:	5e                                             	POP ESI
  007cfc6b:	c3                                             	RET
