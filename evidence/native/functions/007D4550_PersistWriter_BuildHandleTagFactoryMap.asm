# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007d4550 (PersistWriter_BuildHandleTagFactoryMap)
Paired actual Ghidra pseudocode: 007D4550_PersistWriter_BuildHandleTagFactoryMap.c
Envelope [0x007d4550,0x007d46c2); 370 bytes; exact owned ranges: [0x007d4550,0x007d46c2)
Owned: 370 original bytes / 127 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007d4550 <original>:
  007d4550:	55                                             	PUSH EBP
  007d4551:	8b ec                                          	MOV EBP,ESP
  007d4553:	83 e4 f8                                       	AND ESP,0xfffffff8
  007d4556:	83 ec 50                                       	SUB ESP,0x50
  007d4559:	53                                             	PUSH EBX
  007d455a:	55                                             	PUSH EBP
  007d455b:	56                                             	PUSH ESI
  007d455c:	57                                             	PUSH EDI
  007d455d:	89 4c 24 20                                    	MOV dword ptr [ESP + 0x20],ECX
  007d4561:	e8 ca f3 db ff                                 	CALL 0x00593930
  007d4566:	8b f0                                          	MOV ESI,EAX
  007d4568:	8b 06                                          	MOV EAX,dword ptr [ESI]
  007d456a:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007d456c:	8b ce                                          	MOV ECX,ESI
  007d456e:	ff d2                                          	CALL EDX
  007d4570:	8b d8                                          	MOV EBX,EAX
  007d4572:	8d 44 24 1c                                    	LEA EAX,[ESP + 0x1c]
  007d4576:	50                                             	PUSH EAX
  007d4577:	53                                             	PUSH EBX
  007d4578:	8d 4c 24 58                                    	LEA ECX,[ESP + 0x58]
  007d457c:	89 5c 24 20                                    	MOV dword ptr [ESP + 0x20],EBX
  007d4580:	c7 44 24 24 a4 b2 01 01                        	MOV dword ptr [ESP + 0x24],0x101b2a4
  007d4588:	e8 a3 7d 57 00                                 	CALL 0x00d4c330
  007d458d:	85 db                                          	TEST EBX,EBX
  007d458f:	8b 6c 24 50                                    	MOV EBP,dword ptr [ESP + 0x50]
  007d4593:	76 08                                          	JBE 0x007d459d
  007d4595:	8b cb                                          	MOV ECX,EBX
  007d4597:	33 c0                                          	XOR EAX,EAX
  007d4599:	8b fd                                          	MOV EDI,EBP
  007d459b:	f3 ab                                          	STOSD.REP ES:EDI
  007d459d:	8b 16                                          	MOV EDX,dword ptr [ESI]
  007d459f:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  007d45a2:	53                                             	PUSH EBX
  007d45a3:	55                                             	PUSH EBP
  007d45a4:	68 79 e0 19 05                                 	PUSH 0x519e079
  007d45a9:	8b ce                                          	MOV ECX,ESI
  007d45ab:	ff d0                                          	CALL EAX
  007d45ad:	3b d8                                          	CMP EBX,EAX
  007d45af:	76 06                                          	JBE 0x007d45b7
  007d45b1:	89 44 24 18                                    	MOV dword ptr [ESP + 0x18],EAX
  007d45b5:	8b d8                                          	MOV EBX,EAX
  007d45b7:	33 f6                                          	XOR ESI,ESI
  007d45b9:	85 db                                          	TEST EBX,EBX
  007d45bb:	89 74 24 1c                                    	MOV dword ptr [ESP + 0x1c],ESI
  007d45bf:	0f 86 d7 00 00 00                              	JBE 0x007d469c
  007d45c5:	8b 7c b5 00                                    	MOV EDI,dword ptr [EBP + ESI*0x4]
  007d45c9:	8b 17                                          	MOV EDX,dword ptr [EDI]
  007d45cb:	8b 42 10                                       	MOV EAX,dword ptr [EDX + 0x10]
  007d45ce:	8b cf                                          	MOV ECX,EDI
  007d45d0:	ff d0                                          	CALL EAX
  007d45d2:	85 c0                                          	TEST EAX,EAX
  007d45d4:	89 44 24 28                                    	MOV dword ptr [ESP + 0x28],EAX
  007d45d8:	c7 44 24 14 00 00 00 00                        	MOV dword ptr [ESP + 0x14],0x0
  007d45e0:	0f 86 a7 00 00 00                              	JBE 0x007d468d
  007d45e6:	8b 6c 24 20                                    	MOV EBP,dword ptr [ESP + 0x20]
  007d45ea:	83 c5 7c                                       	ADD EBP,0x7c
  007d45ed:	8b 17                                          	MOV EDX,dword ptr [EDI]
  007d45ef:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  007d45f3:	8b 52 14                                       	MOV EDX,dword ptr [EDX + 0x14]
  007d45f6:	50                                             	PUSH EAX
  007d45f7:	8b cf                                          	MOV ECX,EDI
  007d45f9:	ff d2                                          	CALL EDX
  007d45fb:	8b 4d 08                                       	MOV ECX,dword ptr [EBP + 0x8]
  007d45fe:	8a d8                                          	MOV BL,AL
  007d4600:	0f b6 c3                                       	MOVZX EAX,BL
  007d4603:	33 d2                                          	XOR EDX,EDX
  007d4605:	f7 f1                                          	DIV ECX
  007d4607:	8b 75 04                                       	MOV ESI,dword ptr [EBP + 0x4]
  007d460a:	8b 04 96                                       	MOV EAX,dword ptr [ESI + EDX*0x4]
  007d460d:	85 c0                                          	TEST EAX,EAX
  007d460f:	8d 14 96                                       	LEA EDX,[ESI + EDX*0x4]
  007d4612:	74 0f                                          	JZ 0x007d4623
  007d4614:	3a 18                                          	CMP BL,byte ptr [EAX]
  007d4616:	0f 84 95 00 00 00                              	JZ 0x007d46b1
  007d461c:	8b 40 08                                       	MOV EAX,dword ptr [EAX + 0x8]
  007d461f:	85 c0                                          	TEST EAX,EAX
  007d4621:	75 f1                                          	JNZ 0x007d4614
  007d4623:	8b 14 8e                                       	MOV EDX,dword ptr [ESI + ECX*0x4]
  007d4626:	8d 04 8e                                       	LEA EAX,[ESI + ECX*0x4]
  007d4629:	89 44 24 38                                    	MOV dword ptr [ESP + 0x38],EAX
  007d462d:	89 54 24 34                                    	MOV dword ptr [ESP + 0x34],EDX
  007d4631:	8d 44 24 34                                    	LEA EAX,[ESP + 0x34]
  007d4635:	8b 00                                          	MOV EAX,dword ptr [EAX]
  007d4637:	3b 04 8e                                       	CMP EAX,dword ptr [ESI + ECX*0x4]
  007d463a:	75 2b                                          	JNZ 0x007d4667
  007d463c:	c6 44 24 24 00                                 	MOV byte ptr [ESP + 0x24],0x0
  007d4641:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  007d4645:	50                                             	PUSH EAX
  007d4646:	8d 4c 24 40                                    	LEA ECX,[ESP + 0x40]
  007d464a:	51                                             	PUSH ECX
  007d464b:	8d 54 24 4c                                    	LEA EDX,[ESP + 0x4c]
  007d464f:	52                                             	PUSH EDX
  007d4650:	8b cd                                          	MOV ECX,EBP
  007d4652:	88 5c 24 48                                    	MOV byte ptr [ESP + 0x48],BL
  007d4656:	c7 44 24 4c 00 00 00 00                        	MOV dword ptr [ESP + 0x4c],0x0
  007d465e:	e8 8d fa ff ff                                 	CALL 0x007d40f0
  007d4663:	8b 44 24 44                                    	MOV EAX,dword ptr [ESP + 0x44]
  007d4667:	83 c0 04                                       	ADD EAX,0x4
  007d466a:	89 38                                          	MOV dword ptr [EAX],EDI
  007d466c:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  007d4670:	83 c0 01                                       	ADD EAX,0x1
  007d4673:	3b 44 24 28                                    	CMP EAX,dword ptr [ESP + 0x28]
  007d4677:	89 44 24 14                                    	MOV dword ptr [ESP + 0x14],EAX
  007d467b:	0f 82 6c ff ff ff                              	JC 0x007d45ed
  007d4681:	8b 74 24 1c                                    	MOV ESI,dword ptr [ESP + 0x1c]
  007d4685:	8b 5c 24 18                                    	MOV EBX,dword ptr [ESP + 0x18]
  007d4689:	8b 6c 24 50                                    	MOV EBP,dword ptr [ESP + 0x50]
  007d468d:	83 c6 01                                       	ADD ESI,0x1
  007d4690:	3b f3                                          	CMP ESI,EBX
  007d4692:	89 74 24 1c                                    	MOV dword ptr [ESP + 0x1c],ESI
  007d4696:	0f 82 29 ff ff ff                              	JC 0x007d45c5
  007d469c:	85 ed                                          	TEST EBP,EBP
  007d469e:	74 09                                          	JZ 0x007d46a9
  007d46a0:	55                                             	PUSH EBP
  007d46a1:	e8 3a fe d0 ff                                 	CALL 0x004e44e0
  007d46a6:	83 c4 04                                       	ADD ESP,0x4
  007d46a9:	5f                                             	POP EDI
  007d46aa:	5e                                             	POP ESI
  007d46ab:	5d                                             	POP EBP
  007d46ac:	5b                                             	POP EBX
  007d46ad:	8b e5                                          	MOV ESP,EBP
  007d46af:	5d                                             	POP EBP
  007d46b0:	c3                                             	RET
  007d46b1:	89 44 24 2c                                    	MOV dword ptr [ESP + 0x2c],EAX
  007d46b5:	89 54 24 30                                    	MOV dword ptr [ESP + 0x30],EDX
  007d46b9:	8d 44 24 2c                                    	LEA EAX,[ESP + 0x2c]
  007d46bd:	e9 73 ff ff ff                                 	JMP 0x007d4635
