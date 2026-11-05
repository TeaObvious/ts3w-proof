# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00ab73b0 (Lot_TransformWorldPointToLocal)
Paired actual Ghidra pseudocode: 00AB73B0_Lot_TransformWorldPointToLocal.c
Body [0x00ab73b0,0x00ab7425); 117 pristine original bytes / 39 actual saved Listing instructions.
Original instruction bytes and actual saved Listing text; inferred prototypes are retained.
Physical registers, AL results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00ab73b0 <original>:
  00ab73b0:	55                                             	PUSH EBP
  00ab73b1:	8b ec                                          	MOV EBP,ESP
  00ab73b3:	83 e4 f0                                       	AND ESP,0xfffffff0
  00ab73b6:	83 ec 40                                       	SUB ESP,0x40
  00ab73b9:	80 b9 44 04 00 00 00                           	CMP byte ptr [ECX + 0x444],0x0
  00ab73c0:	74 51                                          	JZ 0x00ab7413
  00ab73c2:	8d 04 24                                       	LEA EAX,[ESP]
  00ab73c5:	50                                             	PUSH EAX
  00ab73c6:	e8 e5 ac ff ff                                 	CALL 0x00ab20b0
  00ab73cb:	8b 4d 08                                       	MOV ECX,dword ptr [EBP + 0x8]
  00ab73ce:	0f 28 01                                       	MOVAPS XMM0,xmmword ptr [ECX]
  00ab73d1:	0f 28 10                                       	MOVAPS XMM2,xmmword ptr [EAX]
  00ab73d4:	0f 28 58 10                                    	MOVAPS XMM3,xmmword ptr [EAX + 0x10]
  00ab73d8:	8b 55 0c                                       	MOV EDX,dword ptr [EBP + 0xc]
  00ab73db:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00ab73de:	0f c6 c8 00                                    	SHUFPS XMM1,XMM0,0x0
  00ab73e2:	0f 59 ca                                       	MULPS XMM1,XMM2
  00ab73e5:	0f 28 50 30                                    	MOVAPS XMM2,xmmword ptr [EAX + 0x30]
  00ab73e9:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00ab73ec:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00ab73ef:	0f c6 d0 55                                    	SHUFPS XMM2,XMM0,0x55
  00ab73f3:	0f 59 d3                                       	MULPS XMM2,XMM3
  00ab73f6:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00ab73f9:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00ab73fc:	0f c6 d0 aa                                    	SHUFPS XMM2,XMM0,0xaa
  00ab7400:	0f 28 40 20                                    	MOVAPS XMM0,xmmword ptr [EAX + 0x20]
  00ab7404:	0f 59 d0                                       	MULPS XMM2,XMM0
  00ab7407:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00ab740a:	0f 29 0a                                       	MOVAPS xmmword ptr [EDX],XMM1
  00ab740d:	8b e5                                          	MOV ESP,EBP
  00ab740f:	5d                                             	POP EBP
  00ab7410:	c2 08 00                                       	RET 0x8
  00ab7413:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  00ab7416:	8b 4d 0c                                       	MOV ECX,dword ptr [EBP + 0xc]
  00ab7419:	0f 28 00                                       	MOVAPS XMM0,xmmword ptr [EAX]
  00ab741c:	0f 29 01                                       	MOVAPS xmmword ptr [ECX],XMM0
  00ab741f:	8b e5                                          	MOV ESP,EBP
  00ab7421:	5d                                             	POP EBP
  00ab7422:	c2 08 00                                       	RET 0x8
