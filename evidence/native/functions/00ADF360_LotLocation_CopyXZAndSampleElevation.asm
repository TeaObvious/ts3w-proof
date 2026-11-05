# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00adf360 (LotLocation_CopyXZAndSampleElevation)
Paired actual Ghidra pseudocode: 00ADF360_LotLocation_CopyXZAndSampleElevation.c
Envelope [0x00adf360,0x00adf3ea); 138 bytes; exact owned ranges: [0x00adf360,0x00adf3ea)
Owned: 138 original bytes / 41 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00adf360 <original>:
  00adf360:	55                                             	PUSH EBP
  00adf361:	8b ec                                          	MOV EBP,ESP
  00adf363:	83 e4 f0                                       	AND ESP,0xfffffff0
  00adf366:	83 ec 1c                                       	SUB ESP,0x1c
  00adf369:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  00adf36c:	56                                             	PUSH ESI
  00adf36d:	8b 75 0c                                       	MOV ESI,dword ptr [EBP + 0xc]
  00adf370:	0f 28 06                                       	MOVAPS XMM0,xmmword ptr [ESI]
  00adf373:	0f 29 44 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM0
  00adf378:	f3 0f 10 00                                    	MOVSS XMM0,dword ptr [EAX]
  00adf37c:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00adf382:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00adf387:	0f 29 06                                       	MOVAPS xmmword ptr [ESI],XMM0
  00adf38a:	0f 29 44 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM0
  00adf38f:	f3 0f 10 40 04                                 	MOVSS XMM0,dword ptr [EAX + 0x4]
  00adf394:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  00adf39a:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00adf39f:	0f 29 06                                       	MOVAPS xmmword ptr [ESI],XMM0
  00adf3a2:	8b 89 30 02 00 00                              	MOV ECX,dword ptr [ECX + 0x230]
  00adf3a8:	85 c9                                          	TEST ECX,ECX
  00adf3aa:	74 21                                          	JZ 0x00adf3cd
  00adf3ac:	50                                             	PUSH EAX
  00adf3ad:	e8 de 17 fc ff                                 	CALL 0x00aa0b90
  00adf3b2:	0f 28 06                                       	MOVAPS XMM0,xmmword ptr [ESI]
  00adf3b5:	0f 29 44 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM0
  00adf3ba:	d9 5c 24 14                                    	FSTP float ptr [ESP + 0x14]
  00adf3be:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00adf3c3:	0f 29 06                                       	MOVAPS xmmword ptr [ESI],XMM0
  00adf3c6:	5e                                             	POP ESI
  00adf3c7:	8b e5                                          	MOV ESP,EBP
  00adf3c9:	5d                                             	POP EBP
  00adf3ca:	c2 08 00                                       	RET 0x8
  00adf3cd:	0f 29 44 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM0
  00adf3d2:	0f 57 c0                                       	XORPS XMM0,XMM0
  00adf3d5:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  00adf3db:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00adf3e0:	0f 29 06                                       	MOVAPS xmmword ptr [ESI],XMM0
  00adf3e3:	5e                                             	POP ESI
  00adf3e4:	8b e5                                          	MOV ESP,EBP
  00adf3e6:	5d                                             	POP EBP
  00adf3e7:	c2 08 00                                       	RET 0x8
