# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b665f0 (PoolGeometry_Construct)
Paired actual Ghidra pseudocode: 00B665F0_PoolGeometry_Construct.c
Envelope [0x00b665f0,0x00b666bf); 207 bytes; exact owned ranges: [0x00b665f0,0x00b666bf)
Owned: 207 original bytes / 39 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b665f0 <original>:
  00b665f0:	53                                             	PUSH EBX
  00b665f1:	56                                             	PUSH ESI
  00b665f2:	33 db                                          	XOR EBX,EBX
  00b665f4:	53                                             	PUSH EBX
  00b665f5:	53                                             	PUSH EBX
  00b665f6:	8b f1                                          	MOV ESI,ECX
  00b665f8:	e8 e3 6e b9 ff                                 	CALL 0x006fd4e0
  00b665fd:	89 9e 10 02 00 00                              	MOV dword ptr [ESI + 0x210],EBX
  00b66603:	89 9e 14 02 00 00                              	MOV dword ptr [ESI + 0x214],EBX
  00b66609:	c7 06 28 f5 06 01                              	MOV dword ptr [ESI],0x106f528
  00b6660f:	89 9e 1c 02 00 00                              	MOV dword ptr [ESI + 0x21c],EBX
  00b66615:	89 9e 20 02 00 00                              	MOV dword ptr [ESI + 0x220],EBX
  00b6661b:	c7 86 18 02 00 00 94 fb 05 01                  	MOV dword ptr [ESI + 0x218],0x105fb94
  00b66625:	89 9e 24 02 00 00                              	MOV dword ptr [ESI + 0x224],EBX
  00b6662b:	89 9e 28 02 00 00                              	MOV dword ptr [ESI + 0x228],EBX
  00b66631:	89 9e 2c 02 00 00                              	MOV dword ptr [ESI + 0x22c],EBX
  00b66637:	c7 86 30 02 00 00 00 f5 06 01                  	MOV dword ptr [ESI + 0x230],0x106f500
  00b66641:	89 9e 34 02 00 00                              	MOV dword ptr [ESI + 0x234],EBX
  00b66647:	89 9e 38 02 00 00                              	MOV dword ptr [ESI + 0x238],EBX
  00b6664d:	89 9e 3c 02 00 00                              	MOV dword ptr [ESI + 0x23c],EBX
  00b66653:	89 9e 44 02 00 00                              	MOV dword ptr [ESI + 0x244],EBX
  00b66659:	89 9e 48 02 00 00                              	MOV dword ptr [ESI + 0x248],EBX
  00b6665f:	89 9e 4c 02 00 00                              	MOV dword ptr [ESI + 0x24c],EBX
  00b66665:	c7 86 50 02 00 00 e0 f4 06 01                  	MOV dword ptr [ESI + 0x250],0x106f4e0
  00b6666f:	89 9e 54 02 00 00                              	MOV dword ptr [ESI + 0x254],EBX
  00b66675:	89 9e 58 02 00 00                              	MOV dword ptr [ESI + 0x258],EBX
  00b6667b:	89 9e 5c 02 00 00                              	MOV dword ptr [ESI + 0x25c],EBX
  00b66681:	c7 86 60 02 00 00 bc f4 06 01                  	MOV dword ptr [ESI + 0x260],0x106f4bc
  00b6668b:	81 4e 44 80 00 04 00                           	OR dword ptr [ESI + 0x44],0x40080
  00b66692:	88 9e 68 02 00 00                              	MOV byte ptr [ESI + 0x268],BL
  00b66698:	89 9e 6c 02 00 00                              	MOV dword ptr [ESI + 0x26c],EBX
  00b6669e:	89 9e 70 02 00 00                              	MOV dword ptr [ESI + 0x270],EBX
  00b666a4:	89 9e 9c 01 00 00                              	MOV dword ptr [ESI + 0x19c],EBX
  00b666aa:	89 9e a0 01 00 00                              	MOV dword ptr [ESI + 0x1a0],EBX
  00b666b0:	c7 86 64 02 00 00 ad 0b 00 00                  	MOV dword ptr [ESI + 0x264],0xbad
  00b666ba:	8b c6                                          	MOV EAX,ESI
  00b666bc:	5e                                             	POP ESI
  00b666bd:	5b                                             	POP EBX
  00b666be:	c3                                             	RET
