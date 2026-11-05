# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x005174f0 (UiEffect_DispatchCompletion)
Paired actual Ghidra pseudocode: 005174F0_UiEffect_DispatchCompletion.c
Envelope [0x005174f0,0x00517592); 162 pristine bytes.
Owned: 162 original bytes / 66 actual saved Listing instructions; no body gaps.
Saved body: [[005174f0, 00517591]]; inclusive ranges above, exclusive envelope end.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
005174f0 <original>:
  005174f0:	56                                             	PUSH ESI
  005174f1:	8b f1                                          	MOV ESI,ECX
  005174f3:	8b 46 14                                       	MOV EAX,dword ptr [ESI + 0x14]
  005174f6:	85 c0                                          	TEST EAX,EAX
  005174f8:	0f 84 92 00 00 00                              	JZ 0x00517590
  005174fe:	83 7e 68 00                                    	CMP dword ptr [ESI + 0x68],0x0
  00517502:	75 2d                                          	JNZ 0x00517531
  00517504:	8b 46 2c                                       	MOV EAX,dword ptr [ESI + 0x2c]
  00517507:	85 c0                                          	TEST EAX,EAX
  00517509:	74 05                                          	JZ 0x00517510
  0051750b:	83 f8 01                                       	CMP EAX,0x1
  0051750e:	75 0d                                          	JNZ 0x0051751d
  00517510:	8b 4e 14                                       	MOV ECX,dword ptr [ESI + 0x14]
  00517513:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00517515:	8b 90 a0 00 00 00                              	MOV EDX,dword ptr [EAX + 0xa0]
  0051751b:	ff d2                                          	CALL EDX
  0051751d:	83 7e 14 00                                    	CMP dword ptr [ESI + 0x14],0x0
  00517521:	74 6d                                          	JZ 0x00517590
  00517523:	8b 4e 14                                       	MOV ECX,dword ptr [ESI + 0x14]
  00517526:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00517528:	8b 90 a4 00 00 00                              	MOV EDX,dword ptr [EAX + 0xa4]
  0051752e:	5e                                             	POP ESI
  0051752f:	ff e2                                          	JMP EDX
  00517531:	57                                             	PUSH EDI
  00517532:	50                                             	PUSH EAX
  00517533:	e8 68 fd ff ff                                 	CALL 0x005172a0
  00517538:	8b f8                                          	MOV EDI,EAX
  0051753a:	85 ff                                          	TEST EDI,EDI
  0051753c:	74 51                                          	JZ 0x0051758f
  0051753e:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00517540:	8b 50 28                                       	MOV EDX,dword ptr [EAX + 0x28]
  00517543:	8b cf                                          	MOV ECX,EDI
  00517545:	ff d2                                          	CALL EDX
  00517547:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00517549:	8b 50 18                                       	MOV EDX,dword ptr [EAX + 0x18]
  0051754c:	8b cf                                          	MOV ECX,EDI
  0051754e:	ff d2                                          	CALL EDX
  00517550:	85 c0                                          	TEST EAX,EAX
  00517552:	74 0e                                          	JZ 0x00517562
  00517554:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00517556:	8b 50 18                                       	MOV EDX,dword ptr [EAX + 0x18]
  00517559:	8b cf                                          	MOV ECX,EDI
  0051755b:	ff d2                                          	CALL EDX
  0051755d:	83 f8 01                                       	CMP EAX,0x1
  00517560:	75 2d                                          	JNZ 0x0051758f
  00517562:	8b 46 14                                       	MOV EAX,dword ptr [ESI + 0x14]
  00517565:	50                                             	PUSH EAX
  00517566:	8b ce                                          	MOV ECX,ESI
  00517568:	e8 b3 fd ff ff                                 	CALL 0x00517320
  0051756d:	85 c0                                          	TEST EAX,EAX
  0051756f:	74 1e                                          	JZ 0x0051758f
  00517571:	8b 4e 14                                       	MOV ECX,dword ptr [ESI + 0x14]
  00517574:	8b 39                                          	MOV EDI,dword ptr [ECX]
  00517576:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00517578:	8b c8                                          	MOV ECX,EAX
  0051757a:	8b 42 28                                       	MOV EAX,dword ptr [EDX + 0x28]
  0051757d:	ff d0                                          	CALL EAX
  0051757f:	8b 4e 14                                       	MOV ECX,dword ptr [ESI + 0x14]
  00517582:	8b 57 74                                       	MOV EDX,dword ptr [EDI + 0x74]
  00517585:	25 01 ff ff ff                                 	AND EAX,0xffffff01
  0051758a:	50                                             	PUSH EAX
  0051758b:	6a 01                                          	PUSH 0x1
  0051758d:	ff d2                                          	CALL EDX
  0051758f:	5f                                             	POP EDI
  00517590:	5e                                             	POP ESI
  00517591:	c3                                             	RET
