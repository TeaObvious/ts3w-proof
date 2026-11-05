# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b7d200 (RoadNetwork_DrawQuadClippedMeshTriangles)
Paired actual Ghidra pseudocode: 00B7D200_RoadNetwork_DrawQuadClippedMeshTriangles.c
Envelope [0x00b7d200,0x00b7de44); 3140 bytes; exact owned ranges: [0x00b7d200,0x00b7de44)
Owned: 3140 original bytes / 799 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
This body is contiguous; no unowned envelope bytes are present.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b7d200 <original>:
  00b7d200:	55                                             	PUSH EBP
  00b7d201:	8b ec                                          	MOV EBP,ESP
  00b7d203:	83 e4 f0                                       	AND ESP,0xfffffff0
  00b7d206:	81 ec 24 03 00 00                              	SUB ESP,0x324
  00b7d20c:	53                                             	PUSH EBX
  00b7d20d:	56                                             	PUSH ESI
  00b7d20e:	57                                             	PUSH EDI
  00b7d20f:	89 4c 24 3c                                    	MOV dword ptr [ESP + 0x3c],ECX
  00b7d213:	8b 45 20                                       	MOV EAX,dword ptr [EBP + 0x20]
  00b7d216:	0f 28 08                                       	MOVAPS XMM1,xmmword ptr [EAX]
  00b7d219:	8b 55 24                                       	MOV EDX,dword ptr [EBP + 0x24]
  00b7d21c:	8b 45 28                                       	MOV EAX,dword ptr [EBP + 0x28]
  00b7d21f:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  00b7d222:	0f 59 c1                                       	MULPS XMM0,XMM1
  00b7d225:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00b7d228:	0f c6 d0 55                                    	SHUFPS XMM2,XMM0,0x55
  00b7d22c:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b7d230:	0f 58 d0                                       	ADDPS XMM2,XMM0
  00b7d233:	0f 5e ca                                       	DIVPS XMM1,XMM2
  00b7d236:	0f 29 8c 24 60 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x160],XMM1
  00b7d23e:	0f 28 0a                                       	MOVAPS XMM1,xmmword ptr [EDX]
  00b7d241:	8b 55 2c                                       	MOV EDX,dword ptr [EBP + 0x2c]
  00b7d244:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  00b7d247:	0f 59 c1                                       	MULPS XMM0,XMM1
  00b7d24a:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00b7d24d:	0f c6 d0 55                                    	SHUFPS XMM2,XMM0,0x55
  00b7d251:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b7d255:	0f 58 d0                                       	ADDPS XMM2,XMM0
  00b7d258:	0f 5e ca                                       	DIVPS XMM1,XMM2
  00b7d25b:	0f 29 8c 24 80 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x180],XMM1
  00b7d263:	0f 28 08                                       	MOVAPS XMM1,xmmword ptr [EAX]
  00b7d266:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  00b7d269:	0f 59 c1                                       	MULPS XMM0,XMM1
  00b7d26c:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00b7d26f:	0f c6 d0 55                                    	SHUFPS XMM2,XMM0,0x55
  00b7d273:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b7d277:	0f 58 d0                                       	ADDPS XMM2,XMM0
  00b7d27a:	0f 5e ca                                       	DIVPS XMM1,XMM2
  00b7d27d:	0f 29 8c 24 70 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x170],XMM1
  00b7d285:	0f 28 0a                                       	MOVAPS XMM1,xmmword ptr [EDX]
  00b7d288:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  00b7d28b:	0f 59 c1                                       	MULPS XMM0,XMM1
  00b7d28e:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00b7d291:	0f c6 d0 55                                    	SHUFPS XMM2,XMM0,0x55
  00b7d295:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b7d299:	33 db                                          	XOR EBX,EBX
  00b7d29b:	b8 e0 06 07 01                                 	MOV EAX,0x10706e0
  00b7d2a0:	0f 58 d0                                       	ADDPS XMM2,XMM0
  00b7d2a3:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00b7d2ab:	89 84 24 88 00 00 00                           	MOV dword ptr [ESP + 0x88],EAX
  00b7d2b2:	89 44 24 2c                                    	MOV dword ptr [ESP + 0x2c],EAX
  00b7d2b6:	8b 45 10                                       	MOV EAX,dword ptr [EBP + 0x10]
  00b7d2b9:	8b 49 0c                                       	MOV ECX,dword ptr [ECX + 0xc]
  00b7d2bc:	f3 0f 11 44 24 50                              	MOVSS dword ptr [ESP + 0x50],XMM0
  00b7d2c2:	f3 0f 10 05 88 fd 03 01                        	MOVSS XMM0,dword ptr [0x0103fd88]
  00b7d2ca:	0f 5e ca                                       	DIVPS XMM1,XMM2
  00b7d2cd:	33 f6                                          	XOR ESI,ESI
  00b7d2cf:	bf 01 00 00 00                                 	MOV EDI,0x1
  00b7d2d4:	50                                             	PUSH EAX
  00b7d2d5:	0f 29 8c 24 94 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x194],XMM1
  00b7d2dd:	89 9c 24 80 00 00 00                           	MOV dword ptr [ESP + 0x80],EBX
  00b7d2e4:	89 9c 24 84 00 00 00                           	MOV dword ptr [ESP + 0x84],EBX
  00b7d2eb:	89 9c 24 88 00 00 00                           	MOV dword ptr [ESP + 0x88],EBX
  00b7d2f2:	89 5c 24 24                                    	MOV dword ptr [ESP + 0x24],EBX
  00b7d2f6:	89 74 24 28                                    	MOV dword ptr [ESP + 0x28],ESI
  00b7d2fa:	89 5c 24 2c                                    	MOV dword ptr [ESP + 0x2c],EBX
  00b7d2fe:	f3 0f 11 44 24 58                              	MOVSS dword ptr [ESP + 0x58],XMM0
  00b7d304:	c7 44 24 60 c4 06 07 01                        	MOV dword ptr [ESP + 0x60],0x10706c4
  00b7d30c:	89 7c 24 4c                                    	MOV dword ptr [ESP + 0x4c],EDI
  00b7d310:	c7 44 24 48 00 d9 14 01                        	MOV dword ptr [ESP + 0x48],0x114d900
  00b7d318:	89 5c 24 50                                    	MOV dword ptr [ESP + 0x50],EBX
  00b7d31c:	89 5c 24 5c                                    	MOV dword ptr [ESP + 0x5c],EBX
  00b7d320:	e8 eb b5 0a 00                                 	CALL 0x00c28910
  00b7d325:	38 5d 0c                                       	CMP byte ptr [EBP + 0xc],BL
  00b7d328:	89 44 24 34                                    	MOV dword ptr [ESP + 0x34],EAX
  00b7d32c:	8d 48 34                                       	LEA ECX,[EAX + 0x34]
  00b7d32f:	75 03                                          	JNZ 0x00b7d334
  00b7d331:	8d 48 30                                       	LEA ECX,[EAX + 0x30]
  00b7d334:	8b 09                                          	MOV ECX,dword ptr [ECX]
  00b7d336:	3b cb                                          	CMP ECX,EBX
  00b7d338:	89 8c 24 b0 00 00 00                           	MOV dword ptr [ESP + 0xb0],ECX
  00b7d33f:	75 2a                                          	JNZ 0x00b7d36b
  00b7d341:	8b 4c 24 48                                    	MOV ECX,dword ptr [ESP + 0x48]
  00b7d345:	8b 54 24 44                                    	MOV EDX,dword ptr [ESP + 0x44]
  00b7d349:	51                                             	PUSH ECX
  00b7d34a:	52                                             	PUSH EDX
  00b7d34b:	8d 4c 24 48                                    	LEA ECX,[ESP + 0x48]
  00b7d34f:	e8 bc 30 f6 ff                                 	CALL 0x00ae0410
  00b7d354:	39 7c 24 48                                    	CMP dword ptr [ESP + 0x48],EDI
  00b7d358:	89 5c 24 4c                                    	MOV dword ptr [ESP + 0x4c],EBX
  00b7d35c:	0f 86 c8 0a 00 00                              	JBE 0x00b7de2a
  00b7d362:	8b 44 24 44                                    	MOV EAX,dword ptr [ESP + 0x44]
  00b7d366:	e9 b6 0a 00 00                                 	JMP 0x00b7de21
  00b7d36b:	8b 55 14                                       	MOV EDX,dword ptr [EBP + 0x14]
  00b7d36e:	0f 28 5a 30                                    	MOVAPS XMM3,xmmword ptr [EDX + 0x30]
  00b7d372:	0f 28 52 20                                    	MOVAPS XMM2,xmmword ptr [EDX + 0x20]
  00b7d376:	0f 28 62 10                                    	MOVAPS XMM4,xmmword ptr [EDX + 0x10]
  00b7d37a:	0f 28 02                                       	MOVAPS XMM0,xmmword ptr [EDX]
  00b7d37d:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00b7d380:	0f 28 ea                                       	MOVAPS XMM5,XMM2
  00b7d383:	0f 5f c4                                       	MAXPS XMM0,XMM4
  00b7d386:	0f 5f d3                                       	MAXPS XMM2,XMM3
  00b7d389:	0f 5f c2                                       	MAXPS XMM0,XMM2
  00b7d38c:	0f 5d cc                                       	MINPS XMM1,XMM4
  00b7d38f:	0f 5d eb                                       	MINPS XMM5,XMM3
  00b7d392:	0f 5d cd                                       	MINPS XMM1,XMM5
  00b7d395:	0f 29 84 24 c0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xc0],XMM0
  00b7d39d:	f3 0f 10 ac 24 c4 00 00 00                     	MOVSS XMM5,dword ptr [ESP + 0xc4]
  00b7d3a6:	0f 29 84 24 d0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xd0],XMM0
  00b7d3ae:	f3 0f 10 a4 24 d0 00 00 00                     	MOVSS XMM4,dword ptr [ESP + 0xd0]
  00b7d3b7:	0f 29 8c 24 30 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x130],XMM1
  00b7d3bf:	f3 0f 10 9c 24 34 01 00 00                     	MOVSS XMM3,dword ptr [ESP + 0x134]
  00b7d3c8:	0f 29 8c 24 50 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x150],XMM1
  00b7d3d0:	f3 0f 10 94 24 50 01 00 00                     	MOVSS XMM2,dword ptr [ESP + 0x150]
  00b7d3d9:	f3 0f 10 0d f0 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f0]
  00b7d3e1:	f3 0f 11 94 24 9c 00 00 00                     	MOVSS dword ptr [ESP + 0x9c],XMM2
  00b7d3ea:	f3 0f 11 9c 24 a0 00 00 00                     	MOVSS dword ptr [ESP + 0xa0],XMM3
  00b7d3f3:	f3 0f 11 a4 24 a4 00 00 00                     	MOVSS dword ptr [ESP + 0xa4],XMM4
  00b7d3fc:	f3 0f 11 ac 24 a8 00 00 00                     	MOVSS dword ptr [ESP + 0xa8],XMM5
  00b7d405:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  00b7d408:	f3 0f 5c 40 10                                 	SUBSS XMM0,dword ptr [EAX + 0x10]
  00b7d40d:	f3 0f 5c 48 14                                 	SUBSS XMM1,dword ptr [EAX + 0x14]
  00b7d412:	0f 28 f0                                       	MOVAPS XMM6,XMM0
  00b7d415:	f3 0f 58 f2                                    	ADDSS XMM6,XMM2
  00b7d419:	8d 54 24 7c                                    	LEA EDX,[ESP + 0x7c]
  00b7d41d:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  00b7d420:	52                                             	PUSH EDX
  00b7d421:	8d 84 24 a0 00 00 00                           	LEA EAX,[ESP + 0xa0]
  00b7d428:	f3 0f 58 d3                                    	ADDSS XMM2,XMM3
  00b7d42c:	f3 0f 58 c4                                    	ADDSS XMM0,XMM4
  00b7d430:	f3 0f 58 cd                                    	ADDSS XMM1,XMM5
  00b7d434:	50                                             	PUSH EAX
  00b7d435:	f3 0f 11 b4 24 a4 00 00 00                     	MOVSS dword ptr [ESP + 0xa4],XMM6
  00b7d43e:	f3 0f 11 94 24 a8 00 00 00                     	MOVSS dword ptr [ESP + 0xa8],XMM2
  00b7d447:	f3 0f 11 84 24 ac 00 00 00                     	MOVSS dword ptr [ESP + 0xac],XMM0
  00b7d450:	f3 0f 11 8c 24 b0 00 00 00                     	MOVSS dword ptr [ESP + 0xb0],XMM1
  00b7d459:	e8 32 39 b0 ff                                 	CALL 0x00680d90
  00b7d45e:	8b 84 24 80 00 00 00                           	MOV EAX,dword ptr [ESP + 0x80]
  00b7d465:	2b 44 24 7c                                    	SUB EAX,dword ptr [ESP + 0x7c]
  00b7d469:	89 5c 24 38                                    	MOV dword ptr [ESP + 0x38],EBX
  00b7d46d:	d1 f8                                          	SAR EAX,0x1
  00b7d46f:	89 84 24 b8 00 00 00                           	MOV dword ptr [ESP + 0xb8],EAX
  00b7d476:	0f 84 32 09 00 00                              	JZ 0x00b7ddae
  00b7d47c:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00b7d484:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b7d488:	0f 29 84 24 e0 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x1e0],XMM0
  00b7d490:	f3 0f 10 05 b4 b5 f9 00                        	MOVSS XMM0,dword ptr [0x00f9b5b4]
  00b7d498:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b7d49c:	0f 29 84 24 60 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x260],XMM0
  00b7d4a4:	f3 0f 10 05 18 b2 fa 00                        	MOVSS XMM0,dword ptr [0x00fab218]
  00b7d4ac:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b7d4b0:	0f 29 84 24 c0 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x1c0],XMM0
  00b7d4b8:	f3 0f 10 05 7c 48 04 01                        	MOVSS XMM0,dword ptr [0x0104487c]
  00b7d4c0:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b7d4c4:	0f 29 84 24 40 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x240],XMM0
  00b7d4cc:	8b 7c 24 38                                    	MOV EDI,dword ptr [ESP + 0x38]
  00b7d4d0:	8b 5d 14                                       	MOV EBX,dword ptr [EBP + 0x14]
  00b7d4d3:	8d b4 24 70 02 00 00                           	LEA ESI,[ESP + 0x270]
  00b7d4da:	03 ff                                          	ADD EDI,EDI
  00b7d4dc:	c7 44 24 14 03 00 00 00                        	MOV dword ptr [ESP + 0x14],0x3
  00b7d4e4:	8b 4c 24 7c                                    	MOV ECX,dword ptr [ESP + 0x7c]
  00b7d4e8:	0f b7 04 0f                                    	MOVZX EAX,word ptr [EDI + ECX*0x1]
  00b7d4ec:	8b 8c 24 b0 00 00 00                           	MOV ECX,dword ptr [ESP + 0xb0]
  00b7d4f3:	0f b7 d0                                       	MOVZX EDX,AX
  00b7d4f6:	50                                             	PUSH EAX
  00b7d4f7:	8d 84 24 04 02 00 00                           	LEA EAX,[ESP + 0x204]
  00b7d4fe:	50                                             	PUSH EAX
  00b7d4ff:	89 56 24                                       	MOV dword ptr [ESI + 0x24],EDX
  00b7d502:	e8 09 0a b0 ff                                 	CALL 0x0067df10
  00b7d507:	8b 4c 24 34                                    	MOV ECX,dword ptr [ESP + 0x34]
  00b7d50b:	0f 28 49 20                                    	MOVAPS XMM1,xmmword ptr [ECX + 0x20]
  00b7d50f:	0f 28 84 24 00 02 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x200]
  00b7d517:	0f 58 c1                                       	ADDPS XMM0,XMM1
  00b7d51a:	0f 29 06                                       	MOVAPS xmmword ptr [ESI],XMM0
  00b7d51d:	0f 28 06                                       	MOVAPS XMM0,xmmword ptr [ESI]
  00b7d520:	8d 56 20                                       	LEA EDX,[ESI + 0x20]
  00b7d523:	52                                             	PUSH EDX
  00b7d524:	8d 84 24 34 01 00 00                           	LEA EAX,[ESP + 0x134]
  00b7d52b:	50                                             	PUSH EAX
  00b7d52c:	0f c6 c0 20                                    	SHUFPS XMM0,XMM0,0x20
  00b7d530:	0f c6 c0 08                                    	SHUFPS XMM0,XMM0,0x8
  00b7d534:	53                                             	PUSH EBX
  00b7d535:	0f 29 84 24 3c 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x13c],XMM0
  00b7d53d:	e8 fe 93 ff ff                                 	CALL 0x00b76940
  00b7d542:	0f 57 f6                                       	XORPS XMM6,XMM6
  00b7d545:	83 c4 0c                                       	ADD ESP,0xc
  00b7d548:	80 7d 0c 00                                    	CMP byte ptr [EBP + 0xc],0x0
  00b7d54c:	f3 0f 11 74 24 68                              	MOVSS dword ptr [ESP + 0x68],XMM6
  00b7d552:	75 5a                                          	JNZ 0x00b7d5ae
  00b7d554:	8d 8c 24 50 02 00 00                           	LEA ECX,[ESP + 0x250]
  00b7d55b:	51                                             	PUSH ECX
  00b7d55c:	8b 4d 18                                       	MOV ECX,dword ptr [EBP + 0x18]
  00b7d55f:	8d 54 24 6c                                    	LEA EDX,[ESP + 0x6c]
  00b7d563:	52                                             	PUSH EDX
  00b7d564:	8d 84 24 38 01 00 00                           	LEA EAX,[ESP + 0x138]
  00b7d56b:	50                                             	PUSH EAX
  00b7d56c:	51                                             	PUSH ECX
  00b7d56d:	53                                             	PUSH EBX
  00b7d56e:	e8 4d 95 ff ff                                 	CALL 0x00b76ac0
  00b7d573:	0f 57 f6                                       	XORPS XMM6,XMM6
  00b7d576:	83 c4 14                                       	ADD ESP,0x14
  00b7d579:	84 c0                                          	TEST AL,AL
  00b7d57b:	74 31                                          	JZ 0x00b7d5ae
  00b7d57d:	0f 28 46 30                                    	MOVAPS XMM0,xmmword ptr [ESI + 0x30]
  00b7d581:	0f 29 84 24 50 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x150],XMM0
  00b7d589:	f3 0f 10 44 24 68                              	MOVSS XMM0,dword ptr [ESP + 0x68]
  00b7d58f:	f3 0f 11 84 24 58 01 00 00                     	MOVSS dword ptr [ESP + 0x158],XMM0
  00b7d598:	0f 28 84 24 50 01 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x150]
  00b7d5a0:	0f 29 46 30                                    	MOVAPS xmmword ptr [ESI + 0x30],XMM0
  00b7d5a4:	0f 28 84 24 50 02 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x250]
  00b7d5ac:	eb 34                                          	JMP 0x00b7d5e2
  00b7d5ae:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00b7d5b6:	f3 0f 11 b4 24 2c 01 00 00                     	MOVSS dword ptr [ESP + 0x12c],XMM6
  00b7d5bf:	f3 0f 11 b4 24 28 01 00 00                     	MOVSS dword ptr [ESP + 0x128],XMM6
  00b7d5c8:	f3 0f 11 84 24 24 01 00 00                     	MOVSS dword ptr [ESP + 0x124],XMM0
  00b7d5d1:	f3 0f 11 b4 24 20 01 00 00                     	MOVSS dword ptr [ESP + 0x120],XMM6
  00b7d5da:	0f 28 84 24 20 01 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x120]
  00b7d5e2:	0f 29 46 10                                    	MOVAPS xmmword ptr [ESI + 0x10],XMM0
  00b7d5e6:	83 c7 02                                       	ADD EDI,0x2
  00b7d5e9:	83 c6 40                                       	ADD ESI,0x40
  00b7d5ec:	83 6c 24 14 01                                 	SUB dword ptr [ESP + 0x14],0x1
  00b7d5f1:	0f 85 ed fe ff ff                              	JNZ 0x00b7d4e4
  00b7d5f7:	0f 28 8c 24 70 02 00 00                        	MOVAPS XMM1,xmmword ptr [ESP + 0x270]
  00b7d5ff:	0f 28 84 24 f0 02 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x2f0]
  00b7d607:	0f 28 94 24 b0 02 00 00                        	MOVAPS XMM2,xmmword ptr [ESP + 0x2b0]
  00b7d60f:	0f 5c c1                                       	SUBPS XMM0,XMM1
  00b7d612:	0f 28 a4 24 e0 01 00 00                        	MOVAPS XMM4,xmmword ptr [ESP + 0x1e0]
  00b7d61a:	0f 5c d1                                       	SUBPS XMM2,XMM1
  00b7d61d:	0f 28 d8                                       	MOVAPS XMM3,XMM0
  00b7d620:	0f c6 d8 12                                    	SHUFPS XMM3,XMM0,0x12
  00b7d624:	0f c6 c0 09                                    	SHUFPS XMM0,XMM0,0x9
  00b7d628:	0f 28 ca                                       	MOVAPS XMM1,XMM2
  00b7d62b:	0f c6 ca 09                                    	SHUFPS XMM1,XMM2,0x9
  00b7d62f:	0f 59 cb                                       	MULPS XMM1,XMM3
  00b7d632:	0f c6 d2 12                                    	SHUFPS XMM2,XMM2,0x12
  00b7d636:	0f 59 d0                                       	MULPS XMM2,XMM0
  00b7d639:	0f 5c d1                                       	SUBPS XMM2,XMM1
  00b7d63c:	0f 28 ca                                       	MOVAPS XMM1,XMM2
  00b7d63f:	0f 59 ca                                       	MULPS XMM1,XMM2
  00b7d642:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  00b7d645:	0f c6 c1 02                                    	SHUFPS XMM0,XMM1,0x2
  00b7d649:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  00b7d64c:	0f c6 d9 01                                    	SHUFPS XMM3,XMM1,0x1
  00b7d650:	0f 58 c3                                       	ADDPS XMM0,XMM3
  00b7d653:	0f 58 c1                                       	ADDPS XMM0,XMM1
  00b7d656:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b7d65a:	0f 52 d8                                       	RSQRTPS XMM3,XMM0
  00b7d65d:	0f 28 eb                                       	MOVAPS XMM5,XMM3
  00b7d660:	0f 59 eb                                       	MULPS XMM5,XMM3
  00b7d663:	0f 59 e8                                       	MULPS XMM5,XMM0
  00b7d666:	0f 28 fb                                       	MOVAPS XMM7,XMM3
  00b7d669:	0f 28 cc                                       	MOVAPS XMM1,XMM4
  00b7d66c:	0f 5c cd                                       	SUBPS XMM1,XMM5
  00b7d66f:	0f 28 ac 24 60 02 00 00                        	MOVAPS XMM5,xmmword ptr [ESP + 0x260]
  00b7d677:	0f 59 fd                                       	MULPS XMM7,XMM5
  00b7d67a:	0f 59 cf                                       	MULPS XMM1,XMM7
  00b7d67d:	0f 58 cb                                       	ADDPS XMM1,XMM3
  00b7d680:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  00b7d683:	0f 59 d9                                       	MULPS XMM3,XMM1
  00b7d686:	0f 59 d8                                       	MULPS XMM3,XMM0
  00b7d689:	0f 28 c4                                       	MOVAPS XMM0,XMM4
  00b7d68c:	0f 5c c3                                       	SUBPS XMM0,XMM3
  00b7d68f:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  00b7d692:	0f 59 dd                                       	MULPS XMM3,XMM5
  00b7d695:	0f 59 c3                                       	MULPS XMM0,XMM3
  00b7d698:	0f 58 c1                                       	ADDPS XMM0,XMM1
  00b7d69b:	0f 59 c2                                       	MULPS XMM0,XMM2
  00b7d69e:	0f c6 c0 55                                    	SHUFPS XMM0,XMM0,0x55
  00b7d6a2:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00b7d6a5:	0f 59 8c 24 c0 01 00 00                        	MULPS XMM1,xmmword ptr [ESP + 0x1c0]
  00b7d6ad:	0f 5f c8                                       	MAXPS XMM1,XMM0
  00b7d6b0:	f3 0f 10 84 24 40 02 00 00                     	MOVSS XMM0,dword ptr [ESP + 0x240]
  00b7d6b9:	f3 0f 11 84 24 20 02 00 00                     	MOVSS dword ptr [ESP + 0x220],XMM0
  00b7d6c2:	f3 0f 10 84 24 20 02 00 00                     	MOVSS XMM0,dword ptr [ESP + 0x220]
  00b7d6cb:	f3 0f 11 8c 24 d0 01 00 00                     	MOVSS dword ptr [ESP + 0x1d0],XMM1
  00b7d6d4:	0f 2f 84 24 d0 01 00 00                        	COMISS XMM0,dword ptr [ESP + 0x1d0]
  00b7d6dc:	0f 87 ae 06 00 00                              	JA 0x00b7dd90
  00b7d6e2:	8a 84 24 10 03 00 00                           	MOV AL,byte ptr [ESP + 0x310]
  00b7d6e9:	8a 8c 24 d0 02 00 00                           	MOV CL,byte ptr [ESP + 0x2d0]
  00b7d6f0:	8a 94 24 90 02 00 00                           	MOV DL,byte ptr [ESP + 0x290]
  00b7d6f7:	8a d8                                          	MOV BL,AL
  00b7d6f9:	0a d9                                          	OR BL,CL
  00b7d6fb:	0a da                                          	OR BL,DL
  00b7d6fd:	0f 85 fe 01 00 00                              	JNZ 0x00b7d901
  00b7d703:	8b 5c 24 44                                    	MOV EBX,dword ptr [ESP + 0x44]
  00b7d707:	8d b4 24 80 02 00 00                           	LEA ESI,[ESP + 0x280]
  00b7d70e:	c7 44 24 18 03 00 00 00                        	MOV dword ptr [ESP + 0x18],0x3
  00b7d716:	0f b7 7e 14                                    	MOVZX EDI,word ptr [ESI + 0x14]
  00b7d71a:	0f b7 c7                                       	MOVZX EAX,DI
  00b7d71d:	33 d2                                          	XOR EDX,EDX
  00b7d71f:	f7 74 24 48                                    	DIV dword ptr [ESP + 0x48]
  00b7d723:	8b 04 93                                       	MOV EAX,dword ptr [EBX + EDX*0x4]
  00b7d726:	85 c0                                          	TEST EAX,EAX
  00b7d728:	8d 0c 93                                       	LEA ECX,[EBX + EDX*0x4]
  00b7d72b:	74 0f                                          	JZ 0x00b7d73c
  00b7d72d:	8d 49 00                                       	LEA ECX,[ECX]
  00b7d730:	66 3b 38                                       	CMP DI,word ptr [EAX]
  00b7d733:	74 3d                                          	JZ 0x00b7d772
  00b7d735:	8b 40 04                                       	MOV EAX,dword ptr [EAX + 0x4]
  00b7d738:	85 c0                                          	TEST EAX,EAX
  00b7d73a:	75 f4                                          	JNZ 0x00b7d730
  00b7d73c:	8b 44 24 48                                    	MOV EAX,dword ptr [ESP + 0x48]
  00b7d740:	8b 0c 83                                       	MOV ECX,dword ptr [EBX + EAX*0x4]
  00b7d743:	8d 04 83                                       	LEA EAX,[EBX + EAX*0x4]
  00b7d746:	89 84 24 f4 00 00 00                           	MOV dword ptr [ESP + 0xf4],EAX
  00b7d74d:	89 8c 24 f0 00 00 00                           	MOV dword ptr [ESP + 0xf0],ECX
  00b7d754:	8d 84 24 f0 00 00 00                           	LEA EAX,[ESP + 0xf0]
  00b7d75b:	8b 4c 24 48                                    	MOV ECX,dword ptr [ESP + 0x48]
  00b7d75f:	8b 00                                          	MOV EAX,dword ptr [EAX]
  00b7d761:	3b 04 8b                                       	CMP EAX,dword ptr [EBX + ECX*0x4]
  00b7d764:	8d 0c 8b                                       	LEA ECX,[EBX + ECX*0x4]
  00b7d767:	74 20                                          	JZ 0x00b7d789
  00b7d769:	0f b7 40 02                                    	MOVZX EAX,word ptr [EAX + 0x2]
  00b7d76d:	e9 46 01 00 00                                 	JMP 0x00b7d8b8
  00b7d772:	89 84 24 18 01 00 00                           	MOV dword ptr [ESP + 0x118],EAX
  00b7d779:	89 8c 24 1c 01 00 00                           	MOV dword ptr [ESP + 0x11c],ECX
  00b7d780:	8d 84 24 18 01 00 00                           	LEA EAX,[ESP + 0x118]
  00b7d787:	eb d2                                          	JMP 0x00b7d75b
  00b7d789:	8b 04 93                                       	MOV EAX,dword ptr [EBX + EDX*0x4]
  00b7d78c:	85 c0                                          	TEST EAX,EAX
  00b7d78e:	8d 14 93                                       	LEA EDX,[EBX + EDX*0x4]
  00b7d791:	74 0c                                          	JZ 0x00b7d79f
  00b7d793:	66 3b 38                                       	CMP DI,word ptr [EAX]
  00b7d796:	74 29                                          	JZ 0x00b7d7c1
  00b7d798:	8b 40 04                                       	MOV EAX,dword ptr [EAX + 0x4]
  00b7d79b:	85 c0                                          	TEST EAX,EAX
  00b7d79d:	75 f4                                          	JNZ 0x00b7d793
  00b7d79f:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00b7d7a1:	89 94 24 e0 00 00 00                           	MOV dword ptr [ESP + 0xe0],EDX
  00b7d7a8:	89 8c 24 e4 00 00 00                           	MOV dword ptr [ESP + 0xe4],ECX
  00b7d7af:	8d 84 24 e0 00 00 00                           	LEA EAX,[ESP + 0xe0]
  00b7d7b6:	8b 00                                          	MOV EAX,dword ptr [EAX]
  00b7d7b8:	3b 01                                          	CMP EAX,dword ptr [ECX]
  00b7d7ba:	74 1c                                          	JZ 0x00b7d7d8
  00b7d7bc:	8d 78 02                                       	LEA EDI,[EAX + 0x2]
  00b7d7bf:	eb 56                                          	JMP 0x00b7d817
  00b7d7c1:	89 84 24 10 01 00 00                           	MOV dword ptr [ESP + 0x110],EAX
  00b7d7c8:	89 94 24 14 01 00 00                           	MOV dword ptr [ESP + 0x114],EDX
  00b7d7cf:	8d 84 24 10 01 00 00                           	LEA EAX,[ESP + 0x110]
  00b7d7d6:	eb de                                          	JMP 0x00b7d7b6
  00b7d7d8:	c6 84 24 ac 00 00 00 00                        	MOV byte ptr [ESP + 0xac],0x0
  00b7d7e0:	8b 84 24 ac 00 00 00                           	MOV EAX,dword ptr [ESP + 0xac]
  00b7d7e7:	50                                             	PUSH EAX
  00b7d7e8:	8d 4c 24 68                                    	LEA ECX,[ESP + 0x68]
  00b7d7ec:	51                                             	PUSH ECX
  00b7d7ed:	8d 94 24 b0 01 00 00                           	LEA EDX,[ESP + 0x1b0]
  00b7d7f4:	52                                             	PUSH EDX
  00b7d7f5:	8d 4c 24 4c                                    	LEA ECX,[ESP + 0x4c]
  00b7d7f9:	66 89 7c 24 70                                 	MOV word ptr [ESP + 0x70],DI
  00b7d7fe:	66 c7 44 24 72 00 00                           	MOV word ptr [ESP + 0x72],0x0
  00b7d805:	e8 76 3d 1a 00                                 	CALL 0x00d21580
  00b7d80a:	8b bc 24 a8 01 00 00                           	MOV EDI,dword ptr [ESP + 0x1a8]
  00b7d811:	0f 57 f6                                       	XORPS XMM6,XMM6
  00b7d814:	83 c7 02                                       	ADD EDI,0x2
  00b7d817:	8b 45 38                                       	MOV EAX,dword ptr [EBP + 0x38]
  00b7d81a:	8b 4d 34                                       	MOV ECX,dword ptr [EBP + 0x34]
  00b7d81d:	8b 55 30                                       	MOV EDX,dword ptr [EBP + 0x30]
  00b7d820:	50                                             	PUSH EAX
  00b7d821:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00b7d829:	51                                             	PUSH ECX
  00b7d82a:	0f 28 0e                                       	MOVAPS XMM1,xmmword ptr [ESI]
  00b7d82d:	52                                             	PUSH EDX
  00b7d82e:	8d 84 24 9c 01 00 00                           	LEA EAX,[ESP + 0x19c]
  00b7d835:	50                                             	PUSH EAX
  00b7d836:	8d 8c 24 80 01 00 00                           	LEA ECX,[ESP + 0x180]
  00b7d83d:	51                                             	PUSH ECX
  00b7d83e:	8b 4d 1c                                       	MOV ECX,dword ptr [EBP + 0x1c]
  00b7d841:	8d 94 24 94 01 00 00                           	LEA EDX,[ESP + 0x194]
  00b7d848:	52                                             	PUSH EDX
  00b7d849:	8d 84 24 78 01 00 00                           	LEA EAX,[ESP + 0x178]
  00b7d850:	50                                             	PUSH EAX
  00b7d851:	51                                             	PUSH ECX
  00b7d852:	8d 56 20                                       	LEA EDX,[ESI + 0x20]
  00b7d855:	52                                             	PUSH EDX
  00b7d856:	8b 55 08                                       	MOV EDX,dword ptr [EBP + 0x8]
  00b7d859:	8d 84 24 14 02 00 00                           	LEA EAX,[ESP + 0x214]
  00b7d860:	50                                             	PUSH EAX
  00b7d861:	8b 44 24 5c                                    	MOV EAX,dword ptr [ESP + 0x5c]
  00b7d865:	8d 4e f0                                       	LEA ECX,[ESI + -0x10]
  00b7d868:	51                                             	PUSH ECX
  00b7d869:	8b 4c 24 68                                    	MOV ECX,dword ptr [ESP + 0x68]
  00b7d86d:	f3 0f 11 b4 24 78 01 00 00                     	MOVSS dword ptr [ESP + 0x178],XMM6
  00b7d876:	f3 0f 11 b4 24 74 01 00 00                     	MOVSS dword ptr [ESP + 0x174],XMM6
  00b7d87f:	f3 0f 11 84 24 70 01 00 00                     	MOVSS dword ptr [ESP + 0x170],XMM0
  00b7d888:	f3 0f 11 b4 24 6c 01 00 00                     	MOVSS dword ptr [ESP + 0x16c],XMM6
  00b7d891:	0f 28 84 24 6c 01 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x16c]
  00b7d899:	52                                             	PUSH EDX
  00b7d89a:	0f 5c c8                                       	SUBPS XMM1,XMM0
  00b7d89d:	50                                             	PUSH EAX
  00b7d89e:	0f 29 8c 24 24 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x224],XMM1
  00b7d8a6:	e8 65 ae ff ff                                 	CALL 0x00b78710
  00b7d8ab:	0f 57 f6                                       	XORPS XMM6,XMM6
  00b7d8ae:	66 89 07                                       	MOV word ptr [EDI],AX
  00b7d8b1:	8b 5c 24 44                                    	MOV EBX,dword ptr [ESP + 0x44]
  00b7d8b5:	0f b7 c0                                       	MOVZX EAX,AX
  00b7d8b8:	8b 54 24 24                                    	MOV EDX,dword ptr [ESP + 0x24]
  00b7d8bc:	3b 54 24 28                                    	CMP EDX,dword ptr [ESP + 0x28]
  00b7d8c0:	89 44 24 14                                    	MOV dword ptr [ESP + 0x14],EAX
  00b7d8c4:	73 12                                          	JNC 0x00b7d8d8
  00b7d8c6:	8b ca                                          	MOV ECX,EDX
  00b7d8c8:	83 c2 02                                       	ADD EDX,0x2
  00b7d8cb:	85 c9                                          	TEST ECX,ECX
  00b7d8cd:	89 54 24 24                                    	MOV dword ptr [ESP + 0x24],EDX
  00b7d8d1:	74 1b                                          	JZ 0x00b7d8ee
  00b7d8d3:	66 89 01                                       	MOV word ptr [ECX],AX
  00b7d8d6:	eb 12                                          	JMP 0x00b7d8ea
  00b7d8d8:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00b7d8dc:	51                                             	PUSH ECX
  00b7d8dd:	52                                             	PUSH EDX
  00b7d8de:	8d 4c 24 28                                    	LEA ECX,[ESP + 0x28]
  00b7d8e2:	e8 49 4e a5 ff                                 	CALL 0x005d2730
  00b7d8e7:	0f 57 f6                                       	XORPS XMM6,XMM6
  00b7d8ea:	8b 5c 24 44                                    	MOV EBX,dword ptr [ESP + 0x44]
  00b7d8ee:	83 c6 40                                       	ADD ESI,0x40
  00b7d8f1:	83 6c 24 18 01                                 	SUB dword ptr [ESP + 0x18],0x1
  00b7d8f6:	0f 85 1a fe ff ff                              	JNZ 0x00b7d716
  00b7d8fc:	e9 8f 04 00 00                                 	JMP 0x00b7dd90
  00b7d901:	22 c1                                          	AND AL,CL
  00b7d903:	84 c2                                          	TEST DL,AL
  00b7d905:	0f 85 85 04 00 00                              	JNZ 0x00b7dd90
  00b7d90b:	33 db                                          	XOR EBX,EBX
  00b7d90d:	33 c9                                          	XOR ECX,ECX
  00b7d90f:	89 5c 24 6c                                    	MOV dword ptr [ESP + 0x6c],EBX
  00b7d913:	89 4c 24 70                                    	MOV dword ptr [ESP + 0x70],ECX
  00b7d917:	89 5c 24 74                                    	MOV dword ptr [ESP + 0x74],EBX
  00b7d91b:	c7 44 24 78 54 00 07 01                        	MOV dword ptr [ESP + 0x78],0x1070054
  00b7d923:	89 9c 24 8c 00 00 00                           	MOV dword ptr [ESP + 0x8c],EBX
  00b7d92a:	89 9c 24 90 00 00 00                           	MOV dword ptr [ESP + 0x90],EBX
  00b7d931:	89 9c 24 94 00 00 00                           	MOV dword ptr [ESP + 0x94],EBX
  00b7d938:	c7 84 24 98 00 00 00 94 06 07 01               	MOV dword ptr [ESP + 0x98],0x1070694
  00b7d943:	8d b4 24 90 02 00 00                           	LEA ESI,[ESP + 0x290]
  00b7d94a:	8d 7b 03                                       	LEA EDI,[EBX + 0x3]
  00b7d94d:	3b 4c 24 74                                    	CMP ECX,dword ptr [ESP + 0x74]
  00b7d951:	73 31                                          	JNC 0x00b7d984
  00b7d953:	8b c1                                          	MOV EAX,ECX
  00b7d955:	83 c1 40                                       	ADD ECX,0x40
  00b7d958:	3b c3                                          	CMP EAX,EBX
  00b7d95a:	89 4c 24 70                                    	MOV dword ptr [ESP + 0x70],ECX
  00b7d95e:	74 36                                          	JZ 0x00b7d996
  00b7d960:	0f 28 46 e0                                    	MOVAPS XMM0,xmmword ptr [ESI + -0x20]
  00b7d964:	0f 29 00                                       	MOVAPS xmmword ptr [EAX],XMM0
  00b7d967:	0f 28 46 f0                                    	MOVAPS XMM0,xmmword ptr [ESI + -0x10]
  00b7d96b:	0f 29 40 10                                    	MOVAPS xmmword ptr [EAX + 0x10],XMM0
  00b7d96f:	8a 16                                          	MOV DL,byte ptr [ESI]
  00b7d971:	88 50 20                                       	MOV byte ptr [EAX + 0x20],DL
  00b7d974:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  00b7d977:	89 50 24                                       	MOV dword ptr [EAX + 0x24],EDX
  00b7d97a:	0f 28 46 10                                    	MOVAPS XMM0,xmmword ptr [ESI + 0x10]
  00b7d97e:	0f 29 40 30                                    	MOVAPS xmmword ptr [EAX + 0x30],XMM0
  00b7d982:	eb 12                                          	JMP 0x00b7d996
  00b7d984:	8d 46 e0                                       	LEA EAX,[ESI + -0x20]
  00b7d987:	50                                             	PUSH EAX
  00b7d988:	51                                             	PUSH ECX
  00b7d989:	8d 4c 24 74                                    	LEA ECX,[ESP + 0x74]
  00b7d98d:	e8 fe 60 ff ff                                 	CALL 0x00b73a90
  00b7d992:	8b 4c 24 70                                    	MOV ECX,dword ptr [ESP + 0x70]
  00b7d996:	83 c6 40                                       	ADD ESI,0x40
  00b7d999:	83 ef 01                                       	SUB EDI,0x1
  00b7d99c:	75 af                                          	JNZ 0x00b7d94d
  00b7d99e:	8b 45 14                                       	MOV EAX,dword ptr [EBP + 0x14]
  00b7d9a1:	8d 8c 24 8c 00 00 00                           	LEA ECX,[ESP + 0x8c]
  00b7d9a8:	51                                             	PUSH ECX
  00b7d9a9:	8d 54 24 70                                    	LEA EDX,[ESP + 0x70]
  00b7d9ad:	52                                             	PUSH EDX
  00b7d9ae:	50                                             	PUSH EAX
  00b7d9af:	e8 3c f3 ff ff                                 	CALL 0x00b7ccf0
  00b7d9b4:	8b 84 24 9c 00 00 00                           	MOV EAX,dword ptr [ESP + 0x9c]
  00b7d9bb:	2b 84 24 98 00 00 00                           	SUB EAX,dword ptr [ESP + 0x98]
  00b7d9c2:	83 c4 0c                                       	ADD ESP,0xc
  00b7d9c5:	c1 f8 06                                       	SAR EAX,0x6
  00b7d9c8:	83 f8 03                                       	CMP EAX,0x3
  00b7d9cb:	89 44 24 14                                    	MOV dword ptr [ESP + 0x14],EAX
  00b7d9cf:	0f 82 96 03 00 00                              	JC 0x00b7dd6b
  00b7d9d5:	8b f0                                          	MOV ESI,EAX
  00b7d9d7:	85 f6                                          	TEST ESI,ESI
  00b7d9d9:	74 25                                          	JZ 0x00b7da00
  00b7d9db:	68 e7 00 00 00                                 	PUSH 0xe7
  00b7d9e0:	68 88 99 f9 00                                 	PUSH 0xf99988
  00b7d9e5:	57                                             	PUSH EDI
  00b7d9e6:	57                                             	PUSH EDI
  00b7d9e7:	8d 0c 36                                       	LEA ECX,[ESI + ESI*0x1]
  00b7d9ea:	68 ac 06 07 01                                 	PUSH 0x10706ac
  00b7d9ef:	51                                             	PUSH ECX
  00b7d9f0:	e8 0b 6b 96 ff                                 	CALL 0x004e4500
  00b7d9f5:	83 c4 18                                       	ADD ESP,0x18
  00b7d9f8:	8b f8                                          	MOV EDI,EAX
  00b7d9fa:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00b7d9fe:	eb 06                                          	JMP 0x00b7da06
  00b7da00:	33 ff                                          	XOR EDI,EDI
  00b7da02:	89 7c 24 1c                                    	MOV dword ptr [ESP + 0x1c],EDI
  00b7da06:	85 f6                                          	TEST ESI,ESI
  00b7da08:	76 0d                                          	JBE 0x00b7da17
  00b7da0a:	33 c0                                          	XOR EAX,EAX
  00b7da0c:	8b ce                                          	MOV ECX,ESI
  00b7da0e:	d1 e9                                          	SHR ECX,0x1
  00b7da10:	f3 ab                                          	STOSD.REP ES:EDI
  00b7da12:	13 c9                                          	ADC ECX,ECX
  00b7da14:	66 f3 ab                                       	STOSW.REP ES:EDI
  00b7da17:	85 f6                                          	TEST ESI,ESI
  00b7da19:	89 5c 24 30                                    	MOV dword ptr [ESP + 0x30],EBX
  00b7da1d:	0f 86 90 02 00 00                              	JBE 0x00b7dcb3
  00b7da23:	8b b4 24 8c 00 00 00                           	MOV ESI,dword ptr [ESP + 0x8c]
  00b7da2a:	83 c6 10                                       	ADD ESI,0x10
  00b7da2d:	8d 49 00                                       	LEA ECX,[ECX]
  00b7da30:	8b 46 14                                       	MOV EAX,dword ptr [ESI + 0x14]
  00b7da33:	83 f8 ff                                       	CMP EAX,-0x1
  00b7da36:	89 44 24 18                                    	MOV dword ptr [ESP + 0x18],EAX
  00b7da3a:	0f 84 b8 01 00 00                              	JZ 0x00b7dbf8
  00b7da40:	8b 5c 24 48                                    	MOV EBX,dword ptr [ESP + 0x48]
  00b7da44:	0f b7 c0                                       	MOVZX EAX,AX
  00b7da47:	33 d2                                          	XOR EDX,EDX
  00b7da49:	f7 f3                                          	DIV EBX
  00b7da4b:	8b 4c 24 44                                    	MOV ECX,dword ptr [ESP + 0x44]
  00b7da4f:	8b 04 91                                       	MOV EAX,dword ptr [ECX + EDX*0x4]
  00b7da52:	85 c0                                          	TEST EAX,EAX
  00b7da54:	8d 3c 91                                       	LEA EDI,[ECX + EDX*0x4]
  00b7da57:	89 94 24 b4 00 00 00                           	MOV dword ptr [ESP + 0xb4],EDX
  00b7da5e:	8b 54 24 18                                    	MOV EDX,dword ptr [ESP + 0x18]
  00b7da62:	74 0c                                          	JZ 0x00b7da70
  00b7da64:	66 3b 10                                       	CMP DX,word ptr [EAX]
  00b7da67:	74 41                                          	JZ 0x00b7daaa
  00b7da69:	8b 40 04                                       	MOV EAX,dword ptr [EAX + 0x4]
  00b7da6c:	85 c0                                          	TEST EAX,EAX
  00b7da6e:	75 f4                                          	JNZ 0x00b7da64
  00b7da70:	8b 3c 99                                       	MOV EDI,dword ptr [ECX + EBX*0x4]
  00b7da73:	8d 04 99                                       	LEA EAX,[ECX + EBX*0x4]
  00b7da76:	89 84 24 0c 01 00 00                           	MOV dword ptr [ESP + 0x10c],EAX
  00b7da7d:	89 bc 24 08 01 00 00                           	MOV dword ptr [ESP + 0x108],EDI
  00b7da84:	8d 84 24 08 01 00 00                           	LEA EAX,[ESP + 0x108]
  00b7da8b:	8b 00                                          	MOV EAX,dword ptr [EAX]
  00b7da8d:	3b 04 99                                       	CMP EAX,dword ptr [ECX + EBX*0x4]
  00b7da90:	8d 1c 99                                       	LEA EBX,[ECX + EBX*0x4]
  00b7da93:	74 2c                                          	JZ 0x00b7dac1
  00b7da95:	66 8b 50 02                                    	MOV DX,word ptr [EAX + 0x2]
  00b7da99:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00b7da9d:	8b 4c 24 30                                    	MOV ECX,dword ptr [ESP + 0x30]
  00b7daa1:	66 89 14 48                                    	MOV word ptr [EAX + ECX*0x2],DX
  00b7daa5:	e9 f1 01 00 00                                 	JMP 0x00b7dc9b
  00b7daaa:	89 84 24 e8 00 00 00                           	MOV dword ptr [ESP + 0xe8],EAX
  00b7dab1:	89 bc 24 ec 00 00 00                           	MOV dword ptr [ESP + 0xec],EDI
  00b7dab8:	8d 84 24 e8 00 00 00                           	LEA EAX,[ESP + 0xe8]
  00b7dabf:	eb ca                                          	JMP 0x00b7da8b
  00b7dac1:	8b 84 24 b4 00 00 00                           	MOV EAX,dword ptr [ESP + 0xb4]
  00b7dac8:	8d 0c 81                                       	LEA ECX,[ECX + EAX*0x4]
  00b7dacb:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00b7dacd:	85 c0                                          	TEST EAX,EAX
  00b7dacf:	74 10                                          	JZ 0x00b7dae1
  00b7dad1:	66 3b 10                                       	CMP DX,word ptr [EAX]
  00b7dad4:	0f 84 04 01 00 00                              	JZ 0x00b7dbde
  00b7dada:	8b 40 04                                       	MOV EAX,dword ptr [EAX + 0x4]
  00b7dadd:	85 c0                                          	TEST EAX,EAX
  00b7dadf:	75 f0                                          	JNZ 0x00b7dad1
  00b7dae1:	8b 0b                                          	MOV ECX,dword ptr [EBX]
  00b7dae3:	89 8c 24 00 01 00 00                           	MOV dword ptr [ESP + 0x100],ECX
  00b7daea:	89 9c 24 04 01 00 00                           	MOV dword ptr [ESP + 0x104],EBX
  00b7daf1:	8d 84 24 00 01 00 00                           	LEA EAX,[ESP + 0x100]
  00b7daf8:	8b 38                                          	MOV EDI,dword ptr [EAX]
  00b7dafa:	3b 3b                                          	CMP EDI,dword ptr [EBX]
  00b7dafc:	75 3e                                          	JNZ 0x00b7db3c
  00b7dafe:	66 8b 54 24 18                                 	MOV DX,word ptr [ESP + 0x18]
  00b7db03:	c6 84 24 bc 00 00 00 00                        	MOV byte ptr [ESP + 0xbc],0x0
  00b7db0b:	8b 84 24 bc 00 00 00                           	MOV EAX,dword ptr [ESP + 0xbc]
  00b7db12:	50                                             	PUSH EAX
  00b7db13:	8d 4c 24 64                                    	LEA ECX,[ESP + 0x64]
  00b7db17:	66 89 54 24 64                                 	MOV word ptr [ESP + 0x64],DX
  00b7db1c:	51                                             	PUSH ECX
  00b7db1d:	8d 94 24 bc 01 00 00                           	LEA EDX,[ESP + 0x1bc]
  00b7db24:	52                                             	PUSH EDX
  00b7db25:	8d 4c 24 4c                                    	LEA ECX,[ESP + 0x4c]
  00b7db29:	66 c7 44 24 6e 00 00                           	MOV word ptr [ESP + 0x6e],0x0
  00b7db30:	e8 4b 3a 1a 00                                 	CALL 0x00d21580
  00b7db35:	8b bc 24 b4 01 00 00                           	MOV EDI,dword ptr [ESP + 0x1b4]
  00b7db3c:	8b 45 38                                       	MOV EAX,dword ptr [EBP + 0x38]
  00b7db3f:	8b 4d 34                                       	MOV ECX,dword ptr [EBP + 0x34]
  00b7db42:	8b 55 30                                       	MOV EDX,dword ptr [EBP + 0x30]
  00b7db45:	50                                             	PUSH EAX
  00b7db46:	0f 57 c0                                       	XORPS XMM0,XMM0
  00b7db49:	f3 0f 10 0d f8 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f8]
  00b7db51:	51                                             	PUSH ECX
  00b7db52:	52                                             	PUSH EDX
  00b7db53:	8d 84 24 9c 01 00 00                           	LEA EAX,[ESP + 0x19c]
  00b7db5a:	50                                             	PUSH EAX
  00b7db5b:	8d 8c 24 80 01 00 00                           	LEA ECX,[ESP + 0x180]
  00b7db62:	51                                             	PUSH ECX
  00b7db63:	8b 4d 1c                                       	MOV ECX,dword ptr [EBP + 0x1c]
  00b7db66:	8d 94 24 94 01 00 00                           	LEA EDX,[ESP + 0x194]
  00b7db6d:	52                                             	PUSH EDX
  00b7db6e:	8d 84 24 78 01 00 00                           	LEA EAX,[ESP + 0x178]
  00b7db75:	50                                             	PUSH EAX
  00b7db76:	51                                             	PUSH ECX
  00b7db77:	8d 56 20                                       	LEA EDX,[ESI + 0x20]
  00b7db7a:	52                                             	PUSH EDX
  00b7db7b:	8b 55 08                                       	MOV EDX,dword ptr [EBP + 0x8]
  00b7db7e:	8d 84 24 34 02 00 00                           	LEA EAX,[ESP + 0x234]
  00b7db85:	50                                             	PUSH EAX
  00b7db86:	8b 44 24 5c                                    	MOV EAX,dword ptr [ESP + 0x5c]
  00b7db8a:	8d 4e f0                                       	LEA ECX,[ESI + -0x10]
  00b7db8d:	51                                             	PUSH ECX
  00b7db8e:	8b 4c 24 68                                    	MOV ECX,dword ptr [ESP + 0x68]
  00b7db92:	f3 0f 11 8c 24 f0 00 00 00                     	MOVSS dword ptr [ESP + 0xf0],XMM1
  00b7db9b:	0f 28 0e                                       	MOVAPS XMM1,xmmword ptr [ESI]
  00b7db9e:	f3 0f 11 84 24 f8 00 00 00                     	MOVSS dword ptr [ESP + 0xf8],XMM0
  00b7dba7:	f3 0f 11 84 24 f4 00 00 00                     	MOVSS dword ptr [ESP + 0xf4],XMM0
  00b7dbb0:	f3 0f 11 84 24 ec 00 00 00                     	MOVSS dword ptr [ESP + 0xec],XMM0
  00b7dbb9:	0f 28 84 24 ec 00 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0xec]
  00b7dbc1:	52                                             	PUSH EDX
  00b7dbc2:	0f 5c c8                                       	SUBPS XMM1,XMM0
  00b7dbc5:	50                                             	PUSH EAX
  00b7dbc6:	83 c7 02                                       	ADD EDI,0x2
  00b7dbc9:	0f 29 8c 24 44 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x244],XMM1
  00b7dbd1:	e8 3a ab ff ff                                 	CALL 0x00b78710
  00b7dbd6:	66 89 07                                       	MOV word ptr [EDI],AX
  00b7dbd9:	e9 b1 00 00 00                                 	JMP 0x00b7dc8f
  00b7dbde:	89 84 24 f8 00 00 00                           	MOV dword ptr [ESP + 0xf8],EAX
  00b7dbe5:	89 8c 24 fc 00 00 00                           	MOV dword ptr [ESP + 0xfc],ECX
  00b7dbec:	8d 84 24 f8 00 00 00                           	LEA EAX,[ESP + 0xf8]
  00b7dbf3:	e9 00 ff ff ff                                 	JMP 0x00b7daf8
  00b7dbf8:	8b 45 38                                       	MOV EAX,dword ptr [EBP + 0x38]
  00b7dbfb:	8b 4d 34                                       	MOV ECX,dword ptr [EBP + 0x34]
  00b7dbfe:	8b 55 30                                       	MOV EDX,dword ptr [EBP + 0x30]
  00b7dc01:	50                                             	PUSH EAX
  00b7dc02:	0f 57 c0                                       	XORPS XMM0,XMM0
  00b7dc05:	f3 0f 10 0d f8 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f8]
  00b7dc0d:	51                                             	PUSH ECX
  00b7dc0e:	52                                             	PUSH EDX
  00b7dc0f:	8d 84 24 9c 01 00 00                           	LEA EAX,[ESP + 0x19c]
  00b7dc16:	50                                             	PUSH EAX
  00b7dc17:	8d 8c 24 80 01 00 00                           	LEA ECX,[ESP + 0x180]
  00b7dc1e:	51                                             	PUSH ECX
  00b7dc1f:	8b 4d 1c                                       	MOV ECX,dword ptr [EBP + 0x1c]
  00b7dc22:	8d 94 24 94 01 00 00                           	LEA EDX,[ESP + 0x194]
  00b7dc29:	52                                             	PUSH EDX
  00b7dc2a:	8d 84 24 78 01 00 00                           	LEA EAX,[ESP + 0x178]
  00b7dc31:	50                                             	PUSH EAX
  00b7dc32:	51                                             	PUSH ECX
  00b7dc33:	8d 56 20                                       	LEA EDX,[ESI + 0x20]
  00b7dc36:	52                                             	PUSH EDX
  00b7dc37:	8b 55 08                                       	MOV EDX,dword ptr [EBP + 0x8]
  00b7dc3a:	8d 84 24 54 02 00 00                           	LEA EAX,[ESP + 0x254]
  00b7dc41:	50                                             	PUSH EAX
  00b7dc42:	8b 44 24 5c                                    	MOV EAX,dword ptr [ESP + 0x5c]
  00b7dc46:	8d 4e f0                                       	LEA ECX,[ESI + -0x10]
  00b7dc49:	51                                             	PUSH ECX
  00b7dc4a:	8b 4c 24 68                                    	MOV ECX,dword ptr [ESP + 0x68]
  00b7dc4e:	f3 0f 11 8c 24 00 01 00 00                     	MOVSS dword ptr [ESP + 0x100],XMM1
  00b7dc57:	0f 28 0e                                       	MOVAPS XMM1,xmmword ptr [ESI]
  00b7dc5a:	f3 0f 11 84 24 08 01 00 00                     	MOVSS dword ptr [ESP + 0x108],XMM0
  00b7dc63:	f3 0f 11 84 24 04 01 00 00                     	MOVSS dword ptr [ESP + 0x104],XMM0
  00b7dc6c:	f3 0f 11 84 24 fc 00 00 00                     	MOVSS dword ptr [ESP + 0xfc],XMM0
  00b7dc75:	0f 28 84 24 fc 00 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0xfc]
  00b7dc7d:	52                                             	PUSH EDX
  00b7dc7e:	0f 5c c8                                       	SUBPS XMM1,XMM0
  00b7dc81:	50                                             	PUSH EAX
  00b7dc82:	0f 29 8c 24 64 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x264],XMM1
  00b7dc8a:	e8 81 aa ff ff                                 	CALL 0x00b78710
  00b7dc8f:	8b 54 24 30                                    	MOV EDX,dword ptr [ESP + 0x30]
  00b7dc93:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00b7dc97:	66 89 04 51                                    	MOV word ptr [ECX + EDX*0x2],AX
  00b7dc9b:	8b 44 24 30                                    	MOV EAX,dword ptr [ESP + 0x30]
  00b7dc9f:	83 c0 01                                       	ADD EAX,0x1
  00b7dca2:	83 c6 40                                       	ADD ESI,0x40
  00b7dca5:	3b 44 24 14                                    	CMP EAX,dword ptr [ESP + 0x14]
  00b7dca9:	89 44 24 30                                    	MOV dword ptr [ESP + 0x30],EAX
  00b7dcad:	0f 82 7d fd ff ff                              	JC 0x00b7da30
  00b7dcb3:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00b7dcb7:	83 f8 02                                       	CMP EAX,0x2
  00b7dcba:	8b 7c 24 1c                                    	MOV EDI,dword ptr [ESP + 0x1c]
  00b7dcbe:	0f 86 9a 00 00 00                              	JBE 0x00b7dd5e
  00b7dcc4:	8d 58 fe                                       	LEA EBX,[EAX + -0x2]
  00b7dcc7:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00b7dccb:	8d 77 04                                       	LEA ESI,[EDI + 0x4]
  00b7dcce:	8b ff                                          	MOV EDI,EDI
  00b7dcd0:	3b 44 24 28                                    	CMP EAX,dword ptr [ESP + 0x28]
  00b7dcd4:	73 15                                          	JNC 0x00b7dceb
  00b7dcd6:	8b c8                                          	MOV ECX,EAX
  00b7dcd8:	83 c0 02                                       	ADD EAX,0x2
  00b7dcdb:	85 c9                                          	TEST ECX,ECX
  00b7dcdd:	89 44 24 24                                    	MOV dword ptr [ESP + 0x24],EAX
  00b7dce1:	74 17                                          	JZ 0x00b7dcfa
  00b7dce3:	66 8b 17                                       	MOV DX,word ptr [EDI]
  00b7dce6:	66 89 11                                       	MOV word ptr [ECX],DX
  00b7dce9:	eb 0f                                          	JMP 0x00b7dcfa
  00b7dceb:	57                                             	PUSH EDI
  00b7dcec:	50                                             	PUSH EAX
  00b7dced:	8d 4c 24 28                                    	LEA ECX,[ESP + 0x28]
  00b7dcf1:	e8 3a 4a a5 ff                                 	CALL 0x005d2730
  00b7dcf6:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00b7dcfa:	3b 44 24 28                                    	CMP EAX,dword ptr [ESP + 0x28]
  00b7dcfe:	73 16                                          	JNC 0x00b7dd16
  00b7dd00:	8b c8                                          	MOV ECX,EAX
  00b7dd02:	83 c0 02                                       	ADD EAX,0x2
  00b7dd05:	85 c9                                          	TEST ECX,ECX
  00b7dd07:	89 44 24 24                                    	MOV dword ptr [ESP + 0x24],EAX
  00b7dd0b:	74 1b                                          	JZ 0x00b7dd28
  00b7dd0d:	66 8b 56 fe                                    	MOV DX,word ptr [ESI + -0x2]
  00b7dd11:	66 89 11                                       	MOV word ptr [ECX],DX
  00b7dd14:	eb 12                                          	JMP 0x00b7dd28
  00b7dd16:	8d 4e fe                                       	LEA ECX,[ESI + -0x2]
  00b7dd19:	51                                             	PUSH ECX
  00b7dd1a:	50                                             	PUSH EAX
  00b7dd1b:	8d 4c 24 28                                    	LEA ECX,[ESP + 0x28]
  00b7dd1f:	e8 0c 4a a5 ff                                 	CALL 0x005d2730
  00b7dd24:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00b7dd28:	3b 44 24 28                                    	CMP EAX,dword ptr [ESP + 0x28]
  00b7dd2c:	73 15                                          	JNC 0x00b7dd43
  00b7dd2e:	8b c8                                          	MOV ECX,EAX
  00b7dd30:	83 c0 02                                       	ADD EAX,0x2
  00b7dd33:	85 c9                                          	TEST ECX,ECX
  00b7dd35:	89 44 24 24                                    	MOV dword ptr [ESP + 0x24],EAX
  00b7dd39:	74 17                                          	JZ 0x00b7dd52
  00b7dd3b:	66 8b 16                                       	MOV DX,word ptr [ESI]
  00b7dd3e:	66 89 11                                       	MOV word ptr [ECX],DX
  00b7dd41:	eb 0f                                          	JMP 0x00b7dd52
  00b7dd43:	56                                             	PUSH ESI
  00b7dd44:	50                                             	PUSH EAX
  00b7dd45:	8d 4c 24 28                                    	LEA ECX,[ESP + 0x28]
  00b7dd49:	e8 e2 49 a5 ff                                 	CALL 0x005d2730
  00b7dd4e:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00b7dd52:	83 c6 02                                       	ADD ESI,0x2
  00b7dd55:	83 eb 01                                       	SUB EBX,0x1
  00b7dd58:	0f 85 72 ff ff ff                              	JNZ 0x00b7dcd0
  00b7dd5e:	85 ff                                          	TEST EDI,EDI
  00b7dd60:	74 09                                          	JZ 0x00b7dd6b
  00b7dd62:	57                                             	PUSH EDI
  00b7dd63:	e8 78 67 96 ff                                 	CALL 0x004e44e0
  00b7dd68:	83 c4 04                                       	ADD ESP,0x4
  00b7dd6b:	8b 84 24 8c 00 00 00                           	MOV EAX,dword ptr [ESP + 0x8c]
  00b7dd72:	85 c0                                          	TEST EAX,EAX
  00b7dd74:	74 09                                          	JZ 0x00b7dd7f
  00b7dd76:	50                                             	PUSH EAX
  00b7dd77:	e8 64 67 96 ff                                 	CALL 0x004e44e0
  00b7dd7c:	83 c4 04                                       	ADD ESP,0x4
  00b7dd7f:	8b 44 24 6c                                    	MOV EAX,dword ptr [ESP + 0x6c]
  00b7dd83:	85 c0                                          	TEST EAX,EAX
  00b7dd85:	74 09                                          	JZ 0x00b7dd90
  00b7dd87:	50                                             	PUSH EAX
  00b7dd88:	e8 53 67 96 ff                                 	CALL 0x004e44e0
  00b7dd8d:	83 c4 04                                       	ADD ESP,0x4
  00b7dd90:	8b 44 24 38                                    	MOV EAX,dword ptr [ESP + 0x38]
  00b7dd94:	83 c0 03                                       	ADD EAX,0x3
  00b7dd97:	3b 84 24 b8 00 00 00                           	CMP EAX,dword ptr [ESP + 0xb8]
  00b7dd9e:	89 44 24 38                                    	MOV dword ptr [ESP + 0x38],EAX
  00b7dda2:	0f 82 24 f7 ff ff                              	JC 0x00b7d4cc
  00b7dda8:	8b 74 24 24                                    	MOV ESI,dword ptr [ESP + 0x24]
  00b7ddac:	33 db                                          	XOR EBX,EBX
  00b7ddae:	2b 74 24 20                                    	SUB ESI,dword ptr [ESP + 0x20]
  00b7ddb2:	d1 fe                                          	SAR ESI,0x1
  00b7ddb4:	8b c6                                          	MOV EAX,ESI
  00b7ddb6:	74 36                                          	JZ 0x00b7ddee
  00b7ddb8:	8b 74 24 20                                    	MOV ESI,dword ptr [ESP + 0x20]
  00b7ddbc:	8d 48 ff                                       	LEA ECX,[EAX + -0x1]
  00b7ddbf:	b8 ab aa aa aa                                 	MOV EAX,0xaaaaaaab
  00b7ddc4:	f7 e1                                          	MUL ECX
  00b7ddc6:	8b fa                                          	MOV EDI,EDX
  00b7ddc8:	d1 ef                                          	SHR EDI,0x1
  00b7ddca:	83 c6 02                                       	ADD ESI,0x2
  00b7ddcd:	83 c7 01                                       	ADD EDI,0x1
  00b7ddd0:	0f b7 56 02                                    	MOVZX EDX,word ptr [ESI + 0x2]
  00b7ddd4:	0f b7 06                                       	MOVZX EAX,word ptr [ESI]
  00b7ddd7:	0f b7 4e fe                                    	MOVZX ECX,word ptr [ESI + -0x2]
  00b7dddb:	52                                             	PUSH EDX
  00b7dddc:	50                                             	PUSH EAX
  00b7dddd:	51                                             	PUSH ECX
  00b7ddde:	8b 4d 08                                       	MOV ECX,dword ptr [EBP + 0x8]
  00b7dde1:	e8 da 6a b5 ff                                 	CALL 0x006d48c0
  00b7dde6:	83 c6 06                                       	ADD ESI,0x6
  00b7dde9:	83 ef 01                                       	SUB EDI,0x1
  00b7ddec:	75 e2                                          	JNZ 0x00b7ddd0
  00b7ddee:	8b 54 24 48                                    	MOV EDX,dword ptr [ESP + 0x48]
  00b7ddf2:	8b 44 24 44                                    	MOV EAX,dword ptr [ESP + 0x44]
  00b7ddf6:	52                                             	PUSH EDX
  00b7ddf7:	50                                             	PUSH EAX
  00b7ddf8:	8d 4c 24 48                                    	LEA ECX,[ESP + 0x48]
  00b7ddfc:	e8 0f 26 f6 ff                                 	CALL 0x00ae0410
  00b7de01:	83 7c 24 48 01                                 	CMP dword ptr [ESP + 0x48],0x1
  00b7de06:	89 5c 24 4c                                    	MOV dword ptr [ESP + 0x4c],EBX
  00b7de0a:	76 0d                                          	JBE 0x00b7de19
  00b7de0c:	8b 4c 24 44                                    	MOV ECX,dword ptr [ESP + 0x44]
  00b7de10:	51                                             	PUSH ECX
  00b7de11:	e8 ca 66 96 ff                                 	CALL 0x004e44e0
  00b7de16:	83 c4 04                                       	ADD ESP,0x4
  00b7de19:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  00b7de1d:	3b c3                                          	CMP EAX,EBX
  00b7de1f:	74 09                                          	JZ 0x00b7de2a
  00b7de21:	50                                             	PUSH EAX
  00b7de22:	e8 b9 66 96 ff                                 	CALL 0x004e44e0
  00b7de27:	83 c4 04                                       	ADD ESP,0x4
  00b7de2a:	8b 44 24 7c                                    	MOV EAX,dword ptr [ESP + 0x7c]
  00b7de2e:	3b c3                                          	CMP EAX,EBX
  00b7de30:	74 09                                          	JZ 0x00b7de3b
  00b7de32:	50                                             	PUSH EAX
  00b7de33:	e8 a8 66 96 ff                                 	CALL 0x004e44e0
  00b7de38:	83 c4 04                                       	ADD ESP,0x4
  00b7de3b:	5f                                             	POP EDI
  00b7de3c:	5e                                             	POP ESI
  00b7de3d:	5b                                             	POP EBX
  00b7de3e:	8b e5                                          	MOV ESP,EBP
  00b7de40:	5d                                             	POP EBP
  00b7de41:	c2 34 00                                       	RET 0x34
