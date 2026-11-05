# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00ab0080 (LotWater_IsQuarterUnderWater)
Paired actual Ghidra pseudocode: 00AB0080_LotWater_IsQuarterUnderWater.c
Envelope [0x00ab0080,0x00ab0160); 224 bytes. Exact owned ranges: [0x00ab0080,0x00ab0160)
Owned: 224 pristine PE bytes / 83 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00ab0080 <original>:
  00ab0080:	51                                             	PUSH ECX
  00ab0081:	56                                             	PUSH ESI
  00ab0082:	57                                             	PUSH EDI
  00ab0083:	8b f9                                          	MOV EDI,ECX
  00ab0085:	8b 8f 94 02 00 00                              	MOV ECX,dword ptr [EDI + 0x294]
  00ab008b:	85 c9                                          	TEST ECX,ECX
  00ab008d:	0f 84 c5 00 00 00                              	JZ 0x00ab0158
  00ab0093:	8b 74 24 10                                    	MOV ESI,dword ptr [ESP + 0x10]
  00ab0097:	80 7e 02 00                                    	CMP byte ptr [ESI + 0x2],0x0
  00ab009b:	0f 85 b7 00 00 00                              	JNZ 0x00ab0158
  00ab00a1:	0f be 46 01                                    	MOVSX EAX,byte ptr [ESI + 0x1]
  00ab00a5:	0f be 16                                       	MOVSX EDX,byte ptr [ESI]
  00ab00a8:	53                                             	PUSH EBX
  00ab00a9:	50                                             	PUSH EAX
  00ab00aa:	52                                             	PUSH EDX
  00ab00ab:	e8 20 a5 03 00                                 	CALL 0x00aea5d0
  00ab00b0:	0f be 0e                                       	MOVSX ECX,byte ptr [ESI]
  00ab00b3:	8a d8                                          	MOV BL,AL
  00ab00b5:	0f be 46 01                                    	MOVSX EAX,byte ptr [ESI + 0x1]
  00ab00b9:	83 c1 01                                       	ADD ECX,0x1
  00ab00bc:	50                                             	PUSH EAX
  00ab00bd:	51                                             	PUSH ECX
  00ab00be:	8b 8f 94 02 00 00                              	MOV ECX,dword ptr [EDI + 0x294]
  00ab00c4:	e8 07 a5 03 00                                 	CALL 0x00aea5d0
  00ab00c9:	0f be 56 01                                    	MOVSX EDX,byte ptr [ESI + 0x1]
  00ab00cd:	8b 8f 94 02 00 00                              	MOV ECX,dword ptr [EDI + 0x294]
  00ab00d3:	88 44 24 14                                    	MOV byte ptr [ESP + 0x14],AL
  00ab00d7:	0f be 06                                       	MOVSX EAX,byte ptr [ESI]
  00ab00da:	83 c2 01                                       	ADD EDX,0x1
  00ab00dd:	52                                             	PUSH EDX
  00ab00de:	50                                             	PUSH EAX
  00ab00df:	e8 ec a4 03 00                                 	CALL 0x00aea5d0
  00ab00e4:	0f be 4e 01                                    	MOVSX ECX,byte ptr [ESI + 0x1]
  00ab00e8:	0f be 16                                       	MOVSX EDX,byte ptr [ESI]
  00ab00eb:	83 c1 01                                       	ADD ECX,0x1
  00ab00ee:	51                                             	PUSH ECX
  00ab00ef:	8b 8f 94 02 00 00                              	MOV ECX,dword ptr [EDI + 0x294]
  00ab00f5:	83 c2 01                                       	ADD EDX,0x1
  00ab00f8:	52                                             	PUSH EDX
  00ab00f9:	88 44 24 17                                    	MOV byte ptr [ESP + 0x17],AL
  00ab00fd:	e8 ce a4 03 00                                 	CALL 0x00aea5d0
  00ab0102:	8a 4c 24 18                                    	MOV CL,byte ptr [ESP + 0x18]
  00ab0106:	f6 c1 08                                       	TEST CL,0x8
  00ab0109:	74 0b                                          	JZ 0x00ab0116
  00ab010b:	84 db                                          	TEST BL,BL
  00ab010d:	74 07                                          	JZ 0x00ab0116
  00ab010f:	80 7c 24 0f 00                                 	CMP byte ptr [ESP + 0xf],0x0
  00ab0114:	75 39                                          	JNZ 0x00ab014f
  00ab0116:	f6 c1 02                                       	TEST CL,0x2
  00ab0119:	74 0b                                          	JZ 0x00ab0126
  00ab011b:	80 7c 24 14 00                                 	CMP byte ptr [ESP + 0x14],0x0
  00ab0120:	74 04                                          	JZ 0x00ab0126
  00ab0122:	84 c0                                          	TEST AL,AL
  00ab0124:	75 29                                          	JNZ 0x00ab014f
  00ab0126:	f6 c1 01                                       	TEST CL,0x1
  00ab0129:	74 0b                                          	JZ 0x00ab0136
  00ab012b:	84 db                                          	TEST BL,BL
  00ab012d:	74 07                                          	JZ 0x00ab0136
  00ab012f:	80 7c 24 14 00                                 	CMP byte ptr [ESP + 0x14],0x0
  00ab0134:	75 19                                          	JNZ 0x00ab014f
  00ab0136:	f6 c1 04                                       	TEST CL,0x4
  00ab0139:	74 0b                                          	JZ 0x00ab0146
  00ab013b:	80 7c 24 0f 00                                 	CMP byte ptr [ESP + 0xf],0x0
  00ab0140:	74 04                                          	JZ 0x00ab0146
  00ab0142:	84 c0                                          	TEST AL,AL
  00ab0144:	75 09                                          	JNZ 0x00ab014f
  00ab0146:	5b                                             	POP EBX
  00ab0147:	5f                                             	POP EDI
  00ab0148:	32 c0                                          	XOR AL,AL
  00ab014a:	5e                                             	POP ESI
  00ab014b:	59                                             	POP ECX
  00ab014c:	c2 08 00                                       	RET 0x8
  00ab014f:	5b                                             	POP EBX
  00ab0150:	5f                                             	POP EDI
  00ab0151:	b0 01                                          	MOV AL,0x1
  00ab0153:	5e                                             	POP ESI
  00ab0154:	59                                             	POP ECX
  00ab0155:	c2 08 00                                       	RET 0x8
  00ab0158:	5f                                             	POP EDI
  00ab0159:	32 c0                                          	XOR AL,AL
  00ab015b:	5e                                             	POP ESI
  00ab015c:	59                                             	POP ECX
  00ab015d:	c2 08 00                                       	RET 0x8
