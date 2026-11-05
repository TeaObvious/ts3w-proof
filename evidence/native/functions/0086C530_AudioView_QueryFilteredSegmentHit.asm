# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x0086c530 (AudioView_QueryFilteredSegmentHit)
Paired actual Ghidra pseudocode: 0086C530_AudioView_QueryFilteredSegmentHit.c
Body [0x0086c530,0x0086c789); 601 pristine original bytes / 186 actual saved Listing instructions.
Original instruction bytes and actual saved Listing text; inferred prototypes are retained.
Physical registers, AL results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0086c530 <original>:
  0086c530:	55                                             	PUSH EBP
  0086c531:	8b ec                                          	MOV EBP,ESP
  0086c533:	83 e4 f0                                       	AND ESP,0xfffffff0
  0086c536:	83 ec 54                                       	SUB ESP,0x54
  0086c539:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  0086c53c:	0f 28 00                                       	MOVAPS XMM0,xmmword ptr [EAX]
  0086c53f:	53                                             	PUSH EBX
  0086c540:	56                                             	PUSH ESI
  0086c541:	57                                             	PUSH EDI
  0086c542:	0f 29 44 24 20                                 	MOVAPS xmmword ptr [ESP + 0x20],XMM0
  0086c547:	e8 14 a9 e1 ff                                 	CALL 0x00686e60
  0086c54c:	85 c0                                          	TEST EAX,EAX
  0086c54e:	89 44 24 10                                    	MOV dword ptr [ESP + 0x10],EAX
  0086c552:	0f 84 1f 02 00 00                              	JZ 0x0086c777
  0086c558:	8b 0d c4 db 1e 01                              	MOV ECX,dword ptr [0x011edbc4]
  0086c55e:	8b 55 18                                       	MOV EDX,dword ptr [EBP + 0x18]
  0086c561:	8b 5d 14                                       	MOV EBX,dword ptr [EBP + 0x14]
  0086c564:	52                                             	PUSH EDX
  0086c565:	8b 55 0c                                       	MOV EDX,dword ptr [EBP + 0xc]
  0086c568:	89 4c 24 10                                    	MOV dword ptr [ESP + 0x10],ECX
  0086c56c:	8b 4d 10                                       	MOV ECX,dword ptr [EBP + 0x10]
  0086c56f:	53                                             	PUSH EBX
  0086c570:	51                                             	PUSH ECX
  0086c571:	52                                             	PUSH EDX
  0086c572:	8d 4c 24 30                                    	LEA ECX,[ESP + 0x30]
  0086c576:	51                                             	PUSH ECX
  0086c577:	8b c8                                          	MOV ECX,EAX
  0086c579:	e8 12 ae e1 ff                                 	CALL 0x00687390
  0086c57e:	84 c0                                          	TEST AL,AL
  0086c580:	0f 84 f1 01 00 00                              	JZ 0x0086c777
  0086c586:	8b 43 38                                       	MOV EAX,dword ptr [EBX + 0x38]
  0086c589:	85 c0                                          	TEST EAX,EAX
  0086c58b:	0f 84 ef 01 00 00                              	JZ 0x0086c780
  0086c591:	f6 40 34 02                                    	TEST byte ptr [EAX + 0x34],0x2
  0086c595:	0f 84 e5 01 00 00                              	JZ 0x0086c780
  0086c59b:	0f 28 43 10                                    	MOVAPS XMM0,xmmword ptr [EBX + 0x10]
  0086c59f:	8b 4c 24 0c                                    	MOV ECX,dword ptr [ESP + 0xc]
  0086c5a3:	8d 7b 10                                       	LEA EDI,[EBX + 0x10]
  0086c5a6:	0f 29 44 24 30                                 	MOVAPS xmmword ptr [ESP + 0x30],XMM0
  0086c5ab:	d9 44 24 38                                    	FLD float ptr [ESP + 0x38]
  0086c5af:	83 ec 08                                       	SUB ESP,0x8
  0086c5b2:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  0086c5b6:	0f 29 44 24 48                                 	MOVAPS xmmword ptr [ESP + 0x48],XMM0
  0086c5bb:	d9 44 24 48                                    	FLD float ptr [ESP + 0x48]
  0086c5bf:	d9 1c 24                                       	FSTP float ptr [ESP]
  0086c5c2:	e8 09 c2 3f 00                                 	CALL 0x00c687d0
  0086c5c7:	8b f0                                          	MOV ESI,EAX
  0086c5c9:	85 f6                                          	TEST ESI,ESI
  0086c5cb:	0f 84 af 01 00 00                              	JZ 0x0086c780
  0086c5d1:	f3 0f 10 05 18 b2 fa 00                        	MOVSS XMM0,dword ptr [0x00fab218]
  0086c5d9:	8d 54 24 14                                    	LEA EDX,[ESP + 0x14]
  0086c5dd:	52                                             	PUSH EDX
  0086c5de:	57                                             	PUSH EDI
  0086c5df:	56                                             	PUSH ESI
  0086c5e0:	f3 0f 11 44 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM0
  0086c5e6:	f3 0f 11 44 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM0
  0086c5ec:	c7 44 24 28 00 00 00 00                        	MOV dword ptr [ESP + 0x28],0x0
  0086c5f4:	e8 67 02 27 00                                 	CALL 0x00adc860
  0086c5f9:	6a 01                                          	PUSH 0x1
  0086c5fb:	6a 00                                          	PUSH 0x0
  0086c5fd:	6a 00                                          	PUSH 0x0
  0086c5ff:	8d 44 24 2c                                    	LEA EAX,[ESP + 0x2c]
  0086c603:	50                                             	PUSH EAX
  0086c604:	56                                             	PUSH ESI
  0086c605:	e8 06 17 29 00                                 	CALL 0x00afdd10
  0086c60a:	83 c4 20                                       	ADD ESP,0x20
  0086c60d:	84 c0                                          	TEST AL,AL
  0086c60f:	0f 85 6b 01 00 00                              	JNZ 0x0086c780
  0086c615:	8b 45 0c                                       	MOV EAX,dword ptr [EBP + 0xc]
  0086c618:	0f 28 07                                       	MOVAPS XMM0,xmmword ptr [EDI]
  0086c61b:	0f 28 30                                       	MOVAPS XMM6,xmmword ptr [EAX]
  0086c61e:	0f 29 44 24 50                                 	MOVAPS xmmword ptr [ESP + 0x50],XMM0
  0086c623:	0f 28 ee                                       	MOVAPS XMM5,XMM6
  0086c626:	0f 5c e8                                       	SUBPS XMM5,XMM0
  0086c629:	0f 28 c5                                       	MOVAPS XMM0,XMM5
  0086c62c:	0f 57 c9                                       	XORPS XMM1,XMM1
  0086c62f:	0f c2 c1 00                                    	CMPEQPS XMM0,XMM1
  0086c633:	0f 50 c8                                       	MOVMSKPS ECX,XMM0
  0086c636:	83 e1 07                                       	AND ECX,0x7
  0086c639:	80 f9 07                                       	CMP CL,0x7
  0086c63c:	0f 84 35 01 00 00                              	JZ 0x0086c777
  0086c642:	0f 28 cd                                       	MOVAPS XMM1,XMM5
  0086c645:	0f 59 cd                                       	MULPS XMM1,XMM5
  0086c648:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  0086c64b:	0f c6 c1 02                                    	SHUFPS XMM0,XMM1,0x2
  0086c64f:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  0086c652:	0f c6 d1 01                                    	SHUFPS XMM2,XMM1,0x1
  0086c656:	0f 58 c2                                       	ADDPS XMM0,XMM2
  0086c659:	0f 58 c1                                       	ADDPS XMM0,XMM1
  0086c65c:	f3 0f 10 0d b4 b5 f9 00                        	MOVSS XMM1,dword ptr [0x00f9b5b4]
  0086c664:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  0086c668:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  0086c66b:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  0086c673:	0f 52 dc                                       	RSQRTPS XMM3,XMM4
  0086c676:	0f 28 fb                                       	MOVAPS XMM7,XMM3
  0086c679:	0f 59 fb                                       	MULPS XMM7,XMM3
  0086c67c:	0f 59 fc                                       	MULPS XMM7,XMM4
  0086c67f:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  0086c683:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  0086c687:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  0086c68a:	0f 5c d7                                       	SUBPS XMM2,XMM7
  0086c68d:	0f 28 f9                                       	MOVAPS XMM7,XMM1
  0086c690:	0f 59 fb                                       	MULPS XMM7,XMM3
  0086c693:	0f 59 d7                                       	MULPS XMM2,XMM7
  0086c696:	0f 58 d3                                       	ADDPS XMM2,XMM3
  0086c699:	0f 28 da                                       	MOVAPS XMM3,XMM2
  0086c69c:	0f 59 da                                       	MULPS XMM3,XMM2
  0086c69f:	0f 59 dc                                       	MULPS XMM3,XMM4
  0086c6a2:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  0086c6a5:	0f 5c e3                                       	SUBPS XMM4,XMM3
  0086c6a8:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  0086c6ab:	0f 59 da                                       	MULPS XMM3,XMM2
  0086c6ae:	0f 59 e3                                       	MULPS XMM4,XMM3
  0086c6b1:	0f 58 e2                                       	ADDPS XMM4,XMM2
  0086c6b4:	f3 0f 10 15 ec e6 06 01                        	MOVSS XMM2,dword ptr [0x0106e6ec]
  0086c6bc:	0f 59 e5                                       	MULPS XMM4,XMM5
  0086c6bf:	0f c6 d2 00                                    	SHUFPS XMM2,XMM2,0x0
  0086c6c3:	0f 59 d4                                       	MULPS XMM2,XMM4
  0086c6c6:	0f 58 54 24 50                                 	ADDPS XMM2,xmmword ptr [ESP + 0x50]
  0086c6cb:	0f 5c f2                                       	SUBPS XMM6,XMM2
  0086c6ce:	0f 29 54 24 20                                 	MOVAPS xmmword ptr [ESP + 0x20],XMM2
  0086c6d3:	0f 28 de                                       	MOVAPS XMM3,XMM6
  0086c6d6:	0f 59 de                                       	MULPS XMM3,XMM6
  0086c6d9:	0f 28 d3                                       	MOVAPS XMM2,XMM3
  0086c6dc:	0f c6 d3 02                                    	SHUFPS XMM2,XMM3,0x2
  0086c6e0:	0f 28 eb                                       	MOVAPS XMM5,XMM3
  0086c6e3:	0f c6 eb 01                                    	SHUFPS XMM5,XMM3,0x1
  0086c6e7:	0f 58 d5                                       	ADDPS XMM2,XMM5
  0086c6ea:	0f 58 d3                                       	ADDPS XMM2,XMM3
  0086c6ed:	0f 28 d8                                       	MOVAPS XMM3,XMM0
  0086c6f0:	0f c6 d2 00                                    	SHUFPS XMM2,XMM2,0x0
  0086c6f4:	0f 52 ea                                       	RSQRTPS XMM5,XMM2
  0086c6f7:	0f 28 fd                                       	MOVAPS XMM7,XMM5
  0086c6fa:	0f 59 fd                                       	MULPS XMM7,XMM5
  0086c6fd:	0f 59 fa                                       	MULPS XMM7,XMM2
  0086c700:	0f 5c df                                       	SUBPS XMM3,XMM7
  0086c703:	0f 28 f9                                       	MOVAPS XMM7,XMM1
  0086c706:	0f 59 fd                                       	MULPS XMM7,XMM5
  0086c709:	0f 59 df                                       	MULPS XMM3,XMM7
  0086c70c:	0f 58 dd                                       	ADDPS XMM3,XMM5
  0086c70f:	0f 59 cb                                       	MULPS XMM1,XMM3
  0086c712:	0f 28 eb                                       	MOVAPS XMM5,XMM3
  0086c715:	0f 59 eb                                       	MULPS XMM5,XMM3
  0086c718:	0f 59 ea                                       	MULPS XMM5,XMM2
  0086c71b:	0f 5c c5                                       	SUBPS XMM0,XMM5
  0086c71e:	0f 59 c1                                       	MULPS XMM0,XMM1
  0086c721:	f3 0f 10 0d 18 b2 fa 00                        	MOVSS XMM1,dword ptr [0x00fab218]
  0086c729:	0f 58 c3                                       	ADDPS XMM0,XMM3
  0086c72c:	0f 59 c6                                       	MULPS XMM0,XMM6
  0086c72f:	0f 5c c4                                       	SUBPS XMM0,XMM4
  0086c732:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  0086c736:	0f 59 c8                                       	MULPS XMM1,XMM0
  0086c739:	0f 5f c8                                       	MAXPS XMM1,XMM0
  0086c73c:	f3 0f 10 05 a4 a7 02 01                        	MOVSS XMM0,dword ptr [0x0102a7a4]
  0086c744:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  0086c748:	0f c2 c8 02                                    	CMPLEPS XMM1,XMM0
  0086c74c:	0f 50 d1                                       	MOVMSKPS EDX,XMM1
  0086c74f:	83 e2 07                                       	AND EDX,0x7
  0086c752:	80 fa 07                                       	CMP DL,0x7
  0086c755:	75 20                                          	JNZ 0x0086c777
  0086c757:	8b 4d 18                                       	MOV ECX,dword ptr [EBP + 0x18]
  0086c75a:	8b 55 10                                       	MOV EDX,dword ptr [EBP + 0x10]
  0086c75d:	51                                             	PUSH ECX
  0086c75e:	8b 4c 24 14                                    	MOV ECX,dword ptr [ESP + 0x14]
  0086c762:	53                                             	PUSH EBX
  0086c763:	52                                             	PUSH EDX
  0086c764:	50                                             	PUSH EAX
  0086c765:	8d 44 24 30                                    	LEA EAX,[ESP + 0x30]
  0086c769:	50                                             	PUSH EAX
  0086c76a:	e8 21 ac e1 ff                                 	CALL 0x00687390
  0086c76f:	84 c0                                          	TEST AL,AL
  0086c771:	0f 85 0f fe ff ff                              	JNZ 0x0086c586
  0086c777:	32 c0                                          	XOR AL,AL
  0086c779:	5f                                             	POP EDI
  0086c77a:	5e                                             	POP ESI
  0086c77b:	5b                                             	POP EBX
  0086c77c:	8b e5                                          	MOV ESP,EBP
  0086c77e:	5d                                             	POP EBP
  0086c77f:	c3                                             	RET
  0086c780:	5f                                             	POP EDI
  0086c781:	5e                                             	POP ESI
  0086c782:	b0 01                                          	MOV AL,0x1
  0086c784:	5b                                             	POP EBX
  0086c785:	8b e5                                          	MOV ESP,EBP
  0086c787:	5d                                             	POP EBP
  0086c788:	c3                                             	RET
