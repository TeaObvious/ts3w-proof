# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00a88460 (FloorGeometry_SetQuarterSubsetAndRotation)
Paired actual Ghidra pseudocode: 00A88460_FloorGeometry_SetQuarterSubsetAndRotation.c
Envelope [0x00a88460,0x00a8858d); 301 bytes; exact owned ranges: [0x00a88460,0x00a8858d)
Owned: 301 original bytes / 102 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00a88460 <original>:
  00a88460:	53                                             	PUSH EBX
  00a88461:	55                                             	PUSH EBP
  00a88462:	56                                             	PUSH ESI
  00a88463:	8b f1                                          	MOV ESI,ECX
  00a88465:	83 be 64 02 00 00 00                           	CMP dword ptr [ESI + 0x264],0x0
  00a8846c:	57                                             	PUSH EDI
  00a8846d:	75 3a                                          	JNZ 0x00a884a9
  00a8846f:	6a 00                                          	PUSH 0x0
  00a88471:	6a 00                                          	PUSH 0x0
  00a88473:	6a 00                                          	PUSH 0x0
  00a88475:	6a 00                                          	PUSH 0x0
  00a88477:	68 88 37 06 01                                 	PUSH 0x1063788
  00a8847c:	6a 18                                          	PUSH 0x18
  00a8847e:	e8 7d c0 a5 ff                                 	CALL 0x004e4500
  00a88483:	83 c4 18                                       	ADD ESP,0x18
  00a88486:	85 c0                                          	TEST EAX,EAX
  00a88488:	74 17                                          	JZ 0x00a884a1
  00a8848a:	8b 8e 24 02 00 00                              	MOV ECX,dword ptr [ESI + 0x224]
  00a88490:	8b 96 20 02 00 00                              	MOV EDX,dword ptr [ESI + 0x220]
  00a88496:	51                                             	PUSH ECX
  00a88497:	52                                             	PUSH EDX
  00a88498:	8b c8                                          	MOV ECX,EAX
  00a8849a:	e8 f1 f4 ff ff                                 	CALL 0x00a87990
  00a8849f:	eb 02                                          	JMP 0x00a884a3
  00a884a1:	33 c0                                          	XOR EAX,EAX
  00a884a3:	89 86 64 02 00 00                              	MOV dword ptr [ESI + 0x264],EAX
  00a884a9:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  00a884ad:	8b 6c 24 14                                    	MOV EBP,dword ptr [ESP + 0x14]
  00a884b1:	8b 5c 24 1c                                    	MOV EBX,dword ptr [ESP + 0x1c]
  00a884b5:	8b 7c 24 18                                    	MOV EDI,dword ptr [ESP + 0x18]
  00a884b9:	0f be 55 02                                    	MOVSX EDX,byte ptr [EBP + 0x2]
  00a884bd:	50                                             	PUSH EAX
  00a884be:	0f be 45 01                                    	MOVSX EAX,byte ptr [EBP + 0x1]
  00a884c2:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  00a884c6:	51                                             	PUSH ECX
  00a884c7:	0f be 4d 00                                    	MOVSX ECX,byte ptr [EBP]
  00a884cb:	53                                             	PUSH EBX
  00a884cc:	57                                             	PUSH EDI
  00a884cd:	52                                             	PUSH EDX
  00a884ce:	50                                             	PUSH EAX
  00a884cf:	51                                             	PUSH ECX
  00a884d0:	8b 8e 64 02 00 00                              	MOV ECX,dword ptr [ESI + 0x264]
  00a884d6:	e8 05 ab ff ff                                 	CALL 0x00a82fe0
  00a884db:	83 ff f8                                       	CMP EDI,-0x8
  00a884de:	88 44 24 14                                    	MOV byte ptr [ESP + 0x14],AL
  00a884e2:	75 09                                          	JNZ 0x00a884ed
  00a884e4:	83 fb ff                                       	CMP EBX,-0x1
  00a884e7:	0f 84 99 00 00 00                              	JZ 0x00a88586
  00a884ed:	6a 01                                          	PUSH 0x1
  00a884ef:	53                                             	PUSH EBX
  00a884f0:	57                                             	PUSH EDI
  00a884f1:	8b ce                                          	MOV ECX,ESI
  00a884f3:	e8 88 f8 ff ff                                 	CALL 0x00a87d80
  00a884f8:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00a884fc:	83 f8 f8                                       	CMP EAX,-0x8
  00a884ff:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00a88503:	75 05                                          	JNZ 0x00a8850a
  00a88505:	83 f9 ff                                       	CMP ECX,-0x1
  00a88508:	74 09                                          	JZ 0x00a88513
  00a8850a:	51                                             	PUSH ECX
  00a8850b:	50                                             	PUSH EAX
  00a8850c:	8b ce                                          	MOV ECX,ESI
  00a8850e:	e8 0d f2 ff ff                                 	CALL 0x00a87720
  00a88513:	80 7c 24 14 00                                 	CMP byte ptr [ESP + 0x14],0x0
  00a88518:	74 07                                          	JZ 0x00a88521
  00a8851a:	c6 86 60 02 00 00 01                           	MOV byte ptr [ESI + 0x260],0x1
  00a88521:	83 be 38 02 00 00 00                           	CMP dword ptr [ESI + 0x238],0x0
  00a88528:	74 5c                                          	JZ 0x00a88586
  00a8852a:	8b 8e 18 02 00 00                              	MOV ECX,dword ptr [ESI + 0x218]
  00a88530:	53                                             	PUSH EBX
  00a88531:	57                                             	PUSH EDI
  00a88532:	e8 e9 48 01 00                                 	CALL 0x00a9ce20
  00a88537:	8b 8e 18 02 00 00                              	MOV ECX,dword ptr [ESI + 0x218]
  00a8853d:	53                                             	PUSH EBX
  00a8853e:	57                                             	PUSH EDI
  00a8853f:	89 44 24 20                                    	MOV dword ptr [ESP + 0x20],EAX
  00a88543:	e8 a8 4b 01 00                                 	CALL 0x00a9d0f0
  00a88548:	8b 8e 18 02 00 00                              	MOV ECX,dword ptr [ESI + 0x218]
  00a8854e:	53                                             	PUSH EBX
  00a8854f:	57                                             	PUSH EDI
  00a88550:	88 44 24 1c                                    	MOV byte ptr [ESP + 0x1c],AL
  00a88554:	e8 e7 4b 01 00                                 	CALL 0x00a9d140
  00a88559:	8b 54 24 14                                    	MOV EDX,dword ptr [ESP + 0x14]
  00a8855d:	8b 4c 24 18                                    	MOV ECX,dword ptr [ESP + 0x18]
  00a88561:	52                                             	PUSH EDX
  00a88562:	0f b6 55 02                                    	MOVZX EDX,byte ptr [EBP + 0x2]
  00a88566:	88 44 24 24                                    	MOV byte ptr [ESP + 0x24],AL
  00a8856a:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00a8856e:	50                                             	PUSH EAX
  00a8856f:	0f be 45 01                                    	MOVSX EAX,byte ptr [EBP + 0x1]
  00a88573:	51                                             	PUSH ECX
  00a88574:	0f be 4d 00                                    	MOVSX ECX,byte ptr [EBP]
  00a88578:	52                                             	PUSH EDX
  00a88579:	50                                             	PUSH EAX
  00a8857a:	51                                             	PUSH ECX
  00a8857b:	8b 8e 38 02 00 00                              	MOV ECX,dword ptr [ESI + 0x238]
  00a88581:	e8 ea dc c1 ff                                 	CALL 0x006a6270
  00a88586:	5f                                             	POP EDI
  00a88587:	5e                                             	POP ESI
  00a88588:	5d                                             	POP EBP
  00a88589:	5b                                             	POP EBX
  00a8858a:	c2 10 00                                       	RET 0x10
