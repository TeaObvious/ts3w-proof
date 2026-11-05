# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00b636f0 (LotPonds_FindIdAtWorldPoint)
Paired actual Ghidra pseudocode: 00B636F0_LotPonds_FindIdAtWorldPoint.c
Envelope [0x00b636f0,0x00b63831); 321 bytes. Exact owned ranges: [0x00b636f0,0x00b63831)
Owned: 321 pristine PE bytes / 91 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b636f0 <original>:
  00b636f0:	55                                             	PUSH EBP
  00b636f1:	8b ec                                          	MOV EBP,ESP
  00b636f3:	83 e4 f0                                       	AND ESP,0xfffffff0
  00b636f6:	83 ec 3c                                       	SUB ESP,0x3c
  00b636f9:	56                                             	PUSH ESI
  00b636fa:	8b f1                                          	MOV ESI,ECX
  00b636fc:	8b 4d 08                                       	MOV ECX,dword ptr [EBP + 0x8]
  00b636ff:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  00b63703:	50                                             	PUSH EAX
  00b63704:	51                                             	PUSH ECX
  00b63705:	8b 4e 04                                       	MOV ECX,dword ptr [ESI + 0x4]
  00b63708:	e8 93 3a f5 ff                                 	CALL 0x00ab71a0
  00b6370d:	0f 28 7c 24 10                                 	MOVAPS XMM7,xmmword ptr [ESP + 0x10]
  00b63712:	0f 57 c0                                       	XORPS XMM0,XMM0
  00b63715:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  00b63718:	0f 29 7c 24 20                                 	MOVAPS xmmword ptr [ESP + 0x20],XMM7
  00b6371d:	f3 0f 10 4c 24 20                              	MOVSS XMM1,dword ptr [ESP + 0x20]
  00b63723:	0f 2f c8                                       	COMISS XMM1,XMM0
  00b63726:	0f 29 7c 24 30                                 	MOVAPS xmmword ptr [ESP + 0x30],XMM7
  00b6372b:	72 25                                          	JC 0x00b63752
  00b6372d:	f3 0f 2a 90 74 01 00 00                        	CVTSI2SS XMM2,dword ptr [EAX + 0x174]
  00b63735:	0f 2f d1                                       	COMISS XMM2,XMM1
  00b63738:	72 18                                          	JC 0x00b63752
  00b6373a:	f3 0f 10 4c 24 38                              	MOVSS XMM1,dword ptr [ESP + 0x38]
  00b63740:	0f 2f c8                                       	COMISS XMM1,XMM0
  00b63743:	72 0d                                          	JC 0x00b63752
  00b63745:	f3 0f 2a 80 78 01 00 00                        	CVTSI2SS XMM0,dword ptr [EAX + 0x178]
  00b6374d:	0f 2f c1                                       	COMISS XMM0,XMM1
  00b63750:	73 09                                          	JNC 0x00b6375b
  00b63752:	33 c0                                          	XOR EAX,EAX
  00b63754:	5e                                             	POP ESI
  00b63755:	8b e5                                          	MOV ESP,EBP
  00b63757:	5d                                             	POP EBP
  00b63758:	c2 04 00                                       	RET 0x4
  00b6375b:	f3 0f 10 25 b4 b5 f9 00                        	MOVSS XMM4,dword ptr [0x00f9b5b4]
  00b63763:	f3 0f 10 2d 7c 45 fe 00                        	MOVSS XMM5,dword ptr [0x00fe457c]
  00b6376b:	0f 57 c9                                       	XORPS XMM1,XMM1
  00b6376e:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  00b63771:	0f c6 e4 00                                    	SHUFPS XMM4,XMM4,0x0
  00b63775:	0f 28 c7                                       	MOVAPS XMM0,XMM7
  00b63778:	0f c6 c7 00                                    	SHUFPS XMM0,XMM7,0x0
  00b6377c:	0f 58 c4                                       	ADDPS XMM0,XMM4
  00b6377f:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00b63782:	0f c2 ca 01                                    	CMPLTPS XMM1,XMM2
  00b63786:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  00b63789:	0f 29 54 24 30                                 	MOVAPS xmmword ptr [ESP + 0x30],XMM2
  00b6378e:	f3 0f 10 15 78 45 fe 00                        	MOVSS XMM2,dword ptr [0x00fe4578]
  00b63796:	0f c6 d2 00                                    	SHUFPS XMM2,XMM2,0x0
  00b6379a:	0f c6 ed 00                                    	SHUFPS XMM5,XMM5,0x0
  00b6379e:	0f 55 dd                                       	ANDNPS XMM3,XMM5
  00b637a1:	0f 28 f2                                       	MOVAPS XMM6,XMM2
  00b637a4:	0f 54 f1                                       	ANDPS XMM6,XMM1
  00b637a7:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00b637aa:	0f 56 de                                       	ORPS XMM3,XMM6
  00b637ad:	f3 0f 10 35 f8 98 f9 00                        	MOVSS XMM6,dword ptr [0x00f998f8]
  00b637b5:	0f 5c cb                                       	SUBPS XMM1,XMM3
  00b637b8:	0f 58 cb                                       	ADDPS XMM1,XMM3
  00b637bb:	0f c2 c1 01                                    	CMPLTPS XMM0,XMM1
  00b637bf:	0f c6 f6 00                                    	SHUFPS XMM6,XMM6,0x0
  00b637c3:	0f 54 c6                                       	ANDPS XMM0,XMM6
  00b637c6:	0f 5c c8                                       	SUBPS XMM1,XMM0
  00b637c9:	0f 29 4c 24 20                                 	MOVAPS xmmword ptr [ESP + 0x20],XMM1
  00b637ce:	f3 0f 2c 54 24 20                              	CVTTSS2SI EDX,dword ptr [ESP + 0x20]
  00b637d4:	0f 28 c7                                       	MOVAPS XMM0,XMM7
  00b637d7:	0f c6 c7 aa                                    	SHUFPS XMM0,XMM7,0xaa
  00b637db:	0f 58 c4                                       	ADDPS XMM0,XMM4
  00b637de:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00b637e1:	0f c2 4c 24 30 01                              	CMPLTPS XMM1,xmmword ptr [ESP + 0x30]
  00b637e7:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  00b637ea:	0f 54 d1                                       	ANDPS XMM2,XMM1
  00b637ed:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00b637f0:	0f 55 dd                                       	ANDNPS XMM3,XMM5
  00b637f3:	0f 56 da                                       	ORPS XMM3,XMM2
  00b637f6:	0f 5c cb                                       	SUBPS XMM1,XMM3
  00b637f9:	0f 58 cb                                       	ADDPS XMM1,XMM3
  00b637fc:	0f c2 c1 01                                    	CMPLTPS XMM0,XMM1
  00b63800:	0f 54 c6                                       	ANDPS XMM0,XMM6
  00b63803:	0f 5c c8                                       	SUBPS XMM1,XMM0
  00b63806:	8d 4c 24 0d                                    	LEA ECX,[ESP + 0xd]
  00b6380a:	0f 29 4c 24 30                                 	MOVAPS xmmword ptr [ESP + 0x30],XMM1
  00b6380f:	f3 0f 2c 44 24 30                              	CVTTSS2SI EAX,dword ptr [ESP + 0x30]
  00b63815:	51                                             	PUSH ECX
  00b63816:	8b ce                                          	MOV ECX,ESI
  00b63818:	88 54 24 11                                    	MOV byte ptr [ESP + 0x11],DL
  00b6381c:	88 44 24 12                                    	MOV byte ptr [ESP + 0x12],AL
  00b63820:	c6 44 24 13 00                                 	MOV byte ptr [ESP + 0x13],0x0
  00b63825:	e8 16 fe ff ff                                 	CALL 0x00b63640
  00b6382a:	5e                                             	POP ESI
  00b6382b:	8b e5                                          	MOV ESP,EBP
  00b6382d:	5d                                             	POP EBP
  00b6382e:	c2 04 00                                       	RET 0x4
