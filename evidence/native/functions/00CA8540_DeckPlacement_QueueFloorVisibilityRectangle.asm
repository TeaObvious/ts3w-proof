# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00ca8540 (DeckPlacement_QueueFloorVisibilityRectangle)
Paired actual Ghidra pseudocode: 00CA8540_DeckPlacement_QueueFloorVisibilityRectangle.c
Envelope [0x00ca8540,0x00ca8673); 307 bytes; exact owned ranges: [0x00ca8540,0x00ca85fa),[0x00ca8600,0x00ca8673)
Owned: 301 original bytes / 95 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00ca8540 <original>:
  00ca8540:	83 ec 0c                                       	SUB ESP,0xc
  00ca8543:	56                                             	PUSH ESI
  00ca8544:	6a 00                                          	PUSH 0x0
  00ca8546:	6a 00                                          	PUSH 0x0
  00ca8548:	6a 00                                          	PUSH 0x0
  00ca854a:	6a 00                                          	PUSH 0x0
  00ca854c:	68 78 e6 07 01                                 	PUSH 0x107e678
  00ca8551:	6a 64                                          	PUSH 0x64
  00ca8553:	e8 a8 bf 83 ff                                 	CALL 0x004e4500
  00ca8558:	83 c4 18                                       	ADD ESP,0x18
  00ca855b:	85 c0                                          	TEST EAX,EAX
  00ca855d:	0f 84 09 01 00 00                              	JZ 0x00ca866c
  00ca8563:	8b c8                                          	MOV ECX,EAX
  00ca8565:	e8 76 b6 07 00                                 	CALL 0x00d23be0
  00ca856a:	8b f0                                          	MOV ESI,EAX
  00ca856c:	85 f6                                          	TEST ESI,ESI
  00ca856e:	74 04                                          	JZ 0x00ca8574
  00ca8570:	83 46 04 01                                    	ADD dword ptr [ESI + 0x4],0x1
  00ca8574:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00ca8576:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00ca8579:	8b ce                                          	MOV ECX,ESI
  00ca857b:	ff d2                                          	CALL EDX
  00ca857d:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00ca8581:	50                                             	PUSH EAX
  00ca8582:	8b ce                                          	MOV ECX,ESI
  00ca8584:	e8 07 a5 07 00                                 	CALL 0x00d22a90
  00ca8589:	83 7c 24 18 00                                 	CMP dword ptr [ESP + 0x18],0x0
  00ca858e:	0f 85 ad 00 00 00                              	JNZ 0x00ca8641
  00ca8594:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00ca8598:	0f b6 08                                       	MOVZX ECX,byte ptr [EAX]
  00ca859b:	0f b6 50 01                                    	MOVZX EDX,byte ptr [EAX + 0x1]
  00ca859f:	0f b6 40 02                                    	MOVZX EAX,byte ptr [EAX + 0x2]
  00ca85a3:	88 4c 24 1c                                    	MOV byte ptr [ESP + 0x1c],CL
  00ca85a7:	88 44 24 1e                                    	MOV byte ptr [ESP + 0x1e],AL
  00ca85ab:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  00ca85af:	0f b6 08                                       	MOVZX ECX,byte ptr [EAX]
  00ca85b2:	88 54 24 1d                                    	MOV byte ptr [ESP + 0x1d],DL
  00ca85b6:	0f b6 50 01                                    	MOVZX EDX,byte ptr [EAX + 0x1]
  00ca85ba:	0f b6 40 02                                    	MOVZX EAX,byte ptr [EAX + 0x2]
  00ca85be:	80 e9 01                                       	SUB CL,0x1
  00ca85c1:	88 4c 24 18                                    	MOV byte ptr [ESP + 0x18],CL
  00ca85c5:	80 ea 01                                       	SUB DL,0x1
  00ca85c8:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00ca85cc:	88 54 24 19                                    	MOV byte ptr [ESP + 0x19],DL
  00ca85d0:	51                                             	PUSH ECX
  00ca85d1:	8d 54 24 20                                    	LEA EDX,[ESP + 0x20]
  00ca85d5:	52                                             	PUSH EDX
  00ca85d6:	8d 4c 24 0c                                    	LEA ECX,[ESP + 0xc]
  00ca85da:	88 44 24 22                                    	MOV byte ptr [ESP + 0x22],AL
  00ca85de:	e8 6d de e4 ff                                 	CALL 0x00af6450
  00ca85e3:	8d 4c 24 04                                    	LEA ECX,[ESP + 0x4]
  00ca85e7:	e8 a4 de e4 ff                                 	CALL 0x00af6490
  00ca85ec:	84 c0                                          	TEST AL,AL
  00ca85ee:	75 51                                          	JNZ 0x00ca8641
  00ca85f0:	38 44 24 24                                    	CMP byte ptr [ESP + 0x24],AL
  00ca85f4:	53                                             	PUSH EBX
  00ca85f5:	0f 94 c3                                       	SETZ BL
  00ca85f8:	eb 06                                          	JMP 0x00ca8600
  00ca85fa:	8d 9b 00 00 00 00                              	.byte 0x8d,0x9b,0x00,0x00,0x00,0x00 # UNOWNED alignment bytes
  00ca8600:	8d 4c 24 08                                    	LEA ECX,[ESP + 0x8]
  00ca8604:	e8 d7 de e4 ff                                 	CALL 0x00af64e0
  00ca8609:	66 8b 08                                       	MOV CX,word ptr [EAX]
  00ca860c:	66 89 4c 24 24                                 	MOV word ptr [ESP + 0x24],CX
  00ca8611:	8a 50 02                                       	MOV DL,byte ptr [EAX + 0x2]
  00ca8614:	53                                             	PUSH EBX
  00ca8615:	8d 44 24 28                                    	LEA EAX,[ESP + 0x28]
  00ca8619:	50                                             	PUSH EAX
  00ca861a:	8b ce                                          	MOV ECX,ESI
  00ca861c:	88 54 24 2e                                    	MOV byte ptr [ESP + 0x2e],DL
  00ca8620:	c6 44 24 2f 0f                                 	MOV byte ptr [ESP + 0x2f],0xf
  00ca8625:	e8 b6 b7 07 00                                 	CALL 0x00d23de0
  00ca862a:	8d 4c 24 08                                    	LEA ECX,[ESP + 0x8]
  00ca862e:	e8 dd df e4 ff                                 	CALL 0x00af6610
  00ca8633:	8d 4c 24 08                                    	LEA ECX,[ESP + 0x8]
  00ca8637:	e8 54 de e4 ff                                 	CALL 0x00af6490
  00ca863c:	84 c0                                          	TEST AL,AL
  00ca863e:	74 c0                                          	JZ 0x00ca8600
  00ca8640:	5b                                             	POP EBX
  00ca8641:	8b 4c 24 28                                    	MOV ECX,dword ptr [ESP + 0x28]
  00ca8645:	56                                             	PUSH ESI
  00ca8646:	e8 25 2c 07 00                                 	CALL 0x00d1b270
  00ca864b:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  00ca864e:	83 c0 ff                                       	ADD EAX,-0x1
  00ca8651:	89 46 04                                       	MOV dword ptr [ESI + 0x4],EAX
  00ca8654:	75 11                                          	JNZ 0x00ca8667
  00ca8656:	c7 46 04 01 00 00 00                           	MOV dword ptr [ESI + 0x4],0x1
  00ca865d:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00ca865f:	8b 02                                          	MOV EAX,dword ptr [EDX]
  00ca8661:	6a 01                                          	PUSH 0x1
  00ca8663:	8b ce                                          	MOV ECX,ESI
  00ca8665:	ff d0                                          	CALL EAX
  00ca8667:	5e                                             	POP ESI
  00ca8668:	83 c4 0c                                       	ADD ESP,0xc
  00ca866b:	c3                                             	RET
  00ca866c:	33 f6                                          	XOR ESI,ESI
  00ca866e:	e9 01 ff ff ff                                 	JMP 0x00ca8574
