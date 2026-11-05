# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00b62ed0 (LotPonds_WriteScriptInfo)
Paired actual Ghidra pseudocode: 00B62ED0_LotPonds_WriteScriptInfo.c
Envelope [0x00b62ed0,0x00b631b2); 738 bytes. Exact owned ranges: [0x00b62ed0,0x00b62fdd),[0x00b62fe0,0x00b630d7),[0x00b630e0,0x00b631b2)
Owned: 726 pristine PE bytes / 172 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b62ed0 <original>:
  00b62ed0:	55                                             	PUSH EBP
  00b62ed1:	8b ec                                          	MOV EBP,ESP
  00b62ed3:	83 e4 f0                                       	AND ESP,0xfffffff0
  00b62ed6:	81 ec 24 01 00 00                              	SUB ESP,0x124
  00b62edc:	53                                             	PUSH EBX
  00b62edd:	8b d9                                          	MOV EBX,ECX
  00b62edf:	8b 4b 04                                       	MOV ECX,dword ptr [EBX + 0x4]
  00b62ee2:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00b62ee4:	8b 40 64                                       	MOV EAX,dword ptr [EAX + 0x64]
  00b62ee7:	56                                             	PUSH ESI
  00b62ee8:	57                                             	PUSH EDI
  00b62ee9:	8d 54 24 20                                    	LEA EDX,[ESP + 0x20]
  00b62eed:	52                                             	PUSH EDX
  00b62eee:	ff d0                                          	CALL EAX
  00b62ef0:	0f 28 00                                       	MOVAPS XMM0,xmmword ptr [EAX]
  00b62ef3:	8b 7d 08                                       	MOV EDI,dword ptr [EBP + 0x8]
  00b62ef6:	f3 0f 10 15 f8 98 f9 00                        	MOVSS XMM2,dword ptr [0x00f998f8]
  00b62efe:	f3 0f 10 1d 7c 48 04 01                        	MOVSS XMM3,dword ptr [0x0104487c]
  00b62f06:	f3 0f 2a 4f 2c                                 	CVTSI2SS XMM1,dword ptr [EDI + 0x2c]
  00b62f0b:	0f 29 44 24 20                                 	MOVAPS xmmword ptr [ESP + 0x20],XMM0
  00b62f10:	f3 0f 10 47 40                                 	MOVSS XMM0,dword ptr [EDI + 0x40]
  00b62f15:	f3 0f 5c 44 24 24                              	SUBSS XMM0,dword ptr [ESP + 0x24]
  00b62f1b:	f3 0f 5c ca                                    	SUBSS XMM1,XMM2
  00b62f1f:	f3 0f 58 cb                                    	ADDSS XMM1,XMM3
  00b62f23:	f3 0f 11 4c 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM1
  00b62f29:	33 f6                                          	XOR ESI,ESI
  00b62f2b:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b62f2f:	0f 29 44 24 20                                 	MOVAPS xmmword ptr [ESP + 0x20],XMM0
  00b62f34:	f3 0f 2a 47 28                                 	CVTSI2SS XMM0,dword ptr [EDI + 0x28]
  00b62f39:	f3 0f 10 64 24 20                              	MOVSS XMM4,dword ptr [ESP + 0x20]
  00b62f3f:	f3 0f 5c c2                                    	SUBSS XMM0,XMM2
  00b62f43:	f3 0f 58 c3                                    	ADDSS XMM0,XMM3
  00b62f47:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00b62f4d:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00b62f53:	f3 0f 11 64 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM4
  00b62f59:	0f 28 54 24 10                                 	MOVAPS XMM2,xmmword ptr [ESP + 0x10]
  00b62f5e:	0f 29 54 24 30                                 	MOVAPS xmmword ptr [ESP + 0x30],XMM2
  00b62f63:	f3 0f 2a 57 24                                 	CVTSI2SS XMM2,dword ptr [EDI + 0x24]
  00b62f68:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00b62f6e:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00b62f74:	f3 0f 5c d3                                    	SUBSS XMM2,XMM3
  00b62f78:	f3 0f 11 54 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM2
  00b62f7e:	f3 0f 11 64 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM4
  00b62f84:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00b62f89:	0f 29 44 24 40                                 	MOVAPS xmmword ptr [ESP + 0x40],XMM0
  00b62f8e:	f3 0f 2a 47 20                                 	CVTSI2SS XMM0,dword ptr [EDI + 0x20]
  00b62f93:	f3 0f 5c c3                                    	SUBSS XMM0,XMM3
  00b62f97:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00b62f9d:	f3 0f 11 54 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM2
  00b62fa3:	f3 0f 11 64 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM4
  00b62fa9:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00b62faf:	0f 28 54 24 10                                 	MOVAPS XMM2,xmmword ptr [ESP + 0x10]
  00b62fb4:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00b62fba:	f3 0f 11 4c 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM1
  00b62fc0:	f3 0f 11 64 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM4
  00b62fc6:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00b62fcc:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00b62fd1:	0f 29 54 24 50                                 	MOVAPS xmmword ptr [ESP + 0x50],XMM2
  00b62fd6:	0f 29 44 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM0
  00b62fdb:	eb 03                                          	JMP 0x00b62fe0
  00b62fdd:	8d 49 00                                       	.byte 0x8d,0x49,0x00 # NONOWNED envelope bytes
  00b62fe0:	8d 8c 34 f0 00 00 00                           	LEA ECX,[ESP + ESI*0x1 + 0xf0]
  00b62fe7:	51                                             	PUSH ECX
  00b62fe8:	8b 4b 04                                       	MOV ECX,dword ptr [EBX + 0x4]
  00b62feb:	8d 54 34 34                                    	LEA EDX,[ESP + ESI*0x1 + 0x34]
  00b62fef:	52                                             	PUSH EDX
  00b62ff0:	e8 4b 40 f5 ff                                 	CALL 0x00ab7040
  00b62ff5:	83 c6 10                                       	ADD ESI,0x10
  00b62ff8:	83 fe 40                                       	CMP ESI,0x40
  00b62ffb:	72 e3                                          	JC 0x00b62fe0
  00b62ffd:	f3 0f 10 15 f8 98 f9 00                        	MOVSS XMM2,dword ptr [0x00f998f8]
  00b63005:	f3 0f 10 1d 7c 48 04 01                        	MOVSS XMM3,dword ptr [0x0104487c]
  00b6300d:	f3 0f 2a 47 38                                 	CVTSI2SS XMM0,dword ptr [EDI + 0x38]
  00b63012:	f3 0f 10 64 24 20                              	MOVSS XMM4,dword ptr [ESP + 0x20]
  00b63018:	f3 0f 2a 4f 3c                                 	CVTSI2SS XMM1,dword ptr [EDI + 0x3c]
  00b6301d:	f3 0f 5c c2                                    	SUBSS XMM0,XMM2
  00b63021:	f3 0f 58 c3                                    	ADDSS XMM0,XMM3
  00b63025:	f3 0f 5c ca                                    	SUBSS XMM1,XMM2
  00b63029:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00b6302f:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00b63035:	f3 0f 11 64 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM4
  00b6303b:	f3 0f 58 cb                                    	ADDSS XMM1,XMM3
  00b6303f:	f3 0f 11 4c 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM1
  00b63045:	0f 28 54 24 10                                 	MOVAPS XMM2,xmmword ptr [ESP + 0x10]
  00b6304a:	0f 29 94 24 b0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xb0],XMM2
  00b63052:	f3 0f 2a 57 34                                 	CVTSI2SS XMM2,dword ptr [EDI + 0x34]
  00b63057:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00b6305d:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00b63063:	f3 0f 5c d3                                    	SUBSS XMM2,XMM3
  00b63067:	f3 0f 11 54 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM2
  00b6306d:	f3 0f 11 64 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM4
  00b63073:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00b63078:	0f 29 84 24 c0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xc0],XMM0
  00b63080:	f3 0f 2a 47 30                                 	CVTSI2SS XMM0,dword ptr [EDI + 0x30]
  00b63085:	f3 0f 5c c3                                    	SUBSS XMM0,XMM3
  00b63089:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00b6308f:	f3 0f 11 54 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM2
  00b63095:	f3 0f 11 64 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM4
  00b6309b:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00b630a1:	0f 28 54 24 10                                 	MOVAPS XMM2,xmmword ptr [ESP + 0x10]
  00b630a6:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00b630ac:	f3 0f 11 4c 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM1
  00b630b2:	f3 0f 11 64 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM4
  00b630b8:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00b630be:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00b630c3:	0f 29 94 24 d0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xd0],XMM2
  00b630cb:	0f 29 84 24 e0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xe0],XMM0
  00b630d3:	33 f6                                          	XOR ESI,ESI
  00b630d5:	eb 09                                          	JMP 0x00b630e0
  00b630d7:	8d a4 24 00 00 00 00 8b ff                     	.byte 0x8d,0xa4,0x24,0x00,0x00,0x00,0x00,0x8b,0xff # NONOWNED envelope bytes
  00b630e0:	8d 44 34 70                                    	LEA EAX,[ESP + ESI*0x1 + 0x70]
  00b630e4:	50                                             	PUSH EAX
  00b630e5:	8d 8c 34 b4 00 00 00                           	LEA ECX,[ESP + ESI*0x1 + 0xb4]
  00b630ec:	51                                             	PUSH ECX
  00b630ed:	8b 4b 04                                       	MOV ECX,dword ptr [EBX + 0x4]
  00b630f0:	e8 4b 3f f5 ff                                 	CALL 0x00ab7040
  00b630f5:	83 c6 10                                       	ADD ESI,0x10
  00b630f8:	83 fe 40                                       	CMP ESI,0x40
  00b630fb:	72 e3                                          	JC 0x00b630e0
  00b630fd:	8b 75 0c                                       	MOV ESI,dword ptr [EBP + 0xc]
  00b63100:	57                                             	PUSH EDI
  00b63101:	8b ce                                          	MOV ECX,ESI
  00b63103:	e8 f8 8f c0 ff                                 	CALL 0x0076c100
  00b63108:	d9 47 40                                       	FLD float ptr [EDI + 0x40]
  00b6310b:	8d 54 24 70                                    	LEA EDX,[ESP + 0x70]
  00b6310f:	d9 5e 6c                                       	FSTP float ptr [ESI + 0x6c]
  00b63112:	52                                             	PUSH EDX
  00b63113:	8d 4e 3c                                       	LEA ECX,[ESI + 0x3c]
  00b63116:	e8 e5 8f c0 ff                                 	CALL 0x0076c100
  00b6311b:	8d 84 24 80 00 00 00                           	LEA EAX,[ESP + 0x80]
  00b63122:	50                                             	PUSH EAX
  00b63123:	8d 4e 48                                       	LEA ECX,[ESI + 0x48]
  00b63126:	e8 d5 8f c0 ff                                 	CALL 0x0076c100
  00b6312b:	8d 8c 24 90 00 00 00                           	LEA ECX,[ESP + 0x90]
  00b63132:	51                                             	PUSH ECX
  00b63133:	8d 4e 54                                       	LEA ECX,[ESI + 0x54]
  00b63136:	e8 c5 8f c0 ff                                 	CALL 0x0076c100
  00b6313b:	8d 94 24 a0 00 00 00                           	LEA EDX,[ESP + 0xa0]
  00b63142:	52                                             	PUSH EDX
  00b63143:	8d 4e 60                                       	LEA ECX,[ESI + 0x60]
  00b63146:	e8 b5 8f c0 ff                                 	CALL 0x0076c100
  00b6314b:	8d 84 24 f0 00 00 00                           	LEA EAX,[ESP + 0xf0]
  00b63152:	50                                             	PUSH EAX
  00b63153:	8d 4e 0c                                       	LEA ECX,[ESI + 0xc]
  00b63156:	e8 a5 8f c0 ff                                 	CALL 0x0076c100
  00b6315b:	8d 8c 24 00 01 00 00                           	LEA ECX,[ESP + 0x100]
  00b63162:	51                                             	PUSH ECX
  00b63163:	8d 4e 18                                       	LEA ECX,[ESI + 0x18]
  00b63166:	e8 95 8f c0 ff                                 	CALL 0x0076c100
  00b6316b:	8d 94 24 10 01 00 00                           	LEA EDX,[ESP + 0x110]
  00b63172:	52                                             	PUSH EDX
  00b63173:	8d 4e 24                                       	LEA ECX,[ESI + 0x24]
  00b63176:	e8 85 8f c0 ff                                 	CALL 0x0076c100
  00b6317b:	8d 84 24 20 01 00 00                           	LEA EAX,[ESP + 0x120]
  00b63182:	50                                             	PUSH EAX
  00b63183:	8d 4e 30                                       	LEA ECX,[ESI + 0x30]
  00b63186:	e8 75 8f c0 ff                                 	CALL 0x0076c100
  00b6318b:	8b 47 18                                       	MOV EAX,dword ptr [EDI + 0x18]
  00b6318e:	33 c9                                          	XOR ECX,ECX
  00b63190:	85 c0                                          	TEST EAX,EAX
  00b63192:	0f 9c c1                                       	SETL CL
  00b63195:	83 e9 01                                       	SUB ECX,0x1
  00b63198:	23 c1                                          	AND EAX,ECX
  00b6319a:	89 46 70                                       	MOV dword ptr [ESI + 0x70],EAX
  00b6319d:	8b 57 48                                       	MOV EDX,dword ptr [EDI + 0x48]
  00b631a0:	89 56 78                                       	MOV dword ptr [ESI + 0x78],EDX
  00b631a3:	8b 47 4c                                       	MOV EAX,dword ptr [EDI + 0x4c]
  00b631a6:	5f                                             	POP EDI
  00b631a7:	89 46 7c                                       	MOV dword ptr [ESI + 0x7c],EAX
  00b631aa:	5e                                             	POP ESI
  00b631ab:	5b                                             	POP EBX
  00b631ac:	8b e5                                          	MOV ESP,EBP
  00b631ae:	5d                                             	POP EBP
  00b631af:	c2 08 00                                       	RET 0x8
