# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00c60e20 (WorldPonds_GetLevelAtPoint)
Paired actual Ghidra pseudocode: 00C60E20_WorldPonds_GetLevelAtPoint.c
Envelope [0x00c60e20,0x00c60ee5); 197 bytes. Exact owned ranges: [0x00c60e20,0x00c60ee5)
Owned: 197 pristine PE bytes / 58 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00c60e20 <original>:
  00c60e20:	51                                             	PUSH ECX
  00c60e21:	f3 0f 10 4c 24 08                              	MOVSS XMM1,dword ptr [ESP + 0x8]
  00c60e27:	0f 2f 89 b4 00 00 00                           	COMISS XMM1,dword ptr [ECX + 0xb4]
  00c60e2e:	f3 0f 10 05 74 96 07 01                        	MOVSS XMM0,dword ptr [0x01079674]
  00c60e36:	f3 0f 11 04 24                                 	MOVSS dword ptr [ESP],XMM0
  00c60e3b:	0f 82 9d 00 00 00                              	JC 0x00c60ede
  00c60e41:	f3 0f 10 44 24 0c                              	MOVSS XMM0,dword ptr [ESP + 0xc]
  00c60e47:	0f 2f 81 b8 00 00 00                           	COMISS XMM0,dword ptr [ECX + 0xb8]
  00c60e4e:	0f 82 8a 00 00 00                              	JC 0x00c60ede
  00c60e54:	f3 0f 10 91 bc 00 00 00                        	MOVSS XMM2,dword ptr [ECX + 0xbc]
  00c60e5c:	0f 2f d1                                       	COMISS XMM2,XMM1
  00c60e5f:	76 7d                                          	JBE 0x00c60ede
  00c60e61:	f3 0f 10 89 c4 00 00 00                        	MOVSS XMM1,dword ptr [ECX + 0xc4]
  00c60e69:	f3 0f 58 89 c0 00 00 00                        	ADDSS XMM1,dword ptr [ECX + 0xc0]
  00c60e71:	0f 2f c8                                       	COMISS XMM1,XMM0
  00c60e74:	76 68                                          	JBE 0x00c60ede
  00c60e76:	53                                             	PUSH EBX
  00c60e77:	8b 99 04 01 00 00                              	MOV EBX,dword ptr [ECX + 0x104]
  00c60e7d:	56                                             	PUSH ESI
  00c60e7e:	8b b1 00 01 00 00                              	MOV ESI,dword ptr [ECX + 0x100]
  00c60e84:	3b f3                                          	CMP ESI,EBX
  00c60e86:	74 54                                          	JZ 0x00c60edc
  00c60e88:	55                                             	PUSH EBP
  00c60e89:	8b 6c 24 1c                                    	MOV EBP,dword ptr [ESP + 0x1c]
  00c60e8d:	57                                             	PUSH EDI
  00c60e8e:	8b ff                                          	MOV EDI,EDI
  00c60e90:	d9 44 24 1c                                    	FLD float ptr [ESP + 0x1c]
  00c60e94:	8b 3e                                          	MOV EDI,dword ptr [ESI]
  00c60e96:	55                                             	PUSH EBP
  00c60e97:	83 ec 08                                       	SUB ESP,0x8
  00c60e9a:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00c60e9e:	8b cf                                          	MOV ECX,EDI
  00c60ea0:	d9 44 24 24                                    	FLD float ptr [ESP + 0x24]
  00c60ea4:	d9 1c 24                                       	FSTP float ptr [ESP]
  00c60ea7:	e8 e4 d4 ef ff                                 	CALL 0x00b5e390
  00c60eac:	84 c0                                          	TEST AL,AL
  00c60eae:	75 13                                          	JNZ 0x00c60ec3
  00c60eb0:	83 c6 04                                       	ADD ESI,0x4
  00c60eb3:	3b f3                                          	CMP ESI,EBX
  00c60eb5:	75 d9                                          	JNZ 0x00c60e90
  00c60eb7:	d9 44 24 10                                    	FLD float ptr [ESP + 0x10]
  00c60ebb:	5f                                             	POP EDI
  00c60ebc:	5d                                             	POP EBP
  00c60ebd:	5e                                             	POP ESI
  00c60ebe:	5b                                             	POP EBX
  00c60ebf:	59                                             	POP ECX
  00c60ec0:	c2 0c 00                                       	RET 0xc
  00c60ec3:	f3 0f 10 87 18 02 00 00                        	MOVSS XMM0,dword ptr [EDI + 0x218]
  00c60ecb:	0f 2f 05 74 96 07 01                           	COMISS XMM0,dword ptr [0x01079674]
  00c60ed2:	76 06                                          	JBE 0x00c60eda
  00c60ed4:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00c60eda:	5f                                             	POP EDI
  00c60edb:	5d                                             	POP EBP
  00c60edc:	5e                                             	POP ESI
  00c60edd:	5b                                             	POP EBX
  00c60ede:	d9 04 24                                       	FLD float ptr [ESP]
  00c60ee1:	59                                             	POP ECX
  00c60ee2:	c2 0c 00                                       	RET 0xc
