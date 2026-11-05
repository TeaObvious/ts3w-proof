# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00aaf6c0 (LoadSaveManager_DispatchSave)
Paired actual Ghidra pseudocode: 00AAF6C0_LoadSaveManager_DispatchSave.c
Envelope [0x00aaf6c0,0x00aafb3c); 1148 bytes; exact owned ranges: [0x00aaf6c0,0x00aaf83d),[0x00aaf840,0x00aafb3c)
Owned: 1145 original bytes / 356 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00aaf6c0 <original>:
  00aaf6c0:	b8 44 31 00 00                                 	MOV EAX,0x3144
  00aaf6c5:	e8 76 01 4d 00                                 	CALL 0x00f7f840
  00aaf6ca:	53                                             	PUSH EBX
  00aaf6cb:	57                                             	PUSH EDI
  00aaf6cc:	8b bc 24 50 31 00 00                           	MOV EDI,dword ptr [ESP + 0x3150]
  00aaf6d3:	85 ff                                          	TEST EDI,EDI
  00aaf6d5:	8b d9                                          	MOV EBX,ECX
  00aaf6d7:	75 18                                          	JNZ 0x00aaf6f1
  00aaf6d9:	80 bc 24 54 31 00 00 00                        	CMP byte ptr [ESP + 0x3154],0x0
  00aaf6e1:	75 0e                                          	JNZ 0x00aaf6f1
  00aaf6e3:	8d 47 01                                       	LEA EAX,[EDI + 0x1]
  00aaf6e6:	5f                                             	POP EDI
  00aaf6e7:	5b                                             	POP EBX
  00aaf6e8:	81 c4 44 31 00 00                              	ADD ESP,0x3144
  00aaf6ee:	c2 0c 00                                       	RET 0xc
  00aaf6f1:	80 7b 1d 00                                    	CMP byte ptr [EBX + 0x1d],0x0
  00aaf6f5:	74 10                                          	JZ 0x00aaf707
  00aaf6f7:	5f                                             	POP EDI
  00aaf6f8:	b8 10 00 00 00                                 	MOV EAX,0x10
  00aaf6fd:	5b                                             	POP EBX
  00aaf6fe:	81 c4 44 31 00 00                              	ADD ESP,0x3144
  00aaf704:	c2 0c 00                                       	RET 0xc
  00aaf707:	55                                             	PUSH EBP
  00aaf708:	8b 2d c4 db 1e 01                              	MOV EBP,dword ptr [0x011edbc4]
  00aaf70e:	85 ed                                          	TEST EBP,EBP
  00aaf710:	75 0f                                          	JNZ 0x00aaf721
  00aaf712:	8d 45 02                                       	LEA EAX,[EBP + 0x2]
  00aaf715:	5d                                             	POP EBP
  00aaf716:	5f                                             	POP EDI
  00aaf717:	5b                                             	POP EBX
  00aaf718:	81 c4 44 31 00 00                              	ADD ESP,0x3144
  00aaf71e:	c2 0c 00                                       	RET 0xc
  00aaf721:	e8 3a 37 ed ff                                 	CALL 0x00982e60
  00aaf726:	85 c0                                          	TEST EAX,EAX
  00aaf728:	74 0f                                          	JZ 0x00aaf739
  00aaf72a:	8b 88 64 06 00 00                              	MOV ECX,dword ptr [EAX + 0x664]
  00aaf730:	85 c9                                          	TEST ECX,ECX
  00aaf732:	74 05                                          	JZ 0x00aaf739
  00aaf734:	e8 47 94 f1 ff                                 	CALL 0x009c8b80
  00aaf739:	85 ff                                          	TEST EDI,EDI
  00aaf73b:	74 05                                          	JZ 0x00aaf742
  00aaf73d:	8b 47 08                                       	MOV EAX,dword ptr [EDI + 0x8]
  00aaf740:	eb 02                                          	JMP 0x00aaf744
  00aaf742:	33 c0                                          	XOR EAX,EAX
  00aaf744:	56                                             	PUSH ESI
  00aaf745:	50                                             	PUSH EAX
  00aaf746:	8d 4c 24 38                                    	LEA ECX,[ESP + 0x38]
  00aaf74a:	e8 d1 b3 ff ff                                 	CALL 0x00aaab20
  00aaf74f:	6a 00                                          	PUSH 0x0
  00aaf751:	8d 8c 24 c8 18 00 00                           	LEA ECX,[ESP + 0x18c8]
  00aaf758:	e8 c3 b3 ff ff                                 	CALL 0x00aaab20
  00aaf75d:	6a 01                                          	PUSH 0x1
  00aaf75f:	6a 00                                          	PUSH 0x0
  00aaf761:	8d 84 24 cc 18 00 00                           	LEA EAX,[ESP + 0x18cc]
  00aaf768:	50                                             	PUSH EAX
  00aaf769:	8b cb                                          	MOV ECX,EBX
  00aaf76b:	e8 70 d8 ff ff                                 	CALL 0x00aacfe0
  00aaf770:	8b f0                                          	MOV ESI,EAX
  00aaf772:	85 f6                                          	TEST ESI,ESI
  00aaf774:	75 6a                                          	JNZ 0x00aaf7e0
  00aaf776:	8b 8c 24 5c 31 00 00                           	MOV ECX,dword ptr [ESP + 0x315c]
  00aaf77d:	51                                             	PUSH ECX
  00aaf77e:	50                                             	PUSH EAX
  00aaf77f:	8d 54 24 3c                                    	LEA EDX,[ESP + 0x3c]
  00aaf783:	52                                             	PUSH EDX
  00aaf784:	8b cb                                          	MOV ECX,EBX
  00aaf786:	e8 55 d8 ff ff                                 	CALL 0x00aacfe0
  00aaf78b:	8b f0                                          	MOV ESI,EAX
  00aaf78d:	85 f6                                          	TEST ESI,ESI
  00aaf78f:	75 4f                                          	JNZ 0x00aaf7e0
  00aaf791:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  00aaf795:	50                                             	PUSH EAX
  00aaf796:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00aaf79a:	c7 44 24 14 6c 26 00 01                        	MOV dword ptr [ESP + 0x14],0x100266c
  00aaf7a2:	e8 49 91 95 ff                                 	CALL 0x004088f0
  00aaf7a7:	80 bc 24 5c 31 00 00 00                        	CMP byte ptr [ESP + 0x315c],0x0
  00aaf7af:	75 11                                          	JNZ 0x00aaf7c2
  00aaf7b1:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aaf7b5:	51                                             	PUSH ECX
  00aaf7b6:	8d 54 24 38                                    	LEA EDX,[ESP + 0x38]
  00aaf7ba:	52                                             	PUSH EDX
  00aaf7bb:	8b cb                                          	MOV ECX,EBX
  00aaf7bd:	e8 3e be ff ff                                 	CALL 0x00aab600
  00aaf7c2:	8d 84 24 c4 18 00 00                           	LEA EAX,[ESP + 0x18c4]
  00aaf7c9:	50                                             	PUSH EAX
  00aaf7ca:	8b cb                                          	MOV ECX,EBX
  00aaf7cc:	e8 2f a2 ff ff                                 	CALL 0x00aa9a00
  00aaf7d1:	8b f0                                          	MOV ESI,EAX
  00aaf7d3:	85 f6                                          	TEST ESI,ESI
  00aaf7d5:	74 2d                                          	JZ 0x00aaf804
  00aaf7d7:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aaf7db:	e8 10 01 a4 ff                                 	CALL 0x004ef8f0
  00aaf7e0:	8d 8c 24 c4 18 00 00                           	LEA ECX,[ESP + 0x18c4]
  00aaf7e7:	e8 e4 a9 ff ff                                 	CALL 0x00aaa1d0
  00aaf7ec:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  00aaf7f0:	e8 db a9 ff ff                                 	CALL 0x00aaa1d0
  00aaf7f5:	8b c6                                          	MOV EAX,ESI
  00aaf7f7:	5e                                             	POP ESI
  00aaf7f8:	5d                                             	POP EBP
  00aaf7f9:	5f                                             	POP EDI
  00aaf7fa:	5b                                             	POP EBX
  00aaf7fb:	81 c4 44 31 00 00                              	ADD ESP,0x3144
  00aaf801:	c2 0c 00                                       	RET 0xc
  00aaf804:	80 bc 24 60 31 00 00 00                        	CMP byte ptr [ESP + 0x3160],0x0
  00aaf80c:	0f 85 92 00 00 00                              	JNZ 0x00aaf8a4
  00aaf812:	8b 83 80 00 00 00                              	MOV EAX,dword ptr [EBX + 0x80]
  00aaf818:	8d bb 80 00 00 00                              	LEA EDI,[EBX + 0x80]
  00aaf81e:	50                                             	PUSH EAX
  00aaf81f:	e8 4c c5 a2 ff                                 	CALL 0x004dbd70
  00aaf824:	83 c4 04                                       	ADD ESP,0x4
  00aaf827:	84 c0                                          	TEST AL,AL
  00aaf829:	74 5e                                          	JZ 0x00aaf889
  00aaf82b:	8b 37                                          	MOV ESI,dword ptr [EDI]
  00aaf82d:	8d 8c 24 f4 1c 00 00                           	LEA ECX,[ESP + 0x1cf4]
  00aaf834:	e8 67 59 d3 ff                                 	CALL 0x007e51a0
  00aaf839:	8b ce                                          	MOV ECX,ESI
  00aaf83b:	eb 03                                          	JMP 0x00aaf840
  00aaf83d:	8d 49 00                                       	.byte 0x8d,0x49,0x00 # NONOWNED envelope bytes
  00aaf840:	66 8b 11                                       	MOV DX,word ptr [ECX]
  00aaf843:	66 3b 10                                       	CMP DX,word ptr [EAX]
  00aaf846:	75 1e                                          	JNZ 0x00aaf866
  00aaf848:	66 85 d2                                       	TEST DX,DX
  00aaf84b:	74 15                                          	JZ 0x00aaf862
  00aaf84d:	66 8b 51 02                                    	MOV DX,word ptr [ECX + 0x2]
  00aaf851:	66 3b 50 02                                    	CMP DX,word ptr [EAX + 0x2]
  00aaf855:	75 0f                                          	JNZ 0x00aaf866
  00aaf857:	83 c1 04                                       	ADD ECX,0x4
  00aaf85a:	83 c0 04                                       	ADD EAX,0x4
  00aaf85d:	66 85 d2                                       	TEST DX,DX
  00aaf860:	75 de                                          	JNZ 0x00aaf840
  00aaf862:	33 c0                                          	XOR EAX,EAX
  00aaf864:	eb 05                                          	JMP 0x00aaf86b
  00aaf866:	1b c0                                          	SBB EAX,EAX
  00aaf868:	83 d8 ff                                       	SBB EAX,-0x1
  00aaf86b:	85 c0                                          	TEST EAX,EAX
  00aaf86d:	74 1a                                          	JZ 0x00aaf889
  00aaf86f:	8b 37                                          	MOV ESI,dword ptr [EDI]
  00aaf871:	8d 8c 24 f4 1c 00 00                           	LEA ECX,[ESP + 0x1cf4]
  00aaf878:	e8 23 59 d3 ff                                 	CALL 0x007e51a0
  00aaf87d:	6a 01                                          	PUSH 0x1
  00aaf87f:	50                                             	PUSH EAX
  00aaf880:	56                                             	PUSH ESI
  00aaf881:	e8 3a c5 a2 ff                                 	CALL 0x004dbdc0
  00aaf886:	83 c4 0c                                       	ADD ESP,0xc
  00aaf889:	8d 8c 24 f4 1c 00 00                           	LEA ECX,[ESP + 0x1cf4]
  00aaf890:	e8 0b 59 d3 ff                                 	CALL 0x007e51a0
  00aaf895:	50                                             	PUSH EAX
  00aaf896:	8b cf                                          	MOV ECX,EDI
  00aaf898:	e8 b3 96 95 ff                                 	CALL 0x00408f50
  00aaf89d:	8b bc 24 58 31 00 00                           	MOV EDI,dword ptr [ESP + 0x3158]
  00aaf8a4:	6a 00                                          	PUSH 0x0
  00aaf8a6:	6a 00                                          	PUSH 0x0
  00aaf8a8:	6a 00                                          	PUSH 0x0
  00aaf8aa:	6a 00                                          	PUSH 0x0
  00aaf8ac:	68 c8 57 06 01                                 	PUSH 0x10657c8
  00aaf8b1:	68 98 03 00 00                                 	PUSH 0x398
  00aaf8b6:	c7 44 24 28 00 00 00 00                        	MOV dword ptr [ESP + 0x28],0x0
  00aaf8be:	e8 9d 4e a3 ff                                 	CALL 0x004e4760
  00aaf8c3:	8b f0                                          	MOV ESI,EAX
  00aaf8c5:	83 c4 18                                       	ADD ESP,0x18
  00aaf8c8:	85 f6                                          	TEST ESI,ESI
  00aaf8ca:	74 18                                          	JZ 0x00aaf8e4
  00aaf8cc:	6a 00                                          	PUSH 0x0
  00aaf8ce:	8d 8c 24 f8 1c 00 00                           	LEA ECX,[ESP + 0x1cf8]
  00aaf8d5:	e8 c6 58 d3 ff                                 	CALL 0x007e51a0
  00aaf8da:	50                                             	PUSH EAX
  00aaf8db:	8b ce                                          	MOV ECX,ESI
  00aaf8dd:	e8 ae 99 9f ff                                 	CALL 0x004a9290
  00aaf8e2:	eb 02                                          	JMP 0x00aaf8e6
  00aaf8e4:	33 c0                                          	XOR EAX,EAX
  00aaf8e6:	50                                             	PUSH EAX
  00aaf8e7:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aaf8eb:	e8 10 0f 9f ff                                 	CALL 0x004a0800
  00aaf8f0:	8b 74 24 10                                    	MOV ESI,dword ptr [ESP + 0x10]
  00aaf8f4:	85 f6                                          	TEST ESI,ESI
  00aaf8f6:	0f 84 a8 00 00 00                              	JZ 0x00aaf9a4
  00aaf8fc:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00aaf8fe:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  00aaf901:	8b ce                                          	MOV ECX,ESI
  00aaf903:	ff d0                                          	CALL EAX
  00aaf905:	84 c0                                          	TEST AL,AL
  00aaf907:	0f 84 97 00 00 00                              	JZ 0x00aaf9a4
  00aaf90d:	6a 01                                          	PUSH 0x1
  00aaf90f:	8b ce                                          	MOV ECX,ESI
  00aaf911:	e8 8a 74 9f ff                                 	CALL 0x004a6da0
  00aaf916:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00aaf918:	8b 42 18                                       	MOV EAX,dword ptr [EDX + 0x18]
  00aaf91b:	6a 00                                          	PUSH 0x0
  00aaf91d:	6a 02                                          	PUSH 0x2
  00aaf91f:	6a 02                                          	PUSH 0x2
  00aaf921:	8b ce                                          	MOV ECX,ESI
  00aaf923:	ff d0                                          	CALL EAX
  00aaf925:	84 c0                                          	TEST AL,AL
  00aaf927:	74 58                                          	JZ 0x00aaf981
  00aaf929:	85 ff                                          	TEST EDI,EDI
  00aaf92b:	74 09                                          	JZ 0x00aaf936
  00aaf92d:	57                                             	PUSH EDI
  00aaf92e:	8d 4b 18                                       	LEA ECX,[EBX + 0x18]
  00aaf931:	e8 5a 6c ab ff                                 	CALL 0x00566590
  00aaf936:	6a 01                                          	PUSH 0x1
  00aaf938:	56                                             	PUSH ESI
  00aaf939:	8b cb                                          	MOV ECX,EBX
  00aaf93b:	c6 45 45 01                                    	MOV byte ptr [EBP + 0x45],0x1
  00aaf93f:	e8 cc ae ff ff                                 	CALL 0x00aaa810
  00aaf944:	c6 45 45 00                                    	MOV byte ptr [EBP + 0x45],0x0
  00aaf948:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00aaf94a:	8b f8                                          	MOV EDI,EAX
  00aaf94c:	8b 42 1c                                       	MOV EAX,dword ptr [EDX + 0x1c]
  00aaf94f:	8b ce                                          	MOV ECX,ESI
  00aaf951:	ff d0                                          	CALL EAX
  00aaf953:	85 ff                                          	TEST EDI,EDI
  00aaf955:	74 2f                                          	JZ 0x00aaf986
  00aaf957:	8b 4b 18                                       	MOV ECX,dword ptr [EBX + 0x18]
  00aaf95a:	85 c9                                          	TEST ECX,ECX
  00aaf95c:	74 28                                          	JZ 0x00aaf986
  00aaf95e:	c7 43 18 00 00 00 00                           	MOV dword ptr [EBX + 0x18],0x0
  00aaf965:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00aaf968:	83 c0 ff                                       	ADD EAX,-0x1
  00aaf96b:	89 41 04                                       	MOV dword ptr [ECX + 0x4],EAX
  00aaf96e:	75 16                                          	JNZ 0x00aaf986
  00aaf970:	c7 41 04 01 00 00 00                           	MOV dword ptr [ECX + 0x4],0x1
  00aaf977:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00aaf979:	8b 02                                          	MOV EAX,dword ptr [EDX]
  00aaf97b:	6a 01                                          	PUSH 0x1
  00aaf97d:	ff d0                                          	CALL EAX
  00aaf97f:	eb 05                                          	JMP 0x00aaf986
  00aaf981:	bf 0f 00 00 00                                 	MOV EDI,0xf
  00aaf986:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00aaf988:	8b 42 08                                       	MOV EAX,dword ptr [EDX + 0x8]
  00aaf98b:	8b ce                                          	MOV ECX,ESI
  00aaf98d:	ff d0                                          	CALL EAX
  00aaf98f:	8b c6                                          	MOV EAX,ESI
  00aaf991:	33 f6                                          	XOR ESI,ESI
  00aaf993:	85 c0                                          	TEST EAX,EAX
  00aaf995:	74 12                                          	JZ 0x00aaf9a9
  00aaf997:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00aaf99a:	8d 48 04                                       	LEA ECX,[EAX + 0x4]
  00aaf99d:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  00aaf9a0:	ff d0                                          	CALL EAX
  00aaf9a2:	eb 05                                          	JMP 0x00aaf9a9
  00aaf9a4:	bf 11 00 00 00                                 	MOV EDI,0x11
  00aaf9a9:	80 bc 24 5c 31 00 00 00                        	CMP byte ptr [ESP + 0x315c],0x0
  00aaf9b1:	0f 85 31 01 00 00                              	JNZ 0x00aafae8
  00aaf9b7:	85 ff                                          	TEST EDI,EDI
  00aaf9b9:	75 4a                                          	JNZ 0x00aafa05
  00aaf9bb:	8d 8c 24 64 04 00 00                           	LEA ECX,[ESP + 0x464]
  00aaf9c2:	e8 d9 57 d3 ff                                 	CALL 0x007e51a0
  00aaf9c7:	50                                             	PUSH EAX
  00aaf9c8:	e8 a3 c3 a2 ff                                 	CALL 0x004dbd70
  00aaf9cd:	83 c4 04                                       	ADD ESP,0x4
  00aaf9d0:	84 c0                                          	TEST AL,AL
  00aaf9d2:	74 13                                          	JZ 0x00aaf9e7
  00aaf9d4:	8b 8c 24 44 04 00 00                           	MOV ECX,dword ptr [ESP + 0x444]
  00aaf9db:	51                                             	PUSH ECX
  00aaf9dc:	8b cb                                          	MOV ECX,EBX
  00aaf9de:	e8 2d fc ff ff                                 	CALL 0x00aaf610
  00aaf9e3:	84 c0                                          	TEST AL,AL
  00aaf9e5:	74 19                                          	JZ 0x00aafa00
  00aaf9e7:	8b 94 24 44 04 00 00                           	MOV EDX,dword ptr [ESP + 0x444]
  00aaf9ee:	6a 00                                          	PUSH 0x0
  00aaf9f0:	52                                             	PUSH EDX
  00aaf9f1:	8b cb                                          	MOV ECX,EBX
  00aaf9f3:	e8 18 fb ff ff                                 	CALL 0x00aaf510
  00aaf9f8:	84 c0                                          	TEST AL,AL
  00aaf9fa:	0f 85 9c 00 00 00                              	JNZ 0x00aafa9c
  00aafa00:	bf 10 00 00 00                                 	MOV EDI,0x10
  00aafa05:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  00aafa09:	50                                             	PUSH EAX
  00aafa0a:	8d 4c 24 28                                    	LEA ECX,[ESP + 0x28]
  00aafa0e:	c7 44 24 14 20 5a 06 01                        	MOV dword ptr [ESP + 0x14],0x1065a20
  00aafa16:	e8 d5 8e 95 ff                                 	CALL 0x004088f0
  00aafa1b:	8b 8c 24 44 04 00 00                           	MOV ECX,dword ptr [ESP + 0x444]
  00aafa22:	51                                             	PUSH ECX
  00aafa23:	8d 4c 24 28                                    	LEA ECX,[ESP + 0x28]
  00aafa27:	e8 24 95 95 ff                                 	CALL 0x00408f50
  00aafa2c:	68 14 5a 06 01                                 	PUSH 0x1065a14
  00aafa31:	8d 4c 24 28                                    	LEA ECX,[ESP + 0x28]
  00aafa35:	e8 16 3f a3 ff                                 	CALL 0x004e3950
  00aafa3a:	8b 54 24 28                                    	MOV EDX,dword ptr [ESP + 0x28]
  00aafa3e:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  00aafa42:	2b d0                                          	SUB EDX,EAX
  00aafa44:	d1 fa                                          	SAR EDX,0x1
  00aafa46:	81 fa 04 01 00 00                              	CMP EDX,0x104
  00aafa4c:	77 0a                                          	JA 0x00aafa58
  00aafa4e:	6a 00                                          	PUSH 0x0
  00aafa50:	50                                             	PUSH EAX
  00aafa51:	8b cb                                          	MOV ECX,EBX
  00aafa53:	e8 b8 fa ff ff                                 	CALL 0x00aaf510
  00aafa58:	8b 6c 24 14                                    	MOV EBP,dword ptr [ESP + 0x14]
  00aafa5c:	3b 6c 24 18                                    	CMP EBP,dword ptr [ESP + 0x18]
  00aafa60:	74 2d                                          	JZ 0x00aafa8f
  00aafa62:	6a 01                                          	PUSH 0x1
  00aafa64:	8d 8c 24 98 0c 00 00                           	LEA ECX,[ESP + 0xc98]
  00aafa6b:	e8 30 57 d3 ff                                 	CALL 0x007e51a0
  00aafa70:	50                                             	PUSH EAX
  00aafa71:	55                                             	PUSH EBP
  00aafa72:	e8 49 c3 a2 ff                                 	CALL 0x004dbdc0
  00aafa77:	83 c4 0c                                       	ADD ESP,0xc
  00aafa7a:	8d 8c 24 94 0c 00 00                           	LEA ECX,[ESP + 0xc94]
  00aafa81:	e8 1a 57 d3 ff                                 	CALL 0x007e51a0
  00aafa86:	50                                             	PUSH EAX
  00aafa87:	e8 b4 e0 ff ff                                 	CALL 0x00aadb40
  00aafa8c:	83 c4 04                                       	ADD ESP,0x4
  00aafa8f:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  00aafa93:	e8 58 fe a3 ff                                 	CALL 0x004ef8f0
  00aafa98:	85 ff                                          	TEST EDI,EDI
  00aafa9a:	75 64                                          	JNZ 0x00aafb00
  00aafa9c:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  00aafaa0:	e8 db e1 ff ff                                 	CALL 0x00aadc80
  00aafaa5:	84 c0                                          	TEST AL,AL
  00aafaa7:	75 45                                          	JNZ 0x00aafaee
  00aafaa9:	85 f6                                          	TEST ESI,ESI
  00aafaab:	74 0b                                          	JZ 0x00aafab8
  00aafaad:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  00aafab0:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00aafab3:	8d 4e 04                                       	LEA ECX,[ESI + 0x4]
  00aafab6:	ff d2                                          	CALL EDX
  00aafab8:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aafabc:	e8 2f fe a3 ff                                 	CALL 0x004ef8f0
  00aafac1:	8d 8c 24 c4 18 00 00                           	LEA ECX,[ESP + 0x18c4]
  00aafac8:	e8 03 a7 ff ff                                 	CALL 0x00aaa1d0
  00aafacd:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  00aafad1:	e8 fa a6 ff ff                                 	CALL 0x00aaa1d0
  00aafad6:	5e                                             	POP ESI
  00aafad7:	5d                                             	POP EBP
  00aafad8:	5f                                             	POP EDI
  00aafad9:	b8 11 00 00 00                                 	MOV EAX,0x11
  00aafade:	5b                                             	POP EBX
  00aafadf:	81 c4 44 31 00 00                              	ADD ESP,0x3144
  00aafae5:	c2 0c 00                                       	RET 0xc
  00aafae8:	85 ff                                          	TEST EDI,EDI
  00aafaea:	74 b0                                          	JZ 0x00aafa9c
  00aafaec:	eb aa                                          	JMP 0x00aafa98
  00aafaee:	85 ff                                          	TEST EDI,EDI
  00aafaf0:	75 0e                                          	JNZ 0x00aafb00
  00aafaf2:	80 bc 24 5c 31 00 00 00                        	CMP byte ptr [ESP + 0x315c],0x0
  00aafafa:	74 04                                          	JZ 0x00aafb00
  00aafafc:	c6 43 1c 01                                    	MOV byte ptr [EBX + 0x1c],0x1
  00aafb00:	85 f6                                          	TEST ESI,ESI
  00aafb02:	74 0b                                          	JZ 0x00aafb0f
  00aafb04:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  00aafb07:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00aafb0a:	8d 4e 04                                       	LEA ECX,[ESI + 0x4]
  00aafb0d:	ff d2                                          	CALL EDX
  00aafb0f:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aafb13:	e8 d8 fd a3 ff                                 	CALL 0x004ef8f0
  00aafb18:	8d 8c 24 c4 18 00 00                           	LEA ECX,[ESP + 0x18c4]
  00aafb1f:	e8 ac a6 ff ff                                 	CALL 0x00aaa1d0
  00aafb24:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  00aafb28:	e8 a3 a6 ff ff                                 	CALL 0x00aaa1d0
  00aafb2d:	5e                                             	POP ESI
  00aafb2e:	5d                                             	POP EBP
  00aafb2f:	8b c7                                          	MOV EAX,EDI
  00aafb31:	5f                                             	POP EDI
  00aafb32:	5b                                             	POP EBX
  00aafb33:	81 c4 44 31 00 00                              	ADD ESP,0x3144
  00aafb39:	c2 0c 00                                       	RET 0xc
