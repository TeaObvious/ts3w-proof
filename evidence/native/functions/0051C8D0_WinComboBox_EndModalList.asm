# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x0051c8d0 (WinComboBox_EndModalList)
Paired actual Ghidra pseudocode: 0051C8D0_WinComboBox_EndModalList.c
Envelope [0x0051c8d0,0x0051ca98); 456 pristine bytes.
Owned: 456 original bytes / 156 actual saved Listing instructions.
Saved body: [[0051c8d0, 0051ca97]]; inclusive ranges above, exclusive envelope end.
Any nonowned alignment bytes are explicit .byte records, not Listing instructions.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0051c8d0 <original>:
  0051c8d0:	83 ec 24                                       	SUB ESP,0x24
  0051c8d3:	53                                             	PUSH EBX
  0051c8d4:	56                                             	PUSH ESI
  0051c8d5:	8b f1                                          	MOV ESI,ECX
  0051c8d7:	33 db                                          	XOR EBX,EBX
  0051c8d9:	38 5e 3d                                       	CMP byte ptr [ESI + 0x3d],BL
  0051c8dc:	0f 84 ae 01 00 00                              	JZ 0x0051ca90
  0051c8e2:	55                                             	PUSH EBP
  0051c8e3:	8b 6c 24 34                                    	MOV EBP,dword ptr [ESP + 0x34]
  0051c8e7:	3b eb                                          	CMP EBP,EBX
  0051c8e9:	57                                             	PUSH EDI
  0051c8ea:	88 5e 3d                                       	MOV byte ptr [ESI + 0x3d],BL
  0051c8ed:	0f 84 3f 01 00 00                              	JZ 0x0051ca32
  0051c8f3:	8b 45 00                                       	MOV EAX,dword ptr [EBP]
  0051c8f6:	8b 50 0c                                       	MOV EDX,dword ptr [EAX + 0xc]
  0051c8f9:	68 02 e9 1e af                                 	PUSH 0xaf1ee902
  0051c8fe:	8b cd                                          	MOV ECX,EBP
  0051c900:	ff d2                                          	CALL EDX
  0051c902:	8b f8                                          	MOV EDI,EAX
  0051c904:	3b fb                                          	CMP EDI,EBX
  0051c906:	0f 84 ea 00 00 00                              	JZ 0x0051c9f6
  0051c90c:	8b 86 b0 00 00 00                              	MOV EAX,dword ptr [ESI + 0xb0]
  0051c912:	3b c3                                          	CMP EAX,EBX
  0051c914:	74 28                                          	JZ 0x0051c93e
  0051c916:	8b 8e ac 00 00 00                              	MOV ECX,dword ptr [ESI + 0xac]
  0051c91c:	8b 11                                          	MOV EDX,dword ptr [ECX]
  0051c91e:	50                                             	PUSH EAX
  0051c91f:	8b 82 0c 01 00 00                              	MOV EAX,dword ptr [EDX + 0x10c]
  0051c925:	ff d0                                          	CALL EAX
  0051c927:	8b 8e b0 00 00 00                              	MOV ECX,dword ptr [ESI + 0xb0]
  0051c92d:	3b cb                                          	CMP ECX,EBX
  0051c92f:	74 0d                                          	JZ 0x0051c93e
  0051c931:	89 9e b0 00 00 00                              	MOV dword ptr [ESI + 0xb0],EBX
  0051c937:	8b 11                                          	MOV EDX,dword ptr [ECX]
  0051c939:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  0051c93c:	ff d0                                          	CALL EAX
  0051c93e:	f6 46 34 04                                    	TEST byte ptr [ESI + 0x34],0x4
  0051c942:	74 18                                          	JZ 0x0051c95c
  0051c944:	8b 8e dc fd ff ff                              	MOV ECX,dword ptr [ESI + 0xfffffddc]
  0051c94a:	8b 86 ac 00 00 00                              	MOV EAX,dword ptr [ESI + 0xac]
  0051c950:	8b 11                                          	MOV EDX,dword ptr [ECX]
  0051c952:	8b 52 68                                       	MOV EDX,dword ptr [EDX + 0x68]
  0051c955:	6a 01                                          	PUSH 0x1
  0051c957:	50                                             	PUSH EAX
  0051c958:	6a 01                                          	PUSH 0x1
  0051c95a:	ff d2                                          	CALL EDX
  0051c95c:	8b 07                                          	MOV EAX,dword ptr [EDI]
  0051c95e:	8b 80 d8 00 00 00                              	MOV EAX,dword ptr [EAX + 0xd8]
  0051c964:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  0051c968:	51                                             	PUSH ECX
  0051c969:	8d 54 24 18                                    	LEA EDX,[ESP + 0x18]
  0051c96d:	52                                             	PUSH EDX
  0051c96e:	8b cf                                          	MOV ECX,EDI
  0051c970:	ff d0                                          	CALL EAX
  0051c972:	84 c0                                          	TEST AL,AL
  0051c974:	74 30                                          	JZ 0x0051c9a6
  0051c976:	8b 46 0c                                       	MOV EAX,dword ptr [ESI + 0xc]
  0051c979:	8b 54 24 10                                    	MOV EDX,dword ptr [ESP + 0x10]
  0051c97d:	3b d0                                          	CMP EDX,EAX
  0051c97f:	74 10                                          	JZ 0x0051c991
  0051c981:	8b 46 fc                                       	MOV EAX,dword ptr [ESI + -0x4]
  0051c984:	8d 4e fc                                       	LEA ECX,[ESI + -0x4]
  0051c987:	6a 01                                          	PUSH 0x1
  0051c989:	52                                             	PUSH EDX
  0051c98a:	8b 50 44                                       	MOV EDX,dword ptr [EAX + 0x44]
  0051c98d:	ff d2                                          	CALL EDX
  0051c98f:	eb 15                                          	JMP 0x0051c9a6
  0051c991:	8b 96 ac fd ff ff                              	MOV EDX,dword ptr [ESI + 0xfffffdac]
  0051c997:	8d 8e ac fd ff ff                              	LEA ECX,[ESI + 0xfffffdac]
  0051c99d:	50                                             	PUSH EAX
  0051c99e:	8b 82 b4 00 00 00                              	MOV EAX,dword ptr [EDX + 0xb4]
  0051c9a4:	ff d0                                          	CALL EAX
  0051c9a6:	39 5c 24 3c                                    	CMP dword ptr [ESP + 0x3c],EBX
  0051c9aa:	75 4a                                          	JNZ 0x0051c9f6
  0051c9ac:	8d be ac fd ff ff                              	LEA EDI,[ESI + 0xfffffdac]
  0051c9b2:	3b fb                                          	CMP EDI,EBX
  0051c9b4:	74 08                                          	JZ 0x0051c9be
  0051c9b6:	8d ae b0 fd ff ff                              	LEA EBP,[ESI + 0xfffffdb0]
  0051c9bc:	eb 02                                          	JMP 0x0051c9c0
  0051c9be:	33 ed                                          	XOR EBP,EBP
  0051c9c0:	8b 8e dc fd ff ff                              	MOV ECX,dword ptr [ESI + 0xfffffddc]
  0051c9c6:	8b 11                                          	MOV EDX,dword ptr [ECX]
  0051c9c8:	8b 42 60                                       	MOV EAX,dword ptr [EDX + 0x60]
  0051c9cb:	6a 01                                          	PUSH 0x1
  0051c9cd:	ff d0                                          	CALL EAX
  0051c9cf:	3b c5                                          	CMP EAX,EBP
  0051c9d1:	74 1f                                          	JZ 0x0051c9f2
  0051c9d3:	3b fb                                          	CMP EDI,EBX
  0051c9d5:	74 08                                          	JZ 0x0051c9df
  0051c9d7:	8d 86 b0 fd ff ff                              	LEA EAX,[ESI + 0xfffffdb0]
  0051c9dd:	eb 02                                          	JMP 0x0051c9e1
  0051c9df:	33 c0                                          	XOR EAX,EAX
  0051c9e1:	8b 8e dc fd ff ff                              	MOV ECX,dword ptr [ESI + 0xfffffddc]
  0051c9e7:	8b 11                                          	MOV EDX,dword ptr [ECX]
  0051c9e9:	53                                             	PUSH EBX
  0051c9ea:	50                                             	PUSH EAX
  0051c9eb:	8b 42 64                                       	MOV EAX,dword ptr [EDX + 0x64]
  0051c9ee:	6a 01                                          	PUSH 0x1
  0051c9f0:	ff d0                                          	CALL EAX
  0051c9f2:	8b 6c 24 38                                    	MOV EBP,dword ptr [ESP + 0x38]
  0051c9f6:	39 5e 54                                       	CMP dword ptr [ESI + 0x54],EBX
  0051c9f9:	74 0e                                          	JZ 0x0051ca09
  0051c9fb:	8b 55 00                                       	MOV EDX,dword ptr [EBP]
  0051c9fe:	8b 42 10                                       	MOV EAX,dword ptr [EDX + 0x10]
  0051ca01:	8b cd                                          	MOV ECX,EBP
  0051ca03:	ff d0                                          	CALL EAX
  0051ca05:	8b f8                                          	MOV EDI,EAX
  0051ca07:	eb 02                                          	JMP 0x0051ca0b
  0051ca09:	8b fd                                          	MOV EDI,EBP
  0051ca0b:	3b fb                                          	CMP EDI,EBX
  0051ca0d:	74 23                                          	JZ 0x0051ca32
  0051ca0f:	8b 17                                          	MOV EDX,dword ptr [EDI]
  0051ca11:	8b 42 10                                       	MOV EAX,dword ptr [EDX + 0x10]
  0051ca14:	8b cf                                          	MOV ECX,EDI
  0051ca16:	ff d0                                          	CALL EAX
  0051ca18:	85 c0                                          	TEST EAX,EAX
  0051ca1a:	74 16                                          	JZ 0x0051ca32
  0051ca1c:	8b 17                                          	MOV EDX,dword ptr [EDI]
  0051ca1e:	8b 42 10                                       	MOV EAX,dword ptr [EDX + 0x10]
  0051ca21:	8b cf                                          	MOV ECX,EDI
  0051ca23:	ff d0                                          	CALL EAX
  0051ca25:	8b 10                                          	MOV EDX,dword ptr [EAX]
  0051ca27:	8b c8                                          	MOV ECX,EAX
  0051ca29:	8b 82 e4 00 00 00                              	MOV EAX,dword ptr [EDX + 0xe4]
  0051ca2f:	57                                             	PUSH EDI
  0051ca30:	ff d0                                          	CALL EAX
  0051ca32:	8b 96 b0 fd ff ff                              	MOV EDX,dword ptr [ESI + 0xfffffdb0]
  0051ca38:	83 c8 ff                                       	OR EAX,0xffffffff
  0051ca3b:	8d be b0 fd ff ff                              	LEA EDI,[ESI + 0xfffffdb0]
  0051ca41:	89 46 08                                       	MOV dword ptr [ESI + 0x8],EAX
  0051ca44:	89 46 04                                       	MOV dword ptr [ESI + 0x4],EAX
  0051ca47:	8b 82 90 00 00 00                              	MOV EAX,dword ptr [EDX + 0x90]
  0051ca4d:	8b cf                                          	MOV ECX,EDI
  0051ca4f:	89 9e ac 00 00 00                              	MOV dword ptr [ESI + 0xac],EBX
  0051ca55:	ff d0                                          	CALL EAX
  0051ca57:	8b 86 e8 fd ff ff                              	MOV EAX,dword ptr [ESI + 0xfffffde8]
  0051ca5d:	3b c3                                          	CMP EAX,EBX
  0051ca5f:	c7 44 24 20 e9 27 55 4f                        	MOV dword ptr [ESP + 0x20],0x4f5527e9
  0051ca67:	74 06                                          	JZ 0x0051ca6f
  0051ca69:	89 44 24 24                                    	MOV dword ptr [ESP + 0x24],EAX
  0051ca6d:	eb 0a                                          	JMP 0x0051ca79
  0051ca6f:	8b 8e e4 fd ff ff                              	MOV ECX,dword ptr [ESI + 0xfffffde4]
  0051ca75:	89 4c 24 24                                    	MOV dword ptr [ESP + 0x24],ECX
  0051ca79:	8b 17                                          	MOV EDX,dword ptr [EDI]
  0051ca7b:	8b 92 18 01 00 00                              	MOV EDX,dword ptr [EDX + 0x118]
  0051ca81:	8d 44 24 18                                    	LEA EAX,[ESP + 0x18]
  0051ca85:	50                                             	PUSH EAX
  0051ca86:	8b cf                                          	MOV ECX,EDI
  0051ca88:	89 5c 24 2c                                    	MOV dword ptr [ESP + 0x2c],EBX
  0051ca8c:	ff d2                                          	CALL EDX
  0051ca8e:	5f                                             	POP EDI
  0051ca8f:	5d                                             	POP EBP
  0051ca90:	5e                                             	POP ESI
  0051ca91:	5b                                             	POP EBX
  0051ca92:	83 c4 24                                       	ADD ESP,0x24
  0051ca95:	c2 08 00                                       	RET 0x8
