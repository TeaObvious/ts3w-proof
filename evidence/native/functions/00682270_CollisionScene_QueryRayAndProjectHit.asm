# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00682270 (CollisionScene_QueryRayAndProjectHit)
Paired actual Ghidra pseudocode: 00682270_CollisionScene_QueryRayAndProjectHit.c
Body [0x00682270,0x00682339); 201 pristine original bytes / 62 actual saved Listing instructions.
Original instruction bytes and actual saved Listing text; inferred prototypes are retained.
Physical registers, AL results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00682270 <original>:
  00682270:	55                                             	PUSH EBP
  00682271:	8b ec                                          	MOV EBP,ESP
  00682273:	83 e4 f0                                       	AND ESP,0xfffffff0
  00682276:	8b 45 0c                                       	MOV EAX,dword ptr [EBP + 0xc]
  00682279:	f3 0f 10 05 50 0c ff 00                        	MOVSS XMM0,dword ptr [0x00ff0c50]
  00682281:	83 ec 08                                       	SUB ESP,0x8
  00682284:	56                                             	PUSH ESI
  00682285:	8b 75 10                                       	MOV ESI,dword ptr [EBP + 0x10]
  00682288:	57                                             	PUSH EDI
  00682289:	8b 7d 08                                       	MOV EDI,dword ptr [EBP + 0x8]
  0068228c:	56                                             	PUSH ESI
  0068228d:	50                                             	PUSH EAX
  0068228e:	f3 0f 11 46 20                                 	MOVSS dword ptr [ESI + 0x20],XMM0
  00682293:	c7 46 24 00 00 00 00                           	MOV dword ptr [ESI + 0x24],0x0
  0068229a:	8b 49 04                                       	MOV ECX,dword ptr [ECX + 0x4]
  0068229d:	57                                             	PUSH EDI
  0068229e:	e8 9d f9 ff ff                                 	CALL 0x00681c40
  006822a3:	84 c0                                          	TEST AL,AL
  006822a5:	0f 84 86 00 00 00                              	JZ 0x00682331
  006822ab:	0f 28 56 10                                    	MOVAPS XMM2,xmmword ptr [ESI + 0x10]
  006822af:	8b 4e 24                                       	MOV ECX,dword ptr [ESI + 0x24]
  006822b2:	0f 28 49 20                                    	MOVAPS XMM1,xmmword ptr [ECX + 0x20]
  006822b6:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  006822b9:	0f c6 d9 09                                    	SHUFPS XMM3,XMM1,0x9
  006822bd:	0f 28 e1                                       	MOVAPS XMM4,XMM1
  006822c0:	0f c6 e1 12                                    	SHUFPS XMM4,XMM1,0x12
  006822c4:	83 c1 20                                       	ADD ECX,0x20
  006822c7:	0f 28 ea                                       	MOVAPS XMM5,XMM2
  006822ca:	0f c6 ea 09                                    	SHUFPS XMM5,XMM2,0x9
  006822ce:	0f 59 ec                                       	MULPS XMM5,XMM4
  006822d1:	0f 28 c2                                       	MOVAPS XMM0,XMM2
  006822d4:	0f c6 c2 12                                    	SHUFPS XMM0,XMM2,0x12
  006822d8:	0f 59 c3                                       	MULPS XMM0,XMM3
  006822db:	0f 5c c5                                       	SUBPS XMM0,XMM5
  006822de:	0f 28 e9                                       	MOVAPS XMM5,XMM1
  006822e1:	0f c6 e9 ff                                    	SHUFPS XMM5,XMM1,0xff
  006822e5:	0f 59 ea                                       	MULPS XMM5,XMM2
  006822e8:	0f 58 c5                                       	ADDPS XMM0,XMM5
  006822eb:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  006822ee:	0f c6 c8 09                                    	SHUFPS XMM1,XMM0,0x9
  006822f2:	0f 59 cc                                       	MULPS XMM1,XMM4
  006822f5:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  006822f8:	0f c6 e0 12                                    	SHUFPS XMM4,XMM0,0x12
  006822fc:	f3 0f 10 05 88 fd 03 01                        	MOVSS XMM0,dword ptr [0x0103fd88]
  00682304:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00682308:	0f 59 e3                                       	MULPS XMM4,XMM3
  0068230b:	0f 5c e1                                       	SUBPS XMM4,XMM1
  0068230e:	0f 59 e0                                       	MULPS XMM4,XMM0
  00682311:	0f 58 e2                                       	ADDPS XMM4,XMM2
  00682314:	0f 29 66 10                                    	MOVAPS xmmword ptr [ESI + 0x10],XMM4
  00682318:	0f 28 4f 10                                    	MOVAPS XMM1,xmmword ptr [EDI + 0x10]
  0068231c:	f3 0f 10 46 20                                 	MOVSS XMM0,dword ptr [ESI + 0x20]
  00682321:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00682325:	0f 59 c1                                       	MULPS XMM0,XMM1
  00682328:	0f 28 0f                                       	MOVAPS XMM1,xmmword ptr [EDI]
  0068232b:	0f 58 c1                                       	ADDPS XMM0,XMM1
  0068232e:	0f 29 06                                       	MOVAPS xmmword ptr [ESI],XMM0
  00682331:	5f                                             	POP EDI
  00682332:	5e                                             	POP ESI
  00682333:	8b e5                                          	MOV ESP,EBP
  00682335:	5d                                             	POP EBP
  00682336:	c2 0c 00                                       	RET 0xc
