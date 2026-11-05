# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00aea370 (LotWater_ResetHeightsBelowFloor)
Paired actual Ghidra pseudocode: 00AEA370_LotWater_ResetHeightsBelowFloor.c
Envelope [0x00aea370,0x00aea415); 165 bytes. Exact owned ranges: [0x00aea370,0x00aea415)
Owned: 165 pristine PE bytes / 57 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00aea370 <original>:
  00aea370:	83 b9 c8 00 00 00 00                           	CMP dword ptr [ECX + 0xc8],0x0
  00aea377:	0f 84 97 00 00 00                              	JZ 0x00aea414
  00aea37d:	83 79 08 00                                    	CMP dword ptr [ECX + 0x8],0x0
  00aea381:	0f 84 8d 00 00 00                              	JZ 0x00aea414
  00aea387:	53                                             	PUSH EBX
  00aea388:	33 db                                          	XOR EBX,EBX
  00aea38a:	39 59 0c                                       	CMP dword ptr [ECX + 0xc],EBX
  00aea38d:	7c 66                                          	JL 0x00aea3f5
  00aea38f:	8b 51 10                                       	MOV EDX,dword ptr [ECX + 0x10]
  00aea392:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00aea39a:	55                                             	PUSH EBP
  00aea39b:	56                                             	PUSH ESI
  00aea39c:	57                                             	PUSH EDI
  00aea39d:	8d 49 00                                       	LEA ECX,[ECX]
  00aea3a0:	33 c0                                          	XOR EAX,EAX
  00aea3a2:	85 d2                                          	TEST EDX,EDX
  00aea3a4:	7c 44                                          	JL 0x00aea3ea
  00aea3a6:	8b 51 08                                       	MOV EDX,dword ptr [ECX + 0x8]
  00aea3a9:	8b 6a 18                                       	MOV EBP,dword ptr [EDX + 0x18]
  00aea3ac:	2b 6a 10                                       	SUB EBP,dword ptr [EDX + 0x10]
  00aea3af:	8b 72 24                                       	MOV ESI,dword ptr [EDX + 0x24]
  00aea3b2:	0f af 6e 04                                    	IMUL EBP,dword ptr [ESI + 0x4]
  00aea3b6:	8b 56 10                                       	MOV EDX,dword ptr [ESI + 0x10]
  00aea3b9:	8b b9 c8 00 00 00                              	MOV EDI,dword ptr [ECX + 0xc8]
  00aea3bf:	03 eb                                          	ADD EBP,EBX
  00aea3c1:	0f af 6e 08                                    	IMUL EBP,dword ptr [ESI + 0x8]
  00aea3c5:	8b 77 0c                                       	MOV ESI,dword ptr [EDI + 0xc]
  00aea3c8:	03 e8                                          	ADD EBP,EAX
  00aea3ca:	f3 0f 10 0c aa                                 	MOVSS XMM1,dword ptr [EDX + EBP*0x4]
  00aea3cf:	8b 57 08                                       	MOV EDX,dword ptr [EDI + 0x8]
  00aea3d2:	0f af d3                                       	IMUL EDX,EBX
  00aea3d5:	03 d0                                          	ADD EDX,EAX
  00aea3d7:	f3 0f 5c c8                                    	SUBSS XMM1,XMM0
  00aea3db:	f3 0f 11 0c 96                                 	MOVSS dword ptr [ESI + EDX*0x4],XMM1
  00aea3e0:	8b 51 10                                       	MOV EDX,dword ptr [ECX + 0x10]
  00aea3e3:	83 c0 01                                       	ADD EAX,0x1
  00aea3e6:	3b c2                                          	CMP EAX,EDX
  00aea3e8:	7e bc                                          	JLE 0x00aea3a6
  00aea3ea:	83 c3 01                                       	ADD EBX,0x1
  00aea3ed:	3b 59 0c                                       	CMP EBX,dword ptr [ECX + 0xc]
  00aea3f0:	7e ae                                          	JLE 0x00aea3a0
  00aea3f2:	5f                                             	POP EDI
  00aea3f3:	5e                                             	POP ESI
  00aea3f4:	5d                                             	POP EBP
  00aea3f5:	8b 89 cc 00 00 00                              	MOV ECX,dword ptr [ECX + 0xcc]
  00aea3fb:	85 c9                                          	TEST ECX,ECX
  00aea3fd:	5b                                             	POP EBX
  00aea3fe:	74 14                                          	JZ 0x00aea414
  00aea400:	8b 41 0c                                       	MOV EAX,dword ptr [ECX + 0xc]
  00aea403:	8b 49 10                                       	MOV ECX,dword ptr [ECX + 0x10]
  00aea406:	2b c8                                          	SUB ECX,EAX
  00aea408:	51                                             	PUSH ECX
  00aea409:	6a 00                                          	PUSH 0x0
  00aea40b:	50                                             	PUSH EAX
  00aea40c:	e8 87 4e 49 00                                 	CALL 0x00f7f298
  00aea411:	83 c4 0c                                       	ADD ESP,0xc
  00aea414:	c3                                             	RET
