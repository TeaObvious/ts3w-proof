# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b677a0 (PoolGeometry_SetupLotLevel)
Paired actual Ghidra pseudocode: 00B677A0_PoolGeometry_SetupLotLevel.c
Envelope [0x00b677a0,0x00b67864); 196 bytes; exact owned ranges: [0x00b677a0,0x00b67864)
Owned: 196 original bytes / 61 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b677a0 <original>:
  00b677a0:	8b 44 24 04                                    	MOV EAX,dword ptr [ESP + 0x4]
  00b677a4:	56                                             	PUSH ESI
  00b677a5:	8b f1                                          	MOV ESI,ECX
  00b677a7:	8b 4c 24 0c                                    	MOV ECX,dword ptr [ESP + 0xc]
  00b677ab:	89 8e 14 02 00 00                              	MOV dword ptr [ESI + 0x214],ECX
  00b677b1:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00b677b5:	89 86 10 02 00 00                              	MOV dword ptr [ESI + 0x210],EAX
  00b677bb:	89 8e 64 02 00 00                              	MOV dword ptr [ESI + 0x264],ECX
  00b677c1:	8b 50 10                                       	MOV EDX,dword ptr [EAX + 0x10]
  00b677c4:	89 96 b0 01 00 00                              	MOV dword ptr [ESI + 0x1b0],EDX
  00b677ca:	8b 50 14                                       	MOV EDX,dword ptr [EAX + 0x14]
  00b677cd:	89 96 b4 01 00 00                              	MOV dword ptr [ESI + 0x1b4],EDX
  00b677d3:	89 8e b8 01 00 00                              	MOV dword ptr [ESI + 0x1b8],ECX
  00b677d9:	8b 48 60                                       	MOV ECX,dword ptr [EAX + 0x60]
  00b677dc:	8b 40 64                                       	MOV EAX,dword ptr [EAX + 0x64]
  00b677df:	89 86 20 02 00 00                              	MOV dword ptr [ESI + 0x220],EAX
  00b677e5:	0f af c1                                       	IMUL EAX,ECX
  00b677e8:	89 8e 1c 02 00 00                              	MOV dword ptr [ESI + 0x21c],ECX
  00b677ee:	8b c8                                          	MOV ECX,EAX
  00b677f0:	99                                             	CDQ
  00b677f1:	83 e2 07                                       	AND EDX,0x7
  00b677f4:	03 c2                                          	ADD EAX,EDX
  00b677f6:	c1 f8 03                                       	SAR EAX,0x3
  00b677f9:	81 e1 07 00 00 80                              	AND ECX,0x80000007
  00b677ff:	79 05                                          	JNS 0x00b67806
  00b67801:	49                                             	DEC ECX
  00b67802:	83 c9 f8                                       	OR ECX,0xfffffff8
  00b67805:	41                                             	INC ECX
  00b67806:	74 03                                          	JZ 0x00b6780b
  00b67808:	83 c0 01                                       	ADD EAX,0x1
  00b6780b:	50                                             	PUSH EAX
  00b6780c:	8d 8e 24 02 00 00                              	LEA ECX,[ESI + 0x224]
  00b67812:	e8 09 b6 8a ff                                 	CALL 0x00412e20
  00b67817:	8b 86 24 02 00 00                              	MOV EAX,dword ptr [ESI + 0x224]
  00b6781d:	8b 8e 28 02 00 00                              	MOV ECX,dword ptr [ESI + 0x228]
  00b67823:	2b c8                                          	SUB ECX,EAX
  00b67825:	51                                             	PUSH ECX
  00b67826:	6a 00                                          	PUSH 0x0
  00b67828:	50                                             	PUSH EAX
  00b67829:	e8 6a 7a 41 00                                 	CALL 0x00f7f298
  00b6782e:	83 c4 0c                                       	ADD ESP,0xc
  00b67831:	8b ce                                          	MOV ECX,ESI
  00b67833:	e8 28 f5 ff ff                                 	CALL 0x00b66d60
  00b67838:	8b ce                                          	MOV ECX,ESI
  00b6783a:	e8 11 e7 ff ff                                 	CALL 0x00b65f50
  00b6783f:	84 c0                                          	TEST AL,AL
  00b67841:	75 04                                          	JNZ 0x00b67847
  00b67843:	5e                                             	POP ESI
  00b67844:	c2 0c 00                                       	RET 0xc
  00b67847:	8b 8e 10 02 00 00                              	MOV ECX,dword ptr [ESI + 0x210]
  00b6784d:	57                                             	PUSH EDI
  00b6784e:	8b 3e                                          	MOV EDI,dword ptr [ESI]
  00b67850:	e8 db 7d f7 ff                                 	CALL 0x00adf630
  00b67855:	8b 57 20                                       	MOV EDX,dword ptr [EDI + 0x20]
  00b67858:	50                                             	PUSH EAX
  00b67859:	8b ce                                          	MOV ECX,ESI
  00b6785b:	ff d2                                          	CALL EDX
  00b6785d:	5f                                             	POP EDI
  00b6785e:	b0 01                                          	MOV AL,0x1
  00b67860:	5e                                             	POP ESI
  00b67861:	c2 0c 00                                       	RET 0xc
