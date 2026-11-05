# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00ab7430 (Lot_TransformLocalPointToWorld)
Paired actual Ghidra pseudocode: 00AB7430_Lot_TransformLocalPointToWorld.c
Body [0x00ab7430,0x00ab74a5); 117 pristine original bytes / 39 actual saved Listing instructions.
Original instruction bytes and actual saved Listing text; inferred prototypes are retained.
Physical registers, AL results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00ab7430 <original>:
  00ab7430:	55                                             	PUSH EBP
  00ab7431:	8b ec                                          	MOV EBP,ESP
  00ab7433:	83 e4 f0                                       	AND ESP,0xfffffff0
  00ab7436:	83 ec 40                                       	SUB ESP,0x40
  00ab7439:	80 b9 44 04 00 00 00                           	CMP byte ptr [ECX + 0x444],0x0
  00ab7440:	74 51                                          	JZ 0x00ab7493
  00ab7442:	8d 04 24                                       	LEA EAX,[ESP]
  00ab7445:	50                                             	PUSH EAX
  00ab7446:	e8 f5 aa ff ff                                 	CALL 0x00ab1f40
  00ab744b:	8b 4d 08                                       	MOV ECX,dword ptr [EBP + 0x8]
  00ab744e:	0f 28 01                                       	MOVAPS XMM0,xmmword ptr [ECX]
  00ab7451:	0f 28 10                                       	MOVAPS XMM2,xmmword ptr [EAX]
  00ab7454:	0f 28 58 10                                    	MOVAPS XMM3,xmmword ptr [EAX + 0x10]
  00ab7458:	8b 55 0c                                       	MOV EDX,dword ptr [EBP + 0xc]
  00ab745b:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00ab745e:	0f c6 c8 00                                    	SHUFPS XMM1,XMM0,0x0
  00ab7462:	0f 59 ca                                       	MULPS XMM1,XMM2
  00ab7465:	0f 28 50 30                                    	MOVAPS XMM2,xmmword ptr [EAX + 0x30]
  00ab7469:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00ab746c:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00ab746f:	0f c6 d0 55                                    	SHUFPS XMM2,XMM0,0x55
  00ab7473:	0f 59 d3                                       	MULPS XMM2,XMM3
  00ab7476:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00ab7479:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00ab747c:	0f c6 d0 aa                                    	SHUFPS XMM2,XMM0,0xaa
  00ab7480:	0f 28 40 20                                    	MOVAPS XMM0,xmmword ptr [EAX + 0x20]
  00ab7484:	0f 59 d0                                       	MULPS XMM2,XMM0
  00ab7487:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00ab748a:	0f 29 0a                                       	MOVAPS xmmword ptr [EDX],XMM1
  00ab748d:	8b e5                                          	MOV ESP,EBP
  00ab748f:	5d                                             	POP EBP
  00ab7490:	c2 08 00                                       	RET 0x8
  00ab7493:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  00ab7496:	8b 4d 0c                                       	MOV ECX,dword ptr [EBP + 0xc]
  00ab7499:	0f 28 00                                       	MOVAPS XMM0,xmmword ptr [EAX]
  00ab749c:	0f 29 01                                       	MOVAPS xmmword ptr [ECX],XMM0
  00ab749f:	8b e5                                          	MOV ESP,EBP
  00ab74a1:	5d                                             	POP EBP
  00ab74a2:	c2 08 00                                       	RET 0x8
