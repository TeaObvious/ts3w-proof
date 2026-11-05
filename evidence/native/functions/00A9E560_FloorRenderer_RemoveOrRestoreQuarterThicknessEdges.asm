# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00a9e560 (FloorRenderer_RemoveOrRestoreQuarterThicknessEdges)
Paired actual Ghidra pseudocode: 00A9E560_FloorRenderer_RemoveOrRestoreQuarterThicknessEdges.c
Envelope [0x00a9e560,0x00a9e7bc); 604 bytes; exact owned ranges: [0x00a9e560,0x00a9e7bc)
Owned: 604 original bytes / 169 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00a9e560 <original>:
  00a9e560:	81 ec 9c 00 00 00                              	SUB ESP,0x9c
  00a9e566:	8b 94 24 a0 00 00 00                           	MOV EDX,dword ptr [ESP + 0xa0]
  00a9e56d:	53                                             	PUSH EBX
  00a9e56e:	55                                             	PUSH EBP
  00a9e56f:	56                                             	PUSH ESI
  00a9e570:	57                                             	PUSH EDI
  00a9e571:	8b f9                                          	MOV EDI,ECX
  00a9e573:	83 7f 14 00                                    	CMP dword ptr [EDI + 0x14],0x0
  00a9e577:	89 7c 24 34                                    	MOV dword ptr [ESP + 0x34],EDI
  00a9e57b:	75 2e                                          	JNZ 0x00a9e5ab
  00a9e57d:	8a 0a                                          	MOV CL,byte ptr [EDX]
  00a9e57f:	84 c9                                          	TEST CL,CL
  00a9e581:	74 21                                          	JZ 0x00a9e5a4
  00a9e583:	8a 42 01                                       	MOV AL,byte ptr [EDX + 0x1]
  00a9e586:	84 c0                                          	TEST AL,AL
  00a9e588:	74 1a                                          	JZ 0x00a9e5a4
  00a9e58a:	8b 77 1c                                       	MOV ESI,dword ptr [EDI + 0x1c]
  00a9e58d:	0f be c9                                       	MOVSX ECX,CL
  00a9e590:	83 ee 01                                       	SUB ESI,0x1
  00a9e593:	3b ce                                          	CMP ECX,ESI
  00a9e595:	74 0d                                          	JZ 0x00a9e5a4
  00a9e597:	8b 4f 20                                       	MOV ECX,dword ptr [EDI + 0x20]
  00a9e59a:	0f be c0                                       	MOVSX EAX,AL
  00a9e59d:	83 e9 01                                       	SUB ECX,0x1
  00a9e5a0:	3b c1                                          	CMP EAX,ECX
  00a9e5a2:	75 07                                          	JNZ 0x00a9e5ab
  00a9e5a4:	c6 44 24 13 01                                 	MOV byte ptr [ESP + 0x13],0x1
  00a9e5a9:	eb 05                                          	JMP 0x00a9e5b0
  00a9e5ab:	c6 44 24 13 00                                 	MOV byte ptr [ESP + 0x13],0x0
  00a9e5b0:	8d 4c 24 7c                                    	LEA ECX,[ESP + 0x7c]
  00a9e5b4:	51                                             	PUSH ECX
  00a9e5b5:	52                                             	PUSH EDX
  00a9e5b6:	e8 45 92 05 00                                 	CALL 0x00af7800
  00a9e5bb:	83 c4 08                                       	ADD ESP,0x8
  00a9e5be:	8d 9c 24 84 00 00 00                           	LEA EBX,[ESP + 0x84]
  00a9e5c5:	c7 44 24 38 03 00 00 00                        	MOV dword ptr [ESP + 0x38],0x3
  00a9e5cd:	8d 49 00                                       	LEA ECX,[ECX]
  00a9e5d0:	80 7c 24 13 00                                 	CMP byte ptr [ESP + 0x13],0x0
  00a9e5d5:	0f 84 04 01 00 00                              	JZ 0x00a9e6df
  00a9e5db:	8d 54 24 44                                    	LEA EDX,[ESP + 0x44]
  00a9e5df:	52                                             	PUSH EDX
  00a9e5e0:	8d 44 24 40                                    	LEA EAX,[ESP + 0x40]
  00a9e5e4:	50                                             	PUSH EAX
  00a9e5e5:	8d 4c 24 50                                    	LEA ECX,[ESP + 0x50]
  00a9e5e9:	51                                             	PUSH ECX
  00a9e5ea:	8d 54 24 4c                                    	LEA EDX,[ESP + 0x4c]
  00a9e5ee:	52                                             	PUSH EDX
  00a9e5ef:	8d 43 f8                                       	LEA EAX,[EBX + -0x8]
  00a9e5f2:	50                                             	PUSH EAX
  00a9e5f3:	e8 78 93 05 00                                 	CALL 0x00af7970
  00a9e5f8:	f3 0f 10 54 24 54                              	MOVSS XMM2,dword ptr [ESP + 0x54]
  00a9e5fe:	f3 0f 10 05 68 45 06 01                        	MOVSS XMM0,dword ptr [0x01064568]
  00a9e606:	8b 47 0c                                       	MOV EAX,dword ptr [EDI + 0xc]
  00a9e609:	f3 0f 11 54 24 44                              	MOVSS dword ptr [ESP + 0x44],XMM2
  00a9e60f:	b9 ff ff ff 7f                                 	MOV ECX,0x7fffffff
  00a9e614:	21 4c 24 44                                    	AND dword ptr [ESP + 0x44],ECX
  00a9e618:	83 c4 14                                       	ADD ESP,0x14
  00a9e61b:	0f 2f 44 24 30                                 	COMISS XMM0,dword ptr [ESP + 0x30]
  00a9e620:	77 4b                                          	JA 0x00a9e66d
  00a9e622:	f3 0f 10 4c 24 48                              	MOVSS XMM1,dword ptr [ESP + 0x48]
  00a9e628:	f3 0f 11 4c 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM1
  00a9e62e:	21 4c 24 28                                    	AND dword ptr [ESP + 0x28],ECX
  00a9e632:	0f 2f 44 24 28                                 	COMISS XMM0,dword ptr [ESP + 0x28]
  00a9e637:	77 34                                          	JA 0x00a9e66d
  00a9e639:	f3 0f 2a 58 60                                 	CVTSI2SS XMM3,dword ptr [EAX + 0x60]
  00a9e63e:	f3 0f 5c d3                                    	SUBSS XMM2,XMM3
  00a9e642:	f3 0f 11 54 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM2
  00a9e648:	21 4c 24 20                                    	AND dword ptr [ESP + 0x20],ECX
  00a9e64c:	0f 2f 44 24 20                                 	COMISS XMM0,dword ptr [ESP + 0x20]
  00a9e651:	77 1a                                          	JA 0x00a9e66d
  00a9e653:	f3 0f 2a 50 64                                 	CVTSI2SS XMM2,dword ptr [EAX + 0x64]
  00a9e658:	f3 0f 5c ca                                    	SUBSS XMM1,XMM2
  00a9e65c:	f3 0f 11 4c 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM1
  00a9e662:	21 4c 24 14                                    	AND dword ptr [ESP + 0x14],ECX
  00a9e666:	0f 2f 44 24 14                                 	COMISS XMM0,dword ptr [ESP + 0x14]
  00a9e66b:	76 72                                          	JBE 0x00a9e6df
  00a9e66d:	f3 0f 10 54 24 3c                              	MOVSS XMM2,dword ptr [ESP + 0x3c]
  00a9e673:	f3 0f 11 54 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM2
  00a9e679:	21 4c 24 18                                    	AND dword ptr [ESP + 0x18],ECX
  00a9e67d:	0f 2f 44 24 18                                 	COMISS XMM0,dword ptr [ESP + 0x18]
  00a9e682:	0f 87 12 01 00 00                              	JA 0x00a9e79a
  00a9e688:	f3 0f 10 4c 24 44                              	MOVSS XMM1,dword ptr [ESP + 0x44]
  00a9e68e:	f3 0f 11 4c 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM1
  00a9e694:	21 4c 24 1c                                    	AND dword ptr [ESP + 0x1c],ECX
  00a9e698:	0f 2f 44 24 1c                                 	COMISS XMM0,dword ptr [ESP + 0x1c]
  00a9e69d:	0f 87 f7 00 00 00                              	JA 0x00a9e79a
  00a9e6a3:	f3 0f 2a 58 60                                 	CVTSI2SS XMM3,dword ptr [EAX + 0x60]
  00a9e6a8:	f3 0f 5c d3                                    	SUBSS XMM2,XMM3
  00a9e6ac:	f3 0f 11 54 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM2
  00a9e6b2:	21 4c 24 24                                    	AND dword ptr [ESP + 0x24],ECX
  00a9e6b6:	0f 2f 44 24 24                                 	COMISS XMM0,dword ptr [ESP + 0x24]
  00a9e6bb:	0f 87 d9 00 00 00                              	JA 0x00a9e79a
  00a9e6c1:	f3 0f 2a 50 64                                 	CVTSI2SS XMM2,dword ptr [EAX + 0x64]
  00a9e6c6:	f3 0f 5c ca                                    	SUBSS XMM1,XMM2
  00a9e6ca:	f3 0f 11 4c 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM1
  00a9e6d0:	21 4c 24 2c                                    	AND dword ptr [ESP + 0x2c],ECX
  00a9e6d4:	0f 2f 44 24 2c                                 	COMISS XMM0,dword ptr [ESP + 0x2c]
  00a9e6d9:	0f 87 bb 00 00 00                              	JA 0x00a9e79a
  00a9e6df:	8b 73 fc                                       	MOV ESI,dword ptr [EBX + -0x4]
  00a9e6e2:	c1 e6 0e                                       	SHL ESI,0xe
  00a9e6e5:	0b 73 f8                                       	OR ESI,dword ptr [EBX + -0x8]
  00a9e6e8:	03 f6                                          	ADD ESI,ESI
  00a9e6ea:	03 f6                                          	ADD ESI,ESI
  00a9e6ec:	03 f6                                          	ADD ESI,ESI
  00a9e6ee:	0b 33                                          	OR ESI,dword ptr [EBX]
  00a9e6f0:	80 7b 04 00                                    	CMP byte ptr [EBX + 0x4],0x0
  00a9e6f4:	74 06                                          	JZ 0x00a9e6fc
  00a9e6f6:	81 ce 00 00 00 80                              	OR ESI,0x80000000
  00a9e6fc:	8d 4f 50                                       	LEA ECX,[EDI + 0x50]
  00a9e6ff:	8b 79 08                                       	MOV EDI,dword ptr [ECX + 0x8]
  00a9e702:	33 d2                                          	XOR EDX,EDX
  00a9e704:	8b c6                                          	MOV EAX,ESI
  00a9e706:	f7 f7                                          	DIV EDI
  00a9e708:	8b 69 04                                       	MOV EBP,dword ptr [ECX + 0x4]
  00a9e70b:	8b 44 95 00                                    	MOV EAX,dword ptr [EBP + EDX*0x4]
  00a9e70f:	85 c0                                          	TEST EAX,EAX
  00a9e711:	8d 54 95 00                                    	LEA EDX,[EBP + EDX*0x4]
  00a9e715:	74 0b                                          	JZ 0x00a9e722
  00a9e717:	3b 30                                          	CMP ESI,dword ptr [EAX]
  00a9e719:	74 40                                          	JZ 0x00a9e75b
  00a9e71b:	8b 40 04                                       	MOV EAX,dword ptr [EAX + 0x4]
  00a9e71e:	85 c0                                          	TEST EAX,EAX
  00a9e720:	75 f5                                          	JNZ 0x00a9e717
  00a9e722:	8b 54 bd 00                                    	MOV EDX,dword ptr [EBP + EDI*0x4]
  00a9e726:	8d 44 bd 00                                    	LEA EAX,[EBP + EDI*0x4]
  00a9e72a:	89 44 24 64                                    	MOV dword ptr [ESP + 0x64],EAX
  00a9e72e:	89 54 24 60                                    	MOV dword ptr [ESP + 0x60],EDX
  00a9e732:	8d 44 24 60                                    	LEA EAX,[ESP + 0x60]
  00a9e736:	8b 78 04                                       	MOV EDI,dword ptr [EAX + 0x4]
  00a9e739:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00a9e73b:	89 7c 24 54                                    	MOV dword ptr [ESP + 0x54],EDI
  00a9e73f:	8b 79 08                                       	MOV EDI,dword ptr [ECX + 0x8]
  00a9e742:	3b 54 bd 00                                    	CMP EDX,dword ptr [EBP + EDI*0x4]
  00a9e746:	74 21                                          	JZ 0x00a9e769
  00a9e748:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00a9e74b:	8b 00                                          	MOV EAX,dword ptr [EAX]
  00a9e74d:	52                                             	PUSH EDX
  00a9e74e:	50                                             	PUSH EAX
  00a9e74f:	8d 54 24 70                                    	LEA EDX,[ESP + 0x70]
  00a9e753:	52                                             	PUSH EDX
  00a9e754:	e8 57 1b 04 00                                 	CALL 0x00ae02b0
  00a9e759:	eb 3b                                          	JMP 0x00a9e796
  00a9e75b:	89 44 24 58                                    	MOV dword ptr [ESP + 0x58],EAX
  00a9e75f:	89 54 24 5c                                    	MOV dword ptr [ESP + 0x5c],EDX
  00a9e763:	8d 44 24 58                                    	LEA EAX,[ESP + 0x58]
  00a9e767:	eb cd                                          	JMP 0x00a9e736
  00a9e769:	80 bc 24 b4 00 00 00 00                        	CMP byte ptr [ESP + 0xb4],0x0
  00a9e771:	75 23                                          	JNZ 0x00a9e796
  00a9e773:	c6 44 24 4c 00                                 	MOV byte ptr [ESP + 0x4c],0x0
  00a9e778:	8b 44 24 4c                                    	MOV EAX,dword ptr [ESP + 0x4c]
  00a9e77c:	50                                             	PUSH EAX
  00a9e77d:	8d 54 24 54                                    	LEA EDX,[ESP + 0x54]
  00a9e781:	52                                             	PUSH EDX
  00a9e782:	8d 44 24 78                                    	LEA EAX,[ESP + 0x78]
  00a9e786:	81 f6 00 00 00 80                              	XOR ESI,0x80000000
  00a9e78c:	50                                             	PUSH EAX
  00a9e78d:	89 74 24 5c                                    	MOV dword ptr [ESP + 0x5c],ESI
  00a9e791:	e8 2a 74 c1 ff                                 	CALL 0x006b5bc0
  00a9e796:	8b 7c 24 34                                    	MOV EDI,dword ptr [ESP + 0x34]
  00a9e79a:	83 c3 10                                       	ADD EBX,0x10
  00a9e79d:	83 6c 24 38 01                                 	SUB dword ptr [ESP + 0x38],0x1
  00a9e7a2:	0f 85 28 fe ff ff                              	JNZ 0x00a9e5d0
  00a9e7a8:	c6 87 90 00 00 00 01                           	MOV byte ptr [EDI + 0x90],0x1
  00a9e7af:	5f                                             	POP EDI
  00a9e7b0:	5e                                             	POP ESI
  00a9e7b1:	5d                                             	POP EBP
  00a9e7b2:	5b                                             	POP EBX
  00a9e7b3:	81 c4 9c 00 00 00                              	ADD ESP,0x9c
  00a9e7b9:	c2 08 00                                       	RET 0x8
