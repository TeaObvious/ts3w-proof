# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00afdd10 (Lot_TestSelectedFloorAtPosition)
Paired actual Ghidra pseudocode: 00AFDD10_Lot_TestSelectedFloorAtPosition.c
Body [0x00afdd10,0x00afde01); 241 pristine original bytes / 79 actual saved Listing instructions.
Original instruction bytes and actual saved Listing text; inferred prototypes are retained.
Physical registers, AL results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00afdd10 <original>:
  00afdd10:	83 ec 08                                       	SUB ESP,0x8
  00afdd13:	0c ff                                          	OR AL,0xff
  00afdd15:	56                                             	PUSH ESI
  00afdd16:	57                                             	PUSH EDI
  00afdd17:	8b 7c 24 18                                    	MOV EDI,dword ptr [ESP + 0x18]
  00afdd1b:	88 44 24 08                                    	MOV byte ptr [ESP + 0x8],AL
  00afdd1f:	88 44 24 09                                    	MOV byte ptr [ESP + 0x9],AL
  00afdd23:	88 44 24 0b                                    	MOV byte ptr [ESP + 0xb],AL
  00afdd27:	8d 44 24 08                                    	LEA EAX,[ESP + 0x8]
  00afdd2b:	50                                             	PUSH EAX
  00afdd2c:	57                                             	PUSH EDI
  00afdd2d:	c6 44 24 12 00                                 	MOV byte ptr [ESP + 0x12],0x0
  00afdd32:	e8 79 a0 ff ff                                 	CALL 0x00af7db0
  00afdd37:	0f be 44 24 10                                 	MOVSX EAX,byte ptr [ESP + 0x10]
  00afdd3c:	0f be 4c 24 11                                 	MOVSX ECX,byte ptr [ESP + 0x11]
  00afdd41:	83 c4 08                                       	ADD ESP,0x8
  00afdd44:	85 c0                                          	TEST EAX,EAX
  00afdd46:	0f 8c ad 00 00 00                              	JL 0x00afddf9
  00afdd4c:	8b 74 24 14                                    	MOV ESI,dword ptr [ESP + 0x14]
  00afdd50:	3b 86 74 01 00 00                              	CMP EAX,dword ptr [ESI + 0x174]
  00afdd56:	0f 8d 9d 00 00 00                              	JGE 0x00afddf9
  00afdd5c:	85 c9                                          	TEST ECX,ECX
  00afdd5e:	0f 8c 95 00 00 00                              	JL 0x00afddf9
  00afdd64:	3b 8e 78 01 00 00                              	CMP ECX,dword ptr [ESI + 0x178]
  00afdd6a:	0f 8d 89 00 00 00                              	JGE 0x00afddf9
  00afdd70:	0f be 44 24 0a                                 	MOVSX EAX,byte ptr [ESP + 0xa]
  00afdd75:	3b 86 7c 01 00 00                              	CMP EAX,dword ptr [ESI + 0x17c]
  00afdd7b:	7c 7c                                          	JL 0x00afddf9
  00afdd7d:	3b 86 80 01 00 00                              	CMP EAX,dword ptr [ESI + 0x180]
  00afdd83:	7f 74                                          	JG 0x00afddf9
  00afdd85:	8b 4c 24 0b                                    	MOV ECX,dword ptr [ESP + 0xb]
  00afdd89:	6a 01                                          	PUSH 0x1
  00afdd8b:	51                                             	PUSH ECX
  00afdd8c:	8b 8e 90 02 00 00                              	MOV ECX,dword ptr [ESI + 0x290]
  00afdd92:	8d 54 24 10                                    	LEA EDX,[ESP + 0x10]
  00afdd96:	52                                             	PUSH EDX
  00afdd97:	e8 d4 03 f9 ff                                 	CALL 0x00a8e170
  00afdd9c:	84 c0                                          	TEST AL,AL
  00afdd9e:	75 1d                                          	JNZ 0x00afddbd
  00afdda0:	38 44 24 1c                                    	CMP byte ptr [ESP + 0x1c],AL
  00afdda4:	74 53                                          	JZ 0x00afddf9
  00afdda6:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00afddaa:	50                                             	PUSH EAX
  00afddab:	8d 4c 24 0c                                    	LEA ECX,[ESP + 0xc]
  00afddaf:	51                                             	PUSH ECX
  00afddb0:	56                                             	PUSH ESI
  00afddb1:	e8 7a 12 fd ff                                 	CALL 0x00acf030
  00afddb6:	83 c4 0c                                       	ADD ESP,0xc
  00afddb9:	84 c0                                          	TEST AL,AL
  00afddbb:	74 3c                                          	JZ 0x00afddf9
  00afddbd:	80 7c 24 20 00                                 	CMP byte ptr [ESP + 0x20],0x0
  00afddc2:	75 2a                                          	JNZ 0x00afddee
  00afddc4:	8b 8e 90 02 00 00                              	MOV ECX,dword ptr [ESI + 0x290]
  00afddca:	8d 54 24 08                                    	LEA EDX,[ESP + 0x8]
  00afddce:	52                                             	PUSH EDX
  00afddcf:	e8 3c ed f8 ff                                 	CALL 0x00a8cb10
  00afddd4:	84 c0                                          	TEST AL,AL
  00afddd6:	74 0e                                          	JZ 0x00afdde6
  00afddd8:	57                                             	PUSH EDI
  00afddd9:	56                                             	PUSH ESI
  00afddda:	e8 e1 1d fd ff                                 	CALL 0x00acfbc0
  00afdddf:	83 c4 08                                       	ADD ESP,0x8
  00afdde2:	84 c0                                          	TEST AL,AL
  00afdde4:	74 08                                          	JZ 0x00afddee
  00afdde6:	5f                                             	POP EDI
  00afdde7:	33 c0                                          	XOR EAX,EAX
  00afdde9:	5e                                             	POP ESI
  00afddea:	83 c4 08                                       	ADD ESP,0x8
  00afdded:	c3                                             	RET
  00afddee:	5f                                             	POP EDI
  00afddef:	b8 01 00 00 00                                 	MOV EAX,0x1
  00afddf4:	5e                                             	POP ESI
  00afddf5:	83 c4 08                                       	ADD ESP,0x8
  00afddf8:	c3                                             	RET
  00afddf9:	5f                                             	POP EDI
  00afddfa:	32 c0                                          	XOR AL,AL
  00afddfc:	5e                                             	POP ESI
  00afddfd:	83 c4 08                                       	ADD ESP,0x8
  00afde00:	c3                                             	RET
