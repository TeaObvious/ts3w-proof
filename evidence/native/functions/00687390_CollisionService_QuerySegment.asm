# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00687390 (CollisionService_QuerySegment)
Paired actual Ghidra pseudocode: 00687390_CollisionService_QuerySegment.c
Body [0x00687390,0x006874e3); 339 pristine original bytes / 98 actual saved Listing instructions.
Original instruction bytes and actual saved Listing text; inferred prototypes are retained.
Physical registers, AL results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00687390 <original>:
  00687390:	55                                             	PUSH EBP
  00687391:	8b ec                                          	MOV EBP,ESP
  00687393:	83 e4 f0                                       	AND ESP,0xfffffff0
  00687396:	83 ec 60                                       	SUB ESP,0x60
  00687399:	8b 45 10                                       	MOV EAX,dword ptr [EBP + 0x10]
  0068739c:	50                                             	PUSH EAX
  0068739d:	8b d1                                          	MOV EDX,ECX
  0068739f:	e8 6c fb ff ff                                 	CALL 0x00686f10
  006873a4:	8b 4d 08                                       	MOV ECX,dword ptr [EBP + 0x8]
  006873a7:	0f 28 01                                       	MOVAPS XMM0,xmmword ptr [ECX]
  006873aa:	8b 4d 0c                                       	MOV ECX,dword ptr [EBP + 0xc]
  006873ad:	0f 28 29                                       	MOVAPS XMM5,xmmword ptr [ECX]
  006873b0:	f3 0f 10 0d 68 0e ff 00                        	MOVSS XMM1,dword ptr [0x00ff0e68]
  006873b8:	0f 29 44 24 14                                 	MOVAPS xmmword ptr [ESP + 0x14],XMM0
  006873bd:	0f 5c e8                                       	SUBPS XMM5,XMM0
  006873c0:	f3 0f 10 05 18 b2 fa 00                        	MOVSS XMM0,dword ptr [0x00fab218]
  006873c8:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  006873cc:	0f 59 c5                                       	MULPS XMM0,XMM5
  006873cf:	0f 5f c5                                       	MAXPS XMM0,XMM5
  006873d2:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  006873d6:	0f c2 c1 02                                    	CMPLEPS XMM0,XMM1
  006873da:	0f 50 c8                                       	MOVMSKPS ECX,XMM0
  006873dd:	83 e1 07                                       	AND ECX,0x7
  006873e0:	83 c4 04                                       	ADD ESP,0x4
  006873e3:	80 f9 07                                       	CMP CL,0x7
  006873e6:	75 08                                          	JNZ 0x006873f0
  006873e8:	32 c0                                          	XOR AL,AL
  006873ea:	8b e5                                          	MOV ESP,EBP
  006873ec:	5d                                             	POP EBP
  006873ed:	c2 14 00                                       	RET 0x14
  006873f0:	80 7d 18 00                                    	CMP byte ptr [EBP + 0x18],0x0
  006873f4:	f3 0f 10 1d b4 b5 f9 00                        	MOVSS XMM3,dword ptr [0x00f9b5b4]
  006873fc:	0f 28 cd                                       	MOVAPS XMM1,XMM5
  006873ff:	0f 59 cd                                       	MULPS XMM1,XMM5
  00687402:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  00687405:	0f c6 c1 02                                    	SHUFPS XMM0,XMM1,0x2
  00687409:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  0068740c:	0f c6 d1 01                                    	SHUFPS XMM2,XMM1,0x1
  00687410:	0f 58 c2                                       	ADDPS XMM0,XMM2
  00687413:	0f 58 c1                                       	ADDPS XMM0,XMM1
  00687416:	f3 0f 10 0d f8 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f8]
  0068741e:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00687422:	0f 52 e0                                       	RSQRTPS XMM4,XMM0
  00687425:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00687429:	0f 28 f4                                       	MOVAPS XMM6,XMM4
  0068742c:	0f 59 f4                                       	MULPS XMM6,XMM4
  0068742f:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  00687432:	0f 59 f0                                       	MULPS XMM6,XMM0
  00687435:	0f 5c d6                                       	SUBPS XMM2,XMM6
  00687438:	0f c6 db 00                                    	SHUFPS XMM3,XMM3,0x0
  0068743c:	0f 28 f3                                       	MOVAPS XMM6,XMM3
  0068743f:	0f 59 f4                                       	MULPS XMM6,XMM4
  00687442:	0f 59 d6                                       	MULPS XMM2,XMM6
  00687445:	0f 58 d4                                       	ADDPS XMM2,XMM4
  00687448:	0f 28 e2                                       	MOVAPS XMM4,XMM2
  0068744b:	0f 59 e2                                       	MULPS XMM4,XMM2
  0068744e:	0f 59 e0                                       	MULPS XMM4,XMM0
  00687451:	0f 5c cc                                       	SUBPS XMM1,XMM4
  00687454:	0f 59 da                                       	MULPS XMM3,XMM2
  00687457:	0f 59 cb                                       	MULPS XMM1,XMM3
  0068745a:	0f 58 ca                                       	ADDPS XMM1,XMM2
  0068745d:	0f 29 0c 24                                    	MOVAPS xmmword ptr [ESP],XMM1
  00687461:	0f 59 cd                                       	MULPS XMM1,XMM5
  00687464:	0f 29 4c 24 20                                 	MOVAPS xmmword ptr [ESP + 0x20],XMM1
  00687469:	74 05                                          	JZ 0x00687470
  0068746b:	0d 00 00 01 00                                 	OR EAX,0x10000
  00687470:	8d 4c 24 30                                    	LEA ECX,[ESP + 0x30]
  00687474:	51                                             	PUSH ECX
  00687475:	8b 4a 08                                       	MOV ECX,dword ptr [EDX + 0x8]
  00687478:	50                                             	PUSH EAX
  00687479:	8d 44 24 18                                    	LEA EAX,[ESP + 0x18]
  0068747d:	50                                             	PUSH EAX
  0068747e:	e8 ed ad ff ff                                 	CALL 0x00682270
  00687483:	84 c0                                          	TEST AL,AL
  00687485:	0f 84 5d ff ff ff                              	JZ 0x006873e8
  0068748b:	f3 0f 10 44 24 50                              	MOVSS XMM0,dword ptr [ESP + 0x50]
  00687491:	8b 45 14                                       	MOV EAX,dword ptr [EBP + 0x14]
  00687494:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00687498:	0f 59 04 24                                    	MULPS XMM0,xmmword ptr [ESP]
  0068749c:	0f 29 04 24                                    	MOVAPS xmmword ptr [ESP],XMM0
  006874a0:	f3 0f 10 04 24                                 	MOVSS XMM0,dword ptr [ESP]
  006874a5:	0f 2f 05 f8 98 f9 00                           	COMISS XMM0,dword ptr [0x00f998f8]
  006874ac:	f3 0f 11 00                                    	MOVSS dword ptr [EAX],XMM0
  006874b0:	0f 83 32 ff ff ff                              	JNC 0x006873e8
  006874b6:	8b 4c 24 54                                    	MOV ECX,dword ptr [ESP + 0x54]
  006874ba:	8b 51 40                                       	MOV EDX,dword ptr [ECX + 0x40]
  006874bd:	0f 28 44 24 40                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x40]
  006874c2:	89 50 30                                       	MOV dword ptr [EAX + 0x30],EDX
  006874c5:	8b 51 44                                       	MOV EDX,dword ptr [ECX + 0x44]
  006874c8:	89 50 34                                       	MOV dword ptr [EAX + 0x34],EDX
  006874cb:	0f 29 40 20                                    	MOVAPS xmmword ptr [EAX + 0x20],XMM0
  006874cf:	0f 28 44 24 30                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x30]
  006874d4:	0f 29 40 10                                    	MOVAPS xmmword ptr [EAX + 0x10],XMM0
  006874d8:	89 48 38                                       	MOV dword ptr [EAX + 0x38],ECX
  006874db:	b0 01                                          	MOV AL,0x1
  006874dd:	8b e5                                          	MOV ESP,EBP
  006874df:	5d                                             	POP EBP
  006874e0:	c2 14 00                                       	RET 0x14
