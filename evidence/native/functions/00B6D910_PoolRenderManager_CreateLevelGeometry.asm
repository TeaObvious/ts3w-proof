# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b6d910 (PoolRenderManager_CreateLevelGeometry)
Paired actual Ghidra pseudocode: 00B6D910_PoolRenderManager_CreateLevelGeometry.c
Envelope [0x00b6d910,0x00b6da02); 242 bytes; exact owned ranges: [0x00b6d910,0x00b6da02)
Owned: 242 original bytes / 92 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b6d910 <original>:
  00b6d910:	83 ec 14                                       	SUB ESP,0x14
  00b6d913:	53                                             	PUSH EBX
  00b6d914:	55                                             	PUSH EBP
  00b6d915:	8b d9                                          	MOV EBX,ECX
  00b6d917:	8b 43 04                                       	MOV EAX,dword ptr [EBX + 0x4]
  00b6d91a:	8b 68 6c                                       	MOV EBP,dword ptr [EAX + 0x6c]
  00b6d91d:	57                                             	PUSH EDI
  00b6d91e:	8b 78 68                                       	MOV EDI,dword ptr [EAX + 0x68]
  00b6d921:	3b fd                                          	CMP EDI,EBP
  00b6d923:	89 6c 24 14                                    	MOV dword ptr [ESP + 0x14],EBP
  00b6d927:	89 7c 24 0c                                    	MOV dword ptr [ESP + 0xc],EDI
  00b6d92b:	0f 8f c3 00 00 00                              	JG 0x00b6d9f4
  00b6d931:	56                                             	PUSH ESI
  00b6d932:	6a 00                                          	PUSH 0x0
  00b6d934:	6a 00                                          	PUSH 0x0
  00b6d936:	6a 00                                          	PUSH 0x0
  00b6d938:	6a 00                                          	PUSH 0x0
  00b6d93a:	68 e0 fa 06 01                                 	PUSH 0x106fae0
  00b6d93f:	68 80 02 00 00                                 	PUSH 0x280
  00b6d944:	e8 b7 6b 97 ff                                 	CALL 0x004e4500
  00b6d949:	83 c4 18                                       	ADD ESP,0x18
  00b6d94c:	85 c0                                          	TEST EAX,EAX
  00b6d94e:	0f 84 a7 00 00 00                              	JZ 0x00b6d9fb
  00b6d954:	8b c8                                          	MOV ECX,EAX
  00b6d956:	e8 95 8c ff ff                                 	CALL 0x00b665f0
  00b6d95b:	8b f0                                          	MOV ESI,EAX
  00b6d95d:	85 f6                                          	TEST ESI,ESI
  00b6d95f:	74 08                                          	JZ 0x00b6d969
  00b6d961:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00b6d963:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00b6d965:	8b ce                                          	MOV ECX,ESI
  00b6d967:	ff d2                                          	CALL EDX
  00b6d969:	8b 43 04                                       	MOV EAX,dword ptr [EBX + 0x4]
  00b6d96c:	57                                             	PUSH EDI
  00b6d96d:	53                                             	PUSH EBX
  00b6d96e:	50                                             	PUSH EAX
  00b6d96f:	8b ce                                          	MOV ECX,ESI
  00b6d971:	e8 2a 9e ff ff                                 	CALL 0x00b677a0
  00b6d976:	8b ce                                          	MOV ECX,ESI
  00b6d978:	e8 23 8f ff ff                                 	CALL 0x00b668a0
  00b6d97d:	84 c0                                          	TEST AL,AL
  00b6d97f:	74 56                                          	JZ 0x00b6d9d7
  00b6d981:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00b6d985:	51                                             	PUSH ECX
  00b6d986:	8d 4b 20                                       	LEA ECX,[EBX + 0x20]
  00b6d989:	e8 22 5c c8 ff                                 	CALL 0x007f35b0
  00b6d98e:	8b e8                                          	MOV EBP,EAX
  00b6d990:	8b 7d 00                                       	MOV EDI,dword ptr [EBP]
  00b6d993:	3b f7                                          	CMP ESI,EDI
  00b6d995:	74 1c                                          	JZ 0x00b6d9b3
  00b6d997:	85 f6                                          	TEST ESI,ESI
  00b6d999:	74 08                                          	JZ 0x00b6d9a3
  00b6d99b:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00b6d99d:	8b 02                                          	MOV EAX,dword ptr [EDX]
  00b6d99f:	8b ce                                          	MOV ECX,ESI
  00b6d9a1:	ff d0                                          	CALL EAX
  00b6d9a3:	85 ff                                          	TEST EDI,EDI
  00b6d9a5:	89 75 00                                       	MOV dword ptr [EBP],ESI
  00b6d9a8:	74 09                                          	JZ 0x00b6d9b3
  00b6d9aa:	8b 17                                          	MOV EDX,dword ptr [EDI]
  00b6d9ac:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  00b6d9af:	8b cf                                          	MOV ECX,EDI
  00b6d9b1:	ff d0                                          	CALL EAX
  00b6d9b3:	c6 44 24 14 00                                 	MOV byte ptr [ESP + 0x14],0x0
  00b6d9b8:	8b 4c 24 14                                    	MOV ECX,dword ptr [ESP + 0x14]
  00b6d9bc:	51                                             	PUSH ECX
  00b6d9bd:	8d 54 24 14                                    	LEA EDX,[ESP + 0x14]
  00b6d9c1:	52                                             	PUSH EDX
  00b6d9c2:	8d 44 24 24                                    	LEA EAX,[ESP + 0x24]
  00b6d9c6:	50                                             	PUSH EAX
  00b6d9c7:	8d 4b 40                                       	LEA ECX,[EBX + 0x40]
  00b6d9ca:	e8 a1 b0 ab ff                                 	CALL 0x00628a70
  00b6d9cf:	8b 6c 24 18                                    	MOV EBP,dword ptr [ESP + 0x18]
  00b6d9d3:	8b 7c 24 10                                    	MOV EDI,dword ptr [ESP + 0x10]
  00b6d9d7:	85 f6                                          	TEST ESI,ESI
  00b6d9d9:	74 09                                          	JZ 0x00b6d9e4
  00b6d9db:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00b6d9dd:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  00b6d9e0:	8b ce                                          	MOV ECX,ESI
  00b6d9e2:	ff d0                                          	CALL EAX
  00b6d9e4:	83 c7 01                                       	ADD EDI,0x1
  00b6d9e7:	3b fd                                          	CMP EDI,EBP
  00b6d9e9:	89 7c 24 10                                    	MOV dword ptr [ESP + 0x10],EDI
  00b6d9ed:	0f 8e 3f ff ff ff                              	JLE 0x00b6d932
  00b6d9f3:	5e                                             	POP ESI
  00b6d9f4:	5f                                             	POP EDI
  00b6d9f5:	5d                                             	POP EBP
  00b6d9f6:	5b                                             	POP EBX
  00b6d9f7:	83 c4 14                                       	ADD ESP,0x14
  00b6d9fa:	c3                                             	RET
  00b6d9fb:	33 f6                                          	XOR ESI,ESI
  00b6d9fd:	e9 67 ff ff ff                                 	JMP 0x00b6d969
