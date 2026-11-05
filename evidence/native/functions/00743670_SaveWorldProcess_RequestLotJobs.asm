# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00743670 (SaveWorldProcess_RequestLotJobs)
Paired actual Ghidra pseudocode: 00743670_SaveWorldProcess_RequestLotJobs.c
Envelope [0x00743670,0x00743877); 519 bytes; exact owned ranges: [0x00743670,0x00743877)
Owned: 519 original bytes / 178 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00743670 <original>:
  00743670:	83 ec 2c                                       	SUB ESP,0x2c
  00743673:	53                                             	PUSH EBX
  00743674:	57                                             	PUSH EDI
  00743675:	8b d9                                          	MOV EBX,ECX
  00743677:	e8 14 5d 02 00                                 	CALL 0x00769390
  0074367c:	8b 10                                          	MOV EDX,dword ptr [EAX]
  0074367e:	89 44 24 18                                    	MOV dword ptr [ESP + 0x18],EAX
  00743682:	8b c8                                          	MOV ECX,EAX
  00743684:	8b 82 18 01 00 00                              	MOV EAX,dword ptr [EDX + 0x118]
  0074368a:	ff d0                                          	CALL EAX
  0074368c:	89 43 30                                       	MOV dword ptr [EBX + 0x30],EAX
  0074368f:	89 53 34                                       	MOV dword ptr [EBX + 0x34],EDX
  00743692:	a1 30 ec 1e 01                                 	MOV EAX,[0x011eec30]
  00743697:	33 ff                                          	XOR EDI,EDI
  00743699:	3b c7                                          	CMP EAX,EDI
  0074369b:	89 44 24 0c                                    	MOV dword ptr [ESP + 0xc],EAX
  0074369f:	75 0a                                          	JNZ 0x007436ab
  007436a1:	5f                                             	POP EDI
  007436a2:	32 c0                                          	XOR AL,AL
  007436a4:	5b                                             	POP EBX
  007436a5:	83 c4 2c                                       	ADD ESP,0x2c
  007436a8:	c2 04 00                                       	RET 0x4
  007436ab:	8b 0d c4 db 1e 01                              	MOV ECX,dword ptr [0x011edbc4]
  007436b1:	55                                             	PUSH EBP
  007436b2:	56                                             	PUSH ESI
  007436b3:	33 f6                                          	XOR ESI,ESI
  007436b5:	3b cf                                          	CMP ECX,EDI
  007436b7:	89 7c 24 2c                                    	MOV dword ptr [ESP + 0x2c],EDI
  007436bb:	89 74 24 30                                    	MOV dword ptr [ESP + 0x30],ESI
  007436bf:	89 7c 24 34                                    	MOV dword ptr [ESP + 0x34],EDI
  007436c3:	c7 44 24 38 98 26 00 01                        	MOV dword ptr [ESP + 0x38],0x1002698
  007436cb:	89 4c 24 1c                                    	MOV dword ptr [ESP + 0x1c],ECX
  007436cf:	0f 84 b3 00 00 00                              	JZ 0x00743788
  007436d5:	6a 01                                          	PUSH 0x1
  007436d7:	e8 c4 50 52 00                                 	CALL 0x00c687a0
  007436dc:	8b 68 04                                       	MOV EBP,dword ptr [EAX + 0x4]
  007436df:	2b 28                                          	SUB EBP,dword ptr [EAX]
  007436e1:	8b cf                                          	MOV ECX,EDI
  007436e3:	c1 fd 02                                       	SAR EBP,0x2
  007436e6:	89 44 24 18                                    	MOV dword ptr [ESP + 0x18],EAX
  007436ea:	89 4c 24 10                                    	MOV dword ptr [ESP + 0x10],ECX
  007436ee:	0f 84 94 00 00 00                              	JZ 0x00743788
  007436f4:	eb 04                                          	JMP 0x007436fa
  007436f6:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  007436fa:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007436fc:	8b 04 8a                                       	MOV EAX,dword ptr [EDX + ECX*0x4]
  007436ff:	3b c7                                          	CMP EAX,EDI
  00743701:	74 6e                                          	JZ 0x00743771
  00743703:	8b 48 48                                       	MOV ECX,dword ptr [EAX + 0x48]
  00743706:	89 4c 24 24                                    	MOV dword ptr [ESP + 0x24],ECX
  0074370a:	8b 50 4c                                       	MOV EDX,dword ptr [EAX + 0x4c]
  0074370d:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00743711:	8d 44 24 24                                    	LEA EAX,[ESP + 0x24]
  00743715:	50                                             	PUSH EAX
  00743716:	89 54 24 2c                                    	MOV dword ptr [ESP + 0x2c],EDX
  0074371a:	e8 01 00 52 00                                 	CALL 0x00c63720
  0074371f:	84 c0                                          	TEST AL,AL
  00743721:	74 4e                                          	JZ 0x00743771
  00743723:	8b 4c 24 28                                    	MOV ECX,dword ptr [ESP + 0x28]
  00743727:	8b 54 24 24                                    	MOV EDX,dword ptr [ESP + 0x24]
  0074372b:	6a 04                                          	PUSH 0x4
  0074372d:	51                                             	PUSH ECX
  0074372e:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00743732:	52                                             	PUSH EDX
  00743733:	e8 18 00 61 00                                 	CALL 0x00d53750
  00743738:	84 c0                                          	TEST AL,AL
  0074373a:	74 35                                          	JZ 0x00743771
  0074373c:	3b 74 24 34                                    	CMP ESI,dword ptr [ESP + 0x34]
  00743740:	73 1c                                          	JNC 0x0074375e
  00743742:	8b c6                                          	MOV EAX,ESI
  00743744:	83 c6 08                                       	ADD ESI,0x8
  00743747:	3b c7                                          	CMP EAX,EDI
  00743749:	89 74 24 30                                    	MOV dword ptr [ESP + 0x30],ESI
  0074374d:	74 22                                          	JZ 0x00743771
  0074374f:	8b 4c 24 24                                    	MOV ECX,dword ptr [ESP + 0x24]
  00743753:	89 08                                          	MOV dword ptr [EAX],ECX
  00743755:	8b 54 24 28                                    	MOV EDX,dword ptr [ESP + 0x28]
  00743759:	89 50 04                                       	MOV dword ptr [EAX + 0x4],EDX
  0074375c:	eb 13                                          	JMP 0x00743771
  0074375e:	8d 44 24 24                                    	LEA EAX,[ESP + 0x24]
  00743762:	50                                             	PUSH EAX
  00743763:	56                                             	PUSH ESI
  00743764:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  00743768:	e8 f3 eb e2 ff                                 	CALL 0x00572360
  0074376d:	8b 74 24 30                                    	MOV ESI,dword ptr [ESP + 0x30]
  00743771:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00743775:	83 c1 01                                       	ADD ECX,0x1
  00743778:	3b cd                                          	CMP ECX,EBP
  0074377a:	89 4c 24 10                                    	MOV dword ptr [ESP + 0x10],ECX
  0074377e:	0f 82 72 ff ff ff                              	JC 0x007436f6
  00743784:	8b 7c 24 2c                                    	MOV EDI,dword ptr [ESP + 0x2c]
  00743788:	e8 93 63 e5 ff                                 	CALL 0x00599b20
  0074378d:	8b 10                                          	MOV EDX,dword ptr [EAX]
  0074378f:	8d 6b 28                                       	LEA EBP,[EBX + 0x28]
  00743792:	8b c8                                          	MOV ECX,EAX
  00743794:	8b 42 10                                       	MOV EAX,dword ptr [EDX + 0x10]
  00743797:	55                                             	PUSH EBP
  00743798:	ff d0                                          	CALL EAX
  0074379a:	84 c0                                          	TEST AL,AL
  0074379c:	75 19                                          	JNZ 0x007437b7
  0074379e:	85 ff                                          	TEST EDI,EDI
  007437a0:	74 09                                          	JZ 0x007437ab
  007437a2:	57                                             	PUSH EDI
  007437a3:	e8 38 0d da ff                                 	CALL 0x004e44e0
  007437a8:	83 c4 04                                       	ADD ESP,0x4
  007437ab:	5e                                             	POP ESI
  007437ac:	5d                                             	POP EBP
  007437ad:	5f                                             	POP EDI
  007437ae:	32 c0                                          	XOR AL,AL
  007437b0:	5b                                             	POP EBX
  007437b1:	83 c4 2c                                       	ADD ESP,0x2c
  007437b4:	c2 04 00                                       	RET 0x4
  007437b7:	8d 4b 20                                       	LEA ECX,[EBX + 0x20]
  007437ba:	51                                             	PUSH ECX
  007437bb:	8b 4d 00                                       	MOV ECX,dword ptr [EBP]
  007437be:	e8 5d 64 e5 ff                                 	CALL 0x00599c20
  007437c3:	8b 55 00                                       	MOV EDX,dword ptr [EBP]
  007437c6:	c7 42 20 04 00 00 00                           	MOV dword ptr [EDX + 0x20],0x4
  007437cd:	8b 45 00                                       	MOV EAX,dword ptr [EBP]
  007437d0:	c7 40 08 20 32 74 00                           	MOV dword ptr [EAX + 0x8],0x743220
  007437d7:	89 58 0c                                       	MOV dword ptr [EAX + 0xc],EBX
  007437da:	8b 4d 00                                       	MOV ECX,dword ptr [EBP]
  007437dd:	e8 5e 66 e5 ff                                 	CALL 0x00599e40
  007437e2:	8b cb                                          	MOV ECX,EBX
  007437e4:	e8 97 86 60 00                                 	CALL 0x00d4be80
  007437e9:	2b f7                                          	SUB ESI,EDI
  007437eb:	c1 fe 03                                       	SAR ESI,0x3
  007437ee:	89 74 24 1c                                    	MOV dword ptr [ESP + 0x1c],ESI
  007437f2:	be 00 00 00 00                                 	MOV ESI,0x0
  007437f7:	74 29                                          	JZ 0x00743822
  007437f9:	8d a4 24 00 00 00 00                           	LEA ESP,[ESP]
  00743800:	8b 4c f7 04                                    	MOV ECX,dword ptr [EDI + ESI*0x8 + 0x4]
  00743804:	8b 04 f7                                       	MOV EAX,dword ptr [EDI + ESI*0x8]
  00743807:	53                                             	PUSH EBX
  00743808:	6a 00                                          	PUSH 0x0
  0074380a:	6a 04                                          	PUSH 0x4
  0074380c:	51                                             	PUSH ECX
  0074380d:	50                                             	PUSH EAX
  0074380e:	51                                             	PUSH ECX
  0074380f:	8b 4c 24 2c                                    	MOV ECX,dword ptr [ESP + 0x2c]
  00743813:	50                                             	PUSH EAX
  00743814:	e8 a7 db 61 00                                 	CALL 0x00d613c0
  00743819:	83 c6 01                                       	ADD ESI,0x1
  0074381c:	3b 74 24 1c                                    	CMP ESI,dword ptr [ESP + 0x1c]
  00743820:	72 de                                          	JC 0x00743800
  00743822:	8b 4c 24 40                                    	MOV ECX,dword ptr [ESP + 0x40]
  00743826:	8b 53 34                                       	MOV EDX,dword ptr [EBX + 0x34]
  00743829:	8b 74 24 20                                    	MOV ESI,dword ptr [ESP + 0x20]
  0074382d:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0074382f:	6a 00                                          	PUSH 0x0
  00743831:	51                                             	PUSH ECX
  00743832:	8b 4b 30                                       	MOV ECX,dword ptr [EBX + 0x30]
  00743835:	6a ff                                          	PUSH -0x1
  00743837:	52                                             	PUSH EDX
  00743838:	8b 90 20 01 00 00                              	MOV EDX,dword ptr [EAX + 0x120]
  0074383e:	51                                             	PUSH ECX
  0074383f:	8b ce                                          	MOV ECX,ESI
  00743841:	ff d2                                          	CALL EDX
  00743843:	8b cb                                          	MOV ECX,EBX
  00743845:	e8 46 86 60 00                                 	CALL 0x00d4be90
  0074384a:	8b 4d 00                                       	MOV ECX,dword ptr [EBP]
  0074384d:	e8 fe 7a e5 ff                                 	CALL 0x0059b350
  00743852:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00743854:	8b 90 1c 01 00 00                              	MOV EDX,dword ptr [EAX + 0x11c]
  0074385a:	8b ce                                          	MOV ECX,ESI
  0074385c:	ff d2                                          	CALL EDX
  0074385e:	85 ff                                          	TEST EDI,EDI
  00743860:	74 09                                          	JZ 0x0074386b
  00743862:	57                                             	PUSH EDI
  00743863:	e8 78 0c da ff                                 	CALL 0x004e44e0
  00743868:	83 c4 04                                       	ADD ESP,0x4
  0074386b:	5e                                             	POP ESI
  0074386c:	5d                                             	POP EBP
  0074386d:	5f                                             	POP EDI
  0074386e:	b0 01                                          	MOV AL,0x1
  00743870:	5b                                             	POP EBX
  00743871:	83 c4 2c                                       	ADD ESP,0x2c
  00743874:	c2 04 00                                       	RET 0x4
