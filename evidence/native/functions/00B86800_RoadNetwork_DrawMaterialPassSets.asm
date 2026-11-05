# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b86800 (RoadNetwork_DrawMaterialPassSets)
Paired actual Ghidra pseudocode: 00B86800_RoadNetwork_DrawMaterialPassSets.c
Envelope [0x00b86800,0x00b86de5); 1509 bytes; exact owned ranges: [0x00b86800,0x00b86c89),[0x00b86c90,0x00b86de5)
Owned: 1502 original bytes / 441 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Seven unowned envelope alignment bytes are explicitly retained; they are not owned instructions.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b86800 <original>:
  00b86800:	81 ec a4 00 00 00                              	SUB ESP,0xa4
  00b86806:	f3 0f 10 05 a4 2b fa 00                        	MOVSS XMM0,dword ptr [0x00fa2ba4]
  00b8680e:	53                                             	PUSH EBX
  00b8680f:	55                                             	PUSH EBP
  00b86810:	56                                             	PUSH ESI
  00b86811:	57                                             	PUSH EDI
  00b86812:	8b f9                                          	MOV EDI,ECX
  00b86814:	f3 0f 11 84 24 84 00 00 00                     	MOVSS dword ptr [ESP + 0x84],XMM0
  00b8681d:	f3 0f 10 47 18                                 	MOVSS XMM0,dword ptr [EDI + 0x18]
  00b86822:	f3 0f 59 05 1c 03 07 01                        	MULSS XMM0,dword ptr [0x0107031c]
  00b8682a:	f3 0f 11 84 24 88 00 00 00                     	MOVSS dword ptr [ESP + 0x88],XMM0
  00b86833:	0f 57 c0                                       	XORPS XMM0,XMM0
  00b86836:	8d 4c 24 64                                    	LEA ECX,[ESP + 0x64]
  00b8683a:	f3 0f 11 84 24 8c 00 00 00                     	MOVSS dword ptr [ESP + 0x8c],XMM0
  00b86843:	f3 0f 11 84 24 90 00 00 00                     	MOVSS dword ptr [ESP + 0x90],XMM0
  00b8684c:	e8 2f 2e c1 ff                                 	CALL 0x00799680
  00b86851:	8b 84 24 c0 00 00 00                           	MOV EAX,dword ptr [ESP + 0xc0]
  00b86858:	8b 4f 0c                                       	MOV ECX,dword ptr [EDI + 0xc]
  00b8685b:	50                                             	PUSH EAX
  00b8685c:	e8 af 20 0a 00                                 	CALL 0x00c28910
  00b86861:	8b 4f 08                                       	MOV ECX,dword ptr [EDI + 0x8]
  00b86864:	8b f0                                          	MOV ESI,EAX
  00b86866:	e8 e5 a1 0d 00                                 	CALL 0x00c60a50
  00b8686b:	8b 4e 04                                       	MOV ECX,dword ptr [ESI + 0x4]
  00b8686e:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00b86870:	51                                             	PUSH ECX
  00b86871:	8b d8                                          	MOV EBX,EAX
  00b86873:	52                                             	PUSH EDX
  00b86874:	8b cb                                          	MOV ECX,EBX
  00b86876:	e8 35 98 0f 00                                 	CALL 0x00c800b0
  00b8687b:	8b 0e                                          	MOV ECX,dword ptr [ESI]
  00b8687d:	8b e8                                          	MOV EBP,EAX
  00b8687f:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  00b86882:	6a 01                                          	PUSH 0x1
  00b86884:	50                                             	PUSH EAX
  00b86885:	51                                             	PUSH ECX
  00b86886:	8d 54 24 60                                    	LEA EDX,[ESP + 0x60]
  00b8688a:	52                                             	PUSH EDX
  00b8688b:	e8 f0 a3 0a 00                                 	CALL 0x00c30c80
  00b86890:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  00b86893:	8b 0e                                          	MOV ECX,dword ptr [ESI]
  00b86895:	83 c4 10                                       	ADD ESP,0x10
  00b86898:	6a 00                                          	PUSH 0x0
  00b8689a:	50                                             	PUSH EAX
  00b8689b:	51                                             	PUSH ECX
  00b8689c:	8b cb                                          	MOV ECX,EBX
  00b8689e:	e8 6d 98 0f 00                                 	CALL 0x00c80110
  00b868a3:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  00b868a6:	8b d8                                          	MOV EBX,EAX
  00b868a8:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00b868aa:	52                                             	PUSH EDX
  00b868ab:	50                                             	PUSH EAX
  00b868ac:	8d 4c 24 4c                                    	LEA ECX,[ESP + 0x4c]
  00b868b0:	51                                             	PUSH ECX
  00b868b1:	e8 5a a9 0a 00                                 	CALL 0x00c31210
  00b868b6:	83 c4 0c                                       	ADD ESP,0xc
  00b868b9:	6a 04                                          	PUSH 0x4
  00b868bb:	8d 94 24 88 00 00 00                           	LEA EDX,[ESP + 0x88]
  00b868c2:	52                                             	PUSH EDX
  00b868c3:	68 f0 7d ff 00                                 	PUSH 0xff7df0
  00b868c8:	e8 23 98 c4 ff                                 	CALL 0x007d00f0
  00b868cd:	83 c4 04                                       	ADD ESP,0x4
  00b868d0:	50                                             	PUSH EAX
  00b868d1:	8d 4c 24 70                                    	LEA ECX,[ESP + 0x70]
  00b868d5:	e8 f6 30 c1 ff                                 	CALL 0x007999d0
  00b868da:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00b868e2:	33 c0                                          	XOR EAX,EAX
  00b868e4:	85 ed                                          	TEST EBP,EBP
  00b868e6:	f3 0f 11 44 24 34                              	MOVSS dword ptr [ESP + 0x34],XMM0
  00b868ec:	89 44 24 38                                    	MOV dword ptr [ESP + 0x38],EAX
  00b868f0:	89 44 24 3c                                    	MOV dword ptr [ESP + 0x3c],EAX
  00b868f4:	89 44 24 40                                    	MOV dword ptr [ESP + 0x40],EAX
  00b868f8:	74 24                                          	JZ 0x00b8691e
  00b868fa:	38 84 24 c4 00 00 00                           	CMP byte ptr [ESP + 0xc4],AL
  00b86901:	75 1b                                          	JNZ 0x00b8691e
  00b86903:	50                                             	PUSH EAX
  00b86904:	55                                             	PUSH EBP
  00b86905:	68 b4 51 fe 00                                 	PUSH 0xfe51b4
  00b8690a:	e8 e1 97 c4 ff                                 	CALL 0x007d00f0
  00b8690f:	83 c4 04                                       	ADD ESP,0x4
  00b86912:	50                                             	PUSH EAX
  00b86913:	8d 4c 24 70                                    	LEA ECX,[ESP + 0x70]
  00b86917:	e8 94 31 c1 ff                                 	CALL 0x00799ab0
  00b8691c:	eb 39                                          	JMP 0x00b86957
  00b8691e:	8b 4c 24 54                                    	MOV ECX,dword ptr [ESP + 0x54]
  00b86922:	8b 54 24 58                                    	MOV EDX,dword ptr [ESP + 0x58]
  00b86926:	6a 00                                          	PUSH 0x0
  00b86928:	83 ec 10                                       	SUB ESP,0x10
  00b8692b:	8b c4                                          	MOV EAX,ESP
  00b8692d:	89 08                                          	MOV dword ptr [EAX],ECX
  00b8692f:	8b 4c 24 70                                    	MOV ECX,dword ptr [ESP + 0x70]
  00b86933:	89 50 04                                       	MOV dword ptr [EAX + 0x4],EDX
  00b86936:	8b 54 24 74                                    	MOV EDX,dword ptr [ESP + 0x74]
  00b8693a:	89 48 08                                       	MOV dword ptr [EAX + 0x8],ECX
  00b8693d:	68 b4 51 fe 00                                 	PUSH 0xfe51b4
  00b86942:	89 50 0c                                       	MOV dword ptr [EAX + 0xc],EDX
  00b86945:	e8 a6 97 c4 ff                                 	CALL 0x007d00f0
  00b8694a:	83 c4 04                                       	ADD ESP,0x4
  00b8694d:	50                                             	PUSH EAX
  00b8694e:	8d 4c 24 7c                                    	LEA ECX,[ESP + 0x7c]
  00b86952:	e8 d9 30 c1 ff                                 	CALL 0x00799a30
  00b86957:	6a 04                                          	PUSH 0x4
  00b86959:	8d 44 24 38                                    	LEA EAX,[ESP + 0x38]
  00b8695d:	50                                             	PUSH EAX
  00b8695e:	68 8e 1c 9b 20                                 	PUSH 0x209b1c8e
  00b86963:	8d 4c 24 70                                    	LEA ECX,[ESP + 0x70]
  00b86967:	e8 64 30 c1 ff                                 	CALL 0x007999d0
  00b8696c:	85 db                                          	TEST EBX,EBX
  00b8696e:	74 26                                          	JZ 0x00b86996
  00b86970:	80 bc 24 c4 00 00 00 00                        	CMP byte ptr [ESP + 0xc4],0x0
  00b86978:	75 1c                                          	JNZ 0x00b86996
  00b8697a:	6a 00                                          	PUSH 0x0
  00b8697c:	53                                             	PUSH EBX
  00b8697d:	68 1c 52 ff 00                                 	PUSH 0xff521c
  00b86982:	e8 69 97 c4 ff                                 	CALL 0x007d00f0
  00b86987:	83 c4 04                                       	ADD ESP,0x4
  00b8698a:	50                                             	PUSH EAX
  00b8698b:	8d 4c 24 70                                    	LEA ECX,[ESP + 0x70]
  00b8698f:	e8 1c 31 c1 ff                                 	CALL 0x00799ab0
  00b86994:	eb 39                                          	JMP 0x00b869cf
  00b86996:	8b 4c 24 44                                    	MOV ECX,dword ptr [ESP + 0x44]
  00b8699a:	8b 54 24 48                                    	MOV EDX,dword ptr [ESP + 0x48]
  00b8699e:	6a 00                                          	PUSH 0x0
  00b869a0:	83 ec 10                                       	SUB ESP,0x10
  00b869a3:	8b c4                                          	MOV EAX,ESP
  00b869a5:	89 08                                          	MOV dword ptr [EAX],ECX
  00b869a7:	8b 4c 24 60                                    	MOV ECX,dword ptr [ESP + 0x60]
  00b869ab:	89 50 04                                       	MOV dword ptr [EAX + 0x4],EDX
  00b869ae:	8b 54 24 64                                    	MOV EDX,dword ptr [ESP + 0x64]
  00b869b2:	89 48 08                                       	MOV dword ptr [EAX + 0x8],ECX
  00b869b5:	68 1c 52 ff 00                                 	PUSH 0xff521c
  00b869ba:	89 50 0c                                       	MOV dword ptr [EAX + 0xc],EDX
  00b869bd:	e8 2e 97 c4 ff                                 	CALL 0x007d00f0
  00b869c2:	83 c4 04                                       	ADD ESP,0x4
  00b869c5:	50                                             	PUSH EAX
  00b869c6:	8d 4c 24 7c                                    	LEA ECX,[ESP + 0x7c]
  00b869ca:	e8 61 30 c1 ff                                 	CALL 0x00799a30
  00b869cf:	68 78 8e ff 00                                 	PUSH 0xff8e78
  00b869d4:	e8 17 97 c4 ff                                 	CALL 0x007d00f0
  00b869d9:	8b b4 24 bc 00 00 00                           	MOV ESI,dword ptr [ESP + 0xbc]
  00b869e0:	83 c4 04                                       	ADD ESP,0x4
  00b869e3:	89 44 24 30                                    	MOV dword ptr [ESP + 0x30],EAX
  00b869e7:	8d 44 24 11                                    	LEA EAX,[ESP + 0x11]
  00b869eb:	50                                             	PUSH EAX
  00b869ec:	6a 01                                          	PUSH 0x1
  00b869ee:	8b ce                                          	MOV ECX,ESI
  00b869f0:	c6 44 24 19 00                                 	MOV byte ptr [ESP + 0x19],0x0
  00b869f5:	e8 76 f9 b4 ff                                 	CALL 0x006d6370
  00b869fa:	8b ce                                          	MOV ECX,ESI
  00b869fc:	e8 2f 09 b5 ff                                 	CALL 0x006d7330
  00b86a01:	6a 00                                          	PUSH 0x0
  00b86a03:	6a 07                                          	PUSH 0x7
  00b86a05:	6a 00                                          	PUSH 0x0
  00b86a07:	8b ce                                          	MOV ECX,ESI
  00b86a09:	e8 52 d9 b4 ff                                 	CALL 0x006d4360
  00b86a0e:	6a 00                                          	PUSH 0x0
  00b86a10:	6a 05                                          	PUSH 0x5
  00b86a12:	6a 05                                          	PUSH 0x5
  00b86a14:	8b ce                                          	MOV ECX,ESI
  00b86a16:	e8 45 d9 b4 ff                                 	CALL 0x006d4360
  00b86a1b:	6a 00                                          	PUSH 0x0
  00b86a1d:	6a 03                                          	PUSH 0x3
  00b86a1f:	6a 02                                          	PUSH 0x2
  00b86a21:	8b ce                                          	MOV ECX,ESI
  00b86a23:	e8 38 d9 b4 ff                                 	CALL 0x006d4360
  00b86a28:	6a 01                                          	PUSH 0x1
  00b86a2a:	6a 07                                          	PUSH 0x7
  00b86a2c:	6a 02                                          	PUSH 0x2
  00b86a2e:	8b ce                                          	MOV ECX,ESI
  00b86a30:	e8 2b d9 b4 ff                                 	CALL 0x006d4360
  00b86a35:	6a 02                                          	PUSH 0x2
  00b86a37:	6a 01                                          	PUSH 0x1
  00b86a39:	6a 02                                          	PUSH 0x2
  00b86a3b:	8b ce                                          	MOV ECX,ESI
  00b86a3d:	e8 1e d9 b4 ff                                 	CALL 0x006d4360
  00b86a42:	6a 03                                          	PUSH 0x3
  00b86a44:	6a 07                                          	PUSH 0x7
  00b86a46:	6a 02                                          	PUSH 0x2
  00b86a48:	8b ce                                          	MOV ECX,ESI
  00b86a4a:	e8 11 d9 b4 ff                                 	CALL 0x006d4360
  00b86a4f:	8b ce                                          	MOV ECX,ESI
  00b86a51:	e8 8a f5 b4 ff                                 	CALL 0x006d5fe0
  00b86a56:	8b 9c 24 bc 00 00 00                           	MOV EBX,dword ptr [ESP + 0xbc]
  00b86a5d:	c7 44 24 24 00 00 00 00                        	MOV dword ptr [ESP + 0x24],0x0
  00b86a65:	c7 44 24 20 03 00 00 00                        	MOV dword ptr [ESP + 0x20],0x3
  00b86a6d:	8d 49 00                                       	LEA ECX,[ECX]
  00b86a70:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00b86a74:	33 ed                                          	XOR EBP,EBP
  00b86a76:	2b c5                                          	SUB EAX,EBP
  00b86a78:	74 1e                                          	JZ 0x00b86a98
  00b86a7a:	83 e8 01                                       	SUB EAX,0x1
  00b86a7d:	74 0f                                          	JZ 0x00b86a8e
  00b86a7f:	83 e8 01                                       	SUB EAX,0x1
  00b86a82:	75 20                                          	JNZ 0x00b86aa4
  00b86a84:	c7 44 24 1c 03 00 00 00                        	MOV dword ptr [ESP + 0x1c],0x3
  00b86a8c:	eb 12                                          	JMP 0x00b86aa0
  00b86a8e:	c7 44 24 1c 02 00 00 00                        	MOV dword ptr [ESP + 0x1c],0x2
  00b86a96:	eb 08                                          	JMP 0x00b86aa0
  00b86a98:	c7 44 24 1c 04 00 00 00                        	MOV dword ptr [ESP + 0x1c],0x4
  00b86aa0:	89 6c 24 14                                    	MOV dword ptr [ESP + 0x14],EBP
  00b86aa4:	8b 8f 18 01 00 00                              	MOV ECX,dword ptr [EDI + 0x118]
  00b86aaa:	2b 8f 14 01 00 00                              	SUB ECX,dword ptr [EDI + 0x114]
  00b86ab0:	b8 a7 c8 67 dd                                 	MOV EAX,0xdd67c8a7
  00b86ab5:	f7 e9                                          	IMUL ECX
  00b86ab7:	03 d1                                          	ADD EDX,ECX
  00b86ab9:	c1 fa 09                                       	SAR EDX,0x9
  00b86abc:	8b ca                                          	MOV ECX,EDX
  00b86abe:	c1 e9 1f                                       	SHR ECX,0x1f
  00b86ac1:	03 ca                                          	ADD ECX,EDX
  00b86ac3:	0f 84 3c 01 00 00                              	JZ 0x00b86c05
  00b86ac9:	c7 44 24 18 00 00 00 00                        	MOV dword ptr [ESP + 0x18],0x0
  00b86ad1:	8d 54 24 64                                    	LEA EDX,[ESP + 0x64]
  00b86ad5:	52                                             	PUSH EDX
  00b86ad6:	8d 8c 24 98 00 00 00                           	LEA ECX,[ESP + 0x98]
  00b86add:	e8 fe 4e ff ff                                 	CALL 0x00b7b9e0
  00b86ae2:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00b86ae6:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00b86aea:	8b 54 24 14                                    	MOV EDX,dword ptr [ESP + 0x14]
  00b86aee:	50                                             	PUSH EAX
  00b86aef:	51                                             	PUSH ECX
  00b86af0:	8b 8f 14 01 00 00                              	MOV ECX,dword ptr [EDI + 0x114]
  00b86af6:	03 4c 24 20                                    	ADD ECX,dword ptr [ESP + 0x20]
  00b86afa:	52                                             	PUSH EDX
  00b86afb:	53                                             	PUSH EBX
  00b86afc:	8d 84 24 a4 00 00 00                           	LEA EAX,[ESP + 0xa4]
  00b86b03:	50                                             	PUSH EAX
  00b86b04:	e8 47 ec fe ff                                 	CALL 0x00b75750
  00b86b09:	0f 57 c0                                       	XORPS XMM0,XMM0
  00b86b0c:	6a 01                                          	PUSH 0x1
  00b86b0e:	8d 4c 24 30                                    	LEA ECX,[ESP + 0x30]
  00b86b12:	51                                             	PUSH ECX
  00b86b13:	68 14 08 07 01                                 	PUSH 0x1070814
  00b86b18:	f3 0f 11 44 24 38                              	MOVSS dword ptr [ESP + 0x38],XMM0
  00b86b1e:	e8 cd 95 c4 ff                                 	CALL 0x007d00f0
  00b86b23:	83 c4 04                                       	ADD ESP,0x4
  00b86b26:	50                                             	PUSH EAX
  00b86b27:	8d 8c 24 a0 00 00 00                           	LEA ECX,[ESP + 0xa0]
  00b86b2e:	e8 9d 2e c1 ff                                 	CALL 0x007999d0
  00b86b33:	8b 44 24 30                                    	MOV EAX,dword ptr [ESP + 0x30]
  00b86b37:	8d 94 24 94 00 00 00                           	LEA EDX,[ESP + 0x94]
  00b86b3e:	52                                             	PUSH EDX
  00b86b3f:	50                                             	PUSH EAX
  00b86b40:	8b ce                                          	MOV ECX,ESI
  00b86b42:	e8 79 d9 b4 ff                                 	CALL 0x006d44c0
  00b86b47:	6a 00                                          	PUSH 0x0
  00b86b49:	6a 00                                          	PUSH 0x0
  00b86b4b:	8d 4c 24 19                                    	LEA ECX,[ESP + 0x19]
  00b86b4f:	51                                             	PUSH ECX
  00b86b50:	8d 54 24 1e                                    	LEA EDX,[ESP + 0x1e]
  00b86b54:	52                                             	PUSH EDX
  00b86b55:	8d 44 24 38                                    	LEA EAX,[ESP + 0x38]
  00b86b59:	50                                             	PUSH EAX
  00b86b5a:	8b ce                                          	MOV ECX,ESI
  00b86b5c:	c6 44 24 25 01                                 	MOV byte ptr [ESP + 0x25],0x1
  00b86b61:	c6 44 24 26 01                                 	MOV byte ptr [ESP + 0x26],0x1
  00b86b66:	c7 44 24 3c 03 00 00 00                        	MOV dword ptr [ESP + 0x3c],0x3
  00b86b6e:	e8 3d 08 b5 ff                                 	CALL 0x006d73b0
  00b86b73:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00b86b77:	83 e8 00                                       	SUB EAX,0x0
  00b86b7a:	74 32                                          	JZ 0x00b86bae
  00b86b7c:	83 e8 01                                       	SUB EAX,0x1
  00b86b7f:	74 19                                          	JZ 0x00b86b9a
  00b86b81:	83 e8 01                                       	SUB EAX,0x1
  00b86b84:	75 3a                                          	JNZ 0x00b86bc0
  00b86b86:	8b 8c 24 c0 00 00 00                           	MOV ECX,dword ptr [ESP + 0xc0]
  00b86b8d:	55                                             	PUSH EBP
  00b86b8e:	51                                             	PUSH ECX
  00b86b8f:	53                                             	PUSH EBX
  00b86b90:	56                                             	PUSH ESI
  00b86b91:	8b cf                                          	MOV ECX,EDI
  00b86b93:	e8 e8 e0 ff ff                                 	CALL 0x00b84c80
  00b86b98:	eb 26                                          	JMP 0x00b86bc0
  00b86b9a:	8b 94 24 c0 00 00 00                           	MOV EDX,dword ptr [ESP + 0xc0]
  00b86ba1:	55                                             	PUSH EBP
  00b86ba2:	52                                             	PUSH EDX
  00b86ba3:	53                                             	PUSH EBX
  00b86ba4:	56                                             	PUSH ESI
  00b86ba5:	8b cf                                          	MOV ECX,EDI
  00b86ba7:	e8 34 de ff ff                                 	CALL 0x00b849e0
  00b86bac:	eb 12                                          	JMP 0x00b86bc0
  00b86bae:	8b 84 24 c0 00 00 00                           	MOV EAX,dword ptr [ESP + 0xc0]
  00b86bb5:	55                                             	PUSH EBP
  00b86bb6:	50                                             	PUSH EAX
  00b86bb7:	53                                             	PUSH EBX
  00b86bb8:	56                                             	PUSH ESI
  00b86bb9:	8b cf                                          	MOV ECX,EDI
  00b86bbb:	e8 90 d7 ff ff                                 	CALL 0x00b84350
  00b86bc0:	8b ce                                          	MOV ECX,ESI
  00b86bc2:	e8 a9 ae b4 ff                                 	CALL 0x006d1a70
  00b86bc7:	8d 8c 24 94 00 00 00                           	LEA ECX,[ESP + 0x94]
  00b86bce:	e8 dd 2a c1 ff                                 	CALL 0x007996b0
  00b86bd3:	8b 8f 18 01 00 00                              	MOV ECX,dword ptr [EDI + 0x118]
  00b86bd9:	2b 8f 14 01 00 00                              	SUB ECX,dword ptr [EDI + 0x114]
  00b86bdf:	81 44 24 18 50 02 00 00                        	ADD dword ptr [ESP + 0x18],0x250
  00b86be7:	b8 a7 c8 67 dd                                 	MOV EAX,0xdd67c8a7
  00b86bec:	f7 e9                                          	IMUL ECX
  00b86bee:	03 d1                                          	ADD EDX,ECX
  00b86bf0:	c1 fa 09                                       	SAR EDX,0x9
  00b86bf3:	8b ca                                          	MOV ECX,EDX
  00b86bf5:	c1 e9 1f                                       	SHR ECX,0x1f
  00b86bf8:	83 c5 01                                       	ADD EBP,0x1
  00b86bfb:	03 ca                                          	ADD ECX,EDX
  00b86bfd:	3b e9                                          	CMP EBP,ECX
  00b86bff:	0f 82 cc fe ff ff                              	JC 0x00b86ad1
  00b86c05:	b8 01 00 00 00                                 	MOV EAX,0x1
  00b86c0a:	01 44 24 24                                    	ADD dword ptr [ESP + 0x24],EAX
  00b86c0e:	29 44 24 20                                    	SUB dword ptr [ESP + 0x20],EAX
  00b86c12:	0f 85 58 fe ff ff                              	JNZ 0x00b86a70
  00b86c18:	32 c9                                          	XOR CL,CL
  00b86c1a:	88 4c 24 11                                    	MOV byte ptr [ESP + 0x11],CL
  00b86c1e:	8b ff                                          	MOV EDI,EDI
  00b86c20:	0f b6 c1                                       	MOVZX EAX,CL
  00b86c23:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00b86c27:	83 e8 00                                       	SUB EAX,0x0
  00b86c2a:	74 1e                                          	JZ 0x00b86c4a
  00b86c2c:	83 e8 01                                       	SUB EAX,0x1
  00b86c2f:	74 0f                                          	JZ 0x00b86c40
  00b86c31:	83 e8 01                                       	SUB EAX,0x1
  00b86c34:	75 1c                                          	JNZ 0x00b86c52
  00b86c36:	c7 44 24 18 05 00 00 00                        	MOV dword ptr [ESP + 0x18],0x5
  00b86c3e:	eb 12                                          	JMP 0x00b86c52
  00b86c40:	c7 44 24 18 00 00 00 00                        	MOV dword ptr [ESP + 0x18],0x0
  00b86c48:	eb 08                                          	JMP 0x00b86c52
  00b86c4a:	c7 44 24 18 01 00 00 00                        	MOV dword ptr [ESP + 0x18],0x1
  00b86c52:	8b af 18 01 00 00                              	MOV EBP,dword ptr [EDI + 0x118]
  00b86c58:	2b af 14 01 00 00                              	SUB EBP,dword ptr [EDI + 0x114]
  00b86c5e:	b8 a7 c8 67 dd                                 	MOV EAX,0xdd67c8a7
  00b86c63:	f7 ed                                          	IMUL EBP
  00b86c65:	03 d5                                          	ADD EDX,EBP
  00b86c67:	c1 fa 09                                       	SAR EDX,0x9
  00b86c6a:	8b c2                                          	MOV EAX,EDX
  00b86c6c:	c1 e8 1f                                       	SHR EAX,0x1f
  00b86c6f:	03 c2                                          	ADD EAX,EDX
  00b86c71:	0f b7 c0                                       	MOVZX EAX,AX
  00b86c74:	33 ed                                          	XOR EBP,EBP
  00b86c76:	66 3b c5                                       	CMP AX,BP
  00b86c79:	89 44 24 2c                                    	MOV dword ptr [ESP + 0x2c],EAX
  00b86c7d:	0f 86 35 01 00 00                              	JBE 0x00b86db8
  00b86c83:	89 6c 24 14                                    	MOV dword ptr [ESP + 0x14],EBP
  00b86c87:	eb 07                                          	JMP 0x00b86c90
  00b86c89:	8d a4 24 00 00 00 00                           	.byte 0x8d,0xa4,0x24,0x00,0x00,0x00,0x00 # UNOWNED alignment bytes
  00b86c90:	8d 4c 24 64                                    	LEA ECX,[ESP + 0x64]
  00b86c94:	51                                             	PUSH ECX
  00b86c95:	8d 8c 24 98 00 00 00                           	LEA ECX,[ESP + 0x98]
  00b86c9c:	e8 3f 4d ff ff                                 	CALL 0x00b7b9e0
  00b86ca1:	8b 54 24 1c                                    	MOV EDX,dword ptr [ESP + 0x1c]
  00b86ca5:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00b86ca9:	52                                             	PUSH EDX
  00b86caa:	50                                             	PUSH EAX
  00b86cab:	53                                             	PUSH EBX
  00b86cac:	8d 8c 24 a0 00 00 00                           	LEA ECX,[ESP + 0xa0]
  00b86cb3:	51                                             	PUSH ECX
  00b86cb4:	8b 8f 14 01 00 00                              	MOV ECX,dword ptr [EDI + 0x114]
  00b86cba:	03 4c 24 24                                    	ADD ECX,dword ptr [ESP + 0x24]
  00b86cbe:	e8 4d ec fe ff                                 	CALL 0x00b75910
  00b86cc3:	80 7c 24 11 05                                 	CMP byte ptr [ESP + 0x11],0x5
  00b86cc8:	75 0a                                          	JNZ 0x00b86cd4
  00b86cca:	f3 0f 10 05 10 03 07 01                        	MOVSS XMM0,dword ptr [0x01070310]
  00b86cd2:	eb 03                                          	JMP 0x00b86cd7
  00b86cd4:	0f 57 c0                                       	XORPS XMM0,XMM0
  00b86cd7:	6a 01                                          	PUSH 0x1
  00b86cd9:	8d 54 24 24                                    	LEA EDX,[ESP + 0x24]
  00b86cdd:	52                                             	PUSH EDX
  00b86cde:	68 14 08 07 01                                 	PUSH 0x1070814
  00b86ce3:	f3 0f 11 44 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM0
  00b86ce9:	e8 02 94 c4 ff                                 	CALL 0x007d00f0
  00b86cee:	83 c4 04                                       	ADD ESP,0x4
  00b86cf1:	50                                             	PUSH EAX
  00b86cf2:	8d 8c 24 a0 00 00 00                           	LEA ECX,[ESP + 0xa0]
  00b86cf9:	e8 d2 2c c1 ff                                 	CALL 0x007999d0
  00b86cfe:	8b 4c 24 30                                    	MOV ECX,dword ptr [ESP + 0x30]
  00b86d02:	8d 84 24 94 00 00 00                           	LEA EAX,[ESP + 0x94]
  00b86d09:	50                                             	PUSH EAX
  00b86d0a:	51                                             	PUSH ECX
  00b86d0b:	8b ce                                          	MOV ECX,ESI
  00b86d0d:	e8 ae d7 b4 ff                                 	CALL 0x006d44c0
  00b86d12:	6a 00                                          	PUSH 0x0
  00b86d14:	6a 00                                          	PUSH 0x0
  00b86d16:	8d 54 24 1a                                    	LEA EDX,[ESP + 0x1a]
  00b86d1a:	52                                             	PUSH EDX
  00b86d1b:	8d 44 24 1f                                    	LEA EAX,[ESP + 0x1f]
  00b86d1f:	50                                             	PUSH EAX
  00b86d20:	8d 4c 24 38                                    	LEA ECX,[ESP + 0x38]
  00b86d24:	51                                             	PUSH ECX
  00b86d25:	8b ce                                          	MOV ECX,ESI
  00b86d27:	c6 44 24 26 01                                 	MOV byte ptr [ESP + 0x26],0x1
  00b86d2c:	c6 44 24 27 01                                 	MOV byte ptr [ESP + 0x27],0x1
  00b86d31:	c7 44 24 3c 03 00 00 00                        	MOV dword ptr [ESP + 0x3c],0x3
  00b86d39:	e8 72 06 b5 ff                                 	CALL 0x006d73b0
  00b86d3e:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00b86d42:	83 e8 00                                       	SUB EAX,0x0
  00b86d45:	74 32                                          	JZ 0x00b86d79
  00b86d47:	83 e8 01                                       	SUB EAX,0x1
  00b86d4a:	74 19                                          	JZ 0x00b86d65
  00b86d4c:	83 e8 01                                       	SUB EAX,0x1
  00b86d4f:	75 3a                                          	JNZ 0x00b86d8b
  00b86d51:	8b 94 24 c0 00 00 00                           	MOV EDX,dword ptr [ESP + 0xc0]
  00b86d58:	55                                             	PUSH EBP
  00b86d59:	52                                             	PUSH EDX
  00b86d5a:	53                                             	PUSH EBX
  00b86d5b:	56                                             	PUSH ESI
  00b86d5c:	8b cf                                          	MOV ECX,EDI
  00b86d5e:	e8 5d e0 ff ff                                 	CALL 0x00b84dc0
  00b86d63:	eb 26                                          	JMP 0x00b86d8b
  00b86d65:	8b 84 24 c0 00 00 00                           	MOV EAX,dword ptr [ESP + 0xc0]
  00b86d6c:	55                                             	PUSH EBP
  00b86d6d:	50                                             	PUSH EAX
  00b86d6e:	53                                             	PUSH EBX
  00b86d6f:	56                                             	PUSH ESI
  00b86d70:	8b cf                                          	MOV ECX,EDI
  00b86d72:	e8 a9 dd ff ff                                 	CALL 0x00b84b20
  00b86d77:	eb 12                                          	JMP 0x00b86d8b
  00b86d79:	8b 8c 24 c0 00 00 00                           	MOV ECX,dword ptr [ESP + 0xc0]
  00b86d80:	55                                             	PUSH EBP
  00b86d81:	51                                             	PUSH ECX
  00b86d82:	53                                             	PUSH EBX
  00b86d83:	56                                             	PUSH ESI
  00b86d84:	8b cf                                          	MOV ECX,EDI
  00b86d86:	e8 55 d7 ff ff                                 	CALL 0x00b844e0
  00b86d8b:	8b ce                                          	MOV ECX,ESI
  00b86d8d:	e8 de ac b4 ff                                 	CALL 0x006d1a70
  00b86d92:	8d 8c 24 94 00 00 00                           	LEA ECX,[ESP + 0x94]
  00b86d99:	e8 12 29 c1 ff                                 	CALL 0x007996b0
  00b86d9e:	81 44 24 14 50 02 00 00                        	ADD dword ptr [ESP + 0x14],0x250
  00b86da6:	83 c5 01                                       	ADD EBP,0x1
  00b86da9:	66 3b 6c 24 2c                                 	CMP BP,word ptr [ESP + 0x2c]
  00b86dae:	0f 82 dc fe ff ff                              	JC 0x00b86c90
  00b86db4:	8a 4c 24 11                                    	MOV CL,byte ptr [ESP + 0x11]
  00b86db8:	80 c1 01                                       	ADD CL,0x1
  00b86dbb:	80 f9 03                                       	CMP CL,0x3
  00b86dbe:	88 4c 24 11                                    	MOV byte ptr [ESP + 0x11],CL
  00b86dc2:	0f 82 58 fe ff ff                              	JC 0x00b86c20
  00b86dc8:	8b ce                                          	MOV ECX,ESI
  00b86dca:	e8 51 05 b5 ff                                 	CALL 0x006d7320
  00b86dcf:	8d 4c 24 64                                    	LEA ECX,[ESP + 0x64]
  00b86dd3:	e8 d8 28 c1 ff                                 	CALL 0x007996b0
  00b86dd8:	5f                                             	POP EDI
  00b86dd9:	5e                                             	POP ESI
  00b86dda:	5d                                             	POP EBP
  00b86ddb:	5b                                             	POP EBX
  00b86ddc:	81 c4 a4 00 00 00                              	ADD ESP,0xa4
  00b86de2:	c2 10 00                                       	RET 0x10
