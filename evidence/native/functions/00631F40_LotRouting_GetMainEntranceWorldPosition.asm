# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00631f40 (LotRouting_GetMainEntranceWorldPosition)
Paired actual Ghidra pseudocode: 00631F40_LotRouting_GetMainEntranceWorldPosition.c
Envelope [0x00631f40,0x0063201e); 222 bytes. Exact owned ranges: [0x00631f40,0x0063201e)
Owned: 222 pristine PE bytes / 88 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope alignment bytes; they are not Listing instructions or function-body bytes.
Inferred stored prototypes remain unchanged; physical register/stack/AL and original managed evidence govern ABI interpretation.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00631f40 <original>:
  00631f40:	55                                             	PUSH EBP
  00631f41:	8b ec                                          	MOV EBP,ESP
  00631f43:	83 e4 f0                                       	AND ESP,0xfffffff0
  00631f46:	83 ec 24                                       	SUB ESP,0x24
  00631f49:	8b 45 0c                                       	MOV EAX,dword ptr [EBP + 0xc]
  00631f4c:	53                                             	PUSH EBX
  00631f4d:	8b 5d 08                                       	MOV EBX,dword ptr [EBP + 0x8]
  00631f50:	56                                             	PUSH ESI
  00631f51:	57                                             	PUSH EDI
  00631f52:	50                                             	PUSH EAX
  00631f53:	53                                             	PUSH EBX
  00631f54:	8b f9                                          	MOV EDI,ECX
  00631f56:	89 5c 24 18                                    	MOV dword ptr [ESP + 0x18],EBX
  00631f5a:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00631f5e:	e8 fd 73 ff ff                                 	CALL 0x00629360
  00631f63:	84 c0                                          	TEST AL,AL
  00631f65:	74 6f                                          	JZ 0x00631fd6
  00631f67:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  00631f6b:	50                                             	PUSH EAX
  00631f6c:	8d 4f 48                                       	LEA ECX,[EDI + 0x48]
  00631f6f:	e8 5c d3 ff ff                                 	CALL 0x0062f2d0
  00631f74:	8b 40 14                                       	MOV EAX,dword ptr [EAX + 0x14]
  00631f77:	83 f8 ff                                       	CMP EAX,-0x1
  00631f7a:	74 5a                                          	JZ 0x00631fd6
  00631f7c:	8b 35 c4 db 1e 01                              	MOV ESI,dword ptr [0x011edbc4]
  00631f82:	33 c9                                          	XOR ECX,ECX
  00631f84:	51                                             	PUSH ECX
  00631f85:	50                                             	PUSH EAX
  00631f86:	6a 12                                          	PUSH 0x12
  00631f88:	6a 02                                          	PUSH 0x2
  00631f8a:	89 4c 24 20                                    	MOV dword ptr [ESP + 0x20],ECX
  00631f8e:	89 4c 24 24                                    	MOV dword ptr [ESP + 0x24],ECX
  00631f92:	89 4c 24 28                                    	MOV dword ptr [ESP + 0x28],ECX
  00631f96:	c7 44 24 2c ec d7 fe 00                        	MOV dword ptr [ESP + 0x2c],0xfed7ec
  00631f9e:	e8 8d dc 19 00                                 	CALL 0x007cfc30
  00631fa3:	83 c4 10                                       	ADD ESP,0x10
  00631fa6:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00631faa:	51                                             	PUSH ECX
  00631fab:	52                                             	PUSH EDX
  00631fac:	8b 55 0c                                       	MOV EDX,dword ptr [EBP + 0xc]
  00631faf:	50                                             	PUSH EAX
  00631fb0:	6a 00                                          	PUSH 0x0
  00631fb2:	52                                             	PUSH EDX
  00631fb3:	53                                             	PUSH EBX
  00631fb4:	8b ce                                          	MOV ECX,ESI
  00631fb6:	e8 55 08 63 00                                 	CALL 0x00c62810
  00631fbb:	50                                             	PUSH EAX
  00631fbc:	8b cf                                          	MOV ECX,EDI
  00631fbe:	e8 bd df ff ff                                 	CALL 0x0062ff80
  00631fc3:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  00631fc7:	3b 44 24 14                                    	CMP EAX,dword ptr [ESP + 0x14]
  00631fcb:	75 14                                          	JNZ 0x00631fe1
  00631fcd:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00631fd1:	e8 7a 4e ff ff                                 	CALL 0x00626e50
  00631fd6:	32 c0                                          	XOR AL,AL
  00631fd8:	5f                                             	POP EDI
  00631fd9:	5e                                             	POP ESI
  00631fda:	5b                                             	POP EBX
  00631fdb:	8b e5                                          	MOV ESP,EBP
  00631fdd:	5d                                             	POP EBP
  00631fde:	c2 0c 00                                       	RET 0xc
  00631fe1:	8b 00                                          	MOV EAX,dword ptr [EAX]
  00631fe3:	d9 ee                                          	FLDZ
  00631fe5:	6a 01                                          	PUSH 0x1
  00631fe7:	51                                             	PUSH ECX
  00631fe8:	d9 1c 24                                       	FSTP float ptr [ESP]
  00631feb:	83 c0 14                                       	ADD EAX,0x14
  00631fee:	50                                             	PUSH EAX
  00631fef:	8b 45 0c                                       	MOV EAX,dword ptr [EBP + 0xc]
  00631ff2:	50                                             	PUSH EAX
  00631ff3:	53                                             	PUSH EBX
  00631ff4:	56                                             	PUSH ESI
  00631ff5:	8d 4c 24 38                                    	LEA ECX,[ESP + 0x38]
  00631ff9:	51                                             	PUSH ECX
  00631ffa:	8b cf                                          	MOV ECX,EDI
  00631ffc:	e8 cf db ff ff                                 	CALL 0x0062fbd0
  00632001:	8b 55 10                                       	MOV EDX,dword ptr [EBP + 0x10]
  00632004:	0f 28 00                                       	MOVAPS XMM0,xmmword ptr [EAX]
  00632007:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  0063200b:	0f 29 02                                       	MOVAPS xmmword ptr [EDX],XMM0
  0063200e:	e8 3d 4e ff ff                                 	CALL 0x00626e50
  00632013:	5f                                             	POP EDI
  00632014:	5e                                             	POP ESI
  00632015:	b0 01                                          	MOV AL,0x1
  00632017:	5b                                             	POP EBX
  00632018:	8b e5                                          	MOV ESP,EBP
  0063201a:	5d                                             	POP EBP
  0063201b:	c2 0c 00                                       	RET 0xc
