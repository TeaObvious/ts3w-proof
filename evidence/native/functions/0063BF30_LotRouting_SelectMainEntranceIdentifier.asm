# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x0063bf30 (LotRouting_SelectMainEntranceIdentifier)
Paired actual Ghidra pseudocode: 0063BF30_LotRouting_SelectMainEntranceIdentifier.c
Envelope [0x0063bf30,0x0063cd65); 3637 bytes. Exact owned ranges: [0x0063bf30,0x0063c709),[0x0063c710,0x0063cd65)
Owned: 3630 pristine PE bytes / 848 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope alignment bytes; they are not Listing instructions or function-body bytes.
Inferred stored prototypes remain unchanged; physical register/stack/AL and original managed evidence govern ABI interpretation.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0063bf30 <original>:
  0063bf30:	55                                             	PUSH EBP
  0063bf31:	8b ec                                          	MOV EBP,ESP
  0063bf33:	83 e4 f0                                       	AND ESP,0xfffffff0
  0063bf36:	81 ec 54 01 00 00                              	SUB ESP,0x154
  0063bf3c:	53                                             	PUSH EBX
  0063bf3d:	56                                             	PUSH ESI
  0063bf3e:	8b 75 08                                       	MOV ESI,dword ptr [EBP + 0x8]
  0063bf41:	0f b7 86 6c 01 00 00                           	MOVZX EAX,word ptr [ESI + 0x16c]
  0063bf48:	8b 96 90 00 00 00                              	MOV EDX,dword ptr [ESI + 0x90]
  0063bf4e:	89 4c 24 58                                    	MOV dword ptr [ESP + 0x58],ECX
  0063bf52:	8b c8                                          	MOV ECX,EAX
  0063bf54:	c1 e1 04                                       	SHL ECX,0x4
  0063bf57:	03 c8                                          	ADD ECX,EAX
  0063bf59:	57                                             	PUSH EDI
  0063bf5a:	8d 04 8a                                       	LEA EAX,[EDX + ECX*0x4]
  0063bf5d:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  0063bf60:	6a 00                                          	PUSH 0x0
  0063bf62:	89 84 24 c0 00 00 00                           	MOV dword ptr [ESP + 0xc0],EAX
  0063bf69:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0063bf6b:	52                                             	PUSH EDX
  0063bf6c:	c7 46 14 ff ff ff ff                           	MOV dword ptr [ESI + 0x14],0xffffffff
  0063bf73:	8b 0d c4 db 1e 01                              	MOV ECX,dword ptr [0x011edbc4]
  0063bf79:	50                                             	PUSH EAX
  0063bf7a:	e8 91 68 62 00                                 	CALL 0x00c62810
  0063bf7f:	85 c0                                          	TEST EAX,EAX
  0063bf81:	89 44 24 20                                    	MOV dword ptr [ESP + 0x20],EAX
  0063bf85:	0f 84 cf 0d 00 00                              	JZ 0x0063cd5a
  0063bf8b:	8b 88 94 02 00 00                              	MOV ECX,dword ptr [EAX + 0x294]
  0063bf91:	85 c9                                          	TEST ECX,ECX
  0063bf93:	89 8c 24 98 00 00 00                           	MOV dword ptr [ESP + 0x98],ECX
  0063bf9a:	0f 84 ba 0d 00 00                              	JZ 0x0063cd5a
  0063bfa0:	f3 0f 2a 80 74 01 00 00                        	CVTSI2SS XMM0,dword ptr [EAX + 0x174]
  0063bfa8:	8d 8c 24 e8 00 00 00                           	LEA ECX,[ESP + 0xe8]
  0063bfaf:	f3 0f 11 84 24 9c 00 00 00                     	MOVSS dword ptr [ESP + 0x9c],XMM0
  0063bfb8:	f3 0f 2a 80 78 01 00 00                        	CVTSI2SS XMM0,dword ptr [EAX + 0x178]
  0063bfc0:	8b d1                                          	MOV EDX,ECX
  0063bfc2:	89 8c 24 dc 00 00 00                           	MOV dword ptr [ESP + 0xdc],ECX
  0063bfc9:	8d 8c 24 48 01 00 00                           	LEA ECX,[ESP + 0x148]
  0063bfd0:	89 8c 24 e0 00 00 00                           	MOV dword ptr [ESP + 0xe0],ECX
  0063bfd7:	8b c8                                          	MOV ECX,EAX
  0063bfd9:	f3 0f 11 84 24 a8 00 00 00                     	MOVSS dword ptr [ESP + 0xa8],XMM0
  0063bfe2:	89 94 24 d8 00 00 00                           	MOV dword ptr [ESP + 0xd8],EDX
  0063bfe9:	32 db                                          	XOR BL,BL
  0063bfeb:	e8 a0 45 47 00                                 	CALL 0x00ab0590
  0063bff0:	83 7e 20 00                                    	CMP dword ptr [ESI + 0x20],0x0
  0063bff4:	f3 0f 10 25 c8 f8 06 01                        	MOVSS XMM4,dword ptr [0x0106f8c8]
  0063bffc:	0f 57 d2                                       	XORPS XMM2,XMM2
  0063bfff:	89 84 24 b8 00 00 00                           	MOV dword ptr [ESP + 0xb8],EAX
  0063c006:	0f 84 d6 03 00 00                              	JZ 0x0063c3e2
  0063c00c:	0f 28 46 30                                    	MOVAPS XMM0,xmmword ptr [ESI + 0x30]
  0063c010:	0f 29 44 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM0
  0063c015:	f3 0f 10 4c 24 60                              	MOVSS XMM1,dword ptr [ESP + 0x60]
  0063c01b:	0f 29 44 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM0
  0063c020:	f3 0f 10 44 24 68                              	MOVSS XMM0,dword ptr [ESP + 0x68]
  0063c026:	f3 0f 11 8c 24 ac 00 00 00                     	MOVSS dword ptr [ESP + 0xac],XMM1
  0063c02f:	f3 0f 11 84 24 b0 00 00 00                     	MOVSS dword ptr [ESP + 0xb0],XMM0
  0063c038:	89 84 24 b4 00 00 00                           	MOV dword ptr [ESP + 0xb4],EAX
  0063c03f:	0f 28 4e 30                                    	MOVAPS XMM1,xmmword ptr [ESI + 0x30]
  0063c043:	0f 28 46 30                                    	MOVAPS XMM0,xmmword ptr [ESI + 0x30]
  0063c047:	0f c6 c1 20                                    	SHUFPS XMM0,XMM1,0x20
  0063c04b:	0f c6 c0 08                                    	SHUFPS XMM0,XMM0,0x8
  0063c04f:	0f 29 44 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM0
  0063c054:	d9 44 24 60                                    	FLD float ptr [ESP + 0x60]
  0063c058:	d9 e1                                          	FABS
  0063c05a:	0f 29 44 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM0
  0063c05f:	f3 0f 10 4c 24 64                              	MOVSS XMM1,dword ptr [ESP + 0x64]
  0063c065:	0f 29 44 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM0
  0063c06a:	d9 44 24 64                                    	FLD float ptr [ESP + 0x64]
  0063c06e:	d9 e1                                          	FABS
  0063c070:	b1 08                                          	MOV CL,0x8
  0063c072:	d9 54 24 18                                    	FST float ptr [ESP + 0x18]
  0063c076:	f3 0f 11 54 24 3c                              	MOVSS dword ptr [ESP + 0x3c],XMM2
  0063c07c:	d9 c9                                          	FXCH
  0063c07e:	f3 0f 11 54 24 38                              	MOVSS dword ptr [ESP + 0x38],XMM2
  0063c084:	f3 0f 11 4c 24 34                              	MOVSS dword ptr [ESP + 0x34],XMM1
  0063c08a:	f3 0f 11 54 24 30                              	MOVSS dword ptr [ESP + 0x30],XMM2
  0063c090:	0f 28 4c 24 30                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x30]
  0063c095:	db f1                                          	FCOMI ST0,ST1
  0063c097:	dd d9                                          	FSTP ST1
  0063c099:	0f 29 44 24 70                                 	MOVAPS xmmword ptr [ESP + 0x70],XMM0
  0063c09e:	88 4c 24 13                                    	MOV byte ptr [ESP + 0x13],CL
  0063c0a2:	76 40                                          	JBE 0x0063c0e4
  0063c0a4:	f3 0f 10 4c 24 18                              	MOVSS XMM1,dword ptr [ESP + 0x18]
  0063c0aa:	dd d8                                          	FSTP ST0
  0063c0ac:	f3 0f 11 4c 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM1
  0063c0b2:	d9 44 24 1c                                    	FLD float ptr [ESP + 0x1c]
  0063c0b6:	0f 29 44 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM0
  0063c0bb:	f3 0f 10 4c 24 60                              	MOVSS XMM1,dword ptr [ESP + 0x60]
  0063c0c1:	b1 01                                          	MOV CL,0x1
  0063c0c3:	f3 0f 11 4c 24 3c                              	MOVSS dword ptr [ESP + 0x3c],XMM1
  0063c0c9:	f3 0f 11 4c 24 38                              	MOVSS dword ptr [ESP + 0x38],XMM1
  0063c0cf:	f3 0f 11 54 24 34                              	MOVSS dword ptr [ESP + 0x34],XMM2
  0063c0d5:	f3 0f 11 4c 24 30                              	MOVSS dword ptr [ESP + 0x30],XMM1
  0063c0db:	0f 28 4c 24 30                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x30]
  0063c0e0:	88 4c 24 13                                    	MOV byte ptr [ESP + 0x13],CL
  0063c0e4:	f3 0f 10 9c 24 9c 00 00 00                     	MOVSS XMM3,dword ptr [ESP + 0x9c]
  0063c0ed:	0f 28 e8                                       	MOVAPS XMM5,XMM0
  0063c0f0:	f3 0f 10 d3                                    	MOVSS XMM2,XMM3
  0063c0f4:	0f c6 e8 00                                    	SHUFPS XMM5,XMM0,0x0
  0063c0f8:	0f c6 d2 00                                    	SHUFPS XMM2,XMM2,0x0
  0063c0fc:	0f 5c ea                                       	SUBPS XMM5,XMM2
  0063c0ff:	0f 29 6c 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM5
  0063c104:	d9 44 24 60                                    	FLD float ptr [ESP + 0x60]
  0063c108:	d9 e1                                          	FABS
  0063c10a:	d9 54 24 18                                    	FST float ptr [ESP + 0x18]
  0063c10e:	d9 c9                                          	FXCH
  0063c110:	db f1                                          	FCOMI ST0,ST1
  0063c112:	dd d9                                          	FSTP ST1
  0063c114:	76 40                                          	JBE 0x0063c156
  0063c116:	f3 0f 10 4c 24 18                              	MOVSS XMM1,dword ptr [ESP + 0x18]
  0063c11c:	dd d8                                          	FSTP ST0
  0063c11e:	f3 0f 11 4c 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM1
  0063c124:	d9 44 24 1c                                    	FLD float ptr [ESP + 0x1c]
  0063c128:	0f 29 44 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM0
  0063c12d:	f3 0f 10 4c 24 64                              	MOVSS XMM1,dword ptr [ESP + 0x64]
  0063c133:	b1 02                                          	MOV CL,0x2
  0063c135:	f3 0f 11 5c 24 3c                              	MOVSS dword ptr [ESP + 0x3c],XMM3
  0063c13b:	f3 0f 11 5c 24 38                              	MOVSS dword ptr [ESP + 0x38],XMM3
  0063c141:	f3 0f 11 4c 24 34                              	MOVSS dword ptr [ESP + 0x34],XMM1
  0063c147:	f3 0f 11 5c 24 30                              	MOVSS dword ptr [ESP + 0x30],XMM3
  0063c14d:	0f 28 4c 24 30                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x30]
  0063c152:	88 4c 24 13                                    	MOV byte ptr [ESP + 0x13],CL
  0063c156:	f3 0f 10 9c 24 a8 00 00 00                     	MOVSS XMM3,dword ptr [ESP + 0xa8]
  0063c15f:	0f 28 e8                                       	MOVAPS XMM5,XMM0
  0063c162:	f3 0f 10 d3                                    	MOVSS XMM2,XMM3
  0063c166:	0f c6 e8 55                                    	SHUFPS XMM5,XMM0,0x55
  0063c16a:	0f c6 d2 00                                    	SHUFPS XMM2,XMM2,0x0
  0063c16e:	0f 5c ea                                       	SUBPS XMM5,XMM2
  0063c171:	0f 29 6c 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM5
  0063c176:	d9 44 24 60                                    	FLD float ptr [ESP + 0x60]
  0063c17a:	d9 e1                                          	FABS
  0063c17c:	d9 c9                                          	FXCH
  0063c17e:	df f1                                          	FCOMIP ST0,ST1
  0063c180:	dd d8                                          	FSTP ST0
  0063c182:	76 2f                                          	JBE 0x0063c1b3
  0063c184:	0f 29 44 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM0
  0063c189:	f3 0f 10 44 24 60                              	MOVSS XMM0,dword ptr [ESP + 0x60]
  0063c18f:	f3 0f 11 44 24 3c                              	MOVSS dword ptr [ESP + 0x3c],XMM0
  0063c195:	f3 0f 11 44 24 38                              	MOVSS dword ptr [ESP + 0x38],XMM0
  0063c19b:	f3 0f 11 5c 24 34                              	MOVSS dword ptr [ESP + 0x34],XMM3
  0063c1a1:	f3 0f 11 44 24 30                              	MOVSS dword ptr [ESP + 0x30],XMM0
  0063c1a7:	0f 28 4c 24 30                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x30]
  0063c1ac:	c6 44 24 13 04                                 	MOV byte ptr [ESP + 0x13],0x4
  0063c1b1:	eb 08                                          	JMP 0x0063c1bb
  0063c1b3:	84 c9                                          	TEST CL,CL
  0063c1b5:	0f 84 27 02 00 00                              	JZ 0x0063c3e2
  0063c1bb:	0f 29 4c 24 30                                 	MOVAPS xmmword ptr [ESP + 0x30],XMM1
  0063c1c0:	f3 0f 10 44 24 30                              	MOVSS XMM0,dword ptr [ESP + 0x30]
  0063c1c6:	f3 0f 11 84 24 ac 00 00 00                     	MOVSS dword ptr [ESP + 0xac],XMM0
  0063c1cf:	0f 29 4c 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM1
  0063c1d4:	f3 0f 10 44 24 64                              	MOVSS XMM0,dword ptr [ESP + 0x64]
  0063c1da:	33 ff                                          	XOR EDI,EDI
  0063c1dc:	39 7e 10                                       	CMP dword ptr [ESI + 0x10],EDI
  0063c1df:	f3 0f 11 84 24 b0 00 00 00                     	MOVSS dword ptr [ESP + 0xb0],XMM0
  0063c1e8:	f3 0f 10 05 78 92 15 01                        	MOVSS XMM0,dword ptr [0x01159278]
  0063c1f0:	b3 01                                          	MOV BL,0x1
  0063c1f2:	88 5c 24 15                                    	MOV byte ptr [ESP + 0x15],BL
  0063c1f6:	c6 84 24 54 01 00 00 ff                        	MOV byte ptr [ESP + 0x154],0xff
  0063c1fe:	f3 0f 11 44 24 40                              	MOVSS dword ptr [ESP + 0x40],XMM0
  0063c204:	89 7c 24 18                                    	MOV dword ptr [ESP + 0x18],EDI
  0063c208:	0f 86 d4 01 00 00                              	JBE 0x0063c3e2
  0063c20e:	8b 55 08                                       	MOV EDX,dword ptr [EBP + 0x8]
  0063c211:	8b 42 10                                       	MOV EAX,dword ptr [EDX + 0x10]
  0063c214:	8b 8c 24 bc 00 00 00                           	MOV ECX,dword ptr [ESP + 0xbc]
  0063c21b:	8b 51 04                                       	MOV EDX,dword ptr [ECX + 0x4]
  0063c21e:	89 84 24 94 00 00 00                           	MOV dword ptr [ESP + 0x94],EAX
  0063c225:	89 54 24 1c                                    	MOV dword ptr [ESP + 0x1c],EDX
  0063c229:	8d a4 24 00 00 00 00                           	LEA ESP,[ESP]
  0063c230:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  0063c234:	8b 18                                          	MOV EBX,dword ptr [EAX]
  0063c236:	85 db                                          	TEST EBX,EBX
  0063c238:	0f 84 41 01 00 00                              	JZ 0x0063c37f
  0063c23e:	8a 43 58                                       	MOV AL,byte ptr [EBX + 0x58]
  0063c241:	d0 e8                                          	SHR AL,0x1
  0063c243:	24 01                                          	AND AL,0x1
  0063c245:	0f 84 34 01 00 00                              	JZ 0x0063c37f
  0063c24b:	f3 0f 10 43 18                                 	MOVSS XMM0,dword ptr [EBX + 0x18]
  0063c250:	f3 0f 11 84 24 a0 00 00 00                     	MOVSS dword ptr [ESP + 0xa0],XMM0
  0063c259:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  0063c25c:	f3 0f 10 43 14                                 	MOVSS XMM0,dword ptr [EBX + 0x14]
  0063c261:	33 c0                                          	XOR EAX,EAX
  0063c263:	0f 2f e0                                       	COMISS XMM4,XMM0
  0063c266:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  0063c26c:	76 07                                          	JBE 0x0063c275
  0063c26e:	b8 08 00 00 00                                 	MOV EAX,0x8
  0063c273:	eb 1a                                          	JMP 0x0063c28f
  0063c275:	8b 4c 24 20                                    	MOV ECX,dword ptr [ESP + 0x20]
  0063c279:	f3 0f 2a 91 74 01 00 00                        	CVTSI2SS XMM2,dword ptr [ECX + 0x174]
  0063c281:	f3 0f 5c d4                                    	SUBSS XMM2,XMM4
  0063c285:	0f 2f c2                                       	COMISS XMM0,XMM2
  0063c288:	76 05                                          	JBE 0x0063c28f
  0063c28a:	b8 02 00 00 00                                 	MOV EAX,0x2
  0063c28f:	0f 2f e1                                       	COMISS XMM4,XMM1
  0063c292:	76 05                                          	JBE 0x0063c299
  0063c294:	83 c8 01                                       	OR EAX,0x1
  0063c297:	eb 18                                          	JMP 0x0063c2b1
  0063c299:	8b 54 24 20                                    	MOV EDX,dword ptr [ESP + 0x20]
  0063c29d:	f3 0f 2a 82 78 01 00 00                        	CVTSI2SS XMM0,dword ptr [EDX + 0x178]
  0063c2a5:	f3 0f 5c c4                                    	SUBSS XMM0,XMM4
  0063c2a9:	0f 2f c8                                       	COMISS XMM1,XMM0
  0063c2ac:	76 03                                          	JBE 0x0063c2b1
  0063c2ae:	83 c8 04                                       	OR EAX,0x4
  0063c2b1:	83 f8 08                                       	CMP EAX,0x8
  0063c2b4:	74 13                                          	JZ 0x0063c2c9
  0063c2b6:	83 f8 01                                       	CMP EAX,0x1
  0063c2b9:	74 0e                                          	JZ 0x0063c2c9
  0063c2bb:	83 f8 02                                       	CMP EAX,0x2
  0063c2be:	74 09                                          	JZ 0x0063c2c9
  0063c2c0:	83 f8 04                                       	CMP EAX,0x4
  0063c2c3:	0f 85 b6 00 00 00                              	JNZ 0x0063c37f
  0063c2c9:	0f be 4c 24 13                                 	MOVSX ECX,byte ptr [ESP + 0x13]
  0063c2ce:	3b c1                                          	CMP EAX,ECX
  0063c2d0:	0f 85 a9 00 00 00                              	JNZ 0x0063c37f
  0063c2d6:	d9 84 24 a0 00 00 00                           	FLD float ptr [ESP + 0xa0]
  0063c2dd:	8b 54 24 20                                    	MOV EDX,dword ptr [ESP + 0x20]
  0063c2e1:	8b 4c 24 5c                                    	MOV ECX,dword ptr [ESP + 0x5c]
  0063c2e5:	83 ec 08                                       	SUB ESP,0x8
  0063c2e8:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  0063c2ec:	d9 44 24 30                                    	FLD float ptr [ESP + 0x30]
  0063c2f0:	d9 1c 24                                       	FSTP float ptr [ESP]
  0063c2f3:	50                                             	PUSH EAX
  0063c2f4:	52                                             	PUSH EDX
  0063c2f5:	e8 86 8b fe ff                                 	CALL 0x00624e80
  0063c2fa:	8b 75 08                                       	MOV ESI,dword ptr [EBP + 0x8]
  0063c2fd:	89 84 24 a4 00 00 00                           	MOV dword ptr [ESP + 0xa4],EAX
  0063c304:	8d 84 24 a4 00 00 00                           	LEA EAX,[ESP + 0xa4]
  0063c30b:	50                                             	PUSH EAX
  0063c30c:	8d 4c 24 4c                                    	LEA ECX,[ESP + 0x4c]
  0063c310:	81 c6 40 01 00 00                              	ADD ESI,0x140
  0063c316:	51                                             	PUSH ECX
  0063c317:	8b ce                                          	MOV ECX,ESI
  0063c319:	e8 92 f6 41 00                                 	CALL 0x00a5b9b0
  0063c31e:	8b 56 08                                       	MOV EDX,dword ptr [ESI + 0x8]
  0063c321:	8b 4e 04                                       	MOV ECX,dword ptr [ESI + 0x4]
  0063c324:	8b 44 24 48                                    	MOV EAX,dword ptr [ESP + 0x48]
  0063c328:	3b 04 91                                       	CMP EAX,dword ptr [ECX + EDX*0x4]
  0063c32b:	74 06                                          	JZ 0x0063c333
  0063c32d:	f6 40 04 01                                    	TEST byte ptr [EAX + 0x4],0x1
  0063c331:	75 44                                          	JNZ 0x0063c377
  0063c333:	f3 0f 10 4b 18                                 	MOVSS XMM1,dword ptr [EBX + 0x18]
  0063c338:	f3 0f 5c 4c 24 64                              	SUBSS XMM1,dword ptr [ESP + 0x64]
  0063c33e:	f3 0f 10 44 24 28                              	MOVSS XMM0,dword ptr [ESP + 0x28]
  0063c344:	f3 0f 5c 44 24 30                              	SUBSS XMM0,dword ptr [ESP + 0x30]
  0063c34a:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  0063c34d:	f3 0f 59 d1                                    	MULSS XMM2,XMM1
  0063c351:	f3 0f 10 4c 24 40                              	MOVSS XMM1,dword ptr [ESP + 0x40]
  0063c357:	f3 0f 59 c0                                    	MULSS XMM0,XMM0
  0063c35b:	f3 0f 58 c2                                    	ADDSS XMM0,XMM2
  0063c35f:	0f 2f c8                                       	COMISS XMM1,XMM0
  0063c362:	76 13                                          	JBE 0x0063c377
  0063c364:	8a 54 24 18                                    	MOV DL,byte ptr [ESP + 0x18]
  0063c368:	8b fb                                          	MOV EDI,EBX
  0063c36a:	88 94 24 54 01 00 00                           	MOV byte ptr [ESP + 0x154],DL
  0063c371:	f3 0f 11 44 24 40                              	MOVSS dword ptr [ESP + 0x40],XMM0
  0063c377:	f3 0f 10 25 c8 f8 06 01                        	MOVSS XMM4,dword ptr [0x0106f8c8]
  0063c37f:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  0063c383:	83 44 24 1c 04                                 	ADD dword ptr [ESP + 0x1c],0x4
  0063c388:	83 c0 01                                       	ADD EAX,0x1
  0063c38b:	3b 84 24 94 00 00 00                           	CMP EAX,dword ptr [ESP + 0x94]
  0063c392:	89 44 24 18                                    	MOV dword ptr [ESP + 0x18],EAX
  0063c396:	0f 82 94 fe ff ff                              	JC 0x0063c230
  0063c39c:	85 ff                                          	TEST EDI,EDI
  0063c39e:	74 3e                                          	JZ 0x0063c3de
  0063c3a0:	8b 45 0c                                       	MOV EAX,dword ptr [EBP + 0xc]
  0063c3a3:	d9 47 18                                       	FLD float ptr [EDI + 0x18]
  0063c3a6:	8b 4c 24 20                                    	MOV ECX,dword ptr [ESP + 0x20]
  0063c3aa:	50                                             	PUSH EAX
  0063c3ab:	6a 01                                          	PUSH 0x1
  0063c3ad:	83 ec 08                                       	SUB ESP,0x8
  0063c3b0:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  0063c3b4:	d9 47 14                                       	FLD float ptr [EDI + 0x14]
  0063c3b7:	d9 1c 24                                       	FSTP float ptr [ESP]
  0063c3ba:	57                                             	PUSH EDI
  0063c3bb:	51                                             	PUSH ECX
  0063c3bc:	8b 4c 24 74                                    	MOV ECX,dword ptr [ESP + 0x74]
  0063c3c0:	e8 1b e6 ff ff                                 	CALL 0x0063a9e0
  0063c3c5:	0f be 94 24 54 01 00 00                        	MOVSX EDX,byte ptr [ESP + 0x154]
  0063c3cd:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  0063c3d0:	89 50 14                                       	MOV dword ptr [EAX + 0x14],EDX
  0063c3d3:	b0 01                                          	MOV AL,0x1
  0063c3d5:	5f                                             	POP EDI
  0063c3d6:	5e                                             	POP ESI
  0063c3d7:	5b                                             	POP EBX
  0063c3d8:	8b e5                                          	MOV ESP,EBP
  0063c3da:	5d                                             	POP EBP
  0063c3db:	c2 08 00                                       	RET 0x8
  0063c3de:	8a 5c 24 15                                    	MOV BL,byte ptr [ESP + 0x15]
  0063c3e2:	33 c0                                          	XOR EAX,EAX
  0063c3e4:	84 db                                          	TEST BL,BL
  0063c3e6:	89 84 24 c0 00 00 00                           	MOV dword ptr [ESP + 0xc0],EAX
  0063c3ed:	89 84 24 c4 00 00 00                           	MOV dword ptr [ESP + 0xc4],EAX
  0063c3f4:	89 84 24 c8 00 00 00                           	MOV dword ptr [ESP + 0xc8],EAX
  0063c3fb:	c7 84 24 cc 00 00 00 28 dc fe 00               	MOV dword ptr [ESP + 0xcc],0xfedc28
  0063c406:	0f 85 43 01 00 00                              	JNZ 0x0063c54f
  0063c40c:	8b b4 24 b8 00 00 00                           	MOV ESI,dword ptr [ESP + 0xb8]
  0063c413:	8b 5c 24 20                                    	MOV EBX,dword ptr [ESP + 0x20]
  0063c417:	8b 7c 24 5c                                    	MOV EDI,dword ptr [ESP + 0x5c]
  0063c41b:	8d 8c 24 ac 00 00 00                           	LEA ECX,[ESP + 0xac]
  0063c422:	51                                             	PUSH ECX
  0063c423:	56                                             	PUSH ESI
  0063c424:	53                                             	PUSH EBX
  0063c425:	8b cf                                          	MOV ECX,EDI
  0063c427:	e8 f4 00 ff ff                                 	CALL 0x0062c520
  0063c42c:	84 c0                                          	TEST AL,AL
  0063c42e:	75 1c                                          	JNZ 0x0063c44c
  0063c430:	8d 94 24 ac 00 00 00                           	LEA EDX,[ESP + 0xac]
  0063c437:	52                                             	PUSH EDX
  0063c438:	83 c6 01                                       	ADD ESI,0x1
  0063c43b:	56                                             	PUSH ESI
  0063c43c:	53                                             	PUSH EBX
  0063c43d:	8b cf                                          	MOV ECX,EDI
  0063c43f:	e8 dc 00 ff ff                                 	CALL 0x0062c520
  0063c444:	84 c0                                          	TEST AL,AL
  0063c446:	0f 84 fa 08 00 00                              	JZ 0x0063cd46
  0063c44c:	33 ff                                          	XOR EDI,EDI
  0063c44e:	8d 44 24 48                                    	LEA EAX,[ESP + 0x48]
  0063c452:	be 82 d8 b2 00                                 	MOV ESI,0xb2d882
  0063c457:	50                                             	PUSH EAX
  0063c458:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  0063c45c:	89 7c 24 34                                    	MOV dword ptr [ESP + 0x34],EDI
  0063c460:	89 7c 24 38                                    	MOV dword ptr [ESP + 0x38],EDI
  0063c464:	89 7c 24 3c                                    	MOV dword ptr [ESP + 0x3c],EDI
  0063c468:	c7 44 24 40 0c dc fe 00                        	MOV dword ptr [ESP + 0x40],0xfedc0c
  0063c470:	c7 44 24 4c ca 18 b8 fe                        	MOV dword ptr [ESP + 0x4c],0xfeb818ca
  0063c478:	c7 44 24 50 fe 4d 7a 4d                        	MOV dword ptr [ESP + 0x50],0x4d7a4dfe
  0063c480:	89 74 24 54                                    	MOV dword ptr [ESP + 0x54],ESI
  0063c484:	89 7c 24 58                                    	MOV dword ptr [ESP + 0x58],EDI
  0063c488:	e8 a3 b5 f8 ff                                 	CALL 0x005c7a30
  0063c48d:	8d 4c 24 48                                    	LEA ECX,[ESP + 0x48]
  0063c491:	51                                             	PUSH ECX
  0063c492:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  0063c496:	c7 44 24 4c 67 4c ed fa                        	MOV dword ptr [ESP + 0x4c],0xfaed4c67
  0063c49e:	c7 44 24 50 3e 6f a6 be                        	MOV dword ptr [ESP + 0x50],0xbea66f3e
  0063c4a6:	89 74 24 54                                    	MOV dword ptr [ESP + 0x54],ESI
  0063c4aa:	89 7c 24 58                                    	MOV dword ptr [ESP + 0x58],EDI
  0063c4ae:	e8 7d b5 f8 ff                                 	CALL 0x005c7a30
  0063c4b3:	8d 54 24 48                                    	LEA EDX,[ESP + 0x48]
  0063c4b7:	52                                             	PUSH EDX
  0063c4b8:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  0063c4bc:	c7 44 24 4c f7 ad 27 41                        	MOV dword ptr [ESP + 0x4c],0x4127adf7
  0063c4c4:	c7 44 24 50 e1 35 f7 e3                        	MOV dword ptr [ESP + 0x50],0xe3f735e1
  0063c4cc:	89 74 24 54                                    	MOV dword ptr [ESP + 0x54],ESI
  0063c4d0:	89 7c 24 58                                    	MOV dword ptr [ESP + 0x58],EDI
  0063c4d4:	e8 57 b5 f8 ff                                 	CALL 0x005c7a30
  0063c4d9:	8d 44 24 48                                    	LEA EAX,[ESP + 0x48]
  0063c4dd:	50                                             	PUSH EAX
  0063c4de:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  0063c4e2:	c7 44 24 4c 0d 74 86 7c                        	MOV dword ptr [ESP + 0x4c],0x7c86740d
  0063c4ea:	c7 44 24 50 e6 61 76 2c                        	MOV dword ptr [ESP + 0x50],0x2c7661e6
  0063c4f2:	89 74 24 54                                    	MOV dword ptr [ESP + 0x54],ESI
  0063c4f6:	89 7c 24 58                                    	MOV dword ptr [ESP + 0x58],EDI
  0063c4fa:	e8 31 b5 f8 ff                                 	CALL 0x005c7a30
  0063c4ff:	8d 4c 24 48                                    	LEA ECX,[ESP + 0x48]
  0063c503:	51                                             	PUSH ECX
  0063c504:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  0063c508:	c7 44 24 4c ce c2 46 cb                        	MOV dword ptr [ESP + 0x4c],0xcb46c2ce
  0063c510:	c7 44 24 50 3c 37 d3 ce                        	MOV dword ptr [ESP + 0x50],0xced3373c
  0063c518:	89 74 24 54                                    	MOV dword ptr [ESP + 0x54],ESI
  0063c51c:	89 7c 24 58                                    	MOV dword ptr [ESP + 0x58],EDI
  0063c520:	e8 0b b5 f8 ff                                 	CALL 0x005c7a30
  0063c525:	8b 8c 24 98 00 00 00                           	MOV ECX,dword ptr [ESP + 0x98]
  0063c52c:	8d 94 24 c0 00 00 00                           	LEA EDX,[ESP + 0xc0]
  0063c533:	52                                             	PUSH EDX
  0063c534:	8d 44 24 34                                    	LEA EAX,[ESP + 0x34]
  0063c538:	50                                             	PUSH EAX
  0063c539:	e8 c2 0d 4b 00                                 	CALL 0x00aed300
  0063c53e:	8b 44 24 30                                    	MOV EAX,dword ptr [ESP + 0x30]
  0063c542:	3b c7                                          	CMP EAX,EDI
  0063c544:	74 09                                          	JZ 0x0063c54f
  0063c546:	50                                             	PUSH EAX
  0063c547:	e8 94 7f ea ff                                 	CALL 0x004e44e0
  0063c54c:	83 c4 04                                       	ADD ESP,0x4
  0063c54f:	f3 0f 10 84 24 ac 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0xac]
  0063c558:	8d 4c 24 70                                    	LEA ECX,[ESP + 0x70]
  0063c55c:	f3 0f 11 44 24 74                              	MOVSS dword ptr [ESP + 0x74],XMM0
  0063c562:	f3 0f 10 05 78 92 15 01                        	MOVSS XMM0,dword ptr [0x01159278]
  0063c56a:	51                                             	PUSH ECX
  0063c56b:	33 f6                                          	XOR ESI,ESI
  0063c56d:	8d 8c 24 dc 00 00 00                           	LEA ECX,[ESP + 0xdc]
  0063c574:	c6 44 24 74 08                                 	MOV byte ptr [ESP + 0x74],0x8
  0063c579:	89 74 24 7c                                    	MOV dword ptr [ESP + 0x7c],ESI
  0063c57d:	c6 84 24 80 00 00 00 ff                        	MOV byte ptr [ESP + 0x80],0xff
  0063c585:	f3 0f 11 84 24 84 00 00 00                     	MOVSS dword ptr [ESP + 0x84],XMM0
  0063c58e:	c6 84 24 88 00 00 00 ff                        	MOV byte ptr [ESP + 0x88],0xff
  0063c596:	c6 84 24 89 00 00 00 ff                        	MOV byte ptr [ESP + 0x89],0xff
  0063c59e:	c6 84 24 8a 00 00 00 00                        	MOV byte ptr [ESP + 0x8a],0x0
  0063c5a6:	e8 95 dc fe ff                                 	CALL 0x0062a240
  0063c5ab:	f3 0f 10 84 24 9c 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0x9c]
  0063c5b4:	f3 0f 5c 84 24 ac 00 00 00                     	SUBSS XMM0,dword ptr [ESP + 0xac]
  0063c5bd:	8d 54 24 70                                    	LEA EDX,[ESP + 0x70]
  0063c5c1:	f3 0f 11 44 24 74                              	MOVSS dword ptr [ESP + 0x74],XMM0
  0063c5c7:	f3 0f 10 05 78 92 15 01                        	MOVSS XMM0,dword ptr [0x01159278]
  0063c5cf:	52                                             	PUSH EDX
  0063c5d0:	8d 8c 24 dc 00 00 00                           	LEA ECX,[ESP + 0xdc]
  0063c5d7:	c6 44 24 74 02                                 	MOV byte ptr [ESP + 0x74],0x2
  0063c5dc:	89 74 24 7c                                    	MOV dword ptr [ESP + 0x7c],ESI
  0063c5e0:	c6 84 24 80 00 00 00 ff                        	MOV byte ptr [ESP + 0x80],0xff
  0063c5e8:	f3 0f 11 84 24 84 00 00 00                     	MOVSS dword ptr [ESP + 0x84],XMM0
  0063c5f1:	c6 84 24 88 00 00 00 ff                        	MOV byte ptr [ESP + 0x88],0xff
  0063c5f9:	c6 84 24 89 00 00 00 ff                        	MOV byte ptr [ESP + 0x89],0xff
  0063c601:	c6 84 24 8a 00 00 00 00                        	MOV byte ptr [ESP + 0x8a],0x0
  0063c609:	e8 32 dc fe ff                                 	CALL 0x0062a240
  0063c60e:	f3 0f 10 84 24 b0 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0xb0]
  0063c617:	8d 44 24 70                                    	LEA EAX,[ESP + 0x70]
  0063c61b:	f3 0f 11 44 24 74                              	MOVSS dword ptr [ESP + 0x74],XMM0
  0063c621:	f3 0f 10 05 78 92 15 01                        	MOVSS XMM0,dword ptr [0x01159278]
  0063c629:	50                                             	PUSH EAX
  0063c62a:	8d 8c 24 dc 00 00 00                           	LEA ECX,[ESP + 0xdc]
  0063c631:	c6 44 24 74 01                                 	MOV byte ptr [ESP + 0x74],0x1
  0063c636:	89 74 24 7c                                    	MOV dword ptr [ESP + 0x7c],ESI
  0063c63a:	c6 84 24 80 00 00 00 ff                        	MOV byte ptr [ESP + 0x80],0xff
  0063c642:	f3 0f 11 84 24 84 00 00 00                     	MOVSS dword ptr [ESP + 0x84],XMM0
  0063c64b:	c6 84 24 88 00 00 00 ff                        	MOV byte ptr [ESP + 0x88],0xff
  0063c653:	c6 84 24 89 00 00 00 ff                        	MOV byte ptr [ESP + 0x89],0xff
  0063c65b:	c6 84 24 8a 00 00 00 00                        	MOV byte ptr [ESP + 0x8a],0x0
  0063c663:	e8 d8 db fe ff                                 	CALL 0x0062a240
  0063c668:	f3 0f 10 84 24 a8 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0xa8]
  0063c671:	f3 0f 5c 84 24 b0 00 00 00                     	SUBSS XMM0,dword ptr [ESP + 0xb0]
  0063c67a:	8d 4c 24 70                                    	LEA ECX,[ESP + 0x70]
  0063c67e:	f3 0f 11 44 24 74                              	MOVSS dword ptr [ESP + 0x74],XMM0
  0063c684:	f3 0f 10 05 78 92 15 01                        	MOVSS XMM0,dword ptr [0x01159278]
  0063c68c:	51                                             	PUSH ECX
  0063c68d:	8d 8c 24 dc 00 00 00                           	LEA ECX,[ESP + 0xdc]
  0063c694:	c6 44 24 74 04                                 	MOV byte ptr [ESP + 0x74],0x4
  0063c699:	89 74 24 7c                                    	MOV dword ptr [ESP + 0x7c],ESI
  0063c69d:	c6 84 24 80 00 00 00 ff                        	MOV byte ptr [ESP + 0x80],0xff
  0063c6a5:	f3 0f 11 84 24 84 00 00 00                     	MOVSS dword ptr [ESP + 0x84],XMM0
  0063c6ae:	c6 84 24 88 00 00 00 ff                        	MOV byte ptr [ESP + 0x88],0xff
  0063c6b6:	c6 84 24 89 00 00 00 ff                        	MOV byte ptr [ESP + 0x89],0xff
  0063c6be:	c6 84 24 8a 00 00 00 00                        	MOV byte ptr [ESP + 0x8a],0x0
  0063c6c6:	e8 75 db fe ff                                 	CALL 0x0062a240
  0063c6cb:	8b 94 24 dc 00 00 00                           	MOV EDX,dword ptr [ESP + 0xdc]
  0063c6d2:	8b 84 24 d8 00 00 00                           	MOV EAX,dword ptr [ESP + 0xd8]
  0063c6d9:	52                                             	PUSH EDX
  0063c6da:	50                                             	PUSH EAX
  0063c6db:	e8 50 e0 fe ff                                 	CALL 0x0062a730
  0063c6e0:	f3 0f 10 05 78 92 15 01                        	MOVSS XMM0,dword ptr [0x01159278]
  0063c6e8:	83 c4 08                                       	ADD ESP,0x8
  0063c6eb:	c7 84 24 a0 00 00 00 ff ff ff ff               	MOV dword ptr [ESP + 0xa0],0xffffffff
  0063c6f6:	f3 0f 11 84 24 a4 00 00 00                     	MOVSS dword ptr [ESP + 0xa4],XMM0
  0063c6ff:	89 74 24 18                                    	MOV dword ptr [ESP + 0x18],ESI
  0063c703:	89 74 24 44                                    	MOV dword ptr [ESP + 0x44],ESI
  0063c707:	eb 07                                          	JMP 0x0063c710
  0063c709:	8d a4 24 00 00 00 00                           	.byte 0x8d,0xa4,0x24,0x00,0x00,0x00,0x00 # NONOWNED alignment bytes
  0063c710:	8b 4c 24 44                                    	MOV ECX,dword ptr [ESP + 0x44]
  0063c714:	8b 94 24 d8 00 00 00                           	MOV EDX,dword ptr [ESP + 0xd8]
  0063c71b:	0f be 04 11                                    	MOVSX EAX,byte ptr [ECX + EDX*0x1]
  0063c71f:	f3 0f 10 15 f8 92 fe 00                        	MOVSS XMM2,dword ptr [0x00fe92f8]
  0063c727:	f3 0f 10 8c 24 ac 00 00 00                     	MOVSS XMM1,dword ptr [ESP + 0xac]
  0063c730:	f3 0f 10 84 24 b0 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0xb0]
  0063c739:	83 c0 ff                                       	ADD EAX,-0x1
  0063c73c:	83 f8 07                                       	CMP EAX,0x7
  0063c73f:	77 33                                          	JA 0x0063c774
  0063c741:	ff 24 85 68 cd 63 00                           	JMP dword ptr [EAX*0x4 + 0x63cd68]
  0063c748:	0f 28 ca                                       	MOVAPS XMM1,XMM2
  0063c74b:	eb 27                                          	JMP 0x0063c774
  0063c74d:	0f 28 c2                                       	MOVAPS XMM0,XMM2
  0063c750:	eb 22                                          	JMP 0x0063c774
  0063c752:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  0063c756:	f3 0f 2a 88 74 01 00 00                        	CVTSI2SS XMM1,dword ptr [EAX + 0x174]
  0063c75e:	f3 0f 5c ca                                    	SUBSS XMM1,XMM2
  0063c762:	eb 10                                          	JMP 0x0063c774
  0063c764:	8b 4c 24 20                                    	MOV ECX,dword ptr [ESP + 0x20]
  0063c768:	f3 0f 2a 81 78 01 00 00                        	CVTSI2SS XMM0,dword ptr [ECX + 0x178]
  0063c770:	f3 0f 5c c2                                    	SUBSS XMM0,XMM2
  0063c774:	f3 0f 2c c1                                    	CVTTSS2SI EAX,XMM1
  0063c778:	32 db                                          	XOR BL,BL
  0063c77a:	88 44 24 16                                    	MOV byte ptr [ESP + 0x16],AL
  0063c77e:	88 44 24 40                                    	MOV byte ptr [ESP + 0x40],AL
  0063c782:	83 c8 ff                                       	OR EAX,0xffffffff
  0063c785:	f3 0f 2c c8                                    	CVTTSS2SI ECX,XMM0
  0063c789:	88 4c 24 13                                    	MOV byte ptr [ESP + 0x13],CL
  0063c78d:	c6 44 24 14 01                                 	MOV byte ptr [ESP + 0x14],0x1
  0063c792:	88 4c 24 1c                                    	MOV byte ptr [ESP + 0x1c],CL
  0063c796:	c7 44 24 24 00 00 00 00                        	MOV dword ptr [ESP + 0x24],0x0
  0063c79e:	88 5c 24 15                                    	MOV byte ptr [ESP + 0x15],BL
  0063c7a2:	88 5c 24 17                                    	MOV byte ptr [ESP + 0x17],BL
  0063c7a6:	89 84 24 d0 00 00 00                           	MOV dword ptr [ESP + 0xd0],EAX
  0063c7ad:	89 44 24 60                                    	MOV dword ptr [ESP + 0x60],EAX
  0063c7b1:	89 44 24 64                                    	MOV dword ptr [ESP + 0x64],EAX
  0063c7b5:	89 44 24 68                                    	MOV dword ptr [ESP + 0x68],EAX
  0063c7b9:	89 44 24 6c                                    	MOV dword ptr [ESP + 0x6c],EAX
  0063c7bd:	8d 49 00                                       	LEA ECX,[ECX]
  0063c7c0:	8b 7c 24 44                                    	MOV EDI,dword ptr [ESP + 0x44]
  0063c7c4:	8b b4 24 d8 00 00 00                           	MOV ESI,dword ptr [ESP + 0xd8]
  0063c7cb:	0f be 04 37                                    	MOVSX EAX,byte ptr [EDI + ESI*0x1]
  0063c7cf:	83 c0 ff                                       	ADD EAX,-0x1
  0063c7d2:	83 f8 07                                       	CMP EAX,0x7
  0063c7d5:	0f 87 88 00 00 00                              	JA 0x0063c863
  0063c7db:	0f b6 90 94 cd 63 00                           	MOVZX EDX,byte ptr [EAX + 0x63cd94]
  0063c7e2:	ff 24 95 88 cd 63 00                           	JMP dword ptr [EDX*0x4 + 0x63cd88]
  0063c7e9:	8a 44 24 14                                    	MOV AL,byte ptr [ESP + 0x14]
  0063c7ed:	8a 4c 24 16                                    	MOV CL,byte ptr [ESP + 0x16]
  0063c7f1:	f6 eb                                          	IMUL BL
  0063c7f3:	02 44 24 13                                    	ADD AL,byte ptr [ESP + 0x13]
  0063c7f7:	88 4c 24 40                                    	MOV byte ptr [ESP + 0x40],CL
  0063c7fb:	3c 01                                          	CMP AL,0x1
  0063c7fd:	88 44 24 1c                                    	MOV byte ptr [ESP + 0x1c],AL
  0063c801:	0f 8c b6 00 00 00                              	JL 0x0063c8bd
  0063c807:	f3 0f 10 8c 24 a8 00 00 00                     	MOVSS XMM1,dword ptr [ESP + 0xa8]
  0063c810:	f3 0f 5c 0d f8 98 f9 00                        	SUBSS XMM1,dword ptr [0x00f998f8]
  0063c818:	0f be c0                                       	MOVSX EAX,AL
  0063c81b:	f3 0f 2a c0                                    	CVTSI2SS XMM0,EAX
  0063c81f:	0f 2f c8                                       	COMISS XMM1,XMM0
  0063c822:	77 3f                                          	JA 0x0063c863
  0063c824:	e9 94 00 00 00                                 	JMP 0x0063c8bd
  0063c829:	8a 44 24 14                                    	MOV AL,byte ptr [ESP + 0x14]
  0063c82d:	8a 54 24 13                                    	MOV DL,byte ptr [ESP + 0x13]
  0063c831:	f6 eb                                          	IMUL BL
  0063c833:	8a c8                                          	MOV CL,AL
  0063c835:	02 4c 24 16                                    	ADD CL,byte ptr [ESP + 0x16]
  0063c839:	88 54 24 1c                                    	MOV byte ptr [ESP + 0x1c],DL
  0063c83d:	80 f9 01                                       	CMP CL,0x1
  0063c840:	88 4c 24 40                                    	MOV byte ptr [ESP + 0x40],CL
  0063c844:	7c 77                                          	JL 0x0063c8bd
  0063c846:	f3 0f 10 8c 24 9c 00 00 00                     	MOVSS XMM1,dword ptr [ESP + 0x9c]
  0063c84f:	f3 0f 5c 0d f8 98 f9 00                        	SUBSS XMM1,dword ptr [0x00f998f8]
  0063c857:	0f be c1                                       	MOVSX EAX,CL
  0063c85a:	f3 0f 2a c0                                    	CVTSI2SS XMM0,EAX
  0063c85e:	0f 2f c8                                       	COMISS XMM1,XMM0
  0063c861:	76 5a                                          	JBE 0x0063c8bd
  0063c863:	8d 8c 24 d0 00 00 00                           	LEA ECX,[ESP + 0xd0]
  0063c86a:	51                                             	PUSH ECX
  0063c86b:	0f be 0c 37                                    	MOVSX ECX,byte ptr [EDI + ESI*0x1]
  0063c86f:	8d 54 24 64                                    	LEA EDX,[ESP + 0x64]
  0063c873:	52                                             	PUSH EDX
  0063c874:	8b 54 24 24                                    	MOV EDX,dword ptr [ESP + 0x24]
  0063c878:	8d 84 24 c8 00 00 00                           	LEA EAX,[ESP + 0xc8]
  0063c87f:	50                                             	PUSH EAX
  0063c880:	8b 44 24 4c                                    	MOV EAX,dword ptr [ESP + 0x4c]
  0063c884:	51                                             	PUSH ECX
  0063c885:	8b 4d 08                                       	MOV ECX,dword ptr [EBP + 0x8]
  0063c888:	52                                             	PUSH EDX
  0063c889:	8b 54 24 34                                    	MOV EDX,dword ptr [ESP + 0x34]
  0063c88d:	50                                             	PUSH EAX
  0063c88e:	51                                             	PUSH ECX
  0063c88f:	8b 4c 24 78                                    	MOV ECX,dword ptr [ESP + 0x78]
  0063c893:	52                                             	PUSH EDX
  0063c894:	e8 47 cd fe ff                                 	CALL 0x006295e0
  0063c899:	84 c0                                          	TEST AL,AL
  0063c89b:	74 1c                                          	JZ 0x0063c8b9
  0063c89d:	83 7c 24 24 00                                 	CMP dword ptr [ESP + 0x24],0x0
  0063c8a2:	75 0a                                          	JNZ 0x0063c8ae
  0063c8a4:	8a 44 24 14                                    	MOV AL,byte ptr [ESP + 0x14]
  0063c8a8:	f6 eb                                          	IMUL BL
  0063c8aa:	88 44 24 15                                    	MOV byte ptr [ESP + 0x15],AL
  0063c8ae:	83 44 24 24 01                                 	ADD dword ptr [ESP + 0x24],0x1
  0063c8b3:	8a 4c 24 40                                    	MOV CL,byte ptr [ESP + 0x40]
  0063c8b7:	eb 30                                          	JMP 0x0063c8e9
  0063c8b9:	8a 4c 24 40                                    	MOV CL,byte ptr [ESP + 0x40]
  0063c8bd:	8b 54 24 24                                    	MOV EDX,dword ptr [ESP + 0x24]
  0063c8c1:	85 d2                                          	TEST EDX,EDX
  0063c8c3:	76 24                                          	JBE 0x0063c8e9
  0063c8c5:	80 7c 24 15 00                                 	CMP byte ptr [ESP + 0x15],0x0
  0063c8ca:	0f 85 9c 00 00 00                              	JNZ 0x0063c96c
  0063c8d0:	80 7c 24 14 01                                 	CMP byte ptr [ESP + 0x14],0x1
  0063c8d5:	0f 85 83 00 00 00                              	JNZ 0x0063c95e
  0063c8db:	80 eb 01                                       	SUB BL,0x1
  0063c8de:	88 5c 24 17                                    	MOV byte ptr [ESP + 0x17],BL
  0063c8e2:	c6 44 24 14 ff                                 	MOV byte ptr [ESP + 0x14],0xff
  0063c8e7:	32 db                                          	XOR BL,BL
  0063c8e9:	83 7c 24 24 00                                 	CMP dword ptr [ESP + 0x24],0x0
  0063c8ee:	75 1f                                          	JNZ 0x0063c90f
  0063c8f0:	84 db                                          	TEST BL,BL
  0063c8f2:	7e 11                                          	JLE 0x0063c905
  0063c8f4:	80 7c 24 14 00                                 	CMP byte ptr [ESP + 0x14],0x0
  0063c8f9:	7e 0a                                          	JLE 0x0063c905
  0063c8fb:	c6 44 24 14 ff                                 	MOV byte ptr [ESP + 0x14],0xff
  0063c900:	e9 bf fe ff ff                                 	JMP 0x0063c7c4
  0063c905:	c6 44 24 14 01                                 	MOV byte ptr [ESP + 0x14],0x1
  0063c90a:	80 c3 01                                       	ADD BL,0x1
  0063c90d:	eb 0e                                          	JMP 0x0063c91d
  0063c90f:	80 c3 01                                       	ADD BL,0x1
  0063c912:	80 7c 24 14 00                                 	CMP byte ptr [ESP + 0x14],0x0
  0063c917:	0f 8e a3 fe ff ff                              	JLE 0x0063c7c0
  0063c91d:	0f be 44 24 16                                 	MOVSX EAX,byte ptr [ESP + 0x16]
  0063c922:	0f be f3                                       	MOVSX ESI,BL
  0063c925:	8d 14 30                                       	LEA EDX,[EAX + ESI*0x1]
  0063c928:	f3 0f 2a c2                                    	CVTSI2SS XMM0,EDX
  0063c92c:	0f 2f 84 24 9c 00 00 00                        	COMISS XMM0,dword ptr [ESP + 0x9c]
  0063c934:	72 04                                          	JC 0x0063c93a
  0063c936:	2b c6                                          	SUB EAX,ESI
  0063c938:	78 3e                                          	JS 0x0063c978
  0063c93a:	0f be 44 24 13                                 	MOVSX EAX,byte ptr [ESP + 0x13]
  0063c93f:	8d 14 30                                       	LEA EDX,[EAX + ESI*0x1]
  0063c942:	f3 0f 2a c2                                    	CVTSI2SS XMM0,EDX
  0063c946:	0f 2f 84 24 a8 00 00 00                        	COMISS XMM0,dword ptr [ESP + 0xa8]
  0063c94e:	0f 82 70 fe ff ff                              	JC 0x0063c7c4
  0063c954:	2b c6                                          	SUB EAX,ESI
  0063c956:	0f 89 68 fe ff ff                              	JNS 0x0063c7c4
  0063c95c:	eb 1a                                          	JMP 0x0063c978
  0063c95e:	8a 44 24 17                                    	MOV AL,byte ptr [ESP + 0x17]
  0063c962:	2a c2                                          	SUB AL,DL
  0063c964:	04 01                                          	ADD AL,0x1
  0063c966:	88 44 24 15                                    	MOV byte ptr [ESP + 0x15],AL
  0063c96a:	eb 0c                                          	JMP 0x0063c978
  0063c96c:	8a c3                                          	MOV AL,BL
  0063c96e:	2c 01                                          	SUB AL,0x1
  0063c970:	f6 6c 24 14                                    	IMUL byte ptr [ESP + 0x14]
  0063c974:	88 44 24 17                                    	MOV byte ptr [ESP + 0x17],AL
  0063c978:	8b 54 24 18                                    	MOV EDX,dword ptr [ESP + 0x18]
  0063c97c:	db 44 24 18                                    	FILD dword ptr [ESP + 0x18]
  0063c980:	85 d2                                          	TEST EDX,EDX
  0063c982:	8b 84 24 d8 00 00 00                           	MOV EAX,dword ptr [ESP + 0xd8]
  0063c989:	c7 44 07 08 00 00 00 00                        	MOV dword ptr [EDI + EAX*0x1 + 0x8],0x0
  0063c991:	7d 06                                          	JGE 0x0063c999
  0063c993:	d8 05 48 99 f9 00                              	FADD float ptr [0x00f99948]
  0063c999:	83 7c 24 24 00                                 	CMP dword ptr [ESP + 0x24],0x0
  0063c99e:	d8 0d c8 2b 06 01                              	FMUL float ptr [0x01062bc8]
  0063c9a4:	d9 5c 24 28                                    	FSTP float ptr [ESP + 0x28]
  0063c9a8:	75 26                                          	JNZ 0x0063c9d0
  0063c9aa:	f3 0f 10 44 24 28                              	MOVSS XMM0,dword ptr [ESP + 0x28]
  0063c9b0:	8a 44 24 16                                    	MOV AL,byte ptr [ESP + 0x16]
  0063c9b4:	8a 4c 24 13                                    	MOV CL,byte ptr [ESP + 0x13]
  0063c9b8:	f3 0f 58 05 f4 98 f9 00                        	ADDSS XMM0,dword ptr [0x00f998f4]
  0063c9c0:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  0063c9c6:	88 44 24 2c                                    	MOV byte ptr [ESP + 0x2c],AL
  0063c9ca:	88 4c 24 2d                                    	MOV byte ptr [ESP + 0x2d],CL
  0063c9ce:	eb 54                                          	JMP 0x0063ca24
  0063c9d0:	0f be 54 24 15                                 	MOVSX EDX,byte ptr [ESP + 0x15]
  0063c9d5:	0f be 44 24 17                                 	MOVSX EAX,byte ptr [ESP + 0x17]
  0063c9da:	03 c2                                          	ADD EAX,EDX
  0063c9dc:	99                                             	CDQ
  0063c9dd:	2b c2                                          	SUB EAX,EDX
  0063c9df:	8b 94 24 d8 00 00 00                           	MOV EDX,dword ptr [ESP + 0xd8]
  0063c9e6:	0f be 14 17                                    	MOVSX EDX,byte ptr [EDI + EDX*0x1]
  0063c9ea:	83 c2 ff                                       	ADD EDX,-0x1
  0063c9ed:	d1 f8                                          	SAR EAX,0x1
  0063c9ef:	83 fa 07                                       	CMP EDX,0x7
  0063c9f2:	77 24                                          	JA 0x0063ca18
  0063c9f4:	0f b6 92 a8 cd 63 00                           	MOVZX EDX,byte ptr [EDX + 0x63cda8]
  0063c9fb:	ff 24 95 9c cd 63 00                           	JMP dword ptr [EDX*0x4 + 0x63cd9c]
  0063ca02:	8a 4c 24 16                                    	MOV CL,byte ptr [ESP + 0x16]
  0063ca06:	02 44 24 13                                    	ADD AL,byte ptr [ESP + 0x13]
  0063ca0a:	eb 10                                          	JMP 0x0063ca1c
  0063ca0c:	02 44 24 16                                    	ADD AL,byte ptr [ESP + 0x16]
  0063ca10:	8a c8                                          	MOV CL,AL
  0063ca12:	8a 44 24 13                                    	MOV AL,byte ptr [ESP + 0x13]
  0063ca16:	eb 04                                          	JMP 0x0063ca1c
  0063ca18:	8a 44 24 1c                                    	MOV AL,byte ptr [ESP + 0x1c]
  0063ca1c:	88 4c 24 2c                                    	MOV byte ptr [ESP + 0x2c],CL
  0063ca20:	88 44 24 2d                                    	MOV byte ptr [ESP + 0x2d],AL
  0063ca24:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  0063ca27:	83 78 10 00                                    	CMP dword ptr [EAX + 0x10],0x0
  0063ca2b:	f3 0f 10 05 78 92 15 01                        	MOVSS XMM0,dword ptr [0x01159278]
  0063ca33:	f3 0f 11 84 24 94 00 00 00                     	MOVSS dword ptr [ESP + 0x94],XMM0
  0063ca3c:	c7 44 24 24 00 00 00 00                        	MOV dword ptr [ESP + 0x24],0x0
  0063ca44:	0f 86 b2 01 00 00                              	JBE 0x0063cbfc
  0063ca4a:	8b f8                                          	MOV EDI,EAX
  0063ca4c:	8b 8c 24 bc 00 00 00                           	MOV ECX,dword ptr [ESP + 0xbc]
  0063ca53:	8b 51 04                                       	MOV EDX,dword ptr [ECX + 0x4]
  0063ca56:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  0063ca5a:	8b 1c 82                                       	MOV EBX,dword ptr [EDX + EAX*0x4]
  0063ca5d:	85 db                                          	TEST EBX,EBX
  0063ca5f:	0f 84 83 01 00 00                              	JZ 0x0063cbe8
  0063ca65:	8a 43 58                                       	MOV AL,byte ptr [EBX + 0x58]
  0063ca68:	d0 e8                                          	SHR AL,0x1
  0063ca6a:	24 01                                          	AND AL,0x1
  0063ca6c:	0f 84 76 01 00 00                              	JZ 0x0063cbe8
  0063ca72:	f3 0f 10 43 18                                 	MOVSS XMM0,dword ptr [EBX + 0x18]
  0063ca77:	f3 0f 10 15 c8 f8 06 01                        	MOVSS XMM2,dword ptr [0x0106f8c8]
  0063ca7f:	f3 0f 11 84 24 d4 00 00 00                     	MOVSS dword ptr [ESP + 0xd4],XMM0
  0063ca88:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  0063ca8b:	f3 0f 10 43 14                                 	MOVSS XMM0,dword ptr [EBX + 0x14]
  0063ca90:	33 c0                                          	XOR EAX,EAX
  0063ca92:	0f 2f d0                                       	COMISS XMM2,XMM0
  0063ca95:	f3 0f 11 84 24 98 00 00 00                     	MOVSS dword ptr [ESP + 0x98],XMM0
  0063ca9e:	76 07                                          	JBE 0x0063caa7
  0063caa0:	b8 08 00 00 00                                 	MOV EAX,0x8
  0063caa5:	eb 1a                                          	JMP 0x0063cac1
  0063caa7:	8b 4c 24 20                                    	MOV ECX,dword ptr [ESP + 0x20]
  0063caab:	f3 0f 2a 99 74 01 00 00                        	CVTSI2SS XMM3,dword ptr [ECX + 0x174]
  0063cab3:	f3 0f 5c da                                    	SUBSS XMM3,XMM2
  0063cab7:	0f 2f c3                                       	COMISS XMM0,XMM3
  0063caba:	76 05                                          	JBE 0x0063cac1
  0063cabc:	b8 02 00 00 00                                 	MOV EAX,0x2
  0063cac1:	0f 2f d1                                       	COMISS XMM2,XMM1
  0063cac4:	76 05                                          	JBE 0x0063cacb
  0063cac6:	83 c8 01                                       	OR EAX,0x1
  0063cac9:	eb 18                                          	JMP 0x0063cae3
  0063cacb:	8b 54 24 20                                    	MOV EDX,dword ptr [ESP + 0x20]
  0063cacf:	f3 0f 2a 82 78 01 00 00                        	CVTSI2SS XMM0,dword ptr [EDX + 0x178]
  0063cad7:	f3 0f 5c c2                                    	SUBSS XMM0,XMM2
  0063cadb:	0f 2f c8                                       	COMISS XMM1,XMM0
  0063cade:	76 03                                          	JBE 0x0063cae3
  0063cae0:	83 c8 04                                       	OR EAX,0x4
  0063cae3:	83 f8 08                                       	CMP EAX,0x8
  0063cae6:	74 13                                          	JZ 0x0063cafb
  0063cae8:	83 f8 01                                       	CMP EAX,0x1
  0063caeb:	74 0e                                          	JZ 0x0063cafb
  0063caed:	83 f8 02                                       	CMP EAX,0x2
  0063caf0:	74 09                                          	JZ 0x0063cafb
  0063caf2:	83 f8 04                                       	CMP EAX,0x4
  0063caf5:	0f 85 ed 00 00 00                              	JNZ 0x0063cbe8
  0063cafb:	8b 4c 24 44                                    	MOV ECX,dword ptr [ESP + 0x44]
  0063caff:	8b 94 24 d8 00 00 00                           	MOV EDX,dword ptr [ESP + 0xd8]
  0063cb06:	0f be 0c 11                                    	MOVSX ECX,byte ptr [ECX + EDX*0x1]
  0063cb0a:	3b c1                                          	CMP EAX,ECX
  0063cb0c:	0f 85 d6 00 00 00                              	JNZ 0x0063cbe8
  0063cb12:	d9 84 24 d4 00 00 00                           	FLD float ptr [ESP + 0xd4]
  0063cb19:	8b 54 24 20                                    	MOV EDX,dword ptr [ESP + 0x20]
  0063cb1d:	8b 4c 24 5c                                    	MOV ECX,dword ptr [ESP + 0x5c]
  0063cb21:	83 ec 08                                       	SUB ESP,0x8
  0063cb24:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  0063cb28:	d9 84 24 a0 00 00 00                           	FLD float ptr [ESP + 0xa0]
  0063cb2f:	d9 1c 24                                       	FSTP float ptr [ESP]
  0063cb32:	50                                             	PUSH EAX
  0063cb33:	52                                             	PUSH EDX
  0063cb34:	e8 47 83 fe ff                                 	CALL 0x00624e80
  0063cb39:	89 44 24 48                                    	MOV dword ptr [ESP + 0x48],EAX
  0063cb3d:	8d 44 24 48                                    	LEA EAX,[ESP + 0x48]
  0063cb41:	50                                             	PUSH EAX
  0063cb42:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  0063cb46:	8d b7 40 01 00 00                              	LEA ESI,[EDI + 0x140]
  0063cb4c:	51                                             	PUSH ECX
  0063cb4d:	8b ce                                          	MOV ECX,ESI
  0063cb4f:	e8 5c ee 41 00                                 	CALL 0x00a5b9b0
  0063cb54:	8b 56 08                                       	MOV EDX,dword ptr [ESI + 0x8]
  0063cb57:	8b 4e 04                                       	MOV ECX,dword ptr [ESI + 0x4]
  0063cb5a:	8b 44 24 30                                    	MOV EAX,dword ptr [ESP + 0x30]
  0063cb5e:	3b 04 91                                       	CMP EAX,dword ptr [ECX + EDX*0x4]
  0063cb61:	74 06                                          	JZ 0x0063cb69
  0063cb63:	f6 40 04 01                                    	TEST byte ptr [EAX + 0x4],0x1
  0063cb67:	75 7f                                          	JNZ 0x0063cbe8
  0063cb69:	0f be 54 24 2d                                 	MOVSX EDX,byte ptr [ESP + 0x2d]
  0063cb6e:	0f be 44 24 2c                                 	MOVSX EAX,byte ptr [ESP + 0x2c]
  0063cb73:	f3 0f 10 4b 18                                 	MOVSS XMM1,dword ptr [EBX + 0x18]
  0063cb78:	f3 0f 2a c2                                    	CVTSI2SS XMM0,EDX
  0063cb7c:	f3 0f 5c c8                                    	SUBSS XMM1,XMM0
  0063cb80:	f3 0f 10 84 24 98 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0x98]
  0063cb89:	f3 0f 2a d0                                    	CVTSI2SS XMM2,EAX
  0063cb8d:	f3 0f 5c c2                                    	SUBSS XMM0,XMM2
  0063cb91:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  0063cb94:	f3 0f 59 c0                                    	MULSS XMM0,XMM0
  0063cb98:	f3 0f 59 d1                                    	MULSS XMM2,XMM1
  0063cb9c:	f3 0f 10 8c 24 94 00 00 00                     	MOVSS XMM1,dword ptr [ESP + 0x94]
  0063cba5:	f3 0f 58 c2                                    	ADDSS XMM0,XMM2
  0063cba9:	f3 0f 58 44 24 28                              	ADDSS XMM0,dword ptr [ESP + 0x28]
  0063cbaf:	0f 2f c8                                       	COMISS XMM1,XMM0
  0063cbb2:	76 34                                          	JBE 0x0063cbe8
  0063cbb4:	8b 8c 24 d8 00 00 00                           	MOV ECX,dword ptr [ESP + 0xd8]
  0063cbbb:	8b 44 24 44                                    	MOV EAX,dword ptr [ESP + 0x44]
  0063cbbf:	89 5c 08 08                                    	MOV dword ptr [EAX + ECX*0x1 + 0x8],EBX
  0063cbc3:	8b 94 24 d8 00 00 00                           	MOV EDX,dword ptr [ESP + 0xd8]
  0063cbca:	8a 4c 24 24                                    	MOV CL,byte ptr [ESP + 0x24]
  0063cbce:	88 4c 10 0c                                    	MOV byte ptr [EAX + EDX*0x1 + 0xc],CL
  0063cbd2:	8b 94 24 d8 00 00 00                           	MOV EDX,dword ptr [ESP + 0xd8]
  0063cbd9:	f3 0f 11 44 10 10                              	MOVSS dword ptr [EAX + EDX*0x1 + 0x10],XMM0
  0063cbdf:	f3 0f 11 84 24 94 00 00 00                     	MOVSS dword ptr [ESP + 0x94],XMM0
  0063cbe8:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  0063cbec:	83 c0 01                                       	ADD EAX,0x1
  0063cbef:	3b 47 10                                       	CMP EAX,dword ptr [EDI + 0x10]
  0063cbf2:	89 44 24 24                                    	MOV dword ptr [ESP + 0x24],EAX
  0063cbf6:	0f 82 50 fe ff ff                              	JC 0x0063ca4c
  0063cbfc:	8b 4c 24 44                                    	MOV ECX,dword ptr [ESP + 0x44]
  0063cc00:	8b 94 24 d8 00 00 00                           	MOV EDX,dword ptr [ESP + 0xd8]
  0063cc07:	83 7c 11 08 00                                 	CMP dword ptr [ECX + EDX*0x1 + 0x8],0x0
  0063cc0c:	8d 04 11                                       	LEA EAX,[ECX + EDX*0x1]
  0063cc0f:	74 43                                          	JZ 0x0063cc54
  0063cc11:	f3 0f 10 40 10                                 	MOVSS XMM0,dword ptr [EAX + 0x10]
  0063cc16:	f3 0f 10 8c 24 a4 00 00 00                     	MOVSS XMM1,dword ptr [ESP + 0xa4]
  0063cc1f:	0f 2f c8                                       	COMISS XMM1,XMM0
  0063cc22:	76 30                                          	JBE 0x0063cc54
  0063cc24:	66 8b 54 24 2c                                 	MOV DX,word ptr [ESP + 0x2c]
  0063cc29:	8b 74 24 18                                    	MOV ESI,dword ptr [ESP + 0x18]
  0063cc2d:	66 89 50 14                                    	MOV word ptr [EAX + 0x14],DX
  0063cc31:	8a 94 24 b8 00 00 00                           	MOV DL,byte ptr [ESP + 0xb8]
  0063cc38:	88 50 16                                       	MOV byte ptr [EAX + 0x16],DL
  0063cc3b:	8b 94 24 d8 00 00 00                           	MOV EDX,dword ptr [ESP + 0xd8]
  0063cc42:	f3 0f 11 84 24 a4 00 00 00                     	MOVSS dword ptr [ESP + 0xa4],XMM0
  0063cc4b:	89 b4 24 a0 00 00 00                           	MOV dword ptr [ESP + 0xa0],ESI
  0063cc52:	eb 07                                          	JMP 0x0063cc5b
  0063cc54:	8b b4 24 a0 00 00 00                           	MOV ESI,dword ptr [ESP + 0xa0]
  0063cc5b:	83 44 24 18 01                                 	ADD dword ptr [ESP + 0x18],0x1
  0063cc60:	83 c1 18                                       	ADD ECX,0x18
  0063cc63:	83 f9 60                                       	CMP ECX,0x60
  0063cc66:	89 4c 24 44                                    	MOV dword ptr [ESP + 0x44],ECX
  0063cc6a:	0f 82 a0 fa ff ff                              	JC 0x0063c710
  0063cc70:	85 f6                                          	TEST ESI,ESI
  0063cc72:	0f 8c ce 00 00 00                              	JL 0x0063cd46
  0063cc78:	0f 57 c0                                       	XORPS XMM0,XMM0
  0063cc7b:	8d 34 76                                       	LEA ESI,[ESI + ESI*0x2]
  0063cc7e:	03 f6                                          	ADD ESI,ESI
  0063cc80:	03 f6                                          	ADD ESI,ESI
  0063cc82:	03 f6                                          	ADD ESI,ESI
  0063cc84:	0f be 0c 16                                    	MOVSX ECX,byte ptr [ESI + EDX*0x1]
  0063cc88:	8b 44 16 08                                    	MOV EAX,dword ptr [ESI + EDX*0x1 + 0x8]
  0063cc8c:	83 c1 ff                                       	ADD ECX,-0x1
  0063cc8f:	83 f9 07                                       	CMP ECX,0x7
  0063cc92:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  0063cc98:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  0063cc9e:	77 4e                                          	JA 0x0063ccee
  0063cca0:	0f b6 89 bc cd 63 00                           	MOVZX ECX,byte ptr [ECX + 0x63cdbc]
  0063cca7:	ff 24 8d b0 cd 63 00                           	JMP dword ptr [ECX*0x4 + 0x63cdb0]
  0063ccae:	0f be 54 16 15                                 	MOVSX EDX,byte ptr [ESI + EDX*0x1 + 0x15]
  0063ccb3:	f3 0f 10 40 14                                 	MOVSS XMM0,dword ptr [EAX + 0x14]
  0063ccb8:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  0063ccbe:	f3 0f 2a c2                                    	CVTSI2SS XMM0,EDX
  0063ccc2:	f3 0f 58 05 b4 b5 f9 00                        	ADDSS XMM0,dword ptr [0x00f9b5b4]
  0063ccca:	eb 1c                                          	JMP 0x0063cce8
  0063cccc:	0f be 4c 16 14                                 	MOVSX ECX,byte ptr [ESI + EDX*0x1 + 0x14]
  0063ccd1:	f3 0f 2a c1                                    	CVTSI2SS XMM0,ECX
  0063ccd5:	f3 0f 58 05 b4 b5 f9 00                        	ADDSS XMM0,dword ptr [0x00f9b5b4]
  0063ccdd:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  0063cce3:	f3 0f 10 40 18                                 	MOVSS XMM0,dword ptr [EAX + 0x18]
  0063cce8:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  0063ccee:	8b 55 0c                                       	MOV EDX,dword ptr [EBP + 0xc]
  0063ccf1:	d9 44 24 28                                    	FLD float ptr [ESP + 0x28]
  0063ccf5:	8b 4c 24 5c                                    	MOV ECX,dword ptr [ESP + 0x5c]
  0063ccf9:	52                                             	PUSH EDX
  0063ccfa:	6a 01                                          	PUSH 0x1
  0063ccfc:	83 ec 08                                       	SUB ESP,0x8
  0063ccff:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  0063cd03:	d9 44 24 28                                    	FLD float ptr [ESP + 0x28]
  0063cd07:	d9 1c 24                                       	FSTP float ptr [ESP]
  0063cd0a:	50                                             	PUSH EAX
  0063cd0b:	8b 44 24 34                                    	MOV EAX,dword ptr [ESP + 0x34]
  0063cd0f:	50                                             	PUSH EAX
  0063cd10:	e8 cb dc ff ff                                 	CALL 0x0063a9e0
  0063cd15:	8b 8c 24 d8 00 00 00                           	MOV ECX,dword ptr [ESP + 0xd8]
  0063cd1c:	0f be 54 0e 0c                                 	MOVSX EDX,byte ptr [ESI + ECX*0x1 + 0xc]
  0063cd21:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  0063cd24:	89 50 14                                       	MOV dword ptr [EAX + 0x14],EDX
  0063cd27:	8b 84 24 c0 00 00 00                           	MOV EAX,dword ptr [ESP + 0xc0]
  0063cd2e:	85 c0                                          	TEST EAX,EAX
  0063cd30:	74 09                                          	JZ 0x0063cd3b
  0063cd32:	50                                             	PUSH EAX
  0063cd33:	e8 a8 77 ea ff                                 	CALL 0x004e44e0
  0063cd38:	83 c4 04                                       	ADD ESP,0x4
  0063cd3b:	b0 01                                          	MOV AL,0x1
  0063cd3d:	5f                                             	POP EDI
  0063cd3e:	5e                                             	POP ESI
  0063cd3f:	5b                                             	POP EBX
  0063cd40:	8b e5                                          	MOV ESP,EBP
  0063cd42:	5d                                             	POP EBP
  0063cd43:	c2 08 00                                       	RET 0x8
  0063cd46:	8b 84 24 c0 00 00 00                           	MOV EAX,dword ptr [ESP + 0xc0]
  0063cd4d:	85 c0                                          	TEST EAX,EAX
  0063cd4f:	74 09                                          	JZ 0x0063cd5a
  0063cd51:	50                                             	PUSH EAX
  0063cd52:	e8 89 77 ea ff                                 	CALL 0x004e44e0
  0063cd57:	83 c4 04                                       	ADD ESP,0x4
  0063cd5a:	5f                                             	POP EDI
  0063cd5b:	5e                                             	POP ESI
  0063cd5c:	32 c0                                          	XOR AL,AL
  0063cd5e:	5b                                             	POP EBX
  0063cd5f:	8b e5                                          	MOV ESP,EBP
  0063cd61:	5d                                             	POP EBP
  0063cd62:	c2 08 00                                       	RET 0x8
