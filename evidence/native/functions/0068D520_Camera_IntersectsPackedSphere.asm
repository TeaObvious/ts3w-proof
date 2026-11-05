# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x0068d520 (Camera_IntersectsPackedSphere)
Paired actual Ghidra pseudocode: 0068D520_Camera_IntersectsPackedSphere.c
Envelope [0x0068d520,0x0068d5e2); 194 bytes. Exact owned ranges: [0x0068d520,0x0068d5e2)
Owned: 194 pristine PE bytes / 51 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0068d520 <original>:
  0068d520:	55                                             	PUSH EBP
  0068d521:	8b ec                                          	MOV EBP,ESP
  0068d523:	83 e4 f0                                       	AND ESP,0xfffffff0
  0068d526:	83 ec 10                                       	SUB ESP,0x10
  0068d529:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  0068d52c:	0f 28 00                                       	MOVAPS XMM0,xmmword ptr [EAX]
  0068d52f:	0f 28 a1 40 01 00 00                           	MOVAPS XMM4,xmmword ptr [ECX + 0x140]
  0068d536:	0f 28 a9 20 01 00 00                           	MOVAPS XMM5,xmmword ptr [ECX + 0x120]
  0068d53d:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  0068d540:	0f c6 c8 00                                    	SHUFPS XMM1,XMM0,0x0
  0068d544:	0f 59 e9                                       	MULPS XMM5,XMM1
  0068d547:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  0068d54a:	0f c6 d0 55                                    	SHUFPS XMM2,XMM0,0x55
  0068d54e:	0f 59 e2                                       	MULPS XMM4,XMM2
  0068d551:	0f 58 e5                                       	ADDPS XMM4,XMM5
  0068d554:	0f 28 a9 60 01 00 00                           	MOVAPS XMM5,xmmword ptr [ECX + 0x160]
  0068d55b:	0f 28 d8                                       	MOVAPS XMM3,XMM0
  0068d55e:	0f c6 d8 aa                                    	SHUFPS XMM3,XMM0,0xaa
  0068d562:	0f 59 eb                                       	MULPS XMM5,XMM3
  0068d565:	0f 58 e5                                       	ADDPS XMM4,XMM5
  0068d568:	0f 28 a9 a0 02 00 00                           	MOVAPS XMM5,xmmword ptr [ECX + 0x2a0]
  0068d56f:	83 c8 ff                                       	OR EAX,0xffffffff
  0068d572:	0f c6 c0 ff                                    	SHUFPS XMM0,XMM0,0xff
  0068d576:	0f 58 e0                                       	ADDPS XMM4,XMM0
  0068d579:	0f c2 ec 02                                    	CMPLEPS XMM5,XMM4
  0068d57d:	89 44 24 08                                    	MOV dword ptr [ESP + 0x8],EAX
  0068d581:	f3 0f 10 64 24 08                              	MOVSS XMM4,dword ptr [ESP + 0x8]
  0068d587:	0f c6 e4 00                                    	SHUFPS XMM4,XMM4,0x0
  0068d58b:	0f 57 ec                                       	XORPS XMM5,XMM4
  0068d58e:	0f 28 a1 50 01 00 00                           	MOVAPS XMM4,xmmword ptr [ECX + 0x150]
  0068d595:	0f 59 e2                                       	MULPS XMM4,XMM2
  0068d598:	0f 28 91 30 01 00 00                           	MOVAPS XMM2,xmmword ptr [ECX + 0x130]
  0068d59f:	0f 59 d1                                       	MULPS XMM2,XMM1
  0068d5a2:	0f 28 89 70 01 00 00                           	MOVAPS XMM1,xmmword ptr [ECX + 0x170]
  0068d5a9:	0f 59 cb                                       	MULPS XMM1,XMM3
  0068d5ac:	0f 58 e2                                       	ADDPS XMM4,XMM2
  0068d5af:	0f 58 e1                                       	ADDPS XMM4,XMM1
  0068d5b2:	0f 28 89 b0 02 00 00                           	MOVAPS XMM1,xmmword ptr [ECX + 0x2b0]
  0068d5b9:	89 44 24 0c                                    	MOV dword ptr [ESP + 0xc],EAX
  0068d5bd:	0f 58 e0                                       	ADDPS XMM4,XMM0
  0068d5c0:	f3 0f 10 44 24 0c                              	MOVSS XMM0,dword ptr [ESP + 0xc]
  0068d5c6:	0f c2 cc 02                                    	CMPLEPS XMM1,XMM4
  0068d5ca:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  0068d5ce:	0f 57 c8                                       	XORPS XMM1,XMM0
  0068d5d1:	0f 56 e9                                       	ORPS XMM5,XMM1
  0068d5d4:	0f 50 cd                                       	MOVMSKPS ECX,XMM5
  0068d5d7:	85 c9                                          	TEST ECX,ECX
  0068d5d9:	0f 94 c0                                       	SETZ AL
  0068d5dc:	8b e5                                          	MOV ESP,EBP
  0068d5de:	5d                                             	POP EBP
  0068d5df:	c2 04 00                                       	RET 0x4
