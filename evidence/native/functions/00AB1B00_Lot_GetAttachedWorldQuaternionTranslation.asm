# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00ab1b00 (Lot_GetAttachedWorldQuaternionTranslation)
Paired actual Ghidra pseudocode: 00AB1B00_Lot_GetAttachedWorldQuaternionTranslation.c
Body [0x00ab1b00,0x00ab1cac); 428 pristine original bytes / 118 actual saved Listing instructions.
Original instruction bytes and actual saved Listing text; inferred prototypes are retained.
Physical registers, AL results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00ab1b00 <original>:
  00ab1b00:	55                                             	PUSH EBP
  00ab1b01:	8b ec                                          	MOV EBP,ESP
  00ab1b03:	83 e4 f0                                       	AND ESP,0xfffffff0
  00ab1b06:	83 ec 4c                                       	SUB ESP,0x4c
  00ab1b09:	56                                             	PUSH ESI
  00ab1b0a:	8b f1                                          	MOV ESI,ECX
  00ab1b0c:	80 be 44 04 00 00 00                           	CMP byte ptr [ESI + 0x444],0x0
  00ab1b13:	0f 84 57 01 00 00                              	JZ 0x00ab1c70
  00ab1b19:	8b 86 60 04 00 00                              	MOV EAX,dword ptr [ESI + 0x460]
  00ab1b1f:	0b 86 64 04 00 00                              	OR EAX,dword ptr [ESI + 0x464]
  00ab1b25:	0f 84 45 01 00 00                              	JZ 0x00ab1c70
  00ab1b2b:	e8 40 5a e8 ff                                 	CALL 0x00937570
  00ab1b30:	8b 8e 64 04 00 00                              	MOV ECX,dword ptr [ESI + 0x464]
  00ab1b36:	8b 96 60 04 00 00                              	MOV EDX,dword ptr [ESI + 0x460]
  00ab1b3c:	51                                             	PUSH ECX
  00ab1b3d:	52                                             	PUSH EDX
  00ab1b3e:	8b c8                                          	MOV ECX,EAX
  00ab1b40:	e8 3b 64 e8 ff                                 	CALL 0x00937f80
  00ab1b45:	85 c0                                          	TEST EAX,EAX
  00ab1b47:	0f 84 23 01 00 00                              	JZ 0x00ab1c70
  00ab1b4d:	8b 0d 58 a1 1e 01                              	MOV ECX,dword ptr [0x011ea158]
  00ab1b53:	51                                             	PUSH ECX
  00ab1b54:	8b c8                                          	MOV ECX,EAX
  00ab1b56:	e8 05 27 e8 ff                                 	CALL 0x00934260
  00ab1b5b:	85 c0                                          	TEST EAX,EAX
  00ab1b5d:	0f 84 0d 01 00 00                              	JZ 0x00ab1c70
  00ab1b63:	0f 28 86 70 04 00 00                           	MOVAPS XMM0,xmmword ptr [ESI + 0x470]
  00ab1b6a:	8d 54 24 30                                    	LEA EDX,[ESP + 0x30]
  00ab1b6e:	0f 29 44 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM0
  00ab1b73:	0f 28 86 80 04 00 00                           	MOVAPS XMM0,xmmword ptr [ESI + 0x480]
  00ab1b7a:	52                                             	PUSH EDX
  00ab1b7b:	8b c8                                          	MOV ECX,EAX
  00ab1b7d:	0f 29 44 24 24                                 	MOVAPS xmmword ptr [ESP + 0x24],XMM0
  00ab1b82:	e8 89 5d ea ff                                 	CALL 0x00957910
  00ab1b87:	0f 28 00                                       	MOVAPS XMM0,xmmword ptr [EAX]
  00ab1b8a:	0f 28 5c 24 20                                 	MOVAPS XMM3,xmmword ptr [ESP + 0x20]
  00ab1b8f:	0f 28 d3                                       	MOVAPS XMM2,XMM3
  00ab1b92:	0f c6 d3 09                                    	SHUFPS XMM2,XMM3,0x9
  00ab1b96:	0f 28 cb                                       	MOVAPS XMM1,XMM3
  00ab1b99:	0f c6 cb 12                                    	SHUFPS XMM1,XMM3,0x12
  00ab1b9d:	0f 28 e8                                       	MOVAPS XMM5,XMM0
  00ab1ba0:	0f c6 e8 09                                    	SHUFPS XMM5,XMM0,0x9
  00ab1ba4:	0f 59 cd                                       	MULPS XMM1,XMM5
  00ab1ba7:	0f 28 f0                                       	MOVAPS XMM6,XMM0
  00ab1baa:	0f c6 f0 12                                    	SHUFPS XMM6,XMM0,0x12
  00ab1bae:	0f 59 d6                                       	MULPS XMM2,XMM6
  00ab1bb1:	0f 5c ca                                       	SUBPS XMM1,XMM2
  00ab1bb4:	0f 28 f8                                       	MOVAPS XMM7,XMM0
  00ab1bb7:	0f c6 f8 ff                                    	SHUFPS XMM7,XMM0,0xff
  00ab1bbb:	0f 28 d7                                       	MOVAPS XMM2,XMM7
  00ab1bbe:	0f 59 d3                                       	MULPS XMM2,XMM3
  00ab1bc1:	0f 58 ca                                       	ADDPS XMM1,XMM2
  00ab1bc4:	0f 28 e1                                       	MOVAPS XMM4,XMM1
  00ab1bc7:	0f c6 e1 09                                    	SHUFPS XMM4,XMM1,0x9
  00ab1bcb:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  00ab1bce:	0f c6 d1 12                                    	SHUFPS XMM2,XMM1,0x12
  00ab1bd2:	f3 0f 10 0d 88 fd 03 01                        	MOVSS XMM1,dword ptr [0x0103fd88]
  00ab1bda:	0f 59 d5                                       	MULPS XMM2,XMM5
  00ab1bdd:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  00ab1be1:	0f 59 e6                                       	MULPS XMM4,XMM6
  00ab1be4:	0f 5c d4                                       	SUBPS XMM2,XMM4
  00ab1be7:	0f 59 d1                                       	MULPS XMM2,XMM1
  00ab1bea:	0f 28 48 10                                    	MOVAPS XMM1,xmmword ptr [EAX + 0x10]
  00ab1bee:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  00ab1bf1:	0f 58 d3                                       	ADDPS XMM2,XMM3
  00ab1bf4:	0f 28 5c 24 10                                 	MOVAPS XMM3,xmmword ptr [ESP + 0x10]
  00ab1bf9:	0f 58 d1                                       	ADDPS XMM2,XMM1
  00ab1bfc:	0f 28 cb                                       	MOVAPS XMM1,XMM3
  00ab1bff:	0f c6 cb 09                                    	SHUFPS XMM1,XMM3,0x9
  00ab1c03:	0f 59 ce                                       	MULPS XMM1,XMM6
  00ab1c06:	0f 29 4c 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM1
  00ab1c0b:	0f 28 cb                                       	MOVAPS XMM1,XMM3
  00ab1c0e:	0f c6 cb 12                                    	SHUFPS XMM1,XMM3,0x12
  00ab1c12:	0f 59 cd                                       	MULPS XMM1,XMM5
  00ab1c15:	0f 28 6c 24 10                                 	MOVAPS XMM5,xmmword ptr [ESP + 0x10]
  00ab1c1a:	0f 5c cd                                       	SUBPS XMM1,XMM5
  00ab1c1d:	0f 28 e3                                       	MOVAPS XMM4,XMM3
  00ab1c20:	0f c6 e3 ff                                    	SHUFPS XMM4,XMM3,0xff
  00ab1c24:	0f 28 ef                                       	MOVAPS XMM5,XMM7
  00ab1c27:	0f 59 eb                                       	MULPS XMM5,XMM3
  00ab1c2a:	0f 58 cd                                       	ADDPS XMM1,XMM5
  00ab1c2d:	0f 28 e8                                       	MOVAPS XMM5,XMM0
  00ab1c30:	0f 59 c3                                       	MULPS XMM0,XMM3
  00ab1c33:	0f 59 ec                                       	MULPS XMM5,XMM4
  00ab1c36:	0f 58 cd                                       	ADDPS XMM1,XMM5
  00ab1c39:	0f 28 d8                                       	MOVAPS XMM3,XMM0
  00ab1c3c:	0f c6 d8 02                                    	SHUFPS XMM3,XMM0,0x2
  00ab1c40:	0f 28 e8                                       	MOVAPS XMM5,XMM0
  00ab1c43:	0f c6 e8 01                                    	SHUFPS XMM5,XMM0,0x1
  00ab1c47:	0f 58 dd                                       	ADDPS XMM3,XMM5
  00ab1c4a:	0f 58 d8                                       	ADDPS XMM3,XMM0
  00ab1c4d:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  00ab1c50:	0f c6 db 00                                    	SHUFPS XMM3,XMM3,0x0
  00ab1c54:	0f 59 e7                                       	MULPS XMM4,XMM7
  00ab1c57:	0f 5c e3                                       	SUBPS XMM4,XMM3
  00ab1c5a:	0f c6 c4 0a                                    	SHUFPS XMM0,XMM4,0xa
  00ab1c5e:	0f c6 c8 84                                    	SHUFPS XMM1,XMM0,0x84
  00ab1c62:	0f 29 08                                       	MOVAPS xmmword ptr [EAX],XMM1
  00ab1c65:	0f 29 50 10                                    	MOVAPS xmmword ptr [EAX + 0x10],XMM2
  00ab1c69:	5e                                             	POP ESI
  00ab1c6a:	8b e5                                          	MOV ESP,EBP
  00ab1c6c:	5d                                             	POP EBP
  00ab1c6d:	c2 04 00                                       	RET 0x4
  00ab1c70:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00ab1c78:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  00ab1c7b:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00ab1c81:	0f 57 c0                                       	XORPS XMM0,XMM0
  00ab1c84:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  00ab1c8a:	f3 0f 11 44 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM0
  00ab1c90:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00ab1c96:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00ab1c9b:	0f 29 00                                       	MOVAPS xmmword ptr [EAX],XMM0
  00ab1c9e:	0f 57 c0                                       	XORPS XMM0,XMM0
  00ab1ca1:	0f 29 40 10                                    	MOVAPS xmmword ptr [EAX + 0x10],XMM0
  00ab1ca5:	5e                                             	POP ESI
  00ab1ca6:	8b e5                                          	MOV ESP,EBP
  00ab1ca8:	5d                                             	POP EBP
  00ab1ca9:	c2 04 00                                       	RET 0x4
