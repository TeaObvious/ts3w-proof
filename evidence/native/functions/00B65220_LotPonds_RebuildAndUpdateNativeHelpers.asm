# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00b65220 (LotPonds_RebuildAndUpdateNativeHelpers)
Paired actual Ghidra pseudocode: 00B65220_LotPonds_RebuildAndUpdateNativeHelpers.c
Envelope [0x00b65220,0x00b65e1c); 3068 bytes. Exact owned ranges: [0x00b65220,0x00b65379),[0x00b65380,0x00b653f4),[0x00b65400,0x00b65578),[0x00b65580,0x00b657ca),[0x00b657d0,0x00b65e1c)
Owned: 3035 pristine PE bytes / 736 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b65220 <original>:
  00b65220:	55                                             	PUSH EBP
  00b65221:	8b ec                                          	MOV EBP,ESP
  00b65223:	83 e4 f0                                       	AND ESP,0xfffffff0
  00b65226:	81 ec f4 02 00 00                              	SUB ESP,0x2f4
  00b6522c:	53                                             	PUSH EBX
  00b6522d:	8b d9                                          	MOV EBX,ECX
  00b6522f:	8b 43 04                                       	MOV EAX,dword ptr [EBX + 0x4]
  00b65232:	85 c0                                          	TEST EAX,EAX
  00b65234:	56                                             	PUSH ESI
  00b65235:	57                                             	PUSH EDI
  00b65236:	89 5c 24 18                                    	MOV dword ptr [ESP + 0x18],EBX
  00b6523a:	0f 84 d3 0b 00 00                              	JZ 0x00b65e13
  00b65240:	8b 88 94 02 00 00                              	MOV ECX,dword ptr [EAX + 0x294]
  00b65246:	85 c9                                          	TEST ECX,ECX
  00b65248:	89 4c 24 34                                    	MOV dword ptr [ESP + 0x34],ECX
  00b6524c:	0f 84 c1 0b 00 00                              	JZ 0x00b65e13
  00b65252:	8b 80 90 02 00 00                              	MOV EAX,dword ptr [EAX + 0x290]
  00b65258:	85 c0                                          	TEST EAX,EAX
  00b6525a:	89 84 24 a0 00 00 00                           	MOV dword ptr [ESP + 0xa0],EAX
  00b65261:	0f 84 ac 0b 00 00                              	JZ 0x00b65e13
  00b65267:	e8 04 23 dd ff                                 	CALL 0x00937570
  00b6526c:	89 44 24 38                                    	MOV dword ptr [ESP + 0x38],EAX
  00b65270:	e8 7b 3a cc ff                                 	CALL 0x00828cf0
  00b65275:	85 c0                                          	TEST EAX,EAX
  00b65277:	89 44 24 58                                    	MOV dword ptr [ESP + 0x58],EAX
  00b6527b:	74 0e                                          	JZ 0x00b6528b
  00b6527d:	80 b8 7e 09 00 00 00                           	CMP byte ptr [EAX + 0x97e],0x0
  00b65284:	c6 44 24 13 01                                 	MOV byte ptr [ESP + 0x13],0x1
  00b65289:	75 05                                          	JNZ 0x00b65290
  00b6528b:	c6 44 24 13 00                                 	MOV byte ptr [ESP + 0x13],0x0
  00b65290:	8b 43 04                                       	MOV EAX,dword ptr [EBX + 0x4]
  00b65293:	8b b0 74 01 00 00                              	MOV ESI,dword ptr [EAX + 0x174]
  00b65299:	8b b8 78 01 00 00                              	MOV EDI,dword ptr [EAX + 0x178]
  00b6529f:	83 c3 0c                                       	ADD EBX,0xc
  00b652a2:	83 c6 01                                       	ADD ESI,0x1
  00b652a5:	83 c7 01                                       	ADD EDI,0x1
  00b652a8:	53                                             	PUSH EBX
  00b652a9:	8d 4c 24 74                                    	LEA ECX,[ESP + 0x74]
  00b652ad:	89 74 24 20                                    	MOV dword ptr [ESP + 0x20],ESI
  00b652b1:	89 7c 24 60                                    	MOV dword ptr [ESP + 0x60],EDI
  00b652b5:	e8 b6 e8 ff ff                                 	CALL 0x00b63b70
  00b652ba:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00b652c2:	8b d7                                          	MOV EDX,EDI
  00b652c4:	0f af d6                                       	IMUL EDX,ESI
  00b652c7:	b8 34 67 06 01                                 	MOV EAX,0x1066734
  00b652cc:	33 c9                                          	XOR ECX,ECX
  00b652ce:	89 84 24 9c 00 00 00                           	MOV dword ptr [ESP + 0x9c],EAX
  00b652d5:	89 84 24 ac 00 00 00                           	MOV dword ptr [ESP + 0xac],EAX
  00b652dc:	89 8c 24 8c 00 00 00                           	MOV dword ptr [ESP + 0x8c],ECX
  00b652e3:	89 8c 24 98 00 00 00                           	MOV dword ptr [ESP + 0x98],ECX
  00b652ea:	8d 84 24 ac 00 00 00                           	LEA EAX,[ESP + 0xac]
  00b652f1:	50                                             	PUSH EAX
  00b652f2:	8d 8c 24 d0 00 00 00                           	LEA ECX,[ESP + 0xd0]
  00b652f9:	51                                             	PUSH ECX
  00b652fa:	f3 0f 11 84 24 98 00 00 00                     	MOVSS dword ptr [ESP + 0x98],XMM0
  00b65303:	f3 0f 10 05 88 fd 03 01                        	MOVSS XMM0,dword ptr [0x0103fd88]
  00b6530b:	52                                             	PUSH EDX
  00b6530c:	8d 8c 24 e0 00 00 00                           	LEA ECX,[ESP + 0xe0]
  00b65313:	f3 0f 11 84 24 a0 00 00 00                     	MOVSS dword ptr [ESP + 0xa0],XMM0
  00b6531c:	c7 84 24 94 00 00 00 01 00 00 00               	MOV dword ptr [ESP + 0x94],0x1
  00b65327:	c7 84 24 90 00 00 00 00 d9 14 01               	MOV dword ptr [ESP + 0x90],0x114d900
  00b65332:	c7 84 24 d8 00 00 00 ff ff ff ff               	MOV dword ptr [ESP + 0xd8],0xffffffff
  00b6533d:	e8 fe eb ff ff                                 	CALL 0x00b63f40
  00b65342:	8b 03                                          	MOV EAX,dword ptr [EBX]
  00b65344:	89 43 04                                       	MOV dword ptr [EBX + 0x4],EAX
  00b65347:	8b 5c 24 74                                    	MOV EBX,dword ptr [ESP + 0x74]
  00b6534b:	89 b4 24 08 01 00 00                           	MOV dword ptr [ESP + 0x108],ESI
  00b65352:	8b 74 24 70                                    	MOV ESI,dword ptr [ESP + 0x70]
  00b65356:	3b f3                                          	CMP ESI,EBX
  00b65358:	8d 8c 24 d4 00 00 00                           	LEA ECX,[ESP + 0xd4]
  00b6535f:	89 8c 24 04 01 00 00                           	MOV dword ptr [ESP + 0x104],ECX
  00b65366:	89 bc 24 0c 01 00 00                           	MOV dword ptr [ESP + 0x10c],EDI
  00b6536d:	c7 44 24 2c 00 00 00 00                        	MOV dword ptr [ESP + 0x2c],0x0
  00b65375:	74 47                                          	JZ 0x00b653be
  00b65377:	eb 07                                          	JMP 0x00b65380
  00b65379:	8d a4 24 00 00 00 00                           	.byte 0x8d,0xa4,0x24,0x00,0x00,0x00,0x00 # NONOWNED envelope bytes
  00b65380:	0f b7 56 18                                    	MOVZX EDX,word ptr [ESI + 0x18]
  00b65384:	c6 84 24 a8 00 00 00 00                        	MOV byte ptr [ESP + 0xa8],0x0
  00b6538c:	8b 84 24 a8 00 00 00                           	MOV EAX,dword ptr [ESP + 0xa8]
  00b65393:	50                                             	PUSH EAX
  00b65394:	8d 8c 24 d4 00 00 00                           	LEA ECX,[ESP + 0xd4]
  00b6539b:	89 94 24 d4 00 00 00                           	MOV dword ptr [ESP + 0xd4],EDX
  00b653a2:	51                                             	PUSH ECX
  00b653a3:	8d 94 24 6c 02 00 00                           	LEA EDX,[ESP + 0x26c]
  00b653aa:	52                                             	PUSH EDX
  00b653ab:	8d 8c 24 8c 00 00 00                           	LEA ECX,[ESP + 0x8c]
  00b653b2:	e8 69 f0 f7 ff                                 	CALL 0x00ae4420
  00b653b7:	83 c6 60                                       	ADD ESI,0x60
  00b653ba:	3b f3                                          	CMP ESI,EBX
  00b653bc:	75 c2                                          	JNZ 0x00b65380
  00b653be:	85 ff                                          	TEST EDI,EDI
  00b653c0:	c7 44 24 14 00 00 00 00                        	MOV dword ptr [ESP + 0x14],0x0
  00b653c8:	0f 8e 25 09 00 00                              	JLE 0x00b65cf3
  00b653ce:	8b ff                                          	MOV EDI,EDI
  00b653d0:	83 7c 24 1c 00                                 	CMP dword ptr [ESP + 0x1c],0x0
  00b653d5:	c7 44 24 24 00 00 00 00                        	MOV dword ptr [ESP + 0x24],0x0
  00b653dd:	0f 8e fb 08 00 00                              	JLE 0x00b65cde
  00b653e3:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00b653e7:	0f af 44 24 1c                                 	IMUL EAX,dword ptr [ESP + 0x1c]
  00b653ec:	03 c0                                          	ADD EAX,EAX
  00b653ee:	89 44 24 30                                    	MOV dword ptr [ESP + 0x30],EAX
  00b653f2:	eb 0c                                          	JMP 0x00b65400
  00b653f4:	8d a4 24 00 00 00 00 eb 03 8d 49 00            	.byte 0x8d,0xa4,0x24,0x00,0x00,0x00,0x00,0xeb,0x03,0x8d,0x49,0x00 # NONOWNED envelope bytes
  00b65400:	8b 84 24 d4 00 00 00                           	MOV EAX,dword ptr [ESP + 0xd4]
  00b65407:	8b 4c 24 30                                    	MOV ECX,dword ptr [ESP + 0x30]
  00b6540b:	66 83 3c 01 ff                                 	CMP word ptr [ECX + EAX*0x1],-0x1
  00b65410:	8d 34 01                                       	LEA ESI,[ECX + EAX*0x1]
  00b65413:	0f 85 ab 08 00 00                              	JNZ 0x00b65cc4
  00b65419:	8b 54 24 14                                    	MOV EDX,dword ptr [ESP + 0x14]
  00b6541d:	8b 5c 24 24                                    	MOV EBX,dword ptr [ESP + 0x24]
  00b65421:	8b 4c 24 34                                    	MOV ECX,dword ptr [ESP + 0x34]
  00b65425:	52                                             	PUSH EDX
  00b65426:	53                                             	PUSH EBX
  00b65427:	e8 a4 51 f8 ff                                 	CALL 0x00aea5d0
  00b6542c:	84 c0                                          	TEST AL,AL
  00b6542e:	0f 84 8b 08 00 00                              	JZ 0x00b65cbf
  00b65434:	8b 94 24 a0 00 00 00                           	MOV EDX,dword ptr [ESP + 0xa0]
  00b6543b:	8b 42 24                                       	MOV EAX,dword ptr [EDX + 0x24]
  00b6543e:	8b 70 04                                       	MOV ESI,dword ptr [EAX + 0x4]
  00b65441:	0f af 72 10                                    	IMUL ESI,dword ptr [EDX + 0x10]
  00b65445:	8b 4c 24 14                                    	MOV ECX,dword ptr [ESP + 0x14]
  00b65449:	f3 0f 10 0d b4 35 fb 00                        	MOVSS XMM1,dword ptr [0x00fb35b4]
  00b65451:	0f be d3                                       	MOVSX EDX,BL
  00b65454:	2b d6                                          	SUB EDX,ESI
  00b65456:	0f af 50 08                                    	IMUL EDX,dword ptr [EAX + 0x8]
  00b6545a:	8b 40 10                                       	MOV EAX,dword ptr [EAX + 0x10]
  00b6545d:	8b 74 24 18                                    	MOV ESI,dword ptr [ESP + 0x18]
  00b65461:	f3 0f 2a d1                                    	CVTSI2SS XMM2,ECX
  00b65465:	0f be c9                                       	MOVSX ECX,CL
  00b65468:	03 d1                                          	ADD EDX,ECX
  00b6546a:	f3 0f 2a c3                                    	CVTSI2SS XMM0,EBX
  00b6546e:	f3 0f 11 44 24 60                              	MOVSS dword ptr [ESP + 0x60],XMM0
  00b65474:	f3 0f 58 c1                                    	ADDSS XMM0,XMM1
  00b65478:	f3 0f 11 94 24 a4 00 00 00                     	MOVSS dword ptr [ESP + 0xa4],XMM2
  00b65481:	f3 0f 58 d1                                    	ADDSS XMM2,XMM1
  00b65485:	f3 0f 10 0c 90                                 	MOVSS XMM1,dword ptr [EAX + EDX*0x4]
  00b6548a:	8d 8c 24 20 02 00 00                           	LEA ECX,[ESP + 0x220]
  00b65491:	51                                             	PUSH ECX
  00b65492:	8b 4e 04                                       	MOV ECX,dword ptr [ESI + 0x4]
  00b65495:	f3 0f 11 84 24 20 01 00 00                     	MOVSS dword ptr [ESP + 0x120],XMM0
  00b6549e:	f3 0f 11 94 24 1c 01 00 00                     	MOVSS dword ptr [ESP + 0x11c],XMM2
  00b654a7:	f3 0f 11 8c 24 18 01 00 00                     	MOVSS dword ptr [ESP + 0x118],XMM1
  00b654b0:	f3 0f 11 84 24 14 01 00 00                     	MOVSS dword ptr [ESP + 0x114],XMM0
  00b654b9:	0f 28 84 24 14 01 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x114]
  00b654c1:	8d 94 24 34 02 00 00                           	LEA EDX,[ESP + 0x234]
  00b654c8:	52                                             	PUSH EDX
  00b654c9:	0f 29 84 24 38 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x238],XMM0
  00b654d1:	e8 6a 1b f5 ff                                 	CALL 0x00ab7040
  00b654d6:	33 c0                                          	XOR EAX,EAX
  00b654d8:	89 44 24 6c                                    	MOV dword ptr [ESP + 0x6c],EAX
  00b654dc:	89 44 24 28                                    	MOV dword ptr [ESP + 0x28],EAX
  00b654e0:	8b 44 24 74                                    	MOV EAX,dword ptr [ESP + 0x74]
  00b654e4:	33 ff                                          	XOR EDI,EDI
  00b654e6:	39 44 24 70                                    	CMP dword ptr [ESP + 0x70],EAX
  00b654ea:	74 64                                          	JZ 0x00b65550
  00b654ec:	3b 5e 1c                                       	CMP EBX,dword ptr [ESI + 0x1c]
  00b654ef:	8d 4e 1c                                       	LEA ECX,[ESI + 0x1c]
  00b654f2:	7d 5c                                          	JGE 0x00b65550
  00b654f4:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00b654f8:	3b 46 20                                       	CMP EAX,dword ptr [ESI + 0x20]
  00b654fb:	7d 53                                          	JGE 0x00b65550
  00b654fd:	50                                             	PUSH EAX
  00b654fe:	53                                             	PUSH EBX
  00b654ff:	e8 8c e0 ff ff                                 	CALL 0x00b63590
  00b65504:	0f b7 08                                       	MOVZX ECX,word ptr [EAX]
  00b65507:	66 85 c9                                       	TEST CX,CX
  00b6550a:	7e 44                                          	JLE 0x00b65550
  00b6550c:	8b 44 24 70                                    	MOV EAX,dword ptr [ESP + 0x70]
  00b65510:	8b 74 24 74                                    	MOV ESI,dword ptr [ESP + 0x74]
  00b65514:	0f bf d1                                       	MOVSX EDX,CX
  00b65517:	39 50 18                                       	CMP dword ptr [EAX + 0x18],EDX
  00b6551a:	74 09                                          	JZ 0x00b65525
  00b6551c:	83 c0 60                                       	ADD EAX,0x60
  00b6551f:	3b c6                                          	CMP EAX,ESI
  00b65521:	75 f4                                          	JNZ 0x00b65517
  00b65523:	eb 2b                                          	JMP 0x00b65550
  00b65525:	8b 70 48                                       	MOV ESI,dword ptr [EAX + 0x48]
  00b65528:	8b 50 4c                                       	MOV EDX,dword ptr [EAX + 0x4c]
  00b6552b:	8b de                                          	MOV EBX,ESI
  00b6552d:	0b da                                          	OR EBX,EDX
  00b6552f:	74 1f                                          	JZ 0x00b65550
  00b65531:	8b fe                                          	MOV EDI,ESI
  00b65533:	33 f6                                          	XOR ESI,ESI
  00b65535:	89 70 48                                       	MOV dword ptr [EAX + 0x48],ESI
  00b65538:	89 70 4c                                       	MOV dword ptr [EAX + 0x4c],ESI
  00b6553b:	0f b7 c9                                       	MOVZX ECX,CX
  00b6553e:	8b c7                                          	MOV EAX,EDI
  00b65540:	0b c2                                          	OR EAX,EDX
  00b65542:	89 54 24 6c                                    	MOV dword ptr [ESP + 0x6c],EDX
  00b65546:	89 4c 24 3c                                    	MOV dword ptr [ESP + 0x3c],ECX
  00b6554a:	0f 85 b0 00 00 00                              	JNZ 0x00b65600
  00b65550:	8b b4 24 84 00 00 00                           	MOV ESI,dword ptr [ESP + 0x84]
  00b65557:	8b 8c 24 88 00 00 00                           	MOV ECX,dword ptr [ESP + 0x88]
  00b6555e:	8b 5c 24 2c                                    	MOV EBX,dword ptr [ESP + 0x2c]
  00b65562:	8b 14 8e                                       	MOV EDX,dword ptr [ESI + ECX*0x4]
  00b65565:	8d 04 8e                                       	LEA EAX,[ESI + ECX*0x4]
  00b65568:	83 c3 01                                       	ADD EBX,0x1
  00b6556b:	89 5c 24 2c                                    	MOV dword ptr [ESP + 0x2c],EBX
  00b6556f:	89 94 24 d8 01 00 00                           	MOV dword ptr [ESP + 0x1d8],EDX
  00b65576:	eb 08                                          	JMP 0x00b65580
  00b65578:	8d a4 24 00 00 00 00 90                        	.byte 0x8d,0xa4,0x24,0x00,0x00,0x00,0x00,0x90 # NONOWNED envelope bytes
  00b65580:	0f bf c3                                       	MOVSX EAX,BX
  00b65583:	33 d2                                          	XOR EDX,EDX
  00b65585:	f7 b4 24 88 00 00 00                           	DIV dword ptr [ESP + 0x88]
  00b6558c:	8b 04 96                                       	MOV EAX,dword ptr [ESI + EDX*0x4]
  00b6558f:	85 c0                                          	TEST EAX,EAX
  00b65591:	8d 0c 96                                       	LEA ECX,[ESI + EDX*0x4]
  00b65594:	74 0c                                          	JZ 0x00b655a2
  00b65596:	66 3b 18                                       	CMP BX,word ptr [EAX]
  00b65599:	74 43                                          	JZ 0x00b655de
  00b6559b:	8b 40 04                                       	MOV EAX,dword ptr [EAX + 0x4]
  00b6559e:	85 c0                                          	TEST EAX,EAX
  00b655a0:	75 f4                                          	JNZ 0x00b65596
  00b655a2:	8b 84 24 88 00 00 00                           	MOV EAX,dword ptr [ESP + 0x88]
  00b655a9:	8b 0c 86                                       	MOV ECX,dword ptr [ESI + EAX*0x4]
  00b655ac:	8d 04 86                                       	LEA EAX,[ESI + EAX*0x4]
  00b655af:	89 84 24 e8 00 00 00                           	MOV dword ptr [ESP + 0xe8],EAX
  00b655b6:	89 8c 24 e4 00 00 00                           	MOV dword ptr [ESP + 0xe4],ECX
  00b655bd:	8d 84 24 e4 00 00 00                           	LEA EAX,[ESP + 0xe4]
  00b655c4:	8b 08                                          	MOV ECX,dword ptr [EAX]
  00b655c6:	3b 8c 24 d8 01 00 00                           	CMP ECX,dword ptr [ESP + 0x1d8]
  00b655cd:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00b655d0:	89 94 24 b4 00 00 00                           	MOV dword ptr [ESP + 0xb4],EDX
  00b655d7:	74 1c                                          	JZ 0x00b655f5
  00b655d9:	83 c3 01                                       	ADD EBX,0x1
  00b655dc:	eb a2                                          	JMP 0x00b65580
  00b655de:	89 84 24 fc 00 00 00                           	MOV dword ptr [ESP + 0xfc],EAX
  00b655e5:	89 8c 24 00 01 00 00                           	MOV dword ptr [ESP + 0x100],ECX
  00b655ec:	8d 84 24 fc 00 00 00                           	LEA EAX,[ESP + 0xfc]
  00b655f3:	eb cf                                          	JMP 0x00b655c4
  00b655f5:	0f b7 c3                                       	MOVZX EAX,BX
  00b655f8:	89 5c 24 2c                                    	MOV dword ptr [ESP + 0x2c],EBX
  00b655fc:	89 44 24 3c                                    	MOV dword ptr [ESP + 0x3c],EAX
  00b65600:	8b 74 24 38                                    	MOV ESI,dword ptr [ESP + 0x38]
  00b65604:	85 f6                                          	TEST ESI,ESI
  00b65606:	c6 44 24 12 00                                 	MOV byte ptr [ESP + 0x12],0x0
  00b6560b:	74 69                                          	JZ 0x00b65676
  00b6560d:	8b 44 24 6c                                    	MOV EAX,dword ptr [ESP + 0x6c]
  00b65611:	8b cf                                          	MOV ECX,EDI
  00b65613:	0b c8                                          	OR ECX,EAX
  00b65615:	74 1f                                          	JZ 0x00b65636
  00b65617:	50                                             	PUSH EAX
  00b65618:	57                                             	PUSH EDI
  00b65619:	8b ce                                          	MOV ECX,ESI
  00b6561b:	e8 60 29 dd ff                                 	CALL 0x00937f80
  00b65620:	85 c0                                          	TEST EAX,EAX
  00b65622:	74 12                                          	JZ 0x00b65636
  00b65624:	8d 50 04                                       	LEA EDX,[EAX + 0x4]
  00b65627:	b9 01 00 00 00                                 	MOV ECX,0x1
  00b6562c:	f0 0f c1 0a                                    	XADD.LOCK dword ptr [EDX],ECX
  00b65630:	89 44 24 28                                    	MOV dword ptr [ESP + 0x28],EAX
  00b65634:	eb 40                                          	JMP 0x00b65676
  00b65636:	6a 00                                          	PUSH 0x0
  00b65638:	68 41 13 a6 94                                 	PUSH 0x94a61341
  00b6563d:	68 54 e8 64 e4                                 	PUSH 0xe464e854
  00b65642:	e8 09 7c c0 ff                                 	CALL 0x0076d250
  00b65647:	83 c4 0c                                       	ADD ESP,0xc
  00b6564a:	8b f8                                          	MOV EDI,EAX
  00b6564c:	52                                             	PUSH EDX
  00b6564d:	57                                             	PUSH EDI
  00b6564e:	8b ce                                          	MOV ECX,ESI
  00b65650:	89 54 24 74                                    	MOV dword ptr [ESP + 0x74],EDX
  00b65654:	e8 27 29 dd ff                                 	CALL 0x00937f80
  00b65659:	85 c0                                          	TEST EAX,EAX
  00b6565b:	0f 84 9e 02 00 00                              	JZ 0x00b658ff
  00b65661:	8d 50 04                                       	LEA EDX,[EAX + 0x4]
  00b65664:	b9 01 00 00 00                                 	MOV ECX,0x1
  00b65669:	f0 0f c1 0a                                    	XADD.LOCK dword ptr [EDX],ECX
  00b6566d:	89 44 24 28                                    	MOV dword ptr [ESP + 0x28],EAX
  00b65671:	c6 44 24 12 01                                 	MOV byte ptr [ESP + 0x12],0x1
  00b65676:	8b 74 24 14                                    	MOV ESI,dword ptr [ESP + 0x14]
  00b6567a:	8b 5c 24 24                                    	MOV EBX,dword ptr [ESP + 0x24]
  00b6567e:	8b 4c 24 34                                    	MOV ECX,dword ptr [ESP + 0x34]
  00b65682:	56                                             	PUSH ESI
  00b65683:	53                                             	PUSH EBX
  00b65684:	e8 97 4d f8 ff                                 	CALL 0x00aea420
  00b65689:	d9 5c 24 64                                    	FSTP float ptr [ESP + 0x64]
  00b6568d:	0f bf 54 24 3c                                 	MOVSX EDX,word ptr [ESP + 0x3c]
  00b65692:	0f 28 84 24 20 02 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x220]
  00b6569a:	8d 43 01                                       	LEA EAX,[EBX + 0x1]
  00b6569d:	89 84 24 98 01 00 00                           	MOV dword ptr [ESP + 0x198],EAX
  00b656a4:	83 c8 ff                                       	OR EAX,0xffffffff
  00b656a7:	8d 4e 01                                       	LEA ECX,[ESI + 0x1]
  00b656aa:	89 94 24 88 01 00 00                           	MOV dword ptr [ESP + 0x188],EDX
  00b656b1:	33 d2                                          	XOR EDX,EDX
  00b656b3:	89 8c 24 9c 01 00 00                           	MOV dword ptr [ESP + 0x19c],ECX
  00b656ba:	8b 4c 24 18                                    	MOV ECX,dword ptr [ESP + 0x18]
  00b656be:	8b 49 04                                       	MOV ECX,dword ptr [ECX + 0x4]
  00b656c1:	89 84 24 a8 01 00 00                           	MOV dword ptr [ESP + 0x1a8],EAX
  00b656c8:	89 84 24 ac 01 00 00                           	MOV dword ptr [ESP + 0x1ac],EAX
  00b656cf:	8b 44 24 6c                                    	MOV EAX,dword ptr [ESP + 0x6c]
  00b656d3:	89 94 24 c0 01 00 00                           	MOV dword ptr [ESP + 0x1c0],EDX
  00b656da:	89 94 24 a0 01 00 00                           	MOV dword ptr [ESP + 0x1a0],EDX
  00b656e1:	89 94 24 a4 01 00 00                           	MOV dword ptr [ESP + 0x1a4],EDX
  00b656e8:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00b656ea:	8b 52 64                                       	MOV EDX,dword ptr [EDX + 0x64]
  00b656ed:	89 84 24 bc 01 00 00                           	MOV dword ptr [ESP + 0x1bc],EAX
  00b656f4:	8d 84 24 b0 02 00 00                           	LEA EAX,[ESP + 0x2b0]
  00b656fb:	50                                             	PUSH EAX
  00b656fc:	89 9c 24 84 01 00 00                           	MOV dword ptr [ESP + 0x184],EBX
  00b65703:	89 b4 24 88 01 00 00                           	MOV dword ptr [ESP + 0x188],ESI
  00b6570a:	c7 84 24 90 01 00 00 01 00 00 00               	MOV dword ptr [ESP + 0x190],0x1
  00b65715:	89 9c 24 94 01 00 00                           	MOV dword ptr [ESP + 0x194],EBX
  00b6571c:	89 b4 24 98 01 00 00                           	MOV dword ptr [ESP + 0x198],ESI
  00b65723:	89 bc 24 bc 01 00 00                           	MOV dword ptr [ESP + 0x1bc],EDI
  00b6572a:	0f 29 84 24 74 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x174],XMM0
  00b65732:	ff d2                                          	CALL EDX
  00b65734:	0f 28 00                                       	MOVAPS XMM0,xmmword ptr [EAX]
  00b65737:	0f 29 84 24 40 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x240],XMM0
  00b6573f:	d9 84 24 44 02 00 00                           	FLD float ptr [ESP + 0x244]
  00b65746:	89 84 24 b0 00 00 00                           	MOV dword ptr [ESP + 0xb0],EAX
  00b6574d:	d8 44 24 64                                    	FADD float ptr [ESP + 0x64]
  00b65751:	33 c0                                          	XOR EAX,EAX
  00b65753:	8d 8c 24 ec 00 00 00                           	LEA ECX,[ESP + 0xec]
  00b6575a:	51                                             	PUSH ECX
  00b6575b:	d9 5c 24 24                                    	FSTP float ptr [ESP + 0x24]
  00b6575f:	50                                             	PUSH EAX
  00b65760:	f3 0f 10 44 24 28                              	MOVSS XMM0,dword ptr [ESP + 0x28]
  00b65766:	8d 4c 24 48                                    	LEA ECX,[ESP + 0x48]
  00b6576a:	c7 84 24 cc 01 00 00 ff ff ff ff               	MOV dword ptr [ESP + 0x1cc],0xffffffff
  00b65775:	c7 44 24 54 00 f4 06 01                        	MOV dword ptr [ESP + 0x54],0x106f400
  00b6577d:	89 44 24 48                                    	MOV dword ptr [ESP + 0x48],EAX
  00b65781:	89 44 24 50                                    	MOV dword ptr [ESP + 0x50],EAX
  00b65785:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b65789:	0f 29 84 24 58 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x258],XMM0
  00b65791:	f3 0f 10 84 24 58 02 00 00                     	MOVSS XMM0,dword ptr [ESP + 0x258]
  00b6579a:	f3 0f 11 84 24 b8 01 00 00                     	MOVSS dword ptr [ESP + 0x1b8],XMM0
  00b657a3:	89 44 24 4c                                    	MOV dword ptr [ESP + 0x4c],EAX
  00b657a7:	89 9c 24 f4 00 00 00                           	MOV dword ptr [ESP + 0xf4],EBX
  00b657ae:	89 b4 24 f8 00 00 00                           	MOV dword ptr [ESP + 0xf8],ESI
  00b657b5:	e8 86 6d 8a ff                                 	CALL 0x0040c540
  00b657ba:	8b 5c 24 44                                    	MOV EBX,dword ptr [ESP + 0x44]
  00b657be:	39 5c 24 40                                    	CMP dword ptr [ESP + 0x40],EBX
  00b657c2:	0f 84 84 01 00 00                              	JZ 0x00b6594c
  00b657c8:	eb 06                                          	JMP 0x00b657d0
  00b657ca:	8d 9b 00 00 00 00                              	.byte 0x8d,0x9b,0x00,0x00,0x00,0x00 # NONOWNED envelope bytes
  00b657d0:	8b 4b fc                                       	MOV ECX,dword ptr [EBX + -0x4]
  00b657d3:	8b 43 f8                                       	MOV EAX,dword ptr [EBX + -0x8]
  00b657d6:	8b 94 24 d4 00 00 00                           	MOV EDX,dword ptr [ESP + 0xd4]
  00b657dd:	89 4c 24 54                                    	MOV dword ptr [ESP + 0x54],ECX
  00b657e1:	0f af 4c 24 1c                                 	IMUL ECX,dword ptr [ESP + 0x1c]
  00b657e6:	03 c8                                          	ADD ECX,EAX
  00b657e8:	89 44 24 50                                    	MOV dword ptr [ESP + 0x50],EAX
  00b657ec:	83 c3 f8                                       	ADD EBX,-0x8
  00b657ef:	66 83 3c 4a ff                                 	CMP word ptr [EDX + ECX*0x2],-0x1
  00b657f4:	8d 04 4a                                       	LEA EAX,[EDX + ECX*0x2]
  00b657f7:	89 5c 24 44                                    	MOV dword ptr [ESP + 0x44],EBX
  00b657fb:	0f 85 41 01 00 00                              	JNZ 0x00b65942
  00b65801:	66 8b 4c 24 3c                                 	MOV CX,word ptr [ESP + 0x3c]
  00b65806:	66 89 08                                       	MOV word ptr [EAX],CX
  00b65809:	8b 44 24 50                                    	MOV EAX,dword ptr [ESP + 0x50]
  00b6580d:	8b 4c 24 54                                    	MOV ECX,dword ptr [ESP + 0x54]
  00b65811:	89 84 24 60 01 00 00                           	MOV dword ptr [ESP + 0x160],EAX
  00b65818:	83 c0 01                                       	ADD EAX,0x1
  00b6581b:	89 8c 24 64 01 00 00                           	MOV dword ptr [ESP + 0x164],ECX
  00b65822:	83 c1 01                                       	ADD ECX,0x1
  00b65825:	8d 94 24 60 01 00 00                           	LEA EDX,[ESP + 0x160]
  00b6582c:	89 84 24 68 01 00 00                           	MOV dword ptr [ESP + 0x168],EAX
  00b65833:	8d 84 24 90 01 00 00                           	LEA EAX,[ESP + 0x190]
  00b6583a:	52                                             	PUSH EDX
  00b6583b:	89 8c 24 70 01 00 00                           	MOV dword ptr [ESP + 0x170],ECX
  00b65842:	50                                             	PUSH EAX
  00b65843:	8b c8                                          	MOV ECX,EAX
  00b65845:	e8 c6 ed 9b ff                                 	CALL 0x00524610
  00b6584a:	83 84 24 8c 01 00 00 01                        	ADD dword ptr [ESP + 0x18c],0x1
  00b65852:	c7 44 24 20 00 00 00 00                        	MOV dword ptr [ESP + 0x20],0x0
  00b6585a:	8d 9b 00 00 00 00                              	LEA EBX,[EBX]
  00b65860:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  00b65864:	8b b0 a4 49 18 01                              	MOV ESI,dword ptr [EAX + 0x11849a4]
  00b6586a:	8b b8 84 49 18 01                              	MOV EDI,dword ptr [EAX + 0x1184984]
  00b65870:	03 74 24 50                                    	ADD ESI,dword ptr [ESP + 0x50]
  00b65874:	03 7c 24 54                                    	ADD EDI,dword ptr [ESP + 0x54]
  00b65878:	85 f6                                          	TEST ESI,ESI
  00b6587a:	8b 4c 24 18                                    	MOV ECX,dword ptr [ESP + 0x18]
  00b6587e:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00b65881:	0f 8c a7 00 00 00                              	JL 0x00b6592e
  00b65887:	3b b0 74 01 00 00                              	CMP ESI,dword ptr [EAX + 0x174]
  00b6588d:	0f 8f 9b 00 00 00                              	JG 0x00b6592e
  00b65893:	85 ff                                          	TEST EDI,EDI
  00b65895:	0f 8c 93 00 00 00                              	JL 0x00b6592e
  00b6589b:	3b b8 78 01 00 00                              	CMP EDI,dword ptr [EAX + 0x178]
  00b658a1:	0f 8f 87 00 00 00                              	JG 0x00b6592e
  00b658a7:	8b 84 24 d4 00 00 00                           	MOV EAX,dword ptr [ESP + 0xd4]
  00b658ae:	8b d7                                          	MOV EDX,EDI
  00b658b0:	0f af 54 24 1c                                 	IMUL EDX,dword ptr [ESP + 0x1c]
  00b658b5:	03 d6                                          	ADD EDX,ESI
  00b658b7:	66 83 3c 50 ff                                 	CMP word ptr [EAX + EDX*0x2],-0x1
  00b658bc:	8d 04 50                                       	LEA EAX,[EAX + EDX*0x2]
  00b658bf:	89 84 24 b0 00 00 00                           	MOV dword ptr [ESP + 0xb0],EAX
  00b658c6:	75 66                                          	JNZ 0x00b6592e
  00b658c8:	8b 4c 24 34                                    	MOV ECX,dword ptr [ESP + 0x34]
  00b658cc:	57                                             	PUSH EDI
  00b658cd:	56                                             	PUSH ESI
  00b658ce:	e8 fd 4c f8 ff                                 	CALL 0x00aea5d0
  00b658d3:	84 c0                                          	TEST AL,AL
  00b658d5:	74 4b                                          	JZ 0x00b65922
  00b658d7:	3b 5c 24 48                                    	CMP EBX,dword ptr [ESP + 0x48]
  00b658db:	89 b4 24 f4 00 00 00                           	MOV dword ptr [ESP + 0xf4],ESI
  00b658e2:	89 bc 24 f8 00 00 00                           	MOV dword ptr [ESP + 0xf8],EDI
  00b658e9:	73 1f                                          	JNC 0x00b6590a
  00b658eb:	8b c3                                          	MOV EAX,EBX
  00b658ed:	83 c3 08                                       	ADD EBX,0x8
  00b658f0:	85 c0                                          	TEST EAX,EAX
  00b658f2:	89 5c 24 44                                    	MOV dword ptr [ESP + 0x44],EBX
  00b658f6:	74 36                                          	JZ 0x00b6592e
  00b658f8:	89 30                                          	MOV dword ptr [EAX],ESI
  00b658fa:	89 78 04                                       	MOV dword ptr [EAX + 0x4],EDI
  00b658fd:	eb 2f                                          	JMP 0x00b6592e
  00b658ff:	33 ff                                          	XOR EDI,EDI
  00b65901:	89 7c 24 6c                                    	MOV dword ptr [ESP + 0x6c],EDI
  00b65905:	e9 6c fd ff ff                                 	JMP 0x00b65676
  00b6590a:	8d 8c 24 f4 00 00 00                           	LEA ECX,[ESP + 0xf4]
  00b65911:	51                                             	PUSH ECX
  00b65912:	53                                             	PUSH EBX
  00b65913:	8d 4c 24 48                                    	LEA ECX,[ESP + 0x48]
  00b65917:	e8 24 6c 8a ff                                 	CALL 0x0040c540
  00b6591c:	8b 5c 24 44                                    	MOV EBX,dword ptr [ESP + 0x44]
  00b65920:	eb 0c                                          	JMP 0x00b6592e
  00b65922:	8b 94 24 b0 00 00 00                           	MOV EDX,dword ptr [ESP + 0xb0]
  00b65929:	66 c7 02 00 00                                 	MOV word ptr [EDX],0x0
  00b6592e:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  00b65932:	83 c0 04                                       	ADD EAX,0x4
  00b65935:	83 f8 20                                       	CMP EAX,0x20
  00b65938:	89 44 24 20                                    	MOV dword ptr [ESP + 0x20],EAX
  00b6593c:	0f 8c 1e ff ff ff                              	JL 0x00b65860
  00b65942:	39 5c 24 40                                    	CMP dword ptr [ESP + 0x40],EBX
  00b65946:	0f 85 84 fe ff ff                              	JNZ 0x00b657d0
  00b6594c:	8b 8c 24 88 01 00 00                           	MOV ECX,dword ptr [ESP + 0x188]
  00b65953:	8b 7c 24 18                                    	MOV EDI,dword ptr [ESP + 0x18]
  00b65957:	8b 74 24 28                                    	MOV ESI,dword ptr [ESP + 0x28]
  00b6595b:	8d 84 24 a0 01 00 00                           	LEA EAX,[ESP + 0x1a0]
  00b65962:	50                                             	PUSH EAX
  00b65963:	51                                             	PUSH ECX
  00b65964:	8d 94 24 98 01 00 00                           	LEA EDX,[ESP + 0x198]
  00b6596b:	52                                             	PUSH EDX
  00b6596c:	8d 8c 24 10 01 00 00                           	LEA ECX,[ESP + 0x110]
  00b65973:	e8 18 e6 ff ff                                 	CALL 0x00b63f90
  00b65978:	8b 4f 10                                       	MOV ECX,dword ptr [EDI + 0x10]
  00b6597b:	3b 4f 14                                       	CMP ECX,dword ptr [EDI + 0x14]
  00b6597e:	8d 47 0c                                       	LEA EAX,[EDI + 0xc]
  00b65981:	73 19                                          	JNC 0x00b6599c
  00b65983:	85 c9                                          	TEST ECX,ECX
  00b65985:	8d 51 60                                       	LEA EDX,[ECX + 0x60]
  00b65988:	89 50 04                                       	MOV dword ptr [EAX + 0x4],EDX
  00b6598b:	74 1f                                          	JZ 0x00b659ac
  00b6598d:	8d 84 24 70 01 00 00                           	LEA EAX,[ESP + 0x170]
  00b65994:	50                                             	PUSH EAX
  00b65995:	e8 26 d4 ff ff                                 	CALL 0x00b62dc0
  00b6599a:	eb 10                                          	JMP 0x00b659ac
  00b6599c:	8d 94 24 70 01 00 00                           	LEA EDX,[ESP + 0x170]
  00b659a3:	52                                             	PUSH EDX
  00b659a4:	51                                             	PUSH ECX
  00b659a5:	8b c8                                          	MOV ECX,EAX
  00b659a7:	e8 64 e4 ff ff                                 	CALL 0x00b63e10
  00b659ac:	85 f6                                          	TEST ESI,ESI
  00b659ae:	0f 84 d4 02 00 00                              	JZ 0x00b65c88
  00b659b4:	a1 58 a1 1e 01                                 	MOV EAX,[0x011ea158]
  00b659b9:	50                                             	PUSH EAX
  00b659ba:	8b ce                                          	MOV ECX,ESI
  00b659bc:	e8 9f e8 dc ff                                 	CALL 0x00934260
  00b659c1:	8b d8                                          	MOV EBX,EAX
  00b659c3:	85 db                                          	TEST EBX,EBX
  00b659c5:	0f 84 63 02 00 00                              	JZ 0x00b65c2e
  00b659cb:	8d 8c 24 20 02 00 00                           	LEA ECX,[ESP + 0x220]
  00b659d2:	51                                             	PUSH ECX
  00b659d3:	8b cb                                          	MOV ECX,EBX
  00b659d5:	e8 d6 29 df ff                                 	CALL 0x009583b0
  00b659da:	0f 57 c0                                       	XORPS XMM0,XMM0
  00b659dd:	f3 0f 10 0d f8 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f8]
  00b659e5:	8b 4f 04                                       	MOV ECX,dword ptr [EDI + 0x4]
  00b659e8:	f3 0f 11 84 24 3c 01 00 00                     	MOVSS dword ptr [ESP + 0x13c],XMM0
  00b659f1:	f3 0f 11 84 24 38 01 00 00                     	MOVSS dword ptr [ESP + 0x138],XMM0
  00b659fa:	f3 0f 11 84 24 34 01 00 00                     	MOVSS dword ptr [ESP + 0x134],XMM0
  00b65a03:	f3 0f 11 84 24 4c 01 00 00                     	MOVSS dword ptr [ESP + 0x14c],XMM0
  00b65a0c:	f3 0f 11 84 24 48 01 00 00                     	MOVSS dword ptr [ESP + 0x148],XMM0
  00b65a15:	f3 0f 11 84 24 40 01 00 00                     	MOVSS dword ptr [ESP + 0x140],XMM0
  00b65a1e:	f3 0f 11 84 24 2c 01 00 00                     	MOVSS dword ptr [ESP + 0x12c],XMM0
  00b65a27:	f3 0f 11 84 24 24 01 00 00                     	MOVSS dword ptr [ESP + 0x124],XMM0
  00b65a30:	f3 0f 11 84 24 20 01 00 00                     	MOVSS dword ptr [ESP + 0x120],XMM0
  00b65a39:	f3 0f 11 8c 24 28 01 00 00                     	MOVSS dword ptr [ESP + 0x128],XMM1
  00b65a42:	0f 28 84 24 20 01 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x120]
  00b65a4a:	0f 29 84 24 00 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x200],XMM0
  00b65a52:	f3 0f 10 84 24 a4 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0xa4]
  00b65a5b:	f3 0f 11 84 24 58 01 00 00                     	MOVSS dword ptr [ESP + 0x158],XMM0
  00b65a64:	f3 0f 10 44 24 64                              	MOVSS XMM0,dword ptr [ESP + 0x64]
  00b65a6a:	f3 0f 11 84 24 54 01 00 00                     	MOVSS dword ptr [ESP + 0x154],XMM0
  00b65a73:	f3 0f 10 44 24 60                              	MOVSS XMM0,dword ptr [ESP + 0x60]
  00b65a79:	f3 0f 11 8c 24 30 01 00 00                     	MOVSS dword ptr [ESP + 0x130],XMM1
  00b65a82:	0f 28 94 24 30 01 00 00                        	MOVAPS XMM2,xmmword ptr [ESP + 0x130]
  00b65a8a:	f3 0f 11 8c 24 44 01 00 00                     	MOVSS dword ptr [ESP + 0x144],XMM1
  00b65a93:	f3 0f 11 8c 24 5c 01 00 00                     	MOVSS dword ptr [ESP + 0x15c],XMM1
  00b65a9c:	f3 0f 11 84 24 50 01 00 00                     	MOVSS dword ptr [ESP + 0x150],XMM0
  00b65aa5:	0f 28 84 24 50 01 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x150]
  00b65aad:	8d 94 24 c0 02 00 00                           	LEA EDX,[ESP + 0x2c0]
  00b65ab4:	0f 29 94 24 e0 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x1e0],XMM2
  00b65abc:	0f 28 94 24 40 01 00 00                        	MOVAPS XMM2,xmmword ptr [ESP + 0x140]
  00b65ac4:	52                                             	PUSH EDX
  00b65ac5:	0f 29 94 24 f4 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x1f4],XMM2
  00b65acd:	0f 29 84 24 14 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x214],XMM0
  00b65ad5:	e8 66 ba f4 ff                                 	CALL 0x00ab1540
  00b65ada:	0f 28 84 24 e0 01 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x1e0]
  00b65ae2:	0f 28 30                                       	MOVAPS XMM6,xmmword ptr [EAX]
  00b65ae5:	0f 28 68 10                                    	MOVAPS XMM5,xmmword ptr [EAX + 0x10]
  00b65ae9:	0f 28 78 20                                    	MOVAPS XMM7,xmmword ptr [EAX + 0x20]
  00b65aed:	0f 28 58 30                                    	MOVAPS XMM3,xmmword ptr [EAX + 0x30]
  00b65af1:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00b65af4:	0f c6 c8 00                                    	SHUFPS XMM1,XMM0,0x0
  00b65af8:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00b65afb:	0f c6 d0 55                                    	SHUFPS XMM2,XMM0,0x55
  00b65aff:	0f 59 d5                                       	MULPS XMM2,XMM5
  00b65b02:	0f 59 ce                                       	MULPS XMM1,XMM6
  00b65b05:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00b65b08:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00b65b0b:	0f c6 d0 aa                                    	SHUFPS XMM2,XMM0,0xaa
  00b65b0f:	0f 59 d7                                       	MULPS XMM2,XMM7
  00b65b12:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00b65b15:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00b65b18:	0f c6 d0 ff                                    	SHUFPS XMM2,XMM0,0xff
  00b65b1c:	0f 28 84 24 f0 01 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x1f0]
  00b65b24:	0f 59 d3                                       	MULPS XMM2,XMM3
  00b65b27:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00b65b2a:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00b65b2d:	0f c6 d0 00                                    	SHUFPS XMM2,XMM0,0x0
  00b65b31:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  00b65b34:	0f c6 e0 55                                    	SHUFPS XMM4,XMM0,0x55
  00b65b38:	0f 59 e5                                       	MULPS XMM4,XMM5
  00b65b3b:	0f 59 d6                                       	MULPS XMM2,XMM6
  00b65b3e:	0f 58 d4                                       	ADDPS XMM2,XMM4
  00b65b41:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  00b65b44:	0f c6 e0 aa                                    	SHUFPS XMM4,XMM0,0xaa
  00b65b48:	0f 59 e7                                       	MULPS XMM4,XMM7
  00b65b4b:	0f 58 d4                                       	ADDPS XMM2,XMM4
  00b65b4e:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  00b65b51:	0f c6 e0 ff                                    	SHUFPS XMM4,XMM0,0xff
  00b65b55:	0f 28 84 24 00 02 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x200]
  00b65b5d:	0f 59 e3                                       	MULPS XMM4,XMM3
  00b65b60:	0f 29 9c 24 b0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xb0],XMM3
  00b65b68:	0f 58 d4                                       	ADDPS XMM2,XMM4
  00b65b6b:	0f 28 d8                                       	MOVAPS XMM3,XMM0
  00b65b6e:	0f c6 d8 00                                    	SHUFPS XMM3,XMM0,0x0
  00b65b72:	0f 29 8c 24 70 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x270],XMM1
  00b65b7a:	0f 29 94 24 80 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x280],XMM2
  00b65b82:	0f 59 de                                       	MULPS XMM3,XMM6
  00b65b85:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  00b65b88:	0f c6 e0 55                                    	SHUFPS XMM4,XMM0,0x55
  00b65b8c:	0f 59 e5                                       	MULPS XMM4,XMM5
  00b65b8f:	0f 58 dc                                       	ADDPS XMM3,XMM4
  00b65b92:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  00b65b95:	0f c6 e0 aa                                    	SHUFPS XMM4,XMM0,0xaa
  00b65b99:	0f 59 e7                                       	MULPS XMM4,XMM7
  00b65b9c:	0f 58 dc                                       	ADDPS XMM3,XMM4
  00b65b9f:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  00b65ba2:	0f c6 e0 ff                                    	SHUFPS XMM4,XMM0,0xff
  00b65ba6:	0f 28 84 24 10 02 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x210]
  00b65bae:	0f 59 a4 24 b0 00 00 00                        	MULPS XMM4,xmmword ptr [ESP + 0xb0]
  00b65bb6:	0f 58 dc                                       	ADDPS XMM3,XMM4
  00b65bb9:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  00b65bbc:	0f c6 e0 00                                    	SHUFPS XMM4,XMM0,0x0
  00b65bc0:	0f 59 e6                                       	MULPS XMM4,XMM6
  00b65bc3:	0f 28 f0                                       	MOVAPS XMM6,XMM0
  00b65bc6:	0f c6 f0 55                                    	SHUFPS XMM6,XMM0,0x55
  00b65bca:	0f 59 f5                                       	MULPS XMM6,XMM5
  00b65bcd:	0f 28 e8                                       	MOVAPS XMM5,XMM0
  00b65bd0:	0f c6 e8 aa                                    	SHUFPS XMM5,XMM0,0xaa
  00b65bd4:	0f 59 ef                                       	MULPS XMM5,XMM7
  00b65bd7:	0f 58 e6                                       	ADDPS XMM4,XMM6
  00b65bda:	0f 58 e5                                       	ADDPS XMM4,XMM5
  00b65bdd:	0f 28 e8                                       	MOVAPS XMM5,XMM0
  00b65be0:	0f c6 e8 ff                                    	SHUFPS XMM5,XMM0,0xff
  00b65be4:	0f 59 ac 24 b0 00 00 00                        	MULPS XMM5,xmmword ptr [ESP + 0xb0]
  00b65bec:	8d 84 24 e0 01 00 00                           	LEA EAX,[ESP + 0x1e0]
  00b65bf3:	0f 58 e5                                       	ADDPS XMM4,XMM5
  00b65bf6:	50                                             	PUSH EAX
  00b65bf7:	8b cb                                          	MOV ECX,EBX
  00b65bf9:	0f 29 9c 24 94 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x294],XMM3
  00b65c01:	0f 29 a4 24 a4 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x2a4],XMM4
  00b65c09:	0f 29 8c 24 e4 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x1e4],XMM1
  00b65c11:	0f 29 94 24 f4 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x1f4],XMM2
  00b65c19:	0f 29 9c 24 04 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x204],XMM3
  00b65c21:	0f 29 a4 24 14 02 00 00                        	MOVAPS xmmword ptr [ESP + 0x214],XMM4
  00b65c29:	e8 32 2b df ff                                 	CALL 0x00958760
  00b65c2e:	8d 8c 24 70 01 00 00                           	LEA ECX,[ESP + 0x170]
  00b65c35:	51                                             	PUSH ECX
  00b65c36:	56                                             	PUSH ESI
  00b65c37:	8b cf                                          	MOV ECX,EDI
  00b65c39:	e8 a2 f0 ff ff                                 	CALL 0x00b64ce0
  00b65c3e:	8b ce                                          	MOV ECX,ESI
  00b65c40:	e8 eb 94 b2 ff                                 	CALL 0x0068f130
  00b65c45:	85 c0                                          	TEST EAX,EAX
  00b65c47:	74 07                                          	JZ 0x00b65c50
  00b65c49:	80 7c 24 12 00                                 	CMP byte ptr [ESP + 0x12],0x0
  00b65c4e:	74 2f                                          	JZ 0x00b65c7f
  00b65c50:	8a 5c 24 13                                    	MOV BL,byte ptr [ESP + 0x13]
  00b65c54:	84 db                                          	TEST BL,BL
  00b65c56:	74 0b                                          	JZ 0x00b65c63
  00b65c58:	8b 54 24 58                                    	MOV EDX,dword ptr [ESP + 0x58]
  00b65c5c:	c6 82 78 09 00 00 01                           	MOV byte ptr [EDX + 0x978],0x1
  00b65c63:	8b 4f 04                                       	MOV ECX,dword ptr [EDI + 0x4]
  00b65c66:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00b65c68:	8b 50 30                                       	MOV EDX,dword ptr [EAX + 0x30]
  00b65c6b:	56                                             	PUSH ESI
  00b65c6c:	ff d2                                          	CALL EDX
  00b65c6e:	84 db                                          	TEST BL,BL
  00b65c70:	74 16                                          	JZ 0x00b65c88
  00b65c72:	8b 44 24 58                                    	MOV EAX,dword ptr [ESP + 0x58]
  00b65c76:	c6 80 78 09 00 00 00                           	MOV byte ptr [EAX + 0x978],0x0
  00b65c7d:	eb 09                                          	JMP 0x00b65c88
  00b65c7f:	8b 4f 04                                       	MOV ECX,dword ptr [EDI + 0x4]
  00b65c82:	56                                             	PUSH ESI
  00b65c83:	e8 88 75 f6 ff                                 	CALL 0x00acd210
  00b65c88:	8b 44 24 40                                    	MOV EAX,dword ptr [ESP + 0x40]
  00b65c8c:	85 c0                                          	TEST EAX,EAX
  00b65c8e:	74 09                                          	JZ 0x00b65c99
  00b65c90:	50                                             	PUSH EAX
  00b65c91:	e8 4a e8 97 ff                                 	CALL 0x004e44e0
  00b65c96:	83 c4 04                                       	ADD ESP,0x4
  00b65c99:	85 f6                                          	TEST ESI,ESI
  00b65c9b:	74 27                                          	JZ 0x00b65cc4
  00b65c9d:	8d 46 04                                       	LEA EAX,[ESI + 0x4]
  00b65ca0:	8b c8                                          	MOV ECX,EAX
  00b65ca2:	83 ca ff                                       	OR EDX,0xffffffff
  00b65ca5:	f0 0f c1 11                                    	XADD.LOCK dword ptr [ECX],EDX
  00b65ca9:	4a                                             	DEC EDX
  00b65caa:	75 18                                          	JNZ 0x00b65cc4
  00b65cac:	b9 01 00 00 00                                 	MOV ECX,0x1
  00b65cb1:	87 08                                          	XCHG dword ptr [EAX],ECX
  00b65cb3:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00b65cb5:	8b 02                                          	MOV EAX,dword ptr [EDX]
  00b65cb7:	6a 01                                          	PUSH 0x1
  00b65cb9:	8b ce                                          	MOV ECX,ESI
  00b65cbb:	ff d0                                          	CALL EAX
  00b65cbd:	eb 05                                          	JMP 0x00b65cc4
  00b65cbf:	66 c7 06 00 00                                 	MOV word ptr [ESI],0x0
  00b65cc4:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00b65cc8:	83 44 24 30 02                                 	ADD dword ptr [ESP + 0x30],0x2
  00b65ccd:	83 c0 01                                       	ADD EAX,0x1
  00b65cd0:	3b 44 24 1c                                    	CMP EAX,dword ptr [ESP + 0x1c]
  00b65cd4:	89 44 24 24                                    	MOV dword ptr [ESP + 0x24],EAX
  00b65cd8:	0f 8c 22 f7 ff ff                              	JL 0x00b65400
  00b65cde:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00b65ce2:	83 c0 01                                       	ADD EAX,0x1
  00b65ce5:	3b 44 24 5c                                    	CMP EAX,dword ptr [ESP + 0x5c]
  00b65ce9:	89 44 24 14                                    	MOV dword ptr [ESP + 0x14],EAX
  00b65ced:	0f 8c dd f6 ff ff                              	JL 0x00b653d0
  00b65cf3:	8b 4c 24 5c                                    	MOV ECX,dword ptr [ESP + 0x5c]
  00b65cf7:	8b 74 24 18                                    	MOV ESI,dword ptr [ESP + 0x18]
  00b65cfb:	8b 54 24 1c                                    	MOV EDX,dword ptr [ESP + 0x1c]
  00b65cff:	51                                             	PUSH ECX
  00b65d00:	83 c6 1c                                       	ADD ESI,0x1c
  00b65d03:	52                                             	PUSH EDX
  00b65d04:	8b ce                                          	MOV ECX,ESI
  00b65d06:	e8 a5 e9 ff ff                                 	CALL 0x00b646b0
  00b65d0b:	8d 84 24 d4 00 00 00                           	LEA EAX,[ESP + 0xd4]
  00b65d12:	50                                             	PUSH EAX
  00b65d13:	8b ce                                          	MOV ECX,ESI
  00b65d15:	e8 26 ec ff ff                                 	CALL 0x00b64940
  00b65d1a:	8b ce                                          	MOV ECX,ESI
  00b65d1c:	e8 6f e6 ff ff                                 	CALL 0x00b64390
  00b65d21:	8b 5c 24 70                                    	MOV EBX,dword ptr [ESP + 0x70]
  00b65d25:	3b 5c 24 74                                    	CMP EBX,dword ptr [ESP + 0x74]
  00b65d29:	0f 84 82 00 00 00                              	JZ 0x00b65db1
  00b65d2f:	83 7c 24 38 00                                 	CMP dword ptr [ESP + 0x38],0x0
  00b65d34:	74 7b                                          	JZ 0x00b65db1
  00b65d36:	83 c3 48                                       	ADD EBX,0x48
  00b65d39:	8b 03                                          	MOV EAX,dword ptr [EBX]
  00b65d3b:	8b 4b 04                                       	MOV ECX,dword ptr [EBX + 0x4]
  00b65d3e:	8b d0                                          	MOV EDX,EAX
  00b65d40:	0b d1                                          	OR EDX,ECX
  00b65d42:	74 5d                                          	JZ 0x00b65da1
  00b65d44:	51                                             	PUSH ECX
  00b65d45:	8b 4c 24 3c                                    	MOV ECX,dword ptr [ESP + 0x3c]
  00b65d49:	50                                             	PUSH EAX
  00b65d4a:	e8 31 22 dd ff                                 	CALL 0x00937f80
  00b65d4f:	8b f0                                          	MOV ESI,EAX
  00b65d51:	85 f6                                          	TEST ESI,ESI
  00b65d53:	74 4c                                          	JZ 0x00b65da1
  00b65d55:	8d 7e 04                                       	LEA EDI,[ESI + 0x4]
  00b65d58:	8b c7                                          	MOV EAX,EDI
  00b65d5a:	b9 01 00 00 00                                 	MOV ECX,0x1
  00b65d5f:	f0 0f c1 08                                    	XADD.LOCK dword ptr [EAX],ECX
  00b65d63:	8b 54 24 18                                    	MOV EDX,dword ptr [ESP + 0x18]
  00b65d67:	8b 4a 04                                       	MOV ECX,dword ptr [EDX + 0x4]
  00b65d6a:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00b65d6c:	8b 50 3c                                       	MOV EDX,dword ptr [EAX + 0x3c]
  00b65d6f:	6a 00                                          	PUSH 0x0
  00b65d71:	56                                             	PUSH ESI
  00b65d72:	ff d2                                          	CALL EDX
  00b65d74:	8b 46 0c                                       	MOV EAX,dword ptr [ESI + 0xc]
  00b65d77:	8b 4e 08                                       	MOV ECX,dword ptr [ESI + 0x8]
  00b65d7a:	50                                             	PUSH EAX
  00b65d7b:	51                                             	PUSH ECX
  00b65d7c:	e8 1f 75 c0 ff                                 	CALL 0x0076d2a0
  00b65d81:	83 c4 08                                       	ADD ESP,0x8
  00b65d84:	8b d7                                          	MOV EDX,EDI
  00b65d86:	83 c8 ff                                       	OR EAX,0xffffffff
  00b65d89:	f0 0f c1 02                                    	XADD.LOCK dword ptr [EDX],EAX
  00b65d8d:	48                                             	DEC EAX
  00b65d8e:	75 11                                          	JNZ 0x00b65da1
  00b65d90:	b9 01 00 00 00                                 	MOV ECX,0x1
  00b65d95:	87 0f                                          	XCHG dword ptr [EDI],ECX
  00b65d97:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00b65d99:	8b 02                                          	MOV EAX,dword ptr [EDX]
  00b65d9b:	6a 01                                          	PUSH 0x1
  00b65d9d:	8b ce                                          	MOV ECX,ESI
  00b65d9f:	ff d0                                          	CALL EAX
  00b65da1:	83 c3 60                                       	ADD EBX,0x60
  00b65da4:	8d 4b b8                                       	LEA ECX,[EBX + -0x48]
  00b65da7:	3b 4c 24 74                                    	CMP ECX,dword ptr [ESP + 0x74]
  00b65dab:	75 8c                                          	JNZ 0x00b65d39
  00b65dad:	8b 5c 24 70                                    	MOV EBX,dword ptr [ESP + 0x70]
  00b65db1:	8b 84 24 d4 00 00 00                           	MOV EAX,dword ptr [ESP + 0xd4]
  00b65db8:	85 c0                                          	TEST EAX,EAX
  00b65dba:	74 09                                          	JZ 0x00b65dc5
  00b65dbc:	50                                             	PUSH EAX
  00b65dbd:	e8 1e e7 97 ff                                 	CALL 0x004e44e0
  00b65dc2:	83 c4 04                                       	ADD ESP,0x4
  00b65dc5:	8b 94 24 88 00 00 00                           	MOV EDX,dword ptr [ESP + 0x88]
  00b65dcc:	8b 84 24 84 00 00 00                           	MOV EAX,dword ptr [ESP + 0x84]
  00b65dd3:	52                                             	PUSH EDX
  00b65dd4:	50                                             	PUSH EAX
  00b65dd5:	8d 8c 24 88 00 00 00                           	LEA ECX,[ESP + 0x88]
  00b65ddc:	e8 2f a6 f7 ff                                 	CALL 0x00ae0410
  00b65de1:	83 bc 24 88 00 00 00 01                        	CMP dword ptr [ESP + 0x88],0x1
  00b65de9:	c7 84 24 8c 00 00 00 00 00 00 00               	MOV dword ptr [ESP + 0x8c],0x0
  00b65df4:	76 10                                          	JBE 0x00b65e06
  00b65df6:	8b 8c 24 84 00 00 00                           	MOV ECX,dword ptr [ESP + 0x84]
  00b65dfd:	51                                             	PUSH ECX
  00b65dfe:	e8 dd e6 97 ff                                 	CALL 0x004e44e0
  00b65e03:	83 c4 04                                       	ADD ESP,0x4
  00b65e06:	85 db                                          	TEST EBX,EBX
  00b65e08:	74 09                                          	JZ 0x00b65e13
  00b65e0a:	53                                             	PUSH EBX
  00b65e0b:	e8 d0 e6 97 ff                                 	CALL 0x004e44e0
  00b65e10:	83 c4 04                                       	ADD ESP,0x4
  00b65e13:	5f                                             	POP EDI
  00b65e14:	5e                                             	POP ESI
  00b65e15:	5b                                             	POP EBX
  00b65e16:	8b e5                                          	MOV ESP,EBP
  00b65e18:	5d                                             	POP EBP
  00b65e19:	c2 04 00                                       	RET 0x4
