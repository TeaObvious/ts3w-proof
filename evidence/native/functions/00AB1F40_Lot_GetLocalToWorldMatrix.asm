# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00ab1f40 (Lot_GetLocalToWorldMatrix)
Paired actual Ghidra pseudocode: 00AB1F40_Lot_GetLocalToWorldMatrix.c
Body [0x00ab1f40,0x00ab20a4); 356 pristine original bytes / 88 actual saved Listing instructions.
Original instruction bytes and actual saved Listing text; inferred prototypes are retained.
Physical registers, AL results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00ab1f40 <original>:
  00ab1f40:	55                                             	PUSH EBP
  00ab1f41:	8b ec                                          	MOV EBP,ESP
  00ab1f43:	83 e4 f0                                       	AND ESP,0xfffffff0
  00ab1f46:	83 ec 20                                       	SUB ESP,0x20
  00ab1f49:	80 b9 44 04 00 00 00                           	CMP byte ptr [ECX + 0x444],0x0
  00ab1f50:	0f 84 bf 00 00 00                              	JZ 0x00ab2015
  00ab1f56:	8d 04 24                                       	LEA EAX,[ESP]
  00ab1f59:	50                                             	PUSH EAX
  00ab1f5a:	e8 a1 fb ff ff                                 	CALL 0x00ab1b00
  00ab1f5f:	0f 28 08                                       	MOVAPS XMM1,xmmword ptr [EAX]
  00ab1f62:	f3 0f 10 05 80 5d 06 01                        	MOVSS XMM0,dword ptr [0x01065d80]
  00ab1f6a:	f3 0f 10 15 b4 b5 f9 00                        	MOVSS XMM2,dword ptr [0x00f9b5b4]
  00ab1f72:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00ab1f76:	0f 59 c1                                       	MULPS XMM0,XMM1
  00ab1f79:	0f 57 c9                                       	XORPS XMM1,XMM1
  00ab1f7c:	0f 5c c8                                       	SUBPS XMM1,XMM0
  00ab1f7f:	0f 59 c8                                       	MULPS XMM1,XMM0
  00ab1f82:	0f c6 d2 00                                    	SHUFPS XMM2,XMM2,0x0
  00ab1f86:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00ab1f89:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  00ab1f8c:	0f c6 d0 09                                    	SHUFPS XMM2,XMM0,0x9
  00ab1f90:	0f 59 d0                                       	MULPS XMM2,XMM0
  00ab1f93:	0f 28 d8                                       	MOVAPS XMM3,XMM0
  00ab1f96:	0f c6 d8 ff                                    	SHUFPS XMM3,XMM0,0xff
  00ab1f9a:	0f c6 c0 12                                    	SHUFPS XMM0,XMM0,0x12
  00ab1f9e:	0f 59 d8                                       	MULPS XMM3,XMM0
  00ab1fa1:	0f 28 c3                                       	MOVAPS XMM0,XMM3
  00ab1fa4:	0f 58 c2                                       	ADDPS XMM0,XMM2
  00ab1fa7:	0f 5c d3                                       	SUBPS XMM2,XMM3
  00ab1faa:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  00ab1fad:	0f c6 d9 09                                    	SHUFPS XMM3,XMM1,0x9
  00ab1fb1:	0f 58 d9                                       	ADDPS XMM3,XMM1
  00ab1fb4:	0f 28 cb                                       	MOVAPS XMM1,XMM3
  00ab1fb7:	0f c6 c8 01                                    	SHUFPS XMM1,XMM0,0x1
  00ab1fbb:	0f 28 e2                                       	MOVAPS XMM4,XMM2
  00ab1fbe:	0f c6 e3 20                                    	SHUFPS XMM4,XMM3,0x20
  00ab1fc2:	0f c6 e0 18                                    	SHUFPS XMM4,XMM0,0x18
  00ab1fc6:	0f c6 c2 12                                    	SHUFPS XMM0,XMM2,0x12
  00ab1fca:	0f c6 c3 08                                    	SHUFPS XMM0,XMM3,0x8
  00ab1fce:	f3 0f 10 1d f8 98 f9 00                        	MOVSS XMM3,dword ptr [0x00f998f8]
  00ab1fd6:	0f c6 ca 28                                    	SHUFPS XMM1,XMM2,0x28
  00ab1fda:	0f 28 50 10                                    	MOVAPS XMM2,xmmword ptr [EAX + 0x10]
  00ab1fde:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  00ab1fe1:	0f 28 ea                                       	MOVAPS XMM5,XMM2
  00ab1fe4:	0f c6 db 00                                    	SHUFPS XMM3,XMM3,0x0
  00ab1fe8:	0f c6 eb fa                                    	SHUFPS XMM5,XMM3,0xfa
  00ab1fec:	0f 28 1d 70 06 1b 01                           	MOVAPS XMM3,xmmword ptr [0x011b0670]
  00ab1ff3:	0f 54 cb                                       	ANDPS XMM1,XMM3
  00ab1ff6:	0f 29 08                                       	MOVAPS xmmword ptr [EAX],XMM1
  00ab1ff9:	0f 54 e3                                       	ANDPS XMM4,XMM3
  00ab1ffc:	0f 29 60 10                                    	MOVAPS xmmword ptr [EAX + 0x10],XMM4
  00ab2000:	0f 54 c3                                       	ANDPS XMM0,XMM3
  00ab2003:	0f c6 d5 84                                    	SHUFPS XMM2,XMM5,0x84
  00ab2007:	0f 29 40 20                                    	MOVAPS xmmword ptr [EAX + 0x20],XMM0
  00ab200b:	0f 29 50 30                                    	MOVAPS xmmword ptr [EAX + 0x30],XMM2
  00ab200f:	8b e5                                          	MOV ESP,EBP
  00ab2011:	5d                                             	POP EBP
  00ab2012:	c2 04 00                                       	RET 0x4
  00ab2015:	0f 57 c0                                       	XORPS XMM0,XMM0
  00ab2018:	f3 0f 10 0d f8 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f8]
  00ab2020:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  00ab2023:	f3 0f 11 44 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM0
  00ab2029:	f3 0f 11 44 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM0
  00ab202f:	f3 0f 11 44 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM0
  00ab2035:	f3 0f 11 0c 24                                 	MOVSS dword ptr [ESP],XMM1
  00ab203a:	0f 28 14 24                                    	MOVAPS XMM2,xmmword ptr [ESP]
  00ab203e:	0f 29 10                                       	MOVAPS xmmword ptr [EAX],XMM2
  00ab2041:	f3 0f 11 44 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM0
  00ab2047:	f3 0f 11 44 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM0
  00ab204d:	f3 0f 11 4c 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM1
  00ab2053:	f3 0f 11 04 24                                 	MOVSS dword ptr [ESP],XMM0
  00ab2058:	0f 28 14 24                                    	MOVAPS XMM2,xmmword ptr [ESP]
  00ab205c:	0f 29 50 10                                    	MOVAPS xmmword ptr [EAX + 0x10],XMM2
  00ab2060:	f3 0f 11 44 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM0
  00ab2066:	f3 0f 11 4c 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM1
  00ab206c:	f3 0f 11 44 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM0
  00ab2072:	f3 0f 11 04 24                                 	MOVSS dword ptr [ESP],XMM0
  00ab2077:	0f 28 14 24                                    	MOVAPS XMM2,xmmword ptr [ESP]
  00ab207b:	f3 0f 11 4c 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM1
  00ab2081:	f3 0f 11 44 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM0
  00ab2087:	f3 0f 11 44 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM0
  00ab208d:	f3 0f 11 04 24                                 	MOVSS dword ptr [ESP],XMM0
  00ab2092:	0f 28 04 24                                    	MOVAPS XMM0,xmmword ptr [ESP]
  00ab2096:	0f 29 50 20                                    	MOVAPS xmmword ptr [EAX + 0x20],XMM2
  00ab209a:	0f 29 40 30                                    	MOVAPS xmmword ptr [EAX + 0x30],XMM0
  00ab209e:	8b e5                                          	MOV ESP,EBP
  00ab20a0:	5d                                             	POP EBP
  00ab20a1:	c2 04 00                                       	RET 0x4
