# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00949510 (ModelComponent_ConstructDefaultState)
Paired actual Ghidra pseudocode: 00949510_ModelComponent_ConstructDefaultState.c
Envelope [0x00949510,0x009495e4); 212 bytes. Exact owned ranges: [0x00949510,0x009495e4)
Owned: 212 pristine PE bytes / 53 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00949510 <original>:
  00949510:	55                                             	PUSH EBP
  00949511:	8b ec                                          	MOV EBP,ESP
  00949513:	83 e4 f0                                       	AND ESP,0xfffffff0
  00949516:	83 ec 10                                       	SUB ESP,0x10
  00949519:	8b c1                                          	MOV EAX,ECX
  0094951b:	8b 4d 08                                       	MOV ECX,dword ptr [EBP + 0x8]
  0094951e:	f3 0f 10 05 00 b6 f9 00                        	MOVSS XMM0,dword ptr [0x00f9b600]
  00949526:	0f 57 c9                                       	XORPS XMM1,XMM1
  00949529:	89 48 04                                       	MOV dword ptr [EAX + 0x4],ECX
  0094952c:	33 c9                                          	XOR ECX,ECX
  0094952e:	c7 00 d0 4b 04 01                              	MOV dword ptr [EAX],0x1044bd0
  00949534:	89 48 08                                       	MOV dword ptr [EAX + 0x8],ECX
  00949537:	89 48 0c                                       	MOV dword ptr [EAX + 0xc],ECX
  0094953a:	89 48 10                                       	MOV dword ptr [EAX + 0x10],ECX
  0094953d:	89 48 14                                       	MOV dword ptr [EAX + 0x14],ECX
  00949540:	89 48 18                                       	MOV dword ptr [EAX + 0x18],ECX
  00949543:	89 48 1c                                       	MOV dword ptr [EAX + 0x1c],ECX
  00949546:	89 48 20                                       	MOV dword ptr [EAX + 0x20],ECX
  00949549:	89 48 24                                       	MOV dword ptr [EAX + 0x24],ECX
  0094954c:	89 48 28                                       	MOV dword ptr [EAX + 0x28],ECX
  0094954f:	89 48 2c                                       	MOV dword ptr [EAX + 0x2c],ECX
  00949552:	89 48 30                                       	MOV dword ptr [EAX + 0x30],ECX
  00949555:	89 48 34                                       	MOV dword ptr [EAX + 0x34],ECX
  00949558:	89 48 38                                       	MOV dword ptr [EAX + 0x38],ECX
  0094955b:	89 48 3c                                       	MOV dword ptr [EAX + 0x3c],ECX
  0094955e:	89 48 40                                       	MOV dword ptr [EAX + 0x40],ECX
  00949561:	c7 40 44 a8 4b 04 01                           	MOV dword ptr [EAX + 0x44],0x1044ba8
  00949568:	8a 90 81 00 00 00                              	MOV DL,byte ptr [EAX + 0x81]
  0094956e:	f3 0f 11 44 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM0
  00949574:	f3 0f 11 44 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM0
  0094957a:	f3 0f 11 4c 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM1
  00949580:	f3 0f 10 0d f8 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f8]
  00949588:	f3 0f 11 04 24                                 	MOVSS dword ptr [ESP],XMM0
  0094958d:	0f 28 04 24                                    	MOVAPS XMM0,xmmword ptr [ESP]
  00949591:	80 e2 82                                       	AND DL,0x82
  00949594:	80 ca 02                                       	OR DL,0x2
  00949597:	89 48 48                                       	MOV dword ptr [EAX + 0x48],ECX
  0094959a:	89 48 4c                                       	MOV dword ptr [EAX + 0x4c],ECX
  0094959d:	c7 40 50 ff ff ff ff                           	MOV dword ptr [EAX + 0x50],0xffffffff
  009495a4:	89 48 54                                       	MOV dword ptr [EAX + 0x54],ECX
  009495a7:	88 88 80 00 00 00                              	MOV byte ptr [EAX + 0x80],CL
  009495ad:	88 90 81 00 00 00                              	MOV byte ptr [EAX + 0x81],DL
  009495b3:	0f 29 40 60                                    	MOVAPS xmmword ptr [EAX + 0x60],XMM0
  009495b7:	f3 0f 10 05 b4 b5 f9 00                        	MOVSS XMM0,dword ptr [0x00f9b5b4]
  009495bf:	f3 0f 11 44 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM0
  009495c5:	f3 0f 11 44 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM0
  009495cb:	f3 0f 11 4c 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM1
  009495d1:	f3 0f 11 04 24                                 	MOVSS dword ptr [ESP],XMM0
  009495d6:	0f 28 04 24                                    	MOVAPS XMM0,xmmword ptr [ESP]
  009495da:	0f 29 40 70                                    	MOVAPS xmmword ptr [EAX + 0x70],XMM0
  009495de:	8b e5                                          	MOV ESP,EBP
  009495e0:	5d                                             	POP EBP
  009495e1:	c2 04 00                                       	RET 0x4
