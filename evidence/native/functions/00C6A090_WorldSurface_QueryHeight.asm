# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00c6a090 (WorldSurface_QueryHeight)
Paired actual Ghidra pseudocode: 00C6A090_WorldSurface_QueryHeight.c
Envelope [0x00c6a090,0x00c6a37a); 746 bytes. Exact owned ranges: [0x00c6a090,0x00c6a37a)
Owned: 746 pristine PE bytes / 199 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope alignment bytes; they are not Listing instructions or function-body bytes.
Inferred stored prototypes remain unchanged; physical register/stack/AL and original managed evidence govern ABI interpretation.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00c6a090 <original>:
  00c6a090:	55                                             	PUSH EBP
  00c6a091:	8b ec                                          	MOV EBP,ESP
  00c6a093:	83 e4 f0                                       	AND ESP,0xfffffff0
  00c6a096:	83 ec 14                                       	SUB ESP,0x14
  00c6a099:	f3 0f 10 45 08                                 	MOVSS XMM0,dword ptr [EBP + 0x8]
  00c6a09e:	f3 0f 10 15 74 96 07 01                        	MOVSS XMM2,dword ptr [0x01079674]
  00c6a0a6:	53                                             	PUSH EBX
  00c6a0a7:	8b d9                                          	MOV EBX,ECX
  00c6a0a9:	0f 2f 83 b4 00 00 00                           	COMISS XMM0,dword ptr [EBX + 0xb4]
  00c6a0b0:	56                                             	PUSH ESI
  00c6a0b1:	57                                             	PUSH EDI
  00c6a0b2:	c6 44 24 13 00                                 	MOV byte ptr [ESP + 0x13],0x0
  00c6a0b7:	c6 44 24 12 00                                 	MOV byte ptr [ESP + 0x12],0x0
  00c6a0bc:	f3 0f 11 54 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM2
  00c6a0c2:	0f 82 8b 02 00 00                              	JC 0x00c6a353
  00c6a0c8:	f3 0f 10 4d 0c                                 	MOVSS XMM1,dword ptr [EBP + 0xc]
  00c6a0cd:	0f 2f 8b b8 00 00 00                           	COMISS XMM1,dword ptr [EBX + 0xb8]
  00c6a0d4:	0f 82 79 02 00 00                              	JC 0x00c6a353
  00c6a0da:	f3 0f 10 9b bc 00 00 00                        	MOVSS XMM3,dword ptr [EBX + 0xbc]
  00c6a0e2:	0f 2f d8                                       	COMISS XMM3,XMM0
  00c6a0e5:	0f 86 68 02 00 00                              	JBE 0x00c6a353
  00c6a0eb:	f3 0f 10 83 c4 00 00 00                        	MOVSS XMM0,dword ptr [EBX + 0xc4]
  00c6a0f3:	f3 0f 58 83 c0 00 00 00                        	ADDSS XMM0,dword ptr [EBX + 0xc0]
  00c6a0fb:	0f 2f c1                                       	COMISS XMM0,XMM1
  00c6a0fe:	0f 86 4f 02 00 00                              	JBE 0x00c6a353
  00c6a104:	80 7d 14 00                                    	CMP byte ptr [EBP + 0x14],0x0
  00c6a108:	0f 84 28 01 00 00                              	JZ 0x00c6a236
  00c6a10e:	d9 45 0c                                       	FLD float ptr [EBP + 0xc]
  00c6a111:	83 ec 08                                       	SUB ESP,0x8
  00c6a114:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00c6a118:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  00c6a11b:	d9 1c 24                                       	FSTP float ptr [ESP]
  00c6a11e:	e8 bd e5 ff ff                                 	CALL 0x00c686e0
  00c6a123:	85 c0                                          	TEST EAX,EAX
  00c6a125:	0f 84 05 01 00 00                              	JZ 0x00c6a230
  00c6a12b:	8b 38                                          	MOV EDI,dword ptr [EAX]
  00c6a12d:	8b 40 04                                       	MOV EAX,dword ptr [EAX + 0x4]
  00c6a130:	3b f8                                          	CMP EDI,EAX
  00c6a132:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00c6a136:	0f 84 f4 00 00 00                              	JZ 0x00c6a230
  00c6a13c:	f3 0f 10 54 24 14                              	MOVSS XMM2,dword ptr [ESP + 0x14]
  00c6a142:	8b 37                                          	MOV ESI,dword ptr [EDI]
  00c6a144:	85 f6                                          	TEST ESI,ESI
  00c6a146:	0f 84 d5 00 00 00                              	JZ 0x00c6a221
  00c6a14c:	80 7d 24 00                                    	CMP byte ptr [EBP + 0x24],0x0
  00c6a150:	74 32                                          	JZ 0x00c6a184
  00c6a152:	80 be bc 04 00 00 00                           	CMP byte ptr [ESI + 0x4bc],0x0
  00c6a159:	0f 85 c2 00 00 00                              	JNZ 0x00c6a221
  00c6a15f:	80 7d 28 00                                    	CMP byte ptr [EBP + 0x28],0x0
  00c6a163:	74 1f                                          	JZ 0x00c6a184
  00c6a165:	d9 45 0c                                       	FLD float ptr [EBP + 0xc]
  00c6a168:	83 ec 08                                       	SUB ESP,0x8
  00c6a16b:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00c6a16f:	8b ce                                          	MOV ECX,ESI
  00c6a171:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  00c6a174:	d9 1c 24                                       	FSTP float ptr [ESP]
  00c6a177:	e8 64 f2 b1 ff                                 	CALL 0x007893e0
  00c6a17c:	84 c0                                          	TEST AL,AL
  00c6a17e:	0f 84 97 00 00 00                              	JZ 0x00c6a21b
  00c6a184:	8b 45 10                                       	MOV EAX,dword ptr [EBP + 0x10]
  00c6a187:	d9 45 0c                                       	FLD float ptr [EBP + 0xc]
  00c6a18a:	50                                             	PUSH EAX
  00c6a18b:	83 ec 08                                       	SUB ESP,0x8
  00c6a18e:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00c6a192:	8b ce                                          	MOV ECX,ESI
  00c6a194:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  00c6a197:	d9 1c 24                                       	FSTP float ptr [ESP]
  00c6a19a:	e8 41 d6 e4 ff                                 	CALL 0x00ab77e0
  00c6a19f:	8b 4d 10                                       	MOV ECX,dword ptr [EBP + 0x10]
  00c6a1a2:	d9 5c 24 14                                    	FSTP float ptr [ESP + 0x14]
  00c6a1a6:	d9 45 0c                                       	FLD float ptr [EBP + 0xc]
  00c6a1a9:	51                                             	PUSH ECX
  00c6a1aa:	83 ec 08                                       	SUB ESP,0x8
  00c6a1ad:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00c6a1b1:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  00c6a1b4:	d9 1c 24                                       	FSTP float ptr [ESP]
  00c6a1b7:	56                                             	PUSH ESI
  00c6a1b8:	e8 13 b0 e9 ff                                 	CALL 0x00b051d0
  00c6a1bd:	f3 0f 10 54 24 24                              	MOVSS XMM2,dword ptr [ESP + 0x24]
  00c6a1c3:	83 c4 10                                       	ADD ESP,0x10
  00c6a1c6:	84 c0                                          	TEST AL,AL
  00c6a1c8:	74 0e                                          	JZ 0x00c6a1d8
  00c6a1ca:	f3 0f 58 15 68 96 07 01                        	ADDSS XMM2,dword ptr [0x01079668]
  00c6a1d2:	f3 0f 11 54 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM2
  00c6a1d8:	f3 0f 10 05 18 b2 fa 00                        	MOVSS XMM0,dword ptr [0x00fab218]
  00c6a1e0:	0f 28 ca                                       	MOVAPS XMM1,XMM2
  00c6a1e3:	f3 0f 5c 0d 74 96 07 01                        	SUBSS XMM1,dword ptr [0x01079674]
  00c6a1eb:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00c6a1ef:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00c6a1f3:	0f 59 c1                                       	MULPS XMM0,XMM1
  00c6a1f6:	0f 5f c1                                       	MAXPS XMM0,XMM1
  00c6a1f9:	f3 0f 10 0d 28 97 07 01                        	MOVSS XMM1,dword ptr [0x01079728]
  00c6a201:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00c6a205:	0f c2 c1 02                                    	CMPLEPS XMM0,XMM1
  00c6a209:	0f 50 d0                                       	MOVMSKPS EDX,XMM0
  00c6a20c:	83 fa 0f                                       	CMP EDX,0xf
  00c6a20f:	74 10                                          	JZ 0x00c6a221
  00c6a211:	c6 44 24 13 01                                 	MOV byte ptr [ESP + 0x13],0x1
  00c6a216:	e9 de 00 00 00                                 	JMP 0x00c6a2f9
  00c6a21b:	f3 0f 10 54 24 14                              	MOVSS XMM2,dword ptr [ESP + 0x14]
  00c6a221:	83 c7 04                                       	ADD EDI,0x4
  00c6a224:	3b 7c 24 1c                                    	CMP EDI,dword ptr [ESP + 0x1c]
  00c6a228:	0f 85 14 ff ff ff                              	JNZ 0x00c6a142
  00c6a22e:	eb 06                                          	JMP 0x00c6a236
  00c6a230:	f3 0f 10 54 24 14                              	MOVSS XMM2,dword ptr [ESP + 0x14]
  00c6a236:	80 7d 18 00                                    	CMP byte ptr [EBP + 0x18],0x0
  00c6a23a:	0f 84 b9 00 00 00                              	JZ 0x00c6a2f9
  00c6a240:	8b 4b 5c                                       	MOV ECX,dword ptr [EBX + 0x5c]
  00c6a243:	85 c9                                          	TEST ECX,ECX
  00c6a245:	f3 0f 10 05 18 b2 fa 00                        	MOVSS XMM0,dword ptr [0x00fab218]
  00c6a24d:	c7 44 24 1c 00 00 00 00                        	MOV dword ptr [ESP + 0x1c],0x0
  00c6a255:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  00c6a25b:	0f 84 98 00 00 00                              	JZ 0x00c6a2f9
  00c6a261:	d9 45 0c                                       	FLD float ptr [EBP + 0xc]
  00c6a264:	6a 00                                          	PUSH 0x0
  00c6a266:	8d 44 24 1c                                    	LEA EAX,[ESP + 0x1c]
  00c6a26a:	50                                             	PUSH EAX
  00c6a26b:	8d 54 24 24                                    	LEA EDX,[ESP + 0x24]
  00c6a26f:	52                                             	PUSH EDX
  00c6a270:	6a 00                                          	PUSH 0x0
  00c6a272:	6a 01                                          	PUSH 0x1
  00c6a274:	83 ec 08                                       	SUB ESP,0x8
  00c6a277:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00c6a27b:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  00c6a27e:	d9 1c 24                                       	FSTP float ptr [ESP]
  00c6a281:	e8 da dc f0 ff                                 	CALL 0x00b77f60
  00c6a286:	84 c0                                          	TEST AL,AL
  00c6a288:	74 69                                          	JZ 0x00c6a2f3
  00c6a28a:	d9 44 24 18                                    	FLD float ptr [ESP + 0x18]
  00c6a28e:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00c6a292:	83 ec 0c                                       	SUB ESP,0xc
  00c6a295:	d9 5c 24 08                                    	FSTP float ptr [ESP + 0x8]
  00c6a299:	d9 45 0c                                       	FLD float ptr [EBP + 0xc]
  00c6a29c:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00c6a2a0:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  00c6a2a3:	d9 1c 24                                       	FSTP float ptr [ESP]
  00c6a2a6:	e8 85 8e f0 ff                                 	CALL 0x00b73130
  00c6a2ab:	8b 4b 54                                       	MOV ECX,dword ptr [EBX + 0x54]
  00c6a2ae:	d9 5c 24 14                                    	FSTP float ptr [ESP + 0x14]
  00c6a2b2:	85 c9                                          	TEST ECX,ECX
  00c6a2b4:	c6 44 24 12 01                                 	MOV byte ptr [ESP + 0x12],0x1
  00c6a2b9:	74 38                                          	JZ 0x00c6a2f3
  00c6a2bb:	d9 45 0c                                       	FLD float ptr [EBP + 0xc]
  00c6a2be:	83 ec 08                                       	SUB ESP,0x8
  00c6a2c1:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00c6a2c5:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  00c6a2c8:	d9 1c 24                                       	FSTP float ptr [ESP]
  00c6a2cb:	e8 b0 ed fb ff                                 	CALL 0x00c29080
  00c6a2d0:	d9 54 24 1c                                    	FST float ptr [ESP + 0x1c]
  00c6a2d4:	d9 44 24 14                                    	FLD float ptr [ESP + 0x14]
  00c6a2d8:	d9 c9                                          	FXCH
  00c6a2da:	df f1                                          	FCOMIP ST0,ST1
  00c6a2dc:	dd d8                                          	FSTP ST0
  00c6a2de:	76 13                                          	JBE 0x00c6a2f3
  00c6a2e0:	f3 0f 10 54 24 1c                              	MOVSS XMM2,dword ptr [ESP + 0x1c]
  00c6a2e6:	f3 0f 11 54 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM2
  00c6a2ec:	c6 44 24 12 00                                 	MOV byte ptr [ESP + 0x12],0x0
  00c6a2f1:	eb 06                                          	JMP 0x00c6a2f9
  00c6a2f3:	f3 0f 10 54 24 14                              	MOVSS XMM2,dword ptr [ESP + 0x14]
  00c6a2f9:	f3 0f 5c 15 74 96 07 01                        	SUBSS XMM2,dword ptr [0x01079674]
  00c6a301:	f3 0f 10 05 18 b2 fa 00                        	MOVSS XMM0,dword ptr [0x00fab218]
  00c6a309:	f3 0f 10 0d 28 97 07 01                        	MOVSS XMM1,dword ptr [0x01079728]
  00c6a311:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00c6a315:	f3 0f 10 d2                                    	MOVSS XMM2,XMM2
  00c6a319:	0f c6 d2 00                                    	SHUFPS XMM2,XMM2,0x0
  00c6a31d:	0f 59 c2                                       	MULPS XMM0,XMM2
  00c6a320:	0f 5f c2                                       	MAXPS XMM0,XMM2
  00c6a323:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00c6a327:	0f c2 c1 02                                    	CMPLEPS XMM0,XMM1
  00c6a32b:	0f 50 c0                                       	MOVMSKPS EAX,XMM0
  00c6a32e:	83 f8 0f                                       	CMP EAX,0xf
  00c6a331:	75 20                                          	JNZ 0x00c6a353
  00c6a333:	8b 4b 54                                       	MOV ECX,dword ptr [EBX + 0x54]
  00c6a336:	85 c9                                          	TEST ECX,ECX
  00c6a338:	74 19                                          	JZ 0x00c6a353
  00c6a33a:	d9 45 0c                                       	FLD float ptr [EBP + 0xc]
  00c6a33d:	83 ec 08                                       	SUB ESP,0x8
  00c6a340:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00c6a344:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  00c6a347:	d9 1c 24                                       	FSTP float ptr [ESP]
  00c6a34a:	e8 31 ed fb ff                                 	CALL 0x00c29080
  00c6a34f:	d9 5c 24 14                                    	FSTP float ptr [ESP + 0x14]
  00c6a353:	8b 45 1c                                       	MOV EAX,dword ptr [EBP + 0x1c]
  00c6a356:	85 c0                                          	TEST EAX,EAX
  00c6a358:	74 06                                          	JZ 0x00c6a360
  00c6a35a:	8a 4c 24 13                                    	MOV CL,byte ptr [ESP + 0x13]
  00c6a35e:	88 08                                          	MOV byte ptr [EAX],CL
  00c6a360:	8b 45 20                                       	MOV EAX,dword ptr [EBP + 0x20]
  00c6a363:	d9 44 24 14                                    	FLD float ptr [ESP + 0x14]
  00c6a367:	85 c0                                          	TEST EAX,EAX
  00c6a369:	74 06                                          	JZ 0x00c6a371
  00c6a36b:	8a 54 24 12                                    	MOV DL,byte ptr [ESP + 0x12]
  00c6a36f:	88 10                                          	MOV byte ptr [EAX],DL
  00c6a371:	5f                                             	POP EDI
  00c6a372:	5e                                             	POP ESI
  00c6a373:	5b                                             	POP EBX
  00c6a374:	8b e5                                          	MOV ESP,EBP
  00c6a376:	5d                                             	POP EBP
  00c6a377:	c2 24 00                                       	RET 0x24
