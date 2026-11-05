# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b668a0 (PoolGeometry_RebuildPresenceFromRooms)
Paired actual Ghidra pseudocode: 00B668A0_PoolGeometry_RebuildPresenceFromRooms.c
Envelope [0x00b668a0,0x00b669e8); 328 bytes; exact owned ranges: [0x00b668a0,0x00b669e8)
Owned: 328 original bytes / 105 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b668a0 <original>:
  00b668a0:	83 ec 28                                       	SUB ESP,0x28
  00b668a3:	53                                             	PUSH EBX
  00b668a4:	55                                             	PUSH EBP
  00b668a5:	56                                             	PUSH ESI
  00b668a6:	8b f1                                          	MOV ESI,ECX
  00b668a8:	8b 86 10 02 00 00                              	MOV EAX,dword ptr [ESI + 0x210]
  00b668ae:	8b 40 18                                       	MOV EAX,dword ptr [EAX + 0x18]
  00b668b1:	8b a8 98 02 00 00                              	MOV EBP,dword ptr [EAX + 0x298]
  00b668b7:	8b 96 64 02 00 00                              	MOV EDX,dword ptr [ESI + 0x264]
  00b668bd:	89 44 24 18                                    	MOV dword ptr [ESP + 0x18],EAX
  00b668c1:	33 c0                                          	XOR EAX,EAX
  00b668c3:	50                                             	PUSH EAX
  00b668c4:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  00b668c8:	51                                             	PUSH ECX
  00b668c9:	6a 02                                          	PUSH 0x2
  00b668cb:	83 ea 01                                       	SUB EDX,0x1
  00b668ce:	52                                             	PUSH EDX
  00b668cf:	8b cd                                          	MOV ECX,EBP
  00b668d1:	89 44 24 30                                    	MOV dword ptr [ESP + 0x30],EAX
  00b668d5:	89 44 24 34                                    	MOV dword ptr [ESP + 0x34],EAX
  00b668d9:	89 44 24 38                                    	MOV dword ptr [ESP + 0x38],EAX
  00b668dd:	c7 44 24 3c a8 f5 06 01                        	MOV dword ptr [ESP + 0x3c],0x106f5a8
  00b668e5:	e8 36 08 fe ff                                 	CALL 0x00b47120
  00b668ea:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  00b668ee:	8b 4c 24 24                                    	MOV ECX,dword ptr [ESP + 0x24]
  00b668f2:	3b c1                                          	CMP EAX,ECX
  00b668f4:	8b d8                                          	MOV EBX,EAX
  00b668f6:	89 4c 24 1c                                    	MOV dword ptr [ESP + 0x1c],ECX
  00b668fa:	c6 44 24 0f 00                                 	MOV byte ptr [ESP + 0xf],0x0
  00b668ff:	0f 84 cb 00 00 00                              	JZ 0x00b669d0
  00b66905:	57                                             	PUSH EDI
  00b66906:	0f b7 3b                                       	MOVZX EDI,word ptr [EBX]
  00b66909:	8d 44 24 18                                    	LEA EAX,[ESP + 0x18]
  00b6690d:	50                                             	PUSH EAX
  00b6690e:	6a 02                                          	PUSH 0x2
  00b66910:	57                                             	PUSH EDI
  00b66911:	8b cd                                          	MOV ECX,EBP
  00b66913:	c6 44 24 24 ff                                 	MOV byte ptr [ESP + 0x24],0xff
  00b66918:	c6 44 24 25 ff                                 	MOV byte ptr [ESP + 0x25],0xff
  00b6691d:	c6 44 24 26 00                                 	MOV byte ptr [ESP + 0x26],0x0
  00b66922:	c6 44 24 27 ff                                 	MOV byte ptr [ESP + 0x27],0xff
  00b66927:	e8 54 19 fe ff                                 	CALL 0x00b48280
  00b6692c:	8b 54 24 1c                                    	MOV EDX,dword ptr [ESP + 0x1c]
  00b66930:	6a 00                                          	PUSH 0x0
  00b66932:	6a 01                                          	PUSH 0x1
  00b66934:	8d 4c 24 20                                    	LEA ECX,[ESP + 0x20]
  00b66938:	51                                             	PUSH ECX
  00b66939:	52                                             	PUSH EDX
  00b6693a:	e8 e1 8e f6 ff                                 	CALL 0x00acf820
  00b6693f:	83 c4 10                                       	ADD ESP,0x10
  00b66942:	84 c0                                          	TEST AL,AL
  00b66944:	74 78                                          	JZ 0x00b669be
  00b66946:	6a 02                                          	PUSH 0x2
  00b66948:	57                                             	PUSH EDI
  00b66949:	8b cd                                          	MOV ECX,EBP
  00b6694b:	e8 70 07 fe ff                                 	CALL 0x00b470c0
  00b66950:	8b f8                                          	MOV EDI,EAX
  00b66952:	85 ff                                          	TEST EDI,EDI
  00b66954:	74 68                                          	JZ 0x00b669be
  00b66956:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  00b6695a:	50                                             	PUSH EAX
  00b6695b:	8b cf                                          	MOV ECX,EDI
  00b6695d:	c6 44 24 18 ff                                 	MOV byte ptr [ESP + 0x18],0xff
  00b66962:	c6 44 24 19 ff                                 	MOV byte ptr [ESP + 0x19],0xff
  00b66967:	c6 44 24 1a 00                                 	MOV byte ptr [ESP + 0x1a],0x0
  00b6696c:	c6 44 24 1b ff                                 	MOV byte ptr [ESP + 0x1b],0xff
  00b66971:	e8 ca b8 0c 00                                 	CALL 0x00c32240
  00b66976:	84 c0                                          	TEST AL,AL
  00b66978:	74 3f                                          	JZ 0x00b669b9
  00b6697a:	8d 9b 00 00 00 00                              	LEA EBX,[EBX]
  00b66980:	0f be 4c 24 14                                 	MOVSX ECX,byte ptr [ESP + 0x14]
  00b66985:	0f af 8e 20 02 00 00                           	IMUL ECX,dword ptr [ESI + 0x220]
  00b6698c:	0f be 54 24 15                                 	MOVSX EDX,byte ptr [ESP + 0x15]
  00b66991:	03 ca                                          	ADD ECX,EDX
  00b66993:	8b 96 24 02 00 00                              	MOV EDX,dword ptr [ESI + 0x224]
  00b66999:	8b c1                                          	MOV EAX,ECX
  00b6699b:	c1 f8 03                                       	SAR EAX,0x3
  00b6699e:	03 c2                                          	ADD EAX,EDX
  00b669a0:	83 e1 07                                       	AND ECX,0x7
  00b669a3:	b2 01                                          	MOV DL,0x1
  00b669a5:	d2 e2                                          	SHL DL,CL
  00b669a7:	8b cf                                          	MOV ECX,EDI
  00b669a9:	08 10                                          	OR byte ptr [EAX],DL
  00b669ab:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  00b669af:	50                                             	PUSH EAX
  00b669b0:	e8 2b a9 0c 00                                 	CALL 0x00c312e0
  00b669b5:	84 c0                                          	TEST AL,AL
  00b669b7:	75 c7                                          	JNZ 0x00b66980
  00b669b9:	c6 44 24 13 01                                 	MOV byte ptr [ESP + 0x13],0x1
  00b669be:	83 c3 02                                       	ADD EBX,0x2
  00b669c1:	3b 5c 24 20                                    	CMP EBX,dword ptr [ESP + 0x20]
  00b669c5:	0f 85 3b ff ff ff                              	JNZ 0x00b66906
  00b669cb:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00b669cf:	5f                                             	POP EDI
  00b669d0:	85 c0                                          	TEST EAX,EAX
  00b669d2:	5e                                             	POP ESI
  00b669d3:	5d                                             	POP EBP
  00b669d4:	5b                                             	POP EBX
  00b669d5:	74 09                                          	JZ 0x00b669e0
  00b669d7:	50                                             	PUSH EAX
  00b669d8:	e8 03 db 97 ff                                 	CALL 0x004e44e0
  00b669dd:	83 c4 04                                       	ADD ESP,0x4
  00b669e0:	8a 44 24 03                                    	MOV AL,byte ptr [ESP + 0x3]
  00b669e4:	83 c4 28                                       	ADD ESP,0x28
  00b669e7:	c3                                             	RET
