# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775680 (ScriptCore.StreamHost::StreamHost_ReadCharUTF8)
Paired actual Ghidra pseudocode: 00775680_ScriptCore_StreamHost_StreamHost_ReadCharUTF8.c
Envelope [0x00775680,0x00775785); 261 bytes; exact owned ranges: [0x00775680,0x00775785)
Owned: 261 original bytes / 104 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00775680 <original>:
  00775680:	83 ec 08                                       	SUB ESP,0x8
  00775683:	56                                             	PUSH ESI
  00775684:	8b 74 24 10                                    	MOV ESI,dword ptr [ESP + 0x10]
  00775688:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  0077568e:	75 08                                          	JNZ 0x00775698
  00775690:	8b 35 3c 78 1d 01                              	MOV ESI,dword ptr [0x011d783c]
  00775696:	eb 35                                          	JMP 0x007756cd
  00775698:	8b c6                                          	MOV EAX,ESI
  0077569a:	25 00 00 00 ff                                 	AND EAX,0xff000000
  0077569f:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  007756a4:	74 04                                          	JZ 0x007756aa
  007756a6:	33 f6                                          	XOR ESI,ESI
  007756a8:	eb 23                                          	JMP 0x007756cd
  007756aa:	e8 e1 3c ff ff                                 	CALL 0x00769390
  007756af:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007756b1:	8b c8                                          	MOV ECX,EAX
  007756b3:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  007756b9:	56                                             	PUSH ESI
  007756ba:	ff d0                                          	CALL EAX
  007756bc:	85 c0                                          	TEST EAX,EAX
  007756be:	74 0b                                          	JZ 0x007756cb
  007756c0:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  007756c5:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  007756cb:	8b f0                                          	MOV ESI,EAX
  007756cd:	85 f6                                          	TEST ESI,ESI
  007756cf:	75 08                                          	JNZ 0x007756d9
  007756d1:	8d 46 fe                                       	LEA EAX,[ESI + -0x2]
  007756d4:	5e                                             	POP ESI
  007756d5:	83 c4 08                                       	ADD ESP,0x8
  007756d8:	c3                                             	RET
  007756d9:	8b 16                                          	MOV EDX,dword ptr [ESI]
  007756db:	8b 52 30                                       	MOV EDX,dword ptr [EDX + 0x30]
  007756de:	6a 01                                          	PUSH 0x1
  007756e0:	8d 44 24 08                                    	LEA EAX,[ESP + 0x8]
  007756e4:	50                                             	PUSH EAX
  007756e5:	8b ce                                          	MOV ECX,ESI
  007756e7:	ff d2                                          	CALL EDX
  007756e9:	83 f8 01                                       	CMP EAX,0x1
  007756ec:	74 13                                          	JZ 0x00775701
  007756ee:	33 c9                                          	XOR ECX,ECX
  007756f0:	83 f8 ff                                       	CMP EAX,-0x1
  007756f3:	0f 95 c1                                       	SETNZ CL
  007756f6:	5e                                             	POP ESI
  007756f7:	8d 4c 09 fd                                    	LEA ECX,[ECX + ECX*0x1 + -0x3]
  007756fb:	8b c1                                          	MOV EAX,ECX
  007756fd:	83 c4 08                                       	ADD ESP,0x8
  00775700:	c3                                             	RET
  00775701:	8a 44 24 04                                    	MOV AL,byte ptr [ESP + 0x4]
  00775705:	3c 80                                          	CMP AL,0x80
  00775707:	73 12                                          	JNC 0x0077571b
  00775709:	66 0f be d0                                    	MOVSX DX,AL
  0077570d:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00775711:	66 89 10                                       	MOV word ptr [EAX],DX
  00775714:	33 c0                                          	XOR EAX,EAX
  00775716:	5e                                             	POP ESI
  00775717:	83 c4 08                                       	ADD ESP,0x8
  0077571a:	c3                                             	RET
  0077571b:	8d 4c 24 04                                    	LEA ECX,[ESP + 0x4]
  0077571f:	57                                             	PUSH EDI
  00775720:	51                                             	PUSH ECX
  00775721:	e8 aa e9 d7 ff                                 	CALL 0x004f40d0
  00775726:	8b f8                                          	MOV EDI,EAX
  00775728:	83 c4 04                                       	ADD ESP,0x4
  0077572b:	85 ff                                          	TEST EDI,EDI
  0077572d:	75 09                                          	JNZ 0x00775738
  0077572f:	8d 47 fc                                       	LEA EAX,[EDI + -0x4]
  00775732:	5f                                             	POP EDI
  00775733:	5e                                             	POP ESI
  00775734:	83 c4 08                                       	ADD ESP,0x8
  00775737:	c3                                             	RET
  00775738:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0077573a:	8b 52 30                                       	MOV EDX,dword ptr [EDX + 0x30]
  0077573d:	57                                             	PUSH EDI
  0077573e:	8d 44 24 0d                                    	LEA EAX,[ESP + 0xd]
  00775742:	50                                             	PUSH EAX
  00775743:	8b ce                                          	MOV ECX,ESI
  00775745:	ff d2                                          	CALL EDX
  00775747:	83 f8 01                                       	CMP EAX,0x1
  0077574a:	74 14                                          	JZ 0x00775760
  0077574c:	33 c9                                          	XOR ECX,ECX
  0077574e:	83 f8 ff                                       	CMP EAX,-0x1
  00775751:	0f 95 c1                                       	SETNZ CL
  00775754:	5f                                             	POP EDI
  00775755:	5e                                             	POP ESI
  00775756:	8d 4c 09 fd                                    	LEA ECX,[ECX + ECX*0x1 + -0x3]
  0077575a:	8b c1                                          	MOV EAX,ECX
  0077575c:	83 c4 08                                       	ADD ESP,0x8
  0077575f:	c3                                             	RET
  00775760:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00775764:	57                                             	PUSH EDI
  00775765:	8d 54 24 0c                                    	LEA EDX,[ESP + 0xc]
  00775769:	52                                             	PUSH EDX
  0077576a:	6a 01                                          	PUSH 0x1
  0077576c:	50                                             	PUSH EAX
  0077576d:	e8 6e ef d7 ff                                 	CALL 0x004f46e0
  00775772:	83 c4 10                                       	ADD ESP,0x10
  00775775:	83 e8 01                                       	SUB EAX,0x1
  00775778:	f7 d8                                          	NEG EAX
  0077577a:	1b c0                                          	SBB EAX,EAX
  0077577c:	5f                                             	POP EDI
  0077577d:	83 e0 fc                                       	AND EAX,0xfffffffc
  00775780:	5e                                             	POP ESI
  00775781:	83 c4 08                                       	ADD ESP,0x8
  00775784:	c3                                             	RET
