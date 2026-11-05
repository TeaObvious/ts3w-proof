# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00ab20b0 (Lot_GetWorldToLocalMatrix)
Paired actual Ghidra pseudocode: 00AB20B0_Lot_GetWorldToLocalMatrix.c
Body [0x00ab20b0,0x00ab224c); 412 pristine original bytes / 102 actual saved Listing instructions.
Original instruction bytes and actual saved Listing text; inferred prototypes are retained.
Physical registers, AL results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00ab20b0 <original>:
  00ab20b0:	55                                             	PUSH EBP
  00ab20b1:	8b ec                                          	MOV EBP,ESP
  00ab20b3:	83 e4 f0                                       	AND ESP,0xfffffff0
  00ab20b6:	83 ec 6c                                       	SUB ESP,0x6c
  00ab20b9:	80 b9 44 04 00 00 00                           	CMP byte ptr [ECX + 0x444],0x0
  00ab20c0:	56                                             	PUSH ESI
  00ab20c1:	0f 84 ed 00 00 00                              	JZ 0x00ab21b4
  00ab20c7:	8b 81 60 04 00 00                              	MOV EAX,dword ptr [ECX + 0x460]
  00ab20cd:	0b 81 64 04 00 00                              	OR EAX,dword ptr [ECX + 0x464]
  00ab20d3:	0f 84 db 00 00 00                              	JZ 0x00ab21b4
  00ab20d9:	8d 54 24 10                                    	LEA EDX,[ESP + 0x10]
  00ab20dd:	52                                             	PUSH EDX
  00ab20de:	e8 1d fa ff ff                                 	CALL 0x00ab1b00
  00ab20e3:	0f 28 08                                       	MOVAPS XMM1,xmmword ptr [EAX]
  00ab20e6:	f3 0f 10 05 80 5d 06 01                        	MOVSS XMM0,dword ptr [0x01065d80]
  00ab20ee:	f3 0f 10 15 b4 b5 f9 00                        	MOVSS XMM2,dword ptr [0x00f9b5b4]
  00ab20f6:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00ab20fa:	0f 59 c1                                       	MULPS XMM0,XMM1
  00ab20fd:	8b 75 08                                       	MOV ESI,dword ptr [EBP + 0x8]
  00ab2100:	0f 57 c9                                       	XORPS XMM1,XMM1
  00ab2103:	0f 5c c8                                       	SUBPS XMM1,XMM0
  00ab2106:	0f 59 c8                                       	MULPS XMM1,XMM0
  00ab2109:	0f c6 d2 00                                    	SHUFPS XMM2,XMM2,0x0
  00ab210d:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00ab2110:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00ab2113:	0f c6 d0 09                                    	SHUFPS XMM2,XMM0,0x9
  00ab2117:	0f 59 d0                                       	MULPS XMM2,XMM0
  00ab211a:	0f 28 d8                                       	MOVAPS XMM3,XMM0
  00ab211d:	0f c6 d8 ff                                    	SHUFPS XMM3,XMM0,0xff
  00ab2121:	0f c6 c0 12                                    	SHUFPS XMM0,XMM0,0x12
  00ab2125:	0f 59 d8                                       	MULPS XMM3,XMM0
  00ab2128:	0f 28 c3                                       	MOVAPS XMM0,XMM3
  00ab212b:	0f 58 c2                                       	ADDPS XMM0,XMM2
  00ab212e:	0f 5c d3                                       	SUBPS XMM2,XMM3
  00ab2131:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  00ab2134:	0f c6 d9 09                                    	SHUFPS XMM3,XMM1,0x9
  00ab2138:	0f 58 d9                                       	ADDPS XMM3,XMM1
  00ab213b:	0f 28 cb                                       	MOVAPS XMM1,XMM3
  00ab213e:	0f c6 c8 01                                    	SHUFPS XMM1,XMM0,0x1
  00ab2142:	0f 28 e2                                       	MOVAPS XMM4,XMM2
  00ab2145:	0f c6 e3 20                                    	SHUFPS XMM4,XMM3,0x20
  00ab2149:	0f c6 e0 18                                    	SHUFPS XMM4,XMM0,0x18
  00ab214d:	0f c6 c2 12                                    	SHUFPS XMM0,XMM2,0x12
  00ab2151:	0f c6 ca 28                                    	SHUFPS XMM1,XMM2,0x28
  00ab2155:	0f 28 50 10                                    	MOVAPS XMM2,xmmword ptr [EAX + 0x10]
  00ab2159:	0f c6 c3 08                                    	SHUFPS XMM0,XMM3,0x8
  00ab215d:	f3 0f 10 1d f8 98 f9 00                        	MOVSS XMM3,dword ptr [0x00f998f8]
  00ab2165:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  00ab2169:	50                                             	PUSH EAX
  00ab216a:	0f 28 ea                                       	MOVAPS XMM5,XMM2
  00ab216d:	0f c6 db 00                                    	SHUFPS XMM3,XMM3,0x0
  00ab2171:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  00ab2175:	0f c6 eb fa                                    	SHUFPS XMM5,XMM3,0xfa
  00ab2179:	0f 28 1d 70 06 1b 01                           	MOVAPS XMM3,xmmword ptr [0x011b0670]
  00ab2180:	51                                             	PUSH ECX
  00ab2181:	0f c6 d5 84                                    	SHUFPS XMM2,XMM5,0x84
  00ab2185:	0f 54 cb                                       	ANDPS XMM1,XMM3
  00ab2188:	0f 54 e3                                       	ANDPS XMM4,XMM3
  00ab218b:	0f 54 c3                                       	ANDPS XMM0,XMM3
  00ab218e:	56                                             	PUSH ESI
  00ab218f:	0f 29 4c 24 3c                                 	MOVAPS xmmword ptr [ESP + 0x3c],XMM1
  00ab2194:	0f 29 64 24 4c                                 	MOVAPS xmmword ptr [ESP + 0x4c],XMM4
  00ab2199:	0f 29 44 24 5c                                 	MOVAPS xmmword ptr [ESP + 0x5c],XMM0
  00ab219e:	0f 29 54 24 6c                                 	MOVAPS xmmword ptr [ESP + 0x6c],XMM2
  00ab21a3:	e8 78 00 ab ff                                 	CALL 0x00562220
  00ab21a8:	83 c4 0c                                       	ADD ESP,0xc
  00ab21ab:	8b c6                                          	MOV EAX,ESI
  00ab21ad:	5e                                             	POP ESI
  00ab21ae:	8b e5                                          	MOV ESP,EBP
  00ab21b0:	5d                                             	POP EBP
  00ab21b1:	c2 04 00                                       	RET 0x4
  00ab21b4:	0f 57 c0                                       	XORPS XMM0,XMM0
  00ab21b7:	f3 0f 10 0d f8 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f8]
  00ab21bf:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  00ab21c2:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00ab21c8:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  00ab21ce:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  00ab21d4:	f3 0f 11 4c 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM1
  00ab21da:	0f 28 54 24 10                                 	MOVAPS XMM2,xmmword ptr [ESP + 0x10]
  00ab21df:	0f 29 10                                       	MOVAPS xmmword ptr [EAX],XMM2
  00ab21e2:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00ab21e8:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  00ab21ee:	f3 0f 11 4c 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM1
  00ab21f4:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00ab21fa:	0f 28 54 24 10                                 	MOVAPS XMM2,xmmword ptr [ESP + 0x10]
  00ab21ff:	0f 29 50 10                                    	MOVAPS xmmword ptr [EAX + 0x10],XMM2
  00ab2203:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00ab2209:	f3 0f 11 4c 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM1
  00ab220f:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  00ab2215:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00ab221b:	0f 28 54 24 10                                 	MOVAPS XMM2,xmmword ptr [ESP + 0x10]
  00ab2220:	f3 0f 11 4c 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM1
  00ab2226:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  00ab222c:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  00ab2232:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00ab2238:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00ab223d:	0f 29 50 20                                    	MOVAPS xmmword ptr [EAX + 0x20],XMM2
  00ab2241:	0f 29 40 30                                    	MOVAPS xmmword ptr [EAX + 0x30],XMM0
  00ab2245:	5e                                             	POP ESI
  00ab2246:	8b e5                                          	MOV ESP,EBP
  00ab2248:	5d                                             	POP EBP
  00ab2249:	c2 04 00                                       	RET 0x4
