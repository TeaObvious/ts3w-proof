# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00afee10 (Lot_QueryDeckFoundationAtLocalPoint)
Paired actual Ghidra pseudocode: 00AFEE10_Lot_QueryDeckFoundationAtLocalPoint.c
Envelope [0x00afee10,0x00aff155); 837 bytes; exact owned ranges: [0x00afee10,0x00aff155)
Owned: 837 original bytes / 254 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00afee10 <original>:
  00afee10:	55                                             	PUSH EBP
  00afee11:	8b ec                                          	MOV EBP,ESP
  00afee13:	83 e4 f0                                       	AND ESP,0xfffffff0
  00afee16:	83 ec 34                                       	SUB ESP,0x34
  00afee19:	0f 57 d2                                       	XORPS XMM2,XMM2
  00afee1c:	53                                             	PUSH EBX
  00afee1d:	56                                             	PUSH ESI
  00afee1e:	57                                             	PUSH EDI
  00afee1f:	8b 7d 0c                                       	MOV EDI,dword ptr [EBP + 0xc]
  00afee22:	f3 0f 10 07                                    	MOVSS XMM0,dword ptr [EDI]
  00afee26:	0f 2f c2                                       	COMISS XMM0,XMM2
  00afee29:	f3 0f 10 4f 04                                 	MOVSS XMM1,dword ptr [EDI + 0x4]
  00afee2e:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  00afee34:	f3 0f 11 4c 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM1
  00afee3a:	72 35                                          	JC 0x00afee71
  00afee3c:	8b 75 08                                       	MOV ESI,dword ptr [EBP + 0x8]
  00afee3f:	f3 0f 2a 9e 74 01 00 00                        	CVTSI2SS XMM3,dword ptr [ESI + 0x174]
  00afee47:	0f 2f d8                                       	COMISS XMM3,XMM0
  00afee4a:	72 25                                          	JC 0x00afee71
  00afee4c:	0f 2f ca                                       	COMISS XMM1,XMM2
  00afee4f:	72 20                                          	JC 0x00afee71
  00afee51:	f3 0f 2a 86 78 01 00 00                        	CVTSI2SS XMM0,dword ptr [ESI + 0x178]
  00afee59:	0f 2f c1                                       	COMISS XMM0,XMM1
  00afee5c:	72 13                                          	JC 0x00afee71
  00afee5e:	8b 47 08                                       	MOV EAX,dword ptr [EDI + 0x8]
  00afee61:	3b 86 7c 01 00 00                              	CMP EAX,dword ptr [ESI + 0x17c]
  00afee67:	7c 08                                          	JL 0x00afee71
  00afee69:	3b 86 80 01 00 00                              	CMP EAX,dword ptr [ESI + 0x180]
  00afee6f:	7e 09                                          	JLE 0x00afee7a
  00afee71:	32 c0                                          	XOR AL,AL
  00afee73:	5f                                             	POP EDI
  00afee74:	5e                                             	POP ESI
  00afee75:	5b                                             	POP EBX
  00afee76:	8b e5                                          	MOV ESP,EBP
  00afee78:	5d                                             	POP EBP
  00afee79:	c3                                             	RET
  00afee7a:	d9 44 24 14                                    	FLD float ptr [ESP + 0x14]
  00afee7e:	83 ec 08                                       	SUB ESP,0x8
  00afee81:	dd 1c 24                                       	FSTP double ptr [ESP]
  00afee84:	e8 47 09 48 00                                 	CALL 0x00f7f7d0
  00afee89:	f3 0f 10 44 24 1c                              	MOVSS XMM0,dword ptr [ESP + 0x1c]
  00afee8f:	d9 5c 24 20                                    	FSTP float ptr [ESP + 0x20]
  00afee93:	f3 0f 5c 44 24 20                              	SUBSS XMM0,dword ptr [ESP + 0x20]
  00afee99:	d9 44 24 18                                    	FLD float ptr [ESP + 0x18]
  00afee9d:	dd 1c 24                                       	FSTP double ptr [ESP]
  00afeea0:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  00afeea6:	e8 25 09 48 00                                 	CALL 0x00f7f7d0
  00afeeab:	d9 5c 24 24                                    	FSTP float ptr [ESP + 0x24]
  00afeeaf:	f3 0f 10 64 24 28                              	MOVSS XMM4,dword ptr [ESP + 0x28]
  00afeeb5:	f3 0f 10 05 18 b2 fa 00                        	MOVSS XMM0,dword ptr [0x00fab218]
  00afeebd:	f3 0f 10 6c 24 18                              	MOVSS XMM5,dword ptr [ESP + 0x18]
  00afeec3:	f3 0f 10 0d a8 b7 06 01                        	MOVSS XMM1,dword ptr [0x0106b7a8]
  00afeecb:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00afeecf:	f3 0f 10 dc                                    	MOVSS XMM3,XMM4
  00afeed3:	0f c6 db 00                                    	SHUFPS XMM3,XMM3,0x0
  00afeed7:	0f 28 f0                                       	MOVAPS XMM6,XMM0
  00afeeda:	0f 59 f3                                       	MULPS XMM6,XMM3
  00afeedd:	0f 5f f3                                       	MAXPS XMM6,XMM3
  00afeee0:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00afeee4:	0f c2 f1 02                                    	CMPLEPS XMM6,XMM1
  00afeee8:	0f 50 c6                                       	MOVMSKPS EAX,XMM6
  00afeeeb:	0f 28 d5                                       	MOVAPS XMM2,XMM5
  00afeeee:	f3 0f 5c 54 24 24                              	SUBSS XMM2,dword ptr [ESP + 0x24]
  00afeef4:	83 c4 08                                       	ADD ESP,0x8
  00afeef7:	83 f8 0f                                       	CMP EAX,0xf
  00afeefa:	f3 0f 10 da                                    	MOVSS XMM3,XMM2
  00afeefe:	0f c6 db 00                                    	SHUFPS XMM3,XMM3,0x0
  00afef02:	0f 28 f0                                       	MOVAPS XMM6,XMM0
  00afef05:	0f 59 f3                                       	MULPS XMM6,XMM3
  00afef08:	0f 5f f3                                       	MAXPS XMM6,XMM3
  00afef0b:	0f 94 c3                                       	SETZ BL
  00afef0e:	0f c2 f1 02                                    	CMPLEPS XMM6,XMM1
  00afef12:	0f 50 ce                                       	MOVMSKPS ECX,XMM6
  00afef15:	83 f9 0f                                       	CMP ECX,0xf
  00afef18:	0f 94 c0                                       	SETZ AL
  00afef1b:	84 db                                          	TEST BL,BL
  00afef1d:	74 54                                          	JZ 0x00afef73
  00afef1f:	84 c0                                          	TEST AL,AL
  00afef21:	0f 84 fc 00 00 00                              	JZ 0x00aff023
  00afef27:	f3 0f 11 6c 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM5
  00afef2d:	d9 44 24 20                                    	FLD float ptr [ESP + 0x20]
  00afef31:	db 5c 24 14                                    	FISTP dword ptr [ESP + 0x14]
  00afef35:	f3 0f 10 07                                    	MOVSS XMM0,dword ptr [EDI]
  00afef39:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00afef3d:	f3 0f 11 44 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM0
  00afef43:	d9 44 24 20                                    	FLD float ptr [ESP + 0x20]
  00afef47:	db 5c 24 18                                    	FISTP dword ptr [ESP + 0x18]
  00afef4b:	8a 54 24 18                                    	MOV DL,byte ptr [ESP + 0x18]
  00afef4f:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00afef53:	88 44 24 11                                    	MOV byte ptr [ESP + 0x11],AL
  00afef57:	8a 47 08                                       	MOV AL,byte ptr [EDI + 0x8]
  00afef5a:	51                                             	PUSH ECX
  00afef5b:	56                                             	PUSH ESI
  00afef5c:	88 54 24 18                                    	MOV byte ptr [ESP + 0x18],DL
  00afef60:	88 44 24 1a                                    	MOV byte ptr [ESP + 0x1a],AL
  00afef64:	e8 97 fb ff ff                                 	CALL 0x00afeb00
  00afef69:	83 c4 08                                       	ADD ESP,0x8
  00afef6c:	5f                                             	POP EDI
  00afef6d:	5e                                             	POP ESI
  00afef6e:	5b                                             	POP EBX
  00afef6f:	8b e5                                          	MOV ESP,EBP
  00afef71:	5d                                             	POP EBP
  00afef72:	c3                                             	RET
  00afef73:	84 c0                                          	TEST AL,AL
  00afef75:	0f 85 cc 00 00 00                              	JNZ 0x00aff047
  00afef7b:	f3 0f 10 2d b4 b5 f9 00                        	MOVSS XMM5,dword ptr [0x00f9b5b4]
  00afef83:	f3 0f 5c e5                                    	SUBSS XMM4,XMM5
  00afef87:	f3 0f 10 dc                                    	MOVSS XMM3,XMM4
  00afef8b:	0f c6 db 00                                    	SHUFPS XMM3,XMM3,0x0
  00afef8f:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  00afef92:	0f 59 e3                                       	MULPS XMM4,XMM3
  00afef95:	0f 5f e3                                       	MAXPS XMM4,XMM3
  00afef98:	0f c2 e1 02                                    	CMPLEPS XMM4,XMM1
  00afef9c:	0f 50 d4                                       	MOVMSKPS EDX,XMM4
  00afef9f:	83 fa 0f                                       	CMP EDX,0xf
  00afefa2:	75 4c                                          	JNZ 0x00afeff0
  00afefa4:	f3 0f 5c d5                                    	SUBSS XMM2,XMM5
  00afefa8:	f3 0f 10 d2                                    	MOVSS XMM2,XMM2
  00afefac:	0f c6 d2 00                                    	SHUFPS XMM2,XMM2,0x0
  00afefb0:	0f 59 c2                                       	MULPS XMM0,XMM2
  00afefb3:	0f 5f c2                                       	MAXPS XMM0,XMM2
  00afefb6:	0f c2 c1 02                                    	CMPLEPS XMM0,XMM1
  00afefba:	0f 50 c0                                       	MOVMSKPS EAX,XMM0
  00afefbd:	3b c2                                          	CMP EAX,EDX
  00afefbf:	75 2f                                          	JNZ 0x00afeff0
  00afefc1:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00afefc5:	0c ff                                          	OR AL,0xff
  00afefc7:	51                                             	PUSH ECX
  00afefc8:	57                                             	PUSH EDI
  00afefc9:	88 44 24 18                                    	MOV byte ptr [ESP + 0x18],AL
  00afefcd:	88 44 24 19                                    	MOV byte ptr [ESP + 0x19],AL
  00afefd1:	c6 44 24 1a 00                                 	MOV byte ptr [ESP + 0x1a],0x0
  00afefd6:	e8 55 87 ff ff                                 	CALL 0x00af7730
  00afefdb:	8d 54 24 18                                    	LEA EDX,[ESP + 0x18]
  00afefdf:	52                                             	PUSH EDX
  00afefe0:	56                                             	PUSH ESI
  00afefe1:	e8 2a fc ff ff                                 	CALL 0x00afec10
  00afefe6:	83 c4 10                                       	ADD ESP,0x10
  00afefe9:	5f                                             	POP EDI
  00afefea:	5e                                             	POP ESI
  00afefeb:	5b                                             	POP EBX
  00afefec:	8b e5                                          	MOV ESP,EBP
  00afefee:	5d                                             	POP EBP
  00afefef:	c3                                             	RET
  00afeff0:	0c ff                                          	OR AL,0xff
  00afeff2:	88 44 24 10                                    	MOV byte ptr [ESP + 0x10],AL
  00afeff6:	88 44 24 11                                    	MOV byte ptr [ESP + 0x11],AL
  00afeffa:	88 44 24 13                                    	MOV byte ptr [ESP + 0x13],AL
  00afeffe:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  00aff002:	50                                             	PUSH EAX
  00aff003:	57                                             	PUSH EDI
  00aff004:	c6 44 24 1a 00                                 	MOV byte ptr [ESP + 0x1a],0x0
  00aff009:	e8 a2 8d ff ff                                 	CALL 0x00af7db0
  00aff00e:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00aff012:	51                                             	PUSH ECX
  00aff013:	56                                             	PUSH ESI
  00aff014:	e8 b7 fc ff ff                                 	CALL 0x00afecd0
  00aff019:	83 c4 10                                       	ADD ESP,0x10
  00aff01c:	5f                                             	POP EDI
  00aff01d:	5e                                             	POP ESI
  00aff01e:	5b                                             	POP EBX
  00aff01f:	8b e5                                          	MOV ESP,EBP
  00aff021:	5d                                             	POP EBP
  00aff022:	c3                                             	RET
  00aff023:	d9 44 24 14                                    	FLD float ptr [ESP + 0x14]
  00aff027:	83 ec 08                                       	SUB ESP,0x8
  00aff02a:	d8 05 b4 b5 f9 00                              	FADD float ptr [0x00f9b5b4]
  00aff030:	dd 1c 24                                       	FSTP double ptr [ESP]
  00aff033:	e8 98 07 48 00                                 	CALL 0x00f7f7d0
  00aff038:	d9 5c 24 1c                                    	FSTP float ptr [ESP + 0x1c]
  00aff03c:	f3 0f 10 5c 24 1c                              	MOVSS XMM3,dword ptr [ESP + 0x1c]
  00aff042:	83 c4 08                                       	ADD ESP,0x8
  00aff045:	eb 0c                                          	JMP 0x00aff053
  00aff047:	f3 0f 10 5c 24 18                              	MOVSS XMM3,dword ptr [ESP + 0x18]
  00aff04d:	f3 0f 11 5c 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM3
  00aff053:	84 db                                          	TEST BL,BL
  00aff055:	74 08                                          	JZ 0x00aff05f
  00aff057:	f3 0f 10 54 24 1c                              	MOVSS XMM2,dword ptr [ESP + 0x1c]
  00aff05d:	eb 28                                          	JMP 0x00aff087
  00aff05f:	d9 44 24 10                                    	FLD float ptr [ESP + 0x10]
  00aff063:	83 ec 08                                       	SUB ESP,0x8
  00aff066:	d8 05 b4 b5 f9 00                              	FADD float ptr [0x00f9b5b4]
  00aff06c:	dd 1c 24                                       	FSTP double ptr [ESP]
  00aff06f:	e8 5c 07 48 00                                 	CALL 0x00f7f7d0
  00aff074:	f3 0f 10 5c 24 1c                              	MOVSS XMM3,dword ptr [ESP + 0x1c]
  00aff07a:	d9 5c 24 28                                    	FSTP float ptr [ESP + 0x28]
  00aff07e:	f3 0f 10 54 24 28                              	MOVSS XMM2,dword ptr [ESP + 0x28]
  00aff084:	83 c4 08                                       	ADD ESP,0x8
  00aff087:	84 db                                          	TEST BL,BL
  00aff089:	f3 0f 10 25 f8 98 f9 00                        	MOVSS XMM4,dword ptr [0x00f998f8]
  00aff091:	0f 28 cb                                       	MOVAPS XMM1,XMM3
  00aff094:	0f 85 8b 00 00 00                              	JNZ 0x00aff125
  00aff09a:	f3 0f 58 cc                                    	ADDSS XMM1,XMM4
  00aff09e:	0f 28 c2                                       	MOVAPS XMM0,XMM2
  00aff0a1:	8b 47 08                                       	MOV EAX,dword ptr [EDI + 0x8]
  00aff0a4:	8d 54 24 28                                    	LEA EDX,[ESP + 0x28]
  00aff0a8:	89 44 24 3c                                    	MOV dword ptr [ESP + 0x3c],EAX
  00aff0ac:	89 44 24 30                                    	MOV dword ptr [ESP + 0x30],EAX
  00aff0b0:	52                                             	PUSH EDX
  00aff0b1:	8d 44 24 38                                    	LEA EAX,[ESP + 0x38]
  00aff0b5:	50                                             	PUSH EAX
  00aff0b6:	8d 4c 24 28                                    	LEA ECX,[ESP + 0x28]
  00aff0ba:	f3 0f 11 5c 24 3c                              	MOVSS dword ptr [ESP + 0x3c],XMM3
  00aff0c0:	f3 0f 11 54 24 40                              	MOVSS dword ptr [ESP + 0x40],XMM2
  00aff0c6:	f3 0f 11 4c 24 30                              	MOVSS dword ptr [ESP + 0x30],XMM1
  00aff0cc:	f3 0f 11 44 24 34                              	MOVSS dword ptr [ESP + 0x34],XMM0
  00aff0d2:	e8 19 5d c8 ff                                 	CALL 0x00784df0
  00aff0d7:	0c ff                                          	OR AL,0xff
  00aff0d9:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00aff0dd:	51                                             	PUSH ECX
  00aff0de:	8d 54 24 24                                    	LEA EDX,[ESP + 0x24]
  00aff0e2:	52                                             	PUSH EDX
  00aff0e3:	88 44 24 18                                    	MOV byte ptr [ESP + 0x18],AL
  00aff0e7:	88 44 24 19                                    	MOV byte ptr [ESP + 0x19],AL
  00aff0eb:	c6 44 24 1a 00                                 	MOV byte ptr [ESP + 0x1a],0x0
  00aff0f0:	88 44 24 1b                                    	MOV byte ptr [ESP + 0x1b],AL
  00aff0f4:	88 44 24 1c                                    	MOV byte ptr [ESP + 0x1c],AL
  00aff0f8:	88 44 24 1d                                    	MOV byte ptr [ESP + 0x1d],AL
  00aff0fc:	c6 44 24 1e 00                                 	MOV byte ptr [ESP + 0x1e],0x0
  00aff101:	88 44 24 1f                                    	MOV byte ptr [ESP + 0x1f],AL
  00aff105:	e8 16 6e 14 00                                 	CALL 0x00c45f20
  00aff10a:	8d 44 24 18                                    	LEA EAX,[ESP + 0x18]
  00aff10e:	50                                             	PUSH EAX
  00aff10f:	56                                             	PUSH ESI
  00aff110:	e8 bb fb ff ff                                 	CALL 0x00afecd0
  00aff115:	83 c4 10                                       	ADD ESP,0x10
  00aff118:	84 c0                                          	TEST AL,AL
  00aff11a:	74 15                                          	JZ 0x00aff131
  00aff11c:	b0 01                                          	MOV AL,0x1
  00aff11e:	5f                                             	POP EDI
  00aff11f:	5e                                             	POP ESI
  00aff120:	5b                                             	POP EBX
  00aff121:	8b e5                                          	MOV ESP,EBP
  00aff123:	5d                                             	POP EBP
  00aff124:	c3                                             	RET
  00aff125:	0f 28 c2                                       	MOVAPS XMM0,XMM2
  00aff128:	f3 0f 58 c4                                    	ADDSS XMM0,XMM4
  00aff12c:	e9 70 ff ff ff                                 	JMP 0x00aff0a1
  00aff131:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aff135:	51                                             	PUSH ECX
  00aff136:	8d 54 24 24                                    	LEA EDX,[ESP + 0x24]
  00aff13a:	52                                             	PUSH EDX
  00aff13b:	e8 70 6e 14 00                                 	CALL 0x00c45fb0
  00aff140:	8d 44 24 1c                                    	LEA EAX,[ESP + 0x1c]
  00aff144:	50                                             	PUSH EAX
  00aff145:	56                                             	PUSH ESI
  00aff146:	e8 85 fb ff ff                                 	CALL 0x00afecd0
  00aff14b:	83 c4 10                                       	ADD ESP,0x10
  00aff14e:	5f                                             	POP EDI
  00aff14f:	5e                                             	POP ESI
  00aff150:	5b                                             	POP EBX
  00aff151:	8b e5                                          	MOV ESP,EBP
  00aff153:	5d                                             	POP EBP
  00aff154:	c3                                             	RET
