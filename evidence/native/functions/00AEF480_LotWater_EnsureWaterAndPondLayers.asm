# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00aef480 (LotWater_EnsureWaterAndPondLayers)
Paired actual Ghidra pseudocode: 00AEF480_LotWater_EnsureWaterAndPondLayers.c
Envelope [0x00aef480,0x00aef73e); 702 bytes. Exact owned ranges: [0x00aef480,0x00aef73e)
Owned: 702 pristine PE bytes / 233 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00aef480 <original>:
  00aef480:	83 ec 0c                                       	SUB ESP,0xc
  00aef483:	55                                             	PUSH EBP
  00aef484:	56                                             	PUSH ESI
  00aef485:	8b f1                                          	MOV ESI,ECX
  00aef487:	33 ed                                          	XOR EBP,EBP
  00aef489:	39 6e 08                                       	CMP dword ptr [ESI + 0x8],EBP
  00aef48c:	0f 84 a6 02 00 00                              	JZ 0x00aef738
  00aef492:	39 ae c8 00 00 00                              	CMP dword ptr [ESI + 0xc8],EBP
  00aef498:	53                                             	PUSH EBX
  00aef499:	57                                             	PUSH EDI
  00aef49a:	75 6c                                          	JNZ 0x00aef508
  00aef49c:	55                                             	PUSH EBP
  00aef49d:	55                                             	PUSH EBP
  00aef49e:	55                                             	PUSH EBP
  00aef49f:	55                                             	PUSH EBP
  00aef4a0:	68 d8 a7 06 01                                 	PUSH 0x106a7d8
  00aef4a5:	6a 1c                                          	PUSH 0x1c
  00aef4a7:	e8 54 50 9f ff                                 	CALL 0x004e4500
  00aef4ac:	83 c4 18                                       	ADD ESP,0x18
  00aef4af:	3b c5                                          	CMP EAX,EBP
  00aef4b1:	74 20                                          	JZ 0x00aef4d3
  00aef4b3:	c7 00 94 fb 05 01                              	MOV dword ptr [EAX],0x105fb94
  00aef4b9:	89 68 04                                       	MOV dword ptr [EAX + 0x4],EBP
  00aef4bc:	89 68 08                                       	MOV dword ptr [EAX + 0x8],EBP
  00aef4bf:	89 68 0c                                       	MOV dword ptr [EAX + 0xc],EBP
  00aef4c2:	89 68 10                                       	MOV dword ptr [EAX + 0x10],EBP
  00aef4c5:	89 68 14                                       	MOV dword ptr [EAX + 0x14],EBP
  00aef4c8:	c7 40 18 d8 a7 06 01                           	MOV dword ptr [EAX + 0x18],0x106a7d8
  00aef4cf:	8b f8                                          	MOV EDI,EAX
  00aef4d1:	eb 02                                          	JMP 0x00aef4d5
  00aef4d3:	33 ff                                          	XOR EDI,EDI
  00aef4d5:	8b 46 0c                                       	MOV EAX,dword ptr [ESI + 0xc]
  00aef4d8:	8b 5e 10                                       	MOV EBX,dword ptr [ESI + 0x10]
  00aef4db:	83 c0 01                                       	ADD EAX,0x1
  00aef4de:	83 c3 01                                       	ADD EBX,0x1
  00aef4e1:	89 44 24 14                                    	MOV dword ptr [ESP + 0x14],EAX
  00aef4e5:	0f af c3                                       	IMUL EAX,EBX
  00aef4e8:	50                                             	PUSH EAX
  00aef4e9:	8d 4f 0c                                       	LEA ECX,[EDI + 0xc]
  00aef4ec:	89 be c8 00 00 00                              	MOV dword ptr [ESI + 0xc8],EDI
  00aef4f2:	e8 d9 e8 a7 ff                                 	CALL 0x0056ddd0
  00aef4f7:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00aef4fb:	8b ce                                          	MOV ECX,ESI
  00aef4fd:	89 47 04                                       	MOV dword ptr [EDI + 0x4],EAX
  00aef500:	89 5f 08                                       	MOV dword ptr [EDI + 0x8],EBX
  00aef503:	e8 68 ae ff ff                                 	CALL 0x00aea370
  00aef508:	39 ae cc 00 00 00                              	CMP dword ptr [ESI + 0xcc],EBP
  00aef50e:	0f 85 fb 00 00 00                              	JNZ 0x00aef60f
  00aef514:	55                                             	PUSH EBP
  00aef515:	55                                             	PUSH EBP
  00aef516:	55                                             	PUSH EBP
  00aef517:	55                                             	PUSH EBP
  00aef518:	68 b4 a7 06 01                                 	PUSH 0x106a7b4
  00aef51d:	6a 1c                                          	PUSH 0x1c
  00aef51f:	e8 dc 4f 9f ff                                 	CALL 0x004e4500
  00aef524:	83 c4 18                                       	ADD ESP,0x18
  00aef527:	3b c5                                          	CMP EAX,EBP
  00aef529:	74 1e                                          	JZ 0x00aef549
  00aef52b:	c7 00 94 fb 05 01                              	MOV dword ptr [EAX],0x105fb94
  00aef531:	89 68 04                                       	MOV dword ptr [EAX + 0x4],EBP
  00aef534:	89 68 08                                       	MOV dword ptr [EAX + 0x8],EBP
  00aef537:	89 68 0c                                       	MOV dword ptr [EAX + 0xc],EBP
  00aef53a:	89 68 10                                       	MOV dword ptr [EAX + 0x10],EBP
  00aef53d:	89 68 14                                       	MOV dword ptr [EAX + 0x14],EBP
  00aef540:	c7 40 18 b4 a7 06 01                           	MOV dword ptr [EAX + 0x18],0x106a7b4
  00aef547:	eb 02                                          	JMP 0x00aef54b
  00aef549:	33 c0                                          	XOR EAX,EAX
  00aef54b:	8b 4e 10                                       	MOV ECX,dword ptr [ESI + 0x10]
  00aef54e:	8b 56 0c                                       	MOV EDX,dword ptr [ESI + 0xc]
  00aef551:	83 c1 01                                       	ADD ECX,0x1
  00aef554:	51                                             	PUSH ECX
  00aef555:	83 c2 01                                       	ADD EDX,0x1
  00aef558:	52                                             	PUSH EDX
  00aef559:	8b c8                                          	MOV ECX,EAX
  00aef55b:	89 86 cc 00 00 00                              	MOV dword ptr [ESI + 0xcc],EAX
  00aef561:	e8 4a 42 f5 ff                                 	CALL 0x00a437b0
  00aef566:	33 db                                          	XOR EBX,EBX
  00aef568:	39 6e 0c                                       	CMP dword ptr [ESI + 0xc],EBP
  00aef56b:	89 5c 24 14                                    	MOV dword ptr [ESP + 0x14],EBX
  00aef56f:	0f 8c 9a 00 00 00                              	JL 0x00aef60f
  00aef575:	39 6e 10                                       	CMP dword ptr [ESI + 0x10],EBP
  00aef578:	0f 8c 81 00 00 00                              	JL 0x00aef5ff
  00aef57e:	8b ff                                          	MOV EDI,EDI
  00aef580:	8b 96 c8 00 00 00                              	MOV EDX,dword ptr [ESI + 0xc8]
  00aef586:	8b 46 08                                       	MOV EAX,dword ptr [ESI + 0x8]
  00aef589:	8b 7a 08                                       	MOV EDI,dword ptr [EDX + 0x8]
  00aef58c:	8b 48 24                                       	MOV ECX,dword ptr [EAX + 0x24]
  00aef58f:	0f af fb                                       	IMUL EDI,EBX
  00aef592:	8b 58 18                                       	MOV EBX,dword ptr [EAX + 0x18]
  00aef595:	2b 58 10                                       	SUB EBX,dword ptr [EAX + 0x10]
  00aef598:	8b 52 0c                                       	MOV EDX,dword ptr [EDX + 0xc]
  00aef59b:	0f af 59 04                                    	IMUL EBX,dword ptr [ECX + 0x4]
  00aef59f:	8b c3                                          	MOV EAX,EBX
  00aef5a1:	8b 5c 24 14                                    	MOV EBX,dword ptr [ESP + 0x14]
  00aef5a5:	03 c3                                          	ADD EAX,EBX
  00aef5a7:	0f af 41 08                                    	IMUL EAX,dword ptr [ECX + 0x8]
  00aef5ab:	8b 49 10                                       	MOV ECX,dword ptr [ECX + 0x10]
  00aef5ae:	03 fd                                          	ADD EDI,EBP
  00aef5b0:	f3 0f 10 04 ba                                 	MOVSS XMM0,dword ptr [EDX + EDI*0x4]
  00aef5b5:	03 c5                                          	ADD EAX,EBP
  00aef5b7:	0f 2f 04 81                                    	COMISS XMM0,dword ptr [ECX + EAX*0x4]
  00aef5bb:	c6 44 24 13 01                                 	MOV byte ptr [ESP + 0x13],0x1
  00aef5c0:	77 05                                          	JA 0x00aef5c7
  00aef5c2:	c6 44 24 13 00                                 	MOV byte ptr [ESP + 0x13],0x0
  00aef5c7:	8b be cc 00 00 00                              	MOV EDI,dword ptr [ESI + 0xcc]
  00aef5cd:	8b 4f 08                                       	MOV ECX,dword ptr [EDI + 0x8]
  00aef5d0:	0f af cb                                       	IMUL ECX,EBX
  00aef5d3:	03 cd                                          	ADD ECX,EBP
  00aef5d5:	8b d1                                          	MOV EDX,ECX
  00aef5d7:	83 e1 07                                       	AND ECX,0x7
  00aef5da:	b0 01                                          	MOV AL,0x1
  00aef5dc:	d2 e0                                          	SHL AL,CL
  00aef5de:	8b 4f 0c                                       	MOV ECX,dword ptr [EDI + 0xc]
  00aef5e1:	c1 fa 03                                       	SAR EDX,0x3
  00aef5e4:	03 d1                                          	ADD EDX,ECX
  00aef5e6:	80 7c 24 13 00                                 	CMP byte ptr [ESP + 0x13],0x0
  00aef5eb:	74 04                                          	JZ 0x00aef5f1
  00aef5ed:	08 02                                          	OR byte ptr [EDX],AL
  00aef5ef:	eb 04                                          	JMP 0x00aef5f5
  00aef5f1:	f6 d0                                          	NOT AL
  00aef5f3:	20 02                                          	AND byte ptr [EDX],AL
  00aef5f5:	83 c5 01                                       	ADD EBP,0x1
  00aef5f8:	3b 6e 10                                       	CMP EBP,dword ptr [ESI + 0x10]
  00aef5fb:	7e 83                                          	JLE 0x00aef580
  00aef5fd:	33 ed                                          	XOR EBP,EBP
  00aef5ff:	83 c3 01                                       	ADD EBX,0x1
  00aef602:	3b 5e 0c                                       	CMP EBX,dword ptr [ESI + 0xc]
  00aef605:	89 5c 24 14                                    	MOV dword ptr [ESP + 0x14],EBX
  00aef609:	0f 8e 66 ff ff ff                              	JLE 0x00aef575
  00aef60f:	39 ae d0 00 00 00                              	CMP dword ptr [ESI + 0xd0],EBP
  00aef615:	0f 85 93 00 00 00                              	JNZ 0x00aef6ae
  00aef61b:	55                                             	PUSH EBP
  00aef61c:	55                                             	PUSH EBP
  00aef61d:	55                                             	PUSH EBP
  00aef61e:	55                                             	PUSH EBP
  00aef61f:	68 94 a7 06 01                                 	PUSH 0x106a794
  00aef624:	6a 1c                                          	PUSH 0x1c
  00aef626:	e8 d5 4e 9f ff                                 	CALL 0x004e4500
  00aef62b:	83 c4 18                                       	ADD ESP,0x18
  00aef62e:	3b c5                                          	CMP EAX,EBP
  00aef630:	74 20                                          	JZ 0x00aef652
  00aef632:	c7 00 94 fb 05 01                              	MOV dword ptr [EAX],0x105fb94
  00aef638:	89 68 04                                       	MOV dword ptr [EAX + 0x4],EBP
  00aef63b:	89 68 08                                       	MOV dword ptr [EAX + 0x8],EBP
  00aef63e:	89 68 0c                                       	MOV dword ptr [EAX + 0xc],EBP
  00aef641:	89 68 10                                       	MOV dword ptr [EAX + 0x10],EBP
  00aef644:	89 68 14                                       	MOV dword ptr [EAX + 0x14],EBP
  00aef647:	c7 40 18 94 a7 06 01                           	MOV dword ptr [EAX + 0x18],0x106a794
  00aef64e:	8b f8                                          	MOV EDI,EAX
  00aef650:	eb 02                                          	JMP 0x00aef654
  00aef652:	33 ff                                          	XOR EDI,EDI
  00aef654:	8b 46 0c                                       	MOV EAX,dword ptr [ESI + 0xc]
  00aef657:	8b 4e 10                                       	MOV ECX,dword ptr [ESI + 0x10]
  00aef65a:	83 c0 01                                       	ADD EAX,0x1
  00aef65d:	83 c1 01                                       	ADD ECX,0x1
  00aef660:	89 be d0 00 00 00                              	MOV dword ptr [ESI + 0xd0],EDI
  00aef666:	89 47 04                                       	MOV dword ptr [EDI + 0x4],EAX
  00aef669:	0f af c1                                       	IMUL EAX,ECX
  00aef66c:	89 4f 08                                       	MOV dword ptr [EDI + 0x8],ECX
  00aef66f:	8b c8                                          	MOV ECX,EAX
  00aef671:	99                                             	CDQ
  00aef672:	83 e2 07                                       	AND EDX,0x7
  00aef675:	03 c2                                          	ADD EAX,EDX
  00aef677:	c1 f8 03                                       	SAR EAX,0x3
  00aef67a:	81 e1 07 00 00 80                              	AND ECX,0x80000007
  00aef680:	79 05                                          	JNS 0x00aef687
  00aef682:	49                                             	DEC ECX
  00aef683:	83 c9 f8                                       	OR ECX,0xfffffff8
  00aef686:	41                                             	INC ECX
  00aef687:	74 03                                          	JZ 0x00aef68c
  00aef689:	83 c0 01                                       	ADD EAX,0x1
  00aef68c:	50                                             	PUSH EAX
  00aef68d:	8d 4f 0c                                       	LEA ECX,[EDI + 0xc]
  00aef690:	e8 8b 37 92 ff                                 	CALL 0x00412e20
  00aef695:	8b 86 d0 00 00 00                              	MOV EAX,dword ptr [ESI + 0xd0]
  00aef69b:	8b 48 0c                                       	MOV ECX,dword ptr [EAX + 0xc]
  00aef69e:	8b 50 10                                       	MOV EDX,dword ptr [EAX + 0x10]
  00aef6a1:	2b d1                                          	SUB EDX,ECX
  00aef6a3:	52                                             	PUSH EDX
  00aef6a4:	55                                             	PUSH EBP
  00aef6a5:	51                                             	PUSH ECX
  00aef6a6:	e8 ed fb 48 00                                 	CALL 0x00f7f298
  00aef6ab:	83 c4 0c                                       	ADD ESP,0xc
  00aef6ae:	39 ae e4 00 00 00                              	CMP dword ptr [ESI + 0xe4],EBP
  00aef6b4:	0f 85 7c 00 00 00                              	JNZ 0x00aef736
  00aef6ba:	55                                             	PUSH EBP
  00aef6bb:	55                                             	PUSH EBP
  00aef6bc:	55                                             	PUSH EBP
  00aef6bd:	55                                             	PUSH EBP
  00aef6be:	68 74 a7 06 01                                 	PUSH 0x106a774
  00aef6c3:	6a 1c                                          	PUSH 0x1c
  00aef6c5:	e8 36 4e 9f ff                                 	CALL 0x004e4500
  00aef6ca:	83 c4 18                                       	ADD ESP,0x18
  00aef6cd:	3b c5                                          	CMP EAX,EBP
  00aef6cf:	74 20                                          	JZ 0x00aef6f1
  00aef6d1:	c7 00 94 fb 05 01                              	MOV dword ptr [EAX],0x105fb94
  00aef6d7:	89 68 04                                       	MOV dword ptr [EAX + 0x4],EBP
  00aef6da:	89 68 08                                       	MOV dword ptr [EAX + 0x8],EBP
  00aef6dd:	89 68 0c                                       	MOV dword ptr [EAX + 0xc],EBP
  00aef6e0:	89 68 10                                       	MOV dword ptr [EAX + 0x10],EBP
  00aef6e3:	89 68 14                                       	MOV dword ptr [EAX + 0x14],EBP
  00aef6e6:	c7 40 18 74 a7 06 01                           	MOV dword ptr [EAX + 0x18],0x106a774
  00aef6ed:	8b d8                                          	MOV EBX,EAX
  00aef6ef:	eb 02                                          	JMP 0x00aef6f3
  00aef6f1:	33 db                                          	XOR EBX,EBX
  00aef6f3:	8b 7e 10                                       	MOV EDI,dword ptr [ESI + 0x10]
  00aef6f6:	8b 46 0c                                       	MOV EAX,dword ptr [ESI + 0xc]
  00aef6f9:	03 ff                                          	ADD EDI,EDI
  00aef6fb:	03 ff                                          	ADD EDI,EDI
  00aef6fd:	89 44 24 18                                    	MOV dword ptr [ESP + 0x18],EAX
  00aef701:	0f af c7                                       	IMUL EAX,EDI
  00aef704:	50                                             	PUSH EAX
  00aef705:	8d 4b 0c                                       	LEA ECX,[EBX + 0xc]
  00aef708:	89 9e e4 00 00 00                              	MOV dword ptr [ESI + 0xe4],EBX
  00aef70e:	e8 0d 37 92 ff                                 	CALL 0x00412e20
  00aef713:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00aef717:	89 43 04                                       	MOV dword ptr [EBX + 0x4],EAX
  00aef71a:	89 7b 08                                       	MOV dword ptr [EBX + 0x8],EDI
  00aef71d:	8b b6 e4 00 00 00                              	MOV ESI,dword ptr [ESI + 0xe4]
  00aef723:	8b 46 0c                                       	MOV EAX,dword ptr [ESI + 0xc]
  00aef726:	8b 4e 10                                       	MOV ECX,dword ptr [ESI + 0x10]
  00aef729:	2b c8                                          	SUB ECX,EAX
  00aef72b:	51                                             	PUSH ECX
  00aef72c:	55                                             	PUSH EBP
  00aef72d:	50                                             	PUSH EAX
  00aef72e:	e8 65 fb 48 00                                 	CALL 0x00f7f298
  00aef733:	83 c4 0c                                       	ADD ESP,0xc
  00aef736:	5f                                             	POP EDI
  00aef737:	5b                                             	POP EBX
  00aef738:	5e                                             	POP ESI
  00aef739:	5d                                             	POP EBP
  00aef73a:	83 c4 0c                                       	ADD ESP,0xc
  00aef73d:	c3                                             	RET
