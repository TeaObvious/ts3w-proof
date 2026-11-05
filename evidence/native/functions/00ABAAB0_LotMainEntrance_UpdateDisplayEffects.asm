# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00abaab0 (LotMainEntrance_UpdateDisplayEffects)
Paired actual Ghidra pseudocode: 00ABAAB0_LotMainEntrance_UpdateDisplayEffects.c
Envelope [0x00abaab0,0x00abb1a0); 1776 bytes. Exact owned ranges: [0x00abaab0,0x00abb1a0)
Owned: 1776 pristine PE bytes / 462 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope alignment bytes; they are not Listing instructions or function-body bytes.
Inferred stored prototypes remain unchanged; physical register/stack/AL and original managed evidence govern ABI interpretation.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00abaab0 <original>:
  00abaab0:	55                                             	PUSH EBP
  00abaab1:	8b ec                                          	MOV EBP,ESP
  00abaab3:	83 e4 f0                                       	AND ESP,0xfffffff0
  00abaab6:	81 ec 44 01 00 00                              	SUB ESP,0x144
  00abaabc:	80 3d 9b c4 1e 01 00                           	CMP byte ptr [0x011ec49b],0x0
  00abaac3:	53                                             	PUSH EBX
  00abaac4:	56                                             	PUSH ESI
  00abaac5:	57                                             	PUSH EDI
  00abaac6:	8b f1                                          	MOV ESI,ECX
  00abaac8:	75 4f                                          	JNZ 0x00abab19
  00abaaca:	8b 8e 28 04 00 00                              	MOV ECX,dword ptr [ESI + 0x428]
  00abaad0:	33 ff                                          	XOR EDI,EDI
  00abaad2:	3b cf                                          	CMP ECX,EDI
  00abaad4:	74 22                                          	JZ 0x00abaaf8
  00abaad6:	89 be 28 04 00 00                              	MOV dword ptr [ESI + 0x428],EDI
  00abaadc:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00abaadf:	83 c0 ff                                       	ADD EAX,-0x1
  00abaae2:	3b c7                                          	CMP EAX,EDI
  00abaae4:	89 41 04                                       	MOV dword ptr [ECX + 0x4],EAX
  00abaae7:	75 0f                                          	JNZ 0x00abaaf8
  00abaae9:	c7 41 04 01 00 00 00                           	MOV dword ptr [ECX + 0x4],0x1
  00abaaf0:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00abaaf2:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00abaaf4:	6a 01                                          	PUSH 0x1
  00abaaf6:	ff d2                                          	CALL EDX
  00abaaf8:	8b 8e 2c 04 00 00                              	MOV ECX,dword ptr [ESI + 0x42c]
  00abaafe:	3b cf                                          	CMP ECX,EDI
  00abab00:	0f 84 93 06 00 00                              	JZ 0x00abb199
  00abab06:	89 be 2c 04 00 00                              	MOV dword ptr [ESI + 0x42c],EDI
  00abab0c:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00abab0f:	83 c0 ff                                       	ADD EAX,-0x1
  00abab12:	3b c7                                          	CMP EAX,EDI
  00abab14:	e9 6c 06 00 00                                 	JMP 0x00abb185
  00abab19:	e8 d2 e1 d6 ff                                 	CALL 0x00828cf0
  00abab1e:	33 db                                          	XOR EBX,EBX
  00abab20:	3b c3                                          	CMP EAX,EBX
  00abab22:	0f 84 19 06 00 00                              	JZ 0x00abb141
  00abab28:	8b c8                                          	MOV ECX,EAX
  00abab2a:	e8 91 ea d6 ff                                 	CALL 0x008295c0
  00abab2f:	8b f8                                          	MOV EDI,EAX
  00abab31:	3b fb                                          	CMP EDI,EBX
  00abab33:	0f 84 08 06 00 00                              	JZ 0x00abb141
  00abab39:	8b 4e 4c                                       	MOV ECX,dword ptr [ESI + 0x4c]
  00abab3c:	8b 46 48                                       	MOV EAX,dword ptr [ESI + 0x48]
  00abab3f:	51                                             	PUSH ECX
  00abab40:	50                                             	PUSH EAX
  00abab41:	8b cf                                          	MOV ECX,EDI
  00abab43:	e8 78 76 b7 ff                                 	CALL 0x006321c0
  00abab48:	84 c0                                          	TEST AL,AL
  00abab4a:	0f 84 f1 05 00 00                              	JZ 0x00abb141
  00abab50:	8b 4e 4c                                       	MOV ECX,dword ptr [ESI + 0x4c]
  00abab53:	8b 46 48                                       	MOV EAX,dword ptr [ESI + 0x48]
  00abab56:	8d 94 24 80 00 00 00                           	LEA EDX,[ESP + 0x80]
  00abab5d:	52                                             	PUSH EDX
  00abab5e:	51                                             	PUSH ECX
  00abab5f:	50                                             	PUSH EAX
  00abab60:	8b cf                                          	MOV ECX,EDI
  00abab62:	e8 d9 73 b7 ff                                 	CALL 0x00631f40
  00abab67:	84 c0                                          	TEST AL,AL
  00abab69:	0f 84 d2 05 00 00                              	JZ 0x00abb141
  00abab6f:	8b 8e 28 04 00 00                              	MOV ECX,dword ptr [ESI + 0x428]
  00abab75:	85 c9                                          	TEST ECX,ECX
  00abab77:	f3 0f 10 3d ec e6 06 01                        	MOVSS XMM7,dword ptr [0x0106e6ec]
  00abab7f:	8d 9e 28 04 00 00                              	LEA EBX,[ESI + 0x428]
  00abab85:	0f 84 87 00 00 00                              	JZ 0x00abac12
  00abab8b:	e8 10 0e 22 00                                 	CALL 0x00cdb9a0
  00abab90:	84 c0                                          	TEST AL,AL
  00abab92:	74 76                                          	JZ 0x00abac0a
  00abab94:	8b 0b                                          	MOV ECX,dword ptr [EBX]
  00abab96:	8d 84 24 d0 00 00 00                           	LEA EAX,[ESP + 0xd0]
  00abab9d:	50                                             	PUSH EAX
  00abab9e:	e8 3d 0f 22 00                                 	CALL 0x00cdbae0
  00ababa3:	0f 28 8c 24 80 00 00 00                        	MOVAPS XMM1,xmmword ptr [ESP + 0x80]
  00ababab:	0f 28 00                                       	MOVAPS XMM0,xmmword ptr [EAX]
  00ababae:	f3 0f 10 3d ec e6 06 01                        	MOVSS XMM7,dword ptr [0x0106e6ec]
  00ababb6:	0f 5c c1                                       	SUBPS XMM0,XMM1
  00ababb9:	0f 59 c0                                       	MULPS XMM0,XMM0
  00ababbc:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00ababbf:	0f c6 c1 02                                    	SHUFPS XMM0,XMM1,0x2
  00ababc3:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  00ababc6:	0f c6 d1 01                                    	SHUFPS XMM2,XMM1,0x1
  00ababca:	0f 58 c2                                       	ADDPS XMM0,XMM2
  00ababcd:	0f 58 c1                                       	ADDPS XMM0,XMM1
  00ababd0:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00ababd4:	0f 51 c0                                       	SQRTPS XMM0,XMM0
  00ababd7:	f3 0f 11 84 24 b0 00 00 00                     	MOVSS dword ptr [ESP + 0xb0],XMM0
  00ababe0:	f3 0f 10 c7                                    	MOVSS XMM0,XMM7
  00ababe4:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00ababe8:	f3 0f 11 84 24 a0 00 00 00                     	MOVSS dword ptr [ESP + 0xa0],XMM0
  00ababf1:	f3 0f 10 84 24 b0 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0xb0]
  00ababfa:	0f 2f 84 24 a0 00 00 00                        	COMISS XMM0,dword ptr [ESP + 0xa0]
  00abac02:	0f 86 91 05 00 00                              	JBE 0x00abb199
  00abac08:	eb 08                                          	JMP 0x00abac12
  00abac0a:	f3 0f 10 3d ec e6 06 01                        	MOVSS XMM7,dword ptr [0x0106e6ec]
  00abac12:	8d 8c 24 10 01 00 00                           	LEA ECX,[ESP + 0x110]
  00abac19:	51                                             	PUSH ECX
  00abac1a:	8b ce                                          	MOV ECX,ESI
  00abac1c:	e8 ef 69 ff ff                                 	CALL 0x00ab1610
  00abac21:	0f 28 84 24 80 00 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x80]
  00abac29:	0f 28 08                                       	MOVAPS XMM1,xmmword ptr [EAX]
  00abac2c:	0f 28 58 10                                    	MOVAPS XMM3,xmmword ptr [EAX + 0x10]
  00abac30:	f3 0f 10 2d f8 98 f9 00                        	MOVSS XMM5,dword ptr [0x00f998f8]
  00abac38:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00abac3b:	0f c6 d0 00                                    	SHUFPS XMM2,XMM0,0x0
  00abac3f:	0f 59 d1                                       	MULPS XMM2,XMM1
  00abac42:	0f 28 48 30                                    	MOVAPS XMM1,xmmword ptr [EAX + 0x30]
  00abac46:	0f 58 d1                                       	ADDPS XMM2,XMM1
  00abac49:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00abac4c:	0f c6 c8 55                                    	SHUFPS XMM1,XMM0,0x55
  00abac50:	0f 59 cb                                       	MULPS XMM1,XMM3
  00abac53:	0f 58 d1                                       	ADDPS XMM2,XMM1
  00abac56:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00abac59:	0f c6 c8 aa                                    	SHUFPS XMM1,XMM0,0xaa
  00abac5d:	0f 28 40 20                                    	MOVAPS XMM0,xmmword ptr [EAX + 0x20]
  00abac61:	0f 59 c8                                       	MULPS XMM1,XMM0
  00abac64:	0f 57 c0                                       	XORPS XMM0,XMM0
  00abac67:	0f 58 d1                                       	ADDPS XMM2,XMM1
  00abac6a:	0f 29 94 24 00 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x100],XMM2
  00abac72:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00abac78:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  00abac7e:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  00abac84:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00abac8a:	0f 28 4c 24 10                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x10]
  00abac8f:	0f c6 d2 20                                    	SHUFPS XMM2,XMM2,0x20
  00abac93:	0f c6 d2 08                                    	SHUFPS XMM2,XMM2,0x8
  00abac97:	0f 29 54 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM2
  00abac9c:	f3 0f 10 5c 24 10                              	MOVSS XMM3,dword ptr [ESP + 0x10]
  00abaca2:	b8 ff ff ff 7f                                 	MOV EAX,0x7fffffff
  00abaca7:	f3 0f 11 5c 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM3
  00abacad:	21 44 24 0c                                    	AND dword ptr [ESP + 0xc],EAX
  00abacb1:	0f 2f 7c 24 0c                                 	COMISS XMM7,dword ptr [ESP + 0xc]
  00abacb6:	0f 29 4c 24 40                                 	MOVAPS xmmword ptr [ESP + 0x40],XMM1
  00abacbb:	0f 29 54 24 50                                 	MOVAPS xmmword ptr [ESP + 0x50],XMM2
  00abacc0:	f3 0f 11 6c 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM5
  00abacc6:	76 4c                                          	JBE 0x00abad14
  00abacc8:	f3 0f 2a a6 78 01 00 00                        	CVTSI2SS XMM4,dword ptr [ESI + 0x178]
  00abacd0:	0f 28 cc                                       	MOVAPS XMM1,XMM4
  00abacd3:	f3 0f 59 0d b4 b5 f9 00                        	MULSS XMM1,dword ptr [0x00f9b5b4]
  00abacdb:	0f 28 da                                       	MOVAPS XMM3,XMM2
  00abacde:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  00abace4:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  00abacea:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00abacee:	0f c6 d9 00                                    	SHUFPS XMM3,XMM1,0x0
  00abacf2:	f3 0f 10 0d 18 b2 fa 00                        	MOVSS XMM1,dword ptr [0x00fab218]
  00abacfa:	f3 0f 11 4c 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM1
  00abad00:	f3 0f 11 4c 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM1
  00abad06:	0f 28 4c 24 10                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x10]
  00abad0b:	0f c6 da e8                                    	SHUFPS XMM3,XMM2,0xe8
  00abad0f:	e9 24 01 00 00                                 	JMP 0x00abae38
  00abad14:	f3 0f 2a a6 74 01 00 00                        	CVTSI2SS XMM4,dword ptr [ESI + 0x174]
  00abad1c:	0f 29 54 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM2
  00abad21:	f3 0f 10 5c 24 14                              	MOVSS XMM3,dword ptr [ESP + 0x14]
  00abad27:	f3 0f 11 5c 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM3
  00abad2d:	21 44 24 0c                                    	AND dword ptr [ESP + 0xc],EAX
  00abad31:	0f 2f 7c 24 0c                                 	COMISS XMM7,dword ptr [ESP + 0xc]
  00abad36:	76 40                                          	JBE 0x00abad78
  00abad38:	0f 28 cc                                       	MOVAPS XMM1,XMM4
  00abad3b:	f3 0f 59 0d b4 b5 f9 00                        	MULSS XMM1,dword ptr [0x00f9b5b4]
  00abad43:	0f 28 da                                       	MOVAPS XMM3,XMM2
  00abad46:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00abad4c:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  00abad52:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00abad58:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00abad5c:	0f c6 d9 05                                    	SHUFPS XMM3,XMM1,0x5
  00abad60:	f3 0f 10 0d 18 b2 fa 00                        	MOVSS XMM1,dword ptr [0x00fab218]
  00abad68:	f3 0f 11 4c 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM1
  00abad6e:	0f 28 4c 24 10                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x10]
  00abad73:	e9 bc 00 00 00                                 	JMP 0x00abae34
  00abad78:	0f 29 54 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM2
  00abad7d:	f3 0f 10 5c 24 10                              	MOVSS XMM3,dword ptr [ESP + 0x10]
  00abad83:	f3 0f 5c dc                                    	SUBSS XMM3,XMM4
  00abad87:	f3 0f 11 5c 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM3
  00abad8d:	21 44 24 0c                                    	AND dword ptr [ESP + 0xc],EAX
  00abad91:	0f 2f 7c 24 0c                                 	COMISS XMM7,dword ptr [ESP + 0xc]
  00abad96:	76 41                                          	JBE 0x00abadd9
  00abad98:	f3 0f 2a a6 78 01 00 00                        	CVTSI2SS XMM4,dword ptr [ESI + 0x178]
  00abada0:	0f 28 cc                                       	MOVAPS XMM1,XMM4
  00abada3:	f3 0f 59 0d b4 b5 f9 00                        	MULSS XMM1,dword ptr [0x00f9b5b4]
  00abadab:	0f 28 da                                       	MOVAPS XMM3,XMM2
  00abadae:	f3 0f 11 6c 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM5
  00abadb4:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  00abadba:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  00abadc0:	f3 0f 11 6c 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM5
  00abadc6:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00abadca:	0f c6 d9 00                                    	SHUFPS XMM3,XMM1,0x0
  00abadce:	0f 28 4c 24 10                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x10]
  00abadd3:	0f c6 da e8                                    	SHUFPS XMM3,XMM2,0xe8
  00abadd7:	eb 5f                                          	JMP 0x00abae38
  00abadd9:	f3 0f 2a 9e 78 01 00 00                        	CVTSI2SS XMM3,dword ptr [ESI + 0x178]
  00abade1:	0f 29 54 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM2
  00abade6:	f3 0f 10 74 24 14                              	MOVSS XMM6,dword ptr [ESP + 0x14]
  00abadec:	f3 0f 5c f3                                    	SUBSS XMM6,XMM3
  00abadf0:	f3 0f 11 74 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM6
  00abadf6:	21 44 24 0c                                    	AND dword ptr [ESP + 0xc],EAX
  00abadfa:	0f 2f 7c 24 0c                                 	COMISS XMM7,dword ptr [ESP + 0xc]
  00abadff:	76 4f                                          	JBE 0x00abae50
  00abae01:	0f 28 cc                                       	MOVAPS XMM1,XMM4
  00abae04:	f3 0f 59 0d b4 b5 f9 00                        	MULSS XMM1,dword ptr [0x00f9b5b4]
  00abae0c:	0f 28 da                                       	MOVAPS XMM3,XMM2
  00abae0f:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00abae15:	f3 0f 11 6c 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM5
  00abae1b:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  00abae21:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00abae27:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00abae2b:	0f c6 d9 05                                    	SHUFPS XMM3,XMM1,0x5
  00abae2f:	0f 28 4c 24 10                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x10]
  00abae34:	0f c6 da e2                                    	SHUFPS XMM3,XMM2,0xe2
  00abae38:	f3 0f 59 25 9c 2b fc 00                        	MULSS XMM4,dword ptr [0x00fc2b9c]
  00abae40:	0f 29 4c 24 40                                 	MOVAPS xmmword ptr [ESP + 0x40],XMM1
  00abae45:	f3 0f 11 64 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM4
  00abae4b:	0f 29 5c 24 50                                 	MOVAPS xmmword ptr [ESP + 0x50],XMM3
  00abae50:	0f 29 4c 24 30                                 	MOVAPS xmmword ptr [ESP + 0x30],XMM1
  00abae55:	0f c6 c9 aa                                    	SHUFPS XMM1,XMM1,0xaa
  00abae59:	0f 57 d2                                       	XORPS XMM2,XMM2
  00abae5c:	0f 5c d1                                       	SUBPS XMM2,XMM1
  00abae5f:	0f 29 54 24 70                                 	MOVAPS xmmword ptr [ESP + 0x70],XMM2
  00abae64:	d9 44 24 70                                    	FLD float ptr [ESP + 0x70]
  00abae68:	d9 44 24 30                                    	FLD float ptr [ESP + 0x30]
  00abae6c:	f3 0f 10 0d 88 fd 03 01                        	MOVSS XMM1,dword ptr [0x0103fd88]
  00abae74:	d9 f3                                          	FPATAN
  00abae76:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00abae7c:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  00abae82:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00abae88:	f3 0f 11 6c 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM5
  00abae8e:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00abae93:	0f 29 44 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM0
  00abae98:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00abae9c:	6a 00                                          	PUSH 0x0
  00abae9e:	6a 00                                          	PUSH 0x0
  00abaea0:	6a 00                                          	PUSH 0x0
  00abaea2:	6a 00                                          	PUSH 0x0
  00abaea4:	68 d4 60 06 01                                 	PUSH 0x10660d4
  00abaea9:	6a 40                                          	PUSH 0x40
  00abaeab:	d9 5c 24 40                                    	FSTP float ptr [ESP + 0x40]
  00abaeaf:	f3 0f 10 44 24 40                              	MOVSS XMM0,dword ptr [ESP + 0x40]
  00abaeb5:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00abaeb9:	0f 5e c1                                       	DIVPS XMM0,XMM1
  00abaebc:	0f 29 44 24 48                                 	MOVAPS xmmword ptr [ESP + 0x48],XMM0
  00abaec1:	d9 44 24 48                                    	FLD float ptr [ESP + 0x48]
  00abaec5:	0f 29 44 24 48                                 	MOVAPS xmmword ptr [ESP + 0x48],XMM0
  00abaeca:	d9 fe                                          	FSIN
  00abaecc:	d9 5c 24 40                                    	FSTP float ptr [ESP + 0x40]
  00abaed0:	d9 44 24 48                                    	FLD float ptr [ESP + 0x48]
  00abaed4:	d9 ff                                          	FCOS
  00abaed6:	f3 0f 10 4c 24 40                              	MOVSS XMM1,dword ptr [ESP + 0x40]
  00abaedc:	0f 28 44 24 28                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x28]
  00abaee1:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00abaee4:	0f c6 d0 aa                                    	SHUFPS XMM2,XMM0,0xaa
  00abaee8:	0f 28 d8                                       	MOVAPS XMM3,XMM0
  00abaeeb:	0f c6 d8 55                                    	SHUFPS XMM3,XMM0,0x55
  00abaeef:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00abaef3:	0f 59 d1                                       	MULPS XMM2,XMM1
  00abaef6:	0f 59 d9                                       	MULPS XMM3,XMM1
  00abaef9:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00abaefd:	0f 59 c1                                       	MULPS XMM0,XMM1
  00abaf00:	0f 29 84 24 08 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x108],XMM0
  00abaf08:	0f 29 94 24 88 00 00 00                        	MOVAPS xmmword ptr [ESP + 0x88],XMM2
  00abaf10:	0f 29 9c 24 f8 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xf8],XMM3
  00abaf18:	0f c6 c3 10                                    	SHUFPS XMM0,XMM3,0x10
  00abaf1c:	d9 5c 24 40                                    	FSTP float ptr [ESP + 0x40]
  00abaf20:	f3 0f 10 4c 24 40                              	MOVSS XMM1,dword ptr [ESP + 0x40]
  00abaf26:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00abaf2a:	0f c6 d1 32                                    	SHUFPS XMM2,XMM1,0x32
  00abaf2e:	0f c6 c2 88                                    	SHUFPS XMM0,XMM2,0x88
  00abaf32:	0f 29 84 24 a8 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xa8],XMM0
  00abaf3a:	e8 c1 95 a2 ff                                 	CALL 0x004e4500
  00abaf3f:	83 c4 18                                       	ADD ESP,0x18
  00abaf42:	85 c0                                          	TEST EAX,EAX
  00abaf44:	74 11                                          	JZ 0x00abaf57
  00abaf46:	68 c0 60 06 01                                 	PUSH 0x10660c0
  00abaf4b:	56                                             	PUSH ESI
  00abaf4c:	8b c8                                          	MOV ECX,EAX
  00abaf4e:	e8 dd 12 22 00                                 	CALL 0x00cdc230
  00abaf53:	8b f8                                          	MOV EDI,EAX
  00abaf55:	eb 02                                          	JMP 0x00abaf59
  00abaf57:	33 ff                                          	XOR EDI,EDI
  00abaf59:	85 ff                                          	TEST EDI,EDI
  00abaf5b:	89 7c 24 2c                                    	MOV dword ptr [ESP + 0x2c],EDI
  00abaf5f:	74 04                                          	JZ 0x00abaf65
  00abaf61:	83 47 04 01                                    	ADD dword ptr [EDI + 0x4],0x1
  00abaf65:	8b 03                                          	MOV EAX,dword ptr [EBX]
  00abaf67:	85 c0                                          	TEST EAX,EAX
  00abaf69:	74 3b                                          	JZ 0x00abafa6
  00abaf6b:	85 ff                                          	TEST EDI,EDI
  00abaf6d:	74 08                                          	JZ 0x00abaf77
  00abaf6f:	50                                             	PUSH EAX
  00abaf70:	8b cf                                          	MOV ECX,EDI
  00abaf72:	e8 e9 14 22 00                                 	CALL 0x00cdc460
  00abaf77:	8b 0b                                          	MOV ECX,dword ptr [EBX]
  00abaf79:	6a 01                                          	PUSH 0x1
  00abaf7b:	e8 f0 09 22 00                                 	CALL 0x00cdb970
  00abaf80:	8b 0b                                          	MOV ECX,dword ptr [EBX]
  00abaf82:	85 c9                                          	TEST ECX,ECX
  00abaf84:	74 20                                          	JZ 0x00abafa6
  00abaf86:	c7 03 00 00 00 00                              	MOV dword ptr [EBX],0x0
  00abaf8c:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00abaf8f:	83 c0 ff                                       	ADD EAX,-0x1
  00abaf92:	89 41 04                                       	MOV dword ptr [ECX + 0x4],EAX
  00abaf95:	75 0f                                          	JNZ 0x00abafa6
  00abaf97:	c7 41 04 01 00 00 00                           	MOV dword ptr [ECX + 0x4],0x1
  00abaf9e:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00abafa0:	8b 02                                          	MOV EAX,dword ptr [EDX]
  00abafa2:	6a 01                                          	PUSH 0x1
  00abafa4:	ff d0                                          	CALL EAX
  00abafa6:	8d 8c 24 90 00 00 00                           	LEA ECX,[ESP + 0x90]
  00abafad:	51                                             	PUSH ECX
  00abafae:	8b cf                                          	MOV ECX,EDI
  00abafb0:	e8 3b 0d 22 00                                 	CALL 0x00cdbcf0
  00abafb5:	8d 94 24 80 00 00 00                           	LEA EDX,[ESP + 0x80]
  00abafbc:	52                                             	PUSH EDX
  00abafbd:	8b cf                                          	MOV ECX,EDI
  00abafbf:	e8 fc 09 22 00                                 	CALL 0x00cdb9c0
  00abafc4:	6a 01                                          	PUSH 0x1
  00abafc6:	8b cf                                          	MOV ECX,EDI
  00abafc8:	e8 43 09 22 00                                 	CALL 0x00cdb910
  00abafcd:	8d 44 24 2c                                    	LEA EAX,[ESP + 0x2c]
  00abafd1:	50                                             	PUSH EAX
  00abafd2:	8b cb                                          	MOV ECX,EBX
  00abafd4:	e8 77 9d d9 ff                                 	CALL 0x00854d50
  00abafd9:	6a 00                                          	PUSH 0x0
  00abafdb:	6a 00                                          	PUSH 0x0
  00abafdd:	6a 00                                          	PUSH 0x0
  00abafdf:	6a 00                                          	PUSH 0x0
  00abafe1:	68 d4 60 06 01                                 	PUSH 0x10660d4
  00abafe6:	6a 40                                          	PUSH 0x40
  00abafe8:	e8 13 95 a2 ff                                 	CALL 0x004e4500
  00abafed:	83 c4 18                                       	ADD ESP,0x18
  00abaff0:	85 c0                                          	TEST EAX,EAX
  00abaff2:	74 11                                          	JZ 0x00abb005
  00abaff4:	68 b0 60 06 01                                 	PUSH 0x10660b0
  00abaff9:	56                                             	PUSH ESI
  00abaffa:	8b c8                                          	MOV ECX,EAX
  00abaffc:	e8 2f 12 22 00                                 	CALL 0x00cdc230
  00abb001:	8b f8                                          	MOV EDI,EAX
  00abb003:	eb 02                                          	JMP 0x00abb007
  00abb005:	33 ff                                          	XOR EDI,EDI
  00abb007:	85 ff                                          	TEST EDI,EDI
  00abb009:	89 7c 24 0c                                    	MOV dword ptr [ESP + 0xc],EDI
  00abb00d:	74 04                                          	JZ 0x00abb013
  00abb00f:	83 47 04 01                                    	ADD dword ptr [EDI + 0x4],0x1
  00abb013:	8b 86 2c 04 00 00                              	MOV EAX,dword ptr [ESI + 0x42c]
  00abb019:	85 c0                                          	TEST EAX,EAX
  00abb01b:	8d 9e 2c 04 00 00                              	LEA EBX,[ESI + 0x42c]
  00abb021:	74 3b                                          	JZ 0x00abb05e
  00abb023:	85 ff                                          	TEST EDI,EDI
  00abb025:	74 08                                          	JZ 0x00abb02f
  00abb027:	50                                             	PUSH EAX
  00abb028:	8b cf                                          	MOV ECX,EDI
  00abb02a:	e8 31 14 22 00                                 	CALL 0x00cdc460
  00abb02f:	8b 0b                                          	MOV ECX,dword ptr [EBX]
  00abb031:	6a 01                                          	PUSH 0x1
  00abb033:	e8 38 09 22 00                                 	CALL 0x00cdb970
  00abb038:	8b 0b                                          	MOV ECX,dword ptr [EBX]
  00abb03a:	85 c9                                          	TEST ECX,ECX
  00abb03c:	74 20                                          	JZ 0x00abb05e
  00abb03e:	c7 03 00 00 00 00                              	MOV dword ptr [EBX],0x0
  00abb044:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00abb047:	83 c0 ff                                       	ADD EAX,-0x1
  00abb04a:	89 41 04                                       	MOV dword ptr [ECX + 0x4],EAX
  00abb04d:	75 0f                                          	JNZ 0x00abb05e
  00abb04f:	c7 41 04 01 00 00 00                           	MOV dword ptr [ECX + 0x4],0x1
  00abb056:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00abb058:	8b 02                                          	MOV EAX,dword ptr [EDX]
  00abb05a:	6a 01                                          	PUSH 0x1
  00abb05c:	ff d0                                          	CALL EAX
  00abb05e:	0f 28 54 24 40                                 	MOVAPS XMM2,xmmword ptr [ESP + 0x40]
  00abb063:	0f 28 5c 24 50                                 	MOVAPS XMM3,xmmword ptr [ESP + 0x50]
  00abb068:	f3 0f 10 05 fc 43 ff 00                        	MOVSS XMM0,dword ptr [0x00ff43fc]
  00abb070:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00abb074:	0f 28 ca                                       	MOVAPS XMM1,XMM2
  00abb077:	0f c6 ca 55                                    	SHUFPS XMM1,XMM2,0x55
  00abb07b:	0f 59 c8                                       	MULPS XMM1,XMM0
  00abb07e:	0f 28 e3                                       	MOVAPS XMM4,XMM3
  00abb081:	0f c6 e3 55                                    	SHUFPS XMM4,XMM3,0x55
  00abb085:	0f 58 e1                                       	ADDPS XMM4,XMM1
  00abb088:	0f 28 ca                                       	MOVAPS XMM1,XMM2
  00abb08b:	0f c6 ca 00                                    	SHUFPS XMM1,XMM2,0x0
  00abb08f:	0f 59 c8                                       	MULPS XMM1,XMM0
  00abb092:	0f 28 c3                                       	MOVAPS XMM0,XMM3
  00abb095:	0f c6 c3 00                                    	SHUFPS XMM0,XMM3,0x0
  00abb099:	0f 58 c1                                       	ADDPS XMM0,XMM1
  00abb09c:	8d 8c 24 c0 00 00 00                           	LEA ECX,[ESP + 0xc0]
  00abb0a3:	0f 29 44 24 30                                 	MOVAPS xmmword ptr [ESP + 0x30],XMM0
  00abb0a8:	f3 0f 10 44 24 30                              	MOVSS XMM0,dword ptr [ESP + 0x30]
  00abb0ae:	51                                             	PUSH ECX
  00abb0af:	8d 54 24 68                                    	LEA EDX,[ESP + 0x68]
  00abb0b3:	52                                             	PUSH EDX
  00abb0b4:	0f 29 64 24 78                                 	MOVAPS xmmword ptr [ESP + 0x78],XMM4
  00abb0b9:	f3 0f 11 44 24 6c                              	MOVSS dword ptr [ESP + 0x6c],XMM0
  00abb0bf:	f3 0f 10 44 24 78                              	MOVSS XMM0,dword ptr [ESP + 0x78]
  00abb0c5:	56                                             	PUSH ESI
  00abb0c6:	f3 0f 11 44 24 74                              	MOVSS dword ptr [ESP + 0x74],XMM0
  00abb0cc:	c7 44 24 78 00 00 00 00                        	MOV dword ptr [ESP + 0x78],0x0
  00abb0d4:	e8 77 16 02 00                                 	CALL 0x00adc750
  00abb0d9:	83 c4 0c                                       	ADD ESP,0xc
  00abb0dc:	8d 84 24 90 00 00 00                           	LEA EAX,[ESP + 0x90]
  00abb0e3:	50                                             	PUSH EAX
  00abb0e4:	8b cf                                          	MOV ECX,EDI
  00abb0e6:	e8 05 0c 22 00                                 	CALL 0x00cdbcf0
  00abb0eb:	8d 8c 24 c0 00 00 00                           	LEA ECX,[ESP + 0xc0]
  00abb0f2:	51                                             	PUSH ECX
  00abb0f3:	8b cf                                          	MOV ECX,EDI
  00abb0f5:	e8 e6 08 22 00                                 	CALL 0x00cdb9e0
  00abb0fa:	d9 e8                                          	FLD1
  00abb0fc:	6a 00                                          	PUSH 0x0
  00abb0fe:	83 ec 08                                       	SUB ESP,0x8
  00abb101:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00abb105:	8b cf                                          	MOV ECX,EDI
  00abb107:	d9 44 24 30                                    	FLD float ptr [ESP + 0x30]
  00abb10b:	d9 1c 24                                       	FSTP float ptr [ESP]
  00abb10e:	e8 3d 0a 22 00                                 	CALL 0x00cdbb50
  00abb113:	6a 01                                          	PUSH 0x1
  00abb115:	8b cf                                          	MOV ECX,EDI
  00abb117:	e8 f4 07 22 00                                 	CALL 0x00cdb910
  00abb11c:	8d 54 24 0c                                    	LEA EDX,[ESP + 0xc]
  00abb120:	52                                             	PUSH EDX
  00abb121:	8b cb                                          	MOV ECX,EBX
  00abb123:	e8 28 9c d9 ff                                 	CALL 0x00854d50
  00abb128:	8d 4c 24 0c                                    	LEA ECX,[ESP + 0xc]
  00abb12c:	e8 ef ab aa ff                                 	CALL 0x00565d20
  00abb131:	8d 4c 24 2c                                    	LEA ECX,[ESP + 0x2c]
  00abb135:	e8 e6 ab aa ff                                 	CALL 0x00565d20
  00abb13a:	5f                                             	POP EDI
  00abb13b:	5e                                             	POP ESI
  00abb13c:	5b                                             	POP EBX
  00abb13d:	8b e5                                          	MOV ESP,EBP
  00abb13f:	5d                                             	POP EBP
  00abb140:	c3                                             	RET
  00abb141:	8b 8e 28 04 00 00                              	MOV ECX,dword ptr [ESI + 0x428]
  00abb147:	3b cb                                          	CMP ECX,EBX
  00abb149:	74 22                                          	JZ 0x00abb16d
  00abb14b:	89 9e 28 04 00 00                              	MOV dword ptr [ESI + 0x428],EBX
  00abb151:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00abb154:	83 c0 ff                                       	ADD EAX,-0x1
  00abb157:	3b c3                                          	CMP EAX,EBX
  00abb159:	89 41 04                                       	MOV dword ptr [ECX + 0x4],EAX
  00abb15c:	75 0f                                          	JNZ 0x00abb16d
  00abb15e:	c7 41 04 01 00 00 00                           	MOV dword ptr [ECX + 0x4],0x1
  00abb165:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00abb167:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00abb169:	6a 01                                          	PUSH 0x1
  00abb16b:	ff d2                                          	CALL EDX
  00abb16d:	8b 8e 2c 04 00 00                              	MOV ECX,dword ptr [ESI + 0x42c]
  00abb173:	3b cb                                          	CMP ECX,EBX
  00abb175:	74 22                                          	JZ 0x00abb199
  00abb177:	89 9e 2c 04 00 00                              	MOV dword ptr [ESI + 0x42c],EBX
  00abb17d:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00abb180:	83 c0 ff                                       	ADD EAX,-0x1
  00abb183:	3b c3                                          	CMP EAX,EBX
  00abb185:	89 41 04                                       	MOV dword ptr [ECX + 0x4],EAX
  00abb188:	75 0f                                          	JNZ 0x00abb199
  00abb18a:	c7 41 04 01 00 00 00                           	MOV dword ptr [ECX + 0x4],0x1
  00abb191:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00abb193:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00abb195:	6a 01                                          	PUSH 0x1
  00abb197:	ff d2                                          	CALL EDX
  00abb199:	5f                                             	POP EDI
  00abb19a:	5e                                             	POP ESI
  00abb19b:	5b                                             	POP EBX
  00abb19c:	8b e5                                          	MOV ESP,EBP
  00abb19e:	5d                                             	POP EBP
  00abb19f:	c3                                             	RET
