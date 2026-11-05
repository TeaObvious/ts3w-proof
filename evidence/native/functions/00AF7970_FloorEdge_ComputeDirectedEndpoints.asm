# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00af7970 (FloorEdge_ComputeDirectedEndpoints)
Paired actual Ghidra pseudocode: 00AF7970_FloorEdge_ComputeDirectedEndpoints.c
Envelope [0x00af7970,0x00af7b38); 456 bytes; exact owned ranges: [0x00af7970,0x00af7b38)
Owned: 456 original bytes / 105 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00af7970 <original>:
  00af7970:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00af7974:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00af7978:	8b 54 24 0c                                    	MOV EDX,dword ptr [ESP + 0xc]
  00af797c:	53                                             	PUSH EBX
  00af797d:	8b 5c 24 08                                    	MOV EBX,dword ptr [ESP + 0x8]
  00af7981:	80 7b 0c 00                                    	CMP byte ptr [EBX + 0xc],0x0
  00af7985:	56                                             	PUSH ESI
  00af7986:	8b 74 24 10                                    	MOV ESI,dword ptr [ESP + 0x10]
  00af798a:	57                                             	PUSH EDI
  00af798b:	8b 7b 08                                       	MOV EDI,dword ptr [EBX + 0x8]
  00af798e:	0f 84 e5 00 00 00                              	JZ 0x00af7a79
  00af7994:	83 ff 05                                       	CMP EDI,0x5
  00af7997:	0f 87 65 01 00 00                              	JA 0x00af7b02
  00af799d:	ff 24 bd 38 7b af 00                           	JMP dword ptr [EDI*0x4 + 0xaf7b38]
  00af79a4:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00af79ac:	f3 0f 11 01                                    	MOVSS dword ptr [ECX],XMM0
  00af79b0:	0f 57 c0                                       	XORPS XMM0,XMM0
  00af79b3:	f3 0f 11 00                                    	MOVSS dword ptr [EAX],XMM0
  00af79b7:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af79bb:	f3 0f 11 02                                    	MOVSS dword ptr [EDX],XMM0
  00af79bf:	e9 3e 01 00 00                                 	JMP 0x00af7b02
  00af79c4:	0f 57 c0                                       	XORPS XMM0,XMM0
  00af79c7:	f3 0f 11 01                                    	MOVSS dword ptr [ECX],XMM0
  00af79cb:	f3 0f 11 00                                    	MOVSS dword ptr [EAX],XMM0
  00af79cf:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af79d3:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00af79db:	f3 0f 11 02                                    	MOVSS dword ptr [EDX],XMM0
  00af79df:	e9 1e 01 00 00                                 	JMP 0x00af7b02
  00af79e4:	0f 57 c0                                       	XORPS XMM0,XMM0
  00af79e7:	f3 0f 11 01                                    	MOVSS dword ptr [ECX],XMM0
  00af79eb:	f3 0f 11 00                                    	MOVSS dword ptr [EAX],XMM0
  00af79ef:	f3 0f 10 05 b4 b5 f9 00                        	MOVSS XMM0,dword ptr [0x00f9b5b4]
  00af79f7:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af79fb:	f3 0f 11 02                                    	MOVSS dword ptr [EDX],XMM0
  00af79ff:	e9 fe 00 00 00                                 	JMP 0x00af7b02
  00af7a04:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00af7a0c:	f3 0f 11 01                                    	MOVSS dword ptr [ECX],XMM0
  00af7a10:	0f 57 c0                                       	XORPS XMM0,XMM0
  00af7a13:	f3 0f 11 00                                    	MOVSS dword ptr [EAX],XMM0
  00af7a17:	f3 0f 10 05 b4 b5 f9 00                        	MOVSS XMM0,dword ptr [0x00f9b5b4]
  00af7a1f:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af7a23:	f3 0f 11 02                                    	MOVSS dword ptr [EDX],XMM0
  00af7a27:	e9 d6 00 00 00                                 	JMP 0x00af7b02
  00af7a2c:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00af7a34:	f3 0f 11 01                                    	MOVSS dword ptr [ECX],XMM0
  00af7a38:	f3 0f 11 00                                    	MOVSS dword ptr [EAX],XMM0
  00af7a3c:	f3 0f 10 05 b4 b5 f9 00                        	MOVSS XMM0,dword ptr [0x00f9b5b4]
  00af7a44:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af7a48:	f3 0f 11 02                                    	MOVSS dword ptr [EDX],XMM0
  00af7a4c:	e9 b1 00 00 00                                 	JMP 0x00af7b02
  00af7a51:	0f 57 c0                                       	XORPS XMM0,XMM0
  00af7a54:	f3 0f 11 01                                    	MOVSS dword ptr [ECX],XMM0
  00af7a58:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00af7a60:	f3 0f 11 00                                    	MOVSS dword ptr [EAX],XMM0
  00af7a64:	f3 0f 10 05 b4 b5 f9 00                        	MOVSS XMM0,dword ptr [0x00f9b5b4]
  00af7a6c:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af7a70:	f3 0f 11 02                                    	MOVSS dword ptr [EDX],XMM0
  00af7a74:	e9 89 00 00 00                                 	JMP 0x00af7b02
  00af7a79:	83 ff 05                                       	CMP EDI,0x5
  00af7a7c:	0f 87 80 00 00 00                              	JA 0x00af7b02
  00af7a82:	ff 24 bd 50 7b af 00                           	JMP dword ptr [EDI*0x4 + 0xaf7b50]
  00af7a89:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00af7a91:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af7a95:	0f 57 c0                                       	XORPS XMM0,XMM0
  00af7a98:	f3 0f 11 02                                    	MOVSS dword ptr [EDX],XMM0
  00af7a9c:	eb 5c                                          	JMP 0x00af7afa
  00af7a9e:	0f 57 c0                                       	XORPS XMM0,XMM0
  00af7aa1:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af7aa5:	f3 0f 11 02                                    	MOVSS dword ptr [EDX],XMM0
  00af7aa9:	f3 0f 11 01                                    	MOVSS dword ptr [ECX],XMM0
  00af7aad:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00af7ab5:	eb 47                                          	JMP 0x00af7afe
  00af7ab7:	0f 57 c0                                       	XORPS XMM0,XMM0
  00af7aba:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af7abe:	eb 2e                                          	JMP 0x00af7aee
  00af7ac0:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00af7ac8:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af7acc:	0f 57 c0                                       	XORPS XMM0,XMM0
  00af7acf:	eb 1d                                          	JMP 0x00af7aee
  00af7ad1:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00af7ad9:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af7add:	eb 0f                                          	JMP 0x00af7aee
  00af7adf:	0f 57 c0                                       	XORPS XMM0,XMM0
  00af7ae2:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af7ae6:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00af7aee:	f3 0f 11 02                                    	MOVSS dword ptr [EDX],XMM0
  00af7af2:	f3 0f 10 05 b4 b5 f9 00                        	MOVSS XMM0,dword ptr [0x00f9b5b4]
  00af7afa:	f3 0f 11 01                                    	MOVSS dword ptr [ECX],XMM0
  00af7afe:	f3 0f 11 00                                    	MOVSS dword ptr [EAX],XMM0
  00af7b02:	f3 0f 2a 03                                    	CVTSI2SS XMM0,dword ptr [EBX]
  00af7b06:	f3 0f 58 06                                    	ADDSS XMM0,dword ptr [ESI]
  00af7b0a:	f3 0f 11 06                                    	MOVSS dword ptr [ESI],XMM0
  00af7b0e:	f3 0f 2a 43 04                                 	CVTSI2SS XMM0,dword ptr [EBX + 0x4]
  00af7b13:	f3 0f 58 02                                    	ADDSS XMM0,dword ptr [EDX]
  00af7b17:	f3 0f 11 02                                    	MOVSS dword ptr [EDX],XMM0
  00af7b1b:	f3 0f 2a 03                                    	CVTSI2SS XMM0,dword ptr [EBX]
  00af7b1f:	f3 0f 58 01                                    	ADDSS XMM0,dword ptr [ECX]
  00af7b23:	f3 0f 11 01                                    	MOVSS dword ptr [ECX],XMM0
  00af7b27:	f3 0f 2a 43 04                                 	CVTSI2SS XMM0,dword ptr [EBX + 0x4]
  00af7b2c:	f3 0f 58 00                                    	ADDSS XMM0,dword ptr [EAX]
  00af7b30:	5f                                             	POP EDI
  00af7b31:	5e                                             	POP ESI
  00af7b32:	f3 0f 11 00                                    	MOVSS dword ptr [EAX],XMM0
  00af7b36:	5b                                             	POP EBX
  00af7b37:	c3                                             	RET
