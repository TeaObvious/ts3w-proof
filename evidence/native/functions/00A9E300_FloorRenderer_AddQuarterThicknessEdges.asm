# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00a9e300 (FloorRenderer_AddQuarterThicknessEdges)
Paired actual Ghidra pseudocode: 00A9E300_FloorRenderer_AddQuarterThicknessEdges.c
Envelope [0x00a9e300,0x00a9e555); 597 bytes; exact owned ranges: [0x00a9e300,0x00a9e555)
Owned: 597 original bytes / 172 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00a9e300 <original>:
  00a9e300:	55                                             	PUSH EBP
  00a9e301:	8b ec                                          	MOV EBP,ESP
  00a9e303:	83 e4 f8                                       	AND ESP,0xfffffff8
  00a9e306:	81 ec a4 00 00 00                              	SUB ESP,0xa4
  00a9e30c:	8b 55 08                                       	MOV EDX,dword ptr [EBP + 0x8]
  00a9e30f:	53                                             	PUSH EBX
  00a9e310:	56                                             	PUSH ESI
  00a9e311:	57                                             	PUSH EDI
  00a9e312:	8b f9                                          	MOV EDI,ECX
  00a9e314:	83 7f 14 00                                    	CMP dword ptr [EDI + 0x14],0x0
  00a9e318:	89 7c 24 38                                    	MOV dword ptr [ESP + 0x38],EDI
  00a9e31c:	75 2e                                          	JNZ 0x00a9e34c
  00a9e31e:	8a 0a                                          	MOV CL,byte ptr [EDX]
  00a9e320:	84 c9                                          	TEST CL,CL
  00a9e322:	74 21                                          	JZ 0x00a9e345
  00a9e324:	8a 42 01                                       	MOV AL,byte ptr [EDX + 0x1]
  00a9e327:	84 c0                                          	TEST AL,AL
  00a9e329:	74 1a                                          	JZ 0x00a9e345
  00a9e32b:	8b 77 1c                                       	MOV ESI,dword ptr [EDI + 0x1c]
  00a9e32e:	0f be c9                                       	MOVSX ECX,CL
  00a9e331:	83 ee 01                                       	SUB ESI,0x1
  00a9e334:	3b ce                                          	CMP ECX,ESI
  00a9e336:	74 0d                                          	JZ 0x00a9e345
  00a9e338:	8b 4f 20                                       	MOV ECX,dword ptr [EDI + 0x20]
  00a9e33b:	0f be c0                                       	MOVSX EAX,AL
  00a9e33e:	83 e9 01                                       	SUB ECX,0x1
  00a9e341:	3b c1                                          	CMP EAX,ECX
  00a9e343:	75 07                                          	JNZ 0x00a9e34c
  00a9e345:	c6 44 24 0f 01                                 	MOV byte ptr [ESP + 0xf],0x1
  00a9e34a:	eb 05                                          	JMP 0x00a9e351
  00a9e34c:	c6 44 24 0f 00                                 	MOV byte ptr [ESP + 0xf],0x0
  00a9e351:	8d 8c 24 80 00 00 00                           	LEA ECX,[ESP + 0x80]
  00a9e358:	51                                             	PUSH ECX
  00a9e359:	52                                             	PUSH EDX
  00a9e35a:	e8 a1 94 05 00                                 	CALL 0x00af7800
  00a9e35f:	8d b4 24 90 00 00 00                           	LEA ESI,[ESP + 0x90]
  00a9e366:	83 c4 08                                       	ADD ESP,0x8
  00a9e369:	89 74 24 30                                    	MOV dword ptr [ESP + 0x30],ESI
  00a9e36d:	c7 44 24 34 03 00 00 00                        	MOV dword ptr [ESP + 0x34],0x3
  00a9e375:	80 7c 24 0f 00                                 	CMP byte ptr [ESP + 0xf],0x0
  00a9e37a:	0f 84 04 01 00 00                              	JZ 0x00a9e484
  00a9e380:	8d 54 24 40                                    	LEA EDX,[ESP + 0x40]
  00a9e384:	52                                             	PUSH EDX
  00a9e385:	8d 44 24 50                                    	LEA EAX,[ESP + 0x50]
  00a9e389:	50                                             	PUSH EAX
  00a9e38a:	8d 4c 24 4c                                    	LEA ECX,[ESP + 0x4c]
  00a9e38e:	51                                             	PUSH ECX
  00a9e38f:	8d 54 24 5c                                    	LEA EDX,[ESP + 0x5c]
  00a9e393:	52                                             	PUSH EDX
  00a9e394:	8d 46 f8                                       	LEA EAX,[ESI + -0x8]
  00a9e397:	50                                             	PUSH EAX
  00a9e398:	e8 d3 95 05 00                                 	CALL 0x00af7970
  00a9e39d:	f3 0f 10 54 24 64                              	MOVSS XMM2,dword ptr [ESP + 0x64]
  00a9e3a3:	f3 0f 10 05 68 45 06 01                        	MOVSS XMM0,dword ptr [0x01064568]
  00a9e3ab:	8b 47 0c                                       	MOV EAX,dword ptr [EDI + 0xc]
  00a9e3ae:	f3 0f 11 54 24 40                              	MOVSS dword ptr [ESP + 0x40],XMM2
  00a9e3b4:	b9 ff ff ff 7f                                 	MOV ECX,0x7fffffff
  00a9e3b9:	21 4c 24 40                                    	AND dword ptr [ESP + 0x40],ECX
  00a9e3bd:	83 c4 14                                       	ADD ESP,0x14
  00a9e3c0:	0f 2f 44 24 2c                                 	COMISS XMM0,dword ptr [ESP + 0x2c]
  00a9e3c5:	77 4b                                          	JA 0x00a9e412
  00a9e3c7:	f3 0f 10 4c 24 44                              	MOVSS XMM1,dword ptr [ESP + 0x44]
  00a9e3cd:	f3 0f 11 4c 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM1
  00a9e3d3:	21 4c 24 24                                    	AND dword ptr [ESP + 0x24],ECX
  00a9e3d7:	0f 2f 44 24 24                                 	COMISS XMM0,dword ptr [ESP + 0x24]
  00a9e3dc:	77 34                                          	JA 0x00a9e412
  00a9e3de:	f3 0f 2a 58 60                                 	CVTSI2SS XMM3,dword ptr [EAX + 0x60]
  00a9e3e3:	f3 0f 5c d3                                    	SUBSS XMM2,XMM3
  00a9e3e7:	f3 0f 11 54 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM2
  00a9e3ed:	21 4c 24 1c                                    	AND dword ptr [ESP + 0x1c],ECX
  00a9e3f1:	0f 2f 44 24 1c                                 	COMISS XMM0,dword ptr [ESP + 0x1c]
  00a9e3f6:	77 1a                                          	JA 0x00a9e412
  00a9e3f8:	f3 0f 2a 50 64                                 	CVTSI2SS XMM2,dword ptr [EAX + 0x64]
  00a9e3fd:	f3 0f 5c ca                                    	SUBSS XMM1,XMM2
  00a9e401:	f3 0f 11 4c 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM1
  00a9e407:	21 4c 24 10                                    	AND dword ptr [ESP + 0x10],ECX
  00a9e40b:	0f 2f 44 24 10                                 	COMISS XMM0,dword ptr [ESP + 0x10]
  00a9e410:	76 72                                          	JBE 0x00a9e484
  00a9e412:	f3 0f 10 54 24 4c                              	MOVSS XMM2,dword ptr [ESP + 0x4c]
  00a9e418:	f3 0f 11 54 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM2
  00a9e41e:	21 4c 24 14                                    	AND dword ptr [ESP + 0x14],ECX
  00a9e422:	0f 2f 44 24 14                                 	COMISS XMM0,dword ptr [ESP + 0x14]
  00a9e427:	0f 87 06 01 00 00                              	JA 0x00a9e533
  00a9e42d:	f3 0f 10 4c 24 40                              	MOVSS XMM1,dword ptr [ESP + 0x40]
  00a9e433:	f3 0f 11 4c 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM1
  00a9e439:	21 4c 24 18                                    	AND dword ptr [ESP + 0x18],ECX
  00a9e43d:	0f 2f 44 24 18                                 	COMISS XMM0,dword ptr [ESP + 0x18]
  00a9e442:	0f 87 eb 00 00 00                              	JA 0x00a9e533
  00a9e448:	f3 0f 2a 58 60                                 	CVTSI2SS XMM3,dword ptr [EAX + 0x60]
  00a9e44d:	f3 0f 5c d3                                    	SUBSS XMM2,XMM3
  00a9e451:	f3 0f 11 54 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM2
  00a9e457:	21 4c 24 20                                    	AND dword ptr [ESP + 0x20],ECX
  00a9e45b:	0f 2f 44 24 20                                 	COMISS XMM0,dword ptr [ESP + 0x20]
  00a9e460:	0f 87 cd 00 00 00                              	JA 0x00a9e533
  00a9e466:	f3 0f 2a 50 64                                 	CVTSI2SS XMM2,dword ptr [EAX + 0x64]
  00a9e46b:	f3 0f 5c ca                                    	SUBSS XMM1,XMM2
  00a9e46f:	f3 0f 11 4c 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM1
  00a9e475:	21 4c 24 28                                    	AND dword ptr [ESP + 0x28],ECX
  00a9e479:	0f 2f 44 24 28                                 	COMISS XMM0,dword ptr [ESP + 0x28]
  00a9e47e:	0f 87 af 00 00 00                              	JA 0x00a9e533
  00a9e484:	8b 46 fc                                       	MOV EAX,dword ptr [ESI + -0x4]
  00a9e487:	c1 e0 0e                                       	SHL EAX,0xe
  00a9e48a:	0b 46 f8                                       	OR EAX,dword ptr [ESI + -0x8]
  00a9e48d:	03 c0                                          	ADD EAX,EAX
  00a9e48f:	03 c0                                          	ADD EAX,EAX
  00a9e491:	03 c0                                          	ADD EAX,EAX
  00a9e493:	0b 06                                          	OR EAX,dword ptr [ESI]
  00a9e495:	80 7e 04 00                                    	CMP byte ptr [ESI + 0x4],0x0
  00a9e499:	74 05                                          	JZ 0x00a9e4a0
  00a9e49b:	0d 00 00 00 80                                 	OR EAX,0x80000000
  00a9e4a0:	89 44 24 3c                                    	MOV dword ptr [ESP + 0x3c],EAX
  00a9e4a4:	35 00 00 00 80                                 	XOR EAX,0x80000000
  00a9e4a9:	8d 4f 50                                       	LEA ECX,[EDI + 0x50]
  00a9e4ac:	8b 79 08                                       	MOV EDI,dword ptr [ECX + 0x8]
  00a9e4af:	33 d2                                          	XOR EDX,EDX
  00a9e4b1:	8b f0                                          	MOV ESI,EAX
  00a9e4b3:	f7 f7                                          	DIV EDI
  00a9e4b5:	8b 59 04                                       	MOV EBX,dword ptr [ECX + 0x4]
  00a9e4b8:	8b 04 93                                       	MOV EAX,dword ptr [EBX + EDX*0x4]
  00a9e4bb:	85 c0                                          	TEST EAX,EAX
  00a9e4bd:	8d 14 93                                       	LEA EDX,[EBX + EDX*0x4]
  00a9e4c0:	74 0b                                          	JZ 0x00a9e4cd
  00a9e4c2:	3b 30                                          	CMP ESI,dword ptr [EAX]
  00a9e4c4:	74 46                                          	JZ 0x00a9e50c
  00a9e4c6:	8b 40 04                                       	MOV EAX,dword ptr [EAX + 0x4]
  00a9e4c9:	85 c0                                          	TEST EAX,EAX
  00a9e4cb:	75 f5                                          	JNZ 0x00a9e4c2
  00a9e4cd:	8b 14 bb                                       	MOV EDX,dword ptr [EBX + EDI*0x4]
  00a9e4d0:	8d 04 bb                                       	LEA EAX,[EBX + EDI*0x4]
  00a9e4d3:	89 44 24 60                                    	MOV dword ptr [ESP + 0x60],EAX
  00a9e4d7:	89 54 24 5c                                    	MOV dword ptr [ESP + 0x5c],EDX
  00a9e4db:	8d 44 24 5c                                    	LEA EAX,[ESP + 0x5c]
  00a9e4df:	8b 70 04                                       	MOV ESI,dword ptr [EAX + 0x4]
  00a9e4e2:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00a9e4e4:	89 74 24 70                                    	MOV dword ptr [ESP + 0x70],ESI
  00a9e4e8:	8b f7                                          	MOV ESI,EDI
  00a9e4ea:	8b fb                                          	MOV EDI,EBX
  00a9e4ec:	3b 14 b7                                       	CMP EDX,dword ptr [EDI + ESI*0x4]
  00a9e4ef:	75 29                                          	JNZ 0x00a9e51a
  00a9e4f1:	c6 44 24 48 00                                 	MOV byte ptr [ESP + 0x48],0x0
  00a9e4f6:	8b 44 24 48                                    	MOV EAX,dword ptr [ESP + 0x48]
  00a9e4fa:	50                                             	PUSH EAX
  00a9e4fb:	8d 54 24 40                                    	LEA EDX,[ESP + 0x40]
  00a9e4ff:	52                                             	PUSH EDX
  00a9e500:	8d 44 24 7c                                    	LEA EAX,[ESP + 0x7c]
  00a9e504:	50                                             	PUSH EAX
  00a9e505:	e8 b6 76 c1 ff                                 	CALL 0x006b5bc0
  00a9e50a:	eb 1f                                          	JMP 0x00a9e52b
  00a9e50c:	89 44 24 54                                    	MOV dword ptr [ESP + 0x54],EAX
  00a9e510:	89 54 24 58                                    	MOV dword ptr [ESP + 0x58],EDX
  00a9e514:	8d 44 24 54                                    	LEA EAX,[ESP + 0x54]
  00a9e518:	eb c5                                          	JMP 0x00a9e4df
  00a9e51a:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00a9e51d:	8b 00                                          	MOV EAX,dword ptr [EAX]
  00a9e51f:	52                                             	PUSH EDX
  00a9e520:	50                                             	PUSH EAX
  00a9e521:	8d 54 24 6c                                    	LEA EDX,[ESP + 0x6c]
  00a9e525:	52                                             	PUSH EDX
  00a9e526:	e8 85 1d 04 00                                 	CALL 0x00ae02b0
  00a9e52b:	8b 74 24 30                                    	MOV ESI,dword ptr [ESP + 0x30]
  00a9e52f:	8b 7c 24 38                                    	MOV EDI,dword ptr [ESP + 0x38]
  00a9e533:	83 c6 10                                       	ADD ESI,0x10
  00a9e536:	83 6c 24 34 01                                 	SUB dword ptr [ESP + 0x34],0x1
  00a9e53b:	89 74 24 30                                    	MOV dword ptr [ESP + 0x30],ESI
  00a9e53f:	0f 85 30 fe ff ff                              	JNZ 0x00a9e375
  00a9e545:	c6 87 90 00 00 00 01                           	MOV byte ptr [EDI + 0x90],0x1
  00a9e54c:	5f                                             	POP EDI
  00a9e54d:	5e                                             	POP ESI
  00a9e54e:	5b                                             	POP EBX
  00a9e54f:	8b e5                                          	MOV ESP,EBP
  00a9e551:	5d                                             	POP EBP
  00a9e552:	c2 04 00                                       	RET 0x4
