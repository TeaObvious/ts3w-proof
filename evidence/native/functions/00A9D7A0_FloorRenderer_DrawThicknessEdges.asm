# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00a9d7a0 (FloorRenderer_DrawThicknessEdges)
Paired actual Ghidra pseudocode: 00A9D7A0_FloorRenderer_DrawThicknessEdges.c
Envelope [0x00a9d7a0,0x00a9e01e); 2174 bytes; exact owned ranges: [0x00a9d7a0,0x00a9d97a),[0x00a9d980,0x00a9dfbd),[0x00a9dfc0,0x00a9e01e)
Owned: 2165 original bytes / 552 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00a9d7a0 <original>:
  00a9d7a0:	55                                             	PUSH EBP
  00a9d7a1:	8b ec                                          	MOV EBP,ESP
  00a9d7a3:	83 e4 f0                                       	AND ESP,0xfffffff0
  00a9d7a6:	81 ec 34 01 00 00                              	SUB ESP,0x134
  00a9d7ac:	53                                             	PUSH EBX
  00a9d7ad:	56                                             	PUSH ESI
  00a9d7ae:	57                                             	PUSH EDI
  00a9d7af:	8b f9                                          	MOV EDI,ECX
  00a9d7b1:	8b 47 0c                                       	MOV EAX,dword ptr [EDI + 0xc]
  00a9d7b4:	83 b8 e4 00 00 00 00                           	CMP dword ptr [EAX + 0xe4],0x0
  00a9d7bb:	8d 8c 24 20 01 00 00                           	LEA ECX,[ESP + 0x120]
  00a9d7c2:	0f 95 c0                                       	SETNZ AL
  00a9d7c5:	33 db                                          	XOR EBX,EBX
  00a9d7c7:	84 c0                                          	TEST AL,AL
  00a9d7c9:	0f 95 c3                                       	SETNZ BL
  00a9d7cc:	89 bc 24 80 00 00 00                           	MOV dword ptr [ESP + 0x80],EDI
  00a9d7d3:	88 44 24 1a                                    	MOV byte ptr [ESP + 0x1a],AL
  00a9d7d7:	83 c3 01                                       	ADD EBX,0x1
  00a9d7da:	89 5c 24 6c                                    	MOV dword ptr [ESP + 0x6c],EBX
  00a9d7de:	e8 9d be cf ff                                 	CALL 0x00799680
  00a9d7e3:	8b 8f 28 01 00 00                              	MOV ECX,dword ptr [EDI + 0x128]
  00a9d7e9:	8b 97 2c 01 00 00                              	MOV EDX,dword ptr [EDI + 0x12c]
  00a9d7ef:	6a 00                                          	PUSH 0x0
  00a9d7f1:	83 ec 10                                       	SUB ESP,0x10
  00a9d7f4:	8b c4                                          	MOV EAX,ESP
  00a9d7f6:	89 08                                          	MOV dword ptr [EAX],ECX
  00a9d7f8:	8b 8f 30 01 00 00                              	MOV ECX,dword ptr [EDI + 0x130]
  00a9d7fe:	89 50 04                                       	MOV dword ptr [EAX + 0x4],EDX
  00a9d801:	8b 97 34 01 00 00                              	MOV EDX,dword ptr [EDI + 0x134]
  00a9d807:	89 48 08                                       	MOV dword ptr [EAX + 0x8],ECX
  00a9d80a:	68 08 72 fe 00                                 	PUSH 0xfe7208
  00a9d80f:	89 50 0c                                       	MOV dword ptr [EAX + 0xc],EDX
  00a9d812:	e8 d9 28 d3 ff                                 	CALL 0x007d00f0
  00a9d817:	83 c4 04                                       	ADD ESP,0x4
  00a9d81a:	50                                             	PUSH EAX
  00a9d81b:	8d 8c 24 38 01 00 00                           	LEA ECX,[ESP + 0x138]
  00a9d822:	e8 09 c2 cf ff                                 	CALL 0x00799a30
  00a9d827:	68 78 46 06 01                                 	PUSH 0x1064678
  00a9d82c:	e8 bf 28 d3 ff                                 	CALL 0x007d00f0
  00a9d831:	83 c4 04                                       	ADD ESP,0x4
  00a9d834:	85 db                                          	TEST EBX,EBX
  00a9d836:	89 44 24 40                                    	MOV dword ptr [ESP + 0x40],EAX
  00a9d83a:	0f 86 41 02 00 00                              	JBE 0x00a9da81
  00a9d840:	0f 57 c0                                       	XORPS XMM0,XMM0
  00a9d843:	f3 0f 10 15 d8 44 06 01                        	MOVSS XMM2,dword ptr [0x010644d8]
  00a9d84b:	8b 75 08                                       	MOV ESI,dword ptr [EBP + 0x8]
  00a9d84e:	f3 0f 11 44 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM0
  00a9d854:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  00a9d85a:	f3 0f 11 44 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM0
  00a9d860:	f3 0f 11 44 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM0
  00a9d866:	0f 28 4c 24 20                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x20]
  00a9d86b:	f3 0f 11 44 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM0
  00a9d871:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  00a9d877:	f3 0f 11 54 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM2
  00a9d87d:	f3 0f 11 44 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM0
  00a9d883:	0f 29 8c 24 c0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xc0],XMM1
  00a9d88b:	0f 28 4c 24 20                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x20]
  00a9d890:	0f 29 8c 24 90 00 00 00                        	MOVAPS xmmword ptr [ESP + 0x90],XMM1
  00a9d898:	f3 0f 10 0d f8 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f8]
  00a9d8a0:	f3 0f 11 4c 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM1
  00a9d8a6:	f3 0f 11 4c 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM1
  00a9d8ac:	f3 0f 11 54 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM2
  00a9d8b2:	f3 0f 11 4c 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM1
  00a9d8b8:	0f 28 54 24 20                                 	MOVAPS XMM2,xmmword ptr [ESP + 0x20]
  00a9d8bd:	f3 0f 11 4c 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM1
  00a9d8c3:	f3 0f 11 4c 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM1
  00a9d8c9:	f3 0f 11 44 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM0
  00a9d8cf:	f3 0f 11 4c 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM1
  00a9d8d5:	0f 28 44 24 20                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x20]
  00a9d8da:	0f 29 94 24 e0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xe0],XMM2
  00a9d8e2:	0f 29 84 24 00 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x100],XMM0
  00a9d8ea:	89 5c 24 1c                                    	MOV dword ptr [ESP + 0x1c],EBX
  00a9d8ee:	8d 44 24 13                                    	LEA EAX,[ESP + 0x13]
  00a9d8f2:	50                                             	PUSH EAX
  00a9d8f3:	6a 01                                          	PUSH 0x1
  00a9d8f5:	8b ce                                          	MOV ECX,ESI
  00a9d8f7:	c6 44 24 1b 01                                 	MOV byte ptr [ESP + 0x1b],0x1
  00a9d8fc:	e8 6f 8a c3 ff                                 	CALL 0x006d6370
  00a9d901:	8b ce                                          	MOV ECX,ESI
  00a9d903:	e8 28 9a c3 ff                                 	CALL 0x006d7330
  00a9d908:	6a 00                                          	PUSH 0x0
  00a9d90a:	6a 07                                          	PUSH 0x7
  00a9d90c:	6a 00                                          	PUSH 0x0
  00a9d90e:	8b ce                                          	MOV ECX,ESI
  00a9d910:	e8 4b 6a c3 ff                                 	CALL 0x006d4360
  00a9d915:	6a 00                                          	PUSH 0x0
  00a9d917:	6a 05                                          	PUSH 0x5
  00a9d919:	6a 01                                          	PUSH 0x1
  00a9d91b:	8b ce                                          	MOV ECX,ESI
  00a9d91d:	e8 3e 6a c3 ff                                 	CALL 0x006d4360
  00a9d922:	6a 00                                          	PUSH 0x0
  00a9d924:	6a 01                                          	PUSH 0x1
  00a9d926:	6a 02                                          	PUSH 0x2
  00a9d928:	8b ce                                          	MOV ECX,ESI
  00a9d92a:	e8 31 6a c3 ff                                 	CALL 0x006d4360
  00a9d92f:	8b ce                                          	MOV ECX,ESI
  00a9d931:	e8 aa 86 c3 ff                                 	CALL 0x006d5fe0
  00a9d936:	8b 54 24 40                                    	MOV EDX,dword ptr [ESP + 0x40]
  00a9d93a:	8d 8c 24 20 01 00 00                           	LEA ECX,[ESP + 0x120]
  00a9d941:	51                                             	PUSH ECX
  00a9d942:	52                                             	PUSH EDX
  00a9d943:	8b ce                                          	MOV ECX,ESI
  00a9d945:	e8 76 6b c3 ff                                 	CALL 0x006d44c0
  00a9d94a:	6a 00                                          	PUSH 0x0
  00a9d94c:	6a 00                                          	PUSH 0x0
  00a9d94e:	8d 44 24 1b                                    	LEA EAX,[ESP + 0x1b]
  00a9d952:	50                                             	PUSH EAX
  00a9d953:	8d 4c 24 27                                    	LEA ECX,[ESP + 0x27]
  00a9d957:	51                                             	PUSH ECX
  00a9d958:	8d 54 24 24                                    	LEA EDX,[ESP + 0x24]
  00a9d95c:	52                                             	PUSH EDX
  00a9d95d:	8b ce                                          	MOV ECX,ESI
  00a9d95f:	c6 44 24 27 01                                 	MOV byte ptr [ESP + 0x27],0x1
  00a9d964:	c6 44 24 2f 01                                 	MOV byte ptr [ESP + 0x2f],0x1
  00a9d969:	c7 44 24 28 03 00 00 00                        	MOV dword ptr [ESP + 0x28],0x3
  00a9d971:	e8 3a 9a c3 ff                                 	CALL 0x006d73b0
  00a9d976:	33 db                                          	XOR EBX,EBX
  00a9d978:	eb 06                                          	JMP 0x00a9d980
  00a9d97a:	8d 9b 00 00 00 00                              	.byte 0x8d,0x9b,0x00,0x00,0x00,0x00 # UNOWNED alignment bytes
  00a9d980:	d9 83 c4 3b 18 01                              	FLD float ptr [EBX + 0x1183bc4]
  00a9d986:	83 ec 0c                                       	SUB ESP,0xc
  00a9d989:	d9 5c 24 08                                    	FSTP float ptr [ESP + 0x8]
  00a9d98d:	8b ce                                          	MOV ECX,ESI
  00a9d98f:	d9 ee                                          	FLDZ
  00a9d991:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00a9d995:	d9 83 c0 3b 18 01                              	FLD float ptr [EBX + 0x1183bc0]
  00a9d99b:	d9 1c 24                                       	FSTP float ptr [ESP]
  00a9d99e:	e8 5d 7f c3 ff                                 	CALL 0x006d5900
  00a9d9a3:	83 c3 08                                       	ADD EBX,0x8
  00a9d9a6:	83 fb 30                                       	CMP EBX,0x30
  00a9d9a9:	72 d5                                          	JC 0x00a9d980
  00a9d9ab:	33 db                                          	XOR EBX,EBX
  00a9d9ad:	8d 49 00                                       	LEA ECX,[ECX]
  00a9d9b0:	f3 0f 10 05 f0 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f0]
  00a9d9b8:	d9 ee                                          	FLDZ
  00a9d9ba:	83 ec 0c                                       	SUB ESP,0xc
  00a9d9bd:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00a9d9c0:	f3 0f 5c 8b c4 3b 18 01                        	SUBSS XMM1,dword ptr [EBX + 0x1183bc4]
  00a9d9c8:	f3 0f 5c 83 c0 3b 18 01                        	SUBSS XMM0,dword ptr [EBX + 0x1183bc0]
  00a9d9d0:	f3 0f 11 4c 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM1
  00a9d9d6:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00a9d9da:	8b ce                                          	MOV ECX,ESI
  00a9d9dc:	f3 0f 11 04 24                                 	MOVSS dword ptr [ESP],XMM0
  00a9d9e1:	e8 1a 7f c3 ff                                 	CALL 0x006d5900
  00a9d9e6:	83 c3 08                                       	ADD EBX,0x8
  00a9d9e9:	83 fb 30                                       	CMP EBX,0x30
  00a9d9ec:	72 c2                                          	JC 0x00a9d9b0
  00a9d9ee:	0f 28 84 24 c0 00 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0xc0]
  00a9d9f6:	8d 44 24 20                                    	LEA EAX,[ESP + 0x20]
  00a9d9fa:	50                                             	PUSH EAX
  00a9d9fb:	6a 00                                          	PUSH 0x0
  00a9d9fd:	8b ce                                          	MOV ECX,ESI
  00a9d9ff:	0f 29 44 24 28                                 	MOVAPS xmmword ptr [ESP + 0x28],XMM0
  00a9da04:	e8 77 80 c3 ff                                 	CALL 0x006d5a80
  00a9da09:	0f 28 84 24 90 00 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x90]
  00a9da11:	8d 8c 24 10 01 00 00                           	LEA ECX,[ESP + 0x110]
  00a9da18:	51                                             	PUSH ECX
  00a9da19:	6a 00                                          	PUSH 0x0
  00a9da1b:	8b ce                                          	MOV ECX,ESI
  00a9da1d:	0f 29 84 24 18 01 00 00                        	MOVAPS xmmword ptr [ESP + 0x118],XMM0
  00a9da25:	e8 56 80 c3 ff                                 	CALL 0x006d5a80
  00a9da2a:	0f 28 84 24 e0 00 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0xe0]
  00a9da32:	8d 94 24 f0 00 00 00                           	LEA EDX,[ESP + 0xf0]
  00a9da39:	52                                             	PUSH EDX
  00a9da3a:	6a 00                                          	PUSH 0x0
  00a9da3c:	8b ce                                          	MOV ECX,ESI
  00a9da3e:	0f 29 84 24 f8 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xf8],XMM0
  00a9da46:	e8 35 80 c3 ff                                 	CALL 0x006d5a80
  00a9da4b:	0f 28 84 24 00 01 00 00                        	MOVAPS XMM0,xmmword ptr [ESP + 0x100]
  00a9da53:	8d 84 24 d0 00 00 00                           	LEA EAX,[ESP + 0xd0]
  00a9da5a:	50                                             	PUSH EAX
  00a9da5b:	6a 00                                          	PUSH 0x0
  00a9da5d:	8b ce                                          	MOV ECX,ESI
  00a9da5f:	0f 29 84 24 d8 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xd8],XMM0
  00a9da67:	e8 14 80 c3 ff                                 	CALL 0x006d5a80
  00a9da6c:	81 c6 e0 02 00 00                              	ADD ESI,0x2e0
  00a9da72:	83 6c 24 1c 01                                 	SUB dword ptr [ESP + 0x1c],0x1
  00a9da77:	0f 85 71 fe ff ff                              	JNZ 0x00a9d8ee
  00a9da7d:	8b 5c 24 6c                                    	MOV EBX,dword ptr [ESP + 0x6c]
  00a9da81:	f3 0f 10 05 18 b2 fa 00                        	MOVSS XMM0,dword ptr [0x00fab218]
  00a9da89:	8b 47 14                                       	MOV EAX,dword ptr [EDI + 0x14]
  00a9da8c:	8b 4f 54                                       	MOV ECX,dword ptr [EDI + 0x54]
  00a9da8f:	33 d2                                          	XOR EDX,EDX
  00a9da91:	f3 0f 11 44 24 58                              	MOVSS dword ptr [ESP + 0x58],XMM0
  00a9da97:	f3 0f 11 44 24 5c                              	MOVSS dword ptr [ESP + 0x5c],XMM0
  00a9da9d:	f3 0f 11 44 24 4c                              	MOVSS dword ptr [ESP + 0x4c],XMM0
  00a9daa3:	f3 0f 11 44 24 50                              	MOVSS dword ptr [ESP + 0x50],XMM0
  00a9daa9:	89 44 24 54                                    	MOV dword ptr [ESP + 0x54],EAX
  00a9daad:	89 44 24 60                                    	MOV dword ptr [ESP + 0x60],EAX
  00a9dab1:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00a9dab3:	3b c2                                          	CMP EAX,EDX
  00a9dab5:	66 89 54 24 40                                 	MOV word ptr [ESP + 0x40],DX
  00a9daba:	66 89 54 24 42                                 	MOV word ptr [ESP + 0x42],DX
  00a9dabf:	89 44 24 34                                    	MOV dword ptr [ESP + 0x34],EAX
  00a9dac3:	89 4c 24 38                                    	MOV dword ptr [ESP + 0x38],ECX
  00a9dac7:	75 1f                                          	JNZ 0x00a9dae8
  00a9dac9:	39 51 04                                       	CMP dword ptr [ECX + 0x4],EDX
  00a9dacc:	8d 41 04                                       	LEA EAX,[ECX + 0x4]
  00a9dacf:	89 44 24 38                                    	MOV dword ptr [ESP + 0x38],EAX
  00a9dad3:	75 0b                                          	JNZ 0x00a9dae0
  00a9dad5:	83 c0 04                                       	ADD EAX,0x4
  00a9dad8:	39 10                                          	CMP dword ptr [EAX],EDX
  00a9dada:	74 f9                                          	JZ 0x00a9dad5
  00a9dadc:	89 44 24 38                                    	MOV dword ptr [ESP + 0x38],EAX
  00a9dae0:	8b 08                                          	MOV ECX,dword ptr [EAX]
  00a9dae2:	89 4c 24 34                                    	MOV dword ptr [ESP + 0x34],ECX
  00a9dae6:	8b c1                                          	MOV EAX,ECX
  00a9dae8:	8b 57 58                                       	MOV EDX,dword ptr [EDI + 0x58]
  00a9daeb:	8b 4f 54                                       	MOV ECX,dword ptr [EDI + 0x54]
  00a9daee:	8b 0c 91                                       	MOV ECX,dword ptr [ECX + EDX*0x4]
  00a9daf1:	3b c1                                          	CMP EAX,ECX
  00a9daf3:	89 8c 24 e0 00 00 00                           	MOV dword ptr [ESP + 0xe0],ECX
  00a9dafa:	0f 84 e6 04 00 00                              	JZ 0x00a9dfe6
  00a9db00:	eb 04                                          	JMP 0x00a9db06
  00a9db02:	8b 44 24 34                                    	MOV EAX,dword ptr [ESP + 0x34]
  00a9db06:	8b 77 78                                       	MOV ESI,dword ptr [EDI + 0x78]
  00a9db09:	8b 5f 74                                       	MOV EBX,dword ptr [EDI + 0x74]
  00a9db0c:	8b 08                                          	MOV ECX,dword ptr [EAX]
  00a9db0e:	8b 14 b3                                       	MOV EDX,dword ptr [EBX + ESI*0x4]
  00a9db11:	89 94 24 00 01 00 00                           	MOV dword ptr [ESP + 0x100],EDX
  00a9db18:	33 d2                                          	XOR EDX,EDX
  00a9db1a:	8b c1                                          	MOV EAX,ECX
  00a9db1c:	f7 f6                                          	DIV ESI
  00a9db1e:	03 d2                                          	ADD EDX,EDX
  00a9db20:	03 d2                                          	ADD EDX,EDX
  00a9db22:	8b 04 1a                                       	MOV EAX,dword ptr [EDX + EBX*0x1]
  00a9db25:	85 c0                                          	TEST EAX,EAX
  00a9db27:	74 16                                          	JZ 0x00a9db3f
  00a9db29:	8d a4 24 00 00 00 00                           	LEA ESP,[ESP]
  00a9db30:	3b 08                                          	CMP ECX,dword ptr [EAX]
  00a9db32:	0f 84 37 03 00 00                              	JZ 0x00a9de6f
  00a9db38:	8b 40 08                                       	MOV EAX,dword ptr [EAX + 0x8]
  00a9db3b:	85 c0                                          	TEST EAX,EAX
  00a9db3d:	75 f1                                          	JNZ 0x00a9db30
  00a9db3f:	8b d6                                          	MOV EDX,ESI
  00a9db41:	8b c3                                          	MOV EAX,EBX
  00a9db43:	8d 04 90                                       	LEA EAX,[EAX + EDX*0x4]
  00a9db46:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00a9db48:	89 84 24 bc 00 00 00                           	MOV dword ptr [ESP + 0xbc],EAX
  00a9db4f:	89 94 24 b8 00 00 00                           	MOV dword ptr [ESP + 0xb8],EDX
  00a9db56:	8d 84 24 b8 00 00 00                           	LEA EAX,[ESP + 0xb8]
  00a9db5d:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00a9db5f:	3b 94 24 00 01 00 00                           	CMP EDX,dword ptr [ESP + 0x100]
  00a9db66:	8b 40 04                                       	MOV EAX,dword ptr [EAX + 0x4]
  00a9db69:	89 44 24 48                                    	MOV dword ptr [ESP + 0x48],EAX
  00a9db6d:	0f 85 39 04 00 00                              	JNZ 0x00a9dfac
  00a9db73:	8b d1                                          	MOV EDX,ECX
  00a9db75:	83 e2 07                                       	AND EDX,0x7
  00a9db78:	8b c1                                          	MOV EAX,ECX
  00a9db7a:	89 54 24 78                                    	MOV dword ptr [ESP + 0x78],EDX
  00a9db7e:	8b d1                                          	MOV EDX,ECX
  00a9db80:	c1 e8 03                                       	SHR EAX,0x3
  00a9db83:	25 ff 3f 00 00                                 	AND EAX,0x3fff
  00a9db88:	c1 e9 1f                                       	SHR ECX,0x1f
  00a9db8b:	80 e1 01                                       	AND CL,0x1
  00a9db8e:	89 44 24 70                                    	MOV dword ptr [ESP + 0x70],EAX
  00a9db92:	c1 ea 11                                       	SHR EDX,0x11
  00a9db95:	81 e2 ff 3f 00 00                              	AND EDX,0x3fff
  00a9db9b:	88 4c 24 7c                                    	MOV byte ptr [ESP + 0x7c],CL
  00a9db9f:	8d 44 24 50                                    	LEA EAX,[ESP + 0x50]
  00a9dba3:	50                                             	PUSH EAX
  00a9dba4:	8d 4c 24 50                                    	LEA ECX,[ESP + 0x50]
  00a9dba8:	51                                             	PUSH ECX
  00a9dba9:	89 54 24 7c                                    	MOV dword ptr [ESP + 0x7c],EDX
  00a9dbad:	8d 54 24 64                                    	LEA EDX,[ESP + 0x64]
  00a9dbb1:	52                                             	PUSH EDX
  00a9dbb2:	8d 44 24 64                                    	LEA EAX,[ESP + 0x64]
  00a9dbb6:	50                                             	PUSH EAX
  00a9dbb7:	8d 8c 24 80 00 00 00                           	LEA ECX,[ESP + 0x80]
  00a9dbbe:	51                                             	PUSH ECX
  00a9dbbf:	e8 ac 9d 05 00                                 	CALL 0x00af7970
  00a9dbc4:	8b 4f 10                                       	MOV ECX,dword ptr [EDI + 0x10]
  00a9dbc7:	83 c4 14                                       	ADD ESP,0x14
  00a9dbca:	8d 54 24 58                                    	LEA EDX,[ESP + 0x58]
  00a9dbce:	52                                             	PUSH EDX
  00a9dbcf:	e8 bc 2f 00 00                                 	CALL 0x00aa0b90
  00a9dbd4:	d9 5c 24 3c                                    	FSTP float ptr [ESP + 0x3c]
  00a9dbd8:	8b 4f 10                                       	MOV ECX,dword ptr [EDI + 0x10]
  00a9dbdb:	8d 44 24 4c                                    	LEA EAX,[ESP + 0x4c]
  00a9dbdf:	50                                             	PUSH EAX
  00a9dbe0:	e8 ab 2f 00 00                                 	CALL 0x00aa0b90
  00a9dbe5:	d9 5c 24 14                                    	FSTP float ptr [ESP + 0x14]
  00a9dbe9:	80 7c 24 1a 00                                 	CMP byte ptr [ESP + 0x1a],0x0
  00a9dbee:	c7 44 24 1c 00 00 00 00                        	MOV dword ptr [ESP + 0x1c],0x0
  00a9dbf6:	0f 84 bb 01 00 00                              	JZ 0x00a9ddb7
  00a9dbfc:	f3 0f 10 44 24 4c                              	MOVSS XMM0,dword ptr [ESP + 0x4c]
  00a9dc02:	f3 0f 58 44 24 58                              	ADDSS XMM0,dword ptr [ESP + 0x58]
  00a9dc08:	f3 0f 10 0d b4 b5 f9 00                        	MOVSS XMM1,dword ptr [0x00f9b5b4]
  00a9dc10:	f3 0f 59 c1                                    	MULSS XMM0,XMM1
  00a9dc14:	f3 0f 11 44 24 64                              	MOVSS dword ptr [ESP + 0x64],XMM0
  00a9dc1a:	f3 0f 10 44 24 50                              	MOVSS XMM0,dword ptr [ESP + 0x50]
  00a9dc20:	f3 0f 58 44 24 5c                              	ADDSS XMM0,dword ptr [ESP + 0x5c]
  00a9dc26:	8d 8c 24 88 00 00 00                           	LEA ECX,[ESP + 0x88]
  00a9dc2d:	51                                             	PUSH ECX
  00a9dc2e:	8d 94 24 a8 00 00 00                           	LEA EDX,[ESP + 0xa8]
  00a9dc35:	f3 0f 59 c1                                    	MULSS XMM0,XMM1
  00a9dc39:	52                                             	PUSH EDX
  00a9dc3a:	8d 4c 24 78                                    	LEA ECX,[ESP + 0x78]
  00a9dc3e:	f3 0f 11 44 24 70                              	MOVSS dword ptr [ESP + 0x70],XMM0
  00a9dc44:	e8 f7 cd ff ff                                 	CALL 0x00a9aa40
  00a9dc49:	f3 0f 10 0d 7c 48 04 01                        	MOVSS XMM1,dword ptr [0x0104487c]
  00a9dc51:	f3 0f 10 84 24 a4 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0xa4]
  00a9dc5a:	8b 47 14                                       	MOV EAX,dword ptr [EDI + 0x14]
  00a9dc5d:	f3 0f 59 c1                                    	MULSS XMM0,XMM1
  00a9dc61:	f3 0f 11 84 24 84 00 00 00                     	MOVSS dword ptr [ESP + 0x84],XMM0
  00a9dc6a:	f3 0f 58 44 24 64                              	ADDSS XMM0,dword ptr [ESP + 0x64]
  00a9dc70:	f3 0f 11 84 24 c0 00 00 00                     	MOVSS dword ptr [ESP + 0xc0],XMM0
  00a9dc79:	f3 0f 10 84 24 88 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0x88]
  00a9dc82:	f3 0f 59 c1                                    	MULSS XMM0,XMM1
  00a9dc86:	8d 8c 24 c0 00 00 00                           	LEA ECX,[ESP + 0xc0]
  00a9dc8d:	f3 0f 11 84 24 8c 00 00 00                     	MOVSS dword ptr [ESP + 0x8c],XMM0
  00a9dc96:	f3 0f 58 44 24 68                              	ADDSS XMM0,dword ptr [ESP + 0x68]
  00a9dc9c:	51                                             	PUSH ECX
  00a9dc9d:	8b 4f 10                                       	MOV ECX,dword ptr [EDI + 0x10]
  00a9dca0:	f3 0f 11 84 24 c8 00 00 00                     	MOVSS dword ptr [ESP + 0xc8],XMM0
  00a9dca9:	89 84 24 cc 00 00 00                           	MOV dword ptr [ESP + 0xcc],EAX
  00a9dcb0:	e8 ab 33 00 00                                 	CALL 0x00aa1060
  00a9dcb5:	8b 4f 0c                                       	MOV ECX,dword ptr [EDI + 0xc]
  00a9dcb8:	8b 91 e0 00 00 00                              	MOV EDX,dword ptr [ECX + 0xe0]
  00a9dcbe:	8b b1 e0 00 00 00                              	MOV ESI,dword ptr [ECX + 0xe0]
  00a9dcc4:	0f b7 d8                                       	MOVZX EBX,AX
  00a9dcc7:	8b 81 dc 00 00 00                              	MOV EAX,dword ptr [ECX + 0xdc]
  00a9dccd:	8b 14 90                                       	MOV EDX,dword ptr [EAX + EDX*0x4]
  00a9dcd0:	89 94 24 f0 00 00 00                           	MOV dword ptr [ESP + 0xf0],EDX
  00a9dcd7:	0f bf c3                                       	MOVSX EAX,BX
  00a9dcda:	33 d2                                          	XOR EDX,EDX
  00a9dcdc:	f7 f6                                          	DIV ESI
  00a9dcde:	8b 89 dc 00 00 00                              	MOV ECX,dword ptr [ECX + 0xdc]
  00a9dce4:	8b 04 91                                       	MOV EAX,dword ptr [ECX + EDX*0x4]
  00a9dce7:	85 c0                                          	TEST EAX,EAX
  00a9dce9:	8d 14 91                                       	LEA EDX,[ECX + EDX*0x4]
  00a9dcec:	74 12                                          	JZ 0x00a9dd00
  00a9dcee:	8b ff                                          	MOV EDI,EDI
  00a9dcf0:	66 3b 18                                       	CMP BX,word ptr [EAX]
  00a9dcf3:	0f 84 94 01 00 00                              	JZ 0x00a9de8d
  00a9dcf9:	8b 40 04                                       	MOV EAX,dword ptr [EAX + 0x4]
  00a9dcfc:	85 c0                                          	TEST EAX,EAX
  00a9dcfe:	75 f0                                          	JNZ 0x00a9dcf0
  00a9dd00:	8b 04 b1                                       	MOV EAX,dword ptr [ECX + ESI*0x4]
  00a9dd03:	8d 0c b1                                       	LEA ECX,[ECX + ESI*0x4]
  00a9dd06:	89 84 24 d0 00 00 00                           	MOV dword ptr [ESP + 0xd0],EAX
  00a9dd0d:	89 8c 24 d4 00 00 00                           	MOV dword ptr [ESP + 0xd4],ECX
  00a9dd14:	8d 84 24 d0 00 00 00                           	LEA EAX,[ESP + 0xd0]
  00a9dd1b:	8b 08                                          	MOV ECX,dword ptr [EAX]
  00a9dd1d:	3b 8c 24 f0 00 00 00                           	CMP ECX,dword ptr [ESP + 0xf0]
  00a9dd24:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00a9dd27:	89 54 24 48                                    	MOV dword ptr [ESP + 0x48],EDX
  00a9dd2b:	0f 85 7e 00 00 00                              	JNZ 0x00a9ddaf
  00a9dd31:	66 85 db                                       	TEST BX,BX
  00a9dd34:	0f 85 7d 00 00 00                              	JNZ 0x00a9ddb7
  00a9dd3a:	8b 47 14                                       	MOV EAX,dword ptr [EDI + 0x14]
  00a9dd3d:	83 f8 ff                                       	CMP EAX,-0x1
  00a9dd40:	7f 75                                          	JG 0x00a9ddb7
  00a9dd42:	f3 0f 10 44 24 64                              	MOVSS XMM0,dword ptr [ESP + 0x64]
  00a9dd48:	f3 0f 5c 84 24 84 00 00 00                     	SUBSS XMM0,dword ptr [ESP + 0x84]
  00a9dd51:	8b 4f 10                                       	MOV ECX,dword ptr [EDI + 0x10]
  00a9dd54:	f3 0f 11 44 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM0
  00a9dd5a:	f3 0f 10 44 24 68                              	MOVSS XMM0,dword ptr [ESP + 0x68]
  00a9dd60:	f3 0f 5c 84 24 8c 00 00 00                     	SUBSS XMM0,dword ptr [ESP + 0x8c]
  00a9dd69:	89 44 24 28                                    	MOV dword ptr [ESP + 0x28],EAX
  00a9dd6d:	8d 44 24 20                                    	LEA EAX,[ESP + 0x20]
  00a9dd71:	50                                             	PUSH EAX
  00a9dd72:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  00a9dd78:	e8 e3 32 00 00                                 	CALL 0x00aa1060
  00a9dd7d:	0f b7 c8                                       	MOVZX ECX,AX
  00a9dd80:	8b 47 0c                                       	MOV EAX,dword ptr [EDI + 0xc]
  00a9dd83:	8b 90 e0 00 00 00                              	MOV EDX,dword ptr [EAX + 0xe0]
  00a9dd89:	89 4c 24 44                                    	MOV dword ptr [ESP + 0x44],ECX
  00a9dd8d:	8d 88 d8 00 00 00                              	LEA ECX,[EAX + 0xd8]
  00a9dd93:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00a9dd96:	8b 34 90                                       	MOV ESI,dword ptr [EAX + EDX*0x4]
  00a9dd99:	8d 54 24 44                                    	LEA EDX,[ESP + 0x44]
  00a9dd9d:	52                                             	PUSH EDX
  00a9dd9e:	8d 84 24 14 01 00 00                           	LEA EAX,[ESP + 0x114]
  00a9dda5:	50                                             	PUSH EAX
  00a9dda6:	e8 15 66 04 00                                 	CALL 0x00ae43c0
  00a9ddab:	39 30                                          	CMP dword ptr [EAX],ESI
  00a9ddad:	74 08                                          	JZ 0x00a9ddb7
  00a9ddaf:	c7 44 24 1c 01 00 00 00                        	MOV dword ptr [ESP + 0x1c],0x1
  00a9ddb7:	8b 5c 24 1c                                    	MOV EBX,dword ptr [ESP + 0x1c]
  00a9ddbb:	d9 44 24 5c                                    	FLD float ptr [ESP + 0x5c]
  00a9ddbf:	8b f3                                          	MOV ESI,EBX
  00a9ddc1:	69 f6 e0 02 00 00                              	IMUL ESI,ESI,0x2e0
  00a9ddc7:	03 75 08                                       	ADD ESI,dword ptr [EBP + 0x8]
  00a9ddca:	83 ec 0c                                       	SUB ESP,0xc
  00a9ddcd:	8b ce                                          	MOV ECX,ESI
  00a9ddcf:	d9 5c 24 08                                    	FSTP float ptr [ESP + 0x8]
  00a9ddd3:	d9 44 24 48                                    	FLD float ptr [ESP + 0x48]
  00a9ddd7:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00a9dddb:	d9 44 24 64                                    	FLD float ptr [ESP + 0x64]
  00a9dddf:	d9 1c 24                                       	FSTP float ptr [ESP]
  00a9dde2:	e8 69 7d c3 ff                                 	CALL 0x006d5b50
  00a9dde7:	d9 44 24 5c                                    	FLD float ptr [ESP + 0x5c]
  00a9ddeb:	f3 0f 10 44 24 3c                              	MOVSS XMM0,dword ptr [ESP + 0x3c]
  00a9ddf1:	f3 0f 5c 05 d8 44 06 01                        	SUBSS XMM0,dword ptr [0x010644d8]
  00a9ddf9:	83 ec 0c                                       	SUB ESP,0xc
  00a9ddfc:	d9 5c 24 08                                    	FSTP float ptr [ESP + 0x8]
  00a9de00:	f3 0f 11 44 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM0
  00a9de06:	d9 44 24 64                                    	FLD float ptr [ESP + 0x64]
  00a9de0a:	8b ce                                          	MOV ECX,ESI
  00a9de0c:	d9 1c 24                                       	FSTP float ptr [ESP]
  00a9de0f:	e8 3c 7d c3 ff                                 	CALL 0x006d5b50
  00a9de14:	d9 44 24 50                                    	FLD float ptr [ESP + 0x50]
  00a9de18:	f3 0f 10 44 24 14                              	MOVSS XMM0,dword ptr [ESP + 0x14]
  00a9de1e:	f3 0f 5c 05 d8 44 06 01                        	SUBSS XMM0,dword ptr [0x010644d8]
  00a9de26:	83 ec 0c                                       	SUB ESP,0xc
  00a9de29:	d9 5c 24 08                                    	FSTP float ptr [ESP + 0x8]
  00a9de2d:	f3 0f 11 44 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM0
  00a9de33:	d9 44 24 58                                    	FLD float ptr [ESP + 0x58]
  00a9de37:	8b ce                                          	MOV ECX,ESI
  00a9de39:	d9 1c 24                                       	FSTP float ptr [ESP]
  00a9de3c:	e8 0f 7d c3 ff                                 	CALL 0x006d5b50
  00a9de41:	d9 44 24 50                                    	FLD float ptr [ESP + 0x50]
  00a9de45:	83 ec 0c                                       	SUB ESP,0xc
  00a9de48:	d9 5c 24 08                                    	FSTP float ptr [ESP + 0x8]
  00a9de4c:	8b ce                                          	MOV ECX,ESI
  00a9de4e:	d9 44 24 20                                    	FLD float ptr [ESP + 0x20]
  00a9de52:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00a9de56:	d9 44 24 58                                    	FLD float ptr [ESP + 0x58]
  00a9de5a:	d9 1c 24                                       	FSTP float ptr [ESP]
  00a9de5d:	e8 ee 7c c3 ff                                 	CALL 0x006d5b50
  00a9de62:	8b 7f 14                                       	MOV EDI,dword ptr [EDI + 0x14]
  00a9de65:	85 ff                                          	TEST EDI,EDI
  00a9de67:	74 3e                                          	JZ 0x00a9dea7
  00a9de69:	8a 44 24 7c                                    	MOV AL,byte ptr [ESP + 0x7c]
  00a9de6d:	eb 40                                          	JMP 0x00a9deaf
  00a9de6f:	89 84 24 a8 00 00 00                           	MOV dword ptr [ESP + 0xa8],EAX
  00a9de76:	8b c3                                          	MOV EAX,EBX
  00a9de78:	03 c2                                          	ADD EAX,EDX
  00a9de7a:	89 84 24 ac 00 00 00                           	MOV dword ptr [ESP + 0xac],EAX
  00a9de81:	8d 84 24 a8 00 00 00                           	LEA EAX,[ESP + 0xa8]
  00a9de88:	e9 d0 fc ff ff                                 	JMP 0x00a9db5d
  00a9de8d:	89 84 24 b0 00 00 00                           	MOV dword ptr [ESP + 0xb0],EAX
  00a9de94:	89 94 24 b4 00 00 00                           	MOV dword ptr [ESP + 0xb4],EDX
  00a9de9b:	8d 84 24 b0 00 00 00                           	LEA EAX,[ESP + 0xb0]
  00a9dea2:	e9 74 fe ff ff                                 	JMP 0x00a9dd1b
  00a9dea7:	80 7c 24 7c 00                                 	CMP byte ptr [ESP + 0x7c],0x0
  00a9deac:	0f 94 c0                                       	SETZ AL
  00a9deaf:	84 c0                                          	TEST AL,AL
  00a9deb1:	74 10                                          	JZ 0x00a9dec3
  00a9deb3:	8b 4c 24 78                                    	MOV ECX,dword ptr [ESP + 0x78]
  00a9deb7:	83 c1 06                                       	ADD ECX,0x6
  00a9deba:	0f b7 d1                                       	MOVZX EDX,CX
  00a9debd:	89 54 24 14                                    	MOV dword ptr [ESP + 0x14],EDX
  00a9dec1:	eb 09                                          	JMP 0x00a9decc
  00a9dec3:	0f b7 44 24 78                                 	MOVZX EAX,word ptr [ESP + 0x78]
  00a9dec8:	89 44 24 14                                    	MOV dword ptr [ESP + 0x14],EAX
  00a9decc:	66 33 c9                                       	XOR CX,CX
  00a9decf:	85 ff                                          	TEST EDI,EDI
  00a9ded1:	b8 03 00 00 00                                 	MOV EAX,0x3
  00a9ded6:	66 ba 02 00                                    	MOV DX,0x2
  00a9deda:	66 89 8c 24 96 00 00 00                        	MOV word ptr [ESP + 0x96],CX
  00a9dee2:	66 89 84 24 9a 00 00 00                        	MOV word ptr [ESP + 0x9a],AX
  00a9deea:	75 15                                          	JNZ 0x00a9df01
  00a9deec:	66 8b ca                                       	MOV CX,DX
  00a9deef:	33 d2                                          	XOR EDX,EDX
  00a9def1:	66 89 84 24 96 00 00 00                        	MOV word ptr [ESP + 0x96],AX
  00a9def9:	66 89 94 24 9a 00 00 00                        	MOV word ptr [ESP + 0x9a],DX
  00a9df01:	8d 44 5c 40                                    	LEA EAX,[ESP + EBX*0x2 + 0x40]
  00a9df05:	89 44 24 3c                                    	MOV dword ptr [ESP + 0x3c],EAX
  00a9df09:	0f b7 00                                       	MOVZX EAX,word ptr [EAX]
  00a9df0c:	0f b7 f8                                       	MOVZX EDI,AX
  00a9df0f:	0f b7 da                                       	MOVZX EBX,DX
  00a9df12:	0f b7 c1                                       	MOVZX EAX,CX
  00a9df15:	8d 0c 1f                                       	LEA ECX,[EDI + EBX*0x1]
  00a9df18:	51                                             	PUSH ECX
  00a9df19:	8d 57 01                                       	LEA EDX,[EDI + 0x1]
  00a9df1c:	89 44 24 48                                    	MOV dword ptr [ESP + 0x48],EAX
  00a9df20:	52                                             	PUSH EDX
  00a9df21:	03 c7                                          	ADD EAX,EDI
  00a9df23:	50                                             	PUSH EAX
  00a9df24:	8b ce                                          	MOV ECX,ESI
  00a9df26:	e8 95 69 c3 ff                                 	CALL 0x006d48c0
  00a9df2b:	8b 4c 24 44                                    	MOV ECX,dword ptr [ESP + 0x44]
  00a9df2f:	53                                             	PUSH EBX
  00a9df30:	6a 01                                          	PUSH 0x1
  00a9df32:	51                                             	PUSH ECX
  00a9df33:	6a 00                                          	PUSH 0x0
  00a9df35:	8b ce                                          	MOV ECX,ESI
  00a9df37:	e8 b4 68 c3 ff                                 	CALL 0x006d47f0
  00a9df3c:	0f b7 5c 24 14                                 	MOVZX EBX,word ptr [ESP + 0x14]
  00a9df41:	53                                             	PUSH EBX
  00a9df42:	53                                             	PUSH EBX
  00a9df43:	53                                             	PUSH EBX
  00a9df44:	8b ce                                          	MOV ECX,ESI
  00a9df46:	e8 d5 67 c3 ff                                 	CALL 0x006d4720
  00a9df4b:	0f b7 84 24 9a 00 00 00                        	MOVZX EAX,word ptr [ESP + 0x9a]
  00a9df53:	0f b7 8c 24 96 00 00 00                        	MOVZX ECX,word ptr [ESP + 0x96]
  00a9df5b:	8d 14 07                                       	LEA EDX,[EDI + EAX*0x1]
  00a9df5e:	89 44 24 44                                    	MOV dword ptr [ESP + 0x44],EAX
  00a9df62:	52                                             	PUSH EDX
  00a9df63:	8d 47 02                                       	LEA EAX,[EDI + 0x2]
  00a9df66:	03 f9                                          	ADD EDI,ECX
  00a9df68:	50                                             	PUSH EAX
  00a9df69:	89 4c 24 1c                                    	MOV dword ptr [ESP + 0x1c],ECX
  00a9df6d:	57                                             	PUSH EDI
  00a9df6e:	8b ce                                          	MOV ECX,ESI
  00a9df70:	e8 4b 69 c3 ff                                 	CALL 0x006d48c0
  00a9df75:	8b 4c 24 44                                    	MOV ECX,dword ptr [ESP + 0x44]
  00a9df79:	8b 54 24 14                                    	MOV EDX,dword ptr [ESP + 0x14]
  00a9df7d:	51                                             	PUSH ECX
  00a9df7e:	6a 02                                          	PUSH 0x2
  00a9df80:	52                                             	PUSH EDX
  00a9df81:	6a 00                                          	PUSH 0x0
  00a9df83:	8b ce                                          	MOV ECX,ESI
  00a9df85:	e8 66 68 c3 ff                                 	CALL 0x006d47f0
  00a9df8a:	53                                             	PUSH EBX
  00a9df8b:	53                                             	PUSH EBX
  00a9df8c:	53                                             	PUSH EBX
  00a9df8d:	8b ce                                          	MOV ECX,ESI
  00a9df8f:	e8 8c 67 c3 ff                                 	CALL 0x006d4720
  00a9df94:	8b 44 24 3c                                    	MOV EAX,dword ptr [ESP + 0x3c]
  00a9df98:	0f b7 00                                       	MOVZX EAX,word ptr [EAX]
  00a9df9b:	8b 4c 24 3c                                    	MOV ECX,dword ptr [ESP + 0x3c]
  00a9df9f:	8b bc 24 80 00 00 00                           	MOV EDI,dword ptr [ESP + 0x80]
  00a9dfa6:	83 c0 04                                       	ADD EAX,0x4
  00a9dfa9:	66 89 01                                       	MOV word ptr [ECX],AX
  00a9dfac:	8b 54 24 34                                    	MOV EDX,dword ptr [ESP + 0x34]
  00a9dfb0:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  00a9dfb3:	85 c0                                          	TEST EAX,EAX
  00a9dfb5:	89 44 24 34                                    	MOV dword ptr [ESP + 0x34],EAX
  00a9dfb9:	75 1a                                          	JNZ 0x00a9dfd5
  00a9dfbb:	eb 03                                          	JMP 0x00a9dfc0
  00a9dfbd:	8d 49 00                                       	.byte 0x8d,0x49,0x00 # UNOWNED alignment bytes
  00a9dfc0:	8b 44 24 38                                    	MOV EAX,dword ptr [ESP + 0x38]
  00a9dfc4:	83 c0 04                                       	ADD EAX,0x4
  00a9dfc7:	89 44 24 38                                    	MOV dword ptr [ESP + 0x38],EAX
  00a9dfcb:	8b 00                                          	MOV EAX,dword ptr [EAX]
  00a9dfcd:	85 c0                                          	TEST EAX,EAX
  00a9dfcf:	89 44 24 34                                    	MOV dword ptr [ESP + 0x34],EAX
  00a9dfd3:	74 eb                                          	JZ 0x00a9dfc0
  00a9dfd5:	3b 84 24 e0 00 00 00                           	CMP EAX,dword ptr [ESP + 0xe0]
  00a9dfdc:	0f 85 20 fb ff ff                              	JNZ 0x00a9db02
  00a9dfe2:	8b 5c 24 6c                                    	MOV EBX,dword ptr [ESP + 0x6c]
  00a9dfe6:	85 db                                          	TEST EBX,EBX
  00a9dfe8:	76 1f                                          	JBE 0x00a9e009
  00a9dfea:	8b 75 08                                       	MOV ESI,dword ptr [EBP + 0x8]
  00a9dfed:	8b fb                                          	MOV EDI,EBX
  00a9dfef:	90                                             	NOP
  00a9dff0:	8b ce                                          	MOV ECX,ESI
  00a9dff2:	e8 79 3a c3 ff                                 	CALL 0x006d1a70
  00a9dff7:	8b ce                                          	MOV ECX,ESI
  00a9dff9:	e8 22 93 c3 ff                                 	CALL 0x006d7320
  00a9dffe:	81 c6 e0 02 00 00                              	ADD ESI,0x2e0
  00a9e004:	83 ef 01                                       	SUB EDI,0x1
  00a9e007:	75 e7                                          	JNZ 0x00a9dff0
  00a9e009:	8d 8c 24 20 01 00 00                           	LEA ECX,[ESP + 0x120]
  00a9e010:	e8 9b b6 cf ff                                 	CALL 0x007996b0
  00a9e015:	5f                                             	POP EDI
  00a9e016:	5e                                             	POP ESI
  00a9e017:	5b                                             	POP EBX
  00a9e018:	8b e5                                          	MOV ESP,EBP
  00a9e01a:	5d                                             	POP EBP
  00a9e01b:	c2 04 00                                       	RET 0x4
