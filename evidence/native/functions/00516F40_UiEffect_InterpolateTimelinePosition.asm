# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x00516f40 (UiEffect_InterpolateTimelinePosition)
Paired actual Ghidra pseudocode: 00516F40_UiEffect_InterpolateTimelinePosition.c
Envelope [0x00516f40,0x00517298); 856 pristine bytes.
Owned: 856 original bytes / 224 actual saved Listing instructions; no body gaps.
Saved body: [[00516f40, 00517297]]; inclusive ranges above, exclusive envelope end.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00516f40 <original>:
  00516f40:	55                                             	PUSH EBP
  00516f41:	8b ec                                          	MOV EBP,ESP
  00516f43:	83 e4 f0                                       	AND ESP,0xfffffff0
  00516f46:	f3 0f 10 4d 08                                 	MOVSS XMM1,dword ptr [EBP + 0x8]
  00516f4b:	0f 57 db                                       	XORPS XMM3,XMM3
  00516f4e:	83 ec 20                                       	SUB ESP,0x20
  00516f51:	0f 2f d9                                       	COMISS XMM3,XMM1
  00516f54:	0f 83 35 03 00 00                              	JNC 0x0051728f
  00516f5a:	f3 0f 10 15 f8 98 f9 00                        	MOVSS XMM2,dword ptr [0x00f998f8]
  00516f62:	0f 2f ca                                       	COMISS XMM1,XMM2
  00516f65:	0f 83 24 03 00 00                              	JNC 0x0051728f
  00516f6b:	8b 41 30                                       	MOV EAX,dword ptr [ECX + 0x30]
  00516f6e:	83 e8 00                                       	SUB EAX,0x0
  00516f71:	0f 84 18 03 00 00                              	JZ 0x0051728f
  00516f77:	83 e8 01                                       	SUB EAX,0x1
  00516f7a:	0f 84 7b 02 00 00                              	JZ 0x005171fb
  00516f80:	83 e8 01                                       	SUB EAX,0x1
  00516f83:	74 08                                          	JZ 0x00516f8d
  00516f85:	d9 ee                                          	FLDZ
  00516f87:	8b e5                                          	MOV ESP,EBP
  00516f89:	5d                                             	POP EBP
  00516f8a:	c2 04 00                                       	RET 0x4
  00516f8d:	f3 0f 10 41 38                                 	MOVSS XMM0,dword ptr [ECX + 0x38]
  00516f92:	0f 2e c3                                       	UCOMISS XMM0,XMM3
  00516f95:	9f                                             	LAHF
  00516f96:	f6 c4 44                                       	TEST AH,0x44
  00516f99:	7a 0d                                          	JP 0x00516fa8
  00516f9b:	f3 0f 10 05 34 bf fb 00                        	MOVSS XMM0,dword ptr [0x00fbbf34]
  00516fa3:	f3 0f 11 41 38                                 	MOVSS dword ptr [ECX + 0x38],XMM0
  00516fa8:	f3 0f 10 41 3c                                 	MOVSS XMM0,dword ptr [ECX + 0x3c]
  00516fad:	f3 0f 10 35 f4 98 f9 00                        	MOVSS XMM6,dword ptr [0x00f998f4]
  00516fb5:	0f 2f c6                                       	COMISS XMM0,XMM6
  00516fb8:	76 05                                          	JBE 0x00516fbf
  00516fba:	f3 0f 11 71 3c                                 	MOVSS dword ptr [ECX + 0x3c],XMM6
  00516fbf:	f3 0f 10 41 3c                                 	MOVSS XMM0,dword ptr [ECX + 0x3c]
  00516fc4:	f3 0f 10 61 40                                 	MOVSS XMM4,dword ptr [ECX + 0x40]
  00516fc9:	0f 2f e2                                       	COMISS XMM4,XMM2
  00516fcc:	f3 0f 5c f0                                    	SUBSS XMM6,XMM0
  00516fd0:	f3 0f 59 35 7c 48 04 01                        	MULSS XMM6,dword ptr [0x0104487c]
  00516fd8:	72 03                                          	JC 0x00516fdd
  00516fda:	0f 28 da                                       	MOVAPS XMM3,XMM2
  00516fdd:	f3 0f 10 61 6c                                 	MOVSS XMM4,dword ptr [ECX + 0x6c]
  00516fe2:	f3 0f 59 05 7c 48 04 01                        	MULSS XMM0,dword ptr [0x0104487c]
  00516fea:	f3 0f 5c dc                                    	SUBSS XMM3,XMM4
  00516fee:	f3 0f 5c cc                                    	SUBSS XMM1,XMM4
  00516ff2:	0f 28 fb                                       	MOVAPS XMM7,XMM3
  00516ff5:	0f 28 d8                                       	MOVAPS XMM3,XMM0
  00516ff8:	0f 28 e6                                       	MOVAPS XMM4,XMM6
  00516ffb:	f3 0f 5e e3                                    	DIVSS XMM4,XMM3
  00516fff:	f3 0f 59 25 88 fd 03 01                        	MULSS XMM4,dword ptr [0x0103fd88]
  00517007:	f3 0f 58 e2                                    	ADDSS XMM4,XMM2
  0051700b:	0f 28 c2                                       	MOVAPS XMM0,XMM2
  0051700e:	33 c0                                          	XOR EAX,EAX
  00517010:	f3 0f 5e cf                                    	DIVSS XMM1,XMM7
  00517014:	f3 0f 5e c4                                    	DIVSS XMM0,XMM4
  00517018:	0f 2f c8                                       	COMISS XMM1,XMM0
  0051701b:	f3 0f 11 7c 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM7
  00517021:	0f 28 ea                                       	MOVAPS XMM5,XMM2
  00517024:	76 45                                          	JBE 0x0051706b
  00517026:	f3 0f 10 61 38                                 	MOVSS XMM4,dword ptr [ECX + 0x38]
  0051702b:	f3 0f 11 64 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM4
  00517031:	0f 28 fa                                       	MOVAPS XMM7,XMM2
  00517034:	f3 0f 5c f8                                    	SUBSS XMM7,XMM0
  00517038:	f3 0f 59 fb                                    	MULSS XMM7,XMM3
  0051703c:	f3 0f 58 f8                                    	ADDSS XMM7,XMM0
  00517040:	0f 28 e0                                       	MOVAPS XMM4,XMM0
  00517043:	0f 28 c7                                       	MOVAPS XMM0,XMM7
  00517046:	f3 0f 10 7c 24 08                              	MOVSS XMM7,dword ptr [ESP + 0x8]
  0051704c:	f3 0f 59 ee                                    	MULSS XMM5,XMM6
  00517050:	83 c0 01                                       	ADD EAX,0x1
  00517053:	0f 2f fd                                       	COMISS XMM7,XMM5
  00517056:	77 58                                          	JA 0x005170b0
  00517058:	0f 2f c8                                       	COMISS XMM1,XMM0
  0051705b:	77 d4                                          	JA 0x00517031
  0051705d:	85 c0                                          	TEST EAX,EAX
  0051705f:	0f 85 ea 00 00 00                              	JNZ 0x0051714f
  00517065:	f3 0f 10 7c 24 04                              	MOVSS XMM7,dword ptr [ESP + 0x4]
  0051706b:	f3 0f 59 05 7c 3f fb 00                        	MULSS XMM0,dword ptr [0x00fb3f7c]
  00517073:	f3 0f 5e c8                                    	DIVSS XMM1,XMM0
  00517077:	f3 0f 59 0d 10 bf fb 00                        	MULSS XMM1,dword ptr [0x00fbbf10]
  0051707f:	f3 0f 10 c9                                    	MOVSS XMM1,XMM1
  00517083:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00517087:	0f 29 4c 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM1
  0051708c:	d9 44 24 10                                    	FLD float ptr [ESP + 0x10]
  00517090:	d9 ff                                          	FCOS
  00517092:	d9 5c 24 0c                                    	FSTP float ptr [ESP + 0xc]
  00517096:	f3 0f 10 44 24 0c                              	MOVSS XMM0,dword ptr [ESP + 0xc]
  0051709c:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  005170a0:	0f 29 44 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM0
  005170a5:	f3 0f 10 44 24 10                              	MOVSS XMM0,dword ptr [ESP + 0x10]
  005170ab:	e9 0a 01 00 00                                 	JMP 0x005171ba
  005170b0:	f3 0f 10 35 b4 b5 f9 00                        	MOVSS XMM6,dword ptr [0x00f9b5b4]
  005170b8:	0f 28 d8                                       	MOVAPS XMM3,XMM0
  005170bb:	f3 0f 5c dc                                    	SUBSS XMM3,XMM4
  005170bf:	f3 0f 59 de                                    	MULSS XMM3,XMM6
  005170c3:	0f 28 fb                                       	MOVAPS XMM7,XMM3
  005170c6:	f3 0f 58 fc                                    	ADDSS XMM7,XMM4
  005170ca:	0f 2f cf                                       	COMISS XMM1,XMM7
  005170cd:	76 8e                                          	JBE 0x0051705d
  005170cf:	0f 2f c8                                       	COMISS XMM1,XMM0
  005170d2:	76 08                                          	JBE 0x005170dc
  005170d4:	0f 57 c0                                       	XORPS XMM0,XMM0
  005170d7:	e9 d8 00 00 00                                 	JMP 0x005171b4
  005170dc:	25 01 00 00 80                                 	AND EAX,0x80000001
  005170e1:	f3 0f 58 dc                                    	ADDSS XMM3,XMM4
  005170e5:	f3 0f 5c c3                                    	SUBSS XMM0,XMM3
  005170e9:	f3 0f 59 05 88 fd 03 01                        	MULSS XMM0,dword ptr [0x0103fd88]
  005170f1:	f3 0f 5c cb                                    	SUBSS XMM1,XMM3
  005170f5:	f3 0f 5e c8                                    	DIVSS XMM1,XMM0
  005170f9:	f3 0f 59 0d 10 bf fb 00                        	MULSS XMM1,dword ptr [0x00fbbf10]
  00517101:	f3 0f 10 c9                                    	MOVSS XMM1,XMM1
  00517105:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00517109:	0f 29 4c 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM1
  0051710e:	d9 44 24 10                                    	FLD float ptr [ESP + 0x10]
  00517112:	d9 ff                                          	FCOS
  00517114:	d9 5c 24 0c                                    	FSTP float ptr [ESP + 0xc]
  00517118:	f3 0f 10 44 24 0c                              	MOVSS XMM0,dword ptr [ESP + 0xc]
  0051711e:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00517122:	0f 29 44 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM0
  00517127:	f3 0f 10 44 24 10                              	MOVSS XMM0,dword ptr [ESP + 0x10]
  0051712d:	f3 0f 58 c2                                    	ADDSS XMM0,XMM2
  00517131:	f3 0f 59 c6                                    	MULSS XMM0,XMM6
  00517135:	79 05                                          	JNS 0x0051713c
  00517137:	48                                             	DEC EAX
  00517138:	83 c8 fe                                       	OR EAX,0xfffffffe
  0051713b:	40                                             	INC EAX
  0051713c:	74 76                                          	JZ 0x005171b4
  0051713e:	f3 0f 10 0d f0 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f0]
  00517146:	f3 0f 5c c8                                    	SUBSS XMM1,XMM0
  0051714a:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  0051714d:	eb 65                                          	JMP 0x005171b4
  0051714f:	25 01 00 00 80                                 	AND EAX,0x80000001
  00517154:	f3 0f 5c cc                                    	SUBSS XMM1,XMM4
  00517158:	f3 0f 5c c4                                    	SUBSS XMM0,XMM4
  0051715c:	f3 0f 59 05 88 fd 03 01                        	MULSS XMM0,dword ptr [0x0103fd88]
  00517164:	f3 0f 5e c8                                    	DIVSS XMM1,XMM0
  00517168:	f3 0f 59 0d 10 bf fb 00                        	MULSS XMM1,dword ptr [0x00fbbf10]
  00517170:	f3 0f 10 c9                                    	MOVSS XMM1,XMM1
  00517174:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00517178:	0f 29 4c 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM1
  0051717d:	d9 44 24 10                                    	FLD float ptr [ESP + 0x10]
  00517181:	d9 fe                                          	FSIN
  00517183:	d9 5c 24 0c                                    	FSTP float ptr [ESP + 0xc]
  00517187:	f3 0f 10 44 24 0c                              	MOVSS XMM0,dword ptr [ESP + 0xc]
  0051718d:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00517191:	0f 29 44 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM0
  00517196:	f3 0f 10 4c 24 10                              	MOVSS XMM1,dword ptr [ESP + 0x10]
  0051719c:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  0051719f:	79 05                                          	JNS 0x005171a6
  005171a1:	48                                             	DEC EAX
  005171a2:	83 c8 fe                                       	OR EAX,0xfffffffe
  005171a5:	40                                             	INC EAX
  005171a6:	74 0c                                          	JZ 0x005171b4
  005171a8:	f3 0f 10 05 f0 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f0]
  005171b0:	f3 0f 5c c1                                    	SUBSS XMM0,XMM1
  005171b4:	f3 0f 10 7c 24 04                              	MOVSS XMM7,dword ptr [ESP + 0x4]
  005171ba:	0f 2f 3d cc 4c 0f 01                           	COMISS XMM7,dword ptr [0x010f4ccc]
  005171c1:	f3 0f 59 c5                                    	MULSS XMM0,XMM5
  005171c5:	f3 0f 59 c7                                    	MULSS XMM0,XMM7
  005171c9:	76 14                                          	JBE 0x005171df
  005171cb:	f3 0f 5c f8                                    	SUBSS XMM7,XMM0
  005171cf:	f3 0f 11 7c 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM7
  005171d5:	d9 44 24 08                                    	FLD float ptr [ESP + 0x8]
  005171d9:	8b e5                                          	MOV ESP,EBP
  005171db:	5d                                             	POP EBP
  005171dc:	c2 04 00                                       	RET 0x4
  005171df:	f3 0f 10 0d f0 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f0]
  005171e7:	f3 0f 5c c8                                    	SUBSS XMM1,XMM0
  005171eb:	f3 0f 11 4c 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM1
  005171f1:	d9 44 24 08                                    	FLD float ptr [ESP + 0x8]
  005171f5:	8b e5                                          	MOV ESP,EBP
  005171f7:	5d                                             	POP EBP
  005171f8:	c2 04 00                                       	RET 0x4
  005171fb:	f3 0f 10 41 34                                 	MOVSS XMM0,dword ptr [ECX + 0x34]
  00517200:	f3 0f 10 61 38                                 	MOVSS XMM4,dword ptr [ECX + 0x38]
  00517205:	0f 28 e8                                       	MOVAPS XMM5,XMM0
  00517208:	f3 0f 58 ec                                    	ADDSS XMM5,XMM4
  0051720c:	0f 2e eb                                       	UCOMISS XMM5,XMM3
  0051720f:	9f                                             	LAHF
  00517210:	f6 c4 44                                       	TEST AH,0x44
  00517213:	f3 0f 11 64 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM4
  00517219:	f3 0f 11 44 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM0
  0051721f:	7b 6e                                          	JNP 0x0051728f
  00517221:	0f 2f c1                                       	COMISS XMM0,XMM1
  00517224:	f3 0f 10 1d 88 fd 03 01                        	MOVSS XMM3,dword ptr [0x0103fd88]
  0051722c:	f3 0f 5c d8                                    	SUBSS XMM3,XMM0
  00517230:	f3 0f 5c dc                                    	SUBSS XMM3,XMM4
  00517234:	0f 28 ea                                       	MOVAPS XMM5,XMM2
  00517237:	f3 0f 5e eb                                    	DIVSS XMM5,XMM3
  0051723b:	f3 0f 11 6c 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM5
  00517241:	76 15                                          	JBE 0x00517258
  00517243:	d9 44 24 04                                    	FLD float ptr [ESP + 0x4]
  00517247:	d8 74 24 0c                                    	FDIV float ptr [ESP + 0xc]
  0051724b:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  0051724e:	dc c9                                          	FMUL ST1
  00517250:	de c9                                          	FMULP
  00517252:	8b e5                                          	MOV ESP,EBP
  00517254:	5d                                             	POP EBP
  00517255:	c2 04 00                                       	RET 0x4
  00517258:	f3 0f 5c d4                                    	SUBSS XMM2,XMM4
  0051725c:	0f 2f d1                                       	COMISS XMM2,XMM1
  0051725f:	76 13                                          	JBE 0x00517274
  00517261:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  00517264:	dc c0                                          	FADD ST0,ST0
  00517266:	d8 64 24 0c                                    	FSUB float ptr [ESP + 0xc]
  0051726a:	d8 4c 24 04                                    	FMUL float ptr [ESP + 0x4]
  0051726e:	8b e5                                          	MOV ESP,EBP
  00517270:	5d                                             	POP EBP
  00517271:	c2 04 00                                       	RET 0x4
  00517274:	d9 e8                                          	FLD1
  00517276:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  00517279:	d8 e9                                          	FSUBR ST0,ST1
  0051727b:	d9 44 24 04                                    	FLD float ptr [ESP + 0x4]
  0051727f:	d8 74 24 08                                    	FDIV float ptr [ESP + 0x8]
  00517283:	d8 c9                                          	FMUL ST1
  00517285:	de c9                                          	FMULP
  00517287:	de e9                                          	FSUBP
  00517289:	8b e5                                          	MOV ESP,EBP
  0051728b:	5d                                             	POP EBP
  0051728c:	c2 04 00                                       	RET 0x4
  0051728f:	d9 45 08                                       	FLD float ptr [EBP + 0x8]
  00517292:	8b e5                                          	MOV ESP,EBP
  00517294:	5d                                             	POP EBP
  00517295:	c2 04 00                                       	RET 0x4
