# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00743520 (DirectTargetOf_LoadSaveManager_LoadSaveManager_LoadPassportData)
Paired actual Ghidra pseudocode: 00743520_DirectTargetOf_LoadSaveManager_LoadSaveManager_LoadPassportData.c
Envelope [0x00743520,0x0074364a); 298 bytes; exact owned ranges: [0x00743520,0x0074364a)
Owned: 298 original bytes / 111 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00743520 <original>:
  00743520:	83 ec 34                                       	SUB ESP,0x34
  00743523:	53                                             	PUSH EBX
  00743524:	56                                             	PUSH ESI
  00743525:	e8 66 5e 02 00                                 	CALL 0x00769390
  0074352a:	8b f0                                          	MOV ESI,EAX
  0074352c:	33 db                                          	XOR EBX,EBX
  0074352e:	3b f3                                          	CMP ESI,EBX
  00743530:	75 08                                          	JNZ 0x0074353a
  00743532:	5e                                             	POP ESI
  00743533:	33 c0                                          	XOR EAX,EAX
  00743535:	5b                                             	POP EBX
  00743536:	83 c4 34                                       	ADD ESP,0x34
  00743539:	c3                                             	RET
  0074353a:	57                                             	PUSH EDI
  0074353b:	e8 80 64 36 00                                 	CALL 0x00aa99c0
  00743540:	8b f8                                          	MOV EDI,EAX
  00743542:	3b fb                                          	CMP EDI,EBX
  00743544:	0f 84 80 00 00 00                              	JZ 0x007435ca
  0074354a:	68 84 26 00 01                                 	PUSH 0x1002684
  0074354f:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00743553:	89 5c 24 14                                    	MOV dword ptr [ESP + 0x14],EBX
  00743557:	89 5c 24 18                                    	MOV dword ptr [ESP + 0x18],EBX
  0074355b:	89 5c 24 1c                                    	MOV dword ptr [ESP + 0x1c],EBX
  0074355f:	c7 44 24 20 6c 26 00 01                        	MOV dword ptr [ESP + 0x20],0x100266c
  00743567:	e8 24 80 cc ff                                 	CALL 0x0040b590
  0074356c:	8b 4c 24 44                                    	MOV ECX,dword ptr [ESP + 0x44]
  00743570:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00743572:	8b 50 58                                       	MOV EDX,dword ptr [EAX + 0x58]
  00743575:	51                                             	PUSH ECX
  00743576:	8b ce                                          	MOV ECX,ESI
  00743578:	ff d2                                          	CALL EDX
  0074357a:	3b c3                                          	CMP EAX,EBX
  0074357c:	75 28                                          	JNZ 0x007435a6
  0074357e:	8b 4c 24 18                                    	MOV ECX,dword ptr [ESP + 0x18]
  00743582:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  00743586:	2b c8                                          	SUB ECX,EAX
  00743588:	83 e1 fe                                       	AND ECX,0xfffffffe
  0074358b:	83 f9 02                                       	CMP ECX,0x2
  0074358e:	7e 3a                                          	JLE 0x007435ca
  00743590:	3b c3                                          	CMP EAX,EBX
  00743592:	74 36                                          	JZ 0x007435ca
  00743594:	50                                             	PUSH EAX
  00743595:	e8 46 0f da ff                                 	CALL 0x004e44e0
  0074359a:	83 c4 04                                       	ADD ESP,0x4
  0074359d:	5f                                             	POP EDI
  0074359e:	5e                                             	POP ESI
  0074359f:	33 c0                                          	XOR EAX,EAX
  007435a1:	5b                                             	POP EBX
  007435a2:	83 c4 34                                       	ADD ESP,0x34
  007435a5:	c3                                             	RET
  007435a6:	66 39 18                                       	CMP word ptr [EAX],BX
  007435a9:	75 28                                          	JNZ 0x007435d3
  007435ab:	8b 54 24 18                                    	MOV EDX,dword ptr [ESP + 0x18]
  007435af:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  007435b3:	2b d0                                          	SUB EDX,EAX
  007435b5:	83 e2 fe                                       	AND EDX,0xfffffffe
  007435b8:	83 fa 02                                       	CMP EDX,0x2
  007435bb:	7e 0d                                          	JLE 0x007435ca
  007435bd:	3b c3                                          	CMP EAX,EBX
  007435bf:	74 09                                          	JZ 0x007435ca
  007435c1:	50                                             	PUSH EAX
  007435c2:	e8 19 0f da ff                                 	CALL 0x004e44e0
  007435c7:	83 c4 04                                       	ADD ESP,0x4
  007435ca:	5f                                             	POP EDI
  007435cb:	5e                                             	POP ESI
  007435cc:	33 c0                                          	XOR EAX,EAX
  007435ce:	5b                                             	POP EBX
  007435cf:	83 c4 34                                       	ADD ESP,0x34
  007435d2:	c3                                             	RET
  007435d3:	50                                             	PUSH EAX
  007435d4:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  007435d8:	50                                             	PUSH EAX
  007435d9:	8b cf                                          	MOV ECX,EDI
  007435db:	e8 90 90 36 00                                 	CALL 0x00aac670
  007435e0:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  007435e4:	51                                             	PUSH ECX
  007435e5:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  007435e9:	89 5c 24 10                                    	MOV dword ptr [ESP + 0x10],EBX
  007435ed:	e8 3e 30 db ff                                 	CALL 0x004f6630
  007435f2:	8b 16                                          	MOV EDX,dword ptr [ESI]
  007435f4:	8b 52 50                                       	MOV EDX,dword ptr [EDX + 0x50]
  007435f7:	8d 44 24 0c                                    	LEA EAX,[ESP + 0xc]
  007435fb:	50                                             	PUSH EAX
  007435fc:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  00743600:	51                                             	PUSH ECX
  00743601:	8b ce                                          	MOV ECX,ESI
  00743603:	ff d2                                          	CALL EDX
  00743605:	f6 44 24 28 04                                 	TEST byte ptr [ESP + 0x28],0x4
  0074360a:	c7 44 24 20 f4 a6 fb 00                        	MOV dword ptr [ESP + 0x20],0xfba6f4
  00743612:	74 0a                                          	JZ 0x0074361e
  00743614:	53                                             	PUSH EBX
  00743615:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  00743619:	e8 42 21 db ff                                 	CALL 0x004f5760
  0074361e:	8b 4c 24 18                                    	MOV ECX,dword ptr [ESP + 0x18]
  00743622:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  00743626:	8b 74 24 0c                                    	MOV ESI,dword ptr [ESP + 0xc]
  0074362a:	2b c8                                          	SUB ECX,EAX
  0074362c:	83 e1 fe                                       	AND ECX,0xfffffffe
  0074362f:	83 f9 02                                       	CMP ECX,0x2
  00743632:	7e 0d                                          	JLE 0x00743641
  00743634:	3b c3                                          	CMP EAX,EBX
  00743636:	74 09                                          	JZ 0x00743641
  00743638:	50                                             	PUSH EAX
  00743639:	e8 a2 0e da ff                                 	CALL 0x004e44e0
  0074363e:	83 c4 04                                       	ADD ESP,0x4
  00743641:	5f                                             	POP EDI
  00743642:	8b c6                                          	MOV EAX,ESI
  00743644:	5e                                             	POP ESI
  00743645:	5b                                             	POP EBX
  00743646:	83 c4 34                                       	ADD ESP,0x34
  00743649:	c3                                             	RET
