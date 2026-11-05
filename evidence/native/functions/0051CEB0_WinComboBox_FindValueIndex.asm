# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x0051ceb0 (WinComboBox_FindValueIndex)
Paired actual Ghidra pseudocode: 0051CEB0_WinComboBox_FindValueIndex.c
Envelope [0x0051ceb0,0x0051cf9f); 239 pristine bytes.
Owned: 230 original bytes / 85 actual saved Listing instructions.
Saved body: [[0051ceb0, 0051cee6] [0051cef0, 0051cf9e]]; inclusive ranges above, exclusive envelope end.
Any nonowned alignment bytes are explicit .byte records, not Listing instructions.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0051ceb0 <original>:
  0051ceb0:	83 ec 10                                       	SUB ESP,0x10
  0051ceb3:	53                                             	PUSH EBX
  0051ceb4:	55                                             	PUSH EBP
  0051ceb5:	8b 6c 24 1c                                    	MOV EBP,dword ptr [ESP + 0x1c]
  0051ceb9:	85 ed                                          	TEST EBP,EBP
  0051cebb:	56                                             	PUSH ESI
  0051cebc:	57                                             	PUSH EDI
  0051cebd:	0f 84 c1 00 00 00                              	JZ 0x0051cf84
  0051cec3:	8b 41 48                                       	MOV EAX,dword ptr [ECX + 0x48]
  0051cec6:	2b 41 44                                       	SUB EAX,dword ptr [ECX + 0x44]
  0051cec9:	c7 44 24 10 00 00 00 00                        	MOV dword ptr [ESP + 0x10],0x0
  0051ced1:	c1 f8 04                                       	SAR EAX,0x4
  0051ced4:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  0051ced8:	0f 84 a6 00 00 00                              	JZ 0x0051cf84
  0051cede:	8b 71 44                                       	MOV ESI,dword ptr [ECX + 0x44]
  0051cee1:	89 74 24 24                                    	MOV dword ptr [ESP + 0x24],ESI
  0051cee5:	eb 0d                                          	JMP 0x0051cef4
  0051cee7:	eb                                             	.byte 0xeb ; nonowned alignment, no Listing instruction
  0051cee8:	07                                             	.byte 0x07 ; nonowned alignment, no Listing instruction
  0051cee9:	8d                                             	.byte 0x8d ; nonowned alignment, no Listing instruction
  0051ceea:	a4                                             	.byte 0xa4 ; nonowned alignment, no Listing instruction
  0051ceeb:	24                                             	.byte 0x24 ; nonowned alignment, no Listing instruction
  0051ceec:	00                                             	.byte 0x00 ; nonowned alignment, no Listing instruction
  0051ceed:	00                                             	.byte 0x00 ; nonowned alignment, no Listing instruction
  0051ceee:	00                                             	.byte 0x00 ; nonowned alignment, no Listing instruction
  0051ceef:	00                                             	.byte 0x00 ; nonowned alignment, no Listing instruction
  0051cef0:	8b 74 24 24                                    	MOV ESI,dword ptr [ESP + 0x24]
  0051cef4:	0f b7 45 00                                    	MOVZX EAX,word ptr [EBP]
  0051cef8:	66 85 c0                                       	TEST AX,AX
  0051cefb:	8b cd                                          	MOV ECX,EBP
  0051cefd:	74 0a                                          	JZ 0x0051cf09
  0051ceff:	90                                             	NOP
  0051cf00:	83 c1 02                                       	ADD ECX,0x2
  0051cf03:	66 83 39 00                                    	CMP word ptr [ECX],0x0
  0051cf07:	75 f7                                          	JNZ 0x0051cf00
  0051cf09:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051cf0b:	8b 5e 04                                       	MOV EBX,dword ptr [ESI + 0x4]
  0051cf0e:	2b cd                                          	SUB ECX,EBP
  0051cf10:	d1 f9                                          	SAR ECX,0x1
  0051cf12:	2b da                                          	SUB EBX,EDX
  0051cf14:	03 c9                                          	ADD ECX,ECX
  0051cf16:	d1 fb                                          	SAR EBX,0x1
  0051cf18:	d1 f9                                          	SAR ECX,0x1
  0051cf1a:	3b cb                                          	CMP ECX,EBX
  0051cf1c:	89 5c 24 18                                    	MOV dword ptr [ESP + 0x18],EBX
  0051cf20:	89 4c 24 14                                    	MOV dword ptr [ESP + 0x14],ECX
  0051cf24:	8d 74 24 14                                    	LEA ESI,[ESP + 0x14]
  0051cf28:	7c 04                                          	JL 0x0051cf2e
  0051cf2a:	8d 74 24 18                                    	LEA ESI,[ESP + 0x18]
  0051cf2e:	8b 3e                                          	MOV EDI,dword ptr [ESI]
  0051cf30:	85 ff                                          	TEST EDI,EDI
  0051cf32:	8b f5                                          	MOV ESI,EBP
  0051cf34:	76 25                                          	JBE 0x0051cf5b
  0051cf36:	66 8b 02                                       	MOV AX,word ptr [EDX]
  0051cf39:	66 3b 06                                       	CMP AX,word ptr [ESI]
  0051cf3c:	75 0d                                          	JNZ 0x0051cf4b
  0051cf3e:	83 c2 02                                       	ADD EDX,0x2
  0051cf41:	83 c6 02                                       	ADD ESI,0x2
  0051cf44:	83 ef 01                                       	SUB EDI,0x1
  0051cf47:	75 ed                                          	JNZ 0x0051cf36
  0051cf49:	eb 10                                          	JMP 0x0051cf5b
  0051cf4b:	0f b7 12                                       	MOVZX EDX,word ptr [EDX]
  0051cf4e:	66 3b 16                                       	CMP DX,word ptr [ESI]
  0051cf51:	1b d2                                          	SBB EDX,EDX
  0051cf53:	83 e2 fe                                       	AND EDX,0xfffffffe
  0051cf56:	83 c2 01                                       	ADD EDX,0x1
  0051cf59:	75 0b                                          	JNZ 0x0051cf66
  0051cf5b:	3b d9                                          	CMP EBX,ECX
  0051cf5d:	7c 0b                                          	JL 0x0051cf6a
  0051cf5f:	33 d2                                          	XOR EDX,EDX
  0051cf61:	3b d9                                          	CMP EBX,ECX
  0051cf63:	0f 9f c2                                       	SETG DL
  0051cf66:	85 d2                                          	TEST EDX,EDX
  0051cf68:	74 27                                          	JZ 0x0051cf91
  0051cf6a:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  0051cf6e:	83 44 24 24 10                                 	ADD dword ptr [ESP + 0x24],0x10
  0051cf73:	83 c0 01                                       	ADD EAX,0x1
  0051cf76:	3b 44 24 1c                                    	CMP EAX,dword ptr [ESP + 0x1c]
  0051cf7a:	89 44 24 10                                    	MOV dword ptr [ESP + 0x10],EAX
  0051cf7e:	0f 82 6c ff ff ff                              	JC 0x0051cef0
  0051cf84:	5f                                             	POP EDI
  0051cf85:	5e                                             	POP ESI
  0051cf86:	5d                                             	POP EBP
  0051cf87:	83 c8 ff                                       	OR EAX,0xffffffff
  0051cf8a:	5b                                             	POP EBX
  0051cf8b:	83 c4 10                                       	ADD ESP,0x10
  0051cf8e:	c2 04 00                                       	RET 0x4
  0051cf91:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  0051cf95:	5f                                             	POP EDI
  0051cf96:	5e                                             	POP ESI
  0051cf97:	5d                                             	POP EBP
  0051cf98:	5b                                             	POP EBX
  0051cf99:	83 c4 10                                       	ADD ESP,0x10
  0051cf9c:	c2 04 00                                       	RET 0x4
