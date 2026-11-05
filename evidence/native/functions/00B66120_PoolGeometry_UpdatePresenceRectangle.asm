# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b66120 (PoolGeometry_UpdatePresenceRectangle)
Paired actual Ghidra pseudocode: 00B66120_PoolGeometry_UpdatePresenceRectangle.c
Envelope [0x00b66120,0x00b66219); 249 bytes; exact owned ranges: [0x00b66120,0x00b66219)
Owned: 249 original bytes / 86 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b66120 <original>:
  00b66120:	83 ec 10                                       	SUB ESP,0x10
  00b66123:	53                                             	PUSH EBX
  00b66124:	55                                             	PUSH EBP
  00b66125:	8b 6c 24 20                                    	MOV EBP,dword ptr [ESP + 0x20]
  00b66129:	8a 5d 00                                       	MOV BL,byte ptr [EBP]
  00b6612c:	56                                             	PUSH ESI
  00b6612d:	8b f1                                          	MOV ESI,ECX
  00b6612f:	8b 4c 24 20                                    	MOV ECX,dword ptr [ESP + 0x20]
  00b66133:	3a 19                                          	CMP BL,byte ptr [ECX]
  00b66135:	8b c5                                          	MOV EAX,EBP
  00b66137:	7c 02                                          	JL 0x00b6613b
  00b66139:	8b c1                                          	MOV EAX,ECX
  00b6613b:	0f be 00                                       	MOVSX EAX,byte ptr [EAX]
  00b6613e:	8a 55 01                                       	MOV DL,byte ptr [EBP + 0x1]
  00b66141:	3a 51 01                                       	CMP DL,byte ptr [ECX + 0x1]
  00b66144:	89 44 24 24                                    	MOV dword ptr [ESP + 0x24],EAX
  00b66148:	8d 45 01                                       	LEA EAX,[EBP + 0x1]
  00b6614b:	57                                             	PUSH EDI
  00b6614c:	8d 79 01                                       	LEA EDI,[ECX + 0x1]
  00b6614f:	8b d0                                          	MOV EDX,EAX
  00b66151:	7c 02                                          	JL 0x00b66155
  00b66153:	8b d7                                          	MOV EDX,EDI
  00b66155:	38 19                                          	CMP byte ptr [ECX],BL
  00b66157:	0f be 12                                       	MOVSX EDX,byte ptr [EDX]
  00b6615a:	89 54 24 10                                    	MOV dword ptr [ESP + 0x10],EDX
  00b6615e:	7d 02                                          	JGE 0x00b66162
  00b66160:	8b cd                                          	MOV ECX,EBP
  00b66162:	0f be 09                                       	MOVSX ECX,byte ptr [ECX]
  00b66165:	8a 17                                          	MOV DL,byte ptr [EDI]
  00b66167:	83 e9 01                                       	SUB ECX,0x1
  00b6616a:	3a 10                                          	CMP DL,byte ptr [EAX]
  00b6616c:	7d 02                                          	JGE 0x00b66170
  00b6616e:	8b f8                                          	MOV EDI,EAX
  00b66170:	0f b6 44 24 28                                 	MOVZX EAX,byte ptr [ESP + 0x28]
  00b66175:	8a 54 24 10                                    	MOV DL,byte ptr [ESP + 0x10]
  00b66179:	88 4c 24 28                                    	MOV byte ptr [ESP + 0x28],CL
  00b6617d:	8a 0f                                          	MOV CL,byte ptr [EDI]
  00b6617f:	88 44 24 24                                    	MOV byte ptr [ESP + 0x24],AL
  00b66183:	8a 86 64 02 00 00                              	MOV AL,byte ptr [ESI + 0x264]
  00b66189:	88 54 24 25                                    	MOV byte ptr [ESP + 0x25],DL
  00b6618d:	80 e9 01                                       	SUB CL,0x1
  00b66190:	8d 54 24 28                                    	LEA EDX,[ESP + 0x28]
  00b66194:	88 44 24 26                                    	MOV byte ptr [ESP + 0x26],AL
  00b66198:	88 44 24 2a                                    	MOV byte ptr [ESP + 0x2a],AL
  00b6619c:	52                                             	PUSH EDX
  00b6619d:	8d 44 24 28                                    	LEA EAX,[ESP + 0x28]
  00b661a1:	88 4c 24 2d                                    	MOV byte ptr [ESP + 0x2d],CL
  00b661a5:	50                                             	PUSH EAX
  00b661a6:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  00b661aa:	e8 a1 02 f9 ff                                 	CALL 0x00af6450
  00b661af:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00b661b3:	e8 d8 02 f9 ff                                 	CALL 0x00af6490
  00b661b8:	84 c0                                          	TEST AL,AL
  00b661ba:	5f                                             	POP EDI
  00b661bb:	75 53                                          	JNZ 0x00b66210
  00b661bd:	8a 5c 24 28                                    	MOV BL,byte ptr [ESP + 0x28]
  00b661c1:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00b661c5:	e8 16 03 f9 ff                                 	CALL 0x00af64e0
  00b661ca:	0f be 08                                       	MOVSX ECX,byte ptr [EAX]
  00b661cd:	0f af 8e 20 02 00 00                           	IMUL ECX,dword ptr [ESI + 0x220]
  00b661d4:	0f be 50 01                                    	MOVSX EDX,byte ptr [EAX + 0x1]
  00b661d8:	03 ca                                          	ADD ECX,EDX
  00b661da:	8b d1                                          	MOV EDX,ECX
  00b661dc:	83 e1 07                                       	AND ECX,0x7
  00b661df:	b0 01                                          	MOV AL,0x1
  00b661e1:	d2 e0                                          	SHL AL,CL
  00b661e3:	8b 8e 24 02 00 00                              	MOV ECX,dword ptr [ESI + 0x224]
  00b661e9:	c1 fa 03                                       	SAR EDX,0x3
  00b661ec:	03 ca                                          	ADD ECX,EDX
  00b661ee:	84 db                                          	TEST BL,BL
  00b661f0:	74 04                                          	JZ 0x00b661f6
  00b661f2:	08 01                                          	OR byte ptr [ECX],AL
  00b661f4:	eb 04                                          	JMP 0x00b661fa
  00b661f6:	f6 d0                                          	NOT AL
  00b661f8:	20 01                                          	AND byte ptr [ECX],AL
  00b661fa:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00b661fe:	e8 0d 04 f9 ff                                 	CALL 0x00af6610
  00b66203:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00b66207:	e8 84 02 f9 ff                                 	CALL 0x00af6490
  00b6620c:	84 c0                                          	TEST AL,AL
  00b6620e:	74 b1                                          	JZ 0x00b661c1
  00b66210:	5e                                             	POP ESI
  00b66211:	5d                                             	POP EBP
  00b66212:	5b                                             	POP EBX
  00b66213:	83 c4 10                                       	ADD ESP,0x10
  00b66216:	c2 0c 00                                       	RET 0xc
