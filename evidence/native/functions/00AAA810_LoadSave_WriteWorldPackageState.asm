# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00aaa810 (LoadSave_WriteWorldPackageState)
Paired actual Ghidra pseudocode: 00AAA810_LoadSave_WriteWorldPackageState.c
Envelope [0x00aaa810,0x00aaaa80); 624 bytes; exact owned ranges: [0x00aaa810,0x00aaaa80)
Owned: 624 original bytes / 203 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00aaa810 <original>:
  00aaa810:	81 ec 30 04 00 00                              	SUB ESP,0x430
  00aaa816:	55                                             	PUSH EBP
  00aaa817:	56                                             	PUSH ESI
  00aaa818:	8b f1                                          	MOV ESI,ECX
  00aaa81a:	8b 0d c4 db 1e 01                              	MOV ECX,dword ptr [0x011edbc4]
  00aaa820:	57                                             	PUSH EDI
  00aaa821:	89 4c 24 28                                    	MOV dword ptr [ESP + 0x28],ECX
  00aaa825:	e8 16 e9 f6 ff                                 	CALL 0x00a19140
  00aaa82a:	8b ac 24 44 04 00 00                           	MOV EBP,dword ptr [ESP + 0x444]
  00aaa831:	8b f8                                          	MOV EDI,EAX
  00aaa833:	8b 84 24 40 04 00 00                           	MOV EAX,dword ptr [ESP + 0x440]
  00aaa83a:	55                                             	PUSH EBP
  00aaa83b:	50                                             	PUSH EAX
  00aaa83c:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00aaa840:	e8 db d0 d2 ff                                 	CALL 0x007d7920
  00aaa845:	6a 01                                          	PUSH 0x1
  00aaa847:	68 20 3e 18 01                                 	PUSH 0x1183e20
  00aaa84c:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00aaa850:	e8 6b dc d2 ff                                 	CALL 0x007d84c0
  00aaa855:	84 c0                                          	TEST AL,AL
  00aaa857:	75 1a                                          	JNZ 0x00aaa873
  00aaa859:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00aaa85d:	e8 2e d1 d2 ff                                 	CALL 0x007d7990
  00aaa862:	5f                                             	POP EDI
  00aaa863:	5e                                             	POP ESI
  00aaa864:	b8 09 00 00 00                                 	MOV EAX,0x9
  00aaa869:	5d                                             	POP EBP
  00aaa86a:	81 c4 30 04 00 00                              	ADD ESP,0x430
  00aaa870:	c2 08 00                                       	RET 0x8
  00aaa873:	8b 4c 24 18                                    	MOV ECX,dword ptr [ESP + 0x18]
  00aaa877:	53                                             	PUSH EBX
  00aaa878:	55                                             	PUSH EBP
  00aaa879:	51                                             	PUSH ECX
  00aaa87a:	e8 b1 35 a3 ff                                 	CALL 0x004dde30
  00aaa87f:	83 c4 08                                       	ADD ESP,0x8
  00aaa882:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aaa886:	50                                             	PUSH EAX
  00aaa887:	e8 64 d1 d2 ff                                 	CALL 0x007d79f0
  00aaa88c:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00aaa890:	6a 03                                          	PUSH 0x3
  00aaa892:	8d 54 24 14                                    	LEA EDX,[ESP + 0x14]
  00aaa896:	52                                             	PUSH EDX
  00aaa897:	50                                             	PUSH EAX
  00aaa898:	c6 44 24 1c 53                                 	MOV byte ptr [ESP + 0x1c],0x53
  00aaa89d:	c6 44 24 1d 33                                 	MOV byte ptr [ESP + 0x1d],0x33
  00aaa8a2:	c6 44 24 1e 00                                 	MOV byte ptr [ESP + 0x1e],0x0
  00aaa8a7:	e8 a4 35 a3 ff                                 	CALL 0x004dde50
  00aaa8ac:	83 c4 0c                                       	ADD ESP,0xc
  00aaa8af:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aaa8b3:	50                                             	PUSH EAX
  00aaa8b4:	e8 37 d1 d2 ff                                 	CALL 0x007d79f0
  00aaa8b9:	8b 4c 24 24                                    	MOV ECX,dword ptr [ESP + 0x24]
  00aaa8bd:	8b 54 24 1c                                    	MOV EDX,dword ptr [ESP + 0x1c]
  00aaa8c1:	51                                             	PUSH ECX
  00aaa8c2:	6a 04                                          	PUSH 0x4
  00aaa8c4:	52                                             	PUSH EDX
  00aaa8c5:	e8 a6 36 a3 ff                                 	CALL 0x004ddf70
  00aaa8ca:	83 c4 0c                                       	ADD ESP,0xc
  00aaa8cd:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aaa8d1:	50                                             	PUSH EAX
  00aaa8d2:	e8 19 d1 d2 ff                                 	CALL 0x007d79f0
  00aaa8d7:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00aaa8db:	6a 04                                          	PUSH 0x4
  00aaa8dd:	50                                             	PUSH EAX
  00aaa8de:	e8 4d 35 a3 ff                                 	CALL 0x004dde30
  00aaa8e3:	83 c4 08                                       	ADD ESP,0x8
  00aaa8e6:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aaa8ea:	50                                             	PUSH EAX
  00aaa8eb:	e8 00 d1 d2 ff                                 	CALL 0x007d79f0
  00aaa8f0:	8b 4e 38                                       	MOV ECX,dword ptr [ESI + 0x38]
  00aaa8f3:	2b 4e 34                                       	SUB ECX,dword ptr [ESI + 0x34]
  00aaa8f6:	8b 56 34                                       	MOV EDX,dword ptr [ESI + 0x34]
  00aaa8f9:	51                                             	PUSH ECX
  00aaa8fa:	52                                             	PUSH EDX
  00aaa8fb:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  00aaa8ff:	e8 0c de d2 ff                                 	CALL 0x007d8710
  00aaa904:	8b 46 48                                       	MOV EAX,dword ptr [ESI + 0x48]
  00aaa907:	2b 46 44                                       	SUB EAX,dword ptr [ESI + 0x44]
  00aaa90a:	8b 4e 44                                       	MOV ECX,dword ptr [ESI + 0x44]
  00aaa90d:	50                                             	PUSH EAX
  00aaa90e:	51                                             	PUSH ECX
  00aaa90f:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  00aaa913:	e8 f8 dd d2 ff                                 	CALL 0x007d8710
  00aaa918:	57                                             	PUSH EDI
  00aaa919:	8d 4c 24 34                                    	LEA ECX,[ESP + 0x34]
  00aaa91d:	e8 4e 38 a4 ff                                 	CALL 0x004ee170
  00aaa922:	8d 4c 24 30                                    	LEA ECX,[ESP + 0x30]
  00aaa926:	e8 e5 33 a4 ff                                 	CALL 0x004edd10
  00aaa92b:	8b f8                                          	MOV EDI,EAX
  00aaa92d:	57                                             	PUSH EDI
  00aaa92e:	e8 8d 39 a5 ff                                 	CALL 0x004fe2c0
  00aaa933:	83 c4 04                                       	ADD ESP,0x4
  00aaa936:	50                                             	PUSH EAX
  00aaa937:	57                                             	PUSH EDI
  00aaa938:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  00aaa93c:	e8 0f de d2 ff                                 	CALL 0x007d8750
  00aaa941:	e8 aa e3 d7 ff                                 	CALL 0x00828cf0
  00aaa946:	8b f8                                          	MOV EDI,EAX
  00aaa948:	85 ff                                          	TEST EDI,EDI
  00aaa94a:	74 0d                                          	JZ 0x00aaa959
  00aaa94c:	80 bf 81 09 00 00 00                           	CMP byte ptr [EDI + 0x981],0x0
  00aaa953:	75 04                                          	JNZ 0x00aaa959
  00aaa955:	b3 01                                          	MOV BL,0x1
  00aaa957:	eb 02                                          	JMP 0x00aaa95b
  00aaa959:	32 db                                          	XOR BL,BL
  00aaa95b:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00aaa95f:	84 db                                          	TEST BL,BL
  00aaa961:	0f 95 c2                                       	SETNZ DL
  00aaa964:	52                                             	PUSH EDX
  00aaa965:	50                                             	PUSH EAX
  00aaa966:	e8 95 34 a3 ff                                 	CALL 0x004dde00
  00aaa96b:	83 c4 08                                       	ADD ESP,0x8
  00aaa96e:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aaa972:	50                                             	PUSH EAX
  00aaa973:	e8 78 d0 d2 ff                                 	CALL 0x007d79f0
  00aaa978:	8b 54 24 24                                    	MOV EDX,dword ptr [ESP + 0x24]
  00aaa97c:	8b 4e 5c                                       	MOV ECX,dword ptr [ESI + 0x5c]
  00aaa97f:	8b 46 58                                       	MOV EAX,dword ptr [ESI + 0x58]
  00aaa982:	52                                             	PUSH EDX
  00aaa983:	51                                             	PUSH ECX
  00aaa984:	50                                             	PUSH EAX
  00aaa985:	8b 44 24 28                                    	MOV EAX,dword ptr [ESP + 0x28]
  00aaa989:	50                                             	PUSH EAX
  00aaa98a:	e8 31 37 a3 ff                                 	CALL 0x004de0c0
  00aaa98f:	83 c4 10                                       	ADD ESP,0x10
  00aaa992:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aaa996:	50                                             	PUSH EAX
  00aaa997:	e8 54 d0 d2 ff                                 	CALL 0x007d79f0
  00aaa99c:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00aaa9a0:	e8 cb d0 d2 ff                                 	CALL 0x007d7a70
  00aaa9a5:	84 db                                          	TEST BL,BL
  00aaa9a7:	5b                                             	POP EBX
  00aaa9a8:	74 21                                          	JZ 0x00aaa9cb
  00aaa9aa:	8b 0d c4 db 1e 01                              	MOV ECX,dword ptr [0x011edbc4]
  00aaa9b0:	51                                             	PUSH ECX
  00aaa9b1:	8b cf                                          	MOV ECX,EDI
  00aaa9b3:	e8 48 a1 d8 ff                                 	CALL 0x00834b00
  00aaa9b8:	8d 54 24 10                                    	LEA EDX,[ESP + 0x10]
  00aaa9bc:	52                                             	PUSH EDX
  00aaa9bd:	8b cf                                          	MOV ECX,EDI
  00aaa9bf:	e8 2c e4 d7 ff                                 	CALL 0x00828df0
  00aaa9c4:	8b cf                                          	MOV ECX,EDI
  00aaa9c6:	e8 75 ec d7 ff                                 	CALL 0x00829640
  00aaa9cb:	80 7c 24 24 00                                 	CMP byte ptr [ESP + 0x24],0x0
  00aaa9d0:	75 1a                                          	JNZ 0x00aaa9ec
  00aaa9d2:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00aaa9d6:	e8 b5 cf d2 ff                                 	CALL 0x007d7990
  00aaa9db:	5f                                             	POP EDI
  00aaa9dc:	5e                                             	POP ESI
  00aaa9dd:	b8 0a 00 00 00                                 	MOV EAX,0xa
  00aaa9e2:	5d                                             	POP EBP
  00aaa9e3:	81 c4 30 04 00 00                              	ADD ESP,0x430
  00aaa9e9:	c2 08 00                                       	RET 0x8
  00aaa9ec:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  00aaa9f0:	50                                             	PUSH EAX
  00aaa9f1:	8b ce                                          	MOV ECX,ESI
  00aaa9f3:	e8 48 f8 ff ff                                 	CALL 0x00aaa240
  00aaa9f8:	84 c0                                          	TEST AL,AL
  00aaa9fa:	75 1a                                          	JNZ 0x00aaaa16
  00aaa9fc:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00aaaa00:	e8 8b cf d2 ff                                 	CALL 0x007d7990
  00aaaa05:	5f                                             	POP EDI
  00aaaa06:	5e                                             	POP ESI
  00aaaa07:	b8 0b 00 00 00                                 	MOV EAX,0xb
  00aaaa0c:	5d                                             	POP EBP
  00aaaa0d:	81 c4 30 04 00 00                              	ADD ESP,0x430
  00aaaa13:	c2 08 00                                       	RET 0x8
  00aaaa16:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00aaaa1a:	55                                             	PUSH EBP
  00aaaa1b:	51                                             	PUSH ECX
  00aaaa1c:	8b 4c 24 30                                    	MOV ECX,dword ptr [ESP + 0x30]
  00aaaa20:	e8 7b 28 1c 00                                 	CALL 0x00c6d2a0
  00aaaa25:	84 c0                                          	TEST AL,AL
  00aaaa27:	75 1a                                          	JNZ 0x00aaaa43
  00aaaa29:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00aaaa2d:	e8 5e cf d2 ff                                 	CALL 0x007d7990
  00aaaa32:	5f                                             	POP EDI
  00aaaa33:	5e                                             	POP ESI
  00aaaa34:	b8 0c 00 00 00                                 	MOV EAX,0xc
  00aaaa39:	5d                                             	POP EBP
  00aaaa3a:	81 c4 30 04 00 00                              	ADD ESP,0x430
  00aaaa40:	c2 08 00                                       	RET 0x8
  00aaaa43:	8d 54 24 10                                    	LEA EDX,[ESP + 0x10]
  00aaaa47:	52                                             	PUSH EDX
  00aaaa48:	8b ce                                          	MOV ECX,ESI
  00aaaa4a:	e8 31 f8 ff ff                                 	CALL 0x00aaa280
  00aaaa4f:	84 c0                                          	TEST AL,AL
  00aaaa51:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00aaaa55:	75 16                                          	JNZ 0x00aaaa6d
  00aaaa57:	e8 34 cf d2 ff                                 	CALL 0x007d7990
  00aaaa5c:	5f                                             	POP EDI
  00aaaa5d:	5e                                             	POP ESI
  00aaaa5e:	b8 0d 00 00 00                                 	MOV EAX,0xd
  00aaaa63:	5d                                             	POP EBP
  00aaaa64:	81 c4 30 04 00 00                              	ADD ESP,0x430
  00aaaa6a:	c2 08 00                                       	RET 0x8
  00aaaa6d:	e8 1e cf d2 ff                                 	CALL 0x007d7990
  00aaaa72:	5f                                             	POP EDI
  00aaaa73:	5e                                             	POP ESI
  00aaaa74:	33 c0                                          	XOR EAX,EAX
  00aaaa76:	5d                                             	POP EBP
  00aaaa77:	81 c4 30 04 00 00                              	ADD ESP,0x430
  00aaaa7d:	c2 08 00                                       	RET 0x8
