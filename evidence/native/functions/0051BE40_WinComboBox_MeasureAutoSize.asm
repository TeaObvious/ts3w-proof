# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x0051be40 (WinComboBox_MeasureAutoSize)
Paired actual Ghidra pseudocode: 0051BE40_WinComboBox_MeasureAutoSize.c
Envelope [0x0051be40,0x0051c00c); 460 pristine bytes.
Owned: 460 original bytes / 111 actual saved Listing instructions.
Saved body: [[0051be40, 0051c00b]]; inclusive ranges above, exclusive envelope end.
Any nonowned alignment bytes are explicit .byte records, not Listing instructions.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0051be40 <original>:
  0051be40:	81 ec ac 03 00 00                              	SUB ESP,0x3ac
  0051be46:	f3 0f 10 0d 38 c9 fb 00                        	MOVSS XMM1,dword ptr [0x00fbc938]
  0051be4e:	f3 0f 10 05 f4 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f4]
  0051be56:	57                                             	PUSH EDI
  0051be57:	8b f9                                          	MOV EDI,ECX
  0051be59:	8b 87 94 02 00 00                              	MOV EAX,dword ptr [EDI + 0x294]
  0051be5f:	3b 87 98 02 00 00                              	CMP EAX,dword ptr [EDI + 0x298]
  0051be65:	f3 0f 11 4c 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM1
  0051be6b:	f3 0f 11 44 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM0
  0051be71:	0f 84 fc 00 00 00                              	JZ 0x0051bf73
  0051be77:	6a 01                                          	PUSH 0x1
  0051be79:	e8 d2 1b f3 ff                                 	CALL 0x0044da50
  0051be7e:	83 c4 04                                       	ADD ESP,0x4
  0051be81:	85 c0                                          	TEST EAX,EAX
  0051be83:	0f 84 3a 01 00 00                              	JZ 0x0051bfc3
  0051be89:	8b 8f 8c 00 00 00                              	MOV ECX,dword ptr [EDI + 0x8c]
  0051be8f:	55                                             	PUSH EBP
  0051be90:	6a 00                                          	PUSH 0x0
  0051be92:	51                                             	PUSH ECX
  0051be93:	8b c8                                          	MOV ECX,EAX
  0051be95:	e8 16 36 f4 ff                                 	CALL 0x0045f4b0
  0051be9a:	83 bf 8c 00 00 00 00                           	CMP dword ptr [EDI + 0x8c],0x0
  0051bea1:	8b e8                                          	MOV EBP,EAX
  0051bea3:	0f 84 bd 00 00 00                              	JZ 0x0051bf66
  0051bea9:	8d 4c 24 38                                    	LEA ECX,[ESP + 0x38]
  0051bead:	e8 3e f3 f3 ff                                 	CALL 0x0045b1f0
  0051beb2:	8b 87 98 02 00 00                              	MOV EAX,dword ptr [EDI + 0x298]
  0051beb8:	2b 87 94 02 00 00                              	SUB EAX,dword ptr [EDI + 0x294]
  0051bebe:	c1 f8 04                                       	SAR EAX,0x4
  0051bec1:	0f 84 96 00 00 00                              	JZ 0x0051bf5d
  0051bec7:	53                                             	PUSH EBX
  0051bec8:	56                                             	PUSH ESI
  0051bec9:	33 f6                                          	XOR ESI,ESI
  0051becb:	8b d8                                          	MOV EBX,EAX
  0051becd:	8d 49 00                                       	LEA ECX,[ECX]
  0051bed0:	8b 87 94 02 00 00                              	MOV EAX,dword ptr [EDI + 0x294]
  0051bed6:	8b 0c 30                                       	MOV ECX,dword ptr [EAX + ESI*0x1]
  0051bed9:	03 c6                                          	ADD EAX,ESI
  0051bedb:	8b 40 04                                       	MOV EAX,dword ptr [EAX + 0x4]
  0051bede:	8d 54 24 24                                    	LEA EDX,[ESP + 0x24]
  0051bee2:	52                                             	PUSH EDX
  0051bee3:	2b c1                                          	SUB EAX,ECX
  0051bee5:	55                                             	PUSH EBP
  0051bee6:	d1 f8                                          	SAR EAX,0x1
  0051bee8:	50                                             	PUSH EAX
  0051bee9:	51                                             	PUSH ECX
  0051beea:	8d 4c 24 50                                    	LEA ECX,[ESP + 0x50]
  0051beee:	e8 5d f0 f3 ff                                 	CALL 0x0045af50
  0051bef3:	d9 5c 24 20                                    	FSTP float ptr [ESP + 0x20]
  0051bef7:	f3 0f 10 44 24 20                              	MOVSS XMM0,dword ptr [ESP + 0x20]
  0051befd:	f3 0f 58 05 b8 9d fb 00                        	ADDSS XMM0,dword ptr [0x00fb9db8]
  0051bf05:	0f 2f 44 24 1c                                 	COMISS XMM0,dword ptr [ESP + 0x1c]
  0051bf0a:	f3 0f 10 4c 24 34                              	MOVSS XMM1,dword ptr [ESP + 0x34]
  0051bf10:	f3 0f 5c 4c 24 38                              	SUBSS XMM1,dword ptr [ESP + 0x38]
  0051bf16:	f3 0f 11 4c 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM1
  0051bf1c:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  0051bf22:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  0051bf26:	77 04                                          	JA 0x0051bf2c
  0051bf28:	8d 44 24 1c                                    	LEA EAX,[ESP + 0x1c]
  0051bf2c:	0f 2f 4c 24 14                                 	COMISS XMM1,dword ptr [ESP + 0x14]
  0051bf31:	f3 0f 10 00                                    	MOVSS XMM0,dword ptr [EAX]
  0051bf35:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  0051bf3b:	8d 44 24 18                                    	LEA EAX,[ESP + 0x18]
  0051bf3f:	77 04                                          	JA 0x0051bf45
  0051bf41:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  0051bf45:	f3 0f 10 00                                    	MOVSS XMM0,dword ptr [EAX]
  0051bf49:	83 c6 10                                       	ADD ESI,0x10
  0051bf4c:	83 eb 01                                       	SUB EBX,0x1
  0051bf4f:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  0051bf55:	0f 85 75 ff ff ff                              	JNZ 0x0051bed0
  0051bf5b:	5e                                             	POP ESI
  0051bf5c:	5b                                             	POP EBX
  0051bf5d:	8d 4c 24 38                                    	LEA ECX,[ESP + 0x38]
  0051bf61:	e8 aa e8 f3 ff                                 	CALL 0x0045a810
  0051bf66:	f3 0f 10 4c 24 14                              	MOVSS XMM1,dword ptr [ESP + 0x14]
  0051bf6c:	f3 0f 10 44 24 0c                              	MOVSS XMM0,dword ptr [ESP + 0xc]
  0051bf72:	5d                                             	POP EBP
  0051bf73:	8b 8c 24 b8 03 00 00                           	MOV ECX,dword ptr [ESP + 0x3b8]
  0051bf7a:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  0051bf7d:	f3 0f 58 15 78 3f fb 00                        	ADDSS XMM2,dword ptr [0x00fb3f78]
  0051bf85:	f3 0f 11 51 04                                 	MOVSS dword ptr [ECX + 0x4],XMM2
  0051bf8a:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  0051bf8d:	f3 0f 59 15 54 e5 fa 00                        	MULSS XMM2,dword ptr [0x00fae554]
  0051bf95:	0f 2f d0                                       	COMISS XMM2,XMM0
  0051bf98:	8d 44 24 0c                                    	LEA EAX,[ESP + 0xc]
  0051bf9c:	76 31                                          	JBE 0x0051bfcf
  0051bf9e:	f3 0f 58 c1                                    	ADDSS XMM0,XMM1
  0051bfa2:	f3 0f 58 05 7c 3f fb 00                        	ADDSS XMM0,dword ptr [0x00fb3f7c]
  0051bfaa:	f3 0f 10 0d 34 c9 fb 00                        	MOVSS XMM1,dword ptr [0x00fbc934]
  0051bfb2:	f3 0f 11 44 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM0
  0051bfb8:	f3 0f 11 4c 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM1
  0051bfbe:	0f 2f c1                                       	COMISS XMM0,XMM1
  0051bfc1:	eb 33                                          	JMP 0x0051bff6
  0051bfc3:	32 c0                                          	XOR AL,AL
  0051bfc5:	5f                                             	POP EDI
  0051bfc6:	81 c4 ac 03 00 00                              	ADD ESP,0x3ac
  0051bfcc:	c2 08 00                                       	RET 0x8
  0051bfcf:	f3 0f 59 0d 88 fd 03 01                        	MULSS XMM1,dword ptr [0x0103fd88]
  0051bfd7:	f3 0f 58 0d 7c 3f fb 00                        	ADDSS XMM1,dword ptr [0x00fb3f7c]
  0051bfdf:	f3 0f 10 05 34 c9 fb 00                        	MOVSS XMM0,dword ptr [0x00fbc934]
  0051bfe7:	f3 0f 11 4c 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM1
  0051bfed:	f3 0f 11 44 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM0
  0051bff3:	0f 2f c8                                       	COMISS XMM1,XMM0
  0051bff6:	77 04                                          	JA 0x0051bffc
  0051bff8:	8d 44 24 04                                    	LEA EAX,[ESP + 0x4]
  0051bffc:	d9 00                                          	FLD float ptr [EAX]
  0051bffe:	b0 01                                          	MOV AL,0x1
  0051c000:	d9 19                                          	FSTP float ptr [ECX]
  0051c002:	5f                                             	POP EDI
  0051c003:	81 c4 ac 03 00 00                              	ADD ESP,0x3ac
  0051c009:	c2 08 00                                       	RET 0x8
